uint64_t sub_26D357370(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26D35755C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_26D3A1488();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_26D3A1488();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_26D357740(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D357654(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26D33EC78(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26D357740(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_26D3A1488();
LABEL_9:
  result = sub_26D3A13E8();
  *v1 = result;
  return result;
}

uint64_t sub_26D3577E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0358();
  *a1 = result;
  return result;
}

uint64_t sub_26D357838@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0478();
  *a1 = result;
  return result;
}

uint64_t sub_26D357890(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26D33F2EC(a2, a3);
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
      sub_26D340250(v16, a4 & 1);
      v11 = sub_26D33F2EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_26D3A1548();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_26D33FA28();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_26D357A08(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26D33F3DC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_26D33FB94();
      v8 = v16;
      goto LABEL_8;
    }

    sub_26D3404F4(v13, a3 & 1);
    v8 = sub_26D33F3DC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_26D3A1548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_26D34855C(a1, v19);
  }

  else
  {
    sub_26D357B48(v8, a2, a1, v18);

    return a2;
  }
}

_OWORD *sub_26D357B48(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26D34855C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_26D357BB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26D3A1488();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26D3A1488();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26D3484AC(&qword_2804FB6F8, &qword_2804FB618);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618);
            v9 = sub_26D357F18(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26D345E5C(0, &qword_2804FAEE0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D357D64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_26D3A1488();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_26D3A1488();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_26D3484AC(&qword_2804FB708, &qword_2804FB640);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB640);
            v9 = sub_26D357FA0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_26D345E5C(0, &qword_2804FAEE8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_26D357F18(void (*result)(id *a1), unint64_t a2, unint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_26D33E7D8(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26D357F98;
  }

  __break(1u);
  return result;
}

void (*sub_26D357FA0(void (*result)(id *), unint64_t a2, unint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_26D33E800(a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_26D359984;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D358020(unint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t), SEL *a4)
{
  v20 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v17 = a3;
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = v17(i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v10 = [v7 *a4];
        v11 = sub_26D3A0F98();
        v13 = v12;

        LOBYTE(v13) = sub_26D34256C(&v19, v11, v13);

        if (v13)
        {
          sub_26D3A1408();
          sub_26D3A1438();
          sub_26D3A1448();
          sub_26D3A1418();
        }

        else
        {
        }

        if (v9 == v5)
        {
          return v20;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v15 = a3;
      v16 = sub_26D3A1488();
      a3 = v15;
      v5 = v16;
    }

    while (v16);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_26D3581C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF00);
    v3 = sub_26D3A14D8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_26D33F2EC(v5, v6);
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

uint64_t sub_26D3582C8()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D358300()
{
  swift_unownedRetainStrong();
  sub_26D34FA44();
}

unint64_t sub_26D3583A0()
{
  result = qword_2804FB700;
  if (!qword_2804FB700)
  {
    sub_26D345E5C(255, &qword_2804FAEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB700);
  }

  return result;
}

uint64_t sub_26D358428@<X0>(uint64_t *a1@<X8>)
{
  sub_26D39FDC8();
  result = sub_26D39FDB8();
  *a1 = result;
  return result;
}

uint64_t sub_26D358458(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26D3584BC()
{
  result = qword_2804FB720;
  if (!qword_2804FB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB720);
  }

  return result;
}

uint64_t sub_26D358560()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D3585A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26D358654;

  return sub_26D353A38(a1, v4, v5, v6);
}

uint64_t sub_26D358654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26D358748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D358780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D359988;

  return sub_26D356B0C(a1, v4);
}

uint64_t sub_26D358838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26D358654;

  return sub_26D356B0C(a1, v4);
}

uint64_t sub_26D3588F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0358();
  *a1 = result;
  return result;
}

uint64_t sub_26D358948@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0478();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TFListStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TFListStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D358B10()
{
  result = qword_2804FB740;
  if (!qword_2804FB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB740);
  }

  return result;
}

unint64_t sub_26D358BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB308);
    v3 = sub_26D3A14D8();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D34856C(v4, &v11, &qword_2804FC9E0);
      v5 = v11;
      result = sub_26D33F3DC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_26D34855C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_26D358CD4()
{
  v1 = sub_26D3A12F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_26D345E5C(0, &unk_2804FC9D0);

  v7 = sub_26D3A1338();
  v8 = *(v0 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
  *v5 = v7;
  (*(v2 + 104))(v5, *MEMORY[0x277D74F68], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A35F0;
  v10 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *(inited + 64) = v6;
  *(inited + 40) = v7;
  v11 = v7;

  v12 = v10;
  v13 = sub_26D358BAC(inited);
  swift_setDeallocating();
  sub_26D3481A4(inited + 32, &qword_2804FC9E0);
  v8(v5, v13);

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_26D358ECC(void *a1)
{
  v2 = sub_26D3A0F98();
  v4 = v3;
  if (v2 == sub_26D3A0F98() && v4 == v5)
  {

    return 0;
  }

  v7 = sub_26D3A1518();

  if (v7)
  {

    return 0;
  }

  v9 = sub_26D3A0F98();
  v11 = v10;
  if (v9 == sub_26D3A0F98() && v11 == v12)
  {

    return 1;
  }

  else
  {
    v14 = sub_26D3A1518();

    if (v14)
    {

      return 1;
    }

    else
    {
      v15 = sub_26D3A0F98();
      v17 = v16;
      if (v15 == sub_26D3A0F98() && v17 == v18)
      {

        return 2;
      }

      else
      {
        v19 = sub_26D3A1518();

        if (v19)
        {

          return 2;
        }

        else
        {
          v20 = sub_26D3A0F98();
          v22 = v21;
          if (v20 == sub_26D3A0F98() && v22 == v23)
          {

            return 3;
          }

          else
          {
            v24 = sub_26D3A1518();

            if (v24)
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
  }
}

uint64_t sub_26D359118(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (sub_26D34862C(*MEMORY[0x277D77130], a1))
  {
    if (qword_2804FABA0 != -1)
    {
      swift_once();
    }

    v3 = qword_2804FFC40;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v2 = v10;
  }

  if (sub_26D34862C(*MEMORY[0x277D77158], a1))
  {
    if (qword_2804FABA8 != -1)
    {
      swift_once();
    }

    v4 = qword_2804FFC48;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v2 = v10;
  }

  if (sub_26D34862C(*MEMORY[0x277D77150], a1))
  {
    if (qword_2804FABB0 != -1)
    {
      swift_once();
    }

    v5 = qword_2804FFC50;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v2 = v10;
  }

  if (sub_26D34862C(*MEMORY[0x277D77140], a1))
  {
    if (qword_2804FABB8 != -1)
    {
      swift_once();
    }

    v6 = qword_2804FFC58;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v2 = v10;
  }

  if (sub_26D34862C(*MEMORY[0x277D77138], a1))
  {
    if (qword_2804FABC0 != -1)
    {
      swift_once();
    }

    v7 = qword_2804FFC60;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    v2 = v10;
  }

  if (sub_26D34862C(*MEMORY[0x277D77120], a1))
  {
    if (qword_2804FABC8 != -1)
    {
      swift_once();
    }

    v8 = qword_2804FFC68;
    MEMORY[0x26D6BD840]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26D3A1068();
    }

    sub_26D3A1088();
    return v10;
  }

  return v2;
}

void sub_26D359560(void *a1)
{
  if (a1)
  {
    v1 = [a1 styleKey];
    if (!v1)
    {
      sub_26D3A0F98();
      v1 = sub_26D3A0F68();
    }

    v2 = [objc_opt_self() standardUserDefaults];
    v3 = sub_26D3A0F68();
    [v2 setObject:v1 forKey:v3];
  }
}

uint64_t sub_26D359648()
{
  v0 = sub_26D3A14F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_26D359694(char a1, double a2)
{
  if (qword_2804FAB90 != -1)
  {
    swift_once();
  }

  v4 = qword_2804FB548;
  sub_26D345E5C(0, &qword_2804FB768);
  v5 = sub_26D3A1348();
  v6 = [v4 stringFromNumber_];

  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26D3A35F0;
    *(v12 + 56) = MEMORY[0x277D85048];
    *(v12 + 64) = sub_26D359898();
    *(v12 + 32) = a2;
    v7 = sub_26D3A0FA8();
    v9 = v13;
    if (a1)
    {
      goto LABEL_5;
    }

    return v7;
  }

  v7 = sub_26D3A0F98();
  v9 = v8;

  if ((a1 & 1) == 0)
  {
    return v7;
  }

LABEL_5:
  if (qword_2804FAC38 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26D3A35F0;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_26D3598EC();
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;

  return sub_26D3A0FA8();
}

unint64_t sub_26D359898()
{
  result = qword_2804FB778;
  if (!qword_2804FB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB778);
  }

  return result;
}

unint64_t sub_26D3598EC()
{
  result = qword_2804FB780;
  if (!qword_2804FB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FB780);
  }

  return result;
}

uint64_t sub_26D359940()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D35999C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_26D33E800(v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_26D3A1488();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_26D359AC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v157 = a1;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBA98);
  MEMORY[0x28223BE20](v152, v3);
  v5 = &v133 - v4;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAA0);
  MEMORY[0x28223BE20](v151, v6);
  v8 = &v133 - v7;
  v143 = sub_26D3A0778();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v9);
  v141 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAA8);
  MEMORY[0x28223BE20](v144, v11);
  v145 = &v133 - v12;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAB0);
  MEMORY[0x28223BE20](v146, v13);
  v15 = &v133 - v14;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAB8);
  v136 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v16);
  v135 = &v133 - v17;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAC0);
  v138 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v18);
  v137 = &v133 - v19;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAC8);
  v140 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v20);
  v139 = &v133 - v21;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAD0);
  MEMORY[0x28223BE20](v156, v22);
  v150 = &v133 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAD8);
  MEMORY[0x28223BE20](v154, v24);
  v155 = &v133 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAE0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v133 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAE8);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v133 - v32;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF0);
  v35 = MEMORY[0x28223BE20](v153, v34);
  v37 = &v133 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v133 - v39;
  v41 = sub_26D33CED8(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8));
  if ((v42 & 1) != 0 || v41 > 2)
  {
    v46 = sub_26D33D0B8(*(v2 + 32), *(v2 + 40));
    v134 = v8;
    if (v46)
    {
      v47 = sub_26D33CD0C(*(v2 + 48), *(v2 + 56));
      v48 = *v2;
      if (!*v2)
      {
        goto LABEL_17;
      }

      if (*(v48 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
      {
        v49 = 0;
      }

      else
      {
        v49 = *(v48 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
      }

      sub_26D39C058(v49 & 1, *(v48 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics), v47);
      v104 = v103;
      v106 = v105;
      v107 = sub_26D3A0868();
      MEMORY[0x28223BE20](v107, v108);
      *(&v133 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF8);
      v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBB00);
      v110 = sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00);
      v158 = v109;
      v159 = v110;
      swift_getOpaqueTypeConformance2();
      v111 = v145;
      sub_26D39FFE8();
      v160 = *(v2 + 80);
      v161 = *(v2 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10);
      sub_26D3A0D78();
      sub_26D37F20C();
      sub_26D3A0AB8();

      sub_26D3481A4(v111, &qword_2804FBAA8);
      v112 = swift_allocObject();
      v113 = *(v2 + 80);
      *(v112 + 80) = *(v2 + 64);
      *(v112 + 96) = v113;
      *(v112 + 112) = *(v2 + 96);
      v114 = *(v2 + 16);
      *(v112 + 16) = *v2;
      *(v112 + 32) = v114;
      v115 = *(v2 + 48);
      *(v112 + 48) = *(v2 + 32);
      *(v112 + 64) = v115;
      v116 = v146;
      v117 = &v15[*(v146 + 36)];
      *v117 = sub_26D383390;
      v117[1] = v112;
      v117[2] = 0;
      v117[3] = 0;
      sub_26D3482B4(v2, &v158);
      v118 = sub_26D37F2D4();
      v119 = v135;
      sub_26D3A0B18();
      sub_26D3481A4(v15, &qword_2804FBAB0);
      v120 = sub_26D3A08B8();
      v121 = v141;
      sub_26D3A0768();
      v158 = v116;
      v159 = v118;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v123 = v137;
      v124 = v147;
      MEMORY[0x26D6BD2B0](v120, v104, 0, v121, v147, OpaqueTypeConformance2);
      v146 = *(v142 + 8);
      v125 = v143;
      (v146)(v121, v143);
      (*(v136 + 8))(v119, v124);
      v126 = sub_26D3A08C8();
      sub_26D3A0768();
      v158 = v124;
      v159 = OpaqueTypeConformance2;
      v127 = swift_getOpaqueTypeConformance2();
      v128 = v139;
      v129 = v148;
      MEMORY[0x26D6BD2B0](v126, v106, 0, v121, v148, v127);
      (v146)(v121, v125);
      (*(v138 + 8))(v123, v129);
      v130 = v140;
      v131 = v149;
      (*(v140 + 16))(v134, v128, v149);
      swift_storeEnumTagMultiPayload();
      v158 = v129;
      v159 = v127;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98);
      v73 = v150;
      sub_26D3A0718();
      (*(v130 + 8))(v128, v131);
    }

    else
    {
      v50 = v152;
      v51 = *(v152 + 48);
      v52 = sub_26D3A0078();
      (*(*(v52 - 8) + 56))(&v5[v51], 1, 1, v52);
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 9) = 257;
      v5[11] = 0;
      v143 = &v5[v50[13]];
      v53 = sub_26D3A0868();
      MEMORY[0x28223BE20](v53, v54);
      *(&v133 - 2) = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBAF8);
      v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FBB00);
      v56 = sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00);
      v158 = v55;
      v159 = v56;
      swift_getOpaqueTypeConformance2();
      v57 = v145;
      sub_26D39FFE8();
      v160 = *(v2 + 80);
      v161 = *(v2 + 96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10);
      sub_26D3A0D78();
      sub_26D37F20C();
      v58 = v143;
      sub_26D3A0AB8();

      sub_26D3481A4(v57, &qword_2804FBAA8);
      v59 = swift_allocObject();
      v60 = *(v2 + 80);
      *(v59 + 80) = *(v2 + 64);
      *(v59 + 96) = v60;
      *(v59 + 112) = *(v2 + 96);
      v61 = *(v2 + 16);
      *(v59 + 16) = *v2;
      *(v59 + 32) = v61;
      v62 = *(v2 + 48);
      *(v59 + 48) = *(v2 + 32);
      *(v59 + 64) = v62;
      v63 = v146;
      v64 = (v58 + *(v146 + 36));
      *v64 = sub_26D37F2CC;
      v64[1] = v59;
      v64[2] = 0;
      v64[3] = 0;
      v65 = &v5[v50[14]];
      *v65 = swift_getKeyPath();
      v65[8] = 0;
      v66 = &v5[v50[15]];
      *v66 = swift_getKeyPath();
      v66[8] = 0;
      v67 = &v5[v50[16]];
      *v67 = swift_getKeyPath();
      v67[8] = 0;
      v68 = &v5[v50[17]];
      LOBYTE(v160) = 0;
      sub_26D3482B4(v2, &v158);
      sub_26D3A0D48();
      v69 = v159;
      *v68 = v158;
      *(v68 + 1) = v69;
      sub_26D34856C(v5, v134, &qword_2804FBA98);
      swift_storeEnumTagMultiPayload();
      v70 = sub_26D37F2D4();
      v158 = v63;
      v159 = v70;
      v71 = swift_getOpaqueTypeConformance2();
      v158 = v147;
      v159 = v71;
      v72 = swift_getOpaqueTypeConformance2();
      v158 = v148;
      v159 = v72;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBB38, &qword_2804FBA98);
      v73 = v150;
      sub_26D3A0718();
      sub_26D3481A4(v5, &qword_2804FBA98);
    }

    sub_26D34856C(v73, v155, &qword_2804FBAD0);
    swift_storeEnumTagMultiPayload();
    sub_26D37F3B0();
    sub_26D37F4F4();
    sub_26D3A0718();
    v101 = v73;
    v102 = &qword_2804FBAD0;
    return sub_26D3481A4(v101, v102);
  }

  v43 = sub_26D33CD0C(*(v2 + 48), *(v2 + 56));
  v44 = *v2;
  if (*v2)
  {
    if (*(v44 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
    {
      v45 = 0;
    }

    else
    {
      v45 = *(v44 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
    }

    sub_26D39C058(v45 & 1, *(v44 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics), v43);
    v74 = v26[12];
    v75 = sub_26D3A0078();
    (*(*(v75 - 8) + 56))(&v29[v74], 1, 1, v75);
    *v29 = 0;
    v29[8] = 1;
    *(v29 + 9) = 257;
    v29[11] = 0;
    sub_26D35AE68(v2, &v29[v26[13]]);
    v76 = &v29[v26[14]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v29[v26[15]];
    *v77 = swift_getKeyPath();
    v77[8] = 0;
    v78 = &v29[v26[16]];
    *v78 = swift_getKeyPath();
    v78[8] = 0;
    v79 = &v29[v26[17]];
    LOBYTE(v160) = 0;
    sub_26D3A0D48();
    v80 = v159;
    *v79 = v158;
    *(v79 + 1) = v80;
    LOBYTE(v79) = sub_26D3A08B8();
    v81 = *(v2 + 32);
    v82 = *(v2 + 40);
    sub_26D33D0B8(v81, v82);
    sub_26D39FFD8();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v90 = v89;
    sub_26D347238(v29, v33, &qword_2804FBAE0);
    v91 = &v33[*(v30 + 36)];
    *v91 = v79;
    *(v91 + 1) = v84;
    *(v91 + 2) = v86;
    *(v91 + 3) = v88;
    *(v91 + 4) = v90;
    v91[40] = 0;
    LOBYTE(v79) = sub_26D3A08C8();
    sub_26D33D0B8(v81, v82);
    sub_26D39FFD8();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    sub_26D347238(v33, v37, &qword_2804FBAE8);
    v100 = &v37[*(v153 + 36)];
    *v100 = v79;
    *(v100 + 1) = v93;
    *(v100 + 2) = v95;
    *(v100 + 3) = v97;
    *(v100 + 4) = v99;
    v100[40] = 0;
    sub_26D347238(v37, v40, &qword_2804FBAF0);
    sub_26D34856C(v40, v155, &qword_2804FBAF0);
    swift_storeEnumTagMultiPayload();
    sub_26D37F3B0();
    sub_26D37F4F4();
    sub_26D3A0718();
    v101 = v40;
    v102 = &qword_2804FBAF0;
    return sub_26D3481A4(v101, v102);
  }

LABEL_17:
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D35AE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB60);
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB68);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - v9;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB78);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
  sub_26D37F664(&qword_2804FBB88, &qword_2804FBB78);
  sub_26D3A0958();
  v29 = 0;
  sub_26D3A0D48();
  v11 = v26;
  v12 = v27;
  LOBYTE(v26) = 0;
  LOBYTE(v27) = v11;
  v28 = v12;
  sub_26D3484AC(&qword_2804FBBA0, &qword_2804FBB60);
  sub_26D37E178();
  v13 = v21;
  sub_26D3A0C08();

  (*(v3 + 8))(v6, v13);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v14 = *(v26 + 16);

    if (v14)
    {
      v15 = sub_26D33D0B8(*(a1 + 64), *(a1 + 72)) ^ 1;
    }

    else
    {
      v15 = 1;
    }

    KeyPath = swift_getKeyPath();
    v17 = swift_allocObject();
    *(v17 + 16) = v15 & 1;
    v18 = v24;
    (*(v22 + 32))(v24, v10, v23);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBA8);
    v20 = (v18 + *(result + 36));
    *v20 = KeyPath;
    v20[1] = sub_26D3834C0;
    v20[2] = v17;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B284(uint64_t a1)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v7[13] = v7[0];
    swift_getKeyPath();
    v2 = swift_allocObject();
    v3 = *(a1 + 80);
    *(v2 + 80) = *(a1 + 64);
    *(v2 + 96) = v3;
    *(v2 + 112) = *(a1 + 96);
    v4 = *(a1 + 16);
    *(v2 + 16) = *a1;
    *(v2 + 32) = v4;
    v5 = *(a1 + 48);
    *(v2 + 48) = *(a1 + 32);
    *(v2 + 64) = v5;
    sub_26D3482B4(a1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB630);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98);
    sub_26D3484AC(&qword_2804FBBB0, &qword_2804FB630);
    sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98);
    return sub_26D3A0E58();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A12C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D35B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v27 = a1;
  v24 = sub_26D3A12D8();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v23[1] = v7;
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v5 + 16);
  v25(v8, a1);
  sub_26D3A10C8();
  sub_26D3482B4(a2, &v29);
  v9 = sub_26D3A10B8();
  v10 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v9;
  *(v11 + 24) = v12;
  v13 = *(a2 + 80);
  *(v11 + 96) = *(a2 + 64);
  *(v11 + 112) = v13;
  *(v11 + 128) = *(a2 + 96);
  v14 = *(a2 + 16);
  *(v11 + 32) = *a2;
  *(v11 + 48) = v14;
  v15 = *(a2 + 48);
  *(v11 + 64) = *(a2 + 32);
  *(v11 + 80) = v15;
  v23[0] = *(v5 + 32);
  v16 = v24;
  (v23[0])(v11 + v10, v8, v24);
  (v25)(v8, v27, v16);
  sub_26D3482B4(a2, &v29);
  v17 = sub_26D3A10B8();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = MEMORY[0x277D85700];
  v19 = *(a2 + 80);
  *(v18 + 96) = *(a2 + 64);
  *(v18 + 112) = v19;
  *(v18 + 128) = *(a2 + 96);
  v20 = *(a2 + 16);
  *(v18 + 32) = *a2;
  *(v18 + 48) = v20;
  v21 = *(a2 + 48);
  *(v18 + 64) = *(a2 + 32);
  *(v18 + 80) = v21;
  (v23[0])(v18 + v10, v8, v16);
  sub_26D3A0E28();
  v28 = v27;
  return sub_26D3A0DC8();
}

uint64_t sub_26D35B78C@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v8 = sub_26D3A1298();
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      result = sub_26D3481A4(v7, &qword_2804FB398);
      v10 = 0;
    }

    else
    {
      v11 = sub_26D3A1238();
      v13 = v12;
      result = sub_26D3481A4(v7, &qword_2804FB398);
      if (v13)
      {
        if (v11 == sub_26D3A12C8() && v13 == v14)
        {
          v16 = 1;
        }

        else
        {
          v16 = sub_26D3A1518();
        }

        v10 = v16 & 1;
      }

      else
      {
        v10 = 0;
      }
    }

    *a2 = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35B9AC(_BYTE *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26D39FDE8();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = sub_26D3A12F8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    if (*a4)
    {
      v14 = *(*a4 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

      *v13 = sub_26D3A12C8();
      v13[1] = v15;
      (*(v9 + 104))(v13, *MEMORY[0x277D74EE8], v8);
      sub_26D3A12A8();
      v16 = sub_26D3A0F38();
      v14(v13, v16);

      return (*(v9 + 8))(v13, v8);
    }

    else
    {
      type metadata accessor for TextFormattingState();
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26D35BBB8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D39FE08();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_26D3A12B8();
  result = sub_26D3A09B8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_26D35BC58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB00);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v15 - v4);
  v6 = sub_26D3A0548();
  v7 = sub_26D33D0B8(*(a1 + 32), *(a1 + 40));
  v8 = 0.0;
  if (v7)
  {
    goto LABEL_21;
  }

  v9 = sub_26D33CD0C(*(a1 + 48), *(a1 + 56));
  if (v9 > 1)
  {
    if (v9 == 2 || v9 != 3)
    {
      v8 = 10.0;
      goto LABEL_21;
    }

    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v11 = byte_2804FFF98 == 0;
    v8 = 10.0;
    v12 = 16.0;
    goto LABEL_19;
  }

  v8 = 8.0;
  if (!v9)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v8 = 16.0;
    if ((byte_2804FFF98 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      v8 = 14.0;
      if (byte_2804FFF99 == 1)
      {
        v11 = _UISolariumEnabled() == 0;
        v8 = 8.0;
        v12 = 10.0;
LABEL_19:
        if (!v11)
        {
          v8 = v12;
        }
      }
    }
  }

LABEL_21:
  *v5 = v6;
  v5[1] = v8;
  *(v5 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBB8);
  sub_26D35BEA4(a1, v5 + *(v13 + 44));
  sub_26D3484AC(&qword_2804FBB08, &qword_2804FBB00);
  sub_26D3A0B28();
  return sub_26D3481A4(v5, &qword_2804FBB00);
}

uint64_t sub_26D35BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_26D3A12D8();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v30 - v10;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v12 = sub_26D3A1298();
    if ((*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      sub_26D3481A4(v11, &qword_2804FB398);
      v13 = -1;
LABEL_18:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26D39FF68();

      v35[13] = v35[0];
      swift_getKeyPath();
      v23 = swift_allocObject();
      v24 = *(a1 + 80);
      *(v23 + 80) = *(a1 + 64);
      *(v23 + 96) = v24;
      v25 = *(a1 + 96);
      v26 = *(a1 + 16);
      *(v23 + 16) = *a1;
      *(v23 + 32) = v26;
      v27 = *(a1 + 48);
      *(v23 + 48) = *(a1 + 32);
      *(v23 + 64) = v27;
      *(v23 + 112) = v25;
      *(v23 + 120) = v13;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_26D37F9D4;
      *(v28 + 24) = v23;
      sub_26D3482B4(a1, v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC8);
      sub_26D37FA80();
      sub_26D37FB30();
      return sub_26D3A0E58();
    }

    v31 = a1;
    v14 = sub_26D3A1238();
    v16 = v15;
    sub_26D3481A4(v11, &qword_2804FB398);
    if (v16)
    {
      v30 = a2;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_26D39FF68();

      v17 = v35[0];
      v32 = *(v35[0] + 16);
      if (v32)
      {
        v13 = 0;
        v33 = v4 + 16;
        v18 = (v4 + 8);
        while (v13 < *(v17 + 16))
        {
          (*(v4 + 16))(v7, v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, v34);
          if (sub_26D3A12C8() == v14 && v16 == v19)
          {

            (*v18)(v7, v34);

LABEL_16:
            swift_bridgeObjectRelease_n();
            goto LABEL_17;
          }

          v20 = v14;
          v21 = v16;
          v22 = sub_26D3A1518();

          (*v18)(v7, v34);
          if (v22)
          {

            goto LABEL_16;
          }

          ++v13;
          v16 = v21;
          v14 = v20;
          if (v32 == v13)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_12:

      swift_bridgeObjectRelease_n();
      v13 = -1;
    }

    else
    {

      v13 = -1;
    }

LABEL_17:
    a1 = v31;
    goto LABEL_18;
  }

LABEL_20:
  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D35C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a4;
  v52 = a1;
  v51 = a5;
  v7 = sub_26D39FE08();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D3A12D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBF0);
  v44 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v14);
  v16 = &v43 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC10);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v17);
  v19 = &v43 - v18;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBE8);
  MEMORY[0x28223BE20](v46, v20);
  v22 = &v43 - v21;
  (*(v11 + 16))(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v23 = (*(v11 + 80) + 120) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = *(a3 + 80);
  *(v24 + 80) = *(a3 + 64);
  *(v24 + 96) = v25;
  *(v24 + 112) = *(a3 + 96);
  v26 = *(a3 + 16);
  *(v24 + 16) = *a3;
  *(v24 + 32) = v26;
  v27 = *(a3 + 48);
  *(v24 + 48) = *(a3 + 32);
  *(v24 + 64) = v27;
  (*(v11 + 32))(v24 + v23, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v50 = a2;
  v53 = a2;
  v54 = a3;
  sub_26D3482B4(a3, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC18);
  sub_26D37FEC4();
  sub_26D3A0D88();
  LOBYTE(v12) = sub_26D33D0B8(*(a3 + 32), *(a3 + 40));
  *&v55 = -1;
  sub_26D3A0D48();
  v28 = v59[0];
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v63 = 0;
  v61 = 0;
  *&v55 = v52;
  v31 = v45;
  *(&v55 + 1) = v45;
  v56[0] = (v12 & 1) == 0;
  *&v56[1] = *v64;
  *&v56[4] = *&v64[3];
  *&v56[8] = v28;
  *&v56[24] = KeyPath;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = *v62;
  DWORD1(v57) = *&v62[3];
  *(&v57 + 1) = v30;
  v58 = 0;
  sub_26D3484AC(&qword_2804FBBF8, &qword_2804FBBF0);
  sub_26D37FCFC();
  v32 = v43;
  sub_26D3A0A08();
  v59[2] = *&v56[16];
  v59[3] = v57;
  v60 = v58;
  v59[0] = v55;
  v59[1] = *v56;
  sub_26D37FFD4(v59);
  (*(v44 + 8))(v16, v32);
  v33 = sub_26D33CD0C(*(a3 + 48), *(a3 + 56));
  v34 = *a3;
  if (*a3)
  {
    v35 = v33;

    v36 = sub_26D3A0F68();
    sub_26D39CBFC(v36, v34, v35);

    sub_26D3A0EA8();
    sub_26D3A00C8();
    (*(v47 + 32))(v22, v19, v48);
    v37 = &v22[*(v46 + 36)];
    v38 = *v56;
    *v37 = v55;
    *(v37 + 1) = v38;
    *(v37 + 2) = *&v56[16];
    v39 = v52 == v31;
    sub_26D3A12B8();
    v40 = sub_26D3A0FB8();
    sub_26D35D178(v39, 0, v40, v41, v51);

    return sub_26D3481A4(v22, &qword_2804FBBE8);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35CAD4(void *a1, uint64_t a2)
{
  v4 = sub_26D39FDE8();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_26D3A12F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v11 = *(*a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);

    *v10 = sub_26D3A12C8();
    v10[1] = v12;
    (*(v7 + 104))(v10, *MEMORY[0x277D74EE8], v6);
    sub_26D3A12A8();
    v13 = sub_26D3A0F38();
    v11(v10, v13);

    (*(v7 + 8))(v10, v6);
    MEMORY[0x26D6BD6F0](0.5, 1.0, 0.0);
    sub_26D3A0EC8();

    MEMORY[0x28223BE20](v14, v15);
    *&v17[-16] = a1;
    *&v17[-8] = a2;
    sub_26D3A0198();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35CD68()
{
  sub_26D3A12C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10);
  return sub_26D3A0D68();
}

uint64_t sub_26D35CDE0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB710);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v27 - v6;
  v8 = sub_26D39FDE8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26D39FE08();
  MEMORY[0x28223BE20](v13 - 8, v14);
  sub_26D3A12B8();
  v15 = sub_26D3A0FB8();
  v27 = v16;
  v28 = v15;
  KeyPath = swift_getKeyPath();
  sub_26D3A12A8();
  swift_getKeyPath();
  sub_26D39FDB8();
  sub_26D37E044(&qword_2804FB718, MEMORY[0x277D74A38]);
  sub_26D39FDD8();

  (*(v9 + 8))(v12, v8);
  swift_getKeyPath();
  sub_26D3584BC();
  sub_26D39FE18();

  (*(v4 + 8))(v7, v3);
  if (*v29)
  {
    v18 = v30;
    v19 = *v29 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_largestFontSizeInFormattingStyles;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = sub_26D3A0928();
    v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC18) + 36);
    *v23 = v18;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0x4044000000000000;
    *(v23 + 24) = v20;
    *(v23 + 32) = v21;
    v24 = *(type metadata accessor for TFFontModifier(0) + 32);
    *(v23 + v24) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC30);
    result = swift_storeEnumTagMultiPayload();
    v26 = v27;
    *a2 = v28;
    *(a2 + 8) = v26;
    *(a2 + 16) = 0;
    *(a2 + 24) = KeyPath;
    *(a2 + 32) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35D178@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v49 = a5;
  v8 = sub_26D3A0608();
  v50 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v47 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBC8);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v46 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v46 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v52 = &v46 - v36;
  v53 = a3;
  v54 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBBE8);
  sub_26D37FBEC();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v37 = v21;
  v38 = *(v50 + 8);
  v38(v37, v8);
  sub_26D3481A4(v26, &qword_2804FBBC8);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v38(v18, v8);
  sub_26D3481A4(v30, &qword_2804FBBC8);
  v39 = MEMORY[0x277D84F90];
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v40;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v41 = v47;
  sub_26D3A1388();
  sub_26D3A0228();
  v38(v41, v8);
  sub_26D3481A4(v34, &qword_2804FBBC8);
  if (v51)
  {
    v53 = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v42;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v43 = v48;
  sub_26D3A1388();
  v44 = v52;
  sub_26D3A0238();
  v38(v43, v8);
  return sub_26D3481A4(v44, &qword_2804FBBC8);
}

uint64_t sub_26D35D710@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v49 = a5;
  v8 = sub_26D3A0608();
  v50 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v47 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v46 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v46 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v52 = &v46 - v36;
  v53 = a3;
  v54 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  sub_26D37EAD4();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v37 = v21;
  v38 = *(v50 + 8);
  v38(v37, v8);
  sub_26D3481A4(v26, &qword_2804FBC80);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v38(v18, v8);
  sub_26D3481A4(v30, &qword_2804FBC80);
  v39 = MEMORY[0x277D84F90];
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v40;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v41 = v47;
  sub_26D3A1388();
  sub_26D3A0228();
  v38(v41, v8);
  sub_26D3481A4(v34, &qword_2804FBC80);
  if (v51)
  {
    v53 = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v42;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v43 = v48;
  sub_26D3A1388();
  v44 = v52;
  sub_26D3A0238();
  v38(v43, v8);
  return sub_26D3481A4(v44, &qword_2804FBC80);
}

uint64_t sub_26D35DCA8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a1;
  v47 = a5;
  v8 = sub_26D3A0608();
  v48 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v45 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v44 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v44 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v50 = &v44 - v36;
  v52 = a3;
  v53 = a4;
  type metadata accessor for TFToggle(0);
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v51 = *(v48 + 8);
  v51(v21, v8);
  sub_26D3481A4(v26, &qword_2804FB820);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v51(v18, v8);
  sub_26D3481A4(v30, &qword_2804FB820);
  v37 = MEMORY[0x277D84F90];
  if (v49)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v38;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v39 = v45;
  sub_26D3A1388();
  sub_26D3A0228();
  v51(v39, v8);
  sub_26D3481A4(v34, &qword_2804FB820);
  if (v49)
  {
    v52 = v37;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v40;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v41 = v46;
  sub_26D3A1388();
  v42 = v50;
  sub_26D3A0238();
  v51(v41, v8);
  return sub_26D3481A4(v42, &qword_2804FB820);
}

uint64_t sub_26D35E264@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v47 = a5;
  v8 = sub_26D3A0608();
  v49 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v44 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC288);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v44 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v48 = &v44 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v45 = &v44 - v35;
  v52 = a3;
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC280);
  sub_26D3484AC(&qword_2804FC290, &qword_2804FC280);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v51 = *(v49 + 8);
  v51(v21, v8);
  sub_26D3481A4(v26, &qword_2804FC288);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v51(v18, v8);
  sub_26D3481A4(v30, &qword_2804FC288);
  v36 = MEMORY[0x277D84F90];
  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v37;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v38 = v44;
  sub_26D3A1388();
  v39 = v45;
  v40 = v48;
  sub_26D3A0228();
  v51(v38, v8);
  sub_26D3481A4(v40, &qword_2804FC288);
  if (v50)
  {
    v52 = v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v41;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v42 = v46;
  sub_26D3A1388();
  sub_26D3A0238();
  v51(v42, v8);
  return sub_26D3481A4(v39, &qword_2804FC288);
}

uint64_t sub_26D35E830@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a1;
  v49 = a5;
  v8 = sub_26D3A0608();
  v50 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v47 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB988);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v46 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v46 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v52 = &v46 - v36;
  v53 = a3;
  v54 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9B0);
  sub_26D37EA48();
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v37 = v21;
  v38 = *(v50 + 8);
  v38(v37, v8);
  sub_26D3481A4(v26, &qword_2804FB988);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v38(v18, v8);
  sub_26D3481A4(v30, &qword_2804FB988);
  v39 = MEMORY[0x277D84F90];
  if (v51)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v40;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v41 = v47;
  sub_26D3A1388();
  sub_26D3A0228();
  v38(v41, v8);
  sub_26D3481A4(v34, &qword_2804FB988);
  if (v51)
  {
    v53 = v39;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v53 = v42;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v43 = v48;
  sub_26D3A1388();
  v44 = v52;
  sub_26D3A0238();
  v38(v43, v8);
  return sub_26D3481A4(v44, &qword_2804FB988);
}

uint64_t sub_26D35EDC8@<X0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v47 = a5;
  v8 = sub_26D3A0608();
  v49 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v44 = &v44 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v44 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB818);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v44 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v48 = &v44 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v45 = &v44 - v35;
  v52 = a3;
  v53 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB810);
  sub_26D3484AC(&qword_2804FB858, &qword_2804FB810);
  sub_26D37E6A4();
  sub_26D3A0AF8();
  if (a2)
  {
    sub_26D3A05F8();
  }

  else
  {
    sub_26D3A05E8();
  }

  sub_26D3A0238();
  v51 = *(v49 + 8);
  v51(v21, v8);
  sub_26D3481A4(v26, &qword_2804FB818);
  if (a2)
  {
    sub_26D3A05E8();
  }

  else
  {
    sub_26D3A05F8();
  }

  sub_26D3A0228();
  v51(v18, v8);
  sub_26D3481A4(v30, &qword_2804FB818);
  v36 = MEMORY[0x277D84F90];
  if (v50)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v37;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v38 = v44;
  sub_26D3A1388();
  v39 = v45;
  v40 = v48;
  sub_26D3A0228();
  v51(v38, v8);
  sub_26D3481A4(v40, &qword_2804FB818);
  if (v50)
  {
    v52 = v36;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_26D3A35F0;
    sub_26D3A05D8();
    v52 = v41;
  }

  sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  v42 = v46;
  sub_26D3A1388();
  sub_26D3A0238();
  v51(v42, v8);
  return sub_26D3481A4(v39, &qword_2804FB818);
}

uint64_t sub_26D35F394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v11 - v4;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v6 = sub_26D3A1298();
    v7 = 0;
    v8 = 0;
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = sub_26D3A1238();
      v8 = v9;
    }

    sub_26D3481A4(v5, &qword_2804FB398);
    v12 = *(a1 + 80);
    v13 = *(a1 + 96);
    v11[0] = v7;
    v11[1] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB10);
    return sub_26D3A0D68();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D35F570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC340);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v37 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC348);
  v13 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC350);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v37 - v19;
  v21 = sub_26D33D0B8(*(v3 + 40), *(v3 + 48));
  if (*(v3 + 16))
  {
    v22 = sub_26D3A0078();
    (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  }

  else
  {
    if (*v3 == *(v3 + 8))
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v23 = sub_26D3A0078();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
  }

  *v12 = 0;
  *(v12 + 4) = 257;
  v12[10] = (v21 & 1) == 0;
  v12[11] = 0;
  sub_26D347238(v8, &v12[v9[12]], &qword_2804FC6F0);
  sub_26D35FA20(a1, v3, &v12[v9[13]]);
  v24 = &v12[v9[14]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v12[v9[15]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v12[v9[16]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v12[v9[17]];
  LOBYTE(v41) = 0;
  sub_26D3A0D48();
  v28 = v40;
  *v27 = v39[0];
  *(v27 + 1) = v28;
  v41 = *(v3 + 8);
  v29 = swift_allocObject();
  v30 = *(v3 + 48);
  *(v29 + 48) = *(v3 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(v3 + 64);
  v31 = *(v3 + 16);
  *(v29 + 16) = *v3;
  *(v29 + 32) = v31;
  sub_26D3831E0(v3, v39);
  sub_26D3484AC(&qword_2804FC358, &qword_2804FC340);
  sub_26D3A0BD8();

  sub_26D3481A4(v12, &qword_2804FC340);
  v32 = swift_allocObject();
  v33 = *(v3 + 48);
  *(v32 + 48) = *(v3 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = *(v3 + 64);
  v34 = *(v3 + 16);
  *(v32 + 16) = *v3;
  *(v32 + 32) = v34;
  (*(v13 + 32))(v20, v16, v37);
  v35 = &v20[*(v17 + 36)];
  *v35 = sub_26D383268;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = 0;
  sub_26D347238(v20, v38, &qword_2804FC350);
  return sub_26D3831E0(v3, v39);
}

uint64_t sub_26D35FA20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v94 = sub_26D3A0258();
  MEMORY[0x28223BE20](v94, v5);
  v93 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_26D3A0808();
  v7 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v8);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC368);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v80 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC370);
  MEMORY[0x28223BE20](v81, v15);
  v80 = &v80 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC378);
  MEMORY[0x28223BE20](v82, v17);
  v85 = &v80 - v18;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC380);
  MEMORY[0x28223BE20](v84, v19);
  v88 = &v80 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC388);
  MEMORY[0x28223BE20](v87, v21);
  v86 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC390);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v90 = &v80 - v25;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC398);
  MEMORY[0x28223BE20](v89, v26);
  v91 = &v80 - v27;
  v92 = a1;
  sub_26D3A0818();
  v28 = *a2;
  v96 = a2[1];
  v29 = v28;
  if (v28 == v96)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF98 == 1)
    {
      v30 = sub_26D3A0C38();
    }

    else
    {
      v30 = sub_26D3A0C58();
    }
  }

  else
  {
    v30 = sub_26D3A0C78();
  }

  v31 = v30;
  KeyPath = swift_getKeyPath();
  (*(v7 + 32))(v14, v10, v83);
  v33 = &v14[*(v11 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = sub_26D3A0878();
  v35 = a2[7];
  LODWORD(v83) = *(a2 + 64);
  v36 = sub_26D33CD0C(v35, v83);
  if (qword_2804FAD40 != -1)
  {
    swift_once();
  }

  v37 = v85;
  v38 = v96;
  if (byte_2804FFF98)
  {
    goto LABEL_11;
  }

  if (qword_2804FAD48 != -1)
  {
    swift_once();
  }

  if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
  {
LABEL_11:
    sub_26D39CDDC(0, v36);
  }

  sub_26D39FFD8();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v14;
  v48 = v80;
  sub_26D347238(v47, v80, &qword_2804FC368);
  v49 = v48 + *(v81 + 36);
  *v49 = v34;
  *(v49 + 8) = v40;
  *(v49 + 16) = v42;
  *(v49 + 24) = v44;
  *(v49 + 32) = v46;
  *(v49 + 40) = 0;
  sub_26D3A0EA8();
  sub_26D3A0268();
  sub_26D347238(v48, v37, &qword_2804FC370);
  v50 = (v37 + *(v82 + 36));
  v51 = v104;
  v50[4] = v103;
  v50[5] = v51;
  v50[6] = v105;
  v52 = v100;
  *v50 = v99;
  v50[1] = v52;
  v53 = v102;
  v50[2] = v101;
  v50[3] = v53;
  v54 = (v29 != v38) & (*(a2 + 16) ^ 1);
  v55 = sub_26D33D0B8(a2[5], *(a2 + 48));
  v98 = *(a2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC360);
  sub_26D3A0D58();
  if (v97 == -1)
  {
    sub_26D3A0108();
    sub_26D3A0118();
    sub_26D3A0128();

    v38 = v96;
  }

  else
  {
    v98 = *(a2 + 3);
    sub_26D3A0D58();
    sub_26D3A00F8();
  }

  sub_26D3A0108();
  sub_26D3A0118();
  sub_26D3A0128();

  v56 = sub_26D3A00E8();

  v57 = v88;
  v58 = sub_26D347238(v37, v88, &qword_2804FC378);
  v59 = v57 + *(v84 + 36);
  *v59 = v54;
  *(v59 + 1) = v29 == v38;
  *(v59 + 2) = 0;
  *(v59 + 3) = v55 & 1;
  *(v59 + 8) = v56;
  v60 = MEMORY[0x26D6BD6F0](v58, 0.15, 0.85, 0.25);
  v61 = v57;
  v62 = v86;
  sub_26D347238(v61, v86, &qword_2804FC380);
  v63 = v62 + *(v87 + 36);
  *v63 = v60;
  *(v63 + 8) = v29 == v38;
  v64 = v90;
  sub_26D347238(v62, v90, &qword_2804FC388);
  v65 = sub_26D3A0828();
  v66 = 1.0;
  v67 = v83;
  if (v65)
  {
    if ((sub_26D33CD0C(v35, v83) - 2) >= 3u)
    {
      v66 = 0.7;
    }

    else
    {
      v66 = 0.5;
    }
  }

  v68 = v91;
  sub_26D347238(v64, v91, &qword_2804FC390);
  *(v68 + *(v89 + 36)) = v66;
  v69 = sub_26D33CD0C(v35, v67);
  sub_26D39CDDC(0, v69);
  v71 = v70;
  v72 = *(v94 + 20);
  v73 = *MEMORY[0x277CE0118];
  v74 = sub_26D3A05C8();
  v75 = v93;
  (*(*(v74 - 8) + 104))(&v93[v72], v73, v74);
  *v75 = v71;
  v75[1] = v71;
  sub_26D37E044(&qword_2804FC3A0, MEMORY[0x277CDFC08]);
  v76 = sub_26D3A0E78();
  v77 = v95;
  sub_26D347238(v68, v95, &qword_2804FC398);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC3A8);
  v79 = v77 + *(result + 36);
  *v79 = v76;
  *(v79 + 8) = 0;
  return result;
}

uint64_t sub_26D3604D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC38);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v25[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC40);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC48);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25[-v12];
  if (*v1)
  {
    if (*(*v1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isTextAnimationsUI))
    {
      sub_26D33CD0C(*(v1 + 32), *(v1 + 40));
      *v13 = sub_26D3A0548();
      *(v13 + 1) = 0x4008000000000000;
      v13[16] = 0;
      v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC60) + 44)];
      sub_26D36097C(v1, v14);
      KeyPath = swift_getKeyPath();
      v16 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC68) + 36);
      *v16 = KeyPath;
      *(v16 + 8) = 1;
      sub_26D34856C(v13, v9, &qword_2804FBC48);
      swift_storeEnumTagMultiPayload();
      sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48);
      sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38);
      sub_26D3A0718();
      return sub_26D3481A4(v13, &qword_2804FBC48);
    }

    else
    {
      v18 = v2[12];
      v19 = sub_26D3A0078();
      (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
      *v5 = 0;
      v5[8] = 1;
      *(v5 + 9) = 257;
      v5[11] = 0;
      sub_26D36327C(v1, &v5[v2[13]]);
      v20 = &v5[v2[14]];
      *v20 = swift_getKeyPath();
      v20[8] = 0;
      v21 = &v5[v2[15]];
      *v21 = swift_getKeyPath();
      v21[8] = 0;
      v22 = &v5[v2[16]];
      *v22 = swift_getKeyPath();
      v22[8] = 0;
      v23 = &v5[v2[17]];
      v25[15] = 0;
      sub_26D3A0D48();
      v24 = v26;
      *v23 = v25[16];
      *(v23 + 1) = v24;
      sub_26D34856C(v5, v9, &qword_2804FBC38);
      swift_storeEnumTagMultiPayload();
      sub_26D3484AC(&qword_2804FBC50, &qword_2804FBC48);
      sub_26D3484AC(&qword_2804FBC58, &qword_2804FBC38);
      sub_26D3A0718();
      return sub_26D3481A4(v5, &qword_2804FBC38);
    }
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36097C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v120 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v118 = &v116 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC6F0);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v121 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v119 = &v116 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v117 = &v116 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v116 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC70);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v125 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v124 = &v116 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v123 = &v116 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v129 = &v116 - v34;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v116 - v37;
  v40 = MEMORY[0x28223BE20](v36, v39);
  v122 = &v116 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = &v116 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v128 = &v116 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v52 = &v116 - v51;
  v54 = MEMORY[0x28223BE20](v50, v53);
  v127 = &v116 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v59 = &v116 - v58;
  MEMORY[0x28223BE20](v57, v60);
  v132 = &v116 - v61;
  v62 = sub_26D33CD0C(*(a1 + 32), *(a1 + 40));
  v133 = a1;
  v63 = *a1;
  if (*a1)
  {
    v64 = v62;
    v65 = *MEMORY[0x277D770E0];
    swift_retain_n();
    sub_26D39CBFC(v65, v63, v64);
    v67 = v66;
    v68 = sub_26D34CD84();
    v69 = [v68 fontDescriptor];
    v70 = [v69 symbolicTraits];

    if ((v70 & 2) != 0)
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v71 = sub_26D3A0078();
    v72 = *(v71 - 8);
    v73 = *(v72 + 56);
    v130 = v72 + 56;
    v131 = v73;
    v73(v21, 0, 1, v71);
    *v59 = v67;
    v59[8] = 0;
    *(v59 + 9) = 257;
    v59[11] = 0;
    sub_26D347238(v21, &v59[v22[12]], &qword_2804FC6F0);
    sub_26D361630(0, &v59[v22[13]]);
    v74 = &v59[v22[14]];
    *v74 = swift_getKeyPath();
    v74[8] = 0;
    v75 = &v59[v22[15]];
    *v75 = swift_getKeyPath();
    v75[8] = 0;
    v76 = &v59[v22[16]];
    *v76 = swift_getKeyPath();
    v76[8] = 0;
    v77 = &v59[v22[17]];
    v134 = 0;
    sub_26D3A0D48();
    v78 = v136;
    *v77 = v135;
    *(v77 + 1) = v78;
    sub_26D347238(v59, v132, &qword_2804FBC70);
    v79 = sub_26D34CD84();
    v80 = [v79 fontDescriptor];
    v81 = [v80 symbolicTraits];

    v82 = v117;
    if (v81)
    {
      sub_26D3A0048();
    }

    else
    {
      sub_26D3A0068();
    }

    v131(v82, 0, 1, v71);
    *v52 = v67;
    v52[8] = 0;
    *(v52 + 9) = 257;
    v52[11] = 0;
    sub_26D347238(v82, &v52[v22[12]], &qword_2804FC6F0);
    sub_26D361C7C(0, &v52[v22[13]]);
    v83 = &v52[v22[14]];
    *v83 = swift_getKeyPath();
    v83[8] = 0;
    v84 = &v52[v22[15]];
    *v84 = swift_getKeyPath();
    v84[8] = 0;
    v85 = &v52[v22[16]];
    *v85 = swift_getKeyPath();
    v85[8] = 0;
    v86 = &v52[v22[17]];
    v134 = 0;
    sub_26D3A0D48();
    v87 = v136;
    *v86 = v135;
    *(v86 + 1) = v87;
    sub_26D347238(v52, v127, &qword_2804FBC70);
    swift_getKeyPath();
    swift_getKeyPath();
    v88 = v118;
    sub_26D39FF68();

    v89 = sub_26D3A1298();
    v90 = *(*(v89 - 8) + 48);
    if (v90(v88, 1, v89))
    {

      sub_26D3481A4(v88, &qword_2804FB398);
    }

    else
    {
      v91 = sub_26D3A1218();

      sub_26D3481A4(v88, &qword_2804FB398);
      if (v91)
      {
        v92 = v119;
        sub_26D3A0048();
        goto LABEL_13;
      }
    }

    v92 = v119;
    sub_26D3A0068();
LABEL_13:
    v131(v92, 0, 1, v71);
    *v45 = v67;
    v45[8] = 0;
    *(v45 + 9) = 257;
    v45[11] = 0;
    sub_26D347238(v92, &v45[v22[12]], &qword_2804FC6F0);
    sub_26D362274(0, &v45[v22[13]]);
    v93 = &v45[v22[14]];
    *v93 = swift_getKeyPath();
    v93[8] = 0;
    v94 = &v45[v22[15]];
    *v94 = swift_getKeyPath();
    v94[8] = 0;
    v95 = &v45[v22[16]];
    *v95 = swift_getKeyPath();
    v95[8] = 0;
    v96 = &v45[v22[17]];
    v134 = 0;
    sub_26D3A0D48();
    v97 = v136;
    *v96 = v135;
    *(v96 + 1) = v97;
    sub_26D347238(v45, v128, &qword_2804FBC70);
    swift_getKeyPath();
    swift_getKeyPath();
    v98 = v120;
    sub_26D39FF68();

    if (v90(v98, 1, v89))
    {

      sub_26D3481A4(v98, &qword_2804FB398);
    }

    else
    {
      v99 = sub_26D3A1258();

      sub_26D3481A4(v98, &qword_2804FB398);
      if (v99)
      {
        v100 = v121;
        sub_26D3A0048();
LABEL_18:
        v131(v100, 0, 1, v71);
        *v38 = v67;
        v38[8] = 0;
        *(v38 + 9) = 257;
        v38[11] = 0;
        sub_26D347238(v100, &v38[v22[12]], &qword_2804FC6F0);
        sub_26D362AD8(0, &v38[v22[13]]);
        v101 = &v38[v22[14]];
        *v101 = swift_getKeyPath();
        v101[8] = 0;
        v102 = &v38[v22[15]];
        *v102 = swift_getKeyPath();
        v102[8] = 0;
        v103 = &v38[v22[16]];
        *v103 = swift_getKeyPath();
        v103[8] = 0;
        v104 = &v38[v22[17]];
        v134 = 0;
        sub_26D3A0D48();
        v105 = v136;
        *v104 = v135;
        *(v104 + 1) = v105;
        v106 = v122;
        sub_26D347238(v38, v122, &qword_2804FBC70);
        v107 = v129;
        sub_26D34856C(v132, v129, &qword_2804FBC70);
        v108 = v127;
        v109 = v123;
        sub_26D34856C(v127, v123, &qword_2804FBC70);
        v110 = v128;
        v111 = v124;
        sub_26D34856C(v128, v124, &qword_2804FBC70);
        v112 = v125;
        sub_26D34856C(v106, v125, &qword_2804FBC70);
        v113 = v126;
        sub_26D34856C(v107, v126, &qword_2804FBC70);
        v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC78);
        sub_26D34856C(v109, v113 + v114[12], &qword_2804FBC70);
        sub_26D34856C(v111, v113 + v114[16], &qword_2804FBC70);
        sub_26D34856C(v112, v113 + v114[20], &qword_2804FBC70);
        sub_26D3481A4(v106, &qword_2804FBC70);
        sub_26D3481A4(v110, &qword_2804FBC70);
        sub_26D3481A4(v108, &qword_2804FBC70);
        sub_26D3481A4(v132, &qword_2804FBC70);
        sub_26D3481A4(v112, &qword_2804FBC70);
        sub_26D3481A4(v111, &qword_2804FBC70);
        sub_26D3481A4(v109, &qword_2804FBC70);
        return sub_26D3481A4(v129, &qword_2804FBC70);
      }
    }

    v100 = v121;
    sub_26D3A0068();
    goto LABEL_18;
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

void sub_26D3615C4(BOOL *a1@<X8>)
{
  v2 = sub_26D34CD84();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = (v4 & 2) != 0;
}

uint64_t sub_26D361630@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v65 = a2;
  v4 = sub_26D3A0648();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v59, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v63, v11);
  v64 = &v53 - v12;
  v58 = v7;
  sub_26D3A0628();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v15 = *(v3 + 25);
  v16 = sub_26D33CED8(v13, v14 | (v15 << 8));
  v17 = 0;
  v56 = v10;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_2804FAC40 != -1)
    {
      swift_once();
    }

    v17 = qword_2804FFDB0;
    v18 = *algn_2804FFDB8;
  }

  v55 = v18;
  v57 = v17;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v53 = v3[1];
  v54 = v21;
  v68 = v3[4];
  v69 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  sub_26D3A10C8();

  sub_26D37DF24(v13, v14, v15);
  sub_26D34856C(&v68, v66, &qword_2804FB848);
  sub_26D381CA8(v22, v23);
  v24 = v14;
  v25 = v13;
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v23;
  v30 = *(v3 + 1);
  *(v27 + 32) = *v3;
  *(v27 + 48) = v30;
  *(v27 + 64) = *(v3 + 2);
  *(v27 + 73) = *(v3 + 41);
  *(v27 + 96) = KeyPath;

  v31 = v54;

  sub_26D37DF24(v25, v24, v15);
  sub_26D34856C(&v68, v66, &qword_2804FB848);
  sub_26D381CA8(v22, v29);
  v32 = sub_26D3A10B8();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = MEMORY[0x277D85700];
  v34 = *(v3 + 1);
  *(v33 + 32) = *v3;
  *(v33 + 48) = v34;
  *(v33 + 64) = *(v3 + 2);
  *(v33 + 73) = *(v3 + 41);
  *(v33 + 96) = KeyPath;
  sub_26D3A0E28();

  v35 = v66[0];
  v36 = v66[1];
  LOBYTE(v25) = v67;
  v37 = v56;
  *v56 = xmmword_26D3A3E20;
  v38 = v59;
  (*(v60 + 32))(&v37[*(v59 + 20)], v58, v61);
  v39 = &v37[v38[6]];
  v40 = v55;
  *v39 = v57;
  v39[1] = v40;
  v37[v38[7]] = v62 & 1;
  v41 = &v37[v38[8]];
  *v41 = v35;
  *(v41 + 1) = v36;
  v41[16] = v25;
  v42 = &v37[v38[9]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  if (v31)
  {

    if (sub_26D350238())
    {
      v43 = sub_26D33D0B8(v22, v29) ^ 1;
    }

    else
    {
      v43 = 1;
    }

    v44 = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v43 & 1;
    v46 = v37;
    v47 = v64;
    sub_26D3814AC(v46, v64, type metadata accessor for TFToggle);
    v48 = (v47 + *(v63 + 36));
    *v48 = v44;
    v48[1] = sub_26D3834C0;
    v48[2] = v45;
    v49 = sub_26D34CD84();
    v50 = [v49 fontDescriptor];
    v51 = [v50 symbolicTraits];

    if (qword_2804FAC40 != -1)
    {
      swift_once();
    }

    sub_26D35D710((v51 >> 1) & 1, 0, qword_2804FFDB0, *algn_2804FFDB8, v65);
    return sub_26D3481A4(v47, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

void sub_26D361C10(_BYTE *a1@<X8>)
{
  v2 = sub_26D34CD84();
  v3 = [v2 fontDescriptor];
  v4 = [v3 symbolicTraits];

  *a1 = v4 & 1;
}

uint64_t sub_26D361C7C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a1;
  v65 = a2;
  v4 = sub_26D3A0648();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v59, v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v63, v11);
  v64 = &v53 - v12;
  v58 = v7;
  sub_26D3A0628();
  v13 = v3[2];
  v14 = *(v3 + 24);
  v15 = *(v3 + 25);
  v16 = sub_26D33CED8(v13, v14 | (v15 << 8));
  v17 = 0;
  v56 = v10;
  v18 = 0;
  if ((v19 & 1) == 0 && v16 == 1)
  {
    if (qword_2804FAC48 != -1)
    {
      swift_once();
    }

    v17 = qword_2804FFDC0;
    v18 = *algn_2804FFDC8;
  }

  v55 = v18;
  v57 = v17;
  KeyPath = swift_getKeyPath();
  v21 = *v3;
  v53 = v3[1];
  v54 = v21;
  v68 = v3[4];
  v69 = *(v3 + 40);
  v22 = v3[6];
  v23 = *(v3 + 56);
  sub_26D3A10C8();

  sub_26D37DF24(v13, v14, v15);
  sub_26D34856C(&v68, v66, &qword_2804FB848);
  sub_26D381CA8(v22, v23);
  v24 = v14;
  v25 = v13;
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v23;
  v30 = *(v3 + 1);
  *(v27 + 32) = *v3;
  *(v27 + 48) = v30;
  *(v27 + 64) = *(v3 + 2);
  *(v27 + 73) = *(v3 + 41);
  *(v27 + 96) = KeyPath;

  v31 = v54;

  sub_26D37DF24(v25, v24, v15);
  sub_26D34856C(&v68, v66, &qword_2804FB848);
  sub_26D381CA8(v22, v29);
  v32 = sub_26D3A10B8();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = MEMORY[0x277D85700];
  v34 = *(v3 + 1);
  *(v33 + 32) = *v3;
  *(v33 + 48) = v34;
  *(v33 + 64) = *(v3 + 2);
  *(v33 + 73) = *(v3 + 41);
  *(v33 + 96) = KeyPath;
  sub_26D3A0E28();

  v35 = v66[0];
  v36 = v66[1];
  LOBYTE(v25) = v67;
  v37 = v56;
  *v56 = xmmword_26D3A3E30;
  v38 = v59;
  (*(v60 + 32))(&v37[*(v59 + 20)], v58, v61);
  v39 = &v37[v38[6]];
  v40 = v55;
  *v39 = v57;
  v39[1] = v40;
  v37[v38[7]] = v62 & 1;
  v41 = &v37[v38[8]];
  *v41 = v35;
  *(v41 + 1) = v36;
  v41[16] = v25;
  v42 = &v37[v38[9]];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  if (v31)
  {

    if (sub_26D350504())
    {
      v43 = sub_26D33D0B8(v22, v29) ^ 1;
    }

    else
    {
      v43 = 1;
    }

    v44 = swift_getKeyPath();
    v45 = swift_allocObject();
    *(v45 + 16) = v43 & 1;
    v46 = v37;
    v47 = v64;
    sub_26D3814AC(v46, v64, type metadata accessor for TFToggle);
    v48 = (v47 + *(v63 + 36));
    *v48 = v44;
    v48[1] = sub_26D3834C0;
    v48[2] = v45;
    v49 = sub_26D34CD84();
    v50 = [v49 fontDescriptor];
    v51 = [v50 symbolicTraits];

    if (qword_2804FAC48 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v51 & 1, 0, qword_2804FFDC0, *algn_2804FFDC8, v65);
    return sub_26D3481A4(v47, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D362274@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v72 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v58 - v6;
  v8 = sub_26D3A0648();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v63, v12);
  v69 = (v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v68, v14);
  v70 = v58 - v15;
  v64 = v11;
  sub_26D3A0628();
  v16 = v3[2];
  v17 = *(v3 + 25);
  v61 = *(v3 + 24);
  v18 = v17;
  v19 = v16;
  v20 = sub_26D33CED8(v16, v61 | (v17 << 8));
  v21 = 0;
  v22 = 0;
  if ((v23 & 1) == 0 && v20 == 1)
  {
    if (qword_2804FAC50 != -1)
    {
      swift_once();
    }

    v21 = qword_2804FFDD0;
    v22 = *algn_2804FFDD8;
  }

  v60 = v22;
  v62 = v21;
  v71 = v7;
  KeyPath = swift_getKeyPath();
  v25 = *v3;
  v58[1] = v3[1];
  v75 = v3[4];
  v76 = *(v3 + 40);
  v26 = v3[6];
  v27 = *(v3 + 56);
  v59 = v27;
  sub_26D3A10C8();

  v28 = v61;
  sub_26D37DF24(v19, v61, v18);
  sub_26D34856C(&v75, v73, &qword_2804FB848);
  sub_26D381CA8(v26, v27);
  v29 = sub_26D3A10B8();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  v32 = v26;
  v33 = v31;
  v34 = *(v3 + 1);
  *(v30 + 32) = *v3;
  *(v30 + 48) = v34;
  *(v30 + 64) = *(v3 + 2);
  *(v30 + 73) = *(v3 + 41);
  *(v30 + 96) = KeyPath;

  v35 = v18;
  v36 = v59;
  sub_26D37DF24(v19, v28, v35);
  sub_26D34856C(&v75, v73, &qword_2804FB848);
  sub_26D381CA8(v32, v36);
  v37 = sub_26D3A10B8();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  v39 = *(v3 + 1);
  *(v38 + 32) = *v3;
  *(v38 + 48) = v39;
  *(v38 + 64) = *(v3 + 2);
  *(v38 + 73) = *(v3 + 41);
  *(v38 + 96) = KeyPath;
  sub_26D3A0E28();

  v40 = v73[0];
  v41 = v73[1];
  LOBYTE(v28) = v74;
  v42 = v69;
  *v69 = xmmword_26D3A3E40;
  v43 = v63;
  (*(v65 + 32))(v42 + *(v63 + 20), v64, v66);
  v44 = (v42 + v43[6]);
  v45 = v60;
  *v44 = v62;
  v44[1] = v45;
  *(v42 + v43[7]) = v67 & 1;
  v46 = v42 + v43[8];
  *v46 = v40;
  *(v46 + 8) = v41;
  *(v46 + 16) = v28;
  v47 = v42 + v43[9];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v48 = sub_26D34862C(*MEMORY[0x277D770F8], v73[0]);

    v49 = v70;
    if (v48)
    {
      v50 = 1;
    }

    else
    {
      v50 = sub_26D33D0B8(v32, v36) ^ 1;
    }

    v51 = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = v50 & 1;
    sub_26D3814AC(v42, v49, type metadata accessor for TFToggle);
    v53 = (v49 + *(v68 + 36));
    *v53 = v51;
    v53[1] = sub_26D3834C0;
    v53[2] = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v71;
    sub_26D39FF68();

    v55 = sub_26D3A1298();
    if ((*(*(v55 - 8) + 48))(v54, 1, v55))
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_26D3A1218();
    }

    sub_26D3481A4(v54, &qword_2804FB398);
    if (qword_2804FAC50 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v56 & 1, 0, qword_2804FFDD0, *algn_2804FFDD8, v72);
    return sub_26D3481A4(v49, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D362994@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v8 = sub_26D3A1298();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = 0;
  }

  else
  {
    v9 = a1();
  }

  result = sub_26D3481A4(v7, &qword_2804FB398);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_26D362AD8@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a1;
  v72 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v58 - v6;
  v8 = sub_26D3A0648();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v63, v12);
  v69 = (v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v68, v14);
  v70 = v58 - v15;
  v64 = v11;
  sub_26D3A0628();
  v16 = v3[2];
  v17 = *(v3 + 25);
  v61 = *(v3 + 24);
  v18 = v17;
  v19 = v16;
  v20 = sub_26D33CED8(v16, v61 | (v17 << 8));
  v21 = 0;
  v22 = 0;
  if ((v23 & 1) == 0 && v20 == 1)
  {
    if (qword_2804FAC58 != -1)
    {
      swift_once();
    }

    v21 = qword_2804FFDE0;
    v22 = *algn_2804FFDE8;
  }

  v60 = v22;
  v62 = v21;
  v71 = v7;
  KeyPath = swift_getKeyPath();
  v25 = *v3;
  v58[1] = v3[1];
  v75 = v3[4];
  v76 = *(v3 + 40);
  v26 = v3[6];
  v27 = *(v3 + 56);
  v59 = v27;
  sub_26D3A10C8();

  v28 = v61;
  sub_26D37DF24(v19, v61, v18);
  sub_26D34856C(&v75, v73, &qword_2804FB848);
  sub_26D381CA8(v26, v27);
  v29 = sub_26D3A10B8();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  v32 = v26;
  v33 = v31;
  v34 = *(v3 + 1);
  *(v30 + 32) = *v3;
  *(v30 + 48) = v34;
  *(v30 + 64) = *(v3 + 2);
  *(v30 + 73) = *(v3 + 41);
  *(v30 + 96) = KeyPath;

  v35 = v18;
  v36 = v59;
  sub_26D37DF24(v19, v28, v35);
  sub_26D34856C(&v75, v73, &qword_2804FB848);
  sub_26D381CA8(v32, v36);
  v37 = sub_26D3A10B8();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;
  *(v38 + 24) = v33;
  v39 = *(v3 + 1);
  *(v38 + 32) = *v3;
  *(v38 + 48) = v39;
  *(v38 + 64) = *(v3 + 2);
  *(v38 + 73) = *(v3 + 41);
  *(v38 + 96) = KeyPath;
  sub_26D3A0E28();

  v40 = v73[0];
  v41 = v73[1];
  LOBYTE(v28) = v74;
  v42 = v69;
  *v69 = xmmword_26D3A3E50;
  v43 = v63;
  (*(v65 + 32))(v42 + *(v63 + 20), v64, v66);
  v44 = (v42 + v43[6]);
  v45 = v60;
  *v44 = v62;
  v44[1] = v45;
  *(v42 + v43[7]) = v67 & 1;
  v46 = v42 + v43[8];
  *v46 = v40;
  *(v46 + 8) = v41;
  *(v46 + 16) = v28;
  v47 = v42 + v43[9];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  if (v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_26D39FF68();

    v48 = sub_26D34862C(*MEMORY[0x277D770F0], v73[0]);

    v49 = v70;
    if (v48)
    {
      v50 = 1;
    }

    else
    {
      v50 = sub_26D33D0B8(v32, v36) ^ 1;
    }

    v51 = swift_getKeyPath();
    v52 = swift_allocObject();
    *(v52 + 16) = v50 & 1;
    sub_26D3814AC(v42, v49, type metadata accessor for TFToggle);
    v53 = (v49 + *(v68 + 36));
    *v53 = v51;
    v53[1] = sub_26D3834C0;
    v53[2] = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = v71;
    sub_26D39FF68();

    v55 = sub_26D3A1298();
    if ((*(*(v55 - 8) + 48))(v54, 1, v55))
    {
      v56 = 0;
    }

    else
    {
      v56 = sub_26D3A1258();
    }

    sub_26D3481A4(v54, &qword_2804FB398);
    if (qword_2804FAC58 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v56 & 1, 0, qword_2804FFDE0, *algn_2804FFDE8, v72);
    return sub_26D3481A4(v49, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3631E0@<X0>(_BYTE *a1@<X8>)
{
  sub_26D37DED0();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D36327C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC88);
  MEMORY[0x28223BE20](v114, v3);
  v5 = &v94 - v4;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC90);
  MEMORY[0x28223BE20](v110, v6);
  v112 = &v94 - v7;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC98);
  MEMORY[0x28223BE20](v117, v8);
  v113 = &v94 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCA0);
  MEMORY[0x28223BE20](v111, v10);
  v100 = &v94 - v11;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCA8);
  MEMORY[0x28223BE20](v106, v12);
  v99 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v94 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v26 = &v94 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v94 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v120 = &v94 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v37 = &v94 - v36;
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v94 - v40;
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v94 - v43;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCB0);
  MEMORY[0x28223BE20](v115, v45);
  v119 = &v94 - v46;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCB8);
  MEMORY[0x28223BE20](v103, v47);
  v105 = &v94 - v48;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCC0);
  MEMORY[0x28223BE20](v116, v49);
  v51 = &v94 - v50;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCC8);
  v96 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v52);
  v95 = &v94 - v53;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD0);
  v98 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v54);
  v97 = &v94 - v55;
  v56 = sub_26D33CED8(*(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v57 & 1) == 0)
  {
    v94 = v51;
    v64 = v5;
    v65 = v37;
    v66 = v44;
    v68 = v119;
    v67 = v120;
    if (v56 == 3)
    {
      v88 = v66;
      v108 = v66;
      sub_26D361630(0, v66);
      v109 = v41;
      sub_26D361C7C(0, v41);
      v89 = v65;
      v107 = v65;
      sub_26D362274(0, v65);
      v90 = v67;
      sub_26D34856C(v88, v67, &qword_2804FBC80);
      sub_26D34856C(v41, v30, &qword_2804FBC80);
      sub_26D34856C(v89, v26, &qword_2804FBC80);
      v91 = v100;
      sub_26D34856C(v67, v100, &qword_2804FBC80);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD10);
      sub_26D34856C(v30, v91 + *(v92 + 48), &qword_2804FBC80);
      sub_26D34856C(v26, v91 + *(v92 + 64), &qword_2804FBC80);
      sub_26D3481A4(v26, &qword_2804FBC80);
      sub_26D3481A4(v30, &qword_2804FBC80);
      sub_26D3481A4(v90, &qword_2804FBC80);
      sub_26D34856C(v91, v112, &qword_2804FBCA0);
      swift_storeEnumTagMultiPayload();
      sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0);
      sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88);
      v93 = v113;
      sub_26D3A0718();
      sub_26D34856C(v93, v68, &qword_2804FBC98);
      swift_storeEnumTagMultiPayload();
      sub_26D3801C8();
      sub_26D380304();
      sub_26D3A0718();
      sub_26D3481A4(v93, &qword_2804FBC98);
      sub_26D3481A4(v91, &qword_2804FBCA0);
      v86 = v107;
      v87 = &qword_2804FBC80;
    }

    else
    {
      if (v56 != 2)
      {
        v44 = v66;
        v5 = v64;
        v69 = v94;
        if (v56 == 1)
        {
          MEMORY[0x28223BE20](1, v57);
          *(&v94 - 2) = a1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
          sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
          sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88);
          v70 = v95;
          sub_26D3A0958();
          v121 = 0;
          sub_26D3A0D48();
          v71 = v122;
          v72 = v123;
          LOBYTE(v122) = 0;
          LOBYTE(v123) = v71;
          v124 = v72;
          v73 = sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8);
          v74 = sub_26D37E178();
          v75 = v97;
          v76 = v102;
          sub_26D3A0C08();
          (*(v96 + 8))(v70, v76);

          v77 = v98;
          v78 = v104;
          (*(v98 + 16))(v105, v75, v104);
          swift_storeEnumTagMultiPayload();
          v122 = v76;
          v123 = &type metadata for TFMenuStyle;
          v124 = v73;
          v125 = v74;
          swift_getOpaqueTypeConformance2();
          sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8);
          sub_26D3A0718();
          sub_26D34856C(v69, v119, &qword_2804FBCC0);
          swift_storeEnumTagMultiPayload();
          sub_26D3801C8();
          sub_26D380304();
          sub_26D3A0718();
          sub_26D3481A4(v69, &qword_2804FBCC0);
          return (*(v77 + 8))(v75, v78);
        }

        goto LABEL_2;
      }

      v80 = v66;
      v108 = v66;
      sub_26D361630(0, v66);
      v109 = v41;
      sub_26D361C7C(0, v41);
      sub_26D34856C(v80, v37, &qword_2804FBC80);
      sub_26D34856C(v41, v67, &qword_2804FBC80);
      v81 = v99;
      sub_26D34856C(v37, v99, &qword_2804FBC80);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD18);
      sub_26D34856C(v67, v81 + *(v82 + 48), &qword_2804FBC80);
      sub_26D3481A4(v67, &qword_2804FBC80);
      sub_26D3481A4(v37, &qword_2804FBC80);
      sub_26D34856C(v81, v105, &qword_2804FBCA8);
      swift_storeEnumTagMultiPayload();
      v83 = sub_26D3484AC(&qword_2804FBCF8, &qword_2804FBCC8);
      v84 = sub_26D37E178();
      v122 = v102;
      v123 = &type metadata for TFMenuStyle;
      v124 = v83;
      v125 = v84;
      swift_getOpaqueTypeConformance2();
      sub_26D3484AC(&qword_2804FBD00, &qword_2804FBCA8);
      v85 = v94;
      sub_26D3A0718();
      sub_26D34856C(v85, v68, &qword_2804FBCC0);
      swift_storeEnumTagMultiPayload();
      sub_26D3801C8();
      sub_26D380304();
      sub_26D3A0718();
      sub_26D3481A4(v85, &qword_2804FBCC0);
      v86 = v81;
      v87 = &qword_2804FBCA8;
    }

    sub_26D3481A4(v86, v87);
    sub_26D3481A4(v109, &qword_2804FBC80);
    v63 = v108;
    return sub_26D3481A4(v63, &qword_2804FBC80);
  }

LABEL_2:
  v101 = v5;
  sub_26D361630(0, v44);
  v109 = v41;
  sub_26D361C7C(0, v41);
  v107 = v37;
  sub_26D362274(0, v37);
  v108 = v44;
  v58 = v22;
  v59 = v120;
  sub_26D362AD8(0, v120);
  sub_26D34856C(v44, v30, &qword_2804FBC80);
  sub_26D34856C(v41, v26, &qword_2804FBC80);
  sub_26D34856C(v37, v58, &qword_2804FBC80);
  sub_26D34856C(v59, v18, &qword_2804FBC80);
  v60 = v101;
  sub_26D34856C(v30, v101, &qword_2804FBC80);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD8);
  sub_26D34856C(v26, v60 + v61[12], &qword_2804FBC80);
  sub_26D34856C(v58, v60 + v61[16], &qword_2804FBC80);
  sub_26D34856C(v18, v60 + v61[20], &qword_2804FBC80);
  sub_26D3481A4(v18, &qword_2804FBC80);
  sub_26D3481A4(v58, &qword_2804FBC80);
  sub_26D3481A4(v26, &qword_2804FBC80);
  sub_26D3481A4(v30, &qword_2804FBC80);
  sub_26D34856C(v60, v112, &qword_2804FBC88);
  swift_storeEnumTagMultiPayload();
  sub_26D3484AC(&qword_2804FBCE0, &qword_2804FBCA0);
  sub_26D3484AC(&qword_2804FBCE8, &qword_2804FBC88);
  v62 = v113;
  sub_26D3A0718();
  sub_26D34856C(v62, v119, &qword_2804FBC98);
  swift_storeEnumTagMultiPayload();
  sub_26D3801C8();
  sub_26D380304();
  sub_26D3A0718();
  sub_26D3481A4(v62, &qword_2804FBC98);
  sub_26D3481A4(v60, &qword_2804FBC88);
  sub_26D3481A4(v120, &qword_2804FBC80);
  sub_26D3481A4(v107, &qword_2804FBC80);
  sub_26D3481A4(v109, &qword_2804FBC80);
  v63 = v108;
  return sub_26D3481A4(v63, &qword_2804FBC80);
}

uint64_t sub_26D3642C8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v40 = &v39 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v39 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v39 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v39 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v39 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v39 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v39 - v30;
  sub_26D361630(1, &v39 - v30);
  v39 = v28;
  sub_26D361C7C(1, v28);
  sub_26D362274(1, v24);
  sub_26D362AD8(1, v20);
  v32 = v16;
  v41 = v16;
  sub_26D34856C(v31, v16, &qword_2804FBC80);
  v33 = v28;
  v34 = v12;
  sub_26D34856C(v33, v12, &qword_2804FBC80);
  v35 = v40;
  sub_26D34856C(v24, v40, &qword_2804FBC80);
  v36 = v42;
  sub_26D34856C(v20, v42, &qword_2804FBC80);
  sub_26D34856C(v32, a1, &qword_2804FBC80);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBCD8);
  sub_26D34856C(v34, a1 + v37[12], &qword_2804FBC80);
  sub_26D34856C(v35, a1 + v37[16], &qword_2804FBC80);
  sub_26D34856C(v36, a1 + v37[20], &qword_2804FBC80);
  sub_26D3481A4(v20, &qword_2804FBC80);
  sub_26D3481A4(v24, &qword_2804FBC80);
  sub_26D3481A4(v39, &qword_2804FBC80);
  sub_26D3481A4(v31, &qword_2804FBC80);
  sub_26D3481A4(v36, &qword_2804FBC80);
  sub_26D3481A4(v35, &qword_2804FBC80);
  sub_26D3481A4(v34, &qword_2804FBC80);
  return sub_26D3481A4(v41, &qword_2804FBC80);
}

uint64_t sub_26D3645E4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TFSymbol(0);
  sub_26D3A0628();
  v3 = sub_26D3A0928();
  *a1 = 0xD000000000000015;
  *(a1 + 8) = 0x800000026D3A8120;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  *(a1 + v2[9]) = 1;
  *(a1 + v2[10]) = 1;
  v4 = a1 + v2[11];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[12];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  v7 = a1 + v6[9];
  sub_26D3A0D48();
  *v7 = v12;
  *(v7 + 8) = v13;
  v8 = a1 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v6[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[12];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_26D36473C@<X0>(uint64_t *a1@<X2>, _BYTE *a2@<X8>)
{
  if (*a1)
  {
    v7 = *a1;

    v3 = swift_readAtKeyPath();
    *a2 = *v4;
    v3(v6, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36481C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4)
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D364918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD58);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v45 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD60);
  MEMORY[0x28223BE20](v52, v8);
  v10 = &v45 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD40);
  v11 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD68);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v21 = &v45 - v20;
  if (qword_2804FAD48 != -1)
  {
    v18 = swift_once();
  }

  if (byte_2804FFF99 == 1)
  {
    v45 = &v45;
    v22 = MEMORY[0x28223BE20](v18, v19);
    *(&v45 - 2) = a1;
    MEMORY[0x28223BE20](v22, v23);
    v48 = v15;
    v49 = v16;
    *(&v45 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70);
    v50 = a2;
    v51 = v4;
    v47 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD78);
    v46 = v21;
    v24 = v11;
    sub_26D3484AC(&qword_2804FBD80, &qword_2804FBD70);
    sub_26D3484AC(&qword_2804FBD88, &qword_2804FBD78);
    sub_26D3A0958();
    v58 = 0;
    sub_26D3A0D48();
    v25 = v54;
    v26 = v55;
    LOBYTE(v54) = 0;
    LOBYTE(v55) = v25;
    v56 = v26;
    v27 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40);
    v28 = sub_26D37E178();
    v29 = v46;
    v30 = v53;
    sub_26D3A0C08();

    (*(v24 + 8))(v14, v30);
    v31 = v49;
    v32 = v29;
    v33 = v29;
    v34 = v48;
    (*(v49 + 16))(v47, v32, v48);
    swift_storeEnumTagMultiPayload();
    v54 = v30;
    v55 = &type metadata for TFMenuStyle;
    v56 = v27;
    v57 = v28;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58);
    sub_26D3A0718();
    return (*(v31 + 8))(v33, v34);
  }

  else
  {
    v36 = v4[12];
    v37 = sub_26D3A0078();
    (*(*(v37 - 8) + 56))(&v7[v36], 1, 1, v37);
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 9) = 257;
    v7[11] = 0;
    sub_26D365008(a1, &v7[v4[13]]);
    v38 = &v7[v4[14]];
    *v38 = swift_getKeyPath();
    v38[8] = 0;
    v39 = &v7[v4[15]];
    *v39 = swift_getKeyPath();
    v39[8] = 0;
    v40 = &v7[v4[16]];
    *v40 = swift_getKeyPath();
    v40[8] = 0;
    v41 = &v7[v4[17]];
    v58 = 0;
    sub_26D3A0D48();
    v42 = v55;
    *v41 = v54;
    *(v41 + 1) = v42;
    sub_26D34856C(v7, v10, &qword_2804FBD58);
    swift_storeEnumTagMultiPayload();
    v43 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40);
    v44 = sub_26D37E178();
    v54 = v53;
    v55 = &type metadata for TFMenuStyle;
    v56 = v43;
    v57 = v44;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FBD50, &qword_2804FBD58);
    sub_26D3A0718();
    return sub_26D3481A4(v7, &qword_2804FBD58);
  }
}

uint64_t sub_26D365008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD40);
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v47 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD68);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE38);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE40);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v43 - v15);
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v55 >> 62)
    {
      v17 = sub_26D3A1488();
    }

    else
    {
      v17 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v9;
    if (v17)
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_26D39FF68();

      if ((v55 & 1) == 0)
      {
        v60 = *(a1 + 16);
        v61 = *(a1 + 24);
        v58 = *(a1 + 32);
        v59 = *(a1 + 40);
        v31 = swift_allocObject();
        v32 = *(a1 + 16);
        v31[1] = *a1;
        v31[2] = v32;
        *(v31 + 41) = *(a1 + 25);
        *v16 = 16842752;
        v33 = v13;
        v34 = *(v13 + 48);

        sub_26D34856C(&v60, &v55, &qword_2804FB888);
        sub_26D34856C(&v58, &v55, &qword_2804FBE00);
        sub_26D365868(v16 + v34);
        v35 = (v16 + v33[13]);
        *v35 = sub_26D380B3C;
        v35[1] = v31;
        v36 = v16 + v33[14];
        v53 = 0;
        v54 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
        sub_26D3A0D48();
        v37 = BYTE8(v55);
        v38 = v56;
        *v36 = v55;
        v36[8] = v37;
        *(v36 + 2) = v38;
        v39 = v33[15];
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
        sub_26D3A0D48();
        *(v16 + v39) = v55;
        v40 = v16 + v33[16];
        *v40 = swift_getKeyPath();
        v40[8] = 0;
        sub_26D34856C(v16, v12, &qword_2804FBE40);
        swift_storeEnumTagMultiPayload();
        sub_26D3484AC(&qword_2804FBE48, &qword_2804FBE40);
        v41 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40);
        v42 = sub_26D37E178();
        *&v55 = v3;
        *(&v55 + 1) = &type metadata for TFMenuStyle;
        v56 = v41;
        v57 = v42;
        swift_getOpaqueTypeConformance2();
        sub_26D3A0718();
        return sub_26D3481A4(v16, &qword_2804FBE40);
      }
    }

    v46 = v13;
    v20 = MEMORY[0x28223BE20](v18, v19);
    *(&v43 - 2) = a1;
    MEMORY[0x28223BE20](v20, v21);
    *(&v43 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70);
    v45 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD78);
    v44 = v12;
    sub_26D3484AC(&qword_2804FBD80, &qword_2804FBD70);
    sub_26D3484AC(&qword_2804FBD88, &qword_2804FBD78);
    v22 = v47;
    sub_26D3A0958();
    LOBYTE(v60) = 0;
    sub_26D3A0D48();
    v23 = v55;
    v24 = *(&v55 + 1);
    LOBYTE(v55) = 0;
    BYTE8(v55) = v23;
    v56 = v24;
    v25 = sub_26D3484AC(&qword_2804FBD48, &qword_2804FBD40);
    v26 = sub_26D37E178();
    v27 = v49;
    sub_26D3A0C08();

    (*(v48 + 8))(v22, v3);
    v28 = v50;
    v29 = v45;
    (*(v50 + 16))(v44, v27, v45);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE48, &qword_2804FBE40);
    *&v55 = v3;
    *(&v55 + 1) = &type metadata for TFMenuStyle;
    v56 = v25;
    v57 = v26;
    swift_getOpaqueTypeConformance2();
    sub_26D3A0718();
    return (*(v28 + 8))(v27, v29);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D365868@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD90);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD98);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDA0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = v27 - v16;
  sub_26D366D0C(v2, v7);
  sub_26D3A0EB8();
  sub_26D3A0268();
  sub_26D347238(v7, v12, &qword_2804FBD90);
  v18 = &v12[*(v9 + 44)];
  v19 = v27[5];
  *(v18 + 4) = v27[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v27[6];
  v20 = v27[1];
  *v18 = v27[0];
  *(v18 + 1) = v20;
  v21 = v27[3];
  *(v18 + 2) = v27[2];
  *(v18 + 3) = v21;
  KeyPath = swift_getKeyPath();
  sub_26D347238(v12, v17, &qword_2804FBD98);
  v23 = &v17[*(v14 + 44)];
  *v23 = KeyPath;
  *(v23 + 1) = 1;
  v23[16] = 0;
  v24 = swift_getKeyPath();
  sub_26D347238(v17, a1, &qword_2804FBDA0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDA8);
  v26 = (a1 + *(result + 36));
  *v26 = v24;
  v26[1] = 0x3FE6666666666666;
  return result;
}

uint64_t sub_26D365ACC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v3 = sub_26D3A0E48();
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v89 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v94 = &v63 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDF8);
  v87 = *(v10 - 8);
  v88 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v86 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v93 = &v63 - v15;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v111 = v127;
    swift_getKeyPath();
    v143 = *(a1 + 16);
    v144 = *(a1 + 24);
    v141 = *(a1 + 32);
    v142 = *(a1 + 40);
    v16 = swift_allocObject();
    v17 = *(a1 + 16);
    v16[1] = *a1;
    v16[2] = v17;
    *(v16 + 41) = *(a1 + 25);

    sub_26D34856C(&v143, &v127, &qword_2804FB888);
    sub_26D34856C(&v141, &v127, &qword_2804FBE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB618);
    type metadata accessor for TFToggle(0);
    sub_26D3484AC(&qword_2804FBE08, &qword_2804FB618);
    sub_26D3809CC();
    sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
    sub_26D3A0E58();
    sub_26D3A0E38();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26D39FF68();

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v91 = 0;
    v92 = 0;
    v90 = 0;
    KeyPath = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    if (v127)
    {
      v22 = swift_allocObject();
      v28 = *(a1 + 16);
      v22[1] = *a1;
      v22[2] = v28;
      *(v22 + 41) = *(a1 + 25);

      sub_26D34856C(&v143, &v127, &qword_2804FB888);
      sub_26D34856C(&v141, &v127, &qword_2804FBE00);
      if (qword_2804FAC88 != -1)
      {
        swift_once();
      }

      v127 = qword_2804FFE40;
      v128 = *algn_2804FFE48;
      sub_26D37E6A4();

      v18 = sub_26D3A09C8();
      v19 = v29;
      v20 = v30;
      LOBYTE(v105) = v31 & 1;
      v111 = 0;
      LOBYTE(v112) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
      sub_26D3A0D48();
      v23 = v127;
      v92 = v129;
      LOBYTE(v99) = v128;
      v111 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
      sub_26D3A0D48();
      v90 = v128;
      v91 = v127;
      KeyPath = swift_getKeyPath();
      LOBYTE(v127) = 0;
      v26 = v105;
      v25 = v99;
      v21 = sub_26D380A3C;
      v27 = 0x10000;
    }

    v76 = v27;
    v77 = v26;
    v78 = v21;
    v79 = v25;
    v80 = KeyPath;
    v81 = v23;
    v82 = v20;
    v83 = v19;
    v84 = v18;
    v85 = v22;
    v32 = swift_allocObject();
    v33 = *(a1 + 16);
    v32[1] = *a1;
    v32[2] = v33;
    v34 = *(a1 + 25);
    v66 = v32;
    *(v32 + 41) = v34;

    sub_26D34856C(&v143, &v127, &qword_2804FB888);
    sub_26D34856C(&v141, &v127, &qword_2804FBE00);
    if (qword_2804FAC80 != -1)
    {
      swift_once();
    }

    v127 = qword_2804FFE30;
    v128 = *algn_2804FFE38;
    sub_26D37E6A4();

    v74 = sub_26D3A09C8();
    v65 = v35;
    v68 = v36;
    LOBYTE(v105) = v37 & 1;
    v111 = 0;
    LOBYTE(v112) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
    sub_26D3A0D48();
    v75 = v127;
    v64 = v129;
    LOBYTE(v99) = v128;
    v111 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
    sub_26D3A0D48();
    v72 = v128;
    v73 = v127;
    v71 = swift_getKeyPath();
    LOBYTE(v127) = 0;
    v69 = v105;
    v70 = v99;
    v38 = v86;
    v39 = *(v87 + 16);
    v40 = v88;
    v39(v86, v93, v88);
    v41 = *(v96 + 16);
    v42 = v89;
    v41(v89, v94, v95);
    v43 = v67;
    v39(v67, v38, v40);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE20);
    v45 = v42;
    v46 = v95;
    v41(&v43[v44[12]], v45, v95);
    v47 = &v43[v44[16]];
    *&v99 = v76;
    *(&v99 + 1) = v84;
    *&v100 = v83;
    *(&v100 + 1) = v77;
    *&v101 = v82;
    *(&v101 + 1) = v78;
    *&v102 = v85;
    *(&v102 + 1) = v81;
    *&v103 = v79;
    *(&v103 + 1) = v92;
    *&v104[0] = v91;
    *(&v104[0] + 1) = v90;
    *&v104[1] = v80;
    BYTE8(v104[1]) = 0;
    v48 = v100;
    *v47 = v99;
    *(v47 + 1) = v48;
    v49 = v102;
    *(v47 + 2) = v101;
    *(v47 + 3) = v49;
    v50 = v104[0];
    *(v47 + 4) = v103;
    *(v47 + 5) = v50;
    *(v47 + 89) = *(v104 + 9);
    v51 = &v43[v44[20]];
    LODWORD(v105) = 0x10000;
    v52 = v65;
    v53 = v66;
    *(&v105 + 1) = v74;
    *&v106 = v65;
    BYTE8(v106) = v69;
    HIDWORD(v106) = *&v98[3];
    *(&v106 + 9) = *v98;
    *&v107 = v68;
    *(&v107 + 1) = sub_26D383394;
    *&v108 = v66;
    *(&v108 + 1) = v75;
    LOBYTE(v109) = v70;
    DWORD1(v109) = *&v97[3];
    *(&v109 + 1) = *v97;
    v54 = v64;
    *(&v109 + 1) = v64;
    *&v110[0] = v73;
    *(&v110[0] + 1) = v72;
    *&v110[1] = v71;
    BYTE8(v110[1]) = 0;
    sub_26D34856C(&v99, &v127, &qword_2804FBE28);
    sub_26D34856C(&v105, &v127, &qword_2804FBE30);
    v55 = *(v96 + 8);
    v96 += 8;
    v67 = v55;
    (v55)(v94, v46);
    v56 = v88;
    v57 = *(v87 + 8);
    v57(v93, v88);
    v58 = v108;
    v59 = v110[0];
    *(v51 + 4) = v109;
    *(v51 + 5) = v59;
    *(v51 + 89) = *(v110 + 9);
    v60 = v106;
    v61 = v107;
    *v51 = v105;
    *(v51 + 1) = v60;
    *(v51 + 2) = v61;
    *(v51 + 3) = v58;
    LODWORD(v111) = 0x10000;
    v112 = v74;
    v113 = v52;
    v114 = v69;
    *&v115[3] = *&v98[3];
    *v115 = *v98;
    v116 = v68;
    v117 = sub_26D383394;
    v118 = v53;
    v119 = v75;
    v120 = v70;
    *v121 = *v97;
    *&v121[3] = *&v97[3];
    v122 = v54;
    v123 = v73;
    v124 = v72;
    v125 = v71;
    v126 = 0;
    sub_26D3481A4(&v111, &qword_2804FBE30);
    v127 = v76;
    v128 = v84;
    v129 = v83;
    v130 = v77;
    v131 = v82;
    v132 = v78;
    v133 = v85;
    v134 = v81;
    v135 = v79;
    v136 = v92;
    v137 = v91;
    v138 = v90;
    v139 = v80;
    v140 = 0;
    sub_26D3481A4(&v127, &qword_2804FBE28);
    (v67)(v89, v95);
    return (v57)(v86, v56);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3665A8@<X0>(void **a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v33 = *a2;
  v31 = *(a2 + 2);
  v32 = *(a2 + 12);
  v29 = *(a2 + 4);
  v30 = *(a2 + 40);
  sub_26D3A10C8();
  sub_26D34856C(&v33, v27, &qword_2804FB8D8);
  sub_26D34856C(&v31, v27, &qword_2804FB888);
  sub_26D34856C(&v29, v27, &qword_2804FBE00);
  v6 = v5;
  v7 = sub_26D3A10B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  v10 = a2[1];
  *(v8 + 32) = *a2;
  *(v8 + 48) = v10;
  *(v8 + 57) = *(a2 + 25);
  *(v8 + 80) = v6;
  sub_26D34856C(&v33, v27, &qword_2804FB8D8);
  sub_26D34856C(&v31, v27, &qword_2804FB888);
  sub_26D34856C(&v29, v27, &qword_2804FBE00);
  v11 = v6;
  v12 = sub_26D3A10B8();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  v14 = a2[1];
  *(v13 + 32) = *a2;
  *(v13 + 48) = v14;
  *(v13 + 57) = *(a2 + 25);
  *(v13 + 80) = v11;
  sub_26D3A0E28();
  v15 = v27[0];
  v16 = v27[1];
  v17 = v28;
  v18 = [v11 localizedFullName];
  v19 = sub_26D3A0F98();
  v21 = v20;

  v22 = type metadata accessor for TFToggle(0);
  sub_26D3A0638();
  *a3 = 0;
  a3[1] = 0;
  v23 = (a3 + v22[6]);
  *v23 = v19;
  v23[1] = v21;
  *(a3 + v22[7]) = 1;
  v24 = a3 + v22[8];
  *v24 = v15;
  *(v24 + 1) = v16;
  v24[16] = v17;
  v25 = a3 + v22[9];
  result = swift_getKeyPath();
  *v25 = result;
  v25[8] = 0;
  return result;
}

uint64_t sub_26D36682C@<X0>(void *a1@<X2>, void *a2@<X3>, BOOL *a3@<X8>)
{
  if (*a1)
  {

    v4 = sub_26D34CA00();

    v19 = a3;
    if (v4 >> 62)
    {
LABEL_18:
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = sub_26D3A1488();
    }

    else
    {
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    do
    {
      v7 = v5;
      if (v22 == v5)
      {
        break;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_26D33E7C4(v5, v4);
      }

      else
      {
        if (v5 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v4 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v10 = [v8 familyName];
      v11 = sub_26D3A0F98();
      v13 = v12;

      v14 = [a2 familyName];
      v15 = sub_26D3A0F98();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

        break;
      }

      v6 = sub_26D3A1518();

      v5 = v7 + 1;
    }

    while ((v6 & 1) == 0);

    *v19 = v22 != v7;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366A68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (*a4)
  {

    v6 = [a5 fontDescriptor];
    v7 = sub_26D34CD84();
    [v7 pointSize];
    v9 = v8;

    v10 = [objc_opt_self() fontWithDescriptor:v6 size:v9];
    sub_26D34FD44(v10);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366B88(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = *(*a1 + *a2);

    v2(v3);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D366C38@<X0>(uint64_t a1@<X8>)
{
  sub_26D365868(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD70);
  v3 = a1 + v2[9];
  sub_26D3A0D48();
  *v3 = v8;
  *(v3 + 8) = v9;
  v4 = a1 + v2[10];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[11];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = a1 + v2[12];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_26D366D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D33CED8(*(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  if ((v13 & 1) != 0 || v12 != 1)
  {
    if (*a1)
    {

      v47 = *(sub_26D34FB90() + 2);

      v18 = sub_26D34CD84();

      v19 = sub_26D39D0C0();
      v21 = v20;

      v51 = v19;
      v52 = v21;
      sub_26D37E6A4();
      v22 = sub_26D3A09C8();
      v24 = v23;
      v26 = v25;
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      v49 = v8;
      v50 = a2;
      v48 = v4;
      if (byte_2804FFF98 == 1)
      {
        LODWORD(v51) = sub_26D3A0798();
      }

      else
      {
        v51 = sub_26D3A0C78();
      }

      v51 = sub_26D3A00D8();
      v27 = sub_26D3A0998();
      v43 = v28;
      v44 = v27;
      v29 = v28;
      v31 = v30;
      v45 = v30;
      v46 = v32;
      sub_26D37EDCC(v22, v24, v26 & 1);

      sub_26D367280(v47, v27, v29, v31 & 1, &v51);
      v34 = v51;
      v33 = v52;
      v36 = v53;
      v35 = v54;
      v37 = v55;
      v38 = v56;
      v39 = v57;
      v40 = sub_26D33D0B8(*(a1 + 32), *(a1 + 40));
      v41 = 0.5;
      LOBYTE(v51) = v39;
      if (v40)
      {
        v41 = 1.0;
      }

      *v7 = v34;
      *(v7 + 1) = v33;
      *(v7 + 2) = v36;
      *(v7 + 3) = v35;
      *(v7 + 4) = v37;
      *(v7 + 5) = v38;
      v7[48] = v39;
      *(v7 + 7) = v41;
      swift_storeEnumTagMultiPayload();
      sub_26D380674(v34, v33, v36, v35, v37, v38, v39);
      sub_26D380674(v34, v33, v36, v35, v37, v38, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB8);
      sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
      sub_26D3806F8();
      sub_26D3A0718();
      sub_26D37EDCC(v44, v43, v45 & 1);

      sub_26D380918(v34, v33, v36, v35, v37, v38, v39);
      return sub_26D380918(v34, v33, v36, v35, v37, v38, v39);
    }

    else
    {
      type metadata accessor for TextFormattingState();
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  else
  {
    v14 = sub_26D3A0928();
    sub_26D3A0638();
    *v11 = xmmword_26D3A3E60;
    v11[16] = 0;
    *(v11 + 3) = v14;
    *(v11 + 4) = 0;
    v11[v8[9]] = 1;
    v11[v8[10]] = 1;
    v15 = &v11[v8[11]];
    *v15 = swift_getKeyPath();
    v15[8] = 0;
    v16 = &v11[v8[12]];
    *v16 = swift_getKeyPath();
    v16[8] = 0;
    sub_26D381440(v11, v7, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDB8);
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3806F8();
    sub_26D3A0718();
    return sub_26D37EEEC(v11, type metadata accessor for TFSymbol);
  }

  return result;
}

double sub_26D367280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_26D3A0598();
  MEMORY[0x28223BE20](v10 - 8, v11);
  if (a1 < 2)
  {
    sub_26D3806E8(a2, a3, a4 & 1);
  }

  else
  {
    sub_26D3A0588();
    sub_26D3A0578();
    sub_26D3A0568();
    sub_26D3A0578();
    sub_26D3A0558();
    sub_26D3A0578();
    sub_26D3A05B8();
    if (qword_2804FABD8 != -1)
    {
      swift_once();
    }

    v12 = qword_2804FFCE8;
    v13 = sub_26D3A09A8();
    v15 = v14;
    v17 = v16;
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    if (byte_2804FFF98 == 1)
    {
      sub_26D3A07A8();
    }

    else
    {
      sub_26D3A0C88();
    }

    *&v19 = sub_26D3A00D8();
    sub_26D3A0998();
    sub_26D37EDCC(v13, v15, v17 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBDF0);
  sub_26D380894();
  sub_26D3A0718();
  result = *&v19;
  *a5 = v19;
  *(a5 + 16) = v20;
  *(a5 + 32) = v21;
  *(a5 + 48) = v22;
  return result;
}

uint64_t sub_26D3675FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBD20);
  MEMORY[0x28223BE20](v1, v2);
  v4 = v12 - v3;
  v5 = v0[1];
  v13 = *v0;
  v14[0] = v5;
  *(v14 + 9) = *(v0 + 25);
  sub_26D364918(&v13, v12 - v3);
  if (qword_2804FABF8 != -1)
  {
    swift_once();
  }

  v12[2] = qword_2804FFD20;
  v12[3] = *algn_2804FFD28;
  sub_26D37E6A4();

  v6 = sub_26D3A09C8();
  v8 = v7;
  v10 = v9;
  sub_26D3803EC();
  sub_26D3A0AE8();
  sub_26D37EDCC(v6, v8, v10 & 1);

  return sub_26D3481A4(v4, &qword_2804FBD20);
}

uint64_t sub_26D367778@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE50);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v58 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE58);
  MEMORY[0x28223BE20](v62, v11);
  v63 = v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE60);
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE68);
  MEMORY[0x28223BE20](v17, v18);
  v20 = v58 - v19;
  v21 = sub_26D33CED8(*(v1 + 24), *(v1 + 32) | (*(v1 + 33) << 8));
  if ((v22 & 1) != 0 || ((*v1 & 1) == 0 ? (v23 = 1) : (v23 = 2), v23 < v21))
  {
    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    v24 = 1;
    if ((byte_2804FFF99 & 1) == 0)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98 == 1 && (*v1 & 1) != 0 && (v25 = *(v1 + 56), v26 = *(v1 + 64), v27 = sub_26D33D278(v25, v26), v28 = sub_26D33CD0C(*(v1 + 72), *(v1 + 80)), sub_26D39C90C(v28), v29 < v27))
      {
        v30 = sub_26D33D278(*(v1 + 40), *(v1 + 48));
        v31 = sub_26D33D278(v25, v26);
        v24 = sub_26D33D278(v25, v26) < v30 - (v31 + v31) + -2.0;
      }

      else
      {
        v24 = 0;
      }
    }

    v32 = v3[12];
    v33 = sub_26D3A0078();
    (*(*(v33 - 8) + 56))(&v7[v32], 1, 1, v33);
    *v7 = 0;
    v7[8] = 1;
    *(v7 + 9) = 257;
    v7[11] = v24;
    sub_26D3691F8(v1, &v7[v3[13]]);
    v34 = &v7[v3[14]];
    *v34 = swift_getKeyPath();
    v34[8] = 0;
    v35 = &v7[v3[15]];
    *v35 = swift_getKeyPath();
    v35[8] = 0;
    v36 = &v7[v3[16]];
    *v36 = swift_getKeyPath();
    v36[8] = 0;
    v37 = &v7[v3[17]];
    v67 = 0;
    sub_26D3A0D48();
    v38 = v65;
    *v37 = v64;
    *(v37 + 1) = v38;
    v39 = &qword_2804FBE50;
    sub_26D347238(v7, v10, &qword_2804FBE50);
    sub_26D34856C(v10, v63, &qword_2804FBE50);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50);
    sub_26D3A0718();
    v40 = v10;
  }

  else
  {
    v41 = v17;
    v42 = *(v17 + 48);
    v43 = v41;
    v59 = v41;
    v44 = sub_26D3A0078();
    v45 = (*(*(v44 - 8) + 56))(&v20[v42], 1, 1, v44);
    v58[1] = v58;
    *v20 = 0;
    v20[8] = 1;
    *(v20 + 9) = 257;
    v20[11] = 0;
    v58[2] = *(v43 + 52);
    v47 = MEMORY[0x28223BE20](v45, v46);
    v58[-2] = v1;
    MEMORY[0x28223BE20](v47, v48);
    v58[-2] = v1;
    v58[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE80);
    v60 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBE88);
    sub_26D380B70();
    sub_26D3484AC(&qword_2804FBEE0, &qword_2804FBE88);
    sub_26D3A0958();
    v67 = 0;
    sub_26D3A0D48();
    v49 = v64;
    v50 = v65;
    v64 = 0;
    LOBYTE(v65) = v49;
    v66 = v50;
    sub_26D3484AC(&qword_2804FBEE8, &qword_2804FBE60);
    sub_26D37E178();
    sub_26D3A0C08();

    (*(v61 + 8))(v16, v13);
    v51 = v59;
    v52 = &v20[v59[14]];
    *v52 = swift_getKeyPath();
    v52[8] = 0;
    v53 = &v20[v51[15]];
    *v53 = swift_getKeyPath();
    v53[8] = 0;
    v54 = &v20[v51[16]];
    *v54 = swift_getKeyPath();
    v54[8] = 0;
    v55 = &v20[v51[17]];
    v67 = 0;
    sub_26D3A0D48();
    v56 = v65;
    *v55 = v64;
    *(v55 + 1) = v56;
    v39 = &qword_2804FBE68;
    sub_26D34856C(v20, v63, &qword_2804FBE68);
    swift_storeEnumTagMultiPayload();
    sub_26D3484AC(&qword_2804FBE70, &qword_2804FBE68);
    sub_26D3484AC(&qword_2804FBE78, &qword_2804FBE50);
    sub_26D3A0718();
    v40 = v20;
  }

  return sub_26D3481A4(v40, v39);
}

uint64_t sub_26D367FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEF8);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v3);
  v106 = &v90 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF00);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v5);
  v91 = &v90 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF08);
  v98 = *(v92 - 8);
  v8 = MEMORY[0x28223BE20](v92, v7);
  v97 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v100 = &v90 - v11;
  v96 = sub_26D3A0E48();
  v94 = *(v96 - 8);
  v13 = MEMORY[0x28223BE20](v96, v12);
  v99 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v110 = &v90 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF10);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v105 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v111 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF18);
  v24 = (v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v104 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v102 = &v90 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = (&v90 - v33);
  MEMORY[0x28223BE20](v32, v35);
  v37 = (&v90 - v36);
  v38 = swift_allocObject();
  v39 = *(a1 + 48);
  *(v38 + 48) = *(a1 + 32);
  *(v38 + 64) = v39;
  *(v38 + 80) = *(a1 + 64);
  *(v38 + 96) = *(a1 + 80);
  v40 = *(a1 + 16);
  *(v38 + 16) = *a1;
  *(v38 + 32) = v40;
  *v37 = 0x10000;
  v113 = a1;
  sub_26D348204(a1, &v116);
  sub_26D3A0CD8();
  v41 = (v37 + v24[15]);
  *v41 = sub_26D380F70;
  v41[1] = v38;
  v42 = v37 + v24[16];
  v114 = 0;
  v43 = 1;
  v115 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
  sub_26D3A0D48();
  v44 = BYTE8(v116);
  v45 = v117;
  *v42 = v116;
  v42[8] = v44;
  *(v42 + 2) = v45;
  v46 = v24[17];
  v114 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
  sub_26D3A0D48();
  *(v37 + v46) = v116;
  v47 = v24[18];
  v101 = v37;
  v48 = v37 + v47;
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = swift_allocObject();
  v50 = *(a1 + 48);
  *(v49 + 48) = *(a1 + 32);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(a1 + 64);
  *(v49 + 96) = *(a1 + 80);
  v51 = *(a1 + 16);
  *(v49 + 16) = *a1;
  *(v49 + 32) = v51;
  *v34 = 0x10000;
  v112 = a1;
  sub_26D348204(a1, &v116);
  sub_26D3A0CD8();
  v52 = (v34 + v24[15]);
  *v52 = sub_26D380FCC;
  v52[1] = v49;
  v53 = v34 + v24[16];
  v114 = 0;
  v115 = 1;
  sub_26D3A0D48();
  v54 = BYTE8(v116);
  v55 = v117;
  *v53 = v116;
  v53[8] = v54;
  *(v53 + 2) = v55;
  v56 = v24[17];
  v114 = 0;
  sub_26D3A0D48();
  *(v34 + v56) = v116;
  v57 = v24[18];
  v103 = v34;
  v58 = v34 + v57;
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  if (*a1)
  {
    v59 = sub_26D3A0E38();
    v61 = MEMORY[0x28223BE20](v59, v60);
    *(&v90 - 2) = a1;
    MEMORY[0x28223BE20](v61, v62);
    *(&v90 - 2) = a1;
    *(&v90 - 4) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30);
    sub_26D38103C();
    sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30);
    v63 = v91;
    sub_26D3A0958();
    LOBYTE(v114) = 0;
    sub_26D3A0D48();
    v64 = v116;
    v65 = *(&v116 + 1);
    LOBYTE(v116) = 1;
    BYTE8(v116) = v64;
    v117 = v65;
    sub_26D3484AC(&qword_2804FBF50, &qword_2804FBF00);
    sub_26D37E178();
    v66 = v100;
    v67 = v95;
    sub_26D3A0C08();

    (*(v93 + 8))(v63, v67);
    v68 = v94;
    v69 = *(v94 + 16);
    v70 = v99;
    v71 = v96;
    v69(v99, v110, v96);
    v72 = v98;
    v73 = *(v98 + 16);
    v74 = v97;
    v75 = v66;
    v76 = v92;
    v73(v97, v75, v92);
    v69(v106, v70, v71);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF58);
    v78 = v106;
    v73(&v106[*(v77 + 48)], v74, v76);
    v79 = *(v72 + 8);
    v79(v100, v76);
    v80 = *(v68 + 8);
    v80(v110, v71);
    v79(v74, v76);
    v80(v99, v71);
    sub_26D347238(v78, v111, &qword_2804FBEF8);
    v43 = 0;
  }

  v81 = v111;
  (*(v107 + 56))(v111, v43, 1, v108);
  v82 = v101;
  v83 = v102;
  sub_26D34856C(v101, v102, &qword_2804FBF18);
  v84 = v103;
  v85 = v104;
  sub_26D34856C(v103, v104, &qword_2804FBF18);
  v86 = v105;
  sub_26D34856C(v81, v105, &qword_2804FBF10);
  v87 = v109;
  sub_26D34856C(v83, v109, &qword_2804FBF18);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF20);
  sub_26D34856C(v85, v87 + *(v88 + 48), &qword_2804FBF18);
  sub_26D34856C(v86, v87 + *(v88 + 64), &qword_2804FBF10);
  sub_26D3481A4(v81, &qword_2804FBF10);
  sub_26D3481A4(v84, &qword_2804FBF18);
  sub_26D3481A4(v82, &qword_2804FBF18);
  sub_26D3481A4(v86, &qword_2804FBF10);
  sub_26D3481A4(v85, &qword_2804FBF18);
  return sub_26D3481A4(v83, &qword_2804FBF18);
}

uint64_t sub_26D368B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  sub_26D37E6A4();

  result = sub_26D3A09C8();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_26D368C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TFSymbol(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - v10;
  if (*a1)
  {
    if (*(a1 + 8))
    {

      v12 = sub_26D34CD84();

      [v12 pointSize];
      v14 = v13;

      if (qword_2804FAB90 != -1)
      {
        swift_once();
      }

      v36 = a2;
      v15 = qword_2804FB548;
      sub_26D345E5C(0, &qword_2804FB768);
      v16 = sub_26D3A1348();
      v17 = [v15 stringFromNumber_];

      if (v17)
      {
        v35 = sub_26D3A0F98();
        v19 = v18;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB770);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_26D3A35F0;
        *(v24 + 56) = MEMORY[0x277D85048];
        *(v24 + 64) = sub_26D359898();
        *(v24 + 32) = v14;
        v35 = sub_26D3A0FA8();
        v19 = v25;
      }

      KeyPath = swift_getKeyPath();
      sub_26D3A08E8();
      v27 = sub_26D3A08D8();

      v28 = swift_getKeyPath();
      v29 = swift_getKeyPath();
      v37 = 0;
      v30 = swift_getKeyPath();
      sub_26D3A0EA8();
      sub_26D3A0268();
      *&v38[55] = v42;
      *&v38[71] = v43;
      *&v38[87] = v44;
      *&v38[103] = v45;
      *&v38[7] = v39;
      *&v38[23] = v40;
      *&v38[39] = v41;
      v31 = *&v38[80];
      *(v11 + 145) = *&v38[64];
      *(v11 + 161) = v31;
      *(v11 + 177) = *&v38[96];
      v32 = *&v38[16];
      *(v11 + 81) = *v38;
      *(v11 + 97) = v32;
      v33 = *&v38[48];
      *(v11 + 113) = *&v38[32];
      *v11 = v35;
      *(v11 + 1) = v19;
      v11[16] = 0;
      *(v11 + 3) = KeyPath;
      v11[32] = 0;
      *(v11 + 5) = v28;
      *(v11 + 6) = v27;
      *(v11 + 7) = v29;
      *(v11 + 8) = 0x3FE999999999999ALL;
      *(v11 + 9) = v30;
      v11[80] = 1;
      *(v11 + 24) = *&v38[111];
      *(v11 + 129) = v33;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEA0);
      sub_26D380C2C();
      sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
      return sub_26D3A0718();
    }

    else
    {
      type metadata accessor for TextFormattingState();
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  else
  {
    v20 = sub_26D3A0928();
    sub_26D3A0638();
    *v7 = xmmword_26D3A3E70;
    v7[16] = 0;
    *(v7 + 3) = v20;
    *(v7 + 4) = 0;
    v7[v4[9]] = 1;
    v7[v4[10]] = 1;
    v21 = &v7[v4[11]];
    *v21 = swift_getKeyPath();
    v21[8] = 0;
    v22 = &v7[v4[12]];
    *v22 = swift_getKeyPath();
    v22[8] = 0;
    sub_26D381440(v7, v11, type metadata accessor for TFSymbol);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBEA0);
    sub_26D380C2C();
    sub_26D37E044(&qword_2804FC7D0, type metadata accessor for TFSymbol);
    sub_26D3A0718();
    return sub_26D37EEEC(v7, type metadata accessor for TFSymbol);
  }

  return result;
}

uint64_t sub_26D3691F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF00);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v3);
  v111 = &v109 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF08);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v5);
  v114 = &v109 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF70);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v125 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v128 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF78);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v109 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF80);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v123 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v124 = &v109 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v122 = &v109 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v129 = &v109 - v28;
  v29 = swift_allocObject();
  v30 = *(a1 + 48);
  *(v29 + 48) = *(a1 + 32);
  *(v29 + 64) = v30;
  *(v29 + 80) = *(a1 + 64);
  *(v29 + 96) = *(a1 + 80);
  v31 = *(a1 + 16);
  *(v29 + 16) = *a1;
  *(v29 + 32) = v31;
  *v16 = 0x10000;
  v32 = v16 + v13[12];
  sub_26D348204(a1, &v132);
  v33 = sub_26D3A0928();
  v34 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *v32 = xmmword_26D3A3E80;
  v32[16] = 0;
  *(v32 + 3) = v33;
  *(v32 + 4) = 0;
  v32[v34[9]] = 0;
  v32[v34[10]] = 1;
  v35 = &v32[v34[11]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v120 = v34;
  v36 = &v32[v34[12]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = (v16 + v13[13]);
  *v37 = sub_26D383398;
  v37[1] = v29;
  v38 = v16 + v13[14];
  v130 = 0;
  v131 = 1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
  sub_26D3A0D48();
  v39 = BYTE8(v132);
  v40 = v133;
  *v38 = v132;
  v38[8] = v39;
  *(v38 + 2) = v40;
  v41 = v13[15];
  v130 = 0;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
  sub_26D3A0D48();
  *(v16 + v41) = v132;
  v42 = v16 + v13[16];
  *v42 = swift_getKeyPath();
  v42[8] = 0;
  if (qword_2804FAC30 != -1)
  {
    swift_once();
  }

  v132 = xmmword_2804FFD90;
  v43 = sub_26D37E6A4();

  v127 = v43;
  v44 = sub_26D3A09C8();
  v46 = v45;
  v48 = v47;
  v49 = sub_26D3484AC(&qword_2804FBF88, &qword_2804FBF78);
  v121 = v13;
  v117 = v49;
  sub_26D3A0AE8();
  sub_26D37EDCC(v44, v46, v48 & 1);

  sub_26D3481A4(v16, &qword_2804FBF78);
  v50 = 1;
  v51 = v128;
  v52 = v16;
  if (*a1)
  {
    v53 = *(a1 + 56);
    v54 = *(a1 + 64);
    v55 = sub_26D33D278(v53, v54);
    v56 = sub_26D33CD0C(*(a1 + 72), *(a1 + 80));
    sub_26D39C90C(v56);
    if (v57 >= v55)
    {
      v50 = 1;
    }

    else
    {
      v58 = sub_26D33D278(*(a1 + 40), *(a1 + 48));
      v59 = sub_26D33D278(v53, v54);
      v60 = v58 - (v59 + v59) + -2.0;
      v63 = sub_26D33D278(v53, v54);
      v50 = 1;
      if (v63 < v60)
      {
        v110 = v16;
        v64 = MEMORY[0x28223BE20](v61, v62);
        *(&v109 - 2) = a1;
        MEMORY[0x28223BE20](v64, v65);
        *(&v109 - 2) = a1;
        *(&v109 - 4) = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30);
        sub_26D38103C();
        sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30);
        v66 = v111;
        sub_26D3A0958();
        LOBYTE(v130) = 0;
        sub_26D3A0D48();
        v67 = v132;
        v68 = *(&v132 + 1);
        LOBYTE(v132) = 1;
        BYTE8(v132) = v67;
        v133 = v68;
        v69 = sub_26D3484AC(&qword_2804FBF50, &qword_2804FBF00);
        v70 = sub_26D37E178();
        v71 = v114;
        v72 = v113;
        sub_26D3A0C08();

        (*(v112 + 8))(v66, v72);
        if (qword_2804FAC00 != -1)
        {
          swift_once();
        }

        v132 = xmmword_2804FFD30;

        v73 = sub_26D3A09C8();
        v75 = v74;
        v77 = v76;
        *&v132 = v72;
        *(&v132 + 1) = &type metadata for TFMenuStyle;
        v133 = v69;
        v134 = v70;
        swift_getOpaqueTypeConformance2();
        v51 = v128;
        v78 = v116;
        sub_26D3A0AE8();
        sub_26D37EDCC(v73, v75, v77 & 1);

        (*(v115 + 8))(v71, v78);
        v50 = 0;
        v52 = v110;
      }
    }
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF90);
  (*(*(v79 - 8) + 56))(v51, v50, 1, v79);
  v80 = swift_allocObject();
  v81 = *(a1 + 48);
  *(v80 + 48) = *(a1 + 32);
  *(v80 + 64) = v81;
  *(v80 + 80) = *(a1 + 64);
  *(v80 + 96) = *(a1 + 80);
  v82 = *(a1 + 16);
  *(v80 + 16) = *a1;
  *(v80 + 32) = v82;
  *v52 = 0x10000;
  v83 = v121;
  v84 = v52 + v121[12];
  sub_26D348204(a1, &v132);
  v85 = sub_26D3A0928();
  v86 = v120;
  sub_26D3A0638();
  *v84 = xmmword_26D3A3E90;
  v84[16] = 0;
  *(v84 + 3) = v85;
  *(v84 + 4) = 0;
  v84[v86[9]] = 0;
  v84[v86[10]] = 1;
  v87 = &v84[v86[11]];
  *v87 = swift_getKeyPath();
  v87[8] = 0;
  v88 = &v84[v86[12]];
  *v88 = swift_getKeyPath();
  v88[8] = 0;
  v89 = (v52 + v83[13]);
  *v89 = sub_26D38339C;
  v89[1] = v80;
  v90 = v52 + v83[14];
  v130 = 0;
  v131 = 1;
  sub_26D3A0D48();
  v91 = BYTE8(v132);
  v92 = v133;
  *v90 = v132;
  v90[8] = v91;
  *(v90 + 2) = v92;
  v93 = v83[15];
  v130 = 0;
  sub_26D3A0D48();
  *(v52 + v93) = v132;
  v94 = v52 + v83[16];
  *v94 = swift_getKeyPath();
  v94[8] = 0;
  if (qword_2804FAC28 != -1)
  {
    swift_once();
  }

  v132 = xmmword_2804FFD80;

  v95 = sub_26D3A09C8();
  v97 = v96;
  v99 = v98;
  v100 = v122;
  sub_26D3A0AE8();
  sub_26D37EDCC(v95, v97, v99 & 1);

  sub_26D3481A4(v52, &qword_2804FBF78);
  v101 = v129;
  v102 = v124;
  sub_26D34856C(v129, v124, &qword_2804FBF80);
  v103 = v125;
  sub_26D34856C(v51, v125, &qword_2804FBF70);
  v104 = v51;
  v105 = v123;
  sub_26D34856C(v100, v123, &qword_2804FBF80);
  v106 = v126;
  sub_26D34856C(v102, v126, &qword_2804FBF80);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF98);
  sub_26D34856C(v103, v106 + *(v107 + 48), &qword_2804FBF70);
  sub_26D34856C(v105, v106 + *(v107 + 64), &qword_2804FBF80);
  sub_26D3481A4(v100, &qword_2804FBF80);
  sub_26D3481A4(v104, &qword_2804FBF70);
  sub_26D3481A4(v101, &qword_2804FBF80);
  sub_26D3481A4(v105, &qword_2804FBF80);
  sub_26D3481A4(v103, &qword_2804FBF70);
  return sub_26D3481A4(v102, &qword_2804FBF80);
}

uint64_t sub_26D369EF0(uint64_t a1, unsigned int *a2)
{
  v4 = sub_26D3A12F8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
    (*(v5 + 104))(v8, *a2, v4);

    v10(v8, 0);

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A074(uint64_t a1)
{
  if (qword_2804FAB80 != -1)
  {
    swift_once();
  }

  v7 = qword_2804FFC28;
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;

  sub_26D348204(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98);
  sub_26D3484AC(&qword_2804FBF68, &qword_2804FBF60);
  sub_26D346004();
  sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98);
  return sub_26D3A0E58();
}

uint64_t sub_26D36A230@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (*(a1 + 8))
  {

    v8 = sub_26D34CD84();

    [v8 pointSize];
    v10 = v9;

    v11 = sub_26D359694(a2 & 1, v10);
    v19 = v12;
    KeyPath = swift_getKeyPath();
    sub_26D3A08E8();
    v18 = sub_26D3A08D8();

    v14 = swift_getKeyPath();
    v15 = swift_getKeyPath();
    v16 = swift_getKeyPath();
    if (a3)
    {
      sub_26D33D278(*(a1 + 40), *(a1 + 48));
      sub_26D33D278(*(a1 + 56), *(a1 + 64));
    }

    sub_26D3A0EA8();
    result = sub_26D3A0268();
    *&v20[55] = v24;
    *&v20[71] = v25;
    *&v20[87] = v26;
    *&v20[103] = v27;
    *&v20[7] = v21;
    *&v20[23] = v22;
    *&v20[39] = v23;
    *(a4 + 145) = *&v20[64];
    *(a4 + 161) = *&v20[80];
    *(a4 + 177) = *&v20[96];
    *(a4 + 81) = *v20;
    *(a4 + 97) = *&v20[16];
    *(a4 + 113) = *&v20[32];
    *a4 = v11;
    *(a4 + 8) = v19;
    *(a4 + 16) = 0;
    *(a4 + 24) = KeyPath;
    *(a4 + 32) = 0;
    *(a4 + 40) = v14;
    *(a4 + 48) = v18;
    *(a4 + 56) = v15;
    *(a4 + 64) = 0x3FE999999999999ALL;
    *(a4 + 72) = v16;
    *(a4 + 80) = 1;
    *(a4 + 192) = *(&v27 + 1);
    *(a4 + 129) = *&v20[48];
    *(a4 + 200) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A54C(double *a1, uint64_t a2)
{
  v3 = *a1;
  sub_26D3A10C8();
  sub_26D348204(a2, v15);
  v4 = sub_26D3A10B8();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D85700];
  *(v5 + 16) = v4;
  *(v5 + 24) = v6;
  v7 = *(a2 + 48);
  *(v5 + 64) = *(a2 + 32);
  *(v5 + 80) = v7;
  *(v5 + 96) = *(a2 + 64);
  *(v5 + 112) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v5 + 32) = *a2;
  *(v5 + 48) = v8;
  *(v5 + 120) = v3;
  sub_26D348204(a2, v15);
  v9 = sub_26D3A10B8();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v6;
  v11 = *(a2 + 48);
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 64);
  *(v10 + 112) = *(a2 + 80);
  v12 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v12;
  *(v10 + 120) = v3;
  sub_26D3A0E28();
  v15[0] = sub_26D359694(1, v3);
  v15[1] = v13;
  sub_26D37E6A4();
  return sub_26D3A0DD8();
}

uint64_t sub_26D36A6CC@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 8))
  {

    v5 = sub_26D34CA00();

    if (v5 >> 62)
    {
LABEL_16:
      v6 = sub_26D3A1488();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    do
    {
      v8 = v7;
      if (v6 == v7)
      {
        break;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = sub_26D33E7C4(v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      [v9 pointSize];
      v12 = v11;

      v7 = v8 + 1;
    }

    while (v12 != a3);

    *a2 = v6 != v8;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36A844(_BYTE *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_26D3A12F8();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8, v10);
  v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v14 = *(a5 + 8);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_didChangeValue);
      *v13 = a2;
      (*(v9 + 104))(v13, *MEMORY[0x277D74F50], v8);

      v15(v13, 0);

      return (*(v9 + 8))(v13, v8);
    }

    else
    {
      type metadata accessor for TextFormattingState();
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26D36AA34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFA0);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D36AB78(v2, a1 + v4[13]);
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = sub_26D3A0D48();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_26D36AB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFA8);
  MEMORY[0x28223BE20](v110, v3);
  v105 = &v93 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v93 - v11;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB8);
  MEMORY[0x28223BE20](v115, v13);
  v114 = &v93 - v14;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80);
  v102 = *(v117 - 8);
  v16 = MEMORY[0x28223BE20](v117, v15);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v101 = &v93 - v20;
  v21 = sub_26D3A0208();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v113 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v93 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFC0);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v103 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v104 = &v93 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = &v93 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v118 = &v93 - v41;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFC8);
  MEMORY[0x28223BE20](v107, v42);
  v109 = &v93 - v43;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFD0);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v44);
  v46 = &v93 - v45;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFD8);
  MEMORY[0x28223BE20](v106, v47);
  v97 = &v93 - v48;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFE0);
  v100 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v49);
  v99 = &v93 - v50;
  v51 = a1;
  v52 = sub_26D33CED8(*(a1 + 24), *(a1 + 32) | (*(a1 + 33) << 8));
  if (v53)
  {
    goto LABEL_5;
  }

  v54 = 2;
  if (*a1)
  {
    v54 = 3;
  }

  if (v54 < v52)
  {
LABEL_5:
    v99 = v39;
    v100 = v9;
    v112 = v12;
    v96 = *(type metadata accessor for TFTextAlignmentControl() + 28);
    sub_26D33D444(v28);
    v55 = v22;
    v56 = *(v22 + 104);
    v57 = v113;
    LODWORD(v95) = *MEMORY[0x277CDFA88];
    v94 = v56;
    v56(v113);
    v58 = sub_26D3A01F8();
    v59 = *(v55 + 8);
    v59(v57, v21);
    v97 = (v55 + 8);
    v59(v28, v21);
    v116 = v18;
    v98 = v21;
    v60 = v101;
    if (v58)
    {
      sub_26D36BE0C(0, v101);
    }

    else
    {
      sub_26D36C81C(0, v101);
    }

    sub_26D34856C(v60, v114, &qword_2804FBC80);
    swift_storeEnumTagMultiPayload();
    sub_26D38126C();
    sub_26D3A0718();
    sub_26D3481A4(v60, &qword_2804FBC80);
    sub_26D36C308(0, v116);
    sub_26D33D444(v28);
    v61 = v113;
    v62 = v98;
    v94(v113, v95, v98);
    v63 = sub_26D3A01F8();
    v59(v61, v62);
    v59(v28, v62);
    if (v63)
    {
      sub_26D36C81C(0, v60);
    }

    else
    {
      sub_26D36BE0C(0, v60);
    }

    v64 = v112;
    v65 = v99;
    sub_26D34856C(v60, v114, &qword_2804FBC80);
    swift_storeEnumTagMultiPayload();
    sub_26D3A0718();
    sub_26D3481A4(v60, &qword_2804FBC80);
    if (*v51 == 1)
    {
      sub_26D36CD18(0, v60);
      sub_26D347238(v60, v64, &qword_2804FBC80);
      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    (*(v102 + 56))(v64, v66, 1, v117);
    v67 = v104;
    sub_26D34856C(v118, v104, &qword_2804FBFC0);
    sub_26D34856C(v116, v60, &qword_2804FBC80);
    v68 = v103;
    sub_26D34856C(v65, v103, &qword_2804FBFC0);
    v69 = v64;
    v70 = v100;
    sub_26D34856C(v69, v100, &qword_2804FBFB0);
    v71 = v105;
    sub_26D34856C(v67, v105, &qword_2804FBFC0);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFF0);
    sub_26D34856C(v60, v71 + v72[12], &qword_2804FBC80);
    sub_26D34856C(v68, v71 + v72[16], &qword_2804FBFC0);
    sub_26D34856C(v70, v71 + v72[20], &qword_2804FBFB0);
    sub_26D3481A4(v70, &qword_2804FBFB0);
    sub_26D3481A4(v68, &qword_2804FBFC0);
    sub_26D3481A4(v60, &qword_2804FBC80);
    sub_26D3481A4(v67, &qword_2804FBFC0);
    sub_26D34856C(v71, v109, &qword_2804FBFA8);
    swift_storeEnumTagMultiPayload();
    v73 = sub_26D381328();
    v74 = sub_26D37E178();
    v120 = v106;
    v121 = &type metadata for TFMenuStyle;
    v122 = v73;
    v123 = v74;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC008, &qword_2804FBFA8);
    sub_26D3A0718();
    sub_26D3481A4(v71, &qword_2804FBFA8);
    sub_26D3481A4(v112, &qword_2804FBFB0);
    sub_26D3481A4(v65, &qword_2804FBFC0);
    sub_26D3481A4(v116, &qword_2804FBC80);
    return sub_26D3481A4(v118, &qword_2804FBFC0);
  }

  else
  {
    v76 = MEMORY[0x28223BE20](v52, v53);
    *(&v93 - 2) = a1;
    MEMORY[0x28223BE20](v76, v77);
    *(&v93 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC010);
    sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
    sub_26D3484AC(&qword_2804FC018, &qword_2804FC010);
    sub_26D3A0958();
    if (qword_2804FACE8 != -1)
    {
      swift_once();
    }

    v120 = qword_2804FFF00;
    v121 = *algn_2804FFF08;
    sub_26D37E6A4();

    v78 = sub_26D3A09C8();
    v80 = v79;
    v82 = v81;
    sub_26D3484AC(&qword_2804FC000, &qword_2804FBFD0);
    v83 = v97;
    v84 = v96;
    sub_26D3A0AE8();
    sub_26D37EDCC(v78, v80, v82 & 1);

    (*(v95 + 8))(v46, v84);
    v119 = 0;
    sub_26D3A0D48();
    v85 = v120;
    v86 = v121;
    LOBYTE(v120) = 0;
    LOBYTE(v121) = v85;
    v122 = v86;
    v87 = sub_26D381328();
    v88 = sub_26D37E178();
    v89 = v99;
    v90 = v106;
    sub_26D3A0C08();

    sub_26D3481A4(v83, &qword_2804FBFD8);
    v91 = v100;
    v92 = v108;
    v100[2](v109, v89, v108);
    swift_storeEnumTagMultiPayload();
    v120 = v90;
    v121 = &type metadata for TFMenuStyle;
    v122 = v87;
    v123 = v88;
    swift_getOpaqueTypeConformance2();
    sub_26D3484AC(&qword_2804FC008, &qword_2804FBFA8);
    sub_26D3A0718();
    return (*(v91 + 8))(v89, v92);
  }
}

uint64_t sub_26D36BA08@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBFB0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v51 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBC80);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v48 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v46 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v46 - v24;
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v46 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v31 = 1;
  v33 = &v46 - v32;
  sub_26D36BE0C(1, &v46 - v32);
  v34 = v29;
  sub_26D36C308(1, v29);
  v35 = v25;
  sub_26D36C81C(1, v25);
  if (*a1 == 1)
  {
    sub_26D36CD18(1, v21);
    sub_26D347238(v21, v51, &qword_2804FBC80);
    v31 = 0;
  }

  v36 = v21;
  v37 = v51;
  (*(v11 + 56))(v51, v31, 1, v10);
  v46 = v36;
  v47 = v33;
  v38 = v36;
  sub_26D34856C(v33, v36, &qword_2804FBC80);
  v39 = v48;
  sub_26D34856C(v34, v48, &qword_2804FBC80);
  v40 = v35;
  v41 = v49;
  sub_26D34856C(v35, v49, &qword_2804FBC80);
  sub_26D34856C(v37, v7, &qword_2804FBFB0);
  v42 = v50;
  sub_26D34856C(v38, v50, &qword_2804FBC80);
  v43 = v7;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC020);
  sub_26D34856C(v39, v42 + v44[12], &qword_2804FBC80);
  sub_26D34856C(v41, v42 + v44[16], &qword_2804FBC80);
  sub_26D34856C(v43, v42 + v44[20], &qword_2804FBFB0);
  sub_26D3481A4(v37, &qword_2804FBFB0);
  sub_26D3481A4(v40, &qword_2804FBC80);
  sub_26D3481A4(v34, &qword_2804FBC80);
  sub_26D3481A4(v47, &qword_2804FBC80);
  sub_26D3481A4(v43, &qword_2804FBFB0);
  sub_26D3481A4(v41, &qword_2804FBC80);
  sub_26D3481A4(v39, &qword_2804FBC80);
  return sub_26D3481A4(v46, &qword_2804FBC80);
}

uint64_t sub_26D36BE0C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v38, v12);
  v40 = &v37 - v13;
  v14 = 0;
  v15 = 0;
  if (a1)
  {
    if (qword_2804FAC08 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFD40;
    v15 = *algn_2804FFD48;
  }

  v39 = v7;
  KeyPath = swift_getKeyPath();
  v17 = sub_26D36D914(KeyPath);
  v19 = v18;
  v21 = v20;

  sub_26D3A0638();
  *v11 = xmmword_26D3A3EA0;
  v22 = (v11 + v8[6]);
  *v22 = v14;
  v22[1] = v15;
  *(v11 + v8[7]) = a1 & 1;
  v23 = v11 + v8[8];
  *v23 = v17;
  *(v23 + 1) = v19;
  v23[16] = v21 & 1;
  v24 = v11 + v8[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v25 = sub_26D34862C(*MEMORY[0x277D771B0], v42);

    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v27 = type metadata accessor for TFTextAlignmentControl();
      v26 = sub_26D33D0B8(*(v2 + *(v27 + 32)), *(v2 + *(v27 + 32) + 8)) ^ 1;
    }

    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v26 & 1;
    v30 = v40;
    sub_26D3814AC(v11, v40, type metadata accessor for TFToggle);
    v31 = (v30 + *(v38 + 36));
    *v31 = v28;
    v31[1] = sub_26D3834C0;
    v31[2] = v29;
    swift_getKeyPath();
    swift_getKeyPath();

    v32 = v39;
    sub_26D39FF68();

    v33 = sub_26D3A1298();
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {

      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = 0;
    }

    else
    {
      v35 = sub_26D3A11F8();
      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = sub_26D34862C(*MEMORY[0x277D771A8], v35);
    }

    if (qword_2804FAC08 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v34 & 1, 0, qword_2804FFD40, *algn_2804FFD48, v41);
    return sub_26D3481A4(v30, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36C308@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37[-v6];
  v8 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v39, v12);
  v41 = &v37[-v13];
  v14 = 0;
  v15 = 0;
  v38 = a1;
  if (a1)
  {
    if (qword_2804FAC10 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFD50;
    v15 = *algn_2804FFD58;
  }

  v40 = v7;
  KeyPath = swift_getKeyPath();
  v17 = sub_26D36D914(KeyPath);
  v19 = v18;
  v21 = v20;

  sub_26D3A0638();
  *v11 = 0xD000000000000010;
  v11[1] = 0x800000026D3A8190;
  v22 = (v11 + v8[6]);
  *v22 = v14;
  v22[1] = v15;
  *(v11 + v8[7]) = v38 & 1;
  v23 = v11 + v8[8];
  *v23 = v17;
  *(v23 + 1) = v19;
  v23[16] = v21 & 1;
  v24 = v11 + v8[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v25 = sub_26D34862C(*MEMORY[0x277D77188], v43);

    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v27 = type metadata accessor for TFTextAlignmentControl();
      v26 = sub_26D33D0B8(*(v2 + *(v27 + 32)), *(v2 + *(v27 + 32) + 8)) ^ 1;
    }

    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v26 & 1;
    v30 = v41;
    sub_26D3814AC(v11, v41, type metadata accessor for TFToggle);
    v31 = &v30[*(v39 + 36)];
    *v31 = v28;
    v31[1] = sub_26D3834C0;
    v31[2] = v29;
    swift_getKeyPath();
    swift_getKeyPath();

    v32 = v40;
    sub_26D39FF68();

    v33 = sub_26D3A1298();
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {

      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = 0;
    }

    else
    {
      v35 = sub_26D3A11F8();
      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = sub_26D34862C(*MEMORY[0x277D77180], v35);
    }

    if (qword_2804FAC10 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v34 & 1, 0, qword_2804FFD50, *algn_2804FFD58, v42);
    return sub_26D3481A4(v30, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36C81C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37 - v6;
  v8 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v38, v12);
  v40 = &v37 - v13;
  v14 = 0;
  v15 = 0;
  if (a1)
  {
    if (qword_2804FAC18 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFD60;
    v15 = *algn_2804FFD68;
  }

  v39 = v7;
  KeyPath = swift_getKeyPath();
  v17 = sub_26D36D914(KeyPath);
  v19 = v18;
  v21 = v20;

  sub_26D3A0638();
  *v11 = xmmword_26D3A3EB0;
  v22 = (v11 + v8[6]);
  *v22 = v14;
  v22[1] = v15;
  *(v11 + v8[7]) = a1 & 1;
  v23 = v11 + v8[8];
  *v23 = v17;
  *(v23 + 1) = v19;
  v23[16] = v21 & 1;
  v24 = v11 + v8[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v25 = sub_26D34862C(*MEMORY[0x277D771C8], v42);

    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v27 = type metadata accessor for TFTextAlignmentControl();
      v26 = sub_26D33D0B8(*(v2 + *(v27 + 32)), *(v2 + *(v27 + 32) + 8)) ^ 1;
    }

    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v26 & 1;
    v30 = v40;
    sub_26D3814AC(v11, v40, type metadata accessor for TFToggle);
    v31 = (v30 + *(v38 + 36));
    *v31 = v28;
    v31[1] = sub_26D3834C0;
    v31[2] = v29;
    swift_getKeyPath();
    swift_getKeyPath();

    v32 = v39;
    sub_26D39FF68();

    v33 = sub_26D3A1298();
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {

      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = 0;
    }

    else
    {
      v35 = sub_26D3A11F8();
      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = sub_26D34862C(*MEMORY[0x277D771C0], v35);
    }

    if (qword_2804FAC18 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v34 & 1, 0, qword_2804FFD60, *algn_2804FFD68, v41);
    return sub_26D3481A4(v30, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36CD18@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v37[-v6];
  v8 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB9C0);
  MEMORY[0x28223BE20](v39, v12);
  v41 = &v37[-v13];
  v14 = 0;
  v15 = 0;
  v38 = a1;
  if (a1)
  {
    if (qword_2804FAC20 != -1)
    {
      swift_once();
    }

    v14 = qword_2804FFD70;
    v15 = *algn_2804FFD78;
  }

  v40 = v7;
  KeyPath = swift_getKeyPath();
  v17 = sub_26D36D914(KeyPath);
  v19 = v18;
  v21 = v20;

  sub_26D3A0638();
  *v11 = 0xD000000000000014;
  v11[1] = 0x800000026D3A8170;
  v22 = (v11 + v8[6]);
  *v22 = v14;
  v22[1] = v15;
  *(v11 + v8[7]) = v38 & 1;
  v23 = v11 + v8[8];
  *v23 = v17;
  *(v23 + 1) = v19;
  v23[16] = v21 & 1;
  v24 = v11 + v8[9];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  if (*(v2 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v25 = sub_26D34862C(*MEMORY[0x277D771A0], v43);

    if (v25)
    {
      v26 = 1;
    }

    else
    {
      v27 = type metadata accessor for TFTextAlignmentControl();
      v26 = sub_26D33D0B8(*(v2 + *(v27 + 32)), *(v2 + *(v27 + 32) + 8)) ^ 1;
    }

    v28 = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v26 & 1;
    v30 = v41;
    sub_26D3814AC(v11, v41, type metadata accessor for TFToggle);
    v31 = &v30[*(v39 + 36)];
    *v31 = v28;
    v31[1] = sub_26D3834C0;
    v31[2] = v29;
    swift_getKeyPath();
    swift_getKeyPath();

    v32 = v40;
    sub_26D39FF68();

    v33 = sub_26D3A1298();
    if ((*(*(v33 - 8) + 48))(v32, 1, v33))
    {

      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = 0;
    }

    else
    {
      v35 = sub_26D3A11F8();
      sub_26D3481A4(v32, &qword_2804FB398);
      v34 = sub_26D34862C(*MEMORY[0x277D77198], v35);
    }

    if (qword_2804FAC20 != -1)
    {
      swift_once();
    }

    sub_26D35D710(v34 & 1, 0, qword_2804FFD70, *algn_2804FFD78, v42);
    return sub_26D3481A4(v30, &qword_2804FB9C0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36D22C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D36D388();
  v4 = v3;
  v5 = sub_26D3A0928();
  v6 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + v6[9]) = 1;
  *(a1 + v6[10]) = 1;
  v7 = a1 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v6[12];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  v10 = a1 + v9[9];
  sub_26D3A0D48();
  *v10 = v15;
  *(v10 + 8) = v16;
  v11 = a1 + v9[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a1 + v9[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a1 + v9[12];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_26D36D388()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v28 - v8;
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v28 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v28 - v15;
  v29 = v0;
  if (*(v0 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v17 = sub_26D3A1298();
    v18 = *(*(v17 - 8) + 48);
    if (v18(v16, 1, v17))
    {

      sub_26D3481A4(v16, &qword_2804FB398);
    }

    else
    {
      v19 = sub_26D3A11F8();
      sub_26D3481A4(v16, &qword_2804FB398);
      v20 = sub_26D34862C(*MEMORY[0x277D771A8], v19);

      if (v20)
      {
        return 0x696C612E74786574;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v18(v13, 1, v17))
    {

      sub_26D3481A4(v13, &qword_2804FB398);
    }

    else
    {
      v21 = sub_26D3A11F8();
      sub_26D3481A4(v13, &qword_2804FB398);
      v22 = sub_26D34862C(*MEMORY[0x277D77180], v21);

      if (v22)
      {
        return 0xD000000000000010;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    if (v18(v9, 1, v17))
    {

      sub_26D3481A4(v9, &qword_2804FB398);
      goto LABEL_12;
    }

    v24 = sub_26D3A11F8();
    sub_26D3481A4(v9, &qword_2804FB398);
    v25 = sub_26D34862C(*MEMORY[0x277D771C0], v24);

    if ((v25 & 1) == 0)
    {
LABEL_12:
      swift_getKeyPath();
      swift_getKeyPath();

      sub_26D39FF68();

      if (v18(v5, 1, v17))
      {

        sub_26D3481A4(v5, &qword_2804FB398);
      }

      else
      {
        v26 = sub_26D3A11F8();
        sub_26D3481A4(v5, &qword_2804FB398);
        v27 = sub_26D34862C(*MEMORY[0x277D77198], v26);

        if ((v27 & 1) != 0 && *v29 == 1)
        {
          return 0xD000000000000014;
        }
      }
    }

    return 0x696C612E74786574;
  }

  type metadata accessor for TextFormattingState();
  sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
  result = sub_26D3A02B8();
  __break(1u);
  return result;
}

uint64_t sub_26D36D914(uint64_t a1)
{
  v3 = type metadata accessor for TFTextAlignmentControl();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D381440(v1, v7, type metadata accessor for TFTextAlignmentControl);
  sub_26D3A10C8();

  v8 = sub_26D3A10B8();
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = (v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v8;
  *(v11 + 24) = v12;
  v13 = v12;
  sub_26D3814AC(v7, v11 + v9, type metadata accessor for TFTextAlignmentControl);
  *(v11 + v10) = a1;
  sub_26D381440(v18[0], v7, type metadata accessor for TFTextAlignmentControl);
  v14 = a1;

  v15 = sub_26D3A10B8();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  sub_26D3814AC(v7, v16 + v9, type metadata accessor for TFTextAlignmentControl);
  *(v16 + v10) = v14;
  sub_26D3A0E28();
  return v18[1];
}

uint64_t sub_26D36DB20@<X0>(void *a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB398);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v8 = sub_26D3A1298();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    result = sub_26D3481A4(v7, &qword_2804FB398);
    v10 = 0;
  }

  else
  {
    v11 = sub_26D3A11F8();
    sub_26D3481A4(v7, &qword_2804FB398);
    v10 = sub_26D34862C(*a1, v11);
  }

  *a2 = v10 & 1;
  return result;
}

uint64_t sub_26D36DCA8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = sub_26D3A12F8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    v12 = *a5;
  }

  else
  {
    v12 = *MEMORY[0x277D771B8];
  }

  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D74EE0], v7);
  sub_26D350AB4(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_26D36DDCC@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 8);

    v3 = swift_readAtKeyPath();
    *a2 = *v4;
    v3(v6, 0);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36DEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {

    swift_setAtReferenceWritableKeyPath();
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36DF68@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v62 = a6;
  v59 = sub_26D3A0608();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v11 = MEMORY[0x28223BE20](v57, v10);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v56 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v58 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v49 - v20;
  v21 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v21, v22);
  v63 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0;
  v25 = 0;
  v54 = a1;
  if (a1)
  {
    if (qword_2804FACA0 != -1)
    {
      swift_once();
    }

    v24 = qword_2804FFE70;
    v25 = *algn_2804FFE78;
  }

  sub_26D3A10C8();
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v51;

  v30 = v53;
  sub_26D37DF24(v53, a5, BYTE1(a5) & 1);
  v31 = sub_26D3A10B8();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v28;
  v33 = v52;
  *(v32 + 32) = v29;
  *(v32 + 40) = v33;
  *(v32 + 48) = v30;
  *(v32 + 56) = a5;
  *(v32 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v34 = v64;
  v35 = v65;
  LOBYTE(v28) = v66;
  v36 = v63;
  sub_26D3A0638();
  *v36 = xmmword_26D3A3EC0;
  v37 = (v36 + v21[6]);
  *v37 = v24;
  v37[1] = v25;
  *(v36 + v21[7]) = v54 & 1;
  v38 = v36 + v21[8];
  *v38 = v34;
  *(v38 + 1) = v35;
  v38[16] = v28;
  v39 = v36 + v21[9];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_2804FACA0 != -1)
  {
    swift_once();
  }

  v64 = qword_2804FFE70;
  v65 = *algn_2804FFE78;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
  sub_26D37E6A4();
  v40 = v55;
  sub_26D3A0AF8();
  v41 = v50;
  sub_26D3A05F8();
  v42 = v56;
  sub_26D3A0238();
  v43 = *(v61 + 8);
  v44 = v59;
  v43(v41, v59);
  sub_26D3481A4(v40, &qword_2804FB820);
  sub_26D3A05E8();
  v45 = v58;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v42, &qword_2804FB820);
  v64 = MEMORY[0x277D84F90];
  v61 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  sub_26D3A1388();
  v46 = v60;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v45, &qword_2804FB820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v64 = v47;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v41, v44);
  sub_26D3481A4(v46, &qword_2804FB820);
  return sub_26D37EEEC(v63, type metadata accessor for TFToggle);
}

uint64_t sub_26D36E5F0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v62 = a6;
  v59 = sub_26D3A0608();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v8);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v11 = MEMORY[0x28223BE20](v57, v10);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v56 = &v49 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v58 = &v49 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v60 = &v49 - v20;
  v21 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v21, v22);
  v63 = (&v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = 0;
  v25 = 0;
  v54 = a1;
  if (a1)
  {
    if (qword_2804FAC98 != -1)
    {
      swift_once();
    }

    v24 = qword_2804FFE60;
    v25 = *algn_2804FFE68;
  }

  sub_26D3A10C8();
  v26 = sub_26D3A10B8();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v26;
  *(v27 + 24) = v28;
  v29 = v51;

  v30 = v53;
  sub_26D37DF24(v53, a5, BYTE1(a5) & 1);
  v31 = sub_26D3A10B8();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v28;
  v33 = v52;
  *(v32 + 32) = v29;
  *(v32 + 40) = v33;
  *(v32 + 48) = v30;
  *(v32 + 56) = a5;
  *(v32 + 57) = BYTE1(a5) & 1;
  sub_26D3A0E28();
  v34 = v64;
  v35 = v65;
  LOBYTE(v28) = v66;
  v36 = v63;
  sub_26D3A0638();
  *v36 = xmmword_26D3A3ED0;
  v37 = (v36 + v21[6]);
  *v37 = v24;
  v37[1] = v25;
  *(v36 + v21[7]) = v54 & 1;
  v38 = v36 + v21[8];
  *v38 = v34;
  *(v38 + 1) = v35;
  v38[16] = v28;
  v39 = v36 + v21[9];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  if (qword_2804FAC98 != -1)
  {
    swift_once();
  }

  v64 = qword_2804FFE60;
  v65 = *algn_2804FFE68;
  sub_26D37E044(&qword_2804FB868, type metadata accessor for TFToggle);
  sub_26D37E6A4();
  v40 = v55;
  sub_26D3A0AF8();
  v41 = v50;
  sub_26D3A05F8();
  v42 = v56;
  sub_26D3A0238();
  v43 = *(v61 + 8);
  v44 = v59;
  v43(v41, v59);
  sub_26D3481A4(v40, &qword_2804FB820);
  sub_26D3A05E8();
  v45 = v58;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v42, &qword_2804FB820);
  v64 = MEMORY[0x277D84F90];
  v61 = sub_26D37E044(&unk_2804FC890, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB918);
  sub_26D3484AC(&qword_2804FC8A0, &qword_2804FB918);
  sub_26D3A1388();
  v46 = v60;
  sub_26D3A0228();
  v43(v41, v44);
  sub_26D3481A4(v45, &qword_2804FB820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB920);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_26D3A35F0;
  sub_26D3A05D8();
  v64 = v47;
  sub_26D3A1388();
  sub_26D3A0238();
  v43(v41, v44);
  sub_26D3481A4(v46, &qword_2804FB820);
  return sub_26D37EEEC(v63, type metadata accessor for TFToggle);
}

uint64_t sub_26D36EC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {

    sub_26D3534B0(a8 & 1);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D36ED80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC068);
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v10);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC070);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = v34 - v16;
  v18 = *(v15 + 48);
  v19 = sub_26D3A0078();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  *v17 = 0;
  v17[8] = 1;
  *(v17 + 9) = 257;
  v17[11] = 0;
  v34[1] = v13[13];
  v37 = a1;
  v38 = a2;
  v39 = a3;
  v40 = a4 & 0x1FF;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF30);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
  sub_26D37F664(&qword_2804FBF48, &qword_2804FBF30);
  sub_26D3A0958();
  v44 = 0;
  sub_26D3A0D48();
  v20 = v41;
  v21 = v42;
  LOBYTE(v41) = 0;
  LOBYTE(v42) = v20;
  v43 = v21;
  sub_26D3484AC(&qword_2804FC078, &qword_2804FC068);
  sub_26D37E178();
  v22 = v35;
  sub_26D3A0C08();

  (*(v9 + 8))(v12, v22);
  v23 = &v17[v13[14]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = &v17[v13[15]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = &v17[v13[16]];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = &v17[v13[17]];
  v44 = 0;
  sub_26D3A0D48();
  v27 = v42;
  *v26 = v41;
  *(v26 + 1) = v27;
  if (qword_2804FACF0 != -1)
  {
    swift_once();
  }

  v41 = qword_2804FFF10;
  v42 = *algn_2804FFF18;
  sub_26D37E6A4();

  v28 = sub_26D3A09C8();
  v30 = v29;
  v32 = v31;
  sub_26D3484AC(&qword_2804FC080, &qword_2804FC070);
  sub_26D3A0AE8();
  sub_26D37EDCC(v28, v30, v32 & 1);

  return sub_26D3481A4(v17, &qword_2804FC070);
}

uint64_t sub_26D36F210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2804FAB88 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 41) = BYTE1(a4) & 1;

  sub_26D37DF24(a3, a4, BYTE1(a4) & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBF60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB98);
  sub_26D3484AC(&qword_2804FBF68, &qword_2804FBF60);
  sub_26D346004();
  sub_26D3484AC(&qword_2804FBB90, &qword_2804FBB98);
  return sub_26D3A0E58();
}

uint64_t sub_26D36F3D8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26D3A0928();
  v3 = type metadata accessor for TFSymbol(0);
  sub_26D3A0638();
  *a1 = 0xD000000000000021;
  *(a1 + 8) = 0x800000026D3A81B0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 1;
  v4 = a1 + v3[11];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v3[12];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  v7 = a1 + v6[9];
  sub_26D3A0D48();
  *v7 = v12;
  *(v7 + 8) = v13;
  v8 = a1 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v6[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v6[12];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_26D36F534(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a5 >> 8) & 1;
  v10 = *a1;
  sub_26D3A10C8();

  sub_26D37DF24(a4, a5, v9);
  v11 = sub_26D3A10B8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  *(v12 + 57) = v9;
  *(v12 + 64) = v10;

  sub_26D37DF24(a4, a5, v9);
  v14 = sub_26D3A10B8();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 57) = v9;
  *(v15 + 64) = v10;
  sub_26D3A0E28();
  sub_26D359694(1, v10);
  sub_26D37E6A4();
  return sub_26D3A0DD8();
}

uint64_t sub_26D36F6CC@<X0>(uint64_t a1@<X2>, BOOL *a2@<X8>, double a3@<D0>)
{
  if (a1)
  {

    v5 = COERCE_DOUBLE(sub_26D351C28());
    v7 = v6;

    v9 = v5 == a3;
    if (v7)
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

_BYTE *sub_26D36F79C(_BYTE *result, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*result == 1)
  {
    if (a5)
    {

      sub_26D351EAC(*&a2, 0);
    }

    else
    {
      type metadata accessor for TextFormattingState();
      sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
      result = sub_26D3A02B8();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_26D36F878@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC088);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D36F9BC(v2, a1 + v4[13]);
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  result = sub_26D3A0D48();
  *v10 = v12;
  *(v10 + 8) = v13;
  return result;
}

uint64_t sub_26D36F9BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC090);
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC098);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v32 - v9;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0A0);
  v11 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v12);
  v14 = &v32 - v13;
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 33);
  v18 = sub_26D33CED8(v15, v16 | (v17 << 8));
  if ((v19 & 1) == 0 && (v18 == 1 || v18 == 2 && (*a1 & 1) == 0))
  {
    sub_26D36FEDC(v14);
    v28 = v33;
    (*(v11 + 16))(v10, v14, v33);
    swift_storeEnumTagMultiPayload();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8);
    v30 = sub_26D381A14();
    v31 = sub_26D37E178();
    v36 = v29;
    v37 = &type metadata for TFMenuStyle;
    v38 = v30;
    v39 = v31;
    swift_getOpaqueTypeConformance2();
    sub_26D381AFC(&qword_2804FC0D8, &qword_2804FC090, &unk_26D3A5BE8, sub_26D37E08C);
    sub_26D3A0718();
    return (*(v11 + 8))(v14, v28);
  }

  else
  {
    if (*a1)
    {
      v20 = &unk_287EB6170;
    }

    else
    {
      if (qword_2804FAB78 != -1)
      {
        swift_once();
      }
    }

    v40 = v20;
    v41 = *(a1 + 8);
    v21 = swift_allocObject();
    v22 = *(a1 + 16);
    *(v21 + 16) = *a1;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(a1 + 32);
    sub_26D34856C(&v41, &v36, &qword_2804FB8D8);
    sub_26D37DF24(v15, v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB750);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
    sub_26D3484AC(&qword_2804FC0A8, &qword_2804FB750);
    sub_26D37E08C();
    sub_26D3819C0();
    sub_26D3A0E68();
    v23 = v35;
    (*(v3 + 16))(v10, v6, v35);
    swift_storeEnumTagMultiPayload();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804FC0B8);
    v25 = sub_26D381A14();
    v26 = sub_26D37E178();
    v36 = v24;
    v37 = &type metadata for TFMenuStyle;
    v38 = v25;
    v39 = v26;
    swift_getOpaqueTypeConformance2();
    sub_26D381AFC(&qword_2804FC0D8, &qword_2804FC090, &unk_26D3A5BE8, sub_26D37E08C);
    sub_26D3A0718();
    return (*(v3 + 8))(v6, v23);
  }
}

uint64_t sub_26D36FEDC@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - v5;
  v18[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0B8);
  MEMORY[0x28223BE20](v18[0], v7);
  v9 = v18 - v8;
  v20 = v1;
  v19 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0E0);
  sub_26D3484AC(&qword_2804FBB80, &qword_2804FBB70);
  sub_26D3484AC(&qword_2804FC0E8, &qword_2804FC0E0);
  sub_26D3A0958();
  if (qword_2804FACF8 != -1)
  {
    swift_once();
  }

  v21 = qword_2804FFF20;
  v22 = *algn_2804FFF28;
  sub_26D37E6A4();

  v10 = sub_26D3A09C8();
  v12 = v11;
  v14 = v13;
  sub_26D3484AC(&qword_2804FC0C8, &qword_2804FC0D0);
  sub_26D3A0AE8();
  sub_26D37EDCC(v10, v12, v14 & 1);

  (*(v3 + 8))(v6, v2);
  v24 = 0;
  sub_26D3A0D48();
  v15 = v21;
  v16 = v22;
  LOBYTE(v21) = 0;
  LOBYTE(v22) = v15;
  v23 = v16;
  sub_26D381A14();
  sub_26D37E178();
  sub_26D3A0C08();

  return sub_26D3481A4(v9, &qword_2804FC0B8);
}

uint64_t sub_26D37024C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v43 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v43, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v44 = *a1;
  v50 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  sub_26D3A10C8();
  sub_26D34856C(&v50, &v47, &qword_2804FB8D8);
  sub_26D37DF24(v9, v10, v11);
  v12 = sub_26D3A10B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(a2 + 16);
  *(v13 + 32) = *a2;
  *(v13 + 48) = v15;
  *(v13 + 64) = *(a2 + 32);
  *(v13 + 66) = v8;
  sub_26D34856C(&v50, &v47, &qword_2804FB8D8);
  sub_26D37DF24(v9, v10, v11);
  v16 = sub_26D3A10B8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v18 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 66) = v8;
  sub_26D3A0E28();
  v20 = v47;
  v19 = v48;
  v21 = *&aListBullistDas[8 * v8];
  v22 = v49;
  v23 = v10 | (v11 << 8);
  v24 = *&aListBullistDas[8 * v8 + 32];
  v25 = sub_26D33CED8(v9, v23);
  if (v26)
  {
    v27 = v21;
    v28 = 0;
    v29 = 0;
    v30 = v44;
  }

  else
  {
    v30 = v44;
    if (v25 == 1 || v25 == 2 && (*a2 & 1) == 0)
    {
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v27 = v21;
          if (qword_2804FAC78 != -1)
          {
            swift_once();
          }

          v31 = &qword_2804FFE20;
        }

        else
        {
          v27 = v21;
          if (qword_2804FAC60 != -1)
          {
            swift_once();
          }

          v31 = &qword_2804FFDF0;
        }
      }

      else if (v44)
      {
        v27 = v21;
        if (qword_2804FAC70 != -1)
        {
          swift_once();
        }

        v31 = &qword_2804FFE10;
      }

      else
      {
        v27 = v21;
        if (qword_2804FAC68 != -1)
        {
          swift_once();
        }

        v31 = &qword_2804FFE00;
      }

      v28 = *v31;
      v29 = v31[1];
    }

    else
    {
      v27 = v21;
      v28 = 0;
      v29 = 0;
    }
  }

  v32 = v43;
  sub_26D3A0638();
  *v7 = v27;
  v7[1] = v24;
  v33 = (v7 + v32[6]);
  *v33 = v28;
  v33[1] = v29;
  *(v7 + v32[7]) = 0;
  v34 = v7 + v32[8];
  *v34 = v20;
  *(v34 + 1) = v19;
  v34[16] = v22;
  v35 = v7 + v32[9];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v47 = v20;
  v48 = v19;
  v49 = v22;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v46, v36);
  v37 = v46;
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      if (qword_2804FAC78 != -1)
      {
        swift_once();
      }

      v38 = &qword_2804FFE20;
    }

    else
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v38 = &qword_2804FFDF0;
    }
  }

  else if (v30)
  {
    if (qword_2804FAC70 != -1)
    {
      swift_once();
    }

    v38 = &qword_2804FFE10;
  }

  else
  {
    if (qword_2804FAC68 != -1)
    {
      swift_once();
    }

    v38 = &qword_2804FFE00;
  }

  v39 = *v38;
  v40 = v38[1];

  sub_26D35DCA8(v37, 0, v39, v40, v45);

  return sub_26D37EEEC(v7, type metadata accessor for TFToggle);
}

uint64_t sub_26D37079C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0F0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v113 = &v99[-v7];
  v106 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v106, v8);
  v107 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB820);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v112 = &v99[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v14);
  v109 = &v99[-v15];
  v16 = sub_26D3A0E48();
  v110 = *(v16 - 8);
  v111 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v108 = &v99[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v122 = &v99[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC0F8);
  v24 = MEMORY[0x28223BE20](v22 - 8, v23);
  v26 = &v99[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v99[-v28];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC090);
  v31 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = &v99[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = MEMORY[0x28223BE20](v33, v36);
  v123 = &v99[-v38];
  v100 = *a1;
  v119 = v5;
  v120 = v4;
  v117 = v37;
  v118 = v26;
  v114 = v35;
  if (v100)
  {
    v39 = &unk_287EB6170;
  }

  else
  {
    if (qword_2804FAB78 != -1)
    {
      swift_once();
    }
  }

  v115 = v29;
  v116 = v31;
  v121 = a2;
  v128 = v39;
  v40 = *(a1 + 1);
  v41 = *(a1 + 3);
  v42 = a1[32];
  v43 = a1[33];
  v44 = swift_allocObject();
  v45 = *(a1 + 1);
  *(v44 + 16) = *a1;
  *(v44 + 32) = v45;
  v105 = a1;
  *(v44 + 48) = *(a1 + 16);

  v104 = v41;
  v103 = v42;
  v102 = v43;
  sub_26D37DF24(v41, v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB750);
  sub_26D3484AC(&qword_2804FC0A8, &qword_2804FB750);
  sub_26D37E08C();
  sub_26D3819C0();
  sub_26D3A0E68();
  if (v40)
  {

    v46 = sub_26D3511C4();
    v101 = v40;

    v47 = (v46 + 32);
    v48 = *(v46 + 2);
    while (1)
    {
      if (!v48)
      {

        v50 = 1;
        v51 = v120;
        v52 = v121;
        v54 = v118;
        v53 = v119;
        v56 = v116;
        v55 = v117;
        v57 = v115;
        goto LABEL_25;
      }

      if (*v47 > 2u)
      {
        break;
      }

      v49 = sub_26D3A1518();

      ++v47;
      --v48;
      if (v49)
      {
        goto LABEL_14;
      }
    }

LABEL_14:

    sub_26D3A0E38();
    sub_26D3A10C8();
    v58 = sub_26D3A10B8();
    v59 = swift_allocObject();
    v60 = MEMORY[0x277D85700];
    *(v59 + 16) = v58;
    *(v59 + 24) = v60;

    v61 = v104;
    v62 = v103;
    v63 = v102;
    sub_26D37DF24(v104, v103, v102);
    v64 = sub_26D3A10B8();
    v65 = swift_allocObject();
    *(v65 + 16) = v64;
    *(v65 + 24) = v60;
    v66 = v105;
    v67 = v105[1];
    *(v65 + 32) = *v105;
    *(v65 + 48) = v67;
    *(v65 + 64) = *(v66 + 16);
    sub_26D3A0E28();
    v68 = v128;
    v69 = v129;
    v70 = v130;
    v71 = sub_26D33CED8(v61, v62 | (v63 << 8));
    v72 = v107;
    if ((v73 & 1) == 0 && (v71 == 1 || v71 == 2 && (v100 & 1) == 0))
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v74 = qword_2804FFDF0;
      v75 = *algn_2804FFDF8;
    }

    else
    {
      v74 = 0;
      v75 = 0;
    }

    v76 = v106;
    sub_26D3A0638();
    *v72 = xmmword_26D3A3EE0;
    v77 = (v72 + v76[6]);
    *v77 = v74;
    v77[1] = v75;
    *(v72 + v76[7]) = 1;
    v78 = v72 + v76[8];
    *v78 = v68;
    *(v78 + 1) = v69;
    v78[16] = v70;
    v79 = v72 + v76[9];
    *v79 = swift_getKeyPath();
    v79[8] = 0;
    v125 = v68;
    v126 = v69;
    v127 = v70;

    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
    MEMORY[0x26D6BD610](&v124, v80);
    v81 = v124;
    if (qword_2804FAC60 != -1)
    {
      v98 = v124;
      swift_once();
      v81 = v98;
    }

    v82 = v109;
    sub_26D35DCA8(v81, 0, qword_2804FFDF0, *algn_2804FFDF8, v109);

    sub_26D37EEEC(v72, type metadata accessor for TFToggle);
    v84 = v110;
    v83 = v111;
    v85 = *(v110 + 16);
    v86 = v108;
    v87 = v122;
    v85(v108, v122, v111);
    v88 = v112;
    sub_26D34856C(v82, v112, &qword_2804FB820);
    v89 = v113;
    v85(v113, v86, v83);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC100);
    sub_26D34856C(v88, v89 + *(v90 + 48), &qword_2804FB820);
    sub_26D3481A4(v82, &qword_2804FB820);
    v91 = *(v84 + 8);
    v91(v87, v83);
    sub_26D3481A4(v88, &qword_2804FB820);
    v91(v86, v83);
    v57 = v115;
    sub_26D347238(v89, v115, &qword_2804FC0F0);
    v50 = 0;
    v51 = v120;
    v52 = v121;
    v54 = v118;
    v53 = v119;
    v56 = v116;
    v55 = v117;
LABEL_25:
    v92 = v114;
    (*(v53 + 56))(v57, v50, 1, v51);
    v93 = *(v56 + 16);
    v94 = v123;
    v93(v92, v123, v55);
    sub_26D34856C(v57, v54, &qword_2804FC0F8);
    v93(v52, v92, v55);
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC108);
    sub_26D34856C(v54, &v52[*(v95 + 48)], &qword_2804FC0F8);
    sub_26D3481A4(v57, &qword_2804FC0F8);
    v96 = *(v56 + 8);
    v96(v94, v55);
    sub_26D3481A4(v54, &qword_2804FC0F8);
    return (v96)(v92, v55);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D37127C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v43 = type metadata accessor for TFToggle(0);
  MEMORY[0x28223BE20](v43, v5);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v44 = *a1;
  v50 = *(a2 + 8);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  sub_26D3A10C8();
  sub_26D34856C(&v50, &v47, &qword_2804FB8D8);
  sub_26D37DF24(v9, v10, v11);
  v12 = sub_26D3A10B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  v15 = *(a2 + 16);
  *(v13 + 32) = *a2;
  *(v13 + 48) = v15;
  *(v13 + 64) = *(a2 + 32);
  *(v13 + 66) = v8;
  sub_26D34856C(&v50, &v47, &qword_2804FB8D8);
  sub_26D37DF24(v9, v10, v11);
  v16 = sub_26D3A10B8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  v18 = *(a2 + 16);
  *(v17 + 32) = *a2;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a2 + 32);
  *(v17 + 66) = v8;
  sub_26D3A0E28();
  v20 = v47;
  v19 = v48;
  v21 = *&aListBullistDas[8 * v8];
  v22 = v49;
  v23 = v10 | (v11 << 8);
  v24 = *&aListBullistDas[8 * v8 + 32];
  v25 = sub_26D33CED8(v9, v23);
  if (v26)
  {
    v27 = v21;
    v28 = 0;
    v29 = 0;
    v30 = v44;
  }

  else
  {
    v30 = v44;
    if (v25 == 1 || v25 == 2 && (*a2 & 1) == 0)
    {
      if (v44 > 1)
      {
        if (v44 == 2)
        {
          v27 = v21;
          if (qword_2804FAC78 != -1)
          {
            swift_once();
          }

          v31 = &qword_2804FFE20;
        }

        else
        {
          v27 = v21;
          if (qword_2804FAC60 != -1)
          {
            swift_once();
          }

          v31 = &qword_2804FFDF0;
        }
      }

      else if (v44)
      {
        v27 = v21;
        if (qword_2804FAC70 != -1)
        {
          swift_once();
        }

        v31 = &qword_2804FFE10;
      }

      else
      {
        v27 = v21;
        if (qword_2804FAC68 != -1)
        {
          swift_once();
        }

        v31 = &qword_2804FFE00;
      }

      v28 = *v31;
      v29 = v31[1];
    }

    else
    {
      v27 = v21;
      v28 = 0;
      v29 = 0;
    }
  }

  v32 = v43;
  sub_26D3A0638();
  *v7 = v27;
  v7[1] = v24;
  v33 = (v7 + v32[6]);
  *v33 = v28;
  v33[1] = v29;
  *(v7 + v32[7]) = 1;
  v34 = v7 + v32[8];
  *v34 = v20;
  *(v34 + 1) = v19;
  v34[16] = v22;
  v35 = v7 + v32[9];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v47 = v20;
  v48 = v19;
  v49 = v22;

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FC880);
  MEMORY[0x26D6BD610](&v46, v36);
  v37 = v46;
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      if (qword_2804FAC78 != -1)
      {
        swift_once();
      }

      v38 = &qword_2804FFE20;
    }

    else
    {
      if (qword_2804FAC60 != -1)
      {
        swift_once();
      }

      v38 = &qword_2804FFDF0;
    }
  }

  else if (v30)
  {
    if (qword_2804FAC70 != -1)
    {
      swift_once();
    }

    v38 = &qword_2804FFE10;
  }

  else
  {
    if (qword_2804FAC68 != -1)
    {
      swift_once();
    }

    v38 = &qword_2804FFE00;
  }

  v39 = *v38;
  v40 = v38[1];

  sub_26D35DCA8(v37, 0, v39, v40, v45);

  return sub_26D37EEEC(v7, type metadata accessor for TFToggle);
}

uint64_t sub_26D3717D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 8))
  {

    sub_26D351498(MEMORY[0x277D84F90]);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {

    v3 = sub_26D3511C4();

    if (*(v3 + 2))
    {
      v4 = v3[32];

      v5 = *&aListBullistDas[8 * v4];
      v6 = *&aListBullistDas[8 * v4 + 32];
    }

    else
    {

      v6 = 0xEB0000000074656CLL;
      v5 = 0x6C75622E7473696CLL;
    }

    v7 = sub_26D3A0928();
    v8 = type metadata accessor for TFSymbol(0);
    sub_26D3A0638();
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = 0;
    *(a2 + 24) = v7;
    *(a2 + 32) = 0;
    *(a2 + v8[9]) = 1;
    *(a2 + v8[10]) = 1;
    v9 = a2 + v8[11];
    *v9 = swift_getKeyPath();
    *(v9 + 8) = 0;
    v10 = a2 + v8[12];
    *v10 = swift_getKeyPath();
    *(v10 + 8) = 0;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FBB70);
    v12 = a2 + v11[9];
    sub_26D3A0D48();
    *v12 = v17;
    *(v12 + 8) = v18;
    v13 = a2 + v11[10];
    *v13 = swift_getKeyPath();
    *(v13 + 8) = 0;
    v14 = a2 + v11[11];
    *v14 = swift_getKeyPath();
    *(v14 + 8) = 0;
    v15 = a2 + v11[12];
    result = swift_getKeyPath();
    *v15 = result;
    *(v15 + 8) = 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371A94@<X0>(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  if (*(a1 + 8))
  {

    v4 = sub_26D3511C4();

    v5 = v4 + 32;
    v6 = *(v4 + 2);
    v7 = a2;
    do
    {
      v9 = v6;
      if (v6-- == 0)
      {
        break;
      }

      v11 = *v5;
      if (v11 == 2)
      {
        v12 = 0x6C616D69636564;
      }

      else
      {
        v12 = 0x726568746FLL;
      }

      if (v11 == 2)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (*v5)
      {
        v14 = 0x6E6568707968;
      }

      else
      {
        v14 = 1668508004;
      }

      if (*v5)
      {
        v15 = 0xE600000000000000;
      }

      else
      {
        v15 = 0xE400000000000000;
      }

      if (*v5 <= 1u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v12;
      }

      if (*v5 <= 1u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v13;
      }

      if (v7 == 2)
      {
        v18 = 0x6C616D69636564;
      }

      else
      {
        v18 = 0x726568746FLL;
      }

      if (v7 == 2)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      if (v7)
      {
        v20 = 0x6E6568707968;
      }

      else
      {
        v20 = 1668508004;
      }

      if (v7)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (v7 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v7 <= 1)
      {
        v23 = v21;
      }

      else
      {
        v23 = v19;
      }

      if (v16 == v22 && v17 == v23)
      {

        break;
      }

      v8 = sub_26D3A1518();

      ++v5;
    }

    while ((v8 & 1) == 0);

    *a3 = v9 != 0;
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371C7C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(a4 + 8))
  {
    if (*a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB300);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_26D3A35F0;
      *(v6 + 32) = a5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    sub_26D351498(v6);
  }

  else
  {
    type metadata accessor for TextFormattingState();
    sub_26D37E044(&qword_2804FADC0, type metadata accessor for TextFormattingState);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D371DB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC110);
  v5 = v4[12];
  v6 = sub_26D3A0078();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 9) = 257;
  *(a1 + 11) = 0;
  sub_26D371FBC(v2, a1 + v4[13]);
  v7 = a1 + v4[14];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a1 + v4[15];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = a1 + v4[16];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = a1 + v4[17];
  sub_26D3A0D48();
  *v10 = v18;
  *(v10 + 8) = v19;
  KeyPath = swift_getKeyPath();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC118) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC120) + 28);
  v14 = *MEMORY[0x277CE0558];
  v15 = sub_26D3A07D8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v12 + v13, v14, v15);
  result = (*(v16 + 56))(v12 + v13, 0, 1, v15);
  *v12 = KeyPath;
  return result;
}

uint64_t sub_26D371FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC130);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = (&v79 - v5);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC138);
  MEMORY[0x28223BE20](v85, v7);
  v9 = (&v79 - v8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC140);
  MEMORY[0x28223BE20](v89, v10);
  v84 = &v79 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC148);
  MEMORY[0x28223BE20](v87, v12);
  v88 = &v79 - v13;
  v14 = sub_26D3A0758();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC150);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v79 - v21;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC158);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v23);
  v25 = &v79 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC160);
  MEMORY[0x28223BE20](v86, v26);
  v82 = &v79 - v27;
  v28 = *(a1 + 16);
  LODWORD(v27) = *(a1 + 24);
  v91 = *(a1 + 25);
  v92 = v27;
  v29 = sub_26D33CED8(v28, v27 | (v91 << 8));
  if ((v30 & 1) != 0 || v29 > 2)
  {
    v100[0] = *a1;
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    v98 = *(a1 + 48);
    v99 = *(a1 + 56);
    v48 = swift_allocObject();
    v49 = *(a1 + 48);
    *(v48 + 48) = *(a1 + 32);
    *(v48 + 64) = v49;
    *(v48 + 80) = *(a1 + 64);
    v50 = *(a1 + 16);
    *(v48 + 16) = *a1;
    *(v48 + 32) = v50;
    *v9 = 0x10000;
    sub_26D37DF24(v28, v92, v91);
    sub_26D34856C(v100, &v93, &qword_2804FB8D8);
    sub_26D381CA8(v46, v47);
    sub_26D34856C(&v98, &v93, &qword_2804FBE00);
    v82 = v46;
    LODWORD(v81) = v47;
    v51 = sub_26D33CD0C(v46, v47);
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v52 = v85;
    if (byte_2804FFF98)
    {
      goto LABEL_9;
    }

    if (qword_2804FAD48 != -1)
    {
      swift_once();
    }

    v54 = 12.0;
    if (byte_2804FFF99 & 1) == 0 && (_UISolariumEnabled())
    {
LABEL_9:
      sub_26D39CDDC(0, v51);
      v54 = v53 * 0.75;
    }

    v83 = v28;
    v55 = v52[12];
    *v6 = sub_26D3A0548();
    v6[1] = v54;
    *(v6 + 16) = 0;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC168);
    sub_26D373510(a1, v6 + *(v56 + 44));
    sub_26D347238(v6, v9 + v55, &qword_2804FC130);
    v57 = (v9 + v52[13]);
    *v57 = sub_26D3833A0;
    v57[1] = v48;
    v58 = v9 + v52[14];
    v96 = 0;
    v97 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC4F0);
    sub_26D3A0D48();
    v59 = BYTE8(v93);
    v60 = v94;
    *v58 = v93;
    v58[8] = v59;
    *(v58 + 2) = v60;
    v61 = v52[15];
    v96 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_2804FC500);
    sub_26D3A0D48();
    *(v9 + v61) = v93;
    v62 = v9 + v52[16];
    *v62 = swift_getKeyPath();
    v62[8] = 0;
    if (qword_2804FABF0 != -1)
    {
      swift_once();
    }

    v93 = xmmword_2804FFD10;
    sub_26D37E6A4();

    v63 = sub_26D3A09C8();
    v65 = v64;
    v67 = v66;
    sub_26D3484AC(&qword_2804FC170, &qword_2804FC138);
    v68 = v84;
    sub_26D3A0AE8();
    sub_26D37EDCC(v63, v65, v67 & 1);

    sub_26D3481A4(v9, &qword_2804FC138);
    v69 = swift_allocObject();
    v70 = *(a1 + 48);
    *(v69 + 48) = *(a1 + 32);
    *(v69 + 64) = v70;
    *(v69 + 80) = *(a1 + 64);
    v71 = *(a1 + 16);
    *(v69 + 16) = *a1;
    *(v69 + 32) = v71;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC178) + 36);
    v73 = *MEMORY[0x277CDF968];
    v74 = sub_26D3A01D8();
    (*(*(v74 - 8) + 104))(v68 + v72, v73, v74);
    v75 = swift_allocObject();
    *(v75 + 16) = sub_26D38338C;
    *(v75 + 24) = v69;
    v76 = v88;
    v77 = (v68 + *(v89 + 36));
    *v77 = sub_26D381CB4;
    v77[1] = v75;
    sub_26D34856C(v68, v76, &qword_2804FC140);
    swift_storeEnumTagMultiPayload();
    sub_26D37DF24(v83, v92, v91);
    sub_26D34856C(v100, &v93, &qword_2804FB8D8);
    sub_26D381CA8(v82, v81);
    sub_26D34856C(&v98, &v93, &qword_2804FBE00);
    sub_26D381CBC();
    sub_26D381E38();
    sub_26D3A0718();
    v44 = v68;
    v45 = &qword_2804FC140;
  }

  else
  {
    v100[0] = *a1;
    v98 = *(a1 + 32);
    v99 = *(a1 + 40);
    v96 = *(a1 + 48);
    v97 = *(a1 + 56);
    v31 = swift_allocObject();
    v85 = &v79;
    v32 = *(a1 + 48);
    *(v31 + 48) = *(a1 + 32);
    *(v31 + 64) = v32;
    *(v31 + 80) = *(a1 + 64);
    v33 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v33;
    MEMORY[0x28223BE20](v31, v34);
    *(&v79 - 2) = a1;
    sub_26D34856C(v100, &v93, &qword_2804FB8D8);
    sub_26D37DF24(v28, v92, v91);
    sub_26D34856C(&v98, &v93, &qword_2804FB848);
    sub_26D34856C(&v96, &v93, &qword_2804FBE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FC1C8);
    sub_26D3820B8();
    sub_26D3A0D88();
    sub_26D3A0748();
    v35 = sub_26D3484AC(&qword_2804FC188, &qword_2804FC150);
    v36 = sub_26D37E044(&qword_2804FC190, MEMORY[0x277CDE0B8]);
    sub_26D3A09F8();
    (*(v80 + 8))(v17, v14);
    (*(v19 + 8))(v22, v18);
    if (qword_2804FABF0 != -1)
    {
      swift_once();
    }

    v93 = xmmword_2804FFD10;
    sub_26D37E6A4();

    v37 = sub_26D3A09C8();
    v39 = v38;
    v41 = v40;
    *&v93 = v18;
    *(&v93 + 1) = v14;
    v94 = v35;
    v95 = v36;
    swift_getOpaqueTypeConformance2();
    v42 = v82;
    v43 = v83;
    sub_26D3A0AE8();
    sub_26D37EDCC(v37, v39, v41 & 1);

    (*(v81 + 8))(v25, v43);
    sub_26D34856C(v42, v88, &qword_2804FC160);
    swift_storeEnumTagMultiPayload();
    sub_26D381CBC();
    sub_26D381E38();
    sub_26D3A0718();
    v44 = v42;
    v45 = &qword_2804FC160;
  }

  return sub_26D3481A4(v44, v45);
}