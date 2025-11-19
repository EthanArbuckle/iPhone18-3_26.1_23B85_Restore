uint64_t sub_1C1127144@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C10CADAC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1C11271D0@<X0>(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C112720C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C112406C(a1);
  *a2 = result;
  return result;
}

uint64_t static PhotosPrefetchable.Image.SymbolVariants.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 != 3)
    {
      return OUTLINED_FUNCTION_2_1();
    }
  }

  else if (v2 != v3)
  {
    return OUTLINED_FUNCTION_2_1();
  }

  return a1[1] == a2[1];
}

uint64_t sub_1C112726C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C1266D50();

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

uint64_t sub_1C1127334(char a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1127374(char a1)
{
  if (a1)
  {
    return 0x7367616C66;
  }

  else
  {
    return 0x6570616873;
  }
}

uint64_t sub_1C112739C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C1266E90();
  a4(v8, v6);
  return sub_1C1266EE0();
}

uint64_t sub_1C11273F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C112726C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1127418(uint64_t a1)
{
  v2 = sub_1C1128930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1127454(uint64_t a1)
{
  v2 = sub_1C1128930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.SymbolVariants.encode(to:)()
{
  OUTLINED_FUNCTION_28_9();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946C8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_5();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1C1128930();
  sub_1C1266F00();
  sub_1C1128984();
  sub_1C1266C80();
  if (!v0)
  {
    sub_1C11289D8();
    sub_1C1266CB0();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.hash(into:)()
{
  v1 = *v0;
  sub_1C1266EB0();
  if (v1 != 3)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  return sub_1C1266EB0();
}

uint64_t PhotosPrefetchable.Image.SymbolVariants.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_27_9();
  sub_1C1266EB0();
  if (v1 != 3)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1266EB0();
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.SymbolVariants.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14)
{
  OUTLINED_FUNCTION_28_9();
  v17 = v16;
  v19 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946D0);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_4();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1C1128930();
  sub_1C1266EF0();
  if (!v14)
  {
    sub_1C1128A2C();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C20();
    sub_1C1128A80();
    OUTLINED_FUNCTION_16_19();
    sub_1C1266C50();
    (*(v22 + 8))(v15, v20);
    *v19 = a14;
    v19[1] = a12;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  OUTLINED_FUNCTION_30_8();
}

uint64_t sub_1C1127880()
{
  v1 = *v0;
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1 != 3)
  {
    MEMORY[0x1C68F07E0](v1);
  }

  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t PhotosPrefetchable.Image.debugDescription.getter()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 32);
  sub_1C1109A94();
  v7 = sub_1C1265ED0();
  if (v1 != 3)
  {
    v4 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v4);

    OUTLINED_FUNCTION_32_8();
  }

  if (v2 != 4)
  {
    sub_1C1266940();

    v5 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v5);

    OUTLINED_FUNCTION_32_8();
  }

  if ((~v3 & 0xFF00) != 0)
  {
    MEMORY[0x1C68EF850](0x3A746E6F6620, 0xE600000000000000);
    sub_1C1266B10();
    OUTLINED_FUNCTION_32_8();
  }

  return v7;
}

uint64_t static PhotosPrefetchable.Image.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v16 = *(a1 + 32);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a2 + 18);
  v14 = *(a2 + 24);
  v15 = *(a1 + 24);
  v17 = *(a2 + 32);
  v18 = *(a1 + 18);
  v22 = *a1;
  v23 = v2;
  v24 = v3;
  v19 = v5;
  v20 = v6;
  v21 = v7;
  sub_1C1109A94();
  sub_1C1109A94();
  v10 = static PhotosPrefetchable.Image.Kind.== infix(_:_:)(&v22, &v19);
  sub_1C100DC0C();
  sub_1C100DC0C();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (v4 == 3)
  {
    if (v8 != 3)
    {
      return 0;
    }
  }

  else if (v8 == 3 || v4 != v8)
  {
    return 0;
  }

  if (v18 == 4)
  {
    if (v9 == 4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 == 4)
  {
    return 0;
  }

  v12 = v18 ^ v9;
  if (v18 == 3)
  {
    result = 0;
    if (v9 != 3 || v12 > 0xFF)
    {
      return result;
    }

LABEL_12:
    if ((~v16 & 0xFF00) != 0)
    {
      v22 = v15;
      LODWORD(v23) = v16;
      if ((~v17 & 0xFF00) == 0)
      {
        return 0;
      }

      v19 = v14;
      LODWORD(v20) = v17;
      if (!static PhotosPrefetchable.Font.== infix(_:_:)(&v22, &v19))
      {
        return 0;
      }
    }

    else if ((~v17 & 0xFF00) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v18 == v9 && v12 < 0x100)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C1127CEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C1266D50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6163536567616D69 && a2 == 0xEA0000000000656CLL;
    if (v6 || (sub_1C1266D50() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x61566C6F626D7973 && a2 == 0xED0000746E616972;
      if (v7 || (sub_1C1266D50() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953394534 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C1266D50();

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

uint64_t sub_1C1127E5C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_27_9();
  MEMORY[0x1C68F07E0](a1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1127E9C(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6163536567616D69;
      break;
    case 2:
      result = 0x61566C6F626D7973;
      break;
    case 3:
      result = 1953394534;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1127F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1127CEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1127F4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1127E54();
  *a1 = result;
  return result;
}

uint64_t sub_1C1127F74(uint64_t a1)
{
  v2 = sub_1C1128AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1127FB0(uint64_t a1)
{
  v2 = sub_1C1128AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void PhotosPrefetchable.Image.encode(to:)()
{
  OUTLINED_FUNCTION_28_9();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946D8);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_5();
  v7 = v3[3];
  v8 = v3;
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(v8, v7);
  sub_1C1109A94();
  sub_1C1128AD4();
  sub_1C1266F00();
  sub_1C1128B28();
  OUTLINED_FUNCTION_6_27();
  sub_1C1266CB0();
  sub_1C100DC0C();
  if (!v0)
  {
    OUTLINED_FUNCTION_38_7();
    sub_1C1128B7C();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
    sub_1C1128BD0();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
    sub_1C1128C24();
    OUTLINED_FUNCTION_6_27();
    sub_1C1266C80();
  }

  (*(v5 + 8))(v1, v10);
  OUTLINED_FUNCTION_30_8();
}

uint64_t PhotosPrefetchable.Image.hash(into:)()
{
  v1 = *(v0 + 17);
  v2 = *(v0 + 18);
  v3 = *(v0 + 32);
  MEMORY[0x1C68F07E0](*(v0 + 16));
  sub_1C1265EF0();
  if (v1 == 3)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    MEMORY[0x1C68F07E0](v1);
  }

  if (v2 != 4)
  {
    OUTLINED_FUNCTION_34_1();
    if (v2 == 3)
    {
      OUTLINED_FUNCTION_46_3();
    }

    else
    {
      OUTLINED_FUNCTION_34_1();
      MEMORY[0x1C68F07E0](v2);
    }
  }

  sub_1C1266EB0();
  if ((~v3 & 0xFF00) == 0)
  {
    return OUTLINED_FUNCTION_46_3();
  }

  OUTLINED_FUNCTION_34_1();
  sub_1C12440E4();
  if ((v3 & 0xFF0000) == 0x90000)
  {
    OUTLINED_FUNCTION_46_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_1();
    MEMORY[0x1C68F07E0](BYTE2(v3));
  }

  if ((v3 >> 24) == 3)
  {
    return OUTLINED_FUNCTION_46_3();
  }

  OUTLINED_FUNCTION_34_1();
  return MEMORY[0x1C68F07E0](v3 >> 24);
}

uint64_t PhotosPrefetchable.Image.hashValue.getter()
{
  OUTLINED_FUNCTION_13_21();
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)();
  return sub_1C1266EE0();
}

void PhotosPrefetchable.Image.init(from:)()
{
  OUTLINED_FUNCTION_28_9();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE946E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15_4();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C1128AD4();
  sub_1C1266EF0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    sub_1C1128C78();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C50();
    OUTLINED_FUNCTION_38_7();
    sub_1C1128CCC();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    sub_1C1128D20();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    sub_1C1128D74();
    OUTLINED_FUNCTION_3_36();
    sub_1C1266C20();
    v6 = OUTLINED_FUNCTION_23_9();
    v7(v6);
    *v4 = v8;
    *(v4 + 8) = v9;
    *(v4 + 16) = v10;
    *(v4 + 17) = v8;
    *(v4 + 18) = v8;
    *(v4 + 24) = v8;
    *(v4 + 32) = v9;
    sub_1C1109A94();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    sub_1C100DC0C();
  }

  OUTLINED_FUNCTION_30_8();
}

uint64_t sub_1C11285D4()
{
  OUTLINED_FUNCTION_13_21();
  sub_1C1266E90();
  PhotosPrefetchable.Image.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1128670(uint64_t a1)
{
  sub_1C1265340();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_1C1263480();
}

uint64_t sub_1C1128724@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C12636F0();
  *a1 = result;
  return result;
}

uint64_t sub_1C112877C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C11287EC()
{
  result = qword_1EDE830F8;
  if (!qword_1EDE830F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830F8);
  }

  return result;
}

unint64_t sub_1C1128840()
{
  result = qword_1EDE830D0;
  if (!qword_1EDE830D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830D0);
  }

  return result;
}

unint64_t sub_1C1128894()
{
  result = qword_1EDE7AEB0;
  if (!qword_1EDE7AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEB0);
  }

  return result;
}

uint64_t sub_1C11288E8(uint64_t result, uint64_t a2)
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

unint64_t sub_1C1128930()
{
  result = qword_1EDE7AF28;
  if (!qword_1EDE7AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF28);
  }

  return result;
}

unint64_t sub_1C1128984()
{
  result = qword_1EDE7AEE0;
  if (!qword_1EDE7AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEE0);
  }

  return result;
}

unint64_t sub_1C11289D8()
{
  result = qword_1EDE7AEF8;
  if (!qword_1EDE7AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEF8);
  }

  return result;
}

unint64_t sub_1C1128A2C()
{
  result = qword_1EDE7AED0;
  if (!qword_1EDE7AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AED0);
  }

  return result;
}

unint64_t sub_1C1128A80()
{
  result = qword_1EDE7AEE8;
  if (!qword_1EDE7AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEE8);
  }

  return result;
}

unint64_t sub_1C1128AD4()
{
  result = qword_1EDE83120;
  if (!qword_1EDE83120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83120);
  }

  return result;
}

unint64_t sub_1C1128B28()
{
  result = qword_1EDE830B8;
  if (!qword_1EDE830B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830B8);
  }

  return result;
}

unint64_t sub_1C1128B7C()
{
  result = qword_1EDE830A8;
  if (!qword_1EDE830A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830A8);
  }

  return result;
}

unint64_t sub_1C1128BD0()
{
  result = qword_1EDE83108;
  if (!qword_1EDE83108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83108);
  }

  return result;
}

unint64_t sub_1C1128C24()
{
  result = qword_1EDE83130;
  if (!qword_1EDE83130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83130);
  }

  return result;
}

unint64_t sub_1C1128C78()
{
  result = qword_1EDE830B0;
  if (!qword_1EDE830B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830B0);
  }

  return result;
}

unint64_t sub_1C1128CCC()
{
  result = qword_1EDE830A0;
  if (!qword_1EDE830A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830A0);
  }

  return result;
}

unint64_t sub_1C1128D20()
{
  result = qword_1EDE83100;
  if (!qword_1EDE83100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83100);
  }

  return result;
}

unint64_t sub_1C1128D74()
{
  result = qword_1EDE83128;
  if (!qword_1EDE83128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83128);
  }

  return result;
}

unint64_t sub_1C1128DCC()
{
  result = qword_1EBE946E8;
  if (!qword_1EBE946E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946E8);
  }

  return result;
}

unint64_t sub_1C1128E24()
{
  result = qword_1EBE946F0;
  if (!qword_1EBE946F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946F0);
  }

  return result;
}

unint64_t sub_1C1128E7C()
{
  result = qword_1EBE946F8;
  if (!qword_1EBE946F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE946F8);
  }

  return result;
}

unint64_t sub_1C1128ED4()
{
  result = qword_1EBE94700;
  if (!qword_1EBE94700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94700);
  }

  return result;
}

unint64_t sub_1C1128F2C()
{
  result = qword_1EDE83090;
  if (!qword_1EDE83090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83090);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C1128FA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 36))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_1C1128FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t _s5ImageV14SymbolVariantsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65284;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t _s5ImageV14SymbolVariantsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
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
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *sub_1C11291C0(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_36_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE13symbolVariantyQrAA14SymbolVariantsVFQOyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAJ5ScaleOGG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return OUTLINED_FUNCTION_14_18();
}

_BYTE *_s5ImageV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C11293D8(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_36_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C11294C0(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_2_1();
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

  return OUTLINED_FUNCTION_37_0(a1);
}

_BYTE *sub_1C1129508(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C11295B8()
{
  result = qword_1EBE94708;
  if (!qword_1EBE94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94708);
  }

  return result;
}

unint64_t sub_1C1129610()
{
  result = qword_1EBE94710;
  if (!qword_1EBE94710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94710);
  }

  return result;
}

unint64_t sub_1C1129668()
{
  result = qword_1EBE94718;
  if (!qword_1EBE94718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94718);
  }

  return result;
}

unint64_t sub_1C11296BC()
{
  result = qword_1EBE94720;
  if (!qword_1EBE94720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94720);
  }

  return result;
}

unint64_t sub_1C1129714()
{
  result = qword_1EBE94728;
  if (!qword_1EBE94728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94728);
  }

  return result;
}

unint64_t sub_1C112976C()
{
  result = qword_1EDE7AEF0;
  if (!qword_1EDE7AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEF0);
  }

  return result;
}

unint64_t sub_1C11297C4()
{
  result = qword_1EBE94730;
  if (!qword_1EBE94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94730);
  }

  return result;
}

unint64_t sub_1C112981C()
{
  result = qword_1EBE94738;
  if (!qword_1EBE94738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94738);
  }

  return result;
}

unint64_t sub_1C1129874()
{
  result = qword_1EBE94740;
  if (!qword_1EBE94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94740);
  }

  return result;
}

unint64_t sub_1C11298CC()
{
  result = qword_1EDE83110;
  if (!qword_1EDE83110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83110);
  }

  return result;
}

unint64_t sub_1C1129924()
{
  result = qword_1EDE83118;
  if (!qword_1EDE83118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE83118);
  }

  return result;
}

unint64_t sub_1C112997C()
{
  result = qword_1EDE7AF18;
  if (!qword_1EDE7AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF18);
  }

  return result;
}

unint64_t sub_1C11299D4()
{
  result = qword_1EDE7AF20;
  if (!qword_1EDE7AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AF20);
  }

  return result;
}

unint64_t sub_1C1129A2C()
{
  result = qword_1EDE830D8;
  if (!qword_1EDE830D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830D8);
  }

  return result;
}

unint64_t sub_1C1129A84()
{
  result = qword_1EDE830E0;
  if (!qword_1EDE830E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830E0);
  }

  return result;
}

unint64_t sub_1C1129ADC()
{
  result = qword_1EDE830C0;
  if (!qword_1EDE830C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830C0);
  }

  return result;
}

unint64_t sub_1C1129B34()
{
  result = qword_1EDE830C8;
  if (!qword_1EDE830C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830C8);
  }

  return result;
}

unint64_t sub_1C1129B8C()
{
  result = qword_1EDE830E8;
  if (!qword_1EDE830E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830E8);
  }

  return result;
}

unint64_t sub_1C1129BE4()
{
  result = qword_1EDE830F0;
  if (!qword_1EDE830F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE830F0);
  }

  return result;
}

uint64_t sub_1C1129C3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

unint64_t sub_1C1129CB8()
{
  result = qword_1EDE7AED8;
  if (!qword_1EDE7AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AED8);
  }

  return result;
}

unint64_t sub_1C1129D0C()
{
  result = qword_1EDE7AEA8;
  if (!qword_1EDE7AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7AEA8);
  }

  return result;
}

void OUTLINED_FUNCTION_32_8()
{

  JUMPOUT(0x1C68EF850);
}

uint64_t sub_1C1129E3C()
{
  sub_1C1263DC0();
  sub_1C112CDA8(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0]);
  return sub_1C1266FE0();
}

int8x16_t PhotosItemsCarousel.init(_:id:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, int8x16_t *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v36 = *a6;
  v37 = a6[1];
  v22 = type metadata accessor for PhotosItemsCarousel();
  v23 = (a9 + v22[28]);
  *v23 = 0xD000000000000019;
  v23[1] = 0x80000001C126C480;
  OUTLINED_FUNCTION_15_1();
  (*(v24 + 32))(a9, a1, a16);
  *(a9 + v22[19]) = a2;
  *(a9 + v22[20]) = a3;
  v25 = (a9 + v22[26]);
  *v25 = a12;
  v25[1] = a13;
  v26 = a4;
  if (a5)
  {
    v26 = 0.0;
  }

  *(a9 + v22[21]) = v26;
  v27 = a9 + v22[23];
  v28 = *(a7 + 16);
  *v27 = *a7;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a7 + 32);
  *(a9 + v22[27]) = a8;
  if (a6[2].i8[0])
  {
    v29 = -1;
  }

  else
  {
    v29 = 0;
  }

  v30 = vdupq_n_s64(v29);
  v31 = vbicq_s8(v36, v30);
  result = vbicq_s8(v37, v30);
  v33 = (a9 + v22[22]);
  *v33 = v31;
  v33[1] = result;
  v34 = (a9 + v22[24]);
  *v34 = a10;
  v34[1] = a11;
  v35 = (a9 + v22[25]);
  *v35 = a14;
  v35[1] = a15;
  return result;
}

uint64_t PhotosItemsCarousel.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a2;
  sub_1C1263E10();
  OUTLINED_FUNCTION_0();
  v203 = v5;
  v204 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v202 = v7 - v6;
  sub_1C1264160();
  OUTLINED_FUNCTION_0();
  v200 = v9;
  v201 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v199 = v11 - v10;
  v165 = a1;
  v13 = *(a1 + 2);
  v12 = *(a1 + 3);
  v14 = *(a1 + 4);
  v16 = *(a1 + 6);
  v15 = *(a1 + 7);
  v17 = *(a1 + 8);
  v196 = *(a1 + 5);
  v197 = v12;
  v18 = v14;
  v210[5] = v15;
  v19 = v15;
  v194 = v17;
  v210[6] = v17;
  type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  OUTLINED_FUNCTION_4_40();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655C0();
  v198 = v13;
  v207 = v18;
  v208 = v19;
  v195 = v16;
  v210[4] = v19;
  sub_1C12656A0();
  OUTLINED_FUNCTION_13_0();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_13();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12628C0();
  OUTLINED_FUNCTION_7_28();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_18_23();
  OUTLINED_FUNCTION_11_0();
  v190 = v2;
  v187 = v20;
  v21 = type metadata accessor for PhotosTestableScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90B90);
  OUTLINED_FUNCTION_22_13();
  type metadata accessor for PhotosInlinePlaybackContainerItemVisibilityTracker();
  sub_1C1263190();
  type metadata accessor for PhotosInlinePlaybackContainerScrollViewTracker(255);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v22 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v191 = v23;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_34();
  v189 = v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94750);
  v26 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v186 = v27;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_34();
  v185 = v29;
  OUTLINED_FUNCTION_26_1();
  v193 = v21;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_24();
  v184 = v30;
  v210[41] = v30;
  v211 = sub_1C0FDB6D4(v31, &qword_1EBE90B90);
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_14();
  v210[39] = v32;
  v210[40] = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_23();
  v210[37] = v33;
  v210[38] = sub_1C112CDA8(v34, v35);
  v210[35] = swift_getWitnessTable();
  v210[36] = v211;
  v192 = v22;
  v36 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_23();
  v181 = v36;
  v210[33] = v36;
  v210[34] = sub_1C0FDB6D4(v37, &qword_1EBE94750);
  v38 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v180 = v40;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_34();
  v177 = v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92A60);
  v183 = OpaqueTypeMetadata2;
  v43 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v179 = v44;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_34();
  v176 = v46;
  v188 = v26;
  v178 = v38;
  v47 = OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_9_3();
  v171 = v47;
  v210[31] = v47;
  v210[32] = sub_1C0FDB6D4(v48, &qword_1EBE92A60);
  v49 = swift_getWitnessTable();
  v50 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v174 = v51;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_34();
  v170 = v53;
  type metadata accessor for PhotosScrollPositionModifier();
  v175 = v50;
  v54 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v169 = v55;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_34();
  v168 = v57;
  v182 = v43;
  v172 = v49;
  v58 = OUTLINED_FUNCTION_23_10();
  OUTLINED_FUNCTION_14_7();
  v161 = v58;
  v210[29] = v58;
  v210[30] = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v60 = MEMORY[0x1E697C888];
  v61 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v166 = v62;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_34();
  v162 = v64;
  v173 = v54;
  v160 = v59;
  v210[2] = v59;
  v210[3] = v60;
  v65 = v165;
  v66 = v206;
  v167 = v61;
  v210[0] = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v210[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0();
  v163 = v68;
  v164 = v67;
  MEMORY[0x1EEE9AC00](v67);
  v157 = &v149 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v70);
  v158 = &v149 - v71;
  v72 = sub_1C1262650();
  OUTLINED_FUNCTION_0();
  v74 = v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_13();
  v155 = v77 - v76;
  v78 = *(v65 - 1);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v156 = &v149 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v149 - v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE919B0);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v84);
  v86 = &v149 - v85;
  v87 = swift_getWitnessTable();
  View.photosTrace.getter(v65, v87);
  v154 = sub_1C1262680();
  if (__swift_getEnumTagSinglePayload(v86, 1, v154) == 1)
  {
    v72 = v78;
    sub_1C111ACFC(v86);
  }

  else
  {
    v153 = v74;
    (*(v78 + 16))(v83, v66, v65);
    sub_1C1262640();
    v88 = sub_1C1262670();
    v152 = sub_1C1266520();
    if (sub_1C1266730())
    {
      v89 = swift_slowAlloc();
      v149 = v89;
      v150 = swift_slowAlloc();
      v210[0] = v150;
      *v89 = 136446210;
      v90 = View.photosChangedProperties.getter(v65, v87);
      v92 = v91;
      v151 = v72;
      v93 = OUTLINED_FUNCTION_21_8();
      v94(v93);
      v95 = sub_1C0FA0E80(v90, v92, v210);

      v96 = v149;
      *(v149 + 1) = v95;
      v97 = v155;
      v98 = sub_1C1262630();
      _os_signpost_emit_with_name_impl(&dword_1C0F96000, v88, v152, v98, "PhotosItemsCarousel", "PhotosItemsCarousel %{public}s", v96, 0xCu);
      v99 = v150;
      __swift_destroy_boxed_opaque_existential_0Tm(v150);
      MEMORY[0x1C68F1630](v99, -1, -1);
      MEMORY[0x1C68F1630](v96, -1, -1);

      (*(v153 + 8))(v97, v151);
    }

    else
    {

      (*(v153 + 8))(v155, v72);
      v100 = OUTLINED_FUNCTION_21_8();
      v101(v100);
    }

    OUTLINED_FUNCTION_15_1();
    (*(v102 + 8))(v86);
    v66 = v206;
  }

  LODWORD(v206) = sub_1C1264420();
  v103 = (v66 + v65[24]);
  v104 = v103[1];
  v155 = *v103;
  v105 = v66;
  v106 = v72;
  v107 = v156;
  (*(v72 + 16))(v156, v66, v65);
  v108 = (*(v72 + 80) + 72) & ~*(v72 + 80);
  v109 = swift_allocObject();
  v110 = v197;
  *(v109 + 2) = v198;
  *(v109 + 3) = v110;
  v112 = v207;
  v111 = v208;
  v113 = v195;
  v114 = v196;
  *(v109 + 4) = v207;
  *(v109 + 5) = v114;
  *(v109 + 6) = v113;
  *(v109 + 7) = v111;
  *(v109 + 8) = v194;
  (*(v106 + 32))(&v109[v108], v107, v65);

  PhotosTestableScrollView.init(_:accessibilityIdentifier:content:)(v206, v155, v104, sub_1C112B698, v109, v209);
  v115 = v193;
  View.photosInlinePlaybackScrollViewTracker<A>(itemIDType:colsPerPage:trackItemVisibility:onScrollPhaseDidChange:)(v112, 0, 1, *(v105 + v65[25]), *(v105 + v65[25] + 8), v112, v184, v189, v111);
  memcpy(v210, v209, 0xE8uLL);
  OUTLINED_FUNCTION_15_1();
  (*(v116 + 8))(v210, v115);
  v117 = (v105 + v65[28]);
  v119 = *v117;
  v118 = v117[1];
  v209[0] = v119;
  v209[1] = v118;
  v120 = v185;
  sub_1C1264B90();
  v121 = OUTLINED_FUNCTION_17_22();
  v122(v121);
  v123 = v188;
  sub_1C1264CC0();
  (*(v186 + 8))(v120, v123);
  sub_1C100AE3C();
  v124 = v176;
  sub_1C1264C10();
  v125 = OUTLINED_FUNCTION_17_22();
  v126(v125);
  v127 = v199;
  sub_1C1264140();
  v128 = v182;
  sub_1C1005F50();
  v129 = v170;
  sub_1C1264C50();
  (*(v200 + 8))(v127, v201);
  (*(v179 + 8))(v124, v128);
  v130 = v175;
  View.photosScrollPosition<A>(scrollViewModel:)(*(v105 + v65[20]), v175, v161);
  (*(v174 + 8))(v129, v130);
  v131 = v162;
  sub_1C1264D90();
  v132 = OUTLINED_FUNCTION_17_22();
  v133(v132);
  v134 = sub_1C1264470();
  v135 = (v105 + v65[22]);
  v136 = *v135;
  v137 = v135[1];
  v138 = v135[2];
  v139 = v135[3];
  v140 = v202;
  sub_1C1263E00();
  v141 = v157;
  v142 = v167;
  v143 = OpaqueTypeConformance2;
  MEMORY[0x1C68EE490](v134, v140, v167, OpaqueTypeConformance2, v136, v137, v138, v139);
  (*(v203 + 8))(v140, v204);
  (*(v166 + 8))(v131, v142);
  v209[0] = v142;
  v209[1] = v143;
  OUTLINED_FUNCTION_1_38();
  v144 = swift_getOpaqueTypeConformance2();
  v145 = v158;
  v146 = v164;
  sub_1C0FDBA4C(v141, v164, v144);
  v147 = *(v163 + 8);
  v147(v141, v146);
  sub_1C0FDBA4C(v145, v146, v144);
  return (v147)(v145, v146);
}

uint64_t sub_1C112B1B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v50 = a5;
  v48 = a3;
  v52 = a1;
  v53 = a8;
  v49 = a9;
  v15 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v64 = a3;
  v65 = a4;
  v66 = a5;
  v17 = a4;
  v67 = a6;
  v68 = a7;
  v69 = a9;
  v18 = type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  v63 = v18;
  v64 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v63 = v18;
  v64 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1C12655C0();
  v63 = a2;
  v64 = a4;
  v65 = v20;
  v66 = a6;
  v67 = a7;
  v21 = sub_1C12656A0();
  v62 = swift_getWitnessTable();
  v44 = v21;
  v43 = swift_getWitnessTable();
  v22 = sub_1C12628C0();
  v47 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v42 = v39 - v23;
  v41 = swift_getWitnessTable();
  v63 = v22;
  v64 = v41;
  v45 = MEMORY[0x1E697D1A0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v40 = v39 - v28;
  v39[1] = sub_1C12638D0();
  v29 = a2;
  v30 = v48;
  v63 = a2;
  v64 = v48;
  v31 = v50;
  v65 = v17;
  v66 = v50;
  v67 = a6;
  v68 = a7;
  v32 = v49;
  v69 = v49;
  v39[0] = *(v52 + *(type metadata accessor for PhotosItemsCarousel() + 84));
  v54 = v29;
  v55 = v30;
  v56 = v17;
  v57 = v31;
  v58 = a6;
  v59 = a7;
  v60 = v32;
  v61 = v52;
  sub_1C1129E3C();
  v33 = v42;
  sub_1C12628B0();
  v34 = v41;
  OUTLINED_FUNCTION_15_6();
  sub_1C1264CD0();
  (*(v47 + 8))(v33, v22);
  v63 = v22;
  v64 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v40;
  sub_1C0FDBA4C(v26, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v37 = *(v46 + 8);
  v37(v26, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v36, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v37)(v36, OpaqueTypeMetadata2);
}

uint64_t sub_1C112B6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a1;
  v62 = a9;
  v65 = a2;
  v66 = a3;
  v55 = a3;
  v56 = a5;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v70 = a7;
  v71 = a8;
  v57 = a8;
  v59 = type metadata accessor for PhotosItemsCarousel();
  v16 = *(v59 - 8);
  v60 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v49 - v17;
  v18 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v50 = a4;
  v69 = a6;
  v70 = a7;
  v21 = a6;
  v51 = a6;
  v22 = a7;
  v71 = a8;
  v23 = type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  v65 = v23;
  v66 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v65 = v23;
  v66 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v52 = sub_1C12655C0();
  v25 = a2;
  v65 = a2;
  v66 = a4;
  v67 = v52;
  v68 = v21;
  v69 = v22;
  v26 = sub_1C12656A0();
  v54 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v29);
  v53 = &v49 - v31;
  v32 = *(v18 + 16);
  v33 = v61;
  v49 = a2;
  v32(v63, v61, a2, v30);
  v34 = v16;
  v35 = *(v16 + 16);
  v36 = v58;
  v37 = v33;
  v38 = v59;
  v35(v58, v37);
  v39 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v40 = swift_allocObject();
  v41 = v55;
  *(v40 + 2) = v25;
  *(v40 + 3) = v41;
  v43 = v56;
  v42 = v57;
  *(v40 + 4) = v50;
  *(v40 + 5) = v43;
  *(v40 + 6) = v51;
  *(v40 + 7) = v22;
  *(v40 + 8) = v42;
  (*(v34 + 32))(&v40[v39], v36, v38);

  v48 = swift_getWitnessTable();
  sub_1C1265680();
  v64 = v48;
  v44 = swift_getWitnessTable();
  v45 = v53;
  sub_1C0FDBA4C(v28, v26, v44);
  v46 = *(v54 + 8);
  v46(v28, v26);
  sub_1C0FDBA4C(v45, v26, v44);
  return (v46)(v45, v26);
}

uint64_t sub_1C112BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v27 = a8;
  v26 = a7;
  v25 = a6;
  v28 = a2;
  v29 = a1;
  v30 = a9;
  v42 = a5;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a10;
  v13 = type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v40 = v13;
  v41 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v15 = sub_1C12655C0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = v25;
  v35 = v26;
  v36 = v27;
  v37 = a10;
  v38 = v28;
  v39 = v29;
  sub_1C1009330();
  sub_1C12655B0();
  v22 = swift_getWitnessTable();
  sub_1C0FDBA4C(v18, v15, v22);
  v23 = *(v16 + 8);
  v23(v18, v15);
  sub_1C0FDBA4C(v21, v15, v22);
  return (v23)(v21, v15);
}

uint64_t sub_1C112BDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6)
{
  v48 = a2;
  v49 = a5;
  v45 = *(a3 - 8);
  v46 = a1;
  v39 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v8;
  v51 = v9;
  v10 = v8;
  v37[1] = v8;
  v11 = v9;
  v52 = v12;
  v53 = v13;
  v14 = v13;
  v37[2] = v13;
  v37[3] = v15;
  v54 = v15;
  v55 = v16;
  v17 = v15;
  v18 = v16;
  v56 = v19;
  v20 = type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v38 = v37 - v21;
  WitnessTable = swift_getWitnessTable();
  v50 = v20;
  v51 = WitnessTable;
  v43 = MEMORY[0x1E697D320];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v44 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v40 = v37 - v26;
  v50 = v10;
  v51 = v11;
  v52 = a4;
  v53 = v14;
  v54 = v17;
  v55 = v18;
  v56 = v39;
  v27 = (v46 + *(type metadata accessor for PhotosItemsCarousel() + 104));
  v28 = *v27;
  v29 = v27[1];
  v30 = v42;
  (*(v45 + 16))(v42, v48, v11);
  v31 = v38;
  sub_1C112C170(v28, v29, v30, v11, v38);

  sub_1C1264420();
  v32 = WitnessTable;
  sub_1C10A0734();
  sub_1C1264DB0();
  (*(v47 + 8))(v31, v20);
  v50 = v20;
  v51 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_1C0FDBA4C(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v35 = *(v44 + 8);
  v35(v24, OpaqueTypeMetadata2);
  sub_1C0FDBA4C(v34, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v35)(v34, OpaqueTypeMetadata2);
}

uint64_t sub_1C112C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for PhotosItemsCarousel.ItemContainerView();
  return (*(*(a4 - 8) + 32))(&a5[*(v8 + 76)], a3, a4);
}

uint64_t PhotosItemsCarousel<>.init(_:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, char a4@<W3>, int8x16_t *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_13();
  v19 = v18 - v17;
  (*(v16 + 16))(v18 - v17);
  KeyPath = swift_getKeyPath();
  sub_1C112C43C(a6, v30);
  PhotosItemsCarousel.init(_:id:scrollViewModel:itemsSpacing:contentMargins:scrollBehavior:scrollClipDisabled:scrollViewAccessibilityIdentifier:itemView:onScrollPhaseDidChange:)(v19, KeyPath, a2, a3, a4 & 1, a5, v30, a7, a9, a8, a10, a11, a12, a13, a14, a15);
  sub_1C112C498(a6);
  return (*(v16 + 8))(a1, a15);
}

void sub_1C112C504()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1C1266F10();
    if (v1 <= 0x3F)
    {
      type metadata accessor for PhotosScrollViewModel();
      if (v2 <= 0x3F)
      {
        sub_1C0FFC0A4();
        if (v3 <= 0x3F)
        {
          sub_1C1007F24();
          if (v4 <= 0x3F)
          {
            sub_1C1007F88();
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

uint64_t sub_1C112C630(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C112C7A4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((((((((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((((((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C112C9B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1C112CB30(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
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
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
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
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
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
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C112CDA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for PhotosItemsCarousel();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 72) & ~*(*(v1 - 8) + 80));
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v2);

  __swift_destroy_boxed_opaque_existential_0Tm(v2 + *(v1 + 92));

  if (*(v2 + *(v1 + 100)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C112CF64(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 5);
  v8 = *(v2 + 6);
  v9 = *(v2 + 7);
  v10 = *(v2 + 8);
  v11 = *(type metadata accessor for PhotosItemsCarousel() - 8);
  return a2(a1, &v2[(*(v11 + 80) + 72) & ~*(v11 + 80)], v4, v5, v6, v7, v8, v9, v10);
}

uint64_t PhotosSelectionCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSelectionCoordinator.init()();
  return v0;
}

uint64_t PhotosSelectionCoordinator.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94758);
  sub_1C1262DD0();
  *(swift_allocObject() + 16) = xmmword_1C12B9E60;
  sub_1C1262DA0();
  sub_1C1262DB0();
  sub_1C1262DC0();
  sub_1C1262D70();
  sub_1C1262D90();
  sub_1C10FE214();
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  sub_1C1262070();
  return v0;
}

uint64_t sub_1C112D214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for PhotosItemListSelectionController();
  swift_unknownObjectRetain();

  v16 = sub_1C102F064(a1, a3, a4, a5, a6 & 1, a7, a8);
  sub_1C0FF4B88(a2, v18);
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760);
  sub_1C1262090();
  swift_endAccess();
  return v16;
}

uint64_t sub_1C112D330(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760);
    sub_1C1262040();
    swift_endAccess();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C112D420(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void sub_1C112D468()
{
  OUTLINED_FUNCTION_23();
  v53 = v0;
  v54 = v1;
  v47 = v2;
  v50 = v3;
  v5 = v4;
  sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v48 = v7;
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C12658A0();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_30();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C1265840();
  sub_1C1262D90();
  v22 = sub_1C1262D80();
  v23 = *(v19 + 8);
  v24 = OUTLINED_FUNCTION_42_0();
  v23(v24);
  v25 = OUTLINED_FUNCTION_46();
  v23(v25);
  if (v22 & 1) != 0 || (sub_1C1265840(), sub_1C1262DB0(), v32 = sub_1C1262D80(), v33 = OUTLINED_FUNCTION_42_0(), v23(v33), v34 = OUTLINED_FUNCTION_46(), v23(v34), (v32) && (sub_1C1265890(), v35 = sub_1C1262EF0(), sub_1C1262F00(), sub_1C1262F00() == v35))
  {
    sub_1C1265890();
    v26 = sub_1C1262EE0();
    sub_1C1262F00();
    if (sub_1C1262F00() != v26)
    {
      sub_1C112EF08();
      v28 = v27;
      sub_1C1265880();
      OUTLINED_FUNCTION_3();
      v30 = *(v29 + 104);
      if (v28)
      {
        v31 = MEMORY[0x1E697D770];
      }

      else
      {
        v31 = MEMORY[0x1E697D778];
      }

      v43 = *v31;
      v44 = v54;
      goto LABEL_14;
    }

LABEL_13:
    v45 = *MEMORY[0x1E697D778];
    sub_1C1265880();
    OUTLINED_FUNCTION_3();
    v30 = *(v46 + 104);
    v44 = v54;
    v43 = v45;
LABEL_14:
    v30(v44, v43);
    goto LABEL_15;
  }

  v37 = v51;
  v36 = v52;
  v38 = *(v51 + 16);
  v38(v17, v5, v52);
  (*(v48 + 16))(v9, v50, v49);
  sub_1C112D960();
  if (LOBYTE(v60[0]) == 4)
  {
    goto LABEL_13;
  }

  v56 = v60[0];
  v38(v14, v5, v36);
  sub_1C1265890();
  v39 = sub_1C1262ED0();
  sub_1C1262F00();
  v40 = sub_1C1262F00();
  (*(v37 + 8))(v14, v36);
  v55 = v40 == v39;
  sub_1C112E8D0(&v56, &v55, &v57);
  if (!AssociatedTypeWitness)
  {
    sub_1C112EC70(&v57);
    goto LABEL_13;
  }

  sub_1C0F9DDE4(&v57, v60);
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v57);
  OUTLINED_FUNCTION_42_0();
  sub_1C12622C0();
  sub_1C1263230();
  v41 = *MEMORY[0x1E697D770];
  sub_1C1265880();
  OUTLINED_FUNCTION_3();
  (*(v42 + 104))(v54, v41);
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  __swift_destroy_boxed_opaque_existential_0Tm(v60);
LABEL_15:
  OUTLINED_FUNCTION_22_0();
}

void sub_1C112D960()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_30();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C1265890();
  v14 = sub_1C1262EF0();
  sub_1C1262F00();
  if (sub_1C1262F00() == v14)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v15 + 8))(v1);
    sub_1C12658A0();
    OUTLINED_FUNCTION_4_2();
    (*(v16 + 8))(v3);
  }

  else
  {
    sub_1C1265840();
    sub_1C112F08C();
    v18 = *(v8 + 8);
    v18(v12, v6);
    sub_1C1262DC0();
    sub_1C113046C();
    OUTLINED_FUNCTION_4_41();
    v19 = OUTLINED_FUNCTION_10_24();
    (v18)(v19);
    if (v12)
    {
      sub_1C1263150();
      OUTLINED_FUNCTION_4_2();
      (*(v20 + 8))(v1);
      sub_1C12658A0();
      OUTLINED_FUNCTION_4_2();
      (*(v21 + 8))(v3);
      v22 = OUTLINED_FUNCTION_16_1();
      (v18)(v22);
      v17 = 3;
      goto LABEL_8;
    }

    sub_1C1262D70();
    OUTLINED_FUNCTION_4_41();
    v23 = OUTLINED_FUNCTION_10_24();
    (v18)(v23);
    sub_1C1262DA0();
    OUTLINED_FUNCTION_4_41();
    v24 = OUTLINED_FUNCTION_10_24();
    (v18)(v24);
    sub_1C1262DB0();
    v25 = OUTLINED_FUNCTION_4_41();
    sub_1C1263150();
    OUTLINED_FUNCTION_4_2();
    (*(v26 + 8))(v1);
    sub_1C12658A0();
    OUTLINED_FUNCTION_4_2();
    (*(v27 + 8))(v3);
    v18(v12, v6);
    v28 = OUTLINED_FUNCTION_16_1();
    (v18)(v28);
    if (v25)
    {
      v17 = 1;
      goto LABEL_8;
    }
  }

  v17 = 4;
LABEL_8:
  *v5 = v17;
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C112DD2C()
{
  OUTLINED_FUNCTION_39();
  v5 = *v4;
  v6 = sub_1C112ECD8();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v13 = v5;
      v11 = *(v9 + 40);
      swift_unknownObjectRetain();
      v11(&v13, ObjectType, v9, v3, v2, v1, v0);
      swift_unknownObjectRelease();
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1C112DE10()
{
  OUTLINED_FUNCTION_39();
  result = sub_1C112ECD8();
  v1 = result;
  v2 = (result + 40);
  v3 = -*(result + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
LABEL_5:

      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = v2 + 2;
    v7 = *v2;
    swift_getObjectType();
    v8 = *(v7 + 96);
    swift_unknownObjectRetain();
    v9 = OUTLINED_FUNCTION_46();
    LOBYTE(v7) = v8(v9);
    result = swift_unknownObjectRelease();
    v2 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C112E15C()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    do
    {
      v3 = *v2;
      swift_getObjectType();
      v4 = *(v3 + 48);
      swift_unknownObjectRetain();
      v5 = OUTLINED_FUNCTION_46();
      v4(v5);
      swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1C112E1FC()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    do
    {
      v3 = *v2;
      swift_getObjectType();
      v4 = *(v3 + 56);
      swift_unknownObjectRetain();
      v5 = OUTLINED_FUNCTION_46();
      v4(v5);
      swift_unknownObjectRelease();
      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

void sub_1C112E29C()
{
  OUTLINED_FUNCTION_23();
  v0 = sub_1C112ECD8();
  v34 = *(v0 + 16);
  if (!v34)
  {

LABEL_45:
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v1 = 0;
  v33 = v0 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  v32 = v0;
  while (v1 < *(v0 + 16))
  {
    v35 = v1;
    v36 = v2;
    v3 = *(v33 + 16 * v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 120);
    swift_unknownObjectRetain();
    v5(ObjectType, v3);
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94768);
    v6 = sub_1C1266B00();

    v7 = MEMORY[0x1E69E7CC0];
    v39 = MEMORY[0x1E69E7CC0];
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = v6 + 32;
      do
      {
        sub_1C0FDB0A8(v9, v38);
        __swift_project_boxed_opaque_existential_1(v38, v38[3]);
        swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_3();
        MEMORY[0x1EEE9AC00](v10);
        sub_1C12622B0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94770);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v37 = 0;
        }

        v11 = __swift_destroy_boxed_opaque_existential_0Tm(v38);
        if (v37)
        {
          MEMORY[0x1C68EF9D0](v11);
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C12660F0();
          }

          OUTLINED_FUNCTION_42_0();
          sub_1C1266160();
          v7 = v39;
        }

        v9 += 40;
        --v8;
      }

      while (v8);
    }

    v2 = v36;
    if (v7 >> 62)
    {
      v12 = sub_1C1266BB0();
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v36 >> 62;
    if (v36 >> 62)
    {
      v14 = sub_1C1266BB0();
    }

    else
    {
      v14 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v14 + v12;
    if (__OFADD__(v14, v12))
    {
      goto LABEL_47;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v36 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_23:
      sub_1C1266BB0();
      goto LABEL_24;
    }

    if (v13)
    {
      goto LABEL_23;
    }

LABEL_24:
    v2 = sub_1C12669A0();
    v16 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
    v17 = *(v16 + 16);
    v18 = (*(v16 + 24) >> 1) - v17;
    v19 = v16 + 8 * v17;
    if (v7 >> 62)
    {
      v21 = sub_1C1266BB0();
      if (v21)
      {
        v22 = v21;
        v23 = sub_1C1266BB0();
        if (v18 < v23)
        {
          goto LABEL_50;
        }

        if (v22 < 1)
        {
          goto LABEL_52;
        }

        v31 = v23;
        sub_1C112FC8C();
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94778);
          v25 = sub_1C1109308(v38, i, v7);
          v27 = *v26;
          swift_unknownObjectRetain();
          v25(v38, 0);
          *(v19 + 32 + 8 * i) = v27;
        }

        v20 = v31;
        goto LABEL_35;
      }
    }

    else
    {
      v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        if (v18 < v20)
        {
          goto LABEL_51;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94770);
        swift_arrayInitWithCopy();
LABEL_35:

        if (v20 < v12)
        {
          goto LABEL_48;
        }

        if (v20 > 0)
        {
          v28 = *(v16 + 16);
          v29 = __OFADD__(v28, v20);
          v30 = v28 + v20;
          if (v29)
          {
            goto LABEL_49;
          }

          *(v16 + 16) = v30;
        }

        goto LABEL_40;
      }
    }

    if (v12 > 0)
    {
      goto LABEL_48;
    }

LABEL_40:
    v1 = v35 + 1;
    swift_unknownObjectRelease();
    v0 = v32;
    if (v35 + 1 == v34)
    {

      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_1C112E748()
{
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 40);
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = *v2;
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 136);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v4);
      v8 = *(v7 + 16);
      v9 = *(v3 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      v10 = v7;
      if (!swift_isUniquelyReferenced_nonNull_native() || (v11 = *(v3 + 24) >> 1, v11 < v9 + v8))
      {
        sub_1C0FE41A4();
        v3 = v12;
        v11 = *(v12 + 24) >> 1;
      }

      if (*(v10 + 16))
      {
        if (v11 - *(v3 + 16) < v8)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = *(v3 + 16);
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_18;
          }

          *(v3 + 16) = v15;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_16;
        }
      }

      swift_unknownObjectRelease();
      v2 += 2;
      if (!--v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_1C112E8D0(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  HIDWORD(v69) = *a2;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  v6 = sub_1C112ECD8();
  v7 = v6;
  if ((v5 - 1) >= 2)
  {
    v8 = sub_1C112F9D8(v6);

    v7 = v8;
  }

  v71 = v7[2];
  if (!v71)
  {

    if ((v5 - 1) >= 2)
    {
      goto LABEL_24;
    }

LABEL_14:
    v26 = sub_1C112ECD8();
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 40;
      do
      {
        sub_1C11303FC(a3, &v74);
        if (v76)
        {
          sub_1C112EC70(&v74);
        }

        else
        {
          swift_unknownObjectRetain();
          sub_1C112EC70(&v74);
          swift_getObjectType();
          OUTLINED_FUNCTION_9_26();
          v29();
          swift_unknownObjectRelease();
          v30 = sub_1C112EC70(a3);
          OUTLINED_FUNCTION_3_37(v30, v31, v32, v33, v34, v35, v36, v37, v65, v66, v67, v68, v69, v70, v71, v72, v73, v38, v74, v75);
        }

        v28 += 16;
        --v27;
      }

      while (v27);
    }

    goto LABEL_31;
  }

  HIDWORD(v66) = v5 - 1;
  v67 = v3;
  v68 = 0;
  v9 = 0;
  v10 = 0;
  v11 = v7 + 5;
  v70 = v7;
  while (1)
  {
    if (v10 >= v7[2])
    {
      goto LABEL_35;
    }

    v72 = v9;
    v13 = *(v11 - 1);
    v12 = *v11;
    ObjectType = swift_getObjectType();
    v15 = *(v12 + 104);
    swift_unknownObjectRetain();
    v15(ObjectType, v12);
    if ((v16 & 1) == 0)
    {
      break;
    }

    v9 = v72;
    v7 = v70;
    if (v72)
    {
      swift_unknownObjectRetain();

      HIBYTE(v73) = v5;
      v54 = swift_getObjectType();
      v55 = (*(v68 + 112))(v54);
      (*(v12 + 32))(&v74, &v73 + 7, v55, ObjectType, v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v56 = sub_1C112EC70(a3);
      OUTLINED_FUNCTION_3_37(v56, v57, v58, v59, v60, v61, v62, v63, v65, v66, v67, v68, v69, v70, v71, v72, v73, v64, v74, v75);
      goto LABEL_33;
    }

    swift_unknownObjectRelease();
LABEL_11:
    ++v10;
    v11 += 2;
    if (v71 == v10)
    {

      goto LABEL_22;
    }
  }

  HIBYTE(v73) = v5;
  BYTE6(v73) = BYTE4(v69);
  (*(v12 + 24))(&v74, &v73 + 7, &v73 + 6, ObjectType, v12);
  v17 = sub_1C112EC70(a3);
  OUTLINED_FUNCTION_3_37(v17, v18, v19, v20, v21, v22, v23, v24, v65, v66, v67, v68, v69, v70, v71, v72, v73, v25, v74, v75);
  sub_1C11303FC(a3, &v74);
  v9 = v72;
  v7 = v70;
  if (!v76)
  {
    swift_unknownObjectRelease();
    sub_1C112EC70(&v74);
    v9 = v13;
    v68 = v12;
    goto LABEL_11;
  }

  swift_unknownObjectRelease();

  sub_1C112EC70(&v74);
LABEL_22:
  if (v9)
  {
LABEL_33:
    swift_unknownObjectRelease();
    return;
  }

  if (HIDWORD(v66) <= 1)
  {
    goto LABEL_14;
  }

LABEL_24:
  v39 = sub_1C112ECD8();
  v40 = v39;
  v41 = *(v39 + 16);
  if (!v41)
  {
LABEL_31:

    return;
  }

  v42 = v41 - 1;
  v43 = v39 + 16 * v41 + 24;
  while (v42 < *(v40 + 16))
  {
    sub_1C11303FC(a3, &v74);
    if (v76)
    {
      sub_1C112EC70(&v74);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1C112EC70(&v74);
      swift_getObjectType();
      OUTLINED_FUNCTION_9_26();
      v44();
      swift_unknownObjectRelease();
      v45 = sub_1C112EC70(a3);
      OUTLINED_FUNCTION_3_37(v45, v46, v47, v48, v49, v50, v51, v52, v65, v66, v67, v68, v69, v70, v71, v72, v73, v53, v74, v75);
    }

    --v42;
    v43 -= 16;
    if (v42 == -1)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1C112EC70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C112ECD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_30();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  OUTLINED_FUNCTION_44();
  if (!*(v0 + 24))
  {
    v14 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
    OUTLINED_FUNCTION_44();
    (*(v3 + 16))(v7, v0 + v14, v1);
    v15 = sub_1C1262050();
    (*(v3 + 8))(v7, v1);
    if (v15)
    {
      swift_getObjectType();
      v16 = dynamic_cast_existential_1_conditional(v15);
      if (v16)
      {
        v18 = v16;
        v19 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F8);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1C12A8B40;
        *(v13 + 32) = v18;
        *(v13 + 40) = v19;
        return v13;
      }

      swift_unknownObjectRelease();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v11 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
  OUTLINED_FUNCTION_44();
  (*(v3 + 16))(v10, v0 + v11, v1);

  v12 = sub_1C1262060();

  (*(v3 + 8))(v10, v1);
  v13 = sub_1C10CB648(v12);

  return v13;
}

void sub_1C112EF08()
{
  OUTLINED_FUNCTION_23();
  v0 = sub_1C112ECD8();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (v0 + 40);
    do
    {
      if (v2)
      {
        v2 = 1;
      }

      else
      {
        v4 = *v3;
        ObjectType = swift_getObjectType();
        v6 = *(v4 + 88);
        swift_unknownObjectRetain();
        v2 = v6(ObjectType, v4);
        swift_unknownObjectRelease();
      }

      v3 += 2;
      --v1;
    }

    while (v1);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSelectionCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore26PhotosSelectionCoordinator__controllers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94760);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosSelectionCoordinator.__deallocating_deinit()
{
  PhotosSelectionCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1C112F08C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v38 = v2;
  v39 = v3;
  v4 = sub_1C1263150();
  OUTLINED_FUNCTION_0();
  v40 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1C1262DD0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33[-v18];
  v36 = *(v11 + 16);
  v37 = v1;
  (v36)(&v33[-v18], v1, v9, v17);
  sub_1C1262DC0();
  sub_1C113046C();
  v20 = OUTLINED_FUNCTION_20_18();
  v21 = *(v11 + 8);
  v21(v15, v9);
  v22 = MEMORY[0x1E697E7D8];
  if (v20 & 1) != 0 && (v23 = v4, v24 = v40, (*(v40 + 104))(v8, *MEMORY[0x1E697E7D8], v23), v34 = sub_1C1263140(), v25 = v24, v4 = v23, (*(v25 + 8))(v8, v23), v22 = MEMORY[0x1E697E7D8], (v34))
  {
    v21(v19, v9);
    sub_1C1262D70();
  }

  else
  {
    v35 = v4;
    v26 = v22;
    v27 = v40;
    sub_1C1262D70();
    v28 = OUTLINED_FUNCTION_20_18();
    v21(v15, v9);
    v21(v19, v9);
    if (v28 & 1) != 0 && (v29 = v27, v30 = *(v27 + 104), v31 = v35, v30(v8, *v26, v35), v32 = sub_1C1263140(), (*(v29 + 8))(v8, v31), (v32))
    {
      sub_1C1262DC0();
    }

    else
    {
      v36(v39, v37, v9);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t PhotosSelectionDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t PhotosSelectionMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t EnvironmentValues.photosSelectionCoordinator.getter()
{
  sub_1C112FCF0();
  sub_1C12637F0();
  return v1;
}

uint64_t (*EnvironmentValues.photosSelectionCoordinator.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_1C112FCF0();
  sub_1C12637F0();
  return sub_1C112F538;
}

uint64_t sub_1C112F538(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_1C1263800();
  }

  sub_1C1263800();
}

uint64_t EnvironmentValues.photosSelectionBandDisabled.getter()
{
  sub_1C112FD44();
  sub_1C12637F0();
  return v1;
}

uint64_t (*EnvironmentValues.photosSelectionBandDisabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C112FD44();
  sub_1C12637F0();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C112F6AC;
}

uint64_t sub_1C112F6E4()
{
  type metadata accessor for PhotosSelectionCoordinator();
  v0 = swift_allocObject();
  result = PhotosSelectionCoordinator.init()();
  qword_1EDE80698 = v0;
  return result;
}

uint64_t sub_1C112F724@<X0>(void *a1@<X8>)
{
  if (qword_1EDE80690 != -1)
  {
    swift_once();
  }

  *a1 = qword_1EDE80698;
}

void sub_1C112F790(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for PhotosConcreteSelectableItem();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C112F86C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1C0FE5EE8(v2, 0);

    MEMORY[0x1C68F02A0](v3 + 32, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1C1266BB0();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1C112F908(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90820);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1C112F9D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C0FE4B74(*(a1 + 16), 0);
  v4 = sub_1C112FBB8(&v6, v3 + 2, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1C112FA6C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 56;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    OUTLINED_FUNCTION_22_0();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(v3 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C112FBB8(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v12 = *(a4 + 16);
    v6 = 0;
LABEL_13:
    *v5 = a4;
    v5[1] = v12;
    return v6;
  }

  if (!a3)
  {
    v12 = *(a4 + 16);
LABEL_12:
    v6 = a3;
    goto LABEL_13;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = a2;
    v9 = 0;
    v10 = a3 - 1;
    v11 = a4 + 16 * v6 + 16;
    while (1)
    {
      v12 = v6 + v9;
      if (!(v6 + v9))
      {
        goto LABEL_13;
      }

      if (v12 > *(a4 + 16))
      {
        __break(1u);
        break;
      }

      *v8 = *(v11 + 16 * v9);
      if (!(v10 + v9))
      {
        swift_unknownObjectRetain();
        v12 = v6 + v9 - 1;
        goto LABEL_12;
      }

      ++v8;
      result = swift_unknownObjectRetain();
      --v9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C112FC8C()
{
  result = qword_1EBE94780;
  if (!qword_1EBE94780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94780);
  }

  return result;
}

unint64_t sub_1C112FCF0()
{
  result = qword_1EDE80680;
  if (!qword_1EDE80680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80680);
  }

  return result;
}

unint64_t sub_1C112FD44()
{
  result = qword_1EDE79B38[0];
  if (!qword_1EDE79B38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE79B38);
  }

  return result;
}

unint64_t sub_1C112FD9C()
{
  result = qword_1EBE94788;
  if (!qword_1EBE94788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94788);
  }

  return result;
}

unint64_t sub_1C112FDF4()
{
  result = qword_1EBE94790;
  if (!qword_1EBE94790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94790);
  }

  return result;
}

uint64_t type metadata accessor for PhotosSelectionCoordinator()
{
  result = qword_1EDE80DA8;
  if (!qword_1EDE80DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C112FE9C()
{
  sub_1C1130198();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C1130198()
{
  if (!qword_1EDE776D8)
  {
    v0 = sub_1C1262080();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE776D8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosSelectionDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for PhotosSelectionMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C11303FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C113046C()
{
  result = qword_1EDE7BFD0;
  if (!qword_1EDE7BFD0)
  {
    sub_1C1262DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BFD0);
  }

  return result;
}

uint64_t sub_1C11304F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_1C12638E0();
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94798);
  return sub_1C1130554((a2 + *(v4 + 44)));
}

uint64_t sub_1C1130554@<X0>(char *a1@<X8>)
{
  v32 = a1;
  v1 = sub_1C1263F70();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v29 = v4;
  v30 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_1C1263F50();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v31 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1C1263F60();
  sub_1C1263F80();
  v19 = *(v12 + 16);
  v19(v15, v18, v10);
  v20 = *(v3 + 16);
  v20(v6, v9, v1);
  v21 = v32;
  v19(v32, v15, v10);
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE947B0) + 48)];
  v23 = v29;
  v20(v22, v6, v29);
  v24 = *(v30 + 8);
  v25 = v9;
  v26 = v23;
  v24(v25, v23);
  v27 = *(v31 + 8);
  v27(v18, v10);
  v24(v6, v26);
  return (v27)(v15, v10);
}

_BYTE *sub_1C113082C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C11308D8()
{
  result = qword_1EBE947A0;
  if (!qword_1EBE947A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE947A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE947A0);
  }

  return result;
}

uint64_t PXSyntheticAsset.init(hue:saturation:brightness:aspectRatio:label:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:a5 saturation:a6 brightness:a7 alpha:1.0];

  return PXSyntheticAsset.init(aspectRatio:label:tint:)(a1, a2 & 1, a3, a4, v11);
}

uint64_t PXSyntheticAsset.id.getter()
{
  result = sub_1C1130E5C(v0);
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

double PXSyntheticAsset.pixelSize.getter()
{
  v1 = [v0 pixelWidth];
  [v0 pixelHeight];
  return v1;
}

uint64_t sub_1C1130A74@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 creationDate];
  if (v3)
  {
    v4 = v3;
    sub_1C1261D90();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C1261DE0();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t PXSyntheticAsset.init(aspectRatio:label:tint:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2 & 1;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C1130EC0;
  *(v12 + 24) = v11;
  v17[4] = sub_1C1130ED4;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1C1130E08;
  v17[3] = &block_descriptor_9;
  v13 = _Block_copy(v17);
  v14 = a5;

  v15 = [v10 initWithConfiguration_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

void sub_1C1130D00(id a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 1) == 0)
  {
    v10 = [a1 size];
    MEMORY[0x1C68F0CC0](v10, *&a2, v11, v12);
    [a1 setSize_];
  }

  if (a5)
  {
    v13 = sub_1C1265E70();
    [a1 setLabel_];
  }

  if (a6)
  {

    [a1 setTintColor_];
  }
}

uint64_t sub_1C1130E08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C1130E5C(void *a1)
{
  v1 = [a1 uuid];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C1265EA0();

  return v3;
}

uint64_t sub_1C1130F38(uint64_t a1)
{
  result = sub_1C1130F7C(&unk_1EBE94830);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1130F7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C0FE0644();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1130FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C1131D3C(v3, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1C1131DA0(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94858) + 36));
  sub_1C1262E60();
  sub_1C1266210();
  *v11 = &unk_1C12BA390;
  v11[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94860);
  OUTLINED_FUNCTION_3();
  return (*(v12 + 16))(a2, a1);
}

uint64_t sub_1C1131130(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE93CD0);
  v1[7] = swift_task_alloc();
  v4 = sub_1C1266AD0();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = sub_1C1266200();
  v1[12] = sub_1C12661F0();
  v6 = sub_1C12661E0();
  v1[13] = v6;
  v1[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C11312C4, v6, v5);
}

uint64_t sub_1C11312C4()
{
  sub_1C1266FA0();
  sub_1C1266DD0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1C11313A4;

  return sub_1C1131FB0();
}

uint64_t sub_1C11313A4()
{
  OUTLINED_FUNCTION_2_45();
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 112);
  v7 = *(v2 + 104);
  if (v0)
  {
    v8 = sub_1C1131660;
  }

  else
  {
    v8 = sub_1C1131538;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C1131538()
{
  OUTLINED_FUNCTION_2_45();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  v5 = sub_1C1266230();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
  sub_1C1131D3C(v4, v2);
  v6 = sub_1C12661F0();
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v6;
  *(v8 + 24) = v9;
  sub_1C1131DA0(v2, v8 + v7);
  sub_1C12180A0();

  OUTLINED_FUNCTION_14();

  return v10();
}

uint64_t sub_1C1131660()
{
  OUTLINED_FUNCTION_2_45();
  v1 = *(v0 + 128);

  v2 = v1;
  v3 = sub_1C12626F0();
  v4 = sub_1C1266410();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 128);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1C0F96000, v3, v4, ".task delay failed: %@", v7, 0xCu);
    sub_1C113244C(v8);
    MEMORY[0x1C68F1630](v8, -1, -1);
    MEMORY[0x1C68F1630](v7, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_14();

  return v11();
}

uint64_t sub_1C11317D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1C1266200();
  v4[3] = sub_1C12661F0();
  v6 = sub_1C12661E0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C113186C, v6, v5);
}

uint64_t sub_1C113186C()
{
  OUTLINED_FUNCTION_29_6();
  v3 = (*(*(v0 + 16) + 8) + **(*(v0 + 16) + 8));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1C1131954;

  return v3();
}

uint64_t sub_1C1131954()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v3 = v2;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1C1131A68, v5, v4);
}

uint64_t sub_1C1131A68()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t View.photosTaskWithDelay(_:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = a5;
  *(v13 + 1) = a1;
  *(v13 + 2) = a2;

  sub_1C12626E0();
  MEMORY[0x1C68EE920](v13, a3, v10, a4);
  return sub_1C1131C08(v13);
}

uint64_t type metadata accessor for PhotosTaskWithDelayViewModifier()
{
  result = qword_1EBE94848;
  if (!qword_1EBE94848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1131C08(uint64_t a1)
{
  v2 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C1131C8C()
{
  result = sub_1C1007F88();
  if (v1 <= 0x3F)
  {
    result = sub_1C1262720();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1131D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1131DA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosTaskWithDelayViewModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1131E04()
{
  OUTLINED_FUNCTION_29_6();
  v2 = *(type metadata accessor for PhotosTaskWithDelayViewModifier() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1131ECC;

  return sub_1C1131130(v0 + v3);
}

uint64_t sub_1C1131ECC()
{
  OUTLINED_FUNCTION_29_6();
  v1 = *v0;
  OUTLINED_FUNCTION_8_26();
  *v2 = v1;

  OUTLINED_FUNCTION_14();

  return v3();
}

uint64_t sub_1C1131FB0()
{
  OUTLINED_FUNCTION_2_45();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1C1266AC0();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C11320AC, 0, 0);
}

uint64_t sub_1C11320AC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C1266AD0();
  v5 = sub_1C11326C0(&qword_1EDE82F70, MEMORY[0x1E69E8820]);
  sub_1C1266DB0();
  sub_1C11326C0(&qword_1EDE82F78, MEMORY[0x1E69E87E8]);
  sub_1C1266AE0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C113223C;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C113223C()
{
  OUTLINED_FUNCTION_2_45();
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_8_26();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C11323E8, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_14();

    return v6();
  }
}

uint64_t sub_1C11323E8()
{
  OUTLINED_FUNCTION_29_6();

  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_1C113244C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE97C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11324B4()
{
  OUTLINED_FUNCTION_2_45();
  v3 = v2;
  v4 = *(type metadata accessor for PhotosTaskWithDelayViewModifier() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1C1132708;

  return sub_1C11317D4(v3, v6, v7, v0 + v5);
}

unint64_t sub_1C11325A0()
{
  result = qword_1EBE94868;
  if (!qword_1EBE94868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94858);
    sub_1C113265C();
    sub_1C11326C0(&qword_1EBE94878, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94868);
  }

  return result;
}

unint64_t sub_1C113265C()
{
  result = qword_1EBE94870;
  if (!qword_1EBE94870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94870);
  }

  return result;
}

uint64_t sub_1C11326C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosCollectionCell.init(_:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  __src[0] = a3;
  __src[1] = a4;
  __src[2] = a5;
  __src[3] = a6;
  __src[4] = a7;
  v12 = *(type metadata accessor for PhotosCollectionCell() + 64);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  v13 = memcpy((a8 + v12), __src, 0xD1uLL);
  a2(v13);
  return (*(*(a3 - 8) + 32))(a8, a1, a3);
}

uint64_t sub_1C1132800@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 64);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    v10 = nullsub_1(v15);
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, 0xD1uLL);
    v11 = nullsub_1(v16);
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1(v18);
    memcpy(v15, v17, 0xD1uLL);
    nullsub_1(v15);
    memcpy(v16, v17, 0xD1uLL);
    nullsub_1(v16);

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0F9E21C(v17, &qword_1EBE91C80);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1132A1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 16);
  (*(v1 + 40))(v2, v1);
  if (!v3)
  {
    (*(v1 + 48))(v2, v1);
    if (!v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PhotosCollectionCell.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94880);
  v35 = a1[2];
  v36 = a1[4];
  v37 = a1;
  type metadata accessor for PhotosFavoriteBadge();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  v4 = MEMORY[0x1E6981840];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v52[0] = sub_1C12654C0();
  v52[1] = v4;
  v52[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888);
  v52[3] = v52[2];
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v32 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0);
  OUTLINED_FUNCTION_11_0();
  v31[1] = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40);
  OUTLINED_FUNCTION_11_0();
  v33 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0);
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v34 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v31 - v16;
  v40 = v35;
  v41 = v3;
  v42 = v36;
  v18 = v37;
  v43 = *(v37 + 5);
  v44 = v38;
  sub_1C1009330();
  sub_1C12655B0();
  sub_1C1132800(v18, v51);
  v19 = OUTLINED_FUNCTION_4_42();
  View.cellStyle(for:)(v51, v19, v14);
  memcpy(v52, v51, 0xD0uLL);
  sub_1C100C7D0(v52);
  (*(v32 + 8))(v9, v5);
  OUTLINED_FUNCTION_0_0();
  v21 = sub_1C0FDB6D4(v20, &unk_1EBE92EC0);
  v49 = v19;
  v50 = v21;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v24 = sub_1C0FDB6D4(v23, &qword_1EBE91C40);
  v47 = WitnessTable;
  v48 = v24;
  v25 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v27 = sub_1C0FDB6D4(v26, &unk_1EBE92ED0);
  v45 = v25;
  v46 = v27;
  v28 = swift_getWitnessTable();
  sub_1C0FDBA4C(v14, v10, v28);
  v29 = *(v34 + 8);
  v29(v14, v10);
  sub_1C0FDBA4C(v17, v10, v28);
  return (v29)(v17, v10);
}

uint64_t sub_1C1132F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a1;
  v76 = a7;
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1266790();
  v12 = MEMORY[0x1E6981840];
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v93 = sub_1C12654C0();
  v94 = v12;
  v95 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888);
  v96 = v95;
  swift_getTupleTypeMetadata();
  v60 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C12655A0();
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v57 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DD0);
  v63 = sub_1C1263190();
  v71 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v57 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B8);
  v68 = sub_1C1263190();
  v74 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v57 - v16;
  v73 = sub_1C1263190();
  v75 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v66 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v57 - v19;
  v78 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v77 = &v57 - v23;
  v93 = a2;
  v94 = a3;
  v95 = a4;
  v96 = a5;
  v24 = a6;
  v97 = a6;
  v25 = type metadata accessor for PhotosCollectionCell();
  v26 = v69;
  v27 = v69 + *(v25 + 60);
  v62 = a3;
  v67 = v24;
  sub_1C0FDBA4C(v27, a3, v24);
  sub_1C1265B90();
  v64 = v28;
  v30 = v29;
  sub_1C1265B80();
  v32 = v31;
  v34 = v33;
  v35 = sub_1C1132A1C(v25);
  v79 = a2;
  v80 = a3;
  if (v35)
  {
    v36 = 1.0;
  }

  else
  {
    v36 = 0.0;
  }

  v81 = a4;
  v82 = a5;
  v83 = v24;
  v84 = v26;
  sub_1C10A7F5C();
  v37 = v58;
  sub_1C1265590();
  v38 = swift_getWitnessTable();
  v39 = v57;
  sub_1C1264DD0();
  (*(v65 + 8))(v37, v13);
  v93 = sub_1C1265190();
  v40 = sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0);
  v92[7] = v38;
  v92[8] = v40;
  v41 = v63;
  v42 = swift_getWitnessTable();
  v43 = v61;
  sub_1C1264BE0();

  (*(v71 + 8))(v39, v41);
  sub_1C1132800(v25, &v93);
  sub_1C100C7D0(&v93);
  v44 = sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8);
  v92[5] = v42;
  v92[6] = v44;
  v45 = v68;
  v46 = swift_getWitnessTable();
  v47 = v66;
  sub_1C1264FA0();
  (*(v74 + 8))(v43, v45);
  v92[3] = v46;
  v92[4] = MEMORY[0x1E697E5D8];
  v48 = v73;
  v49 = swift_getWitnessTable();
  v50 = v72;
  sub_1C0FDBA4C(v47, v48, v49);
  v51 = v75;
  v52 = *(v75 + 8);
  v52(v47, v48);
  v53 = v70;
  v54 = v62;
  (*(v78 + 16))(v70, v77, v62);
  v89[0] = v64;
  v89[1] = v30;
  v89[2] = v32;
  v89[3] = v34;
  v89[4] = 0x3FE6666666666666;
  v90 = 0;
  v91 = v36;
  v92[0] = v53;
  v92[1] = v89;
  (*(v51 + 16))(v47, v50, v48);
  v92[2] = v47;
  v88[0] = v54;
  v88[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94880);
  v88[2] = v48;
  v85 = v67;
  v86 = sub_1C1134DE4();
  v87 = v49;
  sub_1C119EE80(v92, 3, v88);
  v52(v50, v48);
  v55 = *(v78 + 8);
  v55(v77, v54);
  v52(v47, v48);
  return (v55)(v53, v54);
}

uint64_t sub_1C11337F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v66 = a3;
  v67 = a5;
  v58 = a1;
  v68 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v60 = &v56 - v11;
  v12 = sub_1C1264700();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosFavoriteBadge();
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v14 = sub_1C12654C0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v72 = a2;
  v73 = v66;
  v74 = a4;
  v75 = v67;
  v76 = a6;
  v77 = v58;
  sub_1C1012734();
  sub_1C12654B0();
  WitnessTable = swift_getWitnessTable();
  v67 = v20;
  v63 = WitnessTable;
  sub_1C0FDBA4C(v17, v14, WitnessTable);
  v64 = v15;
  v22 = *(v15 + 8);
  v61 = v14;
  v62 = v17;
  v23 = a4;
  v65 = v22;
  v66 = v15 + 8;
  v22(v17, v14);
  v24 = *(a4 + 40);
  v59 = a2;
  v25 = v24(a2, a4);
  v27 = MEMORY[0x1E6980E20];
  v28 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v29 = v26;
    v57 = v25;
    sub_1C1265960();
    sub_1C1263390();
    v92[0] = 0;
    v30 = v69;
    v31 = v70;
    v32 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x1E6980F38], v71);
    v33 = *v27;
    v34 = sub_1C1264590();
    v35 = v60;
    (*(*(v34 - 8) + 104))(v60, v33, v34);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v34);
    sub_1C12645B0();
    v36 = sub_1C1264640();
    sub_1C0F9E21C(v35, &qword_1EBE96550);
    (*(v31 + 8))(v30, v32);
    KeyPath = swift_getKeyPath();
    v38 = swift_getKeyPath();
    LOBYTE(v93[0]) = 0;
    v94[0] = v57;
    v94[1] = v29;
    LOBYTE(v94[2]) = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v94[3] = MEMORY[0x1E69E7CC0];
    memcpy(&v94[4], v78, 0x70uLL);
    v94[18] = KeyPath;
    v94[19] = v36;
    v94[20] = v38;
    v94[21] = 2;
    LOBYTE(v94[22]) = 0;
    nullsub_1(v94);
    memcpy(v95, v94, 0xB1uLL);
  }

  else
  {
    sub_1C1134EA0(v95);
    v35 = v60;
  }

  v39 = (*(v23 + 48))(v59, v23);
  if (v40)
  {
    v41 = v40;
    v60 = v39;
    sub_1C1265960();
    sub_1C1263390();
    v88[0] = 0;
    v43 = v70;
    v42 = v71;
    v44 = v28;
    v45 = v69;
    (*(v70 + 104))(v69, *MEMORY[0x1E6980F20], v71);
    v46 = *MEMORY[0x1E6980E20];
    v47 = sub_1C1264590();
    (*(*(v47 - 8) + 104))(v35, v46, v47);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    sub_1C1264600();
    v48 = sub_1C1264640();
    sub_1C0F9E21C(v35, &qword_1EBE96550);
    (*(v43 + 8))(v45, v42);
    v49 = swift_getKeyPath();
    v50 = swift_getKeyPath();
    v92[0] = 0;
    v93[0] = v60;
    v93[1] = v41;
    LOBYTE(v93[2]) = 0;
    v93[3] = v44;
    memcpy(&v93[4], v79, 0x70uLL);
    v93[18] = v49;
    v93[19] = v48;
    v93[20] = v50;
    v93[21] = 2;
    LOBYTE(v93[22]) = 0;
    nullsub_1(v93);
    memcpy(v94, v93, 0xB1uLL);
  }

  else
  {
    sub_1C1134EA0(v94);
  }

  v51 = v61;
  v52 = v62;
  v53 = v67;
  (*(v64 + 16))(v62, v67, v61);
  v89 = 0;
  v90 = 1;
  v91[0] = v52;
  v91[1] = &v89;
  memcpy(v88, v95, 0xB1uLL);
  v91[2] = v88;
  memcpy(v87, v94, 0xB1uLL);
  v91[3] = v87;
  sub_1C1134EA8(v95, v93);
  sub_1C1134EA8(v94, v93);
  v84[0] = v51;
  v84[1] = MEMORY[0x1E6981840];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94888);
  v86 = v85;
  v80 = v63;
  v81 = MEMORY[0x1E6981838];
  v82 = sub_1C1134F18();
  v83 = v82;
  sub_1C119EE80(v91, 4, v84);
  sub_1C0F9E21C(v94, qword_1EBE94888);
  sub_1C0F9E21C(v95, qword_1EBE94888);
  v54 = v65;
  v65(v53, v51);
  memcpy(v92, v87, 0xB1uLL);
  sub_1C0F9E21C(v92, qword_1EBE94888);
  memcpy(v93, v88, 0xB1uLL);
  sub_1C0F9E21C(v93, qword_1EBE94888);
  return v54(v52, v51);
}

uint64_t sub_1C1134024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 8);
  v9 = type metadata accessor for PhotosFavoriteBadge();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = sub_1C1266790();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v32 = &v29 - v21;
  if ((*(v8 + 8))(a2, v8, v20))
  {
    (*(v30 + 16))(v6, a1, a2);
    v22 = sub_1C110DB44();
    PhotosFavoriteBadge.init(_:tint:)(v22, v11);
    WitnessTable = swift_getWitnessTable();
    sub_1C0FDBA4C(v11, v9, WitnessTable);
    v24 = v31;
    v25 = *(v31 + 8);
    v25(v11, v9);
    sub_1C0FDBA4C(v14, v9, WitnessTable);
    v25(v14, v9);
    (*(v24 + 32))(v18, v11, v9);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v9);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v9);
    swift_getWitnessTable();
  }

  v26 = v32;
  sub_1C1170030(v18, v32);
  v27 = *(v16 + 8);
  v27(v18, v15);
  v38 = 0;
  v39 = 1;
  v40[0] = &v38;
  (*(v16 + 16))(v18, v26, v15);
  v40[1] = v18;
  v37[0] = MEMORY[0x1E6981840];
  v37[1] = v15;
  v35 = MEMORY[0x1E6981838];
  v34 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_1C119EE80(v40, 2, v37);
  v27(v26, v15);
  return (v27)(v18, v15);
}

uint64_t PhotosCollectionCellFactory.__allocating_init(capacity:)()
{
  v0 = swift_allocObject();
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

uint64_t PhotosCollectionCellFactory.init(capacity:)()
{
  type metadata accessor for ColorFactory();
  *(v0 + 16) = swift_allocObject();
  return v0;
}

void *sub_1C11344EC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE929A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &__src[-1] - v3;
  OUTLINED_FUNCTION_17_2(0x2320656C746954);
  v5 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v5);

  v6 = __src[0];
  v7 = __src[1];
  OUTLINED_FUNCTION_17_2(0x656C746974627553);
  v8 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](v8);

  v9 = __src[0];
  v10 = __src[1];
  v11 = sub_1C1261990();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v11);
  type metadata accessor for PhotosMockCollection(0);
  swift_allocObject();
  LOWORD(v16) = 0;
  PhotosMockCollection.init(identifier:title:subtitle:dateInterval:isFavorite:keyAssets:isFolder:isContentPrivacyEnabled:)(0, 0, v6, v7, v9, v10, v4, 0, MEMORY[0x1E69E7CC0], v16, v17, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], BYTE1(__src[10]));
  v13 = v12;
  v14 = sub_1C1265110();
  *a1 = v13;
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  result = memcpy((a1 + 32), __src, 0xD1uLL);
  *(a1 + 8) = v14;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  return result;
}

uint64_t PhotosCollectionCellFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1C1134834()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1C107032C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C11348D8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  if (v10 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v5 - 8) + 64) + v11;
  v14 = *(*(v7 - 8) + 64) + 7;
  if (v12 >= a2)
  {
LABEL_29:
    if (v6 != v12)
    {
      result = (v13 + result) & ~v11;
      if (v9 != v12)
      {
        v22 = *(((v14 + result) & 0xFFFFFFFFFFFFFFF8) + 208);
        if (v22 > 1)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v6 = v9;
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(result, v6, v5);
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 209;
  v16 = (a2 - v12 + 255) >> 8;
  if (v15 <= 3)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    LODWORD(v18) = 4;
  }

  else
  {
    LODWORD(v18) = 2;
  }

  if (v17 < 0x100)
  {
    LODWORD(v18) = 1;
  }

  if (v17 >= 2)
  {
    v18 = v18;
  }

  else
  {
    v18 = 0;
  }

  switch(v18)
  {
    case 1:
      v19 = *(result + v15);
      if (!*(result + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 2:
      v19 = *(result + v15);
      if (!*(result + v15))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    case 3:
      __break(1u);
      return result;
    case 4:
      v19 = *(result + v15);
      if (!v19)
      {
        goto LABEL_29;
      }

LABEL_25:
      v20 = (v19 - 1) << (8 * (((v14 + (v13 & ~v11)) & 0xF8) - 47));
      if (v15 <= 3)
      {
        v21 = *result;
      }

      else
      {
        v20 = 0;
        v21 = *result;
      }

      result = v12 + (v21 | v20) + 1;
      break;
    default:
      goto LABEL_29;
  }

  return result;
}

void sub_1C1134AA8(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(*(v7 - 8) + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = v14 & ~v13;
  v16 = *(*(v9 - 8) + 64) + 7;
  v17 = ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v12 >= a3)
  {
    v21 = 0;
  }

  else
  {
    v18 = (a3 - v12 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v12 >= a2)
  {
    switch(v21)
    {
      case 1:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 2:
        *(a1 + v17) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *(a1 + v17) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (!a2)
        {
          return;
        }

LABEL_33:
        if (v8 == v12)
        {
          goto LABEL_36;
        }

        a1 = ((a1 + v14) & ~v13);
        if (v11 == v12)
        {
          v8 = v11;
          v7 = v9;
LABEL_36:

          __swift_storeEnumTagSinglePayload(a1, a2, v8, v7);
        }

        else
        {
          v24 = (a1 + v16) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v24 + 200) = 0;
            *(v24 + 184) = 0u;
            *(v24 + 168) = 0u;
            *(v24 + 152) = 0u;
            *(v24 + 136) = 0u;
            *(v24 + 120) = 0u;
            *(v24 + 104) = 0u;
            *(v24 + 88) = 0u;
            *(v24 + 72) = 0u;
            *(v24 + 56) = 0u;
            *(v24 + 40) = 0u;
            *(v24 + 24) = 0u;
            *(v24 + 8) = 0u;
            *(v24 + 208) = 0;
            *v24 = (a2 - 255);
          }

          else
          {
            *(v24 + 208) = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v22 = ~v12 + a2;
    bzero(a1, ((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v17 <= 3)
    {
      v23 = (v22 >> 8) + 1;
    }

    else
    {
      v23 = 1;
    }

    if (v17 > 3)
    {
      *v6 = v22;
    }

    else
    {
      *v6 = v22;
    }

    switch(v21)
    {
      case 1:
        *(v6 + v17) = v23;
        break;
      case 2:
        *(v6 + v17) = v23;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(v6 + v17) = v23;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C1134DE4()
{
  result = qword_1EDE774B8;
  if (!qword_1EDE774B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94880);
    sub_1C10B8F84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774B8);
  }

  return result;
}

uint64_t sub_1C1134EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C1134F18()
{
  result = qword_1EBE94920;
  if (!qword_1EBE94920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE94888);
    sub_1C1134F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94920);
  }

  return result;
}

unint64_t sub_1C1134F9C()
{
  result = qword_1EBE94928;
  if (!qword_1EBE94928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94930);
    sub_1C1135054();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94928);
  }

  return result;
}

unint64_t sub_1C1135054()
{
  result = qword_1EBE94938;
  if (!qword_1EBE94938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94940);
    sub_1C1112C54();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94938);
  }

  return result;
}

uint64_t OneUpDebugImageProperties.ImageDynamicRange.rawValue.getter()
{
  v1 = 5391443;
  if (*v0 != 1)
  {
    v1 = 5391432;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t OneUpVisualAnalysisStatus.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701602377;
  }

  if (v1 == 1)
  {
    return 0x6E697A796C616E41;
  }

  v3 = sub_1C1135BF0(v1);
  MEMORY[0x1C68EF850](v3);

  return 0x64657A796C616E41;
}

unint64_t sub_1C11351F4@<X0>(void *a1@<X8>)
{
  result = sub_1C113526C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1135230(unint64_t *a1)
{
  v2 = *a1;
  sub_1C1135E5C(v2);
  return sub_1C11352E8(&v2);
}

unint64_t sub_1C113526C@<X0>(unint64_t *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v1);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  v11 = *(v1 + 16);
  *a1 = v11;
  return sub_1C1135E5C(v11);
}

uint64_t sub_1C11352E8(unint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_30();
  sub_1C10D9A94(v1);
}

unint64_t sub_1C1135350(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
  sub_1C1135E5C(a2);
  return sub_1C10D9A94(v4);
}

void (*sub_1C11353B8())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C1073F50();
  return sub_1C1135470;
}

uint64_t sub_1C11354C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1135518();
  *a1 = result;
  return result;
}

uint64_t sub_1C1135518()
{
  swift_getKeyPath();
  v1 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C113558C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_30();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C11355F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*sub_1C113565C())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C113547C();
  return sub_1C1135714;
}

uint64_t sub_1C1135720@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1135794(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C1135794@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v3 = sub_1C1135DB8();
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v12, v1);
  sub_1C1261F30();

  result = OUTLINED_FUNCTION_7_4();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_1C113580C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_30();
}

void (*sub_1C1135870())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C1135DB8();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C0FDF120();
  return sub_1C1135928;
}

uint64_t OneUpAssetDebugInfo.__allocating_init()()
{
  v0 = swift_allocObject();
  OneUpAssetDebugInfo.init()();
  return v0;
}

uint64_t OneUpAssetDebugInfo.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_1C1261F60();
  return v0;
}

uint64_t OneUpAssetDebugInfo.deinit()
{
  sub_1C10D9A94(*(v0 + 16));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore19OneUpAssetDebugInfo___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OneUpAssetDebugInfo.__deallocating_deinit()
{
  OneUpAssetDebugInfo.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OneUpVisualAnalysisStatus.ResultType.description.getter()
{
  v1 = 0x7465442061746144;
  if (*v0 != 1)
  {
    v1 = 0x53206C6175736956;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047316;
  }
}

uint64_t OneUpVisualAnalysisStatus.ResultType.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t sub_1C1135BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1C1102370(0, v1, 0);
  v3 = (a1 + 32);
  OUTLINED_FUNCTION_8_33();
  v7 = 0x7465442061746144;
  do
  {
    v9 = *v3++;
    v8 = v9;
    v10 = v9 == 1;
    if (v9 == 1)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0x53206C6175736956;
    }

    if (v10)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0xED00006863726165;
    }

    if (v8)
    {
      v13 = v11;
    }

    else
    {
      v13 = v5;
    }

    if (v8)
    {
      v14 = v12;
    }

    else
    {
      v14 = v4;
    }

    v16 = *(v22 + 16);
    v15 = *(v22 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1C1102370((v15 > 1), v16 + 1, 1);
      OUTLINED_FUNCTION_8_33();
      v5 = 1954047316;
      v4 = 0xE400000000000000;
    }

    *(v22 + 16) = v16 + 1;
    v17 = v22 + 16 * v16;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0);
  sub_1C1136440();
  v18 = sub_1C1265D70();
  v20 = v19;

  MEMORY[0x1C68EF850](v18, v20);

  MEMORY[0x1C68EF850](93, 0xE100000000000000);
  return 1528834848;
}

unint64_t sub_1C1135DB8()
{
  result = qword_1EBE94948;
  if (!qword_1EBE94948)
  {
    type metadata accessor for OneUpAssetDebugInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94948);
  }

  return result;
}

uint64_t type metadata accessor for OneUpAssetDebugInfo()
{
  result = qword_1EDE7D600;
  if (!qword_1EDE7D600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1135E5C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

PhotosSwiftUICore::OneUpDebugImageProperties::ImageDynamicRange_optional __swiftcall OneUpDebugImageProperties.ImageDynamicRange.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C1266BF0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1C1135F40()
{
  result = qword_1EBE94950;
  if (!qword_1EBE94950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94950);
  }

  return result;
}

unint64_t sub_1C1135FA4()
{
  result = qword_1EBE94958;
  if (!qword_1EBE94958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94958);
  }

  return result;
}

uint64_t sub_1C113601C@<X0>(uint64_t *a1@<X8>)
{
  result = OneUpDebugImageProperties.ImageDynamicRange.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C113604C()
{
  result = sub_1C1261F70();
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

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore25OneUpVisualAnalysisStatusO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C1136284(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
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

uint64_t sub_1C11362D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *sub_1C1136364(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1136440()
{
  result = qword_1EDE7B700;
  if (!qword_1EDE7B700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B700);
  }

  return result;
}

uint64_t dispatch thunk of PhotosViewport.convert(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))();
}

{
  return (*(a3 + 40))();
}

uint64_t dispatch thunk of PhotosViewport.convert(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 48))();
}

int *PhotosItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_15_1();
  (*(v10 + 32))(a5);
  result = type metadata accessor for PhotosItemsPageControl();
  *(a5 + result[15]) = a1;
  *(a5 + result[16]) = a3;
  *(a5 + result[17]) = a4;
  *(a5 + result[18]) = a2;
  return result;
}

uint64_t PhotosItemsPageControl.makeCoordinator()(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  type metadata accessor for PhotosItemsPageControl.Coordinator();
  (*(v4 + 16))(v8, v1, v2);
  OUTLINED_FUNCTION_17_23();
  v9 = sub_1C113687C();

  return v9;
}

uint64_t sub_1C113687C()
{
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_17_23();
  sub_1C11374D0(v1, v2, v3);
  return v0;
}

id PhotosItemsPageControl.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCD10]) init];
  v5 = objc_opt_self();
  v6 = [v5 labelColor];
  [v4 setCurrentPageIndicatorTintColor_];

  v7 = [v5 tertiaryLabelColor];
  [v4 setPageIndicatorTintColor_];

  [v4 setBackgroundStyle_];
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_19_1();
  sub_1C1264230();
  sub_1C1264210();
  [v4 addTarget:v9 action:sel_pageDidChange_ forControlEvents:4096];

  return v4;
}

void sub_1C1136A00(void *a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v78 = sub_1C1266790();
  v6 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v64 - v7;
  v67 = sub_1C0FDE8F8(255, &qword_1EDE7B5F0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v84 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v87 = v5;
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v64 - v17;
  v79 = a2;
  v80 = v2;
  v19 = *(v2 + *(a2 + 64));
  if (v19)
  {

    v68 = [a1 numberOfPages];
    v66 = a1;
    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_1C1266B50();
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v20 | 0x8000000000000000;
    }

    else
    {
      v25 = -1 << *(v19 + 32);
      v21 = v19 + 64;
      v26 = ~v25;
      v27 = -v25;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v23 = v28 & *(v19 + 64);
      v22 = v26;
      v24 = v19;
    }

    v29 = 0;
    v85 = (v70 + 32);
    v64[1] = v22;
    v30 = (v22 + 64) >> 6;
    v69 = v70 + 16;
    v83 = (v9 + 16);
    v72 = (v9 + 8);
    v73 = (v6 + 8);
    v65 = (v70 + 8);
    v81 = v21;
    v82 = v24;
    v74 = v30;
    v75 = v18;
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_16;
    }

LABEL_9:
    v31 = v23;
    v32 = v29;
    if (v23)
    {
LABEL_15:
      v86 = (v31 - 1) & v31;
      v34 = __clz(__rbit64(v31)) | (v32 << 6);
      v35 = v70;
      v36 = v71;
      v37 = *(v24 + 48) + *(v70 + 72) * v34;
      v38 = *(v70 + 16);
      v76 = v23;
      v39 = v87;
      v38(v71, v37, v87);
      v40 = *(*(v24 + 56) + 8 * v34);
      v41 = *(TupleTypeMetadata2 + 48);
      (*(v35 + 32))(v18, v36, v39);
      *&v18[v41] = v40;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, TupleTypeMetadata2);
      v42 = v40;
      v33 = v32;
      goto LABEL_19;
    }

    v33 = v29;
    while (1)
    {
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        return;
      }

      if (v32 >= v30)
      {
        break;
      }

      v31 = *(v21 + 8 * v32);
      ++v33;
      if (v31)
      {
        v24 = v82;
        goto LABEL_15;
      }
    }

    __swift_storeEnumTagSinglePayload(v18, 1, 1, TupleTypeMetadata2);
    v86 = 0;
LABEL_19:
    while (__swift_getEnumTagSinglePayload(v18, 1, TupleTypeMetadata2) != 1)
    {
      v50 = *(TupleTypeMetadata2 + 48);
      v51 = *&v18[v50];
      v52 = *v85;
      v53 = v13;
      v54 = v13;
      v55 = v87;
      (*v85)(v53, v18, v87);
      *&v54[v50] = v51;
      v56 = v84;
      v57 = *v83;
      (*v83)(v84, v54, TupleTypeMetadata2);

      v58 = v77;
      v52(v77, v56, v55);
      __swift_storeEnumTagSinglePayload(v58, 0, 1, v55);
      sub_1C11384E4();
      v60 = v59;
      LOBYTE(v51) = v61;
      (*v73)(v58, v78);
      if (v51)
      {
        (*v72)(v54, TupleTypeMetadata2);
        v29 = v33;
        v23 = v86;
        v13 = v54;
      }

      else
      {
        if (v60 >= v68)
        {
          v13 = v54;
          (*v72)(v54, TupleTypeMetadata2);
        }

        else
        {
          v62 = v84;
          v13 = v54;
          v57(v84, v54, TupleTypeMetadata2);
          v63 = *&v62[*(TupleTypeMetadata2 + 48)];
          [v66 setIndicatorImage:v63 forPage:v60];

          (*v72)(v54, TupleTypeMetadata2);
          (*v65)(v62, v87);
        }

        v29 = v33;
        v23 = v86;
      }

      v21 = v81;
      v24 = v82;
      v30 = v74;
      v18 = v75;
      if ((v82 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_16:
      if (!sub_1C1266B60())
      {
        __swift_storeEnumTagSinglePayload(v18, 1, 1, TupleTypeMetadata2);
        break;
      }

      v44 = v43;
      v45 = v29;
      v46 = v71;
      v47 = v87;
      sub_1C1266D30();
      swift_unknownObjectRelease();
      v88 = v44;
      swift_dynamicCast();
      v48 = v89;
      v49 = *(TupleTypeMetadata2 + 48);
      (*v85)(v18, v46, v47);
      *&v18[v49] = v48;
      __swift_storeEnumTagSinglePayload(v18, 0, 1, TupleTypeMetadata2);
      v33 = v45;
      v86 = v23;
    }

    sub_1C0FA812C();
  }
}

void PhotosItemsPageControl.updateUIView(_:context:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v24 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_19_1();
  sub_1C1264230();
  sub_1C1264210();
  (*(v12 + 16))(v16, v0, v10);
  sub_1C11373D4(v16);

  sub_1C1137488(v17);

  sub_1C11374B8(v18);
  OUTLINED_FUNCTION_19_16();
  v19 = sub_1C12662E0();
  if ([v4 numberOfPages] != v19)
  {
    [v4 setNumberOfPages_];
  }

  sub_1C1136730();
  sub_1C11384E4();
  v21 = v20;
  v23 = v22;
  (*(v6 + 8))(v9, v24);
  if ((v23 & 1) == 0 && v21 != [v4 currentPage])
  {
    [v4 setCurrentPage_];
  }

  sub_1C1136A00(v4, v2);

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1137340@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1C11373D4(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_15_1();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_1C11374D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 32))(v3 + v7);
  *(v3 + *(*v3 + 136)) = a2;
  *(v3 + *(*v3 + 128)) = a3;
  return v3;
}

void sub_1C1137588()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v51 = *v1;
  sub_1C1265C10();
  OUTLINED_FUNCTION_0();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13();
  v55 = v7 - v6;
  v56 = sub_1C1265C30();
  OUTLINED_FUNCTION_0();
  v54 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v53 = v11 - v10;
  v59 = v51[13];
  v12 = v51[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v49 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v46 - v18;
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_30();
  v24 = v22 - v23;
  *&v26 = MEMORY[0x1EEE9AC00](v25).n128_u64[0];
  v28 = &v46 - v27;
  v50 = v3;
  v29 = [v3 currentPage];
  sub_1C1137340(v28);
  v30 = sub_1C12662E0();
  v31 = *(v20 + 8);
  v31(v28, v12);
  if (v29 < v30)
  {
    sub_1C1137340(v28);
    sub_1C1137340(v24);
    sub_1C12662D0();
    v31(v24, v12);
    v32 = v60;
    sub_1C12662B0();
    v33 = v49;
    v34 = *(v49 + 8);
    v46 = v49 + 8;
    v47 = v34;
    v35 = AssociatedTypeWitness;
    (v34)(v16);
    v31(v28, v12);
    v36 = [v50 interactionState] != 2;
    sub_1C0FDE8F8(0, &qword_1EDE83410);
    v37 = sub_1C12664C0();
    (*(v33 + 16))(v16, v32, v35);
    v38 = (*(v33 + 80) + 72) & ~*(v33 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v12;
    v40 = v51;
    *(v39 + 24) = v51[11];
    v41 = v59;
    *(v39 + 32) = v40[12];
    *(v39 + 40) = v41;
    *(v39 + 48) = v40[14];
    *(v39 + 56) = v36;
    *(v39 + 64) = v1;
    (*(v33 + 32))(v39 + v38, v16, v35);
    v61[4] = sub_1C113B16C;
    v61[5] = v39;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 1107296256;
    v61[2] = sub_1C0FD7FC4;
    v61[3] = &block_descriptor_10;
    v42 = _Block_copy(v61);

    v43 = v53;
    sub_1C1265C20();
    v61[0] = MEMORY[0x1E69E7CC0];
    sub_1C113B1F8(&qword_1EDE7B768, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00);
    sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00);
    v44 = v55;
    v45 = v58;
    sub_1C1266870();
    MEMORY[0x1C68EFE10](0, v43, v44, v42);
    _Block_release(v42);

    (*(v57 + 8))(v44, v45);
    (*(v54 + 8))(v43, v56);
    v47(v60, v35);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1137B84(uint64_t a1)
{
  if (a1)
  {
    a1 = sub_1C1265A30();
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C1262EA0();
}

uint64_t sub_1C1137C20(uint64_t *a1, uint64_t a2)
{
  v17[1] = a2;
  v2 = *a1;
  v19 = *(*a1 + 88);
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v17 - v4;
  v6 = *(v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v18 = *(v2 + 96);
  v11 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v17 - v12;
  v17[0] = sub_1C1137470();
  sub_1C1137340(v10);
  v14 = sub_1C12663A0();
  v15 = v19;
  (*(v3 + 16))(v5);
  v14(v20, 0);
  (*(v7 + 8))(v10, v6);
  sub_1C11374A0();
  swift_getAtKeyPath();

  (*(v3 + 8))(v5, v15);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v18);
  sub_1C111E418(v13);
}

uint64_t sub_1C1137EC4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1C1137588();
}

uint64_t PhotosItemsPageControl.Coordinator.deinit()
{
  OUTLINED_FUNCTION_15_1();
  (*(v1 + 8))(v0 + v2);

  return v0;
}

uint64_t PhotosItemsPageControl.Coordinator.__deallocating_deinit()
{
  PhotosItemsPageControl.Coordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1138018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = PhotosItemsPageControl.makeCoordinator()(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C1138040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, WitnessTable);
}

uint64_t sub_1C11380BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, WitnessTable);
}

void sub_1C1138138()
{
  swift_getWitnessTable();
  sub_1C1263BD0();
  __break(1u);
}

uint64_t PhotosLoopingItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for PhotosLoopingItemsPageControl();
  v18 = v17[16];
  *(a9 + v17[20]) = 2;
  OUTLINED_FUNCTION_15_1();
  result = (*(v19 + 32))(a9, a1, a10);
  *(a9 + v17[15]) = a2;
  *(a9 + v18) = a4;
  *(a9 + v17[17]) = a5;
  v21 = (a9 + v17[18]);
  *v21 = a7;
  v21[1] = a8;
  *(a9 + v17[21]) = a6;
  *(a9 + v17[19]) = a3;
  return result;
}

uint64_t sub_1C11383E4()
{
  v0 = sub_1C1266790();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  sub_1C11383BC();
  sub_1C11384E4();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

void sub_1C11384E4()
{
  OUTLINED_FUNCTION_23();
  v45 = v1;
  v47 = v0;
  v3 = v2;
  v49 = v2[5];
  v50 = v4;
  OUTLINED_FUNCTION_19_16();
  v5 = v3[2];
  v46 = v6;
  v48 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v42 = v9;
  v43 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  OUTLINED_FUNCTION_1();
  v44 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v41 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = v3[4];
  v21 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v40 - v25;
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v32 = v31 - v30;
  (*(v23 + 16))(v26, v50, v21);
  if (__swift_getEnumTagSinglePayload(v26, 1, v20) == 1)
  {
    (*(v23 + 8))(v26, v21);
  }

  else
  {
    v33 = (*(v28 + 32))(v32, v26, v20);
    MEMORY[0x1EEE9AC00](v33);
    v34 = v3[3];
    v35 = v47;
    *(&v40 - 8) = v48;
    *(&v40 - 7) = v34;
    v36 = v49;
    *(&v40 - 6) = v20;
    *(&v40 - 5) = v36;
    *(&v40 - 4) = v3[6];
    *(&v40 - 3) = v35;
    *(&v40 - 2) = v32;
    sub_1C1266330();
    if (__swift_getEnumTagSinglePayload(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v42 + 8))(v12, v43);
    }

    else
    {
      v37 = v44;
      (*(v44 + 32))(v19, v12, AssociatedTypeWitness);
      v38 = v41;
      sub_1C12662D0();
      sub_1C12662C0();
      v39 = *(v37 + 8);
      v39(v38, AssociatedTypeWitness);
      v39(v19, AssociatedTypeWitness);
    }

    (*(v28 + 8))(v32, v20);
  }

  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C11388CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v12 = v11 - v10;
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v18(0, v21);
  swift_getAtKeyPath();
  v19 = sub_1C1265DE0();
  (*(v8 + 8))(v12, a6);
  return v19 & 1;
}

void PhotosLoopingItemsPageControl.body.getter()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v93 = v4;
  v92 = sub_1C1265650();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13();
  v91 = v7 - v6;
  v74[1] = sub_1C1265900();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v74[0] = v10 - v9;
  v11 = *(v3 + 32);
  v12 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v83 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94960);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v24 = v74 - v23;
  v25 = *(v3 + 48);
  v101 = *(v25 + 8);
  OUTLINED_FUNCTION_7_31();
  WitnessTable = swift_getWitnessTable();
  v79 = v12;
  v76 = WitnessTable;
  sub_1C12639F0();
  OUTLINED_FUNCTION_19_1();
  v80 = v21;
  v77 = v27;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v81 = v28;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v29);
  v78 = v74 - v30;
  v82 = v31;
  v32 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v87 = v33;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v34);
  v84 = v74 - v35;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91BE8);
  OUTLINED_FUNCTION_19_1();
  v88 = v32;
  sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v89 = v37;
  v90 = v36;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_30();
  v85 = v38 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v86 = v74 - v41;
  *v24 = sub_1C12638E0();
  *(v24 + 1) = 0x4020000000000000;
  v24[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE94968);
  sub_1C113912C(v1, *(v3 + 16), *(v3 + 24), v11, *(v3 + 40), v25, &v24[*(v42 + 44)]);
  if ((*(v1 + *(v3 + 84)) & 1) == 0)
  {
    sub_1C1265A30();
  }

  v43 = (v1 + *(v3 + 72));
  v75 = v1;
  v44 = *v43;
  sub_1C11383BC();
  v44(v17);
  v45 = *(v83 + 8);
  v46 = v17;
  v47 = v79;
  v45(v46, v79);
  OUTLINED_FUNCTION_8_34();
  v50 = sub_1C0FDB6D4(v48, v49);
  v51 = v78;
  sub_1C1265040();

  v45(v20, v47);
  sub_1C0FBD6A4(v24);
  sub_1C1264470();
  OUTLINED_FUNCTION_6_29();
  v52 = swift_getWitnessTable();
  v99 = v50;
  v100 = v52;
  v53 = v82;
  v54 = swift_getWitnessTable();
  v55 = v84;
  sub_1C1264FB0();
  (*(v81 + 8))(v51, v53);
  if (*(v75 + *(v3 + 68)) == 1)
  {
    sub_1C12658E0();
  }

  else
  {
    v98 = sub_1C1265170();
  }

  v98 = sub_1C1262C90();
  v56 = *MEMORY[0x1E697F468];
  sub_1C12639D0();
  OUTLINED_FUNCTION_3();
  v58 = v91;
  (*(v57 + 104))(v91, v56);
  v96 = v54;
  v97 = MEMORY[0x1E697E5D8];
  v59 = v88;
  v60 = swift_getWitnessTable();
  sub_1C113B1F8(&qword_1EDE7B7B0, MEMORY[0x1E6981998]);
  v61 = v85;
  sub_1C1264970();
  sub_1C113934C(v58);

  (*(v87 + 8))(v55, v59);
  OUTLINED_FUNCTION_61_0();
  v64 = sub_1C0FDB6D4(v62, v63);
  v94 = v60;
  v95 = v64;
  v65 = v90;
  swift_getWitnessTable();
  v66 = v86;
  OUTLINED_FUNCTION_17_23();
  sub_1C0FDBA4C(v67, v68, v69);
  v70 = *(v89 + 8);
  v70(v61, v65);
  OUTLINED_FUNCTION_17_23();
  sub_1C0FDBA4C(v71, v72, v73);
  v70(v66, v65);
  OUTLINED_FUNCTION_22_0();
}

void sub_1C113912C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v21 = a4;
  v22 = a6;
  v27 = a5;
  v28 = a6;
  v11 = type metadata accessor for PhotosLoopingItemsPageControl();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  v16 = *(a1 + *(v15 + 80));
  if (__OFSUB__(0, v16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v17 = sub_1C12662E0();
  if (__OFADD__(v17, v16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v17 + v16 >= -v16)
  {
    v24 = -v16;
    v25 = v17 + v16;
    swift_getKeyPath();
    (*(v12 + 16))(v14, a1, v11);
    v18 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = a2;
    *(v19 + 3) = a3;
    v20 = v22;
    *(v19 + 4) = v21;
    *(v19 + 5) = a5;
    *(v19 + 6) = v20;
    (*(v12 + 32))(&v19[v18], v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE949F0);
    sub_1C100EF98();
    sub_1C113B324();
    sub_1C1265680();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C113934C(uint64_t a1)
{
  v2 = sub_1C1265650();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C11393A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v60 = a3;
  v61 = a4;
  v66[0] = a3;
  v66[1] = a4;
  v66[2] = a5;
  v66[3] = a6;
  v62 = a6;
  v63 = a7;
  v66[4] = a7;
  v12 = type metadata accessor for PhotosLoopingItemsPageControl();
  v56 = *(v12 - 8);
  v54 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A30);
  v57 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v45 - v15;
  v64 = sub_1C1266790();
  v59 = *(v64 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v20 = *a1;
  if ((sub_1C11398CC(v20, v12) & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(a8, 1, 1, v14);
  }

  v53 = a8;
  sub_1C1139944();
  v50 = v19;
  v51 = a5;
  sub_1C1139BCC(v19, a2, v60, v61, a5, v62, v63, v66);
  v48 = v66[1];
  v49 = v66[0];
  v47 = LOWORD(v66[2]);
  v21 = BYTE2(v66[2]);
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(v66[0]) = v21;
  *&v67[5] = v68;
  *&v67[21] = v69;
  *&v67[37] = v70;
  v46 = sub_1C12651F0();
  KeyPath = swift_getKeyPath();
  v52 = v14;
  v23 = KeyPath;
  v24 = sub_1C11383E4() != v20;
  v26 = 1.0;
  if ((v25 | v24))
  {
    v27 = 0.25;
  }

  else
  {
    v27 = 1.0;
  }

  if ((sub_1C113A260(v20) & 1) == 0)
  {
    v26 = 0.5;
  }

  sub_1C1265B90();
  *(&v65[2] + 3) = *v67;
  v65[0] = v49;
  v65[1] = v48;
  LOWORD(v65[2]) = v47;
  BYTE2(v65[2]) = v21;
  *(&v65[4] + 3) = *&v67[16];
  *(&v65[6] + 3) = *&v67[32];
  v65[8] = *&v67[45];
  v65[9] = v23;
  v65[10] = v46;
  *&v65[11] = v27;
  *&v65[12] = v26;
  *&v65[13] = v26;
  v65[14] = v28;
  v65[15] = v29;
  v30 = v59;
  v31 = *(v59 + 16);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v64;
  v31(v49, v19);
  v34 = v55;
  v33 = v56;
  (*(v56 + 16))(v55, a2, v12);
  v35 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v36 = (v16 + *(v33 + 80) + v35) & ~*(v33 + 80);
  v37 = swift_allocObject();
  v38 = v61;
  *(v37 + 2) = v60;
  *(v37 + 3) = v38;
  v40 = v62;
  v39 = v63;
  *(v37 + 4) = v51;
  *(v37 + 5) = v40;
  *(v37 + 6) = v39;
  (*(v30 + 32))(&v37[v35], v49, v32);
  (*(v33 + 32))(&v37[v36], v34, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE949F8);
  sub_1C113B3E4();
  v41 = v58;
  sub_1C1264AF0();

  memcpy(v66, v65, sizeof(v66));
  sub_1C0FD1A5C(v66, &qword_1EBE949F8);
  v43 = v52;
  v42 = v53;
  (*(v57 + 32))(v53, v41, v52);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  return (*(v30 + 8))(v50, v64);
}

uint64_t sub_1C11398CC(uint64_t a1, uint64_t a2)
{
  result = sub_1C11383E4();
  if (v6)
  {
    return 0;
  }

  v7 = *(v2 + *(a2 + 80));
  v8 = result - v7;
  if (__OFSUB__(result, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = __OFADD__(result, v7);
  v10 = result + v7;
  if (v9)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v10 < v8)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return v8 <= a1 && v10 >= a1;
}

void sub_1C1139944()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v3 = v2;
  v32 = *(v0 + 24);
  v33 = v4;
  OUTLINED_FUNCTION_1();
  v31 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v9 = v8 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v30 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_30();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  if (v3 < 0 || sub_1C12662E0() <= v3)
  {
    OUTLINED_FUNCTION_22_0();

    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  }

  else
  {
    sub_1C12662D0();
    sub_1C12662B0();
    v19 = *(v30 + 8);
    v19(v15, AssociatedTypeWitness);
    v20 = v19;
    v21 = sub_1C12663A0();
    v23 = v31;
    v22 = v32;
    (*(v31 + 16))(v9);
    v21(&v34, 0);
    v24 = v33;
    swift_getAtKeyPath();
    (*(v23 + 8))(v9, v22);
    v20(v18, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v24, 0, 1, *(v1 + 32));
    OUTLINED_FUNCTION_22_0();
  }
}

uint64_t sub_1C1139BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a6;
  v59 = a7;
  *&v57 = a3;
  *(&v57 + 1) = a4;
  v60 = a2;
  v61 = a1;
  v10 = sub_1C1265300();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A38);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v51 - v13;
  v14 = sub_1C1266790();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v56 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  (*(v15 + 16))(v23, v61, v14, v28);
  if (__swift_getEnumTagSinglePayload(v23, 1, a5) == 1)
  {
    (*(v15 + 8))(v23, v14);
LABEL_10:
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A28);
    sub_1C113B750();
    sub_1C113B7D4();
    result = sub_1C1263C20();
    v47 = v62;
    v48 = v63;
    v49 = BYTE2(v63);
    goto LABEL_11;
  }

  v61 = a8;
  v31 = *(v24 + 32);
  v51 = v10;
  v52 = v31;
  v31(v30, v23, a5);
  v62 = v57;
  v63 = a5;
  v64 = v58;
  v65 = v59;
  v58 = type metadata accessor for PhotosLoopingItemsPageControl();
  v32 = *(v60 + *(v58 + 72));
  (*(v24 + 16))(v17, v30, a5);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, a5);
  v32(v17);
  v33 = *(v15 + 8);
  v33(v17, v14);
  if (__swift_getEnumTagSinglePayload(v20, 1, a5) == 1)
  {
    (*(v24 + 8))(v30, a5);
    v33(v20, v14);
LABEL_9:
    a8 = v61;
    goto LABEL_10;
  }

  v34 = v30;
  v35 = v24;
  v36 = v56;
  v52(v56, v20, a5);
  if (!*(v60 + *(v58 + 64)) || (sub_1C0FDE8F8(0, &qword_1EDE7B5F0), sub_1C1265D00(), !v62))
  {
    v50 = *(v24 + 8);
    v50(v36, a5);
    v50(v34, a5);
    goto LABEL_9;
  }

  v37 = v62;
  sub_1C12652D0();
  v38 = *MEMORY[0x1E6981698];
  v39 = sub_1C1265330();
  v40 = v53;
  (*(*(v39 - 8) + 104))(v53, v38, v39);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v39);
  sub_1C1265310();

  sub_1C0FD1A5C(v40, &qword_1EBE94A38);
  v42 = v54;
  v41 = v55;
  v43 = v51;
  (*(v55 + 104))(v54, *MEMORY[0x1E6981630], v51);
  v44 = sub_1C1265350();

  (*(v41 + 8))(v42, v43);
  v66 = v44;
  v67 = 0;
  v68 = 1;
  v69 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A28);
  sub_1C113B750();
  sub_1C113B7D4();
  sub_1C1263C20();

  v45 = *(v35 + 8);
  v45(v36, a5);
  result = (v45)(v34, a5);
  v47 = v62;
  v48 = v63;
  v49 = BYTE2(v63);
  a8 = v61;
LABEL_11:
  *a8 = v47;
  *(a8 + 16) = v48;
  *(a8 + 18) = v49;
  return result;
}

uint64_t sub_1C113A260(uint64_t a1)
{
  result = sub_1C11383E4();
  if (v3)
  {
    return 0;
  }

  if (result == a1)
  {
    return 1;
  }

  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    if (result == a1 - 1)
    {
      return 1;
    }

    if (!__OFADD__(a1, 1))
    {
      return result == a1 + 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C113A2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a6;
  v27 = a7;
  v12 = sub_1C1266790();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = *(a5 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12, v18);
  if (__swift_getEnumTagSinglePayload(v15, 1, a5) == 1)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v22 = (*(v16 + 32))(v20, v15, a5);
  MEMORY[0x1EEE9AC00](v22);
  *(&v25 - 8) = a3;
  *(&v25 - 7) = a4;
  v24 = v26;
  v23 = v27;
  *(&v25 - 6) = a5;
  *(&v25 - 5) = v24;
  *(&v25 - 4) = v23;
  *(&v25 - 3) = a2;
  *(&v25 - 2) = v20;
  sub_1C1265A30();
  sub_1C1262EA0();

  return (*(v16 + 8))(v20, a5);
}

uint64_t sub_1C113A510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_1C1266790();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - v14;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  type metadata accessor for PhotosLoopingItemsPageControl();
  (*(*(a5 - 8) + 16))(v15, a2, a5);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, a5);
  return sub_1C111E418(v15);
}

void PhotosLoopingItemsPageControl<>.init(_:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)()
{
  OUTLINED_FUNCTION_23();
  v1 = v0;
  v24 = v2;
  v25 = v3;
  v22 = v4;
  v23 = v5;
  v21 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v18 = v17 - v16;
  (*(v14 + 16))(v17 - v16, v10, v19);
  KeyPath = swift_getKeyPath();
  PhotosLoopingItemsPageControl.init(_:id:scrollViewModel:pageImages:showBackground:disableAnimation:nonLoopingItemIdentifierResolver:)(v18, KeyPath, v8, v21, v22, v23, v24, v25, v12, v1);
  (*(v14 + 8))(v10, v1);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C113A7E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C1266F10();
    if (v2 <= 0x3F)
    {
      sub_1C0FDE8F8(255, &qword_1EDE7B5F0);
      sub_1C1265CF0();
      result = sub_1C1266790();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for PhotosScrollViewModel();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C113A8EC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113AA30(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C113AC0C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C113ACC8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C1266F10();
    if (v2 <= 0x3F)
    {
      sub_1C0FDE8F8(255, &qword_1EDE7B5F0);
      sub_1C1265CF0();
      result = sub_1C1266790();
      if (v3 <= 0x3F)
      {
        result = sub_1C1007F88();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for PhotosScrollViewModel();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C113ADFC(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113AF68(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C113B16C()
{
  OUTLINED_FUNCTION_19_16();
  swift_getAssociatedTypeWitness();
  v1 = *(v0 + 56);

  return sub_1C1137B84(v1);
}

uint64_t sub_1C113B1F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C113B25C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = *(type metadata accessor for PhotosLoopingItemsPageControl() - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return sub_1C11393A8(a1, v11, v5, v6, v7, v8, v9, a2);
}

unint64_t sub_1C113B324()
{
  result = qword_1EDE76D10;
  if (!qword_1EDE76D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F8);
    sub_1C113B3E4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76D10);
  }

  return result;
}

unint64_t sub_1C113B3E4()
{
  result = qword_1EDE77058;
  if (!qword_1EDE77058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE949F8);
    sub_1C113B470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77058);
  }

  return result;
}

unint64_t sub_1C113B470()
{
  result = qword_1EDE770F8;
  if (!qword_1EDE770F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A00);
    sub_1C113B4FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770F8);
  }

  return result;
}

unint64_t sub_1C113B4FC()
{
  result = qword_1EDE771C8;
  if (!qword_1EDE771C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A08);
    sub_1C113B5B4();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771C8);
  }

  return result;
}

unint64_t sub_1C113B5B4()
{
  result = qword_1EDE77340;
  if (!qword_1EDE77340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A10);
    sub_1C113B640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77340);
  }

  return result;
}

unint64_t sub_1C113B640()
{
  result = qword_1EDE76CD8;
  if (!qword_1EDE76CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A18);
    sub_1C113B6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76CD8);
  }

  return result;
}

unint64_t sub_1C113B6C4()
{
  result = qword_1EDE76EB0;
  if (!qword_1EDE76EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A20);
    sub_1C113B750();
    sub_1C113B7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EB0);
  }

  return result;
}

unint64_t sub_1C113B750()
{
  result = qword_1EDE77330;
  if (!qword_1EDE77330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77330);
  }

  return result;
}

unint64_t sub_1C113B7D4()
{
  result = qword_1EDE76C60;
  if (!qword_1EDE76C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76C60);
  }

  return result;
}

uint64_t sub_1C113B828()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(sub_1C1266790() - 8);
  v7 = *(v6 + 64);
  v8 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(type metadata accessor for PhotosLoopingItemsPageControl() - 8);
  v10 = v0 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1C113A2CC(v0 + v8, v10, v1, v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_11_24()
{

  return swift_getWitnessTable();
}

uint64_t PhotosMockVideoPlayerView.init(player:showProgessBar:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t PhotosMockVideoPlayerView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_1C12659A0();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A40);
  return sub_1C113BAA8(v3, (a1 + *(v5 + 44)));
}

uint64_t sub_1C113BAA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A80);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A88);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92810);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C12A3440;
  sub_1C113C53C();
  v20 = *(a1 + 16);
  sub_1C113C53C();
  *(v19 + 32) = sub_1C1265110();
  sub_1C113C53C();
  *(v19 + 40) = sub_1C1265110();
  v21 = MEMORY[0x1C68EF140](v19);
  sub_1C12658F0();
  *&v11[*(v9 + 64)] = 256;
  v22 = sub_1C1265160();
  sub_1C11C3558(v22);

  sub_1C0FD1A5C(v11, &qword_1EBE94A80);
  v23 = sub_1C113C53C() / v20;
  v24 = v23 * 360.0 * 0.0174532925;
  sub_1C1265B90();
  v26 = v25;
  v28 = v27;
  v29 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A90) + 36)];
  *v29 = v24;
  *(v29 + 1) = v26;
  *(v29 + 2) = v28;
  sub_1C12659A0();
  sub_1C1262C80();
  v30 = &v18[*(v13 + 44)];
  v39 = v18;
  v31 = v43;
  *v30 = v42;
  *(v30 + 1) = v31;
  *(v30 + 2) = v44;
  *v7 = sub_1C1263AA0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94A98);
  sub_1C113BF10(a1, &v7[*(v32 + 44)]);
  sub_1C10D1A1C(v18, v15, &qword_1EBE94A88);
  v33 = v40;
  sub_1C10D1A1C(v7, v40, &qword_1EBE94A78);
  v34 = v41;
  *v41 = v21;
  *(v34 + 4) = 256;
  v35 = v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AA0);
  sub_1C10D1A1C(v15, v35 + *(v36 + 48), &qword_1EBE94A88);
  sub_1C10D1A1C(v33, v35 + *(v36 + 64), &qword_1EBE94A78);

  sub_1C0FD1A5C(v7, &qword_1EBE94A78);
  sub_1C0FD1A5C(v39, &qword_1EBE94A88);
  sub_1C0FD1A5C(v33, &qword_1EBE94A78);
  sub_1C0FD1A5C(v15, &qword_1EBE94A88);
}

uint64_t sub_1C113BF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AA8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v11 = sub_1C113C53C() / *(a1 + 16);
  *&v16[2] = v11;
  v17 = 0;
  v16[1] = 1065353216;
  sub_1C10FAA30();
  sub_1C1262BC0();
  v12 = *(v5 + 16);
  v12(v7, v10, v4);
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB0);
  v12((a2 + *(v13 + 48)), v7, v4);
  v14 = *(v5 + 8);
  v14(v10, v4);
  return (v14)(v7, v4);
}

uint64_t PhotosMockVideoPlayer.__allocating_init(duration:)(double a1)
{
  v2 = swift_allocObject();
  PhotosMockVideoPlayer.init(duration:)(a1);
  return v2;
}

uint64_t PhotosMockVideoPlayer.init(duration:)(double a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  sub_1C1261F60();
  if (a1 <= 0.0)
  {
    result = sub_1C1266B70();
    __break(1u);
  }

  else
  {
    *(v1 + 16) = a1;
    return v1;
  }

  return result;
}

uint64_t sub_1C113C1AC(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = a1;
    OUTLINED_FUNCTION_10_26();
  }

  return result;
}

void sub_1C113C260(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
    sub_1C113C6DC();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    OUTLINED_FUNCTION_10_26();
  }
}

uint64_t sub_1C113C310(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 33) == v2)
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v5 - 16) = v1;
    *(v5 - 8) = v2;
    OUTLINED_FUNCTION_10_26();
  }

  return result;
}

void sub_1C113C3BC(void *a1)
{
  v3 = *(v1 + 40);
  v4 = v3;
  LOBYTE(v3) = sub_1C113CFE8(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = a1;
    OUTLINED_FUNCTION_10_26();
  }

  else
  {
    v7 = *(v1 + 40);
    *(v1 + 40) = a1;
  }
}

double sub_1C113C53C()
{
  swift_getKeyPath();
  sub_1C113CF44();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 24);
}

uint64_t sub_1C113C5A4(uint64_t a1, double a2)
{
  result = swift_beginAccess();
  *(a1 + 24) = a2;
  return result;
}

void (*sub_1C113C618())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C113C4A4();
  return sub_1C113C6D0;
}

void sub_1C113C6DC()
{
  if (sub_1C113C7F4())
  {

    sub_1C113CC64();
  }

  else
  {

    sub_1C113CDF0();
  }
}

void (*sub_1C113C720(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_8_6();
  return sub_1C113C768;
}

void sub_1C113C768(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C113C6DC();
  }
}

uint64_t sub_1C113C79C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C113C7F4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C113C7F4()
{
  swift_getKeyPath();
  sub_1C113CF44();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 32);
}

void sub_1C113C85C(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  sub_1C113C6DC();
}