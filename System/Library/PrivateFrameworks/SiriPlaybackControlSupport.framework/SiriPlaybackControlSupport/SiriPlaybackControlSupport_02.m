void OUTLINED_FUNCTION_45_0()
{

  JUMPOUT(0x26D628010);
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = 32;
  *(a1 + 32) = 2;
  v4 = *(v3 + 32);
  return a1 + v2;
}

void OUTLINED_FUNCTION_68()
{

  sub_268BCF444();
}

void OUTLINED_FUNCTION_69(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_70(void *a1, uint64_t a2, os_log_type_t a3)
{
  v7 = *(v5 - 128);

  _os_log_impl(a1, v3, a3, v7, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_77(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_78(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_82()
{
  result = v0;
  v3 = *(v1 - 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_94()
{

  return sub_268C159BC();
}

BOOL OUTLINED_FUNCTION_95(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_96(uint64_t a1, unint64_t a2)
{

  return sub_268BB3D28(a1, a2, (v2 - 96));
}

void OUTLINED_FUNCTION_100()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
}

uint64_t OUTLINED_FUNCTION_106()
{
}

unint64_t OUTLINED_FUNCTION_107()
{

  return sub_268BB99F0(v0, 1);
}

uint64_t OUTLINED_FUNCTION_108()
{

  return sub_268C159CC();
}

uint64_t OUTLINED_FUNCTION_109()
{
}

uint64_t OUTLINED_FUNCTION_110()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_111()
{
}

SiriPlaybackControlSupport::HomeError_optional __swiftcall HomeError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 24;
  if ((rawValue - 1000) >= 7)
  {
    v2 = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_268BD8F64()
{
  result = qword_2802CE1B8;
  if (!qword_2802CE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1B8);
  }

  return result;
}

uint64_t sub_268BD8FD8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_268BD9004(uint64_t a1, uint64_t a2)
{
  v4 = sub_268BD91F0();
  v5 = sub_268BD9244();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x268BD91B8);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268BD91F0()
{
  result = qword_2802CE1C0;
  if (!qword_2802CE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1C0);
  }

  return result;
}

unint64_t sub_268BD9244()
{
  result = qword_2802CE1C8;
  if (!qword_2802CE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1C8);
  }

  return result;
}

void *sub_268BD9298()
{
  result = sub_268C15B7C();
  off_2802CE1D0 = result;
  return result;
}

SiriPlaybackControlSupport::AccessoryCategory_optional __swiftcall AccessoryCategory.init(accessoryType:)(Swift::String accessoryType)
{
  object = accessoryType._object;
  countAndFlagsBits = accessoryType._countAndFlagsBits;
  v4 = v1;
  v5 = sub_268C15A1C();
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDB80 != -1)
  {
    swift_once();
  }

  v13 = off_2802CE1D0;
  if (*(off_2802CE1D0 + 2) && (v14 = sub_268BD99A0(countAndFlagsBits, object), (v15 & 1) != 0))
  {
    v16 = v14;

    v19 = 0;
    v20 = *(v13[7] + 8 * v16);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v5, qword_2802D2F10);
    (*(v8 + 16))(v12, v21, v5);

    v22 = sub_268C159FC();
    v23 = sub_268C15DEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28 = v25;
      *v24 = 136446210;
      v26 = sub_268BB3D28(countAndFlagsBits, object, &v28);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v22, v23, "Could not map accessory type %{public}s to a AccessoryCategory. Returning nil", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x26D628010](v25, -1, -1);
      MEMORY[0x26D628010](v24, -1, -1);
    }

    else
    {
    }

    v17 = (*(v8 + 8))(v12, v5);
    v20 = 0;
    v19 = 1;
  }

  *v4 = v20;
  *(v4 + 8) = v19;
  result.value.rawValue = v17;
  result.is_nil = v18;
  return result;
}

void *sub_268BD9588()
{
  sub_268BDAD6C();
  result = sub_268C15B7C();
  off_2802CE1D8 = result;
  return result;
}

uint64_t static AccessoryCategory.keys.getter()
{
  if (qword_2802CDB88 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }
}

uint64_t AccessoryCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_2802CDB88 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_1();
  }

  v2 = off_2802CE1D8;
  v3 = off_2802CE1D8 + 64;
  v4 = 1 << *(off_2802CE1D8 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_2802CE1D8 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_268BDA100(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_268C1606C();

  v19 = 0xD000000000000014;
  v20 = 0x8000000268C1C530;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    sub_268BDA24C();
    sub_268BB9A64();
    v15 = sub_268C15CDC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D627230](v15, v17);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v19;
}

SiriPlaybackControlSupport::AccessoryCategory sub_268BD9928@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = AccessoryCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BD9968@<X0>(uint64_t *a1@<X8>)
{
  result = AccessoryCategory.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BD99A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268C1624C();
  sub_268C15C3C();
  v6 = sub_268C1626C();

  return sub_268BD9CE8(a1, a2, v6);
}

unint64_t sub_268BD9A18()
{
  OUTLINED_FUNCTION_2_3();
  sub_268C157BC();
  v1 = MEMORY[0x277D5EA60];
  sub_268BDAE70(&qword_2802CE218, MEMORY[0x277D5EA60]);
  v2 = sub_268C15B8C();
  return sub_268BD9E60(v0, v2, MEMORY[0x277D5EA60], &qword_2802CE220, v1, MEMORY[0x277D5EA70]);
}

unint64_t sub_268BD9AE0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_268C15FFC();

  return sub_268BD9D9C(a1, v5);
}

unint64_t sub_268BD9B24()
{
  OUTLINED_FUNCTION_2_3();
  sub_268C157DC();
  v1 = MEMORY[0x277D5EC70];
  sub_268BDAE70(&qword_2802CE228, MEMORY[0x277D5EC70]);
  v2 = sub_268C15B8C();
  return sub_268BD9E60(v0, v2, MEMORY[0x277D5EC70], &qword_2802CE230, v1, MEMORY[0x277D5EC80]);
}

unint64_t sub_268BD9BEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_268C1623C();

  return sub_268BD9FEC(a1, v4);
}

unint64_t sub_268BD9C34()
{
  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D627820](v0);
  v1 = sub_268C1626C();
  return sub_268BD9FEC(v0, v1);
}

unint64_t sub_268BD9C8C()
{
  OUTLINED_FUNCTION_3_4();
  sub_268BF8744(__src, v0);
  v1 = sub_268C1626C();

  return sub_268BDA04C(v0, v1);
}

unint64_t sub_268BD9CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C1618C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268BD9D9C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_268BDADC0(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D6275D0](v8, a1);
    sub_268BDAE1C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268BD9E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v20 = a1;
  v8 = a3(0);
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - v14;
  v25 = v6 + 64;
  v21 = v6;
  v16 = ~(-1 << *(v6 + 32));
  for (i = a2 & v16; ((1 << i) & *(v25 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v21 + 48) + *(v11 + 72) * i, v8);
    sub_268BDAE70(v22, v23);
    v18 = sub_268C15BDC();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_268BD9FEC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_268BDA04C(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    v6 = *(*(v2 + 48) + 8 * i);

    v8 = sub_268BDABC4(v7, a1);

    if (v8)
    {
      break;
    }
  }

  return i;
}

BOOL sub_268BDA100(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_268C1624C();
  sub_268C15C3C();
  v9 = sub_268C1626C();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_268C1618C() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_268BDA6D0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

unint64_t sub_268BDA24C()
{
  result = qword_2802CE1E8;
  if (!qword_2802CE1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802CE1E0, &qword_268C17B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1E8);
  }

  return result;
}

unint64_t sub_268BDA2B4()
{
  result = qword_2802CE1F0;
  if (!qword_2802CE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1F0);
  }

  return result;
}

unint64_t sub_268BDA30C()
{
  result = qword_2802CE1F8;
  if (!qword_2802CE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE1F8);
  }

  return result;
}

unint64_t sub_268BDA364()
{
  result = qword_2802CE200;
  if (!qword_2802CE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE200);
  }

  return result;
}

unint64_t sub_268BDA3BC()
{
  result = qword_2802CE208;
  if (!qword_2802CE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryCategory(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryCategory(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_268BDA474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1603C();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_268BF7C74(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_268C1624C();
    sub_268C15C3C();
    result = sub_268C1626C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_268BDA6D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268BDA474(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_268BDA990(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_268C1624C();
      sub_268C15C3C();
      result = sub_268C1626C();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_268C1618C() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_268BDA838();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_268C161BC();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_268BDA838()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  v2 = *v0;
  v3 = sub_268C1602C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_268BDA990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1603C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_268C1624C();

        sub_268C15C3C();
        result = sub_268C1626C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_268BDABC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_268C1624C();

      sub_268C15C3C();
      v16 = sub_268C1626C();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_268C1618C();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
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
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_268BDAD6C()
{
  result = qword_2802CE210;
  if (!qword_2802CE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE210);
  }

  return result;
}

uint64_t sub_268BDAE70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_4()
{
  v2 = *(v0 + 40);

  return sub_268C1624C();
}

uint64_t CodeGenTaskBase.referencedUserEntities()()
{
  sub_268C153EC();
  v0 = sub_268C155EC();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v5 = v2;
  v3 = sub_268C155EC();
  if (!v3)
  {
    v3 = v1;
  }

  sub_268BB0078(v3);
  return v5;
}

uint64_t UsoEntitySpanBuilder.init(semantic:homeAutomationEntityType:matchInfo:payloadAttachmentInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for UsoEntitySpanBuilder();
  sub_268BDB0A0(a4, a6 + *(v10 + 24), &qword_2802CE238, &qword_268C17D70);
  return sub_268BDB0A0(a5, a6 + *(v10 + 28), &qword_2802CE240, &qword_268C17D78);
}

uint64_t type metadata accessor for UsoEntitySpanBuilder()
{
  result = qword_2802CE250;
  if (!qword_2802CE250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BDB0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t UsoEntitySpanBuilder.build()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v329 = a1;
  v3 = sub_268C15A1C();
  v4 = OUTLINED_FUNCTION_3_0(v3);
  v319 = v5;
  v320 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15_0();
  v318 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v328 = &v315 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v326 = &v315 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE248, qword_268C17D80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v324 = &v315 - v18;
  v327 = sub_268C156EC();
  v19 = OUTLINED_FUNCTION_3_0(v327);
  v325 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_0();
  v323 = v24 - v23;
  v321 = sub_268C1561C();
  v25 = OUTLINED_FUNCTION_3_0(v321);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_0();
  v32 = v31 - v30;
  v33 = sub_268C1570C();
  v34 = OUTLINED_FUNCTION_3_0(v33);
  v322 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_15_0();
  v38 = sub_268C1548C();
  v39 = OUTLINED_FUNCTION_3_0(v38);
  v331 = v40;
  v332 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v44 = &v315 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  MEMORY[0x28223BE20](v48);
  MEMORY[0x28223BE20](v49);
  MEMORY[0x28223BE20](v50);
  v52 = &v315 - v51;
  MEMORY[0x28223BE20](v53);
  MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v57 = &v315 - v56;
  MEMORY[0x28223BE20](v58);
  MEMORY[0x28223BE20](v59);
  MEMORY[0x28223BE20](&v315 - v60);
  v62 = &v315 - v61;
  MEMORY[0x28223BE20](v63);
  v65 = &v315 - v64;
  MEMORY[0x28223BE20](v66);
  MEMORY[0x28223BE20](v67);
  v330 = v2;
  switch(*(v2 + 16))
  {
    case 0:
      v79 = *v330;
      v80 = v330[1];
      v81 = v74;

      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      sub_268C1546C();
      v82 = *(v331 + 16);
      v322 = v81;
      v83 = v82(v52, v81, v332);
      OUTLINED_FUNCTION_12_4(v83, v84, v85, MEMORY[0x277D84F90]);
      v87 = v86;
      v89 = *(v86 + 16);
      v88 = *(v86 + 24);
      if (v89 >= v88 >> 1)
      {
        v300 = OUTLINED_FUNCTION_10_5(v88);
        sub_268BB3328(v300, v301, v302, v87);
        v87 = v303;
      }

      v91 = v328;
      v90 = v329;
      *(v87 + 16) = v89 + 1;
      v93 = v331;
      v92 = v332;
      (*(v331 + 32))(v87 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v89, v52, v332);
      v94 = v325;
      v95 = v323;
      v96 = v327;
      (*(v325 + 104))(v323, *MEMORY[0x277D5E690], v327);
      v329 = sub_268C156DC();
      (*(v94 + 8))(v95, v96);
      v97 = *MEMORY[0x277D5E480];
      v98 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4(v98);
      v100 = v324;
      (*(v99 + 104))(v324, v97, v98);
      __swift_storeEnumTagSinglePayload(v100, 0, 1, v98);
      v101 = type metadata accessor for UsoEntitySpanBuilder();
      v102 = v330;
      sub_268BDC5A8(v330 + *(v101 + 24), v326, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v102 + *(v101 + 28), v91, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_5_2();
      v319 = v91;
      v315 = v103;
      v316 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      (*(v93 + 8))(v322, v92);
      goto LABEL_30;
    case 2:
      v318 = v72;
      v167 = *MEMORY[0x277D5E6E8];
      v168 = v322;
      v317 = *(v322 + 104);
      v319 = v68;
      v320 = v78;
      v169 = OUTLINED_FUNCTION_13_3();
      v170(v169);
      v171 = sub_268C156FC();
      v315 = v172;
      v316 = v171;
      v173 = OUTLINED_FUNCTION_14_2(*(v168 + 8));
      v174(v173);
      v175 = *MEMORY[0x277D5E528];
      v176 = OUTLINED_FUNCTION_15_4();
      v177 = v321;
      v178(v176);
      sub_268C1560C();
      (*(v27 + 8))(v32, v177);
      OUTLINED_FUNCTION_3_5();
      v179 = v319;
      sub_268C1546C();
      v180 = *MEMORY[0x277D5E6E0];
      v181 = OUTLINED_FUNCTION_13_3();
      v317(v181);
      sub_268C156FC();
      v182 = OUTLINED_FUNCTION_6_4();
      v183(v182);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v184 = *(v331 + 16);
      v185 = v184(v57, v179, v332);
      OUTLINED_FUNCTION_12_4(v185, v186, v187, MEMORY[0x277D84F90]);
      v189 = v188;
      v191 = *(v188 + 16);
      v190 = *(v188 + 24);
      v192 = v191 + 1;
      if (v191 >= v190 >> 1)
      {
        v304 = OUTLINED_FUNCTION_10_5(v190);
        sub_268BB3328(v304, v305, v306, v189);
        v189 = v307;
      }

      *(v189 + 16) = v192;
      v193 = *(v331 + 32);
      v194 = (*(v331 + 80) + 32) & ~*(v331 + 80);
      v195 = *(v331 + 72);
      v196 = v57;
      v197 = v332;
      v193(v189 + v194 + v195 * v191, v196, v332);
      v184(v318, v320, v197);
      v198 = *(v189 + 24);
      v199 = v191 + 2;
      if ((v191 + 2) > (v198 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v198);
        v189 = v308;
      }

      v90 = v329;
      v200 = v327;
      v201 = v325;
      *(v189 + 16) = v199;
      v202 = v189 + v194 + v195 * v192;
      v203 = v332;
      v193(v202, v318, v332);
      v204 = v323;
      (*(v201 + 104))(v323, *MEMORY[0x277D5E6B0], v200);
      sub_268C156DC();
      (*(v201 + 8))(v204, v200);
      v205 = *MEMORY[0x277D5E480];
      v206 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4(v206);
      v208 = *(v207 + 104);
      v209 = v324;
      OUTLINED_FUNCTION_22_4();
      v210();
      v159 = 1;
      v211 = OUTLINED_FUNCTION_7_4(v209);
      OUTLINED_FUNCTION_20_3(v211);
      v212 = v330;
      sub_268BDC5A8(v330 + v213, v326, &qword_2802CE238, &qword_268C17D70);
      v214 = v212 + *(v205 + 28);
      v215 = v328;
      sub_268BDC5A8(v214, v328, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_5_2();
      v319 = v215;
      v315 = v216;
      v316 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v217 = OUTLINED_FUNCTION_9_4();
      MEMORY[0](v217, v203);
      v165 = v319;
      goto LABEL_25;
    case 3:
      v319 = &v315 - v75;
      v320 = v69;
      v113 = *MEMORY[0x277D5E6E8];
      v114 = v322;
      v318 = *(v322 + 104);
      v115 = OUTLINED_FUNCTION_13_3();
      v116(v115);
      v117 = sub_268C156FC();
      v316 = v118;
      v317 = v117;
      v119 = OUTLINED_FUNCTION_14_2(*(v114 + 8));
      v120(v119);
      v121 = *MEMORY[0x277D5E558];
      v122 = OUTLINED_FUNCTION_15_4();
      v123 = v321;
      v124(v122);
      sub_268C1560C();
      v315 = v125;
      (*(v27 + 8))(v32, v123);
      OUTLINED_FUNCTION_3_5();
      v126 = v319;
      sub_268C1546C();
      v127 = *MEMORY[0x277D5E6E0];
      v128 = OUTLINED_FUNCTION_13_3();
      v318(v128);
      sub_268C156FC();
      v129 = OUTLINED_FUNCTION_6_4();
      v130(v129);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v131 = *(v331 + 16);
      v132 = v131(v65, v126, v332);
      OUTLINED_FUNCTION_12_4(v132, v133, v134, MEMORY[0x277D84F90]);
      v136 = v135;
      v138 = *(v135 + 16);
      v137 = *(v135 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_268BB3328(v137 > 1, v138 + 1, 1, v135);
        v136 = v298;
      }

      v322 = v138 + 1;
      *(v136 + 16) = v138 + 1;
      v139 = *(v331 + 32);
      v140 = (*(v331 + 80) + 32) & ~*(v331 + 80);
      v141 = *(v331 + 72);
      v142 = v65;
      v143 = v332;
      v139(v136 + v140 + v141 * v138, v142, v332);
      v131(v62, v320, v143);
      v144 = *(v136 + 24);
      v145 = v138 + 2;
      if ((v138 + 2) > (v144 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v144);
        v136 = v299;
      }

      v147 = v326;
      v146 = v327;
      v148 = v328;
      *(v136 + 16) = v145;
      v149 = v332;
      v139(v136 + v140 + v141 * v322, v62, v332);
      v150 = v325;
      v151 = v323;
      (*(v325 + 104))(v323, *MEMORY[0x277D5E6B0], v146);
      sub_268C156DC();
      v328 = v152;
      (*(v150 + 8))(v151, v146);
      v153 = *MEMORY[0x277D5E480];
      v154 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4(v154);
      v156 = *(v155 + 104);
      v157 = v324;
      OUTLINED_FUNCTION_22_4();
      v158();
      v159 = 1;
      v160 = OUTLINED_FUNCTION_7_4(v157);
      OUTLINED_FUNCTION_20_3(v160);
      v161 = v330;
      sub_268BDC5A8(v330 + v162, v147, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v161 + *(v153 + 28), v148, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_19_5();
      OUTLINED_FUNCTION_5_2();
      v319 = v148;
      v315 = v163;
      v316 = MEMORY[0x277D84F90];
      v90 = v329;
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v164 = OUTLINED_FUNCTION_9_4();
      MEMORY[0](v164, v149);
      v165 = v319;
      v166 = v149;
      goto LABEL_26;
    case 4:
      v319 = v70;
      v218 = *MEMORY[0x277D5E6E8];
      v219 = v322;
      v317 = *(v322 + 104);
      v318 = v73;
      v320 = v76;
      v220 = v77;
      v221 = OUTLINED_FUNCTION_13_3();
      v222(v221);
      v223 = sub_268C156FC();
      v315 = v224;
      v316 = v223;
      v225 = OUTLINED_FUNCTION_14_2(*(v219 + 8));
      v226(v225);
      v227 = *MEMORY[0x277D5E508];
      v228 = OUTLINED_FUNCTION_15_4();
      v229 = v321;
      v230(v228);
      sub_268C1560C();
      (*(v27 + 8))(v32, v229);
      OUTLINED_FUNCTION_3_5();
      sub_268C1546C();
      v231 = *MEMORY[0x277D5E6E0];
      v232 = OUTLINED_FUNCTION_13_3();
      v317(v232);
      sub_268C156FC();
      v233 = OUTLINED_FUNCTION_6_4();
      v234(v233);
      OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_0_2();
      v235 = *(v331 + 16);
      v236 = v318;
      v322 = v220;
      v237 = v235();
      OUTLINED_FUNCTION_12_4(v237, v238, v239, MEMORY[0x277D84F90]);
      v241 = v240;
      v243 = *(v240 + 16);
      v242 = *(v240 + 24);
      v244 = v243 + 1;
      if (v243 >= v242 >> 1)
      {
        v309 = OUTLINED_FUNCTION_10_5(v242);
        sub_268BB3328(v309, v310, v311, v241);
        v241 = v312;
      }

      *(v241 + 16) = v244;
      v245 = *(v331 + 32);
      v246 = (*(v331 + 80) + 32) & ~*(v331 + 80);
      v247 = *(v331 + 72);
      v248 = v236;
      v249 = v332;
      v245(v241 + v246 + v247 * v243, v248, v332);
      (v235)(v319, v320, v249);
      v250 = *(v241 + 24);
      if ((v243 + 2) > (v250 >> 1))
      {
        OUTLINED_FUNCTION_4_4(v250);
        v241 = v313;
      }

      v251 = v327;
      *(v241 + 16) = v243 + 2;
      v252 = v241 + v246 + v247 * v244;
      v203 = v332;
      v245(v252, v319, v332);
      v253 = v325;
      v254 = v323;
      (*(v325 + 104))(v323, *MEMORY[0x277D5E6B0], v251);
      sub_268C156DC();
      (*(v253 + 8))(v254, v251);
      v255 = *MEMORY[0x277D5E480];
      v256 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4(v256);
      v258 = *(v257 + 104);
      v259 = v324;
      OUTLINED_FUNCTION_22_4();
      v260();
      v261 = OUTLINED_FUNCTION_7_4(v259);
      OUTLINED_FUNCTION_20_3(v261);
      v159 = v330;
      sub_268BDC5A8(v330 + v262, v326, &qword_2802CE238, &qword_268C17D70);
      v263 = v159 + *(v255 + 28);
      v264 = v328;
      sub_268BDC5A8(v263, v328, &qword_2802CE240, &qword_268C17D78);
      v333 = 1;
      OUTLINED_FUNCTION_5_2();
      v319 = v264;
      v315 = v265;
      v316 = MEMORY[0x277D84F90];
      v90 = v329;
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      v266 = OUTLINED_FUNCTION_9_4();
      (v159)(v266, v203);
      v165 = v322;
LABEL_25:
      v166 = v203;
LABEL_26:
      (v159)(v165, v166);
      goto LABEL_30;
    case 7:
      v267 = *v330;
      v268 = v330[1];
      v269 = v71;

      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      sub_268C1546C();
      v270 = *(v331 + 16);
      v322 = v269;
      v271 = v270(v44, v269, v332);
      OUTLINED_FUNCTION_12_4(v271, v272, v273, MEMORY[0x277D84F90]);
      v275 = v274;
      v277 = *(v274 + 16);
      v276 = *(v274 + 24);
      if (v277 >= v276 >> 1)
      {
        OUTLINED_FUNCTION_4_4(v276);
        v275 = v314;
      }

      v278 = v328;
      v90 = v329;
      v279 = v325;
      v280 = v326;
      *(v275 + 16) = v277 + 1;
      v281 = v331;
      v282 = v332;
      (*(v331 + 32))(v275 + ((*(v281 + 80) + 32) & ~*(v281 + 80)) + *(v281 + 72) * v277, v44, v332);
      v283 = v323;
      v284 = v327;
      (*(v279 + 104))(v323, *MEMORY[0x277D5E690], v327);
      sub_268C156DC();
      v329 = v285;
      (*(v279 + 8))(v283, v284);
      v286 = *MEMORY[0x277D5E480];
      v287 = sub_268C154BC();
      OUTLINED_FUNCTION_2_4(v287);
      v289 = *(v288 + 104);
      v290 = v324;
      OUTLINED_FUNCTION_22_4();
      v291();
      v292 = OUTLINED_FUNCTION_7_4(v290);
      OUTLINED_FUNCTION_20_3(v292);
      v293 = v330;
      sub_268BDC5A8(v330 + v294, v280, &qword_2802CE238, &qword_268C17D70);
      sub_268BDC5A8(v293 + *(v286 + 28), v278, &qword_2802CE240, &qword_268C17D78);
      OUTLINED_FUNCTION_8_5();
      OUTLINED_FUNCTION_18_4();
      OUTLINED_FUNCTION_5_2();
      v319 = v278;
      v315 = v295;
      v316 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_16_4();
      sub_268C154DC();
      (*(v281 + 8))(v322, v282);
LABEL_30:
      v112 = 0;
      break;
    default:
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v104 = v320;
      v105 = __swift_project_value_buffer(v320, qword_2802D2F10);
      v107 = v318;
      v106 = v319;
      (*(v319 + 2))(v318, v105, v104);
      v108 = sub_268C159FC();
      v109 = sub_268C15DEC();
      v110 = os_log_type_enabled(v108, v109);
      v90 = v329;
      if (v110)
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_268BAD000, v108, v109, "Unexpected parameter while generating usoEntitySpan", v111, 2u);
        MEMORY[0x26D628010](v111, -1, -1);
      }

      v106[1](v107, v104);
      v112 = 1;
      break;
  }

  v296 = sub_268C1551C();
  return __swift_storeEnumTagSinglePayload(v90, v112, 1, v296);
}

uint64_t sub_268BDC5A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_268BDC60C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_268BDC704(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE238, &qword_268C17D70);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE240, &qword_268C17D78);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_268BDC7E4()
{
  sub_268BDC8B8(319, &qword_2802CE260, MEMORY[0x277D5F490]);
  if (v0 <= 0x3F)
  {
    sub_268BDC8B8(319, &qword_2802CE268, MEMORY[0x277D5E758]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_268BDC8B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268C15F1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  *(v1 - 92) = v0;
  *(v1 - 92) = v0;
  v3 = *(v1 - 200);

  return sub_268C1546C();
}

void OUTLINED_FUNCTION_4_4(unint64_t a1@<X8>)
{

  sub_268BB3328(a1 > 1, v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_6_4()
{
  result = v0;
  v3 = *(v1 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);

  return type metadata accessor for UsoEntitySpanBuilder();
}

void OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_268BB3328(0, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_17_5()
{
  v2 = *(v0 - 120);
  v3 = *v2;
  v4 = v2[1];
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_268BDCAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 8))(a2, a3);
  sub_268BDCB60(a1, v4, v5);
  v7 = v6;

  return v7;
}

void sub_268BDCB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_268C1522C();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  v52 = a3;
  v53 = 32;
  v54 = 0xE100000000000000;
  v43 = sub_268BB9A64();
  v9 = sub_268C15F3C();
  v10 = 0;
  v46 = *(v9 + 16);
  v47 = v9;
  v41 = (v6 + 8);
  v42 = v9 + 32;
  v48 = MEMORY[0x277D84F90];
  v40 = a1;
  v39 = a1 + 56;
  v11 = v44;
  v12 = v45;
  while (1)
  {
LABEL_2:
    if (v10 == v46)
    {

      return;
    }

    if (v10 >= *(v47 + 16))
    {
      break;
    }

    v14 = *(v42 + 16 * v10);
    v13 = *(v42 + 16 * v10 + 8);
    v50 = v10 + 1;
    v51 = v14;
    v52 = v13;
    v49 = v13;

    sub_268C1521C();
    v15 = sub_268C15F2C();
    v16 = *v41;
    (*v41)(v11, v12);
    v51 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v17 = OUTLINED_FUNCTION_0_3();
    v19 = v18;

    v51 = v17;
    v52 = v19;
    sub_268C1520C();
    v20 = sub_268C15F2C();
    v16(v11, v12);
    v21 = v39;
    v22 = v40;

    v51 = v20;
    OUTLINED_FUNCTION_0_3();

    v23 = sub_268C15C1C();
    v25 = v24;

    if (*(v22 + 16))
    {
      v26 = *(v22 + 40);
      sub_268C1624C();
      sub_268C15C3C();
      v27 = sub_268C1626C();
      v28 = ~(-1 << *(v22 + 32));
      while (1)
      {
        v29 = v27 & v28;
        if (((*(v21 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {
          break;
        }

        v30 = (*(v22 + 48) + 16 * v29);
        if (*v30 != v23 || v30[1] != v25)
        {
          v32 = sub_268C1618C();
          v27 = v29 + 1;
          if ((v32 & 1) == 0)
          {
            continue;
          }
        }

        v10 = v50;
        goto LABEL_2;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = *(v48 + 16);
      sub_268BB2DB4();
      v48 = v37;
    }

    v33 = *(v48 + 16);
    if (v33 >= *(v48 + 24) >> 1)
    {
      sub_268BB2DB4();
      v48 = v38;
    }

    v34 = v48;
    *(v48 + 16) = v33 + 1;
    v35 = v34 + 16 * v33;
    *(v35 + 32) = v23;
    *(v35 + 40) = v25;
    v10 = v50;
  }

  __break(1u);
}

unint64_t sub_268BDCF60()
{
  result = qword_2802CE270[0];
  if (!qword_2802CE270[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2802CE5B0, &qword_268C18770);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE270);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return sub_268C15B9C();
}

uint64_t sub_268BDCFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for HomeKitAccessoryContainerType();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268BDD074(unsigned __int16 *a1, int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  swift_getAssociatedConformanceWitness();
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v9 + 64) <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 64) > v10)
  {
    v10 = *(v11 + 64);
  }

  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(v12 + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if ((a2 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  v16 = *(v9 + 80) | *(v7 + 80) | *(v11 + 80) | *(v12 + 80);
  v17 = v13 + ((v16 + 17) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 > 3)
  {
    goto LABEL_15;
  }

  v20 = (a2 - 0x7FFFFFFF + ~(-1 << v18)) >> v18;
  if (v20 > 0xFFFE)
  {
    v19 = *(a1 + v17);
    if (!v19)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (v20 <= 0xFE)
  {
    if (!v20)
    {
      goto LABEL_10;
    }

LABEL_15:
    v19 = *(a1 + v17);
    if (!*(a1 + v17))
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
LABEL_10:
    v14 = *(a1 + 1);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

LABEL_24:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    switch(v17)
    {
      case 2:
        LODWORD(v17) = *a1;
        break;
      case 3:
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v17) = *a1;
        break;
      default:
        LODWORD(v17) = *a1;
        break;
    }
  }

  return (v17 | v21) ^ 0x80000000;
}

void sub_268BDD3AC(_WORD *a1, int a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  swift_getAssociatedConformanceWitness();
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v11 + 64) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(swift_getAssociatedTypeWitness() - 8);
  if (*(v13 + 64) > v12)
  {
    v12 = *(v13 + 64);
  }

  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(v14 + 64);
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = *(v11 + 80) | *(v9 + 80) | *(v13 + 80) | *(v14 + 80);
  v17 = v15 + ((v16 + 17) & ~v16) + 1;
  v18 = 8 * v17;
  if (a3 < 0)
  {
    if (v17 <= 3)
    {
      v20 = (a3 - 0x7FFFFFFF + ~(-1 << v18)) >> v18;
      if (v20 > 0xFFFE)
      {
        v19 = 4;
        if (a2 < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_29;
      }

      if (v20 < 0xFF)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }

      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 1;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

LABEL_22:
    v22 = a2 & 0x7FFFFFFF;
    if (v17 < 4)
    {
      v23 = (v22 >> v18) + 1;
      if (v17)
      {
        v24 = a2 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v24;
          *(a1 + 2) = BYTE2(v24);
        }

        else if (v17 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = a2;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v22;
      v23 = 1;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v17) = v23;
        return;
      case 2:
        *(a1 + v17) = v23;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v17) = v23;
        return;
      default:
        return;
    }
  }

  v19 = 0;
  if (a2 < 0)
  {
    goto LABEL_22;
  }

LABEL_29:
  switch(v19)
  {
    case 1:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    case 2:
      *(a1 + v17) = 0;
      goto LABEL_33;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x268BDD74CLL);
    case 4:
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    default:
LABEL_33:
      if (a2)
      {
LABEL_34:
        *(a1 + 1) = (a2 - 1);
      }

      return;
  }
}

uint64_t sub_268BDD78C(uint64_t a1)
{
  v2 = v1;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000022, 0x8000000268C1C550);
  MEMORY[0x26D627230](*v2, *(v2 + 8));
  MEMORY[0x26D627230](0x203A65707974202CLL, 0xE800000000000000);
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for HomeKitAccessoryContainerType();
  swift_getWitnessTable();
  sub_268C1617C();
  MEMORY[0x26D627230](0x6E6572727563202CLL, 0xEF203A656D6F4874);
  if (*(v2 + 16))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v2 + 16))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v7, v8);

  MEMORY[0x26D627230](2129184, 0xE300000000000000);
  return 0;
}

uint64_t sub_268BDD8EC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

BOOL sub_268BDD94C(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  while (v3)
  {
    v5 = a1;
    if (*v4 == 20)
    {
      if (a1 == 20)
      {
        return v3 != 0;
      }
    }

    else
    {
      v6 = 0xE400000000000000;
      v7 = 1936287860;
      switch(*v4)
      {
        case 1:
          v6 = 0xE700000000000000;
          v7 = 0x657265685F6E69;
          break;
        case 2:
          v5 = 109;
          v6 = 0xE900000000000074;
          v7 = 0x6E69685F6D6F6F72;
          break;
        case 3:
          v5 = 28015;
          v6 = 0xEA0000000000746ELL;
          v7 = 0x69685F6573756F68;
          break;
        case 4:
          v7 = 0x725F6E6F6D6D6F63;
          v6 = 0xEC000000736D6F6FLL;
          break;
        case 5:
          v7 = 1819042152;
          break;
        case 6:
          v6 = 0xE700000000000000;
          v7 = 0x6E65686374696BLL;
          break;
        case 7:
          v8 = 1769367916;
          goto LABEL_25;
        case 8:
          v8 = 1768843620;
LABEL_25:
          v7 = v8 | 0x6F72676E00000000;
          v6 = 0xEA00000000006D6FLL;
          break;
        case 9:
          v6 = 0xE800000000000000;
          v7 = 0x65636E6172746E65;
          break;
        case 0xA:
          v6 = 0xE800000000000000;
          v7 = 0x6D6F6F7268746162;
          break;
        case 0xB:
          v6 = 0xE600000000000000;
          v7 = 0x65636966666FLL;
          break;
        case 0xC:
          v6 = 0xE700000000000000;
          v7 = 0x6D6F6F72646562;
          break;
        case 0xD:
          v7 = 0x625F72657473616DLL;
          v6 = 0xEE006D6F6F726465;
          break;
        case 0xE:
          v6 = 0xE800000000000000;
          v7 = 0x746E656D65736162;
          break;
        case 0xF:
          v7 = 1685217657;
          break;
        case 0x10:
          v6 = 0xE300000000000000;
          v7 = 7174503;
          break;
        case 0x11:
          v6 = 0xE90000000000006DLL;
          v7 = 0x6F6F725F79616C70;
          break;
        case 0x12:
          v6 = 0xE700000000000000;
          v7 = 0x6D6F6F725F7674;
          break;
        case 0x13:
          v6 = 0xE800000000000000;
          v7 = 0x706F68736B726F77;
          break;
        default:
          break;
      }

      v9 = 0xE400000000000000;
      v10 = 1936287860;
      switch(v5)
      {
        case 0:
          break;
        case 1:
          v9 = 0xE700000000000000;
          v10 = 0x657265685F6E69;
          break;
        case 2:
          v9 = 0xE900000000000074;
          v10 = 0x6E69685F6D6F6F72;
          break;
        case 3:
          v9 = 0xEA0000000000746ELL;
          v10 = 0x69685F6573756F68;
          break;
        case 4:
          v10 = 0x725F6E6F6D6D6F63;
          v9 = 0xEC000000736D6F6FLL;
          break;
        case 5:
          v10 = 1819042152;
          break;
        case 6:
          v9 = 0xE700000000000000;
          v10 = 0x6E65686374696BLL;
          break;
        case 7:
          v11 = 1769367916;
          goto LABEL_46;
        case 8:
          v11 = 1768843620;
LABEL_46:
          v10 = v11 | 0x6F72676E00000000;
          v9 = 0xEA00000000006D6FLL;
          break;
        case 9:
          v9 = 0xE800000000000000;
          v10 = 0x65636E6172746E65;
          break;
        case 10:
          v9 = 0xE800000000000000;
          v10 = 0x6D6F6F7268746162;
          break;
        case 11:
          v9 = 0xE600000000000000;
          v10 = 0x65636966666FLL;
          break;
        case 12:
          v9 = 0xE700000000000000;
          v10 = 0x6D6F6F72646562;
          break;
        case 13:
          v10 = 0x625F72657473616DLL;
          v9 = 0xEE006D6F6F726465;
          break;
        case 14:
          v9 = 0xE800000000000000;
          v10 = 0x746E656D65736162;
          break;
        case 15:
          v10 = 1685217657;
          break;
        case 16:
          v9 = 0xE300000000000000;
          v10 = 7174503;
          break;
        case 17:
          v9 = 0xE90000000000006DLL;
          v10 = 0x6F6F725F79616C70;
          break;
        case 18:
          v9 = 0xE700000000000000;
          v10 = 0x6D6F6F725F7674;
          break;
        case 19:
          v9 = 0xE800000000000000;
          v10 = 0x706F68736B726F77;
          break;
        default:
          goto LABEL_53;
      }

      if (v7 == v10 && v6 == v9)
      {

        return v3 != 0;
      }

      v13 = sub_268C1618C();

      if (v13)
      {
        return v3 != 0;
      }
    }

LABEL_53:
    ++v4;
    --v3;
  }

  return v3 != 0;
}

BOOL sub_268BDDE7C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE400000000000000;
    v8 = 1936287860;
    switch(*v4)
    {
      case 1:
        v7 = 0xE700000000000000;
        v8 = 0x657265685F6E69;
        break;
      case 2:
        v7 = 0xE900000000000074;
        v8 = 0x6E69685F6D6F6F72;
        break;
      case 3:
        v7 = 0xEA0000000000746ELL;
        v8 = 0x69685F6573756F68;
        break;
      case 4:
        v8 = 0x725F6E6F6D6D6F63;
        v7 = 0xEC000000736D6F6FLL;
        break;
      case 5:
        v8 = 1819042152;
        break;
      case 6:
        v7 = 0xE700000000000000;
        v8 = 0x6E65686374696BLL;
        break;
      case 7:
        v9 = 1769367916;
        goto LABEL_23;
      case 8:
        v9 = 1768843620;
LABEL_23:
        v8 = v9 | 0x6F72676E00000000;
        v7 = 0xEA00000000006D6FLL;
        break;
      case 9:
        v7 = 0xE800000000000000;
        v8 = 0x65636E6172746E65;
        break;
      case 0xA:
        v7 = 0xE800000000000000;
        v8 = 0x6D6F6F7268746162;
        break;
      case 0xB:
        v7 = 0xE600000000000000;
        v8 = 0x65636966666FLL;
        break;
      case 0xC:
        v7 = 0xE700000000000000;
        v8 = 0x6D6F6F72646562;
        break;
      case 0xD:
        v8 = 0x625F72657473616DLL;
        v7 = 0xEE006D6F6F726465;
        break;
      case 0xE:
        v7 = 0xE800000000000000;
        v8 = 0x746E656D65736162;
        break;
      case 0xF:
        v8 = 1685217657;
        break;
      case 0x10:
        v7 = 0xE300000000000000;
        v8 = 7174503;
        break;
      case 0x11:
        v8 = 0x6F6F725F79616C70;
        v7 = 0xE90000000000006DLL;
        break;
      case 0x12:
        v7 = 0xE700000000000000;
        v8 = 0x6D6F6F725F7674;
        break;
      case 0x13:
        v7 = 0xE800000000000000;
        v8 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    v10 = 0xE400000000000000;
    v11 = 1936287860;
    switch(a1)
    {
      case 1:
        v10 = 0xE700000000000000;
        v11 = 0x657265685F6E69;
        break;
      case 2:
        v10 = 0xE900000000000074;
        v11 = 0x6E69685F6D6F6F72;
        break;
      case 3:
        v10 = 0xEA0000000000746ELL;
        v11 = 0x69685F6573756F68;
        break;
      case 4:
        v11 = 0x725F6E6F6D6D6F63;
        v10 = 0xEC000000736D6F6FLL;
        break;
      case 5:
        v11 = 1819042152;
        break;
      case 6:
        v10 = 0xE700000000000000;
        v11 = 0x6E65686374696BLL;
        break;
      case 7:
        v12 = 1769367916;
        goto LABEL_44;
      case 8:
        v12 = 1768843620;
LABEL_44:
        v11 = v12 | 0x6F72676E00000000;
        v10 = 0xEA00000000006D6FLL;
        break;
      case 9:
        v10 = 0xE800000000000000;
        v11 = 0x65636E6172746E65;
        break;
      case 10:
        v10 = 0xE800000000000000;
        v11 = 0x6D6F6F7268746162;
        break;
      case 11:
        v10 = 0xE600000000000000;
        v11 = 0x65636966666FLL;
        break;
      case 12:
        v10 = 0xE700000000000000;
        v11 = 0x6D6F6F72646562;
        break;
      case 13:
        v11 = 0x625F72657473616DLL;
        v10 = 0xEE006D6F6F726465;
        break;
      case 14:
        v10 = 0xE800000000000000;
        v11 = 0x746E656D65736162;
        break;
      case 15:
        v11 = 1685217657;
        break;
      case 16:
        v10 = 0xE300000000000000;
        v11 = 7174503;
        break;
      case 17:
        v11 = 0x6F6F725F79616C70;
        v10 = 0xE90000000000006DLL;
        break;
      case 18:
        v10 = 0xE700000000000000;
        v11 = 0x6D6F6F725F7674;
        break;
      case 19:
        v10 = 0xE800000000000000;
        v11 = 0x706F68736B726F77;
        break;
      default:
        break;
    }

    if (v8 == v11 && v7 == v10)
    {

      return v5 != 0;
    }

    v14 = sub_268C1618C();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_268BDE390(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE800000000000000;
    v8 = 0x76745F656C707061;
    switch(*v4)
    {
      case 1:
        v8 = 0x69736976656C6574;
        v7 = 0xEA00000000006E6FLL;
        break;
      case 2:
        v7 = 0xE700000000000000;
        v8 = 0x646F70656D6F68;
        break;
      case 3:
        v7 = 0xE700000000000000;
        v8 = 0x72656B61657073;
        break;
      case 4:
        v8 = 0x5F74726F70726961;
        v7 = 0xEF73736572707865;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 1684099177;
        break;
      case 6:
        v7 = 0xE600000000000000;
        v8 = 0x656E6F685069;
        break;
      case 7:
        v8 = 0x5F79616C70726961;
        v7 = 0xEF72656B61657073;
        break;
      case 8:
        v8 = 0xD000000000000011;
        v7 = 0x8000000268C1B470;
        break;
      case 9:
        v8 = 0xD000000000000012;
        v7 = 0x8000000268C1B380;
        break;
      case 0xA:
        v8 = 0x636341726568746FLL;
        v7 = 0xEE0079726F737365;
        break;
      case 0xB:
        v7 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v9 = 0xE800000000000000;
    v10 = 0x76745F656C707061;
    switch(a1)
    {
      case 1:
        v10 = 0x69736976656C6574;
        v9 = 0xEA00000000006E6FLL;
        break;
      case 2:
        v9 = 0xE700000000000000;
        v10 = 0x646F70656D6F68;
        break;
      case 3:
        v9 = 0xE700000000000000;
        v10 = 0x72656B61657073;
        break;
      case 4:
        v10 = 0x5F74726F70726961;
        v9 = 0xEF73736572707865;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1684099177;
        break;
      case 6:
        v9 = 0xE600000000000000;
        v10 = 0x656E6F685069;
        break;
      case 7:
        v10 = 0x5F79616C70726961;
        v9 = 0xEF72656B61657073;
        break;
      case 8:
        v10 = 0xD000000000000011;
        v9 = 0x8000000268C1B470;
        break;
      case 9:
        v10 = 0xD000000000000012;
        v9 = 0x8000000268C1B380;
        break;
      case 10:
        v10 = 0x636341726568746FLL;
        v9 = 0xEE0079726F737365;
        break;
      case 11:
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_268C1618C();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t FilteringPredicate.deviceName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_5();
}

uint64_t FilteringPredicate.deviceName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_268BDE808(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FilteringPredicate.accessory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_268BDE850(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t FilteringPredicate.room.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t FilteringPredicate.home.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_268BDE850(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  return result;
}

uint64_t FilteringPredicate.zoneName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t FilteringPredicate.zoneName.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t FilteringPredicate.serviceGroup.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t FilteringPredicate.serviceGroup.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t FilteringPredicate.routeId.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_2_5();
}

uint64_t FilteringPredicate.routeId.setter()
{
  OUTLINED_FUNCTION_8_6();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

double FilteringPredicate.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = xmmword_268C17EB0;
  *(a1 + 32) = xmmword_268C17EC0;
  *(a1 + 48) = xmmword_268C17EC0;
  *(a1 + 64) = 1;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  return result;
}

uint64_t FilteringPredicate.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_4_5();
  v7 = v6(v5);
  v70 = v8;
  v71 = v7;

  v9 = a1[3];
  v10 = a1[4];
  v11 = OUTLINED_FUNCTION_2_5();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v13 = OUTLINED_FUNCTION_9_5();
  if (HomeAutomationEntity.currentAccessory.getter(v13, v14))
  {
    sub_268BDE850(0, 1);
    sub_268BDE850(0, 1);
    sub_268BDE850(0, 1);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = a1[3];
  v17 = a1[4];
  v18 = OUTLINED_FUNCTION_2_5();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v20 = OUTLINED_FUNCTION_9_5();
  if (HomeAutomationEntity.currentRoom.getter(v20, v21))
  {
    sub_268BDE850(0, v15);
    v22 = 0;
    v23 = 0;
    v73 = 0;
LABEL_8:
    v68 = v23;
    v69 = v22;
    sub_268BDE850(0, v15);
    goto LABEL_9;
  }

  v24 = a1[3];
  v25 = a1[4];
  v26 = OUTLINED_FUNCTION_1_3();
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v28 = *(v25 + 8);
  v29 = OUTLINED_FUNCTION_4_5();
  v22 = v30(v29);
  if (v23)
  {
    v73 = v15;
    goto LABEL_8;
  }

  v68 = v15;
  v69 = 0;
  v73 = v15;
LABEL_9:
  v31 = a1[3];
  v32 = a1[4];
  v33 = OUTLINED_FUNCTION_1_3();
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v35 = *(v32 + 16);
  v36 = OUTLINED_FUNCTION_4_5();
  v38 = v37(v36);
  v67 = v39;
  if (v39)
  {
    v66 = v38;
  }

  else
  {
    v66 = 0;
  }

  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = OUTLINED_FUNCTION_3_6();
  v42(v41);
  if (v75 == 20 || sub_268BDDE7C(v75, &unk_287975130) || (v43 = a1[4], __swift_project_boxed_opaque_existential_1(a1, a1[3]), v44 = OUTLINED_FUNCTION_3_6(), v45(v44), v75 == 20))
  {
    v46 = 0;
    v47 = 0;
  }

  else
  {
    LOBYTE(__src[0]) = v75;
    v46 = PlaceHint.rawValue.getter();
    v47 = v64;
  }

  v48 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v48);
  v50 = (*(v49 + 32))(v48, v49);
  if (v51 || (v52 = a1[3], v53 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v52), v50 = (*(v53 + 40))(v52, v53), v51))
  {
    v46 = v50;
  }

  else
  {
    if (!v47)
    {
      goto LABEL_24;
    }

    v51 = v47;
  }

  v54 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v54 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {

LABEL_24:
    v46 = 0;
    v65 = 0;
    goto LABEL_25;
  }

  v65 = v51;

LABEL_25:
  v56 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v56);
  (*(v55 + 80))(&v75, v56, v55);
  if (v75 == 12 || (LOBYTE(__src[0]) = v75, DeviceType.rawValue.getter(), DeviceCategory.init(deviceType:)(v57), v76 == 1))
  {
    v58 = 15;
  }

  else
  {
    v58 = v75;
  }

  v59 = a1[3];
  v60 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  (*(v60 + 104))(&v75, v59, v60);
  if (v75 == 20)
  {
    v61 = v46;
  }

  else
  {
    v62 = sub_268BB0EAC(v75, 3);

    v61 = v46;
    if (v62)
    {
      sub_268BDE850(0, v73);
      v73 = 0;
    }
  }

  __src[0] = v71;
  __src[1] = v70;
  __src[2] = v58;
  __src[3] = 0;
  __src[4] = v15;
  __src[5] = v69;
  __src[6] = v68;
  __src[7] = 0;
  __src[8] = v73;
  __src[9] = v66;
  __src[10] = v67;
  __src[11] = v61;
  __src[13] = 0;
  __src[14] = 0;
  __src[12] = v65;
  memcpy(a2, __src, 0x78uLL);
  sub_268BDEF20(__src, &v75);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v75 = v71;
  v76 = v70;
  v77 = v58;
  v78 = 0;
  v79 = v15;
  v80 = v69;
  v81 = v68;
  v82 = 0;
  v83 = v73;
  v84 = v66;
  v85 = v67;
  v86 = v61;
  v88 = 0;
  v89 = 0;
  v87 = v65;
  return sub_268BDEF58(&v75);
}

uint64_t FilteringPredicate.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v16 = v0[6];
  v17 = v0[5];
  v19 = v0[8];
  v20 = v0[7];
  v18 = v0[9];
  v6 = v0[11];
  v7 = v0[12];
  v14 = v0[13];
  v15 = v0[10];
  v8 = v0[14];

  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000021, 0x8000000268C1C580);
  if (v1)
  {
    v9 = v2;
  }

  else
  {
    v9 = 7104878;
  }

  if (!v1)
  {
    v1 = 0xE300000000000000;
  }

  MEMORY[0x26D627230](v9, v1);

  MEMORY[0x26D627230](0xD000000000000010, 0x8000000268C1C5B0);

  v10 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v10);

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  DeviceCategory.description.getter();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x496574756F72202CLL, 0xEB00000000203A64);

  v11 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v11);

  MEMORY[0x26D627230](0x737365636361202CLL, 0xED0000203A79726FLL);
  sub_268BDE808(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE560, &unk_268C17ED0);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x3A6D6F6F72202C20, 0xE900000000000020);
  sub_268BDE808(v17, v16);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);

  v12 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D627230](v12);

  MEMORY[0x26D627230](0x203A656D6F68202CLL, 0xE800000000000000);
  sub_268BDE808(v20, v19);
  sub_268C15C0C();
  OUTLINED_FUNCTION_10_6();

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t static FilteringPredicate.Location.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_268C1618C();
}

uint64_t static FilteringPredicate.createPredicates(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    sub_268BDFAE0(v2, &v25);
    v5 = v26;
    v6 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, v26);
    (*(v6 + 112))(v22, v5, v6);
    if (LOBYTE(v22[0]) == 5)
    {
      sub_268BB5BDC(&v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4574(0, *(i + 16) + 1, 1);
        i = v28;
      }

      v9 = *(i + 16);
      v8 = *(i + 24);
      if (v9 >= v8 >> 1)
      {
        sub_268BB4574((v8 > 1), v9 + 1, 1);
      }

      v10 = v23;
      v11 = v24;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v13 = *(*(v10 - 8) + 64);
      MEMORY[0x28223BE20](v12);
      v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 136;
      (*(v16 + 16))(v15);
      sub_268BDFB44(v9, v15, &v28, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v22);
      i = v28;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v25);
    }

    v2 += 40;
  }

  v28 = v3;
  v17 = *(i + 16);
  if (v17)
  {
    v18 = i + 32;
    v21 = xmmword_268C172B0;
    do
    {
      sub_268BDFAE0(v18, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD48, &qword_268C170F8);
      inited = swift_initStackObject();
      *(inited + 16) = v21;
      sub_268BDFAE0(&v25, v22);
      FilteringPredicate.init(from:)(v22, (inited + 32));
      __swift_destroy_boxed_opaque_existential_0(&v25);
      sub_268BB0420(inited);
      v18 += 40;
      --v17;
    }

    while (v17);
  }

  return v28;
}

uint64_t FilteringPredicate.namedEntity.getter()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    if (v0[12])
    {
      v1 = v0[11];
    }

    else if (v0[4] > 1)
    {
      v1 = v0[3];
    }

    else if (v0[6] > 1)
    {
      v1 = v0[5];
    }

    else if (v0[8] > 1)
    {
      v1 = v0[7];
    }

    else
    {
      v1 = v0[9];
      if (!v0[10])
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:

  return v1;
}

uint64_t FilteringPredicate.name.getter()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v1 = *(v0 + 8);
  v9 = *(v0 + 72);
  v10 = *(v0 + 88);
  v11 = *(v0 + 104);
  result = FilteringPredicate.namedEntity.getter();
  v4 = 0x6568777972657665;
  if (v1)
  {
    v4 = 0;
  }

  if (!v3)
  {
    return v4;
  }

  return result;
}

void FilteringPredicate.groupType.getter(char *a1@<X8>)
{
  if (v1[1] || v1[12])
  {
    goto LABEL_3;
  }

  v3 = v1[4];
  if (!v3)
  {
    v2 = 2;
    goto LABEL_4;
  }

  if (v3 != 1)
  {
LABEL_3:
    v2 = 0;
  }

  else
  {
    v4 = v1[6];
    if (v4 == 1)
    {
      if (v1[2] == 15)
      {
        v2 = 5;
      }

      else
      {
        v2 = 6;
      }

      if (v1[8] != 1)
      {
        v2 = 4;
      }

      if (v1[10])
      {
        v2 = 3;
      }
    }

    else if (v4)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

LABEL_4:
  *a1 = v2;
}

SiriPlaybackControlSupport::FilteringPredicate::GroupType_optional __swiftcall FilteringPredicate.GroupType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1615C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FilteringPredicate.GroupType.rawValue.getter()
{
  result = 0x726F737365636361;
  switch(*v0)
  {
    case 1:
      result = 1836019570;
      break;
    case 2:
      result = 1701995880;
      break;
    case 3:
      result = 1701736314;
      break;
    case 4:
      result = 0x6568777972657665;
      break;
    case 5:
      result = 0x63697665446C6C61;
      break;
    case 6:
      result = 0x7954656369766564;
      break;
    case 7:
      result = 0x6C61636F6CLL;
      break;
    case 8:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BDF914@<X0>(uint64_t *a1@<X8>)
{
  result = FilteringPredicate.GroupType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268BDF93C()
{
  v1 = v0[6];
  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_5_3();
  }

  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[4];
  v8 = v0[1];
  v7 = v0[2];
  v17[0] = v0[5];
  v17[1] = v1;
  v16[0] = 0;
  v16[1] = 0;
  v9 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v9, v10);
  v11 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v11, v12);
  static FilteringPredicate.Location.== infix(_:_:)(v17, v16);

  v13 = OUTLINED_FUNCTION_1_3();
  sub_268BDE850(v13, v14);
  OUTLINED_FUNCTION_6_5();
  if (v6 != 1)
  {
    v15 = 0;
  }

  if (v5)
  {
    v15 = 0;
  }

  if (v4)
  {
    v15 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_268BDFA0C()
{
  v1 = v0[4];
  if (v1 == 1)
  {
    return OUTLINED_FUNCTION_5_3();
  }

  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  v8 = v0[1];
  v7 = v0[2];
  v17[0] = v0[3];
  v17[1] = v1;
  v16[0] = 0;
  v16[1] = 0;
  v9 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v9, v10);
  v11 = OUTLINED_FUNCTION_1_3();
  sub_268BDE808(v11, v12);
  static FilteringPredicate.Location.== infix(_:_:)(v17, v16);

  v13 = OUTLINED_FUNCTION_1_3();
  sub_268BDE850(v13, v14);
  OUTLINED_FUNCTION_6_5();
  if (v6 != 1)
  {
    v15 = 0;
  }

  if (v5)
  {
    v15 = 0;
  }

  if (v4)
  {
    v15 = 0;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_268BDFAE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268BDFB44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_268BB5BDC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_268BDFBE0()
{
  result = qword_2802CE2F8[0];
  if (!qword_2802CE2F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE2F8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport18FilteringPredicateV8LocationOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_268BDFC60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
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

uint64_t sub_268BDFCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_268BDFD3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268BDFD8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268BDFDE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_268BDFDF8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilteringPredicate.GroupType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for FilteringPredicate.GroupType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BDFF78);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_268BDE808(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_3()
{
  sub_268BDE808(v0, 1);
  sub_268BDE850(v0, 1);
  sub_268BDE850(0, 0);
  return 0;
}

void OUTLINED_FUNCTION_10_6()
{

  JUMPOUT(0x26D627230);
}

uint64_t sub_268BE00E8(char a1)
{
  result = 0x797469746E65;
  switch(a1)
  {
    case 1:
      result = 0x69746E4572657375;
      break;
    case 2:
      result = 0x636E657265666572;
      break;
    case 3:
      result = 0x73676E6974746573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UsoTask.referencedNoEntity()()
{
  v0 = sub_268BE0238(&unk_2879746D0, MEMORY[0x277D5E220], sub_268BB0274);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t sub_268BE0238(uint64_t a1, void (*a2)(void), void (*a3)(uint64_t))
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v6; i = v10)
  {
    v9 = *v7++;
    v10 = sub_268BE04B8(i, v9, v3, a2, a3);

    --v6;
  }

  return i;
}

uint64_t UsoTask.referencedMediaItem()()
{
  v0 = sub_268BE0238(&unk_287974680, MEMORY[0x277D5E9D8], sub_268BB0190);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t UsoTask.referencedSetting()()
{
  v0 = sub_268BE0238(&unk_2879746A8, MEMORY[0x277D5E8C0], sub_268BB0248);
  if (sub_268BC4EF4(v0))
  {
    sub_268BC4F00(0, (v0 & 0xC000000000000001) == 0, v0);
    if ((v0 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x26D627640](0, v0);
    }

    else
    {
      v1 = *(v0 + 32);
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

uint64_t UsoTask.referencedUserEntities()()
{
  sub_268C1576C();
  if (!v3)
  {
    sub_268BE07E8(v2);
    return MEMORY[0x277D84F90];
  }

  sub_268C155FC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v0 = CodeGenTaskBase.referencedUserEntities()();

  return v0;
}

uint64_t sub_268BE04B8(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t))
{
  v8 = sub_268C1583C();
  v9 = 0xE600000000000000;
  v10 = 0x797469746E65;
  switch(a2)
  {
    case 1:
      v9 = 0xEC00000073656974;
      v10 = 0x69746E4572657375;
      break;
    case 2:
      v9 = 0xE900000000000065;
      v10 = 0x636E657265666572;
      break;
    case 3:
      v9 = 0xE800000000000000;
      v10 = 0x73676E6974746573;
      break;
    default:
      break;
  }

  v11 = sub_268C0F218(v10, v9, v8);

  if (v11)
  {
    v18 = a5;
    v19 = MEMORY[0x277D84F90];
    v22 = MEMORY[0x277D84F90];
    v12 = sub_268BC4EF4(v11);
    v13 = 0;
    while (v12 != v13)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D627640](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        JUMPOUT(0x268BE0724);
      }

      a4(0);
      sub_268C1585C();
      sub_268C1578C();

      ++v13;
      if (v21)
      {
        MEMORY[0x26D6272B0](v16);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268C15D2C();
        }

        sub_268C15D5C();
        v19 = v22;
        v13 = v15;
      }
    }

    v18(v19);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_268BE07E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE140, &qword_268C17978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE0858(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v5 <= 0x3F)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      if (v6 <= 0x3F)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        if (v7 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_268BE0994(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  swift_getAssociatedConformanceWitness();
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v13 = v12 + 1;
  v14 = 8 * (v12 + 1);
  if ((v12 + 1) <= 3)
  {
    v17 = ((a2 + ~(-1 << v14) - 252) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v17 < 2)
    {
LABEL_28:
      v19 = *(a1 + v12);
      if (v19 >= 4)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_20:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return (v13 | v18) + 253;
}

void sub_268BE0BE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  swift_getAssociatedConformanceWitness();
  v10 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v12 > v11)
  {
    v11 = v12;
  }

  v13 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  v14 = v13 + 1;
  v15 = 8 * (v13 + 1);
  if (a3 < 0xFD)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 + ~(-1 << v15) - 252) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (a2 > 0xFC)
  {
    v17 = a2 - 253;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v13 != -1)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v13 + 1);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
LABEL_42:
        __break(1u);
        JUMPOUT(0x268BE0EA4);
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v16)
    {
      case 1:
        a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      case 2:
        *&a1[v14] = 0;
        goto LABEL_30;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_31;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          a1[v13] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_268BE0EE4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_0(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8);
  v9 = 0x656D6F682ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v9 = 0x656E6F7A2ELL;
      break;
    case 2u:
      v9 = 0x6D6F6F722ELL;
      break;
    case 3u:
      v9 = 0x6F7373656363612ELL;
      break;
    default:
      break;
  }

  (*(v4 + 8))(v8, a1);
  return v9;
}

uint64_t sub_268BE1098(uint64_t a1)
{
  v2 = type metadata accessor for HomeKitAccessoryContainerType();
  OUTLINED_FUNCTION_3_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  (*(v4 + 16))(&v12 - v8, a1, v2);
  v10 = 4 - swift_getEnumCaseMultiPayload();
  (*(v4 + 8))(v9, v2);
  return v10;
}

uint64_t sub_268BE1178(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v89 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v82 = v4;
  v83 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_6();
  v76 = v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = OUTLINED_FUNCTION_3_0(v9);
  v80 = v11;
  v81 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7_6();
  v75 = v15;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v78 = v18;
  v79 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7_6();
  v74 = v22;
  v87 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3_0(v87);
  v77 = v23;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_7_6();
  v73 = v27;
  OUTLINED_FUNCTION_4_6();
  v28 = type metadata accessor for HomeKitAccessoryContainerType();
  v29 = OUTLINED_FUNCTION_3_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v36 = &v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = &v72 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v72 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v72 - v43;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3_0(TupleTypeMetadata2);
  v86 = v46;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_3_7();
  v50 = MEMORY[0x28223BE20](v49);
  v52 = &v72 - v51;
  v53 = *(v50 + 48);
  v85 = v31;
  v54 = *(v31 + 16);
  (v54)(&v72 - v51, v88, v28);
  (v54)(&v52[v53], v89, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_4_6();
      v54();
      if (OUTLINED_FUNCTION_8_7() == 1)
      {
        v63 = v78;
        v55 = v79;
        OUTLINED_FUNCTION_2_6();
        v64 = v74;
        v65(v74);
        v66 = *(OUTLINED_FUNCTION_6_6() + 16);
        LOBYTE(v53) = sub_268C15BDC();
        v54 = *(v63 + 8);
        (v54)(v64, v55);
        v59 = v42;
        goto LABEL_15;
      }

      (*(v78 + 8))(v42, v79);
      goto LABEL_13;
    case 2u:
      OUTLINED_FUNCTION_4_6();
      v54();
      if (OUTLINED_FUNCTION_8_7() == 2)
      {
        v55 = v81;
        OUTLINED_FUNCTION_2_6();
        v56(v75);
        v57 = *(OUTLINED_FUNCTION_6_6() + 16);
        OUTLINED_FUNCTION_5_4();
        v58 = OUTLINED_FUNCTION_1_4();
        (v54)(v58);
        v59 = v39;
        goto LABEL_15;
      }

      (*(v80 + 8))(v39, v81);
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_4_6();
      v54();
      if (OUTLINED_FUNCTION_8_7() == 3)
      {
        v55 = v83;
        OUTLINED_FUNCTION_2_6();
        v60(v76);
        v61 = *(OUTLINED_FUNCTION_6_6() + 16);
        OUTLINED_FUNCTION_5_4();
        v62 = OUTLINED_FUNCTION_1_4();
        (v54)(v62);
        v59 = v36;
        goto LABEL_15;
      }

      (*(v82 + 8))(v36, v83);
      goto LABEL_13;
    default:
      OUTLINED_FUNCTION_4_6();
      v54();
      if (OUTLINED_FUNCTION_8_7())
      {
        (*(v77 + 8))(v44, v87);
LABEL_13:
        LOBYTE(v53) = 0;
        v67 = v86;
        v28 = TupleTypeMetadata2;
      }

      else
      {
        OUTLINED_FUNCTION_2_6();
        v55 = v87;
        v68(v73);
        v69 = *(AssociatedConformanceWitness + 16);
        OUTLINED_FUNCTION_5_4();
        v70 = OUTLINED_FUNCTION_1_4();
        (v54)(v70);
        v59 = v44;
LABEL_15:
        (v54)(v59, v55);
        v67 = v85;
      }

      (*(v67 + 8))(v52, v28);
      return v53 & 1;
  }
}

BOOL sub_268BE1808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_268BE1040(a1, a2);
}

uint64_t sub_268BE1820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_268BE1178(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_4()
{

  return sub_268C15BDC();
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 104);

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_8_7()
{

  return swift_getEnumCaseMultiPayload();
}

SiriPlaybackControlSupport::DeviceCategory_optional __swiftcall DeviceCategory.init(deviceType:)(Swift::String deviceType)
{
  v2 = sub_268BE1AA4(deviceType._countAndFlagsBits, deviceType._object, &qword_2802CDB98, &qword_2802CE388, "Could not map device type %{public}s to a DeviceCategory. Returning nil", v1);
  result.value.rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_268BE190C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C0, qword_268C184D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C18270;
  v1 = *MEMORY[0x277CCE870];
  *(inited + 32) = sub_268C15BFC();
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v3 = *MEMORY[0x277CCE8B0];
  *(inited + 56) = sub_268C15BFC();
  *(inited + 64) = v4;
  *(inited + 72) = 2;
  v5 = *MEMORY[0x277CCE900];
  *(inited + 80) = sub_268C15BFC();
  *(inited + 88) = v6;
  *(inited + 96) = 4;
  v7 = *MEMORY[0x277CCE920];
  *(inited + 104) = sub_268C15BFC();
  *(inited + 112) = v8;
  *(inited + 120) = 8;
  v9 = *MEMORY[0x277CCE860];
  *(inited + 128) = sub_268C15BFC();
  *(inited + 136) = v10;
  *(inited + 144) = 4;
  v11 = *MEMORY[0x277CCE8C8];
  *(inited + 152) = sub_268C15BFC();
  *(inited + 160) = v12;
  *(inited + 168) = 16;
  result = sub_268C15B7C();
  qword_2802CE380 = result;
  return result;
}

uint64_t sub_268BE1A28()
{
  result = sub_268C15B7C();
  qword_2802CE388 = result;
  return result;
}

SiriPlaybackControlSupport::DeviceCategory_optional __swiftcall DeviceCategory.init(homekitType:)(Swift::String homekitType)
{
  v2 = sub_268BE1AA4(homekitType._countAndFlagsBits, homekitType._object, &qword_2802CDB90, &qword_2802CE380, "Could not map homekitType %{public}s to a DeviceCategory. Returning nil", v1);
  result.value.rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_268BE1AA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_268C15A1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  v17 = *a4;
  if (*(v17 + 16) && (v18 = sub_268BD99A0(a1, a2), (v19 & 1) != 0))
  {
    v20 = v18;

    v22 = 0;
    v23 = *(*(v17 + 56) + 8 * v20);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v12, qword_2802D2F10);
    (*(v13 + 16))(v16, v24, v12);

    v25 = sub_268C159FC();
    v26 = sub_268C15DEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v33 = a6;
      v34 = v28;
      v29 = a5;
      v30 = v28;
      *v27 = 136446210;
      v31 = sub_268BB3D28(a1, a2, &v34);

      *(v27 + 4) = v31;
      v32 = v29;
      a6 = v33;
      _os_log_impl(&dword_268BAD000, v25, v26, v32, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D628010](v30, -1, -1);
      MEMORY[0x26D628010](v27, -1, -1);
    }

    else
    {
    }

    result = (*(v13 + 8))(v16, v12);
    v23 = 0;
    v22 = 1;
  }

  *a6 = v23;
  *(a6 + 8) = v22;
  return result;
}

void *sub_268BE1D80()
{
  sub_268BE2218();
  result = sub_268C15B7C();
  off_2802CE390 = result;
  return result;
}

uint64_t static DeviceCategory.keys.getter()
{
  if (qword_2802CDBA0 != -1)
  {
    OUTLINED_FUNCTION_1_5();
  }
}

uint64_t DeviceCategory.description.getter()
{
  v1 = *v0;
  v21 = MEMORY[0x277D84FA0];
  if (qword_2802CDBA0 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_1_5();
  }

  v2 = off_2802CE390;
  v3 = off_2802CE390 + 64;
  v4 = 1 << *(off_2802CE390 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_2802CE390 + 8);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v8 << 6);
    if ((*(v2[6] + 8 * v11) & ~v1) == 0)
    {
      v12 = (v2[7] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];

      sub_268BDA100(&v19, v14, v13);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  sub_268C1606C();

  v19 = 0xD000000000000011;
  v20 = 0x8000000268C1C5D0;
  if (*(v21 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    sub_268BDA24C();
    sub_268BB9A64();
    v15 = sub_268C15CDC();
    v17 = v16;
  }

  else
  {

    v17 = 0xE300000000000000;
    v15 = 7104878;
  }

  MEMORY[0x26D627230](v15, v17);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v19;
}

SiriPlaybackControlSupport::DeviceCategory sub_268BE2040@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DeviceCategory.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_268BE2080@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceCategory.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_268BE20AC()
{
  result = qword_2802CE398;
  if (!qword_2802CE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE398);
  }

  return result;
}

unint64_t sub_268BE2104()
{
  result = qword_2802CE3A0;
  if (!qword_2802CE3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3A0);
  }

  return result;
}

unint64_t sub_268BE215C()
{
  result = qword_2802CE3A8;
  if (!qword_2802CE3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3A8);
  }

  return result;
}

unint64_t sub_268BE21B4()
{
  result = qword_2802CE3B0;
  if (!qword_2802CE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3B0);
  }

  return result;
}

unint64_t sub_268BE2218()
{
  result = qword_2802CE3B8;
  if (!qword_2802CE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE3B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return swift_once();
}

uint64_t sub_268BE22CC@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C8, &qword_268C18520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_268C157BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C157AC();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_268BE2498(v5);
    *a1 = 5;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if (qword_2802CDBA8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_268C0F264(qword_2802D2EF0, a1);
    swift_endAccess();
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t sub_268BE2498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3C8, &qword_268C18520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE2500()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3D0, &qword_268C18528);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE3D8, &unk_268C18530) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268C18510;
  v4 = v3 + v2;
  v5 = v0[14];
  v6 = *MEMORY[0x277D5EA28];
  v7 = sub_268C157BC();
  v8 = *(*(v7 - 8) + 104);
  v8(v4, v6, v7);
  *(v4 + v5) = 3;
  v9 = v0[14];
  v8(v4 + v1, *MEMORY[0x277D5EA38], v7);
  *(v4 + v1 + v9) = 1;
  v10 = v0[14];
  v8(v4 + 2 * v1, *MEMORY[0x277D5EA20], v7);
  *(v4 + 2 * v1 + v10) = 4;
  v11 = v4 + 3 * v1;
  v12 = v0[14];
  v8(v11, *MEMORY[0x277D5EA50], v7);
  *(v11 + v12) = 0;
  sub_268BE26E8();
  result = sub_268C15B7C();
  qword_2802D2EF0 = result;
  return result;
}

unint64_t sub_268BE26E8()
{
  result = qword_2802CE218;
  if (!qword_2802CE218)
  {
    sub_268C157BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE218);
  }

  return result;
}

uint64_t sub_268BE2740(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v41 = a7;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v36 = a3;
  v35 = a1;
  v38 = a11;
  v39 = a12;
  v37 = a10;
  v13 = sub_268C159EC();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v20 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v31 - v21;
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  v31[1] = qword_2802D2EB8;
  sub_268C159DC();
  (*(v16 + 16))(v20, v22, v13);
  v23 = (*(v16 + 80) + 33) & ~*(v16 + 80);
  v24 = v23 + v18;
  v25 = (v23 + v18) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v35;
  *(v26 + 24) = a2;
  *(v26 + 32) = v36;
  (*(v16 + 32))(v26 + v23, v20);
  *(v26 + v24) = v32 & 1;
  v27 = v26 + v25;
  v28 = v34;
  *(v27 + 8) = v33;
  *(v27 + 16) = v28;

  sub_268C15EAC();
  sub_268C159CC();
  OUTLINED_FUNCTION_22_0();
  v29 = swift_allocObject();
  *(v29 + 16) = v38;
  *(v29 + 24) = v26;

  v41(v39, v29);

  return (*(v16 + 8))(v22, v13);
}

void sub_268BE2A14(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, char a7)
{
  v10 = sub_268C15A1C();
  v11 = OUTLINED_FUNCTION_3_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v18 = __swift_project_value_buffer(v10, qword_2802D2F10);
  (*(v13 + 16))(v17, v18, v10);
  v19 = sub_268C159FC();
  v20 = sub_268C15DEC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_268BAD000, v19, v20, a6, v21, 2u);
    MEMORY[0x26D628010](v21, -1, -1);
  }

  (*(v13 + 8))(v17, v10);
  sub_268BD7C38();
  v22 = swift_allocError();
  *v23 = a7;
  a2(v22, 1);
}

double sub_268BE2BDC()
{
  qword_2802CE450 = 0;
  result = 0.0;
  xmmword_2802CE430 = 0u;
  unk_2802CE440 = 0u;
  xmmword_2802CE410 = 0u;
  unk_2802CE420 = 0u;
  xmmword_2802CE3F0 = 0u;
  unk_2802CE400 = 0u;
  xmmword_2802CE3E0 = 0u;
  return result;
}

void *static DeviceResolutionProvider.current.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_268C15A1C();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v3);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  if (qword_2802CDBB0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_268BE4B6C(&xmmword_2802CE3E0, v27);
  if (*(&v27[1] + 1))
  {
    memcpy(v28, v27, sizeof(v28));
    v13 = type metadata accessor for DeviceSelector();
    static DeviceSelector.current.getter();
    *(&v27[1] + 1) = v13;
    *&v27[2] = &protocol witness table for DeviceSelector;
    *&v27[0] = v14;
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_268BB5BDC(v27, v28);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v15 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v5 + 16))(v12, v15, v2);
    v16 = sub_268C159FC();
    v17 = sub_268C15DFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_268BAD000, v16, v17, "DeviceResolutionProvider returning existing shared instance", v18, 2u);
      MEMORY[0x26D628010](v18, -1, -1);
    }

    (*(v5 + 8))(v12, v2);
    return memcpy(a1, v28, 0x78uLL);
  }

  else
  {
    sub_268BE4BDC(v27);
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v20 = __swift_project_value_buffer(v2, qword_2802D2F10);
    (*(v5 + 16))(v10, v20, v2);
    v21 = sub_268C159FC();
    v22 = sub_268C15DFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_268BAD000, v21, v22, "DeviceResolutionProvider creating a new shared instance", v23, 2u);
      MEMORY[0x26D628010](v23, -1, -1);
    }

    (*(v5 + 8))(v10, v2);
    v24 = type metadata accessor for DeviceSelector();
    static DeviceSelector.current.getter();
    a1[3] = v24;
    a1[4] = &protocol witness table for DeviceSelector;
    *a1 = v25;
    a1[8] = &type metadata for EncryptionProvider;
    a1[9] = &protocol witness table for EncryptionProvider;
    sub_268C1534C();
    sub_268BE4C44(a1, v28);
    swift_beginAccess();
    sub_268BE4C7C(v28, &xmmword_2802CE3E0);
    return swift_endAccess();
  }
}

uint64_t DeviceResolutionProvider.resolveDevices(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;
  v10 = v3;
  v11 = v1;

  OUTLINED_FUNCTION_5_5("resolveDevicesDRP", 17, v5, v6, sub_268BE4D20, v7, sub_268BE4D24, v9, &unk_287978080, &unk_2879780A8, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE3098(uint64_t (*a1)(uint64_t **), uint64_t a2, void *a3, void *a4)
{
  v46 = a4;
  v7 = sub_268C15A1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = a3[3];
  v17 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v16);

  v18 = HomeAutomationEntityProviding.extractEntities()(v16, v17);
  v19 = v18;
  if (*(v18 + 16))
  {
    v20 = static FilteringPredicate.createPredicates(from:)(v18);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_2802D2F10);
    (*(v8 + 16))(v14, v21, v7);

    v22 = sub_268C159FC();
    v23 = sub_268C15DFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v45 = v20;
      v25 = v24;
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = 136315138;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDD58, "ȡ");
      v28 = MEMORY[0x26D6272E0](v19, v27);
      v44 = v7;
      v30 = v29;

      v31 = sub_268BB3D28(v28, v30, &v47);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_268BAD000, v22, v23, "DeviceResolutionProvider.resolveDevices Getting destination devices for homeAutomationEntity provider with HomeAutomationEntities: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x26D628010](v26, -1, -1);
      v32 = v25;
      v20 = v45;
      MEMORY[0x26D628010](v32, -1, -1);

      (*(v8 + 8))(v14, v44);
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    v39 = v46;
    v40 = v46[3];
    v41 = v46[4];
    __swift_project_boxed_opaque_existential_1(v46, v40);
    v42 = swift_allocObject();
    *(v42 + 16) = sub_268BE52A8;
    *(v42 + 24) = v15;
    (*(v41 + 8))(v20, v39 + 10, sub_268BE52AC, v42, v40, v41);
  }

  else
  {

    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_2802D2F10);
    v34 = v7;
    (*(v8 + 16))(v12, v33, v7);
    v35 = sub_268C159FC();
    v36 = sub_268C15DFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_268BAD000, v35, v36, "DeviceResolutionProvider.resolveDevices No HomeAutomation nodes specified in the intent. Returning no routes", v37, 2u);
      MEMORY[0x26D628010](v37, -1, -1);
    }

    (*(v8 + 8))(v12, v34);
    v47 = MEMORY[0x277D84F90];
    v48 = 0;
    return a1(&v47);
  }
}

uint64_t sub_268BE3534(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = type metadata accessor for Device();
    v16 = MEMORY[0x26D6272E0](a1, v15);
    v18 = sub_268BB3D28(v16, v17, &v25);
    v23 = v4;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_268BAD000, v10, v11, "DeviceResolutionProvider.resolveDevices Found devices: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D628010](v14, -1, -1);
    MEMORY[0x26D628010](v13, -1, -1);

    (*(v24 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1, 0);
}

uint64_t DeviceResolutionProvider.resolveDestinationRouteIds(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_7(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_5("resolveDestinationRouteIdsDRP", 29, v1, v2, sub_268BE52F0, v3, sub_268BE4D2C, v6, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, v5);
}

uint64_t sub_268BE3864(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = qword_2802CDBE0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v8, v11, v4);
  v12 = sub_268C159FC();
  v13 = sub_268C15DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_268BAD000, v12, v13, "DeviceResolutionProvider.destinationRouteIds Getting destination devices for intent", v14, 2u);
    MEMORY[0x26D628010](v14, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_268BE52F4;
  *(v15 + 24) = v9;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_268BE5070;
  *(v16 + 24) = v15;
  MEMORY[0x28223BE20](v16);

  sub_268BE2740("resolveDevicesDRP", 17, 2, 1, sub_268BE52F0, v16, sub_268BE52B8, &v18, &unk_287978080, &unk_2879780A8, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE3B5C(void *a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  v81 = a4;
  v7 = type metadata accessor for Device();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_268C15A1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v79 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v71 - v20;
  if (a2)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v12, qword_2802D2F10);
    (*(v13 + 16))(v17, v22, v12);
    v23 = a1;
    v24 = v12;
    v25 = sub_268C159FC();
    v26 = sub_268C15DEC();
    sub_268BE507C(a1, 1);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80 = a3;
      v29 = v28;
      v82 = v28;
      *v27 = 136315138;
      swift_getErrorValue();
      v30 = sub_268C161DC();
      v32 = sub_268BB3D28(v30, v31, &v82);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_268BAD000, v25, v26, "DeviceResolutionProvider.destinationRouteIds Failed to get destinationRouteIds: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      a3 = v80;
      MEMORY[0x26D628010](v33, -1, -1);
      MEMORY[0x26D628010](v27, -1, -1);
    }

    (*(v13 + 8))(v17, v24);
    return (a3)(a1, 1);
  }

  else
  {
    v73 = v8;
    v80 = a3;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v12, qword_2802D2F10);
    v75 = *(v13 + 16);
    v76 = v35;
    v75(v21);

    v36 = sub_268C159FC();
    v37 = sub_268C15DFC();
    sub_268BE507C(a1, 0);
    v38 = os_log_type_enabled(v36, v37);
    v77 = v13 + 16;
    v78 = v13;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v82 = v40;
      *v39 = 136315138;
      v41 = MEMORY[0x26D6272E0](a1, v7);
      v43 = sub_268BB3D28(v41, v42, &v82);
      v72 = a1;
      v44 = v12;
      v45 = v43;

      *(v39 + 4) = v45;
      _os_log_impl(&dword_268BAD000, v36, v37, "DeviceResolutionProvider.destinationRouteIds Found devices: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D628010](v40, -1, -1);
      MEMORY[0x26D628010](v39, -1, -1);

      v46 = *(v13 + 8);
      v47 = v21;
      v48 = v44;
      v49 = v44;
      a1 = v72;
    }

    else
    {

      v46 = *(v13 + 8);
      v47 = v21;
      v48 = v12;
      v49 = v12;
    }

    v74 = v46;
    v46(v47, v49);
    v50 = a1[2];
    if (v50)
    {
      v51 = a1 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v52 = *(v73 + 72);
      v53 = MEMORY[0x277D84F90];
      do
      {
        sub_268BE5088(v51, v11);
        v55 = *v11;
        v54 = v11[1];

        sub_268BE50EC(v11);
        if (v54)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = *(v53 + 16);
            sub_268BB2DB4();
            v53 = v59;
          }

          v56 = *(v53 + 16);
          if (v56 >= *(v53 + 24) >> 1)
          {
            sub_268BB2DB4();
            v53 = v60;
          }

          *(v53 + 16) = v56 + 1;
          v57 = v53 + 16 * v56;
          *(v57 + 32) = v55;
          *(v57 + 40) = v54;
        }

        v51 += v52;
        --v50;
      }

      while (v50);
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
    }

    v61 = sub_268BE6F40(v53);
    v62 = sub_268BE420C(v61);
    v63 = v79;
    (v75)(v79, v76, v48);
    v64 = sub_268C159FC();
    v65 = sub_268C15DFC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v82 = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x26D6272E0](v62, MEMORY[0x277D837D0]);
      v70 = sub_268BB3D28(v68, v69, &v82);

      *(v66 + 4) = v70;
      _os_log_impl(&dword_268BAD000, v64, v65, "DeviceResolutionProvider.destinationRouteIds Decoded routes: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x26D628010](v67, -1, -1);
      MEMORY[0x26D628010](v66, -1, -1);
    }

    v74(v63, v48);
    v80(v62, 0);
  }
}

void *sub_268BE420C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_268BB3A80(*(a1 + 16), 0);
  v4 = sub_268BE4EF0(&v6, v3 + 4, v2, a1);
  sub_268BE5148();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t DeviceResolutionProvider.resolveDestinationHashedRouteIds(for:with:)()
{
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_22_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_7(v0);
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_5_5("resolveDestinationHashedRouteIdsDRP", 35, v1, v2, sub_268BE52F0, v3, sub_268BE4D34, v6, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, v5);
}

uint64_t sub_268BE4358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_268BE4C44(a3, __src);
  v9 = swift_allocObject();
  v9[2] = sub_268BE52F4;
  v9[3] = v8;
  memcpy(v9 + 4, __src, 0x78uLL);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_268BE4E74;
  *(v10 + 24) = v9;
  v13 = a3;
  v14 = a4;

  sub_268BE2740("resolveDestinationRouteIdsDRP", 29, 2, 1, sub_268BE52F0, v10, sub_268BE52B4, v12, &unk_287977FB8, &unk_287977FE0, sub_268BE5050, sub_268BE5068);
}

uint64_t sub_268BE44D4(void *a1, char a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  if (a2)
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v18 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v15, v18, v10);
    v19 = a1;
    v20 = sub_268C159FC();
    v21 = sub_268C15DEC();
    sub_268BE507C(a1, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v41 = a4;
      v23 = v22;
      v40 = swift_slowAlloc();
      v42 = v40;
      *v23 = 136315138;
      swift_getErrorValue();
      v24 = sub_268C161DC();
      v26 = sub_268BB3D28(v24, v25, &v42);

      *(v23 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v20, v21, "DeviceResolutionProvider.destinationHashedRouteIds Failed to get destinationRouteIds: %s", v23, 0xCu);
      v27 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x26D628010](v27, -1, -1);
      MEMORY[0x26D628010](v23, -1, -1);
    }

    (*(v11 + 8))(v15, v10);
    v28 = a1;
    v29 = 1;
    return a3(v28, v29);
  }

  if (!a1[2])
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v10, qword_2802D2F10);
    (*(v11 + 16))(v17, v35, v10);
    v36 = sub_268C159FC();
    v37 = sub_268C15DDC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_268BAD000, v36, v37, "DeviceResolutionProvider.destinationHashedRouteIds Unable to find any destination route ids", v38, 2u);
      MEMORY[0x26D628010](v38, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v28 = MEMORY[0x277D84F90];
    v29 = 0;
    return a3(v28, v29);
  }

  v30 = a5[8];
  v31 = a5[9];
  __swift_project_boxed_opaque_existential_1(a5 + 5, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = a3;
  *(v32 + 24) = a4;
  v33 = *(v31 + 8);

  v33(a1, sub_268BE4E84, v32, v30, v31);
}

uint64_t sub_268BE48F0(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x26D6272E0](a1, MEMORY[0x277D837D0]);
    v17 = sub_268BB3D28(v15, v16, &v24);
    v22 = v4;
    v18 = a2;
    v19 = v17;

    *(v13 + 4) = v19;
    a2 = v18;
    _os_log_impl(&dword_268BAD000, v10, v11, "DeviceResolutionProvider.destinationHashedRouteIds Encoded routes: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D628010](v14, -1, -1);
    MEMORY[0x26D628010](v13, -1, -1);

    (*(v23 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1, 0);
}

uint64_t sub_268BE4B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE4BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BE4C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2802CE458, &qword_268C18540);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE4CEC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_268BE4D2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_268BE3864(a1, a2);
}

uint64_t sub_268BE4D78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_268BE4DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268BE4E24()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_268BE4EF0(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
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
            v10 = v12;
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
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
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
  return result;
}

void sub_268BE507C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_268BE5088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BE50EC(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_268C159EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_268BE51EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_268C159EC() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + v6);
  v10 = v2 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);
  v13 = *(v2 + 32);

  return a2(a1, v7, v8, v13, v2 + v5, v9, v11, v12);
}

uint64_t OUTLINED_FUNCTION_5_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_268BE2740(a1, a2, 2, 1, a5, v12, a7, a8, a9, a10, a11, a12);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t AccessoryVolumeController.__allocating_init()()
{
  v0 = type metadata accessor for DeviceSelector();
  static DeviceSelector.current.getter();
  v4 = v0;
  v5 = &protocol witness table for DeviceSelector;
  *&v3 = v1;
  return sub_268BE53B0(&v3);
}

uint64_t sub_268BE53B0(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_268BB5BDC(a1, v2 + 16);
  return v2;
}

uint64_t sub_268BE5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_7();
  v10 = swift_allocObject();
  v10[2] = *(v6 + 80);
  v10[3] = *(v6 + 88);
  v10[4] = v5;
  v10[5] = v4;
  v10[6] = a3;
  v10[7] = a4;
  v11 = *(v7 + 16);

  v12 = OUTLINED_FUNCTION_0_5();
  v11(v12);
}

uint64_t sub_268BE5500(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v61 = a4;
  v56 = a2;
  v57 = a3;
  v10 = sub_268C15A1C();
  v58 = *(v10 - 8);
  v59 = v10;
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v55 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - v17;
  v19 = sub_268C15F1C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v55 - v23;
  v25 = *(a6 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v24, a1, v19);
  if (__swift_getEnumTagSinglePayload(v24, 1, a6) == 1)
  {
    (*(v20 + 8))(v24, v19);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v29 = v59;
    v30 = __swift_project_value_buffer(v59, qword_2802D2F10);
    v31 = v58;
    (*(v58 + 16))(v14, v30, v29);
    v32 = v57;

    v33 = sub_268C159FC();
    v34 = sub_268C15DEC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v64 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_268BB3D28(v56, v32, &v64);
      _os_log_impl(&dword_268BAD000, v33, v34, "Failed to get volume. Could not find accessory matching routeId: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x26D628010](v36, -1, -1);
      MEMORY[0x26D628010](v35, -1, -1);
    }

    (*(v31 + 8))(v14, v29);
    v65 = 1;
    return v61(0x100000000);
  }

  else
  {
    (*(v25 + 32))(v28, v24, a6);
    v38 = (*(a7 + 128))(a6, a7);
    v39 = v28;
    if ((v38 & 0x100000000) != 0)
    {
      v50 = v58;
      v49 = v59;
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v51 = __swift_project_value_buffer(v49, qword_2802D2F10);
      (*(v50 + 16))(v18, v51, v49);
      v52 = sub_268C159FC();
      v53 = sub_268C15DEC();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_268BAD000, v52, v53, "Failed to get volume. Error getting volume level from accessory", v54, 2u);
        MEMORY[0x26D628010](v54, -1, -1);
      }

      (*(v50 + 8))(v18, v49);
      v63 = 1;
      v61(0x100000000);
      return (*(v25 + 8))(v39, a6);
    }

    else
    {
      v40 = *&v38;
      v41 = v28;
      v43 = v58;
      v42 = v59;
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v42, qword_2802D2F10);
      v45 = v55;
      (*(v43 + 16))(v55, v44, v42);
      v46 = sub_268C159FC();
      v47 = sub_268C15DFC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        *(v48 + 4) = v40;
        _os_log_impl(&dword_268BAD000, v46, v47, "Current volume level of accessory: %f", v48, 0xCu);
        MEMORY[0x26D628010](v48, -1, -1);
      }

      (*(v43 + 8))(v45, v42);
      v62 = 0;
      v61(LODWORD(v40));
      return (*(v25 + 8))(v41, a6);
    }
  }
}

uint64_t sub_268BE5B68(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1_7();
  v12 = swift_allocObject();
  *(v12 + 16) = *(v7 + 80);
  *(v12 + 24) = *(v7 + 88);
  *(v12 + 32) = v6;
  *(v12 + 40) = v5;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 64) = a1;
  v13 = *(v8 + 16);

  v14 = OUTLINED_FUNCTION_0_5();
  v13(v14);
}

uint64_t sub_268BE5C64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v40 = a7;
  v41 = a3;
  v39 = a2;
  v13 = sub_268C15A1C();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = *(v42 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268C15F1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v23 = *(a6 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v20);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v17);
  if (__swift_getEnumTagSinglePayload(v22, 1, a6) == 1)
  {
    (*(v18 + 8))(v22, v17);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v27 = v43;
    v28 = __swift_project_value_buffer(v43, qword_2802D2F10);
    v29 = v42;
    (*(v42 + 16))(v16, v28, v27);
    v30 = v41;

    v31 = sub_268C159FC();
    v32 = sub_268C15DEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_268BB3D28(v39, v30, &v44);
      _os_log_impl(&dword_268BAD000, v31, v32, "Failed to set volume: Could not find accessory matching routeId: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x26D628010](v34, -1, -1);
      MEMORY[0x26D628010](v33, -1, -1);
    }

    (*(v29 + 8))(v16, v27);
    return a4(0);
  }

  else
  {
    (*(v23 + 32))(v26, v22, a6);
    v36 = swift_allocObject();
    *(v36 + 16) = a4;
    *(v36 + 24) = a5;
    v37 = v40;
    v38 = *(v40 + 136);

    v38(sub_268BE6600, v36, a6, v37, a8);

    return (*(v23 + 8))(v26, a6);
  }
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = *(v1 + 40);

  v4 = *(v1 + 56);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void sub_268BE60E4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  if (a1)
  {
    v14 = a1;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v11, v15, v6);
    v16 = a1;
    v17 = sub_268C159FC();
    v18 = sub_268C15DEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = a2;
      v20 = v19;
      v21 = swift_slowAlloc();
      v32 = a3;
      v22 = v21;
      v34 = a1;
      v35 = v21;
      *v20 = 136446210;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4E0, &qword_268C19100);
      v24 = sub_268C15C0C();
      v26 = sub_268BB3D28(v24, v25, &v35);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_268BAD000, v17, v18, "Failed to set volume: Error setting volume level on accessory: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D628010](v22, -1, -1);
      v27 = v20;
      a2 = v33;
      MEMORY[0x26D628010](v27, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    a2(0);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v6, qword_2802D2F10);
    (*(v7 + 16))(v13, v28, v6);
    v29 = sub_268C159FC();
    v30 = sub_268C15DFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_268BAD000, v29, v30, "Accessory volume set successfully", v31, 2u);
      MEMORY[0x26D628010](v31, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    a2(1);
  }
}

uint64_t AccessoryVolumeController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_268BE65C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *OUTLINED_FUNCTION_1_7()
{
  v1 = *v0;
  v2 = v0[6];
  return __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
}

uint64_t sub_268BE6660(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  result = sub_268BC4EF4(a3);
  v7 = result;
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {
      return v5;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D627640](i, a3);
      v9 = result;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v9 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = v9;
    a1(&v11, &v12);
    if (v3)
    {

      return v5;
    }

    if (v11)
    {
      MEMORY[0x26D6272B0](result);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268C15D2C();
      }

      result = sub_268C15D5C();
      v5 = v13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268BE67C0(uint64_t a1, uint64_t *a2)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE558, &unk_268C18730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v31 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v30 = &v27 - v13;
  v14 = 0;
  v15 = *(a1 + 16);
  v32 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v15 == v14)
    {
      return v32;
    }

    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = *(v9 + 72);
    sub_268C0204C((a1 + v16 + v17 * v14), v33, v7);
    if (v2)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_268BF2790(v7, &qword_2802CE558, &unk_268C18730);
      ++v14;
    }

    else
    {
      v29 = type metadata accessor for Device;
      sub_268BF2540(v7, v30, type metadata accessor for Device);
      sub_268BF2540(v30, v31, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB35B0(0, *(v32 + 16) + 1, 1, v32);
        v32 = v23;
      }

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      v20 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v28 = *(v32 + 16);
        v29 = (v19 + 1);
        sub_268BB35B0(v18 > 1, v19 + 1, 1, v32);
        v19 = v28;
        v20 = v29;
        v32 = v24;
      }

      ++v14;
      v21 = v31;
      v22 = v32;
      *(v32 + 16) = v20;
      sub_268BF2540(v21, v22 + v16 + v19 * v17, type metadata accessor for Device);
    }
  }

  v25 = v32;

  return v25;
}

uint64_t sub_268BE6A64(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE558, &unk_268C18730);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Device();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v30 = &v29 - v14;
  v15 = 0;
  v16 = *(a3 + 16);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {
      return v33;
    }

    v17 = *(type metadata accessor for MediaGroup() - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_268BF2790(v9, &qword_2802CE558, &unk_268C18730);
      ++v15;
    }

    else
    {
      v29 = type metadata accessor for Device;
      v18 = v30;
      sub_268BF2540(v9, v30, type metadata accessor for Device);
      sub_268BF2540(v18, v32, v29);
      v19 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB35B0(0, *(v19 + 16) + 1, 1, v19);
        v19 = v25;
      }

      v20 = v19;
      v21 = *(v19 + 16);
      v33 = v20;
      v22 = *(v20 + 24);
      v23 = (v21 + 1);
      if (v21 >= v22 >> 1)
      {
        v29 = (v21 + 1);
        sub_268BB35B0(v22 > 1, v21 + 1, 1, v33);
        v23 = v29;
        v33 = v26;
      }

      ++v15;
      v24 = v33;
      *(v33 + 16) = v23;
      sub_268BF2540(v32, v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v21, type metadata accessor for Device);
    }
  }

  v27 = v33;

  return v27;
}

uint64_t sub_268BE6D80(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  sub_268BDCB60(a3, *a2, *(a2 + 8));
  v11 = sub_268BE6F40(v10);
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  v14 = sub_268BDCAFC(a3, v12, v13);
  v15 = sub_268BEFAC0(v14, v11);

  if (!*(v15 + 16))
  {
  }

  v16 = sub_268C0F58C(v15, *a1);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = *(v17 + 16);
    sub_268BB35EC();
    v17 = v28;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_268BB35EC();
    v17 = v29;
  }

  *(v17 + 16) = v18 + 1;
  v19 = v17 + 40 * v18;
  v20 = *a2;
  v21 = *(a2 + 16);
  *(v19 + 64) = *(a2 + 32);
  *(v19 + 32) = v20;
  *(v19 + 48) = v21;
  sub_268BDC5A8(a2, v30, &unk_2802CDCF0, &qword_268C170B8);
  v22 = *a1;
  swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *a1;
  sub_268BEF3D4(v17, v15);
  *a1 = v30[0];
  v23 = *a5;
  v24 = *(v15 + 16);

  if (v24 <= v23)
  {
    v26 = v23;
  }

  else
  {
    v26 = v24;
  }

  *a5 = v26;
  return result;
}

uint64_t sub_268BE6F40(uint64_t a1)
{
  result = MEMORY[0x26D627380](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_268BDA100(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_268BE7000(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 64);
  if (!v6)
  {
    return v19;
  }

  while (1)
  {
    v8 = *v7;
    v9 = *(v7 - 1);
    v10 = *(v7 - 16);
    v11 = *(v7 - 3);
    v15[0] = *(v7 - 4);
    v15[1] = v11;
    v16 = v10;
    v17 = v9;
    v18 = v8;
    v12 = v9;

    a2(&v19, v15);
    v13 = v17;

    if (v4)
    {
      break;
    }

    v7 += 40;
    if (!--v6)
    {
      return v19;
    }
  }
}

uint64_t sub_268BE70C8(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      v23 = a1;
      v13 = a1;
      Zone.rooms.getter();
      v15 = v14;
      v16 = 0;
      v22 = MEMORY[0x277D84F90];
      v17 = *(v14 + 16);
      while (2)
      {
        if (v17 == v16)
        {
          goto LABEL_12;
        }

        if (v16 < *(v15 + 16))
        {
          v18 = v16 + 1;
          v19 = *(v15 + 8 * v16 + 32);
          v20 = Room.accessories.getter(v19);
          sub_268BB05D0(v20);

          v16 = v18;
          continue;
        }

        goto LABEL_15;
      }

    case 2:
      v11 = Room.accessories.getter(a1);

      return v11;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCE0, &qword_268C18780);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_268C172B0;
      *(v11 + 32) = a1;
      v12 = a1;
      return v11;
    default:
      v23 = a1;
      v3 = a1;
      Home.rooms.getter();
      v5 = v4;
      v6 = 0;
      v22 = MEMORY[0x277D84F90];
      v7 = *(v4 + 16);
      while (v7 != v6)
      {
        if (v6 >= *(v5 + 16))
        {
          __break(1u);
LABEL_15:
          __break(1u);
          JUMPOUT(0x268BE7280);
        }

        v8 = v6 + 1;
        v9 = *(v5 + 8 * v6 + 32);
        v10 = Room.accessories.getter(v9);
        sub_268BB05D0(v10);

        v6 = v8;
      }

LABEL_12:

      return v22;
  }
}

void static DeviceSelector.current.getter()
{
  v1 = sub_268C15A1C();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  type metadata accessor for LifeCycleManager();
  sub_268C10428();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  sub_268C10784(0x6553656369766544, 0xEE00726F7463656CLL, sub_268BE7650, v12, 300);

  if (qword_2802CDBB8 != -1)
  {
    swift_once();
  }

  v13 = sub_268C15ECC();
  if (qword_2802CE4F0)
  {
    v14 = *(qword_2802CE4F0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider);

    v15 = v14;
    sub_268BBD464();

    if (qword_2802CDBE0 != -1)
    {
      v16 = OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_13_4(v16, qword_2802D2F10);
    (*(v4 + 16))(v11);
    v17 = sub_268C159FC();
    v18 = sub_268C15DFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_268BAD000, v17, v18, "Device selector returning existing shared instance", v19, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v4 + 8))(v11, v1);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      v13 = OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_13_4(v13, qword_2802D2F10);
    (*(v4 + 16))(v9);
    v20 = sub_268C159FC();
    v21 = sub_268C15DFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_268BAD000, v20, v21, "Device selector creating new shared instance", v22, 2u);
      OUTLINED_FUNCTION_30();
    }

    (*(v4 + 8))(v9, v1);
    v23 = type metadata accessor for DeviceSelector();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    qword_2802CE4F0 = sub_268BE7850();
  }

  sub_268C15EDC();
  OUTLINED_FUNCTION_14_3();
}

dispatch_semaphore_t sub_268BE761C()
{
  result = dispatch_semaphore_create(1);
  qword_2802D2EF8 = result;
  return result;
}

uint64_t sub_268BE7674()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2802D2F10);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_268C159FC();
  v7 = sub_268C15DFC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_268BAD000, v6, v7, "Clearing DeviceSelector shared instance", v8, 2u);
    MEMORY[0x26D628010](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_2802CDBB8 != -1)
  {
    swift_once();
  }

  sub_268C15ECC();
  qword_2802CE4F0 = 0;

  return sub_268C15EDC();
}

uint64_t sub_268BE7850()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for HomeManager());
  sub_268BBCDD0();
  v4 = v3;
  v5 = (v1 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v7 = *(v6 + 36);
  v8 = sub_268C1533C();
  __swift_storeEnumTagSinglePayload(v5 + v7, 1, 1, v8);
  v9 = v5 + *(v6 + 40);
  *(v9 + 3) = &type metadata for PlaybackControlsFeatureFlagProvider;
  *(v9 + 4) = &protocol witness table for PlaybackControlsFeatureFlagProvider;
  *v5 = v4;
  return v1;
}

void sub_268BE7904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v14 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_13_4(v14, qword_2802D2F10);
  (*(v11 + 16))(v4);

  v15 = sub_268C159FC();
  v16 = sub_268C15DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v8;
    v29 = v26;
    *v17 = 136315138;
    v18 = MEMORY[0x26D6272E0](a1, &type metadata for FilteringPredicate);
    v20 = v11;
    v21 = a3;
    v22 = a4;
    v23 = a1;
    v24 = sub_268BB3D28(v18, v19, &v29);

    *(v17 + 4) = v24;
    a1 = v23;
    a4 = v22;
    a3 = v21;
    _os_log_impl(&dword_268BAD000, v15, v16, ">>>>>> Device selector finding devices for predicates: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    (*(v20 + 8))(v4, v27);
  }

  else
  {

    (*(v11 + 8))(v4, v8);
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;

  sub_268BE7DF0(a1, a2, sub_268BEF10C, v25);

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BE7B80(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_2802D2F10);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_268C159FC();
  v11 = sub_268C15DFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = type metadata accessor for Device();
    v16 = MEMORY[0x26D6272E0](a1, v15);
    v18 = sub_268BB3D28(v16, v17, &v25);
    v23 = v4;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_268BAD000, v10, v11, "<<<<<< Device selector found devices: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26D628010](v14, -1, -1);
    MEMORY[0x26D628010](v13, -1, -1);

    (*(v24 + 8))(v8, v23);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return a2(a1);
}

uint64_t sub_268BE7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v19 - v13;
  sub_268BDC5A8(v5, &v19 - v13, &unk_2802CE4F8, &qword_268C186B0);
  sub_268BDFAE0(a2, v20);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  sub_268BF1FFC(v14, v16 + v15);
  sub_268BB5BDC(v20, v16 + ((v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *v5;

  sub_268BBE518();
}

void sub_268BE7F74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a4;
  v42 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  v12 = OUTLINED_FUNCTION_28(v11);
  v40 = v13;
  v41 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v43 = &v39 - v15;
  v16 = sub_268C15A1C();
  v17 = OUTLINED_FUNCTION_3_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v22 = __swift_project_value_buffer(v16, qword_2802D2F10);
  (*(v19 + 16))(v6, v22, v16);

  v23 = sub_268C159FC();
  v24 = sub_268C15DFC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v39 = a3;
    v26 = a6;
    v27 = v25;
    v28 = swift_slowAlloc();
    v46 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_268BB3D28(a1, a2, &v46);
    _os_log_impl(&dword_268BAD000, v23, v24, ">>>>>> Device selector finding accessory matching routeId: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_30();
    a6 = v26;
    a3 = v39;
    OUTLINED_FUNCTION_30();
  }

  (*(v19 + 8))(v6, v16);
  v29 = OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider;
  v30 = swift_allocObject();
  v30[2] = v42;
  v30[3] = a6;
  v32 = v44;
  v31 = v45;
  v30[4] = a3;
  v30[5] = v31;
  v33 = v43;
  sub_268BDC5A8(v32 + v29, v43, &unk_2802CE4F8, &qword_268C186B0);
  v34 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v35 = (v41 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_268BEF14C;
  *(v36 + 24) = v30;
  sub_268BF1FFC(v33, v36 + v34);
  v37 = (v36 + v35);
  *v37 = a1;
  v37[1] = a2;
  v38 = *(v32 + v29);

  sub_268BBE518();

  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_268BE82C0(void **a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v39 = a2;
  v6 = sub_268C15F1C();
  v37 = *(v6 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v10, qword_2802D2F10);
  (*(v11 + 16))(v14, v16, v10);
  v17 = v15;
  v18 = sub_268C159FC();
  v19 = v15;
  v20 = sub_268C15DFC();
  v40 = v17;

  v21 = os_log_type_enabled(v18, v20);
  v36 = v19;
  if (v21)
  {
    v35 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42 = v23;
    *v22 = 136315138;
    v34 = v6;
    if (v19)
    {
      v41 = v40;
      v24 = Accessory.description.getter();
      v26 = v25;
    }

    else
    {
      v26 = 0xE500000000000000;
      v24 = 0x3E6C696E3CLL;
    }

    v28 = sub_268BB3D28(v24, v26, &v42);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_268BAD000, v18, v20, "<<<<<< Device selector found accessory: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x26D628010](v23, -1, -1);
    MEMORY[0x26D628010](v22, -1, -1);

    (*(v11 + 8))(v14, v10);
    v27 = v39;
    v6 = v34;
  }

  else
  {

    (*(v11 + 8))(v14, v10);
    v27 = v39;
  }

  v42 = v36;
  v29 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE538, &qword_268C18718);
  v30 = v38;
  v31 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v9, v31 ^ 1u, 1, v30);
  v27(v9);
  return (*(v37 + 8))(v9, v6);
}

uint64_t sub_268BE8634()
{
  v1 = sub_268C15A1C();
  v2 = OUTLINED_FUNCTION_3_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  if (qword_2802CDBE0 != -1)
  {
    v7 = OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_13_4(v7, qword_2802D2F10);
  (*(v4 + 16))(v0);
  v8 = sub_268C159FC();
  v9 = sub_268C15DEC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_268BAD000, v8, v9, "DeviceSelector.usersInCurrentHome called from a non-tvOS device. Returning unsupported platform", v10, 2u);
    OUTLINED_FUNCTION_30();
  }

  (*(v4 + 8))(v0, v1);
  return 1002;
}

uint64_t DeviceSelector.__deallocating_deinit()
{
  sub_268BF2790(v0 + OBJC_IVAR____TtC26SiriPlaybackControlSupport14DeviceSelector_homeProvider, &unk_2802CE4F8, &qword_268C186B0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_268BE8898(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      sub_268C1606C();

      v8 = 0xD000000000000012;
      goto LABEL_12;
    case 2:
      v3 = 0x614D797A7A75662ELL;
      goto LABEL_4;
    case 3:
      v4 = 0xD00000000000001ALL;
      if (a1 != 1)
      {
        v4 = 0x686374614D6F6E2ELL;
      }

      if (a1)
      {
        return v4;
      }

      else
      {
        return 0x6F756769626D612ELL;
      }

    default:
      sub_268C1606C();

      v3 = 0x746365667265702ELL;
LABEL_4:
      v8 = v3;
LABEL_12:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
      v7 = MEMORY[0x26D6272E0](a1, v6);
      MEMORY[0x26D627230](v7);

      MEMORY[0x26D627230](41, 0xE100000000000000);
      return v8;
  }
}

uint64_t sub_268BE8A3C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v103 = a6;
  v106 = a2;
  v107 = a4;
  v105 = a3;
  v8 = *a1;
  v7 = *(a1 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_268C15A1C();
  v109 = *(v12 - 8);
  v13 = *(v109 + 64);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v104 = &v93 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v21 = &v93 - v20;
  v22 = *(a1 + 40);
  v108 = v23;
  if (v22)
  {
    if (qword_2802CDB68 == -1)
    {
LABEL_3:
      v24 = __swift_project_value_buffer(v12, qword_2802D2EC0);
      v25 = v109;
      (*(v109 + 16))(v21, v24, v12);
      v26 = sub_268C159FC();
      v27 = sub_268C15DEC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_268BAD000, v26, v27, "Error finding homeData. Returning empty device list", v28, 2u);
        v29 = v28;
        v12 = v108;
        MEMORY[0x26D628010](v29, -1, -1);
      }

      (*(v25 + 8))(v21, v12);
      return v106(MEMORY[0x277D84F90]);
    }

LABEL_38:
    swift_once();
    goto LABEL_3;
  }

  v31 = v19;
  v94 = v18;
  v95 = v10;
  v97 = v8;
  v98 = v7;
  v112[0] = v8;
  v112[1] = v7;
  v112[2] = v10;
  v112[3] = v9;
  v96 = v9;
  v112[4] = v11;
  v32 = v11;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v12, qword_2802D2F10);
  v34 = v109;
  v35 = *(v109 + 16);
  v36 = v31;
  v100 = v109 + 16;
  v101 = v33;
  v99 = v35;
  (v35)(v31);
  v37 = v107;

  v38 = sub_268C159FC();
  v39 = sub_268C15DFC();

  LODWORD(v102) = v39;
  v40 = os_log_type_enabled(v38, v39);
  v41 = v103;
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v93 = v32;
    v44 = v43;
    __dst[0] = v43;
    *v42 = 136315138;
    v45 = MEMORY[0x26D6272E0](v37, &type metadata for FilteringPredicate);
    v47 = sub_268BB3D28(v45, v46, __dst);
    v12 = v108;

    *(v42 + 4) = v47;
    _os_log_impl(&dword_268BAD000, v38, v102, "HomeProvider.devices Searching for predicates: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x26D628010](v44, -1, -1);
    v48 = v42;
    v34 = v109;
    MEMORY[0x26D628010](v48, -1, -1);
  }

  v102 = *(v34 + 8);
  v102(v36, v12);
  v49 = v97;
  v50 = v104;
  v99(v104, v101, v12);
  v51 = v95;

  v52 = v49;
  v53 = v98;
  v54 = sub_268C159FC();
  v55 = sub_268C15DFC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    __dst[0] = v98;
    *v56 = 136315138;
    sub_268BE92C0();
    v58 = v57;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
    v60 = MEMORY[0x26D6272E0](v58, v59);
    v62 = v61;
    sub_268BF2790(a1, &unk_2802CE540, &unk_268C18720);

    v63 = sub_268BB3D28(v60, v62, __dst);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_268BAD000, v54, v55, "HomeProvider.devices Search across all available devices in HomeKit: %s", v56, 0xCu);
    v64 = v98;
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x26D628010](v64, -1, -1);
    MEMORY[0x26D628010](v56, -1, -1);

    v65 = v108;
    v66 = v104;
  }

  else
  {
    sub_268BF2790(a1, &unk_2802CE540, &unk_268C18720);

    v66 = v50;
    v65 = v12;
  }

  v102(v66, v65);
  v67 = *(v107 + 16);
  if (v67)
  {
    v68 = (v107 + 32);
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      memcpy(__dst, v68, sizeof(__dst));
      sub_268BDEF20(__dst, v110);
      v69 = sub_268BE99F0(__dst, v112, v41);
      sub_268BDEF58(__dst);
      v70 = *(v69 + 16);
      v71 = *(v12 + 16);
      v21 = (v71 + v70);
      if (__OFADD__(v71, v70))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v21 > *(v12 + 24) >> 1)
      {
        if (v71 <= v21)
        {
          v73 = v71 + v70;
        }

        else
        {
          v73 = v71;
        }

        sub_268BB35B0(isUniquelyReferenced_nonNull_native, v73, 1, v12);
        v12 = v74;
      }

      if (*(v69 + 16))
      {
        v21 = ((*(v12 + 24) >> 1) - *(v12 + 16));
        v75 = *(type metadata accessor for Device() - 8);
        if (v21 < v70)
        {
          goto LABEL_36;
        }

        v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v77 = *(v75 + 72);
        swift_arrayInitWithCopy();

        v78 = &loc_268C16000;
        if (v70)
        {
          v79 = *(v12 + 16);
          v80 = __OFADD__(v79, v70);
          v81 = v79 + v70;
          if (v80)
          {
            goto LABEL_37;
          }

          *(v12 + 16) = v81;
        }
      }

      else
      {

        v78 = &loc_268C16000;
        if (v70)
        {
          goto LABEL_35;
        }
      }

      v68 += 120;
      if (!--v67)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = MEMORY[0x277D84F90];
  v78 = &loc_268C16000;
LABEL_31:
  v110[0] = MEMORY[0x277D84FA0];
  v82 = sub_268BE67C0(v12, v110);

  v83 = v94;
  v84 = v108;
  v99(v94, v101, v108);

  v85 = sub_268C159FC();
  v86 = sub_268C15DFC();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v110[0] = v88;
    *v87 = v78[422];
    v89 = type metadata accessor for Device();
    v90 = MEMORY[0x26D6272E0](v82, v89);
    v92 = sub_268BB3D28(v90, v91, v110);

    *(v87 + 4) = v92;
    _os_log_impl(&dword_268BAD000, v85, v86, "====== Found matches: %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x26D628010](v88, -1, -1);
    MEMORY[0x26D628010](v87, -1, -1);
  }

  v102(v83, v84);
  v106(v82);
}

void sub_268BE92C0()
{
  v88 = sub_268C15A1C();
  v1 = *(*(v88 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v88);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = 0;
  v6 = *(v0 + 24);
  v83 = v6 + 32;
  v84 = v0;
  v89 = (v7 + 8);
  v90 = (v7 + 16);
  v96 = MEMORY[0x277D84F90];
  v85 = *(v6 + 16);
  v2.n128_u64[0] = 136315138;
  v87 = v2;
  v94 = v4;
  while (v5 != v85)
  {
    v8 = *(v83 + 8 * v5);
    v9 = *(v84 + 16);
    v100 = v8;
    v101[0] = v9;
    v86 = v5;
    if (v8)
    {
      if (v9)
      {
        sub_268BB9B44(0, &qword_2802CE550, 0x277D82BB8);
        v10 = v8;
        sub_268BDC5A8(v101, &v99, &qword_2802CE530, &qword_268C18710);
        v11 = v10;
        v12 = sub_268C15EEC();

        v13 = v100;
        goto LABEL_10;
      }

      v14 = v8;
    }

    else if (!v9)
    {
      sub_268BDC5A8(v101, &v99, &qword_2802CE530, &qword_268C18710);
      v13 = 0;
      v12 = 1;
      goto LABEL_10;
    }

    sub_268BDC5A8(v101, &v99, &qword_2802CE530, &qword_268C18710);

    v12 = 0;
    v13 = v8;
LABEL_10:
    v15 = [v8 name];
    v16 = sub_268C15BFC();
    v18 = v17;

    v19 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v80 = *(v96 + 16);
      sub_268BB35EC();
      v96 = v81;
    }

    v20 = *(v96 + 16);
    if (v20 >= *(v96 + 24) >> 1)
    {
      sub_268BB35EC();
      v96 = v82;
    }

    ++v86;
    v21 = v96;
    *(v96 + 16) = v20 + 1;
    v22 = v21 + 40 * v20;
    *(v22 + 32) = v16;
    *(v22 + 40) = v18;
    v95 = v12 & 1;
    *(v22 + 48) = v12 & 1;
    *(v22 + 56) = v13;
    *(v22 + 64) = 0;
    Home.rooms.getter();
    v24 = v23;
    v25 = 0;
    v93 = *(v23 + 16);
LABEL_15:
    v26 = v88;
    while (v93 != v25)
    {
      if (v25 >= *(v24 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v99 = *(v24 + 8 * v25 + 32);
      v27 = v99;
      v28 = *(Room.accessories.getter() + 16);

      if (v28)
      {
        v92 = v24;
        v39 = [v27 name];
        v40 = sub_268C15BFC();
        v42 = v41;

        v43 = v99;
        v44 = *(v96 + 16);
        v45 = *(v96 + 24);
        v46 = v99;
        if (v44 >= v45 >> 1)
        {
          sub_268BB35EC();
          v96 = v63;
        }

        ++v25;
        v47 = v96;
        *(v96 + 16) = v44 + 1;
        v48 = v47 + 40 * v44;
        *(v48 + 32) = v40;
        *(v48 + 40) = v42;
        *(v48 + 48) = v95;
        *(v48 + 56) = v43;
        *(v48 + 64) = 2;
        v49 = Room.accessories.getter();
        v50 = 0;
        v91 = *(v49 + 16);
        while (1)
        {
          v4 = v94;
          v24 = v92;
          if (v91 == v50)
          {
            break;
          }

          if (v50 >= *(v49 + 16))
          {
            goto LABEL_44;
          }

          v51 = *(v49 + 8 * v50 + 32);
          v52 = [v51 name];
          v53 = sub_268C15BFC();
          v55 = v54;

          v56 = *(v96 + 16);
          v57 = *(v96 + 24);
          v58 = v51;
          if (v56 >= v57 >> 1)
          {
            sub_268BB35EC();
            v96 = v61;
          }

          v59 = v96;
          *(v96 + 16) = v56 + 1;
          v60 = v59 + 40 * v56;
          *(v60 + 32) = v53;
          *(v60 + 40) = v55;
          *(v60 + 48) = v95;
          *(v60 + 56) = v51;
          *(v60 + 64) = 3;
          ++v50;
        }

        v62 = v99;

        goto LABEL_15;
      }

      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v26, qword_2802D2F10);
      (*v90)(v4, v29, v26);
      v30 = v99;
      v31 = sub_268C159FC();
      v32 = sub_268C15DFC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v97 = v30;
        v98 = v34;
        *v33 = v87.n128_u32[0];
        v35 = Room.description.getter();
        v37 = v36;

        v38 = sub_268BB3D28(v35, v37, &v98);
        v26 = v88;

        *(v33 + 4) = v38;
        _os_log_impl(&dword_268BAD000, v31, v32, "Room %s has no accessories. Dropping from flat graph", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x26D628010](v34, -1, -1);
        MEMORY[0x26D628010](v33, -1, -1);
      }

      else
      {
      }

      (*v89)(v4, v26);

      ++v25;
    }

    Home.zones.getter();
    v65 = v64;
    v66 = 0;
    v67 = *(v64 + 16);
    while (v67 != v66)
    {
      if (v66 >= *(v65 + 16))
      {
        goto LABEL_43;
      }

      v68 = *(v65 + 8 * v66 + 32);
      v69 = [v68 name];
      v70 = sub_268C15BFC();
      v72 = v71;

      v73 = *(v96 + 16);
      v74 = *(v96 + 24);
      v75 = v68;
      if (v73 >= v74 >> 1)
      {
        sub_268BB35EC();
        v96 = v78;
      }

      v76 = v96;
      *(v96 + 16) = v73 + 1;
      v77 = v76 + 40 * v73;
      *(v77 + 32) = v70;
      *(v77 + 40) = v72;
      *(v77 + 48) = v95;
      *(v77 + 56) = v68;
      *(v77 + 64) = 1;
      ++v66;
      v4 = v94;
    }

    v79 = v100;

    v5 = v86;
  }
}

uint64_t sub_268BE99F0(char *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v105 = a2;
  v7 = sub_268C15A1C();
  v104 = *(v7 - 8);
  v8 = v104[8];
  MEMORY[0x28223BE20](v7);
  v101 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v103 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v106 = a1;
  v113[0] = *(a1 + 24);
  v18 = v113[0];
  if (*(&v113[0] + 1) == 1)
  {
    sub_268BDC5A8(v113, v110, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE850(v18, 1);
    sub_268BDE850(0, 0);
  }

  else
  {
    *v110 = v113[0];
    v108[0] = 0;
    v108[1] = 0;
    sub_268BDC5A8(v113, &v112, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v18, *(&v18 + 1));
    v19 = static FilteringPredicate.Location.== infix(_:_:)(v110, v108);

    sub_268BDE850(v18, *(&v18 + 1));
    if (v19)
    {
      return sub_268BEAE44(v106, v105, a3);
    }
  }

  v112 = *(v106 + 40);
  v21 = v112;
  if (*(&v112 + 1) == 1)
  {
    sub_268BDC5A8(&v112, v110, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE850(v21, 1);
    sub_268BDE850(0, 0);
  }

  else
  {
    *v110 = v112;
    v108[0] = 0;
    v108[1] = 0;
    sub_268BDC5A8(&v112, &v111, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v21, *(&v21 + 1));
    v22 = static FilteringPredicate.Location.== infix(_:_:)(v110, v108);

    sub_268BDE850(v21, *(&v21 + 1));
    if (v22)
    {
      return sub_268BEB658(v106, v105, a3);
    }
  }

  v23 = v106;
  v111 = *(v106 + 56);
  v24 = v111;
  if (*(&v111 + 1) != 1)
  {
    *v110 = v111;
    v108[0] = 0;
    v108[1] = 0;
    sub_268BDC5A8(&v111, &v107, &qword_2802CE560, &unk_268C17ED0);
    sub_268BDE808(v24, *(&v24 + 1));
    v26 = static FilteringPredicate.Location.== infix(_:_:)(v110, v108);

    sub_268BDE850(v24, *(&v24 + 1));
    v25 = v104;
    if ((v26 & 1) == 0)
    {
      goto LABEL_14;
    }

    return sub_268BEBEA4(v23, v105);
  }

  sub_268BDC5A8(&v111, v110, &qword_2802CE560, &unk_268C17ED0);
  sub_268BDE850(v24, 1);
  sub_268BDE850(0, 0);
  v25 = v104;
LABEL_14:
  v107 = MEMORY[0x277D84F90];
  v28 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0) + 40));
  v29 = v28[3];
  v30 = v28[4];
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v31 = (*(v30 + 48))(v29, v30);
  v100 = v7;
  v102 = v4;
  if (v31)
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v7, qword_2802D2EC0);
    (*(v25 + 16))(v17, v32, v7);
    sub_268BDEF20(v23, v110);
    v33 = sub_268C159FC();
    v34 = sub_268C15DCC();
    sub_268BDEF58(v23);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v109 = v36;
      *v35 = 136315138;
      memcpy(v108, v23, sizeof(v108));
      sub_268BDEF20(v23, v110);
      v37 = v34;
      v38 = FilteringPredicate.description.getter();
      v40 = v39;
      memcpy(v110, v108, sizeof(v110));
      sub_268BDEF58(v110);
      v41 = sub_268BB3D28(v38, v40, &v109);
      v25 = v104;

      *(v35 + 4) = v41;
      _os_log_impl(&dword_268BAD000, v33, v37, "Searching media groups for groups matching predicate: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v7 = v100;
      MEMORY[0x26D628010](v36, -1, -1);
      MEMORY[0x26D628010](v35, -1, -1);
    }

    (*(v25 + 8))(v17, v7);
    v42 = sub_268BEC174(v23, v105);
    sub_268BB04CC(v42);
  }

  if (qword_2802CDB68 != -1)
  {
LABEL_56:
    swift_once();
  }

  v43 = __swift_project_value_buffer(v7, qword_2802D2EC0);
  v96 = *(v25 + 16);
  v97 = v25 + 16;
  v96(v14, v43, v7);
  sub_268BDEF20(v23, v110);
  v44 = sub_268C159FC();
  v45 = sub_268C15DCC();
  sub_268BDEF58(v23);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v23;
    v48 = swift_slowAlloc();
    v109 = v48;
    *v46 = 136315138;
    memcpy(v108, v47, sizeof(v108));
    sub_268BDEF20(v47, v110);
    v49 = FilteringPredicate.description.getter();
    v50 = v25;
    v52 = v51;
    memcpy(v110, v108, sizeof(v110));
    sub_268BDEF58(v110);
    v53 = sub_268BB3D28(v49, v52, &v109);

    *(v46 + 4) = v53;
    _os_log_impl(&dword_268BAD000, v44, v45, "Searching current home for devices matching predicate: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x26D628010](v48, -1, -1);
    MEMORY[0x26D628010](v46, -1, -1);

    v54 = v50;
  }

  else
  {

    v54 = v25;
  }

  v95 = *(v54 + 8);
  v95(v14, v7);
  v23 = v105;
  sub_268BE92C0();
  v56 = v55;
  v25 = 0;
  v57 = *(v55 + 16);
  v58 = MEMORY[0x277D84F90];
LABEL_25:
  v59 = 40 * v25;
  while (v57 != v25)
  {
    if (v25 >= *(v56 + 16))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    ++v25;
    v60 = v59 + 40;
    v61 = *(v56 + v59 + 48);
    v59 += 40;
    if (v61)
    {
      v63 = *(v56 + v60 - 8);
      v62 = *(v56 + v60);
      v14 = *(v56 + v60 + 16);
      v64 = *(v56 + v60 + 24);
      v65 = v14;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v110 = v58;
      LODWORD(v99) = v64;
      v98 = v63;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AD8(0, *(v58 + 16) + 1, 1);
        v58 = *v110;
      }

      v7 = *(v58 + 16);
      v67 = *(v58 + 24);
      if (v7 >= v67 >> 1)
      {
        sub_268BB4AD8((v67 > 1), v7 + 1, 1);
        v58 = *v110;
      }

      *(v58 + 16) = v7 + 1;
      v68 = v58 + 40 * v7;
      *(v68 + 32) = v98;
      *(v68 + 40) = v62;
      *(v68 + 48) = 1;
      *(v68 + 56) = v14;
      *(v68 + 64) = v99;
      v23 = v105;
      goto LABEL_25;
    }
  }

  v7 = v102;
  v69 = sub_268BEC440(v106, v23, v58);

  sub_268BB04CC(v69);
  v27 = v107;
  if (!*(v107 + 16))
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v70 = v100;
    v71 = __swift_project_value_buffer(v100, qword_2802D2F10);
    v72 = v103;
    v98 = v71;
    (v96)(v103);
    v73 = sub_268C159FC();
    v74 = sub_268C15DFC();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_268BAD000, v73, v74, "Couldn't find any devices matching the user's query in current home. Searching in other homes", v75, 2u);
      MEMORY[0x26D628010](v75, -1, -1);
    }

    v94 = (v104 + 1);
    v95(v72, v70);
    sub_268BE92C0();
    v23 = v76;
    v25 = 0;
    v14 = v76[2];
    v77 = MEMORY[0x277D84F90];
LABEL_40:
    v78 = 5 * v25;
    while (v14 != v25)
    {
      if (v25 >= v23[2])
      {
        goto LABEL_55;
      }

      ++v25;
      v79 = v78 * 8 + 40;
      v80 = v23[v78 + 6];
      v78 += 5;
      if ((v80 & 1) == 0)
      {
        v81 = *(v23 + v79);
        v99 = *(v23 + v79 - 8);
        v82 = *(v23 + v79 + 16);
        v83 = *(v23 + v79 + 24);
        v84 = v82;

        v85 = swift_isUniquelyReferenced_nonNull_native();
        *v110 = v77;
        v104 = v82;
        LODWORD(v103) = v83;
        if ((v85 & 1) == 0)
        {
          sub_268BB4AD8(0, *(v77 + 16) + 1, 1);
          v77 = *v110;
        }

        v87 = *(v77 + 16);
        v86 = *(v77 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_268BB4AD8((v86 > 1), v87 + 1, 1);
          v77 = *v110;
        }

        *(v77 + 16) = v87 + 1;
        v88 = v77 + 40 * v87;
        *(v88 + 32) = v99;
        *(v88 + 40) = v81;
        *(v88 + 48) = 0;
        *(v88 + 56) = v104;
        *(v88 + 64) = v103;
        v70 = v100;
        v7 = v102;
        goto LABEL_40;
      }
    }

    v27 = sub_268BEC440(v106, v105, v77);

    if (!*(v27 + 16))
    {
      v89 = v101;
      v96(v101, v98, v70);
      v90 = sub_268C159FC();
      v91 = sub_268C15DEC();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_268BAD000, v90, v91, "Couldn't find any devices matching the user's query in any home.", v92, 2u);
        MEMORY[0x26D628010](v92, -1, -1);
      }

      v95(v89, v70);
    }
  }

  return v27;
}

void sub_268BEA59C(uint64_t a1, void (*a2)(uint64_t **), uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = *(a1 + 24);
  v11 = sub_268C15A1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40))
  {
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v11, qword_2802D2EC0);
    (*(v12 + 16))(v15, v16, v11);
    v17 = sub_268C159FC();
    v18 = sub_268C15DEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_268BAD000, v17, v18, "Error finding homeData. Returning empty device list", v19, 2u);
      MEMORY[0x26D628010](v19, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    v21 = 0;
  }

  else
  {
    sub_268BEA798(a5, a6, v10, &v21);
  }

  a2(&v21);
}

uint64_t sub_268BEA798@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t **a4@<X8>)
{
  v64 = a1;
  v62 = a4;
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v6);
  v58 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v54 - v11);
  if (qword_2802CDB68 != -1)
  {
LABEL_39:
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_2802D2EC0);
  v55 = v7[2];
  v56 = v13;
  v55(v12);

  v14 = sub_268C159FC();
  v15 = sub_268C15DCC();

  v16 = os_log_type_enabled(v14, v15);
  v63 = a2;
  v59 = v6;
  v61 = v7;
  v57 = v7 + 2;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = v7;
    v19 = swift_slowAlloc();
    v69 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_268BB3D28(v64, a2, &v69);
    *(v17 + 12) = 2080;
    a2 = a3;
    v20 = MEMORY[0x26D6272E0](a3, &type metadata for Home);
    v22 = sub_268BB3D28(v20, v21, &v69);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_268BAD000, v14, v15, "Searching for devices matching routeId: %s in homes: %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D628010](v19, -1, -1);
    MEMORY[0x26D628010](v17, -1, -1);

    v60 = v18[1];
  }

  else
  {

    v60 = v7[1];
  }

  v60(v12, v6);
  v23 = 0;
  v69 = MEMORY[0x277D84F90];
  v24 = a3[2];
  v65 = a3 + 4;
  v66 = v24;
LABEL_6:
  if (v23 == v66)
  {
    v6 = 0;
    v35 = v69;
    v7 = *(v69 + 16);
    while (v7 != v6)
    {
      if (v6 >= *(v35 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v12 = *(v35 + 8 * v6 + 32);
      v36 = [v12 deviceIdentifier];
      v37 = sub_268C15BFC();
      a3 = v38;

      if (v37 == v64 && a3 == v63)
      {

LABEL_33:

        v44 = v58;
        v43 = v59;
        (v55)(v58, v56, v59);
        v45 = v63;

        v42 = v12;
        v46 = sub_268C159FC();
        v47 = sub_268C15DCC();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v69 = v49;
          *v48 = 136315394;
          *(v48 + 4) = sub_268BB3D28(v64, v45, &v69);
          *(v48 + 12) = 2080;
          v68 = [v42 home];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE530, &qword_268C18710);
          v50 = sub_268C15C0C();
          v52 = v51;

          v53 = sub_268BB3D28(v50, v52, &v69);

          *(v48 + 14) = v53;
          _os_log_impl(&dword_268BAD000, v46, v47, "Found device matching routeId: %s in home: %s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D628010](v49, -1, -1);
          MEMORY[0x26D628010](v48, -1, -1);
        }

        else
        {
        }

        result = (v60)(v44, v43);
        goto LABEL_37;
      }

      v40 = sub_268C1618C();

      if (v40)
      {
        goto LABEL_33;
      }

      ++v6;
    }
  }

  else
  {
    v25 = v65[v23++];
    v67 = v25;
    a3 = [v67 accessories];
    sub_268BB9B44(0, &qword_2802CE528, 0x277CD1650);
    v26 = sub_268C15D0C();

    v27 = sub_268BC4EF4(v26);
    v28 = 0;
    a2 = v26 & 0xFFFFFFFFFFFFFF8;
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 == v28)
      {

        v12 = &v69;
        sub_268BB05D0(v29);
        goto LABEL_6;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x26D627640](v28, v26);
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v30 = *(v26 + 8 * v28 + 32);
      }

      a3 = v30;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB3594(0, *(v29 + 16) + 1, 1, v29);
        v29 = v33;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_268BB3594(v31 > 1, v32 + 1, 1, v29);
        v29 = v34;
      }

      *(v29 + 16) = v32 + 1;
      *(v29 + 8 * v32 + 32) = a3;
      ++v28;
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  v42 = 0;
LABEL_37:
  *v62 = v42;
  return result;
}

uint64_t sub_268BEAE44(void *__src, uint64_t a2, void *a3)
{
  v65 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_268C15A1C();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE568, &unk_268C18740);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v63 - v17;
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_268C1537C();
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  v20 = sub_268C1538C();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    __swift_destroy_boxed_opaque_existential_0(v68);
    sub_268BEA798(v22, v23, *(a2 + 24), v66);

    v24 = v66[0];
    if (v66[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
      v25 = *(type metadata accessor for Device() - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_268C172B0;
      memcpy(v68, __dst, sizeof(v68));
      v29 = type metadata accessor for MediaGroup();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v29);
      v30 = v24;
      sub_268BDEF20(v65, v67);
      sub_268BEDC48(v30, 1, v68, v18, v28 + v27);

      return v28;
    }

    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v37 = v64;
    v38 = __swift_project_value_buffer(v64, qword_2802D2EC0);
    v39 = v63;
    (*(v63 + 16))(v14, v38, v37);
    v40 = sub_268C159FC();
    v41 = sub_268C15DEC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_268BAD000, v40, v41, "SideKick device not found in homes", v42, 2u);
      MEMORY[0x26D628010](v42, -1, -1);
    }

    (*(v39 + 8))(v14, v37);
    return MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0(v68);
  v31 = *a2;
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
    v32 = *(type metadata accessor for Device() - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_268C172B0;
    memcpy(v68, __dst, sizeof(v68));
    v35 = v31;
    sub_268BDEF20(v65, v67);
    v36 = v35;
    sub_268BEDB0C(v36, a2, v18);
    sub_268BEDC48(v36, 1, v68, v18, v28 + v34);

    return v28;
  }

  v43 = v65;
  memcpy(v68, v65, sizeof(v68));
  if ((sub_268BDFA0C() & 1) == 0)
  {
    v57 = v63;
    v56 = v64;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v58 = __swift_project_value_buffer(v56, qword_2802D2F10);
    (*(v57 + 16))(v8, v58, v56);
    v59 = sub_268C159FC();
    v60 = sub_268C15DEC();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_268BAD000, v59, v60, "Unable to get current accessory from home data", v61, 2u);
      MEMORY[0x26D628010](v61, -1, -1);
    }

    (*(v57 + 8))(v8, v56);
    return MEMORY[0x277D84F90];
  }

  v45 = v63;
  v44 = v64;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v44, qword_2802D2F10);
  (*(v45 + 16))(v11, v46, v44);
  v47 = sub_268C159FC();
  v48 = sub_268C15DCC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_268BAD000, v47, v48, "Request to control the current accessory on non tvOS. Returning the local device", v49, 2u);
    MEMORY[0x26D628010](v49, -1, -1);
  }

  (*(v45 + 8))(v11, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
  v50 = (type metadata accessor for Device() - 8);
  v51 = *(*v50 + 72);
  v52 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_268C172B0;
  v53 = v28 + v52;
  memcpy(v67, __dst, sizeof(v67));
  *(v53 + 88) = xmmword_268C16D40;
  *(v53 + 104) = 0u;
  *(v53 + 120) = 0u;
  *(v53 + 136) = 0u;
  *(v53 + 152) = 0u;
  *(v53 + 168) = 0u;
  *(v53 + 184) = 0u;
  *(v53 + 200) = 0;
  v54 = v50[13];
  v55 = type metadata accessor for MediaGroup();
  __swift_storeEnumTagSinglePayload(v28 + v52 + v54, 1, 1, v55);
  *(v53 + v50[14]) = 0;
  *(v53 + v50[15]) = 0;
  *v53 = xmmword_268C18690;
  *(v53 + 16) = 0u;
  *(v53 + 80) = 1;
  *(v53 + 32) = 0u;
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  memcpy(v68, (v28 + v52 + 88), sizeof(v68));
  sub_268BDEF20(v43, v66);
  sub_268BF2790(v68, &qword_2802CE578, &qword_268C18750);
  memcpy((v28 + v52 + 88), v67, 0x78uLL);
  return v28;
}

uint64_t sub_268BEB658(char *__src, uint64_t a2, void *a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_268C15A1C();
  v73 = *(v8 - 8);
  v74 = v8;
  v9 = *(v73 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  v18 = *(a2 + 16);
  v84[0] = *a2;
  v84[1] = v18;
  v85 = *(a2 + 32);
  v19 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_268C1537C();
  __swift_project_boxed_opaque_existential_1(v86, *&v86[24]);
  v20 = sub_268C1538C();
  if (v21)
  {
    v22 = v20;
    v23 = v21;
    v24 = *(a2 + 24);
    __swift_destroy_boxed_opaque_existential_0(v86);
    sub_268BEA798(v22, v23, v24, v86);

    v25 = *v86;
    if (*v86)
    {
      v26 = [*v86 room];
      if (v26)
      {
        v27 = v26;
        v78 = v26;
        v28 = *(__src + 1);
        v75 = *__src;
        v76 = v28;
        v29 = *(__src + 5);
        v77 = *(__src + 4);
        v30 = *(__src + 6);
        v31 = *(__src + 72);
        v79 = *(__src + 56);
        v80 = v31;
        v32 = *(__src + 104);
        v81 = *(__src + 88);
        v82 = v32;
        sub_268BDEF20(__src, v86);
        v33 = [v27 name];
        v34 = sub_268C15BFC();
        v36 = v35;

        v37 = sub_268BDE850(v29, v30);
        v38 = Room.accessories.getter(v37);
        *v86 = v75;
        *&v86[16] = v76;
        *&v86[56] = v79;
        *&v86[72] = v80;
        *&v86[88] = v81;
        *&v86[32] = v77;
        *&v86[40] = v34;
        *&v86[48] = v36;
        *&v86[104] = v82;
        v39 = sub_268BED1A0(v86, v38);

        MEMORY[0x28223BE20](v40);
        *(&v73 - 4) = v4;
        *(&v73 - 3) = v84;
        *(&v73 - 2) = __src;
        sub_268BB2470(sub_268BF2824, (&v73 - 6), v39);
        v42 = v41;

        v43 = v78;

        v83[0] = v75;
        v83[1] = v76;
        *(&v83[3] + 8) = v79;
        *(&v83[4] + 8) = v80;
        *(&v83[5] + 8) = v81;
        *&v83[2] = v77;
        *(&v83[2] + 1) = v34;
        *&v83[3] = v36;
        *(&v83[6] + 8) = v82;
        sub_268BDEF58(v83);
        return v42;
      }
    }

    v49 = v73;
    v48 = v74;
    if (qword_2802CDB68 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v48, qword_2802D2EC0);
    (*(v49 + 16))(v17, v50, v48);
    v51 = sub_268C159FC();
    v52 = sub_268C15DEC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_268BAD000, v51, v52, "SideKick device not found or does not have a room", v53, 2u);
      MEMORY[0x26D628010](v53, -1, -1);
    }

    (*(v49 + 8))(v17, v48);
    return MEMORY[0x277D84F90];
  }

  __swift_destroy_boxed_opaque_existential_0(v86);
  if (*(&v84[0] + 1))
  {
    *v86 = *(&v84[0] + 1);
    v44 = Room.accessories.getter(*(&v84[0] + 1));
    v45 = sub_268BED1A0(__src, v44);

    MEMORY[0x28223BE20](v46);
    *(&v73 - 4) = v4;
    *(&v73 - 3) = v84;
    *(&v73 - 2) = __src;
    sub_268BB2470(sub_268BF2824, (&v73 - 6), v45);
    v42 = v47;

    return v42;
  }

  memcpy(v86, __src, sizeof(v86));
  if ((sub_268BDF93C() & 1) == 0)
  {
    v67 = v74;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v68 = __swift_project_value_buffer(v67, qword_2802D2F10);
    v69 = v73;
    (*(v73 + 16))(v11, v68, v67);
    v70 = sub_268C159FC();
    v71 = sub_268C15DEC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_268BAD000, v70, v71, "Unable to get current room from home data", v72, 2u);
      MEMORY[0x26D628010](v72, -1, -1);
    }

    (*(v69 + 8))(v11, v67);
    return MEMORY[0x277D84F90];
  }

  v55 = v74;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v56 = __swift_project_value_buffer(v55, qword_2802D2F10);
  v57 = v73;
  (*(v73 + 16))(v14, v56, v55);
  v58 = sub_268C159FC();
  v59 = sub_268C15DCC();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_268BAD000, v58, v59, "Request to control the current room on non tvOS. Returning the local device", v60, 2u);
    MEMORY[0x26D628010](v60, -1, -1);
  }

  (*(v57 + 8))(v14, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE570, &qword_268C170C0);
  v61 = (type metadata accessor for Device() - 8);
  v62 = *(*v61 + 72);
  v63 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_268C172B0;
  v64 = v42 + v63;
  memcpy(v83, __dst, 0x78uLL);
  *(v64 + 88) = xmmword_268C16D40;
  *(v64 + 104) = 0u;
  *(v64 + 120) = 0u;
  *(v64 + 136) = 0u;
  *(v64 + 152) = 0u;
  *(v64 + 168) = 0u;
  *(v64 + 184) = 0u;
  *(v64 + 200) = 0;
  v65 = v61[13];
  v66 = type metadata accessor for MediaGroup();
  __swift_storeEnumTagSinglePayload(v42 + v63 + v65, 1, 1, v66);
  *(v64 + v61[14]) = 0;
  *(v64 + v61[15]) = 0;
  *v64 = xmmword_268C18690;
  *(v64 + 16) = 0u;
  *(v64 + 80) = 1;
  *(v64 + 32) = 0u;
  *(v64 + 48) = 0u;
  *(v64 + 64) = 0u;
  memcpy(v86, (v42 + v63 + 88), sizeof(v86));
  sub_268BDEF20(__src, &v79);
  sub_268BF2790(v86, &qword_2802CE578, &qword_268C18750);
  memcpy((v42 + v63 + 88), v83, 0x78uLL);
  return v42;
}

uint64_t sub_268BEBEA4(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_268C15A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 16);
  v31[0] = *a2;
  v31[1] = v11;
  v32 = *(a2 + 32);
  if (v11)
  {
    v30 = v11;
    v12 = v11;
    v10 = &v30;
    Home.rooms.getter();
    v6 = v13;
    v14 = 0;
    v29 = MEMORY[0x277D84F90];
    v7 = *(v13 + 16);
    while (1)
    {
      if (v7 == v14)
      {

        v18 = sub_268BED1A0(a1, v29);

        MEMORY[0x28223BE20](v19);
        *(&v27 - 4) = v3;
        *(&v27 - 3) = v31;
        *(&v27 - 2) = a1;
        sub_268BB2470(sub_268BF2660, (&v27 - 6), v18);
        v21 = v20;

        return v21;
      }

      if (v14 >= *(v6 + 16))
      {
        break;
      }

      v15 = v14 + 1;
      v28 = *(v6 + 8 * v14 + 32);
      v16 = v28;
      v17 = Room.accessories.getter(v16);
      v10 = &v29;
      sub_268BB05D0(v17);

      v14 = v15;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_2802CDBE0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v22 = __swift_project_value_buffer(v6, qword_2802D2F10);
  (*(v7 + 16))(v10, v22, v6);
  v23 = sub_268C159FC();
  v24 = sub_268C15DEC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_268BAD000, v23, v24, "Unable to get current home from home data", v25, 2u);
    MEMORY[0x26D628010](v25, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return MEMORY[0x277D84F90];
}

uint64_t sub_268BEC174(const void *a1, uint64_t a2)
{
  v4 = sub_268C15A1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v9;
  v31 = *(a2 + 32);
  if (qword_2802CDB68 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2802D2EC0);
  (*(v5 + 16))(v8, v10, v4);
  sub_268BDEF20(a1, v29);
  v11 = sub_268C159FC();
  v12 = sub_268C15DDC();
  sub_268BDEF58(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25 = a2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    memcpy(v27, a1, sizeof(v27));
    sub_268BDEF20(a1, v29);
    v16 = FilteringPredicate.description.getter();
    v26 = a1;
    v18 = v17;
    memcpy(v29, v27, sizeof(v29));
    sub_268BDEF58(v29);
    v19 = sub_268BB3D28(v16, v18, &v28);
    a1 = v26;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_268BAD000, v11, v12, "Searching for media groups matching predicate: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x26D628010](v15, -1, -1);
    v20 = v14;
    a2 = v25;
    MEMORY[0x26D628010](v20, -1, -1);
  }

  v21 = (*(v5 + 8))(v8, v4);
  v22 = *(a2 + 32);
  MEMORY[0x28223BE20](v21);
  *(&v25 - 2) = a1;
  *(&v25 - 1) = v30;
  return sub_268BE6A64(sub_268BF2684, (&v25 - 4), v23);
}

uint64_t sub_268BEC440(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v88 = 0;
  v90 = sub_268C15A1C();
  v9 = *(v90 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v90);
  v12 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v73[-v14];
  v16 = *(a2 + 16);
  v93[0] = *a2;
  v93[1] = v16;
  v94 = *(a2 + 32);
  memcpy(v92, a1, sizeof(v92));
  memcpy(__dst, a1, 0x78uLL);
  v17 = FilteringPredicate.namedEntity.getter();
  v87 = v5;
  if (!v18)
  {
    sub_268BDEF20(a1, __dst);
    v90 = *(a3 + 16);

    v9 = a3;
    goto LABEL_27;
  }

  v19 = v17;
  v4 = v18;
  v79 = v12;
  sub_268BDEF20(a1, __dst);
  v80 = v19;
  v20 = sub_268BECD64(v19, v4, a3);
  v21 = v20;
  v22 = *(v20 + 16);
  v85 = v15;
  v86 = v4;
  i = v9;
  v82 = a1;
  if (!v22)
  {

    v21 = 0;
    v12 = 0;
    v84 = 0;
    v5 = 0;
LABEL_12:
    a3 = v90;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_13;
  }

  v4 = *(v20 + 32);
  v9 = *(v20 + 40);
  v84 = *(v20 + 48);
  v5 = *(v20 + 64);
  v83 = *(v20 + 56);
  v23 = v83;
  v12 = v9;

  v15 = 1;
LABEL_4:
  v24 = 40 * v15;
  while (1)
  {
    if (v22 == v15)
    {

      v15 = v85;
      v84 &= 1u;
      v22 = v5;
      v21 = v4;
      v4 = v86;
      v5 = v83;
      v9 = i;
      goto LABEL_12;
    }

    if (v15 >= *(v21 + 2))
    {
      break;
    }

    ++v15;
    v25 = v24 + 40;
    a3 = v21[v24 + 64];
    v24 += 40;
    if (4 - v5 < 4 - a3)
    {
      v4 = *&v21[v25 - 8];
      v26 = *&v21[v25];
      v84 = v21[v25 + 8];
      v9 = *&v21[v25 + 16];
      v27 = v9;

      v12 = v26;
      v83 = v9;
      v5 = a3;
      goto LABEL_4;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
LABEL_13:
    v28 = __swift_project_value_buffer(a3, qword_2802D2F10);
    v29 = *(v9 + 16);
    v76 = v28;
    v77 = v9 + 16;
    v75 = v29;
    v29(v15);

    v30 = v21;
    v31 = v84;
    v15 = v5;
    sub_268BF26E4(v21, v12, v84, v5);
    v32 = sub_268C159FC();
    v33 = sub_268C15DFC();

    v34 = os_log_type_enabled(v32, v33);
    v78 = v22;
    if (!v34)
    {
      break;
    }

    v35 = swift_slowAlloc();
    v74 = v33;
    v36 = v4;
    v83 = v30;
    v37 = v35;
    v38 = swift_slowAlloc();
    v81 = v12;
    v39 = v38;
    v91[0] = v38;
    *v37 = 136315394;
    *(v37 + 4) = sub_268BB3D28(v80, v36, v91);
    *(v37 + 12) = 2080;
    __dst[0] = v83;
    __dst[1] = v81;
    __dst[2] = v31;
    __dst[3] = v15;
    LOBYTE(__dst[4]) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE5A0, &qword_268C18760);
    v40 = sub_268C15F0C();
    v42 = v41;
    sub_268BF2724(v83, v81, v31, v15);
    v43 = sub_268BB3D28(v40, v42, v91);
    v44 = v82;

    *(v37 + 14) = v43;
    _os_log_impl(&dword_268BAD000, v32, v74, "======= Closest match to the requested query: %s: %s", v37, 0x16u);
    swift_arrayDestroy();
    v12 = v81;
    MEMORY[0x26D628010](v39, -1, -1);
    v45 = v37;
    v46 = v83;
    MEMORY[0x26D628010](v45, -1, -1);

    v47 = v90;
    v48 = *(i + 8);
    v48(v85, v90);
    v49 = v47;
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_15:
    v96 = *(v44 + 88);
    v4 = v86;
    if (*(&v96 + 1))
    {
      v75(v79, v76, v49);
      v50 = v15;

      v51 = sub_268C159FC();
      v52 = sub_268C15DFC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_268BAD000, v51, v52, "Overriding service group to the more specific container type", v53, 2u);
        MEMORY[0x26D628010](v53, -1, -1);
      }

      v48(v79, v90);
      sub_268BF2790(&v96, &qword_2802CE098, &qword_268C177C0);
      v92[11] = 0;
      v92[12] = 0;
      v5 = v78;
      v54 = v84;
      switch(v78)
      {
        case 1:
          v95 = *(v44 + 72);
          sub_268BF2790(&v95, &qword_2802CE098, &qword_268C177C0);
          v92[9] = v80;
          v92[10] = v4;
          break;
        case 2:
          sub_268BDE850(v92[5], v92[6]);
          v92[5] = v80;
          v92[6] = v4;
          break;
        case 3:
          v95 = *v44;
          sub_268BF2790(&v95, &qword_2802CE098, &qword_268C177C0);
          v92[0] = v80;
          v92[1] = v4;
          break;
        default:
          sub_268BDE850(v92[7], v92[8]);
          v92[7] = v80;
          v92[8] = v4;
          break;
      }
    }

    else
    {
      v57 = v15;

      v54 = v84;
      v5 = v78;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE590, &qword_268C170B0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_268C172B0;
    *(v9 + 32) = v46;
    *(v9 + 40) = v12;
    *(v9 + 48) = v54;
    *(v9 + 56) = v15;
    *(v9 + 64) = v5;
    sub_268BF2724(v46, v12, v54, v15);
    v90 = 1;
LABEL_27:
    a3 = 0;
    v21 = (v9 + 64);
    v22 = MEMORY[0x277D84F90];
    for (i = v9; ; v9 = i)
    {
      if (v90 == a3)
      {

        memcpy(__dst, v92, 0x78uLL);
        v68 = v87;
        v69 = sub_268BED1A0(__dst, v22);

        MEMORY[0x28223BE20](v70);
        *&v73[-32] = v68;
        *&v73[-24] = v93;
        *&v73[-16] = v92;
        sub_268BB2470(sub_268BF26C0, &v73[-48], v69);
        v56 = v71;

        goto LABEL_45;
      }

      if (a3 >= *(v9 + 16))
      {
        break;
      }

      v9 = *(v21 - 3);
      v58 = *(v21 - 1);
      v4 = *v21;
      v12 = v58;

      v59 = sub_268BE70C8(v58, v4);
      v15 = *(v59 + 16);
      v5 = *(v22 + 16);
      v60 = &v5[v15];
      if (__OFADD__(v5, v15))
      {
        goto LABEL_47;
      }

      v4 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v62 = *(v22 + 24) >> 1, v62 < v60))
      {
        if (v5 <= v60)
        {
          v63 = &v5[v15];
        }

        else
        {
          v63 = v5;
        }

        sub_268BB3594(isUniquelyReferenced_nonNull_native, v63, 1, v22);
        v22 = v64;
        v62 = *(v64 + 24) >> 1;
      }

      if (*(v4 + 16))
      {
        if (v62 - *(v22 + 16) < v15)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v65 = *(v22 + 16);
          v66 = __OFADD__(v65, v15);
          v67 = v65 + v15;
          if (v66)
          {
            goto LABEL_51;
          }

          *(v22 + 16) = v67;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_48;
        }
      }

      v21 += 40;
      ++a3;
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  v46 = v30;
  sub_268BF2724(v30, v12, v31, v15);

  v55 = v90;
  v48 = *(i + 8);
  v48(v85, v90);
  v49 = v55;
  v44 = v82;
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_21:

  v56 = MEMORY[0x277D84F90];
LABEL_45:
  memcpy(v91, v92, 0x78uLL);
  sub_268BDEF58(v91);
  return v56;
}