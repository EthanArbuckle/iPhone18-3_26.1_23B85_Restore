void sub_1BF8DE614()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A40, &qword_1BF9B8538);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A48, &unk_1BF9B8540);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BF8DE6D0()
{
  OUTLINED_FUNCTION_31_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_2();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_2(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A20, &qword_1BF9B8518);
      v8 = OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_1_3(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_8_2();
        sub_1BF95E3B8(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A28, &unk_1BF9B8520);
    OUTLINED_FUNCTION_15_7();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_28_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_6_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BF8DE7B4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1BF8DE810(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1BF8DE810(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BF8DE8D4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1BF8C187C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BF8DE8D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BF8DE9D4(a5, a6);
    *a1 = v9;
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
    result = sub_1BF9B5318();
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

uint64_t sub_1BF8DE9D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BF8DEA20(a1, a2);
  sub_1BF8DEB38(&unk_1F3EF52C8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1BF8DEA20(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1BF9B4BA8())
  {
    result = sub_1BF958F7C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1BF9B5268();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1BF9B5318();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF8DEB38(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1BF8DEC1C(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BF8DEC1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BC0, &qword_1BF9B86D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **sub_1BF8DED10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_1BF8DED20(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1BF8DED44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1BF8DED78()
{
  result = qword_1EBDE8940;
  if (!qword_1EBDE8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8940);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BF8DEDE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1BF8DEE20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1BF8DEE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SalientEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppInView.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BF8DF090(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF8DF16C()
{
  result = qword_1EBDE8948;
  if (!qword_1EBDE8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8948);
  }

  return result;
}

unint64_t sub_1BF8DF1C4()
{
  result = qword_1EBDE8950;
  if (!qword_1EBDE8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8950);
  }

  return result;
}

unint64_t sub_1BF8DF21C()
{
  result = qword_1EBDE8958;
  if (!qword_1EBDE8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8958);
  }

  return result;
}

unint64_t sub_1BF8DF274()
{
  result = qword_1EBDE8960;
  if (!qword_1EBDE8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8960);
  }

  return result;
}

unint64_t sub_1BF8DF2CC()
{
  result = qword_1EBDE8968;
  if (!qword_1EBDE8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8968);
  }

  return result;
}

unint64_t sub_1BF8DF324()
{
  result = qword_1EBDE8970;
  if (!qword_1EBDE8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8970);
  }

  return result;
}

unint64_t sub_1BF8DF378()
{
  result = qword_1EDBF5730;
  if (!qword_1EDBF5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5730);
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8DF410(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BF8DF458()
{
  result = qword_1EBDE89B8;
  if (!qword_1EBDE89B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE89B8);
  }

  return result;
}

unint64_t sub_1BF8DF4AC()
{
  result = qword_1EBDE89E0;
  if (!qword_1EBDE89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE89E0);
  }

  return result;
}

unint64_t sub_1BF8DF500()
{
  result = qword_1EDBF5618;
  if (!qword_1EDBF5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF5618);
  }

  return result;
}

unint64_t sub_1BF8DF554()
{
  result = qword_1EDBF51D0;
  if (!qword_1EDBF51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF51D0);
  }

  return result;
}

unint64_t sub_1BF8DF5A8()
{
  result = qword_1EDBF4130;
  if (!qword_1EDBF4130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4130);
  }

  return result;
}

uint64_t sub_1BF8DF5FC(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1BF8DF63C()
{
  result = qword_1EBDE8B88;
  if (!qword_1EBDE8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8B88);
  }

  return result;
}

unint64_t sub_1BF8DF690()
{
  result = qword_1EBDE8BA8;
  if (!qword_1EBDE8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8BA8);
  }

  return result;
}

_OWORD *sub_1BF8DF6E4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

uint64_t sub_1BF8DF6FC(uint64_t a1, char a2, void *a3)
{
  v64 = sub_1BF9B4888();
  v6 = *(v64 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v62 = &v54 - v13;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v14 = v6;
  v15 = 0;
  v60 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v16 = *(v11 + 48);
  v58 = a1;
  v59 = v16;
  v63 = (v14 + 32);
  v56 = v14;
  v57 = a3;
  v55 = (v14 + 8);
  while (v15 < *(a1 + 16))
  {
    v17 = v12;
    v18 = v62;
    sub_1BF8DFB90(v60 + *(v12 + 72) * v15, v62, &qword_1EBDE8938, &qword_1BF9B8010);
    v19 = *v63;
    v20 = v65;
    (*v63)(v65, v18, v64);
    v21 = *(v18 + v59);
    v22 = *a3;
    v24 = sub_1BF9B2A1C(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_31;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BD0, &qword_1BF9B86E0);
        sub_1BF9B53B8();
      }
    }

    else
    {
      sub_1BF95BB60(v27, a2 & 1);
      v29 = *a3;
      v30 = sub_1BF9B2A1C(v65);
      if ((v28 & 1) != (v31 & 1))
      {
        goto LABEL_37;
      }

      v24 = v30;
    }

    v32 = *a3;
    if (v28)
    {
      v33 = v32[7];
      v34 = *(v33 + 8 * v24);
      v35 = *(v21 + 16);
      v36 = *(v34 + 16);
      v37 = v36 + v35;
      if (__OFADD__(v36, v35))
      {
        goto LABEL_33;
      }

      v38 = *(v33 + 8 * v24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v37 > *(v34 + 24) >> 1)
      {
        if (v36 <= v37)
        {
          v40 = v36 + v35;
        }

        else
        {
          v40 = v36;
        }

        sub_1BF8DDC14(isUniquelyReferenced_nonNull_native, v40, 1, v34, sub_1BF963CCC, MEMORY[0x1E69A90D0], sub_1BF958CE8);
        v34 = v41;
      }

      if (*(v21 + 16))
      {
        v42 = (*(v34 + 24) >> 1) - *(v34 + 16);
        v43 = *(sub_1BF9B4768() - 8);
        if (v42 < v35)
        {
          goto LABEL_35;
        }

        v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v45 = *(v43 + 72);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v46 = *(v34 + 16);
          v47 = __OFADD__(v46, v35);
          v48 = v46 + v35;
          if (v47)
          {
            goto LABEL_36;
          }

          *(v34 + 16) = v48;
        }
      }

      else
      {

        if (v35)
        {
          goto LABEL_34;
        }
      }

      (*v55)(v65, v64);
      v51 = v32[7];
      v52 = *(v51 + 8 * v24);
      *(v51 + 8 * v24) = v34;
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      v19(v32[6] + *(v56 + 72) * v24, v65, v64);
      *(v32[7] + 8 * v24) = v21;
      v49 = v32[2];
      v47 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v47)
      {
        goto LABEL_32;
      }

      v32[2] = v50;
    }

    ++v15;
    a2 = 1;
    a3 = v57;
    a1 = v58;
    v12 = v17;
    if (v61 == v15)
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF8DFB90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BF8DFBF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF8DFC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8938, &qword_1BF9B8010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_66()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_67_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_68_0()
{

  return sub_1BF9B54A8();
}

void *OUTLINED_FUNCTION_69()
{
  v2 = *(v0 - 96);

  return __swift_project_boxed_opaque_existential_1((v0 - 120), v2);
}

void OUTLINED_FUNCTION_71()
{
  *(v4 - 112) = v1;
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;
  *(v4 - 88) = v0 & 1;
}

uint64_t OUTLINED_FUNCTION_76()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_77_1(uint64_t a1)
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 - 120));
  *(v1 - 120) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_78()
{

  return swift_getDynamicType();
}

uint64_t sub_1BF8DFE40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t AnySignalValue.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v29 = a5;
  v30 = a6;
  OUTLINED_FUNCTION_2_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  a7[3] = v17;
  a7[4] = v18;
  a7[5] = v19;
  a7[6] = v20;
  a7[7] = v21;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a7);
  (*(v13 + 16))(boxed_opaque_existential_1Tm, a1, a2);
  v23 = *(v13 + 32);
  v23(&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v24 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = a3;
  v27 = v29;
  v26 = v30;
  v25[4] = a4;
  v25[5] = v27;
  v25[6] = v26;
  result = (v23)(v25 + v24, &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a7[8] = sub_1BF8E0214;
  a7[9] = v25;
  return result;
}

uint64_t sub_1BF8E0010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1BF9B50F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v23[-v14];
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v23[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BF8C187C(a1, v23);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, a3);
    (*(v16 + 32))(v19, v15, a3);
    v20 = *(a7 + 8);
    v21 = sub_1BF9B4A88();
    (*(v16 + 8))(v19, a3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, a3);
    (*(v11 + 8))(v15, v10);
    v21 = 0;
  }

  return v21 & 1;
}

void AnySignalValue.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BA0, &qword_1BF9B8720);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  OUTLINED_FUNCTION_8();
  sub_1BF8DF690();
  sub_1BF9B5868();
  if (!v0)
  {
    sub_1BF8D96E8();
    v14 = v25;
    v15 = v27;
    v22 = v28;
    v23 = v26;
    v21 = v29;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_2_0();
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_4_6();
    (*(v19 + 16))(v1);
    AnySignalValue.init<A>(_:)(v1, v14, v23, v15, v22, v21, v5);
    (*(v8 + 8))(v13, v6);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t AnySignalValue.description.getter()
{
  v1 = v0[4];
  OUTLINED_FUNCTION_28(v0, v0[3]);
  OUTLINED_FUNCTION_36();
  return sub_1BF9B5668();
}

uint64_t static AnySignalValue.== infix(_:_:)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v4 = a2[3];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  v7[3] = v4;
  __swift_allocate_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 16))();
  LOBYTE(v4) = v3(v7);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v4 & 1;
}

uint64_t AnySignalValue.hash(into:)()
{
  v1 = v0[7];
  OUTLINED_FUNCTION_28(v0, v0[3]);
  OUTLINED_FUNCTION_36();
  return sub_1BF9B4A58();
}

uint64_t AnySignalValue.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B98, &unk_1BF9B86B0);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_39_2();
  v10 = a1[4];
  OUTLINED_FUNCTION_28(a1, a1[3]);
  sub_1BF8DF690();
  sub_1BF9B5898();
  v11 = v2[3];
  v12 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2, v11);
  v18[3] = v11;
  v18[4] = v12;
  __swift_allocate_boxed_opaque_existential_1Tm(v18);
  OUTLINED_FUNCTION_11(v11);
  (*(v13 + 16))();
  sub_1BF8DA9AC();
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_26();
  v16(v15);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1BF8E06DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF8E0750()
{
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1BFB5EAC0](0);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E07A8(uint64_t a1)
{
  v2 = sub_1BF8DF690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E07E4(uint64_t a1)
{
  v2 = sub_1BF8DF690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnySignalValue.hashValue.getter()
{
  OUTLINED_FUNCTION_37_1();
  v1 = v0[7];
  OUTLINED_FUNCTION_28(v0, v0[3]);
  OUTLINED_FUNCTION_57_0();
  sub_1BF9B4A58();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E0880()
{
  sub_1BF9B57A8();
  v1 = v0[7];
  OUTLINED_FUNCTION_28(v0, v0[3]);
  OUTLINED_FUNCTION_57_0();
  sub_1BF9B4A58();
  return sub_1BF9B57E8();
}

uint64_t Signal.signalValue.getter()
{
  sub_1BF8E0940(v0 + 56, v2);
  OUTLINED_FUNCTION_28(v2, v2[3]);
  OUTLINED_FUNCTION_36();
  sub_1BF9B5668();
  sub_1BF8E09DC(v2);
  return OUTLINED_FUNCTION_43();
}

uint64_t Signal.context.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 152);
  *a1 = *(v1 + 144);
  a1[1] = v2;
}

void *sub_1BF8E0A38()
{
  result = sub_1BF970B1C(3, 0x65726373656D6F68, 0xEA00000000006E65, MEMORY[0x1E69E7CC0], 0, 0);
  qword_1EDBF0848 = result;
  return result;
}

void *Signal.__allocating_init(signalType:signalValue:fallbackSignals:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  OUTLINED_FUNCTION_2_0();
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = v17 - v16;
  (*(v19 + 16))(v17 - v16);
  v20 = sub_1BF8E5C64(v18, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

void *sub_1BF8E0BB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DD8, &unk_1BF9B9750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BF9B8710;
  if (qword_1EDBF0840 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_1EDBF0848;

  result = sub_1BF970B1C(3, 0xD000000000000010, 0x80000001BF9CB010, v0, 0, 0);
  qword_1EDBF0820 = result;
  return result;
}

void *sub_1BF8E0C98()
{
  result = sub_1BF970B1C(4, 0x6B6361626C6C6166, 0xE800000000000000, MEMORY[0x1E69E7CC0], 0, 0);
  qword_1EDBF07F8 = result;
  return result;
}

void *sub_1BF8E0D04()
{
  result = sub_1BF970B1C(5, 0x6F4C656369766564, 0xEC00000064656B63, MEMORY[0x1E69E7CC0], 0, 0);
  qword_1EDBF0830 = result;
  return result;
}

void *sub_1BF8E0D78()
{
  result = sub_1BF970B1C(8, 0xD000000000000013, 0x80000001BF9CAFF0, MEMORY[0x1E69E7CC0], 0, 0);
  qword_1EDBF0808 = result;
  return result;
}

void *sub_1BF8E0DE8()
{
  result = sub_1BF970CAC(0x6E776F6E6B6E75, 0xE700000000000000, MEMORY[0x1E69E7CC0], 0, 0);
  qword_1EBDE8C00 = result;
  return result;
}

void *Signal.__allocating_init(signalType:signalValue:fallbackSignals:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  OUTLINED_FUNCTION_2_0();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  (*(v15 + 16))(v5);
  v16 = sub_1BF8E5FE0(v5, a2, a3, a4, v4, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_1BF8E0F44(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;
}

void *static Signal.inAppSignal(inAppIdentifier:fallbackSignals:context:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_60_0(a1);
  v4 = *v2;
  v3 = v2[1];
  v14 = &type metadata for InAppIdentifier;
  v15 = sub_1BF8E6150();
  v16 = sub_1BF8E61A4();
  v17 = sub_1BF8E61F8();
  v18 = sub_1BF8E624C();
  v13[0] = OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_58(v13[0]);
  v5 = OUTLINED_FUNCTION_62_0();
  v19 = sub_1BF8E62B0;
  v20 = OUTLINED_FUNCTION_58(v5);
  OUTLINED_FUNCTION_44_0();
  v6 = swift_allocObject();
  v12[3] = &type metadata for CoreSignalTypes;
  v12[4] = sub_1BF8E62B8();
  LOBYTE(v12[0]) = 7;
  sub_1BF8E69C4(v12, (v6 + 2));
  sub_1BF8E0940(v13, (v6 + 7));
  v6[17] = v1;
  v6[18] = v4;
  v6[19] = v3;
  __swift_project_boxed_opaque_existential_1(v13, v14);

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_1BF9B5668();
  OUTLINED_FUNCTION_61_0();
  v7 = 0xE700000000000000;
  v8 = 0x77656956707061;
  switch(LOBYTE(v12[0]))
  {
    case 1:
      v7 = 0xE300000000000000;
      v8 = 7368801;
      break;
    case 2:
      v7 = 0xEB0000000079726FLL;
      v8 = OUTLINED_FUNCTION_21_2();
      break;
    case 3:
      v7 = 0xEA00000000006E65;
      v8 = OUTLINED_FUNCTION_20_2();
      break;
    case 4:
      v7 = 0xE800000000000000;
      v8 = OUTLINED_FUNCTION_13_3();
      break;
    case 5:
      v7 = 0xEC00000064656B63;
      v8 = OUTLINED_FUNCTION_19_3();
      break;
    case 6:
      v8 = OUTLINED_FUNCTION_55_0();
      break;
    case 7:
      v7 = 0xE500000000000000;
      v8 = OUTLINED_FUNCTION_23_1();
      break;
    case 8:
      v7 = 0xEB00000000726567;
      v8 = OUTLINED_FUNCTION_18_1();
      break;
    default:
      break;
  }

  MEMORY[0x1BFB5DE90](v8, v7);

  MEMORY[0x1BFB5DE90](0, 0xE000000000000000);

  sub_1BF8E09DC(v13);
  v6[20] = v10;
  v6[21] = v11;
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v6;
}

uint64_t static Signal.appEntitySignalLookup(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  *(a2 + 104) = &type metadata for CoreSignalTypes;
  *(a2 + 112) = sub_1BF8E62B8();
  *(a2 + 80) = 0;
  *(a2 + 24) = &type metadata for AppEntitySignalValue;
  *(a2 + 32) = sub_1BF8E630C();
  *(a2 + 40) = sub_1BF8E6360();
  *(a2 + 48) = sub_1BF8E63B4();
  *(a2 + 56) = sub_1BF8E6408();
  v7 = OUTLINED_FUNCTION_62_0();
  *a2 = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;
  v8 = OUTLINED_FUNCTION_62_0();
  v8[2] = v4;
  v8[3] = v3;
  v8[4] = v6;
  v8[5] = v5;
  *(a2 + 64) = sub_1BF8E646C;
  *(a2 + 72) = v8;
  swift_bridgeObjectRetain_n();
  return swift_bridgeObjectRetain_n();
}

void *static Signal.appEntitySignal(appEntityDetails:fallbackSignals:context:)(uint64_t *a1)
{
  v2 = *(OUTLINED_FUNCTION_60_0(a1) + 32);
  v5 = *v3;
  v4 = v3[1];
  v16 = &type metadata for AppEntityDetails;
  v17 = sub_1BF8E6474();
  v18 = sub_1BF8E64C8();
  v19 = sub_1BF8E651C();
  v20 = sub_1BF8E6570();
  v15[0] = swift_allocObject();
  *(OUTLINED_FUNCTION_58(v15[0]) + 48) = v2;
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_58(v6);
  *(v7 + 48) = v2;
  v21 = sub_1BF8E6648;
  v22 = v7;
  OUTLINED_FUNCTION_44_0();
  v8 = swift_allocObject();
  v14[3] = &type metadata for CoreSignalTypes;
  v14[4] = sub_1BF8E62B8();
  LOBYTE(v14[0]) = 0;
  sub_1BF8E69C4(v14, (v8 + 2));
  sub_1BF8E0940(v15, (v8 + 7));
  v8[17] = v1;
  v8[18] = v5;
  v8[19] = v4;
  __swift_project_boxed_opaque_existential_1(v15, v16);

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  sub_1BF9B5668();
  OUTLINED_FUNCTION_61_0();
  v9 = 0xE700000000000000;
  v10 = 0x77656956707061;
  switch(LOBYTE(v14[0]))
  {
    case 1:
      v9 = 0xE300000000000000;
      v10 = 7368801;
      break;
    case 2:
      v9 = 0xEB0000000079726FLL;
      v10 = OUTLINED_FUNCTION_21_2();
      break;
    case 3:
      v9 = 0xEA00000000006E65;
      v10 = OUTLINED_FUNCTION_20_2();
      break;
    case 4:
      v9 = 0xE800000000000000;
      v10 = OUTLINED_FUNCTION_13_3();
      break;
    case 5:
      v9 = 0xEC00000064656B63;
      v10 = OUTLINED_FUNCTION_19_3();
      break;
    case 6:
      v10 = OUTLINED_FUNCTION_55_0();
      break;
    case 7:
      v9 = 0xE500000000000000;
      v10 = OUTLINED_FUNCTION_23_1();
      break;
    case 8:
      v9 = 0xEB00000000726567;
      v10 = OUTLINED_FUNCTION_18_1();
      break;
    default:
      break;
  }

  MEMORY[0x1BFB5DE90](v10, v9);

  MEMORY[0x1BFB5DE90](0, 0xE000000000000000);

  sub_1BF8E09DC(v15);
  v8[20] = v12;
  v8[21] = v13;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v8;
}

uint64_t Signal.__allocating_init(copy:context:)(void *a1, unsigned __int8 *a2)
{
  OUTLINED_FUNCTION_44_0();
  v4 = swift_allocObject();
  Signal.init(copy:context:)(a1, a2);
  return v4;
}

void *Signal.init(copy:context:)(void *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 1);
  sub_1BF8E69C4((a1 + 2), (v2 + 2));
  sub_1BF8E0940((a1 + 7), (v2 + 7));
  v2[17] = a1[17];
  v8 = a1[20];
  v7 = a1[21];

  v2[20] = v8;
  v2[21] = v7;
  v9 = 256;
  if (!v5)
  {
    v9 = 0;
  }

  v2[18] = v9 | v4;
  v2[19] = v6;
  return v2;
}

void Signal.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B80, &qword_1BF9B86A0);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = v3[4];
  v31 = v3;
  OUTLINED_FUNCTION_28(v3, v3[3]);
  sub_1BF8DF63C();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_59_0();
  sub_1BF9B5868();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_1BF8D7C08();
    LOBYTE(v25[0]) = 1;
    sub_1BF8E6650();
    sub_1BF9B5558();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C20, &qword_1BF9B8728);
    LOBYTE(v26[0]) = 2;
    sub_1BF8E671C(&qword_1EBDE8C28, &qword_1EBDE8C30);
    sub_1BF9B5558();
    v11 = v25[0];
    sub_1BF8E1988(3, v25);
    v12 = v25[0];
    v13 = v25[1];
    sub_1BF8E69C4(v30, v26);
    sub_1BF8E0940(v29, v25);
    v24[0] = v12;
    v24[1] = v13;
    OUTLINED_FUNCTION_44_0();
    v14 = swift_allocObject();
    v15 = v27;
    v23 = v28;
    __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    OUTLINED_FUNCTION_2_0();
    v17 = *(v16 + 64);
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_17();
    v21 = v20 - v19;
    (*(v22 + 16))(v20 - v19);
    sub_1BF8E5EA8(v21, v25, v11, v24, v14, v15, v23);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1BF8E09DC(v29);
    __swift_destroy_boxed_opaque_existential_1(v30);
    (*(v6 + 8))(v1, v4);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF8E1988@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v30 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B80, &qword_1BF9B86A0);
  sub_1BF8BF518();
  result = sub_1BF9B54A8();
  if (!v2)
  {
    LOBYTE(v26) = 1;
    if (sub_1BF9B5578())
    {
      LOBYTE(v27) = 0;
      sub_1BF8DF378();
      sub_1BF9B5558();
      v11 = dynamic_cast_existential_1_conditional(v26);
      if (v11)
      {
        v25 = v12;
        v13 = *(*(v11 - 8) + 64);
        MEMORY[0x1EEE9AC00](v11);
        v29 = 1;
        sub_1BF9B54C8();
        sub_1BF9B4F68();
        v18 = swift_dynamicCast();
        if ((v18 & 1) == 0)
        {
          v27 = 0;
          v28 = 0;
        }

        v19 = v28;
        if (v28)
        {
          v20 = v27;
          v21 = *(v6 + 8);

          v21(v9, v5);
          *a2 = v20 & 1;
          *(a2 + 1) = HIBYTE(v20) & 1;
          *(a2 + 8) = v19;
        }

        else
        {
          type metadata accessor for CodingErrors();
          sub_1BF8E801C(qword_1EDBF36D8, 255, type metadata accessor for CodingErrors);
          swift_allocError();
          v23 = v22;
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
          __swift_storeEnumTagSinglePayload(v23, 1, 1, v24);
          swift_willThrow();
          (*(v6 + 8))(v9, v5);
        }
      }

      else
      {
        type metadata accessor for CodingErrors();
        sub_1BF8E801C(qword_1EDBF36D8, 255, type metadata accessor for CodingErrors);
        swift_allocError();
        v15 = v14;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        v17 = *(v16 + 48);
        *(v15 + 24) = &unk_1F3EF7A98;
        *(v15 + 32) = sub_1BF8DF63C();
        *v15 = a1;
        sub_1BF9B4638();
        __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
        swift_willThrow();
        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
      result = (*(v6 + 8))(v9, v5);
      *a2 = 0;
      *(a2 + 8) = 0;
    }
  }

  return result;
}

void sub_1BF8E1DE8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DC0, &qword_1BF9C6080);
  sub_1BF8BF518();
  sub_1BF9B54A8();
  if (v0)
  {
    goto LABEL_2;
  }

  LOBYTE(v31) = 1;
  if ((sub_1BF9B5578() & 1) == 0)
  {
LABEL_8:
    v13 = OUTLINED_FUNCTION_7_3();
    v14(v13);
    goto LABEL_2;
  }

  sub_1BF8DF378();
  OUTLINED_FUNCTION_12_2();
  sub_1BF9B5558();
  v9 = dynamic_cast_existential_1_conditional(v31);
  if (!v9)
  {
    type metadata accessor for CodingErrors();
    OUTLINED_FUNCTION_1_4();
    sub_1BF8E801C(v15, 255, v16);
    OUTLINED_FUNCTION_16_0();
    v18 = v17;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
    v20 = *(v19 + 48);
    *(v18 + 24) = &type metadata for AppIntentFilter.CodingKeys;
    *(v18 + 32) = sub_1BF8E8064();
    *v18 = v33;
    sub_1BF9B4638();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v19);
    swift_willThrow();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_11(v9);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_12_2();
  sub_1BF9B54C8();
  sub_1BF9B4F68();
  v21 = swift_dynamicCast();
  if ((v21 & 1) == 0)
  {
    v32 = 0;
  }

  if (v32)
  {
    v22 = *(v5 + 8);

    v23 = OUTLINED_FUNCTION_25();
    v22(v23);
  }

  else
  {
    type metadata accessor for CodingErrors();
    OUTLINED_FUNCTION_1_4();
    sub_1BF8E801C(v24, 255, v25);
    swift_allocError();
    v27 = v26;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
    swift_willThrow();
    v29 = OUTLINED_FUNCTION_7_3();
    v30(v29);
  }

LABEL_2:
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void sub_1BF8E21AC()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v46 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89A0, &unk_1BF9B9720);
  OUTLINED_FUNCTION_1(v10);
  v45 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42 - v15;
  v49[7] = v8;
  v49[8] = v6;
  v49[9] = v4;
  v50 = v2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89F0, &unk_1BF9C66D0);
  sub_1BF8BF518();
  sub_1BF9B54A8();
  if (!v0)
  {
    LODWORD(v44) = v2;
    v17 = v46;
    LOBYTE(v49[0]) = 1;
    if (sub_1BF9B5578())
    {
      LOBYTE(v47) = 0;
      sub_1BF8DF378();
      sub_1BF9B5558();
      v20 = v49[0];
      v21 = dynamic_cast_existential_1_conditional(v49[0]);
      if (v21)
      {
        v44 = v21;
        OUTLINED_FUNCTION_11(v21);
        v23 = *(v22 + 64);
        MEMORY[0x1EEE9AC00](v24);
        OUTLINED_FUNCTION_17();
        OUTLINED_FUNCTION_41_0();
        sub_1BF9B54C8();
        v42 = &v42;
        v43 = v16;
        sub_1BF9B4F68();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DD0, &unk_1BF9B9740);
        if ((swift_dynamicCast() & 1) == 0)
        {
          memset(v49, 0, 56);
        }

        sub_1BF8E80B8(v49, &v47, &qword_1EBDE95F0, &qword_1BF9B85D0);
        if (v48)
        {
          v33 = OUTLINED_FUNCTION_15_8();
          v34(v33);
          sub_1BF8E8174(&v47, v17);
        }

        else
        {
          sub_1BF8E8118(&v47, &qword_1EBDE95F0, &qword_1BF9B85D0);
          type metadata accessor for CodingErrors();
          OUTLINED_FUNCTION_1_4();
          sub_1BF8E801C(v35, 255, v36);
          OUTLINED_FUNCTION_16_0();
          v38 = v37;
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
          __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
          swift_willThrow();
          v40 = OUTLINED_FUNCTION_15_8();
          v41(v40);
        }

        sub_1BF8E8118(v49, &qword_1EBDE95F0, &qword_1BF9B85D0);
      }

      else
      {
        type metadata accessor for CodingErrors();
        OUTLINED_FUNCTION_1_4();
        sub_1BF8E801C(v27, 255, v28);
        OUTLINED_FUNCTION_16_0();
        v46 = v20;
        v30 = v29;
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89B0, &unk_1BF9B9730);
        v43 = *(v31 + 48);
        v30[3] = &type metadata for CodableWrapper.ArrayKeys;
        v30[4] = sub_1BF8DF500();
        v32 = swift_allocObject();
        *v30 = v32;
        *(v32 + 16) = v8;
        *(v32 + 24) = v6;
        *(v32 + 32) = v4;
        *(v32 + 40) = v44 & 1;

        sub_1BF9B4638();
        __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
        swift_willThrow();
        v25 = OUTLINED_FUNCTION_40_0();
        v26(v25);
      }
    }

    else
    {
      v18 = OUTLINED_FUNCTION_40_0();
      v19(v18);
      *(v17 + 48) = 0;
      *(v17 + 16) = 0u;
      *(v17 + 32) = 0u;
      *v17 = 0u;
    }
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

uint64_t static Signal.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_1();
  v8 = v7(v6);
  v10 = v9;
  v11 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v12 = OUTLINED_FUNCTION_45_1();
  if (v8 == v13(v12) && v10 == v14)
  {
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v16 = sub_1BF9B56D8();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v19 = a1[15];
  v18 = a1[16];
  v20 = a2[10];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v20);
  v25[3] = v20;
  __swift_allocate_boxed_opaque_existential_1Tm(v25);
  OUTLINED_FUNCTION_11(v20);
  v22 = *(v21 + 16);
  OUTLINED_FUNCTION_57_0();
  v23();
  v17 = v19(v25);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v17 & 1;
}

uint64_t Signal.hash(into:)()
{
  v1 = v0[6];
  OUTLINED_FUNCTION_28(v0 + 2, v0[5]);
  v2 = *(v1 + 32);
  sub_1BF9B4A58();
  OUTLINED_FUNCTION_37_1();
  v3 = v0[14];
  OUTLINED_FUNCTION_28(v0 + 7, v0[10]);
  sub_1BF9B4A58();
  v4 = sub_1BF9B57E8();
  return MEMORY[0x1BFB5EAC0](v4);
}

uint64_t Signal.description.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_43();
}

uint64_t Signal.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B78, &unk_1BF9B8730);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = a1[4];
  OUTLINED_FUNCTION_28(a1, a1[3]);
  sub_1BF8DF63C();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  v10 = *(v3 + 40);
  v11 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v10);
  v23 = v10;
  v24 = *(v11 + 24);
  __swift_allocate_boxed_opaque_existential_1Tm(v22);
  OUTLINED_FUNCTION_11(v10);
  (*(v12 + 16))();
  sub_1BF8DA484();
  if (v2)
  {
    v13 = OUTLINED_FUNCTION_7_3();
    v14(v13);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    LOBYTE(v22[0]) = 1;
    sub_1BF8E66C8();
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5638();
    v22[0] = *(v3 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C20, &qword_1BF9B8728);
    sub_1BF8E671C(&qword_1EBDE8C40, &qword_1EBDE8C48);
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5638();
    v16 = *(v3 + 152);
    if (v16)
    {
      v17 = *(v3 + 144);
      v18 = sub_1BF8E67A8();
      LOWORD(v22[0]) = v17 & 0x101;
      v19 = &type metadata for SignalContext;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v22[0] = 0;
      v22[2] = 0;
    }

    v22[1] = v16;
    v23 = v19;
    v24 = v18;

    sub_1BF8E2B98();
    v20 = OUTLINED_FUNCTION_7_3();
    v21(v20);
    return sub_1BF8E8118(v22, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }
}

void sub_1BF8E2B98()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_39_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  sub_1BF8BF518();
  sub_1BF9B5598();
  sub_1BF8E80B8(v6, &v22, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  if (v23)
  {
    sub_1BF8C2C9C(&v22, v24);
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v23 = v13;
    __swift_allocate_boxed_opaque_existential_1Tm(&v22);
    OUTLINED_FUNCTION_11(v13);
    (*(v14 + 16))();
    __swift_project_boxed_opaque_existential_1(&v22, v23);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v22);
    *&v22 = DynamicType;
    sub_1BF8C328C();
    sub_1BF9B5638();
    if (!v0)
    {
      __swift_project_boxed_opaque_existential_1(v24, v25);
      sub_1BF9B55A8();
      sub_1BF9B4A28();
      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    v16 = *(v9 + 8);
    v17 = OUTLINED_FUNCTION_26();
    v18(v17);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v19 = *(v9 + 8);
    v20 = OUTLINED_FUNCTION_26();
    v21(v20);
    sub_1BF8E8118(&v22, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  OUTLINED_FUNCTION_37();
}

void sub_1BF8E2E08()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89D0, &qword_1BF9B84D0);
  OUTLINED_FUNCTION_1(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_39_2();
  v30 = v10;
  v31 = v8;
  v32 = v6;
  v33 = v4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8A50, &unk_1BF9B9710);
  sub_1BF8BF518();
  sub_1BF9B5598();
  sub_1BF8E80B8(v2, &v26, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  if (v27)
  {
    sub_1BF8C2C9C(&v26, v28);
    v17 = v29;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v27 = v17;
    __swift_allocate_boxed_opaque_existential_1Tm(&v26);
    OUTLINED_FUNCTION_11(v17);
    (*(v18 + 16))();
    __swift_project_boxed_opaque_existential_1(&v26, v27);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(&v26);
    *&v26 = DynamicType;
    sub_1BF8C328C();
    sub_1BF9B5638();
    if (!v0)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_1BF9B55A8();
      sub_1BF9B4A28();
      __swift_destroy_boxed_opaque_existential_1(&v26);
    }

    v20 = *(v13 + 8);
    v21 = OUTLINED_FUNCTION_26();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v23 = *(v13 + 8);
    v24 = OUTLINED_FUNCTION_26();
    v25(v24);
    sub_1BF8E8118(&v26, &qword_1EBDE8AB8, &qword_1BF9B85C0);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF8E3094(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79546C616E676973 && a2 == 0xEA00000000006570;
  if (v4 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v7 = a1 == OUTLINED_FUNCTION_54_2() && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == OUTLINED_FUNCTION_13_3() && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_70() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_70();

        if (v11)
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

uint64_t sub_1BF8E31B0(char a1)
{
  result = 0x79546C616E676973;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_54_2();
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_3();
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF8E3268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E3094(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8E329C(uint64_t a1)
{
  v2 = sub_1BF8DF63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E32D8(uint64_t a1)
{
  v2 = sub_1BF8DF63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t *Signal.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_1BF8E09DC((v0 + 7));
  v1 = v0[17];

  v2 = v0[19];

  v3 = v0[21];

  return v0;
}

uint64_t Signal.__deallocating_deinit()
{
  Signal.deinit();
  OUTLINED_FUNCTION_44_0();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Signal.hashValue.getter()
{
  OUTLINED_FUNCTION_37_1();
  Signal.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E3404()
{
  v1 = *v0;
  sub_1BF9B57A8();
  Signal.hash(into:)();
  return sub_1BF9B57E8();
}

void sub_1BF8E3468(void *a1@<X8>)
{
  Signal.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

SiriSuggestionsKit::SignalContext::ViewEntityIdentifier __swiftcall SignalContext.ViewEntityIdentifier.init(typeIdentifier:instanceIdentifier:)(Swift::String typeIdentifier, Swift::String instanceIdentifier)
{
  *v2 = typeIdentifier;
  v2[1] = instanceIdentifier;
  result.instanceIdentifier = instanceIdentifier;
  result.typeIdentifier = typeIdentifier;
  return result;
}

uint64_t sub_1BF8E34E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BF9CAF90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8E35C0(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6E65644965707974;
  }
}

uint64_t sub_1BF8E3628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E34E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8E3650(uint64_t a1)
{
  v2 = sub_1BF8E67FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E368C(uint64_t a1)
{
  v2 = sub_1BF8E67FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SignalContext.ViewEntityIdentifier.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C58, &qword_1BF9B8740);
  OUTLINED_FUNCTION_1(v4);
  v17 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = *v0;
  v10 = v0[1];
  v15 = v0[3];
  v16 = v0[2];
  v11 = v3[4];
  OUTLINED_FUNCTION_28(v3, v3[3]);
  sub_1BF8E67FC();
  OUTLINED_FUNCTION_32_1();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_12_2();
  sub_1BF9B55F8();
  if (!v1)
  {
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B55F8();
  }

  v12 = *(v17 + 8);
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void SignalContext.ViewEntityIdentifier.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C68, &qword_1BF9B8748);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8();
  sub_1BF8E67FC();
  OUTLINED_FUNCTION_53();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_56_0();
    v11 = sub_1BF9B5518();
    v13 = v12;
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_56_0();
    v14 = sub_1BF9B5518();
    v16 = v15;
    v17 = *(v7 + 8);
    v20 = v14;
    v18 = OUTLINED_FUNCTION_22();
    v19(v18);
    *v4 = v11;
    v4[1] = v13;
    v4[2] = v20;
    v4[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

SiriSuggestionsKit::SignalContext __swiftcall SignalContext.init(onScreen:explicitRequest:)(Swift::Bool onScreen, Swift::Bool explicitRequest)
{
  *v2 = onScreen;
  *(v2 + 1) = explicitRequest;
  *(v2 + 8) = MEMORY[0x1E69E7CC0];
  LOBYTE(result.viewEntities._rawValue) = explicitRequest;
  result.onScreen = onScreen;
  return result;
}

SiriSuggestionsKit::SignalContext __swiftcall SignalContext.init(onScreen:explicitRequest:viewEntities:)(Swift::Bool onScreen, Swift::Bool explicitRequest, Swift::OpaquePointer viewEntities)
{
  *v3 = onScreen;
  *(v3 + 1) = explicitRequest;
  *(v3 + 8) = viewEntities;
  LOBYTE(result.viewEntities._rawValue) = explicitRequest;
  result.onScreen = onScreen;
  return result;
}

uint64_t sub_1BF8E3A08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746963696C707865 && a2 == 0xEF74736575716552;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x69746E4577656976 && a2 == 0xEC00000073656974)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF8E3B24(char a1)
{
  if (!a1)
  {
    return 0x6E65657263536E6FLL;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  return 0x69746E4577656976;
}

uint64_t sub_1BF8E3BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E3A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8E3BD8(uint64_t a1)
{
  v2 = sub_1BF8E6850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E3C14(uint64_t a1)
{
  v2 = sub_1BF8E6850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SignalContext.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C70, &qword_1BF9B8750);
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = *v0;
  v16 = v0[1];
  v15 = *(v0 + 1);
  v11 = v3[4];
  OUTLINED_FUNCTION_28(v3, v3[3]);
  sub_1BF8E6850();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_59_0();
  sub_1BF9B5898();
  OUTLINED_FUNCTION_12_2();
  sub_1BF9B5608();
  if (!v1)
  {
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5608();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C80, &qword_1BF9B8758);
    sub_1BF8E68A4(&qword_1EBDE8C88, sub_1BF8E691C);
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5638();
  }

  v12 = *(v6 + 8);
  v13 = OUTLINED_FUNCTION_25();
  v14(v13);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

void SignalContext.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C98, &qword_1BF9B8760);
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8();
  sub_1BF8E6850();
  sub_1BF9B5868();
  if (!v0)
  {
    v12 = sub_1BF9B5528();
    OUTLINED_FUNCTION_42_0();
    v13 = sub_1BF9B5528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C80, &qword_1BF9B8758);
    sub_1BF8E68A4(&qword_1EBDE8CA0, sub_1BF8E6970);
    sub_1BF9B5558();
    (*(v8 + 8))(v1, v6);
    *v5 = v12 & 1;
    *(v5 + 1) = v13 & 1;
    *(v5 + 8) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_37();
}

uint64_t SignalSource.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E40C0()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

BOOL sub_1BF8E4110()
{
  v0 = sub_1BF9B5488();

  return v0 != 0;
}

BOOL sub_1BF8E4164@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1BF8E4110();
  *a2 = result;
  return result;
}

uint64_t sub_1BF8E4198@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_16_1();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CoreSignalTypes.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x77656956707061;
  switch(*v0)
  {
    case 1:
      v1 = 0xE300000000000000;
      v2 = 7368801;
      break;
    case 2:
      v1 = 0xEB0000000079726FLL;
      v2 = OUTLINED_FUNCTION_21_2();
      break;
    case 3:
      v1 = 0xEA00000000006E65;
      v2 = OUTLINED_FUNCTION_20_2();
      break;
    case 4:
      v1 = 0xE800000000000000;
      v2 = OUTLINED_FUNCTION_13_3();
      break;
    case 5:
      v1 = 0xEC00000064656B63;
      v2 = OUTLINED_FUNCTION_19_3();
      break;
    case 6:
      v1 = 0x80000001BF9CA6A0;
      v2 = 0xD000000000000017;
      break;
    case 7:
      v1 = 0xE500000000000000;
      v2 = OUTLINED_FUNCTION_23_1();
      break;
    case 8:
      v1 = 0xEB00000000726567;
      v2 = OUTLINED_FUNCTION_18_1();
      break;
    default:
      break;
  }

  MEMORY[0x1BFB5DE90](v2, v1);

  return 0;
}

uint64_t CoreSignalTypes.rawValue.getter()
{
  result = 0x77656956707061;
  switch(*v0)
  {
    case 1:
      result = 7368801;
      break;
    case 2:
      result = OUTLINED_FUNCTION_21_2();
      break;
    case 3:
      result = OUTLINED_FUNCTION_20_2();
      break;
    case 4:
      result = OUTLINED_FUNCTION_13_3();
      break;
    case 5:
      result = OUTLINED_FUNCTION_19_3();
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = OUTLINED_FUNCTION_23_1();
      break;
    case 8:
      result = OUTLINED_FUNCTION_18_1();
      break;
    default:
      return result;
  }

  return result;
}

SiriSuggestionsKit::CoreSignalTypes_optional __swiftcall CoreSignalTypes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BF8E454C@<X0>(uint64_t *a1@<X8>)
{
  result = CoreSignalTypes.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentAwareSignal.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 88);
  *(a1 + 32) = v6;
  return sub_1BF8E6A24(v2, v3, v4, v5, v6);
}

double EnvironmentAwareSignal.init(environment:subscribedSignal:activeSignal:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1BF8C2C9C(a1, a4);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  result = 0.0;
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 88) = -1;
  return result;
}

__n128 EnvironmentAwareSignal.init(environment:subscribedSignal:activeSignal:deliveryVehicle:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a4 + 32);
  sub_1BF8C2C9C(a1, a5);
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  result = *a4;
  *(a5 + 72) = *(a4 + 16);
  *(a5 + 56) = result;
  *(a5 + 88) = v9;
  return result;
}

void *SignalDetails.init(subscribedSignal:activeSignal:distanceFromActive:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = result[1];
  v5 = *a2;
  v6 = a2[1];
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = a4;
  return result;
}

uint64_t static SignalDetails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  type metadata accessor for Signal();

  v12 = static Signal.== infix(_:_:)(v2, v7);

  result = 0;
  if ((v12 & 1) != 0 && v3 == v8)
  {

    v14 = OUTLINED_FUNCTION_43();
    v16 = static Signal.== infix(_:_:)(v14, v15);

    if (v6 == v11)
    {
      return v16 & (v5 == v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static SignalStats.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  type metadata accessor for Signal();
  v6 = OUTLINED_FUNCTION_43();
  return static Signal.== infix(_:_:)(v6, v7) & (v3 == v5);
}

uint64_t sub_1BF8E487C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001BF9CAFB0 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6953657669746361 && a2 == 0xEC0000006C616E67;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000012 && 0x80000001BF9CAFD0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

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

uint64_t sub_1BF8E499C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1BFB5EAC0](a1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E49DC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x6953657669746361;
  }

  return 0xD000000000000012;
}

uint64_t sub_1BF8E4A48(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E4A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E487C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8E4AC4(uint64_t a1)
{
  v2 = sub_1BF8E6A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E4B00(uint64_t a1)
{
  v2 = sub_1BF8E6A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SignalDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CB0, &qword_1BF9B8768);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v10 = *v1;
  v9 = v1[1];
  v16 = v1[3];
  v17 = v1[2];
  v11 = v1[4];
  v12 = a1[4];
  OUTLINED_FUNCTION_28(a1, a1[3]);
  sub_1BF8E6A38();

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_59_0();
  sub_1BF9B5898();
  sub_1BF8E6A8C();
  sub_1BF9B5638();

  if (!v18)
  {

    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5638();

    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5618();
  }

  v13 = *(v5 + 8);
  v14 = OUTLINED_FUNCTION_25();
  v15(v14);
  OUTLINED_FUNCTION_39_1();
}

uint64_t SignalDetails.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[4];
  v5 = *v0;
  Signal.hash(into:)();
  MEMORY[0x1BFB5EAC0](v1);
  Signal.hash(into:)();
  MEMORY[0x1BFB5EAC0](v3);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  return MEMORY[0x1BFB5EAE0](*&v6);
}

uint64_t SignalDetails.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  OUTLINED_FUNCTION_37_1();
  Signal.hash(into:)();
  MEMORY[0x1BFB5EAC0](v2);
  Signal.hash(into:)();
  MEMORY[0x1BFB5EAC0](v4);
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = v5;
  }

  MEMORY[0x1BFB5EAE0](*&v6);
  return sub_1BF9B57E8();
}

uint64_t SignalDetails.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CC8, &qword_1BF9B8770);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8();
  sub_1BF8E6A38();
  OUTLINED_FUNCTION_53();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1BF8E6AE0();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_56_0();
  sub_1BF9B5538();
  v12 = v11;
  v13 = *(v7 + 8);
  v14 = OUTLINED_FUNCTION_22();
  v15(v14);
  *a2 = v17;
  a2[1] = v18;
  a2[2] = v17;
  a2[3] = v18;
  a2[4] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BF8E5054()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  sub_1BF9B57A8();
  SignalDetails.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t SignalStats.init(signal:numSuggestions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BF8E50C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E676973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676775536D756ELL && a2 == 0xEE00736E6F697473)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF8E5194(char a1)
{
  OUTLINED_FUNCTION_37_1();
  MEMORY[0x1BFB5EAC0](a1 & 1);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E51D4(char a1)
{
  if (a1)
  {
    return 0x65676775536D756ELL;
  }

  else
  {
    return 0x6C616E676973;
  }
}

uint64_t sub_1BF8E5214(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E5268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF8E50C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF8E5290(uint64_t a1)
{
  v2 = sub_1BF8E6B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF8E52CC(uint64_t a1)
{
  v2 = sub_1BF8E6B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SignalStats.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CD8, &qword_1BF9B8778);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_11_0();
  v9 = *v0;
  v18 = v0[1];
  v10 = v2[4];
  OUTLINED_FUNCTION_28(v2, v2[3]);
  v11 = sub_1BF8E6B34();

  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_59_0();
  sub_1BF9B5898();
  type metadata accessor for Signal();
  OUTLINED_FUNCTION_3_3();
  sub_1BF8E801C(v12, v13, v14);
  OUTLINED_FUNCTION_12_2();
  sub_1BF9B5638();

  if (!v11)
  {
    OUTLINED_FUNCTION_12_2();
    sub_1BF9B5628();
  }

  v15 = *(v5 + 8);
  v16 = OUTLINED_FUNCTION_25();
  v17(v16);
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

uint64_t SignalStats.hash(into:)()
{
  v1 = v0[1];
  v2 = *v0;
  Signal.hash(into:)();
  return MEMORY[0x1BFB5EAC0](v1);
}

uint64_t SignalStats.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  OUTLINED_FUNCTION_37_1();
  Signal.hash(into:)();
  MEMORY[0x1BFB5EAC0](v2);
  return sub_1BF9B57E8();
}

void SignalStats.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CE8, &unk_1BF9B8780);
  OUTLINED_FUNCTION_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_8();
  sub_1BF8E6B34();
  sub_1BF9B5868();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    type metadata accessor for Signal();
    OUTLINED_FUNCTION_3_3();
    sub_1BF8E801C(v19, v20, v21);
    sub_1BF9B5558();
    OUTLINED_FUNCTION_56_0();
    v22 = sub_1BF9B5548();
    v23 = OUTLINED_FUNCTION_60();
    v24(v23);
    *v14 = a10;
    v14[1] = v22;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF8E56F8()
{
  v2 = *v0;
  v3 = v0[1];
  sub_1BF9B57A8();
  SignalStats.hash(into:)();
  return sub_1BF9B57E8();
}

uint64_t static SignalLookupKey.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[14];
  __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_38_1();
  v8 = v7(v6);
  v10 = v9;
  v11 = a2[14];
  __swift_project_boxed_opaque_existential_1(a2 + 10, a2[13]);
  v12 = OUTLINED_FUNCTION_45_1();
  if (v8 == v13(v12) && v10 == v14)
  {
  }

  else
  {
    OUTLINED_FUNCTION_26();
    v16 = sub_1BF9B56D8();

    v17 = 0;
    if ((v16 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  v19 = a1[8];
  v18 = a1[9];
  v20 = a2[3];
  v21 = OUTLINED_FUNCTION_36();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  v27[3] = v20;
  __swift_allocate_boxed_opaque_existential_1Tm(v27);
  OUTLINED_FUNCTION_11(v20);
  v24 = *(v23 + 16);
  OUTLINED_FUNCTION_57_0();
  v25();
  v17 = v19(v27);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v17 & 1;
}

uint64_t SignalLookupKey.hash(into:)()
{
  v1 = v0[14];
  OUTLINED_FUNCTION_28(v0 + 10, v0[13]);
  v2 = *(v1 + 32);
  sub_1BF9B4A58();
  OUTLINED_FUNCTION_37_1();
  v3 = v0[7];
  OUTLINED_FUNCTION_28(v0, v0[3]);
  sub_1BF9B4A58();
  v4 = sub_1BF9B57E8();
  return MEMORY[0x1BFB5EAC0](v4);
}

void *static SignalLookupKey.getLookupKey(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BF8DFE40(a1 + 56, __src);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8BB0, &qword_1BF9B86C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8CF0, &unk_1BF9B8790);
  if (swift_dynamicCast())
  {
    sub_1BF8C2C9C(&v19, v25);
    v5 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    v6 = *(v5 + 8);
    v7 = OUTLINED_FUNCTION_38_1();
    v8(v7);
    v9 = *(&v20 + 1);
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    OUTLINED_FUNCTION_2_0();
    v15 = *(v14 + 64);
    MEMORY[0x1EEE9AC00](v16);
    OUTLINED_FUNCTION_4_6();
    (*(v17 + 16))(v2);
    AnySignalValue.init<A>(_:)(v2, v9, v10, v11, v12, v13, __src);
    __swift_destroy_boxed_opaque_existential_1(&v19);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v21 = 0;
    v20 = 0u;
    v19 = 0u;
    sub_1BF8E8118(&v19, &qword_1EBDE8CF8, qword_1BF9C2C00);
    sub_1BF8E0940(a1 + 56, __src);
  }

  sub_1BF8E69C4(a1 + 16, a2 + 80);
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t SignalLookupKey.hashValue.getter()
{
  sub_1BF9B57A8();
  v1 = v0[14];
  OUTLINED_FUNCTION_28(v0 + 10, v0[13]);
  v2 = *(v1 + 32);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  v3 = v0[3];
  v4 = v0[7];
  v5 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28(v5, v6);
  sub_1BF9B4A58();
  v7 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v7);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF8E5BBC()
{
  sub_1BF9B57A8();
  v1 = v0[14];
  OUTLINED_FUNCTION_28(v0 + 10, v0[13]);
  v2 = *(v1 + 32);
  sub_1BF9B4A58();
  sub_1BF9B57A8();
  v3 = v0[3];
  v4 = v0[7];
  v5 = OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_28(v5, v6);
  sub_1BF9B4A58();
  v7 = sub_1BF9B57E8();
  MEMORY[0x1BFB5EAC0](v7);
  return sub_1BF9B57E8();
}

void *sub_1BF8E5C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a8;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v26 - v18;
  (*(v13 + 32))(&v26 - v18);
  v20 = *a5;
  v21 = a5[1];
  v29[3] = MEMORY[0x1E69E6158];
  v29[4] = MEMORY[0x1E69E61C8];
  v29[5] = MEMORY[0x1E69E6190];
  v29[6] = MEMORY[0x1E69E6160];
  v29[7] = MEMORY[0x1E69E6168];
  v29[0] = a2;
  v29[1] = a3;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  v29[8] = sub_1BF8E8194;
  v29[9] = v22;
  v28[0] = v20;
  v28[1] = v21;
  v23 = swift_allocObject();
  (*(v13 + 16))(v17, v19, a7);

  v24 = sub_1BF8E5EA8(v17, v29, a4, v28, v23, a7, v27);
  (*(v13 + 8))(v19, a7);
  return v24;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_1BF8E5EA8(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v19[3] = a6;
  v19[4] = a7;
  __swift_allocate_boxed_opaque_existential_1Tm(v19);
  (*(*(a6 - 8) + 32))();
  v14 = *a4;
  v13 = a4[1];
  sub_1BF8E69C4(v19, (a5 + 2));
  sub_1BF8E0940(a2, (a5 + 7));
  a5[17] = a3;
  a5[18] = v14;
  a5[19] = v13;
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = sub_1BF9B5668();
  MEMORY[0x1BFB5DE90](v16);

  MEMORY[0x1BFB5DE90](64, 0xE100000000000000);
  v17 = *(a7 + 8);
  sub_1BF9B56A8();
  sub_1BF8E09DC(a2);
  a5[20] = 0;
  a5[21] = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return a5;
}

void *sub_1BF8E5FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v22 - v18;
  (*(v13 + 32))(v22 - v18);
  v22[0] = 0;
  v22[1] = 0;
  (*(v13 + 16))(v17, v19, a6);
  v20 = sub_1BF8E5C64(v17, a2, a3, a4, v22, a5, a6, a7);
  (*(v13 + 8))(v19, a6);
  return v20;
}

unint64_t sub_1BF8E6150()
{
  result = qword_1EBDE8C08;
  if (!qword_1EBDE8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C08);
  }

  return result;
}

unint64_t sub_1BF8E61A4()
{
  result = qword_1EDBF32C8;
  if (!qword_1EDBF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32C8);
  }

  return result;
}

unint64_t sub_1BF8E61F8()
{
  result = qword_1EDBF32D8;
  if (!qword_1EDBF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32D8);
  }

  return result;
}

unint64_t sub_1BF8E624C()
{
  result = qword_1EBDE8C10;
  if (!qword_1EBDE8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C10);
  }

  return result;
}

unint64_t sub_1BF8E62B8()
{
  result = qword_1EDBF32F0;
  if (!qword_1EDBF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32F0);
  }

  return result;
}

unint64_t sub_1BF8E630C()
{
  result = qword_1EDBF28B0;
  if (!qword_1EDBF28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28B0);
  }

  return result;
}

unint64_t sub_1BF8E6360()
{
  result = qword_1EDBF28B8;
  if (!qword_1EDBF28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28B8);
  }

  return result;
}

unint64_t sub_1BF8E63B4()
{
  result = qword_1EDBF28D0;
  if (!qword_1EDBF28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28D0);
  }

  return result;
}

unint64_t sub_1BF8E6408()
{
  result = qword_1EDBF28C8;
  if (!qword_1EDBF28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28C8);
  }

  return result;
}

unint64_t sub_1BF8E6474()
{
  result = qword_1EDBF31D0;
  if (!qword_1EDBF31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF31D0);
  }

  return result;
}

unint64_t sub_1BF8E64C8()
{
  result = qword_1EDBF31D8;
  if (!qword_1EDBF31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF31D8);
  }

  return result;
}

unint64_t sub_1BF8E651C()
{
  result = qword_1EDBF31F0[0];
  if (!qword_1EDBF31F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF31F0);
  }

  return result;
}

unint64_t sub_1BF8E6570()
{
  result = qword_1EDBF31E8;
  if (!qword_1EDBF31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF31E8);
  }

  return result;
}

uint64_t sub_1BF8E65C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v5 = *(a2 + 32);
  return sub_1BF96DEBC(a1, v4) & 1;
}

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1BF8E6650()
{
  result = qword_1EBDE8C18;
  if (!qword_1EBDE8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C18);
  }

  return result;
}

unint64_t sub_1BF8E66C8()
{
  result = qword_1EBDE8C38;
  if (!qword_1EBDE8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C38);
  }

  return result;
}

uint64_t sub_1BF8E671C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8C20, &qword_1BF9B8728);
    OUTLINED_FUNCTION_3_3();
    sub_1BF8E801C(a2, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF8E67A8()
{
  result = qword_1EBDE8C50;
  if (!qword_1EBDE8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C50);
  }

  return result;
}

unint64_t sub_1BF8E67FC()
{
  result = qword_1EBDE8C60;
  if (!qword_1EBDE8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C60);
  }

  return result;
}

unint64_t sub_1BF8E6850()
{
  result = qword_1EBDE8C78;
  if (!qword_1EBDE8C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C78);
  }

  return result;
}

uint64_t sub_1BF8E68A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8C80, &qword_1BF9B8758);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF8E691C()
{
  result = qword_1EBDE8C90;
  if (!qword_1EBDE8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8C90);
  }

  return result;
}

unint64_t sub_1BF8E6970()
{
  result = qword_1EBDE8CA8;
  if (!qword_1EBDE8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8CA8);
  }

  return result;
}

uint64_t sub_1BF8E69C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_11(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1BF8E6A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1BF8C0D00(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_1BF8E6A38()
{
  result = qword_1EBDE8CB8;
  if (!qword_1EBDE8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8CB8);
  }

  return result;
}

unint64_t sub_1BF8E6A8C()
{
  result = qword_1EBDE8CC0;
  if (!qword_1EBDE8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8CC0);
  }

  return result;
}

unint64_t sub_1BF8E6AE0()
{
  result = qword_1EBDE8CD0;
  if (!qword_1EBDE8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8CD0);
  }

  return result;
}

unint64_t sub_1BF8E6B34()
{
  result = qword_1EBDE8CE0;
  if (!qword_1EBDE8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8CE0);
  }

  return result;
}

unint64_t sub_1BF8E6B8C()
{
  result = qword_1EBDE8D00;
  if (!qword_1EBDE8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D00);
  }

  return result;
}

unint64_t sub_1BF8E6C2C()
{
  result = qword_1EBDE8D08;
  if (!qword_1EBDE8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D08);
  }

  return result;
}

unint64_t sub_1BF8E6C84()
{
  result = qword_1EDBF3308;
  if (!qword_1EDBF3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3308);
  }

  return result;
}

unint64_t sub_1BF8E6D2C()
{
  result = qword_1EDBF32F8;
  if (!qword_1EDBF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32F8);
  }

  return result;
}

unint64_t sub_1BF8E6D80()
{
  result = qword_1EDBF3300;
  if (!qword_1EDBF3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3300);
  }

  return result;
}

unint64_t sub_1BF8E6DD4()
{
  result = qword_1EDBF3318[0];
  if (!qword_1EDBF3318[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF3318);
  }

  return result;
}

unint64_t sub_1BF8E6E28()
{
  result = qword_1EDBF3310;
  if (!qword_1EDBF3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF3310);
  }

  return result;
}

unint64_t sub_1BF8E6E80()
{
  result = qword_1EBDE8D10;
  if (!qword_1EBDE8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D10);
  }

  return result;
}

unint64_t sub_1BF8E6ED8()
{
  result = qword_1EBDE8D18;
  if (!qword_1EBDE8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D18);
  }

  return result;
}

unint64_t sub_1BF8E6F30()
{
  result = qword_1EDBF32B0;
  if (!qword_1EDBF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF32B0);
  }

  return result;
}

uint64_t sub_1BF8E6F8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BF8E6FCC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1BF8E7094(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1BF8E70D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF8E7128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1BF8E7168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CoreSignalTypes(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CoreSignalTypes(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit15DeliveryVehicleOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF8E7364(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1BF8E73A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_1BF8E741C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF8E745C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF8E74C4(uint64_t a1, int a2)
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

uint64_t sub_1BF8E7504(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF8E75A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_0(v8);
}

_BYTE *sub_1BF8E7624(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_46_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_47_0(result, v6);
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
          result = OUTLINED_FUNCTION_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF8E76F0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_0(v8);
}

_BYTE *sub_1BF8E7774(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_46_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_47_0(result, v6);
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
          result = OUTLINED_FUNCTION_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF8E7840(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_0(v8);
}

_BYTE *sub_1BF8E78C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_49_0(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_46_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_47_0(result, v6);
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
          result = OUTLINED_FUNCTION_31(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF8E799C()
{
  result = qword_1EBDE8D20;
  if (!qword_1EBDE8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D20);
  }

  return result;
}

unint64_t sub_1BF8E79F4()
{
  result = qword_1EBDE8D28;
  if (!qword_1EBDE8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D28);
  }

  return result;
}

unint64_t sub_1BF8E7A4C()
{
  result = qword_1EBDE8D30;
  if (!qword_1EBDE8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D30);
  }

  return result;
}

unint64_t sub_1BF8E7AA4()
{
  result = qword_1EBDE8D38;
  if (!qword_1EBDE8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D38);
  }

  return result;
}

unint64_t sub_1BF8E7AFC()
{
  result = qword_1EBDE8D40;
  if (!qword_1EBDE8D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D40);
  }

  return result;
}

unint64_t sub_1BF8E7B54()
{
  result = qword_1EBDE8D48;
  if (!qword_1EBDE8D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D48);
  }

  return result;
}

unint64_t sub_1BF8E7BAC()
{
  result = qword_1EBDE8D50;
  if (!qword_1EBDE8D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D50);
  }

  return result;
}

unint64_t sub_1BF8E7C04()
{
  result = qword_1EBDE8D58;
  if (!qword_1EBDE8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D58);
  }

  return result;
}

unint64_t sub_1BF8E7C5C()
{
  result = qword_1EBDE8D60;
  if (!qword_1EBDE8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D60);
  }

  return result;
}

unint64_t sub_1BF8E7CB4()
{
  result = qword_1EBDE8D68;
  if (!qword_1EBDE8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D68);
  }

  return result;
}

unint64_t sub_1BF8E7D0C()
{
  result = qword_1EBDE8D70;
  if (!qword_1EBDE8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D70);
  }

  return result;
}

unint64_t sub_1BF8E7D64()
{
  result = qword_1EBDE8D78;
  if (!qword_1EBDE8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D78);
  }

  return result;
}

unint64_t sub_1BF8E7DBC()
{
  result = qword_1EBDE8D80;
  if (!qword_1EBDE8D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D80);
  }

  return result;
}

unint64_t sub_1BF8E7E14()
{
  result = qword_1EBDE8D88;
  if (!qword_1EBDE8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D88);
  }

  return result;
}

unint64_t sub_1BF8E7E6C()
{
  result = qword_1EBDE8D90;
  if (!qword_1EBDE8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D90);
  }

  return result;
}

unint64_t sub_1BF8E7EC4()
{
  result = qword_1EBDE8D98;
  if (!qword_1EBDE8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8D98);
  }

  return result;
}

unint64_t sub_1BF8E7F1C()
{
  result = qword_1EBDE8DA0;
  if (!qword_1EBDE8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DA0);
  }

  return result;
}

unint64_t sub_1BF8E7F74()
{
  result = qword_1EBDE8DA8;
  if (!qword_1EBDE8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DA8);
  }

  return result;
}

unint64_t sub_1BF8E7FC8()
{
  result = qword_1EBDE8DB0;
  if (!qword_1EBDE8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DB0);
  }

  return result;
}

uint64_t sub_1BF8E801C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BF8E8064()
{
  result = qword_1EBDE8DC8;
  if (!qword_1EBDE8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DC8);
  }

  return result;
}

uint64_t sub_1BF8E80B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1BF8E8118(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_11(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF8E8174(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

_BYTE *sub_1BF8E819C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF8E824C()
{
  result = qword_1EBDE8DE0;
  if (!qword_1EBDE8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DE0);
  }

  return result;
}

uint64_t sub_1BF8E82F4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1BF8E8358()
{
  result = qword_1EBDE8DE8;
  if (!qword_1EBDE8DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DE8);
  }

  return result;
}

unint64_t sub_1BF8E83AC()
{
  result = qword_1EBDE8DF0;
  if (!qword_1EBDE8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DF0);
  }

  return result;
}

unint64_t sub_1BF8E8400()
{
  result = qword_1EBDE8DF8;
  if (!qword_1EBDE8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8DF8);
  }

  return result;
}

unint64_t sub_1BF8E8454()
{
  result = qword_1EBDE8E00;
  if (!qword_1EBDE8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8E00);
  }

  return result;
}

unint64_t sub_1BF8E84A8()
{
  result = qword_1EBDE8E08;
  if (!qword_1EBDE8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8E08);
  }

  return result;
}

void *OUTLINED_FUNCTION_58(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v4;
  result[5] = v1;
  return result;
}

uint64_t *OUTLINED_FUNCTION_60_0(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  v4 = result[2];
  v3 = result[3];
  return result;
}

uint64_t sub_1BF8E85A4()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t Cache.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t Cache.init(store:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_1BF8E864C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[41] = a7;
  v8[42] = v7;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[35] = a1;
  v8[36] = a2;
  v9 = *v7;
  v8[43] = *v7;
  v10 = *(v9 + 80);
  v8[44] = v10;
  v11 = *(v10 - 8);
  v8[45] = v11;
  v12 = *(v11 + 64) + 15;
  v8[46] = swift_task_alloc();
  v13 = sub_1BF9B50F8();
  v8[47] = v13;
  v14 = *(v13 - 8);
  v8[48] = v14;
  v15 = *(v14 + 64) + 15;
  v8[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8E87B4, v7, 0);
}

uint64_t sub_1BF8E87B4()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);
  sub_1BF8E85A4();
  *(v0 + 400) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C0, &unk_1BF9B84C0);
  *(v0 + 408) = *(v2 + 104);
  sub_1BF9B49F8();

  sub_1BF8E8CA4(v0 + 16, v0 + 112);
  if (*(v0 + 136))
  {
    v5 = *(v0 + 392);
    v6 = *(v0 + 312);
    sub_1BF8DFCB8((v0 + 112), (v0 + 64));
    sub_1BF8DFCB8((v0 + 64), (v0 + 208));
    v7 = swift_dynamicCast();
    v8 = *(v0 + 392);
    if (v7)
    {
      v9 = *(v0 + 312);
      v10 = *(v0 + 280);
      sub_1BF8E8D14(v0 + 16);
      __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
      (*(*(v9 - 8) + 32))(v10, v8, v9);
      v11 = *(v0 + 392);
      v12 = *(v0 + 368);

      v13 = *(v0 + 8);

      return v13();
    }

    v15 = *(v0 + 376);
    v16 = *(v0 + 384);
    __swift_storeEnumTagSinglePayload(*(v0 + 392), 1, 1, *(v0 + 312));
    (*(v16 + 8))(v8, v15);
  }

  else
  {
    sub_1BF8E8D14(v0 + 112);
  }

  v21 = (*(v0 + 296) + **(v0 + 296));
  v17 = *(*(v0 + 296) + 4);
  v18 = swift_task_alloc();
  *(v0 + 416) = v18;
  *v18 = v0;
  v18[1] = sub_1BF8E8A44;
  v19 = *(v0 + 304);
  v20 = *(v0 + 280);

  return v21(v20);
}

uint64_t sub_1BF8E8A44()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BF8E8B54, v2, 0);
}

uint64_t sub_1BF8E8B54()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 280);
  v11 = *(v0 + 312);
  (*(*(v0 + 360) + 16))(*(v0 + 368), *(v0 + 288), *(v0 + 352));
  *(v0 + 184) = v11;
  *(v0 + 200) = v4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((v0 + 160));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1Tm, v5);
  swift_beginAccess();
  sub_1BF9B49D8();
  sub_1BF9B4A08();
  swift_endAccess();
  sub_1BF8E8D14(v0 + 16);
  v7 = *(v0 + 392);
  v8 = *(v0 + 368);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BF8E8CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C8, &qword_1BF9B98D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF8E8D14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE89C8, &qword_1BF9B98D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Cache.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of Cache.getCachedValue<A>(_:valueProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(*v7 + 160);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_1BF8E8FFC;

  return v20(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1BF8E8FFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BF8E90F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8E910C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
  v1 = OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_7_4(v1, v2, v3, v4, v5, v6, v7, v8, v14);
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_58_0(v10);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF8E91D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8E92D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BF8E92FC, 0, 0);
}

uint64_t sub_1BF8E92FC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E68, &qword_1BF9B9C68);
  v1 = OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_7_4(v1, v2, v3, v4, v5, v6, v7, v8, v14);
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_58_0(v10);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF8E93C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8E93E0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E58, &qword_1BF9B9C08);
  v1 = OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_7_4(v1, v2, v3, v4, v5, v6, v7, v8, v14);
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_58_0(v10);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF8E94A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8E94C4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E18, &qword_1BF9B9AD0);
  v1 = OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_7_4(v1, v2, v3, v4, v5, v6, v7, v8, v14);
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_58_0(v10);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF8E958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8E95A8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_37_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C20, &qword_1BF9B8728);
  v1 = OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_7_4(v1, v2, v3, v4, v5, v6, v7, v8, v14);
  v9 = *(MEMORY[0x1E69E88A0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v10;
  *v10 = v11;
  OUTLINED_FUNCTION_58_0(v10);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_69_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1BF8E9670()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (!v0)
  {
    v9 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8E9770()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_4();
  return v2();
}

uint64_t sub_1BF8E9798()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_77();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_1BF8E982C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8D5C68;

  return NoOpSuggestionFilter.filter(suggestion:environment:)();
}

uint64_t PerSuggestionFilter.filter(suggestion:environment:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 496) = a1;
  *(v2 + 504) = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8E98DC()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 496);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_83();
  v6 = v5(v4, v2);
  sub_1BF8C4A08(v6 + 56, v0 + 16);

  sub_1BF8EE390(v0 + 240, v0 + 456, &qword_1EBDE8E10, &qword_1BF9B9980);
  sub_1BF8E9F70(v0 + 16);
  if (*(v0 + 480))
  {
    sub_1BF8C2C9C((v0 + 456), v0 + 416);
    v7 = *(v0 + 448);
    __swift_project_boxed_opaque_existential_1((v0 + 416), *(v0 + 440));
    v8 = *(OUTLINED_FUNCTION_83() + 8);
    OUTLINED_FUNCTION_84();
    v25 = (v9 + *v9);
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    *(v0 + 512) = v12;
    *v12 = v0;
    v12[1] = sub_1BF8E9B90;
    v13 = *(v0 + 504);
    v14 = OUTLINED_FUNCTION_82(*(v0 + 496));

    return v25(v14);
  }

  else
  {
    v16 = *(v0 + 496);
    sub_1BF8EE3F8(v0 + 456, &qword_1EBDE8E10, &qword_1BF9B9980);
    v18 = v1[3];
    v17 = v1[4];
    __swift_project_boxed_opaque_existential_1(v16, v18);
    v19 = *(v17 + 56);
    OUTLINED_FUNCTION_84();
    v26 = (v20 + *v20);
    v22 = *(v21 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 520) = v23;
    *v23 = v24;
    v23[1] = sub_1BF8E9CE0;

    return v26(v0 + 352, v18, v17);
  }
}

uint64_t sub_1BF8E9B90()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 512);
  v9 = *v0;
  *(v2 + 345) = v4;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF8E9C84()
{
  OUTLINED_FUNCTION_7();
  __swift_destroy_boxed_opaque_existential_1((v0 + 416));
  v1 = *(v0 + 345);
  OUTLINED_FUNCTION_4();

  return v2();
}

uint64_t sub_1BF8E9CE0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 520);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF8E9DC8()
{
  OUTLINED_FUNCTION_45();
  v13 = v0;
  v1 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 368);
  *(v0 + 320) = v1;
  *(v0 + 288) = *(v0 + 352);
  *(v0 + 329) = *(v0 + 393);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);

  sub_1BF8D768C(v0 + 288);
  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v4 = sub_1BF9B47C8();
  __swift_project_value_buffer(v4, qword_1EDBF5570);

  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5038();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    v9 = sub_1BF8DE810(v3, v2, &v12);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "No pooled suggestion filter on %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4();

  return v10(1);
}

uint64_t sub_1BF8E9FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF8D59E4;

  return PerSuggestionFilter.filter(suggestion:environment:)(a1, a2);
}

uint64_t UnionSuggestionFilter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t UnionSuggestionFilter.filter(suggestion:environment:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8EA0C8()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 112) + 16);
  sub_1BF8D2004(*(v0 + 96), v0 + 16);
  sub_1BF8D2004(v1, v0 + 56);
  v3 = swift_allocObject();
  *(v0 + 120) = v3;
  sub_1BF8C2C9C((v0 + 16), v3 + 16);
  sub_1BF8C2C9C((v0 + 56), v3 + 56);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1BF8EA1E0;
  OUTLINED_FUNCTION_49();

  return (sub_1BF8E92D4)();
}

void sub_1BF8EA1E0()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  *v4 = *v1;
  *(v3 + 136) = v7;

  if (v0)
  {
  }

  else
  {
    v8 = *(v3 + 120);

    OUTLINED_FUNCTION_49();

    MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1BF8EA30C()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  v3 = (v1 + 32);
  do
  {
    v4 = v2;
    if (!v2)
    {
      break;
    }

    v5 = *v3++;
    --v2;
  }

  while ((v5 & 1) != 0);
  v6 = v4 == 0;

  OUTLINED_FUNCTION_4();

  return v7(v6);
}

uint64_t sub_1BF8EA38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF8EA3B0, 0, 0);
}

uint64_t sub_1BF8EA3B0()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[2];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = *(OUTLINED_FUNCTION_83() + 8);
  OUTLINED_FUNCTION_84();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1BF8EA4C4;
  v8 = v0[4];
  v9 = OUTLINED_FUNCTION_82(v0[3]);

  return v11(v9);
}

uint64_t sub_1BF8EA4C4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = v1;
  v3 = *(v1 + 40);
  v9 = *v0;
  *(v2 + 48) = v4;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BF8EA5B8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B70, &unk_1BF9B8690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BF9B6370;
  *(v2 + 32) = v1;
  OUTLINED_FUNCTION_4();

  return v3();
}

uint64_t UnionSuggestionFilter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t UnionSuggestionFilter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BF8EA698(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF8D5C68;

  return UnionSuggestionFilter.filter(suggestion:environment:)(a1, a2);
}

uint64_t sub_1BF8EA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E40, &qword_1BF9B9B68);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8EA85C, 0, 0);
}

uint64_t sub_1BF8EAA58()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EAB54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81();
  if (!v1)
  {
    v10 = v2[26];
    v11 = v2[27];
    v12 = OUTLINED_FUNCTION_19_4();
    v13(v12);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_86_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_32_2();
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[28];
  if (!isUniquelyReferenced_nonNull_native || (OUTLINED_FUNCTION_79(), !(v7 ^ v3 | v6)))
  {
    OUTLINED_FUNCTION_31_2();
    sub_1BF8DCEAC();
    v5 = v8;
  }

  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_30_1();
    if (v7 == v3)
    {
      swift_arrayInitWithCopy();

      if (!v0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_78_0();
      if (!v3)
      {
        *(v5 + 16) = v9;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE6DAD8]();
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  v2[28] = v5;
  v16 = *(MEMORY[0x1E69E8710] + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_20_3(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_11_6(v18);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DAD8]();
}

uint64_t sub_1BF8EACDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E70, &qword_1BF9B9C88);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8EADF8, 0, 0);
}

uint64_t sub_1BF8EAFF4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EB0F0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81();
  if (!v1)
  {
    v15 = v2[26];
    v16 = v2[27];
    v17 = OUTLINED_FUNCTION_19_4();
    v18(v17);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_86_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_32_2();
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[28];
  if (!isUniquelyReferenced_nonNull_native || (OUTLINED_FUNCTION_79(), !(v7 ^ v3 | v6)))
  {
    OUTLINED_FUNCTION_31_2();
    sub_1BF8DD93C(v8, v9, v10, v11);
    v5 = v12;
  }

  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_30_1();
    if (v7 == v3)
    {
      memcpy((v5 + v13 + 32), (v1 + 32), v0);

      if (!v0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_78_0();
      if (!v3)
      {
        *(v5 + 16) = v14;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE6DAD8]();
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  v2[28] = v5;
  v21 = *(MEMORY[0x1E69E8710] + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_20_3(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_11_6(v23);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DAD8]();
}

uint64_t sub_1BF8EB26C()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[26];
  v2 = v0[27];
  v3 = OUTLINED_FUNCTION_19_4();
  v4(v3);
  v5 = v0[15];

  OUTLINED_FUNCTION_77();

  return v6();
}

uint64_t sub_1BF8EB2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E60, &qword_1BF9B9C28);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8EB410, 0, 0);
}

uint64_t sub_1BF8EB60C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EB708()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81();
  if (!v1)
  {
    v10 = v2[26];
    v11 = v2[27];
    v12 = OUTLINED_FUNCTION_19_4();
    v13(v12);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_86_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_32_2();
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[28];
  if (!isUniquelyReferenced_nonNull_native || (OUTLINED_FUNCTION_79(), !(v7 ^ v3 | v6)))
  {
    OUTLINED_FUNCTION_31_2();
    sub_1BF8DDA24();
    v5 = v8;
  }

  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_30_1();
    if (v7 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8B68, &qword_1BF9B9C40);
      OUTLINED_FUNCTION_85();

      if (!v0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_78_0();
      if (!v3)
      {
        *(v5 + 16) = v9;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE6DAD8]();
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  v2[28] = v5;
  v16 = *(MEMORY[0x1E69E8710] + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_20_3(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_11_6(v18);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DAD8]();
}

uint64_t sub_1BF8EB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[17] = a2;
  v7[18] = a3;
  v7[16] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E20, &unk_1BF9B9AF0);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8EB9AC, 0, 0);
}

uint64_t sub_1BF8EBBA8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EBCA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81();
  if (!v1)
  {
    v10 = v2[26];
    v11 = v2[27];
    v12 = OUTLINED_FUNCTION_19_4();
    v13(v12);

    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_86_0();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_32_2();
  if (v3)
  {
    __break(1u);
    goto LABEL_19;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[28];
  if (!isUniquelyReferenced_nonNull_native || (OUTLINED_FUNCTION_79(), !(v7 ^ v3 | v6)))
  {
    OUTLINED_FUNCTION_31_2();
    sub_1BF8DDEC8();
    v5 = v8;
  }

  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_30_1();
    if (v7 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8990, &qword_1BF9B8498);
      OUTLINED_FUNCTION_85();

      if (!v0)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_78_0();
      if (!v3)
      {
        *(v5 + 16) = v9;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE6DAD8]();
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_15:
  v2[28] = v5;
  v16 = *(MEMORY[0x1E69E8710] + 4);
  v17 = swift_task_alloc();
  v18 = OUTLINED_FUNCTION_20_3(v17);
  *v18 = v19;
  OUTLINED_FUNCTION_11_6(v18);
  OUTLINED_FUNCTION_86_0();

  return MEMORY[0x1EEE6DAD8]();
}

uint64_t sub_1BF8EBE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v7[20] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200) - 8) + 64) + 15;
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E48, &qword_1BF9B9BC8);
  v7[29] = v9;
  v10 = *(v9 - 8);
  v7[30] = v10;
  v11 = *(v10 + 64) + 15;
  v7[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8EBF48, 0, 0);
}

uint64_t sub_1BF8EC1CC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 264);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EC2C8()
{
  v1 = v0[18];
  if (v1)
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v37 = v0[18];
      }

      v2 = sub_1BF9B5448();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v0[33];
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      if (v3 < 0)
      {
        v38 = v0[33];
      }

      v5 = sub_1BF9B5448();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = v5 + v2;
    if (__OFADD__(v5, v2))
    {
      __break(1u);
      goto LABEL_46;
    }

    v7 = v0[33];
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v4)
      {
        v8 = v3 & 0xFFFFFFFFFFFFFF8;
        v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v9 >= v6)
        {
          v40 = v0[33];
          goto LABEL_21;
        }

        goto LABEL_16;
      }
    }

    else if (!v4)
    {
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
      v15 = *(v8 + 16);
LABEL_20:
      v18 = v0[33];
      v40 = sub_1BF9B52E8();
      v8 = v40 & 0xFFFFFFFFFFFFFF8;
      v9 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_21:
      v19 = *(v8 + 16);
      v20 = v9 - v19;
      if (v1 >> 62)
      {
        v22 = sub_1BF9B5448();
        if (v22)
        {
          v23 = v22;
          v24 = sub_1BF9B5448();
          if (v20 < v24)
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          if (v23 < 1)
          {
LABEL_50:
            __break(1u);
            return MEMORY[0x1EEE6DAD8]();
          }

          v21 = v24;
          v39 = v8;
          v25 = v8 + 8 * v19 + 32;
          sub_1BF8EEBD4();
          for (i = 0; i != v23; ++i)
          {
            v27 = v0[32];
            v28 = sub_1BF980454(v0 + 11, i, v1);
            v30 = *v29;

            (v28)(v0 + 11, 0);
            *(v25 + 8 * i) = v30;
          }

          v8 = v39;
          goto LABEL_31;
        }
      }

      else
      {
        v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          if (v20 < v21)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          type metadata accessor for Signal();
          swift_arrayInitWithCopy();
LABEL_31:

          if (v21 >= v2)
          {
            if (v21 <= 0)
            {
              goto LABEL_36;
            }

            v31 = *(v8 + 16);
            v32 = __OFADD__(v31, v21);
            v33 = v31 + v21;
            if (!v32)
            {
              *(v8 + 16) = v33;
              goto LABEL_36;
            }

            goto LABEL_47;
          }

LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      if (v2 <= 0)
      {
LABEL_36:
        v0[33] = v40;
        v34 = *(MEMORY[0x1E69E8710] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_26_0();
        v0[34] = v35;
        *v35 = v36;
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_49();

        return MEMORY[0x1EEE6DAD8]();
      }

      goto LABEL_46;
    }

    v16 = v0[33];
    if (v3 < 0)
    {
      v17 = v0[33];
    }

    sub_1BF9B5448();
    goto LABEL_20;
  }

  v10 = v0[28];
  v11 = v0[27];
  (*(v0[30] + 8))(v0[31], v0[29]);

  OUTLINED_FUNCTION_4();
  v13 = v0[33];

  return v12(v13);
}

uint64_t sub_1BF8EC614()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[28];
  v2 = v0[27];
  (*(v0[30] + 8))(v0[31], v0[29]);
  v3 = v0[19];

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF8EC6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF8EC6D0, 0, 0);
}

uint64_t sub_1BF8EC6D0()
{
  OUTLINED_FUNCTION_70_0();
  v15 = v1;
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_55_1();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_18_2(v2);
    v3 = *(MEMORY[0x1E69D3548] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_60_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E38, &qword_1BF9C8BD0);
    OUTLINED_FUNCTION_38_2();
    *v3 = v5;
    v3[1] = sub_1BF8EC840;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_68_1();

    return MEMORY[0x1EEE40F70]();
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_59_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_3(v10);

    return v13(v12);
  }
}

uint64_t sub_1BF8EC840()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8EC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF8EC968, 0, 0);
}

uint64_t sub_1BF8EC968()
{
  OUTLINED_FUNCTION_70_0();
  v15 = v1;
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_55_1();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_18_2(v2);
    v3 = *(MEMORY[0x1E69D3548] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_60_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E68, &qword_1BF9B9C68);
    OUTLINED_FUNCTION_38_2();
    *v3 = v5;
    v3[1] = sub_1BF8EC840;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_68_1();

    return MEMORY[0x1EEE40F70]();
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_59_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_3(v10);

    return v13(v12);
  }
}

uint64_t sub_1BF8ECAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF8ECB00, 0, 0);
}

uint64_t sub_1BF8ECB00()
{
  OUTLINED_FUNCTION_70_0();
  v15 = v1;
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_55_1();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_18_2(v2);
    v3 = *(MEMORY[0x1E69D3548] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_60_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E58, &qword_1BF9B9C08);
    OUTLINED_FUNCTION_38_2();
    *v3 = v5;
    v3[1] = sub_1BF8EC840;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_68_1();

    return MEMORY[0x1EEE40F70]();
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_59_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_3(v10);

    return v13(v12);
  }
}

uint64_t sub_1BF8ECC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF8ECC98, 0, 0);
}

uint64_t sub_1BF8ECC98()
{
  OUTLINED_FUNCTION_70_0();
  v15 = v1;
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_55_1();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_18_2(v2);
    v3 = *(MEMORY[0x1E69D3548] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_60_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E18, &qword_1BF9B9AD0);
    OUTLINED_FUNCTION_38_2();
    *v3 = v5;
    v3[1] = sub_1BF8EC840;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_68_1();

    return MEMORY[0x1EEE40F70]();
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_59_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_3(v10);

    return v13(v12);
  }
}

uint64_t sub_1BF8ECE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF8ECE30, 0, 0);
}

uint64_t sub_1BF8ECE30()
{
  OUTLINED_FUNCTION_70_0();
  v15 = v1;
  OUTLINED_FUNCTION_45();
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_55_1();
    v2 = swift_allocObject();
    OUTLINED_FUNCTION_18_2(v2);
    v3 = *(MEMORY[0x1E69D3548] + 4);

    v4 = swift_task_alloc();
    OUTLINED_FUNCTION_60_1(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8C20, &qword_1BF9B8728);
    OUTLINED_FUNCTION_38_2();
    *v3 = v5;
    v3[1] = sub_1BF8ECFA0;
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_68_1();

    return MEMORY[0x1EEE40F70]();
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    v8 = *(v7 + 4);
    v9 = swift_task_alloc();
    v10 = OUTLINED_FUNCTION_59_1(v9);
    *v10 = v11;
    v12 = OUTLINED_FUNCTION_17_3(v10);

    return v13(v12);
  }
}

uint64_t sub_1BF8ECFA0()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BF8ED0A0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  OUTLINED_FUNCTION_4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BF8ED18C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[11];
  sub_1BF8BFFE0(v0[9], v0[10]);
  v2 = v0[7];
  OUTLINED_FUNCTION_4();

  return v3();
}

uint64_t sub_1BF8ED1F0()
{
  OUTLINED_FUNCTION_45();
  v27 = v0;
  v1 = v0[15];

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v2 = v0[17];
  v3 = sub_1BF9B47C8();
  __swift_project_value_buffer(v3, qword_1EDBF5570);
  v4 = OUTLINED_FUNCTION_83();
  v5 = sub_1BF9B47A8();
  v6 = sub_1BF9B5048();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    v0[8] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E30, &unk_1BF9B9B10);
    v11 = sub_1BF9B4B08();
    v13 = sub_1BF8DE810(v11, v12, &v26);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1BF8B8000, v5, v6, "Timeout occurred. %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }

  v14 = v0[17];
  v15 = v0[14];
  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];

  v19 = v17(v15);

  v20 = OUTLINED_FUNCTION_56_1();
  sub_1BF8BFFE0(v20, v21);
  v22 = OUTLINED_FUNCTION_56_1();
  sub_1BF8BFFE0(v22, v23);
  OUTLINED_FUNCTION_4();

  return v24(v19);
}

uint64_t sub_1BF8ED3D0(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BF8EF118;

  return v8(a3);
}

uint64_t sub_1BF8ED4C8(int *a1, uint64_t a2, uint64_t a3)
{
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BF8ED5C0;

  return v8(a3);
}

uint64_t sub_1BF8ED5C0()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  OUTLINED_FUNCTION_4();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1BF8ED6AC()
{
  OUTLINED_FUNCTION_7();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BF8D5B7C;

  return sub_1BF8EA38C(v3, v0 + 16, v0 + 56);
}

uint64_t dispatch thunk of SuggestionFilter.filter(suggestion:environment:)()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 8);
  OUTLINED_FUNCTION_84();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1BF8D59E4;
  v7 = OUTLINED_FUNCTION_56_1();

  return v9(v7);
}

uint64_t sub_1BF8ED92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EA740(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BF8EDA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EC6A8(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BF8EDAF8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF8EF100;

  return sub_1BF8ED3D0(a2, a3, a4);
}

uint64_t sub_1BF8EDBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EACDC(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BF8EDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EC940(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BF8EDD74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF8EF100;

  return sub_1BF8ED3D0(a2, a3, a4);
}

uint64_t sub_1BF8EDE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EB2F4(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BF8EDF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8ECAD8(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BF8EDFF0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF8EF100;

  return sub_1BF8ED3D0(a2, a3, a4);
}

uint64_t sub_1BF8EE0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8EB890(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BF8EE180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_16_2();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_2_6(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EE210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8ECC70(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BF8EE2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_8_3();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_5(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EE390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BF8EE3F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BF8EE458(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF8EF100;

  return sub_1BF8ED3D0(a2, a3, a4);
}

uint64_t sub_1BF8EE508()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return v4(v3);
}

uint64_t sub_1BF8EE5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_16_2();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_2_6(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t objectdestroy_25Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[5])
  {
    v2 = v0[6];
  }

  v3 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  OUTLINED_FUNCTION_54_3();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1BF8EE684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_8_3();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_5(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t objectdestroy_35Tm()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  OUTLINED_FUNCTION_55_1();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1BF8EE754()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return v4(v3);
}

uint64_t sub_1BF8EE7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EE8CC;

  return sub_1BF8EBE2C(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BF8EE8CC()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_1BF8EE9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_16_2();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_2_6(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_1BF8EF100;

  return sub_1BF8ECE08(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_1BF8EEB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_8_3();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_5(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

unint64_t sub_1BF8EEBD4()
{
  result = qword_1EBDE8E50;
  if (!qword_1EBDE8E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE8C20, &qword_1BF9B8728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE8E50);
  }

  return result;
}

uint64_t sub_1BF8EEC38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BF8EF100;

  return sub_1BF8ED4C8(a2, a3, a4);
}

uint64_t sub_1BF8EECE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return v4(v3);
}

uint64_t sub_1BF8EED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_16_2();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_2_6(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EEE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_8_3();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_5(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EEEA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return v4(v3);
}

uint64_t sub_1BF8EEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_16_2();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_2_6(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EEFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_53_1();
  OUTLINED_FUNCTION_41_1();
  OUTLINED_FUNCTION_8_3();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_15_0(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_5(v13);
  OUTLINED_FUNCTION_40_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1BF8EF060()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_61_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_5(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_6_5(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_10_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = v13[22];
  v20 = v13[21];
  v21 = v13[26];
  v16 = v13[19];
  v15 = v13[20];
  v17 = v13[18];
  __swift_storeEnumTagSinglePayload(v13[27], 1, 1, a12);

  return sub_1BF8D2004(v12, (v13 + 2));
}

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v2 + 200);
  v5 = *(v2 + 184);
  return v3;
}

void OUTLINED_FUNCTION_21_3(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[27];
  v4[11] = 1;
  v4[12] = a1;
  v4[13] = a4;
}

uint64_t OUTLINED_FUNCTION_25_1()
{
  v3 = **(v0 + 128);

  return sub_1BF9B4EB8();
}

void OUTLINED_FUNCTION_36_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *a10 = 0;
  a10[1] = 0;
  *(v10 + 72) = v12;
  *(v10 + 80) = v11;
}

uint64_t OUTLINED_FUNCTION_58_0(uint64_t result)
{
  *(result + 8) = v1;
  *(v3 + 16) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_0()
{

  return sub_1BF9B4E28();
}

uint64_t OUTLINED_FUNCTION_72_0()
{

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_73_0()
{
}

uint64_t OUTLINED_FUNCTION_75_0()
{
  v2 = *(v0 + 24);

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_arrayInitWithCopy();
}

double CandidateSuggestionFactory.create(suggestionId:params:objective:deliveryVehicle:preference:invocationType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v34 = a7;
  v16 = type metadata accessor for ActionIdentifier();
  v17 = OUTLINED_FUNCTION_16_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(a4) = *a4;
  v22 = *(a5 + 32);
  *v21 = a1;
  v21[1] = a2;
  v23 = a5[1];
  v25 = *a6;
  v24 = a6[1];
  v32 = *a5;
  v33 = v25;
  v30 = v23;
  v31 = v24;
  swift_storeEnumTagMultiPayload();
  v38[0] = a4;
  v36[0] = v32;
  v36[1] = v30;
  v37 = v22;
  v35[0] = v33;
  v35[1] = v31;
  v26 = *(a9 + 16);

  v27 = v26(v21, a3, v38, v36, v35, v34, a9);
  OUTLINED_FUNCTION_0_5();
  sub_1BF8F13F0(v21, v28);
  if (v27)
  {
    sub_1BF8C5690(v27, a8);
  }

  else
  {
    *(a8 + 32) = 0;
    result = 0.0;
    *a8 = 0u;
    *(a8 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF8EF520()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8F19D8;

  return CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)();
}

uint64_t CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_14_2();
  *(v3 + 112) = v5;
  *(v3 + 120) = v1;
  *(v3 + 104) = v6;
  *(v3 + 96) = v7;
  *(v3 + 88) = v8;
  v9 = *(*(type metadata accessor for SiriSuggestions.IntentQuery(0) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *(v2 + 16);
  *(v3 + 136) = *v2;
  *(v3 + 152) = v11;
  v12 = v0[1];
  *(v3 + 168) = *v0;
  *(v3 + 128) = v10;
  *(v3 + 50) = *v4;
  *(v3 + 51) = *(v2 + 32);
  *(v3 + 184) = v12;
  v13 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

{
  OUTLINED_FUNCTION_14_2();
  v6 = v5;
  *(v3 + 104) = v7;
  *(v3 + 112) = v1;
  *(v3 + 96) = v8;
  *(v3 + 88) = v9;
  v10 = type metadata accessor for SiriSuggestions.Intent(0);
  *(v3 + 120) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = *v6;
  *(v3 + 152) = *(v6 + 16);
  *(v3 + 50) = *(v6 + 24);
  *(v3 + 51) = *v4;
  v12 = *(v2 + 16);
  *(v3 + 160) = *v2;
  *(v3 + 176) = v12;
  *(v3 + 52) = *(v2 + 32);
  v13 = v0[1];
  *(v3 + 192) = *v0;
  *(v3 + 208) = v13;
  v14 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BF8EF6C0()
{
  v1 = *(v0 + 51);
  v2 = *(v0 + 50);
  v3 = *(v0 + 128);
  v19 = *(v0 + 112);
  v4 = *(v0 + 88);
  v16 = *(v0 + 184);
  v17 = *(v0 + 168);
  v14 = *(v0 + 152);
  v15 = *(v0 + 136);
  SiriSuggestions.Intent.getIntentQuery()();
  *(v0 + 49) = v2;
  *(v0 + 32) = v14;
  *(v0 + 16) = v15;
  *(v0 + 48) = v1;
  *(v0 + 56) = v17;
  *(v0 + 72) = v16;
  v5 = *(v19 + 32);
  v18 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_1BF8EF850;
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12.n128_u64[0] = *(v0 + 96);

  return v18(v8, v0 + 49, v0 + 16, v0 + 56, v10, v11, v12);
}

uint64_t sub_1BF8EF850()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 200);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  sub_1BF8F13F0(v3, type metadata accessor for SiriSuggestions.IntentQuery);

  v6 = OUTLINED_FUNCTION_5();

  return v7(v6);
}

uint64_t sub_1BF8EF96C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8EFA40;

  return CandidateSuggestionFactory.create(intentQuery:objective:confidenceScore:deliveryVehicle:preference:)();
}

uint64_t sub_1BF8EFA40()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t CandidateSuggestionFactory.create(intentQuery:objective:confidenceScore:deliveryVehicle:preference:)()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_14_2();
  *(v3 + 32) = v5;
  *(v3 + 40) = v1;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  v8 = type metadata accessor for ActionIdentifier();
  *(v3 + 48) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 160) = *v4;
  v10 = *(v2 + 16);
  *(v3 + 64) = *v2;
  *(v3 + 80) = v10;
  *(v3 + 161) = *(v2 + 32);
  v11 = v0[1];
  *(v3 + 96) = *v0;
  *(v3 + 112) = v11;
  v12 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1BF8EFBDC()
{
  v24 = v0;
  v1 = *(v0 + 161);
  v2 = *(v0 + 160);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v18 = *(v0 + 64);
  v19 = *(v0 + 96);
  v16 = *(v0 + 80);
  v17 = *(v0 + 112);
  sub_1BF8D2068(*(v0 + 16), v3);
  swift_storeEnumTagMultiPayload();
  v7 = sub_1BF9B4988();
  v20 = v2;
  v21[0] = v18;
  v21[1] = v16;
  v22 = v1;
  v23[1] = v17;
  v23[0] = v19;
  v8 = (*(v5 + 16))(v3, v7, &v20, v21, v23, v6, v5);
  *(v0 + 128) = v8;

  if (v8)
  {
    v9 = *(v0 + 16);
    v10 = swift_task_alloc();
    *(v0 + 136) = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1BF8EFDEC;

    return sub_1BF8F0FDC(&unk_1BF9B9CE8, v10, v8);
  }

  else
  {
    v13 = *(v0 + 56);
    OUTLINED_FUNCTION_0_5();
    sub_1BF8F13F0(v13, v14);

    v15 = *(v0 + 8);

    return v15(0);
  }
}

void sub_1BF8EFDEC()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = v4[18];
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v9 = v5[16];
    v10 = v5[17];

    v5[19] = v3;

    MEMORY[0x1EEE6DFA0](sub_1BF8EFF28, 0, 0);
  }
}

uint64_t sub_1BF8EFF28()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_0_5();
  sub_1BF8F13F0(v2, v3);

  v4 = OUTLINED_FUNCTION_5();

  return v5(v4);
}

uint64_t sub_1BF8EFF94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF8F19D8;

  return CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)();
}

uint64_t sub_1BF8F0154()
{
  v1 = *(v0 + 136);
  if (*(v0 + 50))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    *v4 = v1;
    v4[1] = v2;
    v4[2] = v3;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    v6 = v1;

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = *(v0 + 120);
    **(v0 + 128) = v1;
    swift_storeEnumTagMultiPayload();
    v8 = v1;
  }

  v9 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 160);
  *(v0 + 32) = v9;
  v10 = *(v0 + 208);
  *(v0 + 56) = *(v0 + 192);
  v11 = *(v0 + 52);
  v12 = *(v0 + 104);
  *(v0 + 49) = *(v0 + 51);
  *(v0 + 48) = v11;
  *(v0 + 72) = v10;
  v13 = *(v12 + 24);
  v22 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v0 + 224) = v15;
  *v15 = v0;
  v15[1] = sub_1BF8F031C;
  v16 = *(v0 + 104);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  v19 = *(v0 + 88);
  v20 = OUTLINED_FUNCTION_13_4(*(v0 + 128));

  return v22(v20);
}

uint64_t sub_1BF8F031C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 224);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  OUTLINED_FUNCTION_9_3();
  sub_1BF8F13F0(v3, v6);

  v7 = OUTLINED_FUNCTION_5();

  return v8(v7);
}

uint64_t CandidateSuggestionFactory.create(suggestionId:params:objective:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a4;
  memset(v8, 0, sizeof(v8));
  v9 = -1;
  v7[0] = 0uLL;
  v7[1] = xmmword_1BF9B9CC0;
  return CandidateSuggestionFactory.create(suggestionId:params:objective:deliveryVehicle:preference:)(a1, a2, a3, &v10, v8, v7, a5, a6);
}

uint64_t CandidateSuggestionFactory.create(suggestionId:params:objective:deliveryVehicle:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a5 + 32);
  v16 = *a4;
  v9 = *(a5 + 16);
  v14[0] = *a5;
  v14[1] = v9;
  v15 = v8;
  v10 = a6[1];
  v13[0] = *a6;
  v13[1] = v10;
  v12 = 1536;
  return (*(a8 + 8))(a1, a2, a3, &v16, v14, v13, &v12, a7, a8);
}

uint64_t sub_1BF8F04F8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  LOBYTE(v6) = MEMORY[0x1BFB5EBB0](v3, v4, v5, v6);
  swift_unknownObjectRelease();
  if (v6)
  {
    result = swift_unknownObjectRelease();
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  else
  {
    sub_1BF9B5398();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BF8F05B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for SiriSuggestions.Intent(0);
  v3[6] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8F0684, 0, 0);
}

uint64_t sub_1BF8F0684()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for SiriSuggestions.IntentQuery(0);
  sub_1BF8F1898(v4 + *(v5 + 32), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v6 = v0[3];
    sub_1BF8F1908(v0[5]);
    v7 = *(v3 + 24);
    v8 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v9 = OUTLINED_FUNCTION_7_5();
    v0[8] = v10(v9);
    swift_getObjectType();
    v11 = swift_task_alloc();
    v0[9] = v11;
    *v11 = v0;
    v11[1] = sub_1BF8F085C;
    OUTLINED_FUNCTION_13_4(v0[4]);

    return Context.setIntentQuery(_:)();
  }

  else
  {
    v13 = v0[3];
    sub_1BF8F1970(v0[5], v0[7]);
    v14 = *(v3 + 24);
    v15 = *(v3 + 32);
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v16 = (*(v15 + 16))(v14, v15);
    v0[10] = v16;
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_1BF8F09D4;
    v18 = v0[7];

    return static IntentParameterServiceUtils.getParametersFromIntent(intent:suggestion:checkForAllMandatoryParams:)(v18, v16, 0);
  }
}

uint64_t sub_1BF8F085C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 72);
  v3 = *(v1 + 64);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF8F095C()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  v2 = v0[5];
  sub_1BF8D2004(v0[3], v0[2]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BF8F09D4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v7 + 96) = v6;

  v8 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BF8F0ADC()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OUTLINED_FUNCTION_7_5();
  v5 = v4(v3);
  v7 = v6;
  v0[13] = v5;
  v0[14] = v6;
  v0[15] = swift_getObjectType();
  v8 = *(*(v7 + 8) + 8);
  v10 = sub_1BF9B4E28();

  return MEMORY[0x1EEE6DFA0](sub_1BF8F0B88, v10, v9);
}

uint64_t sub_1BF8F0B88()
{
  OUTLINED_FUNCTION_7();
  rawValue = v0[14]._rawValue;
  v1 = v0[15]._rawValue;
  v3 = v0[13]._rawValue;
  Context.setSuggestionParameters(from:)(v0[12]);
  swift_unknownObjectRelease();

  v4 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BF8F0BFC()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = OUTLINED_FUNCTION_7_5();
  v5 = v4(v3);
  v7 = v6;
  v0[16] = v5;
  swift_getObjectType();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_1BF8F0CCC;
  v9 = OUTLINED_FUNCTION_13_4(v0[7]);

  return Context.setIntent(_:)(v9, v10, v7);
}

uint64_t sub_1BF8F0CCC()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 136);
  v3 = *(v1 + 128);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF8F0DCC()
{
  OUTLINED_FUNCTION_7();
  v1 = v0[7];
  OUTLINED_FUNCTION_9_3();
  sub_1BF8F13F0(v2, v3);
  v4 = v0[7];
  v5 = v0[5];
  sub_1BF8D2004(v0[3], v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BF8F0E50()
{
  OUTLINED_FUNCTION_65();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_2(v6);
  *v7 = v8;
  v7[1] = sub_1BF8F0EF8;

  return sub_1BF8F05B4(v4, v2, v5);
}

uint64_t sub_1BF8F0EF8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1BF8F0FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF8F1000, 0, 0);
}

uint64_t sub_1BF8F1000()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[7];
  v2 = *(v0[9] + 16);
  v3 = MEMORY[0x1E69E7CC0];
  v0[11] = 0;
  v0[12] = v3;
  v0[10] = v2;
  if (v2)
  {
    v9 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_6_6(v5);
    v7 = v9;
  }

  else
  {
    v7 = v0[1];
    v6 = MEMORY[0x1E69E7CC0];
  }

  return v7(v6);
}

uint64_t sub_1BF8F112C()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v3 = v2;
  v4 = *(v2 + 104);
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 96);

    v8 = sub_1BF8F13D8;
  }

  else
  {
    v8 = sub_1BF8F1238;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BF8F1238()
{
  OUTLINED_FUNCTION_65();
  v1 = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 96);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v3 + 16);
    v14 = *(v0 + 96);
    sub_1BF8DDA24();
    v3 = v15;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    sub_1BF8DDA24();
    v3 = v16;
  }

  *(v3 + 16) = v4 + 1;
  sub_1BF8D5C74((v0 + 16), v3 + 40 * v4 + 32);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88) + 1;
  *(v0 + 88) = v6;
  *(v0 + 96) = v3;
  if (v6 == v5)
  {
    v7 = OUTLINED_FUNCTION_5();
  }

  else
  {
    v9 = *(v0 + 72) + 40 * v6;
    v17 = (*(v0 + 56) + **(v0 + 56));
    v10 = *(*(v0 + 56) + 4);
    v11 = swift_task_alloc();
    *(v0 + 104) = v11;
    *v11 = v0;
    v7 = OUTLINED_FUNCTION_6_6();
    v8 = v17;
  }

  return v8(v7);
}

uint64_t sub_1BF8F13F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_16_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 16);
  OUTLINED_FUNCTION_12_4();
  v18 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_15_2(v14);
  *v15 = v16;
  v15[1] = sub_1BF8EFA40;

  return v18(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of CandidateSuggestionFactory.create(intent:objective:confidenceScore:deliveryVehicle:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18_3();
  v18 = *(OUTLINED_FUNCTION_3_4(v12, v13, v14, v15, v16, v17) + 24);
  OUTLINED_FUNCTION_12_4();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_15_2(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_1_6(v23);
  OUTLINED_FUNCTION_17_4();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
}

{
  OUTLINED_FUNCTION_18_3();
  v18 = *(OUTLINED_FUNCTION_3_4(v12, v13, v14, v15, v16, v17) + 40);
  OUTLINED_FUNCTION_12_4();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_15_2(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_1_6(v23);
  OUTLINED_FUNCTION_17_4();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
}

uint64_t dispatch thunk of CandidateSuggestionFactory.create(intentQuery:objective:confidenceScore:deliveryVehicle:preference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18_3();
  v18 = *(OUTLINED_FUNCTION_3_4(v12, v13, v14, v15, v16, v17) + 32);
  OUTLINED_FUNCTION_12_4();
  v35 = v19 + *v19;
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v23 = OUTLINED_FUNCTION_15_2(v22);
  *v23 = v24;
  OUTLINED_FUNCTION_1_6(v23);
  OUTLINED_FUNCTION_17_4();

  return v31(v25, v26, v27, v28, v29, v30, v31, v32, a9, v35, a11, a12);
}

uint64_t sub_1BF8F1898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF8F1908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E78, &unk_1BF9B9DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF8F1970(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSuggestions.Intent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_6_6(uint64_t a1)
{
  *(a1 + 8) = sub_1BF8F112C;
  v2 = *(v1 + 64);
  return v1 + 16;
}

uint64_t ChannelGenerator.generateCandidateSuggestions(interaction:environment:factory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8F1A28()
{
  OUTLINED_FUNCTION_6();
  v18 = v0;
  v1 = v0[12];
  v16 = v0[11];
  v3 = v0[9];
  v2 = v0[10];
  type metadata accessor for ChannelCandidateSuggestionFactory();
  (*(v16 + 16))(&v17, v2);
  sub_1BF8D2004(v3, (v0 + 2));
  v0[13] = sub_1BF8F1CA8(&v17, v0 + 2);
  v4 = *(v16 + 24);
  OUTLINED_FUNCTION_84();
  v15 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1BF8F1B88;
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[8];
  v13 = OUTLINED_FUNCTION_26_3(v0[7]);

  return v15(v13);
}

uint64_t sub_1BF8F1B88()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_5();

  return v7(v6);
}

uint64_t sub_1BF8F1CA8(char *a1, uint64_t *a2)
{
  v12 = *a1;
  sub_1BF8D2004(a2, v11);
  v3 = type metadata accessor for DefaultCoreAnalyticsClient();
  v4 = swift_allocObject();
  type metadata accessor for ChannelGeneratorConfidenceLogger();
  v5 = swift_allocObject();
  v9 = v3;
  v10 = &protocol witness table for DefaultCoreAnalyticsClient;
  *&v8 = v4;
  sub_1BF8C2C9C(&v8, v5 + 16);
  type metadata accessor for ChannelCandidateSuggestionFactory();
  v6 = swift_allocObject();
  sub_1BF8F1D6C(&v12, v11, v5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v6;
}

uint64_t sub_1BF8F1D6C(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  sub_1BF8D2004(a2, v3 + 24);
  v8 = type metadata accessor for ChannelGeneratorConfidenceLogger();
  v9 = &off_1F3EFB7B8;
  *&v7 = a3;
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1BF8C2C9C(&v7, v3 + 64);
  return v3;
}

uint64_t sub_1BF8F1DE4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char *a4, __int128 *a5, double a6)
{
  v7 = v6;
  v11 = *a3;
  v12 = *a4;
  v20 = a5[1];
  v21 = *a5;
  v13 = *(a5 + 32);
  sub_1BF8D2004(v6 + 64, v28);
  v14 = __swift_project_boxed_opaque_existential_1(v28, v29);
  if (v11 <= 0xF7)
  {
    LOBYTE(v25[0]) = v11;
  }

  else
  {
    LOBYTE(v25[0]) = *(v6 + 16);
  }

  Channel.description.getter();
  v15 = *v14;
  sub_1BF938CF0();

  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_1BF8D2004(v7 + 24, v28);
  v16 = v29;
  v17 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v27 = v12;
  v25[0] = v21;
  v25[1] = v20;
  v26 = v13;
  if (v11 >= 0xF8)
  {
    v11 = *(v7 + 16);
  }

  v22 = xmmword_1BF9B9DE0;
  v23 = v11;
  v24 = a6;
  v18 = (*(v17 + 16))(a1, a2, &v27, v25, &v22, v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v18;
}

uint64_t Channel.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    sub_1BF9B5288();

    v7 = 0xD000000000000011;
    v4 = 0x6E776F6E6B6E75;
    switch(v1)
    {
      case 2:
        OUTLINED_FUNCTION_25_2();
        v4 = 0xD00000000000001ELL;
        break;
      case 3:
        OUTLINED_FUNCTION_25_2();
        v4 = 0xD00000000000001DLL;
        break;
      case 4:
        OUTLINED_FUNCTION_25_2();
        v4 = 0xD000000000000015;
        break;
      case 5:
        break;
      default:
        OUTLINED_FUNCTION_25_2();
        v4 = 0xD00000000000001FLL;
        break;
    }

    MEMORY[0x1BFB5DE90](v4, 0xE700000000000000);
    goto LABEL_19;
  }

  if (v1 >> 6 == 1)
  {
    v7 = 0x5F6C616E676973;
    if (v1)
    {
      v2 = 0x66654472656E776FLL;
    }

    else
    {
      v2 = 0x6E65746E49707061;
    }

    if (v1)
    {
      v3 = 0xEF6E6F6974696E69;
    }

    else
    {
      v3 = 0xEC00000069704174;
    }

    MEMORY[0x1BFB5DE90](v2, v3);
LABEL_19:

    return v7;
  }

  result = 0x74616E7265746C61;
  switch(*v0)
  {
    case 0x81:
      return result;
    case 0x82:
      result = 0x6E7275547478656ELL;
      break;
    case 0x83:
      result = 0x75747865746E6F63;
      break;
    case 0x84:
      result = 0x41746E6572727563;
      break;
    case 0x85:
      result = 0x6F69746163756465;
      break;
    default:
      OUTLINED_FUNCTION_30_2();
      result = v6 - 15;
      break;
  }

  return result;
}

uint64_t sub_1BF8F21AC()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 16);
  *(v0 + 16) = *v1;
  v4 = *v3;
  v5 = *(v1 + 32);
  *(v0 + 49) = -8;
  *(v0 + 50) = v4;
  *(v0 + 32) = v2;
  *(v0 + 48) = v5;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1BF8F22B8;

  return sub_1BF8F26E0();
}

uint64_t sub_1BF8F22B8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_1BF8F2398(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, double a5)
{
  *(v6 + 136) = a5;
  v7 = *(a4 + 16);
  *(v6 + 152) = *a4;
  *(v6 + 144) = v5;
  *(v6 + 128) = a1;
  *(v6 + 90) = *a2;
  *(v6 + 91) = *a3;
  *(v6 + 168) = v7;
  *(v6 + 92) = *(a4 + 32);
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_1BF8F23D8()
{
  v1 = *(v0 + 90);
  sub_1BF8D2004(*(v0 + 144) + 64, v0 + 16);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (v1 <= 0xF7)
  {
    v25 = *(v0 + 90);
  }

  else
  {
    v24 = *(*(v0 + 144) + 16);
  }

  Channel.description.getter();
  v3 = *(v0 + 136);
  v4 = *v2;
  sub_1BF938CF0();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v5 = *(v0 + 144);
  v6 = (v5 + 2);
  if (v1 <= 0xF7)
  {
    v6 = (v0 + 90);
  }

  v7 = *v6;
  v8 = *(v0 + 92);
  v9 = *(v0 + 91);
  v10 = *(v0 + 136);
  v11 = v5[6];
  v12 = v5[7];
  v21 = *(v0 + 168);
  v22 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1(v5 + 3, v11);
  *(v0 + 89) = v9;
  *(v0 + 72) = v21;
  *(v0 + 56) = v22;
  *(v0 + 88) = v8;
  *(v0 + 96) = xmmword_1BF9B9DE0;
  *(v0 + 112) = v7;
  *(v0 + 120) = v10;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_84();
  v23 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_1BF8F2600;
  v18 = *(v0 + 136);
  v19 = OUTLINED_FUNCTION_26_3(*(v0 + 128));

  return v23(v19, v0 + 89, v0 + 56, v0 + 96, v11, v12);
}

uint64_t sub_1BF8F2600()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v1 + 184);
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_5();

  return v6(v5);
}

uint64_t sub_1BF8F26E0()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 128) = v8;
  *(v1 + 136) = v0;
  *(v1 + 120) = v9;
  *(v1 + 112) = v10;
  *(v1 + 96) = v11;
  *(v1 + 104) = v12;
  v13 = *(type metadata accessor for ActionIdentifier() - 8);
  OUTLINED_FUNCTION_84();
  *(v1 + 144) = v14;
  *(v1 + 152) = *(v15 + 64);
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 224) = *v7;
  *(v1 + 225) = *v5;
  v16 = *(v3 + 16);
  *(v1 + 168) = *v3;
  *(v1 + 184) = v16;
  *(v1 + 226) = *(v3 + 32);
  v17 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1BF8F27D8()
{
  v37 = v0;
  v1 = (v0 + 224);
  v2 = *(v0 + 224);
  v30 = (v0 + 56);
  sub_1BF8D2004(*(v0 + 136) + 64, v0 + 16);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if (v2 <= 0xF7)
  {
    v4 = *v1;
  }

  else
  {
    v4 = *(*(v0 + 136) + 16);
  }

  LOBYTE(v32[0]) = v4;
  Channel.description.getter();
  v5 = *(v0 + 226);
  v6 = *(v0 + 225);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *v3;
  v28 = *(v0 + 184);
  v29 = *(v0 + 168);
  sub_1BF938CF0();

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1BF8D2004(v7 + 24, v30);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v30, v10);
  v31 = v6;
  v32[1] = v28;
  v32[0] = v29;
  v33 = v5;
  if (v2 >= 0xF8)
  {
    v1 = (*(v0 + 136) + 16);
  }

  v12 = *v1;
  v13 = *(v0 + 152);
  v14 = *(v0 + 160);
  v15 = *(v0 + 144);
  v17 = *(v0 + 120);
  v16 = *(v0 + 128);
  v18 = *(v0 + 112);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v34 = xmmword_1BF9B9DE0;
  v35 = v12;
  v36 = v18;
  v21 = (*(v11 + 16))(v20, v19, &v31, v32, &v34, v10, v11);
  *(v0 + 200) = v21;
  __swift_destroy_boxed_opaque_existential_1(v30);
  if (!v21)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF8F5A30(v20, v14);
  v22 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v0 + 208) = v24;
  sub_1BF8F770C(v14, v24 + v22, type metadata accessor for ActionIdentifier);
  v25 = (v24 + v23);
  *v25 = v17;
  v25[1] = v16;

  v26 = swift_task_alloc();
  *(v0 + 216) = v26;
  *v26 = v0;
  v26[1] = sub_1BF8F2A84;

  return sub_1BF8E93C4(v21, 0, 0, 0, &unk_1BF9B9E20, v24);
}

void sub_1BF8F2A84()
{
  OUTLINED_FUNCTION_65();
  v3 = v2;
  OUTLINED_FUNCTION_5_3();
  v5 = v4;
  v6 = v4[27];
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    v10 = v5[25];
    v9 = v5[26];
    v11 = v5[20];

    v12 = *(v7 + 8);

    v12(v3);
  }
}

uint64_t sub_1BF8F2BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for ActionIdentifier();
  v4[11] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v7 = *(*(type metadata accessor for SiriSuggestions.IntentQuery(0) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF8F2C94, 0, 0);
}

uint64_t sub_1BF8F2C94()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  sub_1BF8D2004(v0[7], (v0 + 2));
  sub_1BF8F5A30(v3, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BF8F770C(v0[12], v0[13], type metadata accessor for SiriSuggestions.IntentQuery);
    v4 = v0[5];
    v5 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
    v0[14] = (*(v5 + 8))(v4, v5);
    swift_getObjectType();
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1BF8F2E58;
    OUTLINED_FUNCTION_26_3(v0[13]);

    return Context.setIntentQuery(_:)();
  }

  else
  {
    sub_1BF8F7774(v0[12], type metadata accessor for ActionIdentifier);
    OUTLINED_FUNCTION_5_6();
    v9 = *(v8 + 4);
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v11 = OUTLINED_FUNCTION_7_6(v10);

    return v12(v11);
  }
}

uint64_t sub_1BF8F2E58()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5_3();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  swift_unknownObjectRelease();
  v6 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BF8F2F58()
{
  OUTLINED_FUNCTION_7();
  sub_1BF8F7774(*(v0 + 104), type metadata accessor for SiriSuggestions.IntentQuery);
  OUTLINED_FUNCTION_5_6();
  v2 = *(v1 + 4);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_7_6(v3);

  return v5(v4);
}