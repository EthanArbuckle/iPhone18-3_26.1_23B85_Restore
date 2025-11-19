ULPNHeuristicsClientFramework::InterfaceType_optional __swiftcall InterfaceType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2702D89DC@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2702D8A08()
{
  if (*v0)
  {
    result = 0x72666E4969666977;
  }

  else
  {
    result = 0x72616C756C6C6563;
  }

  *v0;
  return result;
}

uint64_t sub_2702D8A68()
{
  sub_2702DA74C();
  MEMORY[0x27439D1C0](0);
  return sub_2702DA76C();
}

uint64_t sub_2702D8AD4()
{
  sub_2702DA74C();
  MEMORY[0x27439D1C0](0);
  return sub_2702DA76C();
}

uint64_t PushDisconnectErrors.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

{
  *a2 = result;
  *(a2 + 8) = 1;
  return result;
}

uint64_t PushDisconnectErrors.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v4 = 0;
    sub_2702DA68C();
    MEMORY[0x27439D000](0xD000000000000013, 0x80000002702DBB20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807CD5F8, &qword_2702DADE0);
    sub_2702DA6AC();
    return v4;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2702DA68C();

    v4 = 0xD000000000000015;
    v2 = sub_2702DA6FC();
    MEMORY[0x27439D000](v2);

    return v4;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_2702D8C88(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

uint64_t PushTelemetry.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2702DA4BC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void PushTelemetry.event.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushTelemetry(0) + 20);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  sub_2702D3748(v4, v5);
}

uint64_t PushTelemetry.init(timestamp:event:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = sub_2702DA4BC();
  (*(*(v7 - 8) + 32))(a3, a1, v7);
  result = type metadata accessor for PushTelemetry(0);
  v9 = a3 + *(result + 20);
  *v9 = v5;
  *(v9 + 8) = v6;
  return result;
}

uint64_t PushTelemetry.description.getter()
{
  sub_2702DA68C();

  sub_2702DA4BC();
  sub_2702CE480();
  v1 = sub_2702DA6FC();
  MEMORY[0x27439D000](v1);

  MEMORY[0x27439D000](0x3A746E65766520, 0xE700000000000000);
  v2 = (v0 + *(type metadata accessor for PushTelemetry(0) + 20));
  v5 = *v2;
  v6 = *(v2 + 8);
  v3 = PushTelemetryEvent.description.getter();
  MEMORY[0x27439D000](v3);

  return 0x3A656D6974;
}

uint64_t sub_2702D8EF8()
{
  v0 = type metadata accessor for ULPNHeuristics(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2702D8F94();
  qword_2807CD778 = result;
  return result;
}

uint64_t static ULPNHeuristics.shared.getter()
{
  if (qword_2807CD588 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2702D8F94()
{
  v1 = v0;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = type metadata accessor for PushHeuristics(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_2702C96A8();
  sub_2702DA4DC();
  v5 = sub_2702DA4CC();
  v6 = sub_2702DA5CC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2702D949C(0x292874696E69, 0xE600000000000000, &v10);
    _os_log_impl(&dword_2702C7000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x27439D570](v8, -1, -1);
    MEMORY[0x27439D570](v7, -1, -1);
  }

  return v1;
}

uint64_t sub_2702D9108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2702DA4CC();
  v7 = sub_2702DA5CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_2702D949C(0xD00000000000001FLL, 0x80000002702DC0B0, &v11);
    _os_log_impl(&dword_2702C7000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x27439D570](v9, -1, -1);
    MEMORY[0x27439D570](v8, -1, -1);
  }

  *(v3 + 24) = a2;

  return MEMORY[0x2821FEC20](v3 + 16, a1);
}

uint64_t sub_2702D923C(unsigned __int8 *a1, void **a2)
{
  v3 = *a2;
  v4 = *(v2 + 32);
  v6 = *a1;
  return sub_2702CAB50(&v6, v3);
}

void sub_2702D9278(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *a1;
  sub_2702CC9F0(&v4, a2);
}

uint64_t ULPNHeuristics.deinit()
{
  sub_2702D2EFC(v0 + 16);
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14ULPNHeuristics_log;
  v3 = sub_2702DA4EC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t ULPNHeuristics.__deallocating_deinit()
{
  sub_2702D2EFC((v0 + 16));
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC29ULPNHeuristicsClientFramework14ULPNHeuristics_log;
  v3 = sub_2702DA4EC();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2702D93CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2702D9440(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2702D949C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2702D949C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2702D9568(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2702D660C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2702D9568(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2702D9674(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2702DA69C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2702D9674(uint64_t a1, unint64_t a2)
{
  v4 = sub_2702D96C0(a1, a2);
  sub_2702D97F0(&unk_28803C260);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2702D96C0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2702D98DC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2702DA69C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2702DA5AC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2702D98DC(v10, 0);
        result = sub_2702DA67C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2702D97F0(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2702D9950(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2702D98DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CD7D0, &qword_2702DB938);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2702D9950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2807CD7D0, &qword_2702DB938);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_2702D9A44(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_2702D9A58()
{
  result = qword_2807CD798;
  if (!qword_2807CD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD798);
  }

  return result;
}

unint64_t sub_2702D9AB0()
{
  result = qword_2807CD7A0;
  if (!qword_2807CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD7A0);
  }

  return result;
}

unint64_t sub_2702D9B08()
{
  result = qword_2807CD7A8;
  if (!qword_2807CD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2807CD7A8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2702D9BB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2702D9BFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2702D9C6C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2702D9CB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Application(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Application(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29ULPNHeuristicsClientFramework20PushDisconnectErrorsO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2702D9E38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2702D9E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2702D9EC4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_29ULPNHeuristicsClientFramework18PushTelemetryEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_2702D9F08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 9))
  {
    return (*a1 + 58);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 8) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x39)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2702D9F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 8) = 0;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_2702D9FC0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t sub_2702DA010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2702DA4BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    v11 = (v10 >> 5) & 0xFFFFFFC7 | (8 * ((v10 >> 2) & 7));
    v12 = v11 ^ 0x3F;
    v13 = 64 - v11;
    if (v12 >= 0x39)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_2702DA0F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2702DA4BC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = a1 + *(a4 + 20);
    *v11 = 0;
    *(v11 + 8) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
  }

  return result;
}

uint64_t sub_2702DA1C0()
{
  result = sub_2702DA4BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2702DA240(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2702DA288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2702DA310()
{
  result = sub_2702DA4EC();
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