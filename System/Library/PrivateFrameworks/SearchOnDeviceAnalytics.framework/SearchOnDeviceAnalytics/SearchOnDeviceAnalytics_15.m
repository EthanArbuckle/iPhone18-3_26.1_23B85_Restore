uint64_t sub_21B0E27C4()
{
  v0 = 2573;
  sub_21AFC921C();
  if ((sub_21B112814() & 1) == 0)
  {
    v0 = 10;
    if ((sub_21B112814() & 1) == 0)
    {
      if (sub_21B112814())
      {
        return 13;
      }

      else
      {
        return 0;
      }
    }
  }

  return v0;
}

uint64_t SQLiteType.any.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, a1);
}

uint64_t sub_21B0E2918(uint64_t result, uint64_t a2)
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

  sub_21B0D2E98(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
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

  result = sub_21AFCC250((v9 + 16 * a2), v11 - a2, v10);
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

_BYTE *sub_21B0E29F4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_21B0E2A60(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_21B0E2D5C(v9, v4, v2);
      MEMORY[0x21CEEA9A0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_21B0CFEC4(0, v4, v5);
  v6 = sub_21B0E2BC4(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_21B0E2BC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v22 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = *(*(v22 + 48) + 16 * v12 + 8);
    sub_21AF92198(*(v22 + 56) + 40 * v12, v21);
    __swift_project_boxed_opaque_existential_0(v21, v21[3]);

    sub_21B111694();
    v14 = v20;
    sub_21AF99BE0(v19, &qword_27CD476A8, &unk_21B12B828);
    __swift_destroy_boxed_opaque_existential_0(v21);

    if (v14)
    {
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
        return sub_21B0E2DD4(v17, a2, v18, v22);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_21B0E2DD4(v17, a2, v18, v22);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_21B0E2D5C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_21B0E2BC4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21B0E2DD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CF8, &qword_21B114268);
  result = sub_21B112A14();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_21AF92198(v17 + 40 * v16, v34);
    sub_21AF81D68(v34, v33);
    v21 = *(v9 + 40);
    sub_21B112EC4();

    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    result = sub_21B112F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
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
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_21AF81D68(v33, *(v9 + 56) + 40 * v25);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_21B0E3028(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21B1123D4();

  [a3 setDateFormat_];
}

uint64_t sub_21B0E308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = MEMORY[0x277D837D0];
  v28 = MEMORY[0x277D837D0];
  v29 = MEMORY[0x277D3E338];
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v10 = *a6;
  v11 = sub_21AF98B58(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B0, &qword_21B12B970);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = *a6;
  v16 = sub_21AF98B58(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v13 = v16;
LABEL_5:
  v18 = *a6;
  if (v14)
  {
    v19 = (v18[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_0(v19);
    return sub_21AF81D68(&v27, v19);
  }

  else
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v27, v9);
    v22 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v21);
    v24 = (&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_21B0E34D4(v13, a3, a4, *v24, v24[1], v18);
    __swift_destroy_boxed_opaque_existential_0(&v27);
  }
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics8CSVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21B0E32AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v33 = a6;
  v34 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v14 = *a5;
  v15 = sub_21AF98B58(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B0, &qword_21B12B970);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = *a5;
  v20 = sub_21AF98B58(a2, a3);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v17 = v20;
LABEL_5:
  v22 = *a5;
  if (v18)
  {
    v23 = (v22[7] + 40 * v17);
    __swift_destroy_boxed_opaque_existential_0(v23);
    return sub_21AF81D68(&v32, v23);
  }

  else
  {
    v25 = v33;
    v26 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
    v27 = *(*(v25 - 8) + 64);
    MEMORY[0x28223BE20](v26);
    v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v30 + 16))(v29);
    sub_21B0E3564(v17, a2, a3, v29, v22, a6, a7);
    __swift_destroy_boxed_opaque_existential_0(&v32);
  }
}

uint64_t sub_21B0E34D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D3E338];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_21AF81D68(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_21B0E3564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_21AF81D68(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_28()
{
  v1 = *(*(v0 - 288) + 8);
  result = *(v0 - 320);
  v3 = *(v0 - 336);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_29()
{
  v1 = *(*(v0 - 312) + 8);
  result = *(v0 - 304);
  v3 = *(v0 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_19@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_17()
{
  result = *(v0 - 208);
  v2 = *(*(v0 - 200) + 8);
  v3 = *(v0 - 216);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_12()
{
  v2 = **(v1 - 264);
  result = v0;
  v4 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{
  v2 = *(v0 - 368);
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 360);
  return result;
}

SearchOnDeviceAnalytics::TypeModel_optional __swiftcall TypeModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B112A34();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TypeModel.rawValue.getter()
{
  result = 7630441;
  switch(*v0)
  {
    case 1:
      result = 0x3436746E69;
      break;
    case 2:
      result = 1953393013;
      break;
    case 3:
      result = 0x3436746E6975;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 1819242338;
      break;
    case 7:
      result = 1836412517;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 0x676E69727473;
      break;
    case 0xA:
      result = 0x616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21B0E38A8()
{
  result = qword_27CD476C0;
  if (!qword_27CD476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD476C0);
  }

  return result;
}

uint64_t sub_21B0E3920@<X0>(uint64_t *a1@<X8>)
{
  result = TypeModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0E3B5C()
{
  result = qword_27CD476C8;
  if (!qword_27CD476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD476C8);
  }

  return result;
}

unint64_t sub_21B0E3C60()
{
  v1 = v0;
  MEMORY[0x21CEE9770](*v0, v0[1]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[2], v1[3]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[4], v1[5]);
  return 0xD000000000000016;
}

uint64_t sub_21B0E3CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476D0, &qword_21B12BAD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  v2 = *v0;
  v7 = v0[1];
  v3 = v7;
  v8 = v2;
  *(inited + 48) = v2;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000021B1422A0;
  *(inited + 64) = 0x696C632E616C646FLL;
  *(inited + 72) = 0xEB00000000746E65;
  *(inited + 80) = v3;
  *(inited + 96) = 0x6365722E616C646FLL;
  *(inited + 104) = 0xEB00000000657069;
  v6 = v0[2];
  *(inited + 112) = v6;
  sub_21B0E4064(&v8, v5);
  sub_21B0E4064(&v7, v5);
  sub_21B0E4064(&v6, v5);
  return sub_21B112334();
}

uint64_t sub_21B0E3DF8()
{
  v1 = v0;
  sub_21B112904();

  MEMORY[0x21CEE9770](v1[2], v1[3]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[4], v1[5]);
  return 0x6C7070612E6D6F63;
}

uint64_t sub_21B0E3E80()
{
  MEMORY[0x21CEE9770](v0[2], v0[3]);
  MEMORY[0x21CEE9770](45, 0xE100000000000000);
  MEMORY[0x21CEE9770](v0[4], v0[5]);
  return 0x2D73657069636572;
}

uint64_t sub_21B0E3EEC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21B112D04() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_21B112D04() & 1) != 0)
    {
      v6 = a1[4] == a2[4] && a1[5] == a2[5];
      if (v6 || (sub_21B112D04() & 1) != 0)
      {
        v7 = a1[6] == a2[6] && a1[7] == a2[7];
        if (v7 || (sub_21B112D04() & 1) != 0)
        {
          v8 = a1[9];
          v9 = a2[9];
          if (v8)
          {
            if (v9)
            {
              v10 = a1[8] == a2[8] && v8 == v9;
              if (v10 || (sub_21B112D04() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v9)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B0E3FD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_21B0E4004()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_21B0E40C0(uint64_t a1, int a2)
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

uint64_t sub_21B0E4100(uint64_t result, int a2, int a3)
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

void OUTLINED_FUNCTION_0_28()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t sub_21B0E4184(uint64_t a1)
{
  v2 = sub_21B111DA4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_1();
  v55 = v8;
  OUTLINED_FUNCTION_12();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  *(&v60 + 1) = &type metadata for SODAFeatureFlags;
  v61 = sub_21B0C6C54();
  LOBYTE(v59) = 1;
  v15 = sub_21B1111D4();
  __swift_destroy_boxed_opaque_existential_0(&v59);
  v16 = sub_21B111D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476F0, &qword_21B12BBD0);
  sub_21B0E70F4(&qword_27CD46FE0, MEMORY[0x277D39E18]);
  v17 = sub_21B112334();
  v18 = *(v16 + 16);
  if (v18)
  {
    v50 = v15;
    v51 = a1;
    v19 = objc_opt_self();
    v53 = v14;
    v54 = v19;
    v21 = *(v5 + 16);
    v20 = v5 + 16;
    v22 = *(v20 + 64);
    v49 = v16;
    v23 = v16 + ((v22 + 32) & ~v22);
    v56 = *(v20 + 56);
    v57 = v21;
    v52 = (v20 - 8);
    while (1)
    {
      v58 = v18;
      v24 = v57;
      v57(v14, v23, v2);
      v24(v12, v14, v2);
      v25 = v55;
      v26 = v14;
      v27 = v2;
      v24(v55, v26, v2);
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v28 = [v54 defaultManager];
      v29 = type metadata accessor for RegisteredRecipeEnvironment();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_21B0C7920(v25, 0, 0, &v59, 0, v28);
      swift_isUniquelyReferenced_nonNull_native();
      *&v59 = v17;
      v33 = v12;
      v34 = sub_21B0B5C74();
      if (__OFADD__(v17[2], (v35 & 1) == 0))
      {
        break;
      }

      v36 = v34;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476F8, &qword_21B12BBD8);
      if (sub_21B112994())
      {
        v38 = sub_21B0B5C74();
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_17;
        }

        v36 = v38;
      }

      v17 = v59;
      if (v37)
      {
        v40 = (*(v59 + 56) + 16 * v36);
        v41 = *v40;
        *v40 = v32;
        v40[1] = &off_282C963F0;
        swift_unknownObjectRelease();
        v12 = v33;
        v2 = v27;
      }

      else
      {
        *(v59 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v12 = v33;
        v42 = v33;
        v2 = v27;
        v57((v17[6] + v36 * v56), v42, v27);
        v43 = (v17[7] + 16 * v36);
        *v43 = v32;
        v43[1] = &off_282C963F0;
        v44 = v17[2];
        v45 = __OFADD__(v44, 1);
        v46 = v44 + 1;
        if (v45)
        {
          goto LABEL_16;
        }

        v17[2] = v46;
      }

      v47 = *v52;
      (*v52)(v12, v2);
      v14 = v53;
      v47(v53, v2);
      v23 += v56;
      v18 = v58 - 1;
      if (v58 == 1)
      {

        a1 = v51;
        LOBYTE(v15) = v50;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_21B112E54();
    __break(1u);
  }

  else
  {

LABEL_14:
    type metadata accessor for SODAPoirotV1ToV2DataMigrator();
    result = swift_allocObject();
    *(result + 16) = a1;
    *(result + 24) = v15 & 1;
    *(result + 32) = v17;
  }

  return result;
}

uint64_t sub_21B0E45E0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v39 = sub_21B110C44();
  v37 = *(v39 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B0, &unk_21B129080);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B8, &qword_21B12B820);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_21B1110B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B110FD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_21B111074();
  v21 = *(v35 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v35);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *MEMORY[0x277CC9810], v16);
  sub_21B110FE4();
  (*(v17 + 8))(v20, v16);
  sub_21B111094();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    sub_21B111054();
    v26 = sub_21B110FC4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v26);
    sub_21B111044();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476E8, &qword_21B12BBC8);
    v27 = sub_21B111064();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_21B113DB0;
    v32 = v31 + v30;
    v33 = *(v28 + 104);
    v33(v32, *MEMORY[0x277CC9960], v27);
    v33(v32 + v29, *MEMORY[0x277CC9940], v27);
    sub_21AF9F1E8(v31);
    v34 = v36;
    sub_21B111014();

    sub_21B111034();
    (*(v37 + 8))(v34, v39);
    return (*(v21 + 8))(v24, v35);
  }

  return result;
}

uint64_t sub_21B0E4AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - v2;
  v4 = sub_21B110F84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_21B0E45E0(v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_21AF99BE0(v3, &qword_27CD47270, &qword_21B12A140);
    result = sub_21B1129C4();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    sub_21B110F04();
    sub_21B110F44();
    v12 = *(v5 + 8);
    v12(v9, v4);
    return (v12)(v11, v4);
  }

  return result;
}

uint64_t sub_21B0E4CA8()
{
  v1 = sub_21B1117B4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v54 = v3;
  v55 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v58 = v7 - v6;
  OUTLINED_FUNCTION_33_0();
  v57 = sub_21B110D94();
  v8 = OUTLINED_FUNCTION_4_1(v57);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = sub_21B111CB4();
  v12 = OUTLINED_FUNCTION_1(v11);
  v56 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v50 - v21;
  v23 = sub_21B111BA4();
  v24 = OUTLINED_FUNCTION_1(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v24);
  v31 = &v50 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v50 - v32;
  v34 = v59;
  result = sub_21B0E57D4();
  if (!v34)
  {
    v51 = v31;
    v52 = v23;
    v36 = v58;
    v59 = v33;
    v53 = v26;
    if (result)
    {
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v57);
      (*(v56 + 104))(v18, *MEMORY[0x277D39DD8], v11);
      v37 = *(v0 + 16);
      v38 = v59;
      sub_21B111B44();
      sub_21B111B54();
      v39 = sub_21B111714();
      v40 = *(v39 + 48);
      v41 = *(v39 + 52);
      swift_allocObject();
      v42 = sub_21B111724();
      sub_21B1116F4();
      v44 = v52;
      v43 = v53;
      sub_21B1117A4();
      (*(v54 + 8))(v36, v55);
      if (v60 > 5)
      {
        v45 = OUTLINED_FUNCTION_8_20();
        v46(v45);
      }

      else
      {
        sub_21B0E511C(v42, v60 != 5);
        v49 = v51;
        (*(v43 + 16))(v51, v38, v44);
        type metadata accessor for DataWarehouseControllerV2();
        swift_allocObject();
        sub_21B0C4B9C(v49);

        v47 = OUTLINED_FUNCTION_8_20();
        return v48(v47);
      }
    }
  }

  return result;
}

uint64_t sub_21B0E511C(uint64_t a1, int a2)
{
  v4 = v3;
  v29 = a2;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476E0, &qword_21B12BBC0);
  v5 = OUTLINED_FUNCTION_4_1(v26);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = *(v2 + 32);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(v2 + 32);

  v17 = 0;
  if (v13)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = *(v10 + 48);
      v21 = sub_21B111DA4();
      OUTLINED_FUNCTION_4_1(v21);
      (*(v22 + 16))(v9, v20 + *(v22 + 72) * v19);
      v23 = *(v26 + 48);
      v24 = *(*(v10 + 56) + 16 * v19);
      v28 = v24;
      *&v9[v23] = v24;
      v25 = v24;
      swift_unknownObjectRetain();
      sub_21B0E5318(v9, v25, *(&v28 + 1), v27, v29 & 1);
      if (v4)
      {
        break;
      }

      v13 &= v13 - 1;
      result = sub_21AF99BE0(v9, &qword_27CD476E0, &qword_21B12BBC0);
      v17 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return sub_21AF99BE0(v9, &qword_27CD476E0, &qword_21B12BBC0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
      }

      v13 = *(v10 + 64 + 8 * v18);
      ++v17;
      if (v13)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B0E5318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v45 = a5;
  v47 = a3;
  v48 = a2;
  v49 = a1;
  v5 = sub_21B110F84();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B111DA4();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B1117B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = v52;
  result = sub_21B1116F4();
  if (!v21)
  {
    v42 = v12;
    v43 = v14;
    v52 = v13;
    v40 = v8;
    v41 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA0, &unk_21B114220);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_21B113D90;
    v24 = v49;
    v25 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
    v26 = MEMORY[0x277D3E340];
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = v26;
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_21B111774();
    v28 = *(v43 + 8);
    v29 = v52;
    v28(v18, v52);

    sub_21B111744();
    result = (v28)(v20, v29);
    if ((v51 & 1) == 0)
    {
      v30 = v50;
      v31 = v46;
      v32 = v42;
      (*(v46 + 16))(v42, v24, v9);
      v33 = (*(v31 + 88))(v32, v9);
      v34 = *MEMORY[0x277D39E08];
      (*(v31 + 8))(v32, v9);
      if (v33 == v34 && (v45 & 1) != 0)
      {
        v35 = v40;
        sub_21B110F74();
        sub_21B0E4AA0();
        v37 = v36;
        (*(v44 + 8))(v35, v41);
        ObjectType = swift_getObjectType();
        if (v37 > v30)
        {
          return (*(*(*(v47 + 8) + 8) + 24))(COERCE_DOUBLE(*&v37), 0, ObjectType);
        }

        v39 = *(v47 + 8);
      }

      else
      {
        ObjectType = swift_getObjectType();
        v39 = *(v47 + 8);
      }

      return (*(*(v39 + 8) + 24))(COERCE_DOUBLE(*&v30), 0, ObjectType);
    }
  }

  return result;
}

uint64_t sub_21B0E57D4()
{
  v159[2] = *MEMORY[0x277D85DE8];
  v134 = sub_21B110CA4();
  v0 = OUTLINED_FUNCTION_1(v134);
  v133 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2();
  v132 = v5 - v4;
  OUTLINED_FUNCTION_33_0();
  v144 = type metadata accessor for LegacySchemaManifest();
  v6 = OUTLINED_FUNCTION_4_1(v144);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v9);
  v143 = (v129 - v10);
  OUTLINED_FUNCTION_33_0();
  v140 = sub_21B111924();
  v11 = OUTLINED_FUNCTION_1(v140);
  v141 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v16);
  v142 = v129 - v17;
  OUTLINED_FUNCTION_33_0();
  v18 = sub_21B110D94();
  v19 = OUTLINED_FUNCTION_1(v18);
  v150 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22_2();
  v145 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_22_2();
  v146 = v28;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v29);
  v149 = v129 - v30;
  OUTLINED_FUNCTION_33_0();
  v31 = sub_21B111D14();
  v32 = OUTLINED_FUNCTION_1(v31);
  v147 = v33;
  v148 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v156 = v37 - v36;
  OUTLINED_FUNCTION_33_0();
  v38 = sub_21B111CB4();
  v39 = OUTLINED_FUNCTION_1(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_1();
  v152 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v45);
  v47 = v129 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48 - 8);
  OUTLINED_FUNCTION_9_1();
  v151 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v51);
  v53 = v129 - v52;
  v54 = sub_21B111BA4();
  v55 = OUTLINED_FUNCTION_1(v54);
  v155 = v56;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v55);
  v61 = v129 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v63 = v129 - v62;
  v154 = v18;
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v18);
  v64 = *MEMORY[0x277D39DD8];
  v65 = *(v41 + 104);
  v153 = v38;
  v65(v47, v64, v38);
  v66 = v158[2];
  v67 = v157;
  sub_21B111B44();
  if (!v67)
  {
    v129[1] = v61;
    v157 = v63;
    v130 = v54;
    v63 = v154;
    __swift_storeEnumTagSinglePayload(v151, 1, 1, v154);
    v65(v152, v64, v153);
    v68 = v66;
    sub_21B111CD4();
    v71 = v149;
    sub_21B111CC4();
    sub_21B110D44();
    v72 = v150 + 1;
    v73 = v150[1];
    v73(v71, v63);
    v74 = sub_21B1123D4();

    v75 = [v68 fileExistsAtPath_];

    if (!v75)
    {
      LOBYTE(v63) = 0;
      v81 = v147;
      v80 = v148;
      v76 = v130;
      v82 = v155;
      v79 = v156;
LABEL_15:
      (*(v81 + 8))(v79, v80);
      (*(v82 + 8))(v157, v76);
      goto LABEL_3;
    }

    sub_21B111B34();
    sub_21B110D44();
    v73(v71, v63);
    v76 = sub_21B1123D4();

    v77 = [v68 fileExistsAtPath_];

    if (v77)
    {
      LOBYTE(v63) = 0;
      v78 = OUTLINED_FUNCTION_9_18();
      v79 = v156;
LABEL_14:
      sub_21B0E6B2C(v78, v79);
      v81 = v147;
      v80 = v148;
      v82 = v155;
      goto LABEL_15;
    }

    sub_21B111CC4();
    v83 = sub_21B110CE4();
    v73(v71, v63);
    sub_21B111B34();
    v84 = sub_21B110CE4();
    v150 = v72;
    v153 = v73;
    v73(v71, v63);
    v159[0] = 0;
    v85 = [v68 copyItemAtURL:v83 toURL:v84 error:v159];

    if (v85)
    {
      v86 = v159[0];
      v87 = v146;
      v79 = v156;
      sub_21B111D04();
      v88 = v145;
      sub_21B111CF4();
      sub_21B110D54();
      v89 = sub_21B1123D4();

      v90 = [v68 fileExistsAtPath_];

      if (v90 && (sub_21B110D54(), v91 = sub_21B1123D4(), , v92 = [v68 fileExistsAtPath_], v91, v92))
      {
        v152 = v68;
        v93 = sub_21B110B84();
        v94 = *(v93 + 48);
        v95 = *(v93 + 52);
        swift_allocObject();
        v96 = sub_21B110B74();
        v99 = sub_21B110DC4();
        v101 = v100;
        sub_21B0E70F4(&qword_27CD476D8, type metadata accessor for LegacySchemaManifest);
        v102 = v143;
        sub_21B110B64();
        v151 = v96;
        sub_21AF99728(v99, v101);
        v103 = *(v141 + 32);
        v104 = v140;
        v103(v142, v102, v140);
        v105 = sub_21B110DC4();
        v106 = v139;
        v129[0] = v105;
        v143 = v107;
        sub_21B110B64();
        sub_21AF99728(v129[0], v143);
        v103(v137, v106, v104);
        sub_21B111904();
        v79 = v156;
        v108 = sub_21B111914();
        v110 = v109;
        v111 = *(v141 + 8);
        v141 += 8;
        v143 = v111;
        (v111)(v138, v140);
        sub_21B111B94();
        sub_21B110E84();
        v144 = 0;
        v112 = v153;
        v153(v136, v63);
        sub_21AF99728(v108, v110);
        sub_21B111B34();
        v113 = v131;
        sub_21B111CE4();
        v114 = sub_21B110CD4();
        v116 = v115;
        v139 = v115;
        v112(v113, v63);
        v159[0] = v114;
        v159[1] = v116;
        v117 = v133;
        v118 = v132;
        v119 = v134;
        (*(v133 + 104))(v132, *MEMORY[0x277CC91D8], v134);
        sub_21AFC921C();
        v120 = v149;
        v121 = v135;
        sub_21B110D84();
        (*(v117 + 8))(v118, v119);

        v122 = v154;
        v112(v121, v154);
        v123 = sub_21B110CE4();
        v112(v120, v122);
        v159[0] = 0;
        v124 = [v152 removeItemAtURL:v123 error:v159];

        if (v124)
        {
          v125 = v159[0];
        }

        else
        {
          v124 = v159[0];
          v126 = sub_21B110C84();

          swift_willThrow();

          v144 = 0;
        }

        v127 = OUTLINED_FUNCTION_6_23();
        (v123)(v127);
        (v123)(v142, v124);
        v76 = v150;
        v128 = v153;
        v153(v145, v63);
        v128(v146, v63);
        LOBYTE(v63) = 1;
        v78 = OUTLINED_FUNCTION_9_18();
      }

      else
      {
        v76 = v150;
        v98 = v153;
        v153(v88, v63);
        v98(v87, v63);
        LOBYTE(v63) = 0;
        v78 = OUTLINED_FUNCTION_9_18();
      }

      goto LABEL_14;
    }

    v97 = v159[0];
    sub_21B110C84();

    swift_willThrow();
    v63 = v156;
    sub_21B0E6B2C(v158, v156);
    (*(v147 + 8))(v63, v148);
    (*(v155 + 8))(v157, v130);
  }

LABEL_3:
  v69 = *MEMORY[0x277D85DE8];
  return v63 & 1;
}

void sub_21B0E6B2C(_BYTE *a1, uint64_t a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21B110D94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B111D14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[24] != 1)
  {
    goto LABEL_14;
  }

  v49 = a1;
  if (qword_2811FAAD8 != -1)
  {
    swift_once();
  }

  v14 = sub_21B1122D4();
  v15 = __swift_project_value_buffer(v14, qword_2811FAB28);
  (*(v10 + 16))(v13, a2, v9);
  v47 = v15;
  v16 = sub_21B1122B4();
  v17 = sub_21B1126E4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v5;
    v19 = v18;
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v19 = 136315138;
    sub_21B111CC4();
    sub_21B0E70F4(&qword_2811FAAF0, MEMORY[0x277CC9260]);
    v20 = sub_21B112B84();
    v46 = a2;
    v22 = v21;
    (*(v48 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v23 = sub_21AFCEC24(v20, v22, v51);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_21AF80000, v16, v17, "Attempting to remove legacy data warehouse at %s", v19, 0xCu);
    v24 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x21CEEA9A0](v24, -1, -1);
    v25 = v19;
    v5 = v48;
    MEMORY[0x21CEEA9A0](v25, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  v26 = v49[2];
  sub_21B111CC4();
  v27 = sub_21B110CE4();
  (*(v5 + 8))(v8, v4);
  v51[0] = 0;
  v28 = [v26 removeItemAtURL:v27 error:v51];

  v29 = v51[0];
  if (!v28)
  {
    v49 = v51[0];
    v32 = v51[0];
    v33 = sub_21B110C84();

    swift_willThrow();
    v34 = v33;
    v35 = sub_21B1122B4();
    v36 = sub_21B112704();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315138;
      v50 = v33;
      v39 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
      v40 = sub_21B112454();
      v42 = sub_21AFCEC24(v40, v41, v51);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_21AF80000, v35, v36, "Failed to remove legacy data warehouse: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x21CEEA9A0](v38, -1, -1);
      MEMORY[0x21CEEA9A0](v37, -1, -1);
    }

    else
    {
    }

LABEL_14:
    v43 = *MEMORY[0x277D85DE8];
    return;
  }

  v30 = *MEMORY[0x277D85DE8];

  v31 = v29;
}

uint64_t sub_21B0E7074()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_21B0E709C()
{
  sub_21B0E7074();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21B0E70F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_23()
{
  result = *(v0 - 296);
  v2 = *(v0 - 272);
  v3 = *(v0 - 264);
  v4 = *(v0 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_18()
{
  result = *(v0 - 128);
  v2 = *(v0 - 352);
  return result;
}

uint64_t sub_21B0E71B0(void (*a1)(void))
{
  OUTLINED_FUNCTION_3_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  v35 = *(v1 + 32);
  v36 = *(v1 + 24);
  v34 = *(v1 + 40);
  v38 = *(v1 + 41);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v37 = *(v1 + 72);
  swift_unknownObjectRetain();

  v40 = v7;

  os_unfair_lock_unlock(v4);

  OUTLINED_FUNCTION_3_4();
  v9 = *(v1 + *(v8 + 128));
  sub_21B112704();
  sub_21B112264();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21B1141D0;
  a1();
  v11 = sub_21B112924();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_21AF93F18();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 64) = v15;
  *(v10 + 72) = 0x7461676572676761;
  *(v10 + 80) = 0xEB000000006E6F69;
  OUTLINED_FUNCTION_32_0();
  *(v10 + 136) = v14;
  *(v10 + 144) = v16;
  v39 = v16;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = v17;
  sub_21B112264();

  if ((v38 & 1) == 0)
  {
    sub_21B112704();
    v18 = OUTLINED_FUNCTION_7_16();
    *(v18 + 16) = xmmword_21B113D90;
    v19 = sub_21B112924();
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = v39;
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    OUTLINED_FUNCTION_22_6();
    sub_21B112264();

    if (v5)
    {

      sub_21B112704();
      v21 = OUTLINED_FUNCTION_7_16();
      *(v21 + 16) = xmmword_21B113D90;
      *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      OUTLINED_FUNCTION_13_8();
      *(v21 + 64) = sub_21B0ECE3C(v22, &unk_27CD46F90);
      *(v21 + 32) = v5;
      OUTLINED_FUNCTION_21_5();
      sub_21B112264();
    }
  }

  if (v6)
  {

    sub_21B112704();
    v23 = OUTLINED_FUNCTION_7_16();
    *(v23 + 16) = xmmword_21B113D90;
    *(v23 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    OUTLINED_FUNCTION_12_13();
    *(v23 + 64) = sub_21B0ECE3C(v24, &unk_27CD46F80);
    *(v23 + 32) = v6;
    OUTLINED_FUNCTION_21_5();
    sub_21B112264();
  }

  v25 = v7;
  result = sub_21B0EC838(v7);
  if (!result)
  {
    goto LABEL_14;
  }

  v27 = result;
  if (result >= 1)
  {

    v28 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v29 = OUTLINED_FUNCTION_48_1();
        MEMORY[0x21CEE9BB0](v29);
      }

      else
      {
        v30 = *(v25 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      sub_21B112704();
      v31 = OUTLINED_FUNCTION_7_16();
      *(v31 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v32 = sub_21B112454();
      *(v31 + 56) = MEMORY[0x277D837D0];
      *(v31 + 64) = v39;
      *(v31 + 32) = v32;
      *(v31 + 40) = v33;
      OUTLINED_FUNCTION_40_3();
      sub_21B112264();
      swift_unknownObjectRelease();

      v25 = v40;
    }

    while (v27 != v28);

LABEL_14:
    sub_21B112704();
    OUTLINED_FUNCTION_43_3();
    sub_21B112714();
    OUTLINED_FUNCTION_43_3();
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0E7698()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v25 = *(v0 + 32);
  v26 = *(v0 + 24);
  v24 = *(v0 + 40);
  v28 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  v27 = *(v0 + 72);
  swift_unknownObjectRetain();

  v30 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  sub_21B112704();
  sub_21B112264();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21B1141D0;
  sub_21B0EBA44(*(v0 + 80));
  v7 = sub_21B112924();
  v9 = v8;
  v10 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v11 = sub_21AF93F18();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 64) = v11;
  strcpy((v6 + 72), "resourceAccess");
  *(v6 + 87) = -18;
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  v29 = v11;
  *(v6 + 112) = 0xD000000000000010;
  *(v6 + 120) = 0x800000021B141B30;
  sub_21B112264();

  if ((v28 & 1) == 0)
  {
    sub_21B112704();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21B113D90;
    v13 = sub_21B112924();
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = v29;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_21B112264();

    if (v2)
    {

      sub_21B112704();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_21B113D90;
      *(v15 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      *(v15 + 64) = sub_21B0ECE3C(&qword_27CD477A0, &unk_27CD46F90);
      *(v15 + 32) = v2;
      sub_21B112264();
    }
  }

  if (v3)
  {

    sub_21B112704();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21B113D90;
    *(v16 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    *(v16 + 64) = sub_21B0ECE3C(&unk_27CD47790, &unk_27CD46F80);
    *(v16 + 32) = v3;
    sub_21B112264();
  }

  result = sub_21B0EC838(v30);
  if (result)
  {
    v18 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEE9BB0](v19, v30);
      }

      else
      {
        v20 = *(v30 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      sub_21B112704();
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v22 = sub_21B112454();
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = v29;
      *(v21 + 32) = v22;
      *(v21 + 40) = v23;
      sub_21B112264();
      swift_unknownObjectRelease();
    }

    while (v18 != v19);
  }

  sub_21B112704();
  sub_21B112264();
  if (sub_21B0E84F0(&type metadata for ResourceAccessActivity, &off_282C96FC0, sub_21AFD3014))
  {
    sub_21B112714();
    sub_21B112264();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21B0E7C28()
{
  OUTLINED_FUNCTION_3_4();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v30 = *(v0 + 32);
  v31 = *(v0 + 24);
  v29 = *(v0 + 40);
  v33 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  v32 = *(v0 + 72);
  swift_unknownObjectRetain();

  v35 = v5;

  os_unfair_lock_unlock(v2);

  v6 = *(v0 + 96);
  sub_21B112704();
  OUTLINED_FUNCTION_9_16();
  sub_21B112264();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B1141D0;
  sub_21B0EBA44(*(v0 + 80));
  v8 = sub_21B112924();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21AF93F18();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  strcpy((v7 + 72), "networkRequest");
  *(v7 + 87) = -18;
  OUTLINED_FUNCTION_32_0();
  *(v7 + 136) = v11;
  *(v7 + 144) = v13;
  v34 = v13;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = v14;
  OUTLINED_FUNCTION_9_16();
  sub_21B112264();

  if ((v33 & 1) == 0)
  {
    sub_21B112704();
    v15 = OUTLINED_FUNCTION_7_16();
    *(v15 + 16) = xmmword_21B113D90;
    v16 = sub_21B112924();
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = v34;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    OUTLINED_FUNCTION_22_6();
    sub_21B112264();

    if (v3)
    {

      sub_21B112704();
      v18 = OUTLINED_FUNCTION_7_16();
      *(v18 + 16) = xmmword_21B113D90;
      *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      OUTLINED_FUNCTION_13_8();
      *(v18 + 64) = sub_21B0ECE3C(v19, &unk_27CD46F90);
      *(v18 + 32) = v3;
      OUTLINED_FUNCTION_21_5();
      sub_21B112264();
    }
  }

  if (v4)
  {

    sub_21B112704();
    v20 = OUTLINED_FUNCTION_7_16();
    *(v20 + 16) = xmmword_21B113D90;
    *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    OUTLINED_FUNCTION_12_13();
    *(v20 + 64) = sub_21B0ECE3C(v21, &unk_27CD46F80);
    *(v20 + 32) = v4;
    OUTLINED_FUNCTION_21_5();
    sub_21B112264();
  }

  result = sub_21B0EC838(v35);
  if (result)
  {
    v23 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEE9BB0](v24, v35);
      }

      else
      {
        v25 = *(v35 + 8 * v24 + 32);
        swift_unknownObjectRetain();
      }

      ++v24;
      sub_21B112704();
      v26 = OUTLINED_FUNCTION_7_16();
      *(v26 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v27 = sub_21B112454();
      *(v26 + 56) = MEMORY[0x277D837D0];
      *(v26 + 64) = v34;
      *(v26 + 32) = v27;
      *(v26 + 40) = v28;
      OUTLINED_FUNCTION_40_3();
      sub_21B112264();
      swift_unknownObjectRelease();
    }

    while (v23 != v24);
  }

  sub_21B112704();
  OUTLINED_FUNCTION_22_6();
  sub_21B112264();
  if (sub_21B0E84F0(&type metadata for ResourceNetworkActivity, &off_282C96A00, sub_21AFD2FEC))
  {
    sub_21B112714();
    OUTLINED_FUNCTION_22_6();
    sub_21B112264();
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21B0E8140(uint64_t a1)
{
  OUTLINED_FUNCTION_3_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v1 + 48);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);
}

const char *sub_21B0E81CC()
{
  v1 = sub_21B1113D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + *(*v0 + 112), v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D3E098])
  {
    return "initialization";
  }

  if (v6 == *MEMORY[0x277D3E090])
  {
    return "validation";
  }

  if (v6 == *MEMORY[0x277D3E088])
  {
    return "processing";
  }

  (*(v2 + 8))(v5, v1);
  return "unknown";
}

const char *sub_21B0E834C()
{
  v1 = sub_21B111424();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0 + *(*v0 + 112), v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D3E0D0])
  {
    return "engine";
  }

  if (v6 == *MEMORY[0x277D3E0C8])
  {
    return "initialization";
  }

  if (v6 == *MEMORY[0x277D3E0C0])
  {
    return "validation";
  }

  if (v6 == *MEMORY[0x277D3E0B8])
  {
    return "processing";
  }

  (*(v2 + 8))(v5, v1);
  return "unknown";
}

uint64_t sub_21B0E84F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_0(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return a3 & 1;
}

uint64_t sub_21B0E8550()
{
  v1 = sub_21B110F84();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_3_4();
  (*(v4 + 16))(v9, v0 + *(v10 + 144), v1);
  sub_21B110F24();
  return (*(v4 + 8))(v9, v1);
}

void sub_21B0E866C()
{
  OUTLINED_FUNCTION_76();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38_4();
  v12 = sub_21B1113D4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_9();
  sub_21AF99A84(v67, &v66, &qword_27CD477E8, &unk_21B12BD58);
  sub_21B0EA8FC(v0, sub_21B0EACB4);
  if ((v69 & 1) != 0 || !v70)
  {
    OUTLINED_FUNCTION_8();
    v41 = *(v40 + 112);
    OUTLINED_FUNCTION_20_7();
    v42(v20);
    OUTLINED_FUNCTION_8();
    v44 = *(v43 + 136);
    OUTLINED_FUNCTION_18_6();
    sub_21AF99A84(v3 + v44, v10, &qword_27CD47750, &qword_21B128908);
    v45 = sub_21B1122A4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v45) != 1)
    {
      OUTLINED_FUNCTION_8();
      v47 = *(v3 + *(v46 + 128));
      sub_21B112734();
      sub_21AF92A48();
      OUTLINED_FUNCTION_9_19();
      sub_21B112284();
      (*(v15 + 8))(v20, v12);
      OUTLINED_FUNCTION_7_2(v45);
      v49 = *(v48 + 8);
      v50 = OUTLINED_FUNCTION_48_1();
      v52(v50, v51);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v65 = v67[1];
  HIDWORD(v64) = v68;
  OUTLINED_FUNCTION_8();
  v23 = *(v22 + 112);
  OUTLINED_FUNCTION_20_7();
  v24(v2);
  OUTLINED_FUNCTION_8();
  v26 = *(v25 + 136);
  OUTLINED_FUNCTION_18_6();
  sub_21AF99A84(v3 + v26, v1, &qword_27CD47750, &qword_21B128908);
  v27 = sub_21B1122A4();
  OUTLINED_FUNCTION_203(v1);
  if (v28)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8();
  v30 = *(v3 + *(v29 + 128));

  sub_21B112734();
  sub_21AF92A48();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_19_6(v31, v32, v33, v34, v35, v36, v37, v38, v64, v65);

  (*(v15 + 8))(v2, v12);
  OUTLINED_FUNCTION_7_2(v27);
  (*(v39 + 8))(v1, v27);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = Strong;
    v66 = v3;
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    v55 = *(*(v54 + 32) + 16);
    os_unfair_lock_lock(v55);
    OUTLINED_FUNCTION_31_6();
    sub_21B0B58C8(v56, v57, v58, v59, v60);

    os_unfair_lock_unlock(v55);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(v54 + 24);
      ObjectType = swift_getObjectType();
      (*(v61 + 16))(v3, &off_282C95908, ObjectType, v61);
      swift_unknownObjectRelease();
    }

    LOBYTE(v66) = 1;

    sub_21B0ED1A4(v67, &qword_27CD477E8);
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_42_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_8();
    *(v3 + *(v63 + 120)) = 1;
    swift_weakAssign();
  }

  else
  {
    sub_21B112714();
    sub_21B112264();
    sub_21B0ED1A4(v67, &qword_27CD477E8);
  }

  OUTLINED_FUNCTION_77();
}

void sub_21B0E8B14()
{
  OUTLINED_FUNCTION_76();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38_4();
  v12 = sub_21B111424();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11_9();
  sub_21AF99A84(v67, &v66, &qword_27CD477B8, &unk_21B12BD40);
  sub_21B0EA8FC(v0, sub_21B0EADE4);
  if ((v69 & 1) != 0 || !v70)
  {
    OUTLINED_FUNCTION_8();
    v41 = *(v40 + 112);
    OUTLINED_FUNCTION_20_7();
    v42(v20);
    OUTLINED_FUNCTION_8();
    v44 = *(v43 + 136);
    OUTLINED_FUNCTION_18_6();
    sub_21AF99A84(v3 + v44, v10, &qword_27CD47750, &qword_21B128908);
    v45 = sub_21B1122A4();
    if (__swift_getEnumTagSinglePayload(v10, 1, v45) != 1)
    {
      OUTLINED_FUNCTION_8();
      v47 = *(v3 + *(v46 + 128));
      sub_21B112734();
      sub_21B0B2458();
      OUTLINED_FUNCTION_9_19();
      sub_21B112284();
      (*(v15 + 8))(v20, v12);
      OUTLINED_FUNCTION_7_2(v45);
      v49 = *(v48 + 8);
      v50 = OUTLINED_FUNCTION_48_1();
      v52(v50, v51);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v65 = v67[1];
  HIDWORD(v64) = v68;
  OUTLINED_FUNCTION_8();
  v23 = *(v22 + 112);
  OUTLINED_FUNCTION_20_7();
  v24(v2);
  OUTLINED_FUNCTION_8();
  v26 = *(v25 + 136);
  OUTLINED_FUNCTION_18_6();
  sub_21AF99A84(v3 + v26, v1, &qword_27CD47750, &qword_21B128908);
  v27 = sub_21B1122A4();
  OUTLINED_FUNCTION_203(v1);
  if (v28)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8();
  v30 = *(v3 + *(v29 + 128));

  sub_21B112734();
  sub_21B0B2458();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_19_6(v31, v32, v33, v34, v35, v36, v37, v38, v64, v65);

  (*(v15 + 8))(v2, v12);
  OUTLINED_FUNCTION_7_2(v27);
  (*(v39 + 8))(v1, v27);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v54 = Strong;
    v66 = v3;
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    v55 = *(*(v54 + 32) + 16);
    os_unfair_lock_lock(v55);
    OUTLINED_FUNCTION_31_6();
    sub_21B0B58C8(v56, v57, v58, v59, v60);

    os_unfair_lock_unlock(v55);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v61 = *(v54 + 24);
      ObjectType = swift_getObjectType();
      (*(v61 + 16))(v3, &off_282C95908, ObjectType, v61);
      swift_unknownObjectRelease();
    }

    LOBYTE(v66) = 1;

    sub_21B0ED1A4(v67, &qword_27CD477B8);
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_42_3(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_8();
    *(v3 + *(v63 + 120)) = 1;
    swift_weakAssign();
  }

  else
  {
    sub_21B112714();
    sub_21B112264();
    sub_21B0ED1A4(v67, &qword_27CD477B8);
  }

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0E8FBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_21AF99A84(&v40, v38, &unk_27CD47770, &unk_21B12BD08);
  sub_21B0EAAEC(v10, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_21AF99A84(v1 + v15, v8, &qword_27CD47750, &qword_21B128908);
      v16 = sub_21B1122A4();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 96);

        v19 = sub_21B112734();
        v20 = sub_21B0EBA44(v14);
        LOBYTE(v36) = v13;
        sub_21AFD3040(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_21AF99A84(v1 + v23, v6, &qword_27CD47750, &qword_21B128908);
  v24 = sub_21B1122A4();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v1 + 96);
  sub_21B112734();
  sub_21B0EBA44(v22);
  sub_21B112284();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    *&v38[0] = v1;
    v28 = sub_21B112454();
    v30 = v29;
    v31 = *(*(v27 + 32) + 16);
    os_unfair_lock_lock(v31);
    sub_21B0B58C8(v27, v28, v30, v1, &off_282C95908);

    os_unfair_lock_unlock(v31);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v27 + 24);
      ObjectType = swift_getObjectType();
      (*(v32 + 16))(v1, &off_282C95908, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_21B0ED1A4(&v40, &unk_27CD47770);
    v34 = v38[0];
    v35 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v35;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v34;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_21B0ED1A4(v38, &unk_27CD47770);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_21B0E84F0(&type metadata for ResourceNetworkActivity, &off_282C96A00, sub_21AFD2FEC))
    {
      sub_21B112714();
      sub_21B112264();
    }

    return sub_21B0ED1A4(&v40, &unk_27CD47770);
  }
}

uint64_t sub_21B0E9474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7 + 16;
  v9 = *(v0 + 40);
  v40 = *(v0 + 24);
  v41 = v9;
  v42 = *(v0 + 56);
  v43 = *(v0 + 72);
  v10 = *(&v9 + 1);
  sub_21AF99A84(&v40, v38, &qword_27CD47758, &unk_21B12BCF0);
  sub_21B0EAAEC(v10, 0x656372756F736572, 0xEE00737365636341);
  if ((BYTE1(v41) & 1) == 0)
  {
    v11 = v42;
    if (v42)
    {
      v12 = v40;
      v13 = v41;
      v14 = *(v1 + 80);
      v15 = *(*v1 + 136);
      swift_beginAccess();
      sub_21AF99A84(v1 + v15, v8, &qword_27CD47750, &qword_21B128908);
      v16 = sub_21B1122A4();
      result = __swift_getEnumTagSinglePayload(v8, 1, v16);
      if (result != 1)
      {
        v18 = *(v1 + 96);

        v19 = sub_21B112734();
        v20 = sub_21B0EBA44(v14);
        LOBYTE(v36) = v13;
        sub_21AFD3040(v19, v18, v20, v21, 2, v8, v12, *(&v12 + 1), v36, v11);

        (*(*(v16 - 8) + 8))(v8, v16);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v22 = *(v1 + 80);
  v23 = *(*v1 + 136);
  swift_beginAccess();
  sub_21AF99A84(v1 + v23, v6, &qword_27CD47750, &qword_21B128908);
  v24 = sub_21B1122A4();
  result = __swift_getEnumTagSinglePayload(v6, 1, v24);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v25 = *(v1 + 96);
  sub_21B112734();
  sub_21B0EBA44(v22);
  sub_21B112284();
  (*(*(v24 - 8) + 8))(v6, v24);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    *&v38[0] = v1;
    v28 = sub_21B112454();
    v30 = v29;
    v31 = *(*(v27 + 32) + 16);
    os_unfair_lock_lock(v31);
    sub_21B0B58C8(v27, v28, v30, v1, &off_282C95908);

    os_unfair_lock_unlock(v31);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v32 = *(v27 + 24);
      ObjectType = swift_getObjectType();
      (*(v32 + 16))(v1, &off_282C95908, ObjectType, v32);
      swift_unknownObjectRelease();
    }

    LOBYTE(v38[0]) = 1;

    sub_21B0ED1A4(&v40, &qword_27CD47758);
    v34 = v38[0];
    v35 = *(v1 + 40);
    v38[0] = *(v1 + 24);
    v38[1] = v35;
    v38[2] = *(v1 + 56);
    v39 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v34;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_21B0ED1A4(v38, &qword_27CD47758);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_21B0E84F0(&type metadata for ResourceAccessActivity, &off_282C96FC0, sub_21AFD3014))
    {
      sub_21B112714();
      sub_21B112264();
    }

    return sub_21B0ED1A4(&v40, &qword_27CD47758);
  }
}

uint64_t sub_21B0E992C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  v11 = *(v4 + 56);
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
  OUTLINED_FUNCTION_114();
}

void sub_21B0E9A2C()
{
  OUTLINED_FUNCTION_76();
  v71 = v1;
  v75 = v2;
  v76 = v3;
  v4 = v0;
  v72 = v5;
  v73 = v6;
  v74 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v13 = OUTLINED_FUNCTION_25(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v77 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = sub_21B110F84();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = MEMORY[0x277D84F90];
  *(v0 + 72) = 0;
  OUTLINED_FUNCTION_3_4();
  *(v0 + *(v30 + 120)) = 0;
  OUTLINED_FUNCTION_3_4();
  v32 = *(v31 + 128);
  sub_21AF9406C(0, &qword_27CD46FC8, 0x277D86200);
  OUTLINED_FUNCTION_32_0();
  v78 = 0xD000000000000010;
  v79 = v33;
  v82 = 45;
  v83 = 0xE100000000000000;
  v80 = 95;
  v81 = 0xE100000000000000;
  v69 = sub_21AFC921C();
  sub_21B112804();
  *(v0 + v32) = sub_21B112764();
  OUTLINED_FUNCTION_8();
  v35 = *(v34 + 136);
  v36 = sub_21B1122A4();
  __swift_storeEnumTagSinglePayload(v4 + v35, 1, 1, v36);
  OUTLINED_FUNCTION_8();
  v38 = *(v37 + 152);
  type metadata accessor for Locker();
  v39 = swift_allocObject();
  v40 = swift_slowAlloc();
  *(v39 + 16) = v40;
  *v40 = 0;
  *(v4 + v38) = v39;
  sub_21B110F74();
  OUTLINED_FUNCTION_8();
  (*(v24 + 32))(v4 + *(v41 + 144), v29, v21);
  swift_weakAssign();
  OUTLINED_FUNCTION_8();
  v43 = *(v42 + 112);
  v44 = v76(0);
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  v76 = v9;
  v46(v4 + v43, v9, v44);
  OUTLINED_FUNCTION_8();
  v48 = *(v47 + 128);
  *(v4 + v48);

  sub_21B112294();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v36);
  OUTLINED_FUNCTION_8();
  v50 = *(v49 + 136);
  swift_beginAccess();
  sub_21B0ED0B8(v20, v4 + v50);
  swift_endAccess();
  v78 = v4;

  sub_21B112454();
  OUTLINED_FUNCTION_28_3();
  v51 = *(*(v11 + 32) + 16);
  os_unfair_lock_lock(v51);
  OUTLINED_FUNCTION_31_6();
  sub_21B0B576C(v52, v53, v54, v55, v56);

  os_unfair_lock_unlock(v51);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v57 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    (*(v57 + 8))(v4, &off_282C95908, ObjectType, v57);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v59 = v4 + v50;
  v60 = v77;
  sub_21AF99A84(v59, v77, &qword_27CD47750, &qword_21B128908);
  OUTLINED_FUNCTION_203(v60);
  if (v61)
  {
    __break(1u);
  }

  else
  {
    v62 = *(v4 + v48);
    v63 = sub_21B112744();
    v64 = v76;
    v71();
    OUTLINED_FUNCTION_9_19();
    LOBYTE(v69) = v72;
    sub_21AFD3040(v63, v62, v65, v66, v67, v60, v73, v74, v69, v75);

    (*(v45 + 8))(v64, v44);
    OUTLINED_FUNCTION_7_2(v36);
    (*(v68 + 8))(v60, v36);
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0E9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v45 = a4;
  v46 = a6;
  v43 = a5;
  v44 = a3;
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v42[-v14];
  v16 = sub_21B110F84();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_21AF9406C(0, &qword_27CD46FC8, 0x277D86200);
  v48 = 0xD000000000000010;
  v49 = 0x800000021B141B30;
  v52 = 45;
  v53 = 0xE100000000000000;
  v50 = 95;
  v51 = 0xE100000000000000;
  v41 = sub_21AFC921C();
  sub_21B112804();
  *(v6 + 96) = sub_21B112764();
  v21 = *(*v6 + 136);
  v22 = sub_21B1122A4();
  __swift_storeEnumTagSinglePayload(v7 + v21, 1, 1, v22);
  v23 = *(*v7 + 19);
  type metadata accessor for Locker();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v7 + v23) = v24;
  sub_21B110F74();
  v26 = v20;
  v27 = v47;
  (*(v17 + 32))(v7 + *(*v7 + 18), v26, v16);
  swift_weakAssign();
  v7[10] = v27;
  v28 = v7[12];

  sub_21B112294();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v22);
  v29 = *(*v7 + 17);
  swift_beginAccess();
  sub_21B0ED0B8(v15, v7 + v29);
  swift_endAccess();
  v48 = v7;

  v30 = sub_21B112454();
  v32 = v31;
  v33 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v33);
  sub_21B0B576C(a1, v30, v32, v7, &off_282C95908);

  os_unfair_lock_unlock(v33);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v34 + 8))(v7, &off_282C95908, ObjectType, v34);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21AF99A84(v7 + v29, v13, &qword_27CD47750, &qword_21B128908);
  result = __swift_getEnumTagSinglePayload(v13, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v37 = v7[12];
    v38 = sub_21B112744();
    v39 = sub_21B0EBA44(v27);
    LOBYTE(v41) = v43;
    sub_21AFD3040(v38, v37, v39, v40, 2, v13, v44, v45, v41, v46);

    (*(*(v22 - 8) + 8))(v13, v22);
    sub_21B0EA78C();

    return v7;
  }

  return result;
}

void *sub_21B0EA49C(uint64_t (*a1)(void))
{
  if ((*(v1 + *(*v1 + 120)) & 1) == 0)
  {
    (*(*v1 + 400))();
  }

  swift_weakDestroy();
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_4();
  v8 = *(v7 + 112);
  v9 = a1(0);
  OUTLINED_FUNCTION_0_1(v9);
  (*(v10 + 8))(v1 + v8);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_3_4();
  sub_21B0ED1A4(v1 + *(v12 + 136), &qword_27CD47750);
  OUTLINED_FUNCTION_3_4();
  v14 = *(v13 + 144);
  v15 = sub_21B110F84();
  OUTLINED_FUNCTION_0_1(v15);
  (*(v16 + 8))(v1 + v14);
  OUTLINED_FUNCTION_3_4();
  v18 = *(v1 + *(v17 + 152));

  return v1;
}

uint64_t sub_21B0EA630()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_4();
  sub_21B0ED1A4(v0 + *(v5 + 136), &qword_27CD47750);
  OUTLINED_FUNCTION_3_4();
  v7 = *(v6 + 144);
  v8 = sub_21B110F84();
  OUTLINED_FUNCTION_0_1(v8);
  (*(v9 + 8))(v0 + v7);
  OUTLINED_FUNCTION_3_4();
  v11 = *(v0 + *(v10 + 152));

  return v0;
}

BOOL sub_21B0EA764(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_282C8D8C8 != a1);
  return (v2 & 1) == 0;
}

uint64_t sub_21B0EA78C()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_282C96FE8;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_0(v5, &type metadata for ResourceAccessActivity);
  if (sub_21B0EA764(*v2))
  {
    MEMORY[0x21CEE9770](46, 0xE100000000000000);

    MEMORY[0x21CEE9770](0x656372756F736572, 0xEE00737365636341);

    sub_21B0EBA44(v1);
    v3 = sub_21B112924();
    MEMORY[0x21CEE9770](v3);

    MEMORY[0x21CEE9770](46, 0xE100000000000000);

    sub_21B0EB130(0xD000000000000010, 0x800000021B141B30, v0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_21B0EA8FC(uint64_t a1, uint64_t (*a2)(void))
{
  if (a2())
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(v3 + 272))())
    {
      v4 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_3_4();
      v6 = *(v2 + *(v5 + 128));
      sub_21B1126F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21B113DB0;
      *(v7 + 56) = v4;
      v8 = sub_21AF93F18();
      *(v7 + 64) = v8;
      *(v7 + 32) = 0x7461676572676761;
      *(v7 + 40) = 0xEB000000006E6F69;
      sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
      v9 = sub_21B112314();
      *(v7 + 96) = v4;
      *(v7 + 104) = v8;
      *(v7 + 72) = v9;
      *(v7 + 80) = v10;
      OUTLINED_FUNCTION_35_5();
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_6();
    MEMORY[0x21CEE9770](0x7461676572676761, 0xEB000000006E6F69);
    sub_21B1123D4();
    OUTLINED_FUNCTION_39_2();

    sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
    v11 = sub_21B1122E4();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
  }
}

void sub_21B0EAAEC(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_21B0EB038(a1))
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(v6 + 272))())
    {
      v7 = MEMORY[0x277D837D0];
      v8 = *(v3 + 96);
      sub_21B1126F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21B113DB0;
      *(v9 + 56) = v7;
      v10 = sub_21AF93F18();
      *(v9 + 64) = v10;
      *(v9 + 32) = a2;
      *(v9 + 40) = a3;
      sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
      v11 = sub_21B112314();
      *(v9 + 96) = v7;
      *(v9 + 104) = v10;
      *(v9 + 72) = v11;
      *(v9 + 80) = v12;
      OUTLINED_FUNCTION_35_5();
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_6();
    MEMORY[0x21CEE9770](a2, a3);
    sub_21B1123D4();
    OUTLINED_FUNCTION_39_2();

    sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
    v13 = sub_21B1122E4();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
  }
}

uint64_t sub_21B0EACB4(uint64_t result)
{
  if (result)
  {
    v2 = result;
    v3 = *(*v1 + 112);
    sub_21B1113D4();
    sub_21AF9C430(&unk_27CD477F0, MEMORY[0x277D3E0A0]);

    sub_21B1125B4();
    v4 = sub_21B1127D4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v4, 1701869940, 0xE400000000000000);
    sub_21B0E8550();
    v5 = sub_21B112674();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v5, 0x6E6F697461727564, 0xE800000000000000);
    return v2;
  }

  return result;
}

uint64_t sub_21B0EADE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B111424();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2 + *(*v2 + 112), v4);
  (*(v5 + 8))(v8, v4);
  v10 = dynamic_cast_existential_1_conditional(v4);
  result = 0;
  if (v10)
  {
    if (a1)
    {
      v12 = v9;
      v13 = *(v9 + 16);

      v14 = v13(v10, v12);
      v16 = v15;
      sub_21AF9C430(&unk_27CD477C0, MEMORY[0x277D3E0D8]);
      sub_21B1125B4();
      v17 = sub_21B1127D4();
      swift_isUniquelyReferenced_nonNull_native();
      v23 = a1;
      sub_21B0EC85C(v17, v14, v16);

      v18 = v23;
      v19 = (*(v12 + 8))(v10, v12);
      v21 = v20;
      sub_21B0E8550();
      v22 = sub_21B112674();
      swift_isUniquelyReferenced_nonNull_native();
      v24 = v18;
      sub_21B0EC85C(v22, v19, v21);

      return v24;
    }
  }

  return result;
}

uint64_t sub_21B0EB038(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    sub_21B1127D4();
    OUTLINED_FUNCTION_39_2();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v4, 1701869940, 0xE400000000000000);
    sub_21B0E8550();
    v5 = sub_21B112674();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v5, 0x6E6F697461727564, 0xE800000000000000);
    return v3;
  }

  return result;
}

uint64_t sub_21B0EB0F4(uint64_t a1, uint64_t a2)
{
  v3 = os_transaction_create();
  v4 = *(a2 + 72);
  *(a2 + 72) = v3;
  return swift_unknownObjectRelease();
}

uint64_t sub_21B0EB130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    v4 = os_transaction_create();
    v5 = *(a3 + 72);
    *(a3 + 72) = v4;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_21B1128F4();
  }
}

void sub_21B0EB1EC()
{
  if ((v0[88] & 1) == 0)
  {
    v1 = v0;
    v2 = sub_21B0EB4A0();
    v4 = MEMORY[0x277D837D0];
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v6 = OUTLINED_FUNCTION_7_16();
      *(v6 + 16) = xmmword_21B113D90;
      v7 = &v0[*(*v0 + 464)];
      v8 = *v7;
      v9 = v7[1];
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(ObjectType, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
      sub_21B112454();
      OUTLINED_FUNCTION_28_3();
      *(v6 + 56) = v4;
      *(v6 + 64) = sub_21AF93F18();
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      OUTLINED_FUNCTION_9_16();
      sub_21B0E992C(v11, v12, v13, v14);
    }

    else
    {
      v15 = *(*v0 + 568);
      v16 = OUTLINED_FUNCTION_27_6(v2, v3);
      v17(v16);
    }

    v18 = *(*&v1[*(*v1 + 152)] + 16);

    os_unfair_lock_lock(v18);
    if ((v1[88] & 1) == 0)
    {
      v19 = *(*v1 + 480);
      if (*&v1[v19])
      {
        v20 = *&v1[v19];
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          *&v1[*(*v1 + 472)];
          nw_activity_complete_with_reason();
        }

        else
        {
          v21 = *(v1 + 12);
          sub_21B1126E4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
          v22 = OUTLINED_FUNCTION_7_16();
          *(v22 + 16) = xmmword_21B113D90;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
          v23 = sub_21B112454();
          v25 = v24;
          *(v22 + 56) = v4;
          *(v22 + 64) = sub_21AF93F18();
          *(v22 + 32) = v23;
          *(v22 + 40) = v25;
          sub_21B112264();
        }

        swift_unknownObjectRelease();
      }

      sub_21B0E8FBC();
    }

    os_unfair_lock_unlock(v18);
  }
}

uint64_t sub_21B0EB4A0()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = (v0 + *(v2 + 464));
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = v7(ObjectType, v5);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 statusCode];
      if (!(*(v5 + 8))(ObjectType, v5))
      {

        *&result = 0.0;
        return result;
      }

      OUTLINED_FUNCTION_32_0();
      *&v111 = 0xD000000000000021;
      *(&v111 + 1) = v11;
      v12 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v12, v13, v14, v15, v16, v17, v18, v19, v76, v80, v84, v88, v92, v97, v102, v106, v107, v108, v109, v110, v111);
      sub_21B0B6350(&v106);
      if (v112)
      {
        OUTLINED_FUNCTION_17_10();
      }

      else
      {
        sub_21B0ED1A4(&v111, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      *&v111 = 0xD00000000000001DLL;
      *(&v111 + 1) = v39;
      v40 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v40, v41, v42, v43, v44, v45, v46, v47, v77, v81, v85, v89, v93, v98, v103, v106, v107, v108, v109, v110, v111);
      sub_21B0B6350(&v106);
      if (v112)
      {
        OUTLINED_FUNCTION_17_10();
      }

      else
      {
        sub_21B0ED1A4(&v111, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      v94 = v48;
      v49 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v49, v50, v51, v52, v53, v54, v55, v56, v78, v82, v86, 0xD00000000000001BLL, v94, v99, v104, v106, v107, v108, v109, v110, v111);
      sub_21B0B6350(&v106);
      if (v112)
      {
        if (OUTLINED_FUNCTION_17_10())
        {
          v101 = v90;
          goto LABEL_26;
        }
      }

      else
      {
        sub_21B0ED1A4(&v111, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      v95 = v57;
      v58 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v58, v59, v60, v61, v62, v63, v64, v65, v79, v83, v87, 0xD00000000000001BLL, v95, v100, v105, v106, v107, v108, v109, v110, v111);
      sub_21B0B6350(&v106);
      if (v112)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          v66 = *&v101;
          OUTLINED_FUNCTION_32_0();
          v96 = v67;
          v68 = sub_21B1128A4();
          OUTLINED_FUNCTION_23_6(v68, v69, v70, v71, v72, v73, v74, v75, v79, v83, v87, 0xD00000000000001ALL, v96, v101, v105, v106, v107, v108, v109, v110, v111);

          sub_21B0B6350(&v106);
          if (v112)
          {
            if (OUTLINED_FUNCTION_17_10())
            {
              *&result = v91 - v66;
              return result;
            }
          }

          else
          {
            sub_21B0ED1A4(&v111, &unk_27CD47250);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_21B0ED1A4(&v111, &unk_27CD47250);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v20 = OUTLINED_FUNCTION_7_16();
  *(v20 + 16) = xmmword_21B113D90;
  v106 = v7(ObjectType, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  sub_21B112454();
  OUTLINED_FUNCTION_28_3();
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = sub_21AF93F18();
  *(v20 + 64) = v22;
  *(v20 + 32) = v4;
  *(v20 + 40) = v5;
  OUTLINED_FUNCTION_9_16();
  sub_21B0E992C(v23, v24, v25, v26);

  OUTLINED_FUNCTION_8();
  v28 = *(*(v1 + *(v27 + 152)) + 16);

  os_unfair_lock_lock(v28);
  if ((*(v1 + 88) & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v30 = *(v29 + 480);
    v31 = *(v1 + v30);
    if (v31)
    {
      v32 = *(v1 + v30);
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        OUTLINED_FUNCTION_8();
        *(v1 + *(v33 + 472));
        nw_activity_complete_with_reason();
      }

      else
      {
        v35 = *(v1 + 96);
        sub_21B1126E4();
        v36 = OUTLINED_FUNCTION_7_16();
        *(v36 + 16) = xmmword_21B113D90;
        v106 = v31;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
        v37 = sub_21B112454();
        *(v36 + 56) = v21;
        *(v36 + 64) = v22;
        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        sub_21B112264();
      }

      swift_unknownObjectRelease();
    }

    sub_21B0E8FBC();
  }

  os_unfair_lock_unlock(v28);

  *&result = 0.0;
  return result;
}

const char *sub_21B0EBA44(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_21B112E24();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

uint64_t sub_21B0EBE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a5 & 1;
  *(v6 + qword_27CD47700) = 0;
  *(v6 + qword_27CD6E8D8) = 0;
  v12 = v6 + qword_27CD6E8E0;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v6 + qword_27CD47708) = 0;
  v13 = qword_27CD6E8E8;
  v14 = sub_21B111E64();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6 + v13, a3, v14);
  *v12 = a4;
  *(v12 + 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B113D90;
    v17 = sub_21B111E44();
    v19 = v18;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_21AF93F18();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = "client=%{signpost.description:attribute,public}s";
    v21 = a1;
    v22 = a2;
    v23 = 48;
    v24 = inited;
  }

  else
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_21B113DB0;
    v26 = sub_21B111E44();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x277D837D0];
    v29 = sub_21AF93F18();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = MEMORY[0x277D84D90];
    *(v25 + 96) = MEMORY[0x277D84D38];
    *(v25 + 104) = v30;
    *(v25 + 64) = v29;
    *(v25 + 72) = a4;
    v20 = "client=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v21 = a1;
    v22 = a2;
    v23 = 104;
    v24 = v25;
  }

  v31 = sub_21B0E9F74(v21, v22, v20, v23, 2, v24);
  (*(v15 + 8))(a3, v14);
  return v31;
}

uint64_t sub_21B0EC084()
{
  v1 = *(v0 + qword_27CD6E8D8);

  v2 = qword_27CD6E8E8;
  v3 = sub_21B111E64();
  OUTLINED_FUNCTION_0_1(v3);
  v5 = *(v4 + 8);

  return v5(v0 + v2);
}

uint64_t sub_21B0EC0F0()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_21B0EC504();
  }

  v1 = sub_21B0EA630();
  v2 = *(v1 + qword_27CD6E8D8);

  v3 = qword_27CD6E8E8;
  v4 = sub_21B111E64();
  OUTLINED_FUNCTION_0_1(v4);
  (*(v5 + 8))(v1 + v3);
  return v1;
}

uint64_t sub_21B0EC168()
{
  v0 = sub_21B0EC0F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessSpan()
{
  result = qword_27CD47718;
  if (!qword_27CD47718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0EC208()
{
  result = sub_21B111E64();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B0EC2C0()
{
  v1 = *(v0 + 96);
  sub_21B112704();
  OUTLINED_FUNCTION_7_17();
  sub_21B112264();
  sub_21B0E7698();
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v2 = OUTLINED_FUNCTION_7_16();
  *(v2 + 16) = xmmword_21B113D90;
  v19 = *(v0 + qword_27CD47700);
  v3 = sub_21B112454();
  v5 = v4;
  v6 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  v7 = sub_21AF93F18();
  *(v2 + 64) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  OUTLINED_FUNCTION_7_17();
  sub_21B112264();

  sub_21B112704();
  v8 = OUTLINED_FUNCTION_7_16();
  *(v8 + 16) = xmmword_21B113D90;
  v17 = *(v0 + qword_27CD6E8E0);
  v18 = *(v0 + qword_27CD6E8E0 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47780, &qword_21B12BD18);
  v9 = sub_21B112454();
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v9;
  *(v8 + 40) = v10;
  OUTLINED_FUNCTION_7_17();
  sub_21B112264();

  sub_21B112704();
  v11 = OUTLINED_FUNCTION_7_16();
  v12 = *(v0 + qword_27CD6E8D8);
  *(v11 + 16) = xmmword_21B113D90;
  v13 = v12 == 0;
  v14 = 7562617;
  if (v13)
  {
    v14 = 28526;
  }

  v15 = 0xE300000000000000;
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  if (v13)
  {
    v15 = 0xE200000000000000;
  }

  *(v11 + 32) = v14;
  *(v11 + 40) = v15;
  OUTLINED_FUNCTION_7_17();
  sub_21B112264();

  sub_21B112704();
  OUTLINED_FUNCTION_7_17();
  return sub_21B112264();
}

void sub_21B0EC504()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + qword_27CD6E8D8);
    if (v3)
    {

      sub_21B0EB1EC();
    }

    v4 = MEMORY[0x277D837D0];
    if ((*(v2 + qword_27CD47708) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B113DB0;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_21B111E54();
      v1 = 0x277CCABB0uLL;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v6 = sub_21B112334();
      sub_21B0DF3EC(v6);
      OUTLINED_FUNCTION_39_2();

      v3 = v2;
      sub_21B0E8140(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v7 = OUTLINED_FUNCTION_7_16();
    *(v7 + 16) = xmmword_21B113D90;
    v14 = *(v2 + qword_27CD47700);
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    *(v7 + 56) = v4;
    *(v7 + 64) = sub_21AF93F18();
    *(v7 + 32) = v3;
    *(v7 + 40) = v1;
    OUTLINED_FUNCTION_9_16();
    sub_21B0E992C(v8, v9, v10, v11);

    OUTLINED_FUNCTION_8();
    v13 = *(*(v2 + *(v12 + 152)) + 16);

    os_unfair_lock_lock(v13);
    if ((*(v2 + 88) & 1) == 0)
    {
      sub_21B0E9474();
    }

    os_unfair_lock_unlock(v13);
  }
}

unint64_t sub_21B0EC760(uint64_t a1)
{
  *(a1 + 8) = sub_21B0EC790();
  result = sub_21B0EC7E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B0EC790()
{
  result = qword_27CD47730;
  if (!qword_27CD47730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47730);
  }

  return result;
}

unint64_t sub_21B0EC7E4()
{
  result = qword_27CD47738;
  if (!qword_27CD47738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47738);
  }

  return result;
}

uint64_t sub_21B0EC838(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

void sub_21B0EC85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_25_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_27(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD42E18, &qword_21B114610);
  OUTLINED_FUNCTION_30_4();
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = sub_21AF98B58(v5, v3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_21B112E54();
    __break(1u);
    return;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
    OUTLINED_FUNCTION_114();
  }

  else
  {
    sub_21B0ED024(v12, v5, v3, v4, v17);
    OUTLINED_FUNCTION_114();
  }
}

uint64_t sub_21B0EC95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = OUTLINED_FUNCTION_27_6(a1, a2);
  v11 = sub_21AF98B58(v9, v10);
  OUTLINED_FUNCTION_2_27(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
  OUTLINED_FUNCTION_30_4();
  if (sub_21B112994())
  {
    v18 = *v4;
    v19 = sub_21AF98B58(a2, a3);
    if ((v17 & 1) == (v20 & 1))
    {
      v16 = v19;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

LABEL_5:
  if (v17)
  {
    v21 = *(*v4 + 56);
    v22 = sub_21B111334();
    OUTLINED_FUNCTION_4_1(v22);
    v24 = *(v23 + 40);
    v25 = v21 + *(v23 + 72) * v16;
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  v28 = OUTLINED_FUNCTION_48_1();
  sub_21B0ECE80(v28, v29, a3, a1, v30);
  OUTLINED_FUNCTION_114();
}

void sub_21B0ECAA4()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v7 = OUTLINED_FUNCTION_4_1(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = *v0;
  v14 = sub_21B0B5BC0(v3);
  OUTLINED_FUNCTION_2_27(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v1;
  v22 = sub_21B0B5BC0(v3);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_11:
    sub_21B112E54();
    __break(1u);
    return;
  }

  v19 = v22;
LABEL_5:
  v24 = *v1;
  if (v20)
  {
    v25 = *(v24 + 56);
    v26 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    OUTLINED_FUNCTION_25(v26);
    v28 = *(v27 + 72);
    OUTLINED_FUNCTION_77();

    sub_21AFA4010(v29, v30);
  }

  else
  {
    sub_21B0B63E8(v3, v12);
    sub_21B0ECF30(v19, v12, v5, v24);
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0ECC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_25_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_27(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46FC0, &qword_21B1289D0);
  OUTLINED_FUNCTION_30_4();
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v6;
  v15 = sub_21AF98B58(v5, v3);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  v17 = *v6;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v4;
    OUTLINED_FUNCTION_114();
  }

  else
  {
    sub_21B0ED024(v12, v5, v3, v4, v17);
    OUTLINED_FUNCTION_114();
  }
}

uint64_t sub_21B0ECD0C()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_21AF98B58(v4, v2);
  OUTLINED_FUNCTION_2_27(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477A8, &unk_21B12BD30);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_21AF98B58(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_77();
  }

  else
  {
    sub_21B0ED06C(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0ECE3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_27_6(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B0ECE80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_21B111334();
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

uint64_t sub_21B0ECF30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_14_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_15_10(*(v8 + 72));
  v9 = *(v4 + 56);
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_25(v10);
  result = sub_21B0ED144(v5, v9 + *(v11 + 72) * v6, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v15;
  }

  return result;
}

uint64_t sub_21B0ECFC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_14_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v7);
  result = OUTLINED_FUNCTION_15_10(*(v8 + 72));
  *(*(v4 + 56) + 8 * v6) = v5;
  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v12;
  }

  return result;
}

unint64_t sub_21B0ED024(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21B0ED06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_21B0ED0B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0ED144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21B0ED1A4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_27_6(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_1(v5);
  (*(v6 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_10_15()
{
  v2 = *(v1 - 208);
  v3 = *(v0 + 40);
  *(v1 - 208) = *(v0 + 24);
  *(v1 - 192) = v3;
  result = *(v0 + 56);
  *(v1 - 176) = result;
  *(v1 - 160) = *(v0 + 72);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 41) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_11_9()
{
  v2 = *(v0 + 40);
  *(v1 - 144) = *(v0 + 24);
  *(v1 - 128) = v2;
  result = *(v0 + 56);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 72);
  v4 = *(v1 - 120);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;
  v5 = *(a4 + 48);

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
}

uint64_t OUTLINED_FUNCTION_15_10@<X0>(uint64_t a1@<X8>)
{

  return sub_21B0ED144(v1, v3 + a1 * v2, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
}

uint64_t OUTLINED_FUNCTION_17_10()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *(v13 - 252);
  v16 = *(v13 - 248);
  v15 = *(v13 - 240);

  sub_21AFD3040(v11, v12, a4, a5, a6, v10, v15, v16, a9, a10);
}

double OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_21B0DF010(&a16, v21, &a21);
}

unint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;

  return sub_21AF98B58(a2, a3);
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_35_5()
{

  return sub_21B112264();
}

uint64_t OUTLINED_FUNCTION_42_3@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 64) = a1;
  *(v1 + 72) = 0;

  return sub_21B0ED1A4(v3 - 208, v2);
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_21B112264();
}

uint64_t type metadata accessor for LegacyFieldManifest()
{
  result = qword_27CD47800;
  if (!qword_27CD47800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0ED5AC()
{
  result = sub_21B111874();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0ED618(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_2_22() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_2_22() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6775156 && a2 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_2_22() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7461657065527369 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_2_22();

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

uint64_t sub_21B0ED748(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656D614E65707974;
      break;
    case 2:
      result = 6775156;
      break;
    case 3:
      result = 0x7461657065527369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0ED7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0ED618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0ED7FC(uint64_t a1)
{
  v2 = sub_21B0EDC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0ED838(uint64_t a1)
{
  v2 = sub_21B0EDC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0ED874@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_21B111844();
  v4 = OUTLINED_FUNCTION_1(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v4);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47810, &qword_21B12C1A0);
  v13 = OUTLINED_FUNCTION_1(v38);
  v35 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = type metadata accessor for LegacyFieldManifest();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0EDC34();
  v22 = v39;
  sub_21B112F34();
  if (v22)
  {
    v30 = a1;
  }

  else
  {
    v32 = v20;
    v33 = v10;
    v39 = a1;
    v24 = v36;
    v23 = v37;
    v25 = v35;
    v44 = 0;
    sub_21B0EDC88();
    sub_21B112AC4();
    (*(v24 + 104))(v12, **(&unk_2782B9ED0 + v45), v23);
    v43 = 1;
    v26 = sub_21B112A44();
    v42 = 2;
    v31[1] = sub_21B112AA4();
    v41 = 3;
    sub_21B112A54();
    v28 = *(v24 + 16);
    v31[0] = v26;
    v28(v33, v12, v23);
    v40 = 1;
    v29 = v32;
    sub_21B111854();
    (*(v24 + 8))(v12, v23);
    (*(v25 + 8))(0, v38);
    sub_21B0EDCDC(v29, v34);
    v30 = v39;
  }

  return __swift_destroy_boxed_opaque_existential_0(v30);
}

unint64_t sub_21B0EDC34()
{
  result = qword_27CD47818;
  if (!qword_27CD47818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47818);
  }

  return result;
}

unint64_t sub_21B0EDC88()
{
  result = qword_27CD47820;
  if (!qword_27CD47820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47820);
  }

  return result;
}

uint64_t sub_21B0EDCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyFieldManifest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacyFieldManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0EDE20()
{
  result = qword_27CD47828;
  if (!qword_27CD47828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47828);
  }

  return result;
}

unint64_t sub_21B0EDE78()
{
  result = qword_27CD47830;
  if (!qword_27CD47830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47830);
  }

  return result;
}

unint64_t sub_21B0EDED0()
{
  result = qword_27CD47838;
  if (!qword_27CD47838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47838);
  }

  return result;
}

uint64_t sub_21B0EDF24(char a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    AvroValue.schema.getter();
    v6 = OUTLINED_FUNCTION_578();
    v8 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);

    if (v8)
    {

      a1 = 1;
    }

    else
    {
      v11 = AvroValue.schema.getter();
      MEMORY[0x28223BE20](v11);
      v10[2] = &v11;
      sub_21B0F3F14(sub_21B0F6A24, v10, v5);
      OUTLINED_FUNCTION_58_1();
    }
  }

  else
  {
    v4 = AvroValue.schema.getter();
    a1 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v4);
  }

  return a1 & 1;
}

unint64_t sub_21B0EE03C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result >> 61;
  switch(result >> 61)
  {
    case 1uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = MEMORY[0x277D84F90];
      goto LABEL_9;
    case 2uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = sub_21B112334();
      goto LABEL_9;
    case 3uLL:
      v8 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      schema.type = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      schema.name = v8;
      schema.namespace = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      schema.fields._rawValue = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(&schema, __src);
      AvroRecord.init(schema:)(__src, &schema);
      v5 = *__src;
      v6 = *&__src[8];
      v2 = *&__src[16];
      result = *&__src[24];
      v12 = *&__src[32];
      v13 = *&__src[48];
      goto LABEL_9;
    case 4uLL:
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*(v6 + 16))
      {
        v7 = *(v6 + 32);

        sub_21B0EE03C(__src, v7);

        v5 = swift_allocObject();
        *(v5 + 16) = v6;
        result = memcpy((v5 + 24), __src, 0x41uLL);
        *(v5 + 96) = 0;
LABEL_9:
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 16) = v2;
        *(a2 + 24) = result;
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 48) = v9;
        *(a2 + 64) = v3;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v2 = *(result + 16);
      result = 7;
      v5 = v2;
      v6 = v2;
      switch(v2)
      {
        case 1uLL:
          v6 = 0;
          v2 = 0;
          result = 0;
          v5 = 1;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_19_7();
          result = 1;
          break;
        case 3uLL:
          OUTLINED_FUNCTION_19_7();
          result = 2;
          break;
        case 4uLL:
          OUTLINED_FUNCTION_19_7();
          result = 3;
          break;
        case 5uLL:
          OUTLINED_FUNCTION_19_7();
          result = 4;
          break;
        case 6uLL:
          v5 = 0;
          v2 = 0;
          v6 = 0xE000000000000000;
          result = 5;
          break;
        case 7uLL:
          v6 = 0;
          v2 = 0;
          v5 = MEMORY[0x277D84F90];
          result = 6;
          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_9;
  }
}

uint64_t sub_21B0EE27C()
{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 0;
  static AvroSchema.null = result;
  return result;
}

uint64_t *AvroSchema.null.unsafeMutableAddressor()
{
  if (qword_27CD47840 != -1)
  {
    OUTLINED_FUNCTION_16_11();
  }

  return &static AvroSchema.null;
}

uint64_t sub_21B0EE31C()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  static AvroSchema.BOOLean = result;
  return result;
}

uint64_t *AvroSchema.BOOLean.unsafeMutableAddressor()
{
  if (qword_27CD47848 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.BOOLean;
}

uint64_t sub_21B0EE3D4()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  static AvroSchema.int = result;
  return result;
}

uint64_t *AvroSchema.int.unsafeMutableAddressor()
{
  if (qword_27CD47850 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.int;
}

uint64_t sub_21B0EE48C()
{
  result = swift_allocObject();
  *(result + 16) = 3;
  static AvroSchema.long = result;
  return result;
}

uint64_t *AvroSchema.long.unsafeMutableAddressor()
{
  if (qword_27CD47858 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.long;
}

uint64_t sub_21B0EE544()
{
  result = swift_allocObject();
  *(result + 16) = 4;
  static AvroSchema.float = result;
  return result;
}

uint64_t *AvroSchema.float.unsafeMutableAddressor()
{
  if (qword_27CD47860 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.float;
}

uint64_t sub_21B0EE5FC()
{
  result = swift_allocObject();
  *(result + 16) = 5;
  static AvroSchema.double = result;
  return result;
}

uint64_t *AvroSchema.double.unsafeMutableAddressor()
{
  if (qword_27CD47868 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.double;
}

uint64_t sub_21B0EE6B4()
{
  result = swift_allocObject();
  *(result + 16) = 6;
  static AvroSchema.string = result;
  return result;
}

uint64_t *AvroSchema.string.unsafeMutableAddressor()
{
  if (qword_27CD47870 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.string;
}

uint64_t sub_21B0EE76C()
{
  result = swift_allocObject();
  *(result + 16) = 7;
  static AvroSchema.bytes = result;
  return result;
}

uint64_t *AvroSchema.bytes.unsafeMutableAddressor()
{
  if (qword_27CD47878 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.bytes;
}

uint64_t sub_21B0EE82C(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t static AvroSchema.array(itemSchema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29_6();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x7961727261;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x2000000000000000;
}

uint64_t static AvroSchema.array(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_29_6();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_87_1(v1);

  return v0 | 0x2000000000000000;
}

uint64_t static AvroSchema.map(valueSchema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29_6();
  v2 = swift_allocObject();
  *(v2 + 16) = 7364973;
  *(v2 + 24) = 0xE300000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x4000000000000000;
}

uint64_t static AvroSchema.map(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_29_6();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_87_1(v1);

  return v0 | 0x4000000000000000;
}

uint64_t static AvroSchema.record(name:fields:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_77_1();
  v4[2] = v5;
  v4[3] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = v0;

  return v3 | 0x6000000000000000;
}

void __swiftcall AvroRecordSchema.init(name:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value._countAndFlagsBits = 0;
  retstr->namespace.value._object = 0;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(name:namespace:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_52_1();
  v10 = swift_allocObject();

  OUTLINED_FUNCTION_77_1();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  result = v10 | 0x6000000000000000;
  *(v10 + 64) = a5;
  return result;
}

void __swiftcall AvroRecordSchema.init(name:namespace:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::String a3, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value = a3;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(schema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_21AFC5454(a1, v5);
  return v2 | 0x6000000000000000;
}

unint64_t static AvroSchema.union(of:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_61();
  v2 = swift_allocObject();
  AvroUnionSchema.init(of:)(a1);
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

SwiftAvro::AvroUnionSchema __swiftcall AvroUnionSchema.init(of:)(SwiftAvro::AvroUnionSchema of)
{
  v1 = *(of.schemas._rawValue + 2);
  if (v1)
  {
    v2 = 32;
    while (v1)
    {
      v3 = *(of.schemas._rawValue + v2);
      v2 += 8;
      --v1;
      if (v3 >> 61 == 4)
      {
        __break(1u);
        return of;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return of;
}

unint64_t static AvroSchema.union(schema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_61();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

uint64_t AvroSchema.init(for:)()
{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 3;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 4;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 5;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 6;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 7;
  return result;
}

uint64_t _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_21;
      }

LABEL_15:
      v18 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v20 || (OUTLINED_FUNCTION_51_0() & 1) != 0)
      {

        v21 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);

        if (v21)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v14 = 0;
      return v14 & 1;
    case 3uLL:
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v15;
      v25 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      if (a2 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v27[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v27[1] = v16;
      v27[2] = v17;
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(v27, v22);
      v14 = static AvroRecordSchema.__derived_struct_equals(_:_:)();
      sub_21B0CAA60(v27);
      return v14 & 1;
    case 4uLL:
      if (a2 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      v12 = OUTLINED_FUNCTION_52();
      v14 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v13);

      return v14 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_21;
      }

      v2 = *(a2 + 16);
      v3 = sub_21B0F3574(*(a1 + 16));
      v5 = v4;
      if (v3 == sub_21B0F3574(v2) && v5 == v6)
      {

LABEL_24:
        v14 = 1;
        return v14 & 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_51_0();

        return v8 & 1;
      }
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_29_6();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = 1;
      goto LABEL_8;
    case 2uLL:
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = 2;
LABEL_8:
      MEMORY[0x21CEEA150](v10);

      OUTLINED_FUNCTION_105();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v21 = OUTLINED_FUNCTION_35_2();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v21);

      break;
    case 3uLL:
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      MEMORY[0x21CEEA150](3);

      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      OUTLINED_FUNCTION_34_3();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      sub_21B112EE4();
      if (v15)
      {
        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      }

      sub_21B0F55EC(a1, v17);

      break;
    case 4uLL:
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x21CEEA150](4);

      v5 = OUTLINED_FUNCTION_7();
      sub_21B0F4590(v5, v6);
      break;
    default:
      v3 = *(a2 + 16);
      MEMORY[0x21CEEA150](0);
      sub_21B0F3574(v3);
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
  }
}

uint64_t AvroSchema.encode(to:)(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_86_1(a1, a2);

      OUTLINED_FUNCTION_57_0();
      AvroArraySchema.encode(to:)();
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_86_1(a1, a2);

      OUTLINED_FUNCTION_57_0();
      AvroMapSchema.encode(to:)();
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_25_5(a2 & 0x1FFFFFFFFFFFFFFFLL);
      sub_21AFC5454(v5, v6);
      AvroRecordSchema.encode(to:)(a1);
      return sub_21B0CAA60(v7);
    case 4uLL:
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_21B0F3FC4();

      sub_21B112624();
LABEL_8:

      break;
    default:
      result = AvroPrimitiveSchema.encode(to:)(a1, *(a2 + 16));
      break;
  }

  return result;
}

uint64_t AvroPrimitiveSchema.encode(to:)(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47890, &qword_21B12C2C8);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  sub_21B0F4018();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F44();
  sub_21B0F3574(a2);
  sub_21B112B14();
  (*(v6 + 8))(v11, v4);
}

uint64_t AvroRecordSchema.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478C0, &qword_21B12C2E0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v21[-v11];
  v13 = a1[4];
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  sub_21B0F4114();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F44();
  v14 = *v3;
  v15 = v3[1];
  v24 = 0;
  OUTLINED_FUNCTION_50_3();
  sub_21B112B14();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_50_3();
    sub_21B112B14();
    v18 = v3[4];
    v19 = v3[5];
    v23 = 2;
    OUTLINED_FUNCTION_50_3();
    sub_21B112AD4();
    v22 = v3[6];
    v21[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478D0, &qword_21B12C2E8);
    sub_21B0F5718(&qword_27CD478D8, sub_21B0F4168);
    sub_21B112B54();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t AvroSchema.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  OUTLINED_FUNCTION_88_1();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_27(v7, v7[3]);
    sub_21B0F41BC();
    sub_21B112D14();
    OUTLINED_FUNCTION_35_6();
    v1 = swift_allocObject();
    *(v1 + 16) = v6;
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

uint64_t sub_21B0EF968@<X0>(uint64_t *a1@<X8>)
{
  result = AvroSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AvroSchema.description.getter(unint64_t a1)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v11 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroArraySchema.description.getter(v12, v13, v11);
      goto LABEL_8;
    case 2uLL:
      v4 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      AvroMapSchema.description.getter(v6, v7, v5);
LABEL_8:

      return OUTLINED_FUNCTION_578();
    case 3uLL:
      OUTLINED_FUNCTION_25_5(a1 & 0x1FFFFFFFFFFFFFFFLL);
      sub_21AFC5454(v8, v9);
      AvroRecordSchema.description.getter();
      sub_21B0CAA60(v14);
      return OUTLINED_FUNCTION_52();
    case 4uLL:
      v1 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      MEMORY[0x21CEE9880](v2, &type metadata for AvroSchema);

      return OUTLINED_FUNCTION_105();
    default:
      v14[0] = *(a1 + 16);
      sub_21B112454();
      return OUTLINED_FUNCTION_52();
  }
}

uint64_t AvroRecordSchema.type.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_52();
}

uint64_t AvroRecordSchema.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_52();
}

uint64_t AvroRecordSchema.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AvroRecordSchema.namespace.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_52();
}

uint64_t AvroRecordSchema.namespace.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t AvroRecordSchema.fields.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_21B0EFC70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_21B112D04() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
      if (v7 || (sub_21B112D04() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73646C656966 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_21B112D04();

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

uint64_t sub_21B0EFDDC(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x63617073656D616ELL;
      break;
    case 3:
      result = 0x73646C656966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0EFE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0EFC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0EFE7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B0EFDD4();
  *a1 = result;
  return result;
}

uint64_t sub_21B0EFEA4(uint64_t a1)
{
  v2 = sub_21B0F4114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0EFEE0(uint64_t a1)
{
  v2 = sub_21B0F4114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvroRecordSchema.Field.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AvroRecordSchema.Field.init(name:type:optional:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_81();
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47908, &qword_21B12C2F0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_21B113DB0;
    if (qword_27CD47840 != -1)
    {
      OUTLINED_FUNCTION_16_11();
    }

    *(v5 + 32) = static AvroSchema.null;
    *(v5 + 40) = a3;
    OUTLINED_FUNCTION_61();
    v6 = swift_allocObject();
    AvroUnionSchema.init(of:)(v5);
    *(v6 + 16) = v5;
  }

  return OUTLINED_FUNCTION_7();
}

uint64_t sub_21B0F0058(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F0128(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21B0F0150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F0058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F0178(uint64_t a1)
{
  v2 = sub_21B0F5670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F01B4(uint64_t a1)
{
  v2 = sub_21B0F5670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static AvroRecordSchema.__derived_struct_equals(_:_:)()
{
  OUTLINED_FUNCTION_81();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v5 = v1[5];
  v6 = v0[5];
  if (v5)
  {
    if (v6)
    {
      v7 = v1[4] == v0[4] && v5 == v6;
      if (v7 || (sub_21B112D04() & 1) != 0)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_18:
  v8 = v1[6];
  v9 = v0[6];

  return sub_21B0F1B10(v8, v9);
}

void sub_21B0F02E0(uint64_t a1, uint64_t a2)
{
  v328 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16) || !v3 || a1 == a2)
  {
    goto LABEL_345;
  }

  v4 = 0;
  v271 = 0;
  v284 = a2 + 32;
  v285 = a1 + 32;
  v274 = *(a1 + 16);
  while (2)
  {
    v5 = 9 * v4++;
    memcpy(__dst, (v285 + 8 * v5), 0x41uLL);
    memcpy(v302, (v284 + 8 * v5), 0x41uLL);
    v6 = *&__dst[0];
    v7 = __dst[2];
    v8 = *&__dst[3];
    v9 = *&__dst[4];
    v10 = __dst[5];
    switch(LOBYTE(__dst[8]))
    {
      case 1:
        if (LOBYTE(v302[8]) != 1)
        {
          goto LABEL_345;
        }

        OUTLINED_FUNCTION_53_1();
        v45 = v27 && v43 == v44;
        if (!v45 && (sub_21B112D04() & 1) == 0)
        {
          goto LABEL_345;
        }

        v46 = OUTLINED_FUNCTION_12_14();
        sub_21B0F6800(v46, v47);
        v48 = OUTLINED_FUNCTION_11_10();
        sub_21B0F6800(v48, v49);
        v50 = OUTLINED_FUNCTION_656();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v51) & 1) == 0)
        {
          goto LABEL_344;
        }

        v52 = v8;
        v53 = v9;
        goto LABEL_167;
      case 2:
        if (LOBYTE(v302[8]) != 2)
        {
          goto LABEL_345;
        }

        OUTLINED_FUNCTION_53_1();
        v27 = v27 && v25 == v26;
        if (!v27 && (sub_21B112D04() & 1) == 0)
        {
          goto LABEL_345;
        }

        v28 = OUTLINED_FUNCTION_12_14();
        sub_21B0F6800(v28, v29);
        v30 = OUTLINED_FUNCTION_11_10();
        sub_21B0F6800(v30, v31);
        v32 = OUTLINED_FUNCTION_656();
        if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v32, v33) & 1) == 0)
        {
          goto LABEL_344;
        }

        v34 = sub_21B109594(v8, v9);
        goto LABEL_168;
      case 3:
        v273 = *&__dst[7];
        if (LOBYTE(v302[8]) != 3)
        {
          goto LABEL_345;
        }

        v278 = v4;
        v35 = v302[2];
        v36 = v302[3];
        v37 = v302[4];
        v2 = v302[5];
        v279 = *&v302[6];
        v280 = *&__dst[6];
        v272 = *&v302[7];
        v38 = *&__dst[0] == *&v302[0] && *&__dst[1] == *&v302[1];
        if (!v38 && (sub_21B112D04() & 1) == 0)
        {
          goto LABEL_345;
        }

        v39 = *&v7 == *&v35 && v8 == *&v36;
        if (!v39 && (OUTLINED_FUNCTION_66_1() & 1) == 0)
        {
          goto LABEL_345;
        }

        if (v10 == 0.0)
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 != 0.0)
          {
            goto LABEL_345;
          }
        }

        else
        {
          v4 = v278;
          v40 = v279;
          v41 = v280;
          if (v2 == 0.0)
          {
            goto LABEL_345;
          }

          if (v9 != *&v37 || *&v10 != *&v2)
          {
            OUTLINED_FUNCTION_109();
            if ((sub_21B112D04() & 1) == 0)
            {
              goto LABEL_345;
            }
          }
        }

        v54 = v41[2];
        if (v54 != v40[2])
        {
          goto LABEL_345;
        }

        if (!v54 || v41 == v40)
        {
          v117 = OUTLINED_FUNCTION_12_14();
          sub_21B0F6800(v117, v118);
          v119 = OUTLINED_FUNCTION_11_10();
          sub_21B0F6800(v119, v120);
LABEL_166:
          v53 = v272;
          v52 = v273;
LABEL_167:
          v34 = sub_21B0F02E0(v52, v53);
LABEL_168:
          v121 = v34;
          sub_21AFC54B0(v302);
          sub_21AFC54B0(__dst);
          if ((v121 & 1) == 0)
          {
            goto LABEL_345;
          }

LABEL_284:
          if (v4 == v3)
          {
            goto LABEL_345;
          }

          continue;
        }

        v55 = v41[5];
        v56 = v41[6];
        v57 = v40[5];
        v58 = v40[6];
        v59 = v41[4] == v40[4] && v55 == v57;
        if (v59 || (v60 = v41[5], (OUTLINED_FUNCTION_66_1() & 1) != 0))
        {
          v61 = OUTLINED_FUNCTION_12_14();
          sub_21B0F6800(v61, v62);
          v63 = OUTLINED_FUNCTION_11_10();
          sub_21B0F6800(v63, v64);
          v65 = v41 + 9;
          v66 = v40 + 9;
          v67 = 1;
          v275 = v54;
          while (1)
          {
            v68 = v58 >> 61;
            v283 = v65;
            v281 = v67;
            *&v282 = v66;
            switch(v56 >> 61)
            {
              case 1uLL:
                if (v68 != 1)
                {
                  goto LABEL_344;
                }

                OUTLINED_FUNCTION_27_7();
                v95 = v27 && v94 == v57;
                if (!v95 && (OUTLINED_FUNCTION_66_1() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v77 = v56 >> 61;
                switch(v54 >> 61)
                {
                  case 1uLL:
                    goto LABEL_116;
                  case 2uLL:
                    goto LABEL_114;
                  case 3uLL:
                    v111 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v303 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v304 = v111;
                    v305 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v306 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                    if (v77 != 3)
                    {
                      goto LABEL_344;
                    }

                    v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                    v112 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                    v307[0] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                    v307[1] = v112;
                    v307[2] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                    v308 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                    sub_21AFC5454(v307, v300);
                    v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                    v80 = v307;
                    break;
                  case 4uLL:
                    goto LABEL_111;
                  default:
                    goto LABEL_105;
                }

LABEL_128:
                sub_21B0CAA60(v80);

                goto LABEL_129;
              case 2uLL:
                if (v68 != 2)
                {
                  goto LABEL_344;
                }

                OUTLINED_FUNCTION_27_7();
                v76 = v27 && v75 == v57;
                if (!v76 && (OUTLINED_FUNCTION_66_1() & 1) == 0)
                {
                  goto LABEL_344;
                }

                break;
              case 3uLL:
                if (v68 != 3)
                {
                  goto LABEL_344;
                }

                v276 = v55;
                v277 = v57;
                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v81 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v82 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v83 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
                v84 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v85 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
                v269 = v84;
                v270 = *(v54 + 64);
                v86 = (v58 & 0x1FFFFFFFFFFFFFFFLL);
                v87 = v86[4];
                v88 = v86[5];
                v89 = v86[7];
                v268 = v86[6];
                v90 = v86[8];
                v91 = v81 == v86[2] && v82 == v86[3];
                if (!v91 && (sub_21B112D04() & 1) == 0)
                {
                  goto LABEL_344;
                }

                v92 = v83 == v87 && *&v2 == v88;
                if (!v92 && (OUTLINED_FUNCTION_66_1() & 1) == 0)
                {
                  goto LABEL_344;
                }

                if (v85)
                {
                  if (!v89)
                  {
                    goto LABEL_344;
                  }

                  v93 = v269 == v268 && v85 == v89;
                  if (!v93 && (sub_21B112D04() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                else if (v89)
                {
                  goto LABEL_344;
                }

                sub_21B0F1B10(v270, v90);
                OUTLINED_FUNCTION_58_1();

LABEL_151:

                if ((LOBYTE(v2) & 1) == 0)
                {
                  goto LABEL_344;
                }

                goto LABEL_155;
              case 4uLL:
                if (v68 != 4)
                {
                  goto LABEL_344;
                }

                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v72 = *((v58 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v73 = OUTLINED_FUNCTION_35_2();
                _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v73, v74);
                OUTLINED_FUNCTION_58_1();

                goto LABEL_151;
              default:
                if (v68)
                {
                  goto LABEL_344;
                }

                v69 = *(v58 + 16);
                v70 = 0xE400000000000000;
                v71 = 1819047278;
                switch(*(v56 + 16))
                {
                  case 1:
                    v70 = 0xE700000000000000;
                    v71 = OUTLINED_FUNCTION_21_6();
                    break;
                  case 2:
                    v70 = 0xE300000000000000;
                    v71 = 7630441;
                    break;
                  case 3:
                    v71 = 1735290732;
                    break;
                  case 4:
                    v70 = 0xE500000000000000;
                    v71 = OUTLINED_FUNCTION_73_1();
                    break;
                  case 5:
                    v70 = 0xE600000000000000;
                    v71 = OUTLINED_FUNCTION_69_1();
                    break;
                  case 6:
                    v70 = 0xE600000000000000;
                    v71 = OUTLINED_FUNCTION_68_1();
                    break;
                  case 7:
                    v70 = 0xE500000000000000;
                    v71 = OUTLINED_FUNCTION_71_1();
                    break;
                  default:
                    break;
                }

                v54 = 0xE400000000000000;
                v113 = 1819047278;
                switch(v69)
                {
                  case 1:
                    v54 = 0xE700000000000000;
                    OUTLINED_FUNCTION_17_11();
                    break;
                  case 2:
                    v54 = 0xE300000000000000;
                    v113 = 7630441;
                    break;
                  case 3:
                    v113 = 1735290732;
                    break;
                  case 4:
                    v54 = 0xE500000000000000;
                    OUTLINED_FUNCTION_45_2();
                    break;
                  case 5:
                    v54 = 0xE600000000000000;
                    OUTLINED_FUNCTION_43_4();
                    break;
                  case 6:
                    v54 = 0xE600000000000000;
                    OUTLINED_FUNCTION_42_4();
                    break;
                  case 7:
                    v54 = 0xE500000000000000;
                    OUTLINED_FUNCTION_44_3();
                    break;
                  default:
                    break;
                }

                if (v71 != v113 || v70 != v54)
                {
                  v2 = COERCE_DOUBLE(OUTLINED_FUNCTION_51_0());

                  goto LABEL_151;
                }

                goto LABEL_154;
            }

            v77 = v56 >> 61;
            switch(v54 >> 61)
            {
              case 1uLL:
LABEL_116:
                if (v77 != 1)
                {
                  goto LABEL_344;
                }

                goto LABEL_117;
              case 2uLL:
LABEL_114:
                if (v77 != 2)
                {
                  goto LABEL_344;
                }

LABEL_117:
                v108 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v109 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v270 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v54 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v2 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v110 = v108 == *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && v109 == v54;
                if (!v110 && (OUTLINED_FUNCTION_51_0() & 1) == 0)
                {
                  goto LABEL_344;
                }

                LODWORD(v270) = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v270, *&v2);

                if ((v270 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              case 3uLL:
                v78 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v309 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v310 = v78;
                v311 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v312 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
                if (v77 != 3)
                {
                  goto LABEL_344;
                }

                v54 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v79 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v313[0] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v313[1] = v79;
                v313[2] = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
                v314 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);

                sub_21AFC5454(v313, v300);
                v2 = COERCE_DOUBLE(static AvroRecordSchema.__derived_struct_equals(_:_:)());
                v80 = v313;
                goto LABEL_128;
              case 4uLL:
LABEL_111:
                if (v77 != 4)
                {
                  goto LABEL_344;
                }

                v104 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                *&v2 = v56 & 0x1FFFFFFFFFFFFFFFLL;
                v105 = *((v56 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

                v106 = OUTLINED_FUNCTION_109();
                v54 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v106, v107);

                if ((v54 & 1) == 0)
                {
                  goto LABEL_337;
                }

                goto LABEL_130;
              default:
LABEL_105:
                if (v77)
                {
                  goto LABEL_344;
                }

                v96 = *(v54 + 16);
                v97 = *(v56 + 16);
                v98 = sub_21B0F3574(v96);
                v100 = v99;
                v101 = sub_21B0F3574(v97);
                v54 = v102;
                if (v98 == v101 && v100 == v102)
                {

                  v2 = *&v277;

LABEL_154:
                }

                else
                {
                  OUTLINED_FUNCTION_105();
                  v2 = COERCE_DOUBLE(OUTLINED_FUNCTION_51_0());

LABEL_129:

                  if ((LOBYTE(v2) & 1) == 0)
                  {
LABEL_337:

                    goto LABEL_344;
                  }

LABEL_130:
                }

LABEL_155:
                if (v275 == v281)
                {
                  v3 = v274;
                  v4 = v278;
                  goto LABEL_166;
                }

                if (v281 >= v275)
                {
                  __break(1u);
LABEL_339:
                  __break(1u);
LABEL_340:
                  __break(1u);
LABEL_341:
                  sub_21B0F68B8(v298);
LABEL_342:
                  sub_21B0F68B8(v299);
                  goto LABEL_343;
                }

                if (v281 >= *(v280 + 16))
                {
                  goto LABEL_339;
                }

                if (v281 >= *(v279 + 16))
                {
                  goto LABEL_340;
                }

                v55 = *(v283 - 1);
                v56 = *v283;
                v57 = *(v282 - 8);
                v58 = *v282;
                if (*(v283 - 2) != *(v282 - 16) || v55 != v57)
                {
                  v116 = *(v283 - 1);
                  if ((OUTLINED_FUNCTION_66_1() & 1) == 0)
                  {
                    goto LABEL_344;
                  }
                }

                v65 = v283 + 3;
                v66 = (v282 + 24);
                v67 = v281 + 1;
                break;
            }
          }
        }

LABEL_345:
        v265 = *MEMORY[0x277D85DE8];
        return;
      case 4:
        if (LOBYTE(v302[8]) != 4)
        {
          goto LABEL_345;
        }

        v278 = v4;
        v13 = *(*&__dst[0] + 32);
        *&v282 = *(*&__dst[0] + 40);
        v15 = *(*&__dst[0] + 48);
        v14 = *(*&__dst[0] + 56);
        v16 = *(*&__dst[0] + 64);
        v17 = *(*&__dst[0] + 72);
        v18 = *(*&__dst[0] + 80);
        v19 = *(*&__dst[0] + 88);
        v283 = *(*&__dst[0] + 96);
        v20 = *(*&__dst[0] + 16);
        v2 = *(*&__dst[0] + 24);
        memcpy(v300, (*&v302[0] + 16), sizeof(v300));
        v21 = v300[0];
        sub_21B0F6800(__dst, v299);
        sub_21B0F6800(v302, v299);
        sub_21B0F685C(v300, v299);
        if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v20, v21) & 1) == 0)
        {
          goto LABEL_343;
        }

        switch(v19)
        {
          case 1:
            if (LOBYTE(v300[9]) != 1)
            {
              goto LABEL_343;
            }

            v151 = v300[3];
            v150 = v300[4];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v151) & 1) == 0)
            {
              goto LABEL_343;
            }

            v143 = sub_21B0F02E0(v15, v150);
            goto LABEL_210;
          case 2:
            if (LOBYTE(v300[9]) != 2)
            {
              goto LABEL_343;
            }

            v141 = v300[3];
            v140 = v300[4];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v282, v141) & 1) == 0)
            {
              goto LABEL_343;
            }

            v143 = sub_21B109594(v15, v140);
LABEL_210:
            v153 = v143;
            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            v3 = v274;
            v4 = v278;
            if ((v153 & 1) == 0)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 3:
            if (LOBYTE(v300[9]) != 3)
            {
              goto LABEL_343;
            }

            v145 = v300[3];
            v144 = v300[4];
            v146 = v300[6];
            v281 = v300[7];
            v279 = v300[5];
            v280 = v300[8];
            if (*&v2 != v300[1] || v13 != v300[2])
            {
              OUTLINED_FUNCTION_34_3();
              if ((sub_21B112D04() & 1) == 0)
              {
                goto LABEL_343;
              }
            }

            v148 = v282 == v145 && v15 == v144;
            if (!v148 && (sub_21B112D04() & 1) == 0)
            {
              goto LABEL_343;
            }

            if (v16)
            {
              v4 = v278;
              if (!v146 || (v14 == v279 ? (v149 = v16 == v146) : (v149 = 0), !v149 && (OUTLINED_FUNCTION_109(), (sub_21B112D04() & 1) == 0)))
              {
LABEL_343:
                sub_21B0F68B8(v300);
LABEL_344:
                sub_21AFC54B0(v302);
                sub_21AFC54B0(__dst);
                goto LABEL_345;
              }
            }

            else
            {
              v4 = v278;
              if (v146)
              {
                goto LABEL_343;
              }
            }

            if ((sub_21B0F1B10(v17, v281) & 1) == 0)
            {
              goto LABEL_343;
            }

            v167 = sub_21B0F02E0(v18, v280);
            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            v3 = v274;
            if ((v167 & 1) == 0)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 4:
            if (LOBYTE(v300[9]) != 4)
            {
              goto LABEL_343;
            }

            v123 = *(*&v2 + 32);
            v122 = *(*&v2 + 40);
            v124 = *(*&v2 + 48);
            v282 = *(*&v2 + 56);
            v126 = *(*&v2 + 72);
            v125 = *(*&v2 + 80);
            v127 = *(*&v2 + 88);
            v128 = *(*&v2 + 96);
            v130 = *&v2 + 16;
            v2 = *(*&v2 + 16);
            v129 = *(v130 + 8);
            memcpy(v299, (v300[1] + 16), sizeof(v299));
            sub_21B0F685C(v299, v298);
            v131 = OUTLINED_FUNCTION_34_3();
            if (_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v131, v132))
            {
              switch(v127)
              {
                case 1:
                  if (v299[72] != 1)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[32];
                  if (v129 != *&v299[8] || v123 != *&v299[16])
                  {
                    OUTLINED_FUNCTION_578();
                    if ((sub_21B112D04() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v201 = OUTLINED_FUNCTION_9_20();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v201, v202) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v203 = OUTLINED_FUNCTION_81_1();
                  v196 = sub_21B0F02E0(v203, v204);
                  goto LABEL_280;
                case 2:
                  if (v299[72] != 2)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[32];
                  if (v129 != *&v299[8] || v123 != *&v299[16])
                  {
                    OUTLINED_FUNCTION_578();
                    if ((sub_21B112D04() & 1) == 0)
                    {
                      goto LABEL_342;
                    }
                  }

                  v192 = OUTLINED_FUNCTION_9_20();
                  v3 = v274;
                  if ((_s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v192, v193) & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v194 = OUTLINED_FUNCTION_81_1();
                  v196 = sub_21B109594(v194, v195);
LABEL_280:
                  v205 = v196;
                  sub_21B0F68B8(v299);
                  sub_21B0F68B8(v300);
                  sub_21AFC54B0(v302);
                  sub_21AFC54B0(__dst);
                  if (v205)
                  {
                    goto LABEL_281;
                  }

                  goto LABEL_345;
                case 3:
                  if (v299[72] != 3)
                  {
                    goto LABEL_342;
                  }

                  v2 = *&v299[64];
                  v315 = v129;
                  v316 = v123;
                  v317 = v122;
                  v318 = v124;
                  v319 = v282;
                  v320 = v126;
                  v321 = *&v299[8];
                  v322 = *&v299[24];
                  v323 = *&v299[32];
                  v324 = *&v299[40];
                  v325 = *&v299[56];
                  if ((static AvroRecordSchema.__derived_struct_equals(_:_:)() & 1) == 0)
                  {
                    goto LABEL_342;
                  }

                  v197 = OUTLINED_FUNCTION_656();
                  v139 = sub_21B0F02E0(v197, v198);
                  goto LABEL_270;
                case 4:
                  v186 = v129[2];
                  memcpy(v326, v129 + 3, 0x41uLL);
                  if (v299[72] != 4)
                  {
                    goto LABEL_342;
                  }

                  v187 = v129[12];
                  memcpy(v298, (*&v299[8] + 16), sizeof(v298));
                  v2 = *v298;
                  sub_21B0F685C(v298, &v287);
                  v188 = OUTLINED_FUNCTION_52();
                  if ((_s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v188, v189) & 1) == 0)
                  {
                    goto LABEL_341;
                  }

                  memcpy(v327, &v298[1], 0x41uLL);
                  v190 = _s9SwiftAvro0B5ValueV23__derived_struct_equalsySbAC_ACtFZ_0(v326, v327);
                  sub_21B0F68B8(v298);
                  sub_21B0F68B8(v299);
                  sub_21B0F68B8(v300);
                  sub_21AFC54B0(v302);
                  sub_21AFC54B0(__dst);
                  v3 = v274;
                  if ((v190 & 1) == 0 || v187 != v298[10])
                  {
                    goto LABEL_345;
                  }

                  goto LABEL_281;
                default:
                  if (v299[72])
                  {
                    goto LABEL_342;
                  }

                  v133 = OUTLINED_FUNCTION_578();
                  v139 = _s9SwiftAvro0B9PrimitiveV23__derived_struct_equalsySbAC_ACtFZ_0(v133, v134, v122, v124, v135, v136, v137, v138);
LABEL_270:
                  v199 = v139;
                  sub_21B0F68B8(v299);
                  sub_21B0F68B8(v300);
                  sub_21AFC54B0(v302);
                  sub_21AFC54B0(__dst);
                  v3 = v274;
                  if ((v199 & 1) == 0)
                  {
                    goto LABEL_345;
                  }

LABEL_281:
                  v27 = v128 == *&v299[80];
                  v4 = v278;
                  if (!v27)
                  {
                    goto LABEL_345;
                  }

                  goto LABEL_283;
              }
            }

            goto LABEL_342;
          default:
            if (LOBYTE(v300[9]))
            {
              goto LABEL_343;
            }

            break;
        }

        v22 = *&v300[1];
        v23 = v300[2];
        v24 = LOBYTE(v300[4]);
        v3 = v274;
        switch(v15)
        {
          case 1:
            v4 = v278;
            if (LOBYTE(v300[4]) != 1)
            {
              goto LABEL_343;
            }

            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            if (LODWORD(v2) != LODWORD(v22))
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 2:
            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            v4 = v278;
            if (v24 != 2 || *&v2 != *&v22)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 3:
            v4 = v278;
            if (LOBYTE(v300[4]) != 3)
            {
              goto LABEL_343;
            }

            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            if (*&v2 != *&v22)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 4:
            v4 = v278;
            if (LOBYTE(v300[4]) != 4)
            {
              goto LABEL_343;
            }

            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            if (v2 != v22)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
          case 5:
            v4 = v278;
            if (LOBYTE(v300[4]) != 5)
            {
              goto LABEL_343;
            }

            if (*&v2 == v300[1] && v13 == v300[2])
            {
LABEL_308:
              sub_21B0F68B8(v300);
              sub_21AFC54B0(v302);
              sub_21AFC54B0(__dst);
            }

            else
            {
              OUTLINED_FUNCTION_34_3();
              v207 = sub_21B112D04();
              sub_21B0F68B8(v300);
              sub_21AFC54B0(v302);
              sub_21AFC54B0(__dst);
              if ((v207 & 1) == 0)
              {
                goto LABEL_345;
              }
            }

            goto LABEL_283;
          case 6:
            v4 = v278;
            if (LOBYTE(v300[4]) != 6)
            {
              goto LABEL_343;
            }

            if (((v13 >> 60) & 3) != 0)
            {
              v208 = OUTLINED_FUNCTION_34_3();
              sub_21B0F69CC(v208, v209, v282, 6);
            }

            else
            {
              v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
              *&v299[24] = v222;
              *&v299[32] = sub_21B0F690C();
              *v299 = v2;
              v223 = __swift_project_boxed_opaque_existential_0(v299, v222);
              v224 = *v223 + 32;
              v225 = *(*v223 + 16);
              v226 = OUTLINED_FUNCTION_34_3();
              sub_21B0F69CC(v226, v227, v282, 6);
              sub_21B10BE70(v224, v224 + v225, v298);
              if (v271)
              {
                goto LABEL_346;
              }

              __swift_destroy_boxed_opaque_existential_0(v299);
            }

            OUTLINED_FUNCTION_105();
            v228 = sub_21B110EB4();
            v229 = OUTLINED_FUNCTION_105();
            sub_21AF99728(v229, v230);
            if (((v23 >> 60) & 3) != 0)
            {
              *&v2 = v23 & 0xCFFFFFFFFFFFFFFFLL;
              sub_21B0F6800(&v300[1], v299);
            }

            else
            {
              v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
              v298[3] = v231;
              v298[4] = sub_21B0F690C();
              *v298 = v22;
              v232 = __swift_project_boxed_opaque_existential_0(v298, v231);
              v233 = *v232 + 32;
              v234 = *(*v232 + 16);
              sub_21B0F6800(&v300[1], v299);
              sub_21B10BE70(v233, v233 + v234, v299);
              if (v271)
              {
LABEL_346:

                __break(1u);
                return;
              }

              v2 = *&v299[8];
              __swift_destroy_boxed_opaque_existential_0(v298);
            }

            OUTLINED_FUNCTION_81_1();
            v235 = sub_21B110EB4();
            v236 = OUTLINED_FUNCTION_81_1();
            sub_21AF99728(v236, v237);
            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            if (v228 != v235)
            {
              goto LABEL_345;
            }

LABEL_283:
            if (v283 != v300[10])
            {
              goto LABEL_345;
            }

            break;
          case 7:
            v4 = v278;
            if (LOBYTE(v300[4]) != 7 || v300[1] | v300[3] | v300[2])
            {
              goto LABEL_343;
            }

            goto LABEL_308;
          default:
            sub_21B0F68B8(v300);
            sub_21AFC54B0(v302);
            sub_21AFC54B0(__dst);
            v4 = v278;
            if (v24 || ((LODWORD(v22) ^ LODWORD(v2)) & 1) != 0)
            {
              goto LABEL_345;
            }

            goto LABEL_283;
        }

        goto LABEL_284;
      default:
        if (!LOBYTE(v302[8]))
        {
          v11 = *&v302[0];
          v12 = v302[1];
          switch(LOBYTE(__dst[3]))
          {
            case 1:
              if (LOBYTE(v302[3]) != 1 || LODWORD(__dst[0]) != LODWORD(v302[0]))
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 2:
              if (LOBYTE(v302[3]) != 2 || *&__dst[0] != *&v302[0])
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 3:
              if (LOBYTE(v302[3]) != 3 || *__dst != *v302)
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 4:
              if (LOBYTE(v302[3]) != 4 || __dst[0] != v302[0])
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 5:
              if (LOBYTE(v302[3]) != 5)
              {
                goto LABEL_345;
              }

              v158 = *&__dst[0] == *&v302[0] && *&__dst[1] == *&v302[1];
              if (!v158 && (sub_21B112D04() & 1) == 0)
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 6:
              v159 = v267;
              if (LOBYTE(v302[3]) != 6)
              {
                goto LABEL_345;
              }

              if (((*&__dst[1] >> 60) & 3) != 0)
              {
                v160 = *&__dst[1] & 0xCFFFFFFFFFFFFFFFLL;
                v161 = OUTLINED_FUNCTION_12_14();
                sub_21B0F6800(v161, v162);
                v163 = OUTLINED_FUNCTION_12_14();
                sub_21B0F6800(v163, v164);
                v165 = OUTLINED_FUNCTION_11_10();
                sub_21B0F6800(v165, v166);
              }

              else
              {
                v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                *&v299[24] = v168;
                *&v299[32] = sub_21B0F690C();
                *v299 = v6;
                v169 = __swift_project_boxed_opaque_existential_0(v299, v168);
                v177 = *(*v169 + 16);
                if (v177)
                {
                  if (v177 <= 0xE)
                  {
                    OUTLINED_FUNCTION_37_4(v169, v170, v171, v172, v173, v174, v175, v176, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298[0], v298[1], v298[2], v298[3], v298[4], v298[5], v298[6], v298[7], v298[8], v298[9], v298[10], *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], *&v299[48], *&v299[56], *&v299[64], *&v299[72], *&v299[80]);
                    v6 = v300[0];
                    OUTLINED_FUNCTION_49_3();
                    v216 = OUTLINED_FUNCTION_12_14();
                    sub_21B0F6800(v216, v217);
                    v218 = OUTLINED_FUNCTION_12_14();
                    sub_21B0F6800(v218, v219);
                    v220 = OUTLINED_FUNCTION_11_10();
                    sub_21B0F6800(v220, v221);
                    v160 = v159;
                  }

                  else
                  {
                    v178 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v178);
                    OUTLINED_FUNCTION_85_1();
                    v179 = OUTLINED_FUNCTION_12_14();
                    if (v177 >= v181)
                    {
                      sub_21B0F6800(v179, v180);
                      v238 = OUTLINED_FUNCTION_12_14();
                      sub_21B0F6800(v238, v239);
                      v240 = OUTLINED_FUNCTION_11_10();
                      sub_21B0F6800(v240, v241);
                      OUTLINED_FUNCTION_91_1();
                      OUTLINED_FUNCTION_45();
                      sub_21B110E04();
                      v6 = OUTLINED_FUNCTION_96_1();
                      *(v6 + 16) = 0;
                      *(v6 + 24) = v177;
                      v160 = *&v2 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_21B0F6800(v179, v180);
                      v182 = OUTLINED_FUNCTION_12_14();
                      sub_21B0F6800(v182, v183);
                      v184 = OUTLINED_FUNCTION_11_10();
                      sub_21B0F6800(v184, v185);
                      v6 = v177 << 32;
                      v160 = OUTLINED_FUNCTION_91_1() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v210 = OUTLINED_FUNCTION_12_14();
                  sub_21B0F6800(v210, v211);
                  v212 = OUTLINED_FUNCTION_12_14();
                  sub_21B0F6800(v212, v213);
                  v214 = OUTLINED_FUNCTION_11_10();
                  sub_21B0F6800(v214, v215);
                  v6 = 0;
                  v160 = 0xC000000000000000;
                }

                v267 = v159;
                __swift_destroy_boxed_opaque_existential_0(v299);
              }

              v242 = sub_21B110EB4();
              sub_21AF99728(v6, v160);
              if (((*&v12 >> 60) & 3) != 0)
              {
                v243 = *&v12 & 0xCFFFFFFFFFFFFFFFLL;
                v244 = OUTLINED_FUNCTION_11_10();
                sub_21B0F6800(v244, v245);
              }

              else
              {
                v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                *&v299[24] = v246;
                *&v299[32] = sub_21B0F690C();
                *v299 = v11;
                v247 = __swift_project_boxed_opaque_existential_0(v299, v246);
                v255 = *(*v247 + 16);
                if (v255)
                {
                  v256 = v266;
                  if (v255 <= 0xE)
                  {
                    OUTLINED_FUNCTION_37_4(v247, v248, v249, v250, v251, v252, v253, v254, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, *(&v282 + 1), v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298[0], v298[1], v298[2], v298[3], v298[4], v298[5], v298[6], v298[7], v298[8], v298[9], v298[10], *v299, *&v299[8], *&v299[16], *&v299[24], *&v299[32], *&v299[40], *&v299[48], *&v299[56], *&v299[64], *&v299[72], *&v299[80]);
                    v11 = v300[0];
                    v243 = v256 & 0xF00000000000000 | LODWORD(v300[1]) | ((WORD2(v300[1]) | (BYTE6(v300[1]) << 16)) << 32);
                    v263 = OUTLINED_FUNCTION_11_10();
                    sub_21B0F6800(v263, v264);
                    v266 = v243;
                  }

                  else
                  {
                    v257 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v257);
                    OUTLINED_FUNCTION_85_1();
                    v258 = OUTLINED_FUNCTION_11_10();
                    if (v255 >= v260)
                    {
                      sub_21B0F6800(v258, v259);
                      OUTLINED_FUNCTION_91_1();
                      OUTLINED_FUNCTION_45();
                      sub_21B110E04();
                      v11 = OUTLINED_FUNCTION_96_1();
                      *(v11 + 16) = 0;
                      *(v11 + 24) = v255;
                      v243 = v266 | 0x8000000000000000;
                    }

                    else
                    {
                      sub_21B0F6800(v258, v259);
                      v11 = v255 << 32;
                      v243 = OUTLINED_FUNCTION_91_1() | 0x4000000000000000;
                    }
                  }
                }

                else
                {
                  v261 = OUTLINED_FUNCTION_11_10();
                  sub_21B0F6800(v261, v262);
                  v11 = 0;
                  v243 = 0xC000000000000000;
                }

                __swift_destroy_boxed_opaque_existential_0(v299);
              }

              v2 = COERCE_DOUBLE(sub_21B110EB4());
              sub_21AF99728(v11, v243);
              sub_21AFC54B0(v302);
              sub_21AFC54B0(__dst);
              if (v242 != *&v2)
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            case 7:
              if (LOBYTE(v302[3]) != 7 || *&v302[0] | *&v302[2] | *&v302[1])
              {
                goto LABEL_345;
              }

              goto LABEL_284;
            default:
              if (LOBYTE(v302[3]) || ((LODWORD(v302[0]) ^ LODWORD(__dst[0])) & 1) != 0)
              {
                goto LABEL_345;
              }

              goto LABEL_284;
          }
        }

        goto LABEL_345;
    }
  }
}

uint64_t sub_21B0F1B10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        if ((OUTLINED_FUNCTION_51_0() & 1) == 0)
        {
          break;
        }
      }

      v9 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v6);

      if ((v9 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v54 = a2 + 32;
  v55 = result + 32;
  while (2)
  {
    if (v3 == v2)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      return result;
    }

    v4 = v3++;
    v5 = *(v55 + 8 * v4);
    v6 = *(v54 + 8 * v4);
    v7 = v6 >> 61;
    switch(v5 >> 61)
    {
      case 1uLL:
        if (v7 != 1)
        {
          return 0;
        }

        goto LABEL_35;
      case 2uLL:
        if (v7 != 2)
        {
          return 0;
        }

LABEL_35:
        v28 = v3;
        v29 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v30 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v31 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        if (!v31 && (OUTLINED_FUNCTION_51_0() & 1) == 0)
        {
          return 0;
        }

        v32 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v29, v30);

        v3 = v28;
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      case 3uLL:
        if (v7 != 3)
        {
          return 0;
        }

        v15 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
        result = v15[2];
        v16 = v15[3];
        v18 = v15[4];
        v17 = v15[5];
        v19 = v15[6];
        v20 = v15[7];
        v21 = v15[8];
        v23 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v22 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v24 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v52 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v53 = v22;
        v56 = v21;
        v57 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        if (result != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) || v16 != *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
        {
          result = sub_21B112D04();
          v22 = v53;
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v18 != v23 || v17 != v22)
        {
          result = sub_21B112D04();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        if (v20)
        {
          if (!v52)
          {
            return 0;
          }

          if (v19 != v24 || v20 != v52)
          {
            result = OUTLINED_FUNCTION_51_0();
            if ((result & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v52)
        {
          return 0;
        }

        v34 = v56;
        v33 = v57;
        v35 = *(v56 + 16);
        if (v35 != *(v57 + 16))
        {
          return 0;
        }

        if (v35)
        {
          v36 = v56 == v57;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
LABEL_80:
          if (v3 == v2)
          {
            return 1;
          }

          continue;
        }

        v50 = v3;
        v51 = v2;

        v37 = 0;
        v38 = (v56 + 48);
        v39 = (v57 + 48);
        while (1)
        {
          if (v37 >= *(v34 + 16))
          {
            goto LABEL_85;
          }

          if (v37 >= *(v33 + 16))
          {
            goto LABEL_86;
          }

          v40 = *v38;
          v41 = *v39;
          if (*(v38 - 2) != *(v39 - 2) || *(v38 - 1) != *(v39 - 1))
          {
            v43 = *(v38 - 1);
            v44 = *(v39 - 1);
            if ((sub_21B112D04() & 1) == 0)
            {
              break;
            }
          }

          v45 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v40, v41);

          if ((v45 & 1) == 0)
          {
            break;
          }

          ++v37;
          v38 += 3;
          v39 += 3;
          v34 = v56;
          v33 = v57;
          if (v35 == v37)
          {

            v3 = v50;
            v2 = v51;
            goto LABEL_80;
          }
        }

        return 0;
      case 4uLL:
        if (v7 != 4)
        {
          return 0;
        }

        v11 = *((v5 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v12 = v3;
        v13 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        v14 = OUTLINED_FUNCTION_35_2();
        _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v14);
        OUTLINED_FUNCTION_58_1();

        v3 = v12;

        if ((v11 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_80;
      default:
        if (v7)
        {
          return 0;
        }

        v8 = *(v6 + 16);
        v9 = 0xE400000000000000;
        v10 = 1819047278;
        switch(*(v5 + 16))
        {
          case 1:
            v9 = 0xE700000000000000;
            v10 = OUTLINED_FUNCTION_21_6();
            break;
          case 2:
            v9 = 0xE300000000000000;
            v10 = 7630441;
            break;
          case 3:
            v10 = 1735290732;
            break;
          case 4:
            v9 = 0xE500000000000000;
            v10 = OUTLINED_FUNCTION_73_1();
            break;
          case 5:
            v9 = 0xE600000000000000;
            v10 = OUTLINED_FUNCTION_69_1();
            break;
          case 6:
            v9 = 0xE600000000000000;
            v10 = OUTLINED_FUNCTION_68_1();
            break;
          case 7:
            v9 = 0xE500000000000000;
            v10 = OUTLINED_FUNCTION_71_1();
            break;
          default:
            break;
        }

        v46 = 0xE400000000000000;
        v47 = 1819047278;
        switch(v8)
        {
          case 1:
            v46 = 0xE700000000000000;
            OUTLINED_FUNCTION_17_11();
            break;
          case 2:
            v46 = 0xE300000000000000;
            v47 = 7630441;
            break;
          case 3:
            v47 = 1735290732;
            break;
          case 4:
            v46 = 0xE500000000000000;
            OUTLINED_FUNCTION_45_2();
            break;
          case 5:
            v46 = 0xE600000000000000;
            OUTLINED_FUNCTION_43_4();
            break;
          case 6:
            v46 = 0xE600000000000000;
            OUTLINED_FUNCTION_42_4();
            break;
          case 7:
            v46 = 0xE500000000000000;
            OUTLINED_FUNCTION_44_3();
            break;
          default:
            break;
        }

        if (v10 == v47 && v9 == v46)
        {
        }

        else
        {
          v49 = sub_21B112D04();

          if ((v49 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_80;
    }
  }
}

void AvroRecordSchema.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v6 = v2[2];
  v7 = v2[3];
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (v2[5])
  {
    v8 = v2[4];
    sub_21B112EE4();
    OUTLINED_FUNCTION_35_2();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_21B112EE4();
  }

  v9 = v2[6];

  sub_21B0F55EC(a1, v9);
}

uint64_t AvroRecordSchema.hashValue.getter()
{
  OUTLINED_FUNCTION_4_24();
  v1 = *v0;
  v2 = v0[1];
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  if (v0[5])
  {
    v5 = v0[4];
    sub_21B112EE4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_21B112EE4();
  }

  sub_21B0F55EC(v7, v0[6]);
  return sub_21B112F14();
}

uint64_t sub_21B0F22A0()
{
  sub_21B112EC4();
  AvroRecordSchema.hash(into:)(v1);
  return sub_21B112F14();
}

void sub_21B0F2324()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v19[1] = v3;
  v20 = v0;
  v19[0] = v4;
  v6 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_1(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v16 = v19 - v15;
  v17 = v6[4];
  __swift_project_boxed_opaque_existential_0(v6, v6[3]);
  v2();
  sub_21B112F44();
  v18 = v20;
  sub_21B112B14();
  if (!v18)
  {
    v21 = v19[0];
    OUTLINED_FUNCTION_84_1();
    sub_21B0F3FC4();
    sub_21B112B54();
  }

  (*(v11 + 8))(v16, v9);
  OUTLINED_FUNCTION_13();
}

uint64_t AvroRecordSchema.Field.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47920, &qword_21B12C300);
  OUTLINED_FUNCTION_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v6 = v0[3];
  v7 = v0[4];
  v8 = OUTLINED_FUNCTION_8_21();
  OUTLINED_FUNCTION_1_27(v8, v9);
  sub_21B0F5670();
  OUTLINED_FUNCTION_78_1();
  sub_21B112F34();
  if (!v1)
  {
    v7 = sub_21B112A94();
    sub_21B0F56C4();
    sub_21B112AC4();
    v11 = OUTLINED_FUNCTION_32_4();
    v12(v11, v2);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v7;
}

void sub_21B0F267C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroRecordSchema.Field.encode(to:)();
}

void AvroRecordSchema.init(from:)()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_79_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47930, &qword_21B12C308);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v8 = v0[3];
  v9 = v0[4];
  v10 = OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_1_27(v10, v11);
  sub_21B0F4114();
  sub_21B112F34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_46_3();
    v12 = sub_21B112A94();
    v14 = v13;
    v26 = v12;
    OUTLINED_FUNCTION_84_1();
    OUTLINED_FUNCTION_46_3();
    v15 = sub_21B112A94();
    v17 = v16;
    v24 = v15;
    v25 = v3;
    OUTLINED_FUNCTION_46_3();
    v18 = sub_21B112A44();
    v20 = v19;
    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD478D0, &qword_21B12C2E8);
    sub_21B0F5718(&qword_27CD47938, sub_21B0F578C);
    sub_21B112AC4();
    v21 = OUTLINED_FUNCTION_10_16();
    v22(v21);

    __swift_destroy_boxed_opaque_existential_0(v0);

    *v25 = v26;
    v25[1] = v14;
    v25[2] = v24;
    v25[3] = v17;
    v25[4] = v23;
    v25[5] = v20;
    v25[6] = v27;
  }

  OUTLINED_FUNCTION_13();
}

double sub_21B0F2970@<D0>(uint64_t a1@<X8>)
{
  AvroRecordSchema.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t AvroRecordSchema.Field.description.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  MEMORY[0x21CEE9770]();
  MEMORY[0x21CEE9770](8250, 0xE200000000000000);
  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  MEMORY[0x21CEE9770](125, 0xE100000000000000);
  return 123;
}

uint64_t AvroRecordSchema.description.getter()
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_56_0();
  MEMORY[0x21CEE9770](v0[2], v0[3]);
  MEMORY[0x21CEE9770](0x73646C656966202CLL, 0xEA0000000000203ALL);
  MEMORY[0x21CEE9880](v0[6], &type metadata for AvroRecordSchema.Field);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v2;
}

uint64_t AvroArraySchema.type.getter()
{
  OUTLINED_FUNCTION_81();

  return OUTLINED_FUNCTION_7();
}

uint64_t AvroArraySchema.items.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_21B0F2BAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F2C70(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21B0F2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F2BAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F2CCC(uint64_t a1)
{
  v2 = sub_21B0F406C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F2D08(uint64_t a1)
{
  v2 = sub_21B0F406C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvroArraySchema.hash(into:)()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  v0 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v0, v1);
}

uint64_t sub_21B0F2E4C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_21B0F2E80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroArraySchema.encode(to:)();
}

uint64_t AvroArraySchema.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  OUTLINED_FUNCTION_56_0();
  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return v5;
}

uint64_t sub_21B0F2F38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B112D04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_21B112D04();

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

uint64_t sub_21B0F2FFC(char a1)
{
  OUTLINED_FUNCTION_4_24();
  MEMORY[0x21CEEA150](a1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21B0F303C(char a1)
{
  if (a1)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_21B0F3070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F2F38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0F3098(uint64_t a1)
{
  v2 = sub_21B0F40C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F30D4(uint64_t a1)
{
  v2 = sub_21B0F40C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_21B112D04() & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_7();

  return _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

uint64_t _s9SwiftAvro0B11ArraySchemaV9hashValueSivg_0()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_4_24();
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v2, v0);
  return sub_21B112F14();
}

uint64_t sub_21B0F31E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_21B112EC4();
  a4(v10, v6, v7, v8);
  return sub_21B112F14();
}

void sub_21B0F32A4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_1(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v11 = v4[3];
  v12 = v4[4];
  v13 = OUTLINED_FUNCTION_6_24();
  __swift_project_boxed_opaque_existential_0(v13, v14);
  v2();
  sub_21B112F34();
  if (!v0)
  {
    sub_21B112A94();
    OUTLINED_FUNCTION_84_1();
    sub_21B0F56C4();
    sub_21B112AC4();
    v15 = OUTLINED_FUNCTION_32_4();
    v16(v15, v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v4);
  OUTLINED_FUNCTION_13();
}

void sub_21B0F3494()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  AvroMapSchema.encode(to:)();
}

unint64_t AvroMapSchema.description.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_47_3();
  sub_21B112904();

  AvroSchema.description.getter(a3);
  OUTLINED_FUNCTION_94_1();

  OUTLINED_FUNCTION_74_0();
  return 0xD000000000000012;
}

uint64_t sub_21B0F3528()
{
  v0 = sub_21B112A34();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21B0F3574(char a1)
{
  result = 1819047278;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_21_6();
      break;
    case 2:
      result = 7630441;
      break;
    case 3:
      result = 1735290732;
      break;
    case 4:
      result = OUTLINED_FUNCTION_73_1();
      break;
    case 5:
      result = OUTLINED_FUNCTION_69_1();
      break;
    case 6:
      result = OUTLINED_FUNCTION_68_1();
      break;
    case 7:
      result = OUTLINED_FUNCTION_71_1();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0F3658@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B0F3528();
  *a2 = result;
  return result;
}

uint64_t sub_21B0F3688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0F3574(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0F3730(uint64_t a1, char a2)
{
  sub_21B112EC4();
  sub_21B0F3574(a2);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

  return sub_21B112F14();
}

uint64_t static AvroPrimitiveSchema.__derived_struct_equals(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1819047278;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1819047278;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = OUTLINED_FUNCTION_21_6();
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7630441;
      break;
    case 3:
      v5 = 1735290732;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_73_1();
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_69_1();
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_68_1();
      break;
    case 7:
      v3 = 0xE500000000000000;
      v5 = OUTLINED_FUNCTION_71_1();
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      OUTLINED_FUNCTION_17_11();
      break;
    case 2:
      v6 = 0xE300000000000000;
      v2 = 7630441;
      break;
    case 3:
      v2 = 1735290732;
      break;
    case 4:
      v6 = 0xE500000000000000;
      OUTLINED_FUNCTION_45_2();
      break;
    case 5:
      v6 = 0xE600000000000000;
      OUTLINED_FUNCTION_43_4();
      break;
    case 6:
      v6 = 0xE600000000000000;
      OUTLINED_FUNCTION_42_4();
      break;
    case 7:
      v6 = 0xE500000000000000;
      OUTLINED_FUNCTION_44_3();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

uint64_t sub_21B0F38FC()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0F39EC(char a1)
{
  OUTLINED_FUNCTION_4_24();
  sub_21B0F3574(a1);
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

  return sub_21B112F14();
}

uint64_t sub_21B0F3A58()
{
  v1 = *v0;
  sub_21B112EC4();
  AvroPrimitiveSchema.hash(into:)(v3, v1);
  return sub_21B112F14();
}

uint64_t sub_21B0F3B4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_51_0();
    OUTLINED_FUNCTION_58_1();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21B0F3BB8()
{
  OUTLINED_FUNCTION_4_24();
  MEMORY[0x21CEEA150](0);
  return sub_21B112F14();
}

uint64_t sub_21B0F3BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0F3B4C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21B0F3C24(uint64_t a1)
{
  v2 = sub_21B0F4018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0F3C60(uint64_t a1)
{
  v2 = sub_21B0F4018();

  return MEMORY[0x2821FE720](a1, v2);
}

void AvroPrimitiveSchema.init(from:)()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47958, &qword_21B12C320);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-1] - v9;
  v11 = v2[3];
  v12 = v2[4];
  v13 = OUTLINED_FUNCTION_8_21();
  __swift_project_boxed_opaque_existential_0(v13, v14);
  sub_21B112F24();
  if (v0)
  {
    v15 = v2[3];
    v16 = v2[4];
    v17 = OUTLINED_FUNCTION_8_21();
    OUTLINED_FUNCTION_1_27(v17, v18);
    sub_21B0F4018();
    sub_21B112F34();
    sub_21B0F57E0();
    sub_21B112AC4();
    (*(v5 + 8))(v10, v3);
  }

  else
  {
    OUTLINED_FUNCTION_1_27(v20, v20[3]);
    sub_21B0F57E0();
    OUTLINED_FUNCTION_78_1();
    sub_21B112D14();
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_13();
}

void sub_21B0F3EAC(_BYTE *a1@<X8>)
{
  AvroPrimitiveSchema.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_21B0F3F14(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

unint64_t sub_21B0F3FC4()
{
  result = qword_27CD47888;
  if (!qword_27CD47888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47888);
  }

  return result;
}

unint64_t sub_21B0F4018()
{
  result = qword_27CD47898;
  if (!qword_27CD47898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47898);
  }

  return result;
}

unint64_t sub_21B0F406C()
{
  result = qword_27CD478A8;
  if (!qword_27CD478A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478A8);
  }

  return result;
}

unint64_t sub_21B0F40C0()
{
  result = qword_27CD478B8;
  if (!qword_27CD478B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478B8);
  }

  return result;
}

unint64_t sub_21B0F4114()
{
  result = qword_27CD478C8;
  if (!qword_27CD478C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478C8);
  }

  return result;
}

unint64_t sub_21B0F4168()
{
  result = qword_27CD478E0;
  if (!qword_27CD478E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478E0);
  }

  return result;
}

unint64_t sub_21B0F41BC()
{
  result = qword_27CD478E8;
  if (!qword_27CD478E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478E8);
  }

  return result;
}

unint64_t sub_21B0F4210()
{
  result = qword_27CD478F0;
  if (!qword_27CD478F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478F0);
  }

  return result;
}

unint64_t sub_21B0F4264()
{
  result = qword_27CD478F8;
  if (!qword_27CD478F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD478F8);
  }

  return result;
}

unint64_t sub_21B0F42B8()
{
  result = qword_27CD47900;
  if (!qword_27CD47900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47900);
  }

  return result;
}

void AvroUnionSchema.hash(into:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_7(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;

      v6 = OUTLINED_FUNCTION_105();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v6, v7);

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_21B0F437C()
{
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_4_24();
  v0(v3, v1);
  return sub_21B112F14();
}

uint64_t sub_21B0F43E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_21B112EC4();
  a4(v8, v6);
  return sub_21B112F14();
}

uint64_t AvroUnionSchema.init(from:)()
{
  OUTLINED_FUNCTION_79_1();
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  OUTLINED_FUNCTION_88_1();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_27(v7, v7[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47968, &qword_21B12C328);
    sub_21B0F5834();
    sub_21B112D14();
    v1 = v6;
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  return v1;
}

uint64_t sub_21B0F4534@<X0>(uint64_t *a1@<X8>)
{
  result = AvroUnionSchema.init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_21B0F4590(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_7(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;

      v6 = OUTLINED_FUNCTION_105();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v6);

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_21B0F45E4(uint64_t a1, uint64_t a2)
{
  v215 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 16);
  result = MEMORY[0x21CEEA150](v4);
  v191 = v4;
  if (v4)
  {
    v6 = 0;
    v190 = a2 + 32;
    do
    {
      v192 = v6;
      v7 = (v190 + 72 * v6);
      memcpy(__dst, v7, 0x41uLL);
      v8 = __dst[0];
      v9 = __dst[1];
      v10 = __dst[3];
      v11 = __dst[5];
      v12 = __dst[6];
      switch(LOBYTE(__dst[8]))
      {
        case 1:
          OUTLINED_FUNCTION_40_4();
          v31 = OUTLINED_FUNCTION_5_33();
          sub_21B0F6800(v31, v32);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          v33 = OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v33, v34);
          v35 = OUTLINED_FUNCTION_2_28();
          sub_21B0F45E4(v35);
          goto LABEL_41;
        case 2:
          OUTLINED_FUNCTION_39_3();
          v21 = OUTLINED_FUNCTION_5_33();
          sub_21B0F6800(v21, v22);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          v23 = OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v23, v24);
          v25 = OUTLINED_FUNCTION_2_28();
          sub_21B10BF04(v25, v26);
          goto LABEL_41;
        case 3:
          memcpy(v212, v7, 0x41uLL);
          OUTLINED_FUNCTION_41_4();
          v27 = OUTLINED_FUNCTION_82_0();
          sub_21B0F6970(v27, v28);
          v29 = OUTLINED_FUNCTION_82_0();
          sub_21B0F6970(v29, v30);
          OUTLINED_FUNCTION_9_20();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          OUTLINED_FUNCTION_30_5();
          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
          if (v11)
          {
            OUTLINED_FUNCTION_64_1();
            OUTLINED_FUNCTION_20_8();
          }

          else
          {
            OUTLINED_FUNCTION_63_1();
          }

          v44 = v192;
          MEMORY[0x21CEEA150](*(v12 + 16));
          for (i = *(v12 + 16); i; --i)
          {
            OUTLINED_FUNCTION_18_7();

            OUTLINED_FUNCTION_52();
            _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

            v46 = OUTLINED_FUNCTION_26_5();
            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v46, v47);
            OUTLINED_FUNCTION_62_0();
          }

          v48 = OUTLINED_FUNCTION_8_21();
          sub_21B0F45E4(v48);
          goto LABEL_165;
        case 4:
          memcpy(v212, (__dst[0] + 16), sizeof(v212));
          OUTLINED_FUNCTION_38_5();
          v13 = v212[0];
          MEMORY[0x21CEEA150](*(v212[0] + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = (v13 + 32);
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_97_1();
            v16 = OUTLINED_FUNCTION_82_0();
            sub_21B0F685C(v16, v17);
            do
            {
              v18 = *v15++;

              v19 = OUTLINED_FUNCTION_52();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v19, v20);

              --v14;
            }

            while (v14);
          }

          else
          {
            OUTLINED_FUNCTION_97_1();
            OUTLINED_FUNCTION_97_1();
            v36 = OUTLINED_FUNCTION_82_0();
            sub_21B0F685C(v36, v37);
          }

          v38 = v212[1];
          v39 = v212[2];
          v40 = v212[4];
          v41 = v212[5];
          v42 = v212[6];
          v43 = v212[7];
          switch(LOBYTE(v212[9]))
          {
            case 1:
              OUTLINED_FUNCTION_40_4();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              v55 = OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v55, v56);
              v57 = OUTLINED_FUNCTION_2_28();
              sub_21B0F45E4(v57);
              goto LABEL_30;
            case 2:
              OUTLINED_FUNCTION_39_3();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              v51 = OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v51, v52);
              v53 = OUTLINED_FUNCTION_2_28();
              sub_21B10BF04(v53, v54);
LABEL_30:
              v44 = v192;
              break;
            case 3:
              OUTLINED_FUNCTION_41_4();
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              OUTLINED_FUNCTION_30_5();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              if (v42)
              {
                OUTLINED_FUNCTION_64_1();
                OUTLINED_FUNCTION_20_8();
              }

              else
              {
                OUTLINED_FUNCTION_63_1();
              }

              v44 = v192;
              v70 = *(v43 + 16);
              MEMORY[0x21CEEA150](v70);
              for (; v70; --v70)
              {
                OUTLINED_FUNCTION_18_7();

                OUTLINED_FUNCTION_52();
                _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                v71 = OUTLINED_FUNCTION_26_5();
                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v71, v72);
                OUTLINED_FUNCTION_62_0();
              }

              v73 = OUTLINED_FUNCTION_8_21();
              sub_21B0F45E4(v73);
              break;
            case 4:
              memcpy(v211, (v212[1] + 16), sizeof(v211));
              OUTLINED_FUNCTION_38_5();
              OUTLINED_FUNCTION_65_0();
              if (v41)
              {
                sub_21B0F685C(v211, &v204);
                do
                {
                  OUTLINED_FUNCTION_70_1();
                  v49 = OUTLINED_FUNCTION_52();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v49, v50);

                  --v41;
                }

                while (v41);
              }

              else
              {
                sub_21B0F685C(v211, &v204);
              }

              v44 = v211[3];
              v67 = v211[4];
              v68 = v211[5];
              v69 = v211[6];
              switch(LOBYTE(v211[9]))
              {
                case 1:
                  OUTLINED_FUNCTION_40_4();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  v92 = OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v92, v93);
                  v94 = OUTLINED_FUNCTION_8_21();
                  sub_21B0F45E4(v94);
                  goto LABEL_64;
                case 2:
                  OUTLINED_FUNCTION_39_3();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  v88 = OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v88, v89);
                  v90 = OUTLINED_FUNCTION_8_21();
                  sub_21B10BF04(v90, v91);
                  goto LABEL_64;
                case 3:
                  OUTLINED_FUNCTION_41_4();
                  OUTLINED_FUNCTION_0_29();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  OUTLINED_FUNCTION_6_24();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  if (v69)
                  {
                    OUTLINED_FUNCTION_64_1();
                    OUTLINED_FUNCTION_20_8();
                  }

                  else
                  {
                    OUTLINED_FUNCTION_63_1();
                  }

                  OUTLINED_FUNCTION_13_9();
                  for (; v67; --v67)
                  {
                    OUTLINED_FUNCTION_18_7();

                    OUTLINED_FUNCTION_52();
                    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                    v107 = OUTLINED_FUNCTION_26_5();
                    _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v107, v108);
                    OUTLINED_FUNCTION_62_0();
                  }

                  v109 = OUTLINED_FUNCTION_9_20();
                  sub_21B0F45E4(v109);
                  goto LABEL_163;
                case 4:
                  OUTLINED_FUNCTION_95_1(&v204);
                  OUTLINED_FUNCTION_38_5();
                  OUTLINED_FUNCTION_65_0();
                  if (v68)
                  {
                    sub_21B0F685C(&v204, v201);
                    do
                    {
                      OUTLINED_FUNCTION_70_1();
                      v86 = OUTLINED_FUNCTION_52();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v86, v87);

                      --v68;
                    }

                    while (v68);
                  }

                  else
                  {
                    sub_21B0F685C(&v204, v201);
                  }

                  v44 = v205;
                  v104 = v206;
                  v105 = v207;
                  v106 = v208;
                  switch(v209)
                  {
                    case 1:
                      OUTLINED_FUNCTION_40_4();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      v128 = OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v128, v129);
                      v130 = OUTLINED_FUNCTION_8_21();
                      sub_21B0F45E4(v130);
                      goto LABEL_98;
                    case 2:
                      OUTLINED_FUNCTION_39_3();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      v124 = OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v124, v125);
                      v126 = OUTLINED_FUNCTION_8_21();
                      sub_21B10BF04(v126, v127);
                      goto LABEL_98;
                    case 3:
                      OUTLINED_FUNCTION_41_4();
                      OUTLINED_FUNCTION_0_29();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      OUTLINED_FUNCTION_6_24();
                      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                      if (v106)
                      {
                        OUTLINED_FUNCTION_64_1();
                        OUTLINED_FUNCTION_20_8();
                      }

                      else
                      {
                        OUTLINED_FUNCTION_63_1();
                      }

                      OUTLINED_FUNCTION_13_9();
                      for (; v104; --v104)
                      {
                        OUTLINED_FUNCTION_18_7();

                        OUTLINED_FUNCTION_52();
                        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                        v142 = OUTLINED_FUNCTION_26_5();
                        _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v142, v143);
                        OUTLINED_FUNCTION_62_0();
                      }

                      v144 = OUTLINED_FUNCTION_9_20();
                      sub_21B0F45E4(v144);
                      goto LABEL_162;
                    case 4:
                      OUTLINED_FUNCTION_95_1(v201);
                      OUTLINED_FUNCTION_38_5();
                      OUTLINED_FUNCTION_65_0();
                      if (v105)
                      {
                        sub_21B0F685C(v201, v198);
                        do
                        {
                          OUTLINED_FUNCTION_70_1();
                          v122 = OUTLINED_FUNCTION_52();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v122, v123);

                          --v105;
                        }

                        while (v105);
                      }

                      else
                      {
                        sub_21B0F685C(v201, v198);
                      }

                      v44 = v201[3];
                      v139 = v201[4];
                      v140 = v201[5];
                      v141 = v201[6];
                      switch(v202)
                      {
                        case 1:
                          OUTLINED_FUNCTION_40_4();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          v151 = OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v151, v152);
                          v153 = OUTLINED_FUNCTION_8_21();
                          sub_21B0F45E4(v153);
                          goto LABEL_119;
                        case 2:
                          OUTLINED_FUNCTION_39_3();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          v147 = OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v147, v148);
                          v149 = OUTLINED_FUNCTION_8_21();
                          sub_21B10BF04(v149, v150);
                          goto LABEL_119;
                        case 3:
                          OUTLINED_FUNCTION_41_4();
                          OUTLINED_FUNCTION_0_29();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          OUTLINED_FUNCTION_6_24();
                          _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                          if (v141)
                          {
                            OUTLINED_FUNCTION_64_1();
                            OUTLINED_FUNCTION_20_8();
                          }

                          else
                          {
                            OUTLINED_FUNCTION_63_1();
                          }

                          OUTLINED_FUNCTION_13_9();
                          for (; v139; --v139)
                          {
                            OUTLINED_FUNCTION_18_7();

                            OUTLINED_FUNCTION_52();
                            _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                            v161 = OUTLINED_FUNCTION_26_5();
                            _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v161, v162);
                            OUTLINED_FUNCTION_62_0();
                          }

                          v163 = OUTLINED_FUNCTION_9_20();
                          sub_21B0F45E4(v163);
                          goto LABEL_161;
                        case 4:
                          OUTLINED_FUNCTION_95_1(v198);
                          OUTLINED_FUNCTION_38_5();
                          OUTLINED_FUNCTION_65_0();
                          if (v140)
                          {
                            sub_21B0F685C(v198, v195);
                            do
                            {
                              OUTLINED_FUNCTION_70_1();
                              v145 = OUTLINED_FUNCTION_52();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v145, v146);

                              --v140;
                            }

                            while (v140);
                          }

                          else
                          {
                            sub_21B0F685C(v198, v195);
                          }

                          v44 = v198[3];
                          v158 = v198[4];
                          v159 = v198[5];
                          v160 = v198[6];
                          switch(v199)
                          {
                            case 1:
                              OUTLINED_FUNCTION_40_4();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              v170 = OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v170, v171);
                              v172 = OUTLINED_FUNCTION_8_21();
                              sub_21B0F45E4(v172);
                              goto LABEL_138;
                            case 2:
                              OUTLINED_FUNCTION_39_3();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              v166 = OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v166, v167);
                              v168 = OUTLINED_FUNCTION_8_21();
                              sub_21B10BF04(v168, v169);
                              goto LABEL_138;
                            case 3:
                              OUTLINED_FUNCTION_41_4();
                              OUTLINED_FUNCTION_0_29();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              OUTLINED_FUNCTION_6_24();
                              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                              if (v160)
                              {
                                OUTLINED_FUNCTION_64_1();
                                OUTLINED_FUNCTION_20_8();
                              }

                              else
                              {
                                OUTLINED_FUNCTION_63_1();
                              }

                              OUTLINED_FUNCTION_13_9();
                              for (; v158; --v158)
                              {
                                OUTLINED_FUNCTION_18_7();

                                OUTLINED_FUNCTION_52();
                                _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();

                                v174 = OUTLINED_FUNCTION_26_5();
                                _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v174, v175);
                                OUTLINED_FUNCTION_62_0();
                              }

                              v176 = OUTLINED_FUNCTION_9_20();
                              sub_21B0F45E4(v176);
                              goto LABEL_160;
                            case 4:
                              OUTLINED_FUNCTION_95_1(v195);
                              OUTLINED_FUNCTION_38_5();
                              OUTLINED_FUNCTION_65_0();
                              if (v159)
                              {
                                sub_21B0F685C(v195, v194);
                                do
                                {
                                  OUTLINED_FUNCTION_70_1();
                                  v164 = OUTLINED_FUNCTION_52();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v164, v165);

                                  --v159;
                                }

                                while (v159);
                              }

                              else
                              {
                                sub_21B0F685C(v195, v194);
                              }

                              v173 = v195[6];
                              switch(v196)
                              {
                                case 1:
                                  OUTLINED_FUNCTION_40_4();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  v183 = OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v183, v184);
                                  v185 = OUTLINED_FUNCTION_9_20();
                                  sub_21B0F45E4(v185);
                                  goto LABEL_154;
                                case 2:
                                  OUTLINED_FUNCTION_39_3();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  v179 = OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v179, v180);
                                  v181 = OUTLINED_FUNCTION_9_20();
                                  sub_21B10BF04(v181, v182);
                                  goto LABEL_154;
                                case 3:
                                  OUTLINED_FUNCTION_41_4();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  OUTLINED_FUNCTION_8_21();
                                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  if (v173)
                                  {
                                    OUTLINED_FUNCTION_64_1();
                                    OUTLINED_FUNCTION_30_5();
                                    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_63_1();
                                  }

                                  v44 = v192;
                                  v186 = OUTLINED_FUNCTION_26_5();
                                  sub_21B0F55EC(v186, v187);
                                  v188 = OUTLINED_FUNCTION_109();
                                  sub_21B0F45E4(v188);
                                  goto LABEL_159;
                                case 4:
                                  memcpy(v194, (v195[1] + 16), sizeof(v194));
                                  OUTLINED_FUNCTION_38_5();
                                  OUTLINED_FUNCTION_65_0();
                                  if (v173)
                                  {
                                    sub_21B0F685C(v194, v193);
                                    v44 = v192;
                                    do
                                    {
                                      OUTLINED_FUNCTION_70_1();
                                      v177 = OUTLINED_FUNCTION_52();
                                      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v177, v178);

                                      --v173;
                                    }

                                    while (v173);
                                  }

                                  else
                                  {
                                    sub_21B0F685C(v194, v193);
                                    v44 = v192;
                                  }

                                  memcpy(v214, &v194[1], sizeof(v214));
                                  _s9SwiftAvro0B5ValueV4hash4intoys6HasherVz_tF_0(a1);
                                  MEMORY[0x21CEEA150](v194[10]);
                                  sub_21B0F68B8(v194);
                                  goto LABEL_159;
                                default:
                                  OUTLINED_FUNCTION_48_3();
                                  OUTLINED_FUNCTION_6_24();
                                  _s9SwiftAvro0B9PrimitiveV4hash4intoys6HasherVz_tF_0();
LABEL_154:
                                  v44 = v192;
LABEL_159:
                                  MEMORY[0x21CEEA150](v197);
                                  sub_21B0F68B8(v195);
                                  break;
                              }

                              goto LABEL_160;
                            default:
                              OUTLINED_FUNCTION_48_3();
                              OUTLINED_FUNCTION_0_29();
                              OUTLINED_FUNCTION_98_1();
LABEL_138:
                              v44 = v192;
LABEL_160:
                              MEMORY[0x21CEEA150](v200);
                              sub_21B0F68B8(v198);
                              break;
                          }

                          goto LABEL_161;
                        default:
                          OUTLINED_FUNCTION_48_3();
                          OUTLINED_FUNCTION_0_29();
                          OUTLINED_FUNCTION_98_1();
LABEL_119:
                          v44 = v192;
LABEL_161:
                          MEMORY[0x21CEEA150](v203);
                          sub_21B0F68B8(v201);
                          break;
                      }

                      goto LABEL_162;
                    default:
                      OUTLINED_FUNCTION_48_3();
                      OUTLINED_FUNCTION_0_29();
                      OUTLINED_FUNCTION_98_1();
LABEL_98:
                      v44 = v192;
LABEL_162:
                      MEMORY[0x21CEEA150](v210);
                      sub_21B0F68B8(&v204);
                      break;
                  }

                  goto LABEL_163;
                default:
                  OUTLINED_FUNCTION_48_3();
                  OUTLINED_FUNCTION_0_29();
                  OUTLINED_FUNCTION_98_1();
LABEL_64:
                  v44 = v192;
LABEL_163:
                  MEMORY[0x21CEEA150](v211[10]);
                  sub_21B0F68B8(v211);
                  break;
              }

              break;
            default:
              OUTLINED_FUNCTION_48_3();
              switch(v40)
              {
                case 1:
                  OUTLINED_FUNCTION_39_3();
                  goto LABEL_73;
                case 2:
                  OUTLINED_FUNCTION_41_4();
                  v95 = v38;
                  goto LABEL_69;
                case 3:
                  OUTLINED_FUNCTION_38_5();
LABEL_73:
                  sub_21B112EF4();
                  goto LABEL_30;
                case 4:
                  MEMORY[0x21CEEA150](5);
                  if ((v38 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v95 = v38;
                  }

                  else
                  {
                    v95 = 0;
                  }

LABEL_69:
                  MEMORY[0x21CEEA180](v95);
                  goto LABEL_30;
                case 5:
                  MEMORY[0x21CEEA150](6);
                  OUTLINED_FUNCTION_9_20();
                  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
                  goto LABEL_30;
                case 6:
                  MEMORY[0x21CEEA150](7);
                  if (((v39 >> 60) & 3) != 0)
                  {
                    v96 = OUTLINED_FUNCTION_656();
                    sub_21AF99818(v96, v97);
                    v44 = v192;
                  }

                  else
                  {
                    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                    v205 = v116;
                    v206 = sub_21B0F690C();
                    v204 = v38;
                    v117 = __swift_project_boxed_opaque_existential_0(&v204, v116);
                    v118 = *v117;
                    v119 = *(*v117 + 16);
                    if (v119)
                    {
                      v44 = v192;
                      if (v119 <= 0xE)
                      {
                        *(v211 + 6) = 0;
                        v211[0] = 0;
                        BYTE6(v211[1]) = v119;
                        memcpy(v211, (v118 + 32), v119);
                        OUTLINED_FUNCTION_49_3();
                        OUTLINED_FUNCTION_34_6();
                      }

                      else
                      {
                        v120 = sub_21B110C34();
                        OUTLINED_FUNCTION_93_1(v120);
                        OUTLINED_FUNCTION_85_1();
                        if (v119 >= v121)
                        {
                          OUTLINED_FUNCTION_34_6();
                          OUTLINED_FUNCTION_92_1();
                          OUTLINED_FUNCTION_45();
                          sub_21B110E04();
                          v154 = OUTLINED_FUNCTION_96_1();
                          *(v154 + 16) = 0;
                          *(v154 + 24) = v119;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_34_6();
                          OUTLINED_FUNCTION_92_1();
                        }
                      }
                    }

                    else
                    {
                      OUTLINED_FUNCTION_34_6();
                      v44 = v192;
                    }

                    __swift_destroy_boxed_opaque_existential_0(&v204);
                  }

                  OUTLINED_FUNCTION_656();
                  v155 = sub_21B110EB4();
                  v156 = OUTLINED_FUNCTION_656();
                  sub_21AF99728(v156, v157);
                  MEMORY[0x21CEEA150](v155);
                  goto LABEL_164;
                case 7:
                  OUTLINED_FUNCTION_48_3();
                  goto LABEL_30;
                default:
                  OUTLINED_FUNCTION_40_4();
                  sub_21B112EE4();
                  goto LABEL_30;
              }
          }

LABEL_164:
          MEMORY[0x21CEEA150](v212[10]);
          sub_21B0F68B8(v212);
LABEL_165:
          sub_21AFC54B0(__dst);
          result = sub_21AFC54B0(__dst);
          break;
        default:
          OUTLINED_FUNCTION_48_3();
          switch(v10)
          {
            case 1:
              OUTLINED_FUNCTION_39_3();
              goto LABEL_39;
            case 2:
              OUTLINED_FUNCTION_41_4();
              v58 = v8;
              goto LABEL_35;
            case 3:
              OUTLINED_FUNCTION_38_5();
LABEL_39:
              sub_21B112EF4();
              break;
            case 4:
              MEMORY[0x21CEEA150](5);
              if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v58 = v8;
              }

              else
              {
                v58 = 0;
              }

LABEL_35:
              MEMORY[0x21CEEA180](v58);
              break;
            case 5:
              MEMORY[0x21CEEA150](6);
              v59 = OUTLINED_FUNCTION_5_33();
              sub_21B0F6800(v59, v60);
              OUTLINED_FUNCTION_9_20();
              _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
              goto LABEL_41;
            case 6:
              MEMORY[0x21CEEA150](7);
              if (((v9 >> 60) & 3) != 0)
              {
                v61 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v61, v62);
                v63 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v63, v64);
                v65 = OUTLINED_FUNCTION_5_33();
                sub_21B0F6800(v65, v66);
                v44 = v192;
              }

              else
              {
                v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47A40, &qword_21B12D320);
                v211[3] = v74;
                v211[4] = sub_21B0F690C();
                v211[0] = v8;
                v75 = __swift_project_boxed_opaque_existential_0(v211, v74);
                v76 = *v75;
                v77 = *(*v75 + 16);
                if (v77)
                {
                  v44 = v192;
                  if (v77 <= 0xE)
                  {
                    *(v212 + 6) = 0;
                    v212[0] = 0;
                    BYTE6(v212[1]) = v77;
                    memcpy(v212, (v76 + 32), v77);
                    OUTLINED_FUNCTION_49_3();
                    v110 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v110, v111);
                    v112 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v112, v113);
                    v114 = OUTLINED_FUNCTION_5_33();
                    sub_21B0F6800(v114, v115);
                  }

                  else
                  {
                    v78 = sub_21B110C34();
                    OUTLINED_FUNCTION_93_1(v78);
                    OUTLINED_FUNCTION_85_1();
                    v79 = OUTLINED_FUNCTION_5_33();
                    if (v77 >= v81)
                    {
                      sub_21B0F6800(v79, v80);
                      v131 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v131, v132);
                      v133 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v133, v134);
                      OUTLINED_FUNCTION_92_1();
                      OUTLINED_FUNCTION_45();
                      sub_21B110E04();
                      v135 = OUTLINED_FUNCTION_96_1();
                      *(v135 + 16) = 0;
                      *(v135 + 24) = v77;
                    }

                    else
                    {
                      sub_21B0F6800(v79, v80);
                      v82 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v82, v83);
                      v84 = OUTLINED_FUNCTION_5_33();
                      sub_21B0F6800(v84, v85);
                      OUTLINED_FUNCTION_92_1();
                    }
                  }
                }

                else
                {
                  v98 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v98, v99);
                  v100 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v100, v101);
                  v102 = OUTLINED_FUNCTION_5_33();
                  sub_21B0F6800(v102, v103);
                  v44 = v192;
                }

                __swift_destroy_boxed_opaque_existential_0(v211);
              }

              OUTLINED_FUNCTION_656();
              v136 = sub_21B110EB4();
              v137 = OUTLINED_FUNCTION_656();
              sub_21AF99728(v137, v138);
              MEMORY[0x21CEEA150](v136);
              goto LABEL_165;
            case 7:
              OUTLINED_FUNCTION_48_3();
              break;
            default:
              OUTLINED_FUNCTION_40_4();
              sub_21B112EE4();
              break;
          }

          sub_21AFC54B0(__dst);
LABEL_41:
          result = sub_21AFC54B0(__dst);
          v44 = v192;
          break;
      }

      v6 = v44 + 1;
    }

    while (v6 != v191);
  }

  v189 = *MEMORY[0x277D85DE8];
  return result;
}