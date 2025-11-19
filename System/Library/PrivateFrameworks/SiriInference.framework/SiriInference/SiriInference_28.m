uint64_t sub_1DD57A5C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE408, &qword_1DD6575F0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v7 = 0;
    v8 = v3 + 56;
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
    v33 = v3;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_14:
        v17 = *(v3 + 48) + 48 * (v14 | (v7 << 6));
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v35 = *(v17 + 24);
        v36 = *v17;
        v34 = *(v17 + 32);
        v20 = *(v17 + 40);
        v21 = *(v6 + 40);
        sub_1DD640E28();
        if (v20)
        {
          if (v20 == 1)
          {
            MEMORY[0x1E12B3140](1);

            sub_1DD63FD28();
            MEMORY[0x1E12B3140](v19);
          }

          else
          {
            MEMORY[0x1E12B3140](2);

            sub_1DD63FD28();
            sub_1DD63FD28();
          }
        }

        else
        {
          MEMORY[0x1E12B3140](0);

          sub_1DD63FD28();
          MEMORY[0x1E12B3140](v19);
          sub_1DD640E48();
          if (v34)
          {
            sub_1DD63FD28();
          }

          LOBYTE(v20) = 0;
        }

        result = sub_1DD640E78();
        v22 = -1 << *(v6 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
        {
          break;
        }

        v25 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        v26 = v34;
LABEL_30:
        *(v13 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v31 = *(v6 + 48) + 48 * v25;
        *v31 = v36;
        *(v31 + 8) = v18;
        *(v31 + 16) = v19;
        *(v31 + 24) = v35;
        *(v31 + 32) = v26;
        *(v31 + 40) = v20;
        ++*(v6 + 16);
        v3 = v33;
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v27 = 0;
      v28 = (63 - v22) >> 6;
      v26 = v34;
      while (++v24 != v28 || (v27 & 1) == 0)
      {
        v29 = v24 == v28;
        if (v24 == v28)
        {
          v24 = 0;
        }

        v27 |= v29;
        v30 = *(v13 + 8 * v24);
        if (v30 != -1)
        {
          v25 = __clz(__rbit64(~v30)) + (v24 << 6);
          goto LABEL_30;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v32;
          goto LABEL_34;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD57A914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFC0, &qword_1DD65CEA8);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v36 = (v11 - 1) & v11;
LABEL_14:
        v17 = (*(v3 + 48) + 32 * (v14 | (v7 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[2];
        v21 = v17[3];
        v22 = *(v6 + 40);
        sub_1DD640E28();

        v35 = v18;
        sub_1DD63FD28();
        if (v21)
        {
          MEMORY[0x1E12B3140](1);
          v23 = v20;
          sub_1DD63FD28();
        }

        else
        {
          v23 = v20;
          MEMORY[0x1E12B3140](0);
        }

        result = sub_1DD640E78();
        v24 = -1 << *(v6 + 32);
        v25 = result & ~v24;
        v26 = v25 >> 6;
        if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
        {
          break;
        }

        v27 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v13 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v32 = (*(v6 + 48) + 32 * v27);
        v3 = v34;
        *v32 = v35;
        v32[1] = v19;
        v32[2] = v23;
        v32[3] = v21;
        ++*(v6 + 16);
        v11 = v36;
        if (!v36)
        {
          goto LABEL_9;
        }
      }

      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v13 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v33;
          goto LABEL_30;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v36 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1DD57ABAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEFB8, &qword_1DD65CEA0);
  result = sub_1DD640868();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
        v16 = *(*(v3 + 48) + 2 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_1DD640E28();
        sub_1DD538ED0(v16);
        sub_1DD63FD28();

        result = sub_1DD640E78();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 2 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

          v2 = v26;
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

uint64_t sub_1DD57AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a6)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a6 != 1)
  {
    if (a6 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_1DD57AFAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_43()
{
  v2 = *(*(v1 - 120) + 48) + v0;
  result = *(v1 - 136);
  v4 = *(v1 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_35()
{
  v3 = *(v1 + 16);
  result = v0;
  v5 = *(v2 - 104);
  v6 = *(v2 - 96);
  return result;
}

void OUTLINED_FUNCTION_13_41()
{
  *(v2 - 96) = v1 + 56;
  v3 = *(v2 - 120);
  v4 = *(v3 + 80);
  *(v2 - 144) = v0;
  *(v2 - 136) = v0 + ((v4 + 32) & ~v4);
  *(v2 - 104) = v3 + 16;
  *(v2 - 152) = v3 + 32;
}

uint64_t OUTLINED_FUNCTION_19_30@<X0>(uint64_t a1@<X8>)
{
  v7 = *(v6 - 88);
  *(*(v6 - 96) + 8 * a1) = v2 | v1;
  result = *(v4 + 48) + v3 * v5;
  v9 = **(v6 - 152);
  return result;
}

uint64_t OUTLINED_FUNCTION_22_28()
{
  *(v1 - 96) = v0;

  return sub_1DD63FCE8();
}

uint64_t OUTLINED_FUNCTION_32_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(*v3 + 24) > a1)
  {
    v5 = *(*v3 + 24);
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_34_16()
{
  result = *(v0 - 96);
  v2 = *(v0 - 128);
  return result;
}

void OUTLINED_FUNCTION_37_17()
{
  v1 = *(v0 - 112);
  v2 = *(v0 - 128);
  v3 = *(v0 - 144);
}

void OUTLINED_FUNCTION_38_15()
{
  *(v0 + 16) = *(v1 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_53_10()
{
  v2 = *(v0 - 88);

  return sub_1DD63FD98();
}

uint64_t OUTLINED_FUNCTION_57_12(uint64_t result)
{
  v4 = result & ~(v3 << *(v1 + 32));
  v5 = (v3 << v4) & ~*(v2 + 8 * (v4 >> 6));
  return result;
}

uint64_t OUTLINED_FUNCTION_59_8()
{

  return sub_1DD63FCE8();
}

uint64_t OUTLINED_FUNCTION_63_3()
{
  v2 = *(*v0 + 40);

  return sub_1DD640E28();
}

uint64_t OUTLINED_FUNCTION_77_1()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_78_2()
{
  v2 = *v0;

  return sub_1DD640858();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_80_1()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  v2 = **(v0 - 144);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_82_2()
{

  return sub_1DD640CD8();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1DD3EB41C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_85_2(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_93_1()
{
  v3 = *(*(v1 + 48) + 8 * v0);
}

uint64_t OUTLINED_FUNCTION_94_0()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_95_0()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_96_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_97_1()
{
}

uint64_t sub_1DD57B850(_BYTE *a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  if (*a1)
  {
    sub_1DD56C5AC();
  }

  type metadata accessor for DateTimeConstraint();
  v4 = OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_0_120(v4, v5, v6, v7, v8, v9, v10, v11, v13, *v14, *&v14[4], v14[6], v3, 0);
}

uint64_t sub_1DD57B8EC(uint64_t a1, char *a2)
{
  if (*(a1 + 25) == 13)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (*(a1 + 24))
  {
    LOBYTE(v3) = 0;
  }

  v15 = v3;
  v16 = *(a1 + 25);
  v14 = *a2;
  type metadata accessor for DateTimeConstraint();
  v4 = OUTLINED_FUNCTION_6();
  return OUTLINED_FUNCTION_0_120(v4, v5, v6, v7, v8, v9, v10, v11, v12, *v13, *&v13[4], v13[6], v14, v15);
}

unsigned __int8 *sub_1DD57B970@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 > 0x18)
  {
    v3 = 2;
  }

  else
  {
    v3 = byte_1DD65CF68[v2];
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1DD57B9D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (*(result + 48) == 5)
  {
    v7 = *(result + 40);
    v8 = *(result + 24);
    v33 = *(result + 32);
    v32 = 20;
    type metadata accessor for DateTime.Interval();
    swift_allocObject();
    v9 = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v8, 0, &v33, &v32);
    v10 = *(v7 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v29 = MEMORY[0x1E69E7CC0];
      sub_1DD640988();
      result = sub_1DD55B198(v7);
      v12 = result;
      v14 = v13;
      v16 = v15;
      while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v7 + 32))
      {
        if (((*(v7 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
        {
          goto LABEL_20;
        }

        if (*(v7 + 36) != v14)
        {
          goto LABEL_21;
        }

        v31 = *(*(v7 + 48) + v12);
        type metadata accessor for DateTime.Date();
        swift_allocObject();
        v17 = DateTime.Date.init(withDayOfWeek:)(&v31);
        type metadata accessor for DateTime();
        swift_allocObject();
        DateTime.init(withDate:)(v17);
        sub_1DD640958();
        v18 = *(v29 + 16);
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        result = sub_1DD57BCD4(v12, v14, v16 & 1, v7);
        v12 = result;
        v14 = v19;
        v16 = v20;
        if (!--v10)
        {
          sub_1DD3AA558(result, v19, v20 & 1);
          v11 = v29;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_10:
    sub_1DD418CA4(v11);
    v22 = v21;
    v23 = *a6;
    result = sub_1DD3CC020(*a6);
    if (result)
    {
      v24 = result;
      if (result < 1)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      v25 = 0;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1E12B2C10](v25, v23);
        }

        else
        {
          v26 = *(v23 + 8 * v25 + 32);
        }

        ++v25;
        v30 = 3;
        type metadata accessor for DateTime.RecurrencePattern();
        swift_allocObject();
        v27 = DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(0, v9, 0, 1, v22, 0, 0, &v30);
        v28 = *(v26 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern);
        *(v26 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern) = v27;
      }

      while (v24 != v25);
    }
  }

  return result;
}

uint64_t sub_1DD57BCD4(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      result = sub_1DD640748();
      v5 = *(a4 + 36);
      return result;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DD57BD74()
{
  OUTLINED_FUNCTION_10_3();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57BDD8()
{
  OUTLINED_FUNCTION_10_3();
  v1 = dword_1DD65D260[v0];
  sub_1DD640E58();
  return sub_1DD640E78();
}

uint64_t sub_1DD57BE98()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57BEF4()
{
  OUTLINED_FUNCTION_10_3();
  if (v0)
  {
    OUTLINED_FUNCTION_15_4();
  }

  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57BF98()
{
  OUTLINED_FUNCTION_10_3();
  if (v0)
  {
    OUTLINED_FUNCTION_15_4();
  }

  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C0E0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C160()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C200()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C264()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C308()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C38C()
{
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1E12B3140](v0 + 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57C3CC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C430()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C4C8()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C574()
{
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1E12B3140](qword_1DD65D3D0[v0]);
  return sub_1DD640E78();
}

uint64_t sub_1DD57C5D4()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C630()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C6D4()
{
  OUTLINED_FUNCTION_10_3();
  if (v0)
  {
    OUTLINED_FUNCTION_15_4();
  }

  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C788()
{
  sub_1DD640E28();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C838()
{
  OUTLINED_FUNCTION_10_3();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C8AC()
{
  OUTLINED_FUNCTION_10_3();
  sub_1DD538ED0(v0);
  OUTLINED_FUNCTION_2_39();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C8F0()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57C9A0()
{
  sub_1DD640E28();
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CA74()
{
  sub_1DD640E28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD57CAE0()
{
  OUTLINED_FUNCTION_19_31();
  v0(v1);
  OUTLINED_FUNCTION_2_39();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CB58()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CBCC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CC44()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CCD4()
{
  sub_1DD640E28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD57CD38()
{
  v1 = OUTLINED_FUNCTION_19_31();
  v0(v1);
  OUTLINED_FUNCTION_2_39();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CD84()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CE00()
{
  OUTLINED_FUNCTION_10_3();
  if (v0)
  {
    OUTLINED_FUNCTION_15_4();
  }

  OUTLINED_FUNCTION_12_36();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CE90()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *&aEverydayweekda_1[8 * v0];
  sub_1DD63FD28();

  return sub_1DD640E78();
}

uint64_t sub_1DD57CEE4(uint64_t a1, uint64_t a2)
{
  sub_1DD640E28();
  MEMORY[0x1E12B3140](a2);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CF28()
{
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1E12B3140](v0);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CF64()
{
  OUTLINED_FUNCTION_10_3();
  MEMORY[0x1E12B3140](v0 & 1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57CFD0()
{
  OUTLINED_FUNCTION_19_31();
  v0(v3, v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD57D010(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v4)
    {
      if (a2 < 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](v6, v5);
    }

    v7 = v5;
    v8 = a2;
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) != *(a2 + 16))
      {
        return 0;
      }

      v26 = a1 + 56;
      v10 = 1 << *(a1 + 32);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(a1 + 56);
      v6 = type metadata accessor for DateTime();
      v13 = 0;
      v14 = (v10 + 63) >> 6;
      v27 = v14;
      if (v12)
      {
        while (2)
        {
          v15 = __clz(__rbit64(v12));
          v28 = (v12 - 1) & v12;
LABEL_33:
          v18 = *(*(a1 + 48) + 8 * (v15 | (v13 << 6)));
          v19 = *(a2 + 40);
          sub_1DD640E28();

          sub_1DD489FC8(v29);
          v20 = sub_1DD640E78();
          v21 = ~(-1 << *(a2 + 32));
          do
          {
            v22 = v20 & v21;
            if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
            {

              return 0;
            }

            v23 = *(*(a2 + 48) + 8 * v22);

            v25 = static DateTime.== infix(_:_:)(v24, v18);

            v20 = v22 + 1;
          }

          while ((v25 & 1) == 0);

          v14 = v27;
          v12 = v28;
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return 1;
        }

        v17 = *(v26 + 8 * v13);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v28 = (v17 - 1) & v17;
          goto LABEL_33;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6A200](v6, v5);
    }

    if (a2 < 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a1;
  }

  return sub_1DD57EAD4(v7, v8);
}

uint64_t sub_1DD57D274(uint64_t result, uint64_t a2)
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
      sub_1DD640E28();

      sub_1DD63FD28();
      v16 = sub_1DD640E78();
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

        v21 = sub_1DD640CD8();
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

uint64_t sub_1DD57D41C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
LABEL_7:
  if (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = *(*(v3 + 48) + (v9 | (v4 << 6)));
    v13 = *(a2 + 40);
    sub_1DD640E28();
    MEMORY[0x1E12B3140](v12);
    result = sub_1DD640E78();
    v14 = ~(-1 << *(a2 + 32));
    while (1)
    {
      v15 = result & v14;
      if (((*(a2 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
      {
        return 0;
      }

      result = v15 + 1;
      if (*(*(a2 + 48) + v15) == v12)
      {
        goto LABEL_7;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 56 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  OUTLINED_FUNCTION_5_75();
  result = swift_allocObject();
  v17 = *a8;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = v17;
  return result;
}

uint64_t DateTime.RecurrencePattern.totalNumberOfOccurrences.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrencePeriod:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  DateTime.RecurrencePattern.init(withRecurrencePeriod:)(a1);
  return v2;
}

uint64_t DateTime.RecurrencePattern.__allocating_init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_5_75();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4 & 1;
  *(result + 48) = a5;
  *(result + 56) = a6;
  *(result + 64) = a7;
  *(result + 72) = 3;
  return result;
}

uint64_t DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4 & 1;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  return OUTLINED_FUNCTION_16_41(3);
}

uint64_t DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v9 = *a8;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4 & 1;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  return OUTLINED_FUNCTION_16_41(v9);
}

uint64_t sub_1DD57D78C(void *a1)
{
  if (*(v1 + 16))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD49CDC8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_32_2();
    sub_1DD4E0DF8();
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 40) == 1)
  {
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v3 = *(v1 + 32);
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v3);
  }

  sub_1DD57EBD8(a1, *(v1 + 48));
  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_64();
    v4 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_64();
    v5 = OUTLINED_FUNCTION_32_2();
    sub_1DD489FC8(v5);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v6 = *(v1 + 72);
  if (v6 == 3)
  {
    return OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_64();
  v8 = *&aEverydayweekda_1[8 * v6];
  sub_1DD63FD28();
}

uint64_t static DateTime.RecurrencePattern.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!v4)
    {
      return 0;
    }

    type metadata accessor for DateTime.DateTimeRange();

    v5 = OUTLINED_FUNCTION_14_38();
    v6 = static DateTime.DateTimeRange.== infix(_:_:)(v5);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    type metadata accessor for DateTime.Interval();
    if (!static DateTime.Interval.== infix(_:_:)(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_1DD57D010(*(a1 + 48), *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!v10)
    {
      return 0;
    }

    type metadata accessor for DateTime();

    v11 = OUTLINED_FUNCTION_14_38();
    v13 = static DateTime.== infix(_:_:)(v11, v12);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(a2 + 64);
  if (!*(a1 + 64))
  {
    if (!v14)
    {
      goto LABEL_26;
    }

    return 0;
  }

  if (!v14)
  {
    return 0;
  }

  type metadata accessor for DateTime();

  v15 = OUTLINED_FUNCTION_14_38();
  v17 = static DateTime.== infix(_:_:)(v15, v16);

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v18 = *(a1 + 72);
  v19 = *(a2 + 72);
  result = v19 == 3 && v18 == 3;
  if (v18 != 3 && v19 != 3)
  {
    v22 = *(a1 + 72);

    return sub_1DD3AE4E8(v22, v19);
  }

  return result;
}

unint64_t sub_1DD57DA68()
{
  v1 = v0;
  if (*(v0 + 24))
  {

    sub_1DD6408D8();

    OUTLINED_FUNCTION_26_1();
    v31[0] = 0xD000000000000011;
    v31[1] = v2;
    v3 = sub_1DD4E0F18();
    MEMORY[0x1E12B2260](v3);

    v4 = v31[1];
    sub_1DD3BE2A4();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v6 = v29;
    }

    *(v6 + 16) = v7 + 1;
    v8 = v6 + 16 * v7;
    *(v8 + 32) = 0xD000000000000011;
    *(v8 + 40) = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD6408D8();

  OUTLINED_FUNCTION_26_1();
  v31[0] = 0xD000000000000014;
  v31[1] = v9;
  v10 = *(v0 + 48);
  type metadata accessor for DateTime();
  OUTLINED_FUNCTION_0_121();
  sub_1DD57F010(v11, 255, v12);
  v13 = sub_1DD640278();
  MEMORY[0x1E12B2260](v13);

  v14 = v31[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = *(v6 + 16);
    sub_1DD3BE2A4();
    v6 = v27;
  }

  v15 = *(v6 + 16);
  if (v15 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_2();
    v6 = v28;
  }

  *(v6 + 16) = v15 + 1;
  v16 = v6 + 16 * v15;
  *(v16 + 32) = 0xD000000000000014;
  *(v16 + 40) = v14;
  v17 = *(v1 + 72);
  if (v17 != 3)
  {
    strcpy(v31, "definedValue=");
    HIWORD(v31[1]) = -4864;
    MEMORY[0x1E12B2260](*&aEverydayweekda_1[8 * v17], 0xE800000000000000);

    v18 = v31[0];
    v19 = v31[1];
    v20 = *(v6 + 16);
    if (v20 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
      v6 = v30;
    }

    *(v6 + 16) = v20 + 1;
    v21 = v6 + 16 * v20;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
  }

  sub_1DD6408D8();

  OUTLINED_FUNCTION_26_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v22 = sub_1DD63FD58();
  v24 = v23;

  MEMORY[0x1E12B2260](v22, v24);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1DD57DD68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000001DD673030 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001DD673050 == a2;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001DD673070 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001DD673090 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x657461446D6F7266 && a2 == 0xEC000000656D6954;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6954657461446F74 && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61)
            {

              return 6;
            }

            else
            {
              v12 = sub_1DD640CD8();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD57DFB0(char a1)
{
  result = 0x657461446D6F7266;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6954657461446F74;
      break;
    case 6:
      result = 0x5664656E69666564;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_1DD57E0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD57DD68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD57E0DC(uint64_t a1)
{
  v2 = sub_1DD57EE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD57E118(uint64_t a1)
{
  v2 = sub_1DD57EE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DateTime.RecurrencePattern.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  return v0;
}

uint64_t DateTime.RecurrencePattern.__deallocating_deinit()
{
  DateTime.RecurrencePattern.deinit();
  OUTLINED_FUNCTION_5_75();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD57E1C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF038, &qword_1DD65CFC8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD57EE18();
  sub_1DD640EF8();
  v24 = *(v3 + 16);
  HIBYTE(v23) = 0;
  type metadata accessor for DateTime.DateTimeRange();
  OUTLINED_FUNCTION_6_65();
  sub_1DD57F010(v14, 255, v15);
  OUTLINED_FUNCTION_2_90();
  sub_1DD640C08();
  if (!v2)
  {
    v24 = *(v3 + 24);
    HIBYTE(v23) = 1;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_7_53();
    sub_1DD57F010(v16, 255, v17);
    OUTLINED_FUNCTION_2_90();
    sub_1DD640C08();
    v18 = *(v3 + 32);
    v19 = *(v3 + 40);
    LOBYTE(v24) = 2;
    OUTLINED_FUNCTION_56();
    sub_1DD640BF8();
    v24 = *(v3 + 48);
    HIBYTE(v23) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    sub_1DD57EEE4(&qword_1ECCDF050, &qword_1ECCDD480);
    OUTLINED_FUNCTION_2_90();
    sub_1DD640C68();
    v24 = *(v3 + 56);
    HIBYTE(v23) = 4;
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(v20, 255, v21);
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
    v24 = *(v3 + 64);
    HIBYTE(v23) = 5;
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
    LOBYTE(v24) = *(v3 + 72);
    HIBYTE(v23) = 6;
    sub_1DD57EE6C();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_56();
    sub_1DD640C08();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD57E4D0()
{
  sub_1DD640E28();
  sub_1DD57D78C(v1);
  return sub_1DD640E78();
}

uint64_t DateTime.RecurrencePattern.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_75();
  v2 = swift_allocObject();
  DateTime.RecurrencePattern.init(from:)(a1);
  return v2;
}

uint64_t DateTime.RecurrencePattern.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF060, &qword_1DD65CFD8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD57EE18();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.RecurrencePattern();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_6_65();
    sub_1DD57F010(v9, 255, v10);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B18();
    *(v1 + 16) = v19;
    type metadata accessor for DateTime.Interval();
    OUTLINED_FUNCTION_7_53();
    sub_1DD57F010(v11, 255, v12);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B18();
    *(v1 + 24) = v19;
    LOBYTE(v19) = 2;
    *(v1 + 32) = sub_1DD640B08();
    *(v1 + 40) = v13 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    sub_1DD57EEE4(&qword_1ECCDF068, &qword_1ECCDD4A8);
    OUTLINED_FUNCTION_1_105();
    sub_1DD640B78();
    *(v1 + 48) = v19;
    type metadata accessor for DateTime();
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(v15, 255, v16);
    OUTLINED_FUNCTION_15_41();
    sub_1DD640B18();
    *(v1 + 56) = v19;
    OUTLINED_FUNCTION_15_41();
    sub_1DD640B18();
    *(v1 + 64) = v19;
    sub_1DD57EF74();
    sub_1DD640B18();
    v17 = OUTLINED_FUNCTION_41();
    v18(v17);
    *(v1 + 72) = 2;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DD57EA20()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD57D78C(v3);
  return sub_1DD640E78();
}

uint64_t sub_1DD57EA60@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.RecurrencePattern.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD57EAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1DD6407B8();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_1DD640808();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD57EBD8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DD640E78();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1DD640778();
    type metadata accessor for DateTime();
    sub_1DD57F010(&qword_1ECCDC740, 255, type metadata accessor for DateTime);
    result = sub_1DD6402A8();
    a2 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v4 = a2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a2 + 56);

    v6 = 0;
  }

  v11 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v7)
  {
    v12 = v6;
LABEL_17:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v17[9] = *(*(a2 + 48) + ((v12 << 9) | (8 * v15)));

    while (1)
    {
      sub_1DD640E28();
      sub_1DD489FC8(v17);
      v16 = sub_1DD640E78();

      v11 ^= v16;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      v13 = sub_1DD6407F8();
      if (!v13)
      {
        goto LABEL_20;
      }

      v17[0] = v13;
      type metadata accessor for DateTime();
      swift_dynamicCast();
    }
  }

  v14 = v6;
  while (1)
  {
    v12 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v12 >= ((v5 + 64) >> 6))
    {
LABEL_20:
      sub_1DD3AA5A4();
      return MEMORY[0x1E12B3140](v11);
    }

    v7 = *(v4 + 8 * v12);
    ++v14;
    if (v7)
    {
      v6 = v12;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD57EE18()
{
  result = qword_1ECCDF040;
  if (!qword_1ECCDF040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF040);
  }

  return result;
}

unint64_t sub_1DD57EE6C()
{
  result = qword_1ECCDF058;
  if (!qword_1ECCDF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF058);
  }

  return result;
}

uint64_t sub_1DD57EEE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDF048, &qword_1DD65CFD0);
    OUTLINED_FUNCTION_0_121();
    sub_1DD57F010(a2, 255, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD57EF74()
{
  result = qword_1ECCDF070;
  if (!qword_1ECCDF070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF070);
  }

  return result;
}

uint64_t sub_1DD57F010(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *_s17RecurrencePatternC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD57F260()
{
  result = qword_1ECCDF080;
  if (!qword_1ECCDF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF080);
  }

  return result;
}

unint64_t sub_1DD57F2B8()
{
  result = qword_1ECCDF088;
  if (!qword_1ECCDF088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF088);
  }

  return result;
}

unint64_t sub_1DD57F310()
{
  result = qword_1ECCDF090;
  if (!qword_1ECCDF090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF090);
  }

  return result;
}

uint64_t sub_1DD57F364(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_33(a1, a2, a3, a4, a5, a6, a7, a8, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  sub_1DD640E78();
  v9 = *(v8 + 56);
  v10 = *(v8 + 32);
  OUTLINED_FUNCTION_4_1();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;

  v17 = 0;
  for (i = 0; v13; v17 ^= v24)
  {
    v19 = i;
LABEL_7:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v21 = (*(v8 + 48) + ((v19 << 10) | (16 * v20)));
    v22 = *v21;
    v23 = v21[1];
    sub_1DD640E28();

    sub_1DD63FD28();
    v24 = sub_1DD640E78();
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1E12B3140](v17);
    }

    v13 = *(v8 + 56 + 8 * v19);
    ++i;
    if (v13)
    {
      i = v19;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD57F490(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_18_33(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  sub_1DD640E78();
  v9 = 0;
  v10 = 0;
  v11 = *(v8 + 56);
  v12 = *(v8 + 32);
  OUTLINED_FUNCTION_4_1();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  if ((v14 & v13) != 0)
  {
    do
    {
      v18 = v10;
LABEL_7:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v20 = *(*(v8 + 48) + (v19 | (v18 << 6)));
      sub_1DD640E28();
      MEMORY[0x1E12B3140](v20);
      v9 ^= sub_1DD640E78();
    }

    while (v15);
  }

  while (1)
  {
    v18 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      MEMORY[0x1E12B3140](v9);
      return;
    }

    v15 = *(v8 + 56 + 8 * v18);
    ++v10;
    if (v15)
    {
      v10 = v18;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_12_36()
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_19_31()
{

  return sub_1DD640E28();
}

uint64_t sub_1DD57F5F8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern;
  *(v2 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern) = 0;
  v6 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  v7 = sub_1DD63C868();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  *(v2 + v5) = a2;
  return v2;
}

uint64_t sub_1DD57F684()
{
  v1 = sub_1DD63C868();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval, v1, v4);
  v7 = sub_1DD63C808();
  (*(v2 + 8))(v6, v1);
  return v7;
}

uint64_t sub_1DD57F784()
{
  v1 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
  v2 = sub_1DD63C868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_recurrencePattern);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecurringDateInterval()
{
  result = qword_1ECCDF098;
  if (!qword_1ECCDF098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD57F884()
{
  result = sub_1DD63C868();
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

uint64_t sub_1DD57F940()
{
  sub_1DD5D3268(0);
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v2)
    {
      return v1;
    }

    v20 = v2;
    sub_1DD4DD9E4(&v20, &v15);

    v3 = *(&v15 + 1);
    if (*(&v15 + 1))
    {
      v4 = v16;
      v5 = v17;
      v6 = v18;
      v7 = v19;
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = *(v1 + 16);
        sub_1DD3C0934();
        v1 = v11;
      }

      v8 = *(v1 + 16);
      if (v8 >= *(v1 + 24) >> 1)
      {
        sub_1DD3C0934();
        v1 = v12;
      }

      *(v1 + 16) = v8 + 1;
      v9 = (v1 + 48 * v8);
      v9[4] = v14;
      v9[5] = v3;
      v9[6] = v4;
      v9[7] = v5;
      v9[8] = v6;
      v9[9] = v7;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD57FAAC(uint64_t a1)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v2 = *(v94 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_1_4();
  v91 = (v4 - v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v82 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v82 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v82 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC30, &unk_1DD6575D0);
  v14 = *(v2 + 72);
  v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v93 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643F90;
  v95 = v16;
  v92 = v15;
  sub_1DD4DDC08(a1, v16 + v15, &qword_1ECCDBC18, &unk_1DD6459A0);
  v17 = *(a1 + 184);
  if (v17)
  {
    v18 = *(a1 + 176);
    v19 = 1;
    switch(*(a1 + 248))
    {
      case 1:
        break;
      default:
        v19 = sub_1DD640CD8();
        break;
    }

    sub_1DD4DDC08(a1, v13, &qword_1ECCDBC18, &unk_1DD6459A0);
    v20 = v13[8];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v13[7] & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v101[0] = v13[7];
      v101[1] = v20;

      MEMORY[0x1E12B2260](32, 0xE100000000000000);
      MEMORY[0x1E12B2260](v18, v17);

      v18 = v101[0];
      v22 = v101[1];
    }

    else
    {

      v22 = v17;
    }

    v13[7] = v18;
    v13[8] = v22;
    sub_1DD4178B4(v13[21], v13[22], v13[23]);

    v13[21] = 0;
    v13[22] = 0;
    v13[23] = 0;
    v23 = v13 + *(v94 + 36);
    v24 = type metadata accessor for ContactResolver.SignalSet(0);
    v23[*(v24 + 148)] = v19 & 1;
    v23[*(v24 + 164)] = 1;
    sub_1DD3BF7FC();
    *(v25 + 16) = 2;
    v95 = v25;
    sub_1DD4DDCBC(v13, v25 + v92 + v93, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  memcpy(v101, a1, 0x108uLL);
  memcpy(v100, a1, sizeof(v100));
  sub_1DD3C9478(v101, v99);
  v36 = sub_1DD5806FC(v100);
  memcpy(v99, v100, sizeof(v99));
  sub_1DD3C9580(v99);
  v37 = qword_1EE165FB0;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v38 = sub_1DD63F9F8();
  __swift_project_value_buffer(v38, qword_1EE16F068);
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640368();

  v41 = os_log_type_enabled(v39, v40);
  v87 = v36;
  if (v41)
  {
    OUTLINED_FUNCTION_18_1();
    v42 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v43 = swift_slowAlloc();
    v98[0] = v43;
    *v42 = 136315138;
    v44 = sub_1DD640278();
    v46 = sub_1DD39565C(v44, v45, v98);

    *(v42 + 4) = v46;
    v36 = v87;
    _os_log_impl(&dword_1DD38D000, v39, v40, "found aliases: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v47 = 0;
  v89 = a1;
  v86 = *(a1 + 184);
  v85 = v86 == 0;
  v48 = v36 + 56;
  v49 = 1 << *(v36 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v36 + 56);
  v52 = (v49 + 63) >> 6;
  v83 = v36 + 56;
  v84 = v52;
  if (v51)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v53 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v53 >= v52)
    {
      goto LABEL_41;
    }

    v51 = *(v48 + 8 * v53);
    ++v47;
    if (v51)
    {
      v47 = v53;
      do
      {
LABEL_27:
        v54 = (*(v36 + 48) + ((v47 << 10) | (16 * __clz(__rbit64(v51)))));
        v55 = *v54;
        v56 = v54[1];
        v57 = v89;
        sub_1DD4DDC08(v89, v11, &qword_1ECCDBC18, &unk_1DD6459A0);
        memcpy(v98, v11, 0x108uLL);

        sub_1DD3C9580(v98);
        *v11 = 0;
        v11[1] = 0xE000000000000000;
        *(v11 + 16) = 0;
        v11[3] = 0;
        v11[4] = 0xE000000000000000;
        v11[5] = 0;
        v11[6] = 0xE000000000000000;
        v11[7] = 0;
        v11[8] = 0xE000000000000000;
        v11[9] = 0;
        v11[10] = 0xE000000000000000;
        v11[11] = 0;
        v11[12] = 0xE000000000000000;
        v11[13] = 0;
        v11[14] = 0xE000000000000000;
        v11[15] = 0;
        v11[16] = 0xE000000000000000;
        v11[17] = 0;
        v11[18] = 0xE000000000000000;
        v11[19] = 0;
        v11[20] = 0xE000000000000000;
        *(v11 + 27) = 0u;
        *(v11 + 25) = 0u;
        *(v11 + 23) = 0u;
        *(v11 + 21) = 0u;
        v11[29] = 0;
        v11[30] = MEMORY[0x1E69E7CC0];
        v11[32] = 0;
        *(v11 + 248) = *(v57 + 248);

        sub_1DD4178B4(0, 0, 0);
        v11[21] = 0;
        v11[22] = v55;
        v88 = v55;
        v11[23] = v56;
        v58 = v11 + *(v94 + 36);
        v59 = type metadata accessor for ContactResolver.SignalSet(0);
        v62 = v59;
        v58[*(v59 + 148)] = 1;
        v58[*(v59 + 164)] = v85;
        v63 = v95;
        v64 = *(v95 + 16);
        if (v64 >= *(v95 + 24) >> 1)
        {
          OUTLINED_FUNCTION_12_37();
          v63 = v59;
        }

        v51 &= v51 - 1;
        OUTLINED_FUNCTION_11_44(v59, v60, v61, v63);
        sub_1DD4DDCBC(v11, v65 + v64 * v66, &qword_1ECCDBC18, &unk_1DD6459A0);
        if (v86)
        {
          v67 = v91;
          sub_1DD4DDC08(v89, v91, &qword_1ECCDBC18, &unk_1DD6459A0);
          v68 = *(v67 + 64);
          v69 = HIBYTE(v68) & 0xF;
          if ((v68 & 0x2000000000000000) == 0)
          {
            v69 = *(v67 + 56) & 0xFFFFFFFFFFFFLL;
          }

          if (v69)
          {
            v96 = *(v67 + 56);
            v97 = v68;

            MEMORY[0x1E12B2260](32, 0xE100000000000000);
            MEMORY[0x1E12B2260](v88, v56);

            v70 = v96;
            v56 = v97;
          }

          else
          {
            v71 = *(v67 + 64);

            v70 = v88;
          }

          v72 = v91;
          v91[7] = v70;
          v72[8] = v56;
          sub_1DD4178B4(v72[21], v72[22], v72[23]);
          v72[21] = 0;
          v72[22] = 0;
          v72[23] = 0;
          v73 = v72 + *(v94 + 36);
          v73[*(v62 + 148)] = 1;
          v73[*(v62 + 164)] = 1;
          v74 = sub_1DD4DDCBC(v72, v90, &qword_1ECCDBC18, &unk_1DD6459A0);
          v77 = v95;
          v78 = *(v95 + 16);
          v36 = v87;
          if (v78 >= *(v95 + 24) >> 1)
          {
            OUTLINED_FUNCTION_12_37();
            v77 = v74;
          }

          OUTLINED_FUNCTION_11_44(v74, v75, v76, v77);
          sub_1DD4DDCBC(v90, v79 + v78 * v80, &qword_1ECCDBC18, &unk_1DD6459A0);
        }

        else
        {

          v36 = v87;
        }

        v48 = v83;
        v52 = v84;
      }

      while (v51);
    }
  }

  __break(1u);
  OUTLINED_FUNCTION_0_2();
  swift_once();
  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16F068);
  v27 = &qword_1ECCDBC18;
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640378();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_18_1();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v31 = swift_slowAlloc();
    v98[0] = v31;
    *v30 = 136315138;
    v96 = &qword_1ECCDBC18;
    v32 = &qword_1ECCDBC18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v33 = sub_1DD63FE38();
    v35 = sub_1DD39565C(v33, v34, v98);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1DD38D000, v28, v29, "RelationshipAliasExpander failed to find aliases. error=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  type metadata accessor for InferenceError();
  swift_allocObject();
  sub_1DD4DE96C(24, 0, 0xE000000000000000, 0xD000000000000095, 0x80000001DD6731B0, 0x7128646E61707865, 0xEE00293A79726575, 45, MEMORY[0x1E69E7CC0], 1);
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  __swift_project_value_buffer(v26, qword_1EE16F0C8);
  sub_1DD4DEB78();

LABEL_41:

  return v95;
}

uint64_t sub_1DD5804E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD406240(a1, a2, a3, &v10);
  if (!v3)
  {
    if (v11)
    {
      sub_1DD3AA4A8(&v10, v12);
      sub_1DD3C2388(v12, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v12);
        return v9;
      }

      else
      {
        sub_1DD4CF1AC();
        v7 = OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_8_57(xmmword_1DD65D4A0, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      sub_1DD390754(&v10, &qword_1ECCDCF98, &qword_1DD6547F0);
      sub_1DD4CF1AC();
      v5 = OUTLINED_FUNCTION_4_42();
      return OUTLINED_FUNCTION_7_54(xmmword_1DD65D4A0, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1DD5805F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD406240(a1, a2, a3, &v10);
  if (!v3)
  {
    if (v11)
    {
      sub_1DD3AA4A8(&v10, v12);
      sub_1DD3C2388(v12, &v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v12);
        return v9;
      }

      else
      {
        sub_1DD4CF1AC();
        v7 = OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_8_57(xmmword_1DD65D4A0, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      sub_1DD390754(&v10, &qword_1ECCDCF98, &qword_1DD6547F0);
      sub_1DD4CF1AC();
      v5 = OUTLINED_FUNCTION_4_42();
      return OUTLINED_FUNCTION_7_54(xmmword_1DD65D4A0, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1DD5806FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - v7;
  v9 = a1[22];
  v68 = a1[21];
  v10 = a1[23];
  v11 = *v1;
  if (!sub_1DD581B24())
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (v10)
  {
    v64 = v9;
    v12 = sub_1DD63FE58();
    v14 = v13;

    v63 = v10;

    OUTLINED_FUNCTION_10_49();
    sub_1DD580E80(v15, v16);
    v62 = v12;

    v65[0] = v12;
    v65[1] = v14;
    v17 = v3 + *(type metadata accessor for RelationshipAliasGenerator() + 24);
    v18 = type metadata accessor for StringTokenizer();
    v61 = v14;
    v19 = *(v18 + 20);
    v20 = sub_1DD63D168();
    OUTLINED_FUNCTION_7(v20);
    (*(v21 + 16))(v8, &v17[v19], v20);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v20);
    sub_1DD3B7F10();
    v22 = sub_1DD6406C8();
    v24 = v23;
    sub_1DD390754(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
    sub_1DD580E80(v22, v24);
    v43 = v61;

    OUTLINED_FUNCTION_10_49();
    v45 = sub_1DD581048(v44);
    v47 = v46;
    v48 = v62;
    OUTLINED_FUNCTION_10_49();
    v67[0] = sub_1DD581118(v49, v50, v51);
    sub_1DD56CE00(v65, v45, v47);

    sub_1DD581CB8(v48, v43);

    sub_1DD4178B4(v68, v64, v63);

    return v67[0];
  }

  v25 = v3 + *(type metadata accessor for RelationshipAliasGenerator() + 24);
  v63 = type metadata accessor for StringTokenizer();
  v67[3] = v63;
  v67[4] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
  v64 = v25;
  sub_1DD4BE2A4(v25, boxed_opaque_existential_1);
  memcpy(v65, a1, 0xA8uLL);
  v65[21] = v68;
  v65[22] = v9;
  v65[23] = 0;
  memcpy(v66, a1 + 24, sizeof(v66));
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v27);
  *(&v60 - 2) = v67;
  *(&v60 - 4) = 1;
  sub_1DD582E38();
  v29 = v28;

  v30 = sub_1DD41859C(v29);
  __swift_destroy_boxed_opaque_existential_1(v67);
  if (*(v30 + 16) != 1)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v31 = sub_1DD558C68(v30);
  v33 = v32;

  if (!v33)
  {

    return MEMORY[0x1E69E7CD0];
  }

  OUTLINED_FUNCTION_10_49();
  v36 = sub_1DD580E80(v34, v35);
  if (v2)
  {

    v65[0] = v31;
    v65[1] = v33;
    v37 = v63[5];
    v38 = sub_1DD63D168();
    OUTLINED_FUNCTION_7(v38);
    (*(v39 + 16))(v8, v64 + v37, v38);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v38);
    sub_1DD3B7F10();
    v40 = sub_1DD6406C8();
    v42 = v41;
    sub_1DD390754(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    v54 = sub_1DD580E80(v40, v42);
  }

  else
  {
    v54 = v36;
  }

  v55 = sub_1DD581048(v54);
  v57 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = v55;
  *(inited + 40) = v57;
  sub_1DD56C2F4();
  v53 = v59;

  return v53;
}

uint64_t sub_1DD580E80(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  v8 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 96) = v8;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v9 = sub_1DD5804E4(0xD00000000000007CLL, 0x80000001DD673360, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v9;
}

uint64_t sub_1DD580F70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  v1 = sub_1DD63FE58();
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v1;
  *(inited + 40) = v2;
  v3 = sub_1DD5804E4(0xD000000000000033, 0x80000001DD6732E0, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v3;
}

uint64_t sub_1DD581048(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69E7360];
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = v3;
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = a1;
  v4 = sub_1DD5805F0(0xD000000000000033, 0x80000001DD673320, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  return v4;
}

uint64_t sub_1DD581118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  v9 = MEMORY[0x1E69E6158];
  v11 = *(v3 + 8);
  v10 = *(v3 + 16);
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v11;
  *(inited + 40) = v10;
  *(inited + 96) = MEMORY[0x1E69E7360];
  *(inited + 104) = &off_1F58C4E70;
  *(inited + 72) = a1;
  *(inited + 136) = v9;
  *(inited + 144) = &off_1F58C4E78;
  *(inited + 112) = a2;
  *(inited + 120) = a3;

  sub_1DD4061B8(0xD00000000000008CLL, 0x80000001DD673250, inited);
  swift_setDeallocating();
  sub_1DD46CB4C();
  if (!v4)
  {
    v12 = sub_1DD4DC214();
    inited = sub_1DD41859C(v12);
  }

  return inited;
}

uint64_t sub_1DD58125C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v1 = OUTLINED_FUNCTION_7(v0);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_allocate_value_buffer(v8, qword_1EE16F038);
  v11 = __swift_project_value_buffer(v0, qword_1EE16F038);
  sub_1DD628068(0xD00000000000001ALL, v6);
  swift_storeEnumTagMultiPayload();
  sub_1DD4DDCBC(v6, v10, &qword_1ECCDCCA0, &qword_1DD64AED0);
  return sub_1DD4DDCBC(v10, v11, &qword_1ECCDCCA0, &qword_1DD64AED0);
}

uint64_t static RelationshipDB.superSlowFetchEverything()()
{
  result = sub_1DD440D24(&v3);
  if (!v0)
  {
    sub_1DD4061B8(0xD0000000000000B0, 0x80000001DD6730F0, MEMORY[0x1E69E7CC0]);

    v2 = sub_1DD57F940();

    return v2;
  }

  return result;
}

uint64_t type metadata accessor for RelationshipAliasGenerator()
{
  result = qword_1EE163D88;
  if (!qword_1EE163D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5814C8()
{
  sub_1DD581554();
  if (v0 <= 0x3F)
  {
    type metadata accessor for StringTokenizer();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD581554()
{
  if (!qword_1EE1604F0)
  {
    v0 = type metadata accessor for DBLoader();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1604F0);
    }
  }
}

void sub_1DD5815AC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1DD63CE68();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v35 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *(v8 + 16);
  v16(&v32 - v14, a1, v5);
  v17 = sub_1DD5CF3F4(v15, 1, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    v33 = *(v8 + 8);
    v34 = a2;
    v33(v15, v5);
    v18 = [objc_opt_self() defaultManager];
    sub_1DD63CE58();
    v19 = sub_1DD63FDA8();

    v20 = [v18 fileExistsAtPath_];

    if (v20)
    {
      swift_willThrow();
      return;
    }

    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F0C8);
    v23 = v35;
    v16(v35, a1, v5);
    v24 = sub_1DD63F9D8();
    v25 = sub_1DD640368();
    if (os_log_type_enabled(v24, v25))
    {
      OUTLINED_FUNCTION_18_1();
      v26 = v23;
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v27 = 136446210;
      v28 = sub_1DD63CE58();
      v30 = v29;
      v33(v26, v5);
      v31 = sub_1DD39565C(v28, v30, &v36);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1DD38D000, v24, v25, "database at %{public}s does not exist", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      v33(v23, v5);
    }

    v21 = 0;
    a2 = v34;
  }

  else
  {
    v21 = v17;
    (*(v8 + 8))(v15, v5);
  }

  *a2 = v21;
}

uint64_t sub_1DD5818F0@<X0>(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1DD63CE68();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v1 + 104);
  if (*(v1 + v16))
  {
    v17 = *(v1 + v16);
LABEL_6:
    *a1 = v17;
  }

  v22 = a1;
  v18 = qword_1EE165D80;
  swift_beginAccess();
  sub_1DD4DDC08(v1 + v18, v7, &qword_1ECCDBF78, &unk_1DD644440);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DD390754(v7, &qword_1ECCDBF78, &unk_1DD644440);
    v17 = 0;
LABEL_5:
    a1 = v22;
    goto LABEL_6;
  }

  (*(v11 + 32))(v15, v7, v8);
  sub_1DD5815AC(v15, &v23);
  if (!v2)
  {
    (*(v11 + 8))(v15, v8);
    v17 = v23;
    if (v23)
    {
      v20 = *(v1 + v16);
      *(v1 + v16) = v23;
    }

    goto LABEL_5;
  }

  return (*(v11 + 8))(v15, v8);
}

uint64_t sub_1DD581CB8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1DD640E28();
  sub_1DD63FD28();
  v7 = sub_1DD640E78();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DD640CD8() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DD5763B0();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1DD5820C8(v9);
  *v2 = v19;
  return v16;
}

uint64_t sub_1DD581DE0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    type metadata accessor for DateTimeConstraint();
    v8 = *(v4 + 40);
    sub_1DD640E28();
    sub_1DD48E664(v19);
    v9 = sub_1DD640E78();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);

      v14 = sub_1DD48E554(v13, a1);

      if (v14)
      {
        v15 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v2;
        v19[0] = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DD576E28();
          v17 = v19[0];
        }

        v7 = *(*(v17 + 48) + 8 * v11);
        sub_1DD582280(v11);
        *v2 = v19[0];
        return v7;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1DD640808();

  if ((v6 & 1) == 0)
  {

    return 0;
  }

  v7 = sub_1DD581F6C(v5, a1);

  return v7;
}

uint64_t sub_1DD581F6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;

  v6 = sub_1DD6407B8();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1DD56F6B8(v7, v6);
  v19 = v8;
  v9 = *(v8 + 40);
  sub_1DD640E28();

  sub_1DD48E664(&v18);
  v10 = sub_1DD640E78();
  v11 = ~(-1 << *(v8 + 32));
  while (1)
  {
    v12 = v10 & v11;
    if (((*(v8 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
    {
      break;
    }

    type metadata accessor for DateTimeConstraint();
    v13 = *(*(v8 + 48) + 8 * v12);

    v15 = sub_1DD48E554(v14, a2);

    if (v15)
    {

      v16 = *(*(v8 + 48) + 8 * v12);
      sub_1DD582280(v12);
      if (sub_1DD48E554(a2, v16))
      {
        *v3 = v19;
        return v16;
      }

      __break(1u);
      break;
    }

    v10 = v12 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DD5820C8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DD640738();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1DD640E28();

        sub_1DD63FD28();
        v15 = sub_1DD640E78();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1DD582280(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1DD640738();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1DD640E28();

        sub_1DD48E664(v24);
        v13 = sub_1DD640E78();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_15:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

void OUTLINED_FUNCTION_11_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v4[13] = a4;
  v6 = v4[11];
  v7 = a4 + v4[10];
}

void OUTLINED_FUNCTION_12_37()
{

  sub_1DD3BF7FC();
}

unint64_t DateTime.Date.Holiday.Religion.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD5824C4()
{
  result = qword_1ECCDF0A8;
  if (!qword_1ECCDF0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0A8);
  }

  return result;
}

uint64_t sub_1DD582520@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.Holiday.Religion.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8ReligionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5826D4()
{
  result = qword_1ECCDF0B0;
  if (!qword_1ECCDF0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0B0);
  }

  return result;
}

void sub_1DD582738(void *a1, uint64_t a2)
{
  v4 = &selRef_setUnderlyingQueue_;
  v5 = [a1 intent];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 temporalEventTrigger]) == 0 || (v7, v8 = sub_1DD5F3E04(a1), (v30 = v9) == 0))
  {
LABEL_34:

    return;
  }

  v29 = v8;
  v10 = sub_1DD5F3F18(a2);
  v11 = sub_1DD3CC020(v10);
  if (!v11)
  {

LABEL_33:

    goto LABEL_34;
  }

  v12 = v11;
  v28 = v5;
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v31 = v10 & 0xFFFFFFFFFFFFFF8;
  v15 = 0x1E696E000uLL;
  while (1)
  {
    if (v14)
    {
      v16 = MEMORY[0x1E12B2C10](v13, v10);
    }

    else
    {
      if (v13 >= *(v31 + 16))
      {
        goto LABEL_36;
      }

      v16 = *(v10 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v19 = [v16 *(v4 + 96)];
    v20 = *(v15 + 2584);
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
      v27 = v17;
      goto LABEL_24;
    }

    v22 = v21;
    v23 = [v21 targetTask];
    if (!v23)
    {
      v27 = v19;
      v19 = v17;
      goto LABEL_24;
    }

    v24 = sub_1DD582C90(v23);
    if (!v25)
    {
      v27 = v19;
      v19 = v17;
LABEL_23:
      v15 = 0x1E696E000;
LABEL_24:

      goto LABEL_25;
    }

    v12 = v14;
    v14 = v10;
    v10 = v4;
    if (v24 == v29 && v25 == v30)
    {
    }

    else
    {
      v4 = sub_1DD640CD8();

      if ((v4 & 1) == 0)
      {
        v19 = v17;
        OUTLINED_FUNCTION_0_122();
        goto LABEL_23;
      }
    }

    v5 = [v22 temporalEventTrigger];

    OUTLINED_FUNCTION_0_122();
    v15 = 0x1E696E000;
    if (v5)
    {

      goto LABEL_33;
    }

LABEL_25:
    ++v13;
    if (v18 == v12)
    {

      v5 = v28;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1DD5829EC(void *a1, uint64_t a2)
{
  v4 = &selRef_setUnderlyingQueue_;
  v5 = [a1 intent];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = [v6 spatialEventTrigger]) == 0 || (v7, v8 = sub_1DD5F3E04(a1), (v30 = v9) == 0))
  {
LABEL_34:

    return;
  }

  v29 = v8;
  v10 = sub_1DD5F3F18(a2);
  v11 = sub_1DD3CC020(v10);
  if (!v11)
  {

LABEL_33:

    goto LABEL_34;
  }

  v12 = v11;
  v28 = v5;
  v13 = 0;
  v14 = v10 & 0xC000000000000001;
  v31 = v10 & 0xFFFFFFFFFFFFFF8;
  v15 = 0x1E696E000uLL;
  while (1)
  {
    if (v14)
    {
      v16 = MEMORY[0x1E12B2C10](v13, v10);
    }

    else
    {
      if (v13 >= *(v31 + 16))
      {
        goto LABEL_36;
      }

      v16 = *(v10 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v19 = [v16 *(v4 + 96)];
    v20 = *(v15 + 2584);
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
      v27 = v17;
      goto LABEL_24;
    }

    v22 = v21;
    v23 = [v21 targetTask];
    if (!v23)
    {
      v27 = v19;
      v19 = v17;
      goto LABEL_24;
    }

    v24 = sub_1DD582C90(v23);
    if (!v25)
    {
      v27 = v19;
      v19 = v17;
LABEL_23:
      v15 = 0x1E696E000;
LABEL_24:

      goto LABEL_25;
    }

    v12 = v14;
    v14 = v10;
    v10 = v4;
    if (v24 == v29 && v25 == v30)
    {
    }

    else
    {
      v4 = sub_1DD640CD8();

      if ((v4 & 1) == 0)
      {
        v19 = v17;
        OUTLINED_FUNCTION_0_122();
        goto LABEL_23;
      }
    }

    v5 = [v22 spatialEventTrigger];

    OUTLINED_FUNCTION_0_122();
    v15 = 0x1E696E000;
    if (v5)
    {

      goto LABEL_33;
    }

LABEL_25:
    ++v13;
    if (v18 == v12)
    {

      v5 = v28;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1DD582C90(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t type metadata accessor for RequestMatchSignalProvider()
{
  result = qword_1EE161310;
  if (!qword_1EE161310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD582D74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_1DD582DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1DD582E38()
{
  OUTLINED_FUNCTION_31_20();
  v14 = v1;
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v6 = *v4;
      v15[0] = *(v4 - 1);
      v15[1] = v6;

      v14(&v16, v15);
      if (v0)
      {

        goto LABEL_16;
      }

      v7 = v16;
      v8 = *(v16 + 16);
      v9 = *(v5 + 16);
      if (__OFADD__(v9, v8))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_17_34();
        sub_1DD3BE2A4();
        v5 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v8)
        {
          goto LABEL_19;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v11 = *(v5 + 16);
          v12 = __OFADD__(v11, v8);
          v13 = v11 + v8;
          if (v12)
          {
            goto LABEL_20;
          }

          *(v5 + 16) = v13;
        }
      }

      else
      {

        if (v8)
        {
          goto LABEL_18;
        }
      }

      v4 += 2;
      if (!--v3)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_16:
    OUTLINED_FUNCTION_19_32();
  }
}

void sub_1DD582FA8(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  v18 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 == v5)
    {
      goto LABEL_16;
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    a1(&v19, a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v4)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    v8 = v5;
    v9 = v19;
    v10 = *(v19 + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BF7FC();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v10)
      {
        goto LABEL_19;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v13 = *(v6 + 16);
        v14 = __OFADD__(v13, v10);
        v15 = v13 + v10;
        if (v14)
        {
          goto LABEL_20;
        }

        *(v6 + 16) = v15;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_18;
      }
    }

    v5 = v8 + 1;
    v4 = 0;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD583174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_42(a1, a2, a3);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v35 == v5)
    {
      goto LABEL_16;
    }

    v10 = sub_1DD63FA38();
    OUTLINED_FUNCTION_51(v10);
    v12 = v11;
    v14 = v13;
    v15 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16 = *(v14 + 72);
    v17 = OUTLINED_FUNCTION_32_18(v15);
    v19 = v18(v17);
    if (v3)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    OUTLINED_FUNCTION_30_17(v19, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, v37);
    if (v27)
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v6 > *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44();
      v9 = v28;
    }

    if (*(v8 + 16))
    {
      v6 = (*(v9 + 24) >> 1) - *(v9 + 16);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      if (v6 < v7)
      {
        goto LABEL_19;
      }

      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = *(v29 + 72);
      swift_arrayInitWithCopy();

      if (v7)
      {
        v32 = *(v9 + 16);
        v27 = __OFADD__(v32, v7);
        v33 = v32 + v7;
        if (v27)
        {
          goto LABEL_20;
        }

        *(v9 + 16) = v33;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_1DD583330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_42(a1, a2, a3);
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v35 == v5)
    {
      goto LABEL_16;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
    OUTLINED_FUNCTION_51(v10);
    v12 = v11;
    v14 = v13;
    v15 = v4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v16 = *(v14 + 72);
    v17 = OUTLINED_FUNCTION_32_18(v15);
    v19 = v18(v17);
    if (v3)
    {

LABEL_16:
      OUTLINED_FUNCTION_19_32();
      return;
    }

    OUTLINED_FUNCTION_30_17(v19, v20, v21, v22, v23, v24, v25, v26, v34, v35, v36, v37);
    if (v27)
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v6 > *(v9 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44();
      v9 = v28;
    }

    if (*(v8 + 16))
    {
      v6 = (*(v9 + 24) >> 1) - *(v9 + 16);
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      if (v6 < v7)
      {
        goto LABEL_19;
      }

      v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v31 = *(v29 + 72);
      swift_arrayInitWithCopy();

      if (v7)
      {
        v32 = *(v9 + 16);
        v27 = __OFADD__(v32, v7);
        v33 = v32 + v7;
        if (v27)
        {
          goto LABEL_20;
        }

        *(v9 + 16) = v33;
      }
    }

    else
    {

      if (v7)
      {
        goto LABEL_18;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DD5834F8()
{
  OUTLINED_FUNCTION_31_20();
  v18 = v1;
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return OUTLINED_FUNCTION_19_32();
  }

  while (1)
  {
    memcpy(__dst, v4, 0x108uLL);
    memcpy(__src, v4, sizeof(__src));
    sub_1DD3C9478(__dst, v19);
    v18(&v22, __src);
    if (v0)
    {
      memcpy(v19, __src, sizeof(v19));
      sub_1DD3C9580(v19);

      return OUTLINED_FUNCTION_19_32();
    }

    memcpy(v19, __src, sizeof(v19));
    result = sub_1DD3C9580(v19);
    v7 = v22;
    v8 = *(v22 + 16);
    v9 = *(v5 + 16);
    if (__OFADD__(v9, v8))
    {
      break;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v9 + v8 > *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_17_34();
      sub_1DD3BEC44();
      v5 = v10;
    }

    if (*(v7 + 16))
    {
      v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      v12 = *(result - 8);
      if (v11 < v8)
      {
        goto LABEL_19;
      }

      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = *(v12 + 72);
      swift_arrayInitWithCopy();

      if (v8)
      {
        v15 = *(v5 + 16);
        v16 = __OFADD__(v15, v8);
        v17 = v15 + v8;
        if (v16)
        {
          goto LABEL_20;
        }

        *(v5 + 16) = v17;
      }
    }

    else
    {

      if (v8)
      {
        goto LABEL_18;
      }
    }

    v4 += 264;
    if (!--v3)
    {
      return OUTLINED_FUNCTION_19_32();
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DD5836DC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v27 - v8);
  v11 = *v1;
  v10 = v1[1];
  v12 = *(*v1 + 16);
  if (v10 == v12)
  {
    OUTLINED_FUNCTION_28_12();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    if (v10 >= v12)
    {
      __break(1u);
    }

    else
    {
      matched = type metadata accessor for ContactMatchRuntimeData(0);
      OUTLINED_FUNCTION_51(matched);
      v20 = v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v19 + 72) * v10;
      v1[1] = v10 + 1;
      v21 = *(v3 + 48);
      v22 = v1[2];
      *v9 = v22;
      result = sub_1DD586E9C(v20, v9 + v21);
      if (!__OFADD__(v22, 1))
      {
        v1[2] = v22 + 1;
        sub_1DD4DDCBC(v9, a1, &qword_1ECCDBE50, &unk_1DD654F80);
        OUTLINED_FUNCTION_28_12();
        return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DD583860@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  OUTLINED_FUNCTION_7(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v27 - v8);
  v11 = *v1;
  v10 = v1[1];
  v12 = *(*v1 + 16);
  if (v10 == v12)
  {
    OUTLINED_FUNCTION_28_12();

    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    if (v10 >= v12)
    {
      __break(1u);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      OUTLINED_FUNCTION_51(v17);
      v20 = v11 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v19 + 72) * v10;
      v1[1] = v10 + 1;
      v21 = *(v3 + 48);
      v22 = v1[2];
      *v9 = v22;
      result = sub_1DD4DDC08(v20, v9 + v21, &qword_1ECCDBBE8, &qword_1DD644470);
      if (!__OFADD__(v22, 1))
      {
        v1[2] = v22 + 1;
        sub_1DD4DDCBC(v9, a1, &qword_1ECCDC238, &unk_1DD654E40);
        OUTLINED_FUNCTION_28_12();
        return __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5839F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v24 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        v17 = *(a1 + 40);
        sub_1DD640E28();

        sub_1DD63FD28();
        v18 = sub_1DD640E78();
        v19 = ~(-1 << *(a1 + 32));
        do
        {
          v20 = v18 & v19;
          if (((*(v9 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
          {

            return 0;
          }

          v21 = (*(a1 + 48) + 16 * v20);
          if (*v21 == v16 && v21[1] == v15)
          {
            break;
          }

          v23 = sub_1DD640CD8();
          v18 = v20 + 1;
        }

        while ((v23 & 1) == 0);

        v2 = v24;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD583BB8(uint64_t *a1)
{
  v236 = a1;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  OUTLINED_FUNCTION_0(v261);
  v255 = v1;
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v262 = &v228 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD68, &unk_1DD65F510);
  OUTLINED_FUNCTION_7(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v246 = (&v228 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD70, &qword_1DD654CC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_2_1();
  v252 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v250 = (&v228 - v15);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_0(v265);
  v251 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v239 = (&v228 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_2_1();
  v238 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v237 = &v228 - v25;
  v26 = type metadata accessor for Signpost();
  v27 = OUTLINED_FUNCTION_7(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v228 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_150;
  }

LABEL_2:
  v32 = qword_1EE16F0C0;
  v33 = (v31 + *(v26 + 20));
  *v33 = "RequestMatchSignalProvider";
  *(v33 + 1) = 26;
  v33[16] = 2;
  v34 = v32;
  sub_1DD63F9B8();
  *(v31 + *(v26 + 24)) = v34;
  v35 = v34;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1DD643F90;
  v37 = sub_1DD6408F8();
  v39 = v38;
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1DD392BD8();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  v228 = v35;
  v229 = v31;
  sub_1DD63F998();

  v40 = v236;
  v41 = *v236;

  v42 = v41;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD586A30(v41);
    v42 = v227;
  }

  v43 = 0;
  v260 = 0;
  v44 = *(v41 + 16);
  v45 = v41 + 32;
  v242 = *MEMORY[0x1E69964B0];
  v241 = v242 + 16;
  *v40 = v42;
  v26 = &qword_1ECCDBBE8;
  *(&v46 + 1) = 14;
  v235 = xmmword_1DD6504B0;
  *&v46 = 136315906;
  v234 = v46;
  v47 = v237;
  v253 = v6;
  v231 = v44;
  v232 = v41;
  v230 = v41 + 32;
  while (1)
  {
    if (v43 == v44)
    {
      goto LABEL_133;
    }

    if (v43 >= *(v41 + 16))
    {
      goto LABEL_149;
    }

    v48 = *(v45 + 8 * v43);
    v264 = v43;
    v233 = v43 + 1;
    v279 = v48;
    v280 = 0;
    v281 = 0;
    *v40 = v42;

LABEL_8:
    v49 = v238;
    sub_1DD583860(v238);
    sub_1DD4DDCBC(v49, v47, &qword_1ECCDC240, &qword_1DD645AA0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
    if (__swift_getEnumTagSinglePayload(v47, 1, v50) != 1)
    {
      break;
    }

    v41 = v232;
    v43 = v233;
    v45 = v230;
    v44 = v231;
  }

  v266 = v42;
  v263 = *v47;
  v51 = v239;
  sub_1DD4DDCBC(v47 + *(v50 + 48), v239, &qword_1ECCDBBE8, &qword_1DD644470);
  v277 = 0uLL;
  *v278 = 0;
  memset(&v278[8], 0, 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0C8, &qword_1DD65D818);
  v52 = swift_allocObject();
  *(v52 + 16) = v235;
  v53 = v51[6];
  *(v52 + 32) = v51[5];
  v259 = v52 + 32;
  *(v52 + 40) = v53;
  KeyPath = swift_getKeyPath();
  v55 = v51[7];
  v56 = v51[8];
  *(v52 + 48) = KeyPath;
  *(v52 + 56) = v55;
  *(v52 + 64) = v56;
  v57 = swift_getKeyPath();
  v58 = v51[9];
  v59 = v51[10];
  *(v52 + 72) = v57;
  *(v52 + 80) = v58;
  *(v52 + 88) = v59;
  v60 = swift_getKeyPath();
  v61 = v51[17];
  v62 = v51[18];
  *(v52 + 96) = v60;
  *(v52 + 104) = v61;
  *(v52 + 112) = v62;
  v63 = swift_getKeyPath();
  v64 = v51[15];
  v65 = v51[16];
  *(v52 + 120) = v63;
  *(v52 + 128) = v64;
  *(v52 + 136) = v65;
  v66 = swift_getKeyPath();
  v67 = v51[3];
  v68 = v51[4];
  *(v52 + 144) = v66;
  *(v52 + 152) = v67;
  *(v52 + 160) = v68;
  v69 = swift_getKeyPath();
  v70 = v51[13];
  v71 = v51[14];
  *(v52 + 168) = v69;
  *(v52 + 176) = v70;
  *(v52 + 184) = v71;
  v72 = swift_getKeyPath();
  v256 = v52;
  *(v52 + 192) = v72;
  v73 = v51 + *(v265 + 36);
  memcpy(v282, v73 + 8, 0x108uLL);

  v74 = v254;
  v268 = sub_1DD586B64(v254, 1, v282);
  v75 = sub_1DD586D00(v74, 1, v51);
  v257 = v73;
  v258 = v75;
  memcpy(v276, v73 + 8, sizeof(v276));
  v76 = type metadata accessor for StringTokenizer();
  *(&v275[1] + 1) = v76;
  *&v275[2] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v275);
  OUTLINED_FUNCTION_5_76();
  v78 = v77;
  sub_1DD586E9C(v74, v79);
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_31_0();
  *(v81 - 16) = v275;
  *(v81 - 8) = 257;
  OUTLINED_FUNCTION_25_20();
  v26 = v260;
  sub_1DD582E38();
  v83 = v82;

  v84 = sub_1DD41859C(v83);
  __swift_destroy_boxed_opaque_existential_1(v275);
  *&v276[24] = v76;
  *&v276[32] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v276);
  sub_1DD586E9C(v74, boxed_opaque_existential_1);
  sub_1DD40FC64();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_31_0();
  *(v87 - 16) = v276;
  *(v87 - 8) = 257;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v89 = v88;

  v90 = sub_1DD41859C(v89);
  __swift_destroy_boxed_opaque_existential_1(v276);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v91 = sub_1DD63F9F8();
  __swift_project_value_buffer(v91, qword_1EE16F068);
  v92 = v268;

  v93 = v258;

  v94 = sub_1DD63F9D8();
  v95 = sub_1DD640368();

  v96 = os_log_type_enabled(v94, v95);
  v240 = v90;
  v267 = v84;
  if (v96)
  {
    v97 = swift_slowAlloc();
    LODWORD(v249) = v95;
    v98 = v97;
    v260 = swift_slowAlloc();
    *v276 = v260;
    *v98 = v234;
    v99 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v99, v100);
    OUTLINED_FUNCTION_20_30();

    *(v98 + 4) = v78;
    *(v98 + 12) = 2080;
    v101 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v101, v102);
    OUTLINED_FUNCTION_20_30();

    *(v98 + 14) = v78;
    *(v98 + 22) = 2080;
    v103 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v103, v104);
    OUTLINED_FUNCTION_20_30();

    *(v98 + 24) = v78;
    *(v98 + 32) = 2080;
    v90 = v240;
    v105 = sub_1DD640278();
    OUTLINED_FUNCTION_36_14(v105, v106);
    OUTLINED_FUNCTION_20_30();
    v92 = v268;

    *(v98 + 34) = v78;
    _os_log_impl(&dword_1DD38D000, v94, v249, "primaryQueryTokens: %s\nprimaryMatchTokens: %s\nqueryTokens: %s\nmatchTokens: %s", v98, 0x2Au);
    v107 = v260;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v107, -1, -1);
    MEMORY[0x1E12B3DA0](v98, -1, -1);
  }

  v108 = *(v93 + 16);
  *&v277 = v108;
  if (v90[2])
  {
    v109 = v90;
    v110 = v267;
    v111 = sub_1DD5839F8(v109, v267);
    v108 = *(v93 + 16);
  }

  else
  {
    v111 = 0;
    v110 = v267;
  }

  BYTE8(v277) = v111 & 1;
  if (v108)
  {
    v112 = sub_1DD5839F8(v92, v93);
  }

  else
  {
    v112 = 0;
  }

  v31 = 0;
  BYTE9(v277) = v112 & 1;
  v113 = v110 + 56;
  while (1)
  {
    v114 = (v259 + 24 * v31);
    v115 = *v114;
    v116 = v114[1];
    v117 = HIBYTE(v116) & 0xF;
    if ((v116 & 0x2000000000000000) == 0)
    {
      v117 = *v114 & 0xFFFFFFFFFFFFLL;
    }

    if (v117)
    {
      break;
    }

LABEL_37:
    if (++v31 == 7)
    {

      swift_setDeallocating();
      sub_1DD46CB78();
      if (BYTE13(v277) == 1)
      {
        v136 = v252;
        v6 = v253;
        v42 = v266;
        v137 = v257;
        if (BYTE9(v277) & 1) != 0 || (v278[0] & 1) != 0 || (BYTE10(v277) & 1) != 0 || (BYTE11(v277) & 1) != 0 || (BYTE12(v277) & 1) != 0 || (v278[1] & 1) != 0 || (HIBYTE(v277))
        {
          v138 = 0;
        }

        else
        {
          v138 = v137[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)] ^ 1;
        }
      }

      else
      {
        v138 = 0;
        v136 = v252;
        v6 = v253;
        v42 = v266;
        v137 = v257;
      }

      BYTE14(v277) = v138 & 1;
      v245 = *(v137 + 27);
      if (!v245)
      {

        v47 = v237;
        goto LABEL_122;
      }

      v139 = *(v137 + 26);
      v31 = *(v137 + 29);
      v140 = *(v137 + 30);
      v243 = *(v137 + 28);
      v244 = v139;
      v249 = v137[200];
      v256 = *(v137 + 34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A30(v42);
        v42 = v224;
      }

      v141 = 0;
      v142 = 0;
      v266 = v42;
      v267 = v42 + 32;
      v247 = v31;
      v248 = v140;
      while (2)
      {
        v143 = *(v256 + 16);
        LODWORD(v259) = v141;
        if (v142 == v143)
        {
          v258 = v142;
          v144 = 1;
        }

        else
        {
          if (v142 >= v143)
          {
            goto LABEL_145;
          }

          v145 = v142 + 1;
          v146 = v256 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v142;
          v147 = *(v6 + 48);
          v148 = v246;
          *v246 = v142;
          sub_1DD4DDC08(v146, v148 + v147, &qword_1ECCDBBD8, &unk_1DD645A90);
          sub_1DD4DDCBC(v148, v136, &qword_1ECCDDD68, &unk_1DD65F510);
          v144 = 0;
          v258 = v145;
        }

        __swift_storeEnumTagSinglePayload(v136, v144, 1, v6);
        v149 = v250;
        sub_1DD4DDCBC(v136, v250, &qword_1ECCDDD70, &qword_1DD654CC0);
        if (__swift_getEnumTagSinglePayload(v149, 1, v6) != 1)
        {
          v268 = *v149;
          v150 = v149 + *(v6 + 48);
          v151 = v262;
          sub_1DD4DDCBC(v150, v262, &qword_1ECCDBBD8, &unk_1DD645A90);
          memcpy(v276, v151, 0x4AuLL);
          v152 = v249;
          v260 = v26;
          if (v249 && v276[16] != v249)
          {
LABEL_59:
            v26 = 0;
            goto LABEL_85;
          }

          if (v249)
          {
            if (v249 == 1)
            {
              v153 = OUTLINED_FUNCTION_27_24();
              sub_1DD3C6A40(v153, v154);
              OUTLINED_FUNCTION_21_29();
              sub_1DD63FDA8();
              v155 = OUTLINED_FUNCTION_34_17();
              v157 = v156(v155);
              goto LABEL_65;
            }

            sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
            v166 = OUTLINED_FUNCTION_27_24();
            sub_1DD3C6A40(v166, v167);
LABEL_68:

            OUTLINED_FUNCTION_21_29();
            v168 = sub_1DD40B8E0();
            v169 = sub_1DD415480(v168);
            if (v170)
            {
              v163 = v169;
            }

            else
            {
              v163 = 0;
            }

            if (v170)
            {
              v165 = v170;
            }

            else
            {
              v165 = 0xE000000000000000;
            }
          }

          else
          {
            *&v271 = v31;
            *(&v271 + 1) = v140;
            v269 = 64;
            v270 = 0xE100000000000000;
            v158 = OUTLINED_FUNCTION_27_24();
            sub_1DD3C6A40(v158, v159);
            sub_1DD3B7F10();
            v151 = &v271;
            if ((sub_1DD6406D8() & 1) == 0)
            {
              sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_21_29();
            sub_1DD63FDA8();
            v160 = OUTLINED_FUNCTION_34_17();
            v157 = v161(v160);
LABEL_65:
            v162 = v157;

            v163 = sub_1DD63FDD8();
            v165 = v164;
          }

          v171 = HIBYTE(v165) & 0xF;
          if ((v165 & 0x2000000000000000) == 0)
          {
            v171 = v163 & 0xFFFFFFFFFFFFLL;
          }

          if (!v171 || (v163 == *&v276[56] ? (v172 = v165 == *&v276[64]) : (v172 = 0), v172))
          {
          }

          else
          {
            v173 = sub_1DD640CD8();

            if ((v173 & 1) == 0)
            {
              sub_1DD3C6A9C(v276);
              goto LABEL_59;
            }
          }

          memcpy(v275, v276, 0x4AuLL);
          LOBYTE(v271) = v152;
          *(&v271 + 1) = v244;
          *&v272 = v245;
          *(&v272 + 1) = v243;
          *&v273 = v31;
          *(&v273 + 1) = v140;
          sub_1DD412278();
          v175 = v174;
          sub_1DD3C6A9C(v276);
          v26 = v175;
LABEL_85:
          memcpy(v275, v262, 0x4AuLL);
          if (LOBYTE(v275[1]) == 2)
          {
            sub_1DD3C6A40(v275, &v271);
            OUTLINED_FUNCTION_21_29();
            if (sub_1DD63FF08() < 2 || (OUTLINED_FUNCTION_21_29(), sub_1DD63FF08() > 4))
            {
              sub_1DD3C6A9C(v275);
              v176 = 0;
LABEL_91:
              v31 = v26 != 0;
              v177 = v264;
              if (v264 >= *(v42 + 16))
              {
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
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
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

              v178 = v267;
              v179 = *(v267 + 8 * v264);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v178 + 8 * v177) = v179;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1DD586A18(v179);
                v179 = v197;
                *(v267 + 8 * v264) = v197;
              }

              if ((v263 & 0x8000000000000000) != 0)
              {
                goto LABEL_135;
              }

              if (v263 >= *(v179 + 16))
              {
                goto LABEL_136;
              }

              LODWORD(v257) = v176;
              v181 = (*(v251 + 80) + 32) & ~*(v251 + 80);
              v6 = *(v251 + 72) * v263;
              v182 = OUTLINED_FUNCTION_12_38(v179 + v181);
              *(v42 + 272) = v179;
              if ((v182 & 1) == 0)
              {
                sub_1DD586A48(v179);
                v179 = v198;
                *(v42 + 272) = v198;
              }

              if ((v268 & 0x8000000000000000) != 0)
              {
                goto LABEL_137;
              }

              if (v268 >= *(v179 + 16))
              {
                goto LABEL_138;
              }

              *(v179 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v268 + *(v261 + 36) + 3) = v26 != 0;
              *(v42 + 272) = v179;
              v183 = v264;
              if (v264 >= *(v266 + 16))
              {
                goto LABEL_139;
              }

              v31 = v26;
              v26 = v267;
              v184 = *(v267 + 8 * v264);
              v185 = swift_isUniquelyReferenced_nonNull_native();
              *(v26 + 8 * v183) = v184;
              if ((v185 & 1) == 0)
              {
                sub_1DD586A18(v184);
                v184 = v199;
                *(v267 + 8 * v183) = v199;
              }

              if (v263 >= *(v184 + 16))
              {
                goto LABEL_140;
              }

              v26 = v31;
              v186 = OUTLINED_FUNCTION_12_38(v184 + v181);
              *(v183 + 272) = v184;
              if ((v186 & 1) == 0)
              {
                sub_1DD586A48(v184);
                v184 = v200;
                *(v183 + 272) = v200;
              }

              v187 = v264;
              if (v268 >= *(v184 + 16))
              {
                goto LABEL_141;
              }

              OUTLINED_FUNCTION_33_14();
              *(v189 + 2) = v188;
              if (v187 >= *(v190 + 16))
              {
                goto LABEL_142;
              }

              v191 = v267;
              v192 = *(v267 + 8 * v187);
              v193 = swift_isUniquelyReferenced_nonNull_native();
              *(v191 + 8 * v187) = v192;
              if ((v193 & 1) == 0)
              {
                sub_1DD586A18(v192);
                v192 = v201;
                *(v267 + 8 * v187) = v201;
              }

              v26 = v260;
              if (v263 >= *(v192 + 16))
              {
                goto LABEL_143;
              }

              v194 = OUTLINED_FUNCTION_12_38(v192 + v181);
              *(v187 + 272) = v192;
              if ((v194 & 1) == 0)
              {
                sub_1DD586A48(v192);
                *(v187 + 272) = v202;
              }

              sub_1DD390754(v262, &qword_1ECCDBBD8, &unk_1DD645A90);
              v140 = v248;
              if (v268 >= *(*(v187 + 272) + 16))
              {
                goto LABEL_144;
              }

              OUTLINED_FUNCTION_33_14();
              *(v195 + 4) = v257 & 1;
              *(v187 + 272) = v196;
              v136 = v252;
              v6 = v253;
              v42 = v266;
              v31 = v247;
              v142 = v258;
              continue;
            }
          }

          else
          {
            sub_1DD3C6A40(v275, &v271);
          }

          v271 = *(&v275[3] + 8);
          v269 = v31;
          v270 = v140;
          sub_1DD3B7F10();
          v176 = sub_1DD6406D8();
          sub_1DD3C6A9C(v275);
          goto LABEL_91;
        }

        break;
      }

      v47 = v237;
      if (v259)
      {

        v278[2] = 1;
      }

      else if (*(*(v239 + *(type metadata accessor for Contact() + 80)) + 16))
      {
        v203 = sub_1DD63FE58();
        v205 = sub_1DD47EEBC(v203, v204, v240);

        if (v205)
        {
          *&v278[2] = 257;
        }
      }

      else
      {
      }

LABEL_122:
      *v276 = v277;
      *&v276[16] = *v278;
      *&v276[32] = *&v278[16];
      *&v276[48] = *&v278[32];
      v206 = OUTLINED_FUNCTION_27_24();
      sub_1DD4338FC(v206, v207);
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v260 = v26;
      if ((v208 & 1) == 0)
      {
        sub_1DD586A30(v42);
        v42 = v222;
      }

      v26 = v264;
      if (v264 >= *(v42 + 16))
      {
LABEL_146:
        __break(1u);
      }

      else
      {
        v209 = v42 + 32;
        v210 = *(v42 + 32 + 8 * v264);
        v211 = swift_isUniquelyReferenced_nonNull_native();
        *(v42 + 32 + 8 * v26) = v210;
        if ((v211 & 1) == 0)
        {
          sub_1DD586A18(v210);
          *(v209 + 8 * v264) = v223;
        }

        v271 = v277;
        v272 = *v278;
        v273 = *&v278[16];
        v274 = *&v278[32];
        sub_1DD4339AC(&v271);
        v26 = &qword_1ECCDBBE8;
        if ((v263 & 0x8000000000000000) == 0)
        {
          v212 = *(v209 + 8 * v264);
          if (v263 < *(v212 + 16))
          {
            v213 = v212 + ((*(v251 + 80) + 32) & ~*(v251 + 80)) + *(v251 + 72) * v263;
            v214 = *(v265 + 36);
            v215 = v213 + v214 + *(type metadata accessor for ContactResolver.SignalSet(0) + 132);
            v217 = *(v215 + 16);
            v216 = *(v215 + 32);
            v218 = *v215;
            *&v275[3] = *(v215 + 48);
            v275[1] = v217;
            v275[2] = v216;
            v275[0] = v218;
            v219 = *&v276[48];
            v221 = *&v276[16];
            v220 = *&v276[32];
            *v215 = *v276;
            *(v215 + 16) = v221;
            *(v215 + 32) = v220;
            *(v215 + 48) = v219;
            sub_1DD4339AC(v275);
            v40 = v236;
            *v236 = v42;
            sub_1DD390754(v239, &qword_1ECCDBBE8, &qword_1DD644470);
            goto LABEL_8;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          swift_once();
          goto LABEL_2;
        }
      }

      __break(1u);
      goto LABEL_148;
    }
  }

  v118 = v114[2];
  v119 = v114[1];

  v260 = v118;

  v120 = v115;
  v121 = v254;
  StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v120, v116, 1, 1);
  OUTLINED_FUNCTION_20_30();

  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_31_0();
  *(v123 - 16) = v121;
  sub_1DD582E38();
  v268 = v124;

  v125 = 1 << *(v110 + 32);
  if (v125 < 64)
  {
    v126 = ~(-1 << v125);
  }

  else
  {
    v126 = -1;
  }

  v127 = v126 & *(v110 + 56);
  v128 = (v125 + 63) >> 6;

  v130 = 0;
  while (v127)
  {
    v131 = v130;
LABEL_33:
    v132 = (*(v267 + 48) + ((v131 << 10) | (16 * __clz(__rbit64(v127)))));
    v133 = v132[1];
    v127 &= v127 - 1;
    *v276 = *v132;
    *&v276[8] = v133;
    MEMORY[0x1EEE9AC00](v129);

    v134 = sub_1DD450388();

    if (v134)
    {
      v135 = 1;
LABEL_36:
      v110 = v267;

      v276[0] = v135;
      swift_setAtWritableKeyPath();

      goto LABEL_37;
    }
  }

  while (1)
  {
    v131 = v130 + 1;
    if (__OFADD__(v130, 1))
    {
      break;
    }

    if (v131 >= v128)
    {
      v135 = 0;
      goto LABEL_36;
    }

    v127 = *(v113 + 8 * v131);
    ++v130;
    if (v127)
    {
      v130 = v131;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_133:

  sub_1DD6404C8();
  v225 = v229;
  sub_1DD63F9A8();
  return sub_1DD41BFFC(v225);
}

BOOL sub_1DD585198(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || ((*(a1 + 11) ^ *(a2 + 11)) & 1) != 0 || ((*(a1 + 12) ^ *(a2 + 12)) & 1) != 0 || ((*(a1 + 13) ^ *(a2 + 13)) & 1) != 0 || ((*(a1 + 14) ^ *(a2 + 14)) & 1) != 0 || ((*(a1 + 15) ^ *(a2 + 15)) & 1) != 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0 || ((*(a1 + 17) ^ *(a2 + 17)) & 1) != 0 || ((*(a1 + 18) ^ *(a2 + 18)) & 1) != 0 || ((*(a1 + 19) ^ *(a2 + 19)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 32);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v9 = a2;
    v10 = a1;
    v5 = *(a1 + 24) == *(a2 + 24) && v3 == v4;
    if (!v5 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = a2;
    v10 = a1;
    if (v4)
    {
      return 0;
    }
  }

  v6 = *(v10 + 48);
  v7 = *(v9 + 48);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v10 + 40) == *(v9 + 40) && v6 == v7;
    return v8 || (sub_1DD640CD8() & 1) != 0;
  }

  return !v7;
}

double sub_1DD585314@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 40);
  v11 = *(v1 + 24);
  v12 = v4;
  v10 = *(v1 + 8);
  sub_1DD55D81C(v3);
  v6 = v5;
  sub_1DD4338FC(v1, &v14);
  sub_1DD390754(&v11, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD390754(&v12, &unk_1ECCDFDF0, &unk_1DD644950);
  *v13 = v6;
  *&v13[8] = v10;
  memset(&v13[24], 0, 32);
  v14 = v6;
  v15 = v10;
  v16 = 0u;
  v17 = 0u;
  sub_1DD4338FC(v13, v9);
  sub_1DD4339AC(&v14);
  v7 = *&v13[16];
  *a1 = *v13;
  *(a1 + 16) = v7;
  result = *&v13[32];
  *(a1 + 32) = *&v13[32];
  *(a1 + 48) = *&v13[48];
  return result;
}

uint64_t sub_1DD5853FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v11 = *a1;
  v10 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643F80;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v19[0] = v11;
  v19[1] = v10;
  v13 = *(type metadata accessor for StringTokenizer() + 20);
  v14 = sub_1DD63D168();
  (*(*(v14 - 8) + 16))(v9, a2 + v13, v14);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  sub_1DD3B7F10();

  v15 = sub_1DD6406C8();
  v17 = v16;
  result = sub_1DD390754(v9, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *(v12 + 48) = v15;
  *(v12 + 56) = v17;
  *a3 = v12;
  return result;
}

uint64_t sub_1DD585590(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001DD667440 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726575516C6C61 && a2 == 0xEF6465686374614DLL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001DD673400 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001DD673420 == a2;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001DD673440 == a2;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001DD673460 == a2;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x80000001DD673480 == a2;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001DD667130 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x656D616E6B63696ELL && a2 == 0xEF6465686374614DLL;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000011 && 0x80000001DD6734A0 == a2;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x80000001DD6734C0 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000012 && 0x80000001DD6734E0 == a2;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD00000000000001BLL && 0x80000001DD673500 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000012 && 0x80000001DD673520 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0xD000000000000014 && 0x80000001DD673540 == a2)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_1DD640CD8();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD585A10(char a1)
{
  result = 0x79726575516C6C61;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 6:
    case 7:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D616E6B63696ELL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
    case 13:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1DD585B98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0B8, &qword_1DD65D800);
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD58663C();
  sub_1DD640EF8();
  v14 = *v3;
  v32[15] = 0;
  OUTLINED_FUNCTION_3_7();
  sub_1DD640C48();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v32[14] = 1;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v16 = *(v3 + 9);
    v32[13] = 2;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v17 = *(v3 + 10);
    v32[12] = 3;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v18 = *(v3 + 11);
    v32[11] = 4;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v19 = *(v3 + 12);
    v32[10] = 5;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v20 = *(v3 + 13);
    v32[9] = 6;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v21 = *(v3 + 14);
    v32[8] = 7;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v22 = *(v3 + 15);
    v32[7] = 8;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v23 = *(v3 + 16);
    v32[6] = 9;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v24 = *(v3 + 17);
    v32[5] = 10;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v25 = *(v3 + 18);
    v32[4] = 11;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v26 = *(v3 + 19);
    v32[3] = 12;
    OUTLINED_FUNCTION_3_7();
    sub_1DD640C28();
    v27 = v3[3];
    v28 = v3[4];
    v32[2] = 13;
    sub_1DD640BC8();
    v29 = v3[5];
    v30 = v3[6];
    v32[1] = 14;
    sub_1DD640BC8();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_1DD585E8C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0C0, &unk_1DD65D808);
  v6 = v5;
  OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v64 - v10;
  v12 = a1[3];
  v13 = a1[4];
  v75 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1DD58663C();
  sub_1DD640ED8();
  if (v2)
  {
    v80 = v2;
    OUTLINED_FUNCTION_1_106();
    OUTLINED_FUNCTION_8_58();
    v6 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v75);
    v85 = v17;
    v86 = v16;
    v87 = v15;
    v88 = v6;
    v89 = a2;
    v90 = v14;
    v91 = v13;
    v92 = v12;
    v93 = v11;
    OUTLINED_FUNCTION_13_42();
    v94 = 0;
    v95 = 0;
    return sub_1DD4339AC(&v85);
  }

  LOBYTE(v85) = 0;
  v74 = sub_1DD640B58();
  OUTLINED_FUNCTION_0_123(1);
  v19 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(2);
  v20 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(3);
  v21 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(4);
  v22 = sub_1DD640B38();
  v73 = v19;
  v23 = v22 & 1;
  OUTLINED_FUNCTION_0_123(5);
  v24 = sub_1DD640B38();
  v72 = v21;
  v25 = v24 & 1;
  OUTLINED_FUNCTION_0_123(6);
  v26 = sub_1DD640B38();
  v70 = v25;
  v71 = v20;
  v69 = a2;
  v27 = v26 & 1;
  OUTLINED_FUNCTION_0_123(7);
  v28 = sub_1DD640B38() & 1;
  OUTLINED_FUNCTION_0_123(8);
  v29 = sub_1DD640B38();
  v80 = 0;
  v66 = v28;
  v67 = v27;
  v65 = v23;
  v15 = v71;
  v16 = v73;
  v68 = v29 & 1;
  OUTLINED_FUNCTION_0_123(9);
  v30 = v80;
  v31 = sub_1DD640B38();
  v80 = v30;
  if (v30)
  {
    v32 = OUTLINED_FUNCTION_7_55();
    v33(v32);
    OUTLINED_FUNCTION_6_66();
    v96 = 0;
LABEL_16:
    OUTLINED_FUNCTION_26_26();
    LOBYTE(a2) = v65;
    v14 = v70;
    LOBYTE(v13) = v67;
    LOBYTE(v12) = v66;
    LOBYTE(v11) = v68;
    v17 = v74;
    goto LABEL_4;
  }

  v96 = v31 & 1;
  OUTLINED_FUNCTION_0_123(10);
  v34 = v80;
  v35 = sub_1DD640B38();
  v80 = v34;
  if (v34)
  {
    v36 = OUTLINED_FUNCTION_7_55();
    v37(v36);
    OUTLINED_FUNCTION_6_66();
    goto LABEL_16;
  }

  v77 = v35 & 1;
  OUTLINED_FUNCTION_0_123(11);
  v38 = v80;
  v39 = sub_1DD640B38();
  v80 = v38;
  if (v38)
  {
    v40 = OUTLINED_FUNCTION_7_55();
    v41(v40);
    v78 = 0;
    v79 = 0;
    v76 = 0;
    goto LABEL_16;
  }

  HIDWORD(v76) = v39 & 1;
  OUTLINED_FUNCTION_0_123(12);
  v42 = v80;
  v43 = sub_1DD640B38();
  v80 = v42;
  if (v42)
  {
    v44 = OUTLINED_FUNCTION_7_55();
    v45(v44);
    v78 = 0;
    v79 = 0;
    LODWORD(v76) = 0;
    goto LABEL_16;
  }

  LODWORD(v76) = v43 & 1;
  OUTLINED_FUNCTION_0_123(13);
  v46 = v80;
  v47 = sub_1DD640AD8();
  v78 = v48;
  v79 = v47;
  v80 = v46;
  if (v46)
  {
    v49 = OUTLINED_FUNCTION_7_55();
    v50(v49);
    v78 = 0;
    v79 = 0;
    goto LABEL_16;
  }

  v97 = 14;
  v51 = sub_1DD640AD8();
  v80 = 0;
  v52 = v51;
  v54 = v53;
  v55 = OUTLINED_FUNCTION_7_55();
  v56(v55);
  v57 = v74;
  *&v81 = v74;
  BYTE8(v81) = v16;
  BYTE9(v81) = v15;
  OUTLINED_FUNCTION_26_26();
  BYTE10(v81) = v6;
  v58 = v65;
  BYTE11(v81) = v65;
  v59 = v70;
  BYTE12(v81) = v70;
  v60 = v67;
  BYTE13(v81) = v67;
  v61 = v66;
  BYTE14(v81) = v66;
  HIBYTE(v81) = v68;
  LOBYTE(v82) = v96;
  BYTE1(v82) = v77;
  BYTE2(v82) = BYTE4(v76);
  BYTE3(v82) = v76;
  *(&v82 + 1) = v79;
  *&v83 = v78;
  *(&v83 + 1) = v52;
  v84 = v54;
  sub_1DD4338FC(&v81, &v85);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v85 = v57;
  v86 = v16;
  v87 = v71;
  v88 = v6;
  v89 = v58;
  v90 = v59;
  v91 = v60;
  v92 = v61;
  v93 = v68;
  OUTLINED_FUNCTION_13_42();
  v94 = v52;
  v95 = v54;
  result = sub_1DD4339AC(&v85);
  v62 = v82;
  v63 = v69;
  *v69 = v81;
  v63[1] = v62;
  v63[2] = v83;
  *(v63 + 6) = v84;
  return result;
}

uint64_t sub_1DD586504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD585590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD58652C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD585A08();
  *a1 = result;
  return result;
}

uint64_t sub_1DD586554(uint64_t a1)
{
  v2 = sub_1DD58663C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD586590(uint64_t a1)
{
  v2 = sub_1DD58663C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD5865CC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD585E8C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t sub_1DD58663C()
{
  result = qword_1EE163D20[0];
  if (!qword_1EE163D20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163D20);
  }

  return result;
}

uint64_t sub_1DD586690()
{
  OUTLINED_FUNCTION_31_20();
  sub_1DD39638C(0, &qword_1ECCDBA80, 0x1E69ACA48);
  return sub_1DD6405B8() & 1;
}

uint64_t sub_1DD5866F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD640CD8() & 1;
  }
}

uint64_t sub_1DD586734(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {
    return 1;
  }

  v7 = a1[3];
  v8 = a2[3];
  v5 = v7 != 0;
  if (!v7)
  {
    if (!v8)
    {
      return v5;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == a2[2] && v7 == v8;
  if (!v9 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  return v5;
}

BOOL sub_1DD5867DC(double *a1, double *a2)
{
  if (*a1 == *a2 && (*(a1 + 1) == *(a2 + 1) ? (v5 = *(a1 + 2) == *(a2 + 2)) : (v5 = 0), (v5 || (sub_1DD640CD8() & 1) != 0) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), v6 || (sub_1DD640CD8() & 1) != 0)))
  {
    return a1[5] == a2[5];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD5868A8()
{
  OUTLINED_FUNCTION_31_20();
  sub_1DD63D0F8();
  sub_1DD3C4E5C();
  return sub_1DD63FD98() & 1;
}

uint64_t sub_1DD586934(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(v3);
    *v1 = result;
  }

  return result;
}

unint64_t sub_1DD586984(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD586A8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1DD6407B8();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1DD640918();
}

uint64_t sub_1DD586B64(uint64_t a1, char a2, void *a3)
{
  OUTLINED_FUNCTION_14();
  v24[3] = type metadata accessor for StringTokenizer();
  v24[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_5_76();
  sub_1DD586E9C(v3, v6);
  memcpy(v23, a3, sizeof(v23));
  sub_1DD41E024();
  v8 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v10 = a3[19];
    v9 = a3[20];
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        v22 = v12 + 1;
        OUTLINED_FUNCTION_87_1();
        v21 = v20;
        sub_1DD3BE2A4();
        v12 = v21;
        v13 = v22;
        v8 = isUniquelyReferenced_nonNull_native;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v15 - 16) = v24;
  *(v15 - 8) = 1;
  *(v15 - 7) = a2 & 1;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v17 = v16;

  v18 = sub_1DD41859C(v17);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v18;
}

uint64_t sub_1DD586D00(uint64_t a1, char a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14();
  v23[3] = type metadata accessor for StringTokenizer();
  v23[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v23);
  OUTLINED_FUNCTION_5_76();
  sub_1DD586E9C(v3, v6);
  isUniquelyReferenced_nonNull_native = sub_1DD40FB18();
  v8 = isUniquelyReferenced_nonNull_native;
  if (!*(isUniquelyReferenced_nonNull_native + 16))
  {
    v10 = *(a3 + 136);
    v9 = *(a3 + 144);
    v11 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v11 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_87_1();
        sub_1DD3BE2A4();
        v8 = isUniquelyReferenced_nonNull_native;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        v22 = v12 + 1;
        OUTLINED_FUNCTION_87_1();
        v21 = v20;
        sub_1DD3BE2A4();
        v12 = v21;
        v13 = v22;
        v8 = isUniquelyReferenced_nonNull_native;
      }

      *(v8 + 16) = v13;
      v14 = v8 + 16 * v12;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
    }
  }

  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_31_0();
  *(v15 - 16) = v23;
  *(v15 - 8) = 1;
  *(v15 - 7) = a2 & 1;
  OUTLINED_FUNCTION_25_20();
  sub_1DD582E38();
  v17 = v16;

  v18 = sub_1DD41859C(v17);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_1DD586E9C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_14();
  v6 = v5(v4);
  OUTLINED_FUNCTION_7(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t getEnumTagSinglePayload for RequestMatchSignalProvider.MatchSignals.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RequestMatchSignalProvider.MatchSignals.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD587060()
{
  result = qword_1ECCDF0D0;
  if (!qword_1ECCDF0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF0D0);
  }

  return result;
}

unint64_t sub_1DD5870B8()
{
  result = qword_1EE163D10;
  if (!qword_1EE163D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D10);
  }

  return result;
}

unint64_t sub_1DD587110()
{
  result = qword_1EE163D18;
  if (!qword_1EE163D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163D18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_75()
{
  *(v3 - 208) = v0;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t OUTLINED_FUNCTION_12_38@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + *(*(v1 + 320) + 36) + v2 + 272);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_13_42()
{
  *(v0 - 128) = *(v0 - 72);
  v1 = *(v0 - 232);
  *(v0 - 127) = *(v0 - 228);
  *(v0 - 126) = v1;
  *(v0 - 125) = *(v0 - 236);
  v2 = *(v0 - 224);
  *(v0 - 120) = *(v0 - 216);
  *(v0 - 112) = v2;
}

uint64_t OUTLINED_FUNCTION_34_17()
{
  v2 = *(v0 + 128);
  result = *(v0 + 136);
  v3 = *(result + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1, unint64_t a2)
{

  return sub_1DD39565C(a1, a2, (v2 + 544));
}

uint64_t sub_1DD587288@<X0>(uint64_t a1@<X8>)
{
  sub_1DD63F488();
  if (sub_1DD63F468() && (sub_1DD63F448(), , sub_1DD63F738(), v3 = v2, , v3))
  {

    sub_1DD63D088();
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_1DD63D0F8();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }
}

uint64_t ResolutionResult.result.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for ResolutionState();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2, v5);
}

uint64_t ResolutionResult.result.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for ResolutionState();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t (*ResolutionResult.resolutionInfo.modify(uint64_t a1, uint64_t a2))(void)
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t ResolutionResult.eraseToAnyResolutionResult()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  return sub_1DD5875C8(v9, a2);
}

uint64_t sub_1DD5875C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ResolutionResult();
  a2[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v6 = *(*(v4 - 8) + 32);

  return v6(boxed_opaque_existential_1, a1, v4);
}

uint64_t static ResolutionState<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a4;
  v56 = a1;
  v57 = a2;
  OUTLINED_FUNCTION_7_0();
  v54 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v50 - v10;
  v55 = v11;
  v12 = type metadata accessor for ResolutionState();
  OUTLINED_FUNCTION_7_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v50 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_7_0();
  v28 = v27;
  v30 = *(v29 + 64);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v50 - v33;
  v36 = *(v35 + 48);
  v53 = v14;
  v37 = *(v14 + 16);
  v37(&v50 - v33, v56, v12, v32);
  (v37)(&v34[v36], v57, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (v37)(v22, v34, v12);
      if (OUTLINED_FUNCTION_11_2() == 1)
      {
        v42 = v54;
        v41 = v55;
        v43 = v51;
        (*(v54 + 32))(v51, &v34[v36], v55);
        v40 = sub_1DD63FD98();
        v44 = *(v42 + 8);
        v44(v43, v41);
        v44(v22, v41);
        goto LABEL_14;
      }

      (*(v54 + 8))(v22, v55);
      goto LABEL_12;
    case 2u:
      (v37)(v19, v34, v12);
      v38 = *v19;
      if (OUTLINED_FUNCTION_11_2() == 2)
      {
        v39 = *&v34[v36];
        v40 = sub_1DD640188();

        goto LABEL_14;
      }

      goto LABEL_12;
    case 3u:
      if (OUTLINED_FUNCTION_11_2() != 3)
      {
        goto LABEL_12;
      }

      v40 = 1;
      goto LABEL_14;
    default:
      (v37)(v25, v34, v12);
      if (OUTLINED_FUNCTION_11_2())
      {
        (*(v54 + 8))(v25, v55);
LABEL_12:
        v40 = 0;
      }

      else
      {
        v46 = v54;
        v45 = v55;
        v47 = v50;
        (*(v54 + 32))(v50, &v34[v36], v55);
        v40 = sub_1DD63FD98();
        v48 = *(v46 + 8);
        v48(v47, v45);
        v48(v25, v45);
LABEL_14:
        v28 = v53;
        TupleTypeMetadata2 = v12;
      }

      (*(v28 + 8))(v34, TupleTypeMetadata2);
      return v40 & 1;
  }
}

uint64_t AnyResolutionResult.unbox<A, B>()@<X0>(uint64_t a1@<X8>)
{
  sub_1DD395720(v1, &v6);
  v3 = type metadata accessor for ResolutionResult();
  v4 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a1, v4 ^ 1u, 1, v3);
}

uint64_t sub_1DD587B68(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = type metadata accessor for ResolutionState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD587BF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v4 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 64);
  v7 = *(v4 - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v4 - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0xFC)
  {
    v12 = 252;
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v6 + v10 + 1;
  v14 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_25;
  }

  v15 = (v13 & ~v10) + v11;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_25:
      if (v9 > 0xFC)
      {
        return __swift_getEnumTagSinglePayload((a1 + v13) & ~v10, v9, v4);
      }

      v21 = *(a1 + v6);
      if (v21 >= 4)
      {
        return (v21 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_25;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 > 3)
    {
      LODWORD(v15) = 4;
    }

    switch(v15)
    {
      case 2:
        LODWORD(v15) = *a1;
        break;
      case 3:
        LODWORD(v15) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v15) = *a1;
        break;
      default:
        LODWORD(v15) = *a1;
        break;
    }
  }

  return v12 + (v15 | v20) + 1;
}

void sub_1DD587D94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v6 = *(a4 + 24);
  v8 = *(*(v7 - 8) + 64);
  v9 = *(v6 - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(v6 - 8);
  v11 = *(v9 + 84);
  if (v11 <= 0xFC)
  {
    v12 = 252;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = *(v9 + 80);
  v14 = v8 + v13 + 1;
  v15 = (v14 & ~v13) + *(v9 + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v11 > 0xFC)
          {
            v25 = &a1[v14] & ~v13;

            __swift_storeEnumTagSinglePayload(v25, a2, v11, v6);
          }

          else if (a2 > 0xFC)
          {
            v26 = (v8 + 1);
            if (v26 <= 3)
            {
              v27 = ~(-1 << (8 * (v8 + 1)));
            }

            else
            {
              v27 = -1;
            }

            if (v8 != -1)
            {
              v28 = v27 & (a2 - 253);
              if (v26 <= 3)
              {
                v29 = v8 + 1;
              }

              else
              {
                v29 = 4;
              }

              bzero(a1, v26);
              switch(v29)
              {
                case 2:
                  *a1 = v28;
                  break;
                case 3:
                  *a1 = v28;
                  a1[2] = BYTE2(v28);
                  break;
                case 4:
                  *a1 = v28;
                  break;
                default:
                  *a1 = v28;
                  break;
              }
            }
          }

          else
          {
            a1[v8] = -a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v24;
          a1[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v15] = v21;
        break;
      case 2:
        *&a1[v15] = v21;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DD588084(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 252) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 4)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 253;
}

void sub_1DD5881A8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFD)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFC)
  {
    v9 = a2 - 253;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DD58836C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD5883AC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t ResolvableContact.candidates.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t ResolvableContact.init(contact:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v23[-v8 - 8];
  v10 = type metadata accessor for Contact();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = type metadata accessor for ContactResolver.SignalSet(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1DD43038C(v17);
  sub_1DD5886C4(a1, v13, type metadata accessor for Contact);
  sub_1DD41D418(v13, v23);
  memcpy(v24, v17 + 8, 0x108uLL);
  sub_1DD3C9580(v24);
  memcpy(v17 + 8, v23, 0x108uLL);
  sub_1DD5886C4(a1, v9, type metadata accessor for Contact);
  sub_1DD5886C4(v17, &v9[*(v5 + 44)], type metadata accessor for ContactResolver.SignalSet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
  v18 = *(v6 + 72);
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD643F90;
  sub_1DD3C68F8(v9, v20 + v19);
  sub_1DD58872C(a1, type metadata accessor for Contact);
  sub_1DD3C6968(v9);
  *a2 = v20;
  return sub_1DD58872C(v17, type metadata accessor for ContactResolver.SignalSet);
}

uint64_t sub_1DD5886C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DD58872C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static Resolver.resolve<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))(MEMORY[0x1E69E7CC0]);
}

{
  return (*(a3 + 16))(MEMORY[0x1E69E7CC0]);
}

const char *static Resolver.resolve(tasks:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0D8, &qword_1DD65DBA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v84 - v6;
  v8 = type metadata accessor for LocationSlotResolutionTask();
  v9 = OUTLINED_FUNCTION_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v86 = v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  v87 = *(v103 - 8);
  v13 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v15 = &v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0E0, &qword_1DD65DBB0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v84 - v18;
  v20 = type metadata accessor for ContactSlotResolutionTask();
  v21 = OUTLINED_FUNCTION_7(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v92 = v25;
  v91 = *(a1 + 16);
  if (!v91)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v84 = v8;
  v85 = v7;
  v26 = 0;
  v89 = a1 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  v88 = v19;
  v90 = v24;
  while (1)
  {
    v94 = v2;
    sub_1DD589204(v89 + 48 * v26, v101);
    sub_1DD395720(v102, __dst);
    v28 = v19;
    v29 = v90;
    v30 = swift_dynamicCast();
    v93 = v26;
    if (v30)
    {
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v29);
      v31 = v28;
      sub_1DD589C6C(v28, v92, type metadata accessor for ContactSlotResolutionTask);
      v32 = v94;
      v33 = ContactSlotResolutionTask.run(withAlreadyResolvedSlots:)();
      v2 = v32;
      if (!v32)
      {
        v34 = *(v33 + 2);
        if (v34)
        {
          v94 = 0;
          v35 = &v33[(*(v87 + 80) + 32) & ~*(v87 + 80)];
          v36 = *(v87 + 72);
          do
          {
            sub_1DD589D24(v35, v15);
            *(&__dst[1] + 1) = v103;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(__dst);
            sub_1DD589D94(v15, boxed_opaque_existential_1);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_0_124();
              v27 = v42;
            }

            v39 = *(v27 + 2);
            v38 = *(v27 + 3);
            if (v39 >= v38 >> 1)
            {
              OUTLINED_FUNCTION_1_0(v38);
              OUTLINED_FUNCTION_4_77();
              v27 = v43;
            }

            *(v27 + 2) = v39 + 1;
            v40 = &v27[32 * v39];
            v41 = __dst[1];
            *(v40 + 2) = __dst[0];
            *(v40 + 3) = v41;
            v35 += v36;
            --v34;
          }

          while (v34);

          v2 = v94;
          v31 = v88;
        }

        else
        {
        }

        v60 = OUTLINED_FUNCTION_2_92();
        sub_1DD589CCC(v60, v61);
        sub_1DD589260(v101);
        v62 = v93;
        v19 = v31;
        goto LABEL_38;
      }

      v72 = OUTLINED_FUNCTION_2_92();
      goto LABEL_44;
    }

    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
    sub_1DD390754(v28, &qword_1ECCDF0E0, &qword_1DD65DBB0);
    sub_1DD395720(v102, &v98);
    if (!swift_dynamicCast())
    {
      break;
    }

    memcpy(__dst, v97, 0x4BuLL);
    v44 = v94;
    DateTimeSlotResolutionTask.run(withAlreadyResolvedSlots:)(&v98);
    v2 = v44;
    if (v44)
    {
      sub_1DD589C18(__dst);
LABEL_45:
      sub_1DD589260(v101);

      return v27;
    }

    v45 = v98;
    LODWORD(v94) = v99;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF108, &qword_1DD65DBD8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v27 = v66;
    }

    v48 = *(v27 + 2);
    v47 = *(v27 + 3);
    if (v48 >= v47 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v47);
      OUTLINED_FUNCTION_4_77();
      v27 = v67;
    }

    sub_1DD589C18(__dst);
    sub_1DD589260(v101);
    *(v27 + 2) = v48 + 1;
    v49 = &v27[32 * v48];
    *(v49 + 4) = v45;
    *(v49 + 40) = v94;
    v50 = *(v97 + 7);
    *(v49 + 41) = *&v97[0];
    *(v49 + 6) = v50;
    *(v49 + 7) = v46;
    v19 = v88;
LABEL_37:
    v62 = v93;
LABEL_38:
    v26 = v62 + 1;
    if (v26 == v91)
    {
      return v27;
    }
  }

  v19 = v28;
  memset(v97, 0, 75);
  sub_1DD390754(v97, &qword_1ECCDF0E8, &qword_1DD65DBB8);
  sub_1DD395720(v102, __dst);
  v52 = v84;
  v51 = v85;
  v53 = swift_dynamicCast();
  v2 = v94;
  if (v53)
  {
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
    sub_1DD589C6C(v51, v86, type metadata accessor for LocationSlotResolutionTask);
    LocationSlotResolutionTask.run(withAlreadyResolvedSlots:)(v95);
    if (v2)
    {
      OUTLINED_FUNCTION_3_76();
      v72 = v86;
LABEL_44:
      sub_1DD589CCC(v72, v73);
      goto LABEL_45;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF100, &qword_1DD65DBD0);
    v54 = swift_allocObject();
    memcpy((v54 + 16), v95, 0x2C9uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v27 = v68;
    }

    v56 = *(v27 + 2);
    v55 = *(v27 + 3);
    if (v56 >= v55 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v55);
      OUTLINED_FUNCTION_4_77();
      v27 = v69;
    }

    OUTLINED_FUNCTION_3_76();
    sub_1DD589CCC(v86, v57);
    sub_1DD589260(v101);
    *(v27 + 2) = v56 + 1;
    v58 = &v27[32 * v56];
    *(v58 + 4) = v54;
    v59 = __dst[0];
    goto LABEL_36;
  }

  __swift_storeEnumTagSinglePayload(v51, 1, 1, v52);
  sub_1DD390754(v51, &qword_1ECCDF0D8, &qword_1DD65DBA8);
  sub_1DD395720(v102, &v98);
  if (swift_dynamicCast())
  {
    __dst[0] = v97[0];
    __dst[1] = v97[1];
    __dst[2] = v97[2];
    LOBYTE(__dst[3]) = v97[3];
    SportsSlotResolutionTask.run(withAlreadyResolvedSlots:)(v96);
    if (v2)
    {
      sub_1DD5892B4(__dst);
      goto LABEL_45;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF0F8, &qword_1DD65DBC8);
    v63 = swift_allocObject();
    memcpy((v63 + 16), v96, 0x81uLL);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_124();
      v27 = v70;
    }

    v65 = *(v27 + 2);
    v64 = *(v27 + 3);
    if (v65 >= v64 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v64);
      OUTLINED_FUNCTION_4_77();
      v27 = v71;
    }

    sub_1DD5892B4(__dst);
    sub_1DD589260(v101);
    *(v27 + 2) = v65 + 1;
    v58 = &v27[32 * v65];
    *(v58 + 4) = v63;
    v59 = v97[0];
LABEL_36:
    *(v58 + 40) = v59;
    *(v58 + 7) = v94;
    goto LABEL_37;
  }

  memset(v97, 0, 49);

  sub_1DD390754(v97, &qword_1ECCDF0F0, &qword_1DD65DBC0);
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v75 = sub_1DD63F9F8();
  __swift_project_value_buffer(v75, qword_1EE16F0C8);
  sub_1DD589204(v101, __dst);
  v76 = sub_1DD63F9D8();
  v77 = sub_1DD640378();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v97[0] = v79;
    *v78 = 136315138;
    v80 = __dst[0];

    sub_1DD589260(__dst);
    v81 = sub_1DD39565C(v80, *(&v80 + 1), v97);

    *(v78 + 4) = v81;
    _os_log_impl(&dword_1DD38D000, v76, v77, "Don't know how to resolve %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1E12B3DA0](v79, -1, -1);
    MEMORY[0x1E12B3DA0](v78, -1, -1);
  }

  else
  {

    sub_1DD589260(__dst);
  }

  v27 = "matchedContactTokens";
  type metadata accessor for InferenceError();
  swift_allocObject();
  v82 = sub_1DD4DE96C(71, 0, 0xE000000000000000, 0xD00000000000006DLL, 0x80000001DD673560, 0x2865766C6F736572, 0xEF293A736B736174, 46, MEMORY[0x1E69E7CC0], 1);
  sub_1DD426968();
  swift_allocError();
  *v83 = v82;
  swift_willThrow();
  sub_1DD589260(v101);
  return v27;
}

uint64_t sub_1DD589308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  if (a17 >= 2u)
  {
    if (a17 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1DD5893D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LOBYTE(STACK[0x598]);
  if (v69 == 2)
  {
  }

  else
  {
    v70 = STACK[0x578];
    v71 = STACK[0x560];
    v72 = STACK[0x550];
    v73 = STACK[0x538];
    v74 = STACK[0x520];
    v75 = STACK[0x518];
    v76 = STACK[0x510];
    result = a69;
    if (v69 <= 1)
    {
      v78 = STACK[0x588];
      v79 = STACK[0x590];

      sub_1DD3AD738(a12, a13);
      sub_1DD58979C(a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);

      sub_1DD589B3C(a52, a53);
      sub_1DD589BB0(a65, a66);

      return sub_1DD3AD77C(v78, v79);
    }
  }

  return result;
}

void sub_1DD58979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 != 1)
  {

    sub_1DD589950(a8, a9, a10, a11, a12, a13, a14);
  }
}

void sub_1DD589950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_1DD589AA8(a6, a7);
  }
}

uint64_t sub_1DD589AA8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589B3C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589BB0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD589C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD589CCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD589D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD589D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED0, &qword_1DD64A050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for Resolver(_BYTE *result, int a2, int a3)
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

id RestartableBlockOperation.__allocating_init(block:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall RestartableBlockOperation.main()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block + 8);
  v1();
}

id RestartableBlockOperation.clone()()
{
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block);
  v2 = *(v0 + OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block + 8);
  v4 = objc_allocWithZone(ObjectType);
  v5 = &v4[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v5 = v3;
  *(v5 + 1) = v2;
  v7.receiver = v4;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

id RestartableBlockOperation.init(block:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC13SiriInference25RestartableBlockOperation_block];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id RestartableBlockOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RestartableBlockOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

objc_class *RolloutsAnalyticsActivity.__allocating_init(analyticsManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1DD3C2388(a1, v3 + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v6.receiver = v3;
  v6.super_class = v1;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

void *RolloutsAnalyticsActivity.init(analyticsManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1DD3C2388(a1, v1 + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  objc_msgSendSuper2(&v6, sel_init);
  v4 = OUTLINED_FUNCTION_15_2();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1;
}

Swift::Void __swiftcall RolloutsAnalyticsActivity.main()()
{
  ObjectType = swift_getObjectType();
  if ([v0 isCancelled])
  {
    if (qword_1EE161CB0 != -1)
    {
      OUTLINED_FUNCTION_1_107();
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16EF28);
    oslog = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v3, "Operation canceled, returning.", v4, 2u);
      MEMORY[0x1E12B3DA0](v4, -1, -1);
    }
  }

  else
  {
    v5 = sub_1DD6408F8();
    sub_1DD636DE8(v5, v6, v0, ObjectType);
  }
}

uint64_t sub_1DD58A3DC(uint64_t a1)
{
  v11 = a1;
  v12 = sub_1DD63F9C8();
  v1 = *(v12 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD643F90;
  v7 = sub_1DD6408F8();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1DD392BD8();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  OUTLINED_FUNCTION_5_77();
  sub_1DD63F998();

  sub_1DD58A5C8();
  sub_1DD6404C8();
  OUTLINED_FUNCTION_5_77();
  sub_1DD63F9A8();
  return (*(v1 + 8))(v4, v12);
}

uint64_t sub_1DD58A5C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16EF28);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DD38D000, v8, v9, "Executing main for RolloutAnalyticsActivity", v10, 2u);
    OUTLINED_FUNCTION_8_2();
  }

  v11 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;
  v12[5] = ObjectType;
  v13 = v1;
  sub_1DD4B0E18();
}

uint64_t sub_1DD58A7C0()
{
  OUTLINED_FUNCTION_4_78();
  v1 = (v0[2] + OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager);
  v0[3] = OBJC_IVAR____TtC13SiriInference25RolloutsAnalyticsActivity_analyticsManager;
  v0[4] = 0;
  v0[5] = off_1F58AECE0;
  OUTLINED_FUNCTION_3_77(v1);
  v2 = *(MEMORY[0x1E6985F78] + 4);

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_0_125(v3);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28]();
}

uint64_t sub_1DD58A870()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_1DD58AA84;
  }

  else
  {
    v7 = sub_1DD58A998;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DD58A998()
{
  OUTLINED_FUNCTION_4_78();
  v1 = v0[4] + 1;
  if (v0[4] == 3)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v0[4] = v1;
  v4 = (v0[2] + v0[3]);
  v5 = &unk_1F58AECB8 + 16 * v1;
  v6 = *(v5 + 4);
  v0[5] = *(v5 + 5);
  OUTLINED_FUNCTION_3_77(v4);
  v7 = *(MEMORY[0x1E6985F78] + 4);

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_0_125();
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28]();
}

uint64_t sub_1DD58AA84()
{
  OUTLINED_FUNCTION_4_78();
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107();
  }

  v1 = v0[7];
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF28);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_12_39(&dword_1DD38D000, v12, v13, "Error in tryMain of RolloutsAnalyticsActivity: %@");
    sub_1DD3CBE0C(v9);
    OUTLINED_FUNCTION_8_2();
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[4] + 1;
  if (v0[4] == 3)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v0[4] = v14;
  v17 = (v0[2] + v0[3]);
  v18 = &unk_1F58AECB8 + 16 * v14;
  v19 = *(v18 + 4);
  v0[5] = *(v18 + 5);
  OUTLINED_FUNCTION_3_77(v17);
  v20 = *(MEMORY[0x1E6985F78] + 4);

  v21 = swift_task_alloc();
  v0[6] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_0_125();
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C28]();
}

uint64_t static RolloutsAnalyticsActivity.deregister(analyticsManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  sub_1DD3C2388(a1, v11);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  sub_1DD3AA4A8(v11, (v8 + 4));
  v8[9] = v1;
  sub_1DD4B0E18();
}

uint64_t sub_1DD58AD88()
{
  OUTLINED_FUNCTION_4_78();
  v1 = v0[2];
  v0[3] = 0;
  v0[4] = off_1F58AECE0;
  OUTLINED_FUNCTION_3_77(v1);
  v2 = *(MEMORY[0x1E6985F70] + 4);

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_2_93(v3);
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C20]();
}

uint64_t sub_1DD58AE30()
{
  v3 = *(*v1 + 40);
  v2 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = *(v2 + 32);

    v6 = sub_1DD58B038;
  }

  else
  {
    v6 = sub_1DD58AF44;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DD58AF44()
{
  OUTLINED_FUNCTION_4_78();
  v1 = v0[4];

  v2 = v0[3] + 1;
  v0[3] = v2;
  if (v2 == 4)
  {
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_13_43();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[2];
  v6 = &unk_1F58AECB8 + 16 * v2;
  v0[4] = *(v6 + 5);
  v7 = *(v6 + 4);
  OUTLINED_FUNCTION_3_77(v5);
  v8 = *(MEMORY[0x1E6985F70] + 4);

  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_13_43();

  return MEMORY[0x1EEDE8C20]();
}

uint64_t sub_1DD58B038()
{
  OUTLINED_FUNCTION_4_78();
  if (qword_1EE161CB0 != -1)
  {
    OUTLINED_FUNCTION_1_107();
  }

  v1 = *(v0 + 48);
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF28);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_12_39(&dword_1DD38D000, v12, v13, "Error in deregister of RolloutsAnalyticsActivity: %@");
    sub_1DD3CBE0C(v9);
    OUTLINED_FUNCTION_8_2();
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v14();
}

id RolloutsAnalyticsActivity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RolloutsAnalyticsActivity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD58B25C()
{
  OUTLINED_FUNCTION_4_78();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DD58B30C;
  v6 = OUTLINED_FUNCTION_11_45();

  return sub_1DD58AD68(v6, v7, v8, v9);
}

uint64_t sub_1DD58B30C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;

  OUTLINED_FUNCTION_26();

  return v4();
}

uint64_t sub_1DD58B444()
{
  OUTLINED_FUNCTION_4_78();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1DD58B4F4;
  v7 = OUTLINED_FUNCTION_11_45();

  return sub_1DD58A7A0(v7, v8, v9, v5);
}

void OUTLINED_FUNCTION_12_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1DD58B560(uint64_t a1)
{
  sub_1DD5D3268(0);

  sub_1DD5D2CF8();
  v3 = v2;
  v20 = a1;

  v4 = sub_1DD63FC88();
  v5 = 0;
  v21 = *(v3 + 16);
  for (i = (v3 + 40); ; i += 2)
  {
    if (v21 == v5)
    {

      return v20;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;

    swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1DD3978DC();
    if (__OFADD__(v4[2], (v10 & 1) == 0))
    {
      goto LABEL_15;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
    if (sub_1DD640A08())
    {
      v13 = sub_1DD3978DC();
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_17;
      }

      v11 = v13;
    }

    if (v12)
    {
      *(v4[7] + 8 * v11) = v5;
    }

    else
    {
      v4[(v11 >> 6) + 8] |= 1 << v11;
      v15 = (v4[6] + 16 * v11);
      *v15 = v8;
      v15[1] = v7;
      *(v4[7] + 8 * v11) = v5;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_16;
      }

      v4[2] = v18;
    }

    ++v5;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD58B748()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v10[-v6];
  __swift_allocate_value_buffer(v5, qword_1EE166408);
  v8 = __swift_project_value_buffer(v0, qword_1EE166408);
  sub_1DD6282D8();
  swift_storeEnumTagMultiPayload();
  sub_1DD58BC84(v4, v7);
  return sub_1DD58BC84(v7, v8);
}

uint64_t sub_1DD58B87C()
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);

  return __swift_project_value_buffer(v0, qword_1EE166408);
}

uint64_t static RunTimeDataDB.defaultURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v3 = __swift_project_value_buffer(v2, qword_1EE166408);
  swift_beginAccess();
  return sub_1DD58B964(v3, a1);
}

uint64_t sub_1DD58B964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static RunTimeDataDB.defaultURL.setter(uint64_t a1)
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v3 = __swift_project_value_buffer(v2, qword_1EE166408);
  swift_beginAccess();
  sub_1DD58BA6C(a1, v3);
  swift_endAccess();
  return sub_1DD58BADC(a1);
}

uint64_t sub_1DD58BA6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD58BADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static RunTimeDataDB.defaultURL.modify())()
{
  if (qword_1EE166420 != -1)
  {
    OUTLINED_FUNCTION_0_126();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  __swift_project_value_buffer(v0, qword_1EE166408);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1DD58BBD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD58B87C();
  swift_beginAccess();
  return sub_1DD58B964(v2, a1);
}

uint64_t sub_1DD58BC20(uint64_t a1)
{
  v2 = sub_1DD58B87C();
  swift_beginAccess();
  sub_1DD58BA6C(a1, v2);
  return swift_endAccess();
}

uint64_t sub_1DD58BC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD58BCF4()
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v4, v5, "running migration to create RunTimeDataDB");
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  return sub_1DD405F44(v6);
}

uint64_t sub_1DD58BDE8()
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F068);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    OUTLINED_FUNCTION_3_9(&dword_1DD38D000, v4, v5, "running migration to create siriTasksEvaluationData runTimeDB");
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  return sub_1DD405F44(v6);
}

uint64_t sub_1DD58BEDC()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v5 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v45[0] = OUTLINED_FUNCTION_13_44();
    *v3 = 136315138;
    *(v3 + 4) = sub_1DD39565C(v2, v1, v45);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v6, v7, "fetching siriTasksEvaluationData for taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  v9 = sub_1DD4061B8(0xD000000000000039, 0x80000001DD673B10, inited);
  if (v0)
  {
    swift_setDeallocating();
    v10 = inited;
    sub_1DD46CB4C();
    return v10;
  }

  else
  {
    v11 = v9;
    swift_setDeallocating();
    sub_1DD46CB4C();
    v1 = sub_1DD58B560(v11);
    v2 = v12;
    v13 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DD5D2E58();
      v15 = v14;
      if (!v14)
      {
        break;
      }

      v16 = *(v2 + 16);

      if (!v16 || (OUTLINED_FUNCTION_25_21(), v10 = v2, v17 = sub_1DD3978DC(), (v18 & 1) == 0))
      {

        v10 = sub_1DD59402C(v27);
        sub_1DD4CF1AC();
        OUTLINED_FUNCTION_4_42();
        *v28 = xmmword_1DD65DD10;
        *(v28 + 16) = v10;
        *(v28 + 24) = 1;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        return v10;
      }

      v19 = *(*(v2 + 56) + 8 * v17);
      if ((v19 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v19 >= *(v15 + 16))
      {
        goto LABEL_31;
      }

      sub_1DD58FB78(v15 + 40 * v19 + 32, v45);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
      if ((swift_dynamicCast() & 1) == 0 || (v20 = v49) == 0)
      {
        sub_1DD4CF1AC();
        v29 = OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_7_54(xmmword_1DD65DD10, v29, v30);

        return v10;
      }

      v21 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = v13[2];
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v13 = v25;
      }

      v3 = v13[2];
      v22 = v13[3];
      if (v3 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v22);
        sub_1DD3BE2A4();
        v13 = v26;
      }

      v13[2] = v3 + 1;
      v23 = &v13[2 * v3];
      v23[4] = v21;
      v23[5] = v20;
    }

    v32 = v13[2];
    if (!v32)
    {

      sub_1DD58FB24();
      OUTLINED_FUNCTION_4_42();
      v10 = v42;
      *v42 = sub_1DD46539C(0xD000000000000082, 0x80000001DD673B50, 0xD000000000000025, 0x80000001DD673BE0, 153, 0) & 1;
      swift_willThrow();
      return v10;
    }

    v50 = MEMORY[0x1E69E7CC0];
    result = sub_1DD42B780(0, v32, 0);
    v33 = 0;
    v10 = v50;
    v34 = v13 + 5;
    v44 = v32;
    while (v33 < v13[2])
    {
      v35 = *v34;
      v48 = *(v34 - 1);
      v49 = v35;

      sub_1DD58F25C(&v48, &v47);

      v37 = v45[0];
      v36 = v45[1];
      v38 = v46;
      v50 = v10;
      v40 = *(v10 + 16);
      v39 = *(v10 + 24);
      if (v40 >= v39 >> 1)
      {
        v43 = v46;
        result = sub_1DD42B780(v39 > 1, v40 + 1, 1);
        v38 = v43;
        v10 = v50;
      }

      ++v33;
      *(v10 + 16) = v40 + 1;
      v41 = v10 + 24 * v40;
      *(v41 + 32) = v37;
      *(v41 + 40) = v36;
      *(v41 + 48) = v38;
      v34 += 2;
      if (v44 == v33)
      {

        return v10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DD58C468()
{
  OUTLINED_FUNCTION_8_59();
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  OUTLINED_FUNCTION_31_21();

  v3 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_36_15();
  if (OUTLINED_FUNCTION_35_15())
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_13_44();
    *(v1 + 4) = OUTLINED_FUNCTION_20_31(4.8149e-34, v4, v5, v6, v7, v8, v9, v10, v11, v4);
    OUTLINED_FUNCTION_14_39(&dword_1DD38D000, v12, v13, "deleting SiriTasksEvaluation runtime data. taskId=%s");
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_13_36();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_16_43(inited, MEMORY[0x1E69E6158]);

  OUTLINED_FUNCTION_21_30(52, 0x80000001DD673AD0);
  if (!v0)
  {
  }

  swift_setDeallocating();
  return sub_1DD46CB4C();
}

void sub_1DD58C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  v26 = v25;
  v28 = v27;
  v29 = type metadata accessor for RunTimeDataRecord();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  OUTLINED_FUNCTION_2();
  v31 = *v20;
  if (qword_1EE165FB0 != -1)
  {
LABEL_32:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v32 = sub_1DD63F9F8();
  __swift_project_value_buffer(v32, qword_1EE16F068);

  v33 = sub_1DD63F9D8();
  v34 = sub_1DD640368();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_54();
    v73[0] = OUTLINED_FUNCTION_62();
    *v35 = 136315138;
    *(v35 + 4) = sub_1DD39565C(v28, v26, v73);
    _os_log_impl(&dword_1DD38D000, v33, v34, "finding runtime data records. taskId=%s", v35, 0xCu);
    OUTLINED_FUNCTION_10_50();
    OUTLINED_FUNCTION_0_1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v28;
  *(inited + 40) = v26;

  v37 = sub_1DD4061B8(0xD000000000000034, 0x80000001DD673D70, inited);
  if (v24)
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
LABEL_21:
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v38 = v37;
    swift_setDeallocating();
    sub_1DD46CB4C();
    v28 = sub_1DD58B560(v38);
    v40 = v39;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1DD5D2E58();
      v42 = v41;
      if (!v41)
      {
        break;
      }

      v43 = *(v40 + 16);

      if (!v43 || (OUTLINED_FUNCTION_25_21(), v44 = sub_1DD3978DC(), (v45 & 1) == 0))
      {

        v54 = sub_1DD59402C(v53);
        sub_1DD4CF1AC();
        OUTLINED_FUNCTION_4_42();
        *v55 = xmmword_1DD65DD10;
        *(v55 + 16) = v54;
        *(v55 + 24) = 1;
        swift_willThrow();

        swift_bridgeObjectRelease_n();
        goto LABEL_21;
      }

      v46 = *(*(v40 + 56) + 8 * v44);
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v46 >= *(v42 + 16))
      {
        goto LABEL_31;
      }

      sub_1DD58FB78(v42 + 40 * v46 + 32, v73);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF98, &qword_1DD6547F0);
      if ((swift_dynamicCast() & 1) == 0 || !v72)
      {
        sub_1DD4CF1AC();
        v56 = OUTLINED_FUNCTION_4_42();
        OUTLINED_FUNCTION_7_54(xmmword_1DD65DD10, v56, v57);

        goto LABEL_21;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v26 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v26 = v51;
      }

      v48 = *(v26 + 16);
      v47 = *(v26 + 24);
      if (v48 >= v47 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v47);
        sub_1DD3BE2A4();
        v26 = v52;
      }

      *(v26 + 16) = v48 + 1;
      v49 = v26 + 16 * v48;
      *(v49 + 32) = v70;
      *(v49 + 40) = v72;
    }

    v58 = *(v26 + 16);
    if (!v58)
    {

      sub_1DD58FB24();
      OUTLINED_FUNCTION_4_42();
      *v69 = sub_1DD46539C(0xD000000000000082, 0x80000001DD673B50, 0xD000000000000014, 0x80000001DD673DB0, 130, 0) & 1;
      swift_willThrow();
      goto LABEL_21;
    }

    v71 = MEMORY[0x1E69E7CC0];
    sub_1DD42BB70(0, v58, 0);
    v59 = 0;
    v60 = (v26 + 40);
    while (v59 < *(v26 + 16))
    {
      v61 = *v60;
      v73[0] = *(v60 - 1);
      v73[1] = v61;

      sub_1DD58EFAC(v73, &a10);

      v63 = *(v71 + 16);
      v62 = *(v71 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1DD42BB70(v62 > 1, v63 + 1, 1);
      }

      ++v59;
      *(v71 + 16) = v63 + 1;
      OUTLINED_FUNCTION_18_3();
      v65 = *(v64 + 72);
      OUTLINED_FUNCTION_1_108();
      sub_1DD58FD40(v66, v67, v68);
      v60 += 2;
      if (v58 == v59)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
  }
}