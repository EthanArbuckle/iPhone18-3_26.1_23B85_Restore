uint64_t sub_1DD4E0A00(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t TerminalElement.Interval.toInterval()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-v6];
  v8 = sub_1DD63E168();
  v10 = v9;
  sub_1DD63E158();
  v11 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v7, 1, v11) == 1)
  {
    sub_1DD3ADFD0(v7, &qword_1ECCDD2A0, &qword_1DD64F420);
    v12 = 13;
  }

  else
  {
    sub_1DD548A5C();
    (*(*(v11 - 8) + 8))(v7, v11);
    v12 = v19[1];
  }

  v19[0] = v12;
  sub_1DD63E178();
  v13 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v13) == 1)
  {
    sub_1DD3ADFD0(v3, &qword_1ECCDD2B0, &qword_1DD64F430);
    v14 = 20;
  }

  else
  {
    TerminalElement.Qualifier.toQualifier()(&v18);
    (*(*(v13 - 8) + 8))(v3, v13);
    v14 = v18;
  }

  v17 = v14;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v8, v10 & 1, v19, &v17);
}

uint64_t DateTime.Interval.__allocating_init(withQuantity:timeUnit:)(char *a1, double a2)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v5 = *a1;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *(result + 25) = v5;
  *(result + 26) = 20;
  return result;
}

uint64_t DateTime.Interval.__allocating_init(withQuantity:timeUnit:qualifier:)(uint64_t a1, char a2, char *a3, char *a4)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v9 = *a3;
  v10 = *a4;
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  *(result + 25) = v9;
  *(result + 26) = v10;
  return result;
}

uint64_t DateTime.Interval.quantity.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t DateTime.Interval.init(withQuantity:timeUnit:)(char *a1, double a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = 0;
  *(v2 + 25) = v3;
  *(v2 + 26) = 20;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.Interval.__allocating_init(withTimeUnit:qualifier:)(_BYTE *a1, char *a2)
{
  OUTLINED_FUNCTION_1_71();
  result = swift_allocObject();
  v5 = *a2;
  *(result + 25) = *a1;
  *(result + 26) = v5;
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t DateTime.Interval.init(withTimeUnit:qualifier:)(_BYTE *a1, char *a2)
{
  v3 = *a2;
  *(v2 + 25) = *a1;
  *(v2 + 26) = v3;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(uint64_t a1, char a2, char *a3, char *a4)
{
  v5 = *a3;
  v6 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;
  *(v4 + 25) = v5;
  *(v4 + 26) = v6;
  return OUTLINED_FUNCTION_14_4();
}

uint64_t sub_1DD4E0DF8()
{
  if (*(v0 + 24) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DD640E48();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1E12B3170](v2);
  }

  v3 = *(v0 + 25);
  sub_1DD640E48();
  if (v3 != 13)
  {
    MEMORY[0x1E12B3140](v3);
  }

  v4 = *(v0 + 26);
  if (v4 == 20)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return MEMORY[0x1E12B3140](v4);
}

BOOL static DateTime.Interval.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a1 + 25);
  v4 = *(a2 + 25);
  if (v3 == 13)
  {
    if (v4 != 13)
    {
      return 0;
    }
  }

  else if (v3 != v4)
  {
    return 0;
  }

  v6 = *(a1 + 26);
  v7 = *(a2 + 26);
  v8 = v7 == 20;
  v9 = v6 == v7;
  if (v6 == 20)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_1DD4E0F18()
{
  if (*(v0 + 24))
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v2 = *(v0 + 16);
    MEMORY[0x1E12B2260](0x797469746E617571, 0xE90000000000003DLL);
    sub_1DD640228();
    sub_1DD3BE2A4();
    v1 = v3;
    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v14;
    }

    *(v1 + 16) = v4 + 1;
    v5 = v1 + 16 * v4;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
  }

  if (*(v0 + 25) != 13)
  {
    MEMORY[0x1E12B2260](0x74696E55656D6974, 0xE90000000000003DLL);
    sub_1DD6409F8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v1 = v15;
    }

    v6 = *(v1 + 16);
    if (v6 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v16;
    }

    *(v1 + 16) = v6 + 1;
    v7 = v1 + 16 * v6;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
  }

  if (*(v0 + 26) != 20)
  {
    MEMORY[0x1E12B2260](0x656966696C617571, 0xEA00000000003D72);
    sub_1DD6409F8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v1 = v17;
    }

    v8 = *(v1 + 16);
    if (v8 >= *(v1 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v1 = v18;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v10 = sub_1DD63FD58();
  v12 = v11;

  MEMORY[0x1E12B2260](v10, v12);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x6C61767265746E49;
}

uint64_t sub_1DD4E11D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74696E55656D6974 && a2 == 0xE800000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656966696C617571 && a2 == 0xE900000000000072)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD4E12F8(char a1)
{
  if (!a1)
  {
    return 0x797469746E617571;
  }

  if (a1 == 1)
  {
    return 0x74696E55656D6974;
  }

  return 0x656966696C617571;
}

uint64_t sub_1DD4E135C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4E11D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4E1384(uint64_t a1)
{
  v2 = sub_1DD4E1968();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4E13C0(uint64_t a1)
{
  v2 = sub_1DD4E1968();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4E1418(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD20, &qword_1DD654A18);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4E1968();
  sub_1DD640EF8();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v17[15] = 0;
  sub_1DD640BE8();
  if (!v2)
  {
    v17[14] = *(v3 + 25);
    v17[13] = 1;
    sub_1DD4E19BC();
    sub_1DD640C08();
    v17[12] = *(v3 + 26);
    v17[11] = 2;
    sub_1DD49FA54();
    sub_1DD640C08();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD4E15CC()
{
  sub_1DD640E28();
  sub_1DD4E0DF8();
  return sub_1DD640E78();
}

uint64_t DateTime.Interval.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_71();
  v2 = swift_allocObject();
  DateTime.Interval.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Interval.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD38, &qword_1DD654A20);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4E1968();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Interval();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    *(v1 + 16) = sub_1DD640AF8();
    *(v1 + 24) = v13 & 1;
    v18 = 1;
    sub_1DD4E1A34();
    OUTLINED_FUNCTION_5_52();
    *(v1 + 25) = v19;
    v16 = 2;
    sub_1DD49FB20();
    OUTLINED_FUNCTION_5_52();
    (*(v7 + 8))(v11, v4);
    *(v1 + 26) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD4E1890()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD4E0DF8();
  return sub_1DD640E78();
}

uint64_t sub_1DD4E18F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Interval.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD4E1968()
{
  result = qword_1ECCDDD28;
  if (!qword_1ECCDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD28);
  }

  return result;
}

unint64_t sub_1DD4E19BC()
{
  result = qword_1ECCDDD30;
  if (!qword_1ECCDDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD30);
  }

  return result;
}

unint64_t sub_1DD4E1A34()
{
  result = qword_1ECCDDD40;
  if (!qword_1ECCDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD40);
  }

  return result;
}

unint64_t sub_1DD4E1A8C()
{
  result = qword_1ECCDDD48;
  if (!qword_1ECCDDD48)
  {
    type metadata accessor for DateTime.Interval();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD48);
  }

  return result;
}

_BYTE *_s8IntervalC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4E1CE4()
{
  result = qword_1ECCDDD50;
  if (!qword_1ECCDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD50);
  }

  return result;
}

unint64_t sub_1DD4E1D3C()
{
  result = qword_1ECCDDD58;
  if (!qword_1ECCDDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD58);
  }

  return result;
}

unint64_t sub_1DD4E1D94()
{
  result = qword_1ECCDDD60;
  if (!qword_1ECCDDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDD60);
  }

  return result;
}

void sub_1DD4E1DE8(uint64_t a1, unsigned __int8 *a2, char a3)
{
  if (*(a1 + 24))
  {
    return;
  }

  v3 = *(a1 + 25);
  if (v3 == 13)
  {
    return;
  }

  v5 = *(a1 + 26);
  if (v5 == 9 || (v5 != 20 ? (v6 = v5 == 19) : (v6 = 0), v6))
  {
    *(a1 + 16);
  }

  v7 = v3 - 1;
  v8 = *a2;
  switch(v7)
  {
    case 0:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_98;
      }

      if (v9 <= -9.22337204e18)
      {
        goto LABEL_105;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_4_47(v12);
      v14 = v13 & 0xFE;
      v16 = !v6 && v14 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 5;
      goto LABEL_96;
    case 3:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_97;
      }

      if (v25 <= -9.22337204e18)
      {
        goto LABEL_104;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_4_47(v26);
      v28 = v27 & 0xFE;
      v16 = !v6 && v28 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 4;
      goto LABEL_96;
    case 5:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_100;
      }

      if (v35 <= -9.22337204e18)
      {
        goto LABEL_107;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_4_47(v36);
      v38 = v37 & 0xFE;
      v16 = !v6 && v38 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 2;
      goto LABEL_96;
    case 6:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_101;
      }

      if (v40 <= -9.22337204e18)
      {
        goto LABEL_108;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_115;
      }

      OUTLINED_FUNCTION_4_47(v41);
      v43 = v42 & 0xFE;
      v16 = !v6 && v43 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 9;
      goto LABEL_96;
    case 9:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_102;
      }

      if (v45 <= -9.22337204e18)
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_4_47(v46);
      v48 = v47 & 0xFE;
      v16 = !v6 && v48 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 1;
      goto LABEL_96;
    case 10:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
        return;
      }

      if (v20 <= -9.22337204e18)
      {
        goto LABEL_103;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_4_47(v21);
      v23 = v22 & 0xFE;
      v16 = !v6 && v23 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 8;
LABEL_96:
      sub_1DD48DFB4(v19, v17, a3, 1, v18, 1, v16, 0);
      return;
    case 11:
      OUTLINED_FUNCTION_0_92();
      if (!(v10 ^ v11 | v6))
      {
        goto LABEL_99;
      }

      if (v30 <= -9.22337204e18)
      {
        goto LABEL_106;
      }

      OUTLINED_FUNCTION_2_58();
      if (!v10)
      {
        goto LABEL_113;
      }

      OUTLINED_FUNCTION_4_47(v31);
      v33 = v32 & 0xFE;
      v16 = !v6 && v33 != 8;
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_72();
      v19 = 11;
      goto LABEL_96;
    default:
      return;
  }
}

uint64_t OUTLINED_FUNCTION_3_49()
{

  return type metadata accessor for DateTimeConstraint();
}

uint64_t sub_1DD4E2140(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  while (v5)
  {
    v6 = v2;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(a2 + 56) + (v7 | (v6 << 6))) == (result & 1))
    {
      return 1;
    }
  }

  while (1)
  {
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return 0;
    }

    v5 = *(a2 + 64 + 8 * v6);
    ++v2;
    if (v5)
    {
      v2 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DD4E21DC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1DD4E220C(int64_t a1)
{
  v215 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0_25(v1, &__dst[5]);
  v212 = v2;
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v6);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  OUTLINED_FUNCTION_7(v211);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_1_4();
  v214 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25(v199 - v16);
  v17 = type metadata accessor for ContactResolver.SignalSet(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v20 - v19);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7(v207);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_1_4();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v199 - v31);
  k = type metadata accessor for Contact();
  v33 = OUTLINED_FUNCTION_7(k);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v37 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0_25(v38, &v238);
  v229 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_25(v43);
  v44 = type metadata accessor for Signpost();
  v45 = OUTLINED_FUNCTION_7(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2();
  v50 = v49 - v48;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v51 = qword_1EE16F0C0;
    v52 = v50 + *(v44 + 20);
    *v52 = "CRR.IsFaceTimeableSignalProvider";
    *(v52 + 8) = 32;
    *(v52 + 16) = 2;
    v53 = v51;
    sub_1DD63F9B8();
    *(v50 + *(v44 + 24)) = v53;
    v54 = v53;
    v44 = sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1DD643F90;
    v56 = sub_1DD6408F8();
    v58 = v57;
    *(v55 + 56) = MEMORY[0x1E69E6158];
    *(v55 + 64) = sub_1DD392BD8();
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    v199[0] = v54;
    v199[1] = v50;
    sub_1DD63F998();

    v59 = *v215;
    v60 = *(*v215 + 16);
    v50 = MEMORY[0x1E69E7CC0];
    v206 = v29;
    v228 = v32;
    v204 = v59;
    v219 = v60;
    if (!v60)
    {
      v62 = MEMORY[0x1E69E7CC0];
      goto LABEL_34;
    }

    v61 = 0;
    v217 = v59 + 32;
    v62 = MEMORY[0x1E69E7CC0];
LABEL_4:
    if (v61 < *(v59 + 16))
    {
      break;
    }

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
    OUTLINED_FUNCTION_4_2();
  }

  v58 = *(v217 + 8 * v61);
  v230 = *(v58 + 16);
  if (!v230)
  {
    goto LABEL_31;
  }

  v220 = v61;
  v227 = v58 + ((*(v229 + 80) + 32) & ~*(v229 + 80));

  v29 = 0;
  v221 = v58;
  while (v29 < *(v58 + 16))
  {
    v63 = v222;
    sub_1DD4DDC08(v227 + *(v229 + 72) * v29, v222, &qword_1ECCDBBE8, &qword_1DD644470);
    v64 = v224;
    sub_1DD3CE214(v63, v224, type metadata accessor for Contact);
    sub_1DD390754(v63, &qword_1ECCDBBE8, &qword_1DD644470);
    v65 = *(v64 + *(k + 80));

    sub_1DD4E72EC(v64, type metadata accessor for Contact);
    v56 = *(v65 + 16);
    if (v56)
    {
      v226 = v62;
      v238 = v50;
      sub_1DD42A2D4();
      v66 = v238;
      v67 = v56 - 1;
      for (i = 32; ; i += 80)
      {
        memcpy(__dst, (v65 + i), 0x4AuLL);
        if (LOBYTE(__dst[2]))
        {
          if (LOBYTE(__dst[2]) == 1)
          {
            sub_1DD3C6A40(__dst, &v231);
            v69 = 0xE700000000000000;
            v70 = 0x3A6F746C69616DLL;
          }

          else
          {
            sub_1DD3C6A40(__dst, &v231);
            v69 = 0xE400000000000000;
            v70 = 980182388;
          }
        }

        else
        {
          v235 = __dst[5];
          v236 = __dst[6];
          v233 = 64;
          v234 = 0xE100000000000000;
          sub_1DD3C6A40(__dst, &v231);
          sub_1DD3B7F10();
          v71 = sub_1DD6406D8();
          v70 = 980182388;
          if (v71)
          {
            v70 = 0x3A6F746C69616DLL;
          }

          v69 = 0xE400000000000000;
          if (v71)
          {
            v69 = 0xE700000000000000;
          }
        }

        v231 = v70;
        v232 = v69;
        MEMORY[0x1E12B2260](__dst[7], __dst[8]);
        sub_1DD3C6A9C(__dst);
        v72 = v231;
        v73 = v232;
        v238 = v66;
        v74 = *(v66 + 16);
        v56 = v74 + 1;
        if (v74 >= *(v66 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v66 = v238;
        }

        *(v66 + 16) = v56;
        v75 = v66 + 16 * v74;
        *(v75 + 32) = v72;
        *(v75 + 40) = v73;
        if (!v67)
        {
          break;
        }

        --v67;
      }

      v62 = v226;
      v50 = MEMORY[0x1E69E7CC0];
      v58 = v221;
    }

    else
    {

      v66 = v50;
    }

    v44 = sub_1DD41859C(v66);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = *(v62 + 16);
      sub_1DD3BF7D8();
      v62 = v78;
    }

    v32 = v228;
    v76 = *(v62 + 16);
    if (v76 >= *(v62 + 24) >> 1)
    {
      sub_1DD3BF7D8();
      v62 = v79;
    }

    ++v29;
    *(v62 + 16) = v76 + 1;
    *(v62 + 8 * v76 + 32) = v44;
    if (v29 == v230)
    {

      v59 = v204;
      v61 = v220;
LABEL_31:
      if (++v61 == v219)
      {
LABEL_34:
        v226 = v62;
        v44 = sub_1DD4E3720(v62);
        v80 = sub_1DD63FC88();
        v81 = *(v44 + 64);
        v224 = v44 + 64;
        v82 = *(v44 + 32);
        OUTLINED_FUNCTION_4_1();
        v29 = v84 & v83;
        v222 = (v85 + 63) >> 6;
        k = v44;

        v86 = 0;
        while (1)
        {
          v230 = v80;
          if (!v29)
          {
            while (1)
            {
              v50 = v86 + 1;
              if (__OFADD__(v86, 1))
              {
                __break(1u);
                goto LABEL_133;
              }

              if (v50 >= v222)
              {
                break;
              }

              v29 = *(v224 + 8 * v50);
              ++v86;
              if (v29)
              {
                goto LABEL_40;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              OUTLINED_FUNCTION_0_5();
            }

            v107 = sub_1DD63F9F8();
            __swift_project_value_buffer(v107, qword_1EE16F068);
            v108 = v230;

            v109 = sub_1DD63F9D8();
            v110 = sub_1DD640368();

            if (os_log_type_enabled(v109, v110))
            {
              v56 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              __dst[0] = v58;
              *v56 = 136315138;
              v111 = sub_1DD63FC68();
              v29 = v112;
              v113 = sub_1DD39565C(v111, v112, __dst);

              *(v56 + 4) = v113;
              _os_log_impl(&dword_1DD38D000, v109, v110, "IsFaceTimeableSignalProvider::addSignals - handle IDS support: %s", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_0_1();
            }

            v50 = v215;
            v114 = v213;
            OUTLINED_FUNCTION_35_12();

            v115 = sub_1DD4E2140(1, v108);

            v44 = sub_1DD63F9D8();
            v116 = sub_1DD640368();
            if (os_log_type_enabled(v44, v116))
            {
              if (v115)
              {
                v117 = "IsFaceTimeableSignalProvider::addSignals - some handles support IDS/FaceTime";
              }

              else
              {
                v117 = "IsFaceTimeableSignalProvider::addSignals - No handles support IDS/FaceTime";
              }

              v118 = OUTLINED_FUNCTION_9();
              *v118 = 0;
              _os_log_impl(&dword_1DD38D000, v44, v116, v117, v118, 2u);
              v56 = v214;
              OUTLINED_FUNCTION_0_1();
            }

            v119 = v204;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v121 = v119;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1DD586A30(v119);
              v119 = v204;
              v121 = v198;
            }

            v122 = *(v119 + 16);
            v220 = v121 + 32;
            v224 = v121;
            *v50 = v121;
            v123 = v212;
            OUTLINED_FUNCTION_25_13();
            v201 = v124;
            v200 = v125;
            while (v126 != v125)
            {
              if (v126 >= *(v119 + 16))
              {
                goto LABEL_137;
              }

              v127 = *(v124 + 8 * v126);
              v221 = v126;
              v202 = v126 + 1;
              OUTLINED_FUNCTION_36_12();
              v208 = v128;

              for (j = 0; ; j = v209)
              {
                v130 = *(v208 + 16);
                if (j == v130)
                {
                  v209 = j;
                  v131 = 1;
                  v44 = v207;
                  v132 = v206;
                }

                else
                {
                  v44 = v207;
                  if (j >= v130)
                  {
                    goto LABEL_134;
                  }

                  v133 = j + 1;
                  OUTLINED_FUNCTION_50_12();
                  v138 = v208 + (v135 & ~v134) + *(v136 + 72) * v137;
                  v139 = *(v44 + 48);
                  v140 = v203;
                  *v203 = v137;
                  sub_1DD4DDC08(v138, v140 + v139, &qword_1ECCDBBE8, &qword_1DD644470);
                  v141 = v140;
                  v132 = v206;
                  sub_1DD4DDCBC(v141, v206, &qword_1ECCDC238, &unk_1DD654E40);
                  v131 = 0;
                  v209 = v133;
                }

                __swift_storeEnumTagSinglePayload(v132, v131, 1, v44);
                sub_1DD4DDCBC(v132, v32, &qword_1ECCDC240, &qword_1DD645AA0);
                if (__swift_getEnumTagSinglePayload(v32, 1, v44) == 1)
                {
                  break;
                }

                v222 = *v32;
                v142 = v32 + *(v44 + 48);
                v143 = v205;
                sub_1DD3CE214(v142 + *(v223 + 36), v205, type metadata accessor for ContactResolver.SignalSet);
                sub_1DD390754(v142, &qword_1ECCDBBE8, &qword_1DD644470);
                v144 = *(v143 + 272);

                sub_1DD4E72EC(v143, type metadata accessor for ContactResolver.SignalSet);
                v145 = 0;
                v146 = *(v144 + 16);
                OUTLINED_FUNCTION_36_12();
                OUTLINED_FUNCTION_25_13();
                v227 = v144;
                for (k = v147; ; v147 = k)
                {
                  if (v145 == v147)
                  {
                    v148 = 1;
                    v145 = v147;
                  }

                  else
                  {
                    if ((v145 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_118;
                    }

                    if (v145 >= *(v144 + 16))
                    {
                      goto LABEL_119;
                    }

                    v142 = v145 + 1;
                    v149 = v144 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v145;
                    v150 = *(v58 + 48);
                    v151 = v216;
                    *v216 = v145;
                    sub_1DD4DDC08(v149, v151 + v150, &qword_1ECCDBBD8, &unk_1DD645A90);
                    sub_1DD4DDCBC(v151, v56, &qword_1ECCDDD68, &unk_1DD65F510);
                    ++v145;
                    OUTLINED_FUNCTION_25_13();
                  }

                  __swift_storeEnumTagSinglePayload(v56, v148, 1, v58);
                  sub_1DD4DDCBC(v56, v29, &qword_1ECCDDD70, &qword_1DD654CC0);
                  if (__swift_getEnumTagSinglePayload(v29, 1, v58) == 1)
                  {
                    break;
                  }

                  v152 = *v29;
                  sub_1DD4DDCBC(v29 + *(v58 + 48), v114, &qword_1ECCDBBD8, &unk_1DD645A90);
                  if (*(v142 + 16) && (v153 = *(v114 + 56), v154 = *(v114 + 64), OUTLINED_FUNCTION_25_13(), sub_1DD3978DC(), OUTLINED_FUNCTION_25_13(), (v156 & 1) != 0))
                  {
                    LODWORD(v219) = *(*(v142 + 56) + v155);
                    if (v219)
                    {
                      v157 = 0;
                      v158 = v224;
                      v159 = v221;
                    }

                    else
                    {
                      v158 = v224;
                      v159 = v221;
                      if (*(v114 + 16) == 1)
                      {
                        v157 = 1;
                      }

                      else
                      {
                        v157 = *(v210 + 48) ^ 1;
                      }
                    }

                    if (v159 >= *(v158 + 16))
                    {
                      goto LABEL_120;
                    }

                    v160 = v220;
                    v161 = *(v220 + 8 * v159);
                    v162 = swift_isUniquelyReferenced_nonNull_native();
                    *(v160 + 8 * v159) = v161;
                    if ((v162 & 1) == 0)
                    {
                      sub_1DD586A18(v161);
                      v161 = v191;
                      *(v220 + 8 * v159) = v191;
                    }

                    if ((v222 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_121;
                    }

                    if (v222 >= *(v161 + 16))
                    {
                      goto LABEL_122;
                    }

                    OUTLINED_FUNCTION_50_12();
                    v165 = v164 & ~v163;
                    v168 = *(v166 + 72) * v167;
                    OUTLINED_FUNCTION_23_20(v161 + v165);
                    v170 = v169 + v168;
                    v171 = *(v169 + v168 + 272);
                    v172 = swift_isUniquelyReferenced_nonNull_native();
                    *(v170 + 272) = v171;
                    if (v172)
                    {
                      if ((v152 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_123;
                      }
                    }

                    else
                    {
                      sub_1DD586A48(v171);
                      v171 = v192;
                      *(v170 + 272) = v192;
                      if ((v152 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_123;
                      }
                    }

                    if (v152 >= *(v171 + 16))
                    {
                      goto LABEL_124;
                    }

                    LODWORD(v217) = v157;
                    v58 = (*(v123 + 80) + 32) & ~*(v123 + 80);
                    v29 = *(v123 + 72) * v152;
                    *(v171 + v58 + v29 + 73) = v219;
                    *(v170 + 272) = v171;
                    v173 = v221;
                    if (v221 >= *(v158 + 16))
                    {
                      goto LABEL_125;
                    }

                    v174 = v220;
                    v175 = *(v220 + 8 * v221);
                    v176 = swift_isUniquelyReferenced_nonNull_native();
                    *(v174 + 8 * v173) = v175;
                    if ((v176 & 1) == 0)
                    {
                      sub_1DD586A18(v175);
                      v175 = v193;
                      *(v220 + 8 * v173) = v193;
                    }

                    if (v222 >= *(v175 + 16))
                    {
                      goto LABEL_126;
                    }

                    OUTLINED_FUNCTION_23_20(v175 + v165);
                    v178 = v177 + v168;
                    v179 = *(v177 + v168 + 272);
                    v180 = swift_isUniquelyReferenced_nonNull_native();
                    *(v178 + 272) = v179;
                    if ((v180 & 1) == 0)
                    {
                      sub_1DD586A48(v179);
                      v179 = v194;
                      *(v178 + 272) = v194;
                    }

                    if (v152 >= *(v179 + 16))
                    {
                      goto LABEL_127;
                    }

                    v181 = v179 + v58 + v29 + *(v218 + 36);
                    v182 = type metadata accessor for ContactResolver.HandleSignalSet(0);
                    *(v181 + *(v182 + 52)) = v219;
                    *(v178 + 272) = v179;
                    if (v221 >= *(v224 + 16))
                    {
                      goto LABEL_128;
                    }

                    v142 = v182;
                    v183 = v221;
                    v184 = v220;
                    v185 = *(v220 + 8 * v221);
                    v186 = swift_isUniquelyReferenced_nonNull_native();
                    *(v184 + 8 * v183) = v185;
                    if ((v186 & 1) == 0)
                    {
                      sub_1DD586A18(v185);
                      v185 = v195;
                      *(v220 + 8 * v221) = v195;
                    }

                    v32 = v228;
                    if (v222 >= *(v185 + 16))
                    {
                      goto LABEL_129;
                    }

                    OUTLINED_FUNCTION_23_20(v185 + v165);
                    v188 = v187 + v168;
                    v56 = *(v187 + v168 + 272);
                    v189 = swift_isUniquelyReferenced_nonNull_native();
                    *(v188 + 272) = v56;
                    if ((v189 & 1) == 0)
                    {
                      sub_1DD586A48(v56);
                      *(v188 + 272) = v196;
                    }

                    v114 = v213;
                    sub_1DD390754(v213, &qword_1ECCDBBD8, &unk_1DD645A90);
                    v190 = *(v188 + 272);
                    if (v152 >= *(v190 + 16))
                    {
                      goto LABEL_130;
                    }

                    *(v190 + v58 + v29 + *(v218 + 36) + *(v142 + 56)) = v217 & 1;
                    *(v188 + 272) = v190;
                    v50 = v215;
                    OUTLINED_FUNCTION_36_12();
                    v123 = v212;
                    OUTLINED_FUNCTION_35_12();
                    OUTLINED_FUNCTION_25_13();
                  }

                  else
                  {
                    sub_1DD390754(v114, &qword_1ECCDBBD8, &unk_1DD645A90);
                  }

                  v144 = v227;
                }
              }

              v119 = v204;
              OUTLINED_FUNCTION_25_13();
              v124 = v201;
              v125 = v200;
            }

            goto LABEL_131;
          }

          v50 = v86;
LABEL_40:
          v87 = __clz(__rbit64(v29)) | (v50 << 6);
          v88 = (*(k + 48) + 16 * v87);
          v56 = *v88;
          v89 = v88[1];
          v90 = *(*(k + 56) + v87);
          __dst[0] = *v88;
          __dst[1] = v89;
          v231 = 980182388;
          v232 = 0xE400000000000000;
          sub_1DD3B52B8();
          sub_1DD3B530C();

          v91 = OUTLINED_FUNCTION_56_7();
          LODWORD(v227) = v90;
          if (v91)
          {
            break;
          }

          __dst[0] = v56;
          __dst[1] = v89;
          v231 = 0x3A6F746C69616DLL;
          v232 = 0xE700000000000000;
          v44 = OUTLINED_FUNCTION_56_7();

          if (v44)
          {
            goto LABEL_43;
          }

          v32 = v89;
LABEL_45:
          OUTLINED_FUNCTION_25_13();
          swift_isUniquelyReferenced_nonNull_native();
          __dst[0] = v44;
          sub_1DD3978DC();
          OUTLINED_FUNCTION_7_5();
          if (__OFADD__(v98, v99))
          {
            goto LABEL_135;
          }

          v58 = v96;
          v100 = v97;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
          v44 = __dst;
          if (sub_1DD640A08())
          {
            v44 = __dst[0];
            v101 = sub_1DD3978DC();
            if ((v100 & 1) != (v102 & 1))
            {
              result = sub_1DD640D58();
              __break(1u);
              return result;
            }

            v58 = v101;
          }

          v29 &= v29 - 1;
          if (v100)
          {

            v80 = __dst[0];
            OUTLINED_FUNCTION_46_4();
          }

          else
          {
            v80 = __dst[0];
            OUTLINED_FUNCTION_26_19(__dst[0] + 8 * (v58 >> 6));
            v103 = (*(v80 + 48) + 16 * v58);
            *v103 = v56;
            v103[1] = v32;
            OUTLINED_FUNCTION_46_4();
            v104 = *(v80 + 16);
            v105 = __OFADD__(v104, 1);
            v106 = v104 + 1;
            if (v105)
            {
              goto LABEL_136;
            }

            *(v80 + 16) = v106;
          }

          v86 = v50;
          v32 = v228;
        }

LABEL_43:
        v92 = sub_1DD63FF08();
        v93 = sub_1DD4127E0(v92, v56, v89);
        v44 = v94;
        v56 = MEMORY[0x1E12B2190](v93);
        v32 = v95;

        goto LABEL_45;
      }

      goto LABEL_4;
    }
  }

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

  sub_1DD6404C8();
  sub_1DD63F9A8();
  return OUTLINED_FUNCTION_20_22();
}

uint64_t sub_1DD4E3720(uint64_t a1)
{
  v2 = sub_1DD63FB58();
  v3 = OUTLINED_FUNCTION_0_25(v2, &v162);
  v145 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_25(v8 - v7);
  v9 = sub_1DD63FC18();
  v10 = OUTLINED_FUNCTION_0_25(v9, &v163);
  v152 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v143 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v149 = v139 - v17;
  isa = type metadata accessor for Signpost();
  v19 = OUTLINED_FUNCTION_7(isa);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v25 = qword_1EE16F0C0;
    v26 = v24 + isa[5];
    *v26 = "CRR.IDSLookup";
    *(v26 + 8) = 13;
    *(v26 + 16) = 2;
    v27 = v25;
    sub_1DD63F9B8();
    *(v24 + isa[6]) = v27;
    v28 = v27;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1DD643F90;
    v30 = sub_1DD6408F8();
    v32 = v31;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1DD392BD8();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    v150 = v28;
    v151 = v24;
    sub_1DD63F998();

    v33 = *(a1 + 16);
    v34 = MEMORY[0x1E69E7CC0];
    v35 = 32;
    if (!v33)
    {
      break;
    }

    while (1)
    {
      v24 = *(a1 + v35);
      isa = *(v24 + 16);
      if (isa)
      {
        v156 = v35;
        v157 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
        v36 = OUTLINED_FUNCTION_45_10();
        _swift_stdlib_malloc_size(v36);
        OUTLINED_FUNCTION_22_18();
        v36[2] = isa;
        v36[3] = v37;
        sub_1DD5D4EFC();
        v158 = v38;

        sub_1DD3AA5A4();
        if (v158 != isa)
        {
          goto LABEL_83;
        }

        v35 = v156;
        v33 = v157;
      }

      else
      {
        v36 = MEMORY[0x1E69E7CC0];
      }

      v24 = v36[2];
      isa = v34[2].isa;
      if (__OFADD__(isa, v24))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || isa + v24 > (v34[3].isa >> 1))
      {
        sub_1DD3BE2A4();
        v34 = v39;
      }

      if (v36[2])
      {
        if (((v34[3].isa >> 1) - v34[2].isa) < v24)
        {
          goto LABEL_84;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v40 = v34[2].isa;
          v41 = __OFADD__(v40, v24);
          v42 = (v40 + v24);
          if (v41)
          {
            goto LABEL_88;
          }

          v34[2].isa = v42;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_82;
        }
      }

      v35 += 8;
      if (!--v33)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_82:
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
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    OUTLINED_FUNCTION_4_2();
  }

LABEL_18:
  v43 = *MEMORY[0x1E69A47F8];
  v44 = sub_1DD63FDD8();
  v46 = sub_1DD4E45C4(v44, v45, v34);

  v142 = *MEMORY[0x1E69A47F0];
  v47 = sub_1DD63FDD8();
  v49 = sub_1DD4E45C4(v47, v48, v34);

  v50 = *MEMORY[0x1E69A47E8];
  v51 = sub_1DD63FDD8();
  v53 = sub_1DD4E45C4(v51, v52, v34);

  v54 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v54;
  sub_1DD4E7058(v46, sub_1DD4E7438, 0, isUniquelyReferenced_nonNull_native, v161);
  v56 = v161[0];
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v56;
  sub_1DD4E7058(v53, sub_1DD4E7438, 0, v57, v161);
  isa = v161[0];
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = isa;
  sub_1DD4E7058(v49, sub_1DD4E7438, 0, v58, v161);
  v148 = 0;
  v154 = v161[0];
  v24 = sub_1DD4E4D00(a1, v161[0]);
  v156 = *(v24 + 16);
  if (!v156)
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v87 = sub_1DD63F9F8();
    __swift_project_value_buffer(v87, qword_1EE16F068);
    v88 = sub_1DD63F9D8();
    v89 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v89))
    {
      goto LABEL_72;
    }

    v90 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v90);
    v93 = "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Stopping FaceTime support search because FaceTime support is known from local cache lookup";
    goto LABEL_71;
  }

  v139[1] = v50;
  v140 = sub_1DD63FDD8();
  v141 = v59;
  v60 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  v155 = v24;
  while (v156 != v60)
  {
    if (v60 >= *(v24 + 16))
    {
      goto LABEL_85;
    }

    isa = *(*(v24 + 8 * v60 + 32) + 16);
    if (isa)
    {
      v157 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v62 = OUTLINED_FUNCTION_45_10();
      _swift_stdlib_malloc_size(v62);
      OUTLINED_FUNCTION_22_18();
      v62[2] = isa;
      v62[3] = v63;
      OUTLINED_FUNCTION_49_8();
      sub_1DD5D4EFC();
      v158 = v64;
      v24 = v161[1];
      a1 = v161[3];

      sub_1DD3AA5A4();
      if (v158 != isa)
      {
        goto LABEL_89;
      }

      v24 = v155;
      v60 = v157;
    }

    else
    {
      v62 = MEMORY[0x1E69E7CC0];
    }

    isa = v62[2];
    v65 = *(v61 + 16);
    if (__OFADD__(v65, isa))
    {
      goto LABEL_86;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || isa + v65 > *(v61 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v61 = v66;
    }

    if (v62[2])
    {
      if ((*(v61 + 24) >> 1) - *(v61 + 16) < isa)
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_49_8();
      swift_arrayInitWithCopy();

      if (isa)
      {
        v67 = *(v61 + 16);
        v41 = __OFADD__(v67, isa);
        v68 = isa + v67;
        if (v41)
        {
          goto LABEL_94;
        }

        *(v61 + 16) = v68;
      }
    }

    else
    {

      if (isa)
      {
        goto LABEL_87;
      }
    }

    ++v60;
  }

  v69 = sub_1DD4E4FB8(v140, v141, v61);

  v70 = v154;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v161[0] = v70;
  v72 = v148;
  sub_1DD4E7058(v69, sub_1DD4E7438, 0, v71, v161);
  v154 = v161[0];
  v73 = sub_1DD4E4D00(v24, v69);

  v157 = *(v73 + 16);
  if (!v157)
  {

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v122 = sub_1DD63F9F8();
    __swift_project_value_buffer(v122, qword_1EE16F068);
    v88 = sub_1DD63F9D8();
    v123 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_5_6(v123))
    {
      goto LABEL_72;
    }

    v124 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v124);
    v93 = "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Stopping FaceTime support search because FaceTime support is known from IDSServiceNameFaceTimeMulti search";
LABEL_71:
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v91, v92, v93);
    OUTLINED_FUNCTION_23_0();
LABEL_72:

    goto LABEL_80;
  }

  v148 = v72;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v74 = sub_1DD63F9F8();
  v155 = __swift_project_value_buffer(v74, qword_1EE16F068);
  isa = sub_1DD63F9D8();
  v75 = sub_1DD640368();
  if (OUTLINED_FUNCTION_5_6(v75))
  {
    v76 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v76);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v77, v78, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - Starting legacy IDS (IDSServiceNameFaceTime & IDSServiceNameCalling) search for FaceTime support");
    OUTLINED_FUNCTION_23_0();
  }

  v24 = 0;
  v79 = MEMORY[0x1E69E7CC0];
  v156 = v73;
  while (v157 != v24)
  {
    if (v24 >= *(v73 + 16))
    {
      goto LABEL_91;
    }

    isa = *(*(v73 + 8 * v24 + 32) + 16);
    if (isa)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v80 = OUTLINED_FUNCTION_45_10();
      _swift_stdlib_malloc_size(v80);
      OUTLINED_FUNCTION_22_18();
      v80[2] = isa;
      v80[3] = v81;
      OUTLINED_FUNCTION_49_8();
      sub_1DD5D4EFC();
      v158 = v82;
      a1 = v161[0];

      sub_1DD3AA5A4();
      if (v158 != isa)
      {
        goto LABEL_95;
      }

      v73 = v156;
    }

    else
    {
      v80 = MEMORY[0x1E69E7CC0];
    }

    isa = v80[2];
    v83 = *(v79 + 16);
    if (__OFADD__(v83, isa))
    {
      goto LABEL_92;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || isa + v83 > *(v79 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v79 = v84;
    }

    if (v80[2])
    {
      if ((*(v79 + 24) >> 1) - *(v79 + 16) < isa)
      {
        goto LABEL_96;
      }

      OUTLINED_FUNCTION_49_8();
      swift_arrayInitWithCopy();

      if (isa)
      {
        v85 = *(v79 + 16);
        v41 = __OFADD__(v85, isa);
        v86 = isa + v85;
        if (v41)
        {
          goto LABEL_97;
        }

        *(v79 + 16) = v86;
      }
    }

    else
    {

      if (isa)
      {
        goto LABEL_93;
      }
    }

    ++v24;
  }

  v94 = swift_allocObject();
  v95 = MEMORY[0x1E69E7CC8];
  *(v94 + 16) = MEMORY[0x1E69E7CC8];
  v96 = (v94 + 16);
  v97 = swift_allocObject();
  *(v97 + 16) = v95;
  v98 = dispatch_group_create();
  dispatch_group_enter(v98);
  dispatch_group_enter(v98);
  v99 = sub_1DD63FDD8();
  v101 = v100;
  OUTLINED_FUNCTION_18_9();
  v102 = swift_allocObject();
  *(v102 + 16) = v94;
  *(v102 + 24) = v98;
  v158 = v94;

  v103 = v98;
  v104 = v99;
  v105 = v153;
  sub_1DD4E55E8(v104, v101, v79, sub_1DD4E747C, v102);

  v106 = sub_1DD63FDD8();
  v108 = v107;
  OUTLINED_FUNCTION_18_9();
  v109 = swift_allocObject();
  *(v109 + 16) = v97;
  *(v109 + 24) = v103;
  v110 = v103;

  sub_1DD4E55E8(v106, v108, v79, sub_1DD4E75C0, v109);

  OUTLINED_FUNCTION_25_13();
  sub_1DD63FBE8();
  v111 = v144;
  *v144 = 2500;
  v112 = v145;
  v113 = v146;
  (*(v145 + 104))(v111, *MEMORY[0x1E69E7F38], v146);
  sub_1DD63FBF8();
  (*(v112 + 8))(v111, v113);
  v114 = *(v152 + 8);
  v115 = v147;
  v152 += 8;
  v114(v105, v147);
  if (sub_1DD640408())
  {

    v116 = sub_1DD63F9D8();
    v117 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v117))
    {
      v118 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v118);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v119, v120, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - IDS legacy lookup timed out");
      OUTLINED_FUNCTION_23_0();
      v121 = v110;
    }

    else
    {
      v121 = v116;
      v116 = v110;
    }

    v114(v149, v115);
  }

  else
  {
    swift_beginAccess();
    v125 = *v96;

    v126 = v154;
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v160[0] = v126;
    sub_1DD4E7058(v125, sub_1DD4E7438, 0, v127, v160);
    v128 = v160[0];
    swift_beginAccess();
    v129 = *(v97 + 16);

    v130 = swift_isUniquelyReferenced_nonNull_native();
    v159 = v128;
    sub_1DD4E7058(v129, sub_1DD4E7438, 0, v130, &v159);

    v154 = v159;

    v131 = sub_1DD63F9D8();
    v132 = sub_1DD640368();
    if (OUTLINED_FUNCTION_5_6(v132))
    {
      v133 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v133);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v134, v135, "IsFaceTimeableSignalProvider::fetchIsFaceTimeable - IDS lookups complete");
      OUTLINED_FUNCTION_23_0();
      v136 = v110;
    }

    else
    {
      v136 = v131;
      v131 = v110;
    }

    v137 = v147;

    v114(v149, v137);
  }

LABEL_80:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_20_22();
  return v154;
}

uint64_t sub_1DD4E45C4(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v4 = v3;
  v75 = a3;
  v7 = sub_1DD63FB58();
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = (&v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1DD63FC18();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v61 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1DD63FC88();
  v61 = (v17 + 16);
  v65 = dispatch_semaphore_create(0);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v18 = sub_1DD63F9F8();
  v19 = __swift_project_value_buffer(v18, qword_1EE16F068);

  v66 = v19;
  v20 = sub_1DD63F9D8();
  v21 = sub_1DD640368();

  v22 = os_log_type_enabled(v20, v21);
  v71 = v11;
  v72 = v10;
  v73 = v16;
  v64 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v76[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1DD39565C(a1, a2, v76);
    _os_log_impl(&dword_1DD38D000, v20, v21, "IsFaceTimeableSignalProvider::lookupLocally - starting IDS local lookup for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
  }

  v25 = a1;
  v26 = v4[3];
  v27 = v4[4];
  v63 = __swift_project_boxed_opaque_existential_1(v4, v26);
  v28 = sub_1DD3FDCD4(v75);
  v29 = *MEMORY[0x1E69A4800];
  v62 = sub_1DD63FDD8();
  v31 = v30;
  v32 = v4[5];
  v33 = swift_allocObject();
  v34 = v65;
  *(v33 + 16) = v17;
  *(v33 + 24) = v34;
  v35 = v17;
  v36 = *(v27 + 8);
  v74 = v35;

  v75 = v34;
  v65 = v25;
  v37 = v64;
  v36(v28, v25, v64, v62, v31, v32, sub_1DD4E74E4, v33, v26, v27);

  v38 = v67;
  sub_1DD63FBE8();
  v40 = v68;
  v39 = v69;
  *v68 = 50;
  v41 = v70;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E7F38], v70);
  v42 = v73;
  sub_1DD63FBF8();
  (*(v39 + 8))(v40, v41);
  v43 = v72;
  v44 = *(v71 + 8);
  v44(v38, v72);
  LOBYTE(v41) = sub_1DD6404E8();

  if (v41)
  {
    v45 = sub_1DD63F9D8();
    v46 = sub_1DD640368();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v76[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_1DD39565C(v65, v37, v76);
      _os_log_impl(&dword_1DD38D000, v45, v46, "IsFaceTimeableSignalProvider::lookupLocally - IDS local lookup timed out for %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1E12B3DA0](v48, -1, -1);
      MEMORY[0x1E12B3DA0](v47, -1, -1);
    }

    v49 = sub_1DD63FC88();
    v44(v42, v43);
  }

  else
  {

    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76[0] = v71;
      *v52 = 136315394;
      *(v52 + 4) = sub_1DD39565C(v65, v37, v76);
      *(v52 + 12) = 2080;
      v53 = v61;
      swift_beginAccess();
      v54 = *v53;

      v55 = sub_1DD63FC68();
      v57 = v56;

      v58 = sub_1DD39565C(v55, v57, v76);

      *(v52 + 14) = v58;
      _os_log_impl(&dword_1DD38D000, v50, v51, "IsFaceTimeableSignalProvider::lookupLocally - IDS local lookup for %s ended. Found %s.", v52, 0x16u);
      v59 = v71;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v59, -1, -1);
      MEMORY[0x1E12B3DA0](v52, -1, -1);

      v44(v73, v43);
    }

    else
    {

      v44(v42, v43);
      v53 = v61;
    }

    swift_beginAccess();
    v49 = *v53;
  }

  return v49;
}

uint64_t sub_1DD4E4D00(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v35 = result + 32;
  v36 = *(result + 16);
  v34 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = v3;
  if (v3 == v36)
  {
    return v34;
  }

  if (v3 >= v36)
  {
    goto LABEL_40;
  }

  ++v3;
  if (!__OFADD__(v4, 1))
  {
    v5 = *(v35 + 8 * v4);
    v6 = v5 + 56;
    v7 = 1 << *(v5 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v5 + 56);
    v10 = (v7 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
    while (v9)
    {
      v12 = v9;
LABEL_15:
      v9 = (v12 - 1) & v12;
      if (*(a2 + 16))
      {
        v14 = (*(v5 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v12)))));
        v15 = *v14;
        v16 = v14[1];

        v17 = sub_1DD3978DC();
        if (v18)
        {
          v19 = *(*(a2 + 56) + v17);

          if (v19)
          {
LABEL_36:

            goto LABEL_2;
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v13 >= v10)
      {
        break;
      }

      v12 = *(v6 + 8 * v13);
      ++v11;
      if (v12)
      {
        v11 = v13;
        goto LABEL_15;
      }
    }

    v20 = 1 << *(v5 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v5 + 56);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    while (v22)
    {
LABEL_29:
      if (*(a2 + 16))
      {
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = (*(v5 + 48) + ((v24 << 10) | (16 * v26)));
        v28 = *v27;
        v29 = v27[1];

        sub_1DD3978DC();
        LOBYTE(v28) = v30;

        if (v28)
        {
          continue;
        }
      }

      v31 = v34;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DD42B8FC(0, *(v34 + 16) + 1, 1);
        v31 = v34;
      }

      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_1DD42B8FC((v32 > 1), v33 + 1, 1);
        v31 = v34;
      }

      *(v31 + 16) = v33 + 1;
      v34 = v31;
      *(v31 + 8 * v33 + 32) = v5;
      goto LABEL_2;
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
        goto LABEL_36;
      }

      v22 = *(v6 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_29;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4E4FB8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v4 = sub_1DD63FB58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_1DD63FC18();
  v54 = *(v52 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x1EEE9AC00](v52);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DD63FC88();
  v48 = (v15 + 16);
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v55 = v15;

  v18 = v16;
  v49 = a1;
  v19 = v50;
  sub_1DD4E55E8(a1, v50, v51, sub_1DD4E74A0, v17);

  sub_1DD63FBE8();
  *v8 = 2500;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F38], v4);
  sub_1DD63FBF8();
  (*(v5 + 8))(v8, v4);
  v20 = v52;
  v21 = v54 + 8;
  v22 = *(v54 + 8);
  v22(v12, v52);
  if (sub_1DD6404E8())
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1EE16F068);
    v24 = v19;

    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640368();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v18;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v24;
      v31 = v29;
      v56[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1DD39565C(v49, v30, v56);
      _os_log_impl(&dword_1DD38D000, v25, v26, "IsFaceTimeableSignalProvider::lookup - IDS lookup timed out for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
      v32 = v28;
      v18 = v27;
      MEMORY[0x1E12B3DA0](v32, -1, -1);
    }

    v33 = sub_1DD63FC88();
    v22(v14, v20);
  }

  else
  {
    v53 = v18;
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v34 = sub_1DD63F9F8();
    __swift_project_value_buffer(v34, qword_1EE16F068);

    v35 = v19;

    v36 = sub_1DD63F9D8();
    v37 = sub_1DD640368();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v51 = v14;
      v39 = v38;
      v40 = swift_slowAlloc();
      v56[0] = v40;
      *v39 = 136315394;
      *(v39 + 4) = sub_1DD39565C(v49, v35, v56);
      *(v39 + 12) = 2080;
      v41 = v48;
      swift_beginAccess();
      v42 = *v41;

      v43 = sub_1DD63FC68();
      v54 = v21;
      v45 = v44;

      v46 = sub_1DD39565C(v43, v45, v56);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_1DD38D000, v36, v37, "IsFaceTimeableSignalProvider::lookup - IDS lookup for %s ended. Found %s.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v40, -1, -1);
      MEMORY[0x1E12B3DA0](v39, -1, -1);

      v22(v51, v20);
    }

    else
    {

      v22(v14, v20);
      v41 = v48;
    }

    swift_beginAccess();
    v33 = *v41;
  }

  return v33;
}

uint64_t sub_1DD4E55E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F068);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  v26 = a2;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DD39565C(a1, a2, &v29);
    _os_log_impl(&dword_1DD38D000, v11, v12, "IsFaceTimeableSignalProvider::lookupAsync - starting IDS lookup for %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
    MEMORY[0x1E12B3DA0](v13, -1, -1);
  }

  v15 = v6[3];
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v15);
  v17 = sub_1DD3FDCD4(a3);
  v18 = *MEMORY[0x1E69A4800];
  v19 = sub_1DD63FDD8();
  v21 = v20;
  v22 = v6[5];
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  v24 = *(v16 + 16);

  v24(v17, a1, v26, v19, v21, v22, sub_1DD4E7498, v23, v15, v16);
}

void sub_1DD4E5824(uint64_t a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  dispatch_group_leave(a3);
}

uint64_t sub_1DD4E5890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD4E58F0(a1);
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = v3;

  return sub_1DD640508();
}

uint64_t sub_1DD4E58F0(uint64_t a1)
{
  if (!a1 || (v1 = sub_1DD4E5D80(a1)) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v2 = v1;
  v3 = sub_1DD63FC88();
  v4 = *(v2 + 64);
  v5 = *(v2 + 32);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    OUTLINED_FUNCTION_10_36();
    v14 = v13 | (v11 << 6);
    v15 = *(*(v2 + 56) + 8 * v14);
    if (v15 == 2)
    {
      OUTLINED_FUNCTION_55_8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        result = sub_1DD640D58();
        __break(1u);
        return result;
      }

      v28 = v24;
      v29 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
      if (OUTLINED_FUNCTION_58_7())
      {
        v30 = sub_1DD3978DC();
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_41;
        }

        v28 = v30;
      }

      v3 = v65;
      if ((v29 & 1) == 0)
      {
        OUTLINED_FUNCTION_26_19(&v65[v28 >> 6]);
        OUTLINED_FUNCTION_40_7(v45, v46, v47, v48, v49, v50, v51, v52, v64);
        *(v53 + v28) = 0;
        v54 = *(v3 + 16);
        v43 = __OFADD__(v54, 1);
        v44 = v54 + 1;
        if (v43)
        {
          goto LABEL_40;
        }

        goto LABEL_28;
      }

      *(v65[7] + v28) = 0;
LABEL_26:
    }

    else if (v15 == 1)
    {
      OUTLINED_FUNCTION_55_8(v14);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_44_12();
      OUTLINED_FUNCTION_7_5();
      if (__OFADD__(v18, v19))
      {
        goto LABEL_38;
      }

      v20 = v16;
      v21 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
      if (OUTLINED_FUNCTION_58_7())
      {
        v22 = sub_1DD3978DC();
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_41;
        }

        v20 = v22;
      }

      v3 = v65;
      if (v21)
      {
        *(v65[7] + v20) = 1;
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_26_19(&v65[v20 >> 6]);
      OUTLINED_FUNCTION_40_7(v32, v33, v34, v35, v36, v37, v38, v39, v64);
      *(v40 + v20) = v41;
      v42 = *(v3 + 16);
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_39;
      }

LABEL_28:
      *(v3 + 16) = v44;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v3;
    }

    v8 = *(v2 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_36:
  OUTLINED_FUNCTION_0_5();
LABEL_30:
  v55 = sub_1DD63F9F8();
  __swift_project_value_buffer(v55, qword_1EE16F068);

  v56 = sub_1DD63F9D8();
  v57 = sub_1DD640378();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v65 = v59;
    *v58 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBFA8, &unk_1DD6444A0);
    v60 = sub_1DD63FE38();
    v62 = sub_1DD39565C(v60, v61, &v65);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_1DD38D000, v56, v57, "IsFaceTimeableSignalProvider::makeHandleStatuses - unclear IDS results: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  return sub_1DD63FC88();
}

uint64_t sub_1DD4E5CC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return sub_1DD640508();
}

uint64_t sub_1DD4E5D30(uint64_t a1, void (*a2)(void))
{
  sub_1DD4E58F0(a1);
  a2();
}

unint64_t sub_1DD4E5D80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v2 = sub_1DD640A78();
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
  while (1)
  {
    if (!v5)
    {
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
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_1DD400EF0(*(a1 + 48) + 40 * v10, __src);
    sub_1DD395720(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD400EF0(__dst, v21);
    if (!swift_dynamicCast())
    {
      sub_1DD390754(__dst, &qword_1ECCDDD88, &qword_1DD654CE0);

      goto LABEL_22;
    }

    sub_1DD395720(&__dst[40], v21);
    sub_1DD390754(__dst, &qword_1ECCDDD88, &qword_1DD654CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_1DD3978DC();
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      v14 = v13[1];
      *v13 = v19;
      v13[1] = v20;

      *(v2[7] + 8 * v11) = v19;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v2[6] + 16 * result);
      *v15 = v19;
      v15[1] = v20;
      *(v2[7] + 8 * result) = v19;
      v16 = v2[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_26;
      }

      v2[2] = v18;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

uint64_t sub_1DD4E6084(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1DD63FC58();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

id sub_1DD4E6158(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v15 = a3;
  if (a1)
  {
    v16 = sub_1DD6400F8();
    if (!v15)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = 0;
  if (a3)
  {
LABEL_3:
    v15 = sub_1DD63FDA8();
  }

LABEL_4:
  if (a5)
  {
    a5 = sub_1DD63FDA8();
  }

  if (a7)
  {
    v19[4] = a7;
    v19[5] = a8;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1DD4E6084;
    v19[3] = a9;
    a7 = _Block_copy(v19);
  }

  v17 = [v10 *a10];
  _Block_release(a7);

  return v17;
}

void sub_1DD4E62AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_6_46(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v18)
  {
LABEL_29:

    *v12 = v14;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v42 = v13;
  v19 = 0;
  v20 = v13;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v15)
  {
LABEL_4:
    v22 = v19;
    while (1)
    {
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v19 >= v12)
      {
        break;
      }

      ++v22;
      if (*(v20 + 8 * v19))
      {
        OUTLINED_FUNCTION_14_3();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v38 = *(v13 + 32);
      OUTLINED_FUNCTION_14_29();
      if (v40 != v41)
      {
        OUTLINED_FUNCTION_15_27(v39);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v39);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20(v21);
    v27 = *(v26 + 8 * v25);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9();
    v28 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v28);
    v30 = *(v16 + 8 * v29);
    OUTLINED_FUNCTION_31_15();
    if (v31)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_21:
    OUTLINED_FUNCTION_3_50(v32);
    *(v37 + 8 * v36) = v27;
    OUTLINED_FUNCTION_46_3();
    v13 = v42;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    OUTLINED_FUNCTION_39_11(v33);
    if (!v31)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1DD4E6438(uint64_t a1)
{
  OUTLINED_FUNCTION_6_46(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB48, &qword_1DD643EC8);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v6)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_14_3();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      v25 = *(v2 + 32);
      OUTLINED_FUNCTION_14_29();
      if (v27 != v28)
      {
        OUTLINED_FUNCTION_15_27(v26);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v26);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20(v8);
    v14 = *(v13 + 8 * v12);
    if ((v29 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9();
    v15 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v15);
    v17 = *(v5 + 8 * v16);
    OUTLINED_FUNCTION_31_15();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_21:
    OUTLINED_FUNCTION_3_50(v19);
    *(v24 + 8 * v23) = v14;
    OUTLINED_FUNCTION_46_3();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v18)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_39_11(v20);
    if (!v18)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1DD4E65B8()
{
  OUTLINED_FUNCTION_53_7();
  v2 = v0;
  v3 = *v0;
  if (*(*v0 + 24) > v4)
  {
    v5 = *(*v0 + 24);
  }

  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA0, &qword_1DD654D60);
  v6 = sub_1DD640A68();
  if (!*(v3 + 16))
  {
LABEL_31:

LABEL_32:
    *v2 = v6;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v40 = v2;
  v41 = v3;
  v7 = 0;
  v8 = v3;
  OUTLINED_FUNCTION_0_93();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_6:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_14_3();
        v11 = v18 & v17;
        goto LABEL_11;
      }
    }

    if ((v42 & 1) == 0)
    {

      v2 = v40;
      goto LABEL_32;
    }

    v36 = *(v3 + 32);
    OUTLINED_FUNCTION_14_29();
    v2 = v40;
    if (v38 != v39)
    {
      OUTLINED_FUNCTION_15_27(v37);
    }

    else
    {
      OUTLINED_FUNCTION_16_30(v37);
    }

    *(v3 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v19 = v15 | (v7 << 6);
    v20 = (*(v3 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v3 + 56) + 8 * v19);
    if ((v42 & 1) == 0)
    {
      v24 = v20[1];
    }

    OUTLINED_FUNCTION_59_6();
    sub_1DD63FD28();
    v25 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v25);
    v27 = *(v14 + 8 * v26);
    OUTLINED_FUNCTION_31_15();
    if (v28)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_23:
    OUTLINED_FUNCTION_7_39();
    *(v14 + v32) |= v33;
    v35 = (*(v6 + 48) + 16 * v34);
    *v35 = v21;
    v35[1] = v22;
    *(*(v6 + 56) + 8 * v34) = v23;
    OUTLINED_FUNCTION_46_3();
    v3 = v41;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v28)
    {
      if (v30)
      {
        break;
      }
    }

    if (v29 == v31)
    {
      v29 = 0;
    }

    if (*(v14 + 8 * v29) != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1DD4E67BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_53_7();
  OUTLINED_FUNCTION_6_46(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  OUTLINED_FUNCTION_18_24();
  OUTLINED_FUNCTION_48_12();
  if (!v20)
  {
LABEL_29:

    *v12 = v14;
    OUTLINED_FUNCTION_54_8();
    return;
  }

  v45 = v13;
  v21 = 0;
  v22 = v13;
  OUTLINED_FUNCTION_0_93();
  OUTLINED_FUNCTION_24_15();
  if (!v15)
  {
LABEL_4:
    v24 = v21;
    while (1)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v21 >= v12)
      {
        break;
      }

      ++v24;
      if (*(v22 + 8 * v21))
      {
        OUTLINED_FUNCTION_14_3();
        v15 = v26 & v25;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      v41 = *(v13 + 32);
      OUTLINED_FUNCTION_14_29();
      if (v43 != v44)
      {
        OUTLINED_FUNCTION_15_27(v42);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v42);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_9:
    OUTLINED_FUNCTION_21_20(v23);
    v29 = *(v28 + 8 * v27);
    if ((a12 & 1) == 0)
    {

      v30 = v29;
    }

    OUTLINED_FUNCTION_59_6();
    OUTLINED_FUNCTION_42_9();
    v31 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v31);
    v33 = *(v16 + 8 * v32);
    OUTLINED_FUNCTION_31_15();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_21:
    OUTLINED_FUNCTION_3_50(v35);
    *(v40 + 8 * v39) = v29;
    OUTLINED_FUNCTION_46_3();
    v13 = v45;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v34)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    OUTLINED_FUNCTION_39_11(v36);
    if (!v34)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1DD4E691C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD80, &qword_1DD654CD8);
  v38 = a2;
  result = sub_1DD640A68();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1DD57634C(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_1DD640E28();
    sub_1DD63FD28();
    result = sub_1DD640E78();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1DD4E6BB8(uint64_t a1)
{
  OUTLINED_FUNCTION_6_46(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD90, &qword_1DD654CE8);
  sub_1DD640A68();
  OUTLINED_FUNCTION_48_12();
  if (!v4)
  {
LABEL_31:

LABEL_32:
    *v1 = v3;
    return;
  }

  v35 = v1;
  v5 = 0;
  OUTLINED_FUNCTION_0_93();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v11 = v3 + 8;
  if ((v7 & v6) == 0)
  {
LABEL_4:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v5 >= v10)
      {
        break;
      }

      ++v13;
      if (*(v2 + 8 * v5))
      {
        OUTLINED_FUNCTION_14_3();
        v8 = v15 & v14;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v1 = v35;
      goto LABEL_32;
    }

    v31 = *(v2 + 32);
    OUTLINED_FUNCTION_14_29();
    v1 = v35;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_15_27(v32);
    }

    else
    {
      OUTLINED_FUNCTION_16_30(v32);
    }

    *(v2 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_9:
    v16 = v12 | (v5 << 6);
    v17 = *(*(v2 + 56) + 8 * v16);
    v36 = *(*(v2 + 48) + 16 * v16);
    v18 = *(*(v2 + 48) + 16 * v16 + 8);
    if ((v3 & 1) == 0)
    {

      v19 = v17;
    }

    v20 = v3[5];
    sub_1DD640E28();
    sub_1DD640E48();
    if (v18)
    {
      sub_1DD63FD28();
    }

    v21 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v21);
    v23 = v11[v22];
    OUTLINED_FUNCTION_31_15();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_23:
    OUTLINED_FUNCTION_7_39();
    *(v11 + v28) |= v29;
    *(v3[6] + 16 * v30) = v36;
    *(v3[7] + 8 * v30) = v17;
    OUTLINED_FUNCTION_46_3();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (v11[v25] != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1DD4E6DCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD98, &unk_1DD654CF0);
  v49 = a2;
  v7 = sub_1DD640A68();
  if (!*(v5 + 16))
  {

LABEL_35:
    *v3 = v7;
    return;
  }

  v47 = v2;
  v48 = v5;
  v8 = 0;
  v9 = v5;
  OUTLINED_FUNCTION_0_93();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v18;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_14_3();
        v12 = v20 & v19;
        goto LABEL_11;
      }
    }

    if (v49)
    {
      v43 = *(v5 + 32);
      OUTLINED_FUNCTION_14_29();
      if (v45 != v46)
      {
        OUTLINED_FUNCTION_15_27(v44);
      }

      else
      {
        OUTLINED_FUNCTION_16_30(v44);
      }

      *(v5 + 16) = 0;
    }

    v3 = v47;
    goto LABEL_35;
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_36();
LABEL_11:
    v21 = v16 | (v8 << 6);
    v22 = (*(v5 + 48) + 32 * v21);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v53 = v24;
    v54 = *v22;
    v26 = (*(v5 + 56) + v21 * v17);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v50 = v28;
    v51 = *v26;
    v52 = v26[4];
    if ((v49 & 1) == 0)
    {
    }

    v30 = v7[5];
    sub_1DD640E28();
    sub_1DD63FD28();
    if (v25)
    {
      MEMORY[0x1E12B3140](1);
      sub_1DD63FD28();
    }

    else
    {
      MEMORY[0x1E12B3140](0);
    }

    v31 = sub_1DD640E78();
    OUTLINED_FUNCTION_2_59(v31);
    v33 = v15[v32];
    OUTLINED_FUNCTION_31_15();
    if (v34)
    {
      break;
    }

    OUTLINED_FUNCTION_5_53();
LABEL_26:
    OUTLINED_FUNCTION_7_39();
    *(v15 + v38) |= v39;
    v41 = (v7[6] + 32 * v40);
    *v41 = v54;
    v41[1] = v23;
    v41[2] = v53;
    v41[3] = v25;
    v42 = (v7[7] + 40 * v40);
    *v42 = v51;
    v42[1] = v27;
    v42[2] = v50;
    v42[3] = v29;
    v42[4] = v52;
    OUTLINED_FUNCTION_46_3();
    v5 = v48;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_4_3();
  while (1)
  {
    OUTLINED_FUNCTION_32_14();
    if (v34)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (v15[v35] != -1)
    {
      OUTLINED_FUNCTION_8_41();
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1DD4E7058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v45 = a5;
  sub_1DD4E73FC(a1, a2, a3, v44);
  v6 = v44[1];
  v7 = v44[3];
  v8 = v44[4];
  v37 = v44[5];
  v38 = v44[0];
  v9 = (v44[2] + 64) >> 6;

  v36 = v6;
  if (v8)
  {
    while (1)
    {
      v39 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v38 + 48) + 16 * v12);
      v14 = v13[1];
      LOBYTE(v12) = *(*(v38 + 56) + v12);
      v42[0] = *v13;
      v42[1] = v14;
      v43 = v12;

      v37(v40, v42);

      v15 = v40[0];
      v16 = v40[1];
      v17 = v41;
      v18 = *v45;
      v19 = sub_1DD3978DC();
      OUTLINED_FUNCTION_7_5();
      v23 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
        break;
      }

      v24 = v20;
      if (*(v18 + 24) >= v23)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD78, &unk_1DD654CC8);
          sub_1DD640A18();
        }
      }

      else
      {
        v25 = v45;
        sub_1DD4E691C(v23, v39 & 1);
        v26 = *v25;
        v27 = sub_1DD3978DC();
        if ((v24 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }

        v19 = v27;
      }

      v8 &= v8 - 1;
      v29 = *v45;
      if (v24)
      {
        v30 = *(v29[7] + v19);

        *(v29[7] + v19) = (v30 | v17) & 1;
      }

      else
      {
        OUTLINED_FUNCTION_26_19(&v29[v19 >> 6]);
        v31 = (v29[6] + 16 * v19);
        *v31 = v15;
        v31[1] = v16;
        *(v29[7] + v19) = v17;
        v32 = v29[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v29[2] = v34;
      }

      a4 = 1;
      v7 = v10;
      v6 = v36;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1DD3AA5A4();
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD4E72EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4E7344(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_1DD4E738C(_BYTE *a1, uint64_t a2, uint64_t a3, char a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1DD4E73C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return a2;
}

uint64_t sub_1DD4E73FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1DD4E7438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD4E738C(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return result;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_18_9();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1DD4E7504(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1DD4E7544(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_3_50(unint64_t a1@<X8>)
{
  *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a1;
  v5 = (*(v1 + 48) + 16 * a1);
  *v5 = v2;
  v5[1] = v3;
  v6 = *(v1 + 56);
}

void OUTLINED_FUNCTION_35_12()
{
  v1 = *(v0 - 448);
  v2 = *(v0 - 424);
  v3 = *(v0 - 456);
}

void OUTLINED_FUNCTION_40_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = (*(v9 + 48) + 16 * v10);
  *v12 = a9;
  v12[1] = v11;
  v13 = *(v9 + 56);
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return sub_1DD63FD28();
}

unint64_t OUTLINED_FUNCTION_44_12()
{

  return sub_1DD3978DC();
}

uint64_t OUTLINED_FUNCTION_45_10()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_46_4()
{
  *(*(v0 + 56) + v1) = *(v2 - 320);
}

uint64_t OUTLINED_FUNCTION_55_8@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + 48) + 16 * a1);
  v5 = *v3;
  v4 = v3[1];
}

uint64_t OUTLINED_FUNCTION_56_7()
{

  return sub_1DD63FD48();
}

uint64_t OUTLINED_FUNCTION_58_7()
{

  return sub_1DD640A08();
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  v2 = *(v0 + 40);

  return sub_1DD640E28();
}

void sub_1DD4E781C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 16))
  {
    v63 = *(*a1 + 16);
    v62 = a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_52:
      sub_1DD586A30(v2);
      v2 = v60;
    }

    v4 = 0;
    v5 = v2 + 32;
    v6 = v63;
    v70 = v2 + 32;
    v72 = v2;
    do
    {
      if (v4 == v6)
      {
        goto LABEL_50;
      }

      if (v4 >= *(v2 + 16))
      {
        goto LABEL_51;
      }

      v64 = *(*(v5 + 8 * v4) + 16);
      if (v64)
      {
        v7 = 0;
        while (v4 < *(v2 + 16))
        {
          v8 = *(v5 + 8 * v4);
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_49;
          }

          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
          v10 = OUTLINED_FUNCTION_50(v9);
          v74 = *(v19 + 72) * v7;
          v68 = *(*(v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v10 + 36) + v74 + 272) + 16);
          if (v68)
          {
            v20 = 0;
            while (v4 < *(v2 + 16))
            {
              if (v7 >= *(*(v5 + 8 * v4) + 16))
              {
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_0_94(v10, v11, v12, v13, v14, v15, v16, v17, v61, v62, v63, v64, v66, v67, v68, v70, v72, v74);
              v23 = *(v21 + v22 + 272);
              if (v20 >= *(v23 + 16))
              {
                goto LABEL_42;
              }

              v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
              v10 = OUTLINED_FUNCTION_50(v24);
              v27 = *(v26 + 72);
              if (*(a2 + 16))
              {
                v28 = v10;
                v67 = (*(v25 + 80) + 32) & ~*(v25 + 80);
                v66 = v27 * v20;
                v29 = v23 + v67 + v27 * v20;
                v30 = *(v29 + 56);
                v31 = *(v29 + 64);
                v32 = *(a2 + 40);
                sub_1DD640E28();
                sub_1DD63FD28();
                v10 = sub_1DD640E78();
                v2 = ~(-1 << *(a2 + 32));
                while (1)
                {
                  v33 = v10 & v2;
                  if (((*(a2 + 56 + (((v10 & v2) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v2)) & 1) == 0)
                  {
                    break;
                  }

                  v34 = (*(a2 + 48) + 16 * v33);
                  if (*v34 != v30 || v34[1] != v31)
                  {
                    v36 = sub_1DD640CD8();
                    v10 = v33 + 1;
                    if ((v36 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v37 = v72;
                  if (v4 >= *(v72 + 16))
                  {
                    goto LABEL_43;
                  }

                  v38 = v70;
                  v2 = *(v70 + 8 * v4);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *(v70 + 8 * v4) = v2;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_1DD586A18(v2);
                    v2 = isUniquelyReferenced_nonNull_native;
                    *(v70 + 8 * v4) = isUniquelyReferenced_nonNull_native;
                  }

                  if (v7 >= *(v2 + 16))
                  {
                    goto LABEL_44;
                  }

                  OUTLINED_FUNCTION_0_94(isUniquelyReferenced_nonNull_native, v40, v41, v42, v43, v44, v45, v46, v61, v62, v63, v64, v66, v67, v68, v70, v72, v74);
                  *(v47 + v48 + *(type metadata accessor for ContactResolver.SignalSet(0) + 176)) = 1;
                  *(v38 + 8 * v4) = v2;
                  if (v4 >= *(v37 + 16))
                  {
                    goto LABEL_45;
                  }

                  v49 = swift_isUniquelyReferenced_nonNull_native();
                  *(v38 + 8 * v4) = v2;
                  if ((v49 & 1) == 0)
                  {
                    sub_1DD586A18(v2);
                    v2 = v49;
                    *(v38 + 8 * v4) = v49;
                  }

                  if (v7 < *(v2 + 16))
                  {
                    OUTLINED_FUNCTION_0_94(v49, v50, v51, v52, v53, v54, v55, v56, v61, v62, v63, v65, v66, v67, v69, v71, v73, v75);
                    v2 = v57 + v58;
                    v59 = *(v57 + v58 + 272);
                    v10 = swift_isUniquelyReferenced_nonNull_native();
                    *(v2 + 272) = v59;
                    if ((v10 & 1) == 0)
                    {
                      sub_1DD586A48(v59);
                      v59 = v10;
                      *(v2 + 272) = v10;
                    }

                    if (v20 < *(v59 + 16))
                    {
                      *(v59 + v67 + v66 + *(v28 + 36) + 1) = 1;
                      *(v2 + 272) = v59;
                      break;
                    }

                    goto LABEL_47;
                  }

                  goto LABEL_46;
                }
              }

              ++v20;
              v5 = v70;
              v2 = v72;
              if (v20 == v68)
              {
                goto LABEL_36;
              }
            }

            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            break;
          }

LABEL_36:
          if (++v7 == v64)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_37:
      ++v4;
      v6 = v63;
    }

    while (v4 != v63);
    *v62 = v2;
  }
}

uint64_t sub_1DD4E7C30(uint64_t a1)
{
  v8 = MEMORY[0x1E69E7CD0];
  v3 = sub_1DD3CC020(a1);
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v8;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12B2C10](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v1 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = v5;
    sub_1DD4E7D18(&v8, &v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);

  __break(1u);
  return result;
}

void sub_1DD4E7D18(uint64_t a1, id *a2)
{
  v2 = [*a2 contactProperty];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 key];
    v5 = sub_1DD63FDD8();
    v7 = v6;

    v8 = *MEMORY[0x1E695C330];
    if (sub_1DD63FDD8() == v5 && v9 == v7)
    {
    }

    else
    {
      v11 = sub_1DD640CD8();

      if ((v11 & 1) == 0)
      {
        v18 = *MEMORY[0x1E695C208];
        if (sub_1DD63FDD8() == v5 && v19 == v7)
        {
        }

        else
        {
          v21 = sub_1DD640CD8();

          if ((v21 & 1) == 0)
          {
            if (qword_1EE165FB0 != -1)
            {
              swift_once();
            }

            v22 = sub_1DD63F9F8();
            __swift_project_value_buffer(v22, qword_1EE16F068);
            v23 = sub_1DD63F9D8();
            v24 = sub_1DD640378();
            if (!os_log_type_enabled(v23, v24))
            {
              goto LABEL_40;
            }

            v25 = swift_slowAlloc();
            *v25 = 0;
            v26 = "CNContactProperty has unexpected contact property key";
            goto LABEL_39;
          }
        }

        if ([v3 value])
        {
          sub_1DD6406F8();
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0u;
          v37 = 0u;
        }

        v38 = v36;
        v39 = v37;
        if (*(&v37 + 1))
        {
          if (swift_dynamicCast())
          {
            v28 = *MEMORY[0x1E69964B0];
            v29 = sub_1DD63FDA8();

            v30 = (*(v28 + 16))(v28, v29);

            v31 = sub_1DD63FDD8();
            v33 = v32;

            sub_1DD56CE00(&v38, v31, v33);
            goto LABEL_45;
          }
        }

        else
        {
          sub_1DD4E82AC(&v38);
        }

        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v34 = sub_1DD63F9F8();
        __swift_project_value_buffer(v34, qword_1EE16F068);
        v23 = sub_1DD63F9D8();
        v24 = sub_1DD640378();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          v26 = "CNContactProperty email is unexpectedly nil";
          goto LABEL_39;
        }

LABEL_40:

        return;
      }
    }

    if ([v3 value])
    {
      sub_1DD6406F8();
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
    }

    v38 = v36;
    v39 = v37;
    if (*(&v37 + 1))
    {
      sub_1DD3EB444();
      if (swift_dynamicCast())
      {
        v16 = sub_1DD4E8314(v35);
        if (v17)
        {
          sub_1DD56CE00(&v38, v16, v17);

LABEL_45:

          return;
        }
      }
    }

    else
    {
      sub_1DD4E82AC(&v38);
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v27 = sub_1DD63F9F8();
    __swift_project_value_buffer(v27, qword_1EE16F068);
    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640378();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = "CNContactProperty phone number is unexpectedly nil";
LABEL_39:
      _os_log_impl(&dword_1DD38D000, v23, v24, v26, v25, 2u);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD63F9F8();
  __swift_project_value_buffer(v12, qword_1EE16F068);
  v13 = sub_1DD63F9D8();
  v14 = sub_1DD640378();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DD38D000, v13, v14, "Contact Property value cannot be nil", v15, 2u);
    MEMORY[0x1E12B3DA0](v15, -1, -1);
  }
}

uint64_t sub_1DD4E82AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4E8314(void *a1)
{
  v1 = [a1 unformattedInternationalStringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD4E8388(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Contact();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v69 = (&v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v67 = (&v63 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = (&v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  i = &v63 - v17;
  if (qword_1EE165FB0 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1EE16F068);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640368();
    v22 = os_log_type_enabled(v20, v21);
    v70 = i;
    if (v22)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "adding isMeCard signal", v23, 2u);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    v24 = *a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1DD586A30(v24);
      v26 = v62;
    }

    v27 = 0;
    v28 = *(v24 + 16);
    v64 = v24 + 32;
    v65 = v28;
    v29 = v26 + 32;
    *a1 = v26;
    v71 = v16;
    v63 = v24;
    v75 = v26;
LABEL_7:
    if (v27 == v65)
    {
    }

    if (v27 >= *(v24 + 16))
    {
      goto LABEL_42;
    }

    v30 = *(v64 + 8 * v27);
    v74 = v27;
    v66 = v27 + 1;
    v72 = *(v30 + 16);
    *a1 = v26;
    v68 = v30;

    for (i = 0; ; i = v73)
    {
      do
      {
        if (i == v72)
        {
          v31 = 1;
          i = v72;
          v32 = v70;
          v16 = v71;
        }

        else
        {
          v32 = v70;
          v16 = v71;
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_40;
          }

          if (i >= *(v68 + 16))
          {
            goto LABEL_41;
          }

          v33 = a2;
          v34 = a3;
          v35 = a1;
          v36 = i;
          v37 = v68;
          v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
          v39 = (v36 + 1);
          v40 = v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36;
          v41 = *(v9 + 48);
          v42 = v67;
          *v67 = v36;
          a1 = v35;
          a3 = v34;
          a2 = v33;
          sub_1DD3C68F8(v40, v42 + v41);
          sub_1DD4E89B0(v42, v16, &qword_1ECCDC238, &unk_1DD654E40);
          v31 = 0;
          i = v39;
        }

        __swift_storeEnumTagSinglePayload(v16, v31, 1, v9);
        sub_1DD4E89B0(v16, v32, &qword_1ECCDC240, &qword_1DD645AA0);
        if (__swift_getEnumTagSinglePayload(v32, 1, v9) == 1)
        {

          v27 = v66;
          v24 = v63;
          v26 = v75;
          goto LABEL_7;
        }

        v76 = *v32;
        v43 = *(v9 + 48);
        v16 = v69;
        sub_1DD415D68(v32 + v43, v69);
        sub_1DD3C6968(v32 + v43);
        v45 = *v16;
        v44 = v16[1];

        sub_1DD415B40(v16);
        if (v45 == a2 && v44 == a3)
        {

          break;
        }

        v47 = sub_1DD640CD8();
      }

      while ((v47 & 1) == 0);
      if (v74 >= *(v75 + 16))
      {
        break;
      }

      v48 = v74;
      v49 = *(v29 + 8 * v74);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v48) = v49;
      if ((v50 & 1) == 0)
      {
        sub_1DD586A18(v49);
        v49 = v59;
        *(v29 + 8 * v74) = v59;
      }

      if ((v76 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      if (v76 >= *(v49 + 16))
      {
        goto LABEL_37;
      }

      v73 = i;
      i = v9;
      v16 = a1;
      v9 = a2;
      a2 = a3;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      a1 = ((*(*(v51 - 8) + 80) + 32) & ~*(*(v51 - 8) + 80));
      a3 = *(*(v51 - 8) + 72) * v76;
      *(a1 + v49 + a3 + 16) = 1;
      v52 = v29;
      v54 = v74;
      v53 = v75;
      *(v52 + 8 * v74) = v49;
      if (v54 >= *(v53 + 16))
      {
        goto LABEL_38;
      }

      v55 = v51;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 8 * v54) = v49;
      v29 = v52;
      if ((v56 & 1) == 0)
      {
        sub_1DD586A18(v49);
        v49 = v60;
        *(v52 + 8 * v74) = v60;
      }

      if (v76 >= *(v49 + 16))
      {
        goto LABEL_39;
      }

      v57 = a1 + v49 + *(v55 + 36) + a3;
      v57[*(type metadata accessor for ContactResolver.SignalSet(0) + 136)] = 1;
      v58 = v75;
      *(v52 + 8 * v74) = v49;
      a1 = v16;
      *v16 = v58;
      a3 = a2;
      a2 = v9;
      v9 = i;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }
}

uint64_t sub_1DD4E89B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DD4E8A18(uint64_t *a1)
{
  v2 = *(sub_1DD63D078() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC724(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1DD4EB080(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1DD4E8AC0(uint64_t *a1)
{
  v2 = type metadata accessor for Signpost();
  v3 = OUTLINED_FUNCTION_7(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = qword_1EE16F0C0;
    v9 = &v7[v2[5]];
    *v9 = "ContactResolver.IsRecentSignalProvider";
    *(v9 + 1) = 38;
    v9[16] = 2;
    v10 = v8;
    sub_1DD63F9B8();
    *&v7[v2[6]] = v10;
    v2 = v10;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DD643F90;
    v12 = sub_1DD6408F8();
    v14 = v13;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DD392BD8();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    OUTLINED_FUNCTION_22_19();
    sub_1DD63F998();

    v15 = *a1;
    v16 = *(*a1 + 16);
    if (!v16)
    {
      break;
    }

    v17 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD586A30(v15);
      v15 = v21;
    }

    v18 = 0;
    v19 = (v15 + 32);
    while (v18 < *(v15 + 16))
    {
      ++v18;
      sub_1DD4E8F14(v19++);
      if (v16 == v18)
      {
        *a1 = v15;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

LABEL_9:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v7);
}

uint64_t sub_1DD4E8CFC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DD63D078() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DD4E8DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDB0, &qword_1DD654E58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6444F0;
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  v3 = swift_getKeyPath();
  *(v0 + 32) = KeyPath;
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v4 = swift_getKeyPath();
  v5 = swift_getKeyPath();
  v6 = swift_getKeyPath();
  *(v0 + 72) = v4;
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  *(v0 + 96) = 0xD000000000000012;
  *(v0 + 104) = 0x80000001DD66ED00;
  v7 = swift_getKeyPath();
  v8 = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  *(v0 + 128) = result;
  *(v0 + 136) = 0xD000000000000011;
  *(v0 + 144) = 0x80000001DD66ED20;
  off_1EE161848 = v0;
  return result;
}

void sub_1DD4E8F14(uint64_t **a1)
{
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  v2 = OUTLINED_FUNCTION_7(v282);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_25(&v266 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v266 - v11;
  v318 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v13 = OUTLINED_FUNCTION_7(v318);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v314 = v17;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v18 = OUTLINED_FUNCTION_0(v286);
  v283 = v19;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = (&v266 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_3();
  v324 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  v28 = OUTLINED_FUNCTION_7(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25(&v266 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v33 = OUTLINED_FUNCTION_3(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_16_3();
  v322 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v40 = OUTLINED_FUNCTION_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  v48 = OUTLINED_FUNCTION_3(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_0();
  v323 = v52;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_16_3();
  v316 = v55;
  v56 = sub_1DD63D078();
  v57 = OUTLINED_FUNCTION_0(v56);
  v321 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_18_0();
  v313 = v65;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  v70 = MEMORY[0x1EEE9AC00](v69);
  v72 = &v266 - v71;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v78);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v80 = OUTLINED_FUNCTION_0(v79);
  v310 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_18_0();
  v87 = v86;
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_25(v89);
  v303 = a1;
  v92 = *a1;
  if (!v92[2])
  {
    return;
  }

  if (qword_1EE161840 != -1)
  {
    goto LABEL_117;
  }

  while (1)
  {
    v93 = off_1EE161848;
    v94 = *(off_1EE161848 + 2);
    v95 = &unk_1DD654000;
    v278 = v12;
    v267 = v24;
    v291 = v27;
    v320 = v90;
    v272 = v94;
    if (!v94)
    {
      break;
    }

    v96 = 0;
    v315 = 0;
    v271 = off_1EE161848 + 32;
    v306 = v321 + 32;
    v298 = (v321 + 16);
    v311 = (v321 + 8);
    v24 = MEMORY[0x1E69E7CD0];
    *&v91 = 136315394;
    v284 = v91;
    v317 = v72;
    *&v300 = v87;
    v269 = off_1EE161848;
    while (1)
    {
      if (v96 >= v93[2])
      {
        goto LABEL_112;
      }

      v279 = v96;
      v97 = &v271[40 * v96];
      v87 = *v97;
      v72 = *(v97 + 1);
      v98 = *(v97 + 2);
      v287 = *(v97 + 3);
      v99 = *(v97 + 4);
      v326[0] = v24;
      v12 = v92[2];
      v319 = v87;
      v289 = v72;
      v312 = v98;
      v292 = v99;
      v290 = v92;
      if (v12)
      {
        v100 = *(v90 + 36);
        v101 = v310;
        v102 = v92 + ((*(v310 + 80) + 32) & ~*(v310 + 80));

        v103 = *(v101 + 72);
        v104 = v316;
        v105 = v299;
        do
        {
          sub_1DD4DDC08(v102, v105, &qword_1ECCDBBE8, &qword_1DD644470);
          swift_getAtKeyPath();
          v27 = sub_1DD63F148();
          OUTLINED_FUNCTION_11_5(v104);
          if (v106)
          {
            sub_1DD390754(v105, &qword_1ECCDBBE8, &qword_1DD644470);
            v112 = v104;
            v113 = &qword_1ECCDCB80;
            v114 = &qword_1DD64A0E0;
          }

          else
          {
            v107 = v295;
            sub_1DD63F108();
            OUTLINED_FUNCTION_72(v27);
            (*(v108 + 8))(v316, v27);
            v109 = v294;
            (*v306)(v294, v107, v56);
            (*v298)(v297, v109, v56);
            v110 = v296;
            sub_1DD56DD54();
            v27 = v311;
            v111 = *v311;
            v105 = v299;
            (*v311)(v110, v56);
            v111(v109, v56);
            v104 = v316;
            v112 = v105;
            v113 = &qword_1ECCDBBE8;
            v114 = &qword_1DD644470;
          }

          sub_1DD390754(v112, v113, v114);
          v102 += v103;
          --v12;
        }

        while (v12);
        v24 = v326[0];
        OUTLINED_FUNCTION_14_30();
        v87 = v319;
        v72 = v289;
      }

      else
      {
      }

      if (v24[2])
      {
        break;
      }

      v90 = v320;
      v92 = v290;
LABEL_46:
      v96 = v279 + 1;
      v95 = &unk_1DD654000;
      v93 = v269;
      v24 = MEMORY[0x1E69E7CD0];
      if (v279 + 1 == v272)
      {
        goto LABEL_49;
      }
    }

    v326[0] = sub_1DD598638(v24);
    v72 = v315;
    sub_1DD4E8A18(v326);
    v92 = v290;
    v315 = v72;
    if (v72)
    {
      goto LABEL_122;
    }

    if (!*(v326[0] + 16))
    {
      goto LABEL_116;
    }

    OUTLINED_FUNCTION_18_3();
    v116 = *(v115 + 16);
    v309 = v117;
    v116(v277, v117 + v118, v56);
    sub_1DD63CF88();
    sub_1DD63CFD8();
    v326[0] = v92;
    v326[1] = 0;
    v326[2] = 0;

    v119 = v317;
    v72 = v300;
    while (1)
    {
      sub_1DD583860(v308);
      OUTLINED_FUNCTION_84(&v328);
      sub_1DD4DDCBC(v120, v121, &qword_1ECCDC240, &qword_1DD645AA0);
      OUTLINED_FUNCTION_11_5(v326);
      if (v106)
      {

        v12 = *v311;
        v159 = OUTLINED_FUNCTION_19_23(v327);
        (v12)(v159);
        v160 = OUTLINED_FUNCTION_19_23(&v302);
        (v12)(v160);
        v90 = v320;
        goto LABEL_46;
      }

      v12 = v326[0];
      v122 = v27;
      sub_1DD4DDCBC(v326 + *(v27 + 12), v72, &qword_1ECCDBBE8, &qword_1DD644470);
      v123 = &v72[*(v320 + 36)];
      v124 = v301;
      swift_getAtKeyPath();
      v125 = sub_1DD63F148();
      OUTLINED_FUNCTION_11_5(v124);
      if (v106)
      {
        sub_1DD390754(v124, &qword_1ECCDCB80, &qword_1DD64A0E0);
        v131 = 1;
        v128 = v322;
        v130 = v119;
      }

      else
      {
        v126 = v322;
        v127 = v124;
        sub_1DD63F108();
        v128 = v126;
        OUTLINED_FUNCTION_72(v125);
        v72 = v300;
        v130 = v317;
        (*(v129 + 8))(v127, v125);
        v131 = 0;
      }

      __swift_storeEnumTagSinglePayload(v128, v131, 1, v56);
      v132 = v302;
      v27 = &qword_1ECCDEBC0;
      sub_1DD4DDC08(v128, v302, &qword_1ECCDEBC0, &qword_1DD6445A0);
      if (__swift_getEnumTagSinglePayload(v132, 1, v56) == 1)
      {
        v133 = v72;
        v134 = v92;
        v135 = sub_1DD390754(v132, &qword_1ECCDEBC0, &qword_1DD6445A0);
LABEL_26:
        v27 = v122;
        goto LABEL_27;
      }

      (*v306)(v130, v132, v56);
      OUTLINED_FUNCTION_2_60();
      sub_1DD4A0A78(&qword_1EE166638);
      v24 = v56;
      if (sub_1DD63FD68())
      {
        v133 = v72;
        v134 = v92;
        OUTLINED_FUNCTION_13_29();
        v135 = v136();
        v128 = v322;
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v319;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18(v92);
        v92 = v158;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_110;
      }

      if (v12 >= v92[2])
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_3_51(&v329);
      OUTLINED_FUNCTION_23_21(v144);
      LOBYTE(v325) = 1;
      v27 = v289;
      swift_setAtWritableKeyPath();
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v134 = v92;
      v145 = sub_1DD63F9F8();
      __swift_project_value_buffer(v145, qword_1EE16F068);
      sub_1DD4DDC08(v72, v293, &qword_1ECCDBBE8, &qword_1DD644470);

      v146 = v292;

      v147 = sub_1DD63F9D8();
      v148 = sub_1DD640368();

      LODWORD(v290) = v148;
      v149 = v147;
      if (os_log_type_enabled(v147, v148))
      {
        v150 = swift_slowAlloc();
        v325 = swift_slowAlloc();
        *v150 = v284;
        v151 = v293;
        v27 = *v293;
        v152 = v293[1];

        sub_1DD390754(v151, &qword_1ECCDBBE8, &qword_1DD644470);
        v153 = sub_1DD39565C(v27, v152, &v325);

        *(v150 + 4) = v153;
        *(v150 + 12) = 2082;

        v154 = sub_1DD39565C(v287, v146, &v325);

        *(v150 + 14) = v154;
        _os_log_impl(&dword_1DD38D000, v149, v290, "contact %s is recent %{public}s", v150, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_14_30();
        OUTLINED_FUNCTION_0_1();

        OUTLINED_FUNCTION_13_29();
        v135 = v155(v317, v56);
        v128 = v322;
        v133 = v300;
      }

      else
      {

        sub_1DD390754(v293, &qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_13_29();
        v156(v130, v56);
        v128 = v322;
        v133 = v300;
        OUTLINED_FUNCTION_14_30();
      }

LABEL_27:
      v137 = v309;
      MEMORY[0x1EEE9AC00](v135);
      *(&v266 - 2) = v128;
      v138 = v315;
      v139 = sub_1DD4E8CFC(sub_1DD4EC674, (&v266 - 4), v137);
      v315 = v138;
      v24 = (v140 & 1) != 0 ? *(v137 + 16) : v139;
      v92 = v134;
      v141 = swift_isUniquelyReferenced_nonNull_native();
      v119 = v317;
      v87 = &qword_1ECCDBBE8;
      v72 = v133;
      if ((v141 & 1) == 0)
      {
        sub_1DD586A18(v92);
        v92 = v157;
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v12 >= v92[2])
      {
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_3_51(&v329);
      OUTLINED_FUNCTION_23_21(v142);
      v325 = v24;
      swift_setAtWritableKeyPath();
      sub_1DD390754(v133, &qword_1ECCDBBE8, &qword_1DD644470);
      *v303 = v92;
      sub_1DD390754(v322, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v87 = v319;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
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
    v265 = v90;
    swift_once();
    v90 = v265;
  }

  v315 = 0;
LABEL_49:
  v307 = v288 + 272;
  v12 = v95;
  v322 = (v321 + 32);
  v311 = (v321 + 8);
  v312 = v321 + 16;

  v161 = 0;
  v162 = *(v12 + 3640);
  *&v163 = 136315138;
  v300 = v163;
  v290 = v92;
  v301 = v92;
  v87 = v305;
  v319 = v56;
  while (2)
  {
    OUTLINED_FUNCTION_20_23();
    while (1)
    {
      v164 = v290[2];
      if (v161 == v164)
      {
        v165 = 1;
      }

      else
      {
        if (v161 >= v164)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_3_51(&v329);
        v168 = v290 + v166 + *(v167 + 72) * v161;
        v169 = *(v27 + 12);
        v24 = v275;
        *v275 = v161;
        sub_1DD4DDC08(v168, v24 + v169, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD4DDCBC(v24, v72, &qword_1ECCDC238, &unk_1DD654E40);
        v165 = 0;
        ++v161;
      }

      __swift_storeEnumTagSinglePayload(v72, v165, 1, v27);
      sub_1DD4DDCBC(v72, v92, &qword_1ECCDC240, &qword_1DD645AA0);
      OUTLINED_FUNCTION_11_5(v92);
      if (v106)
      {

        return;
      }

      v309 = v161;
      v306 = *v92;
      sub_1DD4DDCBC(v92 + *(v27 + 12), v288, &qword_1ECCDBBE8, &qword_1DD644470);
      v72 = *(*(v307 + *(v320 + 36)) + 16);
      v308 = *(v307 + *(v320 + 36));
      if (v72)
      {
        v317 = *(v286 + 36);
        OUTLINED_FUNCTION_3_51(&v312);
        v92 = (v171 + v170);
        v316 = *(v172 + 72);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          v173 = v324;
          sub_1DD4DDC08(v92, v324, &qword_1ECCDBBD8, &unk_1DD645A90);
          v174 = &v317[v173];
          v175 = v314;
          sub_1DD4EC610(v174, v314);
          v176 = v175 + *(v318 + 36);
          v24 = v323;
          sub_1DD4DDCBC(v176, v323, &qword_1ECCDCB80, &qword_1DD64A0E0);
          v177 = sub_1DD63F148();
          if (__swift_getEnumTagSinglePayload(v24, 1, v177) == 1)
          {
            sub_1DD390754(v324, &qword_1ECCDBBD8, &unk_1DD645A90);
            sub_1DD390754(v24, &qword_1ECCDCB80, &qword_1DD64A0E0);
            v56 = v319;
          }

          else
          {
            v178 = v304;
            sub_1DD63F108();
            sub_1DD390754(v324, &qword_1ECCDBBD8, &unk_1DD645A90);
            OUTLINED_FUNCTION_72(v177);
            (*(v179 + 8))(v323, v177);
            v180 = *v322;
            v56 = v319;
            (*v322)(v313, v178, v319);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v184 = v27[2];
              sub_1DD3BF700();
              v27 = v185;
            }

            v181 = v27[2];
            v24 = (v181 + 1);
            v87 = v305;
            if (v181 >= v27[3] >> 1)
            {
              sub_1DD3BF700();
              v27 = v186;
            }

            v27[2] = v24;
            OUTLINED_FUNCTION_18_3();
            v180(v27 + v182 + *(v183 + 72) * v181, v313, v56);
          }

          v92 = (v92 + v316);
          --v72;
        }

        while (v72);
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      v187 = v27[2];
      if (v187)
      {
        OUTLINED_FUNCTION_18_3();
        v92 = (v27 + v188);
        v72 = *(v189 + 16);
        v190 = v276;
        (v72)(v276, v27 + v188, v56);
        for (i = 1; v187 != i; ++i)
        {
          v192 = v321;
          (v72)(v87, v92 + *(v321 + 72) * i, v56);
          OUTLINED_FUNCTION_2_60();
          sub_1DD4A0A78(&qword_1EE166638);
          v24 = v56;
          v193 = sub_1DD63FD68();
          v194 = *(v192 + 8);
          if (v193)
          {
            v194(v190, v56);
            (*v322)(v190, v87, v56);
          }

          else
          {
            v194(v87, v56);
          }
        }

        v12 = v281;
        (*v322)(v281, v190, v56);
        v195 = v12;
        v196 = 0;
      }

      else
      {
        v12 = v281;
        v195 = v281;
        v196 = 1;
      }

      __swift_storeEnumTagSinglePayload(v195, v196, 1, v56);

      OUTLINED_FUNCTION_14_30();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v56);
      v198 = v282;
      if (EnumTagSinglePayload != 1)
      {
        break;
      }

      sub_1DD390754(v288, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v12, &qword_1ECCDEBC0, &qword_1DD6445A0);
      OUTLINED_FUNCTION_20_23();
      v161 = v309;
    }

    v199 = *v322;
    v200 = OUTLINED_FUNCTION_1_8();
    v302 = v201;
    v201(v200);
    v24 = v268;
    sub_1DD63CF88();
    sub_1DD63CFD8();
    v202 = 0;
    v203 = v308;
    v72 = *(v308 + 16);
    v92 = &qword_1ECCDBBD8;
    v27 = &unk_1DD645A90;
    v317 = v72;
LABEL_80:
    if (v202 == v72)
    {
      v204 = 1;
      v205 = v72;
      v24 = v280;
    }

    else
    {
      if ((v202 & 0x8000000000000000) != 0)
      {
        goto LABEL_114;
      }

      if (v202 >= *(v203 + 16))
      {
        goto LABEL_115;
      }

      v205 = (v202 + 1);
      OUTLINED_FUNCTION_3_51(&v312);
      v209 = v207 + v206 + *(v208 + 72) * v202;
      v210 = *(v198 + 48);
      v24 = v274;
      *v274 = v202;
      OUTLINED_FUNCTION_22_19();
      sub_1DD4DDC08(v211, v212, v213, v214);
      OUTLINED_FUNCTION_84(&v307);
      sub_1DD4DDCBC(v215, v216, &qword_1ECCDDD68, &unk_1DD65F510);
      v204 = 0;
    }

    __swift_storeEnumTagSinglePayload(v24, v204, 1, v198);
    OUTLINED_FUNCTION_84(&v305);
    sub_1DD4DDCBC(v217, v218, &qword_1ECCDDD70, &qword_1DD654CC0);
    if (__swift_getEnumTagSinglePayload(v24, 1, v198) == 1)
    {
      v24 = v311;
      v12 = *v311;
      v263 = OUTLINED_FUNCTION_19_23(&v300 + 8);
      (v12)(v263);
      v264 = OUTLINED_FUNCTION_19_23(&v293);
      (v12)(v264);
      sub_1DD390754(v288, &qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_14_30();
      v161 = v309;
      continue;
    }

    break;
  }

  v316 = *v24;
  v219 = v24 + *(v198 + 48);
  v220 = v285;
  OUTLINED_FUNCTION_22_19();
  sub_1DD4DDCBC(v221, v222, v223, v224);
  v225 = v220 + *(v286 + 36);
  OUTLINED_FUNCTION_84(&v304);
  sub_1DD4EC610(v226, v227);
  v228 = v24 + *(v318 + 36);
  OUTLINED_FUNCTION_84(&v303);
  v12 = &qword_1ECCDCB80;
  sub_1DD4DDCBC(v229, v230, &qword_1ECCDCB80, &qword_1DD64A0E0);
  v231 = v27;
  v232 = v92;
  v233 = sub_1DD63F148();
  if (__swift_getEnumTagSinglePayload(v24, 1, v233) == 1)
  {
    sub_1DD390754(v220, v232, v231);
    v234 = OUTLINED_FUNCTION_1_8();
    sub_1DD390754(v234, v235, &qword_1DD64A0E0);
    v92 = v232;
    v27 = v231;
    v56 = v319;
LABEL_90:
    v203 = v308;
    v72 = v317;
    v202 = v205;
    goto LABEL_80;
  }

  v236 = v270;
  sub_1DD63F108();
  OUTLINED_FUNCTION_72(v233);
  (*(v237 + 8))(v24, v233);
  v238 = v273;
  v56 = v319;
  v302(v273, v236, v319);
  OUTLINED_FUNCTION_2_60();
  sub_1DD4A0A78(&qword_1EE166638);
  v24 = v56;
  if (sub_1DD63FD68())
  {
    OUTLINED_FUNCTION_13_29();
    v239(v238, v56);
    v92 = &qword_1ECCDBBD8;
    v27 = &unk_1DD645A90;
    sub_1DD390754(v285, &qword_1ECCDBBD8, &unk_1DD645A90);
    goto LABEL_90;
  }

  v240 = v301;
  v27 = &unk_1DD645A90;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD586A18(v240);
    v240 = v261;
  }

  v92 = &qword_1ECCDBBD8;
  v202 = v205;
  if ((v306 & 0x8000000000000000) == 0)
  {
    if (v306 >= *(v240 + 16))
    {
      goto LABEL_119;
    }

    v241 = (*(v310 + 80) + 32) & ~*(v310 + 80);
    v301 = v240;
    v242 = v240 + v241 + *(v310 + 72) * v306 + *(v320 + 36);
    v243 = *(v242 + 272);
    v244 = swift_isUniquelyReferenced_nonNull_native();
    *(v242 + 272) = v243;
    if ((v244 & 1) == 0)
    {
      sub_1DD586A48(v243);
      v243 = v262;
      *(v242 + 272) = v262;
    }

    if ((v316 & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    if (v316 >= *(v243 + 16))
    {
      goto LABEL_121;
    }

    OUTLINED_FUNCTION_3_51(&v312);
    *(v243 + v245 + *(v246 + 72) * v247 + *(v286 + 36) + *(v318 + 40)) = 1;
    *(v242 + 272) = v243;
    *v303 = v301;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v248 = sub_1DD63F9F8();
    __swift_project_value_buffer(v248, qword_1EE16F068);
    v249 = v285;
    v12 = v267;
    OUTLINED_FUNCTION_22_19();
    sub_1DD4DDC08(v250, v251, v252, v253);
    v254 = sub_1DD63F9D8();
    v24 = sub_1DD640368();
    if (os_log_type_enabled(v254, v24))
    {
      v255 = swift_slowAlloc();
      v316 = swift_slowAlloc();
      v326[0] = v316;
      *v255 = v300;
      v256 = *(v12 + 64);
      v299 = *(v12 + 56);

      sub_1DD390754(v12, &qword_1ECCDBBD8, &unk_1DD645A90);
      v12 = v24;
      v257 = sub_1DD39565C(v299, v256, v326);
      v92 = &qword_1ECCDBBD8;

      *(v255 + 4) = v257;
      _os_log_impl(&dword_1DD38D000, v254, v12, "handle %s is recent", v255, 0xCu);
      v24 = v316;
      __swift_destroy_boxed_opaque_existential_1(v316);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();

      OUTLINED_FUNCTION_13_29();
      v258(v273, v56);
      v259 = v285;
    }

    else
    {

      sub_1DD390754(v12, &qword_1ECCDBBD8, &unk_1DD645A90);
      OUTLINED_FUNCTION_13_29();
      v260(v273, v56);
      v259 = v249;
    }

    sub_1DD390754(v259, &qword_1ECCDBBD8, &unk_1DD645A90);
    v203 = v308;
    v72 = v317;
    goto LABEL_80;
  }

  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:

  __break(1u);
}

uint64_t sub_1DD4EACDC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = sub_1DD63D078();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDA8, &unk_1DD65B820);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  (*(v4 + 16))(&v24 - v17, a1, v3);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_1DD4DDC08(v18, v11, &qword_1ECCDEBC0, &qword_1DD6445A0);
  sub_1DD4DDC08(v25, &v11[v19], &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
  {
    sub_1DD4DDC08(v11, v16, &qword_1ECCDEBC0, &qword_1DD6445A0);
    if (__swift_getEnumTagSinglePayload(&v11[v19], 1, v3) != 1)
    {
      v21 = v24;
      (*(v4 + 32))(v24, &v11[v19], v3);
      sub_1DD4A0A78(&qword_1EE166050);
      v20 = sub_1DD63FD98();
      v22 = *(v4 + 8);
      v22(v21, v3);
      sub_1DD390754(v18, &qword_1ECCDEBC0, &qword_1DD6445A0);
      v22(v16, v3);
      sub_1DD390754(v11, &qword_1ECCDEBC0, &qword_1DD6445A0);
      return v20 & 1;
    }

    sub_1DD390754(v18, &qword_1ECCDEBC0, &qword_1DD6445A0);
    (*(v4 + 8))(v16, v3);
    goto LABEL_6;
  }

  sub_1DD390754(v18, &qword_1ECCDEBC0, &qword_1DD6445A0);
  if (__swift_getEnumTagSinglePayload(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_1DD390754(v11, &qword_1ECCDDDA8, &unk_1DD65B820);
    v20 = 0;
    return v20 & 1;
  }

  sub_1DD390754(v11, &qword_1ECCDEBC0, &qword_1DD6445A0);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1DD4EB080(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        sub_1DD63D078();
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DD63D078() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD4EB42C(v8, v9, a1, v4);
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
    return sub_1DD4EB1B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4EB1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DD63D078();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v16;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v42 = *(v15 + 16);
    v43 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v20 = v17 + v18 * (a3 - 1);
    v38 = -v18;
    v39 = (v15 + 32);
    v21 = a1 - a3;
    v40 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v36 = v20;
      v37 = a3;
      v34 = v22;
      v35 = v21;
      do
      {
        v23 = v44;
        v24 = v42;
        v42(v44, v22, v8);
        v25 = v45;
        v24(v45, v20, v8);
        v26 = sub_1DD63CFB8();
        v27 = *v19;
        (*v19)(v25, v8);
        result = v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return result;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v22, v8);
        swift_arrayInitWithTakeFrontToBack();
        result = (v28)(v20, v29, v8);
        v20 += v38;
        v22 += v38;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v37 + 1;
      v20 = v36 + v32;
      v21 = v35 - 1;
      v22 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4EB42C(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v124 = a1;
  v143 = sub_1DD63D078();
  v9 = *(*(v143 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v143);
  v127 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v136 = &v120 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v142 = &v120 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v120 - v17;
  v132 = v16;
  v133 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_143;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_104:
      v134 = v20;
      v114 = v20 + 16;
      v115 = *(v20 + 2);
      while (v115 >= 2)
      {
        if (!*v133)
        {
          goto LABEL_140;
        }

        v116 = v6;
        v117 = &v134[16 * v115];
        v6 = *v117;
        v20 = &v114[2 * v115];
        v118 = *(v20 + 1);
        sub_1DD4EBD9C(*v133 + *(v132 + 72) * *v117, *v133 + *(v132 + 72) * *v20, *v133 + *(v132 + 72) * v118, v5);
        if (v116)
        {
          break;
        }

        if (v118 < v6)
        {
          goto LABEL_128;
        }

        if (v115 - 2 >= *v114)
        {
          goto LABEL_129;
        }

        *v117 = v6;
        *(v117 + 1) = v118;
        v119 = *v114 - v115;
        if (*v114 < v115)
        {
          goto LABEL_130;
        }

        v115 = *v114 - 1;
        memmove(v20, v20 + 16, 16 * v119);
        *v114 = v115;
        v6 = 0;
      }

LABEL_112:

      return;
    }

LABEL_137:
    v20 = sub_1DD4EC2B8(v20);
    goto LABEL_104;
  }

  v121 = a4;
  v19 = 0;
  v139 = (v16 + 8);
  v140 = v16 + 16;
  v138 = (v16 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_32;
    }

    v123 = v6;
    v134 = v20;
    v135 = v18;
    v22 = *v133;
    v23 = *(v16 + 72);
    v5 = v21;
    v24 = *v133 + v23 * v19;
    v25 = *(v16 + 16);
    v26 = v141;
    v131 = v19;
    v27 = v143;
    v25(v141, v24, v143);
    v28 = v142;
    v129 = v25;
    v25(v142, v22 + v23 * v5, v27);
    LODWORD(v130) = sub_1DD63CFB8();
    v29 = *(v132 + 8);
    v29(v28, v27);
    v30 = v27;
    v19 = v131;
    v128 = v29;
    v29(v26, v30);
    v31 = v135;
    v122 = v5;
    v32 = v5 + 2;
    v137 = v23;
    v20 = (v22 + v23 * (v5 + 2));
    while (1)
    {
      v33 = v32;
      v34 = v19 + 1;
      if (v34 >= v31)
      {
        break;
      }

      v35 = v34;
      v36 = v141;
      v37 = v143;
      v38 = v129;
      (v129)(v141, v20, v143);
      v39 = v142;
      v38(v142, v24, v37);
      v40 = sub_1DD63CFB8() & 1;
      v41 = v39;
      v5 = v139;
      v42 = v128;
      (v128)(v41, v37);
      v43 = v36;
      v19 = v35;
      v42(v43, v37);
      v20 += v137;
      v24 += v137;
      v32 = v33 + 1;
      v31 = v135;
      if ((v130 & 1) != v40)
      {
        goto LABEL_9;
      }
    }

    v19 = v31;
LABEL_9:
    v6 = v123;
    if (v130)
    {
      v21 = v122;
      if (v19 < v122)
      {
        goto LABEL_134;
      }

      if (v122 >= v19)
      {
        v16 = v132;
        v20 = v134;
LABEL_32:
        v52 = v143;
        goto LABEL_33;
      }

      v5 = v19;
      v44 = v31 >= v33 ? v33 : v31;
      v45 = v137 * (v44 - 1);
      v46 = v137 * v44;
      v47 = v122 * v137;
      v131 = v19;
      do
      {
        if (v21 != --v5)
        {
          v48 = *v133;
          if (!*v133)
          {
            goto LABEL_141;
          }

          v49 = v143;
          v50 = *v138;
          (*v138)(v127, v48 + v47, v143);
          v51 = v47 < v45 || v48 + v47 >= v48 + v46;
          if (v51)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v47 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50((v48 + v45), v127, v49);
        }

        ++v21;
        v45 -= v137;
        v46 -= v137;
        v47 += v137;
      }

      while (v21 < v5);
      v6 = v123;
      v19 = v131;
      v16 = v132;
    }

    else
    {
      v16 = v132;
    }

    v20 = v134;
    v52 = v143;
    v21 = v122;
LABEL_33:
    v53 = v133[1];
    if (v19 < v53)
    {
      if (__OFSUB__(v19, v21))
      {
        goto LABEL_133;
      }

      if (v19 - v21 < v121)
      {
        break;
      }
    }

LABEL_49:
    if (v19 < v21)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v111 = *(v20 + 2);
      sub_1DD3BEB7C();
      v20 = v112;
    }

    v70 = *(v20 + 2);
    v71 = v70 + 1;
    if (v70 >= *(v20 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v20 = v113;
    }

    *(v20 + 2) = v71;
    v72 = v20 + 32;
    v73 = &v20[16 * v70 + 32];
    *v73 = v21;
    *(v73 + 1) = v19;
    v137 = *v124;
    if (!v137)
    {
      goto LABEL_142;
    }

    if (v70)
    {
      v134 = v20;
      while (1)
      {
        v74 = v71 - 1;
        v75 = &v72[16 * v71 - 16];
        v76 = &v20[16 * v71];
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v77 = *(v20 + 4);
          v78 = *(v20 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_70:
          if (v80)
          {
            goto LABEL_119;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_122;
          }

          v96 = *(v75 + 1);
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_125;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_127;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v71 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v71 < 2)
        {
          goto LABEL_121;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_85:
        if (v95)
        {
          goto LABEL_124;
        }

        v101 = *v75;
        v100 = *(v75 + 1);
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_126;
        }

        if (v102 < v94)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v74 - 1 >= v71)
        {
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
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*v133)
        {
          goto LABEL_139;
        }

        v106 = &v72[16 * v74 - 16];
        v107 = *v106;
        v20 = &v72[16 * v74];
        v108 = *(v20 + 1);
        sub_1DD4EBD9C(*v133 + *(v132 + 72) * *v106, *v133 + *(v132 + 72) * *v20, *v133 + *(v132 + 72) * v108, v137);
        if (v6)
        {
          goto LABEL_112;
        }

        if (v108 < v107)
        {
          goto LABEL_114;
        }

        v5 = 0;
        v6 = v72;
        v109 = *(v134 + 2);
        if (v74 > v109)
        {
          goto LABEL_115;
        }

        *v106 = v107;
        *(v106 + 1) = v108;
        if (v74 >= v109)
        {
          goto LABEL_116;
        }

        v71 = v109 - 1;
        memmove(v20, v20 + 16, 16 * (v109 - 1 - v74));
        v20 = v134;
        *(v134 + 2) = v109 - 1;
        v110 = v109 > 2;
        v72 = v6;
        v6 = 0;
        if (!v110)
        {
          goto LABEL_99;
        }
      }

      v81 = &v72[16 * v71];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_117;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_118;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_120;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_123;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = *(v75 + 1);
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_131;
        }

        if (v79 < v105)
        {
          v74 = v71 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_70;
    }

LABEL_99:
    v16 = v132;
    v18 = v133[1];
    if (v19 >= v18)
    {
      goto LABEL_102;
    }
  }

  v54 = v21 + v121;
  if (__OFADD__(v21, v121))
  {
    goto LABEL_135;
  }

  if (v54 >= v53)
  {
    v54 = v133[1];
  }

  if (v54 < v21)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v19 == v54)
  {
    goto LABEL_49;
  }

  v122 = v21;
  v123 = v6;
  v55 = *v133;
  v56 = *(v16 + 72);
  v137 = *(v16 + 16);
  v57 = v55 + v56 * (v19 - 1);
  v58 = -v56;
  v59 = (v21 - v19);
  v134 = v20;
  v135 = v55;
  v125 = v56;
  v126 = v54;
  v60 = (v55 + v19 * v56);
LABEL_42:
  v130 = v57;
  v131 = v19;
  v128 = v60;
  v129 = v59;
  v61 = v57;
  while (1)
  {
    v62 = v141;
    v63 = v137;
    (v137)(v141, v60, v52);
    v64 = v142;
    v63(v142, v61, v143);
    v65 = sub_1DD63CFB8();
    v5 = v139;
    v66 = *v139;
    v67 = v64;
    v52 = v143;
    (*v139)(v67, v143);
    v66(v62, v52);
    if ((v65 & 1) == 0)
    {
LABEL_47:
      v19 = v131 + 1;
      v57 = v130 + v125;
      v59 = v129 - 1;
      v60 = &v128[v125];
      if (v131 + 1 == v126)
      {
        v19 = v126;
        v21 = v122;
        v6 = v123;
        v20 = v134;
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    if (!v135)
    {
      break;
    }

    v68 = *v138;
    v69 = v136;
    (*v138)(v136, v60, v52);
    swift_arrayInitWithTakeFrontToBack();
    v68(v61, v69, v52);
    v61 += v58;
    v60 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_47;
    }
  }

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
}

uint64_t sub_1DD4EBD9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v63 = a4;
  v62 = sub_1DD63D078();
  v7 = *(*(v62 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v62);
  v60 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v18 = (a2 - a1) / v14;
  v66 = a1;
  v65 = v63;
  v57 = (v11 + 8);
  v58 = (v11 + 16);
  v19 = v16 / v14;
  if (v18 >= v16 / v14)
  {
    v33 = v63;
    sub_1DD3C1C80(a2, v16 / v14, v63);
    v34 = v33 + v19 * v14;
    v35 = -v14;
    v36 = v34;
    v53 = -v14;
    v54 = a1;
LABEL_36:
    v37 = v36;
    v55 = a2;
    v56 = a2 + v35;
    v38 = a3;
    v51 = v36;
    while (1)
    {
      if (v34 <= v63)
      {
        v66 = a2;
        v64 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v61 = v38 + v35;
      v39 = v34 + v35;
      v40 = v59;
      v41 = *v58;
      v42 = v34;
      v43 = v62;
      (*v58)(v59, v39, v62);
      v44 = v60;
      v41(v60, v56, v43);
      LOBYTE(v41) = sub_1DD63CFB8();
      v45 = *v57;
      (*v57)(v44, v43);
      v45(v40, v43);
      if (v41)
      {
        v34 = v42;
        a3 = v61;
        if (v38 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v52;
          v35 = v53;
          a1 = v54;
        }

        else
        {
          v49 = v52;
          v35 = v53;
          v36 = v52;
          v15 = v38 == v55;
          v50 = v56;
          a2 = v56;
          a1 = v54;
          if (!v15)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v50;
            v36 = v49;
          }
        }

        goto LABEL_36;
      }

      v46 = v61;
      if (v38 < v42 || v61 >= v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v46;
        v34 = v39;
        v37 = v39;
        a1 = v54;
        a2 = v55;
        v35 = v53;
      }

      else
      {
        v37 = v39;
        v15 = v42 == v38;
        v38 = v61;
        v34 = v39;
        a1 = v54;
        a2 = v55;
        v35 = v53;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v46;
          v34 = v39;
          v37 = v39;
        }
      }
    }

    v66 = a2;
    v64 = v51;
  }

  else
  {
    v20 = v63;
    sub_1DD3C1C80(a1, (a2 - a1) / v14, v63);
    v56 = v20 + v18 * v14;
    v64 = v56;
    v61 = a3;
    while (v63 < v56 && a2 < a3)
    {
      v22 = a1;
      v23 = v59;
      v24 = *v58;
      v25 = v62;
      (*v58)(v59, a2, v62);
      v26 = v60;
      v24(v60, v63, v25);
      LOBYTE(v24) = sub_1DD63CFB8();
      v27 = a2;
      v28 = *v57;
      (*v57)(v26, v25);
      v28(v23, v25);
      if (v24)
      {
        a2 = v27 + v14;
        v29 = v22;
        if (v22 < v27 || v22 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v61;
        }

        else
        {
          a3 = v61;
          if (v22 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v31 = v63 + v14;
        v29 = v22;
        if (v22 < v63 || v22 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v27;
          a3 = v61;
        }

        else
        {
          a2 = v27;
          a3 = v61;
          if (v22 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v31;
        v63 = v31;
      }

      a1 = v29 + v14;
      v66 = a1;
    }
  }

LABEL_58:
  sub_1DD4EC41C(&v66, &v65, &v64, MEMORY[0x1E6969530]);
  return 1;
}

void sub_1DD4EC324(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_7(v8);
  v10 = *(v9 + 72);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_18_25();
  v13 = !v13 || v5 >= v12;
  if (v13)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1DD4EC41C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  OUTLINED_FUNCTION_7(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_18_25();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_1_8();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1DD4EC4E4(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1DD4EC510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC88, &qword_1DD654E50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DD4EC610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IsRecentSignalProvider()
{
  result = qword_1EE1650F0;
  if (!qword_1EE1650F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4EC8AC()
{
  result = sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DD4EC960()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF68, &unk_1DD645280);
  v0 = sub_1DD63D2B8();
  OUTLINED_FUNCTION_0(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD652040;
  v7 = v6 + v5;
  v8 = *(v2 + 104);
  v8(v7, *MEMORY[0x1E6969AB8], v0);
  v8(v7 + v4, *MEMORY[0x1E6969AC0], v0);
  v8(v7 + 2 * v4, *MEMORY[0x1E6969A68], v0);
  v8(v7 + 3 * v4, *MEMORY[0x1E6969A78], v0);
  v8(v7 + 4 * v4, *MEMORY[0x1E6969A48], v0);

  sub_1DD56BDEC();
}

uint64_t sub_1DD4ECAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v90 = a2;
  v4 = sub_1DD63D2B8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v78 = v6;
  v79 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v76 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2_1();
  v77 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = (&v73 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v81 = &v73 - v21;
  v22 = sub_1DD63CBB8();
  v23 = OUTLINED_FUNCTION_0(v22);
  v84 = v24;
  v85 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v82 = sub_1DD63D078();
  v30 = OUTLINED_FUNCTION_0(v82);
  v75 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  v73 = v34;
  MEMORY[0x1EEE9AC00](v35);
  v87 = &v73 - v36;
  v37 = sub_1DD63D188();
  v38 = OUTLINED_FUNCTION_0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v45 = v44 - v43;
  v46 = sub_1DD63D2D8();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2();
  v54 = v53 - v52;
  v55 = (19 * (a1 % 19) + 15) % 30;
  v80 = (((4 * (a1 % 7) + 2 * (a1 % 4) - v55 + 34) % 7 + v55 + 114) % 0x1Fu + 1);
  (*(v40 + 104))(v45, *MEMORY[0x1E6969868], v37);
  sub_1DD63D198();
  (*(v40 + 8))(v45, v37);
  v88 = v49;
  v56 = v81;
  (*(v49 + 16))(v81, v54, v46);
  v89 = v46;
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v46);
  v57 = sub_1DD63D328();
  v58 = v83;
  (*(*(v57 - 8) + 16))(v83, v90, v57);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v57);
  v59 = v82;
  sub_1DD63CB68();
  v60 = v86;
  sub_1DD63CA68();
  (*(v84 + 8))(v29, v85);
  if (__swift_getEnumTagSinglePayload(v60, 1, v59) == 1)
  {
    sub_1DD4AF0C8(v60);
    sub_1DD4ED2C4();
    swift_allocError();
    *v61 = 0;
    *(v61 + 8) = 1;
    swift_willThrow();
    return (*(v88 + 8))(v54, v89);
  }

  v62 = v75;
  v86 = *(v75 + 32);
  v86(v87, v60, v59);
  v63 = v54;
  v65 = v78;
  v64 = v79;
  v66 = v76;
  (*(v78 + 104))(v76, *MEMORY[0x1E6969A48], v79);
  v67 = v77;
  sub_1DD63D268();
  (*(v65 + 8))(v66, v64);
  if (__swift_getEnumTagSinglePayload(v67, 1, v59) == 1)
  {
    sub_1DD4AF0C8(v67);
    sub_1DD4ED2C4();
    swift_allocError();
    *v68 = 1;
    *(v68 + 8) = 1;
    swift_willThrow();
    (*(v62 + 8))(v87, v59);
    v54 = v63;
    return (*(v88 + 8))(v54, v89);
  }

  v70 = v73;
  v86(v73, v67, v59);
  sub_1DD4EC960();
  sub_1DD3D856C(v71, v74);

  v72 = *(v62 + 8);
  v72(v70, v59);
  v72(v87, v59);
  return (*(v88 + 8))(v63, v89);
}

unint64_t sub_1DD4ED2C4()
{
  result = qword_1ECCDDDB8;
  if (!qword_1ECCDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JulianEasterError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for JulianEasterError(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD4ED368(uint64_t a1)
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

uint64_t sub_1DD4ED384(uint64_t result, int a2)
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

__n128 Landmark.init(venue:airport:theater:business:poi:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __n128 *a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a3 + 16);
  v9 = *(a6 + 16);
  v10 = a7[1].n128_u8[0];
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = *a3;
  *(a8 + 32) = v8;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = *a6;
  *(a8 + 72) = v9;
  result = *a7;
  *(a8 + 80) = *a7;
  *(a8 + 96) = v10;
  return result;
}

uint64_t Landmark.venue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Landmark.airport.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return OUTLINED_FUNCTION_2_3(*(v1 + 24), a1);
}

uint64_t Landmark.theater.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t Landmark.business.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 72);
  return OUTLINED_FUNCTION_2_3(*(v1 + 64), a1);
}

uint64_t Landmark.poi.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t static Landmark.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 96);
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v19 = *(a2 + 40);
  v18 = *(a2 + 48);
  v21 = *(a2 + 56);
  v20 = *(a2 + 64);
  v22 = *(a2 + 80);
  v23 = *(a2 + 88);
  if (v3)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v53 = *(a1 + 40);
      v55 = *(a2 + 48);
      v48 = *(a1 + 96);
      v49 = *(a2 + 96);
      v44 = *(a1 + 64);
      v46 = *(a1 + 80);
      v43 = *(a2 + 88);
      v50 = *(a1 + 88);
      v51 = *(a2 + 40);
      v25 = *(a2 + 64);
      v57 = *(a1 + 56);
      v42 = *(a2 + 72);
      v26 = *(a2 + 56);
      v41 = *(a1 + 48);
      v27 = sub_1DD640CD8();
      v19 = v51;
      v7 = v53;
      v18 = v55;
      v9 = v57;
      v8 = v41;
      v21 = v26;
      v20 = v25;
      v10 = v44;
      v12 = v46;
      if ((v27 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v14)
  {
    goto LABEL_17;
  }

  if (!v5)
  {
    if (!v16)
    {
      v52 = v19;
      v54 = v7;
      v56 = v18;
      v58 = v9;
      v28 = v8;
      v45 = v21;
      v47 = v20;
      OUTLINED_FUNCTION_4_48();

      goto LABEL_20;
    }

LABEL_15:

LABEL_16:

    goto LABEL_17;
  }

  v62 = v4;
  v63 = v5;
  v64 = v6;
  if (!v16)
  {
    goto LABEL_15;
  }

  v52 = v19;
  v54 = v7;
  v56 = v18;
  v58 = v9;
  v28 = v8;
  v45 = v21;
  v47 = v20;
  OUTLINED_FUNCTION_4_48();
  v59 = v15;
  v60 = v16;
  v61 = v17 & 0x1FF;
  swift_bridgeObjectRetain_n();

  v29 = static AirportLandmark.== infix(_:_:)(&v62, &v59);

  if (v29)
  {
LABEL_20:
    v32 = v4;
    v33 = v45;
    if (v28)
    {
      v34 = v47;
      v35 = v58;
      v36 = v48;
      if (!v56)
      {
        goto LABEL_17;
      }

      if (v54 != v52 || v28 != v56)
      {
        v38 = v32;
        v39 = sub_1DD640CD8();
        v33 = v45;
        v32 = v38;
        v36 = v48;
        v34 = v47;
        if ((v39 & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v34 = v47;
      v35 = v58;
      v36 = v48;
      if (v56)
      {
        goto LABEL_17;
      }
    }

    if (v10)
    {
      v62 = v35;
      v63 = v10;
      v64 = v36;
      if (v34)
      {
        v59 = v33;
        v60 = v34;
        v61 = v32 & 0x1FF;
        swift_bridgeObjectRetain_n();

        v40 = static BusinessLandmark.== infix(_:_:)(&v62, &v59);

        if ((v40 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }
    }

    else if (!v34)
    {

LABEL_36:
      if (v50)
      {
        v62 = v12;
        v63 = v50;
        LOBYTE(v64) = v13;
        if (v23)
        {
          v59 = v43;
          v60 = v23;
          LOBYTE(v61) = v49;
          swift_bridgeObjectRetain_n();

          v30 = static POILandmark.== infix(_:_:)(&v62, &v59);

          return v30 & 1;
        }
      }

      else if (!v23)
      {

        v30 = 1;
        return v30 & 1;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1DD4ED808(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756E6576 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74726F70726961 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72657461656874 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7373656E69737562 && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 6909808 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD4ED9AC(char a1)
{
  result = 0x65756E6576;
  switch(a1)
  {
    case 1:
      result = 0x74726F70726961;
      break;
    case 2:
      result = 0x72657461656874;
      break;
    case 3:
      result = 0x7373656E69737562;
      break;
    case 4:
      result = 6909808;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4EDA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4ED808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4EDA6C(uint64_t a1)
{
  v2 = sub_1DD4EE200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4EDAA8(uint64_t a1)
{
  v2 = sub_1DD4EE200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Landmark.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDC0, &qword_1DD655098);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v24 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[3];
  v33 = v1[2];
  v34 = v13;
  v39 = *(v1 + 16);
  v14 = v1[5];
  v31 = v1[6];
  v32 = v14;
  v15 = v1[7];
  v29 = v1[8];
  v30 = v15;
  LODWORD(v15) = *(v1 + 36);
  v16 = v1[11];
  v25 = v1[10];
  v26 = v16;
  v27 = *(v1 + 96);
  v28 = v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4EE200();
  sub_1DD640EF8();
  LOBYTE(v36) = 0;
  v18 = v35;
  sub_1DD640BC8();
  if (!v18)
  {
    v20 = v29;
    v19 = v30;
    v36 = v33;
    v37 = v34;
    v38 = v39;
    v40 = 1;
    v21 = sub_1DD4EE254();

    OUTLINED_FUNCTION_1_73();
    if (v21)
    {
LABEL_3:

      return (*(v6 + 8))(v10, v3);
    }

    LOBYTE(v36) = 2;
    sub_1DD640BC8();
    v36 = v19;
    v37 = v20;
    v38 = v28;
    v40 = 3;
    v22 = sub_1DD4EE2A8();

    OUTLINED_FUNCTION_1_73();

    if (!v22)
    {
      v36 = v25;
      v37 = v26;
      LOBYTE(v38) = v27;
      v40 = 4;
      sub_1DD4EE2FC();

      OUTLINED_FUNCTION_1_73();
      goto LABEL_3;
    }
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t Landmark.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDDE8, &qword_1DD6550A0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4EE200();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  v10 = sub_1DD640AD8();
  v27 = v11;
  LOBYTE(__src[0]) = 1;
  sub_1DD4EE350();
  OUTLINED_FUNCTION_3_52();
  v24 = v29;
  v26 = v30;
  v45 = v31;
  LOBYTE(v29) = 2;
  v23 = sub_1DD640AD8();
  v25 = v12;
  LOBYTE(__src[0]) = 3;
  sub_1DD4EE3A4();
  OUTLINED_FUNCTION_3_52();
  v21 = v29;
  v22 = v30;
  v20 = v31;
  v46 = 4;
  sub_1DD4EE3F8();
  OUTLINED_FUNCTION_3_52();
  v13 = OUTLINED_FUNCTION_0_95();
  v14(v13);
  v19 = v42;
  v18 = v43;
  v17 = v44;
  __src[0] = v10;
  __src[1] = v27;
  __src[2] = v24;
  __src[3] = v26;
  v15 = v45;
  LOWORD(__src[4]) = v45;
  __src[5] = v23;
  __src[6] = v25;
  __src[7] = v21;
  __src[8] = v22;
  LOWORD(__src[9]) = v20;
  __src[10] = v42;
  __src[11] = v43;
  LOBYTE(__src[12]) = v44;
  memcpy(a2, __src, 0x61uLL);
  sub_1DD4EE44C(__src, &v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29 = v10;
  v30 = v27;
  v31 = v24;
  v32 = v26;
  v33 = v15;
  v34 = v23;
  v35 = v25;
  v36 = v21;
  v37 = v22;
  v38 = v20;
  v39 = v19;
  v40 = v18;
  v41 = v17;
  return sub_1DD4EE484(&v29);
}

unint64_t sub_1DD4EE200()
{
  result = qword_1ECCDDDC8;
  if (!qword_1ECCDDDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDC8);
  }

  return result;
}

unint64_t sub_1DD4EE254()
{
  result = qword_1ECCDDDD0;
  if (!qword_1ECCDDDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDD0);
  }

  return result;
}

unint64_t sub_1DD4EE2A8()
{
  result = qword_1ECCDDDD8;
  if (!qword_1ECCDDDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDD8);
  }

  return result;
}

unint64_t sub_1DD4EE2FC()
{
  result = qword_1ECCDDDE0;
  if (!qword_1ECCDDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDE0);
  }

  return result;
}

unint64_t sub_1DD4EE350()
{
  result = qword_1ECCDDDF0;
  if (!qword_1ECCDDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDF0);
  }

  return result;
}

unint64_t sub_1DD4EE3A4()
{
  result = qword_1ECCDDDF8;
  if (!qword_1ECCDDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDDF8);
  }

  return result;
}

unint64_t sub_1DD4EE3F8()
{
  result = qword_1ECCDDE00;
  if (!qword_1ECCDDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE00);
  }

  return result;
}

uint64_t sub_1DD4EE4BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 97))
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

uint64_t sub_1DD4EE510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Landmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4EE670()
{
  result = qword_1ECCDDE08;
  if (!qword_1ECCDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE08);
  }

  return result;
}

unint64_t sub_1DD4EE6C8()
{
  result = qword_1ECCDDE10;
  if (!qword_1ECCDDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE10);
  }

  return result;
}

unint64_t sub_1DD4EE720()
{
  result = qword_1ECCDDE18;
  if (!qword_1ECCDDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52()
{

  return sub_1DD640B18();
}

uint64_t sub_1DD4EE7C0(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  result = -1;
  if ((a2 & 1) != 0 && a1)
  {
    v22 = a1;
    v23 = [v22 absoluteTimestamp];
    if (v23)
    {
      v24 = v23;
      sub_1DD63D048();

      v25 = *(v11 + 32);
      v25(v20, v17, v10);
      sub_1DD3B7EA0(a3, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        (*(v11 + 8))(v20, v10);

        sub_1DD4AF0C8(v9);
      }

      else
      {
        v25(v14, v9, v10);
        sub_1DD63CF88();
        v27 = v26;

        v28 = round(v27);
        if (v28 <= -9.22337204e18)
        {
          v30 = *(v11 + 8);
          v30(v14, v10);
          v30(v20, v10);
        }

        else
        {
          v29 = *(v11 + 8);
          v29(v14, v10);
          v29(v20, v10);
          if (v28 < 9.22337204e18)
          {
            return v28;
          }
        }
      }
    }

    else
    {
    }

    return -1;
  }

  return result;
}

unint64_t sub_1DD4EEA90()
{
  result = qword_1ECCDF210;
  if (!qword_1ECCDF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF210);
  }

  return result;
}

uint64_t sub_1DD4EEAE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[10];
  v7 = swift_allocObject();
  memcpy(v7 + 2, v3, 0x58uLL);
  v7[13] = a1;
  v7[14] = a2;
  sub_1DD4EF07C(v3, v9);

  sub_1DD63D9C8();
}

uint64_t sub_1DD4EEB8C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v30[1] = a4;
  v31 = a3;
  v32 = sub_1DD63D4F8();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v30 - v12;
  v14 = *a1;
  v36 = v14;
  sub_1DD4EF07C(a2, v35);
  sub_1DD4EF0B4(v14, a2);
  v34 = &v36;
  v17 = sub_1DD530814(sub_1DD4EF458, v33, v16, v15 & 1);
  v18 = v17;
  if (v17)
  {
    v19 = sub_1DD4EF348(v17);
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  if (*(a2 + 48))
  {
    sub_1DD63D068();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1DD63D078();
  v24 = __swift_storeEnumTagSinglePayload(v13, v22, 1, v23);
  v25 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v24);
  v30[-6] = a2;
  v30[-5] = v18;
  v30[-4] = v19;
  v30[-3] = v21;
  v30[-2] = v13;
  v27 = sub_1DD604138(sub_1DD4EF478, &v30[-8], v26);

  *v9 = sub_1DD3B80F8(v27);
  v28 = v32;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D2B60], v32);
  v31(v9);

  (*(v6 + 8))(v9, v28);
  return sub_1DD4AF0C8(v13);
}

uint64_t sub_1DD4EEE18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  if (a5)
  {
    if (v12 == a4 && v11 == a5)
    {
      v15 = 1;
    }

    else
    {
      v14 = *a1;
      v15 = sub_1DD640CD8();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 64);
  v17 = (*(a2 + 56))(a3, v15 & 1, a6);
  *a7 = v12;
  a7[1] = v11;
  a7[2] = v17;
}

uint64_t sub_1DD4EEEC8()
{
  v0 = qword_1ECCDDE20;

  return v0;
}

uint64_t sub_1DD4EEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EF01C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD4EEFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EF01C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD4EF01C()
{
  result = qword_1ECCDDE30;
  if (!qword_1ECCDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE30);
  }

  return result;
}

void sub_1DD4EF0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020(a1);
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1;
  v7 = a1 + 32;
  v34 = a1 & 0xC000000000000001;
  v35 = a2;
  v33 = a1 & 0xFFFFFFFFFFFFFF8;
  v36 = a1 + 32;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5)
    {
      v9 = MEMORY[0x1E12B2C10](v4 - 1, v32);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v8 >= *(v6 + 16))
      {
        goto LABEL_39;
      }

      v9 = *(v7 + 8 * v8);
    }

    v10 = v9;
    v11 = *(a2 + 40);
    if ((*(a2 + 32))())
    {
      v12 = sub_1DD4EF3B8(v10);
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v16 = *(a2 + 24);
        if (*(v16 + 16))
        {
          v17 = *(v16 + 40);
          sub_1DD640E28();
          sub_1DD63FD28();
          v18 = sub_1DD640E78();
          v19 = ~(-1 << *(v16 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v16 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v21 = (*(v16 + 48) + 16 * v20);
            if (*v21 != v14 || v15 != v21[1])
            {
              v23 = sub_1DD640CD8();
              v18 = v20 + 1;
              if ((v23 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }

          v5 = v34;
          a2 = v35;
        }

        if ((*(a2 + 72) & 1) == 0)
        {
LABEL_35:

          a2 = v35;
LABEL_36:
          sub_1DD4EF4A0(a2);
          return;
        }

        v24 = *(a2 + 16);
        if (*(v24 + 16))
        {
          v25 = *(v24 + 40);
          sub_1DD640E28();
          sub_1DD63FD28();
          v26 = sub_1DD640E78();
          v27 = ~(-1 << *(v24 + 32));
          while (1)
          {
            v28 = v26 & v27;
            if (((*(v24 + 56 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
            {
              break;
            }

            v29 = (*(v24 + 48) + 16 * v28);
            if (*v29 != v14 || v15 != v29[1])
            {
              v31 = sub_1DD640CD8();
              v26 = v28 + 1;
              if ((v31 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_35;
          }

LABEL_18:

          --v4;
          v5 = v34;
          a2 = v35;
        }

        else
        {

          --v4;
        }

        v6 = v33;
        v7 = v36;
      }

      else
      {

        --v4;
        v7 = v36;
      }
    }

    else
    {

      --v4;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1DD4EF348(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD4EF3B8(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

id sub_1DD4EF41C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_1DD53058C(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD4EF514(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  result = -1;
  if ((a2 & 1) != 0 && a1)
  {
    v22 = a1;
    v23 = [v22 absoluteTimestamp];
    if (v23)
    {
      v24 = v23;
      sub_1DD63D048();

      v25 = *(v11 + 32);
      v25(v20, v17, v10);
      sub_1DD3B7EA0(a3, v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        (*(v11 + 8))(v20, v10);

        sub_1DD4AF0C8(v9);
      }

      else
      {
        v25(v14, v9, v10);
        sub_1DD63CF88();
        v27 = v26;

        v28 = round(v27);
        if (v28 <= -9.22337204e18)
        {
          v30 = *(v11 + 8);
          v30(v14, v10);
          v30(v20, v10);
        }

        else
        {
          v29 = *(v11 + 8);
          v29(v14, v10);
          v29(v20, v10);
          if (v28 < 9.22337204e18)
          {
            return v28;
          }
        }
      }
    }

    else
    {
    }

    return -1;
  }

  return result;
}

uint64_t sub_1DD4EF7D8(uint64_t a1, int a2)
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

uint64_t sub_1DD4EF818(uint64_t result, int a2, int a3)
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

unint64_t sub_1DD4EF880()
{
  result = qword_1ECCDDE48;
  if (!qword_1ECCDDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE48);
  }

  return result;
}

uint64_t sub_1DD4EF8D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[9];
  v7 = swift_allocObject();
  memcpy(v7 + 2, v3, 0x50uLL);
  v7[12] = a1;
  v7[13] = a2;
  sub_1DD4EFE6C(v3, &v9);

  sub_1DD63D9C8();
}

uint64_t sub_1DD4EF97C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v30[1] = a4;
  v31 = a3;
  v32 = sub_1DD63D4F8();
  v6 = *(v32 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v30 - v12;
  v14 = *a1;
  v36 = v14;
  sub_1DD4EFE6C(a2, v35);
  sub_1DD4EFEA4(v14, a2);
  v34 = &v36;
  v17 = sub_1DD530814(sub_1DD4EF458, v33, v16, v15 & 1);
  v18 = v17;
  if (v17)
  {
    v19 = sub_1DD4EF348(v17);
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  if (*(a2 + 40))
  {
    sub_1DD63D068();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1DD63D078();
  v24 = __swift_storeEnumTagSinglePayload(v13, v22, 1, v23);
  v25 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v24);
  v30[-6] = a2;
  v30[-5] = v18;
  v30[-4] = v19;
  v30[-3] = v21;
  v30[-2] = v13;
  v27 = sub_1DD604138(sub_1DD4F00A8, &v30[-8], v26);

  *v9 = sub_1DD3B80F8(v27);
  v28 = v32;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D2B60], v32);
  v31(v9);

  (*(v6 + 8))(v9, v28);
  return sub_1DD4AF0C8(v13);
}

uint64_t sub_1DD4EFC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  if (a5)
  {
    if (v12 == a4 && v11 == a5)
    {
      v15 = 1;
    }

    else
    {
      v14 = *a1;
      v15 = sub_1DD640CD8();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a2 + 56);
  v17 = (*(a2 + 48))(a3, v15 & 1, a6);
  *a7 = v12;
  a7[1] = v11;
  a7[2] = v17;
}

uint64_t sub_1DD4EFCB8()
{
  v0 = qword_1ECCDDE38;

  return v0;
}

uint64_t sub_1DD4EFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EFE0C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD4EFDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EFE0C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD4EFE0C()
{
  result = qword_1ECCDDE50;
  if (!qword_1ECCDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE50);
  }

  return result;
}

void sub_1DD4EFEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020(a1);
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1;
  v7 = a1 + 32;
  v28 = a2;
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xC000000000000001;
  v27 = a1 + 32;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_27;
    }

    v8 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5)
    {
      v9 = MEMORY[0x1E12B2C10](v4 - 1, v24);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      if (v8 >= *(v6 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v7 + 8 * v8);
    }

    v10 = v9;
    v11 = *(a2 + 32);
    if ((*(a2 + 24))())
    {
      v12 = sub_1DD4EF3B8(v10);
      if (v13)
      {
        v14 = v13;
        if ((*(a2 + 64) & 1) == 0)
        {
LABEL_26:

          a2 = v28;
LABEL_27:
          sub_1DD4F00D0(a2);
          return;
        }

        a2 = v28;
        v15 = *(v28 + 16);
        if (*(v15 + 16))
        {
          v16 = v12;
          v17 = *(v15 + 40);
          sub_1DD640E28();
          sub_1DD63FD28();
          v18 = sub_1DD640E78();
          v19 = ~(-1 << *(v15 + 32));
          while (1)
          {
            v20 = v18 & v19;
            if (((*(v15 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {
              break;
            }

            v21 = (*(v15 + 48) + 16 * v20);
            if (*v21 != v16 || v14 != v21[1])
            {
              v23 = sub_1DD640CD8();
              v18 = v20 + 1;
              if ((v23 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_26;
          }

          --v4;
          a2 = v28;
        }

        else
        {

          --v4;
        }

        v6 = v25;
        v5 = v26;
        v7 = v27;
      }

      else
      {

        --v4;
        v7 = v27;
      }
    }

    else
    {

      --v4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1DD4F016C()
{
  OUTLINED_FUNCTION_18_4();
  LODWORD(v2) = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v114 = v11;
  v12 = sub_1DD63D078();
  v13 = OUTLINED_FUNCTION_0(v12);
  v112 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1_4();
  v111 = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  v113 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v22 = OUTLINED_FUNCTION_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_47();
  v25 = type metadata accessor for LearnedDisambiguation();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1_4();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v107 - v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_16_3();
  if (!v10)
  {
    goto LABEL_4;
  }

  v109 = v12;
  v110 = v39;
  v40 = v38;
  sub_1DD4B7F04(v10, v0);
  v115 = v40;
  if (__swift_getEnumTagSinglePayload(v0, 1, v40) != 1)
  {
    v47 = v110;
    v48 = sub_1DD4F298C(v0, v110);
    if (v6)
    {
      if (v6 == 1)
      {
        v4 = *(v10 + 16);
        v6 = v8;
        if (v4 < v8)
        {
          v8 = v114;
          if (qword_1ECCDB0E0 == -1)
          {
LABEL_11:
            v49 = sub_1DD63F9F8();
            OUTLINED_FUNCTION_130(v49, qword_1ECD0DDF0);

            v50 = sub_1DD63F9D8();
            v51 = sub_1DD640368();
            if (OUTLINED_FUNCTION_5_6(v51))
            {
              v52 = swift_slowAlloc();
              *v52 = 134218240;
              *(v52 + 4) = v6;
              *(v52 + 12) = 2048;
              *(v52 + 14) = v4;

              _os_log_impl(&dword_1DD38D000, v50, v2, "LearnedChoiceExtractor: Not enough learnings; need %ld but found %ld", v52, 0x16u);
              OUTLINED_FUNCTION_0_1();
            }

            else
            {
            }

            v87 = OUTLINED_FUNCTION_5_54();
            __swift_storeEnumTagSinglePayload(v87, v88, v89, v115);
            v90 = v47;
LABEL_44:
            sub_1DD4BC07C(v90);
            goto LABEL_5;
          }

LABEL_48:
          OUTLINED_FUNCTION_0_7();
          goto LABEL_11;
        }

        v113 = *(v10 + 16);

        v77 = sub_1DD4F09F4(v8, v10);
        v47 = v80 >> 1;
        v81 = (v80 >> 1) - v79;
        if (!__OFSUB__(v80 >> 1, v79))
        {
          if (v81)
          {
            v6 = v78;
            v8 = v79;
            v112 = v77;
            v116 = MEMORY[0x1E69E7CC0];
            sub_1DD42BCF4();
            if ((v81 & 0x8000000000000000) == 0)
            {
              v2 = v116;
              while (v8 < v47)
              {
                sub_1DD4BC018(v6 + *(v28 + 72) * v8, v36);
                v82 = *&v36[*(v115 + 32)];
                sub_1DD4BC07C(v36);
                v116 = v2;
                v4 = *(v2 + 16);
                v81 = v4 + 1;
                if (v4 >= *(v2 + 24) >> 1)
                {
                  sub_1DD42BCF4();
                  v2 = v116;
                }

                *(v2 + 16) = v81;
                *(v2 + 4 * v4 + 32) = v82;
                if (v47 == ++v8)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_37;
                }
              }

              __break(1u);
              goto LABEL_46;
            }

            __break(1u);
            goto LABEL_52;
          }

          swift_unknownObjectRelease();
          v2 = MEMORY[0x1E69E7CC0];
LABEL_37:
          v36 = sub_1DD418E9C(v2);
          v8 = v114;
          v6 = v110;
          if (*(v36 + 2) != 1)
          {
            if (qword_1ECCDB0E0 == -1)
            {
LABEL_40:
              v99 = sub_1DD63F9F8();
              OUTLINED_FUNCTION_130(v99, qword_1ECD0DDF0);

              v100 = sub_1DD63F9D8();
              v101 = sub_1DD640368();
              if (OUTLINED_FUNCTION_4_0(v101))
              {
                v102 = swift_slowAlloc();
                *v102 = 134218240;
                *(v102 + 4) = v113;

                *(v102 + 12) = 2048;
                v103 = *(v36 + 2);

                *(v102 + 14) = v103;

                _os_log_impl(&dword_1DD38D000, v100, v81, "LearnedChoiceExtractor: Last %ld learnings have %ld different selections.", v102, 0x16u);
                OUTLINED_FUNCTION_0_1();
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              v104 = OUTLINED_FUNCTION_5_54();
              __swift_storeEnumTagSinglePayload(v104, v105, v106, v115);
              v90 = v6;
              goto LABEL_44;
            }

LABEL_52:
            OUTLINED_FUNCTION_0_7();
            goto LABEL_40;
          }

          sub_1DD4BC018(v6, v8);
          v96 = OUTLINED_FUNCTION_7_40();
          __swift_storeEnumTagSinglePayload(v96, v97, v98, v115);
          v86 = v6;
LABEL_31:
          sub_1DD4BC07C(v86);
          v45 = 2;
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_50;
      }

      v8 = v114;
      sub_1DD4BC018(v47, v114);
      v74 = OUTLINED_FUNCTION_7_40();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v115);
    }

    else
    {
      if ((v8 * 60) >> 64 != (60 * v8) >> 63)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v53 = (v4)(v48);
      v28 = v113;
      if (__OFSUB__(v53, 60 * v8))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      sub_1DD63CF38();
      v54 = v115;
      v55 = *(v115 + 24);
      OUTLINED_FUNCTION_4_49();
      sub_1DD4F29F0(v56, v57);
      v2 = v109;
      if (sub_1DD63FD68())
      {
        if (qword_1ECCDB0E0 == -1)
        {
LABEL_17:
          v58 = sub_1DD63F9F8();
          OUTLINED_FUNCTION_130(v58, qword_1ECD0DDF0);
          sub_1DD4BC018(v47, v33);
          v59 = v109;
          (*(v112 + 16))(v111, v28, v109);
          v60 = sub_1DD63F9D8();
          v61 = sub_1DD640368();
          if (OUTLINED_FUNCTION_5_6(v61))
          {
            v62 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            v116 = v108;
            *v62 = 136315394;
            HIDWORD(v107) = v2;
            v63 = *(v115 + 24);
            OUTLINED_FUNCTION_4_49();
            sub_1DD4F29F0(v64, v65);
            v66 = sub_1DD640CB8();
            v6 = v67;
            sub_1DD4BC07C(v33);
            v68 = sub_1DD39565C(v66, v6, &v116);

            *(v62 + 4) = v68;
            *(v62 + 12) = 2080;
            v69 = sub_1DD640CB8();
            v71 = v70;
            v72 = OUTLINED_FUNCTION_12_29();
            v6(v72);
            v73 = sub_1DD39565C(v69, v71, &v116);

            *(v62 + 14) = v73;
            _os_log_impl(&dword_1DD38D000, v60, BYTE4(v107), "LearnedChoiceExtractor: Timestamp %s is older than the cutoff %s", v62, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            v28 = v113;
            OUTLINED_FUNCTION_0_1();
          }

          else
          {

            v91 = OUTLINED_FUNCTION_12_29();
            v6(v91);
            sub_1DD4BC07C(v33);
          }

          v8 = v114;
          v92 = OUTLINED_FUNCTION_5_54();
          __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
          (v6)(v28, v59);
          v90 = v110;
          goto LABEL_44;
        }

LABEL_50:
        OUTLINED_FUNCTION_0_7();
        goto LABEL_17;
      }

      v8 = v114;
      sub_1DD4BC018(v47, v114);
      v83 = OUTLINED_FUNCTION_7_40();
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v54);
      (*(v112 + 8))(v28, v2);
    }

    v86 = v47;
    goto LABEL_31;
  }

  sub_1DD3ADFD0(v0, &qword_1ECCDD880, &qword_1DD652070);
LABEL_4:
  v8 = v114;
  v41 = OUTLINED_FUNCTION_5_54();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
LABEL_5:
  v45 = 0;
LABEL_6:
  v46 = type metadata accessor for LearningResult();
  *(v8 + *(v46 + 20)) = xmmword_1DD6555D0;
  *(v8 + *(v46 + 24)) = v45;
  OUTLINED_FUNCTION_17();
}