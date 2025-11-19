void *sub_2324F0F90()
{
  v1 = v0;
  v2 = type metadata accessor for NDFMetricsPayload(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD934F0, &qword_232547D50);
  v6 = *v0;
  v7 = sub_232546498();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_2324F1A48(*(v6 + 56) + v23, v5, type metadata accessor for NDFMetricsPayload);
        *(*(v8 + 48) + v21) = v22;
        result = sub_2324F0C18(v5, *(v8 + 56) + v23);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void (*sub_2324F11B0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_2325456F8();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_2324E83B0(v7);
  v7[12] = sub_2324F12EC(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_2324E7330;
}

void (*sub_2324F12EC(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = a2;
  *(v9 + 16) = v4;
  v11 = sub_2325456F8();
  *(v10 + 24) = v11;
  v12 = *(v11 - 8);
  *(v10 + 32) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 40) = v13;
  v14 = *v4;
  v15 = sub_2324E6CD4(a2);
  *(v10 + 56) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_2324F0D10();
      v15 = v23;
      goto LABEL_14;
    }

    sub_2324EFCE0(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_2324E6CD4(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_232546668();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 48) = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  *v10 = v26;
  return sub_2324F149C;
}

void sub_2324F149C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 56);
  if (v2)
  {
    v4 = *v1[2];
    v5 = v1[6];
    if ((*a1)[7])
    {
      *(v4[7] + 8 * v5) = v2;
    }

    else
    {
      v8 = v1[5];
      (*(v1[4] + 16))(v8, v1[1], v1[3]);
      sub_2324E83E4(v5, v8, v2, v4);
    }
  }

  else if ((*a1)[7])
  {
    v6 = v1[6];
    v7 = *v1[2];
    (*(v1[4] + 8))(*(v7 + 48) + *(v1[4] + 72) * v6, v1[3]);
    sub_2324F03F0(v6, v7);
  }

  v9 = v1[5];
  v10 = *v1;

  free(v9);

  free(v1);
}

void sub_2324F159C(unsigned __int8 a1, uint64_t a2, double a3, double a4)
{
  if (qword_2814D6418 != -1)
  {
    swift_once();
  }

  v8 = sub_2325458A8();
  __swift_project_value_buffer(v8, qword_2814D6420);
  v9 = sub_232545888();
  v10 = sub_232546208();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19[0] = v12;
    *v11 = 136315906;
    v13 = sub_2324EEC60(a1);
    v15 = sub_2324C2220(v13, v14, v19);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a3;
    *(v11 + 22) = 2048;
    *(v11 + 24) = a2;
    *(v11 + 32) = 2048;
    *(v11 + 34) = a4;
    _os_log_impl(&dword_2324C0000, v9, v10, "Submitting CA telemetry: [event %s, active: %fs, occurrences: %ld, period: %fs]", v11, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x238386450](v12, -1, -1);
    MEMORY[0x238386450](v11, -1, -1);
  }

  v16 = sub_232545F58();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a2;
  v19[4] = sub_2324F2158;
  v19[5] = v17;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2324EEBC4;
  v19[3] = &block_descriptor_24;
  v18 = _Block_copy(v19);

  AnalyticsSendEventLazy();
  _Block_release(v18);
}

void sub_2324F17DC(uint64_t a1, double a2)
{
  v4 = *(**sub_2324C4D38() + 416);

  v6 = v4(v5);

  v7 = 0;
  v8 = a1 + 56;
  do
  {
    v9 = byte_28478E368[v7 + 32];
    if (byte_28478E368[v7 + 32])
    {
      if (*(a1 + 16) && (v10 = *(a1 + 40), sub_2325466F8(), sub_232546718(), v11 = sub_232546738(), v12 = -1 << *(a1 + 32), v13 = v11 & ~v12, ((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (*(*(a1 + 48) + v13) != v9)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v8 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        if (v6)
        {
          if ((v9 - 6) < 3)
          {
            goto LABEL_2;
          }
        }

        else if ((v9 - 9) <= 0xFCu)
        {
LABEL_2:
          sub_2324F159C(v9, 0, 0.0, a2);
        }
      }
    }

    ++v7;
  }

  while (v7 != 10);
}

uint64_t sub_2324F1954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDFMetricsPayload(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324F19B8(uint64_t *a1)
{
  v1 = *a1;
  if (!*(a1 + 8))
  {
    if (*a1 != 3)
    {
      if ((v1 & 0xFF0000) == 0x20000)
      {
        if (!(((*a1 & 0x100) == 0) | *a1 & 1))
        {
          return 7;
        }
      }

      else
      {
        v4 = v1 & 0x10100;
        if (v1)
        {
          if (v4 == 0x10000)
          {
            return 8;
          }
        }

        else if (v4 == 256)
        {
          return 7;
        }
      }
    }

    return 6;
  }

  v2 = 0x5040301u >> (8 * v1);
  if (*(a1 + 8) == 1)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2324F1A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2324F1AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2324F1B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93440, &qword_232547AE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324F1B80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93518, &qword_232547D70);
    v3 = sub_2325464B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2324EF34C(v5, v6);
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

uint64_t sub_2324F1C84(uint64_t result)
{
  if (result >= 0xAu)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2324F1C98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2324F1D04()
{
  result = qword_2814D4DC8;
  if (!qword_2814D4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4DC8);
  }

  return result;
}

uint64_t sub_2324F1DC4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F1DFC()
{
  result = sub_232545688();
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

uint64_t getEnumTagSinglePayload for NDFTelemetryEventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDFTelemetryEventType(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2324F206C()
{
  sub_2324F20F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2324F20F0()
{
  if (!qword_2814D4E88)
  {
    sub_232545688();
    v0 = sub_232546318();
    if (!v1)
    {
      atomic_store(v0, &qword_2814D4E88);
    }
  }
}

unint64_t sub_2324F2158()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93508, &qword_232547D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_232547AC0;
  *(inited + 32) = 0x4E6D6F74706D7973;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = sub_2325466E8();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x800000023254C770;
  *(inited + 72) = sub_232546178();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x800000023254C790;
  *(inited + 96) = sub_232546178();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x800000023254C7B0;
  *(inited + 120) = sub_2325461B8();
  v6 = sub_2324F1B80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93510, &qword_232547D68);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_2324F22A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2324F22F0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2324F2338()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2324C2910;

  return sub_2324EA11C(v3, v4, v5, v2);
}

uint64_t sub_2324F23D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F4618();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324F2444@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324F2518()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe);
  v2 = *(**sub_2324C4D38() + 296);

  v4 = v2(v3);

  v5 = *(*v1 + 160);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 24) = v7;
  *v7 = v0;
  v7[1] = sub_2324CB414;
  v8.n128_f64[0] = v4;

  return v10(v8);
}

uint64_t sub_2324F26AC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = sub_2324DA960(a1, a2, a3, a4);
  sub_2324DB3E4(a1, a2);
  sub_2324DB3E4(a3, a4);
  v11 = sub_232545888();
  v12 = sub_2325461D8();
  sub_2324DB44C(a1, a2);
  sub_2324DB44C(a3, a4);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136316162;
    v15 = sub_2325455B8();
    v17 = sub_2324C2220(v15, v16, &v22);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = sub_2325455B8();
    v20 = sub_2324C2220(v18, v19, &v22);

    *(v13 + 14) = v20;
    *(v13 + 22) = 1024;
    *(v13 + 24) = a5;
    *(v13 + 28) = 1024;
    *(v13 + 30) = v10 & 1;
    *(v13 + 34) = 1024;
    *(v13 + 36) = v10 & 1;
    _os_log_impl(&dword_2324C0000, v11, v12, "Compared DOI: %s with Primary: %s for af: %d, match: %{BOOL}d, sigsMatch: %{BOOL}d", v13, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v14, -1, -1);
    MEMORY[0x238386450](v13, -1, -1);
  }

  return v10 & 1;
}

uint64_t sub_2324F2874(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 192) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for NDFDevice();
  *(v4 + 40) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v8 = sub_2325456F8();
  *(v4 + 128) = v8;
  v9 = *(v8 - 8);
  *(v4 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324F2A10, v3, 0);
}

uint64_t sub_2324F2A10()
{
  v200 = v0;
  v1 = *(**sub_2324C4D38() + 416);

  v3 = v1(v2);

  if ((v3 & 1) == 0)
  {
    v9 = *(v0 + 32) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
    v10 = sub_232545888();
    v11 = sub_2325461F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Skip misconfig detect: Not allowed on this platform";
LABEL_14:
      _os_log_impl(&dword_2324C0000, v10, v11, v13, v12, 2u);
      MEMORY[0x238386450](v12, -1, -1);
    }

LABEL_15:

LABEL_16:
    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v45 = *(v0 + 112);
    v44 = *(v0 + 120);
    v47 = *(v0 + 96);
    v46 = *(v0 + 104);
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    v51 = *(v0 + 64);
    v50 = *(v0 + 72);
    v192 = *(v0 + 56);
    v196 = *(v0 + 48);

    v52 = *(v0 + 8);

    return v52();
  }

  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 40);
  sub_2324C1D3C(*(v0 + 16) + *(v7 + 28), v6);
  v8 = *(v5 + 48);
  if (v8(v6, 1, v4) == 1)
  {
    sub_2324F41C8(*(v0 + 120));
    goto LABEL_12;
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  v16 = *(v0 + 24);
  v17 = *(*(v0 + 136) + 32);
  v17(*(v0 + 152), *(v0 + 120), v14);
  sub_2324C1D3C(v16 + *(v7 + 28), v15);
  v18 = v8(v15, 1, v14);
  v19 = *(v0 + 152);
  if (v18 == 1)
  {
    v20 = *(v0 + 112);
    (*(*(v0 + 136) + 8))(*(v0 + 152), *(v0 + 128));
    sub_2324F41C8(v20);
    goto LABEL_12;
  }

  v17(*(v0 + 144), *(v0 + 112), *(v0 + 128));
  if ((sub_2325456C8() & 1) == 0)
  {
    v38 = *(v0 + 152);
    v39 = *(v0 + 128);
    v40 = *(*(v0 + 136) + 8);
    v40(*(v0 + 144), v39);
    v40(v38, v39);
LABEL_12:
    v41 = *(v0 + 32) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
    v10 = sub_232545888();
    v11 = sub_232546208();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Skip misconfig detect: DOI and Primary not in same HomeKit group";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v21 = *(v0 + 96);
  v22 = *(v0 + 24);
  v23 = *(v0 + 32);
  sub_2324CE250(*(v0 + 16), *(v0 + 104));
  sub_2324CE250(v22, v21);
  v24 = sub_232545888();
  v25 = sub_232546208();
  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 96);
  v27 = *(v0 + 104);
  if (v26)
  {
    v29 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v199 = v195;
    *v29 = 136315394;
    v30 = sub_2324F6270();
    v32 = v31;
    sub_2324CE2B4(v27);
    v33 = sub_2324C2220(v30, v32, &v199);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    v34 = sub_2324F6270();
    v36 = v35;
    sub_2324CE2B4(v28);
    v37 = sub_2324C2220(v34, v36, &v199);

    *(v29 + 14) = v37;
    _os_log_impl(&dword_2324C0000, v24, v25, "Detecting misconfig of DOI: %s against Primary: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v195, -1, -1);
    MEMORY[0x238386450](v29, -1, -1);
  }

  else
  {

    sub_2324CE2B4(v28);
    sub_2324CE2B4(v27);
  }

  if (*(v0 + 192) != 1)
  {
    v65 = *(*(v0 + 40) + 32);
    v66 = *(v0 + 16) + v65;
    v67 = *(v66 + 8);
    if (v67 >> 60 == 15 || (v68 = (*(v0 + 24) + v65), v69 = v68[1], v69 >> 60 == 15))
    {
      v70 = sub_232545888();
      v71 = sub_232546208();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_2324C0000, v70, v71, "Cannot compare IPv4 network signatures", v72, 2u);
        MEMORY[0x238386450](v72, -1, -1);
      }

      v73 = 0;
    }

    else
    {
      v74 = *v66;
      v75 = *v68;
      v76 = *(**(v0 + 32) + 112);
      sub_2324DB3D0(*v66, *(v66 + 8));
      sub_2324DB3D0(v75, v69);
      v77 = v76(v74, v67, v75, v69, 2);
      sub_2324DB438(v74, v67);
      v73 = v77;
      sub_2324DB438(v75, v69);
    }

    v78 = *(*(v0 + 40) + 36);
    v79 = (*(v0 + 16) + v78);
    v80 = v79[1];
    v189 = v73;
    if (v80 >> 60 == 15 || (v81 = (*(v0 + 24) + v78), v82 = v81[1], v82 >> 60 == 15))
    {
      v83 = sub_232545888();
      v84 = sub_232546208();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_2324C0000, v83, v84, "Cannot compare IPv6 network signatures", v85, 2u);
        MEMORY[0x238386450](v85, -1, -1);
      }

      v188 = 0;
      v197 = 0;
      LOBYTE(v86) = 0;
      if ((v73 & 1) == 0)
      {
LABEL_69:
        v110 = *(v0 + 40);
        v111 = *(v110 + 40);
        v112 = (*(v0 + 16) + v111);
        v113 = v112[1];
        v194 = v86;
        v191 = v113 && (v114 = (*(v0 + 24) + v111), (v115 = v114[1]) != 0) && (*v112 == *v114 && v113 == v115 || (sub_232546628() & 1) != 0);
        v116 = *(v0 + 80);
        v117 = *(v0 + 24);
        sub_2324CE250(*(v0 + 16), *(v0 + 88));
        sub_2324CE250(v117, v116);
        v118 = sub_232545888();
        v119 = sub_2325461D8();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 88);
        if (v120)
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v199 = v123;
          *v122 = 136315650;
          v124 = (v121 + *(v110 + 40));
          if (v124[1])
          {
            v125 = *v124;
            v126 = v124[1];
          }

          else
          {
            v126 = 0xE300000000000000;
            v125 = 7104878;
          }

          v128 = v0;
          v131 = v0 + 80;
          v129 = *(v0 + 80);
          v130 = *(v131 + 8);

          sub_2324CE2B4(v130);
          v132 = sub_2324C2220(v125, v126, &v199);

          *(v122 + 4) = v132;
          *(v122 + 12) = 2080;
          v133 = (v129 + *(v110 + 40));
          if (v133[1])
          {
            v134 = *v133;
            v135 = v133[1];
          }

          else
          {
            v135 = 0xE300000000000000;
            v134 = 7104878;
          }

          v0 = v128;
          v136 = *(v128 + 80);

          sub_2324CE2B4(v136);
          v137 = sub_2324C2220(v134, v135, &v199);

          *(v122 + 14) = v137;
          *(v122 + 22) = 1024;
          *(v122 + 24) = v191;
          _os_log_impl(&dword_2324C0000, v118, v119, "DOI hashed SSID: %s, Primary hashed SSID: %s, ssidsMatch: %{BOOL}d", v122, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x238386450](v123, -1, -1);
          MEMORY[0x238386450](v122, -1, -1);
        }

        else
        {
          v127 = *(v0 + 80);

          sub_2324CE2B4(v127);
          sub_2324CE2B4(v121);
        }

        if (v197)
        {
          v138 = 0;
        }

        else
        {
          v139 = *(v0 + 40);
          v140 = *(v139 + 56);
          v141 = *(v0 + 16);
          v142 = *(v0 + 24);
          v143 = (v141 + v140);
          v138 = (*(v141 + v140 + 2) & 1) == 0 && (v144 = (v142 + v140), (v144[1] & 1) == 0) && *v143 != *v144;
          v145 = *(v0 + 64);
          sub_2324CE250(v141, *(v0 + 72));
          sub_2324CE250(v142, v145);
          v146 = sub_232545888();
          v147 = sub_2325461D8();
          v148 = os_log_type_enabled(v146, v147);
          v149 = *(v0 + 64);
          v150 = *(v0 + 72);
          if (v148)
          {
            v151 = swift_slowAlloc();
            *v151 = 33555200;
            v152 = v150 + *(v139 + 56);
            v153 = v138;
            if (*(v152 + 2))
            {
              v154 = -1;
            }

            else
            {
              v154 = *v152;
            }

            sub_2324CE2B4(v150);
            *(v151 + 4) = v154;
            v138 = v153;
            *(v151 + 6) = 512;
            v155 = v149 + *(v139 + 56);
            if (*(v155 + 2))
            {
              v156 = -1;
            }

            else
            {
              v156 = *v155;
            }

            sub_2324CE2B4(v149);
            *(v151 + 8) = v156;
            *(v151 + 10) = 1024;
            *(v151 + 12) = v153;
            _os_log_impl(&dword_2324C0000, v146, v147, "DOI natCountV4: %hd, Primary natCountV4: %hd, doubleNAT: %{BOOL}d", v151, 0x10u);
            MEMORY[0x238386450](v151, -1, -1);
          }

          else
          {
            sub_2324CE2B4(*(v0 + 64));
            sub_2324CE2B4(v150);
          }
        }

        v157 = *(v0 + 48);
        v158 = *(v0 + 24);
        sub_2324CE250(*(v0 + 16), *(v0 + 56));
        sub_2324CE250(v158, v157);
        v159 = sub_232545888();
        v160 = sub_232546208();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = *(v0 + 128);
          v162 = *(v0 + 56);
          v187 = v0;
          v163 = *(v0 + 48);
          v164 = swift_slowAlloc();
          v186 = swift_slowAlloc();
          v199 = v186;
          *v164 = 136316930;
          sub_2324F4230();
          v165 = v138;
          v166 = sub_232546608();
          v168 = v167;
          sub_2324CE2B4(v162);
          v169 = v166;
          v138 = v165;
          v170 = sub_2324C2220(v169, v168, &v199);

          *(v164 + 4) = v170;
          *(v164 + 12) = 2080;
          v171 = sub_232546608();
          v173 = v172;
          v174 = v163;
          v0 = v187;
          sub_2324CE2B4(v174);
          v175 = sub_2324C2220(v171, v173, &v199);

          *(v164 + 14) = v175;
          *(v164 + 22) = 1024;
          *(v164 + 24) = v189 & 1;
          *(v164 + 28) = 1024;
          *(v164 + 30) = v188 & 1;
          *(v164 + 34) = 1024;
          *(v164 + 36) = v197;
          *(v164 + 40) = 1024;
          *(v164 + 42) = v191;
          *(v164 + 46) = 1024;
          *(v164 + 48) = v165;
          *(v164 + 52) = 1024;
          *(v164 + 54) = v194 & 1;
          _os_log_impl(&dword_2324C0000, v159, v160, "DOI ID: %s, Primary ID: %s, matchSigV4: %{BOOL}d, matchSigV6: %{BOOL}d, sigsMatch: %{BOOL}d, ssidsMatch: %{BOOL}d, doubleNAT: %{BOOL}d, multicastTrafficBlocked: %{BOOL}d", v164, 0x3Au);
          swift_arrayDestroy();
          MEMORY[0x238386450](v186, -1, -1);
          MEMORY[0x238386450](v164, -1, -1);
        }

        else
        {
          v176 = *(v0 + 48);
          v177 = *(v0 + 56);

          sub_2324CE2B4(v176);
          sub_2324CE2B4(v177);
        }

        v178 = *sub_2324C8418();
        if (v178)
        {
          v179 = *(v178 + 128);
          *(v0 + 176) = v179;
          v180 = *(*v179 + 448);

          v190 = (v180 + *v180);
          v181 = v180[1];
          v182 = swift_task_alloc();
          *(v0 + 184) = v182;
          *v182 = v0;
          v182[1] = sub_2324F3E58;
          v59 = *(v0 + 16);
          v62 = v194 & 1;
          v60 = v197;
          v61 = v138;
          v63 = 1;
          v64 = v190;
          goto LABEL_107;
        }

LABEL_110:
        v183 = *(v0 + 152);
        v184 = *(v0 + 128);
        v185 = *(*(v0 + 136) + 8);
        v185(*(v0 + 144), v184);
        v185(v183, v184);
        goto LABEL_16;
      }
    }

    else
    {
      v87 = *v79;
      v88 = *v81;
      v89 = *(**(v0 + 32) + 112);
      sub_2324DB3D0(*v79, v80);
      sub_2324DB3D0(v88, v82);
      v90 = v89(v87, v80, v88, v82, 30);
      sub_2324DB438(v87, v80);
      sub_2324DB438(v88, v82);
      if (((v189 | v90) & 1) == 0)
      {
        v188 = 0;
        v197 = 0;
        LOBYTE(v86) = 0;
        goto LABEL_69;
      }

      v188 = v189 ^ 1 | v90;
    }

    v91 = *(*(v0 + 40) + 60);
    v92 = *(*(v0 + 24) + v91);
    v86 = *(*(v0 + 16) + v91);
    if (v92 == 2 || v86 == 2)
    {
      v96 = sub_232545888();
      v99 = sub_2325461F8();
      if (os_log_type_enabled(v96, v99))
      {
        v98 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v199 = v198;
        *v98 = 136315394;
        v100 = 1702195828;
        if ((v86 & 1) == 0)
        {
          v100 = 0x65736C6166;
        }

        v101 = 0xE500000000000000;
        if (v86)
        {
          v101 = 0xE400000000000000;
        }

        if (v86 == 2)
        {
          v102 = 7104878;
        }

        else
        {
          v102 = v100;
        }

        if (v86 == 2)
        {
          v103 = 0xE300000000000000;
        }

        else
        {
          v103 = v101;
        }

        v104 = sub_2324C2220(v102, v103, &v199);

        *(v98 + 4) = v104;
        *(v98 + 12) = 2080;
        v105 = 0x65736C6166;
        if (v92)
        {
          v105 = 1702195828;
        }

        v106 = 0xE400000000000000;
        if ((v92 & 1) == 0)
        {
          v106 = 0xE500000000000000;
        }

        if (v92 == 2)
        {
          v107 = 7104878;
        }

        else
        {
          v107 = v105;
        }

        if (v92 == 2)
        {
          v108 = 0xE300000000000000;
        }

        else
        {
          v108 = v106;
        }

        v109 = sub_2324C2220(v107, v108, &v199);

        *(v98 + 14) = v109;
        _os_log_impl(&dword_2324C0000, v96, v99, "Cannot determine multicastTrafficBlocked statuses (DOI:%s, main:%s), assuming false", v98, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v198, -1, -1);
        goto LABEL_66;
      }
    }

    else
    {
      v93 = sub_232545888();
      v94 = sub_232546208();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 67109376;
        *(v95 + 4) = v86 & 1;
        *(v95 + 8) = 1024;
        *(v95 + 10) = v92 & 1;
        _os_log_impl(&dword_2324C0000, v93, v94, "DOI multicastTrafficBlocked: %{BOOL}d, Primary multicastTrafficBlocked: %{BOOL}d", v95, 0xEu);
        MEMORY[0x238386450](v95, -1, -1);
      }

      if (((v86 ^ v92) & 1) == 0)
      {
        goto LABEL_68;
      }

      v96 = sub_232545888();
      v97 = sub_2325461F8();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 67109376;
        *(v98 + 4) = v86 & 1;
        *(v98 + 8) = 1024;
        *(v98 + 10) = v92 & 1;
        _os_log_impl(&dword_2324C0000, v96, v97, "multicastTrafficBlocked status mismatch (DOI:%{BOOL}d, main:%{BOOL}d), assuming false", v98, 0xEu);
LABEL_66:
        MEMORY[0x238386450](v98, -1, -1);
      }
    }

    LOBYTE(v86) = 0;
LABEL_68:
    v197 = 1;
    goto LABEL_69;
  }

  v54 = *sub_2324C8418();
  if (!v54)
  {
    goto LABEL_110;
  }

  v55 = *(v54 + 128);
  *(v0 + 160) = v55;
  v56 = *(*v55 + 448);

  v193 = (v56 + *v56);
  v57 = v56[1];
  v58 = swift_task_alloc();
  *(v0 + 168) = v58;
  *v58 = v0;
  v58[1] = sub_2324F3C0C;
  v59 = *(v0 + 16);
  v60 = 1;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = v193;
LABEL_107:

  return v64(v60, v61, v62, v63, v59);
}

uint64_t sub_2324F3C0C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2324F3D38, v3, 0);
}

uint64_t sub_2324F3D38()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v0[17] + 8);
  v3(v0[18], v2);
  v3(v1, v2);
  v5 = v0[18];
  v4 = v0[19];
  v7 = v0[14];
  v6 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[10];
  v10 = v0[11];
  v13 = v0[8];
  v12 = v0[9];
  v16 = v0[7];
  v17 = v0[6];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2324F3E58()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2324F4384, v3, 0);
}

uint64_t sub_2324F3F84()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324F3FFC()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v2 = sub_2325458A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324F4084()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v5 = sub_2324F4618();
  v6 = sub_2325458A8();
  (*(*(v6 - 8) + 16))(v3 + v4, v5, v6);
  v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe;
  type metadata accessor for NDFBonjourProbe();
  *(v3 + v7) = sub_23254318C();
  return v3;
}

uint64_t sub_2324F412C()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_logger;
  v3 = sub_2324F4618();
  v4 = sub_2325458A8();
  (*(*(v4 - 8) + 16))(v1 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore19NDFDetectionManager_bonjourProbe;
  type metadata accessor for NDFBonjourProbe();
  *(v1 + v5) = sub_23254318C();
  return v1;
}

uint64_t sub_2324F41C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2324F4230()
{
  result = qword_2814D62A0;
  if (!qword_2814D62A0)
  {
    sub_2325456F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D62A0);
  }

  return result;
}

uint64_t type metadata accessor for NDFDetectionManager()
{
  result = qword_2814D6C80;
  if (!qword_2814D6C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F42DC()
{
  result = sub_2325458A8();
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

uint64_t sub_2324F4888(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_2325458A8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = sub_2324F5454();
  v7 = *v6;
  v8 = v6[1];

  v10 = a3(v9);
  v11 = *v10;
  v12 = v10[1];

  return sub_232545898();
}

uint64_t sub_2324F4940(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2325458A8();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_2324F49B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2325458A8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_2324F4A50@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = sub_232545A88();
  v2 = *(v1 - 8);
  v74 = v1;
  v75 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v73 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v66 - v6;
  v7 = sub_232545B68();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2325458C8();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v66 - v16;
  v18 = sub_232545688();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2325456F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NDFDevice();
  v28 = (v27 - 8);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2325459B8();
  sub_232545A28();
  (*(v23 + 56))(v17, 1, 1, v22);
  sub_2324FA5C0(v26, v21, 0, 0, v17, 0, 0xF000000000000000, 0, v31, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
  v32 = sub_232545908();
  v34 = v33;
  v35 = &v31[v28[8]];
  v36 = v35[1];

  *v35 = v32;
  v35[1] = v34;
  sub_232545958();
  sub_2324F503C(v17, &v31[v28[9]]);
  v37 = sub_2325459E8();
  v39 = v38;
  v40 = &v31[v28[10]];
  sub_2324DB438(*v40, *(v40 + 1));
  *v40 = v37;
  *(v40 + 1) = v39;
  v41 = sub_232545A08();
  v43 = v42;
  v44 = &v31[v28[11]];
  sub_2324DB438(*v44, *(v44 + 1));
  *v44 = v41;
  *(v44 + 1) = v43;
  v45 = sub_232545928();
  v47 = v46;
  v48 = &v31[v28[12]];
  v49 = v48[1];

  *v48 = v45;
  v48[1] = v47;
  v50 = sub_2325459C8();
  v51 = &v31[v28[16]];
  *v51 = v50;
  v51[2] = BYTE2(v50) & 1;
  LODWORD(v47) = sub_2325458F8();
  v53 = v67;
  v52 = v68;
  (*(v67 + 104))(v13, *MEMORY[0x277D6B2C8], v68);
  LOWORD(v45) = sub_2325458B8();
  (*(v53 + 8))(v13, v52);
  v31[v28[13]] = v47 == v45;
  v54 = sub_232545998();
  LOWORD(v47) = v54;
  v55 = HIWORD(v54) & 1;
  v57 = v69;
  v56 = v70;
  v58 = v71;
  (*(v70 + 104))(v69, *MEMORY[0x277D6B320], v71);
  LODWORD(v45) = sub_2325458B8();
  (*(v56 + 8))(v57, v58);
  if (v45 == v47)
  {
    v59 = v55;
  }

  else
  {
    v59 = 1;
  }

  v31[v28[14]] = v59;
  sub_232545978();
  v60 = v72;
  sub_232545A68();
  v61 = v73;
  sub_232545A58();
  sub_2324F50AC();
  v62 = v74;
  v63 = sub_232546348();
  v64 = *(v75 + 8);
  v64(v61, v62);
  v64(v60, v62);
  v31[v28[17]] = v63 & 1;
  sub_2324CE250(v31, v76);
  return sub_2324CE2B4(v31);
}

uint64_t sub_2324F503C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324F50AC()
{
  result = qword_27DD93278;
  if (!qword_27DD93278)
  {
    sub_232545A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93278);
  }

  return result;
}

uint64_t sub_2324F5138()
{
  sub_232545C38();
  sub_232545D18();

  sub_232545C28();
  sub_232545C18();
  return v1;
}

uint64_t sub_2324F51B4()
{
  sub_232545C38();
  sub_232545CF8();

  sub_232545D08();

  sub_232545D18();

  return v1;
}

uint64_t sub_2324F526C()
{
  v1 = sub_232545BE8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  swift_allocObject();
  v8 = sub_232545C68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93520, &qword_232547E50);
  v9 = *(v2 + 72);
  v10 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_232547AC0;
  v12 = v11 + v10;
  v13 = *(v2 + 104);
  v13(v12, *MEMORY[0x277CD8CC0], v1);
  v13(v12 + v9, *MEMORY[0x277CD8CA0], v1);
  v13(v12 + 2 * v9, *MEMORY[0x277CD8CB0], v1);
  v13(v12 + 3 * v9, *MEMORY[0x277CD8CB8], v1);
  sub_232545C58();
  v13(v5, *MEMORY[0x277CD8CA8], v1);
  sub_232545C48();
  return v8;
}

uint64_t sub_2324F56E0()
{
  v0 = sub_2325458A8();
  __swift_allocate_value_buffer(v0, qword_2814D6EC8);
  v1 = __swift_project_value_buffer(v0, qword_2814D6EC8);
  v2 = sub_2324F4548();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2324F576C()
{
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2325458A8();

  return __swift_project_value_buffer(v0, qword_2814D6EC8);
}

uint64_t sub_2324F57D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2325458A8();
  v3 = __swift_project_value_buffer(v2, qword_2814D6EC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2324F5878@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2325456F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2324F58E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NDFDevice() + 20);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NDFDevice()
{
  result = qword_2814D6820;
  if (!qword_2814D6820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2324F59AC(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFDevice() + 20);
  v4 = sub_232545688();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2324F5A7C()
{
  v1 = (v0 + *(type metadata accessor for NDFDevice() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2324F5ABC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NDFDevice() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2324F5B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2325456F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2324F5BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NDFDevice() + 28);

  return sub_2324C1D3C(v3, a1);
}

uint64_t sub_2324F5BFC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NDFDevice() + 28);

  return sub_2324F503C(a1, v3);
}

uint64_t sub_2324F5C94()
{
  v1 = v0 + *(type metadata accessor for NDFDevice() + 32);
  v2 = *v1;
  sub_2324DB3D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2324F5CD8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NDFDevice() + 32);
  result = sub_2324DB438(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2324F5D68()
{
  v1 = v0 + *(type metadata accessor for NDFDevice() + 36);
  v2 = *v1;
  sub_2324DB3D0(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2324F5DAC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NDFDevice() + 36);
  result = sub_2324DB438(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2324F5E3C()
{
  v1 = (v0 + *(type metadata accessor for NDFDevice() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2324F5E7C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NDFDevice() + 40));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2324F5F38(char a1)
{
  result = type metadata accessor for NDFDevice();
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_2324F5FD4(char a1)
{
  result = type metadata accessor for NDFDevice();
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_2324F604C()
{
  v1 = *(v0 + *(type metadata accessor for NDFDevice() + 52));
}

uint64_t sub_2324F6080(uint64_t a1)
{
  v3 = *(type metadata accessor for NDFDevice() + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2324F6150(int a1)
{
  result = type metadata accessor for NDFDevice();
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t sub_2324F61F8(char a1)
{
  result = type metadata accessor for NDFDevice();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_2324F6270()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v54 - v4;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_2325463D8();
  MEMORY[0x2383855C0](3818569, 0xE300000000000000);
  v6 = sub_2325456F8();
  sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0]);
  v7 = sub_232546608();
  MEMORY[0x2383855C0](v7);

  MEMORY[0x2383855C0](0x3A70756F726720, 0xE700000000000000);
  v8 = type metadata accessor for NDFDevice();
  sub_2324C1D3C(v0 + v8[7], v5);
  v9 = *(v6 - 8);
  if ((*(v9 + 48))(v5, 1, v6) == 1)
  {
    sub_2324C28AC(v5, &unk_27DD932E0, qword_2325472E0);
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v12 = sub_2325456A8();
    v10 = v13;
    (*(v9 + 8))(v5, v6);
    v11 = v12;
  }

  MEMORY[0x2383855C0](v11, v10);

  MEMORY[0x2383855C0](0x6465746164707520, 0xE90000000000003ALL);
  v14 = v8[5];
  sub_232545688();
  sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578]);
  v15 = sub_232546608();
  MEMORY[0x2383855C0](v15);

  MEMORY[0x2383855C0](0x3A676953347620, 0xE700000000000000);
  v16 = (v1 + v8[8]);
  if (v16[1] >> 60 == 15)
  {
    v17 = 0xE300000000000000;
    v18 = 7104878;
  }

  else
  {
    v19 = *v16;
    v18 = sub_2325455B8();
    v17 = v20;
  }

  MEMORY[0x2383855C0](v18, v17);

  MEMORY[0x2383855C0](0x3A676953367620, 0xE700000000000000);
  v21 = (v1 + v8[9]);
  v22 = 0xE300000000000000;
  v23 = 7104878;
  v24 = 0xE300000000000000;
  if (v21[1] >> 60 != 15)
  {
    v25 = *v21;
    v23 = sub_2325455B8();
    v24 = v26;
  }

  MEMORY[0x2383855C0](v23, v24);

  MEMORY[0x2383855C0](0x73624F6469737320, 0xEA0000000000223ALL);
  v27 = (v1 + v8[10]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
  }

  else
  {
    v29 = 7104878;
  }

  if (v28)
  {
    v30 = v27[1];
  }

  else
  {
    v30 = 0xE300000000000000;
  }

  MEMORY[0x2383855C0](v29, v30);

  MEMORY[0x2383855C0](0x3A6C65646F6D2022, 0xE800000000000000);
  v31 = (v1 + v8[6]);
  v32 = v31[1];
  if (v32)
  {
    v33 = *v31;
  }

  else
  {
    v33 = 0x6E776F6E6B6E75;
  }

  if (v32)
  {
    v34 = v31[1];
  }

  else
  {
    v34 = 0xE700000000000000;
  }

  MEMORY[0x2383855C0](v33, v34);

  MEMORY[0x2383855C0](0x3A6E69614D736920, 0xE800000000000000);
  v35 = *(v1 + v8[11]);
  if (v35)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v35)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  if (v35 == 2)
  {
    v38 = 7104878;
  }

  else
  {
    v38 = v36;
  }

  if (v35 == 2)
  {
    v39 = 0xE300000000000000;
  }

  else
  {
    v39 = v37;
  }

  MEMORY[0x2383855C0](v38, v39);

  MEMORY[0x2383855C0](0x636165526E616320, 0xEE003A6E69614D68);
  v40 = *(v1 + v8[12]);
  if (v40)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v40)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  if (v40 == 2)
  {
    v43 = 7104878;
  }

  else
  {
    v43 = v41;
  }

  if (v40 == 2)
  {
    v44 = 0xE300000000000000;
  }

  else
  {
    v44 = v42;
  }

  MEMORY[0x2383855C0](v43, v44);

  MEMORY[0x2383855C0](0x6F4354414E347620, 0xEC0000003A746E75);
  v45 = v1 + v8[14];
  v46 = 7104878;
  if ((*(v45 + 2) & 1) == 0)
  {
    v54[7] = *v45;
    sub_2324F67E0();
    v46 = sub_232546328();
    v22 = v47;
  }

  MEMORY[0x2383855C0](v46, v22);

  MEMORY[0x2383855C0](0xD000000000000012, 0x800000023254CB20);
  v48 = *(v1 + v8[15]);
  if (v48)
  {
    v49 = 1702195828;
  }

  else
  {
    v49 = 0x65736C6166;
  }

  if (v48)
  {
    v50 = 0xE400000000000000;
  }

  else
  {
    v50 = 0xE500000000000000;
  }

  if (v48 == 2)
  {
    v51 = 7104878;
  }

  else
  {
    v51 = v49;
  }

  if (v48 == 2)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = v50;
  }

  MEMORY[0x2383855C0](v51, v52);

  return v55;
}

unint64_t sub_2324F67E0()
{
  result = qword_2814D4C48;
  if (!qword_2814D4C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814D4C48);
  }

  return result;
}

uint64_t sub_2324F6834(uint64_t a1)
{
  v3 = sub_2325456F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  v17 = type metadata accessor for NDFDevice();
  v18 = v17[7];
  v19 = *(v13 + 56);
  sub_2324C1D3C(v1 + v18, v16);
  v32 = a1;
  sub_2324C1D3C(a1 + v18, &v16[v19]);
  v20 = *(v4 + 48);
  if (v20(v16, 1, v3) == 1)
  {
    if (v20(&v16[v19], 1, v3) == 1)
    {
      sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
      v21 = 0;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_2324C1D3C(v16, v11);
  if (v20(&v16[v19], 1, v3) == 1)
  {
    (*(v4 + 8))(v11, v3);
LABEL_6:
    sub_2324C28AC(v16, &qword_27DD93290, &qword_2325477E0);
    v21 = 1;
    goto LABEL_8;
  }

  (*(v4 + 32))(v7, &v16[v19], v3);
  sub_2324FB2F4(&qword_2814D4E80, MEMORY[0x277CC95F0]);
  v22 = sub_232545F48();
  v23 = *(v4 + 8);
  v23(v7, v3);
  v23(v11, v3);
  sub_2324C28AC(v16, &unk_27DD932E0, qword_2325472E0);
  v21 = v22 ^ 1;
LABEL_8:
  v24 = v17[11];
  v25 = *(v1 + v24);
  v26 = *(v32 + v24);
  if (v25 == 2)
  {
    if (v26 == 2)
    {
      goto LABEL_14;
    }

LABEL_13:
    v21 = 1;
    goto LABEL_14;
  }

  if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  v27 = v17[12];
  v28 = *(v1 + v27);
  v29 = *(v32 + v27);
  if (v28 == 2)
  {
    if (v29 == 2)
    {
      return v21 & 1;
    }

    goto LABEL_19;
  }

  if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
LABEL_19:
    v21 = 1;
  }

  return v21 & 1;
}

uint64_t sub_2324F6BBC(uint64_t a1)
{
  v3 = type metadata accessor for NDFDevice();
  v4 = *(v3 + 32);
  v6 = *(v1 + v4);
  v5 = *(v1 + v4 + 8);
  v7 = (a1 + v4);
  v9 = *v7;
  v8 = v7[1];
  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_2324DB3D0(v6, v5);
      sub_2324DB3D0(v9, v8);
      sub_2324DB438(v6, v5);
      v10 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v8 >> 60 == 15)
  {
LABEL_5:
    sub_2324DB3D0(v6, v5);
    sub_2324DB3D0(v9, v8);
    sub_2324DB438(v6, v5);
    sub_2324DB438(v9, v8);
    v10 = 1;
    goto LABEL_7;
  }

  sub_2324DB3D0(v6, v5);
  sub_2324DB3D0(v9, v8);
  v11 = sub_2324DA960(v6, v5, v9, v8);
  sub_2324DB438(v9, v8);
  sub_2324DB438(v6, v5);
  v10 = v11 ^ 1;
LABEL_7:
  v12 = *(v3 + 36);
  v14 = *(v1 + v12);
  v13 = *(v1 + v12 + 8);
  v15 = (a1 + v12);
  v17 = *v15;
  v16 = v15[1];
  if (v13 >> 60 != 15)
  {
    if (v16 >> 60 != 15)
    {
      sub_2324DB3D0(v14, v13);
      sub_2324DB3D0(v17, v16);
      v19 = sub_2324DA960(v14, v13, v17, v16);
      sub_2324DB438(v17, v16);
      sub_2324DB438(v14, v13);
      v18 = v19 ^ 1;
      return (v10 | v18) & 1;
    }

    goto LABEL_11;
  }

  if (v16 >> 60 != 15)
  {
LABEL_11:
    sub_2324DB3D0(v14, v13);
    sub_2324DB3D0(v17, v16);
    sub_2324DB438(v14, v13);
    sub_2324DB438(v17, v16);
    v18 = 1;
    return (v10 | v18) & 1;
  }

  sub_2324DB3D0(v14, v13);
  sub_2324DB3D0(v17, v16);
  sub_2324DB438(v14, v13);
  v18 = 0;
  return (v10 | v18) & 1;
}

uint64_t sub_2324F6DD8(_BYTE *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NDFDevice();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v430 = &v396[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v429 = &v396[-v8];
  v418 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v9 = *(*(v418 - 8) + 64);
  MEMORY[0x28223BE20](v418);
  v419 = &v396[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v409 = &v396[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v408 = &v396[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v420 = &v396[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v421 = &v396[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v410 = &v396[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v425 = &v396[-v24];
  MEMORY[0x28223BE20](v23);
  v424 = &v396[-v25];
  v26 = sub_232545688();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x28223BE20](v26);
  v417 = &v396[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v414 = &v396[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v412 = &v396[-v34];
  v35 = MEMORY[0x28223BE20](v33);
  v413 = &v396[-v36];
  v37 = MEMORY[0x28223BE20](v35);
  v411 = &v396[-v38];
  v39 = MEMORY[0x28223BE20](v37);
  v422 = &v396[-v40];
  v41 = MEMORY[0x28223BE20](v39);
  v423 = &v396[-v42];
  MEMORY[0x28223BE20](v41);
  v44 = &v396[-v43];
  v45 = sub_2325456F8();
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v396[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = MEMORY[0x28223BE20](v47);
  v416 = &v396[-v51];
  v52 = MEMORY[0x28223BE20](v50);
  v415 = &v396[-v53];
  v54 = MEMORY[0x28223BE20](v52);
  v407 = &v396[-v55];
  v56 = MEMORY[0x28223BE20](v54);
  v58 = &v396[-v57];
  MEMORY[0x28223BE20](v56);
  v60 = &v396[-v59];
  v431 = v62;
  v432 = v61;
  v426 = *(v62 + 16);
  v427 = v62 + 16;
  v426(&v396[-v59], v2);
  v433 = v60;
  v63 = sub_2325456C8();
  v434 = a1;
  if ((v63 & 1) == 0)
  {
    if (qword_2814D62F0 != -1)
    {
      swift_once();
    }

    v86 = sub_2325458A8();
    __swift_project_value_buffer(v86, qword_2814D6EC8);
    v88 = v432;
    v87 = v433;
    (v426)(v49, v433, v432);
    v89 = v430;
    sub_2324CE250(v434, v430);
    v90 = sub_232545888();
    v91 = sub_2325461F8();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v434 = swift_slowAlloc();
      v436 = v434;
      *v92 = 136315394;
      sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      LODWORD(v429) = v91;
      v93 = sub_232546608();
      v95 = v94;
      v96 = *(v431 + 8);
      v96(v49, v88);
      v97 = sub_2324C2220(v93, v95, &v436);

      *(v92 + 4) = v97;
      *(v92 + 12) = 2080;
      v98 = sub_232546608();
      v100 = v99;
      sub_2324CE2B4(v89);
      v101 = sub_2324C2220(v98, v100, &v436);

      *(v92 + 14) = v101;
      _os_log_impl(&dword_2324C0000, v90, v429, "  [skipping update for differing device IDs: self %s new %s]", v92, 0x16u);
      v102 = v434;
      swift_arrayDestroy();
      MEMORY[0x238386450](v102, -1, -1);
      MEMORY[0x238386450](v92, -1, -1);

      v96(v433, v88);
    }

    else
    {

      sub_2324CE2B4(v89);
      v119 = *(v431 + 8);
      v119(v49, v88);
      v119(v87, v88);
    }

    return 0;
  }

  v64 = v4[5];
  v65 = v27[2];
  v428 = v2;
  v406 = v27 + 2;
  v405 = v65;
  v65(v44, (v2 + v64), v26);
  v430 = v4;
  v66 = v4[5];
  sub_2324FB2F4(&unk_2814D4E90, MEMORY[0x277CC9578]);
  if (sub_232545F38())
  {
    if (qword_2814D62F0 != -1)
    {
      swift_once();
    }

    v67 = sub_2325458A8();
    __swift_project_value_buffer(v67, qword_2814D6EC8);
    v68 = v417;
    v405(v417, v44, v26);
    v69 = v429;
    sub_2324CE250(v434, v429);
    v70 = sub_232545888();
    v71 = sub_2325461D8();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v404 = v44;
      v74 = v27;
      v434 = v73;
      v436 = v73;
      *v72 = 136315394;
      sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578]);
      LODWORD(v428) = v71;
      v75 = sub_232546608();
      v77 = v76;
      v78 = v74[1];
      v78(v68, v26);
      v79 = sub_2324C2220(v75, v77, &v436);

      *(v72 + 4) = v79;
      *(v72 + 12) = 2080;
      v80 = v69 + v430[5];
      v81 = sub_232546608();
      v83 = v82;
      sub_2324CE2B4(v69);
      v84 = sub_2324C2220(v81, v83, &v436);

      *(v72 + 14) = v84;
      _os_log_impl(&dword_2324C0000, v70, v428, "  [skipping update for stale information: self %s new %s]", v72, 0x16u);
      v85 = v434;
      swift_arrayDestroy();
      MEMORY[0x238386450](v85, -1, -1);
      MEMORY[0x238386450](v72, -1, -1);

      v78(v404, v26);
    }

    else
    {

      sub_2324CE2B4(v69);
      v120 = v27[1];
      v120(v68, v26);
      v120(v44, v26);
    }

    (*(v431 + 8))(v433, v432);
    return 0;
  }

  v399 = v66;
  v401 = v64;
  v417 = v27;
  v404 = v44;
  v403 = v26;
  v103 = v432;
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v104 = sub_2325458A8();
  v105 = __swift_project_value_buffer(v104, qword_2814D6EC8);
  (v426)(v58, v433, v103);
  v429 = v105;
  v106 = sub_232545888();
  v107 = sub_2325461D8();
  v108 = os_log_type_enabled(v106, v107);
  v110 = v430;
  v109 = v431;
  v111 = v419;
  if (v108)
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v436 = v113;
    *v112 = 136315138;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v114 = sub_232546608();
    v116 = v115;
    v402 = *(v109 + 8);
    v402(v58, v432);
    v117 = sub_2324C2220(v114, v116, &v436);

    *(v112 + 4) = v117;
    _os_log_impl(&dword_2324C0000, v106, v107, "? [[Updating device with ID: %s]]", v112, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v113);
    MEMORY[0x238386450](v113, -1, -1);
    v118 = v112;
    v103 = v432;
    MEMORY[0x238386450](v118, -1, -1);
  }

  else
  {

    v402 = *(v109 + 8);
    v402(v58, v103);
  }

  v122 = v428;
  v123 = v421;
  v124 = v434;
  v397 = sub_2324F6834(v434);
  v400 = sub_2324F6BBC(v124);
  v398 = v110[7];
  v125 = v122 + v398;
  v126 = v424;
  sub_2324C1D3C(v125, v424);
  v127 = v425;
  sub_2324C1D3C(v124 + v110[7], v425);
  v128 = *(v418 + 48);
  sub_2324C1D3C(v126, v111);
  sub_2324C1D3C(v127, v111 + v128);
  v129 = *(v109 + 48);
  if (v129(v111, 1, v103) == 1)
  {
    if (v129(v111 + v128, 1, v103) == 1)
    {
      sub_2324C28AC(v111, &unk_27DD932E0, qword_2325472E0);
LABEL_31:
      v146 = 0;
      v140 = v428;
      v147 = v434;
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v130 = v410;
  sub_2324C1D3C(v111, v410);
  if (v129(v111 + v128, 1, v103) == 1)
  {
    v402(v130, v103);
LABEL_25:
    sub_2324C28AC(v111, &qword_27DD93290, &qword_2325477E0);
    goto LABEL_26;
  }

  v141 = v110;
  v142 = v407;
  (*(v109 + 32))(v407, v111 + v128, v103);
  sub_2324FB2F4(&qword_2814D4E80, MEMORY[0x277CC95F0]);
  v143 = sub_232545F48();
  v144 = v142;
  v110 = v141;
  v123 = v421;
  v145 = v402;
  v402(v144, v103);
  v145(v130, v103);
  sub_2324C28AC(v111, &unk_27DD932E0, qword_2325472E0);
  if (v143)
  {
    goto LABEL_31;
  }

LABEL_26:
  sub_2324C1D3C(v424, v123);
  v131 = v420;
  sub_2324C1D3C(v425, v420);
  v132 = sub_232545888();
  v133 = sub_2325461E8();
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = v103;
    v136 = swift_slowAlloc();
    v436 = v136;
    *v134 = 136315394;
    v137 = v408;
    sub_2324C1D3C(v123, v408);
    if (v129(v137, 1, v135) == 1)
    {
      sub_2324C28AC(v137, &unk_27DD932E0, qword_2325472E0);
      v138 = 0xE300000000000000;
      v139 = 7104878;
    }

    else
    {
      v419 = v132;
      v148 = v133;
      v149 = v136;
      v150 = v137;
      v139 = sub_2325456A8();
      v138 = v151;
      v152 = v150;
      v136 = v149;
      v133 = v148;
      v132 = v419;
      v402(v152, v135);
    }

    sub_2324C28AC(v421, &unk_27DD932E0, qword_2325472E0);
    v153 = sub_2324C2220(v139, v138, &v436);

    *(v134 + 4) = v153;
    *(v134 + 12) = 2080;
    v154 = v409;
    sub_2324C1D3C(v420, v409);
    if (v129(v154, 1, v135) == 1)
    {
      sub_2324C28AC(v154, &unk_27DD932E0, qword_2325472E0);
      v155 = 0xE300000000000000;
      v156 = 7104878;
    }

    else
    {
      v157 = v154;
      v156 = sub_2325456A8();
      v155 = v158;
      v402(v157, v135);
    }

    v140 = v428;
    sub_2324C28AC(v420, &unk_27DD932E0, qword_2325472E0);
    v159 = sub_2324C2220(v156, v155, &v436);

    *(v134 + 14) = v159;
    _os_log_impl(&dword_2324C0000, v132, v133, "  [> updating groupUUID from %s) -> %s]", v134, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v136, -1, -1);
    MEMORY[0x238386450](v134, -1, -1);
  }

  else
  {

    sub_2324C28AC(v131, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v123, &unk_27DD932E0, qword_2325472E0);
    v140 = v428;
  }

  v147 = v434;
  sub_2324FB16C(v425, v140 + v398);
  v146 = 1;
LABEL_38:
  v160 = v110[12];
  v161 = *(v140 + v160);
  v162 = v147[v160];
  if (v161 == 2)
  {
    if (v162 == 2)
    {
      goto LABEL_66;
    }
  }

  else if (v162 != 2 && ((v161 ^ v162) & 1) == 0)
  {
    goto LABEL_66;
  }

  v163 = sub_232545888();
  v164 = sub_2325461E8();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v436 = v166;
    *v165 = 136315394;
    v167 = 1702195828;
    if ((v161 & 1) == 0)
    {
      v167 = 0x65736C6166;
    }

    v168 = 0xE500000000000000;
    if (v161)
    {
      v168 = 0xE400000000000000;
    }

    if (v161 == 2)
    {
      v169 = 7104878;
    }

    else
    {
      v169 = v167;
    }

    if (v161 == 2)
    {
      v170 = 0xE300000000000000;
    }

    else
    {
      v170 = v168;
    }

    v171 = sub_2324C2220(v169, v170, &v436);

    *(v165 + 4) = v171;
    *(v165 + 12) = 2080;
    v172 = 0x65736C6166;
    if (v162)
    {
      v172 = 1702195828;
    }

    v173 = 0xE500000000000000;
    if (v162)
    {
      v173 = 0xE400000000000000;
    }

    v140 = v428;
    if (v162 == 2)
    {
      v174 = 7104878;
    }

    else
    {
      v174 = v172;
    }

    if (v162 == 2)
    {
      v175 = 0xE300000000000000;
    }

    else
    {
      v175 = v173;
    }

    v110 = v430;
    v176 = sub_2324C2220(v174, v175, &v436);

    *(v165 + 14) = v176;
    _os_log_impl(&dword_2324C0000, v163, v164, "  [> updating canReachPrimaryResident from %s) -> %s]", v165, 0x16u);
    swift_arrayDestroy();
    v177 = v166;
    v147 = v434;
    MEMORY[0x238386450](v177, -1, -1);
    MEMORY[0x238386450](v165, -1, -1);
  }

  *(v140 + v160) = v162;
  v146 = 1;
LABEL_66:
  v178 = v110[11];
  v179 = *(v140 + v178);
  v180 = v147[v178];
  if (v179 == 2)
  {
    if (v180 == 2)
    {
      goto LABEL_94;
    }
  }

  else if (v180 != 2 && ((v179 ^ v180) & 1) == 0)
  {
    goto LABEL_94;
  }

  v181 = sub_232545888();
  v182 = sub_2325461E8();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v436 = v184;
    *v183 = 136315394;
    v185 = 1702195828;
    if ((v179 & 1) == 0)
    {
      v185 = 0x65736C6166;
    }

    v186 = 0xE500000000000000;
    if (v179)
    {
      v186 = 0xE400000000000000;
    }

    if (v179 == 2)
    {
      v187 = 7104878;
    }

    else
    {
      v187 = v185;
    }

    if (v179 == 2)
    {
      v188 = 0xE300000000000000;
    }

    else
    {
      v188 = v186;
    }

    v189 = sub_2324C2220(v187, v188, &v436);

    *(v183 + 4) = v189;
    *(v183 + 12) = 2080;
    v190 = 0x65736C6166;
    if (v180)
    {
      v190 = 1702195828;
    }

    v191 = 0xE500000000000000;
    if (v180)
    {
      v191 = 0xE400000000000000;
    }

    v140 = v428;
    if (v180 == 2)
    {
      v192 = 7104878;
    }

    else
    {
      v192 = v190;
    }

    if (v180 == 2)
    {
      v193 = 0xE300000000000000;
    }

    else
    {
      v193 = v191;
    }

    v110 = v430;
    v194 = sub_2324C2220(v192, v193, &v436);

    *(v183 + 14) = v194;
    _os_log_impl(&dword_2324C0000, v181, v182, "  [> updating isPrimaryResident from %s) -> %s)]", v183, 0x16u);
    swift_arrayDestroy();
    v195 = v184;
    v147 = v434;
    MEMORY[0x238386450](v195, -1, -1);
    MEMORY[0x238386450](v183, -1, -1);
  }

  *(v140 + v178) = v180;
  v146 = 1;
LABEL_94:
  v196 = v110[13];
  v197 = *(v140 + v196);
  v198 = *&v147[v196];
  if (v197)
  {
    if (v198 && (sub_2324FB0DC(*(v140 + v196), *&v147[v196]) & 1) != 0)
    {
      goto LABEL_109;
    }
  }

  else if (!v198)
  {
    goto LABEL_109;
  }

  v199 = sub_232545888();
  v200 = sub_2325461E8();

  if (os_log_type_enabled(v199, v200))
  {
    v201 = swift_slowAlloc();
    v202 = swift_slowAlloc();
    v436 = v202;
    *v201 = 136315394;
    if (v197)
    {
      v203 = MEMORY[0x238385650](v197, MEMORY[0x277D837D0]);
      v205 = v204;
    }

    else
    {
      v205 = 0xE300000000000000;
      v203 = 7104878;
    }

    v206 = sub_2324C2220(v203, v205, &v436);

    *(v201 + 4) = v206;
    *(v201 + 12) = 2080;
    if (v198)
    {
      v207 = MEMORY[0x238385650](v198, MEMORY[0x277D837D0]);
      v209 = v208;
    }

    else
    {
      v209 = 0xE300000000000000;
      v207 = 7104878;
    }

    v210 = sub_2324C2220(v207, v209, &v436);

    *(v201 + 14) = v210;
    _os_log_impl(&dword_2324C0000, v199, v200, "  [> updating dnsServers from %s) -> %s)]", v201, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v202, -1, -1);
    MEMORY[0x238386450](v201, -1, -1);

    v147 = v434;
  }

  else
  {
  }

  *(v140 + v196) = v198;
  v146 = 1;
LABEL_109:
  v211 = v430[8];
  v212 = (v140 + v211);
  v213 = *(v140 + v211);
  v214 = *(v140 + v211 + 8);
  v215 = &v147[v211];
  v217 = *v215;
  v216 = v215[1];
  v418 = v214;
  v420 = v213;
  if (v214 >> 60 == 15)
  {
    if (v216 >> 60 == 15)
    {
      sub_2324DB3D0(v213, v214);
      sub_2324DB3D0(v213, v214);
      sub_2324DB3D0(v217, v216);
      sub_2324DB438(v213, v214);
      goto LABEL_125;
    }
  }

  else if (v216 >> 60 != 15)
  {
    sub_2324DB3D0(v213, v214);
    sub_2324DB3D0(v213, v214);
    sub_2324DB3D0(v217, v216);
    v224 = sub_2324DA960(v213, v214, v217, v216);
    sub_2324DB438(v217, v216);
    sub_2324DB438(v213, v214);
    if (v224)
    {
      goto LABEL_125;
    }

    goto LABEL_114;
  }

  sub_2324DB3D0(v213, v214);
  sub_2324DB3D0(v213, v214);
  sub_2324DB3D0(v217, v216);
  sub_2324DB438(v213, v214);
  sub_2324DB438(v217, v216);
LABEL_114:
  sub_2324DB3D0(v213, v214);
  sub_2324DB3D0(v217, v216);
  v218 = sub_232545888();
  v219 = sub_2325461E8();
  sub_2324DB438(v213, v214);
  sub_2324DB438(v217, v216);
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v436 = v221;
    *v220 = 136315394;
    if (v214 >> 60 == 15)
    {
      v222 = 0xE300000000000000;
      v223 = 7104878;
    }

    else
    {
      v223 = sub_2325455B8();
      v222 = v225;
    }

    v226 = sub_2324C2220(v223, v222, &v436);

    *(v220 + 4) = v226;
    *(v220 + 12) = 2080;
    if (v216 >> 60 == 15)
    {
      v227 = 0xE300000000000000;
      v228 = 7104878;
    }

    else
    {
      v228 = sub_2325455B8();
      v227 = v229;
    }

    v230 = sub_2324C2220(v228, v227, &v436);

    *(v220 + 14) = v230;
    _os_log_impl(&dword_2324C0000, v218, v219, "  [> updating netSignatureV4 from %s) -> %s]", v220, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v221, -1, -1);
    MEMORY[0x238386450](v220, -1, -1);
  }

  v231 = *v212;
  v232 = v212[1];
  sub_2324DB3D0(v217, v216);
  sub_2324DB438(v231, v232);
  *v212 = v217;
  v212[1] = v216;
  v146 = 1;
  v147 = v434;
LABEL_125:
  v233 = v430[9];
  v234 = v428;
  v235 = (v428 + v233);
  v236 = *(v428 + v233 + 8);
  v421 = *(v428 + v233);
  v237 = &v147[v233];
  v239 = *v237;
  v238 = v237[1];
  v240 = v236 >> 60;
  v241 = (v238 >> 60);
  v419 = v236;
  if (v236 >> 60 == 15)
  {
    if (v238 >> 60 == 15)
    {
      v242 = v421;
      sub_2324DB3D0(v421, v236);
      sub_2324DB3D0(v242, v236);
      sub_2324DB3D0(v239, v238);
      sub_2324DB438(v242, v236);
      goto LABEL_142;
    }
  }

  else if (v238 >> 60 != 15)
  {
    v410 = (v238 >> 60);
    v251 = v421;
    sub_2324DB3D0(v421, v236);
    sub_2324DB3D0(v251, v236);
    sub_2324DB3D0(v239, v238);
    v252 = sub_2324DA960(v251, v236, v239, v238);
    sub_2324DB438(v239, v238);
    v253 = v251;
    v241 = v410;
    sub_2324DB438(v253, v236);
    if (v252)
    {
      goto LABEL_142;
    }

    goto LABEL_130;
  }

  v243 = v421;
  sub_2324DB3D0(v421, v236);
  sub_2324DB3D0(v243, v236);
  sub_2324DB3D0(v239, v238);
  sub_2324DB438(v243, v236);
  sub_2324DB438(v239, v238);
LABEL_130:
  v244 = v421;
  sub_2324DB3D0(v421, v236);
  sub_2324DB3D0(v239, v238);
  v245 = sub_232545888();
  v246 = sub_2325461E8();
  sub_2324DB438(v244, v236);
  sub_2324DB438(v239, v238);
  if (os_log_type_enabled(v245, v246))
  {
    v247 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    v436 = v248;
    *v247 = 136315394;
    if (v240 <= 0xE)
    {
      v250 = sub_2325455B8();
      v249 = v254;
    }

    else
    {
      v249 = 0xE300000000000000;
      v250 = 7104878;
    }

    v255 = sub_2324C2220(v250, v249, &v436);

    *(v247 + 4) = v255;
    *(v247 + 12) = 2080;
    if (v241 <= 0xE)
    {
      v257 = sub_2325455B8();
      v256 = v258;
    }

    else
    {
      v256 = 0xE300000000000000;
      v257 = 7104878;
    }

    v259 = sub_2324C2220(v257, v256, &v436);

    *(v247 + 14) = v259;
    _os_log_impl(&dword_2324C0000, v245, v246, "  [> updating netSignatureV6 from %s) -> %s)]", v247, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v248, -1, -1);
    MEMORY[0x238386450](v247, -1, -1);

    v234 = v428;
  }

  else
  {
  }

  v260 = *v235;
  v261 = v235[1];
  sub_2324DB3D0(v239, v238);
  sub_2324DB438(v260, v261);
  *v235 = v239;
  v235[1] = v238;
  v146 = 1;
  v147 = v434;
LABEL_142:
  v262 = v430;
  v263 = v430[6];
  v264 = (v234 + v263);
  v266 = *(v234 + v263);
  v265 = *(v234 + v263 + 8);
  v267 = &v147[v263];
  v268 = *v267;
  v269 = v267[1];
  if (v265)
  {
    if (v269)
    {
      if (v266 == v268 && v265 == v269)
      {
        goto LABEL_161;
      }

      v270 = *v267;
      v271 = v267[1];
      if (sub_232546628())
      {
        goto LABEL_161;
      }
    }
  }

  else if (!v269)
  {
    goto LABEL_161;
  }

  v272 = sub_232545888();
  v273 = sub_2325461E8();

  if (os_log_type_enabled(v272, v273))
  {
    v274 = swift_slowAlloc();
    v275 = swift_slowAlloc();
    v436 = v275;
    *v274 = 136315394;
    if (v265)
    {
      v276 = v265;
    }

    else
    {
      v266 = 7104878;
      v276 = 0xE300000000000000;
    }

    v277 = sub_2324C2220(v266, v276, &v436);

    *(v274 + 4) = v277;
    *(v274 + 12) = 2080;
    if (v269)
    {
      v278 = v268;
    }

    else
    {
      v278 = 7104878;
    }

    if (v269)
    {
      v279 = v269;
    }

    else
    {
      v279 = 0xE300000000000000;
    }

    v280 = sub_2324C2220(v278, v279, &v436);

    *(v274 + 14) = v280;
    _os_log_impl(&dword_2324C0000, v272, v273, "  [> updating deviceModel from %s) -> %s)]", v274, 0x16u);
    swift_arrayDestroy();
    v281 = v275;
    v234 = v428;
    MEMORY[0x238386450](v281, -1, -1);
    v282 = v274;
    v262 = v430;
    MEMORY[0x238386450](v282, -1, -1);
  }

  *v264 = v268;
  v264[1] = v269;
  v146 = 1;
LABEL_161:
  v283 = v262[10];
  v284 = (v234 + v283);
  v286 = *(v234 + v283);
  v285 = *(v234 + v283 + 8);
  v287 = &v434[v283];
  v288 = *v287;
  v289 = v287[1];
  if (v285)
  {
    if (v289)
    {
      if (v286 == v288 && v285 == v289)
      {
        goto LABEL_180;
      }

      v290 = *v287;
      v291 = v287[1];
      if (sub_232546628())
      {
        goto LABEL_180;
      }
    }
  }

  else if (!v289)
  {
    goto LABEL_180;
  }

  v292 = sub_232545888();
  v293 = sub_2325461E8();

  if (os_log_type_enabled(v292, v293))
  {
    v294 = swift_slowAlloc();
    v295 = swift_slowAlloc();
    v436 = v295;
    *v294 = 136315394;
    if (v285)
    {
      v296 = v285;
    }

    else
    {
      v286 = 7104878;
      v296 = 0xE300000000000000;
    }

    v297 = sub_2324C2220(v286, v296, &v436);

    *(v294 + 4) = v297;
    *(v294 + 12) = 2080;
    if (v289)
    {
      v298 = v288;
    }

    else
    {
      v298 = 7104878;
    }

    if (v289)
    {
      v299 = v289;
    }

    else
    {
      v299 = 0xE300000000000000;
    }

    v300 = sub_2324C2220(v298, v299, &v436);

    *(v294 + 14) = v300;
    _os_log_impl(&dword_2324C0000, v292, v293, "  [> updating ssidObscured from %s) -> %s)]", v294, 0x16u);
    swift_arrayDestroy();
    v301 = v295;
    v234 = v428;
    MEMORY[0x238386450](v301, -1, -1);
    v302 = v294;
    v262 = v430;
    MEMORY[0x238386450](v302, -1, -1);
  }

  *v284 = v288;
  v284[1] = v289;
  v146 = 1;
LABEL_180:
  v303 = v262[14];
  v304 = v234 + v303;
  v305 = *(v234 + v303);
  v306 = *(v304 + 2);
  v307 = v434;
  v308 = &v434[v303];
  v309 = *v308;
  v310 = v308[2];
  if (v306)
  {
    if (v308[2])
    {
      goto LABEL_196;
    }
  }

  else
  {
    if (v305 == v309)
    {
      v311 = v308[2];
    }

    else
    {
      v311 = 1;
    }

    if ((v311 & 1) == 0)
    {
      goto LABEL_196;
    }
  }

  v312 = sub_232545888();
  v313 = sub_2325461E8();
  if (os_log_type_enabled(v312, v313))
  {
    v314 = swift_slowAlloc();
    v410 = swift_slowAlloc();
    v436 = v410;
    *v314 = 136315394;
    if (v306)
    {
      v315 = 0xE300000000000000;
      v316 = 7104878;
    }

    else
    {
      v435 = v305;
      sub_2324F67E0();
      v316 = sub_232546328();
      v315 = v317;
    }

    v318 = sub_2324C2220(v316, v315, &v436);

    *(v314 + 4) = v318;
    *(v314 + 12) = 2080;
    if (v310)
    {
      v319 = 0xE300000000000000;
      v320 = 7104878;
    }

    else
    {
      v435 = v309;
      sub_2324F67E0();
      v320 = sub_232546328();
      v319 = v321;
    }

    v322 = sub_2324C2220(v320, v319, &v436);

    *(v314 + 14) = v322;
    _os_log_impl(&dword_2324C0000, v312, v313, "  [> updating natCountV4 from %s) -> %s]", v314, 0x16u);
    v323 = v410;
    swift_arrayDestroy();
    MEMORY[0x238386450](v323, -1, -1);
    MEMORY[0x238386450](v314, -1, -1);
  }

  *v304 = v309;
  *(v304 + 2) = v310;
  v146 = 1;
  v307 = v434;
LABEL_196:
  v324 = v430[15];
  v325 = v428;
  v326 = *(v428 + v324);
  v327 = v307[v324];
  if (v326 == 2)
  {
    if (v327 == 2)
    {
      goto LABEL_224;
    }

LABEL_201:
    v328 = sub_232545888();
    v329 = sub_2325461E8();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      v331 = swift_slowAlloc();
      v436 = v331;
      *v330 = 136315394;
      v332 = 1702195828;
      if ((v326 & 1) == 0)
      {
        v332 = 0x65736C6166;
      }

      v333 = 0xE500000000000000;
      if (v326)
      {
        v333 = 0xE400000000000000;
      }

      if (v326 == 2)
      {
        v334 = 7104878;
      }

      else
      {
        v334 = v332;
      }

      if (v326 == 2)
      {
        v335 = 0xE300000000000000;
      }

      else
      {
        v335 = v333;
      }

      v336 = sub_2324C2220(v334, v335, &v436);

      *(v330 + 4) = v336;
      *(v330 + 12) = 2080;
      v337 = 0x65736C6166;
      if (v327)
      {
        v337 = 1702195828;
      }

      v338 = 0xE500000000000000;
      if (v327)
      {
        v338 = 0xE400000000000000;
      }

      v325 = v428;
      if (v327 == 2)
      {
        v339 = 7104878;
      }

      else
      {
        v339 = v337;
      }

      if (v327 == 2)
      {
        v340 = 0xE300000000000000;
      }

      else
      {
        v340 = v338;
      }

      v341 = sub_2324C2220(v339, v340, &v436);

      *(v330 + 14) = v341;
      _os_log_impl(&dword_2324C0000, v328, v329, "  [> updating multicastTrafficBlocked from %s) -> %s]", v330, 0x16u);
      swift_arrayDestroy();
      v342 = v331;
      v307 = v434;
      MEMORY[0x238386450](v342, -1, -1);
      MEMORY[0x238386450](v330, -1, -1);
    }

    *(v325 + v324) = v327;
    goto LABEL_225;
  }

  if (v327 == 2 || ((v326 ^ v327) & 1) != 0)
  {
    goto LABEL_201;
  }

LABEL_224:
  if (!v146)
  {
    sub_2324DB438(v421, v419);
    sub_2324DB438(v420, v418);
    sub_2324C28AC(v425, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v424, &unk_27DD932E0, qword_2325472E0);
    (*(v417 + 1))(v404, v403);
    v402(v433, v432);
    return 0;
  }

LABEL_225:
  v343 = v423;
  v344 = v403;
  v345 = v405;
  v405(v423, (v325 + v401), v403);
  v346 = v422;
  v345(v422, &v307[v399], v344);
  v347 = v411;
  v345(v411, v343, v344);
  v348 = v413;
  v345(v413, v347, v344);
  v349 = *(v417 + 1);
  v349(v347, v344);
  v350 = v412;
  v345(v412, v346, v344);
  v351 = v414;
  v345(v414, v350, v344);
  v349(v350, v344);
  v352 = sub_232545888();
  v353 = sub_2325461E8();
  v354 = os_log_type_enabled(v352, v353);
  v355 = v433;
  if (v354)
  {
    v356 = swift_slowAlloc();
    v434 = swift_slowAlloc();
    v436 = v434;
    *v356 = 136315394;
    sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578]);
    v357 = sub_232546608();
    v358 = v348;
    v360 = v359;
    v349(v358, v344);
    v361 = sub_2324C2220(v357, v360, &v436);

    *(v356 + 4) = v361;
    *(v356 + 12) = 2080;
    v362 = sub_232546608();
    v364 = v363;
    v349(v351, v344);
    v365 = sub_2324C2220(v362, v364, &v436);
    v346 = v422;

    *(v356 + 14) = v365;
    v355 = v433;
    _os_log_impl(&dword_2324C0000, v352, v353, "  [> updating lastUpdated from %s) -> %s)]", v356, 0x16u);
    v366 = v434;
    swift_arrayDestroy();
    MEMORY[0x238386450](v366, -1, -1);
    MEMORY[0x238386450](v356, -1, -1);
  }

  else
  {

    v349(v351, v344);
    v349(v348, v344);
  }

  v367 = v432;
  v368 = v402;
  v369 = v416;
  v370 = v349;
  (*(v417 + 3))(v428 + v401, v346, v344);
  v371 = v415;
  v372 = v355;
  v373 = v426;
  (v426)(v415, v372, v367);
  v373(v369, v371, v367);
  v368(v371, v367);
  v374 = sub_232545888();
  v375 = sub_232546208();
  if (os_log_type_enabled(v374, v375))
  {
    v434 = v370;
    v376 = v397;
    LODWORD(v429) = v397 | v400;
    v377 = v369;
    v378 = swift_slowAlloc();
    v431 = swift_slowAlloc();
    v436 = v431;
    *v378 = 136315906;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    LODWORD(v430) = v375;
    v379 = sub_232546608();
    v381 = v380;
    v368(v377, v367);
    v382 = sub_2324C2220(v379, v381, &v436);

    *(v378 + 4) = v382;
    *(v378 + 12) = 2080;
    if (v429)
    {
      v383 = 124;
    }

    else
    {
      v383 = 0;
    }

    if (v429)
    {
      v384 = 0xE100000000000000;
    }

    else
    {
      v384 = 0xE000000000000000;
    }

    v385 = sub_2324C2220(v383, v384, &v436);

    *(v378 + 14) = v385;
    *(v378 + 22) = 2080;
    if (v376)
    {
      v386 = 0xD000000000000010;
    }

    else
    {
      v386 = 0;
    }

    if (v376)
    {
      v387 = 0x800000023254CB40;
    }

    else
    {
      v387 = 0xE000000000000000;
    }

    v388 = sub_2324C2220(v386, v387, &v436);

    *(v378 + 24) = v388;
    *(v378 + 32) = 2080;
    if (v400)
    {
      v389 = 0x632067697374656ELL;
    }

    else
    {
      v389 = 0;
    }

    if (v400)
    {
      v390 = 0xEF7C6465676E6168;
    }

    else
    {
      v390 = 0xE000000000000000;
    }

    v391 = sub_2324C2220(v389, v390, &v436);

    *(v378 + 34) = v391;
    _os_log_impl(&dword_2324C0000, v374, v430, "! [[Updated device with ID: %s %s%s%s]]", v378, 0x2Au);
    v392 = v431;
    swift_arrayDestroy();
    MEMORY[0x238386450](v392, -1, -1);
    MEMORY[0x238386450](v378, -1, -1);

    sub_2324DB438(v421, v419);
    sub_2324DB438(v420, v418);
    v393 = v403;
    v394 = v434;
    (v434)(v422, v403);
    v394(v423, v393);
    sub_2324C28AC(v425, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v424, &unk_27DD932E0, qword_2325472E0);
    v394(v404, v393);
    v368(v433, v432);
    return 1;
  }

  else
  {

    sub_2324DB438(v421, v419);
    sub_2324DB438(v420, v418);
    v368(v369, v367);
    v395 = v403;
    (v370)(v346, v403);
    (v370)(v423, v395);
    sub_2324C28AC(v425, &unk_27DD932E0, qword_2325472E0);
    sub_2324C28AC(v424, &unk_27DD932E0, qword_2325472E0);
    (v370)(v404, v395);
    v368(v433, v367);
    return 1;
  }
}

uint64_t sub_2324F98EC()
{
  v1 = sub_2325456F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = sub_232545688();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  sub_232545678();
  v19 = *(type metadata accessor for NDFDevice() + 20);
  (*(v9 + 40))(v0 + v19, v18, v8);
  v53 = v2;
  v54 = v7;
  v20 = *(v2 + 16);
  v20(v7, v0, v1);
  v52 = v9;
  v21 = *(v9 + 16);
  v22 = v0 + v19;
  v23 = v16;
  v24 = v8;
  v21(v23, v22, v8);
  if (qword_2814D62F0 != -1)
  {
    swift_once();
  }

  v25 = sub_2325458A8();
  __swift_project_value_buffer(v25, qword_2814D6EC8);
  v26 = v51;
  v20(v51, v54, v1);
  v21(v13, v23, v24);
  v27 = sub_232545888();
  v28 = sub_232546208();
  v29 = v23;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v50 = v23;
    v31 = v30;
    v49 = swift_slowAlloc();
    v55 = v49;
    *v31 = 136315394;
    sub_2324FB2F4(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v32 = sub_232546608();
    v34 = v33;
    v35 = v1;
    v48 = v1;
    v36 = *(v53 + 8);
    v36(v26, v35);
    v37 = sub_2324C2220(v32, v34, &v55);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2080;
    sub_2324FB2F4(&qword_2814D62B8, MEMORY[0x277CC9578]);
    v38 = sub_232546608();
    v40 = v39;
    v41 = v24;
    v42 = *(v52 + 8);
    v42(v13, v41);
    v43 = sub_2324C2220(v38, v40, &v55);

    *(v31 + 14) = v43;
    _os_log_impl(&dword_2324C0000, v27, v28, "! [[Updated device with ID: %s to the latest timestamp: %s]]", v31, 0x16u);
    v44 = v49;
    swift_arrayDestroy();
    MEMORY[0x238386450](v44, -1, -1);
    MEMORY[0x238386450](v31, -1, -1);

    v42(v50, v41);
    return (v36)(v54, v48);
  }

  else
  {

    v46 = *(v52 + 8);
    v46(v13, v24);
    v47 = *(v53 + 8);
    v47(v26, v1);
    v46(v29, v24);
    return (v47)(v54, v1);
  }
}

uint64_t sub_2324F9DF0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6576726553736E64;
    v6 = 0x746E756F4374616ELL;
    if (a1 != 10)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6373624F64697373;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
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
    v1 = 0x4449656369766564;
    v2 = 0x49555570756F7267;
    if (a1 != 3)
    {
      v2 = 0x616E67695374656ELL;
    }

    v3 = 0x616470557473616CLL;
    if (a1 != 1)
    {
      v3 = 0x6F4D656369766564;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2324F9FB0()
{
  v1 = *v0;
  sub_2325466F8();
  MEMORY[0x238385CF0](v1);
  return sub_232546738();
}

uint64_t sub_2324FA024()
{
  v1 = *v0;
  sub_2325466F8();
  MEMORY[0x238385CF0](v1);
  return sub_232546738();
}

uint64_t sub_2324FA070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2324FB8E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2324FA0B0(uint64_t a1)
{
  v2 = sub_2324FB1DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2324FA0EC(uint64_t a1)
{
  v2 = sub_2324FB1DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2324FA128(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93528, &unk_232547F10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2324FB1DC();
  sub_232546758();
  LOBYTE(v33) = 0;
  sub_2325456F8();
  sub_2324FB2F4(&qword_27DD93530, MEMORY[0x277CC95F0]);
  sub_2325465E8();
  if (!v2)
  {
    v32 = type metadata accessor for NDFDevice();
    v11 = v32[5];
    LOBYTE(v33) = 1;
    sub_232545688();
    sub_2324FB2F4(&qword_27DD93538, MEMORY[0x277CC9578]);
    sub_2325465E8();
    v12 = v32;
    v13 = (v3 + v32[6]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v33) = 2;
    sub_232546588();
    v16 = v12[7];
    LOBYTE(v33) = 3;
    sub_2325465A8();
    v17 = (v3 + v12[8]);
    v18 = v17[1];
    v33 = *v17;
    v34 = v18;
    v35 = 4;
    sub_2324DB3D0(v33, v18);
    sub_2324FB230();
    sub_2325465A8();
    sub_2324DB438(v33, v34);
    v19 = (v3 + v12[9]);
    v20 = v19[1];
    v33 = *v19;
    v34 = v20;
    v35 = 5;
    sub_2324DB3D0(v33, v20);
    sub_2325465A8();
    sub_2324DB438(v33, v34);
    v22 = (v3 + v12[10]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v33) = 6;
    sub_232546588();
    v25 = *(v3 + v12[11]);
    LOBYTE(v33) = 7;
    sub_232546598();
    v26 = *(v3 + v12[12]);
    LOBYTE(v33) = 8;
    sub_232546598();
    v33 = *(v3 + v12[13]);
    v35 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    sub_2324FB390(&qword_27DD93548);
    sub_2325465A8();
    v27 = (v3 + v12[14]);
    v28 = *v27;
    v29 = *(v27 + 2);
    LOBYTE(v33) = 10;
    sub_2325465B8();
    v30 = *(v3 + v32[15]);
    LOBYTE(v33) = 11;
    sub_232546598();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2324FA5C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, __int16 a16, char a17, char a18, char a19)
{
  v25 = sub_2325456F8();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  v26 = type metadata accessor for NDFDevice();
  v27 = v26[5];
  v28 = sub_232545688();
  (*(*(v28 - 8) + 32))(a9 + v27, a2, v28);
  v29 = (a9 + v26[6]);
  *v29 = a3;
  v29[1] = a4;
  result = sub_2324FB284(a5, a9 + v26[7]);
  v31 = (a9 + v26[8]);
  *v31 = a6;
  v31[1] = a7;
  v32 = (a9 + v26[9]);
  *v32 = a8;
  v32[1] = a10;
  v33 = (a9 + v26[10]);
  *v33 = a11;
  v33[1] = a12;
  *(a9 + v26[11]) = a13;
  *(a9 + v26[12]) = a14;
  *(a9 + v26[13]) = a15;
  v34 = a9 + v26[14];
  *v34 = a16;
  *(v34 + 2) = a17 & 1;
  *(a9 + v26[15]) = a19;
  return result;
}

uint64_t sub_2324FA76C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v52 - v5;
  v64 = sub_232545688();
  v66 = *(v64 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93550, &qword_232547F20);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v52 - v16;
  v18 = type metadata accessor for NDFDevice();
  v19 = *(*(v18 - 1) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *(v20 + 20);
  sub_2325455E8();
  v23 = *(v10 + 56);
  v65 = v18[7];
  v23(&v22[v65], 1, 1, v9);
  v24 = &v22[v18[8]];
  v62 = v22;
  v63 = v24;
  *v24 = xmmword_232547F00;
  v25 = &v22[v18[9]];
  v60 = a1;
  v61 = v25;
  *v25 = xmmword_232547F00;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2324FB1DC();
  v58 = v17;
  v27 = v59;
  sub_232546748();
  if (v27)
  {
    v29 = v64;
    v30 = v62;
    __swift_destroy_boxed_opaque_existential_0(v60);
    v31 = v61;
    (*(v66 + 8))(&v30[v67], v29);

    sub_2324C28AC(&v30[v65], &unk_27DD932E0, qword_2325472E0);
    sub_2324DB438(*v63, *(v63 + 1));
    sub_2324DB438(*v31, *(v31 + 1));
  }

  else
  {
    v53 = v18;
    v59 = v10;
    LOBYTE(v68) = 0;
    v28 = sub_2324FB2F4(&qword_27DD93558, MEMORY[0x277CC95F0]);
    sub_232546548();
    v52[2] = v28;
    v32 = v62;
    (*(v59 + 32))(v62, v13, v9);
    LOBYTE(v68) = 1;
    sub_2324FB2F4(&qword_27DD93560, MEMORY[0x277CC9578]);
    v33 = v64;
    sub_232546548();
    v52[3] = v9;
    (*(v66 + 40))(&v32[v67], v8, v33);
    LOBYTE(v68) = 2;
    v34 = sub_2325464E8();
    v35 = &v32[v53[6]];
    *v35 = v34;
    v35[1] = v36;
    v52[1] = v36;
    LOBYTE(v68) = 3;
    sub_232546508();
    sub_2324F503C(v55, &v32[v65]);
    v70 = 4;
    sub_2324FB33C();
    sub_232546508();
    v37 = v68;
    v38 = v69;
    v39 = v63;
    sub_2324DB438(*v63, *(v63 + 1));
    *v39 = v37;
    *(v39 + 1) = v38;
    v70 = 5;
    sub_232546508();
    v40 = v68;
    v41 = v69;
    v42 = v61;
    sub_2324DB438(*v61, *(v61 + 1));
    *v42 = v40;
    *(v42 + 1) = v41;
    LOBYTE(v68) = 6;
    v43 = sub_2325464E8();
    v44 = v53;
    v45 = &v32[v53[10]];
    *v45 = v43;
    v45[1] = v46;
    LOBYTE(v68) = 7;
    v32[v44[11]] = sub_2325464F8();
    LOBYTE(v68) = 8;
    v32[v44[12]] = sub_2325464F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93210, &qword_232547A00);
    v70 = 9;
    sub_2324FB390(&qword_27DD93570);
    sub_232546508();
    *&v62[v53[13]] = v68;
    LOBYTE(v68) = 10;
    v47 = sub_232546518();
    v48 = &v62[v53[14]];
    *v48 = v47;
    v48[2] = BYTE2(v47) & 1;
    LOBYTE(v68) = 11;
    LOBYTE(v41) = sub_2325464F8();
    v49 = v53[15];
    (*(v56 + 8))(v58, v57);
    v50 = v62;
    v62[v49] = v41;
    sub_2324CE250(v50, v54);
    __swift_destroy_boxed_opaque_existential_0(v60);
    return sub_2324CE2B4(v50);
  }
}

uint64_t sub_2324FB0DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_232546628() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2324FB16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2324FB1DC()
{
  result = qword_27DD93E48[0];
  if (!qword_27DD93E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD93E48);
  }

  return result;
}

unint64_t sub_2324FB230()
{
  result = qword_27DD93540;
  if (!qword_27DD93540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93540);
  }

  return result;
}

uint64_t sub_2324FB284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2324FB2F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2324FB33C()
{
  result = qword_27DD93568;
  if (!qword_27DD93568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD93568);
  }

  return result;
}

uint64_t sub_2324FB390(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2324FB424()
{
  sub_2325456F8();
  if (v0 <= 0x3F)
  {
    sub_232545688();
    if (v1 <= 0x3F)
    {
      sub_2324FB644(319, &qword_2814D4F28);
      if (v2 <= 0x3F)
      {
        sub_2324FB588();
        if (v3 <= 0x3F)
        {
          sub_2324FB644(319, &unk_2814D62C0);
          if (v4 <= 0x3F)
          {
            sub_2324FB644(319, &qword_2814D4EE8);
            if (v5 <= 0x3F)
            {
              sub_2324FB5E0();
              if (v6 <= 0x3F)
              {
                sub_2324FB644(319, &qword_2814D4C40);
                if (v7 <= 0x3F)
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

void sub_2324FB588()
{
  if (!qword_2814D6298)
  {
    sub_2325456F8();
    v0 = sub_232546318();
    if (!v1)
    {
      atomic_store(v0, &qword_2814D6298);
    }
  }
}

void sub_2324FB5E0()
{
  if (!qword_2814D4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD93210, &qword_232547A00);
    v0 = sub_232546318();
    if (!v1)
    {
      atomic_store(v0, &qword_2814D4F08);
    }
  }
}

void sub_2324FB644(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_232546318();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NDFDevice.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NDFDevice.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2324FB7E4()
{
  result = qword_27DD94050[0];
  if (!qword_27DD94050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94050);
  }

  return result;
}

unint64_t sub_2324FB83C()
{
  result = qword_27DD94160;
  if (!qword_27DD94160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD94160);
  }

  return result;
}

unint64_t sub_2324FB894()
{
  result = qword_27DD94168[0];
  if (!qword_27DD94168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD94168);
  }

  return result;
}

uint64_t sub_2324FB8E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v4 || (sub_232546628() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574 || (sub_232546628() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_232546628() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x49555570756F7267 && a2 == 0xE900000000000044 || (sub_232546628() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x616E67695374656ELL && a2 == 0xEE00345665727574 || (sub_232546628() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616E67695374656ELL && a2 == 0xEE00365665727574 || (sub_232546628() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6373624F64697373 && a2 == 0xEC00000064657275 || (sub_232546628() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023254CB60 == a2 || (sub_232546628() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254CB80 == a2 || (sub_232546628() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576726553736E64 && a2 == 0xEA00000000007372 || (sub_232546628() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746E756F4374616ELL && a2 == 0xEA00000000003456 || (sub_232546628() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023254CBA0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_232546628();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_2324FBD38()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
}

uint64_t sub_2324FBD70(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  *(v1 + 120) = a1;
}

uint64_t sub_2324FBE08@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2324F45B0();
  v3 = sub_2325458A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v2, v3);
}

uint64_t sub_2324FBE78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v4 = sub_2325458A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2324FBEFC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2324FBFDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2324FC06C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  swift_beginAccess();
  v4 = sub_232545688();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2324FC0F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  swift_beginAccess();
  v4 = sub_232545688();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_2324FC1E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_2324FC21C();
  return v3;
}

uint64_t sub_2324FC21C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93630, &qword_232547550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v132 = &v105 - v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D0, &unk_2325480E0);
  v130 = *(v127 - 8);
  v5 = *(v130 + 64);
  MEMORY[0x28223BE20](v127);
  v119 = &v105 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v129 = *(v131 - 8);
  v7 = v129[8];
  v8 = MEMORY[0x28223BE20](v131);
  v122 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v128 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v120 = *(v11 - 8);
  v121 = v11;
  v12 = *(v120 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v118 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v124 = v17;
  v125 = &v105 - v16;
  MEMORY[0x28223BE20](v15);
  v126 = &v105 - v18;
  v19 = sub_232545688();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v115 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v116 = (&v105 - v24);
  v25 = sub_2325458A8();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v109 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v110 = (&v105 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v114 = &v105 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v105 - v35;
  v37 = sub_2325456F8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 8);
  v40 = MEMORY[0x28223BE20](v37);
  v111 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v113 = &v105 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v105 - v44;
  swift_defaultActor_initialize();
  v46 = MEMORY[0x277D84F98];
  *(v1 + 112) = MEMORY[0x277D84F98];
  v112 = (v1 + 112);
  *(v1 + 120) = v46;
  v47 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v48 = sub_2324F45B0();
  v117 = v26;
  v49 = *(v26 + 16);
  v49(v1 + v47, v48, v25);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest) = MEMORY[0x277D84FA0];
  sub_2325455E8();
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted) = 0;
  v50 = sub_2324C1C94();
  swift_beginAccess();
  sub_2324CF3C4(v50, v36, &unk_27DD932E0, qword_2325472E0);
  v51 = (*(v38 + 6))(v36, 1, v37);
  v123 = v1;
  if (v51 != 1)
  {
    v110 = v38;
    (*(v38 + 4))(v45, v36, v37);
    v56 = MobileGestalt_get_current_device();
    v57 = v45;
    if (v56)
    {
      v58 = v56;
      v59 = MobileGestalt_copy_productType_obj();
      if (v59)
      {
        v60 = v59;
        v61 = sub_232545F68();
        v63 = v62;

LABEL_13:
        v68 = v110;
        v69 = v110[2];
        v70 = v113;
        v71 = v57;
        (v69)(v113, v57, v37);
        v72 = v111;
        (v69)(v111, v71, v37);
        v73 = v114;
        v74 = v68[7](v114, 1, 1, v37);
        v75 = v115;
        sub_2324FBCE4(v74);
        v76 = v116;
        sub_2324FA5C0(v72, v75, v61, v63, v73, 0, 0xF000000000000000, 0, v116, 0xF000000000000000, 0, 0, 2, 2, 0, 0, 1, 0, 2);
        v77 = type metadata accessor for NDFDevice();
        (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
        swift_beginAccess();
        sub_2324FCF78(v76, v70);
        swift_endAccess();
        (v68[1])(v71, v37);
        v1 = v123;
        goto LABEL_14;
      }
    }

    else
    {
      v64 = v109;
      v49(v109, v1 + v47, v25);
      v65 = sub_232545888();
      v66 = sub_232546208();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2324C0000, v65, v66, "Unable to access MobileGestalt. Cannot determine device model", v67, 2u);
        MEMORY[0x238386450](v67, -1, -1);
      }

      (*(v117 + 8))(v64, v25);
    }

    v61 = 0;
    v63 = 0;
    goto LABEL_13;
  }

  sub_2324C28AC(v36, &unk_27DD932E0, qword_2325472E0);
  v52 = v110;
  v49(v110, v1 + v47, v25);
  v53 = sub_232545888();
  v54 = sub_2325461F8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_2324C0000, v53, v54, "No IDS deviceID found for self", v55, 2u);
    MEMORY[0x238386450](v55, -1, -1);
  }

  (*(v117 + 8))(v52, v25);
LABEL_14:
  v78 = sub_232545B08();
  LODWORD(v117) = *MEMORY[0x277D85778];
  v79 = v130;
  v80 = *(v130 + 104);
  v115 = (v130 + 104);
  v116 = v80;
  v81 = v119;
  v82 = v127;
  (v80)(v119);
  v83 = v126;
  v84 = v128;
  v113 = v78;
  sub_232546108();
  v114 = *(v79 + 8);
  v130 = v79 + 8;
  (v114)(v81, v82);
  v85 = v129[2];
  v111 = (v129 + 2);
  v112 = v85;
  v85(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsQueueContinuation, v84, v131);
  v109 = sub_2325460F8();
  v86 = *(v109 - 1);
  v108 = *(v86 + 56);
  v110 = (v86 + 56);
  v108(v132, 1, 1, v109);
  v87 = v120;
  v107 = *(v120 + 16);
  v88 = v125;
  v89 = v121;
  v107(v125, v83, v121);
  v105 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v90 = v105;
  v91 = swift_allocObject();
  *(v91 + 16) = 0;
  *(v91 + 24) = 0;
  v106 = *(v87 + 32);
  v92 = v91 + v90;
  v93 = v88;
  v106(v92, v88, v89);
  *(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsTask) = sub_2324C8F70(0, 0, v132, &unk_232548108, v91);
  v94 = v127;
  (v116)(v81, v117, v127);
  v95 = v122;
  sub_232546108();
  (v114)(v81, v94);
  v112(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsQueueContinuation, v95, v131);
  v96 = v132;
  v108(v132, 1, 1, v109);
  v97 = v118;
  v107(v118, v93, v89);
  v98 = v105;
  v99 = swift_allocObject();
  *(v99 + 16) = 0;
  *(v99 + 24) = 0;
  v106(v99 + v98, v97, v89);
  v100 = sub_2324C8F70(0, 0, v96, &unk_232548118, v99);
  v101 = v129[1];
  v102 = v131;
  v101(v95, v131);
  v103 = *(v87 + 8);
  v103(v125, v89);
  v101(v128, v102);
  v103(v126, v89);
  result = v123;
  *(v123 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsTask) = v100;
  return result;
}

uint64_t sub_2324FCF78(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for NDFDevice();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_2324C28AC(a1, &qword_27DD93578, &unk_2325480F0);
    sub_23251CFE8(a2, v8);
    v14 = sub_2325456F8();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_2324C28AC(v8, &qword_27DD93578, &unk_2325480F0);
  }

  else
  {
    sub_23251FBDC(a1, v12, type metadata accessor for NDFDevice);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_23251E238(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_2325456F8();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_2324FD198(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2324C28AC(a1, &unk_27DD932E0, qword_2325472E0);
    sub_23251D184(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_2324C28AC(v8, &unk_27DD932E0, qword_2325472E0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23251E420(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_2324FD388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_232545B08();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v12;
  v13 = *(v12 - 8);
  v4[11] = v13;
  v14 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FD550, 0, 0);
}

uint64_t sub_2324FD550()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2324FD618;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2324FD618()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2324FD714, 0, 0);
}

uint64_t sub_2324FD714()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v8 = sub_232545AF8();
    v0[14] = v9;
    v12 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_2324FD8E0;

    return v12();
  }
}

uint64_t sub_2324FD8E0()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2324FD9F8, 0, 0);
}

uint64_t sub_2324FD9F8()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2324FD618;
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

uint64_t sub_2324FDB08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324FD388(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324FDBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_232545B08();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93330, &unk_2325479B0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93338, qword_232548330);
  v4[10] = v12;
  v13 = *(v12 - 8);
  v4[11] = v13;
  v14 = *(v13 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FDDA4, 0, 0);
}

uint64_t sub_2324FDDA4()
{
  v1 = v0[12];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  sub_232546138();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_2324FDE6C;
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return MEMORY[0x2822003E8](v6, 0, 0, v7);
}

uint64_t sub_2324FDE6C()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2324FDF68, 0, 0);
}

uint64_t sub_2324FDF68()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[8];
    v5 = v0[5];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v3 + 32))(v0[8], v1, v2);
    v8 = sub_232545AF8();
    v0[14] = v9;
    v12 = (v8 + *v8);
    v10 = v8[1];
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_2324FE134;

    return v12();
  }
}

uint64_t sub_2324FE134()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2324FE24C, 0, 0);
}

uint64_t sub_2324FE24C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  sub_232545AE8();
  sub_2325460B8();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_2324FDE6C;
  v9 = v0[12];
  v10 = v0[9];
  v11 = v0[10];

  return MEMORY[0x2822003E8](v10, 0, 0, v11);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2324FE42C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD932D8, &qword_232547810) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2324C290C;

  return sub_2324FDBDC(v4, v5, v6, v0 + v3);
}

uint64_t sub_2324FE500()
{
  v1 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsTask;
  v2 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsTask);

  sub_232546158();

  v3 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsTask;
  v4 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsTask);

  sub_232546158();

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  v7 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v8 = sub_2325458A8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_interfacesOfInterest);

  v10 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_dnsServerRequestsQueueContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = *(v0 + v1);

  v12(v0 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_deviceUpdateRequestsQueueContinuation, v11);
  v14 = *(v0 + v3);

  v15 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_primaryResidentLastUpdated;
  v16 = sub_232545688();
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2324FE6CC()
{
  sub_2324FE500();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2324FE6F8()
{
  v1[10] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_2325456F8();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = type metadata accessor for NDFDevice();
  v1[18] = v6;
  v7 = *(v6 - 8);
  v1[19] = v7;
  v8 = *(v7 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FE8A0, v0, 0);
}

uint64_t sub_2324FE8A0()
{
  v1 = sub_2324C8418();
  v2 = *v1;
  v0[25] = *v1;
  if (v2)
  {
    v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;
    v0[26] = *(*v2 + 168);
    v0[27] = v3;

    return MEMORY[0x2822009F8](sub_2324FEA78, v2, 0);
  }

  else
  {
    v4 = v0[10] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Unable to access persistent storage controller", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v9 = v0[23];
    v8 = v0[24];
    v11 = v0[21];
    v10 = v0[22];
    v12 = v0[20];
    v14 = v0[16];
    v13 = v0[17];
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_2324FEA78()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 80);
  *(v0 + 224) = (*(v0 + 208))();

  return MEMORY[0x2822009F8](sub_2324FEAF4, v3, 0);
}

uint64_t sub_2324FEAF4()
{
  v1 = v0[28];
  if (v1)
  {
    v2 = (*v1 + 152) & 0xFFFFFFFFFFFFLL | 0x562B000000000000;
    v0[29] = *(*v1 + 152);
    v0[30] = v2;

    return MEMORY[0x2822009F8](sub_2324FECB4, v1, 0);
  }

  else
  {
    v3 = v0[10] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v4 = sub_232545888();
    v5 = sub_2325461F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2324C0000, v4, v5, "Unable to access persistent storage controller", v6, 2u);
      MEMORY[0x238386450](v6, -1, -1);
    }

    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];
    v13 = v0[16];
    v12 = v0[17];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_2324FECB4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  *(v0 + 248) = (*(v0 + 232))();
  *(v0 + 256) = 0;
  v3 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_2324FED44, v3, 0);
}

unint64_t sub_2324FED44()
{
  v138 = v0;
  v1 = v0[31];
  v2 = v0[10];

  v3 = sub_232545888();
  v4 = sub_2325461E8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[31];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2324C0000, v3, v4, "Loaded %ld persisted devices", v7, 0xCu);
    MEMORY[0x238386450](v7, -1, -1);
  }

  else
  {
    v8 = v0[31];
  }

  result = v0[31];
  v134 = *(result + 16);
  if (!v134)
  {
LABEL_46:
    v111 = v0[28];

    v113 = v0[23];
    v112 = v0[24];
    v115 = v0[21];
    v114 = v0[22];
    v116 = v0[20];
    v118 = v0[16];
    v117 = v0[17];
    v120 = v0[12];
    v119 = v0[13];
    v121 = v0[11];

    v122 = v0[1];

    return v122();
  }

  v10 = 0;
  v11 = v0[19];
  v12 = v0[15];
  v132 = *(*v0[10] + 168);
  v131 = result + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v135 = (v12 + 16);
  v133 = v11;
  v129 = (v11 + 48);
  v130 = (v11 + 56);
  v124 = v12;
  v128 = (v12 + 8);
  v127 = v0[31];
  while (1)
  {
    if (v10 >= *(result + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    v18 = v0[23];
    v17 = v0[24];
    v19 = *(v133 + 72);
    sub_2324CE250(v131 + v19 * v10, v17);
    sub_2324CE250(v17, v18);
    v20 = sub_232545888();
    v21 = sub_2325461D8();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[23];
    if (v22)
    {
      v24 = v0[14];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v137 = v26;
      *v25 = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v27 = sub_232546608();
      v29 = v28;
      sub_23251FC44(v23, type metadata accessor for NDFDevice);
      v30 = sub_2324C2220(v27, v29, &v137);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_2324C0000, v20, v21, "Loaded device ID %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x238386450](v26, -1, -1);
      MEMORY[0x238386450](v25, -1, -1);
    }

    else
    {

      v31 = sub_23251FC44(v23, type metadata accessor for NDFDevice);
    }

    v32 = v0[10];
    v33 = v132(v31);
    v136 = v19;
    if (*(v33 + 16))
    {
      v34 = sub_2324E6CD4(v0[24]);
      if (v35)
      {
        break;
      }
    }

    v54 = sub_232545888();
    v55 = sub_2325461E8();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2324C0000, v54, v55, "Device is not yet known, inserting", v56, 2u);
      MEMORY[0x238386450](v56, -1, -1);
    }

    v57 = v0[24];
    v58 = v0[18];
    v59 = v0[16];
    v60 = v0[14];
    v61 = v0[10];
    v62 = v0[11];

    v63 = *v135;
    (*v135)(v59, v57, v60);
    sub_2324CE250(v57, v62);
    (*v130)(v62, 0, 1, v58);
    v64 = (*(*v61 + 184))(v0 + 2);
    v66 = v65;
    if ((*v129)(v62, 1, v58) == 1)
    {
      v13 = v0[16];
      v14 = v0[14];
      v15 = v0[12];
      sub_2324C28AC(v0[11], &qword_27DD93578, &unk_2325480F0);
      sub_23251CFE8(v13, v15);
      sub_2324C28AC(v15, &qword_27DD93578, &unk_2325480F0);
      (*v128)(v13, v14);
    }

    else
    {
      v67 = v0[16];
      sub_23251FBDC(v0[11], v0[20], type metadata accessor for NDFDevice);
      v68 = *v66;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v137 = *v66;
      v70 = v137;
      *v66 = 0x8000000000000000;
      result = sub_2324E6CD4(v67);
      v72 = *(v70 + 16);
      v73 = (v71 & 1) == 0;
      v74 = __OFADD__(v72, v73);
      v75 = v72 + v73;
      if (v74)
      {
        goto LABEL_53;
      }

      v76 = v71;
      v126 = v64;
      if (*(v70 + 24) >= v75)
      {
        v79 = v63;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v108 = result;
          sub_23251E7D0();
          result = v108;
        }
      }

      else
      {
        v77 = v0[16];
        sub_23251D31C(v75, isUniquelyReferenced_nonNull_native);
        result = sub_2324E6CD4(v77);
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_49;
        }

        v79 = v63;
      }

      v80 = v137;
      v81 = v0[20];
      v82 = v0[16];
      v83 = v0[14];
      if (v76)
      {
        sub_23251EAE8(v0[20], v137[7] + result * v136);
        (*v128)(v82, v83);
      }

      else
      {
        v137[(result >> 6) + 8] |= 1 << result;
        v84 = result;
        v79(v80[6] + *(v124 + 72) * result, v82, v83);
        sub_23251FBDC(v81, v80[7] + v84 * v136, type metadata accessor for NDFDevice);
        result = (*(v124 + 8))(v82, v83);
        v85 = v80[2];
        v74 = __OFADD__(v85, 1);
        v86 = v85 + 1;
        if (v74)
        {
          goto LABEL_54;
        }

        v80[2] = v86;
      }

      v87 = *v66;
      *v66 = v80;

      v64 = v126;
    }

    v64();
LABEL_8:
    ++v10;
    v16 = v0[24];
    (*(*v0[10] + 368))(v16);
    sub_23251FC44(v16, type metadata accessor for NDFDevice);
    result = v127;
    if (v134 == v10)
    {
      v110 = v0[31];
      goto LABEL_46;
    }
  }

  sub_2324CE250(*(v33 + 56) + v34 * v19, v0[22]);

  v36 = sub_232545888();
  v37 = sub_2325461E8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_2324C0000, v36, v37, "Loaded known device, updating", v38, 2u);
    MEMORY[0x238386450](v38, -1, -1);
  }

  v39 = v0[24];
  v40 = v0[22];
  v42 = v0[17];
  v41 = v0[18];
  v44 = v0[13];
  v43 = v0[14];
  v45 = v0[10];

  sub_2324F6DD8(v39);
  v125 = *v135;
  (*v135)(v42, v39, v43);
  sub_2324CE250(v40, v44);
  (*v130)(v44, 0, 1, v41);
  v46 = (*(*v45 + 184))(v0 + 6);
  v48 = v47;
  v49 = (*v129)(v44, 1, v41);
  v50 = v0[13];
  if (v49 == 1)
  {
    v51 = v0[17];
    v52 = v0[14];
    v53 = v0[12];
    sub_2324C28AC(v50, &qword_27DD93578, &unk_2325480F0);
    sub_23251CFE8(v51, v53);
    sub_2324C28AC(v53, &qword_27DD93578, &unk_2325480F0);
    (*v128)(v51, v52);
LABEL_44:
    v107 = v0[22];
    v46();
    sub_23251FC44(v107, type metadata accessor for NDFDevice);
    goto LABEL_8;
  }

  v88 = v0[17];
  sub_23251FBDC(v50, v0[21], type metadata accessor for NDFDevice);
  v89 = *v48;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v48;
  v91 = v137;
  *v48 = 0x8000000000000000;
  result = sub_2324E6CD4(v88);
  v93 = *(v91 + 16);
  v94 = (v92 & 1) == 0;
  v74 = __OFADD__(v93, v94);
  v95 = v93 + v94;
  if (v74)
  {
    goto LABEL_55;
  }

  v96 = v92;
  if (*(v91 + 24) >= v95)
  {
    if ((v90 & 1) == 0)
    {
      v109 = result;
      sub_23251E7D0();
      result = v109;
    }

    goto LABEL_39;
  }

  v97 = v0[17];
  sub_23251D31C(v95, v90);
  result = sub_2324E6CD4(v97);
  if ((v96 & 1) == (v98 & 1))
  {
LABEL_39:
    v99 = v137;
    v100 = v0[21];
    v101 = v0[17];
    v102 = v0[14];
    if (v96)
    {
      sub_23251EAE8(v0[21], v137[7] + result * v136);
      (*v128)(v101, v102);
    }

    else
    {
      v137[(result >> 6) + 8] |= 1 << result;
      v103 = result;
      v125(v99[6] + *(v124 + 72) * result, v101, v102);
      sub_23251FBDC(v100, v99[7] + v103 * v136, type metadata accessor for NDFDevice);
      result = (*(v124 + 8))(v101, v102);
      v104 = v99[2];
      v74 = __OFADD__(v104, 1);
      v105 = v104 + 1;
      if (v74)
      {
        goto LABEL_56;
      }

      v99[2] = v105;
    }

    v106 = *v48;
    *v48 = v99;

    goto LABEL_44;
  }

LABEL_49:
  v123 = v0[14];

  return sub_232546668();
}

uint64_t sub_2324FF900()
{
  v1 = v0[32];
  v2 = v0[10];
  v3 = v1;
  v4 = sub_232545888();
  v5 = sub_2325461F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[32];
  v8 = v0[28];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2324C0000, v4, v5, "Failed to load persisted devices: %@", v9, 0xCu);
    sub_2324C28AC(v10, &qword_27DD93218, &qword_232547360);
    MEMORY[0x238386450](v10, -1, -1);
    MEMORY[0x238386450](v9, -1, -1);
  }

  else
  {
  }

  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v17 = v0[20];
  v19 = v0[16];
  v18 = v0[17];
  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[11];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2324FFB14()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted;
  if ((*(v1 + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted) & 1) != 0 || (v3 = *((*(*v1 + 192))(v0[2]) + 16), , v4 = v0[2], !v3))
  {

    v11 = sub_232545888();
    v12 = sub_2325461D8();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[2];
    if (v13)
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = *(v1 + v2);
      *(v15 + 8) = 2048;
      v16 = *((*(*v14 + 192))() + 16);

      *(v15 + 10) = v16;

      _os_log_impl(&dword_2324C0000, v11, v12, "Not starting metrics collection [started: %{BOOL}d, %ld known Homes]", v15, 0x12u);
      MEMORY[0x238386450](v15, -1, -1);
    }

    else
    {
      v17 = v0[2];
    }

    v18 = v0[1];

    return v18();
  }

  else
  {
    v5 = sub_232545888();
    v6 = sub_232546208();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "Starting periodic telemetry collection", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    *(v1 + v2) = 1;
    v8 = sub_2324E8FA0();
    v9 = *v8;
    v0[3] = *v8;
    v10 = (*v9 + 240) & 0xFFFFFFFFFFFFLL | 0x6C6E000000000000;
    v0[4] = *(*v9 + 240);
    v0[5] = v10;

    return MEMORY[0x2822009F8](sub_2324FFD9C, v9, 0);
  }
}

uint64_t sub_2324FFD9C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  (*(v0 + 32))();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2324FFE08()
{
  v1[12] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for NDFDevice();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v7 = sub_2325456F8();
  v1[19] = v7;
  v8 = *(v7 - 8);
  v1[20] = v8;
  v9 = *(v8 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2324FFFAC, v0, 0);
}

uint64_t sub_2324FFFAC()
{
  v65 = v0;
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = sub_232545018();
  sub_2324CF3C4(v4, v3, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2324C28AC(v0[18], &unk_27DD932E0, qword_2325472E0);
LABEL_18:
    v56 = v0[21];
    v55 = v0[22];
    v58 = v0[17];
    v57 = v0[18];
    v59 = v0[16];
    v60 = v0[13];

    v61 = v0[1];

    return v61();
  }

  v5 = v0[12];
  v6 = (*(v0[20] + 32))(v0[22], v0[18], v0[19]);
  v7 = (*(*v5 + 168))(v6);
  if (!*(v7 + 16) || (v8 = sub_2324E6CD4(v0[22]), (v9 & 1) == 0))
  {
    v44 = v0[22];
    v45 = v0[19];
    v46 = v0[20];

    (*(v46 + 8))(v44, v45);
    goto LABEL_18;
  }

  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[14];
  sub_2324CE250(*(v7 + 56) + *(v0[15] + 72) * v8, v11);

  sub_23251FBDC(v11, v10, type metadata accessor for NDFDevice);
  v13 = v10 + *(v12 + 20);
  sub_232545638();
  v15 = v14;
  v16 = *(**sub_2324C4D38() + 584);

  v18 = v16(v17);

  if (v15 >= v18)
  {
    v47 = v0[17];
    (*(v0[20] + 8))(v0[22], v0[19]);
LABEL_17:
    sub_23251FC44(v47, type metadata accessor for NDFDevice);
    goto LABEL_18;
  }

  v20 = v0[20];
  v19 = v0[21];
  v21 = v0[19];
  v22 = v0[17];
  v23 = v0[14];
  v24 = v0[15];
  v26 = v0[12];
  v25 = v0[13];
  sub_2324F98EC();
  (*(v20 + 16))(v19, v22, v21);
  sub_2324CE250(v22, v25);
  (*(v24 + 56))(v25, 0, 1, v23);
  v27 = (*(*v26 + 184))(v0 + 2);
  sub_2324FCF78(v25, v19);
  v27(v0 + 2, 0);
  v28 = sub_2324C8418();
  v29 = v0[12];
  if (!*v28)
  {
    v48 = sub_232545888();
    v49 = sub_2325461F8();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v0[22];
    v52 = v0[19];
    v53 = v0[20];
    v47 = v0[17];
    if (v50)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2324C0000, v48, v49, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v54, 2u);
      MEMORY[0x238386450](v54, -1, -1);
    }

    (*(v53 + 8))(v51, v52);
    goto LABEL_17;
  }

  v30 = *(*v28 + 152);
  v0[23] = v30;

  v31 = sub_232545888();
  v32 = sub_232546208();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v0[17];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v64 = v35;
    *v34 = 136315138;
    swift_beginAccess();
    v36 = sub_2324F6270();
    v38 = sub_2324C2220(v36, v37, &v64);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2324C0000, v31, v32, "Submitting forced CK device update for self: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x238386450](v35, -1, -1);
    MEMORY[0x238386450](v34, -1, -1);
  }

  v39 = v0[17];
  swift_beginAccess();
  v62 = (*v30 + 344);
  v63 = (*v62 + **v62);
  v40 = (*v62)[1];
  v41 = swift_task_alloc();
  v0[24] = v41;
  *v41 = v0;
  v41[1] = sub_2325005C8;
  v42 = v0[17];

  return v63(v42);
}

uint64_t sub_2325005C8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2325006D8, v2, 0);
}

uint64_t sub_2325006D8()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];

  (*(v4 + 8))(v2, v3);
  sub_23251FC44(v5, type metadata accessor for NDFDevice);
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v11 = v0[13];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2325007C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 200) = a3;
  *(v4 + 128) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232500864, v3, 0);
}

uint64_t sub_232500864()
{
  v46 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  if (*(v0 + 200) == 1)
  {
    v4 = *(v0 + 144);
    v5 = (*(*v2 + 232))(v0 + 48);
    sub_23251EE14(v3, v1);

    v6 = v5(v0 + 48, 0);
    v7 = *((*(*v4 + 216))(v6) + 16);

    if (!v7)
    {
      v8 = *(v0 + 144) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
      v9 = sub_232545888();
      v10 = sub_232546208();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2324C0000, v9, v10, "No longer tracking any interfaces, clearing outstanding IP address acquisition and DNS outage events", v11, 2u);
        MEMORY[0x238386450](v11, -1, -1);
      }

      v13 = *(v0 + 144);
      v12 = *(v0 + 152);

      v14 = sub_2324C1C94();
      *(v0 + 160) = v14;
      swift_beginAccess();
      sub_2324CF3C4(v14, v12, &unk_27DD932E0, qword_2325472E0);
      v43 = *v13 + 416;
      v15 = *v43;
      *(v0 + 168) = *v43;
      *(v0 + 176) = v43 & 0xFFFFFFFFFFFFLL | 0x841000000000000;
      v44 = (v15 + *v15);
      v16 = v15[1];
      v17 = swift_task_alloc();
      *(v0 + 184) = v17;
      *v17 = v0;
      v17[1] = sub_232500D9C;
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);

      return (v44)(1, 2, 0, v18);
    }
  }

  else
  {
    v21 = *(*v2 + 232);
    v22 = *(v0 + 136);

    v23 = v21(v0 + 16);
    sub_23251EF50(&v45, v3, v1);

    v23(v0 + 16, 0);
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);

  v26 = sub_232545888();
  v27 = sub_232546208();

  if (os_log_type_enabled(v26, v27))
  {
    v29 = *(v0 + 136);
    v28 = *(v0 + 144);
    v30 = *(v0 + 200);
    v31 = *(v0 + 128);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v45 = v33;
    *v32 = 136315650;
    if (v30)
    {
      v34 = 0x6C61766F6D6572;
    }

    else
    {
      v34 = 0x6E6F697469646461;
    }

    if (v30)
    {
      v35 = 0xE700000000000000;
    }

    else
    {
      v35 = 0xE800000000000000;
    }

    v36 = sub_2324C2220(v34, v35, &v45);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_2324C2220(v31, v29, &v45);
    *(v32 + 22) = 2080;
    (*(*v28 + 216))();
    v37 = sub_2325461A8();
    v39 = v38;

    v40 = sub_2324C2220(v37, v39, &v45);

    *(v32 + 24) = v40;
    _os_log_impl(&dword_2324C0000, v26, v27, "Noted %s of interface %s: now tracking:  %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v33, -1, -1);
    MEMORY[0x238386450](v32, -1, -1);
  }

  v41 = *(v0 + 152);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_232500D9C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232500ED8, v3, 0);
}

uint64_t sub_232500ED8()
{
  v1 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  swift_beginAccess();
  sub_2324CF3C4(v3, v4, &unk_27DD932E0, qword_2325472E0);
  v11 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_23250100C;
  v7 = v0[22];
  v9 = v0[18];
  v8 = v0[19];

  return (v11)(1, 1, 0, v8);
}

uint64_t sub_23250100C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232501148, v3, 0);
}

uint64_t sub_232501148()
{
  v23 = v0;
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);

  v3 = sub_232545888();
  v4 = sub_232546208();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 136);
    v5 = *(v0 + 144);
    v7 = *(v0 + 200);
    v8 = *(v0 + 128);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315650;
    if (v7)
    {
      v11 = 0x6C61766F6D6572;
    }

    else
    {
      v11 = 0x6E6F697469646461;
    }

    if (v7)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE800000000000000;
    }

    v13 = sub_2324C2220(v11, v12, &v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = sub_2324C2220(v8, v6, &v22);
    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    (*(*v5 + 216))(v14);
    v15 = sub_2325461A8();
    v17 = v16;

    v18 = sub_2324C2220(v15, v17, &v22);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_2324C0000, v3, v4, "Noted %s of interface %s: now tracking:  %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v10, -1, -1);
    MEMORY[0x238386450](v9, -1, -1);
  }

  v19 = *(v0 + 152);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_232501390()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93580, qword_232548148);
  v1 = *(*(v58 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v56 = &v48 - v5;
  MEMORY[0x28223BE20](v4);
  v55 = &v48 - v6;
  v7 = type metadata accessor for NDFDevice();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(*v0 + 168))(v10);
  v14 = *(v13 + 16);
  if (v14)
  {
    v63 = MEMORY[0x277D84F90];
    sub_23251F9D8(0, v14, 0);
    v15 = v63;
    v16 = v13 + 64;
    v17 = -1 << *(v13 + 32);
    result = sub_232546388();
    v19 = result;
    v20 = 0;
    v49 = v13 + 72;
    v50 = v14;
    v53 = v8;
    v54 = v12;
    v51 = v13 + 64;
    v52 = v13;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v13 + 32))
    {
      v23 = v19 >> 6;
      if ((*(v16 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_23;
      }

      v24 = *(v13 + 36);
      v59 = v20;
      v60 = v24;
      v25 = v58;
      v62 = v15;
      v26 = *(v58 + 48);
      v27 = *(v13 + 48);
      v28 = sub_2325456F8();
      v29 = *(v28 - 8);
      v30 = v29;
      v31 = v27 + *(v29 + 72) * v19;
      v32 = v55;
      (*(v29 + 16))(v55, v31, v28);
      v33 = *(v13 + 56);
      v61 = *(v8 + 72);
      sub_2324CE250(v33 + v61 * v19, &v32[v26]);
      v34 = v56;
      (*(v30 + 32))(v56, v32, v28);
      sub_23251FBDC(&v32[v26], v34 + *(v25 + 48), type metadata accessor for NDFDevice);
      v35 = v57;
      sub_2324F1C98(v34, v57, &qword_27DD93580, qword_232548148);
      v36 = *(v25 + 48);
      v37 = v54;
      sub_23251FBDC(v35 + v36, v54, type metadata accessor for NDFDevice);
      v38 = v35;
      v15 = v62;
      (*(v30 + 8))(v38, v28);
      v63 = v15;
      v40 = *(v15 + 16);
      v39 = *(v15 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23251F9D8(v39 > 1, v40 + 1, 1);
        v15 = v63;
      }

      *(v15 + 16) = v40 + 1;
      v8 = v53;
      result = sub_23251FBDC(v37, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v40 * v61, type metadata accessor for NDFDevice);
      v13 = v52;
      v21 = 1 << *(v52 + 32);
      if (v19 >= v21)
      {
        goto LABEL_24;
      }

      v16 = v51;
      v41 = *(v51 + 8 * v23);
      if ((v41 & (1 << v19)) == 0)
      {
        goto LABEL_25;
      }

      if (v60 != *(v52 + 36))
      {
        goto LABEL_26;
      }

      v42 = v41 & (-2 << (v19 & 0x3F));
      if (v42)
      {
        v21 = __clz(__rbit64(v42)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v22 = v50;
      }

      else
      {
        v43 = v23 << 6;
        v44 = v23 + 1;
        v22 = v50;
        v45 = (v49 + 8 * v23);
        while (v44 < (v21 + 63) >> 6)
        {
          v47 = *v45++;
          v46 = v47;
          v43 += 64;
          ++v44;
          if (v47)
          {
            result = sub_23251FBD0(v19, v60, 0);
            v21 = __clz(__rbit64(v46)) + v43;
            goto LABEL_4;
          }
        }

        result = sub_23251FBD0(v19, v60, 0);
      }

LABEL_4:
      v20 = v59 + 1;
      v19 = v21;
      if (v59 + 1 == v22)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_232501870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*v2 + 168))();
  if (*(v5 + 16) && (v6 = sub_2324E6CD4(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for NDFDevice();
    v17 = *(v10 - 8);
    sub_2324CE250(v9 + *(v17 + 72) * v8, a2);

    v11 = *(v17 + 56);
    v12 = a2;
    v13 = 0;
    v14 = v10;
  }

  else
  {

    v15 = type metadata accessor for NDFDevice();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a2;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_2325019C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v50 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  v15 = sub_2325456F8();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v53 = &v50 - v21;
  MEMORY[0x28223BE20](v20);
  v54 = &v50 - v22;
  v23 = a1;
  v25 = v24;
  sub_2324CF3C4(v23, v14, &unk_27DD932E0, qword_2325472E0);
  v26 = *(v25 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    sub_2324C28AC(v14, &unk_27DD932E0, qword_2325472E0);
    v27 = sub_232545888();
    v28 = sub_2325461F8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2324C0000, v27, v28, "Cannot look up primary resident for nil groupUUID", v29, 2u);
      MEMORY[0x238386450](v29, -1, -1);
    }

    v30 = type metadata accessor for NDFDevice();
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  else
  {
    v51 = v19;
    v52 = a2;
    v32 = v54;
    v50 = *(v25 + 32);
    v50(v54, v14, v15);
    v33 = v32;
    v34 = *(v25 + 16);
    v34(v9, v33, v15);
    (*(v25 + 56))(v9, 0, 1, v15);
    (*(*v2 + 352))(v9);
    sub_2324C28AC(v9, &unk_27DD932E0, qword_2325472E0);
    if (v26(v12, 1, v15) == 1)
    {
      sub_2324C28AC(v12, &unk_27DD932E0, qword_2325472E0);
      v35 = v51;
      v34(v51, v54, v15);
      v36 = sub_232545888();
      v37 = sub_2325461E8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55 = v39;
        *v38 = 136315138;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
        v40 = sub_232546608();
        v42 = v41;
        v43 = *(v25 + 8);
        v43(v35, v15);
        v44 = sub_2324C2220(v40, v42, &v55);

        *(v38 + 4) = v44;
        _os_log_impl(&dword_2324C0000, v36, v37, "No primary resident found for group %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x238386450](v39, -1, -1);
        MEMORY[0x238386450](v38, -1, -1);

        v43(v54, v15);
      }

      else
      {

        v47 = *(v25 + 8);
        v47(v35, v15);
        v47(v54, v15);
      }

      v48 = v52;
      v49 = type metadata accessor for NDFDevice();
      return (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    }

    else
    {
      v45 = v53;
      v50(v53, v12, v15);
      (*(*v2 + 336))(v45);
      v46 = *(v25 + 8);
      v46(v45, v15);
      return (v46)(v54, v15);
    }
  }
}

uint64_t sub_232501FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_2325456F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2324CF3C4(a1, v8, &unk_27DD932E0, qword_2325472E0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2324C28AC(v8, &unk_27DD932E0, qword_2325472E0);
    v14 = sub_232545888();
    v15 = sub_2325461F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2324C0000, v14, v15, "Cannot look up primary resident ID for nil groupUUID", v16, 2u);
      MEMORY[0x238386450](v16, -1, -1);
    }

    goto LABEL_9;
  }

  v17 = (*(v10 + 32))(v13, v8, v9);
  v18 = (*(*v2 + 192))(v17);
  if (!*(v18 + 16) || (v19 = sub_2324E6CD4(v13), (v20 & 1) == 0))
  {

    (*(v10 + 8))(v13, v9);
LABEL_9:
    v21 = 1;
    return (*(v10 + 56))(a2, v21, 1, v9);
  }

  (*(v10 + 16))(a2, *(v18 + 56) + *(v10 + 72) * v19, v9);
  (*(v10 + 8))(v13, v9);

  v21 = 0;
  return (*(v10 + 56))(a2, v21, 1, v9);
}

void sub_2325022AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v49 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = sub_2325456F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  v54 = v15;
  v22 = *(v15 + 16);
  v22(&v49 - v20, a2, v14);
  sub_2324CF3C4(a1, v13, &unk_27DD932E0, qword_2325472E0);
  v23 = (*(*v3 + 208))(v55);
  sub_2324FD198(v13, v21);
  v23(v55, 0);
  v24 = v19;
  v25 = v3;
  v26 = v53;
  v22(v24, v52, v14);
  sub_2324CF3C4(a1, v26, &unk_27DD932E0, qword_2325472E0);

  v27 = sub_232545888();
  v28 = sub_2325461E8();

  if (os_log_type_enabled(v27, v28))
  {
    v49 = v27;
    LODWORD(v52) = v28;
    v29 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v55[0] = v50;
    *v29 = 136315650;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v30 = sub_232546608();
    v31 = v24;
    v33 = v32;
    v34 = v54;
    v35 = *(v54 + 8);
    v35(v31, v14);
    v36 = sub_2324C2220(v30, v33, v55);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2080;
    v37 = v51;
    sub_2324CF3C4(v26, v51, &unk_27DD932E0, qword_2325472E0);
    if ((*(v34 + 48))(v37, 1, v14) == 1)
    {
      sub_2324C28AC(v37, &unk_27DD932E0, qword_2325472E0);
      v38 = 0xE300000000000000;
      v39 = 7104878;
    }

    else
    {
      v39 = sub_2325456A8();
      v38 = v40;
      v35(v37, v14);
    }

    sub_2324C28AC(v26, &unk_27DD932E0, qword_2325472E0);
    v41 = sub_2324C2220(v39, v38, v55);

    *(v29 + 14) = v41;
    *(v29 + 22) = 2080;
    (*(*v25 + 192))(v42);
    sub_23251FF40(&qword_2814D62B0, MEMORY[0x277CC95F0]);
    v43 = sub_232545EF8();
    v45 = v44;

    v46 = sub_2324C2220(v43, v45, v55);

    *(v29 + 24) = v46;
    v47 = v49;
    _os_log_impl(&dword_2324C0000, v49, v52, "Updated primary resident ID for group %s to %s, all known primary residents: %s", v29, 0x20u);
    v48 = v50;
    swift_arrayDestroy();
    MEMORY[0x238386450](v48, -1, -1);
    MEMORY[0x238386450](v29, -1, -1);
  }

  else
  {

    sub_2324C28AC(v26, &unk_27DD932E0, qword_2325472E0);
    (*(v54 + 8))(v24, v14);
  }
}

void sub_232502828(uint64_t a1)
{
  v2 = sub_232545688();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v139 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NDFDevice();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v137 = &v131 - v10;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93290, &qword_2325477E0);
  v11 = *(*(v141 - 1) + 64);
  MEMORY[0x28223BE20](v141);
  v143 = &v131 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v133 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v131 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v142 = &v131 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v149 = &v131 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v131 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v131 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v131 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v131 - v32;
  v34 = sub_2325456F8();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v138 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v136 = &v131 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v134 = &v131 - v41;
  MEMORY[0x28223BE20](v40);
  v43 = &v131 - v42;
  v148 = v5;
  v44 = *(v5 + 28);
  v45 = a1;
  v46 = a1 + v44;
  v48 = v47;
  sub_2324CF3C4(v46, v33, &unk_27DD932E0, qword_2325472E0);
  v150 = v48[6];
  v151 = v48 + 6;
  if (v150(v33, 1, v34) != 1)
  {
    v132 = v48[4];
    v132(v43, v33, v34);
    v57 = v48[2];
    v144 = v43;
    v146 = v57;
    v147 = v48 + 2;
    v57(v28, v43, v34);
    v135 = v48;
    v58 = v48[7];
    v58(v28, 0, 1, v34);
    v59 = *(*v153 + 352);
    v152 = v31;
    v59(v28);
    sub_2324C28AC(v28, &unk_27DD932E0, qword_2325472E0);
    v140 = v25;
    v58(v25, 1, 1, v34);
    v60 = *(v45 + *(v148 + 44));
    v61 = v34;
    if (v60 != 2 && (v60 & 1) != 0)
    {
      v141 = v28;
      v62 = v140;
      sub_2324C28AC(v140, &unk_27DD932E0, qword_2325472E0);
      v63 = v146;
      v146(v62, v45, v34);
      v64 = 0;
      v65 = v144;
      v66 = v153;
LABEL_20:
      v58(v62, v64, 1, v61);
      v102 = v138;
      v63(v138, v65, v61);
      v103 = v145;
      sub_2324CF3C4(v152, v145, &unk_27DD932E0, qword_2325472E0);
      v104 = sub_232545888();
      v105 = sub_232546208();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v154[0] = v149;
        *v106 = 136315650;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
        v107 = sub_232546608();
        v109 = v108;
        v110 = v102;
        v111 = v135[1];
        v111(v110, v61);
        v112 = sub_2324C2220(v107, v109, v154);

        *(v106 + 4) = v112;
        *(v106 + 12) = 2080;
        v113 = v103;
        v114 = v133;
        sub_2324CF3C4(v113, v133, &unk_27DD932E0, qword_2325472E0);
        if (v150(v114, 1, v61) == 1)
        {
          sub_2324C28AC(v114, &unk_27DD932E0, qword_2325472E0);
          v115 = 0xE300000000000000;
          v116 = 7104878;
        }

        else
        {
          v116 = sub_2325456A8();
          v115 = v118;
          v111(v114, v61);
        }

        sub_2324C28AC(v145, &unk_27DD932E0, qword_2325472E0);
        v119 = sub_2324C2220(v116, v115, v154);

        *(v106 + 14) = v119;
        *(v106 + 22) = 2080;
        v120 = v140;
        swift_beginAccess();
        if (v150(v120, 1, v61))
        {
          v121 = 0xE300000000000000;
          v122 = 7104878;
        }

        else
        {
          v123 = v134;
          v146(v134, v120, v61);
          v124 = sub_2325456A8();
          v121 = v125;
          v111(v123, v61);
          v122 = v124;
        }

        v126 = sub_2324C2220(v122, v121, v154);

        *(v106 + 24) = v126;
        _os_log_impl(&dword_2324C0000, v104, v105, "[Group %s] Updating primary resident ID: %s -> %s", v106, 0x20u);
        v127 = v149;
        swift_arrayDestroy();
        MEMORY[0x238386450](v127, -1, -1);
        MEMORY[0x238386450](v106, -1, -1);

        v62 = v140;
        v66 = v153;
        v117 = v111;
      }

      else
      {

        sub_2324C28AC(v103, &unk_27DD932E0, qword_2325472E0);
        v117 = v135[1];
        v117(v102, v61);
      }

      swift_beginAccess();
      v128 = v141;
      sub_2324CF3C4(v62, v141, &unk_27DD932E0, qword_2325472E0);
      v129 = v144;
      (*(*v66 + 360))(v128, v144);
      sub_2324C28AC(v128, &unk_27DD932E0, qword_2325472E0);
      v130 = v139;
      sub_232545668();
      (*(*v66 + 248))(v130);
      sub_2324C28AC(v152, &unk_27DD932E0, qword_2325472E0);
      v117(v129, v61);
      v97 = v62;
      goto LABEL_30;
    }

    v67 = v149;
    v148 = v45;
    v146(v149, v45, v61);
    v58(v67, 0, 1, v61);
    v68 = *(v141 + 12);
    v69 = v61;
    v70 = v143;
    sub_2324CF3C4(v152, v143, &unk_27DD932E0, qword_2325472E0);
    sub_2324CF3C4(v67, v70 + v68, &unk_27DD932E0, qword_2325472E0);
    v71 = v150;
    if (v150(v70, 1, v69) == 1)
    {
      sub_2324C28AC(v67, &unk_27DD932E0, qword_2325472E0);
      v72 = v70 + v68;
      v73 = v69;
      v74 = v71(v72, 1, v69);
      v65 = v144;
      v63 = v146;
      if (v74 == 1)
      {
        v141 = v28;
        sub_2324C28AC(v70, &unk_27DD932E0, qword_2325472E0);
        v62 = v140;
        v66 = v153;
LABEL_19:
        sub_2324C28AC(v62, &unk_27DD932E0, qword_2325472E0);
        v64 = 1;
        v61 = v73;
        goto LABEL_20;
      }
    }

    else
    {
      sub_2324CF3C4(v70, v142, &unk_27DD932E0, qword_2325472E0);
      v75 = v71(v70 + v68, 1, v69);
      v65 = v144;
      if (v75 != 1)
      {
        v141 = v28;
        v98 = (v70 + v68);
        v99 = v134;
        v132(v134, v98, v69);
        sub_23251FF40(&qword_2814D4E80, MEMORY[0x277CC95F0]);
        v100 = v142;
        LODWORD(v132) = sub_232545F48();
        v101 = v135[1];
        v101(v99, v69);
        sub_2324C28AC(v149, &unk_27DD932E0, qword_2325472E0);
        v73 = v69;
        v101(v100, v69);
        sub_2324C28AC(v70, &unk_27DD932E0, qword_2325472E0);
        v62 = v140;
        v66 = v153;
        v63 = v146;
        if (v132)
        {
          goto LABEL_19;
        }

LABEL_14:
        v76 = v136;
        v77 = v73;
        v63(v136, v65, v73);
        v78 = v137;
        sub_2324CE250(v148, v137);
        v79 = sub_232545888();
        v80 = v65;
        v81 = sub_2325461D8();
        if (os_log_type_enabled(v79, v81))
        {
          v82 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v154[0] = v153;
          *v82 = 136315394;
          sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
          v83 = sub_232546608();
          v85 = v84;
          v86 = v77;
          v87 = v135[1];
          v88 = v76;
          v89 = v86;
          v87(v88);
          v90 = sub_2324C2220(v83, v85, v154);

          *(v82 + 4) = v90;
          *(v82 + 12) = 2080;
          v91 = sub_2325456A8();
          v93 = v92;
          sub_23251FC44(v78, type metadata accessor for NDFDevice);
          v94 = sub_2324C2220(v91, v93, v154);

          *(v82 + 14) = v94;
          _os_log_impl(&dword_2324C0000, v79, v81, "[Group %s] Device with ID %s was neither the primary resident before, nor is it now", v82, 0x16u);
          v95 = v153;
          swift_arrayDestroy();
          MEMORY[0x238386450](v95, -1, -1);
          MEMORY[0x238386450](v82, -1, -1);

          sub_2324C28AC(v152, &unk_27DD932E0, qword_2325472E0);
          (v87)(v144, v89);
        }

        else
        {

          sub_23251FC44(v78, type metadata accessor for NDFDevice);
          v96 = v135[1];
          v96(v76, v77);
          sub_2324C28AC(v152, &unk_27DD932E0, qword_2325472E0);
          v96(v80, v77);
        }

        v97 = v62;
LABEL_30:
        sub_2324C28AC(v97, &unk_27DD932E0, qword_2325472E0);
        return;
      }

      sub_2324C28AC(v149, &unk_27DD932E0, qword_2325472E0);
      v73 = v69;
      (v135[1])(v142, v69);
      v63 = v146;
    }

    sub_2324C28AC(v70, &qword_27DD93290, &qword_2325477E0);
    v62 = v140;
    goto LABEL_14;
  }

  sub_2324C28AC(v33, &unk_27DD932E0, qword_2325472E0);
  sub_2324CE250(v45, v9);
  v49 = sub_232545888();
  v50 = sub_2325461F8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v154[0] = v52;
    *v51 = 136315138;
    v53 = sub_2324F6270();
    v55 = v54;
    sub_23251FC44(v9, type metadata accessor for NDFDevice);
    v56 = sub_2324C2220(v53, v55, v154);

    *(v51 + 4) = v56;
    _os_log_impl(&dword_2324C0000, v49, v50, "Cannot update primary resident for device without groupUUID: %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x238386450](v52, -1, -1);
    MEMORY[0x238386450](v51, -1, -1);
  }

  else
  {

    sub_23251FC44(v9, type metadata accessor for NDFDevice);
  }
}

uint64_t sub_2325038D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_232545688();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = type metadata accessor for NDFEvent(0);
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = sub_2325456F8();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232503AE8, v2, 0);
}

uint64_t sub_232503AE8()
{
  v79 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v12 = v0[4] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v9 = sub_232545888();
    v13 = sub_2325461F8();
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2324C0000, v9, v13, "NDFAdminController is nil", v14, 2u);
      MEMORY[0x238386450](v14, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[3];
  v6 = *(v1 + 144);
  v0[19] = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = v0[13];
    v8 = v0[4];

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "Ignoring DNS server update for device with no deviceID", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }

LABEL_8:

    v16 = v0[17];
    v15 = v0[18];
    v17 = v0[16];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];
    v22 = v0[7];
    v21 = v0[8];

    v23 = v0[1];

    return v23();
  }

  v25 = v0[15];
  v26 = v0[4];
  v27 = v0[2];
  (*(v25 + 32))(v0[18], v0[13], v0[14]);
  v28 = *(v25 + 16);
  v29 = v0[18];
  v30 = v0[14];
  if (*(v27 + 16))
  {
    v31 = v0[2];
    v28(v0[17], v29, v30);

    v32 = sub_232545888();
    v33 = sub_232546208();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[17];
    v37 = v0[14];
    v36 = v0[15];
    if (v34)
    {
      buf = v0[2];
      v38 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78 = v75;
      *v38 = 136315394;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v39 = sub_232546608();
      v41 = v40;
      v70 = v33;
      v42 = *(v36 + 8);
      v42(v35, v37);
      v43 = sub_2324C2220(v39, v41, &v78);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      v44 = MEMORY[0x238385650](buf, MEMORY[0x277D837D0]);
      v46 = sub_2324C2220(v44, v45, &v78);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_2324C0000, v32, v70, "Updated DNS servers for device %s: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v75, -1, -1);
      MEMORY[0x238386450](v38, -1, -1);
    }

    else
    {

      v42 = *(v36 + 8);
      v42(v35, v37);
    }

    v0[20] = v42;
    v60 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
    v0[21] = *(*v6 + 168);
    v0[22] = v60;

    return MEMORY[0x2822009F8](sub_232504284, v6, 0);
  }

  else
  {
    v28(v0[16], v29, v30);

    v47 = sub_232545888();
    v48 = sub_232546208();
    v49 = os_log_type_enabled(v47, v48);
    v51 = v0[15];
    v50 = v0[16];
    v52 = v0[14];
    if (v49)
    {
      bufa = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v78 = v76;
      *bufa = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v53 = sub_232546608();
      v55 = v54;
      v71 = v48;
      v58 = *(v51 + 8);
      v56 = v51 + 8;
      v57 = v58;
      v58(v50, v52);
      v59 = sub_2324C2220(v53, v55, &v78);

      *(bufa + 4) = v59;
      _os_log_impl(&dword_2324C0000, v47, v71, "Device %s received empty DNS server configuration; clearing outstanding DNS outage events", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x238386450](v76, -1, -1);
      MEMORY[0x238386450](bufa, -1, -1);
    }

    else
    {

      v61 = *(v51 + 8);
      v56 = v51 + 8;
      v57 = v61;
      v61(v50, v52);
    }

    v0[25] = v56;
    v0[26] = v57;
    v62 = v0[14];
    v63 = v0[15];
    v64 = v0[12];
    v65 = v0[4];
    v28(v64, v0[18], v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    bufb = (*v65 + 416);
    v77 = (*bufb + **bufb);
    v66 = *(*bufb + 4);
    v67 = swift_task_alloc();
    v0[27] = v67;
    *v67 = v0;
    v67[1] = sub_23250467C;
    v68 = v0[12];
    v69 = v0[4];

    return v77(1, 1, 0, v68);
  }
}

uint64_t sub_232504284()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  (*(v0 + 168))(1, 1, *(v0 + 144));

  return MEMORY[0x2822009F8](sub_232504300, v4, 0);
}

uint64_t sub_232504300()
{
  v1 = v0[9];
  v2 = v0[8];
  if ((*(v0[10] + 48))(v2, 1, v1) == 1)
  {
    sub_2324C28AC(v2, &qword_27DD93400, &qword_2325479C0);
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[18];
    v6 = v0[14];
    v7 = v0[15];
    v8 = v0[4];
    sub_23251BB00();

    v4(v5, v6);
    v10 = v0[17];
    v9 = v0[18];
    v11 = v0[16];
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v16 = v0[7];
    v15 = v0[8];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[19];
    v20 = v0[11];
    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];
    sub_23251FBDC(v2, v20, type metadata accessor for NDFEvent);
    sub_232545668();
    (*(v22 + 40))(v20 + *(v1 + 24), v21, v23);
    *(v20 + 9) = 3;
    v24 = (*v19 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
    v0[23] = *(*v19 + 144);
    v0[24] = v24;

    return MEMORY[0x2822009F8](sub_2325044F8, v19, 0);
  }
}

uint64_t sub_2325044F8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 32);
  (*(v0 + 184))(*(v0 + 88));

  return MEMORY[0x2822009F8](sub_23250456C, v3, 0);
}

uint64_t sub_23250456C()
{
  sub_23251FC44(v0[11], type metadata accessor for NDFEvent);
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[4];
  sub_23251BB00();

  v2(v3, v4);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v12 = v0[11];
  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23250467C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 32);
  v5 = *v0;

  sub_2324C28AC(v2, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_2325047B8, v3, 0);
}

uint64_t sub_2325047B8()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];

  v1(v4, v5);
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];
  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];
  v13 = v0[7];
  v12 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_23250489C()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_232504990(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2324C290C;

  return v10(2, 2, a1, a2);
}

uint64_t sub_232504AC8(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 416);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2324C290C;

  return v10(3, 2, a1, a2);
}

uint64_t sub_232504C00(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 229) = a3;
  *(v5 + 228) = a2;
  *(v5 + 40) = a1;
  v6 = sub_232545688();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0) - 8) + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  v10 = type metadata accessor for NDFEvent(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  *(v5 + 104) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  v14 = sub_2325456F8();
  *(v5 + 144) = v14;
  v15 = *(v14 - 8);
  *(v5 + 152) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232504E0C, v4, 0);
}

uint64_t sub_232504E0C()
{
  v42 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v20 = *(v0 + 56);
    v21 = *(v0 + 40);
    v22 = *(v0 + 228);
    sub_2324E6FC0(v21, v22);
    v11 = sub_232545888();
    v23 = sub_2325461F8();
    sub_2324E6E70(v21, v22);
    if (os_log_type_enabled(v11, v23))
    {
      v24 = *(v0 + 40);
      v25 = *(v0 + 228);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      v28 = sub_2325369E4(v24, v25);
      v30 = sub_2324C2220(v28, v29, &v41);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2324C0000, v11, v23, "Failed to note %s: NDFAdminController not available", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x238386450](v27, -1, -1);
      MEMORY[0x238386450](v26, -1, -1);
    }

    goto LABEL_8;
  }

  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 48);
  v6 = *(v1 + 144);
  *(v0 + 168) = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    v10 = *(v0 + 228);

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    sub_2324E6FC0(v9, v10);
    v11 = sub_232545888();
    v12 = sub_2325461F8();
    sub_2324E6E70(v9, v10);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 40);
      v14 = *(v0 + 228);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      v17 = sub_2325369E4(v13, v14);
      v19 = sub_2324C2220(v17, v18, &v41);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2324C0000, v11, v12, "Failed to note %s: deviceID is nil", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x238386450](v16, -1, -1);
      MEMORY[0x238386450](v15, -1, -1);
    }

LABEL_8:

    v31 = *(v0 + 160);
    v32 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 112);
    v34 = *(v0 + 120);
    v37 = *(v0 + 80);
    v36 = *(v0 + 88);

    v38 = *(v0 + 8);

    return v38();
  }

  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
  v40 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
  *(v0 + 176) = *(*v6 + 168);
  *(v0 + 184) = v40;

  return MEMORY[0x2822009F8](sub_2325051CC, v6, 0);
}

uint64_t sub_2325051CC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  (*(v0 + 176))(*(v0 + 40), *(v0 + 228), *(v0 + 160));

  return MEMORY[0x2822009F8](sub_232505248, v4, 0);
}

uint64_t sub_232505248()
{
  v65 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v6 = *(v0 + 120);
    v7 = *(v0 + 229);
    sub_23251FBDC(v1, v6, type metadata accessor for NDFEvent);
    v8 = *(v6 + 9);
    if (v7 == 1)
    {
      *(v0 + 226) = v8;
      *(v0 + 227) = 3;
      sub_2324E6DD0();
      if ((sub_232545F48() & 1) == 0)
      {
        v30 = *(v0 + 56) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
        v31 = sub_232545888();
        v32 = sub_232546208();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v0 + 160);
        v35 = *(v0 + 168);
        v37 = *(v0 + 144);
        v36 = *(v0 + 152);
        v38 = *(v0 + 120);
        if (v33)
        {
          v63 = *(v0 + 144);
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v64 = v40;
          *v39 = 136315138;
          swift_beginAccess();
          v41 = sub_2325384B0();
          v61 = v34;
          v43 = sub_2324C2220(v41, v42, &v64);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_2324C0000, v31, v32, "Event %s is already in progress, ignoring", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x238386450](v40, -1, -1);
          MEMORY[0x238386450](v39, -1, -1);

          (*(v36 + 8))(v61, v63);
        }

        else
        {
          v51 = *(v0 + 168);

          (*(v36 + 8))(v34, v37);
        }

        v29 = v38;
        goto LABEL_21;
      }

      v9 = *(v0 + 168);
    }

    else
    {
      *(v0 + 224) = v8;
      *(v0 + 225) = 3;
      sub_2324E6DD0();
      v27 = sub_232545F48();
      v3 = *(v0 + 168);
      if ((v27 & 1) == 0)
      {
        v45 = *(v0 + 120);
        v46 = *(v0 + 96);
        v48 = *(v0 + 72);
        v47 = *(v0 + 80);
        v49 = *(v0 + 64);
        *(v6 + 9) = 3;
        sub_232545668();
        (*(v48 + 40))(v45 + *(v46 + 24), v47, v49);
        v50 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        *(v0 + 192) = *(*v3 + 144);
        *(v0 + 200) = v50;
        v5 = sub_2325057B0;
        goto LABEL_16;
      }
    }

    v28 = *(v0 + 120);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v29 = v28;
LABEL_21:
    sub_23251FC44(v29, type metadata accessor for NDFEvent);
    goto LABEL_22;
  }

  v2 = *(v0 + 229);
  sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
  if (v2)
  {
    v3 = *(v0 + 168);
    (*(*(v0 + 152) + 56))(*(v0 + 128), 1, 1, *(v0 + 144));
    v4 = (*v3 + 160) & 0xFFFFFFFFFFFFLL | 0xFB9000000000000;
    *(v0 + 208) = *(*v3 + 160);
    *(v0 + 216) = v4;
    v5 = sub_232505914;
LABEL_16:

    return MEMORY[0x2822009F8](v5, v3, 0);
  }

  v10 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = *(v0 + 228);
  sub_2324E6FC0(v11, v12);
  v13 = sub_232545888();
  v14 = sub_232546208();
  sub_2324E6E70(v11, v12);
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 160);
  v16 = *(v0 + 168);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  if (v15)
  {
    v20 = *(v0 + 40);
    v21 = *(v0 + 228);
    v62 = *(v0 + 160);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v64 = v23;
    *v22 = 136315138;
    v24 = sub_2325369E4(v20, v21);
    v26 = sub_2324C2220(v24, v25, &v64);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2324C0000, v13, v14, "Ignoring spurious event end notification for %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x238386450](v23, -1, -1);
    MEMORY[0x238386450](v22, -1, -1);

    (*(v18 + 8))(v62, v19);
  }

  else
  {
    v44 = *(v0 + 168);

    (*(v18 + 8))(v17, v19);
  }

LABEL_22:
  v52 = *(v0 + 160);
  v53 = *(v0 + 128);
  v54 = *(v0 + 136);
  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v58 = *(v0 + 80);
  v57 = *(v0 + 88);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_2325057B0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 168);
  v3 = *(v0 + 56);
  (*(v0 + 192))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_232505824, v3, 0);
}

uint64_t sub_232505824()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[15];

  (*(v4 + 8))(v2, v3);
  sub_23251FC44(v5, type metadata accessor for NDFEvent);
  v6 = v0[20];
  v7 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_232505914()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 56);
  (*(v0 + 208))(*(v0 + 40), *(v0 + 228), *(v0 + 160), v3);
  sub_2324C28AC(v3, &unk_27DD932E0, qword_2325472E0);
  (*(*v2 + 144))(v4);

  return MEMORY[0x2822009F8](sub_2325059E4, v5, 0);
}

uint64_t sub_2325059E4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[14];

  sub_23251FC44(v5, type metadata accessor for NDFEvent);
  (*(v4 + 8))(v2, v3);
  v6 = v0[20];
  v7 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v9 = v0[15];
  v12 = v0[10];
  v11 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_232505AD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 64) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x2822009F8](sub_232505AFC, v4, 0);
}

uint64_t sub_232505AFC()
{
  v25 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = sub_232545888();
  v4 = sub_2325461E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 64);
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2324C2220(v7, v6, &v24);
    *(v8 + 12) = 2080;
    if (v5)
    {
      v10 = 0x69646E6F70736572;
    }

    else
    {
      v10 = 0x7073657220746F6ELL;
    }

    if (v5)
    {
      v11 = 0xEA0000000000676ELL;
    }

    else
    {
      v11 = 0xEE00676E69646E6FLL;
    }

    v12 = sub_2324C2220(v10, v11, &v24);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_2324C0000, v3, v4, "DNS Server %s is %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v9, -1, -1);
    MEMORY[0x238386450](v8, -1, -1);
  }

  v14 = *(v0 + 32);
  v13 = *(v0 + 40);
  v15 = *(v0 + 64);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  v18 = sub_23251FF40(&unk_2814D4E70, type metadata accessor for NDFDeviceManager);
  v19 = swift_task_alloc();
  *(v0 + 48) = v19;
  *(v19 + 16) = v13;
  *(v19 + 24) = v17;
  *(v19 + 32) = v16;
  *(v19 + 40) = v15;
  *(v19 + 48) = v14;
  v20 = *(MEMORY[0x277D859E0] + 4);
  v21 = swift_task_alloc();
  *(v0 + 56) = v21;
  *v21 = v0;
  v21[1] = sub_232505DAC;
  v22 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v21, v13, v18, 0xD000000000000022, 0x800000023254CBC0, sub_23251FCF0, v19, v22);
}

uint64_t sub_232505DAC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_232505ED8, v3, 0);
}

uint64_t sub_232505EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v36 = a6;
  v37 = a2;
  v39 = a5;
  v38 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v35 = sub_232545B08();
  v20 = *(v35 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v35);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - v25;
  (*(v16 + 16))(v19, a1, v15);
  sub_2324CF3C4(v36, v14, &unk_27DD932E0, qword_2325472E0);
  v27 = (*(v34 + 80) + 41) & ~*(v34 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v37;
  *(v28 + 24) = v29;
  *(v28 + 32) = a4;
  *(v28 + 40) = v39;
  sub_2324F1C98(v14, v28 + v27, &unk_27DD932E0, qword_2325472E0);

  sub_232545AD8();
  v30 = v35;
  (*(v20 + 16))(v24, v26, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  v31 = v40;
  sub_232546118();
  (*(v41 + 8))(v31, v42);
  return (*(v20 + 8))(v26, v30);
}

uint64_t sub_2325062A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a1 + 440);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2324C2910;

  return v14(a2, a3, a4, a5);
}

uint64_t sub_2325063F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_232506418, v2, 0);
}

uint64_t sub_232506418()
{
  v1 = v0[4];
  v2 = v0[2];

  v4 = nullsub_1(v3);
  v0[5] = v4;
  v10 = (*v1 + 416);
  v11 = (*v10 + **v10);
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_23250656C;
  v7 = v0[3];
  v8 = v0[4];

  return v11(v4, 1, 1, v7);
}

uint64_t sub_23250656C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_23250667C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 248) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_232545688();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0) - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  v10 = type metadata accessor for NDFEvent(0);
  *(v5 + 80) = v10;
  v11 = *(v10 - 8);
  *(v5 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v15 = sub_2325456F8();
  *(v5 + 120) = v15;
  v16 = *(v15 - 8);
  *(v5 + 128) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325068C8, v4, 0);
}

uint64_t sub_2325068C8()
{
  v97 = v0;
  v1 = *sub_2324C8418();
  if (!v1)
  {
    v12 = *(v0 + 40) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v9 = sub_232545888();
    v13 = sub_2325461F8();
    if (os_log_type_enabled(v9, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2324C0000, v9, v13, "NDFAdminController is nil", v14, 2u);
      MEMORY[0x238386450](v14, -1, -1);
    }

    goto LABEL_8;
  }

  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 32);
  v6 = *(v1 + 144);
  *(v0 + 168) = v6;
  sub_2324CF3C4(v5, v4, &unk_27DD932E0, qword_2325472E0);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = *(v0 + 112);
    v8 = *(v0 + 40);

    sub_2324C28AC(v7, &unk_27DD932E0, qword_2325472E0);
    v9 = sub_232545888();
    v10 = sub_2325461F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2324C0000, v9, v10, "Ignoring DNS update: nil deviceID", v11, 2u);
      MEMORY[0x238386450](v11, -1, -1);
    }

LABEL_8:

    goto LABEL_9;
  }

  v26 = *(v0 + 40);
  (*(*(v0 + 128) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 120));
  v27 = *(*v26 + 168);

  v29 = v27(v28);
  if (!*(v29 + 16) || (v30 = sub_2324E6CD4(*(v0 + 160)), (v31 & 1) == 0))
  {
    v59 = *(v0 + 160);
    v60 = *(v0 + 128);
    v61 = *(v0 + 136);
    v62 = *(v0 + 120);
    v63 = *(v0 + 104);
    v64 = *(v0 + 40);

    v65 = type metadata accessor for NDFDevice();
    (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
    sub_2324C28AC(v63, &qword_27DD93578, &unk_2325480F0);
    (*(v60 + 16))(v61, v59, v62);
    v66 = sub_232545888();
    v67 = sub_2325461F8();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 160);
    v70 = *(v0 + 128);
    v71 = *(v0 + 136);
    v72 = *(v0 + 120);
    if (v68)
    {
      v73 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v96 = v92;
      *v73 = 136315138;
      sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
      v94 = v69;
      v74 = sub_232546608();
      v76 = v75;
      v77 = *(v70 + 8);
      v77(v71, v72);
      v78 = sub_2324C2220(v74, v76, &v96);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_2324C0000, v66, v67, "Ignoring DNS update: unknown device %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x238386450](v92, -1, -1);
      MEMORY[0x238386450](v73, -1, -1);

      v77(v94, v72);
    }

    else
    {

      v79 = *(v70 + 8);
      v79(v71, v72);
      v79(v69, v72);
    }

LABEL_9:
    v16 = *(v0 + 152);
    v15 = *(v0 + 160);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v20 = *(v0 + 104);
    v19 = *(v0 + 112);
    v21 = *(v0 + 96);
    v23 = *(v0 + 64);
    v22 = *(v0 + 72);

    v24 = *(v0 + 8);

    return v24();
  }

  v32 = v30;
  v33 = *(v0 + 104);
  v34 = *(v0 + 40);
  v35 = *(v0 + 248);
  v36 = *(v29 + 56);
  v37 = type metadata accessor for NDFDevice();
  v38 = *(v37 - 8);
  sub_2324CE250(v36 + *(v38 + 72) * v32, v33);

  (*(v38 + 56))(v33, 0, 1, v37);
  sub_2324C28AC(v33, &qword_27DD93578, &unk_2325480F0);
  *(v0 + 176) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  if (v35 != 1)
  {
    v80 = *(v0 + 24);

    v81 = sub_232545888();
    v82 = sub_2325461D8();

    v83 = os_log_type_enabled(v81, v82);
    v84 = *(v0 + 160);
    v86 = *(v0 + 120);
    v85 = *(v0 + 128);
    if (v83)
    {
      v88 = *(v0 + 16);
      v87 = *(v0 + 24);
      v89 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v90 = v96;
      *v89 = 136315138;
      *(v89 + 4) = sub_2324C2220(v88, v87, &v96);
      _os_log_impl(&dword_2324C0000, v81, v82, "Ignoring DNS update: unresponsive server %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x238386450](v90, -1, -1);
      MEMORY[0x238386450](v89, -1, -1);
    }

    (*(v85 + 8))(v84, v86);
    goto LABEL_9;
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 160);
  v41 = *(v0 + 120);
  v42 = *(v0 + 128);
  v43 = *(v0 + 24);
  v44 = *(v42 + 16);
  *(v0 + 184) = v44;
  *(v0 + 192) = (v42 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44(v39, v40, v41);

  v45 = sub_232545888();
  v46 = sub_232546208();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 152);
  v50 = *(v0 + 120);
  v49 = *(v0 + 128);
  if (v47)
  {
    v95 = v6;
    v52 = *(v0 + 16);
    v51 = *(v0 + 24);
    v53 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v96 = v93;
    *v53 = 136315394;
    *(v53 + 4) = sub_2324C2220(v52, v51, &v96);
    *(v53 + 12) = 2080;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v54 = sub_232546608();
    v56 = v55;
    v57 = *(v49 + 8);
    v57(v48, v50);
    v58 = sub_2324C2220(v54, v56, &v96);
    v6 = v95;

    *(v53 + 14) = v58;
    _os_log_impl(&dword_2324C0000, v45, v46, "DNS Server %s has started responding for device %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x238386450](v93, -1, -1);
    MEMORY[0x238386450](v53, -1, -1);
  }

  else
  {

    v57 = *(v49 + 8);
    v57(v48, v50);
  }

  *(v0 + 200) = v57;
  v91 = (*v6 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
  *(v0 + 208) = *(*v6 + 168);
  *(v0 + 216) = v91;

  return MEMORY[0x2822009F8](sub_232507198, v6, 0);
}

uint64_t sub_232507198()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  (*(v0 + 208))(1, 1, *(v0 + 160));

  return MEMORY[0x2822009F8](sub_232507214, v4, 0);
}

uint64_t sub_232507214()
{
  v44 = v0;
  v1 = *(v0 + 72);
  if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 128) + 8;
    (*(v0 + 200))(*(v0 + 160), *(v0 + 120));

    sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
LABEL_7:
    v25 = *(v0 + 152);
    v24 = *(v0 + 160);
    v27 = *(v0 + 136);
    v26 = *(v0 + 144);
    v29 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 96);
    v32 = *(v0 + 64);
    v31 = *(v0 + 72);

    v33 = *(v0 + 8);

    return v33();
  }

  v4 = *(v0 + 96);
  sub_23251FBDC(v1, v4, type metadata accessor for NDFEvent);
  if (*(v4 + 8) != 1)
  {
    v22 = *(v0 + 168);
    v23 = *(v0 + 128) + 8;
    (*(v0 + 200))(*(v0 + 160), *(v0 + 120));

    sub_23251FC44(*(v0 + 96), type metadata accessor for NDFEvent);
    goto LABEL_7;
  }

  v5 = *(v0 + 192);
  v6 = *(v0 + 176);
  v7 = *(v0 + 40);
  (*(v0 + 184))(*(v0 + 144), *(v0 + 160), *(v0 + 120));
  v8 = sub_232545888();
  v9 = sub_232546208();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 200);
  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  if (v10)
  {
    v42 = *(v0 + 200);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43 = v16;
    *v15 = 136315138;
    sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
    v17 = sub_232546608();
    v19 = v18;
    v20 = v14 + 8;
    v42(v12, v13);
    v21 = sub_2324C2220(v17, v19, &v43);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_2324C0000, v8, v9, "Retracting DNS outage event for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x238386450](v16, -1, -1);
    MEMORY[0x238386450](v15, -1, -1);
  }

  else
  {

    v20 = v14 + 8;
    v11(v12, v13);
  }

  *(v0 + 224) = v20;
  v35 = *(v0 + 168);
  v36 = *(v0 + 96);
  v37 = *(v0 + 80);
  v39 = *(v0 + 56);
  v38 = *(v0 + 64);
  v40 = *(v0 + 48);
  *(v36 + 9) = 3;
  sub_232545668();
  (*(v39 + 40))(v36 + *(v37 + 24), v38, v40);
  v41 = (*v35 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
  *(v0 + 232) = *(*v35 + 144);
  *(v0 + 240) = v41;

  return MEMORY[0x2822009F8](sub_2325075DC, v35, 0);
}

uint64_t sub_2325075DC()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 168);
  v3 = *(v0 + 40);
  (*(v0 + 232))(*(v0 + 96));

  return MEMORY[0x2822009F8](sub_232507650, v3, 0);
}

uint64_t sub_232507650()
{
  v1 = v0[28];
  v2 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[15];

  v2(v4, v5);
  sub_23251FC44(v0[12], type metadata accessor for NDFEvent);
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[17];
  v8 = v0[18];
  v11 = v0[13];
  v10 = v0[14];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];

  v15 = v0[1];

  return v15();
}

uint64_t sub_23250775C(char a1, char a2, char a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 211) = a4;
  *(v6 + 210) = a3;
  *(v6 + 209) = a2;
  *(v6 + 208) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932E0, qword_2325472E0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_232545688();
  *(v6 + 64) = v8;
  v9 = *(v8 - 8);
  *(v6 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93400, &qword_2325479C0) - 8) + 64) + 15;
  *(v6 + 88) = swift_task_alloc();
  v12 = type metadata accessor for NDFEvent(0);
  *(v6 + 96) = v12;
  v13 = *(v12 - 8);
  *(v6 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232507904, v5, 0);
}

uint64_t sub_232507904()
{
  v1 = sub_2324C8418();
  if (*v1)
  {
    v2 = *(*v1 + 144);
    v0[16] = v2;
    v3 = (*v2 + 168) & 0xFFFFFFFFFFFFLL | 0xEC33000000000000;
    v0[17] = *(*v2 + 168);
    v0[18] = v3;

    return MEMORY[0x2822009F8](sub_232507A88, v2, 0);
  }

  else
  {
    v4 = v0[6] + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
    v5 = sub_232545888();
    v6 = sub_2325461F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2324C0000, v5, v6, "NDFAdminController is nil", v7, 2u);
      MEMORY[0x238386450](v7, -1, -1);
    }

    v9 = v0[14];
    v8 = v0[15];
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[7];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_232507A88()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  (*(v0 + 136))(3, 0, *(v0 + 40));

  return MEMORY[0x2822009F8](sub_232507B04, v4, 0);
}

uint64_t sub_232507B04()
{
  v45 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 211);
    sub_23251FBDC(v1, v8, type metadata accessor for NDFEvent);
    v10 = *(v8 + 9);
    if (v9 == 1)
    {
      *(v0 + 206) = v10;
      *(v0 + 207) = 3;
      sub_2324E6DD0();
      if ((sub_232545F48() & 1) == 0)
      {
        v20 = *(v0 + 48) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
        v21 = sub_232545888();
        v22 = sub_232546208();
        v23 = os_log_type_enabled(v21, v22);
        v24 = *(v0 + 120);
        v25 = *(v0 + 128);
        if (v23)
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v44 = v27;
          *v26 = 136315138;
          swift_beginAccess();
          v28 = sub_2325384B0();
          v30 = sub_2324C2220(v28, v29, &v44);

          *(v26 + 4) = v30;
          _os_log_impl(&dword_2324C0000, v21, v22, "Event %s is already in progress, ignoring", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x238386450](v27, -1, -1);
          MEMORY[0x238386450](v26, -1, -1);
        }

        v19 = v24;
        goto LABEL_15;
      }

      v11 = *(v0 + 128);
    }

    else
    {
      *(v0 + 204) = v10;
      *(v0 + 205) = 3;
      sub_2324E6DD0();
      v18 = sub_232545F48();
      v3 = *(v0 + 128);
      if ((v18 & 1) == 0)
      {
        v38 = *(v0 + 120);
        v39 = *(v0 + 96);
        v41 = *(v0 + 72);
        v40 = *(v0 + 80);
        v42 = *(v0 + 64);
        *(v8 + 9) = 3;
        sub_232545668();
        (*(v41 + 40))(v38 + *(v39 + 24), v40, v42);
        v43 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
        *(v0 + 152) = *(*v3 + 144);
        *(v0 + 160) = v43;
        v7 = sub_232507F78;
        goto LABEL_20;
      }
    }

    v19 = *(v0 + 120);
LABEL_15:
    sub_23251FC44(v19, type metadata accessor for NDFEvent);
    goto LABEL_16;
  }

  v2 = *(v0 + 211);
  sub_2324C28AC(v1, &qword_27DD93400, &qword_2325479C0);
  if (v2)
  {
    v3 = *(v0 + 128);
    v4 = *(v0 + 56);
    *(v0 + 200) = sub_232537190(*(v0 + 208), *(v0 + 209), *(v0 + 210));
    v5 = sub_2325456F8();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = (*v3 + 160) & 0xFFFFFFFFFFFFLL | 0xFB9000000000000;
    *(v0 + 168) = *(*v3 + 160);
    *(v0 + 176) = v6;
    v7 = sub_23250809C;
LABEL_20:

    return MEMORY[0x2822009F8](v7, v3, 0);
  }

  v12 = *(v0 + 48) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v13 = sub_232545888();
  v14 = sub_2325461E8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 128);
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2324C0000, v13, v14, "Ignoring spurious event end notification for networkMisconfiguration", v17, 2u);
    MEMORY[0x238386450](v17, -1, -1);
  }

LABEL_16:
  v32 = *(v0 + 112);
  v31 = *(v0 + 120);
  v34 = *(v0 + 80);
  v33 = *(v0 + 88);
  v35 = *(v0 + 56);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_232507F78()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 48);
  (*(v0 + 152))(*(v0 + 120));

  return MEMORY[0x2822009F8](sub_232507FE8, v3, 0);
}

uint64_t sub_232507FE8()
{
  v1 = v0[16];

  sub_23251FC44(v0[15], type metadata accessor for NDFEvent);
  v3 = v0[14];
  v2 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23250809C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  (*(v0 + 168))(*(v0 + 200) & 0xFFFFFFLL, 0, *(v0 + 40), v4);
  sub_2324C28AC(v4, &unk_27DD932E0, qword_2325472E0);

  return MEMORY[0x2822009F8](sub_232508144, v5, 0);
}

uint64_t sub_232508144()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v2 = sub_232545888();
  v3 = sub_232546208();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 210);
    v5 = *(v0 + 209);
    v6 = *(v0 + 208);
    v7 = swift_slowAlloc();
    *v7 = 67109632;
    *(v7 + 4) = v6;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v5;
    *(v7 + 14) = 1024;
    *(v7 + 16) = v4;
    _os_log_impl(&dword_2324C0000, v2, v3, "Sending network misconfig event, sameNetwork: %{BOOL}d, doubleNAT: %{BOOL}d, p2pTrafficBlocked: %{BOOL}d", v7, 0x14u);
    MEMORY[0x238386450](v7, -1, -1);
  }

  v8 = *(v0 + 128);

  v9 = (*v8 + 144) & 0xFFFFFFFFFFFFLL | 0x342A000000000000;
  *(v0 + 184) = *(*v8 + 144);
  *(v0 + 192) = v9;

  return MEMORY[0x2822009F8](sub_23250827C, v8, 0);
}

uint64_t sub_23250827C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  v3 = *(v0 + 48);
  (*(v0 + 184))(*(v0 + 112));

  return MEMORY[0x2822009F8](sub_2325082F0, v3, 0);
}

uint64_t sub_2325082F0()
{
  v1 = v0[16];
  v2 = v0[14];

  sub_23251FC44(v2, type metadata accessor for NDFEvent);
  v4 = v0[14];
  v3 = v0[15];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2325083A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v113 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v105 - v7;
  v8 = sub_2325456F8();
  v108 = *(v8 - 8);
  v109 = v8;
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v8);
  v110 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NDFDevice();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v106 = &v105 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v105 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v105 - v22;
  v24 = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;
  v115 = a2;
  sub_2324CE250(a2, &v105 - v22);
  v112 = v24;
  v25 = sub_232545888();
  v26 = sub_2325461D8();
  v27 = os_log_type_enabled(v25, v26);
  v114 = v21;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v105 = v12;
    v30 = v29;
    v116[0] = v29;
    *v28 = 136315138;
    v31 = sub_2324F6270();
    v32 = v11;
    v33 = v3;
    v35 = v34;
    sub_23251FC44(v23, type metadata accessor for NDFDevice);
    v36 = sub_2324C2220(v31, v35, v116);
    v3 = v33;
    v11 = v32;

    *(v28 + 4) = v36;
    _os_log_impl(&dword_2324C0000, v25, v26, "Updating in-memory device with: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v37 = v30;
    v12 = v105;
    MEMORY[0x238386450](v37, -1, -1);
    v38 = v28;
    v21 = v114;
    MEMORY[0x238386450](v38, -1, -1);
  }

  else
  {

    v39 = sub_23251FC44(v23, type metadata accessor for NDFDevice);
  }

  v40 = (*(*v3 + 168))(v39);
  if (*(v40 + 16) && (v41 = sub_2324E6CD4(v115), (v42 & 1) != 0))
  {
    v43 = v106;
    sub_2324CE250(*(v40 + 56) + v12[9] * v41, v106);

    sub_23251FBDC(v43, v21, type metadata accessor for NDFDevice);
    v44 = sub_232545888();
    v45 = sub_2325461D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v116[0] = v47;
      *v46 = 136315138;
      swift_beginAccess();
      v48 = sub_2324F6270();
      v50 = sub_2324C2220(v48, v49, v116);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2324C0000, v44, v45, "  > before update: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x238386450](v47, -1, -1);
      MEMORY[0x238386450](v46, -1, -1);
    }

    swift_beginAccess();
    v51 = v115;
    LODWORD(v106) = sub_2324F6834(v115);
    LODWORD(v105) = sub_2324F6BBC(v51);
    swift_beginAccess();
    v52 = sub_2324F6DD8(v51);
    swift_endAccess();
    v53 = sub_232545888();
    v54 = sub_2325461D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v115 = v3;
      v57 = v12;
      v58 = v56;
      v116[0] = v56;
      *v55 = 136315138;
      v59 = sub_2324F6270();
      v61 = sub_2324C2220(v59, v60, v116);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_2324C0000, v53, v54, "  < after update: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      v62 = v58;
      v12 = v57;
      v3 = v115;
      MEMORY[0x238386450](v62, -1, -1);
      MEMORY[0x238386450](v55, -1, -1);
    }

    if (v52)
    {
      v63 = v110;
      v64 = v114;
      (*(v108 + 16))(v110, v114, v109);
      v65 = v111;
      sub_2324CE250(v64, v111);
      v66 = v12[7];
      v66(v65, 0, 1, v11);
      v67 = (*(*v3 + 184))(v116);
      sub_2324FCF78(v65, v63);
      v67(v116, 0);
      v68 = v106;
      if (v106)
      {
        v69 = sub_232545888();
        v70 = sub_2325461D8();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_2324C0000, v69, v70, "  ! HomeKit properties have changed", v71, 2u);
          MEMORY[0x238386450](v71, -1, -1);
        }
      }

      v72 = v113;
      v73 = v114;
      sub_2324CE250(v114, v113);
      v66(v72, 0, 1, v11);
      sub_23251FC44(v73, type metadata accessor for NDFDevice);
      if (v105)
      {
        v74 = 256;
      }

      else
      {
        v74 = 0;
      }
    }

    else
    {
      v94 = v12;
      v95 = v11;
      v96 = sub_232545888();
      v97 = sub_2325461D8();
      v98 = os_log_type_enabled(v96, v97);
      v99 = v114;
      if (v98)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v116[0] = v101;
        *v100 = 136315138;
        v102 = sub_2324F6270();
        v104 = sub_2324C2220(v102, v103, v116);

        *(v100 + 4) = v104;
        v99 = v114;
        _os_log_impl(&dword_2324C0000, v96, v97, "  = %s hasn't changed, skipping update", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v101);
        MEMORY[0x238386450](v101, -1, -1);
        MEMORY[0x238386450](v100, -1, -1);
      }

      (v94[7])(v113, 1, 1, v95);
      sub_23251FC44(v99, type metadata accessor for NDFDevice);
      v68 = 0;
      v74 = 0;
    }
  }

  else
  {

    sub_2324CE250(v115, v16);
    v75 = sub_232545888();
    v76 = sub_2325461D8();
    v77 = os_log_type_enabled(v75, v76);
    v107 = v11;
    if (v77)
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v116[0] = v79;
      *v78 = 136315138;
      v80 = sub_2324F6270();
      v81 = v12;
      v83 = v82;
      sub_23251FC44(v16, type metadata accessor for NDFDevice);
      v84 = sub_2324C2220(v80, v83, v116);
      v12 = v81;

      *(v78 + 4) = v84;
      _os_log_impl(&dword_2324C0000, v75, v76, "  + new device: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v79);
      MEMORY[0x238386450](v79, -1, -1);
      MEMORY[0x238386450](v78, -1, -1);
    }

    else
    {

      sub_23251FC44(v16, type metadata accessor for NDFDevice);
    }

    v85 = v110;
    v86 = v115;
    (*(v108 + 16))(v110, v115, v109);
    v87 = v111;
    sub_2324CE250(v86, v111);
    v88 = v12[7];
    v89 = v107;
    v88(v87, 0, 1, v107);
    v90 = (*(*v3 + 184))(v116);
    v91 = v87;
    v68 = 1;
    sub_2324FCF78(v91, v85);
    v90(v116, 0);
    v92 = v113;
    sub_2324CE250(v86, v113);
    v88(v92, 0, 1, v89);
    v74 = 256;
  }

  return v74 | v68 & 1u;
}

uint64_t sub_232508E48(uint64_t a1, char a2, char a3)
{
  *(v4 + 49) = a3;
  *(v4 + 48) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  return MEMORY[0x2822009F8](sub_232508E70, v3, 0);
}

uint64_t sub_232508E70()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_23251FF40(&unk_2814D4E70, type metadata accessor for NDFDeviceManager);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v2;
  *(v6 + 33) = v1;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_232508FBC;
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v3, v5, 0xD000000000000033, 0x800000023254CBF0, sub_23251FD04, v6, v9);
}

uint64_t sub_232508FBC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2325090E8, v3, 0);
}

uint64_t sub_232509100(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a1;
  v28 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93318, &qword_232547938);
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93320, &qword_232547940);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = sub_232545B08();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v27 - v21;
  (*(v11 + 16))(v14, v27, v10);
  v23 = swift_allocObject();
  v24 = v28;
  *(v23 + 16) = a2;
  *(v23 + 24) = v24;
  v25 = v30;
  *(v23 + 32) = v29;
  *(v23 + 33) = v25;

  sub_232545AD8();
  (*(v16 + 16))(v20, v22, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD932C0, &unk_2325480D0);
  sub_232546118();
  (*(v6 + 8))(v9, v31);
  return (*(v16 + 8))(v22, v15);
}

uint64_t sub_2325093E4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2324C290C;

  return sub_232509498(a2, a3, a4);
}

uint64_t sub_232509498(uint64_t a1, char a2, char a3)
{
  *(v4 + 647) = a3;
  *(v4 + 646) = a2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v3;
  v5 = sub_2325456F8();
  *(v4 + 184) = v5;
  v6 = *(v5 - 8);
  *(v4 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD93578, &unk_2325480F0) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v9 = sub_232545688();
  *(v4 + 232) = v9;
  v10 = *(v9 - 8);
  *(v4 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v12 = type metadata accessor for NDFDevice();
  *(v4 + 256) = v12;
  v13 = *(v12 - 8);
  *(v4 + 264) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2325096C8, v3, 0);
}

uint64_t sub_2325096C8(uint64_t a1, void *a2, uint64_t a3)
{
  v308 = v3;
  v4 = *(v3 + 168);
  v5 = *(v4 + 16);
  v6 = &qword_2814D6FF0[2];
  v7 = &off_232547000;
  if (*(v3 + 646) == 1)
  {
    if (v5 != 1)
    {
      v8 = *(v3 + 176);

      v9 = sub_232545888();
      v10 = sub_2325461F8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = *(v3 + 256);
        v12 = *(v3 + 168);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v307 = v14;
        *v13 = 134218242;
        *(v13 + 4) = v5;

        *(v13 + 12) = 2080;
        v15 = MEMORY[0x238385650](v12, v11);
        v17 = sub_2324C2220(v15, v16, &v307);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_2324C0000, v9, v10, "Update for self device should only contain one record, but found %ld: %s", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x238386450](v14, -1, -1);
        MEMORY[0x238386450](v13, -1, -1);
      }

      else
      {
        v219 = *(v3 + 168);
      }

      goto LABEL_117;
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:
    v19 = *(v3 + 256);
    v18 = *(v3 + 264);
    v294 = *(v3 + 176);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v21 = v4 + v20;
    v300 = *(v18 + 72);
    v286 = (*(v3 + 240) + 40);
    v22 = MEMORY[0x277D84F90];
    v283 = *(v4 + 16);
    v285 = v19;
    v288 = v20;
    do
    {
      v23 = *(v3 + 646);
      sub_2324CE250(v21, *(v3 + 336));
      if (v23 == 1)
      {
        v24 = *(v3 + 336);
        v25 = *(v3 + 248);
        v26 = *(v3 + 232);
        sub_232545668();
        swift_beginAccess();
        (*v286)(v24 + *(v19 + 20), v25, v26);
        v27 = sub_232545888();
        v28 = sub_2325461D8();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = *(v3 + 336);
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v307 = v31;
          *v30 = 136315138;
          v32 = sub_2324F6270();
          v34 = sub_2324C2220(v32, v33, &v307);

          *(v30 + 4) = v34;
          _os_log_impl(&dword_2324C0000, v27, v28, "About to process self device record: %s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v31);
          MEMORY[0x238386450](v31, -1, -1);
          v35 = v30;
          v19 = v285;
          MEMORY[0x238386450](v35, -1, -1);
        }

        v20 = v288;
      }

      v37 = *(v3 + 328);
      v36 = *(v3 + 336);
      swift_beginAccess();
      sub_2324CE250(v36, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2324E1E80(0, v22[2] + 1, 1, v22);
      }

      v39 = v22[2];
      v38 = v22[3];
      if (v39 >= v38 >> 1)
      {
        v22 = sub_2324E1E80(v38 > 1, v39 + 1, 1, v22);
      }

      v40 = *(v3 + 328);
      v41 = *(v3 + 336);
      v22[2] = v39 + 1;
      sub_23251FBDC(v40, v22 + v20 + v39 * v300, type metadata accessor for NDFDevice);
      v4 = sub_23251FC44(v41, type metadata accessor for NDFDevice);
      v21 += v300;
      --v5;
    }

    while (v5);
    v6 = qword_2814D6FF0 + 16;
    v42 = v283;
    v7 = &off_232547000;
    goto LABEL_18;
  }

  v42 = 0;
  v22 = MEMORY[0x277D84F90];
LABEL_18:
  *(v3 + 344) = v42;
  *(v3 + 352) = v22;
  v43 = v22[2];
  *(v3 + 360) = v43;
  if (!v43)
  {
    v45 = MEMORY[0x277D84F90];
    v49 = MEMORY[0x277D84F90];
LABEL_85:
    *(v3 + 544) = v49;
    *(v3 + 536) = v45;
    *(v3 + 528) = 0;
    v206 = *(v3 + 176);
    v207 = *(v3 + 647);
    sub_23251BB00();
    if (v207 == 1)
    {
      v208 = *(v3 + 168);
      v209 = *(v3 + 176);
      *(v3 + 552) = OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_logger;

      v210 = sub_232545888();
      v211 = sub_232546208();
      if (os_log_type_enabled(v210, v211))
      {
        v212 = *(v3 + 344);
        v213 = *(v3 + 168);
        v214 = swift_slowAlloc();
        *v214 = 134218240;
        *(v214 + 4) = v49[2];

        *(v214 + 12) = 2048;
        *(v214 + 14) = v212;

        _os_log_impl(&dword_2324C0000, v210, v211, "Ready to process %ld changed (of %ld total) incoming device updates", v214, 0x16u);
        MEMORY[0x238386450](v214, -1, -1);
      }

      else
      {
        v215 = *(v3 + 168);
      }

      if (v49[2])
      {
        v216 = sub_2324C8418();
        v217 = *v216;
        *(v3 + 560) = *v216;
        if (v217)
        {
          v218 = *v217 + 168;
          *(v3 + 568) = *v218;
          *(v3 + 576) = v218 & 0xFFFFFFFFFFFFLL | 0x90EB000000000000;

          v4 = sub_2325107BC;
          a2 = v217;
          a3 = 0;

          return MEMORY[0x2822009F8](v4, a2, a3);
        }

        v235 = *(v3 + 176) + *(v3 + 552);
        v236 = sub_232545888();
        v237 = sub_2325461F8();
        if (os_log_type_enabled(v236, v237))
        {
          v238 = swift_slowAlloc();
          *v238 = 0;
          _os_log_impl(&dword_2324C0000, v236, v237, "No persistence controller available", v238, 2u);
          MEMORY[0x238386450](v238, -1, -1);
        }

        v49 = *(v3 + 544);
      }
    }

    *(v3 + 616) = v49;
    v239 = *(v3 + 536);
    if (*(v239 + 16))
    {
      v240 = *(v3 + 176);
      v241 = *(v3 + 536);

      v242 = sub_232545888();
      v243 = sub_232546208();
      v244 = os_log_type_enabled(v242, v243);
      v245 = *(v3 + 536);
      v246 = *(v3 + 352);
      if (v244)
      {
        v247 = swift_slowAlloc();
        *v247 = 134217984;
        *(v247 + 4) = *(v239 + 16);

        _os_log_impl(&dword_2324C0000, v242, v243, "Ready to trigger misconfiguration detection for %ld device updates with HomeKit or network signature changes", v247, 0xCu);
        MEMORY[0x238386450](v247, -1, -1);
      }

      else
      {
        v259 = *(v3 + 536);
      }

      v260 = *(**(v3 + 176) + 512);
      v305 = (v260 + *v260);
      v261 = v260[1];
      v262 = swift_task_alloc();
      *(v3 + 624) = v262;
      *v262 = v3;
      v262[1] = sub_232511298;
      v263 = *(v3 + 176);
      v232 = *(v3 + 536);
      v233 = v305;

      return v233(v232);
    }

    v248 = *(v3 + 352);

    v250 = *((*(**(v3 + 176) + 192))(v249) + 16);

    v251 = *(v3 + 616);
    v252 = *(v3 + 536);
    if (v250)
    {
      v253 = *(*(v3 + 176) + OBJC_IVAR____TtC29SymptomNetworkDiagnosticsCore16NDFDeviceManager_hasTelemetryCollectionStarted);

      if ((v253 & 1) == 0)
      {
        v254 = *(**(v3 + 176) + 304);
        v304 = (v254 + *v254);
        v255 = v254[1];
        v256 = swift_task_alloc();
        *(v3 + 632) = v256;
        *v256 = v3;
        v256[1] = sub_232511624;
        v257 = *(v3 + 176);
        v258 = v304;

        return v258();
      }
    }

    else
    {
    }

LABEL_117:
    v265 = *(v3 + 328);
    v264 = *(v3 + 336);
    v267 = *(v3 + 312);
    v266 = *(v3 + 320);
    v269 = *(v3 + 296);
    v268 = *(v3 + 304);
    v271 = *(v3 + 280);
    v270 = *(v3 + 288);
    v272 = *(v3 + 272);
    v273 = *(v3 + 248);
    v291 = *(v3 + 224);
    v293 = *(v3 + 216);
    v298 = *(v3 + 208);
    v306 = *(v3 + 200);

    v274 = *(v3 + 8);

    return v274();
  }

  v44 = 0;
  v284 = v3 + 16;
  v45 = MEMORY[0x277D84F90];
  v46 = *(v3 + 264);
  v47 = &qword_27DD93578;
  v48 = &unk_2325480F0;
  *(v3 + 368) = v6[21];
  *(v3 + 640) = *(v46 + 80);
  v292 = *(v7 + 48);
  v49 = v45;
  while (1)
  {
    *(v3 + 384) = v45;
    *(v3 + 392) = v49;
    *(v3 + 376) = v44;
    v52 = *(v3 + 352);
    if (v44 >= *(v52 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v4, a2, a3);
    }

    v301 = v45;
    v53 = *(v3 + 368);
    v54 = *(v3 + 312);
    v55 = *(v3 + 320);
    v56 = *(v3 + 176);
    v57 = v52 + ((*(v3 + 640) + 32) & ~*(v3 + 640));
    v58 = *(*(v3 + 264) + 72);
    *(v3 + 400) = v58;
    sub_2324CE250(v57 + v58 * v44, v55);
    sub_2324CE250(v55, v54);
    v59 = sub_232545888();
    v60 = sub_2325461D8();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v3 + 312);
    v295 = v49;
    if (v61)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v307 = v64;
      *v63 = v292;
      v65 = sub_2324F6270();
      v67 = v66;
      sub_23251FC44(v62, type metadata accessor for NDFDevice);
      v68 = sub_2324C2220(v65, v67, &v307);
      v48 = &unk_2325480F0;

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2324C0000, v59, v60, "Obtained device update %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x238386450](v64, -1, -1);
      MEMORY[0x238386450](v63, -1, -1);
    }

    else
    {

      sub_23251FC44(v62, type metadata accessor for NDFDevice);
    }

    v69 = *(v3 + 256);
    v70 = *(v3 + 264);
    v72 = *(v3 + 216);
    v71 = *(v3 + 224);
    v73 = *(v3 + 176);
    v74 = sub_2325083A8(v71, *(v3 + 320));
    *(v3 + 644) = v74;
    sub_2324CF3C4(v71, v72, v47, v48);
    if ((*(v70 + 48))(v72, 1, v69) == 1)
    {
      v75 = *(v3 + 368);
      v76 = *(v3 + 320);
      v77 = *(v3 + 272);
      v78 = *(v3 + 176);
      sub_2324C28AC(*(v3 + 216), v47, v48);
      sub_2324CE250(v76, v77);
      v79 = v48;
      v80 = sub_232545888();
      v81 = sub_2325461E8();
      v82 = os_log_type_enabled(v80, v81);
      v83 = *(v3 + 320);
      v84 = *(v3 + 272);
      v85 = *(v3 + 224);
      if (v82)
      {
        v289 = *(v3 + 224);
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v307 = v87;
        *v86 = v292;
        v88 = sub_2324F6270();
        v287 = v83;
        v90 = v89;
        sub_23251FC44(v84, type metadata accessor for NDFDevice);
        v91 = sub_2324C2220(v88, v90, &v307);

        *(v86 + 4) = v91;
        _os_log_impl(&dword_2324C0000, v80, v81, "No updates to device %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        v92 = v87;
        v47 = &qword_27DD93578;
        MEMORY[0x238386450](v92, -1, -1);
        MEMORY[0x238386450](v86, -1, -1);

        sub_2324C28AC(v289, &qword_27DD93578, v79);
        v93 = v287;
      }

      else
      {

        sub_23251FC44(v84, type metadata accessor for NDFDevice);
        sub_2324C28AC(v85, v47, v79);
        v93 = v83;
      }

      v4 = sub_23251FC44(v93, type metadata accessor for NDFDevice);
      v48 = v79;
      v49 = v295;
LABEL_83:
      v45 = v301;
      goto LABEL_21;
    }

    v94 = *(v3 + 646);
    sub_23251FBDC(*(v3 + 216), *(v3 + 304), type metadata accessor for NDFDevice);
    if (v94 == 1 && v74 >= 0x100u)
    {
      break;
    }

LABEL_64:
    *(v3 + 488) = 0;
    v171 = *(v3 + 392);
    v172 = *(v3 + 304);
    v173 = *(v3 + 288);
    swift_beginAccess();
    sub_2324CE250(v172, v173);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(v3 + 392);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v49 = sub_2324E1E80(0, v49[2] + 1, 1, *(v3 + 392));
    }

    v176 = v49[2];
    v175 = v49[3];
    if (v176 >= v175 >> 1)
    {
      v49 = sub_2324E1E80(v175 > 1, v176 + 1, 1, v49);
    }

    *(v3 + 496) = v49;
    v177 = *(v3 + 400);
    v178 = *(v3 + 640);
    v179 = *(v3 + 288);
    v180 = *(v3 + 644);
    v49[2] = v176 + 1;
    sub_23251FBDC(v179, v49 + ((v178 + 32) & ~v178) + v177 * v176, type metadata accessor for NDFDevice);
    v45 = *(v3 + 384);
    if (v180 > 0xFF || (v180 & 1) != 0)
    {
      sub_2324CE250(*(v3 + 304), *(v3 + 280));
      v181 = swift_isUniquelyReferenced_nonNull_native();
      v45 = *(v3 + 384);
      if ((v181 & 1) == 0)
      {
        v45 = sub_2324E1E80(0, v45[2] + 1, 1, *(v3 + 384));
      }

      v183 = v45[2];
      v182 = v45[3];
      if (v183 >= v182 >> 1)
      {
        v45 = sub_2324E1E80(v182 > 1, v183 + 1, 1, v45);
      }

      v184 = *(v3 + 400);
      v185 = *(v3 + 640);
      v186 = *(v3 + 280);
      v45[2] = v183 + 1;
      sub_23251FBDC(v186, v45 + ((v185 + 32) & ~v185) + v184 * v183, type metadata accessor for NDFDevice);
    }

    *(v3 + 504) = v45;
    v187 = *(v3 + 646);
    (*(**(v3 + 176) + 368))(*(v3 + 304));
    if (v187 == 1)
    {
      v188 = *(v3 + 176) + *(v3 + 368);
      v189 = sub_232545888();
      v190 = sub_2325461D8();
      if (os_log_type_enabled(v189, v190))
      {
        v191 = swift_slowAlloc();
        *v191 = 0;
        _os_log_impl(&dword_2324C0000, v189, v190, "Post-update actions for this local device", v191, 2u);
        MEMORY[0x238386450](v191, -1, -1);
      }

      v192 = *sub_2324C8418();
      v193 = *(v3 + 368);
      v194 = *(v3 + 176);
      if (v192)
      {
        v220 = *(v192 + 152);
        *(v3 + 512) = v220;

        v221 = sub_232545888();
        v222 = sub_232546208();
        if (os_log_type_enabled(v221, v222))
        {
          v223 = *(v3 + 304);
          v224 = swift_slowAlloc();
          v225 = swift_slowAlloc();
          v307 = v225;
          *v224 = v292;
          v226 = sub_2324F6270();
          v228 = sub_2324C2220(v226, v227, &v307);

          *(v224 + 4) = v228;
          _os_log_impl(&dword_2324C0000, v221, v222, "Submitting CK device update: %s", v224, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v225);
          MEMORY[0x238386450](v225, -1, -1);
          MEMORY[0x238386450](v224, -1, -1);
        }

        v229 = *(*v220 + 344);
        v303 = (v229 + *v229);
        v230 = v229[1];
        v231 = swift_task_alloc();
        *(v3 + 520) = v231;
        *v231 = v3;
        v231[1] = sub_23250EC64;
        v232 = *(v3 + 304);
        v233 = v303;

        return v233(v232);
      }

      v301 = v45;
      v195 = sub_232545888();
      v196 = sub_2325461F8();
      v197 = os_log_type_enabled(v195, v196);
      v198 = *(v3 + 320);
      v199 = *(v3 + 304);
      v200 = *(v3 + 224);
      if (v197)
      {
        v297 = *(v3 + 304);
        v201 = v47;
        v202 = v49;
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_2324C0000, v195, v196, "Cannot get distributionController to call submitCloudKitDeviceUpdate", v203, 2u);
        v204 = v203;
        v49 = v202;
        v47 = v201;
        MEMORY[0x238386450](v204, -1, -1);

        sub_2324C28AC(v200, v201, v48);
        sub_23251FC44(v198, type metadata accessor for NDFDevice);
        v205 = v297;
      }

      else
      {

        sub_2324C28AC(v200, v47, v48);
        sub_23251FC44(v198, type metadata accessor for NDFDevice);
        v205 = v199;
      }

      v4 = sub_23251FC44(v205, type metadata accessor for NDFDevice);
      goto LABEL_83;
    }

    v50 = *(v3 + 320);
    v51 = *(v3 + 304);
    sub_2324C28AC(*(v3 + 224), v47, v48);
    sub_23251FC44(v50, type metadata accessor for NDFDevice);
    v4 = sub_23251FC44(v51, type metadata accessor for NDFDevice);
LABEL_21:
    v44 = *(v3 + 376) + 1;
    if (v44 == *(v3 + 360))
    {
      goto LABEL_85;
    }
  }

  v95 = *(v3 + 176) + *(v3 + 368);
  v96 = sub_232545888();
  v97 = sub_232546208();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_2324C0000, v96, v97, "Observed network signature change for self device, running Bonjour probe to determine if multicast traffic is restricted", v98, 2u);
    MEMORY[0x238386450](v98, -1, -1);
  }

  v99 = *(v3 + 304);
  v100 = *(v3 + 256);

  swift_beginAccess();
  v101 = (v99 + v100[8]);
  v102 = *v101;
  *(v3 + 408) = *v101;
  v103 = v101[1];
  *(v3 + 416) = v103;
  v104 = (v99 + v100[9]);
  v105 = *v104;
  *(v3 + 424) = *v104;
  v106 = v104[1];
  *(v3 + 432) = v106;
  *(v3 + 648) = *(v99 + v100[15]);
  if (v103 >> 60 != 15)
  {
    v107 = *(v3 + 368);
    v108 = *(v3 + 176);
    sub_2324DB3D0(v102, v103);
    sub_2324DB3D0(v102, v103);
    sub_2324DB3D0(v105, v106);
    sub_2324DB3D0(v102, v103);
    v109 = sub_232545888();
    v110 = sub_2325461E8();
    sub_2324DB438(v102, v103);
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v307 = v112;
      *v111 = v292;
      sub_2324DB3E4(v102, v103);
      v113 = sub_2325455B8();
      v115 = v114;
      sub_2324DB438(v102, v103);
      v116 = sub_2324C2220(v113, v115, &v307);

      *(v111 + 4) = v116;
      _os_log_impl(&dword_2324C0000, v109, v110, "v4 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v112);
      MEMORY[0x238386450](v112, -1, -1);
      MEMORY[0x238386450](v111, -1, -1);
    }

    v47 = &qword_27DD93578;
    v118 = *sub_2324C8418();
    if (v118)
    {
      v275 = *(v118 + 136);
      *(v3 + 440) = v275;
      v276 = *(*v275 + 104);

      v299 = (v276 + *v276);
      v277 = v276[1];
      v278 = swift_task_alloc();
      *(v3 + 448) = v278;
      *v278 = v3;
      v279 = sub_23250B4A0;
      goto LABEL_122;
    }

    sub_2324DB438(v102, v103);
    v119 = *(v3 + 432);
    if (v119 >> 60 != 15)
    {
      v120 = *(v3 + 368);
      v121 = *(v3 + 176);
      sub_2324DB3E4(*(v3 + 424), v119);
      v122 = sub_232545888();
      v123 = sub_2325461D8();
      v124 = os_log_type_enabled(v122, v123);
      v126 = *(v3 + 424);
      v125 = *(v3 + 432);
      if (v124)
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_2324C0000, v122, v123, "Not running Bonjour probe again for netSigv6 update as netSigv4 update already triggered it", v127, 2u);
        MEMORY[0x238386450](v127, -1, -1);
      }

      sub_2324DB438(v126, v125);
    }

    v117 = 1;
    goto LABEL_51;
  }

  sub_2324DB3D0(v105, v106);
  if (v106 >> 60 == 15)
  {
    v117 = 0;
LABEL_50:
    v47 = &qword_27DD93578;
LABEL_51:
    v139 = *(v3 + 176) + *(v3 + 368);
    v140 = sub_232545888();
    v141 = sub_232546208();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v307 = v143;
      *v142 = 136315394;
      if (v117)
      {
        v144 = 7233874;
      }

      else
      {
        v144 = 0x20746F6E20646944;
      }

      if (v117)
      {
        v145 = 0xE300000000000000;
      }

      else
      {
        v145 = 0xEB000000006E7572;
      }

      v146 = sub_2324C2220(v144, v145, &v307);

      *(v142 + 4) = v146;
      *(v142 + 12) = 2080;
      v147 = sub_2324C2220(0x6E776F6E6B6E75, 0xE700000000000000, &v307);

      *(v142 + 14) = v147;
      _os_log_impl(&dword_2324C0000, v140, v141, "%s Bonjour probe, network restricts multicast traffic: %s", v142, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x238386450](v143, -1, -1);
      MEMORY[0x238386450](v142, -1, -1);
    }

    if (*(v3 + 648) != 2)
    {
      v148 = *(v3 + 176) + *(v3 + 368);
      v149 = sub_232545888();
      v150 = sub_2325461D8();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = *(v3 + 304);
        v152 = *(v3 + 184);
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v307 = v154;
        *v153 = 136315394;
        sub_23251FF40(&qword_2814D62A0, MEMORY[0x277CC95F0]);
        v155 = sub_232546608();
        v157 = sub_2324C2220(v155, v156, &v307);

        *(v153 + 4) = v157;
        *(v153 + 12) = 2080;
        v158 = sub_2324C2220(7104878, 0xE300000000000000, &v307);

        *(v153 + 14) = v158;
        _os_log_impl(&dword_2324C0000, v149, v150, "About to update multicastTrafficBlocked property for %s to %s", v153, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x238386450](v154, -1, -1);
        MEMORY[0x238386450](v153, -1, -1);
      }

      v160 = *(v3 + 296);
      v159 = *(v3 + 304);
      v161 = *(v3 + 256);
      v162 = *(v3 + 264);
      v163 = *(v3 + 240);
      v164 = *(v3 + 248);
      v165 = *(v3 + 232);
      v290 = *(v3 + 200);
      v166 = *(v3 + 192);
      v296 = *(v3 + 184);
      v302 = *(v3 + 208);
      v167 = *(v3 + 176);
      *(v159 + *(v161 + 60)) = 2;
      sub_232545668();
      (*(v163 + 40))(v159 + *(v161 + 20), v164, v165);
      sub_2324CE250(v159, v160);
      swift_beginAccess();
      sub_2324F6DD8(v160);
      swift_endAccess();
      sub_23251FC44(v160, type metadata accessor for NDFDevice);
      (*(v166 + 16))(v290, v159, v296);
      sub_2324CE250(v159, v302);
      (*(v162 + 56))(v302, 0, 1, v161);
      v168 = (*(*v167 + 184))(v284);
      sub_2324FCF78(v302, v290);
      v168(v284, 0);
      v47 = &qword_27DD93578;
    }

    v169 = *(v3 + 424);
    v170 = *(v3 + 432);
    sub_2324DB438(*(v3 + 408), *(v3 + 416));
    sub_2324DB438(v169, v170);
    v48 = &unk_2325480F0;
    goto LABEL_64;
  }

  v128 = *(v3 + 368);
  v129 = *(v3 + 176);
  sub_2324DB3D0(v105, v106);
  sub_2324DB3E4(v105, v106);
  v130 = sub_232545888();
  v131 = sub_2325461E8();
  sub_2324DB438(v105, v106);
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v307 = v133;
    *v132 = v292;
    sub_2324DB3E4(v105, v106);
    v134 = sub_2325455B8();
    v136 = v135;
    sub_2324DB438(v105, v106);
    v137 = sub_2324C2220(v134, v136, &v307);

    *(v132 + 4) = v137;
    _os_log_impl(&dword_2324C0000, v130, v131, "v6 network signature changed to %s, running Bonjour probe to determine multicast traffic restriction", v132, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v133);
    MEMORY[0x238386450](v133, -1, -1);
    MEMORY[0x238386450](v132, -1, -1);
  }

  v138 = *sub_2324C8418();
  if (!v138)
  {
    sub_2324DB438(v105, v106);
    v117 = 1;
    goto LABEL_50;
  }

  v280 = *(v138 + 136);
  *(v3 + 464) = v280;
  v281 = *(*v280 + 104);

  v299 = (v281 + *v281);
  v282 = v281[1];
  v278 = swift_task_alloc();
  *(v3 + 472) = v278;
  *v278 = v3;
  v279 = sub_23250D070;
LABEL_122:
  v278[1] = v279;
  v258 = v299;

  return v258();
}