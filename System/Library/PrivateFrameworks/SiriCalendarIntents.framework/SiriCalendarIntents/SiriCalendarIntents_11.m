uint64_t sub_266633650@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = OUTLINED_FUNCTION_18_2(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_2666336C4(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007FAF8, type metadata accessor for CalendarEventAttendeeIntentNode);

  return MEMORY[0x2821C1928](a1, v2);
}

uint64_t sub_266633740(uint64_t a1)
{
  v2 = sub_266633334(&qword_28007FAF8, type metadata accessor for CalendarEventAttendeeIntentNode);

  return MEMORY[0x2821C1920](a1, v2);
}

uint64_t sub_2666337AC(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266633C60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_2666337CC()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633824()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

uint64_t sub_26663387C(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEventAttendeeIntentNode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2666338D8()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633930()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633988()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_2666339E0()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633A38()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633A90()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

uint64_t sub_266633AE8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266634024(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266633B08()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

void sub_266633B60()
{
  v1 = *v0;
  OUTLINED_FUNCTION_48_5();
  sub_266633D70();
  *v0 = v2;
}

uint64_t sub_266633BA8(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266634170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_266633BC8()
{
  v1 = *v0;
  sub_266633D70();
  *v0 = v2;
}

uint64_t sub_266633C20(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266634280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266633C40(uint64_t a1, int64_t a2, char a3)
{
  result = sub_266634380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_266633C60(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F990, &unk_26667A120);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2665C7428((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE38, &qword_266677248);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_266633D70()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(v7(0) - 8);
  if (v10)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v5(v8 + v23, v14, v19 + v23);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_266633F28()
{
  result = qword_28007F940;
  if (!qword_28007F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F940);
  }

  return result;
}

unint64_t sub_266633F7C()
{
  result = qword_28007F948;
  if (!qword_28007F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F948);
  }

  return result;
}

unint64_t sub_266633FD0()
{
  result = qword_28007F950;
  if (!qword_28007F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F950);
  }

  return result;
}

uint64_t sub_266634024(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD30, &qword_2666725F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_2665C7428((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E548, &qword_266674B08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266634170(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C0, &unk_266674E30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_2665C730C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E5C8, &unk_26667AC90);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266634280(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F9A0, &qword_26667A158);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_2665C7344((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266634380(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2665C71F4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDE)
  {
    if (a2 + 34 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 34) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 35;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v5 = v6 - 35;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 34) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
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
          *result = a2 + 34;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventVerb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventVerb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xD9)
  {
    if (a2 + 39 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 39) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 40;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x28;
  v5 = v6 - 40;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.CalendarEventAttributes(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 39 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 39) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xD9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xD8)
  {
    v6 = ((a2 - 217) >> 8) + 1;
    *result = a2 + 39;
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
          *result = a2 + 39;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2666348EC()
{
  result = sub_26666A588();
  if (v1 <= 0x3F)
  {
    result = sub_26666A108();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.JoinContact(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.EmailType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266634B28(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarNLv3Intent.AttendeeReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CalendarNLv3Intent.AttendeeReference(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266634D6C()
{
  result = qword_28007F9B8;
  if (!qword_28007F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9B8);
  }

  return result;
}

unint64_t sub_266634E08()
{
  result = qword_28007F9D0;
  if (!qword_28007F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9D0);
  }

  return result;
}

unint64_t sub_266634E60()
{
  result = qword_28007F9D8;
  if (!qword_28007F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9D8);
  }

  return result;
}

unint64_t sub_266634EB8()
{
  result = qword_28007F9E0;
  if (!qword_28007F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9E0);
  }

  return result;
}

unint64_t sub_266634F54()
{
  result = qword_28007F9F8;
  if (!qword_28007F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F9F8);
  }

  return result;
}

unint64_t sub_266634FAC()
{
  result = qword_28007FA00;
  if (!qword_28007FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA00);
  }

  return result;
}

unint64_t sub_266635004()
{
  result = qword_28007FA08;
  if (!qword_28007FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA08);
  }

  return result;
}

unint64_t sub_2666350A0()
{
  result = qword_28007FA20;
  if (!qword_28007FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA20);
  }

  return result;
}

unint64_t sub_2666350F8()
{
  result = qword_28007FA28;
  if (!qword_28007FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA28);
  }

  return result;
}

unint64_t sub_266635150()
{
  result = qword_28007FA30;
  if (!qword_28007FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA30);
  }

  return result;
}

unint64_t sub_2666351EC()
{
  result = qword_28007FA48;
  if (!qword_28007FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA48);
  }

  return result;
}

unint64_t sub_266635244()
{
  result = qword_28007FA50;
  if (!qword_28007FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA50);
  }

  return result;
}

unint64_t sub_2666352E4()
{
  result = qword_28007FA58;
  if (!qword_28007FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA58);
  }

  return result;
}

unint64_t sub_266635380()
{
  result = qword_28007FA70;
  if (!qword_28007FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA70);
  }

  return result;
}

unint64_t sub_2666353D8()
{
  result = qword_28007FA78;
  if (!qword_28007FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA78);
  }

  return result;
}

unint64_t sub_266635430()
{
  result = qword_28007FA80;
  if (!qword_28007FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA80);
  }

  return result;
}

unint64_t sub_2666354CC()
{
  result = qword_28007FA98;
  if (!qword_28007FA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FA98);
  }

  return result;
}

unint64_t sub_266635524()
{
  result = qword_28007FAA0;
  if (!qword_28007FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAA0);
  }

  return result;
}

unint64_t sub_26663557C()
{
  result = qword_28007FAA8;
  if (!qword_28007FAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAA8);
  }

  return result;
}

unint64_t sub_266635618()
{
  result = qword_28007FAC0;
  if (!qword_28007FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAC0);
  }

  return result;
}

unint64_t sub_266635670()
{
  result = qword_28007FAC8;
  if (!qword_28007FAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAC8);
  }

  return result;
}

unint64_t sub_2666356C8()
{
  result = qword_28007FAD0;
  if (!qword_28007FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAD0);
  }

  return result;
}

unint64_t sub_266635764()
{
  result = qword_28007FAE8;
  if (!qword_28007FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAE8);
  }

  return result;
}

unint64_t sub_2666357BC()
{
  result = qword_28007FAF0;
  if (!qword_28007FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FAF0);
  }

  return result;
}

unint64_t sub_266635810()
{
  result = qword_28007FB08;
  if (!qword_28007FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB08);
  }

  return result;
}

unint64_t sub_266635864()
{
  result = qword_28007FB10;
  if (!qword_28007FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB10);
  }

  return result;
}

unint64_t sub_2666358B8()
{
  result = qword_28007FB18;
  if (!qword_28007FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB18);
  }

  return result;
}

unint64_t sub_26663590C()
{
  result = qword_28007FB20;
  if (!qword_28007FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB20);
  }

  return result;
}

unint64_t sub_266635960()
{
  result = qword_28007FB28;
  if (!qword_28007FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB28);
  }

  return result;
}

unint64_t sub_2666359B4()
{
  result = qword_28007FB30;
  if (!qword_28007FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB30);
  }

  return result;
}

unint64_t sub_266635A08()
{
  result = qword_28007FB38;
  if (!qword_28007FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB38);
  }

  return result;
}

unint64_t sub_266635A5C()
{
  result = qword_28007FB40;
  if (!qword_28007FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB40);
  }

  return result;
}

unint64_t sub_266635AB0()
{
  result = qword_28007FB48;
  if (!qword_28007FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB48);
  }

  return result;
}

unint64_t sub_266635B04()
{
  result = qword_28007FB50;
  if (!qword_28007FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB50);
  }

  return result;
}

unint64_t sub_266635B58()
{
  result = qword_28007FB58;
  if (!qword_28007FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB58);
  }

  return result;
}

unint64_t sub_266635BAC()
{
  result = qword_28007FB60;
  if (!qword_28007FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB60);
  }

  return result;
}

unint64_t sub_266635C00()
{
  result = qword_28007FB68;
  if (!qword_28007FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB68);
  }

  return result;
}

unint64_t sub_266635C54()
{
  result = qword_28007FB70;
  if (!qword_28007FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB70);
  }

  return result;
}

unint64_t sub_266635CA8()
{
  result = qword_28007FB78;
  if (!qword_28007FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB78);
  }

  return result;
}

unint64_t sub_266635CFC()
{
  result = qword_28007FB80;
  if (!qword_28007FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB80);
  }

  return result;
}

unint64_t sub_266635D50()
{
  result = qword_28007FB88;
  if (!qword_28007FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB88);
  }

  return result;
}

unint64_t sub_266635DA4()
{
  result = qword_28007FB90;
  if (!qword_28007FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB90);
  }

  return result;
}

unint64_t sub_266635DF8()
{
  result = qword_28007FB98;
  if (!qword_28007FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FB98);
  }

  return result;
}

unint64_t sub_266635E4C()
{
  result = qword_28007FBA0;
  if (!qword_28007FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBA0);
  }

  return result;
}

unint64_t sub_266635EA0()
{
  result = qword_28007FBA8;
  if (!qword_28007FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBA8);
  }

  return result;
}

unint64_t sub_266635EF4()
{
  result = qword_28007FBB0;
  if (!qword_28007FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBB0);
  }

  return result;
}

unint64_t sub_266635F48()
{
  result = qword_28007FBB8;
  if (!qword_28007FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBB8);
  }

  return result;
}

unint64_t sub_266635F9C()
{
  result = qword_28007FBC0;
  if (!qword_28007FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FBC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_33()
{

  return swift_once();
}

void OUTLINED_FUNCTION_29_8()
{
  v2 = *(v0 + 16) + 1;

  sub_266633824();
}

uint64_t OUTLINED_FUNCTION_31_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_32_9()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_35_8()
{

  return sub_26666A1B8();
}

uint64_t OUTLINED_FUNCTION_42_7()
{

  return sub_26666CAC8();
}

uint64_t OUTLINED_FUNCTION_51_4()
{
  v5 = v3 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v0;

  return sub_2666334E8(v5, v2);
}

uint64_t OUTLINED_FUNCTION_52_4()
{
}

uint64_t OUTLINED_FUNCTION_58_0()
{
  *(v1 + 16) = v0;
  *(v5 - 112) = v1;
  v7 = *(v5 - 120);

  return sub_26663354C(v7, v1 + v4 + v2 * v3);
}

uint64_t OUTLINED_FUNCTION_59_1()
{

  return sub_26666A1B8();
}

uint64_t OUTLINED_FUNCTION_64_1()
{

  return sub_26666CAC8();
}

uint64_t OUTLINED_FUNCTION_68_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  *(v2 - 104) = (a2 - 32) | 0x8000000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_70_2()
{

  return sub_26666CB88();
}

void OUTLINED_FUNCTION_71_0()
{
  *(v1 - 128) = v0;

  sub_26663019C();
}

uint64_t OUTLINED_FUNCTION_72_0()
{
}

uint64_t OUTLINED_FUNCTION_73_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

id sub_26663660C(id a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = [v2 setDateTimeRange]) != 0)
  {
    v5 = v4;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    v6 = [a1 setDateTimeRange];
    sub_2665D23CC();
    v8 = v7;
  }

  else
  {
    v8 = [a1 setDateTimeRange];
  }

  v9 = v8;
  v30 = sub_26659A284(a1);
  v11 = v10;
  v29 = sub_26659A290(a1);
  v13 = v12;
  v14 = [a1 setLocation];
  v15 = sub_26659A2F8(a1);
  v16 = sub_26659A304(a1);
  v17 = [a1 removeLocation];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 BOOLValue];
  }

  else
  {
    v19 = 2;
  }

  v20 = [a1 updateAllOccurrences];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 BOOLValue];
  }

  else
  {
    v22 = 2;
  }

  if (v16)
  {
    v23 = 1;
  }

  else
  {
    v23 = 3;
  }

  if (v15)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  if (v13)
  {
    v25 = v29;
  }

  else
  {
    v25 = 0;
  }

  if (v11)
  {
    v26 = v30;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_266636A48(v26, v11, v25, v13, v9, v14, v15, 0, v24, v16, 0, v23, v19, v22);
  sub_2665671D8(v9);

  sub_2665671D8(v9);

  return v27;
}

id sub_26663684C(char a1, uint64_t a2, char a3)
{
  switch(a1)
  {
    case 1:
      v3 = OUTLINED_FUNCTION_0_42();
      v4 = 0;
      v13 = 0;
      v14 = 1;
      goto LABEL_23;
    case 2:
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_5_27();
      v15 = 1;
      goto LABEL_24;
    case 3:
      OUTLINED_FUNCTION_0_42();
      OUTLINED_FUNCTION_4_34();
      v16 = 1;
      return sub_266636A48(v3, v4, v13, v14, v15, v16, 0, 0, v19, v21, v23, v24[0], v24[1], v24[2]);
    case 4:
      if (a3)
      {
        v5 = 1;
      }

      else
      {
        v5 = a2;
      }

      v22 = 0;
      v25[2] = 2;
      *v25 = 515;
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      v20 = v6;
      v7 = OUTLINED_FUNCTION_3_34();
      v12 = v5;
      goto LABEL_20;
    case 5:
      if (a3)
      {
        v5 = 1;
      }

      else
      {
        v5 = a2;
      }

      *&v25[1] = 514;
      v20 = 3;
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      v25[0] = v6;
      v22 = v5;
      v7 = OUTLINED_FUNCTION_3_34();
      v12 = 0;
LABEL_20:
      v17 = sub_266636A48(v7, v8, v9, v10, v11, 0, v12, 0, v20, v22, 0, v25[0], v25[1], v25[2]);
      sub_2665671E8(v5, 0, v6);
      return v17;
    case 6:
      v21 = 0;
      v23 = 0;
      v24[2] = 3;
      *v24 = 515;
      v19 = 3;
      v3 = 0;
      v4 = 0;
      goto LABEL_22;
    default:
      v3 = OUTLINED_FUNCTION_0_42();
      v4 = 1;
LABEL_22:
      v13 = 0;
      v14 = 0;
LABEL_23:
      v15 = 0;
LABEL_24:
      v16 = 0;
      return sub_266636A48(v3, v4, v13, v14, v15, v16, 0, 0, v19, v21, v23, v24[0], v24[1], v24[2]);
  }
}

id sub_2666369A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCode:a1 userActivity:0];
  [v7 setConfirmationReason_];
  [v7 setUpdatedEvent_];
  sub_266582FEC(a3, v7);

  return v7;
}

id sub_266636A48(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, unint64_t a7, unint64_t a8, char a9, unint64_t a10, unint64_t a11, char a12, char a13, char a14)
{
  v15 = v14;
  v22 = sub_26659A284(v15);
  if (a2)
  {
    if (a2 == 1)
    {
      v51 = 0;
      v24 = 0;
    }

    else
    {
      v51 = a1;
      v24 = a2;
    }

    v52 = v24;
  }

  else
  {
    v51 = v22;
    v52 = v23;
  }

  sub_266567120(a1, a2);
  v25 = sub_26659A290(v15);
  v27 = v26;
  if (a4)
  {
    if (a4 == 1)
    {
      v50 = 0;
      v28 = 0;
    }

    else
    {
      v50 = a3;
      v28 = a4;
    }

    v27 = v28;
  }

  else
  {
    v50 = v25;
  }

  sub_266567120(a3, a4);
  v29 = [v15 setDateTimeRange];
  v30 = v29;
  if (a5 == 1)
  {
    v49 = 0;
  }

  else if (a5)
  {
    v49 = a5;
  }

  else
  {
    v31 = v29;
    v49 = v30;
  }

  sub_26654C590(a5);

  v32 = [v15 setLocation];
  v33 = v32;
  if (a6 == 1)
  {
    v46 = 0;
  }

  else if (a6)
  {
    v46 = a6;
  }

  else
  {
    v34 = v32;
    v46 = v33;
  }

  sub_26654C590(a6);

  v35 = sub_26659A2F8(v15);
  v36 = sub_266566E24(v35, a7, a8, a9);

  v37 = sub_26659A304(v15);
  v38 = sub_266566E24(v37, a10, a11, a12);

  v39 = [v15 removeLocation];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 BOOLValue];
  }

  else
  {
    v41 = 2;
  }

  if (a13 != 2)
  {
    if (a13 == 3)
    {
      v41 = 2;
    }

    else
    {
      v41 = a13 & 1;
    }
  }

  v42 = [v15 updateAllOccurrences];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 BOOLValue];
  }

  else
  {
    v44 = 2;
  }

  if (a14 != 2)
  {
    if (a14 == 3)
    {
      v44 = 2;
    }

    else
    {
      v44 = a14 & 1;
    }
  }

  sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
  return sub_266637070(v51, v52, v50, v27, v49, v46, v36, v38, v41, v44);
}

uint64_t sub_266636D30(char a1, void *a2, uint64_t a3, char a4, char a5)
{
  v7 = v5;
  switch(a1)
  {
    case 1:
      result = sub_2665F044C(a2);
      if (!v6)
      {
        OUTLINED_FUNCTION_0_42();
        goto LABEL_15;
      }

      return result;
    case 2:
      result = sub_2665F01A0(a2);
      if (!v6)
      {
        v13 = result;
        if (a5)
        {
          v14 = [v7 setDateTimeRange];
          if (v14)
          {
            v15 = v14;
            sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
            v16 = v13;
            sub_2665D23CC();
            v18 = v17;

            OUTLINED_FUNCTION_0_42();
            OUTLINED_FUNCTION_5_27();
            OUTLINED_FUNCTION_6_25();
            v27 = sub_266636A48(v19, v20, v21, v22, v23, v24, v25, v26, v66, v67, v68, v69[0], v69[1], v69[2]);

            return v27;
          }
        }

        v28 = v13;
        OUTLINED_FUNCTION_0_42();
        OUTLINED_FUNCTION_5_27();
        OUTLINED_FUNCTION_6_25();
        v27 = sub_266636A48(v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69[0], v69[1], v69[2]);

        goto LABEL_27;
      }

      return result;
    case 3:
      result = sub_2665F0414(a2);
      if (!v6)
      {
        v28 = result;
        OUTLINED_FUNCTION_0_42();
        OUTLINED_FUNCTION_4_34();
        v27 = sub_266636A48(v29, v30, v31, v32, v33, v28, 0, 0, v66, v67, v68, v69[0], v69[1], v69[2]);
LABEL_27:

        return v27;
      }

      return result;
    case 4:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (!v6)
        {
          v10 = result;
          a3 = 0;
          v11 = 1;
LABEL_23:
          OUTLINED_FUNCTION_1_41();
          v66 = v11;
          v50 = OUTLINED_FUNCTION_3_34();
          v55 = 0;
          v56 = v10;
          v57 = a3;
          goto LABEL_30;
        }
      }

      else
      {
        result = sub_2665F01D8(a2);
        if (!v6)
        {
          v10 = result;
          v11 = 2;
          goto LABEL_23;
        }
      }

      return result;
    case 5:
      if (a4)
      {
        result = sub_2665F0314(a2);
        if (v6)
        {
          return result;
        }

        v10 = result;
        a3 = 0;
        v11 = 1;
      }

      else
      {
        result = sub_2665F01D8(a2);
        if (v6)
        {
          return result;
        }

        v10 = result;
        v11 = 2;
      }

      *&v69[1] = 514;
      v69[0] = v11;
      v67 = v10;
      v68 = a3;
      OUTLINED_FUNCTION_2_35();
      OUTLINED_FUNCTION_6_25();
LABEL_30:
      v27 = sub_266636A48(v50, v51, v52, v53, v54, v55, v56, v57, v66, v67, v68, v69[0], v69[1], v69[2]);
      sub_2665671E8(v10, a3, v11);
      return v27;
    case 6:
      result = sub_2665F0564(a2);
      if (!v6)
      {
        v70 = result & 1;
        OUTLINED_FUNCTION_2_35();
        OUTLINED_FUNCTION_6_25();
        return sub_266636A48(v42, v43, v44, v45, v46, v47, v48, v49, v66, 0, 0, 3, 2, v70);
      }

      return result;
    default:
      result = sub_2665F044C(a2);
      if (v6)
      {
        return result;
      }

      OUTLINED_FUNCTION_1_41();
      v66 = 3;
LABEL_15:
      OUTLINED_FUNCTION_6_25();
      v27 = sub_266636A48(v34, v35, v36, v37, v38, v39, v40, v41, v66, v67, v68, v69[0], v69[1], v69[2]);

      return v27;
  }
}

unint64_t INUpdateEventIntentResponseCode.description.getter(uint64_t a1)
{
  v1 = 0xD00000000000001ELL;
  if (a1 != 7)
  {
    v1 = 0;
  }

  if (a1 == 6)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return v1;
  }
}

id sub_266637070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = v16;
  if (a2)
  {
    v18 = sub_26666C2F8();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTargetEventIdentifier_];

  if (a4)
  {
    v19 = sub_26666C2F8();
  }

  else
  {
    v19 = 0;
  }

  [v16 setSetTitle_];

  [v16 setSetDateTimeRange_];
  [v16 setSetLocation_];
  if (a7)
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v20 = sub_26666C488();
  }

  else
  {
    v20 = 0;
  }

  [v16 setAddParticipants_];

  if (a8)
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v21 = sub_26666C488();
  }

  else
  {
    v21 = 0;
  }

  [v16 setRemoveParticipants_];

  if (a9 == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v16 setRemoveLocation_];

  if (a10 == 2)
  {
    v23 = 0;
  }

  else
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  [v16 setUpdateAllOccurrences_];

  return v16;
}

BOOL sub_266637388(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_26666C768();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

void sub_2666373CC()
{

  v1 = sub_266637CC8(v0, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL);
  v2 = *(v1 + 16);
  if (v2)
  {
    v45 = MEMORY[0x277D84F90];
    sub_2666337AC(0, v2, 0);
    v3 = v45;
    v6 = sub_2666395B4(v1);
    v7 = 0;
    v8 = v1 + 64;
    v40 = v4;
    v41 = v2;
    v39 = v1 + 72;
    v42 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_41;
      }

      if (*(v1 + 36) != v4)
      {
        goto LABEL_42;
      }

      v44 = v4;
      v43 = v5;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v6);
      v12 = v1;
      v13 = *v11;
      v14 = v11[1];
      v15 = *(v10 + 8 * v6);

      v16 = sub_266637F2C(v13, v14, v15, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL);

      v18 = *(v45 + 16);
      v17 = *(v45 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2666337AC(v17 > 1, v18 + 1, 1);
      }

      *(v45 + 16) = v18 + 1;
      *(v45 + 8 * v18 + 32) = v16;
      v19 = 1 << *(v12 + 32);
      if (v6 >= v19)
      {
        goto LABEL_43;
      }

      v1 = v12;
      v8 = v42;
      v20 = *(v42 + 8 * v9);
      if ((v20 & (1 << v6)) == 0)
      {
        goto LABEL_44;
      }

      if (*(v1 + 36) != v44)
      {
        goto LABEL_45;
      }

      v21 = v20 & (-2 << (v6 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v39 + 8 * v9);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_2665E829C(v6, v44, v43 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        sub_2665E829C(v6, v44, v43 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v7;
      v6 = v19;
      v4 = v40;
      if (v7 == v41)
      {

        goto LABEL_22;
      }
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    v27 = 0;
    v28 = *(v3 + 16);
    v29 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28 == v27)
      {

        return;
      }

      if (v27 >= *(v3 + 16))
      {
        break;
      }

      v30 = v3 + 8 * v27;
      v31 = *(v30 + 32);
      v32 = *(v31 + 16);
      v33 = *(v29 + 16);
      if (__OFADD__(v33, v32))
      {
        goto LABEL_38;
      }

      v34 = *(v30 + 32);

      if (!swift_isUniquelyReferenced_nonNull_native() || v33 + v32 > *(v29 + 24) >> 1)
      {
        sub_2665C6184();
        v29 = v35;
      }

      if (*(v31 + 16))
      {
        if ((*(v29 + 24) >> 1) - *(v29 + 16) < v32)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = *(v29 + 16);
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_47;
          }

          *(v29 + 16) = v38;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_39;
        }
      }

      ++v27;
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
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
}

void sub_266637788()
{
  OUTLINED_FUNCTION_4_35();
  v1 = v0;
  v3 = v2;
  if (!sub_2665C485C(v2))
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v7 = sub_26666C168();
    __swift_project_value_buffer(v7, qword_28156D7E8);
    v8 = sub_26666C148();
    v9 = sub_26666C618();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266549000, v8, v9, "[ParticipantResolutionUtil] no participant on intent, returning notRequired", v10, 2u);
      MEMORY[0x266789690](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26666E050;
    sub_266552C44(0, &unk_28156C0C0, 0x277CD3EA0);
    *(v11 + 32) = [swift_getObjCClassFromMetadata() notRequired];
    goto LABEL_22;
  }

  sub_2665C4864(0, (v3 & 0xC000000000000001) == 0, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266788B60](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  if (sub_2665C485C(v3) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_26666E050;
    *(v6 + 32) = sub_2666383DC(v5, v1 & 1);

LABEL_22:
    OUTLINED_FUNCTION_5_28();
    return;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v12 = sub_26666C168();
  __swift_project_value_buffer(v12, qword_28156D7E8);
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_266549000, v13, v14, "[ParticipantResolutionUtil] more than one participant on intent, return success with skeletons", v15, 2u);
    MEMORY[0x266789690](v15, -1, -1);
  }

  v16 = sub_2665C485C(v3);
  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = v16;
  v23 = MEMORY[0x277D84F90];
  sub_26666C898();
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = objc_opt_self();
    v19 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x266788B60](v19, v3);
      }

      else
      {
        v20 = *(v3 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      [v18 successWithResolvedPerson_];

      sub_26666C868();
      v22 = *(v23 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    while (v17 != v19);
    goto LABEL_22;
  }

  __break(1u);
}

void sub_266637AD4()
{
  OUTLINED_FUNCTION_4_35();
  v5 = v4;
  v9 = MEMORY[0x277D84F90];
  sub_2665C485C(v4);
  OUTLINED_FUNCTION_3_35();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_5_28();
      return;
    }

    if (v2)
    {
      v6 = MEMORY[0x266788B60](v1, v5);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ([v6 type] == 1)
    {
      sub_26666C868();
      v8 = *(v9 + 16);
      OUTLINED_FUNCTION_2_36();
      sub_26666C8A8();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v1;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_266637BBC()
{
  OUTLINED_FUNCTION_4_35();
  v5 = v4;
  v12 = MEMORY[0x277D84F90];
  sub_2665C485C(v4);
  OUTLINED_FUNCTION_3_35();
  while (1)
  {
    if (v0 == v1)
    {
      OUTLINED_FUNCTION_5_28();
      return;
    }

    if (v2)
    {
      v6 = MEMORY[0x266788B60](v1, v5);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v6 = *(v5 + 8 * v1 + 32);
    }

    v7 = v6;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    v8 = [v6 personHandle];
    if (v8 && (v9 = v8, v10 = [v8 type], v9, v10 == 1))
    {
      sub_26666C868();
      v11 = *(v12 + 16);
      OUTLINED_FUNCTION_2_36();
      sub_26666C8A8();
      OUTLINED_FUNCTION_2_36();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }

    ++v1;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_266637CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v5 = sub_2665C485C();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x266788B60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = sub_26658160C(v7);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
    }

    else
    {
      v12 = a3;

      v11 = a2;
    }

    v14 = sub_2665C53A8(v11, v12);
    v15 = v4[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_25;
    }

    v18 = v13;
    if (v4[3] < v17)
    {
      sub_266639238(v17, 1);
      v4 = v31;
      v19 = sub_2665C53A8(v11, v12);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_27;
      }

      v14 = v19;
    }

    if (v18)
    {

      v22 = (v4[7] + 8 * v14);
      MEMORY[0x2667887C0](v21);
      if (*((*v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_26666E050;
      *(v23 + 32) = v8;
      v4[(v14 >> 6) + 8] |= 1 << v14;
      v24 = (v4[6] + 16 * v14);
      *v24 = v11;
      v24[1] = v12;
      *(v4[7] + 8 * v14) = v23;
      v25 = v4[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_26;
      }

      v4[2] = v27;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:

  result = sub_26666CB08();
  __break(1u);
  return result;
}

uint64_t sub_266637F2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1 == a4 && a2 == a5;
  if (v6 || (sub_26666CAC8() & 1) != 0)
  {
    if (a3 >> 62)
    {
      goto LABEL_49;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26666C768())
    {
      v8 = MEMORY[0x277D84F90];
      if (!i)
      {
        return MEMORY[0x277D84F90];
      }

      v42 = MEMORY[0x277D84F90];
      sub_266633C40(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v9 = 0;
      v10 = v42;
      v41 = a3 & 0xC000000000000001;
      v39 = a3 & 0xFFFFFFFFFFFFFF8;
      v40 = a3;
      v38 = a3 + 32;
      while (1)
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v41)
        {
          v12 = MEMORY[0x266788B60](v9, v40);
        }

        else
        {
          if (v9 >= *(v39 + 16))
          {
            goto LABEL_47;
          }

          v12 = *(v38 + 8 * v9);
        }

        v13 = v12;
        ++v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBC8, &qword_26667ACE8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_26666EED0;
        *(inited + 32) = [v13 personHandle];
        v15 = *(inited + 32);
        if (v15)
        {
          v16 = v15;
          MEMORY[0x2667887C0]();
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26666C4B8();
          }

          sub_26666C4E8();
        }

        swift_setDeallocating();
        sub_2666391F0(&qword_28007FBD0, &qword_26667ACF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_26666E050;
        *(v17 + 32) = v13;
        a3 = *(v42 + 16);
        v18 = *(v42 + 24);
        v19 = v13;
        if (a3 >= v18 >> 1)
        {
          sub_266633C40(v18 > 1, a3 + 1, 1);
        }

        *(v42 + 16) = a3 + 1;
        v20 = (v42 + 24 * a3);
        v20[4] = v19;
        v20[5] = v8;
        v20[6] = v17;
        if (v11 == i)
        {
          return v10;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      ;
    }

    __break(1u);
LABEL_51:
    if (!sub_26666C768())
    {
      return MEMORY[0x277D84F90];
    }

    goto LABEL_27;
  }

  if (a3 >> 62)
  {
    goto LABEL_51;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return MEMORY[0x277D84F90];
  }

LABEL_27:
  v21 = a3 & 0xC000000000000001;
  sub_2665C4864(0, (a3 & 0xC000000000000001) == 0, a3);
  if ((a3 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x266788B60](0, a3);
  }

  else
  {
    v22 = *(a3 + 32);
  }

  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E608, &unk_26667A130);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26666EED0;
  v24 = a3;
  v25 = sub_2665C485C(a3);
  v26 = MEMORY[0x277D84F90];
  if (!v25)
  {
    a3 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v27 = v25;
  v43 = MEMORY[0x277D84F90];
  result = sub_26666C898();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    do
    {
      if (v21)
      {
        v30 = MEMORY[0x266788B60](v29, v24);
      }

      else
      {
        v30 = *(v24 + 8 * v29 + 32);
      }

      v31 = v30;
      ++v29;
      v32 = [v30 personHandle];

      sub_26666C868();
      v33 = *(v43 + 16);
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    while (v27 != v29);
    a3 = v43;
LABEL_38:
    v34 = 0;
    v44 = v26;
    v35 = *(a3 + 16);
    while (v35 != v34)
    {
      if (v34 >= *(a3 + 16))
      {
        goto LABEL_48;
      }

      v36 = *(a3 + 8 * v34++ + 32);
      if (v36)
      {
        v37 = v36;
        MEMORY[0x2667887C0]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v26 = v44;
      }
    }

    *(v10 + 32) = v23;
    *(v10 + 40) = v26;
    *(v10 + 48) = v24;

    return v10;
  }

  __break(1u);
  return result;
}

id sub_2666383DC(char *a1, char a2)
{
  LOBYTE(i) = a2;
  v3 = a1;
  sub_26658160C(a1);
  if (v4)
  {

    v5 = sub_2666394DC(v3);
    if (v5)
    {
      v6 = sub_2665C485C(v5);

      if (!v6)
      {
        if (qword_28156C150 != -1)
        {
          swift_once();
        }

        v51 = sub_26666C168();
        __swift_project_value_buffer(v51, qword_28156D7E8);
        v52 = sub_26666C148();
        v53 = sub_26666C618();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&dword_266549000, v52, v53, "[ParticipantResolutionUtil] contactIdentifier is not nil participant is fully resolved, returning success", v54, 2u);
          MEMORY[0x266789690](v54, -1, -1);
        }

        v55 = [objc_opt_self() successWithResolvedPerson_];
        goto LABEL_74;
      }
    }
  }

  if (sub_2666394DC(v3))
  {
    sub_2666373CC();
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  if (qword_28156C150 != -1)
  {
    goto LABEL_87;
  }

LABEL_8:
  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);
  v3 = v3;

  v10 = sub_26666C148();
  v11 = sub_26666C618();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    v13 = sub_2666394DC(v3);
    if (v13)
    {
      v14 = sub_2665C485C(v13);
    }

    else
    {
      v14 = 0;
    }

    *(v12 + 4) = v14;

    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v8 + 16);

    _os_log_impl(&dword_266549000, v10, v11, "[ParticipantResolutionUtil] Single Participant has %ld siriMatches (%ld consolidated)", v12, 0x16u);
    MEMORY[0x266789690](v12, -1, -1);
  }

  else
  {
  }

  v15 = *(v8 + 16);
  if (!v15)
  {

    v20 = sub_26666C148();
    v21 = sub_26666C618();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266549000, v20, v21, "[ParticipantResolutionUtil] No contact matches found returning success with skeleton", v22, 2u);
      MEMORY[0x266789690](v22, -1, -1);
    }

    goto LABEL_73;
  }

  if (v15 == 1)
  {
    v17 = *(v8 + 40);
    v16 = *(v8 + 48);
    v18 = *(v8 + 32);

    v19 = sub_266638C80(v3, v18, v17, v16, i & 1);

    return v19;
  }

  v64 = *(v8 + 16);
  v23 = 0;
  v63 = v8 + 32;
  v24 = (v8 + 48);
  do
  {
    if (v64 == v23)
    {

      v20 = sub_26666C148();
      v56 = sub_26666C618();
      if (os_log_type_enabled(v20, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_266549000, v20, v56, "[ParticipantResolutionUtil] No matched contact contains an email handle, returning success with skeleton", v57, 2u);
        MEMORY[0x266789690](v57, -1, -1);
      }

LABEL_73:

      v55 = [objc_opt_self() successWithResolvedPerson_];
LABEL_74:

      return v55;
    }

    if (v23 >= *(v8 + 16))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
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
      swift_once();
      goto LABEL_8;
    }

    ++v23;
    v25 = v24 + 3;
    v26 = *(v24 - 1);
    i = *v24;
    v27 = *(v24 - 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v28 = v27;
    sub_266637AD4();
    v30 = sub_266637388(v29);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v24 = v25;
  }

  while (!v30);
  v31 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v31, v3))
  {
    i = swift_slowAlloc();
    *i = 0;
    _os_log_impl(&dword_266549000, v31, v3, "[ParticipantResolutionUtil] Disambiguating siri matches", i, 2u);
    MEMORY[0x266789690](i, -1, -1);
  }

  v32 = 0;
  v66 = MEMORY[0x277D84F90];
  v33 = v64;
  v62 = v8;
  while (v32 != v33)
  {
    if (v32 >= *(v8 + 16))
    {
      goto LABEL_80;
    }

    v34 = *(v63 + 24 * v32 + 16);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v50 = *(v63 + 24 * v32 + 16);
      }

      v35 = sub_26666C768();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    i = v66 >> 62;
    if (v66 >> 62)
    {
      v36 = sub_26666C768();
    }

    else
    {
      v36 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = (v36 + v35);
    if (__OFADD__(v36, v35))
    {
      goto LABEL_81;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (i)
      {
LABEL_41:
        sub_26666C768();
      }

      else
      {
        v37 = v66 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
        v38 = *(v37 + 16);
      }

      v66 = sub_26666C828();
      v37 = v66 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_43;
    }

    if (i)
    {
      goto LABEL_41;
    }

    v37 = v66 & 0xFFFFFFFFFFFFFF8;
    if (v3 > *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_40;
    }

LABEL_43:
    v65 = v32 + 1;
    v39 = *(v37 + 16);
    v40 = (*(v37 + 24) >> 1) - v39;
    i = v37 + 8 * v39;
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v3 = v34;
      }

      else
      {
        v3 = (v34 & 0xFFFFFFFFFFFFFF8);
      }

      v41 = sub_26666C768();
      if (!v41)
      {
        goto LABEL_60;
      }

      v8 = v41;
      v42 = sub_26666C768();
      if (v40 < v42)
      {
        goto LABEL_85;
      }

      if (v8 < 1)
      {
        goto LABEL_86;
      }

      v61 = v42;
      v43 = i + 32;
      sub_26663954C();
      for (i = 0; i != v8; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E538, &unk_266674AF8);
        v44 = sub_2665C4548(v67, i, v34);
        v46 = *v45;
        (v44)(v67, 0);
        *(v43 + 8 * i) = v46;
      }

      v33 = v64;
      v3 = v61;
LABEL_56:

      v8 = v62;
      v32 = v65;
      if (v3 < v35)
      {
        goto LABEL_82;
      }

      if (v3 > 0)
      {
        v47 = *(v37 + 16);
        v48 = __OFADD__(v47, v3);
        v49 = &v3[v47];
        if (v48)
        {
          goto LABEL_83;
        }

        *(v37 + 16) = v49;
      }
    }

    else
    {
      v3 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        if (v40 < v3)
        {
          goto LABEL_84;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        swift_arrayInitWithCopy();
        goto LABEL_56;
      }

LABEL_60:

      v8 = v62;
      v32 = v65;
      if (v35 > 0)
      {
        goto LABEL_82;
      }
    }
  }

  v59 = objc_opt_self();
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v60 = sub_26666C488();

  v19 = [v59 disambiguationWithPeopleToDisambiguate_];

  return v19;
}

id sub_266638C80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v8 = sub_26666C168();
  __swift_project_value_buffer(v8, qword_28156D7E8);
  v9 = a2;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v10 = v9;
  v11 = sub_26666C148();
  v12 = sub_26666C618();
  if (os_log_type_enabled(v11, v12))
  {
    v44 = a1;
    v13 = a5;
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    sub_266637AD4();
    v16 = sub_2665C485C(v15);

    *(v14 + 4) = v16;

    _os_log_impl(&dword_266549000, v11, v12, "[ParticipantResolutionUtil] Siri matches contains one contact with %ld email handles", v14, 0xCu);
    v17 = v14;
    a5 = v13;
    a1 = v44;
    MEMORY[0x266789690](v17, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v11 = v10;
  }

  sub_266637BBC();
  v19 = sub_2665C485C(v18);

  if (v19)
  {
    sub_266637BBC();
    v21 = sub_2665C485C(v20);

    v22 = sub_26666C148();
    v23 = sub_26666C618();
    v24 = os_log_type_enabled(v22, v23);
    if (v21 == 1)
    {
      if (v24)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v45 = v26;
        *v25 = 136315138;
        if (a5)
        {
          v27 = 0xD000000000000014;
        }

        else
        {
          v27 = 0x73736563637573;
        }

        if (a5)
        {
          v28 = 0x800000026667F8F0;
        }

        else
        {
          v28 = 0xE700000000000000;
        }

        v29 = sub_2665BFC90(v27, v28, &v45);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_266549000, v22, v23, "[ParticipantResolutionUtil] Matched contact has a single email handle, returning %s with person", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x266789690](v26, -1, -1);
        MEMORY[0x266789690](v25, -1, -1);
      }

      sub_266637BBC();
      v31 = v30;
      v32 = v30 & 0xC000000000000001;
      sub_2665C4864(0, (v30 & 0xC000000000000001) == 0, v30);
      if (v32)
      {
        v33 = MEMORY[0x266788B60](0, v31);
      }

      else
      {
        v33 = *(v31 + 32);
      }

      v34 = v33;

      v35 = objc_opt_self();
      if (a5)
      {
        v36 = [v35 confirmationRequiredWithPersonToConfirm_];
      }

      else
      {
        v36 = [v35 successWithResolvedPerson_];
      }

      v43 = v36;

      return v43;
    }

    if (v24)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_266549000, v22, v23, "[ParticipantResolutionUtil] Matched contact has multiple email handles, returning success with skeleton", v41, 2u);
      MEMORY[0x266789690](v41, -1, -1);
    }

    v40 = [objc_opt_self() successWithResolvedPerson_];
  }

  else
  {
    v37 = sub_26666C148();
    v38 = sub_26666C618();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_266549000, v37, v38, "[ParticipantResolutionUtil] Matched contact does not have a email handle, returning success with skeleton", v39, 2u);
      MEMORY[0x266789690](v39, -1, -1);
    }

    v40 = [objc_opt_self() successWithResolvedPerson_];
  }

  return v40;
}

uint64_t sub_266639138()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_26663919C()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_2666391F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_1_42();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_266639238(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBD8, &qword_26667ACF8);
  v38 = a2;
  result = sub_26666C938();
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
      sub_26660B3E0(0, (v35 + 63) >> 6, v10);
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
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_26666CB88();
    sub_26666C368();
    result = sub_26666CBC8();
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
    *(*(v8 + 56) + 8 * v29) = v23;
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

uint64_t sub_2666394DC(void *a1)
{
  v1 = [a1 siriMatches];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666C498();

  return v3;
}

unint64_t sub_26663954C()
{
  result = qword_28007E540;
  if (!qword_28007E540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007E538, &unk_266674AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E540);
  }

  return result;
}

uint64_t sub_2666395B4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26666C738();
  v4 = *(a1 + 36);
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_266639618(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266639658(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CalendarDateTimeResolver()
{
  result = qword_28156CFE8;
  if (!qword_28156CFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266639784()
{
  result = sub_266639820();
  if (v1 <= 0x3F)
  {
    result = sub_266668D98();
    if (v2 <= 0x3F)
    {
      result = sub_26666B558();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_266639820()
{
  result = qword_28156CA48[0];
  if (!qword_28156CA48[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_28156CA48);
  }

  return result;
}

uint64_t sub_26663987C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26663990C;

  return sub_266618ABC();
}

uint64_t sub_26663990C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  v7 = *(*v4 + 24);
  v8 = *v4;
  *(*v4 + 32) = a1;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9();
  }

  else
  {
    *(v6 + 40) = a3;

    return MEMORY[0x2822009F8](sub_266639A5C, 0, 0);
  }
}

uint64_t sub_266639A5C()
{
  if (*(v0 + 40))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_26666B668();
    v5 = MEMORY[0x277D56158];
    if (v2 >= 0.0)
    {
      v5 = MEMORY[0x277D56150];
    }

    (*(*(v4 - 8) + 104))(v3, *v5, v4);
    v1 = 0;
  }

  v6 = *(v0 + 16);
  v7 = sub_26666B668();
  __swift_storeEnumTagSinglePayload(v6, v1, 1, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_266639B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  v5[8] = OUTLINED_FUNCTION_19();
  v9 = sub_266668D98();
  v5[9] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v5[10] = v10;
  v12 = *(v11 + 64);
  v5[11] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FBF8, &qword_26667ADE0);
  OUTLINED_FUNCTION_3_3(v13);
  v15 = *(v14 + 64);
  v5[12] = OUTLINED_FUNCTION_19();
  v16 = sub_26666B668();
  v5[13] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v5[14] = v17;
  v19 = *(v18 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v20 = sub_26666C0B8();
  v5[17] = v20;
  OUTLINED_FUNCTION_3_1(v20);
  v5[18] = v21;
  v23 = *(v22 + 64);
  v5[19] = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_266639D0C, 0, 0);
}

uint64_t sub_266639D0C()
{
  if (qword_28007CDA0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[7];
  v5 = sub_26666C0E8();
  v0[20] = __swift_project_value_buffer(v5, qword_280095698);
  sub_26666C0A8();
  OUTLINED_FUNCTION_7_25();
  v0[21] = sub_26658E0BC(v6, v7, v8, v9);
  (*(v2 + 8))(v1, v3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_266639E60;
  v11 = v0[12];

  return sub_26663987C(v11);
}

uint64_t sub_266639E60()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_26663A374;
  }

  else
  {
    v3 = sub_266639F7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266639F7C()
{
  v53 = v0;
  v1 = v0[12];
  v2 = v0[13];
  OUTLINED_FUNCTION_10_22();
  if (v3)
  {
    v50 = v0[23];
    (*(v0[14] + 104))(v0[16], *MEMORY[0x277D56150], v2);
    OUTLINED_FUNCTION_10_22();
    if (!v3)
    {
      sub_266557D74(v0[12], &qword_28007FBF8, &qword_26667ADE0);
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[16], v1, v2);
    v51 = v0[23];
  }

  v4 = v0[15];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[7];
  v47 = v0[16];
  v48 = v0[6];
  v12 = v0[4];
  sub_26666B688();
  v49 = type metadata accessor for CalendarDateTimeResolver();
  v13 = OUTLINED_FUNCTION_9_24(v49);
  v14(v13);
  (*(v5 + 16))(v4, v47, v6);
  LOBYTE(v12) = sub_26663A748();
  sub_26655E020(v48, v10);
  sub_266647B08(v7, v4, v12 & 1, v10);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v15 = v0[4];
  v16 = sub_26666C168();
  v17 = __swift_project_value_buffer(v16, qword_28156D7E8);

  v18 = sub_26666C148();
  v19 = sub_26666C618();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_5_29();
    v21 = OUTLINED_FUNCTION_13_0();
    v52[0] = v21;
    *v20 = 136315138;
    v0[2] = v17;
    sub_26666B998();
    sub_26663AEAC();
    v22 = sub_26666CAA8();
    v24 = sub_2665BFC90(v22, v23, v52);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_266549000, v18, v19, "[CalendarDateTimeResolver] Making recommendation for %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v25 = v0[4];

  v26 = sub_26666C148();
  v27 = sub_26666C618();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_5_29();
    v29 = OUTLINED_FUNCTION_13_0();
    v52[0] = v29;
    *v28 = 136315138;
    if (sub_26666B908())
    {
      v30 = sub_26663A7D0();
      v32 = v31;
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v33 = sub_2665BFC90(v30, v32, v52);

    *(v28 + 4) = v33;
    OUTLINED_FUNCTION_15_16(&dword_266549000, v34, v35, "[CalendarDateTimeResolver] DateTimeQuery Occurring In: %s");
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v36 = v0[4];
  v37 = v0[5];
  v38 = v0[3];
  v39 = v0[7] + *(v49 + 24);
  sub_26666B538();
  v40 = OUTLINED_FUNCTION_1_43();
  v41(v40);

  OUTLINED_FUNCTION_7_25();
  sub_26658E2D0(v42, v43, v44);

  v45 = v0[1];

  return v45();
}

uint64_t sub_26663A374()
{
  v50 = v0;
  __swift_storeEnumTagSinglePayload(v0[12], 1, 1, v0[13]);
  v1 = v0[12];
  (*(v0[14] + 104))(v0[16], *MEMORY[0x277D56150], v0[13]);
  OUTLINED_FUNCTION_10_22();
  if (!v2)
  {
    sub_266557D74(v0[12], &qword_28007FBF8, &qword_26667ADE0);
  }

  v3 = v0[15];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v46 = v0[16];
  v47 = v0[6];
  v11 = v0[4];
  sub_26666B688();
  v48 = type metadata accessor for CalendarDateTimeResolver();
  v12 = OUTLINED_FUNCTION_9_24(v48);
  v13(v12);
  (*(v4 + 16))(v3, v46, v5);
  LOBYTE(v11) = sub_26663A748();
  sub_26655E020(v47, v9);
  sub_266647B08(v6, v3, v11 & 1, v9);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v14 = v0[4];
  v15 = sub_26666C168();
  v16 = __swift_project_value_buffer(v15, qword_28156D7E8);

  v17 = sub_26666C148();
  v18 = sub_26666C618();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_5_29();
    v20 = OUTLINED_FUNCTION_13_0();
    v49[0] = v20;
    *v19 = 136315138;
    v0[2] = v16;
    sub_26666B998();
    sub_26663AEAC();
    v21 = sub_26666CAA8();
    v23 = sub_2665BFC90(v21, v22, v49);

    *(v19 + 4) = v23;
    OUTLINED_FUNCTION_15_16(&dword_266549000, v24, v25, "[CalendarDateTimeResolver] Making recommendation for %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v26 = v0[4];

  v27 = sub_26666C148();
  v28 = sub_26666C618();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_5_29();
    v30 = OUTLINED_FUNCTION_13_0();
    v49[0] = v30;
    *v29 = 136315138;
    if (sub_26666B908())
    {
      v31 = sub_26663A7D0();
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = sub_2665BFC90(v31, v33, v49);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_266549000, v27, v28, "[CalendarDateTimeResolver] DateTimeQuery Occurring In: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v35 = v0[4];
  v36 = v0[5];
  v37 = v0[3];
  v38 = v0[7] + *(v48 + 24);
  sub_26666B538();
  v39 = OUTLINED_FUNCTION_1_43();
  v40(v39);

  OUTLINED_FUNCTION_7_25();
  sub_26658E2D0(v41, v42, v43);

  v44 = v0[1];

  return v44();
}

uint64_t sub_26663A748()
{
  if ((sub_26663ACF8(MEMORY[0x277D56410], sub_26663ACCC) & 1) != 0 || (sub_26663ACF8(MEMORY[0x277D56418], sub_26663AD68) & 1) == 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_26663AE38() ^ 1;
  }

  return v0 & 1;
}

uint64_t sub_26663A7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC00, &qword_26667ADF0);
  v1 = OUTLINED_FUNCTION_3_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v33 - v5;
  v7 = sub_26666B988();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v36 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8, v12);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC08, &qword_26667ADF8);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v33 - v19;
  v21 = sub_26666B878();
  v22 = OUTLINED_FUNCTION_3_0(v21);
  v34 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22, v26);
  v28 = &v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v40 = 0xE000000000000000;
  if (sub_26666B8B8())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v37 = 0x5B7472617473;
    v38 = 0xE600000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8A8())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v37 = 1533308517;
    v38 = 0xE400000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B898())
  {
    sub_26666B8F8();
    OUTLINED_FUNCTION_4_36();
    v37 = 5993569;
    v38 = 0xE300000000000000;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8C8())
  {
    sub_26666B978();
    OUTLINED_FUNCTION_4_36();
    v37 = 0x6E6F697461727564;
    v38 = 0xE90000000000005BLL;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  if (sub_26666B8D8())
  {
    sub_26666B978();
    OUTLINED_FUNCTION_4_36();
    v37 = 0x6C61767265746E69;
    v38 = 0xE90000000000005BLL;
    OUTLINED_FUNCTION_3_36();

    OUTLINED_FUNCTION_11_23();
    OUTLINED_FUNCTION_2_37();
  }

  sub_26666B888();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    sub_266557D74(v20, &qword_28007FC08, &qword_26667ADF8);
  }

  else
  {
    v29 = v34;
    (*(v34 + 32))(v28, v20, v21);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_26666C7E8();
    MEMORY[0x266788710](0x5664656E69666564, 0xED00005B65756C61);
    sub_26666C8F8();
    OUTLINED_FUNCTION_11_23();
    MEMORY[0x266788710](v37, v38);

    (*(v29 + 8))(v28, v21);
  }

  sub_26666B8E8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_266557D74(v6, &qword_28007FC00, &qword_26667ADF0);
  }

  else
  {
    v31 = v35;
    v30 = v36;
    (*(v36 + 32))(v35, v6, v7);
    v37 = 0;
    v38 = 0xE000000000000000;
    MEMORY[0x266788710](0x656966696C617571, 0xEA00000000005B72);
    sub_26666C8F8();
    OUTLINED_FUNCTION_11_23();
    MEMORY[0x266788710](v37, v38);

    (*(v30 + 8))(v31, v7);
  }

  return v39;
}

uint64_t sub_26663ACF8(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  if (a1())
  {
    v3 = 1;
  }

  else
  {
    if (!sub_26666B908())
    {
      v3 = 0;
      return v3 & 1;
    }

    v3 = a2();
  }

  return v3 & 1;
}

uint64_t sub_26663AD94()
{
  if (sub_26666B898() && (v0 = OUTLINED_FUNCTION_12_22(), , (v0 & 1) != 0) || sub_26666B8A8() && (v1 = OUTLINED_FUNCTION_12_22(), , (v1 & 1) != 0))
  {
    v2 = 1;
  }

  else if (sub_26666B8B8())
  {
    v2 = OUTLINED_FUNCTION_12_22();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_26663AE38()
{
  if (sub_26666B938())
  {
LABEL_2:

    return 1;
  }

  result = sub_26666B908();
  if (result)
  {
    v1 = sub_26666B898();

    if (!v1)
    {
      return 0;
    }

    v2 = sub_26666B938();

    if (!v2)
    {
      return 0;
    }

    goto LABEL_2;
  }

  return result;
}

unint64_t sub_26663AEAC()
{
  result = qword_28007F138;
  if (!qword_28007F138)
  {
    sub_26666B998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F138);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_43()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[15];
  v5 = v0[13];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];
  v9 = *(v0[14] + 8);
  return v0[16];
}

void OUTLINED_FUNCTION_2_37()
{
  v2 = *(v0 - 112);
  v3 = *(v0 - 104);

  JUMPOUT(0x266788710);
}

void OUTLINED_FUNCTION_3_36()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_4_36()
{
}

uint64_t OUTLINED_FUNCTION_5_29()
{
  v2 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{
  v4 = *(v2 + 16);
  v5 = v3 + *(a1 + 20);
  return v1;
}

void OUTLINED_FUNCTION_11_23()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_12_22()
{

  return sub_26663ACF8(v1, v0);
}

void OUTLINED_FUNCTION_15_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OpenEventDetailsAppIntent.target.setter()
{

  sub_26666BFE8();
}

void (*OpenEventDetailsAppIntent.target.modify(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26666BFC8();
  return sub_266594930;
}

uint64_t _s19SiriCalendarIntents25OpenEventDetailsAppIntentV6targetAA0E20EntityRepresentationCvpfP_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC10, &qword_26667AE00);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_26666BFB8();
}

uint64_t sub_26663B210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v86 = a5;
  v85 = a4;
  v89 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v84 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v79 - v20;
  v22 = sub_26666A258();
  v23 = OUTLINED_FUNCTION_3_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v23, v28);
  OUTLINED_FUNCTION_1_0();
  v31 = v30 - v29;
  v88 = a2;
  sub_26659236C(a2, v21, &qword_28007D3F0, &unk_26666F120);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
  v33 = MEMORY[0x277D84F90];
  v87 = v25;
  if (EnumTagSinglePayload == 1)
  {
    sub_266557D74(v21, &qword_28007D3F0, &unk_26666F120);
    v34 = v22;
    if (a1)
    {
      v81 = v22;
      v82 = v18;
      v83 = a3;
      swift_getKeyPath();
      v92 = v33;
      v34 = sub_2665C485C(a1);
      v35 = 0;
      v18 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v34 == v35)
        {

          v34 = v81;
          goto LABEL_28;
        }

        if (v18)
        {
          v36 = MEMORY[0x266788B60](v35, a1);
        }

        else
        {
          if (v35 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v36 = *(a1 + 8 * v35 + 32);
        }

        v37 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        v90 = v36;

        swift_getAtKeyPath();

        ++v35;
        if (v91)
        {
          MEMORY[0x2667887C0](v38);
          OUTLINED_FUNCTION_4_37();
          if (v39)
          {
            OUTLINED_FUNCTION_106();
          }

          sub_26666C4E8();
          v33 = v92;
          v35 = v37;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_36:
    if (qword_28156C150 == -1)
    {
LABEL_37:
      v66 = sub_26666C168();
      __swift_project_value_buffer(v66, qword_28156D7E8);
      sub_26659236C(v88, v18, &qword_28007D3F0, &unk_26666F120);
      v67 = sub_26666C148();
      v68 = sub_26666C618();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v92 = v70;
        *v69 = 136315138;
        v71 = v84;
        sub_26659236C(v18, v84, &qword_28007D3F0, &unk_26666F120);
        if (__swift_getEnumTagSinglePayload(v71, 1, v34) == 1)
        {
          sub_266557D74(v71, &qword_28007D3F0, &unk_26666F120);
          v72 = 0xE500000000000000;
          v73 = 0x3E6C696E3CLL;
        }

        else
        {
          v74 = sub_26666A248();
          v75 = v34;
          v73 = v74;
          v72 = v76;
          (*(v87 + 8))(v71, v75);
        }

        sub_266557D74(v18, &qword_28007D3F0, &unk_26666F120);
        v77 = sub_2665BFC90(v73, v72, &v92);

        *(v69 + 4) = v77;
        _os_log_impl(&dword_266549000, v67, v68, "[ContactResolving] No Participants with person values in list, listFilter: %s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        sub_266557D74(v18, &qword_28007D3F0, &unk_26666F120);
      }

      return 0;
    }

LABEL_49:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_37;
  }

  v40 = (*(v25 + 32))(v31, v21, v22);
  v34 = v22;
  if (!a1)
  {
    (*(v25 + 8))(v31, v22);
    goto LABEL_36;
  }

  v81 = v22;
  v82 = v18;
  v83 = a3;
  MEMORY[0x28223BE20](v40, v41);
  v80 = v31;
  *(&v79 - 2) = v31;
  sub_2665C7724(sub_2665C90D4, (&v79 - 4), a1);
  v43 = v42;
  v92 = v33;
  v34 = sub_2665C485C(v42);
  v18 = 0;
  while (v34 != v18)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      MEMORY[0x266788B60](v18, v43);
    }

    else
    {
      if (v18 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v44 = *(v43 + 8 * v18 + 32);
    }

    v45 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_46;
    }

    v46 = sub_26666A918();

    ++v18;
    if (v46)
    {
      MEMORY[0x2667887C0](v47);
      OUTLINED_FUNCTION_4_37();
      if (v39)
      {
        OUTLINED_FUNCTION_106();
      }

      sub_26666C4E8();
      v33 = v92;
      v18 = v45;
    }
  }

  v34 = v81;
  (*(v87 + 8))(v80, v81);
LABEL_28:
  v48 = sub_2665C485C(v33);
  v18 = v82;
  v49 = v83;
  if (!v48)
  {

    goto LABEL_36;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v50 = sub_26666C168();
  __swift_project_value_buffer(v50, qword_28156D7E8);

  v51 = sub_26666C148();
  v52 = sub_26666C618();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v92 = v54;
    *v53 = 136315138;
    v55 = sub_26666A648();
    v56 = MEMORY[0x2667887F0](v33, v55);
    v58 = sub_2665BFC90(v56, v57, &v92);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_266549000, v51, v52, "[ContactResolving] Attempting to do SRR reference resolution on %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  v59 = v86;
  v60 = v85;
  MEMORY[0x28223BE20](v61, v62);
  *(&v79 - 2) = v49;
  sub_2665C1F68();
  v64 = v63;

  v65 = sub_26663B9AC(v64, v60, v59);

  return v65;
}

uint64_t sub_26663B9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26666B5C8();
  v7 = OUTLINED_FUNCTION_3_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  if (qword_28007CED8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, qword_2800958C8);
  (*(v9 + 16))(v15, v16, v6);
  v17 = (*(a3 + 8))(a1, v15, a2, a3);
  (*(v9 + 8))(v15, v6);
  return v17;
}

uint64_t sub_26663BC70()
{
  v0 = sub_26666B5E8();
  v1 = OUTLINED_FUNCTION_3_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  OUTLINED_FUNCTION_1_0();
  v5 = sub_266668D98();
  v6 = OUTLINED_FUNCTION_3_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  OUTLINED_FUNCTION_1_0();
  v40 = sub_26666B518();
  v10 = OUTLINED_FUNCTION_3_0(v40);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10, v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC18, &unk_26667AEC0);
  v20 = OUTLINED_FUNCTION_3_3(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v39 - v24;
  v26 = sub_26666B658();
  v27 = OUTLINED_FUNCTION_3_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27, v32);
  OUTLINED_FUNCTION_1_0();
  v35 = v34 - v33;
  v36 = sub_26666B5C8();
  __swift_allocate_value_buffer(v36, qword_2800958C8);
  __swift_project_value_buffer(v36, qword_2800958C8);
  (*(v29 + 104))(v35, *MEMORY[0x277D56148], v26);
  sub_26666B6B8();
  v37 = sub_26666B6C8();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v37);
  (*(v12 + 104))(v18, *MEMORY[0x277D560D0], v40);
  sub_266668D88();
  sub_26666B5D8();
  return sub_26666B5B8();
}

uint64_t sub_26663BF1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_26666A3D8();
  *a2 = v5;
  return result;
}

uint64_t sub_26663BF58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = sub_26666A2E8();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v64, v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v56 = v52 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F918, &qword_26667A0D0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v52 - v18;
  v20 = sub_26666B448();
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v58 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  sub_26659236C(a2, &v61, &qword_28007D3F8, &qword_26667B390);
  if (!v62)
  {
    sub_266557D74(&v61, &qword_28007D3F8, &qword_26667B390);
    return sub_26666A638();
  }

  sub_26654B7D8(&v61, v63);
  v25 = __swift_project_boxed_opaque_existential_1(v63, v63[3]);
  v26 = sub_2665922D0(v24, *v25);
  if (!v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
    return sub_26666A638();
  }

  v27 = v26;
  v53 = v20;
  v54 = a3;
  v55 = v3;
  sub_26666A638();
  v28 = sub_26666B5A8();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v28);
  sub_26666B3F8();

  v29 = sub_26666A1F8();
  v52[1] = v27;

  v30 = 0;
  v31 = *(v29 + 16);
  v59 = v7 + 16;
  v60 = v31;
  while (1)
  {
    if (v60 == v30)
    {

      v7 = v54;
      v12 = v53;
      v30 = v57;
      goto LABEL_22;
    }

    if (v30 >= *(v29 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    (*(v7 + 16))(v12, v29 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v64);
    if (sub_26666A2B8() == 0xD00000000000001BLL && 0x800000026667F960 == v32)
    {
      break;
    }

    v34 = sub_26666CAC8();

    if (v34)
    {
      goto LABEL_17;
    }

    (*(v7 + 8))(v12, v64);
    ++v30;
  }

LABEL_17:

  v36 = v56;
  v37 = v64;
  (*(v7 + 32))(v56, v12, v64);
  v38 = sub_26666A2D8();
  v40 = v39;
  (*(v7 + 8))(v36, v37);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v41 = sub_26666C168();
  __swift_project_value_buffer(v41, qword_28156D7E8);

  v42 = sub_26666C148();
  v43 = sub_26666C618();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v53;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v61 = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_2665BFC90(v38, v40, &v61);
    _os_log_impl(&dword_266549000, v42, v43, "[ContactResolving] Resolving SRR contact via id: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x266789690](v47, -1, -1);
    MEMORY[0x266789690](v46, -1, -1);
  }

  v7 = v54;
  v30 = v57;
  sub_26666B3E8();
  v12 = v45;
LABEL_22:
  if (qword_28156C150 == -1)
  {
    goto LABEL_23;
  }

LABEL_27:
  swift_once();
LABEL_23:
  v48 = sub_26666C168();
  __swift_project_value_buffer(v48, qword_28156D7E8);
  v49 = sub_26666C148();
  v50 = sub_26666C618();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_266549000, v49, v50, "[ContactResolving] Using SRR resolved contact for contact query; removing handle", v51, 2u);
    MEMORY[0x266789690](v51, -1, -1);
  }

  (*(v30 + 32))(v7, v58, v12);
  return __swift_destroy_boxed_opaque_existential_1(v63);
}

void sub_26663C5A0()
{
  OUTLINED_FUNCTION_28_0();
  v182 = v0;
  v183 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC20, &qword_26667AF98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  OUTLINED_FUNCTION_10_5();
  v175 = v5 - v6;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v7, v8);
  v177 = &v174 - v9;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v10, v11);
  v176 = &v174 - v12;
  v13 = sub_26666C188();
  v14 = OUTLINED_FUNCTION_3_0(v13);
  v180 = v15;
  v181 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14, v18);
  OUTLINED_FUNCTION_10_5();
  v178 = v19 - v20;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v21, v22);
  v179 = &v174 - v23;
  v24 = sub_26666C238();
  v25 = OUTLINED_FUNCTION_3_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v25, v30);
  OUTLINED_FUNCTION_10_5();
  v174 = (v31 - v32);
  OUTLINED_FUNCTION_12_7();
  v35 = MEMORY[0x28223BE20](v33, v34);
  v37 = &v174 - v36;
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v174 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC28, &unk_26667AFA0);
  v42 = OUTLINED_FUNCTION_18_2(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42, v45);
  OUTLINED_FUNCTION_10_5();
  v48 = (v46 - v47);
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v174 - v51;
  v53 = sub_26666C1A8();
  OUTLINED_FUNCTION_7(v53);

  sub_26666C198();
  sub_26666C048();

  v182 = v52;
  sub_26657E808(v52, v48, &qword_28007FC28, &unk_26667AFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = *v48;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v55 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v55, qword_28156D7E8);
    v56 = v54;
    v57 = sub_26666C148();
    v58 = sub_26666C5F8();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_21();
      v60 = OUTLINED_FUNCTION_13_0();
      v184 = v54;
      v185 = v60;
      *v59 = 136315138;
      v61 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
      v62 = sub_26666C318();
      v64 = sub_2665BFC90(v62, v63, &v185);

      *(v59 + 4) = v64;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    goto LABEL_12;
  }

  (*(v27 + 32))(v40, v48, v24);
  v70 = *(v27 + 16);
  v70(v37, v40, v24);
  v71 = (*(v27 + 88))(v37, v24);
  v72 = v24;
  v73 = v37;
  if (v71 == *MEMORY[0x277D5FEC0])
  {
    v177 = v40;
    v74 = OUTLINED_FUNCTION_3_37();
    v75(v74);
    v76 = v179;
    v77 = v180;
    v78 = v181;
    (*(v180 + 32))(v179, v37, v181);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v79 = v27;
    v80 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v80, qword_28156D7E8);
    v81 = v178;
    (*(v77 + 16))(v178, v76, v78);
    v82 = sub_26666C148();
    v83 = sub_26666C618();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = OUTLINED_FUNCTION_21();
      v85 = v72;
      v86 = OUTLINED_FUNCTION_13_0();
      v185 = v86;
      *v84 = 136315138;
      sub_26663E510(&qword_28007FC38, MEMORY[0x277D5FE08]);
      v87 = sub_26666CAA8();
      v88 = v81;
      v90 = v89;
      v91 = *(v77 + 8);
      v91(v88, v181);
      v92 = sub_2665BFC90(v87, v90, &v185);

      *(v84 + 4) = v92;
      _os_log_impl(&dword_266549000, v82, v83, "[CalendarReferenceResolver] Found a candidate %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v72 = v85;
      OUTLINED_FUNCTION_4_1();
      v78 = v181;
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      v91 = *(v77 + 8);
      v91(v81, v78);
    }

    v112 = v183;
    v113 = v179;
    sub_26666C178();
    v91(v113, v78);
    (*(v79 + 8))(v177, v72);
    sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
    goto LABEL_40;
  }

  v99 = v180;
  if (v71 == *MEMORY[0x277D5FED0])
  {
    v100 = OUTLINED_FUNCTION_3_37();
    v101(v100);
    v102 = *v73;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v103 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v103, qword_28156D7E8);
    v104 = sub_26666C148();
    v105 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v105))
    {
      v106 = OUTLINED_FUNCTION_20();
      *v106 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v107, v108, v109, v110, v106, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v111 = v177;
    sub_2665EC530(v102, v177);
LABEL_37:

    v142 = v181;
    if (__swift_getEnumTagSinglePayload(v111, 1, v181) == 1)
    {
      v143 = OUTLINED_FUNCTION_4_38();
      v144(v143);
      sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
      v93 = &qword_28007FC20;
      v94 = &qword_26667AF98;
      v95 = v111;
      goto LABEL_13;
    }

    v112 = v183;
    sub_26666C178();
    v145 = OUTLINED_FUNCTION_4_38();
    v146(v145);
    sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
    (*(v99 + 8))(v111, v142);
    goto LABEL_40;
  }

  if (v71 == *MEMORY[0x277D5FEC8])
  {
    v114 = OUTLINED_FUNCTION_3_37();
    v115(v114);
    v116 = *v73;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v117 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v117, qword_28156D7E8);

    v118 = sub_26666C148();
    v119 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v119))
    {
      v120 = OUTLINED_FUNCTION_21();
      *v120 = 134217984;
      *(v120 + 4) = *(v116 + 16);

      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v121, v122, v123, v124, v125, 0xCu);
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    v111 = v176;
    sub_2665EC530(v116, v176);
    goto LABEL_37;
  }

  if (v71 == *MEMORY[0x277D5FED8])
  {
    v126 = OUTLINED_FUNCTION_3_37();
    v127(v126);
    v128 = *v73;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v129 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v129, qword_28156D7E8);
    v130 = sub_26666C148();
    v131 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v131))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_2_2();
      _os_log_impl(v132, v133, v134, v135, v136, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v137 = v175;
    if (*(v128 + 16))
    {
      v138 = *(v128 + 32);

      sub_2665EC530(v138, v137);

      v139 = v181;
      if (__swift_getEnumTagSinglePayload(v137, 1, v181) == 1)
      {
        v140 = OUTLINED_FUNCTION_4_38();
        v141(v140);
        sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
        v93 = &qword_28007FC20;
        v94 = &qword_26667AF98;
        v95 = v137;
        goto LABEL_13;
      }

      v112 = v183;
      sub_26666C178();
      v170 = OUTLINED_FUNCTION_4_38();
      v171(v170);
      sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
      (*(v99 + 8))(v137, v139);
LABEL_40:
      v96 = sub_26666C228();
      v97 = v112;
      v98 = 0;
      goto LABEL_41;
    }

LABEL_54:
    v168 = OUTLINED_FUNCTION_4_38();
    v169(v168);
LABEL_12:
    v93 = &qword_28007FC28;
    v94 = &unk_26667AFA0;
    v95 = v182;
LABEL_13:
    sub_26656CAEC(v95, v93, v94);
    v96 = sub_26666C228();
    v97 = v183;
    v98 = 1;
LABEL_41:
    __swift_storeEnumTagSinglePayload(v97, v98, 1, v96);
    goto LABEL_42;
  }

  if (v71 == *MEMORY[0x277D5FEE0])
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1();
    }

    v147 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v147, qword_28156D7E8);
    v148 = sub_26666C148();
    v149 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v149))
    {
      v150 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v150);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v151, v152, "[CalendarReferenceResolver] No matches found");
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_54;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v153 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v153, qword_28156D7E8);
  v154 = v174;
  v70(v174, v40, v24);
  v155 = sub_26666C148();
  v156 = sub_26666C5F8();
  if (os_log_type_enabled(v155, v156))
  {
    v157 = OUTLINED_FUNCTION_21();
    v177 = v40;
    v158 = v157;
    v159 = OUTLINED_FUNCTION_13_0();
    v181 = v73;
    v160 = v72;
    v161 = v159;
    v185 = v159;
    *v158 = 136315138;
    sub_26663E510(&qword_28007FC30, MEMORY[0x277D5FEE8]);
    v162 = sub_26666CAA8();
    v164 = v163;
    v165 = OUTLINED_FUNCTION_26_11();
    v154(v165, v160);
    v166 = sub_2665BFC90(v162, v164, &v185);

    *(v158 + 4) = v166;
    _os_log_impl(&dword_266549000, v155, v156, "[CalendarReferenceResolver] Received unknown result type %s", v158, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    v72 = v160;
    v73 = v181;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v167 = v177;
  }

  else
  {

    v172 = OUTLINED_FUNCTION_26_11();
    v154(v172, v72);
    v167 = v40;
  }

  v154(v167, v72);
  sub_26656CAEC(v182, &qword_28007FC28, &unk_26667AFA0);
  v173 = sub_26666C228();
  __swift_storeEnumTagSinglePayload(v183, 1, 1, v173);
  v154(v73, v72);
LABEL_42:
  OUTLINED_FUNCTION_27_0();
}

void sub_26663D2D0()
{
  OUTLINED_FUNCTION_28_0();
  v0 = sub_26666C228();
  v160 = OUTLINED_FUNCTION_3_0(v0);
  v161 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v160, v4);
  OUTLINED_FUNCTION_10_5();
  v155 = v5 - v6;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v7, v8);
  v156 = &v151 - v9;
  v162 = sub_26666C188();
  v10 = OUTLINED_FUNCTION_3_0(v162);
  v158 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10, v14);
  OUTLINED_FUNCTION_10_5();
  v159 = v15 - v16;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v151 - v19;
  v21 = sub_26666C238();
  v22 = OUTLINED_FUNCTION_3_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22, v27);
  OUTLINED_FUNCTION_10_5();
  v30 = (v28 - v29);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v151 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC28, &unk_26667AFA0);
  v36 = OUTLINED_FUNCTION_18_2(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = (&v151 - v40);
  v42 = sub_26666C1A8();
  OUTLINED_FUNCTION_7(v42);

  sub_26666C198();
  sub_26666C048();

  v43 = &unk_28156C000;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v24 + 32))(v34, v41, v21);
    (*(v24 + 16))(v30, v34, v21);
    v60 = (*(v24 + 88))(v30, v21);
    if (v60 == *MEMORY[0x277D5FEC0])
    {
      v61 = OUTLINED_FUNCTION_7_26();
      v62(v61);
      (*(v158 + 32))(v20, v30, v162);
      OUTLINED_FUNCTION_25_13();
      if (!v73)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v63 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v63, qword_28156D7E8);
      v64 = sub_26666C148();
      v65 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v65))
      {
        v66 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v66);
        OUTLINED_FUNCTION_35_1(&dword_266549000, v67, v68, "[CalendarReferenceResolver] One match");
        OUTLINED_FUNCTION_10();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E628, &unk_26667A160);
      v69 = *(v161 + 72);
      v70 = (*(v161 + 80) + 32) & ~*(v161 + 80);
      *(swift_allocObject() + 16) = xmmword_26666EED0;
      sub_26666C178();
      (*(v158 + 8))(v20, v162);
      v71 = OUTLINED_FUNCTION_18_11();
      v72(v71);
      goto LABEL_13;
    }

    v73 = v60 == *MEMORY[0x277D5FED0] || v60 == *MEMORY[0x277D5FEC8];
    if (v73)
    {
      v74 = OUTLINED_FUNCTION_7_26();
      v75(v74);
      v76 = *v30;
      OUTLINED_FUNCTION_25_13();
      if (!v73)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v77 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v77, qword_28156D7E8);
      v78 = sub_26666C148();
      v79 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v79))
      {
        v80 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v80);
        OUTLINED_FUNCTION_35_1(&dword_266549000, v81, v82, "[CalendarReferenceResolver] Plural matches, returning all");
        OUTLINED_FUNCTION_10();
      }

      v83 = *(v76 + 16);
      if (!v83)
      {

        v139 = OUTLINED_FUNCTION_18_11();
LABEL_67:
        v141(v139, v140);
        goto LABEL_13;
      }

      v153 = v34;
      v154 = v21;
      v152 = v24;
      v164 = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_16_17();
      v155 = v76;
      v85 = v76 + v84;
      v157 = *(v86 + 56);
      v158 = v87;
      v88 = (v86 - 8);
      v89 = v156;
      do
      {
        v90 = OUTLINED_FUNCTION_21_11();
        v91(v90);
        sub_26666C178();
        (*v88)(&unk_28156C000, v41);
        v164 = v30;
        v92 = v30[2];
        v41 = (v92 + 1);
        if (v92 >= v30[3] >> 1)
        {
          OUTLINED_FUNCTION_23_14();
          v30 = v164;
        }

        OUTLINED_FUNCTION_13_18();
        (*(v95 + 32))(v93 + v94 * v92, v89);
        v85 += v157;
        --v83;
      }

      while (v83);
    }

    else
    {
      if (v60 != *MEMORY[0x277D5FED8])
      {
        if (v60 == *MEMORY[0x277D5FEE0])
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v119 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v119, qword_28156D7E8);
          v120 = sub_26666C148();
          v121 = sub_26666C618();
          if (OUTLINED_FUNCTION_52_0(v121))
          {
            v122 = OUTLINED_FUNCTION_20();
            OUTLINED_FUNCTION_15(v122);
            OUTLINED_FUNCTION_35_1(&dword_266549000, v123, v124, "[CalendarReferenceResolver] No matches");
            OUTLINED_FUNCTION_10();
          }

          v125 = OUTLINED_FUNCTION_18_11();
          v126(v125);
        }

        else
        {
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_1_1();
          }

          v142 = sub_26666C168();
          OUTLINED_FUNCTION_11_4(v142, qword_28156D7E8);
          v143 = sub_26666C148();
          v144 = sub_26666C618();
          if (OUTLINED_FUNCTION_52_0(v144))
          {
            v145 = OUTLINED_FUNCTION_20();
            *v145 = 0;
            OUTLINED_FUNCTION_43_2();
            _os_log_impl(v146, v147, v148, v149, v145, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          v150 = *(v24 + 8);
          v150(v34, v21);
          v150(v30, v21);
        }

        goto LABEL_13;
      }

      v96 = OUTLINED_FUNCTION_7_26();
      v97(v96);
      v98 = *v30;
      OUTLINED_FUNCTION_25_13();
      if (!v73)
      {
        OUTLINED_FUNCTION_1_1();
      }

      v153 = v34;
      v154 = v21;
      v99 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v99, qword_28156D7E8);
      v44 = sub_26666C148();
      v100 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v100))
      {
        v101 = OUTLINED_FUNCTION_20();
        *v101 = 0;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v102, v103, v104, v105, v101, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v106 = 0;
      v107 = *(v98 + 16);
      v108 = MEMORY[0x277D84F90];
      v109 = MEMORY[0x277D84F90];
      while (v107 != v106)
      {
        if (v106 >= *(v98 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v110 = v98 + 8 * v106;
        v43 = *(v110 + 32);
        v44 = v43[2];
        v111 = *(v109 + 16);
        if (__OFADD__(v111, v44))
        {
          goto LABEL_69;
        }

        v112 = *(v110 + 32);

        if (!swift_isUniquelyReferenced_nonNull_native() || &v44[v111] > *(v109 + 24) >> 1)
        {
          sub_2665C670C();
          v109 = v113;
        }

        if (v43[2])
        {
          if ((*(v109 + 24) >> 1) - *(v109 + 16) < v44)
          {
            goto LABEL_71;
          }

          v114 = (*(v158 + 80) + 32) & ~*(v158 + 80);
          v115 = *(v158 + 72);
          swift_arrayInitWithCopy();

          if (v44)
          {
            v116 = *(v109 + 16);
            v117 = __OFADD__(v116, v44);
            v118 = &v44[v116];
            if (v117)
            {
              goto LABEL_72;
            }

            *(v109 + 16) = v118;
          }
        }

        else
        {

          if (v44)
          {
            goto LABEL_70;
          }
        }

        ++v106;
      }

      v127 = *(v109 + 16);
      if (!v127)
      {

        v141 = *(v24 + 8);
        v139 = v153;
        v140 = v154;
        goto LABEL_67;
      }

      v152 = v24;
      v164 = v108;
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_16_17();
      v129 = v109 + v128;
      v156 = *(v130 + 56);
      v157 = v131;
      v158 = v130;
      v132 = (v130 - 8);
      v133 = v155;
      do
      {
        v134 = OUTLINED_FUNCTION_21_11();
        v157(v134);
        sub_26666C178();
        (*v132)(v43, v108);
        v164 = v98;
        v135 = *(v98 + 16);
        v108 = v135 + 1;
        if (v135 >= *(v98 + 24) >> 1)
        {
          OUTLINED_FUNCTION_23_14();
          v98 = v164;
        }

        OUTLINED_FUNCTION_13_18();
        (*(v138 + 32))(v136 + v137 * v135, v133);
        v129 += v156;
        --v127;
      }

      while (v127);
    }

    (*(v152 + 8))(v153, v154);

    goto LABEL_13;
  }

  v44 = *v41;
  OUTLINED_FUNCTION_25_13();
  if (!v73)
  {
LABEL_73:
    OUTLINED_FUNCTION_1_1();
  }

  v45 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v45, qword_28156D7E8);
  v46 = v44;
  v47 = sub_26666C148();
  v48 = sub_26666C5F8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_21();
    v50 = OUTLINED_FUNCTION_13_0();
    v163 = v44;
    v164 = v50;
    *v49 = 136315138;
    v51 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v52 = sub_26666C318();
    v54 = sub_2665BFC90(v52, v53, &v164);

    *(v49 + 4) = v54;
    OUTLINED_FUNCTION_2_2();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

LABEL_13:
  OUTLINED_FUNCTION_27_0();
}

void sub_26663DD64()
{
  OUTLINED_FUNCTION_28_0();
  v37 = sub_26666C228();
  v1 = OUTLINED_FUNCTION_3_0(v37);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1, v6);
  OUTLINED_FUNCTION_2_22();
  if (qword_28156C150 != -1)
  {
LABEL_38:
    OUTLINED_FUNCTION_1_1();
  }

  v7 = sub_26666C168();
  __swift_project_value_buffer(v7, qword_28156D7E8);
  v8 = sub_26666C148();
  v9 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v9))
  {
    v10 = OUTLINED_FUNCTION_20();
    *v10 = 0;
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v11, v12, v13, v14, v10, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v15 = sub_26666AF78();
  OUTLINED_FUNCTION_7(v15);
  sub_26666AF68();
  v16 = MEMORY[0x2667869C0]();

  if (v16)
  {
    sub_26663D2D0();
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v39 = MEMORY[0x277D84F90];
    v20 = *(v19 + 16);
    if (v20)
    {
      sub_26666AAE8();
      v22 = *(v3 + 16);
      v21 = v3 + 16;
      v36 = v22;
      v23 = v19 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
      v24 = *(v21 + 56);
      v25 = (v21 - 8);
      v26 = MEMORY[0x277D84F90];
      do
      {
        v36(i, v23, v37);
        sub_26666C218();
        sub_26666A7D8();

        v27 = (*v25)(i, v37);
        if (v38)
        {
          MEMORY[0x2667887C0](v27);
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26666C4B8();
          }

          sub_26666C4E8();
          v26 = v39;
        }

        v23 += v24;
        --v20;
      }

      while (v20);

      v18 = MEMORY[0x277D84F90];
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
    }

    v3 = sub_2665C485C(v26);
    for (i = 0; v3 != i; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](i, v26);
      }

      else
      {
        if (i >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v33 = *(v26 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (sub_26655EC7C())
      {
      }

      else
      {
        sub_26666C868();
        v34 = *(v18 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    if (sub_2665C485C(v18))
    {
      sub_2665C4864(0, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x266788B60](0, v18);
      }

      else
      {
        v35 = *(v18 + 32);
      }
    }
  }

  else
  {
    v28 = sub_26666C148();
    v29 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v29))
    {
      v30 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v30);
      OUTLINED_FUNCTION_35_1(&dword_266549000, v31, v32, "[CalendarReferenceResolver]  Found no common_DateTimeRange entity, returning nil");
      OUTLINED_FUNCTION_10();
    }
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26663E1EC()
{
  OUTLINED_FUNCTION_28_0();
  v31 = v2;
  v32 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_26666C228();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9, v14);
  OUTLINED_FUNCTION_2_22();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  OUTLINED_FUNCTION_10_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v30 - v23;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v25 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v25, qword_28156D7E8);
  v26 = sub_26666C148();
  v27 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_1(v27))
  {
    v28 = OUTLINED_FUNCTION_20();
    v30 = v20;
    *v28 = 0;
    _os_log_impl(&dword_266549000, v26, v0, v31, v28, 2u);
    v20 = v30;
    OUTLINED_FUNCTION_4_1();
  }

  v29 = v7(0);
  OUTLINED_FUNCTION_7(v29);
  v5();
  if (MEMORY[0x2667869C0]())
  {

    sub_26663C5A0();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v8);
  }

  sub_26657E808(v24, v20, &qword_28007ED70, &qword_266671CC0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v8) != 1)
  {
    (*(v11 + 32))(v1, v20, v8);
    v32(0);
    sub_26666C218();
    sub_26666A7D8();

    (*(v11 + 8))(v1, v8);
  }

  sub_26656CAEC(v24, &qword_28007ED70, &qword_266671CC0);

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26663E510(unint64_t *a1, void (*a2)(uint64_t))
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

void OUTLINED_FUNCTION_13_18()
{
  *(v0 + 16) = v1;
  v3 = *(v2 - 120);
  v4 = *(v2 - 112);
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
}

void OUTLINED_FUNCTION_16_17()
{
  v1 = *(v0 - 88);
  v2 = *(v0 - 136);
  v3 = *(v2 + 16);
  v4 = *(v2 + 80);
}

uint64_t OUTLINED_FUNCTION_21_11()
{
  v1 = *(v0 - 136);
  result = *(v0 - 128);
  v3 = *(v0 - 104);
  return result;
}

void OUTLINED_FUNCTION_23_14()
{

  sub_2666338D8();
}

uint64_t OUTLINED_FUNCTION_26_11()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_27_16()
{

  sub_2666338D8();
}

uint64_t sub_26663E658()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_26663E680()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26663E6D4(uint64_t a1)
{
  *(v1 + 16) = 0;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v2;
  v3 = *(a1 + 40);
  *(v1 + 40) = *(a1 + 32);
  *(v1 + 48) = v3;
  v4 = *(a1 + 48);

  *(v1 + 56) = v4;
  return v1;
}

uint64_t sub_26663E73C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x6C61767265746E69;
  v7 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    goto LABEL_9;
  }

  result = 0x636E657571657266;
  v10 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v10 || (result = OUTLINED_FUNCTION_2_6(), (result & 1) != 0))
  {
    if (*(v3 + 48))
    {
      goto LABEL_7;
    }

    v9 = *(v3 + 40);
LABEL_9:
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
    return result;
  }

  if (a1 != 0x6557664F73796164 || a2 != 0xEA00000000006B65)
  {
    result = OUTLINED_FUNCTION_2_6();
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v12 = *(v3 + 56);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
  *a3 = v12;
}

uint64_t sub_26663E87C()
{
  v0 = sub_26666C958();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26663E8C8(char a1)
{
  if (!a1)
  {
    return 0x6C61767265746E69;
  }

  if (a1 == 1)
  {
    return 0x636E657571657266;
  }

  return 0x6557664F73796164;
}

uint64_t sub_26663E94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26663E87C();
  *a2 = result;
  return result;
}

uint64_t sub_26663E97C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26663E8C8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26663E9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26663E87C();
  *a1 = result;
  return result;
}

uint64_t sub_26663E9D8(uint64_t a1)
{
  v2 = sub_26663F0A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26663EA14(uint64_t a1)
{
  v2 = sub_26663F0A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26663EA50()
{
  v1 = *(v0 + 56);

  return v0;
}

uint64_t sub_26663EA78()
{
  sub_26663EA50();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_26663EAD0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC70, &qword_26667B0D0);
  v6 = OUTLINED_FUNCTION_3_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6, v11);
  v13 = &v20[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26663F0A0();
  sub_26666CBE8();
  v15 = *(v3 + 24);
  v16 = *(v3 + 32);
  v23 = 0;
  sub_26666CA28();
  if (!v2)
  {
    v17 = *(v3 + 40);
    v18 = *(v3 + 48);
    v22 = 1;
    sub_26666CA28();
    v21 = *(v3 + 56);
    v20[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
    sub_26663F0F4(&qword_28007FC78);
    sub_26666CA78();
  }

  return (*(v8 + 8))(v13, v5);
}

uint64_t sub_26663ECA8(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_26663ED1C(a1);
  return v2;
}

uint64_t sub_26663ED1C(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC50, &qword_26667B0C0);
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5, v10);
  v12 = v17 - v11;
  *(v1 + 16) = 0;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26663F0A0();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventRecurrence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = 0;
    *(v1 + 24) = sub_26666C998();
    *(v1 + 32) = v14 & 1;
    v19 = 1;
    *(v1 + 40) = sub_26666C998();
    *(v1 + 48) = v15 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC60, &qword_26667B0C8);
    v18 = 2;
    sub_26663F0F4(&qword_28007FC68);
    sub_26666C9E8();
    (*(v7 + 8))(v12, v4);
    *(v1 + 56) = v17[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26663EFA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_26663ECA8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26663F060(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarEventRecurrence();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26663F0A0()
{
  result = qword_28007FC58;
  if (!qword_28007FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC58);
  }

  return result;
}

uint64_t sub_26663F0F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007FC60, &qword_26667B0C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventRecurrence.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26663F240()
{
  result = qword_28007FC80;
  if (!qword_28007FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC80);
  }

  return result;
}

unint64_t sub_26663F298()
{
  result = qword_28007FC88;
  if (!qword_28007FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC88);
  }

  return result;
}

unint64_t sub_26663F2F0()
{
  result = qword_28007FC90;
  if (!qword_28007FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FC90);
  }

  return result;
}

uint64_t sub_26663F344()
{
  sub_26659236C(v0 + 120, v4, &qword_28007DCC8, &unk_2666724D0);
  v1 = v5;
  if (v5)
  {
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(v4, v5);
    LOBYTE(v1) = (*(v2 + 24))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_266557D74(v4, &qword_28007DCC8, &unk_2666724D0);
  }

  return v1 & 1;
}

uint64_t sub_26663F3F0()
{
  sub_26659236C(v0 + 120, v6, &qword_28007DCC8, &unk_2666724D0);
  if (!v7)
  {
    sub_266557D74(v6, &qword_28007DCC8, &unk_2666724D0);
    return 4;
  }

  __swift_project_boxed_opaque_existential_1(v6, v7);
  v1 = OUTLINED_FUNCTION_4_39();
  if (!v2(v1))
  {
    __swift_destroy_boxed_opaque_existential_1(v6);
    return 4;
  }

  v3 = sub_26666A468();

  if (v3)
  {
    v4 = sub_266576A30();
  }

  else
  {
    v4 = 4;
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_26663F4C8()
{
  sub_26659236C(v0 + 120, v5, &qword_28007DCC8, &unk_2666724D0);
  if (!v6)
  {
    sub_266557D74(v5, &qword_28007DCC8, &unk_2666724D0);
    return 2;
  }

  __swift_project_boxed_opaque_existential_1(v5, v6);
  v1 = OUTLINED_FUNCTION_4_39();
  if (!v2(v1))
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    return 2;
  }

  v3 = sub_2665C530C();

  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_26663F588()
{
  v1 = v0;
  v2 = sub_266668968();
  v3 = OUTLINED_FUNCTION_3_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3, v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v12 = sub_26666A238();
  v13 = OUTLINED_FUNCTION_3_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13, v18);
  OUTLINED_FUNCTION_1_0();
  v21 = v20 - v19;
  v198 = sub_26666A4F8();
  v22 = OUTLINED_FUNCTION_3_0(v198);
  v194 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22, v26);
  OUTLINED_FUNCTION_8_10();
  v197 = v27;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v28, v29);
  v196 = &v166 - v30;
  v31 = sub_26666A2A8();
  v32 = OUTLINED_FUNCTION_3_0(v31);
  v199 = v33;
  v200 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v32, v36);
  OUTLINED_FUNCTION_8_10();
  v186 = v37;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v38, v39);
  v188 = &v166 - v40;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v41, v42);
  v189 = &v166 - v43;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v44, v45);
  v195 = &v166 - v46;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v47, v48);
  v201 = (&v166 - v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FC98, &qword_26667B398);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8, v52);
  OUTLINED_FUNCTION_8_10();
  v187 = v53;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v54, v55);
  v190 = &v166 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007FCA0, &qword_26667B3A0);
  v58 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57 - 8, v59);
  v61 = (&v166 - v60);
  v62 = sub_26666A4D8();
  v63 = OUTLINED_FUNCTION_3_0(v62);
  v191 = v64;
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v63, v67);
  OUTLINED_FUNCTION_1_0();
  v192 = v69 - v68;
  sub_26659236C(v1 + 120, v202, &qword_28007DCC8, &unk_2666724D0);
  if (!v203)
  {
    v78 = &qword_28007DCC8;
    v79 = &unk_2666724D0;
    v80 = v202;
LABEL_16:
    sub_266557D74(v80, v78, v79);
    goto LABEL_17;
  }

  v185 = v11;
  v184 = v5;
  v70 = OUTLINED_FUNCTION_3_38();
  if (!v71(v70))
  {
    __swift_destroy_boxed_opaque_existential_1(v202);
    goto LABEL_17;
  }

  v72 = sub_26666AA08();
  v74 = v73;

  __swift_destroy_boxed_opaque_existential_1(v202);
  if (!v74)
  {
LABEL_17:
    if (qword_28156C150 != -1)
    {
LABEL_67:
      OUTLINED_FUNCTION_1_1();
    }

    v84 = sub_26666C168();
    __swift_project_value_buffer(v84, qword_28156D7E8);
    v85 = sub_26666C148();
    v86 = sub_26666C618();
    if (OUTLINED_FUNCTION_52_0(v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v88, v89, v90, v91, v87, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    return 0;
  }

  v179 = v72;
  v183 = v74;
  sub_26659236C(v1 + 120, v202, &qword_28007DCC8, &unk_2666724D0);
  if (!v203)
  {
    OUTLINED_FUNCTION_21_12();
    sub_266557D74(v202, &qword_28007DCC8, &unk_2666724D0);
LABEL_14:
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v81, v82, v83, v62);
    goto LABEL_15;
  }

  v75 = OUTLINED_FUNCTION_3_38();
  if (!v76(v75))
  {
    OUTLINED_FUNCTION_21_12();
    __swift_destroy_boxed_opaque_existential_1(v202);
    goto LABEL_14;
  }

  v77 = sub_26666A208();

  __swift_destroy_boxed_opaque_existential_1(v202);
  if (!v77)
  {
    OUTLINED_FUNCTION_21_12();
    goto LABEL_14;
  }

  sub_2665EC560(v77, v61);

  if (__swift_getEnumTagSinglePayload(v61, 1, v62) == 1)
  {
    OUTLINED_FUNCTION_21_12();
LABEL_15:
    v78 = qword_28007FCA0;
    v79 = &qword_26667B3A0;
    v80 = v61;
    goto LABEL_16;
  }

  (*(v191 + 32))(v192, v61, v62);
  sub_26659236C(v1 + 120, v202, &qword_28007DCC8, &unk_2666724D0);
  v167 = v2;
  if (v203)
  {
    v94 = OUTLINED_FUNCTION_3_38();
    v96 = v95(v94);
    v97 = v190;
    v98 = v200;
    if (v96)
    {
      v99 = sub_26666A478();

      __swift_destroy_boxed_opaque_existential_1(v202);
      v100 = v99;
      if (v99)
      {
        v101 = 0;
        v178 = *(v100 + 16);
        v177 = v199 + 16;
        v176 = *MEMORY[0x277D5E690];
        v175 = (v194 + 104);
        v174 = (v194 + 8);
        v170 = (v199 + 8);
        v193 = v15 + 8;
        v194 = 0x800000026667F7E0;
        v169 = (v199 + 32);
        v171 = MEMORY[0x277D84F90];
        v102 = v201;
        v168 = v62;
        v172 = v100;
        v173 = v15 + 16;
        while (1)
        {
          if (v101 == v178)
          {

            v97 = v190;
            sub_2665EC578(v171, v190);

            goto LABEL_52;
          }

          if (v101 >= *(v100 + 16))
          {
            break;
          }

          v103 = v15;
          v104 = v12;
          v97 = v62;
          v181 = (*(v199 + 80) + 32) & ~*(v199 + 80);
          v180 = *(v199 + 72);
          (*(v199 + 16))(v102, v100 + v181 + v180 * v101, v98);
          v182 = v101 + 1;
          v105 = v196;
          sub_26666A288();
          v107 = v197;
          v106 = v198;
          (*v175)(v197, v176, v198);
          v108 = MEMORY[0x266786830](v105, v107);
          v109 = *v174;
          (*v174)(v107, v106);
          v109(v105, v106);
          v102 = v201;
          v62 = v97;
          v12 = v104;
          v15 = v103;
          if (v108)
          {
            v97 = sub_26666A268();
            v110 = 0;
            v111 = *(v97 + 16);
            while (1)
            {
              if (v111 == v110)
              {

                v62 = v168;
                v102 = v201;
                goto LABEL_40;
              }

              if (v110 >= *(v97 + 16))
              {
                __break(1u);
                goto LABEL_67;
              }

              (*(v103 + 16))(v21, v97 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v110, v12);
              if (sub_26666A228() == 0xD000000000000011 && v194 == v112)
              {
                break;
              }

              ++v110;
              v114 = sub_26666CAC8();

              v115 = OUTLINED_FUNCTION_17_14();
              v116(v115);
              if (v114)
              {
                goto LABEL_42;
              }
            }

            v117 = OUTLINED_FUNCTION_17_14();
            v118(v117);
LABEL_42:

            v119 = *v169;
            v102 = v201;
            (*v169)(v195, v201, v200);
            v120 = v171;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v122 = v120;
            v202[0] = v120;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v123 = *(v120 + 16);
              sub_266633A38();
              v102 = v201;
              v122 = v202[0];
            }

            v62 = v168;
            v124 = v181;
            v125 = *(v122 + 16);
            v97 = v125 + 1;
            if (v125 >= *(v122 + 24) >> 1)
            {
              sub_266633A38();
              v102 = v201;
              v122 = v202[0];
            }

            *(v122 + 16) = v97;
            v171 = v122;
            v126 = v122 + v124 + v125 * v180;
            v98 = v200;
            v119(v126, v195, v200);
          }

          else
          {
LABEL_40:
            v98 = v200;
            (*v170)(v102, v200);
          }

          v100 = v172;
          v101 = v182;
        }

        __break(1u);
        goto LABEL_69;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v202);
    }
  }

  else
  {
    sub_266557D74(v202, &qword_28007DCC8, &unk_2666724D0);
    v97 = v190;
    v98 = v200;
  }

  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v98);
LABEL_52:
  v130 = v187;
  sub_26659236C(v97, v187, &qword_28007FC98, &qword_26667B398);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v130, 1, v98);
  v132 = v188;
  v133 = v189;
  if (EnumTagSinglePayload == 1)
  {

    sub_266557D74(v130, &qword_28007FC98, &qword_26667B398);
    if (qword_28156C150 == -1)
    {
LABEL_54:
      v134 = sub_26666C168();
      __swift_project_value_buffer(v134, qword_28156D7E8);
      v135 = sub_26666C148();
      v136 = sub_26666C618();
      if (OUTLINED_FUNCTION_52_0(v136))
      {
        v137 = swift_slowAlloc();
        *v137 = 0;
        OUTLINED_FUNCTION_43_2();
        _os_log_impl(v138, v139, v140, v141, v137, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      sub_266557D74(v97, &qword_28007FC98, &qword_26667B398);
      v142 = OUTLINED_FUNCTION_7_27();
      v143(v142);
      return 0;
    }

LABEL_69:
    OUTLINED_FUNCTION_1_1();
    goto LABEL_54;
  }

  v144 = v199;
  (*(v199 + 32))(v189, v130, v98);
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v145 = sub_26666C168();
  __swift_project_value_buffer(v145, qword_28156D7E8);
  v146 = *(v144 + 16);
  v146(v132, v133, v98);
  v147 = sub_26666C148();
  v148 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v148))
  {
    v149 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v202[0] = v201;
    *v149 = 136315138;
    v146(v186, v132, v98);
    v150 = sub_26666C318();
    v152 = v151;
    v153 = v98;
    v154 = *(v144 + 8);
    v154(v132, v153);
    v155 = sub_2665BFC90(v150, v152, v202);

    *(v149 + 4) = v155;
    OUTLINED_FUNCTION_43_2();
    _os_log_impl(v156, v157, v158, v159, v149, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v201);
    v133 = v189;
    OUTLINED_FUNCTION_4_1();
    v97 = v190;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v160 = v98;
    v154 = *(v144 + 8);
    v154(v132, v160);
  }

  v161 = v185;
  v92 = sub_2665D9C5C(v179, v183, v133);
  v163 = v162;

  if (v163)
  {
    v202[0] = v92;
    v202[1] = v163;
    sub_266668958();
    sub_266595F88();
    v92 = sub_26666C6E8();
    (*(v184 + 8))(v161, v167);
  }

  v154(v133, v200);
  sub_266557D74(v97, &qword_28007FC98, &qword_26667B398);
  v164 = OUTLINED_FUNCTION_7_27();
  v165(v164);
  return v92;
}

uint64_t sub_266640430()
{
  v2 = v0[17];
  sub_26659236C(v2 + 120, (v0 + 2), &qword_28007DCC8, &unk_2666724D0);
  if (v0[5])
  {
    v3 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v4 = OUTLINED_FUNCTION_4_39();
    v6 = v5(v4);
    v0[18] = v6;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (v6)
    {
      v7 = v0[17];
      v8 = __swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
      v9 = sub_266640D2C(v6, *v8, 1);
      v0[19] = v9;
      sub_26659236C(v2 + 120, (v0 + 12), &qword_28007DCC8, &unk_2666724D0);
      v10 = v0[15];
      if (v10)
      {
        v11 = v0[16];
        __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
        v12 = (*(v11 + 16))(v10, v11);
        __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      }

      else
      {
        sub_266557D74((v0 + 12), &qword_28007DCC8, &unk_2666724D0);
        v12 = 0;
      }

      v0[20] = v12;
      v23 = v0[17];
      v24 = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
      v25 = *__swift_project_boxed_opaque_existential_1((v7 + 40), *(v7 + 64));
      v26 = OUTLINED_FUNCTION_20_19(&unk_26667B388);
      v0[21] = v26;
      *v26 = v0;
      v26[1] = sub_26664079C;

      return v27(v9, v12, v23 + 10, v24, v25);
    }
  }

  else
  {
    sub_266557D74((v0 + 2), &qword_28007DCC8, &unk_2666724D0);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v13 = sub_26666C168();
  __swift_project_value_buffer(v13, qword_28156D7E8);
  v14 = sub_26666C148();
  v15 = sub_26666C618();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_266549000, v14, v15, "[FindEventUSOIntentWrapper] USO Parse does not contain a target, creating empty intent", v16, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v17 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  sub_26659236C(v0[17] + 120, (v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  v18 = v0[10];
  if (v18)
  {
    OUTLINED_FUNCTION_16_18();
    v1(v18, v2);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    v19 = v17;
    sub_266557D74((v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  }

  OUTLINED_FUNCTION_15_17();

  v20 = OUTLINED_FUNCTION_1_10();

  return v21(v20);
}

uint64_t sub_26664079C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 176) = v5;

  return MEMORY[0x2822009F8](sub_2666408B4, 0, 0);
}

uint64_t sub_2666408B4()
{
  v4 = v0[18];
  v3 = v0[19];

  v5 = v0[22];
  sub_26659236C(v0[17] + 120, (v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  v6 = v0[10];
  if (v6)
  {
    OUTLINED_FUNCTION_16_18();
    v2(v6, v1);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  else
  {
    v7 = v5;
    sub_266557D74((v0 + 7), &qword_28007DCC8, &unk_2666724D0);
  }

  OUTLINED_FUNCTION_15_17();

  v8 = OUTLINED_FUNCTION_1_10();

  return v9(v8);
}

uint64_t sub_2666409B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266640A48;

  return sub_266640410();
}

uint64_t sub_266640A48()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_1_10();

  return v5(v4);
}

uint64_t sub_266640B38()
{
  v1 = *v0;
  sub_26666ABE8();
  return v3;
}

uint64_t sub_266640B6C()
{
  v1 = *v0;
  sub_26666ABD8();
  return v3;
}

uint64_t sub_266640BA0()
{
  v1 = *v0;
  sub_26666AC08();
  return v3;
}

uint64_t sub_266640BD4()
{
  v1 = *v0;
  sub_26666AC48();
  return v3;
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents26FindEventUSOTaskConforming_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266640C74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_266640CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266640D2C(uint64_t a1, uint64_t a2, char a3)
{
  v26[3] = &type metadata for CalendarReferenceResolver;
  v26[4] = &off_28780BAC8;
  v26[0] = a2;

  if (sub_26666A468())
  {

    if (sub_26666A468())
    {

      v5 = a3 ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 & 1;
    _os_log_impl(&dword_266549000, v7, v8, "[USOIntentHelpers] Should attempt calendar event resolution: %{BOOL}d", v9, 8u);
    OUTLINED_FUNCTION_4_1();
  }

  if ((v5 & 1) != 0 && (v10 = __swift_project_boxed_opaque_existential_1(v26, &type metadata for CalendarReferenceResolver), (v11 = sub_266591F6C(a1, *v10)) != 0))
  {
    v12 = v11;

    v13 = sub_26666C148();
    v14 = sub_26666C618();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315138;
      sub_26666AA48();

      v17 = sub_26666C318();
      v19 = sub_2665BFC90(v17, v18, &v25);

      *(v15 + 4) = v19;
      OUTLINED_FUNCTION_43_2();
      _os_log_impl(v20, v21, v22, v23, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    a1 = v12;
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  return a1;
}

uint64_t sub_266640F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3F0, &unk_26666F120) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140) - 8) + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[5] = type metadata accessor for CalendarDateTimeResolver();
  v5[6] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  sub_26661709C(a4, boxed_opaque_existential_1);
  v5[10] = &type metadata for CalendarReferenceResolver;
  v5[11] = &off_28780BAC8;
  v5[7] = a5;

  return MEMORY[0x2822009F8](sub_2666410B4, 0, 0);
}

uint64_t sub_2666410B4()
{
  v1 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = sub_26666A9E8();
  v0[24] = v2;
  if (qword_28156D128 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = sub_26666B628();
  v5 = __swift_project_value_buffer(v4, qword_28156D830);
  sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_20_19(&dword_266674F08);
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_2666411E8;
  v11 = v0[23];

  return v13(v2, v5, 1, v11);
}

uint64_t sub_2666411E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v9[17] = v1;
  v9[18] = a1;
  v3 = v2[25];
  v4 = v2[24];
  v5 = v2[23];
  v6 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;

  sub_266557D74(v5, &qword_28007D140, &qword_26666F140);

  return MEMORY[0x2822009F8](sub_266641328, 0, 0);
}

uint64_t sub_266641328()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v7 = sub_26666A9D8();
  sub_26666A258();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_26655358C((v0 + 7), (v0 + 12));
  v12 = sub_26663B210(v7, v2, (v0 + 12), v5, v6);

  sub_266557D74((v0 + 12), &qword_28007D3F8, &qword_26667B390);
  sub_266557D74(v2, &qword_28007D3F0, &unk_26666F120);
  v13 = sub_2665D9924();
  v14 = sub_26666AA08();
  v16 = v15;
  if (v4)
  {
    v17 = v0[20];
    v18 = sub_2665D9A28();
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[18];
  v21 = v0[22];
  v20 = v0[23];
  v22 = objc_allocWithZone(MEMORY[0x277CD3C10]);
  sub_26660B190(v14, v16, v19, v12, v13, v18);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v23 = OUTLINED_FUNCTION_1_10();

  return v24(v23);
}

id sub_2666414C4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v45[3] = &type metadata for CalendarReferenceResolver;
  v45[4] = &off_28780BAC8;
  v45[0] = a3;

  v7 = a1;
  if ((a2 & 1) != 0 && (sub_2665667CC() & 1) != 0 && sub_26663F3F0() == 4)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_266549000, v9, v10, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v11, 2u);
      MEMORY[0x266789690](v11, -1, -1);
    }

    v12 = *__swift_project_boxed_opaque_existential_1(v45, &type metadata for CalendarReferenceResolver);
    sub_26663E15C();
    if (v13)
    {
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = sub_26666AA08();
      v19 = v18;
      if (sub_26666A9E8())
      {
        v20 = sub_26655F060();
      }

      else
      {
        v20 = 0;
      }

      v24 = objc_allocWithZone(MEMORY[0x277CD3C10]);
      v25 = sub_26660B190(v17, v19, v20, 0, 0, 0);

      v7 = v25;
    }

    else
    {
      v21 = sub_26666C148();
      v22 = sub_26666C618();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_266549000, v21, v22, "[FindEventsIntentWrapping] No calendar event found in SRR", v23, 2u);
        MEMORY[0x266789690](v23, -1, -1);
      }
    }
  }

  v26 = v7;
  v27 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v28 = sub_26666C168();
  __swift_project_value_buffer(v28, qword_28156D7E8);
  v29 = sub_26666C148();
  v30 = sub_26666C618();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v27;
    *v32 = v27;
    v33 = v27;
    _os_log_impl(&dword_266549000, v29, v30, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v31, 0xCu);
    sub_266557D74(v32, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v32, -1, -1);
    MEMORY[0x266789690](v31, -1, -1);
  }

  sub_2666419C8(a4, v44);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v43 = v37;
    *v36 = 136315138;
    sub_26663F3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v38 = sub_26666C318();
    v40 = v39;
    sub_266641A00(v44);
    v41 = sub_2665BFC90(v38, v40, &v43);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  else
  {

    sub_266641A00(v44);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v27;
}

uint64_t OUTLINED_FUNCTION_3_38()
{
  v2 = *(v1 - 96);
  __swift_project_boxed_opaque_existential_1((v1 - 128), v0);
  v3 = *(v2 + 8);
  return v0;
}

id OUTLINED_FUNCTION_15_17()
{
  v3 = *(v2 + 136);
  v4 = *__swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));

  return sub_2666414C4(v0, v1 & 1, v4, v3);
}

id OUTLINED_FUNCTION_16_18()
{
  v3 = *(v2 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), v1);
  v4 = *(v3 + 32);

  return v0;
}

uint64_t OUTLINED_FUNCTION_20_19@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_21_12()
{
  v2 = *(v0 - 280);
}

uint64_t sub_266641B5C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 280) = v3;
  *(v1 + 40) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  OUTLINED_FUNCTION_3_3(v5);
  v7 = *(v6 + 64);
  *(v1 + 64) = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  OUTLINED_FUNCTION_3_3(v8);
  v10 = *(v9 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v11);
  v13 = *(v12 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  v14 = sub_266668D38();
  *(v1 + 152) = v14;
  v15 = *(v14 - 8);
  *(v1 + 160) = v15;
  v16 = *(v15 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_266641D38()
{
  v1 = [*(v0 + 48) dateTimeRange];
  *(v0 + 208) = v1;
  v2 = 0;
  if ((sub_266566C70() & 1) != 0 && v1)
  {
    v3 = v1;
    v2 = sub_2665D37E8();
  }

  v4 = *(v0 + 280);
  type metadata accessor for CalendarResultSetIntroOptions.Builder();
  *(v0 + 216) = swift_initStackObject();
  v5 = sub_266583350();
  *(v0 + 224) = v5;
  if (v4 == 4)
  {
    v116 = v2;
    v6 = *(v0 + 40);
    v7 = sub_2665C485C(v6);
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = v6 + 32;
    do
    {
      v12 = v8;
      if (v7 == v8)
      {
        break;
      }

      if (v9)
      {
        v13 = MEMORY[0x266788B60](v8, *(v0 + 40));
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_80;
        }

        v13 = *(v11 + 8 * v8);
      }

      if (__OFADD__(v12, 1))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v14 = v13;
      v15 = sub_2665EC908();

      v8 = v12 + 1;
    }

    while ((v15 & 1) != 0);
    v20 = 0;
    v5[23] = v7 == v12;
    do
    {
      v21 = v20;
      if (v7 == v20)
      {
        break;
      }

      if (v9)
      {
        v22 = MEMORY[0x266788B60](v20, *(v0 + 40));
      }

      else
      {
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_82;
        }

        v22 = *(v11 + 8 * v20);
      }

      if (__OFADD__(v21, 1))
      {
        goto LABEL_81;
      }

      v23 = v22;
      v24 = sub_2665EC938();

      v20 = v21 + 1;
    }

    while ((v24 & 1) != 0);
    v25 = *(v0 + 40);
    v5[22] = v7 == v21;
    v5[20] = sub_2665EEE04(v25);
    v5[18] = v116 & 1;
    v5[21] = 0;
    v5[19] = sub_2665EEC64(v25);
    if (v1)
    {
      v26 = v1;
      v27 = sub_2665D3FB8();
    }

    else
    {
      v27 = 0;
    }

    v5[16] = v27 & 1;
    sub_2665D4854();
    v5[17] = (v28 & 1) == 0;
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_83:
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C618();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[FindEventsCATsSimple] Making result introduction for ordinal request that returned multiple events.", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    v5[16] = 1;
  }

  type metadata accessor for CalendarResultSetIntroOptions();
  swift_allocObject();

  v30 = sub_266583388(v29);
  *(v0 + 232) = v30;
  if (v1 && (v5[20] & 1) == 0)
  {
    v40 = v1;
    goto LABEL_74;
  }

  v117 = sub_2665C485C(*(v0 + 40));
  v111 = v30;
  if (!v117)
  {
    goto LABEL_39;
  }

  v31 = *(v0 + 40);
  v32 = v31 & 0xC000000000000001;
  sub_2665C4864(0, (v31 & 0xC000000000000001) == 0, v31);
  v33 = *(v0 + 40);
  v34 = v32 ? MEMORY[0x266788B60](0, v33) : *(v33 + 32);
  v35 = v34;
  v36 = [v34 dateTimeRange];

  if (v36)
  {
    v37 = [v36 startDate];

    if (v37)
    {
      v38 = *(v0 + 136);
      sub_266668CE8();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v5 = *(v0 + 144);
    v1 = *(v0 + 152);
    v41 = *(v0 + 136);
    __swift_storeEnumTagSinglePayload(v41, v39, 1, v1);
    sub_266557CE4(v41, v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
    {
      (*(*(v0 + 160) + 32))(*(v0 + 200), *(v0 + 144), *(v0 + 152));
      goto LABEL_46;
    }
  }

  else
  {
LABEL_39:
    __swift_storeEnumTagSinglePayload(*(v0 + 144), 1, 1, *(v0 + 152));
  }

  v42 = *(v0 + 200);
  v5 = *(v0 + 144);
  v1 = *(v0 + 152);
  sub_266668CF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v1) != 1)
  {
    sub_266557D74(*(v0 + 144), &qword_28007D140, &qword_26666F140);
  }

LABEL_46:
  v43 = 0;
  v44 = *(v0 + 40);
  v114 = v44 & 0xC000000000000001;
  v45 = v44 & 0xFFFFFFFFFFFFFF8;
  v46 = v44 + 32;
  v110 = *(v0 + 160);
  v112 = (v110 + 32);
  v113 = MEMORY[0x277D84F90];
  while (v117 != v43)
  {
    if (v114)
    {
      v47 = MEMORY[0x266788B60](v43, *(v0 + 40));
    }

    else
    {
      if (v43 >= *(v45 + 16))
      {
        goto LABEL_78;
      }

      v47 = *(v46 + 8 * v43);
    }

    v5 = (v43 + 1);
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v48 = v47;
    v49 = [v48 dateTimeRange];
    if (v49)
    {
      v50 = v49;
      v51 = [v50 endDate];
      if (v51)
      {
        v52 = v51;
        v53 = *(v0 + 96);
        sub_266668CE8();

        v54 = 0;
      }

      else
      {
        v54 = 1;
      }

      v55 = *(v0 + 104);
      v56 = *(v0 + 112);
      v57 = *(v0 + 96);
      __swift_storeEnumTagSinglePayload(v57, v54, 1, *(v0 + 152));
      sub_266557CE4(v57, v55);
      sub_266557CE4(v55, v56);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v0 + 112), 1, 1, *(v0 + 152));
    }

    v58 = *(v0 + 152);
    v1 = *(v0 + 120);
    sub_266557CE4(*(v0 + 112), v1);

    if (__swift_getEnumTagSinglePayload(v1, 1, v58) == 1)
    {
      sub_266557D74(*(v0 + 120), &qword_28007D140, &qword_26666F140);
      ++v43;
    }

    else
    {
      v59 = *v112;
      (*v112)(*(v0 + 184), *(v0 + 120), *(v0 + 152));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = *(v113 + 16);
        sub_2665C6ED4();
        v113 = v63;
      }

      v1 = *(v113 + 16);
      if (v1 >= *(v113 + 24) >> 1)
      {
        sub_2665C6ED4();
        v113 = v64;
      }

      v60 = *(v0 + 184);
      v61 = *(v0 + 152);
      *(v113 + 16) = v1 + 1;
      v59(v113 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v1, v60, v61);
      ++v43;
    }
  }

  v65 = *(v0 + 152);
  v66 = *(v0 + 128);
  sub_266643D18(v113, v66);

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66, 1, v65);
  v68 = *(v0 + 152);
  v69 = *(v0 + 128);
  if (EnumTagSinglePayload == 1)
  {
    v70 = *(v0 + 192);
    sub_266668CF8();
    if (__swift_getEnumTagSinglePayload(v69, 1, v68) != 1)
    {
      sub_266557D74(*(v0 + 128), &qword_28007D140, &qword_26666F140);
    }
  }

  else
  {
    (*v112)(*(v0 + 192), *(v0 + 128), *(v0 + 152));
  }

  v71 = *(v0 + 200);
  v72 = *(v0 + 168);
  v73 = *(v0 + 152);
  sub_266668CF8();
  sub_2665EF878();
  if (sub_26666C2A8())
  {
    v74 = *(v0 + 160);
    (*v112)(*(v0 + 176), *(v0 + 168), *(v0 + 152));
    v75 = *(v74 + 16);
  }

  else
  {
    v76 = *(v0 + 200);
    v77 = *(v0 + 176);
    v78 = *(v0 + 152);
    v79 = *(v0 + 160);
    (*(v79 + 8))(*(v0 + 168), v78);
    v75 = *(v79 + 16);
    v75(v77, v76, v78);
  }

  v80 = *(v0 + 192);
  v81 = *(v0 + 176);
  v115 = v81;
  v118 = *(v0 + 200);
  v83 = *(v0 + 152);
  v82 = *(v0 + 160);
  v85 = *(v0 + 80);
  v84 = *(v0 + 88);
  v87 = *(v0 + 64);
  v86 = *(v0 + 72);
  (v75)(v84);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v83);
  v75(v85, v80, v83);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v91, v92, v93, v83);
  sub_266668E58();
  sub_266668E68();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v97);
  sub_266668EA8();
  sub_266668EB8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);
  v102 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v40 = sub_26658F56C(v84, v85, v86, v87);
  v103 = *(v82 + 8);
  v103(v115, v83);
  v103(v80, v83);
  v103(v118, v83);
  v30 = v111;
LABEL_74:
  v104 = v40;
  *(v0 + 240) = v104;
  sub_2665C485C(*(v0 + 40));
  sub_26666BB78();
  v105 = sub_2665CAB68(v104);
  *(v0 + 248) = v105;

  v106 = swift_task_alloc();
  *(v0 + 256) = v106;
  *v106 = v0;
  v106[1] = sub_266642710;
  v107 = *(v0 + 56);
  v108 = OUTLINED_FUNCTION_12_23();

  return sub_2665A3418(v108, 0, v105, v30);
}

uint64_t sub_266642710(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v8 = v7[32];
  v9 = v7[31];
  v10 = v7[29];
  v11 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;
  *(v5 + 264) = v1;

  if (!v1)
  {
    *(v5 + 272) = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_266642864()
{
  OUTLINED_FUNCTION_2_38();

  v2 = *(v0 + 8);
  v3 = *(v0 + 272);

  return v2(v3);
}

uint64_t sub_26664297C()
{
  OUTLINED_FUNCTION_2_38();

  OUTLINED_FUNCTION_24_1();
  v3 = *(v0 + 264);

  return v2();
}

uint64_t sub_266642A8C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  *(v1 + 172) = v3;
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v6);
  v8 = *(v7 + 64);
  *(v1 + 208) = OUTLINED_FUNCTION_19();
  v9 = sub_266668D98();
  *(v1 + 216) = v9;
  v10 = *(v9 - 8);
  *(v1 + 224) = v10;
  v11 = *(v10 + 64);
  *(v1 + 232) = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266642B70()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v1, v0 + 16);
  v4 = sub_2665CA7F4(v3, (v0 + 16));
  *(v0 + 240) = v4;
  v5 = [v2 requestedEventAttribute];
  if (v5 == 1)
  {

    v17 = swift_task_alloc();
    *(v0 + 264) = v17;
    *v17 = v0;
    v17[1] = sub_266643058;
    v18 = *(v0 + 200);
    v19 = OUTLINED_FUNCTION_12_23();

    return sub_2665A2D98(v19);
  }

  else if (v5 == 2)
  {
    v10 = *(v0 + 232);
    v11 = *(v0 + 192);
    v12 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_266669648();
    v13 = swift_task_alloc();
    *(v0 + 280) = v13;
    *v13 = v0;
    v13[1] = sub_2666431D0;
    v14 = *(v0 + 232);
    v15 = *(v0 + 200);
    v16 = *(v0 + 176);

    return sub_266643758(v16, v4, v14);
  }

  else
  {
    if (v5 == 3)
    {
      if (*(v0 + 172) == 4)
      {

        v6 = swift_task_alloc();
        *(v0 + 248) = v6;
        *v6 = v0;
        v6[1] = sub_266642EE0;
        v7 = *(v0 + 200);
        v8 = OUTLINED_FUNCTION_12_23();

        return sub_2665A2C84(v8);
      }

      v20 = 1;
    }

    else
    {
      v20 = *(v0 + 172) != 4;
    }

    v21 = *(v0 + 184);
    type metadata accessor for CalendarResultSetSingleOptions.Builder();
    swift_initStackObject();
    v22 = sub_26658A5F0();
    *(v22 + 16) = 1;
    type metadata accessor for CalendarResultSetSingleOptions();
    swift_allocObject();
    *(v0 + 296) = sub_26658A628(v22);

    v23 = 1;
    if ((sub_2665667CC() & 1) != 0 && v20)
    {
      v24 = *(v0 + 208);
      v25 = *(v0 + 172);
      sub_2665766B4();
      v23 = 0;
    }

    v26 = *(v0 + 208);
    v27 = sub_26666BDA8();
    __swift_storeEnumTagSinglePayload(v26, v23, 1, v27);

    v28 = swift_task_alloc();
    *(v0 + 304) = v28;
    *v28 = v0;
    v28[1] = sub_26664339C;
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    OUTLINED_FUNCTION_12_23();

    return sub_2665A370C();
  }
}

uint64_t sub_266642EE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v3[7] = v1;
  v3[8] = v5;
  v3[9] = v0;
  OUTLINED_FUNCTION_9_25();
  v7 = *(v6 + 248);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[32] = v0;

  if (!v0)
  {
    v10 = v3[30];
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266642FE8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_8_24();

  v2 = OUTLINED_FUNCTION_14_4();

  return v3(v2);
}

uint64_t sub_266643058()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v3[10] = v1;
  v3[11] = v5;
  v3[12] = v0;
  OUTLINED_FUNCTION_9_25();
  v7 = *(v6 + 264);
  v8 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;
  v3[34] = v0;

  if (!v0)
  {
    v10 = v3[30];
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266643160()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_8_24();

  v2 = OUTLINED_FUNCTION_14_4();

  return v3(v2);
}

uint64_t sub_2666431D0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[13] = v1;
  v2[14] = v4;
  v2[15] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = *(v5 + 280);
  v8 = v7[29];
  v9 = v7[28];
  v10 = v7[27];
  v11 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;
  *(v13 + 288) = v0;

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_26664332C()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 112);
  OUTLINED_FUNCTION_8_24();

  v2 = OUTLINED_FUNCTION_14_4();

  return v3(v2);
}

uint64_t sub_26664339C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[16] = v1;
  v2[17] = v4;
  v2[18] = v0;
  OUTLINED_FUNCTION_9_25();
  v6 = *(v5 + 304);
  v8 = v7[37];
  v9 = v7[30];
  v10 = v7[26];
  v11 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v12 = v11;
  *(v13 + 312) = v0;

  sub_266557D74(v10, &unk_28007D130, &unk_266671DF0);

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_266643508()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 296);

  v2 = *(v0 + 136);
  OUTLINED_FUNCTION_8_24();

  v3 = OUTLINED_FUNCTION_14_4();

  return v4(v3);
}

uint64_t sub_266643580()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 240);

  v2 = *(v0 + 256);
  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_2666435F8()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 240);

  v2 = *(v0 + 272);
  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_266643670()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2666436E0()
{
  OUTLINED_FUNCTION_11();
  v1 = *(v0 + 296);

  v2 = *(v0 + 312);
  OUTLINED_FUNCTION_8_24();

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_266643758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  OUTLINED_FUNCTION_4_14();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266643788()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_15_18(2);
  v5 = v4;
  v0[6] = v4;
  OUTLINED_FUNCTION_15_18(4);
  v7 = v6;
  v0[7] = v6;
  OUTLINED_FUNCTION_15_18(3);
  v9 = v8;
  v0[8] = v8;
  OUTLINED_FUNCTION_15_18(0);
  v11 = v10;
  v0[9] = v10;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_26664388C;
  v13 = v0[5];

  return sub_2665A2FD4(v2, v5, v7, v9, v11);
}

uint64_t sub_26664388C()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;
  v5[11] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {
    v15 = v5[8];
    v14 = v5[9];
    v18 = v5 + 6;
    v16 = v5[6];
    v17 = v18[1];

    v19 = *(v9 + 8);

    return v19(v3);
  }
}

uint64_t sub_2666439E4()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];

  OUTLINED_FUNCTION_24_1();
  v6 = v0[11];

  return v5();
}

void sub_266643A64(id a1, void *a2, uint64_t a3)
{
  v5 = sub_2665B0ECC(a2);
  if (v5)
  {
    v6 = v5;
    v15 = a3;
    v16 = MEMORY[0x277D84F90];
    v7 = sub_2665C485C(v5);
    for (i = 0; ; ++i)
    {
      if (v7 == i)
      {

        MEMORY[0x28223BE20](v12, v13);
        v14[2] = v15;
        sub_2665C90F0(sub_266644058, v14, v16);

        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x266788B60](i, v6);
      }

      else
      {
        if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((sub_2666667D0() & 1) != 0 || [v10 status] != a1)
      {
      }

      else
      {
        sub_26666C868();
        v11 = *(v16 + 16);
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_266643BF4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_266668D98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_26666BCA8();
  v13 = [v12 person];
  (*(v7 + 16))(v11, a2, v6);
  result = sub_26666BC98();
  *a3 = result;
  return result;
}

uint64_t sub_266643D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v22 - v12;
  v23 = *(a1 + 16);
  if (v23)
  {
    v22 = a2;
    v14 = *(v5 + 16);
    v15 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14(&v22 - v12, v15, v4);
    v16 = (v5 + 32);
    for (i = 1; v23 != i; ++i)
    {
      v14(v10, v15 + *(v5 + 72) * i, v4);
      sub_2665EF878();
      v18 = sub_26666C298();
      v19 = *(v5 + 8);
      if (v18)
      {
        v19(v13, v4);
        (*v16)(v13, v10, v4);
      }

      else
      {
        v19(v10, v4);
      }
    }

    v20 = v22;
    (*v16)(v22, v13, v4);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_266643F84(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_266644010(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void OUTLINED_FUNCTION_2_38()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[21];
  v9 = v0[22];
  v11 = v0[18];
  v12 = v0[17];
  v13 = v0[16];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v20 = v0[9];
  v21 = v0[8];
}

uint64_t OUTLINED_FUNCTION_8_24()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[26];
}

void OUTLINED_FUNCTION_15_18(void *a1)
{

  sub_266643A64(a1, v2, v1);
}

uint64_t sub_266644110(char **a1, char **a2, uint64_t a3)
{
  v111 = a3;
  v108 = a1;
  v4 = sub_266668DF8();
  v5 = OUTLINED_FUNCTION_3_0(v4);
  v105 = v6;
  v106 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  OUTLINED_FUNCTION_1_44();
  v104 = v10;
  v110 = sub_266668E08();
  v11 = OUTLINED_FUNCTION_3_0(v110);
  v102 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11, v15);
  OUTLINED_FUNCTION_1_44();
  v103 = v16;
  v109 = sub_266668DC8();
  v17 = OUTLINED_FUNCTION_3_0(v109);
  v98 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17, v21);
  OUTLINED_FUNCTION_1_44();
  v99 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v95 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = &v95 - v31;
  v33 = sub_266668B08();
  v34 = OUTLINED_FUNCTION_3_0(v33);
  v100 = v35;
  v101 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34, v38);
  OUTLINED_FUNCTION_1_44();
  v40 = v39;
  v41 = sub_266668D38();
  v42 = OUTLINED_FUNCTION_3_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  v48 = MEMORY[0x28223BE20](v42, v47);
  v50 = &v95 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v95 - v53;
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v95 - v56;
  v107 = a2;
  v58 = v108;
  if (sub_266668CA8())
  {
    v59 = v41;
    v60 = v107;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v61 = sub_26666C168();
    __swift_project_value_buffer(v61, qword_28156D7E8);
    v62 = *(v44 + 16);
    v62(v57, v58, v59);
    v62(v54, v60, v59);
    v63 = sub_26666C148();
    v64 = sub_26666C5F8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v112 = v111;
      *v65 = 136315394;
      sub_2665C57C8(&qword_28007E9E8);
      LODWORD(v110) = v64;
      v66 = sub_26666CAA8();
      v68 = v67;
      v69 = *(v44 + 8);
      v69(v57, v59);
      v70 = sub_2665BFC90(v66, v68, &v112);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = sub_26666CAA8();
      v73 = v72;
      v69(v54, v59);
      v74 = sub_2665BFC90(v71, v73, &v112);

      *(v65 + 14) = v74;
      _os_log_impl(&dword_266549000, v63, v110, "[DateUtils] spanningStartDates start(%s) is after end(%s)", v65, 0x16u);
      v75 = v111;
      swift_arrayDestroy();
      MEMORY[0x266789690](v75, -1, -1);
      MEMORY[0x266789690](v65, -1, -1);
    }

    else
    {

      v94 = *(v44 + 8);
      v94(v54, v59);
      v94(v57, v59);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v76 = sub_266668E68();
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v76);
    v77 = sub_266668EB8();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v77);
    v97 = v40;
    sub_266668AF8();
    v78 = v50;
    sub_266668DA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E620, &qword_266674E88);
    v79 = v44;
    v80 = *(v44 + 72);
    v81 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_26666EED0;
    v83 = *(v44 + 16);
    v95 = v78;
    v96 = v41;
    v83(v82 + v81, v78, v41);
    v112 = v82;
    v84 = v98;
    v85 = v99;
    v86 = (*(v98 + 104))(v99, *MEMORY[0x277CC9878], v109);
    v108 = &v95;
    MEMORY[0x28223BE20](v86, v87);
    v88 = v102;
    v89 = v103;
    (*(v102 + 104))(v103, *MEMORY[0x277CC9900], v110);
    v91 = v104;
    v90 = v105;
    v92 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277CC98E8], v106);
    sub_266668DE8();
    (*(v90 + 8))(v91, v92);
    (*(v88 + 8))(v89, v110);
    (*(v84 + 8))(v85, v109);
    (*(v79 + 8))(v95, v96);
    (*(v100 + 8))(v97, v101);
    return v112;
  }
}

uint64_t sub_26664494C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v27 - v11;
  v13 = sub_266668D38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v27 - v21;
  sub_26655E020(a1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    return sub_266574608(v12);
  }

  v24 = *(v14 + 32);
  v24(v22, v12, v13);
  sub_2665C57C8(qword_28007EDA0);
  if (sub_26666C298())
  {
    result = (*(v14 + 8))(v22, v13);
    *a3 = 1;
  }

  else
  {
    (*(v14 + 16))(v19, v22, v13);
    sub_266643F6C();
    v25 = *(*a5 + 16);
    sub_266643FF8(v25);
    (*(v14 + 8))(v22, v13);
    v26 = *a5;
    *(v26 + 16) = v25 + 1;
    return (v24)(v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v25, v19, v13);
  }

  return result;
}

uint64_t sub_266644BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v4 = OUTLINED_FUNCTION_3_3(v3);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v53 - v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v53 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v23 = OUTLINED_FUNCTION_3_3(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v53 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  v30 = OUTLINED_FUNCTION_3_3(v29);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v53 - v34;
  sub_266668E58();
  v36 = sub_266668E68();
  v70 = v35;
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
  sub_266668EA8();
  v37 = sub_266668EB8();
  v71 = v28;
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v37);
  v69 = sub_266668A48();
  v66 = v38;
  v68 = sub_266668A78();
  v65 = v39;
  v67 = sub_266668A88();
  v64 = v40;
  v63 = sub_266668A38();
  v61 = v41;
  sub_2665A9D2C(a1, v21);
  v42 = sub_266668B08();
  OUTLINED_FUNCTION_4_19(v21);
  if (v43)
  {
    sub_266645298(v21);
    v62 = 0;
    v60 = 1;
  }

  else
  {
    v62 = sub_266668A58();
    v60 = v44;
    OUTLINED_FUNCTION_0_43();
    (*(v45 + 8))(v21, v42);
  }

  sub_2665A9D2C(a1, v18);
  OUTLINED_FUNCTION_4_19(v18);
  if (v43)
  {
    sub_266645298(v18);
    v59 = 0;
    v58 = 1;
  }

  else
  {
    v59 = sub_266668A98();
    v58 = v46;
    OUTLINED_FUNCTION_0_43();
    (*(v47 + 8))(v18, v42);
  }

  sub_2665A9D2C(a1, v14);
  OUTLINED_FUNCTION_4_19(v14);
  if (v43)
  {
    sub_266645298(v14);
    v57 = 0;
    v56 = 1;
  }

  else
  {
    v57 = sub_266668AB8();
    v56 = v48;
    OUTLINED_FUNCTION_0_43();
    (*(v49 + 8))(v14, v42);
  }

  sub_2665A9D2C(a1, v10);
  OUTLINED_FUNCTION_4_19(v10);
  if (v43)
  {
    sub_266645298(v10);
    v55 = 0;
    v54 = 1;
  }

  else
  {
    v55 = sub_2666689C8();
    v54 = v50;
    OUTLINED_FUNCTION_0_43();
    (*(v51 + 8))(v10, v42);
  }

  v53 = sub_266668AE8();
  sub_2666689F8();
  sub_266668AD8();
  sub_2666689E8();
  sub_2666689D8();
  sub_266668A08();
  return sub_266668AF8();
}

BOOL sub_2666450AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v3 = OUTLINED_FUNCTION_3_3(v2);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - v15;
  sub_2665A9D2C(v1, &v31 - v15);
  v17 = sub_266668B08();
  OUTLINED_FUNCTION_5_30(v16);
  if (v18)
  {
    v19 = v16;
    goto LABEL_4;
  }

  v21 = sub_266668A78();
  v23 = v22;
  v24 = *(*(v17 - 8) + 8);
  v24(v16, v17);
  result = 0;
  if ((v23 & 1) == 0 && !v21)
  {
    sub_2665A9D2C(v1, v13);
    OUTLINED_FUNCTION_5_30(v13);
    if (v18)
    {
      v19 = v13;
      goto LABEL_4;
    }

    v25 = sub_266668A88();
    v27 = v26;
    v24(v13, v17);
    result = 0;
    if ((v27 & 1) == 0 && !v25)
    {
      sub_2665A9D2C(v1, v9);
      OUTLINED_FUNCTION_5_30(v9);
      if (!v18)
      {
        v28 = sub_266668A38();
        v30 = v29;
        v24(v9, v17);
        if ((v30 & 1) == 0)
        {
          return v28 == 0;
        }

        return 0;
      }

      v19 = v9;
LABEL_4:
      sub_266645298(v19);
      return 0;
    }
  }

  return result;
}