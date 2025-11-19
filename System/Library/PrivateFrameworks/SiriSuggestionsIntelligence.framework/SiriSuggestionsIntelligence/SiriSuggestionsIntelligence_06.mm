unint64_t sub_1DA40B10C()
{
  result = qword_1ECBAFA00;
  if (!qword_1ECBAFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA00);
  }

  return result;
}

unint64_t sub_1DA40B160()
{
  result = qword_1ECBAFA10;
  if (!qword_1ECBAFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA10);
  }

  return result;
}

unint64_t sub_1DA40B1B4()
{
  result = qword_1ECBAFA18;
  if (!qword_1ECBAFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA18);
  }

  return result;
}

unint64_t sub_1DA40B208()
{
  result = qword_1ECBAFA30;
  if (!qword_1ECBAFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA30);
  }

  return result;
}

unint64_t sub_1DA40B25C()
{
  result = qword_1ECBAFA40;
  if (!qword_1ECBAFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA40);
  }

  return result;
}

uint64_t sub_1DA40B2B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFA20, &qword_1DA429AC0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA40B328()
{
  result = qword_1ECBAFA50;
  if (!qword_1ECBAFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA50);
  }

  return result;
}

unint64_t sub_1DA40B380()
{
  result = qword_1ECBAFA58;
  if (!qword_1ECBAFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA58);
  }

  return result;
}

unint64_t sub_1DA40B3D8()
{
  result = qword_1ECBAFA60;
  if (!qword_1ECBAFA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA60);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO10NowPlayingO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DA40B468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1DA40B4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1DA40B514(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DA40B54C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DA40B58C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *_s15MediaDeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA40B6C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10NowPlayingO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s10NowPlayingO17PlayingCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA40B93C()
{
  result = qword_1ECBAFA68;
  if (!qword_1ECBAFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA68);
  }

  return result;
}

unint64_t sub_1DA40B994()
{
  result = qword_1ECBAFA70;
  if (!qword_1ECBAFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA70);
  }

  return result;
}

unint64_t sub_1DA40B9EC()
{
  result = qword_1ECBAFA78;
  if (!qword_1ECBAFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA78);
  }

  return result;
}

unint64_t sub_1DA40BA44()
{
  result = qword_1ECBAFA80;
  if (!qword_1ECBAFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA80);
  }

  return result;
}

unint64_t sub_1DA40BA9C()
{
  result = qword_1ECBAFA88;
  if (!qword_1ECBAFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA88);
  }

  return result;
}

unint64_t sub_1DA40BAF4()
{
  result = qword_1EE102B18;
  if (!qword_1EE102B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B18);
  }

  return result;
}

unint64_t sub_1DA40BB4C()
{
  result = qword_1EE102B20;
  if (!qword_1EE102B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B20);
  }

  return result;
}

unint64_t sub_1DA40BBA4()
{
  result = qword_1EE102B08;
  if (!qword_1EE102B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B08);
  }

  return result;
}

unint64_t sub_1DA40BBFC()
{
  result = qword_1EE102B10;
  if (!qword_1EE102B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102B10);
  }

  return result;
}

unint64_t sub_1DA40BC54()
{
  result = qword_1EE102AF0;
  if (!qword_1EE102AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AF0);
  }

  return result;
}

unint64_t sub_1DA40BCAC()
{
  result = qword_1EE102AF8;
  if (!qword_1EE102AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102AF8);
  }

  return result;
}

unint64_t sub_1DA40BD00()
{
  result = qword_1ECBAFA90;
  if (!qword_1ECBAFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA90);
  }

  return result;
}

unint64_t sub_1DA40BD54()
{
  result = qword_1ECBAFA98;
  if (!qword_1ECBAFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFA98);
  }

  return result;
}

unint64_t sub_1DA40BDC4()
{
  result = qword_1ECBAFAA8;
  if (!qword_1ECBAFAA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAFAA8);
  }

  return result;
}

uint64_t sub_1DA40BE08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_18()
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_3_20()
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_1DA4223A4();
}

uint64_t OUTLINED_FUNCTION_14_7()
{
}

uint64_t sub_1DA40BFB8(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D8, &qword_1DA426898);
    v5 = sub_1DA422214();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;
  a2(a1, 1, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1DA40C060()
{
  OUTLINED_FUNCTION_25_1();
  v1 = v0;
  v32 = v2;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF8, &unk_1DA42A530);
  v5 = sub_1DA4221F4();
  v6 = 0;
  v7 = *(v4 + 64);
  v8 = 1 << *(v4 + 32);
  OUTLINED_FUNCTION_30_1();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v15 = v14 + 64;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_8:
      v19 = v16 | (v6 << 6);
      v20 = (*(v4 + 48) + 32 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[2];
      v24 = v20[3];
      v25 = *(*(v4 + 56) + 8 * v19);
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v26 = (v5[6] + 32 * v19);
      *v26 = v22;
      v26[1] = v21;
      v26[2] = v23;
      v26[3] = v24;
      *(v5[7] + 8 * v19) = v25;
      v27 = v5[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v5[2] = v29;

      if (!v11)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v6 >= v13)
      {
        break;
      }

      v18 = *(v4 + 64 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_8;
      }
    }

    v30 = sub_1DA40CF74(v5);

    if (!v1)
    {
      v31 = sub_1DA40DAB8(v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF520, &qword_1DA427350);
      swift_allocObject();
      sub_1DA40DF78(v30, v31, v32);
    }

    OUTLINED_FUNCTION_24_1();
  }
}

void sub_1DA40C230()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D8, &qword_1DA426898);
  v5 = sub_1DA4221F4();
  v6 = 0;
  v7 = *(v4 + 64);
  v8 = 1 << *(v4 + 32);
  OUTLINED_FUNCTION_30_1();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v15 = v14 + 64;
  if ((v10 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_8:
      v19 = v16 | (v6 << 6);
      v20 = (*(v4 + 48) + 16 * v19);
      v21 = *(*(v4 + 56) + 8 * v19);
      v23 = *v20;
      v22 = v20[1];
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v24 = (v5[6] + 16 * v19);
      *v24 = v23;
      v24[1] = v22;
      *(v5[7] + 8 * v19) = v21;
      v25 = v5[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v5[2] = v27;

      if (!v11)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v6 >= v13)
      {
        break;
      }

      v18 = *(v4 + 64 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_8;
      }
    }

    sub_1DA40D524(v5);
    v29 = v28;

    if (!v0)
    {
      v30 = sub_1DA40DD18(v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
      swift_allocObject();
      sub_1DA40E340(v29, v30, v2);
    }

    OUTLINED_FUNCTION_24_1();
  }
}

uint64_t sub_1DA40C3F0(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    [a1 int64Value];
    return sub_1DA422364();
  }

  else if (v2 == 2)
  {
    [a1 doubleValue];
    return sub_1DA421E84();
  }

  else if (v2 == 3)
  {
    v3 = [a1 stringValue];
    v4 = sub_1DA421B94();

    return v4;
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      swift_once();
    }

    v6 = sub_1DA421A94();
    __swift_project_value_buffer(v6, static Logger.inferenceCategory);
    v7 = a1;
    v8 = sub_1DA421A74();
    v9 = sub_1DA421F74();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_1DA39E000, v8, v9, "unable to determine posterior key: %@", v10, 0xCu);
      sub_1DA3A8CA8(v11, &qword_1ECBAEC70, &qword_1DA42A510);
      MEMORY[0x1DA74E430](v11, -1, -1);
      MEMORY[0x1DA74E430](v10, -1, -1);
    }

    v13 = [v7 type];
    sub_1DA40F4D4();
    swift_allocError();
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    *v14 = v13;
    *(v14 + 24) = 0;
    return swift_willThrow();
  }
}

id sub_1DA40C628(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return [a1 int64Value];
  }

  if (v2 == 3)
  {
    v4 = [a1 stringValue];
    v5 = sub_1DA421B94();
    v7 = v6;

    result = sub_1DA40C738(v5, v7);
    if ((v8 & 1) == 0)
    {
      return result;
    }

    v9 = 3;
  }

  else
  {
    if (v2 == 2)
    {
      return [a1 doubleValue];
    }

    v9 = [a1 type];
  }

  sub_1DA40F4D4();
  swift_allocError();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = v9;
  *(v10 + 24) = 0;
  return swift_willThrow();
}

uint64_t sub_1DA40C738(uint64_t a1, uint64_t a2)
{
  sub_1DA40FA64(a1, a2);

  return 0;
}

uint64_t sub_1DA40C798(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a4)
  {

    sub_1DA40C628(a1);
    if (v5)
    {
    }
  }

  else
  {

    sub_1DA40C738(a1, a2);
    if (v8)
    {
      sub_1DA40F4D4();
      swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 3;
      *(v9 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      return 0x6C75616665645F5FLL;
    }
  }

  return a2;
}

uint64_t sub_1DA40C878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574616566 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373616C63 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA40C93C(char a1)
{
  if (a1)
  {
    return 0x7373616C63;
  }

  else
  {
    return 0x65727574616566;
  }
}

uint64_t sub_1DA40C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DA4223A4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1DA4223A4();
    }
  }

  return result;
}

void sub_1DA40CA10()
{
  OUTLINED_FUNCTION_25_1();
  v14[0] = v1;
  v14[1] = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAB0, &qword_1DA42A4F0);
  OUTLINED_FUNCTION_6_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DA40F480();
  sub_1DA422494();
  sub_1DA4222F4();
  if (!v0)
  {
    sub_1DA4222F4();
  }

  (*(v7 + 8))(v12, v5);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DA40CB70()
{
  sub_1DA421BF4();

  return sub_1DA421BF4();
}

uint64_t sub_1DA40CBC0()
{
  sub_1DA422434();
  sub_1DA421BF4();
  sub_1DA421BF4();
  return sub_1DA422474();
}

void sub_1DA40CC30()
{
  OUTLINED_FUNCTION_25_1();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAC0, &qword_1DA42A4F8);
  OUTLINED_FUNCTION_6_1();
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DA40F480();
  sub_1DA422484();
  if (!v0)
  {
    sub_1DA422274();
    sub_1DA422274();
    v7 = OUTLINED_FUNCTION_8_14();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_24_1();
}

uint64_t sub_1DA40CDEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA40C878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA40CE14(uint64_t a1)
{
  v2 = sub_1DA40F480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA40CE50(uint64_t a1)
{
  v2 = sub_1DA40F480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA40CE8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DA40CBC0();
}

uint64_t sub_1DA40CE98()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DA40CB70();
}

uint64_t sub_1DA40CEA4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DA422434();
  sub_1DA421BF4();
  sub_1DA421BF4();
  return sub_1DA422474();
}

void sub_1DA40CF08(void *a1@<X8>)
{
  sub_1DA40CC30();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1DA40CF38()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DA40CA10();
}

uint64_t sub_1DA40CF74(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1DA3B0430(0, v2, 0);
    v4 = v78;
    result = sub_1DA3E4130(v1);
    v8 = result;
    v9 = 0;
    v10 = v1 + 64;
    v66 = v6;
    v68 = v2;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_50;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_51;
      }

      v73 = v9;
      v74 = v6;
      v71 = v7;
      v12 = *(v1 + 48) + 32 * v8;
      v13 = *(v12 + 24);
      v76 = *(v12 + 16);
      v14 = *(*(v1 + 56) + 8 * v8);
      v16 = *(v78 + 16);
      v15 = *(v78 + 24);

      if (v16 >= v15 >> 1)
      {
        result = sub_1DA3B0430((v15 > 1), v16 + 1, 1);
      }

      *(v78 + 16) = v16 + 1;
      v17 = (v78 + 24 * v16);
      v17[4] = v76;
      v17[5] = v13;
      v17[6] = v14;
      v18 = 1 << *(v1 + 32);
      if (v8 >= v18)
      {
        goto LABEL_52;
      }

      v10 = v1 + 64;
      v19 = *(v1 + 64 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_53;
      }

      if (*(v1 + 36) != v74)
      {
        goto LABEL_54;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v21 = v68;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v1 + 72 + 8 * v11);
        v21 = v68;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1DA3A2020(v8, v74, v71 & 1);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_1DA3A2020(v8, v74, v71 & 1);
      }

LABEL_19:
      v7 = 0;
      v9 = v73 + 1;
      v8 = v18;
      v6 = v66;
      if (v73 + 1 == v21)
      {
        v3 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v27 = sub_1DA40BFB8(v4, sub_1DA40F528);
    v28 = *(v1 + 16);
    if (v28)
    {
      sub_1DA3B0450(0, v28, 0);
      v77 = v3;
      result = sub_1DA3E4130(v1);
      v31 = result;
      v32 = 0;
      v75 = v1 + 64;
      v62 = v29;
      v63 = v28;
      v61 = v1 + 72;
      v64 = v1;
      v65 = v27;
      while (1)
      {
        if (v31 < 0 || v31 >= 1 << *(v1 + 32))
        {
          goto LABEL_55;
        }

        if ((*(v75 + 8 * (v31 >> 6)) & (1 << v31)) == 0)
        {
          goto LABEL_56;
        }

        if (*(v1 + 36) != v29)
        {
          goto LABEL_57;
        }

        v72 = v29;
        v67 = v30;
        v70 = v32;
        v33 = (*(v1 + 48) + 32 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = v33[2];
        v37 = v33[3];
        v38 = *(*(v1 + 56) + 8 * v31);
        v39 = *(v27 + 16);

        if (!v39)
        {
          break;
        }

        v69 = v31 >> 6;

        v40 = v34;

        v41 = sub_1DA3B76EC(v36, v37);
        if ((v42 & 1) == 0)
        {

          goto LABEL_47;
        }

        v43 = *(*(v27 + 56) + 8 * v41);

        _s19DiscreteProbabilityCMa();
        result = swift_allocObject();
        v44 = result;
        *(result + 16) = v38;
        *(result + 24) = v43;
        *(result + 32) = v38 / v43;
        v45 = v77;
        v47 = *(v77 + 16);
        v46 = *(v77 + 24);
        if (v47 >= v46 >> 1)
        {
          result = sub_1DA3B0450((v46 > 1), v47 + 1, 1);
          v45 = v77;
        }

        *(v45 + 16) = v47 + 1;
        v48 = (v45 + 40 * v47);
        v48[4] = v35;
        v48[5] = v40;
        v48[6] = v36;
        v48[7] = v37;
        v48[8] = v44;
        v1 = v64;
        v49 = 1 << *(v64 + 32);
        if (v31 >= v49)
        {
          goto LABEL_58;
        }

        v50 = *(v75 + 8 * v69);
        if ((v50 & (1 << v31)) == 0)
        {
          goto LABEL_59;
        }

        v77 = v45;
        if (*(v64 + 36) != v72)
        {
          goto LABEL_60;
        }

        v51 = v50 & (-2 << (v31 & 0x3F));
        if (v51)
        {
          v49 = __clz(__rbit64(v51)) | v31 & 0x7FFFFFFFFFFFFFC0;
          v27 = v65;
          v52 = v63;
          v53 = v70;
        }

        else
        {
          v54 = v69 << 6;
          v55 = v69 + 1;
          v56 = (v61 + 8 * v69);
          v27 = v65;
          v52 = v63;
          v53 = v70;
          while (v55 < (v49 + 63) >> 6)
          {
            v58 = *v56++;
            v57 = v58;
            v54 += 64;
            ++v55;
            if (v58)
            {
              result = sub_1DA3A2020(v31, v72, v67 & 1);
              v49 = __clz(__rbit64(v57)) + v54;
              goto LABEL_42;
            }
          }

          result = sub_1DA3A2020(v31, v72, v67 & 1);
        }

LABEL_42:
        v30 = 0;
        v32 = v53 + 1;
        v31 = v49;
        v29 = v62;
        if (v32 == v52)
        {

          v60 = v77;
          return sub_1DA3D5ABC(v60);
        }
      }

LABEL_47:
      sub_1DA40F4D4();
      swift_allocError();
      *(v59 + 8) = 0;
      *(v59 + 16) = 0;
      *v59 = 0;
      *(v59 + 24) = -64;
      swift_willThrow();
    }

    v60 = MEMORY[0x1E69E7CC0];
    return sub_1DA3D5ABC(v60);
  }

  return result;
}

void sub_1DA40D524(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v70 = MEMORY[0x1E69E7CC0];
    v67 = *(a1 + 16);
    sub_1DA3B0430(0, v1, 0);
    v3 = v70;
    v5 = sub_1DA3E4130(a1);
    v7 = v67;
    v6 = a1;
    v9 = v8;
    v10 = 0;
    v11 = a1 + 64;
    v12 = v8;
    v64 = v8;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
    {
      v13 = v5 >> 6;
      if ((*(v11 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_48;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_49;
      }

      v14 = *(*(v6 + 56) + 8 * v5);
      v16 = *(v70 + 16);
      v15 = *(v70 + 24);
      if (v16 >= v15 >> 1)
      {
        v61 = v4;
        sub_1DA3B0430((v15 > 1), v16 + 1, 1);
        v4 = v61;
        v12 = v64;
        v11 = a1 + 64;
        v7 = v67;
        v6 = a1;
      }

      *(v70 + 16) = v16 + 1;
      v17 = v70 + 24 * v16;
      strcpy((v17 + 32), "__sentinal__");
      *(v17 + 45) = 0;
      *(v17 + 46) = -5120;
      *(v17 + 48) = v14;
      v18 = 1 << *(v6 + 32);
      if (v5 >= v18)
      {
        goto LABEL_50;
      }

      v19 = *(v11 + 8 * v13);
      if ((v19 & (1 << v5)) == 0)
      {
        goto LABEL_51;
      }

      if (*(v6 + 36) != v9)
      {
        goto LABEL_52;
      }

      v20 = v19 & (-2 << (v5 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v13 << 6;
        v22 = v13 + 1;
        v23 = (a1 + 72 + 8 * v13);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            sub_1DA3A2020(v5, v9, v4 & 1);
            v12 = v64;
            v11 = a1 + 64;
            v7 = v67;
            v6 = a1;
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        sub_1DA3A2020(v5, v9, v4 & 1);
        v12 = v64;
        v11 = a1 + 64;
        v7 = v67;
        v6 = a1;
      }

LABEL_19:
      v4 = 0;
      ++v10;
      v5 = v18;
      v9 = v12;
      if (v10 == v7)
      {
        v2 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

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
    goto LABEL_53;
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v26 = sub_1DA40BFB8(v3, sub_1DA40F528);
  v27 = *(a1 + 16);
  if (v27)
  {
    sub_1DA3B0470(0, v27, 0);
    v68 = v2;
    v30 = sub_1DA3E4130(a1);
    v31 = a1;
    v32 = 0;
    v33 = a1 + 64;
    v59 = v28;
    v60 = v27;
    v62 = v26;
    while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v31 + 32))
    {
      v34 = v30 >> 6;
      if ((*(v33 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
      {
        goto LABEL_54;
      }

      if (*(v31 + 36) != v28)
      {
        goto LABEL_55;
      }

      v66 = v28;
      v63 = v29;
      v35 = (*(v31 + 48) + 16 * v30);
      v37 = *v35;
      v36 = v35[1];
      v38 = *(*(v31 + 56) + 8 * v30);
      v39 = *(v26 + 16);

      if (!v39 || (v40 = sub_1DA3B76EC(0x6E69746E65735F5FLL, 0xEC0000005F5F6C61), (v41 & 1) == 0))
      {
        sub_1DA40F4D4();
        swift_allocError();
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        *v57 = 0;
        *(v57 + 24) = -64;
        swift_willThrow();

        return;
      }

      v65 = v32;
      v42 = *(*(v26 + 56) + 8 * v40);
      _s19DiscreteProbabilityCMa();
      v43 = swift_allocObject();
      *(v43 + 16) = v38;
      *(v43 + 24) = v42;
      *(v43 + 32) = v38 / v42;
      v44 = v68;
      v46 = *(v68 + 16);
      v45 = *(v68 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1DA3B0470(v45 > 1, v46 + 1, 1);
        v44 = v68;
      }

      *(v44 + 16) = v46 + 1;
      v47 = (v44 + 24 * v46);
      v47[4] = v37;
      v47[5] = v36;
      v47[6] = v43;
      v31 = a1;
      v48 = 1 << *(a1 + 32);
      if (v30 >= v48)
      {
        goto LABEL_56;
      }

      v33 = a1 + 64;
      v49 = *(a1 + 64 + 8 * v34);
      if ((v49 & (1 << v30)) == 0)
      {
        goto LABEL_57;
      }

      v68 = v44;
      if (*(a1 + 36) != v66)
      {
        goto LABEL_58;
      }

      v50 = v49 & (-2 << (v30 & 0x3F));
      if (v50)
      {
        v48 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
        v51 = v60;
        v26 = v62;
      }

      else
      {
        v52 = v34 << 6;
        v53 = v34 + 1;
        v54 = (a1 + 72 + 8 * v34);
        v51 = v60;
        v26 = v62;
        while (v53 < (v48 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            sub_1DA3A2020(v30, v66, v63 & 1);
            v31 = a1;
            v48 = __clz(__rbit64(v55)) + v52;
            goto LABEL_42;
          }
        }

        sub_1DA3A2020(v30, v66, v63 & 1);
        v31 = a1;
      }

LABEL_42:
      v29 = 0;
      v32 = v65 + 1;
      v30 = v48;
      v28 = v59;
      if (v65 + 1 == v51)
      {

        v58 = v68;
        goto LABEL_46;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    return;
  }

  v58 = MEMORY[0x1E69E7CC0];
LABEL_46:
  sub_1DA3D5AE4(v58);
}

uint64_t sub_1DA40DAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return sub_1DA40BFB8(v2, sub_1DA40F6F0);
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DA3B0430(0, v1, 0);
  v2 = v31;
  result = sub_1DA3E4130(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v25 = v5;
  v26 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v5)
    {
      goto LABEL_23;
    }

    v28 = v8;
    v29 = v5;
    v27 = v6;
    v11 = *(a1 + 48) + 32 * v7;
    v12 = *(v11 + 24);
    v30 = *(v11 + 16);
    v13 = *(*(*(a1 + 56) + 8 * v7) + 24);
    v14 = *(v31 + 16);
    v15 = *(v31 + 24);

    if (v14 >= v15 >> 1)
    {
      result = sub_1DA3B0430((v15 > 1), v14 + 1, 1);
    }

    *(v31 + 16) = v14 + 1;
    v16 = (v31 + 24 * v14);
    v16[4] = v30;
    v16[5] = v12;
    v16[6] = v13;
    v17 = 1 << *(a1 + 32);
    if (v7 >= v17)
    {
      goto LABEL_24;
    }

    v9 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v29)
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DA3A2020(v7, v29, v27 & 1);
          v17 = __clz(__rbit64(v23)) + v20;
          goto LABEL_19;
        }
      }

      result = sub_1DA3A2020(v7, v29, v27 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v28 + 1;
    v7 = v17;
    v5 = v25;
    if (v28 + 1 == v26)
    {
      return sub_1DA40BFB8(v2, sub_1DA40F6F0);
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DA40DD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return sub_1DA40BFB8(v2, sub_1DA40F6F0);
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DA3B0430(0, v1, 0);
  v2 = v31;
  result = sub_1DA3E4130(a1);
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v25 = v5;
  v26 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v5)
    {
      goto LABEL_23;
    }

    v28 = v8;
    v29 = v5;
    v27 = v6;
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v30 = *v11;
    v13 = *(*(*(a1 + 56) + 8 * v7) + 24);
    v14 = *(v31 + 16);
    v15 = *(v31 + 24);

    if (v14 >= v15 >> 1)
    {
      result = sub_1DA3B0430((v15 > 1), v14 + 1, 1);
    }

    *(v31 + 16) = v14 + 1;
    v16 = (v31 + 24 * v14);
    v16[4] = v30;
    v16[5] = v12;
    v16[6] = v13;
    v17 = 1 << *(a1 + 32);
    if (v7 >= v17)
    {
      goto LABEL_24;
    }

    v9 = a1 + 64;
    v18 = *(a1 + 64 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (*(a1 + 36) != v29)
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (a1 + 72 + 8 * v10);
      while (v21 < (v17 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1DA3A2020(v7, v29, v27 & 1);
          v17 = __clz(__rbit64(v23)) + v20;
          goto LABEL_19;
        }
      }

      result = sub_1DA3A2020(v7, v29, v27 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v28 + 1;
    v7 = v17;
    v5 = v25;
    if (v28 + 1 == v26)
    {
      return sub_1DA40BFB8(v2, sub_1DA40F6F0);
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1DA40DF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if ((a3 - 1) >= 3)
  {

    sub_1DA40F4D4();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = a3;
    *(v23 + 24) = 0;
    swift_willThrow();
    v24 = *(v3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF520, &qword_1DA427350);
    swift_deallocPartialClassInstance();
    return;
  }

  v6 = a1;
  v54 = v4;
  *(v4 + 32) = a3;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v55 = v6;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      do
      {
LABEL_9:
        v15 = *(v6 + 48) + ((v12 << 11) | (32 * __clz(__rbit64(v10))));
        v16 = *(v15 + 16);
        v17 = *(v15 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v13 + 16);
          sub_1DA3A5B78();
          v13 = v21;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1DA3A5B78();
          v13 = v22;
        }

        v10 &= v10 - 1;
        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v6 = v55;
      }

      while (v10);
    }
  }

  *(v54 + 40) = sub_1DA3BC3DC(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAE8, &qword_1DA42A518);
  v25 = sub_1DA4221F4();
  v26 = v25;
  v27 = 0;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 64);
  v31 = (v28 + 63) >> 6;
  v32 = v25 + 64;
  if (!v30)
  {
LABEL_20:
    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_40;
      }

      if (v27 >= v31)
      {

        v45 = 0;
        *(v54 + 24) = v26;
        v46 = 1 << *(v26 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(v26 + 64);
        v49 = (v46 + 63) >> 6;
        for (i = 0.0; v48; i = i + *(*(v26 + 56) + ((v51 << 9) | (8 * v52))))
        {
          v51 = v45;
LABEL_36:
          v52 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
        }

        while (1)
        {
          v51 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_41;
          }

          if (v51 >= v49)
          {
            *(v54 + 48) = i;
            return;
          }

          v48 = *(v32 + 8 * v51);
          ++v45;
          if (v48)
          {
            v45 = v51;
            goto LABEL_36;
          }
        }
      }

      v35 = *(a2 + 64 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v30 = (v35 - 1) & v35;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
LABEL_25:
    v36 = v33 | (v27 << 6);
    v37 = (*(a2 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = *(*(a2 + 56) + 8 * v36);
    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v26 + 48) + 16 * v36);
    *v41 = v39;
    v41[1] = v38;
    *(*(v26 + 56) + 8 * v36) = v40;
    v42 = *(v26 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    *(v26 + 16) = v44;

    if (!v30)
    {
      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
}

void sub_1DA40E340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 16) = a1;
  if ((a3 - 1) >= 3)
  {

    sub_1DA40F4D4();
    swift_allocError();
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = a3;
    *(v23 + 24) = 0;
    swift_willThrow();
    v24 = *(v3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF5E0, &qword_1DA427560);
    swift_deallocPartialClassInstance();
    return;
  }

  v6 = a1;
  v54 = v4;
  *(v4 + 32) = a3;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v55 = v6;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v14 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      do
      {
LABEL_9:
        v15 = (*(v6 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
        v16 = *v15;
        v17 = v15[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = *(v13 + 16);
          sub_1DA3A5B78();
          v13 = v21;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1DA3A5B78();
          v13 = v22;
        }

        v10 &= v10 - 1;
        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v16;
        *(v19 + 40) = v17;
        v6 = v55;
      }

      while (v10);
    }
  }

  *(v54 + 40) = sub_1DA3BC3DC(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAE8, &qword_1DA42A518);
  v25 = sub_1DA4221F4();
  v26 = v25;
  v27 = 0;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 64);
  v31 = (v28 + 63) >> 6;
  v32 = v25 + 64;
  if (!v30)
  {
LABEL_20:
    v34 = v27;
    while (1)
    {
      v27 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_40;
      }

      if (v27 >= v31)
      {

        v45 = 0;
        *(v54 + 24) = v26;
        v46 = 1 << *(v26 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v47 & *(v26 + 64);
        v49 = (v46 + 63) >> 6;
        for (i = 0.0; v48; i = i + *(*(v26 + 56) + ((v51 << 9) | (8 * v52))))
        {
          v51 = v45;
LABEL_36:
          v52 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
        }

        while (1)
        {
          v51 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            goto LABEL_41;
          }

          if (v51 >= v49)
          {
            *(v54 + 48) = i;
            return;
          }

          v48 = *(v32 + 8 * v51);
          ++v45;
          if (v48)
          {
            v45 = v51;
            goto LABEL_36;
          }
        }
      }

      v35 = *(a2 + 64 + 8 * v27);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v30 = (v35 - 1) & v35;
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v33 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
LABEL_25:
    v36 = v33 | (v27 << 6);
    v37 = (*(a2 + 48) + 16 * v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = *(*(a2 + 56) + 8 * v36);
    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v26 + 48) + 16 * v36);
    *v41 = v39;
    v41[1] = v38;
    *(*(v26 + 56) + 8 * v36) = v40;
    v42 = *(v26 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    *(v26 + 16) = v44;

    if (!v30)
    {
      goto LABEL_20;
    }
  }

LABEL_42:
  __break(1u);
}

double sub_1DA40E708(void *a1, uint64_t a2, void (*a3)(void), int a4)
{
  v71 = *v4;
  v11 = v71[10];
  sub_1DA421F94();
  OUTLINED_FUNCTION_6_1();
  v69 = v13;
  v70 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v62 - v16;
  v73 = v11;
  OUTLINED_FUNCTION_6_1();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v67 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v68 = &v62 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v62 - v27;
  LODWORD(v72) = a4;
  if (a4)
  {
    v63 = v19;
    v66 = &v62 - v27;

    v29 = sub_1DA40C3F0(a1);
    if (v5)
    {

      return v6;
    }

    v31 = v29;
    v32 = v30;
    v76 = &unk_1F55EBA60;
    v77 = sub_1DA40FC20();
    v33 = swift_allocObject();
    *&v75 = v33;
    v33[2] = v31;
    v33[3] = v32;
    v33[4] = a2;
    v33[5] = a3;
    sub_1DA3A1FF8(&v75, v80);
    v81 = a2;
    v82 = a3;

    v65 = a2;
    v64 = a3;
    v28 = v66;
    v19 = v63;
  }

  else
  {
    v80[3] = MEMORY[0x1E69E6158];
    v80[4] = MEMORY[0x1E69E6168];
    v80[0] = a1;
    v80[1] = a2;
    v81 = a1;
    v82 = a2;
    sub_1DA40FB78(a1, a2, a3, 0);

    v65 = a1;
    v64 = a2;
  }

  sub_1DA3A7ED4(v80, &v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAD8, &qword_1DA42A508);
  v34 = v73;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v34);
    (*(v19 + 32))(v28, v17, v34);
    v35 = v4[2];
    _s19DiscreteProbabilityCMa();
    v36 = v71[11];
    sub_1DA421B04();
    v37 = v75;
    if (v75)
    {
      (*(v19 + 8))(v28, v34);
      sub_1DA40FBB8(v80);
      v6 = *(v37 + 32);
    }

    else
    {
      v71 = v4;
      v72 = v5;
      if (qword_1ECBAE838 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v42 = sub_1DA421A94();
      __swift_project_value_buffer(v42, static Logger.inferenceCategory);
      v43 = *(v19 + 16);
      v44 = v68;
      v66 = v28;
      v43(v68, v28, v34);
      sub_1DA40FBE8(v80, &v75);
      v45 = sub_1DA421A74();
      v46 = sub_1DA421F54();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v74 = v70;
        *v47 = 136315394;
        a3 = v67;
        v43(v67, v44, v34);
        v48 = sub_1DA421BB4();
        v50 = v49;
        v51 = OUTLINED_FUNCTION_5_13();
        a3(v51);
        v52 = sub_1DA3A5FE8(v48, v50, &v74);

        *(v47 + 4) = v52;
        *(v47 + 12) = 2080;
        v53 = v78;
        v54 = v79;

        sub_1DA40FBB8(&v75);
        v55 = sub_1DA3A5FE8(v53, v54, &v74);

        *(v47 + 14) = v55;
        _os_log_impl(&dword_1DA39E000, v45, v46, "Unobserved key: %s. Returning a scaled nominal value using totalKey: %s", v47, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      else
      {

        sub_1DA40FBB8(&v75);
        v56 = OUTLINED_FUNCTION_5_13();
        a3(v56);
      }

      v57 = v71;
      v58 = sub_1DA3EA440(v65, v64, v71[3]);
      v60 = v59;
      (a3)(v66, v34);
      sub_1DA40FBB8(v80);
      if (v60)
      {
        v61 = *(v57 + 6);
      }

      else
      {
        v61 = *&v58;
      }

      return 1.0 / (v61 + 1.0);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v34);
    (*(v69 + 8))(v17, v70);
    v38 = v72;
    v39 = v72 & 1 | 0x40;
    sub_1DA40F4D4();
    swift_allocError();
    *v40 = a1;
    *(v40 + 8) = a2;
    *(v40 + 16) = a3;
    *(v40 + 24) = v39;
    swift_willThrow();
    sub_1DA40FB78(a1, a2, a3, v38 & 1);
    sub_1DA40FBB8(v80);
  }

  return v6;
}

void *sub_1DA40ED64()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1DA40ED94()
{
  sub_1DA40ED64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DA40EE2C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  *(v2 + 2) = a1;
  v7 = sub_1DA40F050(a2);
  if (v3)
  {
    v8 = *(v2 + 2);

    _s24ParameterizedProbabilityCMa();
    swift_deallocPartialClassInstance();
    return v4;
  }

  else
  {
    *(v2 + 3) = v7;

    sub_1DA3EE998(v26, 0x6C75616665645F5FLL);
    v9 = v27;
    sub_1DA3A8CA8(v26, &qword_1ECBAFAC8, &qword_1DA42A500);
    if (v9 && *(a1 + 16) == 1)
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    else
    {

      sub_1DA3BC49C(v11);
    }

    *(v4 + 4) = v10;
    v12 = *(a1 + 64);
    v13 = 1 << *(a1 + 32);
    OUTLINED_FUNCTION_30_1();
    v16 = v15 & v14;
    v18 = (v17 + 63) >> 6;

    v20 = 0;
    for (i = 0.0; v16; result = __swift_destroy_boxed_opaque_existential_0(v26))
    {
      v22 = v20;
LABEL_13:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      sub_1DA3A7ED4(*(a1 + 56) + 40 * (v23 | (v22 << 6)), v26);
      v24 = v27;
      v25 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      i = i + (*(v25 + 40))(v24, v25);
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v18)
      {

        v4[5] = i;
        return v4;
      }

      v16 = *(a1 + 64 + 8 * v22);
      ++v20;
      if (v16)
      {
        v20 = v22;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DA40F050(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    sub_1DA40F4D4();
    swift_allocError();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = a1;
    *(v2 + 24) = 0;
    swift_willThrow();
  }

  return a1;
}

double sub_1DA40F0BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1DA40C798(a1, a2, a3, a4 & 1);
  if (!v5)
  {
    v10 = v7;
    v11 = v8;
    v6 = v9;
    v12 = *(v4 + 16);

    sub_1DA3EE998(&v23, v10);

    if (v24)
    {
      sub_1DA3A1FF8(&v23, v25);
      v13 = v26;
      v14 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v6 = (*(v14 + 24))(v13, v14, v6);

      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    else
    {
      sub_1DA3A8CA8(&v23, &qword_1ECBAFAC8, &qword_1DA42A500);
      if (qword_1ECBAE838 != -1)
      {
        OUTLINED_FUNCTION_0_2();
      }

      v16 = sub_1DA421A94();
      __swift_project_value_buffer(v16, static Logger.inferenceCategory);

      v17 = sub_1DA421A74();
      v18 = sub_1DA421F74();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v25[0] = v20;
        *v19 = 136315138;

        v21 = sub_1DA3A5FE8(v10, v11, v25);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_1DA39E000, v17, v18, "Unable to find a classification distribution for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      sub_1DA40F4D4();
      swift_allocError();
      *v22 = v10;
      *(v22 + 8) = v11;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0x80;
      swift_willThrow();
    }
  }

  return v6;
}

uint64_t sub_1DA40F300()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1DA40F328()
{
  sub_1DA40F300();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DA40F3CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1 / a2;
  return v2;
}

unint64_t sub_1DA40F42C()
{
  result = qword_1EE100860;
  if (!qword_1EE100860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100860);
  }

  return result;
}

unint64_t sub_1DA40F480()
{
  result = qword_1ECBAFAB8;
  if (!qword_1ECBAFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAB8);
  }

  return result;
}

unint64_t sub_1DA40F4D4()
{
  result = qword_1ECBAFAD0;
  if (!qword_1ECBAFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAD0);
  }

  return result;
}

uint64_t sub_1DA40F528(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_18;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF0, &unk_1DA42A520);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D71D8(v14);
      v16 = *a3;
      v17 = sub_1DA3B76EC(v7, v6);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_21;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      v20 = *(v19[7] + 8 * v11);

      if (__OFADD__(v20, v8))
      {
        goto LABEL_19;
      }

      *(v19[7] + 8 * v11) = v20 + v8;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v19[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v6;
      *(v19[7] + 8 * v11) = v8;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v19[2] = v24;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

void sub_1DA40F6F0(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_1DA3B76EC(v7, v6);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFAF0, &unk_1DA42A520);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D71D8(v14);
      v16 = *a3;
      v17 = sub_1DA3B76EC(v7, v6);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_22;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {
      break;
    }

    v19[(v11 >> 6) + 8] |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v11) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
LABEL_15:
    ++v4;
    a2 = 1;
  }

  if (*(v19[7] + 8 * v11) == v8)
  {

    *(v19[7] + 8 * v11) = v8;
    goto LABEL_15;
  }

  sub_1DA40F4D4();
  v24 = swift_allocError();
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *v25 = 1;
  *(v25 + 24) = -64;
  swift_willThrow();
  v26 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}

_BYTE *sub_1DA40F9F8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1DA40FA64(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1DA422084();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1DA40FB78(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v5 = a1;
    v4 = vars8;
  }
}

unint64_t sub_1DA40FC20()
{
  result = qword_1ECBAFAE0;
  if (!qword_1ECBAFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFAE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_27SiriSuggestionsIntelligenceAAO17ProbabilityErrorsO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1DA40FCA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 25))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DA40FCF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA40FD60(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 24) & 1 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 24) = v2;
  return result;
}

_BYTE *_s12PosteriorKeyV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA40FE78()
{
  result = qword_1ECBAFB00;
  if (!qword_1ECBAFB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB00);
  }

  return result;
}

unint64_t sub_1DA40FED0()
{
  result = qword_1ECBAFB08;
  if (!qword_1ECBAFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB08);
  }

  return result;
}

unint64_t sub_1DA40FF28()
{
  result = qword_1ECBAFB10;
  if (!qword_1ECBAFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB10);
  }

  return result;
}

uint64_t sub_1DA40FF7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_1DA40FFBC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FocusType.rawValue.getter(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6D6F74737563;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 0x7065656C73;
      break;
    case 4:
      v3 = 1986622052;
      goto LABEL_13;
    case 5:
      result = 0x6573696372657865;
      break;
    case 6:
      result = 1802661751;
      break;
    case 7:
      result = 0x6C616E6F73726570;
      break;
    case 8:
      v3 = 1684104562;
LABEL_13:
      result = v3 | 0x676E6900000000;
      break;
    case 9:
      result = 0x676E696D6167;
      break;
    case 10:
      result = 0x6E6C7566646E696DLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.FocusMode.description.getter(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0x7375636F466F6ELL;
  }

  sub_1DA422094();

  v4 = SiriSuggestionsIntelligence.FocusModeDetails.description.getter(a1, a2);
  MEMORY[0x1DA74D370](v4);

  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_1DA41025C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DA410304;

  return sub_1DA41D390();
}

uint64_t sub_1DA410304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 24);
  v12 = *v4;

  v10 = *(v12 + 8);

  return v10(a1, a2, a3, a4);
}

uint64_t sub_1DA410420()
{
  v0 = [BiomeLibrary() UserFocus];
  swift_unknownObjectRelease();
  v1 = [v0 ComputedMode];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA4104B8(v1);
  return v2;
}

uint64_t sub_1DA4104B8(uint64_t a1)
{
  v2 = v1;
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBD0, &qword_1DA42AFA0);
  swift_allocObject();
  *(v2 + 16) = sub_1DA420960(a1, v5, sub_1DA410544, 0);
  return v2;
}

double sub_1DA410544@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v6 = sub_1DA411DB8(v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      if ([v5 starting])
      {
        v10 = [v5 semanticType];

        v11 = sub_1DA4105F8(v10);
        *a3 = v8;
        a3[1] = v9;
        a3[2] = v11;
        a3[3] = a1;
        return result;
      }
    }

    else
    {
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_1DA4105F8(uint64_t result)
{
  if ((result - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t SiriSuggestionsIntelligence.FocusModeService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.FocusModeService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1DA410660(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7375636F466F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F46657669746361 && a2 == 0xEB00000000737563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA41072C(char a1)
{
  if (a1)
  {
    return 0x6F46657669746361;
  }

  else
  {
    return 0x7375636F466F6ELL;
  }
}

uint64_t sub_1DA41076C(uint64_t a1)
{
  v2 = sub_1DA411BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4107A8(uint64_t a1)
{
  v2 = sub_1DA411BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA4107EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA410660(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA410814(uint64_t a1)
{
  v2 = sub_1DA411B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA410850(uint64_t a1)
{
  v2 = sub_1DA411B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41088C(uint64_t a1)
{
  v2 = sub_1DA411C98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA4108C8(uint64_t a1)
{
  v2 = sub_1DA411C98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.FocusMode.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (!v12 && (sub_1DA4223A4() & 1) == 0)
      {
        return 0;
      }

      v13 = *&a8;
      v14 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a3);
      v16 = v15;
      if (v14 == SiriSuggestionsIntelligence.FocusType.rawValue.getter(a7) && v16 == v17)
      {
      }

      else
      {
        v19 = OUTLINED_FUNCTION_7_15();

        if ((v19 & 1) == 0)
        {
          return 0;
        }
      }

      return *&a4 == v13;
    }

    return 0;
  }

  return !a6;
}

BOOL static SiriSuggestionsIntelligence.FocusModeDetails.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v12 = a1 == a4 && a2 == a5;
  if (!v12 && (sub_1DA4223A4() & 1) == 0)
  {
    return 0;
  }

  v13 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(a3);
  v15 = v14;
  if (v13 == SiriSuggestionsIntelligence.FocusType.rawValue.getter(a6) && v15 == v16)
  {
  }

  else
  {
    v18 = OUTLINED_FUNCTION_7_15();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  return a7 == a8;
}

uint64_t SiriSuggestionsIntelligence.FocusMode.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v39 = a3;
  v34 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB18, "ti");
  v8 = OUTLINED_FUNCTION_3_1(v7);
  v37 = v9;
  v38 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB20, &qword_1DA42A848);
  OUTLINED_FUNCTION_3_1(v15);
  v33 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB28, &qword_1DA42A850);
  OUTLINED_FUNCTION_3_1(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8_8();
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411B9C();
  v29 = v39;
  sub_1DA422494();
  if (v29)
  {
    LOBYTE(v40) = 1;
    sub_1DA411BF0();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222D4();
    v40 = v34;
    v41 = v29;
    v42 = v35;
    v43 = v36;
    sub_1DA411C44();
    v30 = v38;
    sub_1DA422334();
    (*(v37 + 8))(v14, v30);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_1DA411C98();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222D4();
    (*(v33 + 8))(v21, v15);
  }

  return (*(v24 + 8))(v5, v22);
}

uint64_t SiriSuggestionsIntelligence.FocusMode.init(from:)(uint64_t *a1)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB40, &qword_1DA42A858);
  OUTLINED_FUNCTION_3_1(v56);
  v54 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB48, &qword_1DA42A860);
  OUTLINED_FUNCTION_3_1(v7);
  v53 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB50, &unk_1DA42A868);
  OUTLINED_FUNCTION_3_1(v14);
  v55 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48[-v19];
  v21 = a1[4];
  v22 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411B9C();
  v23 = v58;
  sub_1DA422484();
  v58 = v23;
  if (v23)
  {
    goto LABEL_10;
  }

  v50 = v7;
  v51 = v13;
  v52 = a1;
  v24 = v20;
  v25 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v25, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_8;
  }

  if (v28 < (v29 >> 1))
  {
    v49 = *(v27 + v28);
    sub_1DA3C2A9C(v28 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v54;
    if (v31 == v33 >> 1)
    {
      if (v49)
      {
        LOBYTE(v57) = 1;
        sub_1DA411BF0();
        v22 = v24;
        v35 = v58;
        sub_1DA422244();
        if (v35)
        {
          v58 = v35;
          v36 = OUTLINED_FUNCTION_5_14();
          v37(v36);
LABEL_14:
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        sub_1DA411E28();
        sub_1DA4222B4();
        swift_unknownObjectRelease();
        (*(v34 + 8))(v1, v56);
        v46 = OUTLINED_FUNCTION_5_14();
        v47(v46);
        v22 = v57;
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1DA411C98();
        v43 = v51;
        v44 = v58;
        sub_1DA422244();
        v45 = v55;
        if (v44)
        {
          v58 = v44;
          v22 = (v55 + 8);
          (*(v55 + 8))(v24, v14);
          goto LABEL_14;
        }

        swift_unknownObjectRelease();
        (*(v53 + 8))(v43, v50);
        (*(v45 + 8))(v24, v14);
        v22 = 0;
      }

      __swift_destroy_boxed_opaque_existential_0(v52);
      return v22;
    }

LABEL_8:
    v38 = sub_1DA4220F4();
    v39 = swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v41 = &type metadata for SiriSuggestionsIntelligence.FocusMode;
    v22 = v24;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v38);
    v58 = v39;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v55 + 8))(v24, v14);
LABEL_9:
    a1 = v52;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA4112E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.FocusMode.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1DA411338()
{
  v1 = v0[2];
  v2 = v0[3];
  return SiriSuggestionsIntelligence.FocusMode.description.getter(*v0, v0[1]);
}

uint64_t SiriSuggestionsIntelligence.FocusModeDetails.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD000000000000013, 0x80000001DA42E810);
  MEMORY[0x1DA74D370](a1, a2);
  MEMORY[0x1DA74D370](0x226570797422202CLL, 0xEA0000000000203ALL);
  sub_1DA422194();
  MEMORY[0x1DA74D370](0x747261747322202CLL, 0xEF203A22656D6954);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA411474(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965646F6DLL && a2 == 0xEE00726569666974;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701869940 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DA4223A4();

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

uint64_t sub_1DA411594(char a1)
{
  if (!a1)
  {
    return 0x6E65644965646F6DLL;
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x6D69547472617473;
}

uint64_t sub_1DA4115FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA411474(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA411624(uint64_t a1)
{
  v2 = sub_1DA411E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA411660(uint64_t a1)
{
  v2 = sub_1DA411E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.FocusModeDetails.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB60, &qword_1DA42A878);
  OUTLINED_FUNCTION_3_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411E7C();
  sub_1DA422494();
  v21 = 0;
  sub_1DA4222F4();
  if (!v4)
  {
    v20 = v17;
    v19 = 1;
    sub_1DA411ED0();
    sub_1DA422334();
    v18 = 2;
    sub_1DA422314();
  }

  return (*(v8 + 8))(v13, v6);
}

double SiriSuggestionsIntelligence.FocusModeDetails.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFB78, &qword_1DA42A880);
  OUTLINED_FUNCTION_3_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_8();
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA411E7C();
  sub_1DA422484();
  if (!v1)
  {
    sub_1DA422274();
    sub_1DA411F24();
    OUTLINED_FUNCTION_4_19();
    sub_1DA4222B4();
    sub_1DA422294();
    v2 = v10;
    v11 = OUTLINED_FUNCTION_8_14();
    v12(v11);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA411A68(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = SiriSuggestionsIntelligence.FocusModeDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1DA411AC0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return SiriSuggestionsIntelligence.FocusModeDetails.description.getter(*v0, *(v0 + 8));
}

uint64_t SiriSuggestionsIntelligence.FocusType.init(rawValue:)()
{
  v0 = sub_1DA422234();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA411B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = SiriSuggestionsIntelligence.FocusType.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t sub_1DA411B70@<X0>(uint64_t *a1@<X8>)
{
  result = SiriSuggestionsIntelligence.FocusType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DA411B9C()
{
  result = qword_1EE101030;
  if (!qword_1EE101030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101030);
  }

  return result;
}

unint64_t sub_1DA411BF0()
{
  result = qword_1ECBAFB30;
  if (!qword_1ECBAFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB30);
  }

  return result;
}

unint64_t sub_1DA411C44()
{
  result = qword_1ECBAFB38;
  if (!qword_1ECBAFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB38);
  }

  return result;
}

unint64_t sub_1DA411C98()
{
  result = qword_1EE101058;
  if (!qword_1EE101058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101058);
  }

  return result;
}

uint64_t sub_1DA411DAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DA407F24();
}

uint64_t sub_1DA411DB8(void *a1)
{
  v2 = [a1 semanticModeIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DA421B94();

  return v3;
}

unint64_t sub_1DA411E28()
{
  result = qword_1ECBAFB58;
  if (!qword_1ECBAFB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB58);
  }

  return result;
}

unint64_t sub_1DA411E7C()
{
  result = qword_1ECBAFB68;
  if (!qword_1ECBAFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB68);
  }

  return result;
}

unint64_t sub_1DA411ED0()
{
  result = qword_1ECBAFB70;
  if (!qword_1ECBAFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB70);
  }

  return result;
}

unint64_t sub_1DA411F24()
{
  result = qword_1ECBAFB80;
  if (!qword_1ECBAFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB80);
  }

  return result;
}

unint64_t sub_1DA411F7C()
{
  result = qword_1ECBAFB88;
  if (!qword_1ECBAFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB88);
  }

  return result;
}

unint64_t sub_1DA411FD4()
{
  result = qword_1ECBAFB90;
  if (!qword_1ECBAFB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFB98, &qword_1DA42AA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFB90);
  }

  return result;
}

uint64_t sub_1DA41205C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_1DA4120AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DA412104(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s9FocusTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s9FocusTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s16FocusModeDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9FocusModeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s9FocusModeO21ActiveFocusCodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA41250C()
{
  result = qword_1ECBAFBA0;
  if (!qword_1ECBAFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBA0);
  }

  return result;
}

unint64_t sub_1DA412564()
{
  result = qword_1ECBAFBA8;
  if (!qword_1ECBAFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBA8);
  }

  return result;
}

unint64_t sub_1DA4125BC()
{
  result = qword_1ECBAFBB0;
  if (!qword_1ECBAFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBB0);
  }

  return result;
}

unint64_t sub_1DA412614()
{
  result = qword_1ECBAFBB8;
  if (!qword_1ECBAFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBB8);
  }

  return result;
}

unint64_t sub_1DA41266C()
{
  result = qword_1ECBAFBC0;
  if (!qword_1ECBAFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBC0);
  }

  return result;
}

unint64_t sub_1DA4126C4()
{
  result = qword_1EE101048;
  if (!qword_1EE101048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101048);
  }

  return result;
}

unint64_t sub_1DA41271C()
{
  result = qword_1EE101050;
  if (!qword_1EE101050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101050);
  }

  return result;
}

unint64_t sub_1DA412774()
{
  result = qword_1EE101038;
  if (!qword_1EE101038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101038);
  }

  return result;
}

unint64_t sub_1DA4127CC()
{
  result = qword_1EE101040;
  if (!qword_1EE101040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101040);
  }

  return result;
}

unint64_t sub_1DA412824()
{
  result = qword_1EE101020;
  if (!qword_1EE101020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101020);
  }

  return result;
}

unint64_t sub_1DA41287C()
{
  result = qword_1EE101028;
  if (!qword_1EE101028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101028);
  }

  return result;
}

unint64_t sub_1DA4128D0()
{
  result = qword_1ECBAFBC8;
  if (!qword_1ECBAFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFBC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return sub_1DA4223A4();
}

BOOL sub_1DA412968(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for SiriSuggestionsIntelligence.Device() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1DA412A3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void *sub_1DA412AEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DA3A1FF8(a1, (v4 + 2));
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t SiriSuggestionsIntelligence.DeviceFeatureExtractor.extract(_:)()
{
  OUTLINED_FUNCTION_16();
  v1[62] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0) - 8) + 64);
  v1[63] = OUTLINED_FUNCTION_40();
  v3 = sub_1DA4210B4();
  v1[64] = v3;
  v4 = *(v3 - 8);
  v1[65] = v4;
  v5 = *(v4 + 64);
  v1[66] = OUTLINED_FUNCTION_40();
  v6 = sub_1DA421724();
  v1[67] = v6;
  v7 = *(v6 - 8);
  v1[68] = v7;
  v8 = *(v7 + 64);
  v1[69] = OUTLINED_FUNCTION_40();
  v9 = type metadata accessor for SiriSuggestionsIntelligence.AccountDetails();
  v1[70] = v9;
  v10 = *(*(v9 - 8) + 64);
  v1[71] = OUTLINED_FUNCTION_40();

  return MEMORY[0x1EEE6DFA0](sub_1DA412C90, 0, 0);
}

uint64_t sub_1DA412C90()
{
  v1 = v0[62];
  v0[61] = MEMORY[0x1E69E7CC0];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[72] = v6;
  *v6 = v0;
  v6[1] = sub_1DA412DCC;
  v7 = v0[71];

  return v9(v7, v2, v3);
}

uint64_t sub_1DA412DCC()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 576);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v8 + 584) = v0;

  if (v0)
  {
    v9 = sub_1DA4137C8;
  }

  else
  {
    v9 = sub_1DA412ED0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1DA412ED0()
{
  v2 = *(v0 + 584);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v73 = *(v0 + 560);
  v74 = *(v0 + 512);
  v71 = *(v0 + 568);
  v72 = *(v0 + 504);
  v6 = *v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DA42AFB0;
  v8 = v7;
  v76 = v7;
  v77 = *(v4 + 104);
  v77(v3, *MEMORY[0x1E69D2E48], v5);
  v9 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v9);
  v10 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v10, v11, v6);
  OUTLINED_FUNCTION_10_10();
  v75 = *(v4 + 8);
  v75(v3, v5);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(20, v1 & 1, v8 + 32);
  v77(v3, *MEMORY[0x1E69D2E40], v5);
  v12 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v12);
  v13 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v13, v14, v6);
  OUTLINED_FUNCTION_10_10();
  v75(v3, v5);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(21, v1 & 1, v76 + 104);
  v77(v3, *MEMORY[0x1E69D2E68], v5);
  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v15);
  v16 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v16, v17, v6);
  OUTLINED_FUNCTION_10_10();
  v75(v3, v5);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(22, v1 & 1, v76 + 176);
  v77(v3, *MEMORY[0x1E69D2E58], v5);
  v18 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v18);
  v19 = OUTLINED_FUNCTION_6_14();
  sub_1DA412968(v19, v20, v6);
  OUTLINED_FUNCTION_10_10();
  v75(v3, v5);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(23, v1 & 1, v76 + 248);
  v77(v3, *MEMORY[0x1E69D2E50], v5);
  v21 = swift_task_alloc();
  OUTLINED_FUNCTION_7_16(v21);
  v22 = OUTLINED_FUNCTION_6_14();
  LOBYTE(v2) = sub_1DA412968(v22, v23, v6);

  v75(v3, v5);
  static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(24, v2 & 1, v76 + 320);
  static SiriSuggestionsIntelligence.createNumericFeature(featureId:featureValue:)(25, *(v6 + 16), (v76 + 392));
  sub_1DA3BCEF4(v76);
  sub_1DA3F7598(v71 + *(v73 + 20), v72);
  if (__swift_getEnumTagSinglePayload(v72, 1, v74) == 1)
  {
    v24 = *(v0 + 504);
    sub_1DA3A5120(*(v0 + 568));
    v25 = sub_1DA3A8CA8(v24, &qword_1ECBAE870, &qword_1DA4252E0);
  }

  else
  {
    (*(*(v0 + 520) + 32))(*(v0 + 528), *(v0 + 504), *(v0 + 512));
    sub_1DA421034();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA88, &qword_1DA423370);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1DA4238F0;
    *(v28 + 32) = v27;
    v29 = *(v0 + 488);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v68 = *(v29 + 16);
      sub_1DA3A5520();
      v29 = v69;
    }

    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_1DA3A5520();
      v29 = v70;
    }

    v31 = *(v0 + 568);
    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
    *(v29 + 16) = v30 + 1;
    v32 = v29 + 72 * v30;
    *(v32 + 32) = 0xD000000000000012;
    *(v32 + 40) = 0x80000001DA42C300;
    *(v32 + 48) = v27;
    *(v32 + 56) = v78;
    v33 = MEMORY[0x1E69E63E8];
    *(v32 + 72) = MEMORY[0x1E69E63B0];
    *(v32 + 80) = v33;
    *(v32 + 88) = MEMORY[0x1E69E63C0];
    *(v32 + 96) = v28;
    *(v0 + 488) = v29;
    v25 = sub_1DA3A5120(v31);
  }

  v34 = *(v0 + 496);
  v35 = *(v34 + 72);
  (*(v34 + 64))(v25);
  if (*(v0 + 472))
  {
    sub_1DA3A1FF8((v0 + 448), v0 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA42AFC0;
    OUTLINED_FUNCTION_0_20();
    v38 = *(v37 + 8);
    v39 = OUTLINED_FUNCTION_1_18();
    result = v40(v39);
    if (!v42)
    {
      __break(1u);
      return result;
    }

    v43 = *(v0 + 496);
    OUTLINED_FUNCTION_9_13(result, v42, result, &unk_1F55E7F88);

    v44 = *(v43 + 56);
    v45 = sub_1DA3E8314();
    v47 = v46;
    *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    *(inited + 152) = OUTLINED_FUNCTION_3_21(&qword_1EE100FF0);
    v48 = OUTLINED_FUNCTION_2_19(&unk_1EE100FF8);
    *(inited + 120) = v45;
    *(inited + 128) = v47;
    strcpy((inited + 104), "osBuildVersion");
    *(inited + 119) = -18;
    *(inited + 160) = v48;
    *(inited + 168) = 0;
    OUTLINED_FUNCTION_0_20();
    v50 = *(v49 + 16);
    v51 = OUTLINED_FUNCTION_1_18();
    v53 = v52(v51);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(30, v53 & 1, inited + 176);
    OUTLINED_FUNCTION_0_20();
    v55 = *(v54 + 24);
    v56 = OUTLINED_FUNCTION_1_18();
    v58 = v57(v56);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(31, v58 & 1, inited + 248);
    OUTLINED_FUNCTION_0_20();
    v60 = *(v59 + 32);
    v61 = OUTLINED_FUNCTION_1_18();
    v63 = v62(v61);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(32, v63 & 1, inited + 320);
    sub_1DA3BCEF4(inited);
    __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  }

  else
  {
    sub_1DA3A8CA8(v0 + 448, &qword_1ECBAEE58, &qword_1DA427BF0);
  }

  v65 = *(v0 + 488);
  v64 = *(v0 + 496);
  *(v0 + 592) = v65;

  v66 = swift_task_alloc();
  *(v0 + 600) = v66;
  *v66 = v0;
  v66[1] = sub_1DA413624;
  v67 = *(v0 + 496);

  return sub_1DA3E4BE0(0xD000000000000017, 0x80000001DA42C350, v65, v67);
}

uint64_t sub_1DA413624()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 600);
  v5 = *(v3 + 592);
  v6 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v9 + 608) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DA413734, 0, 0);
}

uint64_t sub_1DA413734()
{
  v1 = v0[71];
  v2 = v0[69];
  v3 = v0[66];
  v4 = v0[63];

  v5 = v0[1];
  v6 = v0[76];

  return v5(v6);
}

uint64_t sub_1DA4137C8()
{
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.extractionCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F74();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 584);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DA39E000, v2, v3, "DeviceFeatureExtractor: Unable to fetch account details for other devices details", v6, 2u);
    MEMORY[0x1DA74E430](v6, -1, -1);
  }

  v7 = *(v0 + 496);
  v8 = *(v7 + 72);
  (*(v7 + 64))();
  if (*(v0 + 472))
  {
    sub_1DA3A1FF8((v0 + 448), v0 + 408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA42AFC0;
    OUTLINED_FUNCTION_0_20();
    v11 = *(v10 + 8);
    v12 = OUTLINED_FUNCTION_1_18();
    result = v13(v12);
    if (!v15)
    {
      __break(1u);
      return result;
    }

    v16 = *(v0 + 496);
    OUTLINED_FUNCTION_9_13(result, v15, result, &unk_1F55E7F88);

    v17 = *(v16 + 56);
    v18 = sub_1DA3E8314();
    v20 = v19;
    *(inited + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECD0, &qword_1DA423990);
    *(inited + 152) = OUTLINED_FUNCTION_3_21(&qword_1EE100FF0);
    v21 = OUTLINED_FUNCTION_2_19(&unk_1EE100FF8);
    *(inited + 120) = v18;
    *(inited + 128) = v20;
    strcpy((inited + 104), "osBuildVersion");
    *(inited + 119) = -18;
    *(inited + 160) = v21;
    *(inited + 168) = 0;
    OUTLINED_FUNCTION_0_20();
    v23 = *(v22 + 16);
    v24 = OUTLINED_FUNCTION_1_18();
    v26 = v25(v24);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(30, v26 & 1, inited + 176);
    OUTLINED_FUNCTION_0_20();
    v28 = *(v27 + 24);
    v29 = OUTLINED_FUNCTION_1_18();
    v31 = v30(v29);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(31, v31 & 1, inited + 248);
    OUTLINED_FUNCTION_0_20();
    v33 = *(v32 + 32);
    v34 = OUTLINED_FUNCTION_1_18();
    v36 = v35(v34);
    static SiriSuggestionsIntelligence.createBooleanFeature(featureId:featureValue:)(32, v36 & 1, inited + 320);
    sub_1DA3BCEF4(inited);
    __swift_destroy_boxed_opaque_existential_0((v0 + 408));
  }

  else
  {
    sub_1DA3A8CA8(v0 + 448, &qword_1ECBAEE58, &qword_1DA427BF0);
  }

  v38 = *(v0 + 488);
  v37 = *(v0 + 496);
  *(v0 + 592) = v38;

  v39 = swift_task_alloc();
  *(v0 + 600) = v39;
  *v39 = v0;
  v39[1] = sub_1DA413624;
  v40 = *(v0 + 496);

  return sub_1DA3E4BE0(0xD000000000000017, 0x80000001DA42C350, v38, v40);
}

uint64_t sub_1DA413B20(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA413B40, 0, 0);
}

uint64_t sub_1DA413B40()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 24) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DA413BD0;

  return sub_1DA3E8B3C();
}

uint64_t sub_1DA413BD0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  *v3 = v6;
  *(v2 + 40) = v7;
  *(v2 + 48) = v8;

  if (v0)
  {
    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA413CF8, 0, 0);
  }
}

uint64_t sub_1DA413CF8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = MEMORY[0x1E69E6160];
    v4 = MEMORY[0x1E69E6190];
    v5 = MEMORY[0x1E69E6158];
  }

  else
  {
    v2 = 0;
    v5 = 0;
    v4 = 0;
    v3 = 0;
    *(*(v0 + 16) + 16) = 0;
  }

  v6 = *(v0 + 16);
  *v6 = v2;
  v6[1] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  return (*(v0 + 8))();
}

uint64_t *SiriSuggestionsIntelligence.DeviceFeatureExtractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[9];

  return v0;
}

uint64_t SiriSuggestionsIntelligence.DeviceFeatureExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.DeviceFeatureExtractor.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA413DC4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DA413E54;

  return SiriSuggestionsIntelligence.DeviceFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA413E54()
{
  OUTLINED_FUNCTION_16();
  v3 = v2;
  OUTLINED_FUNCTION_3_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t OUTLINED_FUNCTION_2_19(unint64_t *a1)
{

  return sub_1DA3B1E38(a1);
}

uint64_t OUTLINED_FUNCTION_3_21(unint64_t *a1)
{

  return sub_1DA3B1E38(a1);
}

void OUTLINED_FUNCTION_9_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  static SiriSuggestionsIntelligence.createStringFeature(featureId:featureValue:possibleValues:)(27, a3, v5, a4, (v4 + 32));
}

uint64_t OUTLINED_FUNCTION_10_10()
{
}

uint64_t static SiriSuggestionsIntelligence.loadCDFNormalizerData(fileContents:)()
{
  v1 = sub_1DA420EA4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DA420E94();
  sub_1DA414170();
  sub_1DA420E84();

  if (!v0)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1DA414170()
{
  result = qword_1EE100830;
  if (!qword_1EE100830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100830);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.__allocating_init(kernelData:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t static SiriSuggestionsIntelligence.BucketedECDF.create(buckets:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBD8, &qword_1DA42B050);
  swift_allocObject();

  v0 = sub_1DA3C55DC();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.BucketedECDF.cdf(for:)(Swift::Double a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1DA3C5770(a1);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1DA41431C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61626F725078616DLL && a2 == 0xEE007974696C6962;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x797469736E6564 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA4143EC(char a1)
{
  if (a1)
  {
    return 0x797469736E6564;
  }

  else
  {
    return 0x61626F725078616DLL;
  }
}

uint64_t sub_1DA414438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41431C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA414460(uint64_t a1)
{
  v2 = sub_1DA415014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41449C(uint64_t a1)
{
  v2 = sub_1DA415014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.Bucket.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBE0, &qword_1DA42B058);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415014();
  sub_1DA422494();
  v15 = 0;
  sub_1DA422314();
  if (!v1)
  {
    v14 = 1;
    sub_1DA422314();
  }

  return (*(v5 + 8))(v10, v3);
}

double SiriSuggestionsIntelligence.BucketedECDF.Bucket.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBE8, &qword_1DA42B060);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415014();
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_2_20();
  v8 = v7;
  OUTLINED_FUNCTION_2_20();
  v9 = OUTLINED_FUNCTION_1_19();
  v10(v9);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

void sub_1DA4147F4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = SiriSuggestionsIntelligence.BucketedECDF.Bucket.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_1DA414820(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return SiriSuggestionsIntelligence.BucketedECDF.Bucket.encode(to:)(a1);
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.BucketedECDF.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

double sub_1DA4148A0(Swift::Double a1)
{
  v2 = *v1;
  *&result = SiriSuggestionsIntelligence.BucketedECDF.cdf(for:)(a1);
  return result;
}

Swift::Double_optional __swiftcall SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction.invCdf(for:)(Swift::Double a1)
{
  v2 = *(*(v1 + 16) + 16);
  v3 = sub_1DA3C575C(a1);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

double sub_1DA41491C(Swift::Double a1)
{
  v2 = *v1;
  *&result = SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction.invCdf(for:)(a1);
  return result;
}

uint64_t sub_1DA414970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6963696666656F63 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374656B637562 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA414A3C(char a1)
{
  if (a1)
  {
    return 0x7374656B637562;
  }

  else
  {
    return 0x6963696666656F63;
  }
}

uint64_t sub_1DA414A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA414970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA414AAC(uint64_t a1)
{
  v2 = sub_1DA415068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA414AE8(uint64_t a1)
{
  v2 = sub_1DA415068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.NormalizerData.encode(to:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF0, &qword_1DA42B068);
  OUTLINED_FUNCTION_3_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415068();
  sub_1DA422494();
  v17 = 0;
  sub_1DA422314();
  if (!v2)
  {
    v15[1] = a2;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    sub_1DA415110(&qword_1ECBAFC00, sub_1DA4150BC);
    sub_1DA422334();
  }

  return (*(v7 + 8))(v12, v5);
}

void *SiriSuggestionsIntelligence.NormalizerData.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC10, &qword_1DA42B078);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA415068();
  OUTLINED_FUNCTION_3_22();
  if (!v1)
  {
    OUTLINED_FUNCTION_2_20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    sub_1DA415110(&unk_1EE100098, sub_1DA415188);
    sub_1DA4222B4();
    v9 = OUTLINED_FUNCTION_1_19();
    v10(v9);
    v8 = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

void *sub_1DA414EA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = SiriSuggestionsIntelligence.NormalizerData.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = result;
  }

  return result;
}

uint64_t SSCumulativeDensityFunction.approximateInvert(startingAt:endingAt:stepSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (***a3)(char *, uint64_t)@<X8>)
{
  v7 = OUTLINED_FUNCTION_3_1(a1);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction();
  (*(v9 + 16))(v13, v3, a1);
  v15 = sub_1DA415200(v13, -5.0, 5.0, 0.1, v14, a1, a2);
  a3[3] = v14;
  result = sub_1DA415410(&qword_1EE1002F0);
  a3[4] = result;
  *a3 = v15;
  return result;
}

unint64_t sub_1DA415014()
{
  result = qword_1EE100920[0];
  if (!qword_1EE100920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE100920);
  }

  return result;
}

unint64_t sub_1DA415068()
{
  result = qword_1EE100848;
  if (!qword_1EE100848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100848);
  }

  return result;
}

unint64_t sub_1DA4150BC()
{
  result = qword_1ECBAFC08;
  if (!qword_1ECBAFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC08);
  }

  return result;
}

uint64_t sub_1DA415110(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAFBF8, &qword_1DA42B070);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DA415188()
{
  result = qword_1EE100908;
  if (!qword_1EE100908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100908);
  }

  return result;
}

void (**sub_1DA415200(uint64_t a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7))(char *, uint64_t)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  (*(v12 + 32))(&v22 - v17);
  v19 = swift_allocObject();
  (*(v12 + 16))(v16, v18, a6);
  v20 = sub_1DA415790(v16, v19, a6, a7, a2, a3, a4);
  (*(v12 + 8))(v18, a6);
  return v20;
}

unint64_t sub_1DA415378()
{
  result = qword_1ECBAFC18;
  if (!qword_1ECBAFC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC18);
  }

  return result;
}

uint64_t sub_1DA4153CC(uint64_t a1)
{
  result = sub_1DA415410(qword_1EE1002F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DA415410(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSuggestionsIntelligence.ApproximateInverseCumulativeDensityFunction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1DA4154A4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA415584()
{
  result = qword_1ECBAFC20;
  if (!qword_1ECBAFC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC20);
  }

  return result;
}

unint64_t sub_1DA4155DC()
{
  result = qword_1ECBAFC28;
  if (!qword_1ECBAFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC28);
  }

  return result;
}

unint64_t sub_1DA415634()
{
  result = qword_1EE100838;
  if (!qword_1EE100838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100838);
  }

  return result;
}

unint64_t sub_1DA41568C()
{
  result = qword_1EE100840;
  if (!qword_1EE100840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100840);
  }

  return result;
}

unint64_t sub_1DA4156E4()
{
  result = qword_1EE100910;
  if (!qword_1EE100910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100910);
  }

  return result;
}

unint64_t sub_1DA41573C()
{
  result = qword_1EE100918;
  if (!qword_1EE100918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE100918);
  }

  return result;
}

void (**sub_1DA415790(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4, double a5, double a6, double a7))(char *, uint64_t)
{
  v15 = sub_1DA421A94();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v86 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v89 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v88 = &v86 - v26;
  v94[3] = a3;
  v94[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v94);
  v28 = *(*(a3 - 8) + 32);
  v90 = boxed_opaque_existential_1;
  v28(boxed_opaque_existential_1, a1, a3);
  sub_1DA3A7ED4(v94, v93);
  if (a7 == 0.0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    sub_1DA3A5820(0, *(v91 + 16) + 1, 1, v91);
    v51 = v80;
LABEL_24:
    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1DA3A5820(v52 > 1, v53 + 1, 1, v51);
      v51 = v81;
    }

    *(v51 + 16) = v53 + 1;
    v54 = v51 + 16 * v53;
    *(v54 + 32) = v20;
    *(v54 + 40) = a6;
    goto LABEL_27;
  }

  v86 = v23;
  v87 = a2;
  v7 = 0;
  a2 = (v16 + 8);
  v91 = MEMORY[0x1E69E7CC0];
  *&v29 = 134217984;
  v92 = v29;
  v30 = a5;
  while (1)
  {
    v31 = v30;
    if (a7 <= 0.0 ? v30 <= a6 : v30 >= a6)
    {
      break;
    }

    v33 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    v30 = a5 + v33 * a7;
    __swift_project_boxed_opaque_existential_1(v93, v93[3]);
    v34 = (*(a4 + 8))(a3, a4, v31);
    if (v35)
    {
      sub_1DA4219B4();
      v36 = sub_1DA421A74();
      v37 = sub_1DA421F74();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = v92;
        *(v38 + 4) = v31;
        _os_log_impl(&dword_1DA39E000, v36, v37, "Unable to add sample. Function returns nil at: %f. Dropping sample", v38, 0xCu);
        MEMORY[0x1DA74E430](v38, -1, -1);
      }

      (*a2)(v20, v15);
      v7 = (v7 + 1);
    }

    else
    {
      v39 = v34;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v40 = v91;
      }

      else
      {
        sub_1DA3A5820(0, *(v91 + 16) + 1, 1, v91);
        v40 = v44;
      }

      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1DA3A5820(v41 > 1, v42 + 1, 1, v40);
        v40 = v45;
      }

      *(v40 + 16) = v42 + 1;
      v91 = v40;
      v43 = v40 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v31;
      v7 = v33;
    }
  }

  v7 = *(a4 + 8);
  v46 = v7(a3, a4, a6);
  if ((v47 & 1) == 0)
  {
    v20 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_48;
    }

    v51 = v91;
    goto LABEL_24;
  }

  sub_1DA4219B4();
  v48 = sub_1DA421A74();
  v49 = sub_1DA421F74();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = v92;
    *(v50 + 4) = a6;
    _os_log_impl(&dword_1DA39E000, v48, v49, "Unable to add sample. Function returns nil at: %f. Dropping sample", v50, 0xCu);
    MEMORY[0x1DA74E430](v50, -1, -1);
  }

  (*a2)(v88, v15);
  v51 = v91;
LABEL_27:
  v55 = v51;

  v56 = v7(a3, a4, -1.79769313e308);
  v91 = v55;
  if (v57)
  {
    sub_1DA4219B4();
    v58 = sub_1DA421A74();
    v59 = sub_1DA421F74();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = v92;
      *(v60 + 4) = 0xFFEFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_1DA39E000, v58, v59, "Unable to add sample. Function returns nil at: %f. Dropping sample", v60, 0xCu);
      MEMORY[0x1DA74E430](v60, -1, -1);
    }

    (*a2)(v89, v15);
    v61 = v91;
  }

  else
  {
    v62 = v56;
    v61 = v55;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA3A5820(0, *(v55 + 16) + 1, 1, v55);
      v61 = v82;
    }

    v64 = *(v61 + 16);
    v63 = *(v61 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1DA3A5820(v63 > 1, v64 + 1, 1, v61);
      v61 = v83;
    }

    *(v61 + 16) = v64 + 1;
    v65 = v61 + 16 * v64;
    *(v65 + 32) = v62;
    *(v65 + 40) = 0xFFEFFFFFFFFFFFFFLL;
  }

  v66 = v7(a3, a4, 1.79769313e308);
  if (v67)
  {
    v68 = v86;
    sub_1DA4219B4();
    v69 = sub_1DA421A74();
    v70 = sub_1DA421F74();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = v92;
      *(v71 + 4) = 0x7FEFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_1DA39E000, v69, v70, "Unable to add sample. Function returns nil at: %f. Dropping sample", v71, 0xCu);
      MEMORY[0x1DA74E430](v71, -1, -1);
    }

    (*a2)(v68, v15);
    v72 = v87;
  }

  else
  {
    v73 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DA3A5820(0, *(v61 + 16) + 1, 1, v61);
      v61 = v84;
    }

    v72 = v87;
    v75 = *(v61 + 16);
    v74 = *(v61 + 24);
    if (v75 >= v74 >> 1)
    {
      sub_1DA3A5820(v74 > 1, v75 + 1, 1, v61);
      v61 = v85;
    }

    *(v61 + 16) = v75 + 1;
    v76 = v61 + 16 * v75;
    *(v76 + 32) = v73;
    *(v76 + 40) = 0x7FEFFFFFFFFFFFFFLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF060, &qword_1DA42B510);
  swift_allocObject();
  v77 = sub_1DA3C545C();
  type metadata accessor for SiriSuggestionsIntelligence.ApproxInverseFunction();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  __swift_destroy_boxed_opaque_existential_0(v93);
  __swift_destroy_boxed_opaque_existential_0(v94);
  v72[2] = v78;
  return v72;
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_1DA422294();
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return sub_1DA422484();
}

void static SiriSuggestionsIntelligence.MathCommon.createSamples@Sendable (for:startingAt:endingAt:stepSize:)(uint64_t (*a1)(uint64_t, double), double a2, double a3, double a4)
{
  v8 = sub_1DA421A94();
  v9 = *(*(v8 - 8) + 64);
  isUniquelyReferenced_nonNull_native = MEMORY[0x1EEE9AC00](v8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1E69E7CC0];
  if (a4 != 0.0)
  {
    v15 = 0;
    v16 = (v11 + 8);
    v32 = MEMORY[0x1E69E7CC0];
    *&v12 = 134217984;
    v33 = v12;
    v17 = a2;
    while (1)
    {
      v18 = v17;
      if (a4 <= 0.0)
      {
        v19 = v17 <= a3;
      }

      else
      {
        v19 = v17 >= a3;
      }

      if (v19)
      {
        sub_1DA4162B0(&v34, a1, a3);
        return;
      }

      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v17 = a2 + v20 * a4;
      v21 = a1(isUniquelyReferenced_nonNull_native, v18);
      if (v22)
      {
        sub_1DA4219B4();
        v23 = sub_1DA421A74();
        v24 = sub_1DA421F74();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = v33;
          *(v25 + 4) = v18;
          _os_log_impl(&dword_1DA39E000, v23, v24, "Unable to add sample. Function returns nil at: %f. Dropping sample", v25, 0xCu);
          MEMORY[0x1DA74E430](v25, -1, -1);
        }

        isUniquelyReferenced_nonNull_native = (*v16)(v14, v8);
        ++v15;
      }

      else
      {
        v26 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DA3A5820(0, *(v32 + 16) + 1, 1, v32);
          v32 = isUniquelyReferenced_nonNull_native;
        }

        v28 = *(v32 + 16);
        v27 = *(v32 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1DA3A5820(v27 > 1, v28 + 1, 1, v32);
          v32 = isUniquelyReferenced_nonNull_native;
        }

        v29 = v32;
        *(v32 + 16) = v28 + 1;
        v30 = v29 + 16 * v28;
        *(v30 + 32) = v26;
        *(v30 + 40) = v18;
        v34 = v29;
        v15 = v20;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1DA4162B0(uint64_t *a1, uint64_t (*a2)(uint64_t, double), double a3)
{
  v6 = sub_1DA421A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2(v9, a3);
  if (v13)
  {
    sub_1DA4219B4();
    v14 = sub_1DA421A74();
    v15 = sub_1DA421F74();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a3;
      _os_log_impl(&dword_1DA39E000, v14, v15, "Unable to add sample. Function returns nil at: %f. Dropping sample", v16, 0xCu);
      MEMORY[0x1DA74E430](v16, -1, -1);
    }

    return (*(v7 + 8))(v11, v6);
  }

  else
  {
    v18 = v12;
    sub_1DA3AFD30();
    v19 = *(*a1 + 16);
    result = sub_1DA3AFDD4(v19);
    v20 = *a1;
    *(v20 + 16) = v19 + 1;
    v21 = v20 + 16 * v19;
    *(v21 + 32) = v18;
    *(v21 + 40) = a3;
    *a1 = v20;
  }

  return result;
}

void sub_1DA416480(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_1DA416574(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1DA421A94();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1DA4166C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DA421A94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  sub_1DA421A14();
  return sub_1DA421A84();
}

uint64_t sub_1DA416754@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA421A94();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1DA4168D0(uint64_t a1)
{
  [objc_msgSend(objc_opt_self() sharedStream)];

  return swift_unknownObjectRelease();
}

uint64_t sub_1DA41695C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA416980, 0, 0);
}

uint64_t sub_1DA416980(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  sub_1DA41725C(*(v2 + 16), a2, *(v2 + 32));
  v4 = *(v2 + 8);

  return v4();
}

void *sub_1DA4169E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC30, &qword_1DA42B638);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v69 - v4;
  v6 = sub_1DA4210F4();
  v7 = OUTLINED_FUNCTION_3_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_76();
  v14 = v12 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v69 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v69 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  sub_1DA4171A8(v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DA3A8CA8(v5, &qword_1ECBAFC30, &qword_1DA42B638);
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v27 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v27, static Logger.conversionCategory);
    (*(v9 + 16))(v14, a1, v6);
    v28 = sub_1DA421A74();
    v29 = sub_1DA421F74();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_150();
      v31 = swift_slowAlloc();
      v76 = v31;
      *v30 = 136315138;
      sub_1DA4184D0();
      v32 = sub_1DA422364();
      v34 = v33;
      (*(v9 + 8))(v14, v6);
      v35 = sub_1DA3A5FE8(v32, v34, &v76);

      *(v30 + 4) = v35;
      OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v36, v29, "Error emitting request link because of nil sugID and generationId - %s");
      __swift_destroy_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_17();
    }

    else
    {

      (*(v9 + 8))(v14, v6);
    }

    return 0;
  }

  (*(v9 + 32))(v26, v5, v6);
  v37 = [objc_allocWithZone(MEMORY[0x1E69CF698]) init];
  if (!v37)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v60 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v60, static Logger.conversionCategory);
    v61 = sub_1DA421A74();
    v62 = sub_1DA421F74();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_19_4();
      *v63 = 0;
      _os_log_impl(&dword_1DA39E000, v61, v62, "error initializing SUGSchemaSUGClientEvent", v63, 2u);
      OUTLINED_FUNCTION_17();
    }

    goto LABEL_23;
  }

  v38 = v37;
  v75 = v18;
  v39 = [objc_allocWithZone(MEMORY[0x1E69CF6A0]) init];
  if (!v39)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v64 = sub_1DA421A94();
    OUTLINED_FUNCTION_4_21(v64, static Logger.conversionCategory);
    v65 = sub_1DA421A74();
    v66 = sub_1DA421F74();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = OUTLINED_FUNCTION_19_4();
      *v67 = 0;
      _os_log_impl(&dword_1DA39E000, v65, v66, "error initializing SUGSchemaSUGClientEventMetadata", v67, 2u);
      OUTLINED_FUNCTION_17();
    }

LABEL_23:
    (*(v9 + 8))(v26, v6);
    return 0;
  }

  v40 = v39;
  sub_1DA418528();
  v41 = *(v9 + 16);
  v74 = v26;
  v41(v24);
  v42 = sub_1DA41710C(v24);
  [v40 setSugId_];

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v43 = sub_1DA421A94();
  OUTLINED_FUNCTION_4_21(v43, static Logger.conversionCategory);
  (v41)(v21, a1, v6);
  v45 = v74;
  v44 = v75;
  (v41)(v75, v74, v6);
  v46 = sub_1DA421A74();
  v47 = sub_1DA421F64();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v71 = v46;
    v73 = v40;
    v49 = v48;
    v72 = swift_slowAlloc();
    v76 = v72;
    *v49 = 136315394;
    v69 = sub_1DA4184D0();
    v50 = sub_1DA422364();
    v52 = v51;
    v53 = *(v9 + 8);
    v70 = v47;
    v53(v21, v6);
    v54 = sub_1DA3A5FE8(v50, v52, &v76);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2080;
    v55 = sub_1DA422364();
    v57 = v56;
    v53(v44, v6);
    v58 = sub_1DA3A5FE8(v55, v57, &v76);

    *(v49 + 14) = v58;
    v59 = v71;
    _os_log_impl(&dword_1DA39E000, v71, v70, "sugId generated from generationId - %s as %s", v49, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_17();
    v40 = v73;
    v45 = v74;
    OUTLINED_FUNCTION_17();
  }

  else
  {

    v53 = *(v9 + 8);
    v53(v44, v6);
    v53(v21, v6);
  }

  [v38 setEventMetadata_];

  v53(v45, v6);
  return v38;
}

id sub_1DA41710C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DA4210D4();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1DA4210F4();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t sub_1DA4171A8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1DA4210D4();
  v4 = [v2 derivedIdentifierForComponentName:32 fromSourceIdentifier:v3];

  if (v4)
  {
    sub_1DA4210E4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1DA4210F4();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void sub_1DA41725C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v189 = a3;
  v180 = sub_1DA421314();
  v4 = OUTLINED_FUNCTION_3_1(v180);
  v179 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v178 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA4212E4();
  v10 = OUTLINED_FUNCTION_3_1(v9);
  v195 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_76();
  v194 = (v14 - v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v172 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v196 = (&v172 - v20);
  v21 = sub_1DA4210B4();
  v22 = OUTLINED_FUNCTION_3_1(v21);
  v186 = v23;
  v187 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_76();
  v185 = v26 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v184 = &v172 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC30, &qword_1DA42B638);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v193 = &v172 - v32;
  v33 = sub_1DA4210F4();
  v34 = OUTLINED_FUNCTION_3_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v40 = &v172 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DA4211F4();
  v42 = OUTLINED_FUNCTION_3_1(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_76();
  v183 = v47 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v172 - v50;
  v52 = [objc_allocWithZone(MEMORY[0x1E69CF6A8]) init];
  if (v52)
  {
    v53 = v52;
    v173 = v19;
    v190 = v9;
    v174 = v40;
    v188 = a1;
    sub_1DA4212D4();
    v54 = sub_1DA421194();
    v56 = v55;
    v57 = *(v44 + 8);
    v176 = v41;
    v177 = v44 + 8;
    v175 = v57;
    v57(v51, v41);
    v197[0] = v54;
    v197[1] = v56;
    v58 = sub_1DA3A6A84();
    v59 = MEMORY[0x1DA74D750](95, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v58);

    v60 = *(v59 + 16);
    v192 = v53;
    if (v60)
    {
      v181 = v33;
      v182 = v36;
      v197[0] = MEMORY[0x1E69E7CC0];
      sub_1DA3B0160();
      v61 = v197[0];
      v62 = (v59 + 56);
      v63 = v51;
      do
      {
        v64 = *(v62 - 3);
        v65 = *(v62 - 2);
        v67 = *(v62 - 1);
        v66 = *v62;

        v68 = MEMORY[0x1DA74D340](v64, v65, v67, v66);
        v70 = v69;

        v197[0] = v61;
        v71 = v61[2];
        if (v71 >= v61[3] >> 1)
        {
          sub_1DA3B0160();
          v61 = v197[0];
        }

        v61[2] = v71 + 1;
        v72 = &v61[2 * v71];
        v72[4] = v68;
        v72[5] = v70;
        v62 += 4;
        --v60;
      }

      while (v60);

      v73 = v181;
      v74 = v182;
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
      v74 = v36;
      v73 = v33;
      v63 = v51;
    }

    v79 = v190;
    v80 = v196;
    if (!v61[2])
    {

      goto LABEL_20;
    }

    v81 = v61[4];
    v82 = v61[5];

    v83 = v193;
    sub_1DA4210C4();

    if (__swift_getEnumTagSinglePayload(v83, 1, v73) == 1)
    {
      sub_1DA3A8CA8(v83, &qword_1ECBAFC30, &qword_1DA42B638);
LABEL_20:
      v84 = v194;
      v85 = v195;
      v86 = v188;
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v87 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v87, static Logger.conversionCategory);
      (*(v85 + 16))(v84, v86, v79);
      v88 = sub_1DA421A74();
      v89 = sub_1DA421F74();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = OUTLINED_FUNCTION_150();
        v91 = swift_slowAlloc();
        v197[0] = v91;
        *v90 = 136315138;
        sub_1DA4212D4();
        v92 = sub_1DA421194();
        v94 = v93;
        v175(v63, v176);
        (*(v85 + 8))(v84, v79);
        v95 = sub_1DA3A5FE8(v92, v94, v197);

        *(v90 + 4) = v95;
        _os_log_impl(&dword_1DA39E000, v88, v89, "did not get suggestionShownGenerationId UUID from %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v91);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();
      }

      else
      {

        (*(v85 + 8))(v84, v79);
      }

      return;
    }

    v96 = v174;
    (*(v74 + 32))(v174, v83, v73);
    v194 = sub_1DA4169E4(v96);
    if (!v194)
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v131 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v131, static Logger.conversionCategory);
      v132 = sub_1DA421A74();
      v133 = sub_1DA421F74();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = OUTLINED_FUNCTION_19_4();
        *v134 = 0;
        _os_log_impl(&dword_1DA39E000, v132, v133, "error creating client event", v134, 2u);
        OUTLINED_FUNCTION_17();
      }

      else
      {
      }

      v159 = *(v74 + 8);
      v160 = v96;
      goto LABEL_56;
    }

    v181 = v73;
    v182 = v74;
    sub_1DA4212D4();
    v97 = v184;
    sub_1DA4211E4();
    v98 = v176;
    v99 = v175;
    v175(v63, v176);
    v73 = v183;
    sub_1DA4212D4();
    v100 = v185;
    sub_1DA4211E4();
    v99(v73, v98);
    sub_1DA421054();
    v102 = v101;
    v103 = v187;
    v104 = *(v186 + 8);
    v104(v100, v187);
    v104(v97, v103);
    if (v102 < 0.0)
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_8();
      }

      v105 = sub_1DA421A94();
      OUTLINED_FUNCTION_4_21(v105, static Logger.conversionCategory);
      v106 = v195;
      v107 = *(v195 + 16);
      v108 = v80;
      v109 = v80;
      v110 = v189;
      v107(v108, v189, v79);
      v111 = v173;
      v107(v173, v110, v79);
      v112 = sub_1DA421A74();
      v113 = sub_1DA421F74();
      v114 = os_log_type_enabled(v112, v113);
      v115 = v181;
      v116 = v182;
      if (v114)
      {
        v117 = swift_slowAlloc();
        LODWORD(v191) = v113;
        v118 = v117;
        v193 = swift_slowAlloc();
        v197[0] = v193;
        *v118 = 136315394;
        sub_1DA4212D4();
        v119 = sub_1DA421194();
        v121 = v120;
        v189 = v112;
        v122 = v176;
        v123 = v175;
        v175(v63, v176);
        v124 = *(v106 + 8);
        v124(v109);
        v125 = sub_1DA3A5FE8(v119, v121, v197);

        *(v118 + 4) = v125;
        *(v118 + 12) = 2080;
        sub_1DA4212D4();
        v126 = sub_1DA421194();
        v128 = v127;
        v123(v63, v122);
        (v124)(v111, v79);
        v129 = sub_1DA3A5FE8(v126, v128, v197);

        *(v118 + 14) = v129;
        v130 = v189;
        _os_log_impl(&dword_1DA39E000, v189, v191, "In SELFConversionProcessor engagement happened before the suggestion was shown - %s and suggestionShown - %s skipping", v118, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_17();

        (*(v182 + 8))(v174, v181);
      }

      else
      {

        v161 = *(v106 + 8);
        v161(v111, v79);
        v161(v109, v79);
        (*(v116 + 8))(v174, v115);
      }

      return;
    }

    if ((*&v102 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v135 = v191;
      v73 = v181;
      v100 = v182;
      if (v102 > -1.0)
      {
        if (v102 < 4294967300.0)
        {
          [v192 setSecondsToConversion_];
          v136 = sub_1DA4212B4();
          sub_1DA421604();
          v137 = sub_1DA4215A4();
          v139 = sub_1DA3EA3F0(v137, v138, v136);

          if (v139)
          {
            if (*(v139 + 16))
            {
              v140 = v179;
              v141 = v178;
              v142 = v180;
              (*(v179 + 16))(v178, v139 + ((*(v140 + 80) + 32) & ~*(v140 + 80)), v180);

              v143 = sub_1DA4212F4();
              v145 = v144;
              (*(v140 + 8))(v141, v142);
              v146 = v192;
              sub_1DA418420(v143, v145, v192);
              sub_1DA418478(v143, v145, v146);

              [v194 setEngagementMetricReported_];
              if (qword_1EE100EF8 != -1)
              {
                OUTLINED_FUNCTION_0_8();
              }

              v147 = sub_1DA421A94();
              OUTLINED_FUNCTION_4_21(v147, static Logger.conversionCategory);
              v148 = v194;
              v149 = sub_1DA421A74();
              v150 = sub_1DA421F64();

              if (os_log_type_enabled(v149, v150))
              {
                v151 = v73;
                v152 = OUTLINED_FUNCTION_150();
                v153 = swift_slowAlloc();
                *v152 = 138412290;
                *(v152 + 4) = v148;
                *v153 = v194;
                v154 = v148;
                OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v155, v150, "emitting sugClientEvent - %@");
                sub_1DA3A8CA8(v153, &qword_1ECBAEC70, &qword_1DA42A510);
                OUTLINED_FUNCTION_17();
                v73 = v151;
                OUTLINED_FUNCTION_17();
              }

              __swift_project_boxed_opaque_existential_1((v135 + 40), *(v135 + 64));
              sub_1DA4168D0(v148);
              v156 = sub_1DA421A74();
              v157 = sub_1DA421F64();
              if (os_log_type_enabled(v156, v157))
              {
                v158 = OUTLINED_FUNCTION_19_4();
                *v158 = 0;
                _os_log_impl(&dword_1DA39E000, v156, v157, "emitted SELF conversion message", v158, 2u);
                OUTLINED_FUNCTION_17();
              }

              else
              {
              }

LABEL_55:
              v159 = *(v100 + 8);
              v160 = v174;
LABEL_56:
              v159(v160, v73);
              return;
            }
          }

          if (qword_1EE100EF8 == -1)
          {
LABEL_51:
            v162 = sub_1DA421A94();
            OUTLINED_FUNCTION_4_21(v162, static Logger.conversionCategory);
            v163 = sub_1DA421A74();
            v164 = sub_1DA421F74();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = v73;
              v166 = OUTLINED_FUNCTION_150();
              v167 = swift_slowAlloc();
              v197[0] = v167;
              *v166 = 136315138;
              v168 = sub_1DA4215A4();
              v170 = sub_1DA3A5FE8(v168, v169, v197);

              *(v166 + 4) = v170;
              OUTLINED_FUNCTION_5_15(&dword_1DA39E000, v171, v164, "engagement message should contain a single entity with parameter key as %s");
              __swift_destroy_boxed_opaque_existential_0(v167);
              OUTLINED_FUNCTION_17();
              OUTLINED_FUNCTION_17();

              (*(v100 + 8))(v174, v165);
              return;
            }

            goto LABEL_55;
          }

LABEL_60:
          OUTLINED_FUNCTION_0_8();
          goto LABEL_51;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v75 = sub_1DA421A94();
  OUTLINED_FUNCTION_4_21(v75, static Logger.conversionCategory);
  v196 = sub_1DA421A74();
  v76 = sub_1DA421F74();
  if (os_log_type_enabled(v196, v76))
  {
    v77 = OUTLINED_FUNCTION_19_4();
    *v77 = 0;
    _os_log_impl(&dword_1DA39E000, v196, v76, "Failed to initialize SUGSchemaSUGEngagementMetricReported object", v77, 2u);
    OUTLINED_FUNCTION_17();
  }

  v78 = v196;
}

uint64_t sub_1DA418288()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA4182E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA3CC038;

  return sub_1DA41695C(a1, a2, a3);
}

uint64_t sub_1DA418394()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3CCCC0;

  return sub_1DA3E54E0();
}

void sub_1DA418420(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA421B64();
  [a3 setSuggestionId_];
}

void sub_1DA418478(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DA421B64();
  [a3 setLoggingActionId_];
}

unint64_t sub_1DA4184D0()
{
  result = qword_1ECBAFC38;
  if (!qword_1ECBAFC38)
  {
    sub_1DA4210F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC38);
  }

  return result;
}

unint64_t sub_1DA418528()
{
  result = qword_1ECBAFC40;
  if (!qword_1ECBAFC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAFC40);
  }

  return result;
}

void OUTLINED_FUNCTION_5_15(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t FeatureSetProvider.__allocating_init(features:)(uint64_t a1)
{
  v2 = swift_allocObject();
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(a1);
  v4 = v3;

  *(v2 + 16) = v4;
  return v2;
}

uint64_t FeatureSetProvider.init(features:)(uint64_t a1)
{
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(a1);
  v3 = v2;

  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_1DA418644(uint64_t result, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = *(v2 + 16);
    v7 = (a2 + 32);
    do
    {
      v9 = *v7++;
      v8 = v9;
      v10 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v11 = sub_1DA421894();
      if (*(v6 + 16))
      {
        v13 = sub_1DA3B77A8(v8, v11, v12, 0);
        v15 = v14;

        if (v15)
        {
          v16 = *(*(v6 + 56) + 8 * v13);
        }
      }

      else
      {
      }

      MEMORY[0x1DA74D470](v16);
      if (*(v25 + 16) >= *(v25 + 24) >> 1)
      {
        sub_1DA421D54();
      }

      v17 = sub_1DA421D84();
      if (*(v6 + 16))
      {
        v17 = sub_1DA3B77A8(v8, 0, 0, 2);
        if (v18)
        {
          v17 = *(*(v6 + 56) + 8 * v17);
        }
      }

      MEMORY[0x1DA74D470](v17);
      if (*(v25 + 16) >= *(v25 + 24) >> 1)
      {
        sub_1DA421D54();
      }

      result = sub_1DA421D84();
      --v4;
    }

    while (v4);
    v19 = v25;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = 0;
  v24 = v3;
  v21 = *(v19 + 16);
  while (1)
  {
    if (v21 == v20)
    {

      return v3;
    }

    if (v20 >= *(v19 + 16))
    {
      break;
    }

    v22 = *(v19 + 8 * v20++ + 32);
    if (v22)
    {
      v23 = v22;
      MEMORY[0x1DA74D470]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DA421D54();
      }

      result = sub_1DA421D84();
      v3 = v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeatureSetProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FeatureSetProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

SiriSuggestionsIntelligence::EngagementModelTypes_optional __swiftcall EngagementModelTypes.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1DA422234();

  if (v1 == 1)
  {
    v2.value = SiriSuggestionsIntelligence_EngagementModelTypes_identityModel;
  }

  else
  {
    v2.value = SiriSuggestionsIntelligence_EngagementModelTypes_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t EngagementModelTypes.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x797469746E656469;
  }

  else
  {
    return 0x796142657669616ELL;
  }
}

SiriSuggestionsIntelligence::EngagementModelTypes_optional sub_1DA4189B8@<W0>(Swift::String *a1@<X0>, SiriSuggestionsIntelligence::EngagementModelTypes_optional *a2@<X8>)
{
  result.value = EngagementModelTypes.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1DA4189E8@<X0>(uint64_t *a1@<X8>)
{
  result = EngagementModelTypes.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *SiriSuggestionsIntelligence.EngagementEstimatorService.__allocating_init(classifier:modelName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[3] = a3;
  result[4] = a1;
  result[2] = a2;
  return result;
}

void *SiriSuggestionsIntelligence.EngagementEstimatorService.init(classifier:modelName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v3[4] = a1;
  v3[2] = a2;
  return v3;
}

Swift::String __swiftcall SiriSuggestionsIntelligence.EngagementEstimatorService.getEstimatorModelName()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id SiriSuggestionsIntelligence.EngagementEstimatorService.getScore(candidate:featureSetProvider:)(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1DA418644(a1, &unk_1F55E8098);
  v4 = *(v1 + 32);
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
  v5 = sub_1DA3D6124(v3, 0);

  if (!v2)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
    v16[0] = 0;
    v7 = [v4 predictionFromFeatures:v5 options:v6 error:v16];

    v8 = v16[0];
    if (v7)
    {
      swift_getObjectType();
      v9 = v8;
      v10 = MLFeatureProvider.getLikelihoodPredictions()();
      swift_unknownObjectRelease();
      v11 = (v10 + 48);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v4 = *v11;
        if (*(v11 - 2) != 0xD000000000000012 || 0x80000001DA42DC00 != *(v11 - 1))
        {
          v11 += 3;
          if ((sub_1DA4223A4() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_13;
      }

      v4 = 0;
LABEL_13:
    }

    else
    {
      v4 = v16[0];
      sub_1DA420FB4();

      swift_willThrow();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t SiriSuggestionsIntelligence.EngagementEstimatorService.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t SiriSuggestionsIntelligence.EngagementEstimatorService.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.EngagementEstimatorService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.__allocating_init(featureService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1DA3A1FF8(a1, v2 + 16);
  return v2;
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.createFeatureSetProvider(candidates:generationId:environment:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DA418D7C, 0, 0);
}

uint64_t sub_1DA418D7C()
{
  v1 = v0[3];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1DA418EAC;
  v7 = v0[2];

  return v9(v7, v2, v3);
}

uint64_t sub_1DA418EAC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DA418FAC, 0, 0);
}

uint64_t sub_1DA418FAC()
{
  v1 = *(v0 + 40);
  type metadata accessor for FeatureSetProvider();
  v2 = swift_allocObject();
  static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(v1);
  v4 = v3;

  *(v2 + 16) = v4;
  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t SiriSuggestionsIntelligence.IntelligenceFeatureSetService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1DA4190C0()
{
  result = qword_1ECBAFC48;
  if (!qword_1ECBAFC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EngagementModelTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA419238(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v2[27] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA4192FC, 0, 0);
}

uint64_t sub_1DA4192FC()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  *(v0 + 256) = v2;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  *(v0 + 264) = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  sub_1DA3A88F8(v1 + 24, v0 + 120, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (*(v0 + 144))
  {
    v4 = *(v0 + 248);
    sub_1DA3A1FF8((v0 + 120), v0 + 160);
    v5 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));
    sub_1DA421934();
    sub_1DA421024();
    __swift_destroy_boxed_opaque_existential_0((v0 + 160));
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    v9 = *(v0 + 248);
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 208);
  v13 = sub_1DA421A94();
  v14 = __swift_project_value_buffer(v13, static Logger.extractionCategory);
  v16 = OUTLINED_FUNCTION_57_0(v14, v15, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v16, v17, &qword_1ECBAFDA8, &qword_1DA42C180);
  v18 = sub_1DA421A74();
  v19 = sub_1DA421F64();
  v20 = OUTLINED_FUNCTION_33_1(v19);
  v21 = *(v0 + 240);
  if (v20)
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 216);
    swift_slowAlloc();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v11 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v22 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v22, v23);
    OUTLINED_FUNCTION_30_4();
    v24 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v25 = sub_1DA3A8CA8(v0 + 16, &qword_1ECBAFDA8, &qword_1DA42C180);
    OUTLINED_FUNCTION_31_3(v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v11 + 14) = v24;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v27, v28, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v21, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8(v0 + 16, &qword_1ECBAFDA8, &qword_1DA42C180);
  }

  v29 = *(v0 + 248);
  v31 = *(v0 + 224);
  v30 = *(v0 + 232);
  v32 = *(v0 + 208);
  v33 = *v32;
  v34 = sub_1DA4210B4();
  v35 = OUTLINED_FUNCTION_15_5(v34);
  OUTLINED_FUNCTION_56_1(v35, v36, &qword_1ECBAE870, &qword_1DA4252E0);
  v37 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v38 = OUTLINED_FUNCTION_6_15();
  v39 = OUTLINED_FUNCTION_58_1(v38, sel_publisherWithOptions_);
  *(v0 + 272) = v39;

  v40 = swift_task_alloc();
  *(v0 + 280) = v40;
  v40[2] = v39;
  v40[3] = v2;
  v40[4] = v3;
  v40[5] = v32;
  v41 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  *(v0 + 288) = v42;
  *v42 = v43;
  v42[1] = sub_1DA4196A0;
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_1DA4196A0()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 288);
  v3 = *(v1 + 280);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA4197A0()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);

  sub_1DA3A8CA8(v3, &qword_1ECBAE870, &qword_1DA4252E0);

  v8 = *(v0 + 112);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);

  *v7 = v12;
  *(v7 + 16) = v11;
  *(v7 + 32) = v8;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DA419884()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[23] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA419948, 0, 0);
}

uint64_t sub_1DA419948()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v2 = v0[22];
  OUTLINED_FUNCTION_28_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_52_1();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  OUTLINED_FUNCTION_67_0(v5, v6, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v7 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    v10 = v0[27];
    sub_1DA4210B4();
    v7 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v11 = OUTLINED_FUNCTION_50_1();
  v12 = __swift_project_value_buffer(v11, static Logger.extractionCategory);
  v14 = OUTLINED_FUNCTION_57_0(v12, v13, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v14, v15, &qword_1ECBAFD90, &qword_1DA42C160);
  v16 = sub_1DA421A74();
  v17 = sub_1DA421F64();
  v18 = OUTLINED_FUNCTION_33_1(v17);
  v19 = v0[26];
  if (v18)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v20 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD90, &qword_1DA42C160);
    OUTLINED_FUNCTION_31_3(v23, v24);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v25, v26, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v19, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD90, &qword_1DA42C160);
  }

  v27 = OUTLINED_FUNCTION_23_4();
  v28 = OUTLINED_FUNCTION_15_5(v27);
  OUTLINED_FUNCTION_56_1(v28, v29, &qword_1ECBAE870, &qword_1DA4252E0);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v31, sel_publisherWithOptions_);

  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v32);
  v33 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v34;
  *v34 = v35;
  v34[1] = sub_1DA419C2C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1DA419C2C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA419D2C()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_65_0();
  sub_1DA3A8CA8(v0, &qword_1ECBAE870, &qword_1DA4252E0);

  v2 = *(v1 + 160);
  v3 = *(v1 + 168);

  OUTLINED_FUNCTION_41_0();

  return v4(v2, v3);
}

uint64_t sub_1DA419DE8()
{
  v1[24] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[25] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA419EAC, 0, 0);
}

uint64_t sub_1DA419EAC()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v1 = v0[24];
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  v0[30] = v2;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  v0[31] = v3;
  *(v3 + 16) = 0;
  *(v3 + 24) = 1;
  OUTLINED_FUNCTION_67_0(v3, v4, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v5 = v0[29];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v6 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    v9 = v0[29];
    sub_1DA4210B4();
    v6 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[24];
  v13 = sub_1DA421A94();
  v14 = __swift_project_value_buffer(v13, static Logger.extractionCategory);
  v16 = OUTLINED_FUNCTION_57_0(v14, v15, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v16, v17, &qword_1ECBAFD78, &qword_1DA42C140);
  v18 = sub_1DA421A74();
  v19 = sub_1DA421F64();
  v20 = OUTLINED_FUNCTION_33_1(v19);
  v21 = v0[28];
  if (v20)
  {
    v2 = v0[27];
    v3 = v0[25];
    swift_slowAlloc();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v11 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v22 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v22, v23);
    OUTLINED_FUNCTION_30_4();
    v24 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v25 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD78, &qword_1DA42C140);
    OUTLINED_FUNCTION_31_3(v25, v26);
    OUTLINED_FUNCTION_53_1();
    *(v11 + 14) = v24;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v27, v28, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v21, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD78, &qword_1DA42C140);
  }

  v29 = v0[29];
  v31 = v0[26];
  v30 = v0[27];
  v32 = v0[24];
  v33 = *v32;
  v34 = sub_1DA4210B4();
  v35 = OUTLINED_FUNCTION_15_5(v34);
  OUTLINED_FUNCTION_56_1(v35, v36, &qword_1ECBAE870, &qword_1DA4252E0);
  v37 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v38 = OUTLINED_FUNCTION_6_15();
  v39 = OUTLINED_FUNCTION_58_1(v38, sel_publisherWithOptions_);
  v0[32] = v39;

  v40 = swift_task_alloc();
  v0[33] = v40;
  v40[2] = v39;
  v40[3] = v2;
  v40[4] = v3;
  v40[5] = v32;
  v41 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[34] = v42;
  *v42 = v43;
  v42[1] = sub_1DA41A1E8;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_1DA41A1E8()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 272);
  v3 = *(v1 + 264);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DA41A2E8()
{
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);
  v2 = *(v0 + 240);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 208);

  sub_1DA3A8CA8(v3, &qword_1ECBAE870, &qword_1DA4252E0);

  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);

  v11 = *(v0 + 8);

  return v11(v8, v7, v9, v10);
}

uint64_t sub_1DA41A3CC()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[23] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA41A490, 0, 0);
}

uint64_t sub_1DA41A490()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v2 = v0[22];
  OUTLINED_FUNCTION_28_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_52_1();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  OUTLINED_FUNCTION_67_0(v5, v6, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v7 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    v10 = v0[27];
    sub_1DA4210B4();
    v7 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v11 = OUTLINED_FUNCTION_50_1();
  v12 = __swift_project_value_buffer(v11, static Logger.extractionCategory);
  v14 = OUTLINED_FUNCTION_57_0(v12, v13, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v14, v15, &qword_1ECBAFD60, &qword_1DA42C120);
  v16 = sub_1DA421A74();
  v17 = sub_1DA421F64();
  v18 = OUTLINED_FUNCTION_33_1(v17);
  v19 = v0[26];
  if (v18)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v20 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD60, &qword_1DA42C120);
    OUTLINED_FUNCTION_31_3(v23, v24);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v25, v26, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v19, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &qword_1ECBAFD60, &qword_1DA42C120);
  }

  v27 = OUTLINED_FUNCTION_23_4();
  v28 = OUTLINED_FUNCTION_15_5(v27);
  OUTLINED_FUNCTION_56_1(v28, v29, &qword_1ECBAE870, &qword_1DA4252E0);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v31, sel_publisherWithOptions_);

  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v32);
  v33 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v34;
  *v34 = v35;
  v34[1] = sub_1DA419C2C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1DA41A774()
{
  v1[22] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  v1[23] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA41A838, 0, 0);
}

uint64_t sub_1DA41A838()
{
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_42_1();
  v2 = v0[22];
  OUTLINED_FUNCTION_28_3();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_46(v3);
  OUTLINED_FUNCTION_52_1();
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_17_7(v4);
  OUTLINED_FUNCTION_67_0(v5, v6, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  if (v0[13])
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_5_16();
    sub_1DA421024();
    OUTLINED_FUNCTION_62_0();
    v7 = OUTLINED_FUNCTION_16_4();
  }

  else
  {
    v10 = v0[27];
    sub_1DA4210B4();
    v7 = OUTLINED_FUNCTION_14_8();
  }

  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  if (qword_1EE102E00 != -1)
  {
    OUTLINED_FUNCTION_12();
  }

  v11 = OUTLINED_FUNCTION_50_1();
  v12 = __swift_project_value_buffer(v11, static Logger.extractionCategory);
  v14 = OUTLINED_FUNCTION_57_0(v12, v13, &qword_1ECBAE870, &qword_1DA4252E0);
  OUTLINED_FUNCTION_55_1(v14, v15, &unk_1ECBAFD40, &unk_1DA42C0F0);
  v16 = sub_1DA421A74();
  v17 = sub_1DA421F64();
  v18 = OUTLINED_FUNCTION_33_1(v17);
  v19 = v0[26];
  if (v18)
  {
    OUTLINED_FUNCTION_24_4();
    OUTLINED_FUNCTION_32_3();
    OUTLINED_FUNCTION_47_1();
    *v1 = 136315394;
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_54_1();
    v20 = OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_11_10(v20, v21);
    OUTLINED_FUNCTION_30_4();
    v22 = [OUTLINED_FUNCTION_7_17() identifier];
    sub_1DA421B94();
    OUTLINED_FUNCTION_60_0();
    v23 = sub_1DA3A8CA8((v0 + 2), &unk_1ECBAFD40, &unk_1DA42C0F0);
    OUTLINED_FUNCTION_31_3(v23, v24);
    OUTLINED_FUNCTION_53_1();
    *(v1 + 14) = v22;
    OUTLINED_FUNCTION_2_14(&dword_1DA39E000, v25, v26, "Using endTime as: %s when querying %s");
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_53_0();
  }

  else
  {

    sub_1DA3A8CA8(v19, &qword_1ECBAE870, &qword_1DA4252E0);
    sub_1DA3A8CA8((v0 + 2), &unk_1ECBAFD40, &unk_1DA42C0F0);
  }

  v27 = OUTLINED_FUNCTION_23_4();
  v28 = OUTLINED_FUNCTION_15_5(v27);
  OUTLINED_FUNCTION_56_1(v28, v29, &qword_1ECBAE870, &qword_1DA4252E0);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = OUTLINED_FUNCTION_6_15();
  v0[30] = OUTLINED_FUNCTION_58_1(v31, sel_publisherWithOptions_);

  v32 = swift_task_alloc();
  OUTLINED_FUNCTION_26_3(v32);
  v33 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[32] = v34;
  *v34 = v35;
  v34[1] = sub_1DA41AB1C;
  OUTLINED_FUNCTION_2_22();
  OUTLINED_FUNCTION_52();

  return MEMORY[0x1EEE6DDE0](v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1DA41AB1C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  v2 = *(v1 + 256);
  v3 = *(v1 + 248);
  v4 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DA41AC1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  sub_1DA3A88F8(a5, &v24, &qword_1ECBAFDA8, &qword_1DA42C180);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = v17;
  v18 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DA420844;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_121;
  v19 = _Block_copy(aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *&v26 = sub_1DA420990;
  *(&v26 + 1) = v20;
  *&v24 = MEMORY[0x1E69E9820];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_1DA42098C;
  *(&v25 + 1) = &block_descriptor_127;
  v21 = _Block_copy(&v24);

  v22 = [a2 sinkWithCompletion:v19 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v19);
}

void sub_1DA41AED8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  sub_1DA3A88F8(a5, &v24, &qword_1ECBAFD90, &qword_1DA42C160);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = v17;
  v18 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DA4207EC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_103;
  v19 = _Block_copy(aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *&v26 = sub_1DA420814;
  *(&v26 + 1) = v20;
  *&v24 = MEMORY[0x1E69E9820];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_1DA42098C;
  *(&v25 + 1) = &block_descriptor_109;
  v21 = _Block_copy(&v24);

  v22 = [a2 sinkWithCompletion:v19 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v19);
}

void sub_1DA41B194(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  sub_1DA3A88F8(a5, &v24, &qword_1ECBAFD78, &qword_1DA42C140);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = v17;
  v18 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DA4207B8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_85;
  v19 = _Block_copy(aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *&v26 = sub_1DA420990;
  *(&v26 + 1) = v20;
  *&v24 = MEMORY[0x1E69E9820];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_1DA42098C;
  *(&v25 + 1) = &block_descriptor_91;
  v21 = _Block_copy(&v24);

  v22 = [a2 sinkWithCompletion:v19 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v19);
}

void sub_1DA41B450(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  sub_1DA3A88F8(a5, &v24, &qword_1ECBAFD60, &qword_1DA42C120);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = v17;
  v18 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DA42077C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_67;
  v19 = _Block_copy(aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *&v26 = sub_1DA420990;
  *(&v26 + 1) = v20;
  *&v24 = MEMORY[0x1E69E9820];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_1DA42098C;
  *(&v25 + 1) = &block_descriptor_73;
  v21 = _Block_copy(&v24);

  v22 = [a2 sinkWithCompletion:v19 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v19);
}

void sub_1DA41B70C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  sub_1DA3A88F8(a5, &v24, &unk_1ECBAFD40, &unk_1DA42C0F0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 80) + 96) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  v17 = v25;
  *(v16 + 32) = v24;
  *(v16 + 48) = v17;
  v18 = v27;
  *(v16 + 64) = v26;
  *(v16 + 80) = v18;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DA42064C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA42098C;
  aBlock[3] = &block_descriptor_1;
  v19 = _Block_copy(aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *&v26 = sub_1DA420990;
  *(&v26 + 1) = v20;
  *&v24 = MEMORY[0x1E69E9820];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_1DA42098C;
  *(&v25 + 1) = &block_descriptor_55;
  v21 = _Block_copy(&v24);

  v22 = [a2 sinkWithCompletion:v19 receiveInput:v21];
  _Block_release(v21);
  _Block_release(v19);
}

void sub_1DA41B9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v19 = *(a3 + 16);
    v20 = qword_1EE102E00;
    v21 = v7;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.extractionCategory);
    v23 = v21;
    v24 = sub_1DA421A74();
    v25 = sub_1DA421F64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v23;
      v36[0] = v27;
      *v26 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100F78, 0x1E698ECF8);
      v28 = v23;
      v29 = sub_1DA421BB4();
      v31 = sub_1DA3A5FE8(v29, v30, v36);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      _os_log_impl(&dword_1DA39E000, v24, v25, "BiomeLatestEventProcessor: Latest event: %s at: %f", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA74E430](v27, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    v33 = *(a4 + 8);
    v32 = *(a4 + 16);
    v34 = v23;
    v33(v36, v19, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v36, &qword_1ECBAFDA8, &qword_1DA42C180);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v36[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v36, &qword_1ECBAFDA8, &qword_1DA42C180);
      v17 = sub_1DA3A5FE8(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v36, &qword_1ECBAFDA8, &qword_1DA42C180);
    }

    v18 = *(a4 + 16);
    (*(a4 + 8))(v36, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFDB0, &qword_1DA42C188);
    sub_1DA421DF4();
  }
}

void sub_1DA41BDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v19 = *(a3 + 16);
    v20 = qword_1EE102E00;
    v21 = v7;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.extractionCategory);
    v23 = v21;
    v24 = sub_1DA421A74();
    v25 = sub_1DA421F64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v23;
      v36[0] = v27;
      *v26 = 136315394;
      sub_1DA3A6990(0, &unk_1EE100F90, 0x1E698EDA0);
      v28 = v23;
      v29 = sub_1DA421BB4();
      v31 = sub_1DA3A5FE8(v29, v30, v36);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      _os_log_impl(&dword_1DA39E000, v24, v25, "BiomeLatestEventProcessor: Latest event: %s at: %f", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA74E430](v27, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    v33 = *(a4 + 8);
    v32 = *(a4 + 16);
    v34 = v23;
    v33(v36, v19, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v36, &qword_1ECBAFD90, &qword_1DA42C160);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v36[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v36, &qword_1ECBAFD90, &qword_1DA42C160);
      v17 = sub_1DA3A5FE8(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v36, &qword_1ECBAFD90, &qword_1DA42C160);
    }

    v18 = *(a4 + 16);
    (*(a4 + 8))(v36, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD98, &qword_1DA42C168);
    sub_1DA421DF4();
  }
}

void sub_1DA41C1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v19 = *(a3 + 16);
    v20 = qword_1EE102E00;
    v21 = v7;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.extractionCategory);
    v23 = v21;
    v24 = sub_1DA421A74();
    v25 = sub_1DA421F64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v23;
      v36[0] = v27;
      *v26 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100F58, 0x1E698EFC8);
      v28 = v23;
      v29 = sub_1DA421BB4();
      v31 = sub_1DA3A5FE8(v29, v30, v36);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      _os_log_impl(&dword_1DA39E000, v24, v25, "BiomeLatestEventProcessor: Latest event: %s at: %f", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA74E430](v27, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    v33 = *(a4 + 8);
    v32 = *(a4 + 16);
    v34 = v23;
    v33(v36, v19, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v36, &qword_1ECBAFD78, &qword_1DA42C140);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v36[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v36, &qword_1ECBAFD78, &qword_1DA42C140);
      v17 = sub_1DA3A5FE8(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v36, &qword_1ECBAFD78, &qword_1DA42C140);
    }

    v18 = *(a4 + 16);
    (*(a4 + 8))(v36, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD80, &qword_1DA42C148);
    sub_1DA421DF4();
  }
}

void sub_1DA41C5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v19 = *(a3 + 16);
    v20 = qword_1EE102E00;
    v21 = v7;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.extractionCategory);
    v23 = v21;
    v24 = sub_1DA421A74();
    v25 = sub_1DA421F64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v23;
      v36[0] = v27;
      *v26 = 136315394;
      sub_1DA3A6990(0, &qword_1EE100080, 0x1E698EB50);
      v28 = v23;
      v29 = sub_1DA421BB4();
      v31 = sub_1DA3A5FE8(v29, v30, v36);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      _os_log_impl(&dword_1DA39E000, v24, v25, "BiomeLatestEventProcessor: Latest event: %s at: %f", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA74E430](v27, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    v33 = *(a4 + 8);
    v32 = *(a4 + 16);
    v34 = v23;
    v33(v36, v19, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v36, &qword_1ECBAFD60, &qword_1DA42C120);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v36[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v36, &qword_1ECBAFD60, &qword_1DA42C120);
      v17 = sub_1DA3A5FE8(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v36, &qword_1ECBAFD60, &qword_1DA42C120);
    }

    v18 = *(a4 + 16);
    (*(a4 + 8))(v36, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD68, &qword_1DA42C128);
    sub_1DA421DF4();
  }
}

void sub_1DA41C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (v7 && (swift_beginAccess(), (*(a3 + 24) & 1) == 0))
  {
    v19 = *(a3 + 16);
    v20 = qword_1EE102E00;
    v21 = v7;
    if (v20 != -1)
    {
      swift_once();
    }

    v22 = sub_1DA421A94();
    __swift_project_value_buffer(v22, static Logger.extractionCategory);
    v23 = v21;
    v24 = sub_1DA421A74();
    v25 = sub_1DA421F64();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v23;
      v36[0] = v27;
      *v26 = 136315394;
      sub_1DA3A6990(0, &unk_1EE100F68, 0x1E698EC78);
      v28 = v23;
      v29 = sub_1DA421BB4();
      v31 = sub_1DA3A5FE8(v29, v30, v36);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      _os_log_impl(&dword_1DA39E000, v24, v25, "BiomeLatestEventProcessor: Latest event: %s at: %f", v26, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA74E430](v27, -1, -1);
      MEMORY[0x1DA74E430](v26, -1, -1);
    }

    v33 = *(a4 + 8);
    v32 = *(a4 + 16);
    v34 = v23;
    v33(v36, v19, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
    sub_1DA421DF4();
  }

  else
  {
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA421A94();
    __swift_project_value_buffer(v8, static Logger.extractionCategory);
    sub_1DA3A88F8(a4, v36, &unk_1ECBAFD40, &unk_1DA42C0F0);
    v9 = sub_1DA421A74();
    v10 = sub_1DA421F64();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      v13 = [v36[0] identifier];
      v14 = sub_1DA421B94();
      v16 = v15;

      sub_1DA3A8CA8(v36, &unk_1ECBAFD40, &unk_1DA42C0F0);
      v17 = sub_1DA3A5FE8(v14, v16, &v35);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1DA39E000, v9, v10, "BiomeLatestEventProcessor: No value extracted from the Biome stream: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1DA74E430](v12, -1, -1);
      MEMORY[0x1DA74E430](v11, -1, -1);
    }

    else
    {

      sub_1DA3A8CA8(v36, &unk_1ECBAFD40, &unk_1DA42C0F0);
    }

    v18 = *(a4 + 16);
    (*(a4 + 8))(v36, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD50, &unk_1DA42C100);
    sub_1DA421DF4();
  }
}

void sub_1DA41CDF0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x1DA74DD10]();
  sub_1DA41CE50((a2 + 16), a1, a3 + 16);
  objc_autoreleasePoolPop(v6);
}

uint64_t sub_1DA41CE50(void **a1, id a2, uint64_t a3)
{
  v6 = [a2 eventBody];
  swift_beginAccess();
  v7 = *a1;
  *a1 = v6;

  [a2 timestamp];
  v9 = v8;
  result = swift_beginAccess();
  *a3 = v9;
  *(a3 + 8) = 0;
  return result;
}

void sub_1DA41CF0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1DA41CF74(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return OUTLINED_FUNCTION_2_15();
}

uint64_t sub_1DA41CF88()
{
  OUTLINED_FUNCTION_20_0();
  v1 = v0[16];
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_59_0(v3, v4, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  v0[3] = sub_1DA420830;
  v0[4] = v1;
  OUTLINED_FUNCTION_18_8(&unk_1DA42C178);

  swift_task_alloc();
  OUTLINED_FUNCTION_27();
  v0[17] = v5;
  *v5 = v6;
  v5[1] = sub_1DA41D068;

  return v8(v0 + 10);
}

uint64_t sub_1DA41D068()
{
  OUTLINED_FUNCTION_6_0();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v3 = v2;
  v4 = v1[17];
  v5 = v1[15];
  v6 = *v0;
  *v3 = *v0;

  sub_1DA3A8CA8((v2 + 2), &qword_1ECBAFDA8, &qword_1DA42C180);
  v8 = *(v2 + 5);
  v7 = *(v2 + 6);
  *(v5 + 32) = v1[14];
  *v5 = v8;
  *(v5 + 16) = v7;
  v9 = v6[1];

  return v9();
}

uint64_t sub_1DA41D1B8()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA420638;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8(&unk_1DA42C158);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D284()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v9 = *(v8 + 88);
  v10 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v11 = v10;

  sub_1DA3A8CA8(v6 + 16, &qword_1ECBAFD90, &qword_1DA42C160);
  OUTLINED_FUNCTION_41_0();

  return v12(v4, v2);
}

uint64_t sub_1DA41D3A4()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA4207A4;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8(&unk_1DA42C138);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D470()
{
  OUTLINED_FUNCTION_20_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  OUTLINED_FUNCTION_13_0();
  *v11 = v10;
  v13 = *(v12 + 88);
  v14 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v15 = v14;

  sub_1DA3A8CA8(v10 + 16, &qword_1ECBAFD78, &qword_1DA42C140);
  v16 = *(v14 + 8);

  return v16(v8, v6, v4, v2);
}

uint64_t sub_1DA41D5AC()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA42068C;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8(&unk_1DA42C118);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D678()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v9 = *(v8 + 88);
  v10 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v11 = v10;

  sub_1DA3A8CA8(v6 + 16, &qword_1ECBAFD60, &qword_1DA42C120);
  OUTLINED_FUNCTION_41_0();

  return v12(v4, v2 & 1);
}

uint64_t sub_1DA41D7A4()
{
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_59_0(v2, v3, &unk_1ECBAF0C0, &qword_1DA42C0E0);
  OUTLINED_FUNCTION_49_0();
  *(v1 + 24) = sub_1DA420638;
  *(v1 + 32) = v0;
  OUTLINED_FUNCTION_18_8(&unk_1DA42C0E8);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_61(v4);
  *v5 = v6;
  v14 = OUTLINED_FUNCTION_27_2(v5, v7, v8, v9, v10, v11, v12, v13, v16, v17);

  return v14();
}

uint64_t sub_1DA41D870()
{
  OUTLINED_FUNCTION_6_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  v9 = *(v8 + 88);
  v10 = *v0;
  OUTLINED_FUNCTION_0_0();
  *v11 = v10;

  sub_1DA3A8CA8(v6 + 16, &unk_1ECBAFD40, &unk_1DA42C0F0);
  OUTLINED_FUNCTION_41_0();

  return v12(v4, v2);
}

double sub_1DA41D97C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  (*(a1 + 24))(v7);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_1DA41D9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  (*(a3 + 24))(&v5);
  return v5;
}

uint64_t sub_1DA41DA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  (*(a3 + 24))(&v5);
  return v5;
}

uint64_t sub_1DA41DA50()
{
  OUTLINED_FUNCTION_16();
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1DA41DAF4;

  return sub_1DA41D784();
}

uint64_t sub_1DA41DAF4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  v4 = *(v3 + 40);
  *v2 = *v0;
  *(v1 + 48) = v5;
  *(v1 + 25) = v6;

  v7 = OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DA41DBE4()
{
  v16 = v0;
  if (qword_1EE102CB0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA421A94();
  __swift_project_value_buffer(v1, static Logger.intelligenceCategory);
  v2 = sub_1DA421A74();
  v3 = sub_1DA421F64();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 25);
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v0 + 16) = v5;
    *(v0 + 24) = v4;
    v8 = sub_1DA421BB4();
    v10 = sub_1DA3A5FE8(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DA39E000, v2, v3, "LocationService:: Got Location as: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_53_0();
    MEMORY[0x1DA74E430](v6, -1, -1);
  }

  OUTLINED_FUNCTION_41_0();
  v12 = *(v0 + 48);
  v13 = *(v0 + 25);

  return v11(v12, v13);
}

uint64_t sub_1DA41DD70()
{
  v0 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v1 = [v0 Semantic];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_28_3();
  v2 = swift_allocObject();
  sub_1DA41DE04(v1);
  return v2;
}

uint64_t sub_1DA41DE04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFD30, &qword_1DA42C0C8);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = sub_1DA41DE6C;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v1 + 16) = v3;
  return v1;
}

void sub_1DA41DE6C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
    if ([v5 starting])
    {
      v6 = [v5 userSpecificPlaceType];

      switch(v6)
      {
        case 1u:
          *a3 = a1;
          *(a3 + 8) = 0;
          break;
        case 2u:
          *a3 = a1;
          v7 = 1;
          goto LABEL_7;
        case 3u:
          *a3 = a1;
          v7 = 3;
          goto LABEL_7;
        case 4u:
          *a3 = a1;
          v7 = 2;
          goto LABEL_7;
        default:
          goto LABEL_6;
      }

      return;
    }
  }

LABEL_6:
  *a3 = 0;
  v7 = 4;
LABEL_7:
  *(a3 + 8) = v7;
}

uint64_t SiriSuggestionsIntelligence.LocationService.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SiriSuggestionsIntelligence.LocationService.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_28_3();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t sub_1DA41DF8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701670760 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1802661751 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 7174503 && a2 == 0xE300000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6F6F686373 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DA4223A4();

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

uint64_t sub_1DA41E130(char a1)
{
  result = 1701670760;
  switch(a1)
  {
    case 1:
      result = 1802661751;
      break;
    case 2:
      result = 7174503;
      break;
    case 3:
      result = 0x6C6F6F686373;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA41E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41DF8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA41E1DC(uint64_t a1)
{
  v2 = sub_1DA41EAB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E218(uint64_t a1)
{
  v2 = sub_1DA41EAB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E254(uint64_t a1)
{
  v2 = sub_1DA41EC04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E290(uint64_t a1)
{
  v2 = sub_1DA41EC04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E2CC(uint64_t a1)
{
  v2 = sub_1DA41ECAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E308(uint64_t a1)
{
  v2 = sub_1DA41ECAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E344(uint64_t a1)
{
  v2 = sub_1DA41EB5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E380(uint64_t a1)
{
  v2 = sub_1DA41EB5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E3BC(uint64_t a1)
{
  v2 = sub_1DA41EB08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E3F8(uint64_t a1)
{
  v2 = sub_1DA41EB08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA41E434(uint64_t a1)
{
  v2 = sub_1DA41EC58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41E470(uint64_t a1)
{
  v2 = sub_1DA41EC58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.SemanticLocation.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        goto LABEL_17;
      }

      v6 = *&a1;
      v7 = *&a3;
      goto LABEL_16;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    case 3:
      if (a4 == 3)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    case 4:
      if (a4 != 4 || a3 != 0)
      {
        goto LABEL_17;
      }

      result = 1;
      break;
    default:
      if (a4)
      {
LABEL_17:
        result = 0;
      }

      else
      {
LABEL_13:
        v6 = *&a1;
        v7 = *&a3;
LABEL_16:
        result = v6 == v7;
      }

      break;
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SemanticLocation.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v69 = a2;
  v70 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC50, &qword_1DA42B7C0);
  v5 = OUTLINED_FUNCTION_3_1(v4);
  v67 = v6;
  v68 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v64 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC58, &qword_1DA42B7C8);
  v12 = OUTLINED_FUNCTION_3_1(v11);
  v65 = v13;
  v66 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_5();
  v63 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC60, &qword_1DA42B7D0);
  v19 = OUTLINED_FUNCTION_3_1(v18);
  v61 = v20;
  v62 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC68, &qword_1DA42B7D8);
  OUTLINED_FUNCTION_3_1(v26);
  v60 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC70, &qword_1DA42B7E0);
  OUTLINED_FUNCTION_3_1(v31);
  v59 = v32;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v58 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFC78, &qword_1DA42B7E8);
  v39 = OUTLINED_FUNCTION_3_1(v38);
  v71 = v40;
  v72 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v43);
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41EAB4();
  sub_1DA422494();
  switch(v70)
  {
    case 1:
      v73 = 1;
      sub_1DA41EC58();
      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_66_0();
      sub_1DA422334();
      v55 = OUTLINED_FUNCTION_39_1();
      v57 = v26;
      goto LABEL_8;
    case 2:
      v73 = 2;
      sub_1DA41EC04();
      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_66_0();
      v53 = v62;
      sub_1DA422334();
      v54 = *(v61 + 8);
      v55 = v25;
      goto LABEL_6;
    case 3:
      v73 = 3;
      sub_1DA41EB5C();
      v56 = v63;
      OUTLINED_FUNCTION_21_6();
      OUTLINED_FUNCTION_66_0();
      v53 = v66;
      sub_1DA422334();
      v54 = *(v65 + 8);
      v55 = v56;
LABEL_6:
      v57 = v53;
LABEL_8:
      v54(v55, v57);
      v46 = OUTLINED_FUNCTION_44_0();
      v48 = v37;
      return v47(v46, v48);
    case 4:
      v73 = 4;
      sub_1DA41EB08();
      v49 = v64;
      OUTLINED_FUNCTION_21_6();
      (*(v67 + 8))(v49, v68);
      v50 = OUTLINED_FUNCTION_44_0();
      return v51(v50, v37);
    default:
      v73 = 0;
      sub_1DA41ECAC();
      v45 = v72;
      sub_1DA4222D4();
      OUTLINED_FUNCTION_66_0();
      sub_1DA422334();
      (*(v59 + 8))(v37, v31);
      v46 = OUTLINED_FUNCTION_44_0();
      v48 = v45;
      return v47(v46, v48);
  }
}

unint64_t sub_1DA41EAB4()
{
  result = qword_1EE102310;
  if (!qword_1EE102310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102310);
  }

  return result;
}

unint64_t sub_1DA41EB08()
{
  result = qword_1EE1022A8;
  if (!qword_1EE1022A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022A8);
  }

  return result;
}

unint64_t sub_1DA41EB5C()
{
  result = qword_1ECBAFC80;
  if (!qword_1ECBAFC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC80);
  }

  return result;
}

unint64_t sub_1DA41EBB0()
{
  result = qword_1EE101AA8;
  if (!qword_1EE101AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AA8);
  }

  return result;
}

unint64_t sub_1DA41EC04()
{
  result = qword_1ECBAFC90;
  if (!qword_1ECBAFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC90);
  }

  return result;
}

unint64_t sub_1DA41EC58()
{
  result = qword_1ECBAFC98;
  if (!qword_1ECBAFC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFC98);
  }

  return result;
}

unint64_t sub_1DA41ECAC()
{
  result = qword_1EE1022E0;
  if (!qword_1EE1022E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022E0);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.SemanticLocation.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCA8, &qword_1DA42B7F0);
  v79 = OUTLINED_FUNCTION_3_1(v2);
  v80 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_10_5();
  v85 = v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCB0, &qword_1DA42B7F8);
  OUTLINED_FUNCTION_3_1(v77);
  v81 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_5();
  v82 = v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCB8, &qword_1DA42B800);
  OUTLINED_FUNCTION_3_1(v78);
  v83 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_5();
  v84 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCC0, &qword_1DA42B808);
  v19 = OUTLINED_FUNCTION_3_1(v18);
  v75[5] = v20;
  v76 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v75 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCC8, &qword_1DA42B810);
  OUTLINED_FUNCTION_3_1(v26);
  v75[4] = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFCD0, &unk_1DA42B818);
  OUTLINED_FUNCTION_3_1(v33);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v75 - v39;
  v42 = a1[3];
  v41 = a1[4];
  v86 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1DA41EAB4();
  v43 = v87;
  sub_1DA422484();
  if (v43)
  {
    goto LABEL_9;
  }

  v75[0] = v26;
  v75[1] = v32;
  v75[2] = v25;
  v75[3] = 0;
  v44 = v84;
  v45 = v85;
  v87 = v35;
  v46 = sub_1DA4222C4();
  result = sub_1DA3C2AA0(v46, 0);
  v51 = v33;
  if (v49 == v50 >> 1)
  {
LABEL_8:
    v35 = sub_1DA4220F4();
    swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620) + 48);
    *v61 = &type metadata for SiriSuggestionsIntelligence.SemanticLocation;
    sub_1DA422254();
    sub_1DA4220E4();
    (*(*(v35 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v63 = OUTLINED_FUNCTION_39_1();
    v64(v63, v51);
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(v86);
    return v35;
  }

  if (v49 < (v50 >> 1))
  {
    v52 = v33;
    v53 = *(v48 + v49);
    sub_1DA3C2A9C(v49 + 1);
    v55 = v54;
    v57 = v56;
    swift_unknownObjectRelease();
    if (v55 == v57 >> 1)
    {
      v58 = v83;
      switch(v53)
      {
        case 1:
          LOBYTE(v88) = 1;
          sub_1DA41EC58();
          OUTLINED_FUNCTION_8_17();
          sub_1DA41FBE0();
          v59 = v76;
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
          goto LABEL_14;
        case 2:
          LOBYTE(v88) = 2;
          sub_1DA41EC04();
          OUTLINED_FUNCTION_8_17();
          v68 = v53;
          sub_1DA41FBE0();
          v69 = v78;
          sub_1DA4222B4();
          swift_unknownObjectRelease();
          (*(v58 + 8))(v44, v69);
          v70 = OUTLINED_FUNCTION_10_11();
          v71(v70, v68);
          goto LABEL_16;
        case 3:
          LOBYTE(v88) = 3;
          sub_1DA41EB5C();
          OUTLINED_FUNCTION_8_17();
          sub_1DA41FBE0();
          v65 = v77;
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_39_1();
          v74 = v65;
          goto LABEL_15;
        case 4:
          LOBYTE(v88) = 4;
          sub_1DA41EB08();
          OUTLINED_FUNCTION_8_17();
          swift_unknownObjectRelease();
          (*(v80 + 8))(v45, v79);
          v66 = OUTLINED_FUNCTION_10_11();
          v67(v66, v53);
          v35 = 0;
          goto LABEL_9;
        default:
          LOBYTE(v88) = 0;
          sub_1DA41ECAC();
          OUTLINED_FUNCTION_8_17();
          sub_1DA41FBE0();
          v59 = v75[0];
          OUTLINED_FUNCTION_51_1();
          OUTLINED_FUNCTION_45_1();
          swift_unknownObjectRelease();
LABEL_14:
          v72 = OUTLINED_FUNCTION_39_1();
          v74 = v59;
LABEL_15:
          v73(v72, v74);
          MEMORY[8](v40, v53);
LABEL_16:
          v35 = v88;
          break;
      }

      goto LABEL_9;
    }

    v51 = v52;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DA41F564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA4223A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA41F600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.SemanticLocation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1DA41F66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA41F564(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DA41F698(uint64_t a1)
{
  v2 = sub_1DA41FC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA41F6D4(uint64_t a1)
{
  v2 = sub_1DA41FC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.SemanticLocationDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAFCE8, &qword_1DA42B828);
  OUTLINED_FUNCTION_3_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41FC34();
  sub_1DA422494();
  sub_1DA422314();
  return (*(v4 + 8))(v9, v2);
}

double SiriSuggestionsIntelligence.SemanticLocationDetails.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAFCF8, &qword_1DA42B830);
  OUTLINED_FUNCTION_3_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA41FC34();
  sub_1DA422484();
  if (!v1)
  {
    sub_1DA422294();
    v2 = v13;
    (*(v6 + 8))(v11, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

void sub_1DA41F984(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = SiriSuggestionsIntelligence.SemanticLocationDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

id sub_1DA41F9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DA4210B4();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DA421064();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DA421064();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

double sub_1DA41FB14@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1DA41D97C(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1DA41FB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DA41D9C4(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_1DA41FB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1DA41DA00(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  return result;
}

uint64_t sub_1DA41FBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1DA41D9C4(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

unint64_t sub_1DA41FBE0()
{
  result = qword_1ECBAFCE0;
  if (!qword_1ECBAFCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFCE0);
  }

  return result;
}

unint64_t sub_1DA41FC34()
{
  result = qword_1EE101AC0;
  if (!qword_1EE101AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AC0);
  }

  return result;
}

uint64_t _s16SemanticLocationOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
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

uint64_t _s16SemanticLocationOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DA41FD30(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DA41FD48(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

_BYTE *_s16SemanticLocationO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DA41FE9C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA41FF5C()
{
  result = qword_1ECBAFD00;
  if (!qword_1ECBAFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD00);
  }

  return result;
}

unint64_t sub_1DA41FFB4()
{
  result = qword_1ECBAFD08;
  if (!qword_1ECBAFD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD08);
  }

  return result;
}

unint64_t sub_1DA42000C()
{
  result = qword_1ECBAFD10;
  if (!qword_1ECBAFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD10);
  }

  return result;
}

unint64_t sub_1DA420064()
{
  result = qword_1ECBAFD18;
  if (!qword_1ECBAFD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD18);
  }

  return result;
}

unint64_t sub_1DA4200BC()
{
  result = qword_1ECBAFD20;
  if (!qword_1ECBAFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD20);
  }

  return result;
}

unint64_t sub_1DA420114()
{
  result = qword_1ECBAFD28;
  if (!qword_1ECBAFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAFD28);
  }

  return result;
}

unint64_t sub_1DA42016C()
{
  result = qword_1EE101AB0;
  if (!qword_1EE101AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AB0);
  }

  return result;
}

unint64_t sub_1DA4201C4()
{
  result = qword_1EE101AB8;
  if (!qword_1EE101AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101AB8);
  }

  return result;
}

unint64_t sub_1DA42021C()
{
  result = qword_1EE1022D0;
  if (!qword_1EE1022D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022D0);
  }

  return result;
}

unint64_t sub_1DA420274()
{
  result = qword_1EE1022D8;
  if (!qword_1EE1022D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022D8);
  }

  return result;
}

unint64_t sub_1DA4202CC()
{
  result = qword_1EE1022C0;
  if (!qword_1EE1022C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022C0);
  }

  return result;
}

unint64_t sub_1DA420324()
{
  result = qword_1EE1022C8;
  if (!qword_1EE1022C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022C8);
  }

  return result;
}

unint64_t sub_1DA42037C()
{
  result = qword_1EE1022F0;
  if (!qword_1EE1022F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022F0);
  }

  return result;
}

unint64_t sub_1DA4203D4()
{
  result = qword_1EE1022F8;
  if (!qword_1EE1022F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022F8);
  }

  return result;
}

unint64_t sub_1DA42042C()
{
  result = qword_1EE1022B0;
  if (!qword_1EE1022B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022B0);
  }

  return result;
}

unint64_t sub_1DA420484()
{
  result = qword_1EE1022B8;
  if (!qword_1EE1022B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1022B8);
  }

  return result;
}

unint64_t sub_1DA4204DC()
{
  result = qword_1EE102290;
  if (!qword_1EE102290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102290);
  }

  return result;
}

unint64_t sub_1DA420534()
{
  result = qword_1EE102298;
  if (!qword_1EE102298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102298);
  }

  return result;
}

unint64_t sub_1DA42058C()
{
  result = qword_1EE102300;
  if (!qword_1EE102300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102300);
  }

  return result;
}

unint64_t sub_1DA4205E4()
{
  result = qword_1EE102308;
  if (!qword_1EE102308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102308);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_48Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3_1(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v2 + 16);

  v10 = *(v2 + 24);

  v11 = *(v2 + 48);

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  }

  v12 = (v6 + 96) & ~v6;
  (*(v5 + 8))(v2 + v12, v3);

  return MEMORY[0x1EEE6BDD0](v2, v12 + v8, v6 | 7);
}

uint64_t sub_1DA42086C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = v4 + ((*(v6 + 80) + 96) & ~*(v6 + 80));

  return a4(a1, v7, v8, v4 + 32, v9);
}

uint64_t objectdestroy_51Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_52_1();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_5_16()
{
  sub_1DA3A1FF8((v0 + 80), v0 + 120);
  v1 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((v0 + 120), *(v0 + 144));

  return sub_1DA421934();
}

id OUTLINED_FUNCTION_6_15()
{

  return sub_1DA41F9D8(v0, v1, 1, 1, 0);
}

uint64_t OUTLINED_FUNCTION_7_17()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2080;
  return *(v1 + 16);
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return sub_1DA422244();
}

uint64_t OUTLINED_FUNCTION_9_14()
{

  return sub_1DA3A8CA8(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_11_10(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DA3A5FE8(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1DA3A88F8(v2, v3, v0, v1);
}

uint64_t OUTLINED_FUNCTION_15_5(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_17_7(uint64_t result)
{
  *(v1 + 232) = result;
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

id OUTLINED_FUNCTION_18_8@<X0>(int *a1@<X8>)
{
  v3 = a1[1];
  v5 = a1 + *a1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v2 = *(v0 - 96);

  return sub_1DA4222D4();
}

uint64_t OUTLINED_FUNCTION_23_4()
{
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = **(v0 + 176);

  return sub_1DA4210B4();
}

uint64_t OUTLINED_FUNCTION_24_4()
{
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_26_3(void *result)
{
  *(v2 + 248) = result;
  result[2] = v1;
  result[3] = v4;
  result[4] = v5;
  result[5] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_30_4()
{
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1DA3A5FE8(v2, v3, va);
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_33_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_35_2()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_46(uint64_t result)
{
  *(v1 + 224) = result;
  *(result + 16) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_50_1()
{
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[22];

  return sub_1DA421A94();
}

uint64_t OUTLINED_FUNCTION_51_1()
{

  return sub_1DA4222B4();
}

uint64_t OUTLINED_FUNCTION_53_1()
{
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_1DA421BB4();
}

uint64_t OUTLINED_FUNCTION_55_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v5, v4 + 16, a3, a4);
}

uint64_t OUTLINED_FUNCTION_56_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4, v5, a3, a4);
}

uint64_t OUTLINED_FUNCTION_57_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4, v5, a3, a4);
}

id OUTLINED_FUNCTION_58_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_59_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4 + 40, v5 + 40, a3, a4);
}

void OUTLINED_FUNCTION_60_0()
{
}

uint64_t OUTLINED_FUNCTION_62_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 120));

  return sub_1DA4210B4();
}

void OUTLINED_FUNCTION_65_0()
{
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[24];
}

unint64_t OUTLINED_FUNCTION_66_0()
{
  *(v0 - 72) = *(v0 - 120);

  return sub_1DA41EBB0();
}

uint64_t OUTLINED_FUNCTION_67_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1DA3A88F8(v4 + 24, v5 + 80, a3, a4);
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}