double sub_227139B88(uint64_t a1, uint64_t a2)
{
  v5 = sub_2276681F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v11 = *(a1 + 16);
  do
  {
    if (!v11)
    {
      return 0.0;
    }
  }

  while (!*(*(a1 + 24 + 8 * v11--) + 16));
  v34 = v2;
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  *(&v31 - 2) = &v37;
  v38 = v13;
  sub_22713A96C(&v38, v36);
  v14 = v36[0];
  v15 = 0.0;
  if (v36[0])
  {
    v16 = *(v36[0] + 16);
    if (v16)
    {
      v31 = a2;
      v32 = v10;
      v33 = v6;
      v36[0] = MEMORY[0x277D84F90];
      sub_226F1EF90(0, v16, 0);
      v17 = v36[0];
      v18 = (v14 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        v21 = sub_227667380();
        v23 = v22;

        v36[0] = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_226F1EF90(v24 > 1, v25 + 1, 1);
          v17 = v36[0];
        }

        *(v17 + 16) = v25 + 1;
        v26 = v17 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v18 += 2;
        --v16;
      }

      while (v16);

      v10 = v32;
      v6 = v33;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v36[0] = sub_227666A50();
    v36[1] = v27;
    MEMORY[0x28223BE20](v36[0]);
    *(&v31 - 2) = v36;
    v28 = sub_226F7E160(sub_226FA6D84, (&v31 - 4), v17);

    if (v28)
    {
      sub_227667240();
      sub_227667FA0();
      v15 = v29;
      (*(v6 + 8))(v10, v35);
    }
  }

  return v15;
}

uint64_t sub_227139E60(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *(a1 + 24);
  v14 = sub_227666A50();
  if (!*(v13 + 16))
  {
  }

  v16 = sub_226E92000(v14, v15);
  v18 = v17;

  if (v18)
  {
    v20 = *(*(v13 + 56) + 8 * v16);
    sub_227667240();
    sub_227667F30();
    v21 = *(v3 + 8);
    v21(v12, v2);
    sub_227667240();
    sub_227667F70();
    result = (v21)(v9, v2);
    if (__OFSUB__(v20, 2))
    {
      __break(1u);
    }

    else
    {
      sub_227667240();
      sub_227667E80();
      v21(v6, v2);
      sub_227667240();
      sub_227667E70();
      return (v21)(v6, v2);
    }
  }

  return result;
}

double sub_22713A0A8(uint64_t a1)
{
  v2 = sub_2276681F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredTrainers);
  v8 = sub_227666A90();
  if (*(v7 + 16))
  {
    sub_226E92000(v8, v9);
    v11 = v10;

    if (v11)
    {
LABEL_7:
      v18 = sub_227666A90();
      if (*(v7 + 16))
      {
        v20 = sub_226E92000(v18, v19);
        v22 = v21;

        v23 = 0.0;
        if (v22)
        {
          v24 = *(*(v7 + 56) + 8 * v20);

          v25 = sub_227666AA0();
          if (v25[2])
          {
            v26 = v25[4];
            v27 = v25[5];

            LOBYTE(v26) = sub_22718C70C(v26, v27, v24);

            if (v26)
            {
              v23 = 1.0;
            }

            else
            {
              v23 = 0.0;
            }
          }

          else
          {
          }
        }
      }

      else
      {

        v23 = 0.0;
      }

      v28 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres);
      v29 = sub_227666A90();
      if (*(v28 + 16))
      {
        v31 = sub_226E92000(v29, v30);
        v33 = v32;

        if (v33)
        {
          v34 = *(*(v28 + 56) + 8 * v31);

          v35 = sub_227666AE0();
          if (v35[2])
          {
            v36 = v35[4];
            v37 = v35[5];

            sub_22718C70C(v36, v37, v34);
          }
        }
      }

      else
      {
      }

      sub_227667240();
      sub_227667F30();
      v39 = v38;
      v40 = *(v3 + 8);
      v40(v6, v2);
      v17 = v23 * v39;
      sub_227667240();
      sub_227667F70();
      v40(v6, v2);
      return v17;
    }
  }

  else
  {
  }

  v12 = *(a1 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanContentCurator_preferredMusicGenres);
  v13 = sub_227666A90();
  if (!*(v12 + 16))
  {

    return 0.0;
  }

  sub_226E92000(v13, v14);
  v16 = v15;

  v17 = 0.0;
  if (v16)
  {
    goto LABEL_7;
  }

  return v17;
}

uint64_t sub_22713A434()
{
  v1 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
  v2 = sub_227667370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_shorterCardioCache);

  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_repetitionCache);

  v5 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_longNonEquipmentCardioCache);

  v6 = *(v0 + OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_cardioWithDifferentEquipmentSameDayCache);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanObjectiveUtils()
{
  result = qword_27D7BB350;
  if (!qword_27D7BB350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22713A564()
{
  result = sub_227667370();
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

void *sub_22713A608(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);

    return v10;
  }

  return result;
}

unint64_t *sub_22713A6AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_22713A884(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22713A724(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_22713A884(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_22713A6AC(v9, v4, v2);
  result = MEMORY[0x22AA9A450](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_22713A884(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_227328EDC(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_227328EDC(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22713A98C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*a2 + 16))
  {
    *a3 = *(*a2 + 8 * v3 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_22713A9EC()
{
  result = qword_27D7BC8D0;
  if (!qword_27D7BC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC8D0);
  }

  return result;
}

unint64_t sub_22713AA40()
{
  result = qword_27D7BC8C0;
  if (!qword_27D7BC8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BC8C0);
  }

  return result;
}

uint64_t sub_22713AAA4(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v5 = (a1 + 32);
  v6 = *(a1 + 32);
  v7 = v2 - 1;
  if (v2 != 1)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8++;
      v10 = v9;
      if (v6 < v9)
      {
        v6 = v10;
      }

      --v7;
    }

    while (v7);
  }

  v32 = MEMORY[0x277D84F90];
  sub_226F1FCE8(0, v2, 0);
  v11 = *(v32 + 16);
  v12 = v2;
  v13 = v11;
  do
  {
    v14 = exp((*v5 - v6) / a2);
    v15 = *(v32 + 24);
    v16 = v13 + 1;
    if (v13 >= v15 >> 1)
    {
      v17 = v14;
      sub_226F1FCE8((v15 > 1), v13 + 1, 1);
      v14 = v17;
    }

    *(v32 + 16) = v16;
    *(v32 + 8 * v13 + 32) = v14;
    ++v5;
    ++v13;
    --v12;
  }

  while (v12);
  v18 = v2 + v11;
  if (v2 + v11 <= 3)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_16:
    v24 = v16 - v19;
    v25 = (v32 + 8 * v19 + 32);
    do
    {
      v26 = *v25++;
      v20 = v20 + v26;
      --v24;
    }

    while (v24);
    goto LABEL_18;
  }

  v19 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = (v32 + 48);
  v20 = 0.0;
  v22 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v23 = *v21;
    v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
    v21 += 4;
    v22 -= 4;
  }

  while (v22);
  if (v18 != v19)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_226F1FCE8(0, v16, 0);
  v27 = 0;
  v28 = *(v3 + 16);
  do
  {
    v29 = *(v32 + 8 * v27 + 32);
    v30 = *(v3 + 24);
    if (v28 >= v30 >> 1)
    {
      sub_226F1FCE8((v30 > 1), v28 + 1, 1);
    }

    ++v27;
    *(v3 + 16) = v28 + 1;
    *(v3 + 8 * v28++ + 32) = v29 / v20;
  }

  while (v16 != v27);

  return v3;
}

uint64_t sub_22713ACCC(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_29;
    }

    v8 = *(v5 + 8 * v3++);
    if (*(v8 + 16))
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F1FD08(0, *(v6 + 16) + 1, 1);
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_226F1FD08((v9 > 1), v10 + 1, 1);
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      v3 = v7;
    }
  }

  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (2)
    {
      v14 = v12;
      while (1)
      {
        if (v14 >= *(v6 + 16))
        {
          goto LABEL_30;
        }

        v15 = *(v6 + 32 + 8 * v14);
        v12 = v14 + 1;

        if (sub_2271348F4(v16))
        {
          break;
        }

        ++v14;
        if (v11 == v12)
        {
          v20 = *(v13 + 16);
LABEL_23:

          if (!a2 || sub_2271348F4(a2))
          {
            v21 = *(v6 + 16);
          }
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = a2;
      if ((result & 1) == 0)
      {
        result = sub_226F1FD08(0, *(v13 + 16) + 1, 1);
      }

      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_226F1FD08((v18 > 1), v19 + 1, 1);
      }

      *(v13 + 16) = v19 + 1;
      *(v13 + 8 * v19 + 32) = v15;
      a2 = v17;
      if (v11 - 1 != v14)
      {
        continue;
      }

      goto LABEL_23;
    }
  }
}

uint64_t sub_22713AF20(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    sub_226F48150();
    sub_226EC1E18();
    v3 = 0;
    v4 = 0;
    v5 = (v2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v8 = *(v5 - 1);
      v9 = *v5;
      result = sub_227663B30();
      if (result)
      {
        v6 = __OFADD__(v3, v7);
        v3 += v7;
        if (v6)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v6 = __OFADD__(v4, v7);
        v4 += v7;
        if (v6)
        {
          __break(1u);
          return result;
        }
      }

      v5 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_22713B008(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = -v1;
    v11 = result + 64;
    v10 = *(result + 16);
    do
    {
      if (v2 >= v1)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      v4 = (v11 + 40 * v2++);
      while (1)
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 1);
        v7 = *v4;
        v8 = v3 + v2;
        sub_226EB396C(v5, v6, *v4);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B30())
        {
          result = sub_226EB2DFC(v5, v6, v7);
          if (!v8)
          {
            return result;
          }

          goto LABEL_5;
        }

        v9 = sub_227663B30();
        result = sub_226EB2DFC(v5, v6, v7);
        if (v9)
        {
          break;
        }

        if (!v8)
        {
          return result;
        }

LABEL_5:
        ++v2;
        v4 += 40;
        if (v3 + v2 == 1)
        {
          goto LABEL_15;
        }
      }

      v1 = v10;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_22713B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a3 + 16);
    if (v4)
    {
      v19 = a2 + 32;
      sub_226F48150();
      sub_226EC1E18();

      v6 = 0;
      v7 = (a2 + 64);
      while (1)
      {
        v21 = *(v7 - 1);
        v25 = *v7;
        result = sub_227663B20();
        if (result)
        {
          break;
        }

        ++v6;
        v7 += 40;
        if (v3 == v6)
        {
          v17 = 0;
LABEL_7:

          v9 = a3 + 32;
          v10 = 0;
          for (i = ( + 64); ; i += 40)
          {
            v22 = *(i - 1);
            v26 = *i;
            result = sub_227663B20();
            if (result)
            {
              break;
            }

            if (v4 == ++v10)
            {
            }
          }

          goto LABEL_21;
        }
      }

      v10 = MEMORY[0x277D837F8];
      v12 = 1;
      while (2)
      {
        if (v6 == v3)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v17 = v12;
        do
        {
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            __break(1u);
            goto LABEL_36;
          }

          if (v9 == v3)
          {
            goto LABEL_7;
          }

          if (v9 >= v3)
          {
            goto LABEL_37;
          }

          v13 = v19 + 40 * v9;
          v23 = *(v13 + 16);
          v27 = *(v13 + 32);
          result = sub_227663B20();
          ++v6;
        }

        while ((result & 1) == 0);
        v6 = v9;
        v12 = v17 + 1;
        if (!__OFADD__(v17, 1))
        {
          continue;
        }

        break;
      }

      __break(1u);
LABEL_21:
      v14 = 1;
LABEL_22:
      if (v10 != v4)
      {
        v20 = v14;
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 == v4)
          {
            goto LABEL_31;
          }

          if (v15 >= v4)
          {
            goto LABEL_38;
          }

          v16 = v9 + 40 * v15;
          v24 = *(v16 + 16);
          v28 = *(v16 + 32);
          result = sub_227663B20();
          ++v10;
          if (result)
          {
            v10 = v15;
            v14 = v20 + 1;
            if (!__OFADD__(v20, 1))
            {
              goto LABEL_22;
            }

            __break(1u);
LABEL_31:

            if (v17 && v20 && __OFADD__(v17, v20))
            {
              goto LABEL_41;
            }

            return result;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22713B4A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 64;
    v4 = MEMORY[0x277D84F90];
    v16 = result + 64;
    do
    {
      v17 = v4;
      v5 = (v3 + 40 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_20:
          __break(1u);
          return result;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v19 = v6 + 1;
        v7 = *(v5 - 3);
        v18 = *(v5 - 4);
        v9 = *(v5 - 2);
        v8 = *(v5 - 1);
        v10 = *v5;

        sub_226EB396C(v9, v8, v10);
        sub_226EB396C(v9, v8, v10);
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B30())
        {
          break;
        }

        v11 = sub_227663B30();
        sub_226EB2DFC(v9, v8, v10);
        if (v11)
        {
          goto LABEL_11;
        }

        result = sub_226EB2DFC(v9, v8, v10);
        ++v6;
        v5 += 40;
        if (v19 == v1)
        {
          v4 = v17;
          goto LABEL_18;
        }
      }

      sub_226EB2DFC(v9, v8, v10);
LABEL_11:
      v4 = v17;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_226F1FD28(0, *(v17 + 16) + 1, 1);
        v4 = v17;
      }

      v3 = v16;
      v13 = *(v4 + 16);
      v12 = *(v4 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_226F1FD28((v12 > 1), v13 + 1, 1);
        v4 = v17;
      }

      *(v4 + 16) = v13 + 1;
      v14 = v4 + 40 * v13;
      v2 = v19;
      *(v14 + 32) = v18;
      *(v14 + 40) = v7;
      *(v14 + 48) = v9;
      *(v14 + 56) = v8;
      *(v14 + 64) = v10;
    }

    while (v19 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_18:
  v15 = *(v4 + 16);
}

uint64_t sub_22713B6E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v3 = 0;
  v24 = result;
  v25 = a3 + 56;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;
  v28 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v30 = (v6 - 1) & v6;
LABEL_13:
    v27 = v8 | (v3 << 6);
    v11 = *(a3 + 48) + 24 * v27;
    v12 = *v11;
    v13 = *(v11 + 16);
    v33 = *(v11 + 8);
    sub_226EB396C(*v11, v33, v13);
    v14 = sub_227667250();
    v15 = v14;
    if (!*(v14 + 16))
    {
      goto LABEL_5;
    }

    v16 = *(v14 + 40);
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v17 = sub_22766D3F0();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v21 = *(v15 + 48) + 24 * v19;
        v31 = *v21;
        v32 = *(v21 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226EB2DFC(v12, v33, v13);
      *(v24 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v22 = __OFADD__(v26++, 1);
      v7 = v28;
      v6 = v30;
      if (v22)
      {
        __break(1u);
LABEL_22:

        return sub_22726A888(v24, a2, v26, a3);
      }
    }

    else
    {
LABEL_5:

      result = sub_226EB2DFC(v12, v33, v13);
      v7 = v28;
      v6 = v30;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      goto LABEL_22;
    }

    v10 = *(v25 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22713B9BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v46 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v37 = v7;
    v38 = v3;
    v36[1] = v36;
    MEMORY[0x28223BE20](v9);
    v39 = v36 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v8);
    v41 = 0;
    v10 = 0;
    v11 = *(v4 + 56);
    v40 = v4 + 56;
    v12 = 1 << *(v4 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & v11;
    v44 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v45 = v4;
    v15 = (v12 + 63) >> 6;
    v43 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v47 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 48);
      v42 = v19;
      v21 = v20 + 24 * v19;
      v22 = *(v21 + 8);
      v3 = *(v21 + 16);
      v48 = *v21;
      sub_226EB396C(v48, v22, v3);
      v23 = sub_227667250();
      v7 = v23;
      if (!*(v23 + 16))
      {
        goto LABEL_6;
      }

      v24 = *(v23 + 40);
      v51 = v48;
      v52 = v22;
      v53 = v3;
      sub_22766D370();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v25 = sub_22766D3F0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      if ((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v8 = ~v26;
        sub_226F48150();
        sub_226EC1E18();
        while (1)
        {
          v28 = *(v7 + 48) + 24 * v27;
          v29 = *(v28 + 16);
          v49 = *v28;
          v50 = v29;
          v51 = v48;
          v52 = v22;
          v53 = v3;
          if (sub_227663B20())
          {
            break;
          }

          v27 = (v27 + 1) & v8;
          if (((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_226EB2DFC(v48, v22, v3);
        *&v39[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
        v30 = __OFADD__(v41++, 1);
        v4 = v45;
        v15 = v43;
        v14 = v47;
        if (v30)
        {
          __break(1u);
LABEL_23:
          v31 = sub_22726A888(v39, v37, v41, v4);

          goto LABEL_24;
        }
      }

      else
      {
LABEL_6:

        sub_226EB2DFC(v48, v22, v3);
        v4 = v45;
        v15 = v43;
        v14 = v47;
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_23;
      }

      v18 = *(v40 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v47 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v46;

  v31 = sub_22713A608(v34, v7, v4, v35, sub_22713B6E4);

  MEMORY[0x22AA9A450](v34, -1, -1);

LABEL_24:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_22713BE14(uint64_t result, uint64_t a2, uint64_t a3)
{
  v28 = 0;
  v3 = 0;
  v24 = a3 + 56;
  v25 = result;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 56);
  v7 = (v4 + 63) >> 6;
  v26 = v7;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v30 = (v6 - 1) & v6;
LABEL_13:
    v29 = v8 | (v3 << 6);
    v11 = *(a3 + 48) + 24 * v29;
    v12 = *v11;
    v13 = *(v11 + 16);
    v33 = *(v11 + 8);
    sub_226EB396C(*v11, v33, v13);
    v14 = sub_227667250();
    v15 = v14;
    if (!*(v14 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v14 + 40);
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v17 = sub_22766D3F0();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v21 = *(v15 + 48) + 24 * v19;
        v31 = *v21;
        v32 = *(v21 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      result = sub_226EB2DFC(v12, v33, v13);
      v7 = v26;
      v6 = v30;
    }

    else
    {
LABEL_18:

      result = sub_226EB2DFC(v12, v33, v13);
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v22 = __OFADD__(v28++, 1);
      v7 = v26;
      v6 = v30;
      if (v22)
      {
        __break(1u);
LABEL_21:

        return sub_22726A888(v25, a2, v28, a3);
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      goto LABEL_21;
    }

    v10 = *(v24 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22713C0E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v46 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v39 = v7;
    v40 = v3;
    v38[1] = v38;
    MEMORY[0x28223BE20](v9);
    v42 = v38 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v42, v8);
    v47 = 0;
    v10 = 0;
    v11 = *(v4 + 56);
    v41 = v4 + 56;
    v12 = 1 << *(v4 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & v11;
    v44 = OBJC_IVAR____TtC15SeymourServices25WorkoutPlanObjectiveUtils_configuration;
    v45 = v4;
    v15 = (v12 + 63) >> 6;
    v43 = v15;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v49 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 48);
      v48 = v19;
      v21 = v20 + 24 * v19;
      v22 = *v21;
      v3 = *(v21 + 16);
      v23 = *v21;
      v50 = *(v21 + 8);
      sub_226EB396C(v23, v50, v3);
      v24 = sub_227667250();
      v25 = v24;
      if (!*(v24 + 16))
      {
        goto LABEL_19;
      }

      v26 = *(v24 + 40);
      v53 = v22;
      v54 = v50;
      v55 = v3;
      sub_22766D370();
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v27 = sub_22766D3F0();
      v28 = -1 << *(v25 + 32);
      v29 = v27 & ~v28;
      if ((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v8 = ~v28;
        sub_226F48150();
        v7 = sub_226EC1E18();
        while (1)
        {
          v30 = *(v25 + 48) + 24 * v29;
          v31 = *(v30 + 16);
          v51 = *v30;
          v52 = v31;
          v53 = v22;
          v54 = v50;
          v55 = v3;
          if (sub_227663B20())
          {
            break;
          }

          v29 = (v29 + 1) & v8;
          if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        sub_226EB2DFC(v22, v50, v3);
        v4 = v45;
        v15 = v43;
        v14 = v49;
      }

      else
      {
LABEL_19:

        sub_226EB2DFC(v22, v50, v3);
        *&v42[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        v32 = __OFADD__(v47++, 1);
        v4 = v45;
        v15 = v43;
        v14 = v49;
        if (v32)
        {
          __break(1u);
LABEL_22:
          v33 = sub_22726A888(v42, v39, v47, v4);

          goto LABEL_23;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_22;
      }

      v18 = *(v41 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v36 = swift_slowAlloc();
  v37 = v46;

  v33 = sub_22713A608(v36, v7, v4, v37, sub_22713BE14);

  MEMORY[0x22AA9A450](v36, -1, -1);

LABEL_23:
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_22713C53C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v11 = 0;
    v12 = 0;
    v3 = result + 64;
    v10 = result + 64;
    while (2)
    {
      for (i = (v3 + 40 * v2); ; i += 40)
      {
        if (v2 >= v1)
        {
          __break(1u);
LABEL_13:
          __break(1u);
          return result;
        }

        v5 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_13;
        }

        v6 = *i;
        v8 = *(i - 2);
        v7 = *(i - 1);
        sub_226EB396C(v8, v7, *i);
        sub_226F48150();
        sub_226EC1E18();
        v11 |= sub_227663B30();
        v12 |= sub_227663B30();
        v9 = sub_227663B30();
        result = sub_226EB2DFC(v8, v7, v6);
        if (v9)
        {
          break;
        }

        ++v2;
        if (v5 == v1)
        {
          return result;
        }
      }

      ++v2;
      v3 = v10;
      if (v5 != v1)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22713C714(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (v2 != v4)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

      v8 = *(v5 + 8 * v4++);
      if (*(v8 + 16))
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_226F1FD08(0, *(v6 + 16) + 1, 1);
        }

        v10 = *(v6 + 16);
        v9 = *(v6 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_226F1FD08((v9 > 1), v10 + 1, 1);
        }

        *(v6 + 16) = v10 + 1;
        *(v6 + 8 * v10 + 32) = v8;
        v4 = v7;
      }
    }

    v11 = *(v6 + 16);
    if (v11)
    {
      v12 = *(v6 + 8 * v11 + 24);

      v13 = *(v12 + 16);

      if (v13 - *(a2 + 16) < 0)
      {
        v14 = *(a2 + 16) - v13;
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22713C864(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(result + 8 * v2 + 24);
    if (*(v3 + 16))
    {

      result = sub_227337CC0(a2, v3);
      if (result)
      {
      }

      v5 = *(v3 + 16);
      if (v5 != *(a2 + 16))
      {
      }

      else
      {
        v6 = (a2 + 64);
        v7 = (v3 + 64);
        v8 = -v5;
        v9 = -1;
        while (1)
        {
          if (v8 + v9 == -1)
          {
          }

          if (++v9 >= *(v3 + 16))
          {
            break;
          }

          v10 = v6 + 40;
          v11 = v7 + 40;
          v14 = *(v7 - 1);
          v15 = *v7;
          v12 = *(v6 - 1);
          v13 = *v6;
          sub_226F48150();
          sub_226EC1E18();
          result = sub_227663B20();
          v7 = v11;
          v6 = v10;
          if ((result & 1) == 0)
          {
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

void sub_22713C9B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
LABEL_25:
    sub_22713CE00(v20, v21, v19, v23, v24);
    sub_22713CE00(v25, v26, v27, v28, v29);
    return;
  }

  v2 = 0;
  v3 = 0;
  v40 = 0;
  v41 = 0;
  v4 = 0;
  v5 = 0;
  v45 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v6 = (a1 + 64);
  do
  {
    v13 = *(v6 - 4);
    v12 = *(v6 - 3);
    v14 = *(v6 - 1);
    v46 = v12;
    v47 = *(v6 - 2);
    v15 = *v6;
    v33 = v1;
    v34 = v13;
    if (v4 && v5 >= v13)
    {
      v16 = v40;
      sub_22713CE5C(v5, v4, v40, v3, v2);
      v17 = v47;
      v38 = v4;
      v39 = v5;
      v36 = v3;
      v37 = v40;
      v35 = v2;
    }

    else
    {

      v17 = v47;
      sub_226EB396C(v47, v14, v15);
      v38 = v46;
      v39 = v13;
      v36 = v14;
      v37 = v47;
      v35 = v15;
      v16 = v40;
    }

    sub_226EB396C(v17, v14, v15);
    sub_22713CE00(v5, v4, v16, v3, v2);
    v18 = v34;
    if (v42 && v34 >= v41)
    {

      sub_226EB2DFC(v47, v14, v15);
      sub_22713CE5C(v41, v42, v43, v44, v45);
      v10 = v43;
      v11 = v44;
      v9 = v45;
      v18 = v41;
      v8 = v42;
      v7 = v43;
      v14 = v44;
      v15 = v45;
    }

    else
    {
      v8 = v46;
      v7 = v47;
      v9 = v45;
      v10 = v43;
      v11 = v44;
    }

    sub_22713CE00(v41, v42, v10, v11, v9);
    v6 += 40;
    v2 = v35;
    v3 = v36;
    v40 = v37;
    v41 = v18;
    v4 = v38;
    v5 = v39;
    v45 = v15;
    v43 = v7;
    v44 = v14;
    v42 = v8;
    v1 = v33 - 1;
  }

  while (v33 != 1);
  v19 = v7;
  v20 = v18;
  v21 = v8;
  v22 = v15;
  if (!v38)
  {
    v28 = v36;
    v23 = v14;
    v29 = v35;
    v24 = v22;
    v25 = v39;
    v26 = 0;
    v27 = v37;
    goto LABEL_25;
  }

  if (!v8)
  {
    v28 = v36;
    v23 = v14;
    v29 = v35;
    v24 = v22;
    v26 = v38;
    v25 = v39;
    v27 = v37;
    goto LABEL_25;
  }

  sub_226F48150();
  sub_226EC1E18();
  if (sub_227663B20())
  {
    v19 = v7;
    v20 = v18;
    v21 = v8;
    v23 = v14;
    v24 = v15;
LABEL_24:
    v26 = v38;
    v25 = v39;
    v28 = v36;
    v27 = v37;
    v29 = v35;
    goto LABEL_25;
  }

  v30 = v39 - v18;
  if (__OFSUB__(v39, v18))
  {
    __break(1u);
  }

  else
  {
    v31 = __OFSUB__(v30, 10);
    v32 = v30 - 10;
    if (!v31)
    {
      v24 = v15;
      if (v32 >= 1)
      {
        log10(v32);
        v24 = v15;
      }

      v20 = v18;
      v19 = v7;
      v21 = v8;
      v23 = v14;
      goto LABEL_24;
    }
  }

  __break(1u);
}

uint64_t sub_22713CD14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = result;
    result = type metadata accessor for WorkoutPlanGenerationScaffold();
    v5 = *(v4 + *(result + 64));
    v6 = (a2 + 64);
    v7 = 0.0;
    do
    {
      if (!*(v5 + 16) || (v8 = *v6, v10 = *(v6 - 2), v9 = *(v6 - 1), sub_226EB396C(v10, v9, *v6), v11 = sub_226F491D8(v10, v9, v8), v13 = v12, result = sub_226EB2DFC(v10, v9, v8), (v13 & 1) == 0) || *(*(v5 + 56) + 8 * v11) <= 0)
      {
        v7 = v7 + 1.0;
      }

      v6 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_22713CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_226EB2DFC(a3, a4, a5 & 1);
  }
}

void sub_22713CE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a2)
  {

    sub_226EB396C(a3, a4, a5 & 1);
  }
}

void sub_22713CEDC(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  *a2 = sub_22713824C(*a1, v3);
}

uint64_t sub_22713CF20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22713CFA8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];

  return swift_deallocClassInstance();
}

uint64_t sub_22713D014(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22713D034, 0, 0);
}

uint64_t sub_22713D034()
{
  v1 = v0[2];
  v2 = __swift_project_boxed_opaque_existential_0((v0[3] + 56), *(v0[3] + 80));
  v3 = *v2;
  v4 = *(*v2 + 264);
  __swift_project_boxed_opaque_existential_0((*v2 + 232), *(*v2 + 256));
  v5 = swift_allocObject();
  v0[4] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(v4 + 24);

  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_22713D1D4;

  return v10();
}

uint64_t sub_22713D1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_226FA13B4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22713D2F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22713D324(uint64_t a1)
{
  v3 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v34[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3A8, &qword_22767A8C8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34[-v13];
  v15 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  v16 = &v14[*(v11 + 56)];
  sub_22713E27C(v1 + v15, v14);
  sub_22713E27C(a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22713E27C(v14, v9);
    v23 = swift_getEnumCaseMultiPayload();
    if (!v23)
    {
      __swift_destroy_boxed_opaque_existential_0(v9);
      goto LABEL_13;
    }

    if (v23 == 1)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
      v25 = *(v16 + *(v24 + 48));
      swift_unknownObjectRelease();
      v26 = *(v16 + *(v24 + 64));
      swift_unknownObjectRelease();
      v27 = sub_227668BB0();
      (*(*(v27 - 8) + 8))(v16, v27);
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22713E27C(v14, v7);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
    v19 = *&v7[*(v18 + 48)];
    swift_unknownObjectRelease();
    v20 = *&v7[*(v18 + 64)];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v21 = *(v1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 32);
      __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider), *(v1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 24));
      sub_227669FE0();
      swift_beginAccess();
      sub_22714047C(a1, v1 + v15);
      swift_endAccess();
      sub_2276692A0();
      swift_unknownObjectRelease();
      v22 = sub_227668BB0();
      (*(*(v22 - 8) + 8))(v7, v22);
      return sub_227140420(v14);
    }

    swift_unknownObjectRelease();
    v29 = sub_227668BB0();
    (*(*(v29 - 8) + 8))(v7, v29);
LABEL_13:
    v30 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688]);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D52638], v30);
    *(swift_allocObject() + 16) = v31;
    sub_227669280();
    sub_227140420(v16);
    return sub_227140420(v14);
  }

  v28 = swift_getEnumCaseMultiPayload();
  if (!v28)
  {
    v9 = v16;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_0(v9);
    goto LABEL_17;
  }

  if (v28 == 1)
  {
    goto LABEL_13;
  }

LABEL_17:
  sub_227140420(v14);
  swift_beginAccess();
  sub_22714047C(a1, v1 + v15);
  swift_endAccess();
  return sub_2276692A0();
}

uint64_t sub_22713D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v73 = a7;
  v70 = a5;
  v67 = a4;
  v10 = sub_227669A70();
  v75 = *(v10 - 8);
  v76 = v10;
  v11 = *(v75 + 64);
  MEMORY[0x28223BE20](v10);
  v74 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v82 = *(v77 - 8);
  v66 = v82[8];
  v13 = MEMORY[0x28223BE20](v77);
  v78 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v62 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v81 = &v62 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v80 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v79 = &v62 - v21;
  v63 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v22 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = v25;
  v27 = *(a3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 32);
  __swift_project_boxed_opaque_existential_0((a3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider), *(a3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider + 24));

  sub_22766AB60();
  sub_226EA1CF4();
  v28 = sub_22766C950();
  v29 = swift_allocObject();
  v68 = v26;
  v69 = sub_226EB496C;
  *(v29 + 16) = sub_226EB496C;
  *(v29 + 24) = v26;

  v30 = sub_227669FD0();

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
  v32 = &v24[*(v31 + 48)];
  v33 = *(v31 + 64);
  v34 = sub_227668BB0();
  (*(*(v34 - 8) + 16))(v24, v67, v34);
  v36 = v72;
  v35 = v73;
  *v32 = v70;
  *(v32 + 1) = v36;
  *(v32 + 2) = v35;
  v64 = v30;
  v65 = v24;
  *&v24[v33] = v30;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_22713D324(v24);
  swift_getObjectType();
  v38 = v74;
  v37 = v75;
  v39 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277D4ED08], v76);
  v40 = v81;
  sub_227669620();
  (*(v37 + 8))(v38, v39);
  v41 = v82;
  v42 = v82[2];
  v43 = v71;
  v44 = v77;
  v42(v71, v40, v77);
  v45 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v46 = v45 + v66;
  v76 = swift_allocObject();
  v47 = v41[4];
  v48 = v44;
  v47(v76 + v45, v43, v44);
  v49 = v78;
  v50 = v80;
  v42(v78, v80, v48);
  v51 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v47(v52 + v45, v49, v48);
  v53 = (v52 + v51);
  v54 = v76;
  *v53 = sub_226EC154C;
  v53[1] = v54;
  v55 = v79;
  sub_227669270();
  v56 = v82[1];
  v56(v81, v48);
  v56(v50, v48);
  v57 = swift_allocObject();
  v58 = v68;
  *(v57 + 16) = v69;
  *(v57 + 24) = v58;
  v59 = sub_227669290();
  v60 = swift_allocObject();
  *(v60 + 16) = sub_227140AB8;
  *(v60 + 24) = v57;

  v59(sub_226EB4544, v60);
  swift_unknownObjectRelease();

  v56(v55, v48);
  return sub_227140420(v65);
}

void sub_22713DE08(void (*a1)(void *, uint64_t))
{
  v2 = sub_227666740();
  sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D52678], v2);
  a1(v3, 1);
}

uint64_t sub_22713DEEC()
{
  sub_227140420(v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_timerProvider));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22713DFB8()
{
  result = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(319);
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

uint64_t sub_22713E080(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22713E0B8()
{
  sub_22713E12C();
  if (v0 <= 0x3F)
  {
    sub_22713E1D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22713E12C()
{
  if (!qword_28139D348)
  {
    v0 = sub_22713E174();
    if (!v1)
    {
      atomic_store(v0, &qword_28139D348);
    }
  }
}

unint64_t sub_22713E174()
{
  result = qword_28139D340;
  if (!qword_28139D340)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28139D340);
  }

  return result;
}

void sub_22713E1D8()
{
  if (!qword_2813A5548)
  {
    sub_227668BB0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB390, &unk_22767A8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB398, &qword_22767A8B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2813A5548);
    }
  }
}

uint64_t sub_22713E27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22713E2E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = a1;
  v33 = a2;
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227668BB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v14 + 8))(v17, v13);
  v18 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  sub_22713E27C(v3 + v18, v7);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_227140420(v7);
    v23 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688]);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D525F8], v23);
    *(swift_allocObject() + 16) = v24;
    sub_227669280();
    return;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
  v20 = *&v7[*(v19 + 48)];
  swift_unknownObjectRelease();
  v21 = *&v7[*(v19 + 64)];
  swift_unknownObjectRelease();
  (*(v9 + 32))(v12, v7, v8);
  if (sub_227668BA0() == v32 && v22 == v33)
  {

LABEL_7:
    sub_2276692A0();
    (*(v9 + 8))(v12, v8);
    return;
  }

  v26 = sub_22766D190();

  if (v26)
  {
    goto LABEL_7;
  }

  v27 = sub_227666740();
  sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688]);
  v28 = swift_allocError();
  (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D52610], v27);
  *(swift_allocObject() + 16) = v28;
  v30 = v28;
  sub_227669280();
  (*(v9 + 8))(v12, v8);
}

uint64_t sub_22713E7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a1;
  v84 = a2;
  v87 = sub_227665350();
  v93 = *(v87 - 8);
  v4 = *(v93 + 64);
  MEMORY[0x28223BE20](v87);
  v79 = v4;
  v86 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v94 = *(v88 - 8);
  v9 = *(v94 + 64);
  v10 = MEMORY[0x28223BE20](v88);
  v80 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v66 - v12;
  MEMORY[0x28223BE20](v11);
  v82 = &v66 - v14;
  v15 = sub_227662750();
  v90 = *(v15 - 8);
  v91 = v15;
  v83 = *(v90 + 64);
  v16 = MEMORY[0x28223BE20](v15);
  v81 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v89 = &v66 - v18;
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v20 + 8))(v23, v19);
  v24 = *(v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider + 32);
  __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider), *(v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_connectionBrokerProvider + 24));
  sub_22766AD70();
  v25 = *(v3 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_platform);
  v74 = sub_2276693A0();
  v73 = v26;
  sub_227662720();
  sub_226E91B50(&v96, v8);
  swift_storeEnumTagMultiPayload();
  v27 = v13;
  v85 = v13;
  v67 = v3;
  sub_22713D324(v8);
  sub_227140420(v8);
  sub_226E91B50(&v96, v95);
  v28 = v93;
  v29 = *(v93 + 16);
  v76 = v93 + 16;
  v78 = v29;
  v31 = v86;
  v30 = v87;
  v29(v86, v92, v87);
  v32 = *(v28 + 80);
  v33 = (v32 + 64) & ~v32;
  v75 = v32 | 7;
  v34 = swift_allocObject();
  *(v34 + 16) = v3;
  sub_226E92AB8(v95, v34 + 24);
  v35 = *(v28 + 32);
  v93 = v28 + 32;
  v77 = v35;
  v35(v34 + v33, v31, v30);
  v36 = (v34 + ((v4 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_2271404E0;
  *(v38 + 24) = v34;
  v39 = v94;
  v40 = *(v94 + 16);
  v73 = (v94 + 16);
  v74 = v40;
  v41 = v80;
  v42 = v88;
  v40(v80, v27, v88);
  v43 = *(v39 + 80);
  v72 = v43;
  v44 = (v43 + 16) & ~v43;
  v71 = v44;
  v45 = (v9 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = v45;
  v46 = swift_allocObject();
  v47 = *(v39 + 32);
  v68 = v39 + 32;
  v70 = v47;
  v47(v46 + v44, v41, v42);
  v48 = (v46 + v45);
  *v48 = sub_227086964;
  v48[1] = v38;
  v49 = v67;

  v50 = v82;
  sub_227669270();
  v51 = *(v39 + 8);
  v94 = v39 + 8;
  v80 = v51;
  (v51)(v85, v42);
  v52 = v90;
  v53 = v81;
  v54 = v91;
  (*(v90 + 16))(v81, v89, v91);
  v55 = v86;
  v56 = v87;
  v78(v86, v92, v87);
  v57 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v58 = (v83 + v32 + v57) & ~v32;
  v59 = swift_allocObject();
  *(v59 + 16) = v49;
  (*(v52 + 32))(v59 + v57, v53, v54);
  v77(v59 + v58, v55, v56);
  v60 = v85;
  v61 = v88;
  v74(v85, v50, v88);
  v62 = v69;
  v63 = swift_allocObject();
  v70(v63 + v71, v60, v61);
  v64 = (v63 + v62);
  *v64 = sub_227140588;
  v64[1] = v59;

  sub_227669270();
  (v80)(v50, v61);
  (*(v90 + 8))(v89, v91);
  return __swift_destroy_boxed_opaque_existential_0(&v96);
}

uint64_t sub_22713EFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a5;
  v37 = a4;
  v33 = a2;
  v34 = a3;
  v30 = a1;
  v38 = a6;
  v32 = sub_227665350();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB3C0, &unk_22767A8E0);
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v35);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider + 32);
  __swift_project_boxed_opaque_existential_0((a1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider), *(a1 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_localDeviceProvider + 24));
  v15 = v13;
  v29 = v13;
  sub_22766ABB0();
  sub_226E91B50(v33, v39);
  v16 = v32;
  (*(v7 + 16))(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v32);
  v17 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v18 = (v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_226E92AB8(v39, v19 + 16);
  (*(v7 + 32))(v19 + v17, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16);
  v20 = (v19 + v18);
  v21 = v36;
  *v20 = v37;
  v20[1] = v21;
  v22 = v31;
  *(v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
  v23 = v35;
  (*(v9 + 16))(v22, v15, v35);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v22, v23);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_227140660;
  v26[1] = v19;

  sub_227669270();
  return (*(v9 + 8))(v29, v23);
}

uint64_t sub_22713F304@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a5;
  v46 = a6;
  v44 = a4;
  v39 = a3;
  v41 = a1;
  v47 = a7;
  v48 = sub_227665350();
  v8 = *(v48 - 8);
  v43 = *(v8 + 64);
  MEMORY[0x28223BE20](v48);
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766AAF0();
  v35 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA2A0, &qword_22768C460);
  v40 = *(v42 - 8);
  v14 = *(v40 + 64);
  v15 = MEMORY[0x28223BE20](v42);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v36 = &v35 - v16;
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v18 = v39;
  sub_22766AD40();
  (*(v11 + 16))(v13, v41, v10);
  v19 = v37;
  (*(v8 + 16))(v37, v18, v48);
  v20 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (*(v8 + 80) + v21 + 16) & ~*(v8 + 80);
  v23 = (v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v11 + 32))(v24 + v20, v13, v35);
  v25 = (v24 + v21);
  v26 = v45;
  *v25 = v44;
  v25[1] = v26;
  (*(v8 + 32))(v24 + v22, v19, v48);
  *(v24 + v23) = v46;
  v27 = v40;
  v28 = v38;
  v29 = v36;
  v30 = v42;
  (*(v40 + 16))(v38, v36, v42);
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = swift_allocObject();
  (*(v27 + 32))(v32 + v31, v28, v30);
  v33 = (v32 + ((v14 + v31 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v33 = sub_227140748;
  v33[1] = v24;

  sub_227669270();
  return (*(v27 + 8))(v29, v30);
}

uint64_t sub_22713F70C@<X0>(__int128 *a1@<X0>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v59 = a4;
  v60 = a5;
  v48[2] = a3;
  v56 = a2;
  v6 = sub_22766B390();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3D0, &unk_22767A8F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v48 - v12;
  v14 = sub_227668BB0();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v48 - v19;
  v53 = v21;
  MEMORY[0x28223BE20](v18);
  v23 = v48 - v22;
  v61 = *a1;
  v52 = *(a1 + 2);
  sub_2276693D0();
  v64 = sub_227667BB0();
  sub_227140894();
  sub_227663B80();
  v55 = v65;
  v49 = v66;
  v48[1] = sub_22766AAD0();
  v51 = v24;
  v50 = sub_22766ACC0();
  v48[3] = sub_22766ACE0();

  sub_2276639C0();
  v25 = sub_2276639D0();
  (*(*(v25 - 8) + 56))(v13, 0, 1, v25);
  sub_227665310();
  sub_22766C0A0();
  sub_22766AAE0();
  sub_22766C500();
  sub_227668B80();
  sub_22766A730();
  v26 = *(v62 + 16);
  v56 = v23;
  v26(v20, v23, v63);
  v55 = v9;
  v27 = sub_22766B380();
  v28 = sub_22766C8B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v26;
    v30 = v29;
    v31 = swift_slowAlloc();
    v65 = v31;
    *v30 = 136446210;
    sub_2271409A0(&qword_27D7BB3E0, MEMORY[0x277D537B0]);
    v32 = v63;
    v33 = sub_22766D140();
    v35 = v34;
    v36 = *(v62 + 8);
    v36(v20, v32);
    v37 = sub_226E97AE8(v33, v35, &v65);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_226E8E000, v27, v28, "Sending handshake: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    v38 = v30;
    v26 = v51;
    MEMORY[0x22AA9A450](v38, -1, -1);
  }

  else
  {

    v36 = *(v62 + 8);
    v36(v20, v63);
  }

  (*(v57 + 8))(v55, v58);
  v39 = v54;
  v40 = v56;
  v41 = v63;
  v26(v54, v56, v63);
  v42 = v62;
  v43 = (*(v62 + 80) + 24) & ~*(v62 + 80);
  v44 = (v53 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v59;
  (*(v42 + 32))(v45 + v43, v39, v41);
  v46 = v45 + v44;
  *v46 = v61;
  *(v46 + 16) = v52;

  swift_unknownObjectRetain();
  sub_227669270();
  return (v36)(v40, v41);
}

uint64_t sub_22713FCA0(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v4 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - v9;
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v14) = *(a1 + 8);
  v45 = a2;
  if (v14 == 1)
  {
    v16 = *a1;
    v17 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 24);
    v43 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 32);
    v42[1] = __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter), v17);
    sub_227662720();
    sub_227662680();
    v19 = v18;
    (*(v12 + 8))(v15, v11);
    v20 = sub_227665340();
    v22 = v21;
    v23 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent();
    v49 = v23;
    v50 = sub_2271409A0(&qword_27D7BB3B8, type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v48);
    v25 = boxed_opaque_existential_0 + v23[6];
    sub_227665300();
    v26 = sub_227665320();
    *boxed_opaque_existential_0 = v19;
    boxed_opaque_existential_0[1] = v20;
    *(boxed_opaque_existential_0 + 16) = v22 & 1;
    *(boxed_opaque_existential_0 + v23[7]) = v26;
    *(boxed_opaque_existential_0 + v23[8]) = v16;
    v27 = v16;
  }

  else
  {
    v28 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 24);
    v43 = *(a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter + 32);
    __swift_project_boxed_opaque_existential_0((a2 + OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_analyticsReporter), v28);
    sub_227662720();
    sub_227662680();
    v30 = v29;
    (*(v12 + 8))(v15, v11);
    v31 = sub_227665340();
    v33 = v32;
    v34 = type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent();
    v49 = v34;
    v50 = sub_2271409A0(&qword_27D7BB3B8, type metadata accessor for GuestPairingAuthenticatorAnalyticsEvent);
    v35 = __swift_allocate_boxed_opaque_existential_0(v48);
    v36 = v35 + v34[6];
    sub_227665300();
    v37 = sub_227665320();
    *v35 = v30;
    v35[1] = v31;
    *(v35 + 16) = v33 & 1;
    *(v35 + v34[7]) = v37;
    *(v35 + v34[8]) = 0;
  }

  sub_227669B60();
  __swift_destroy_boxed_opaque_existential_0(v48);
  swift_storeEnumTagMultiPayload();
  sub_22713D324(v6);
  sub_227140420(v6);
  v38 = v47;
  v39 = sub_227669290();
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  v39(sub_226E9F7B0, v40);

  return (*(v46 + 8))(v10, v38);
}

uint64_t sub_2271400E8()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v10, v6);
  v11 = OBJC_IVAR____TtC15SeymourServices39RemoteBrowsingGuestPairingAuthenticator_state;
  swift_beginAccess();
  sub_22713E27C(v1 + v11, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB3B0, &unk_22767A8D0);
      v14 = *(v5 + *(v13 + 48));
      swift_unknownObjectRelease();
      v15 = *(v5 + *(v13 + 64));
      swift_unknownObjectRelease();
      v16 = sub_227668BB0();
      (*(*(v16 - 8) + 8))(v5, v16);
    }

    v17 = sub_227666740();
    sub_2271409A0(&qword_28139B638, MEMORY[0x277D52688]);
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D52628], v17);
    *(swift_allocObject() + 16) = v18;
    return sub_227669280();
  }

  else
  {
    sub_226E92AB8(v5, v21);
    __swift_project_boxed_opaque_existential_0(v21, v21[3]);
    sub_22766ACF0();
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }
}

uint64_t sub_227140420(uint64_t a1)
{
  v2 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22714047C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingGuestPairingAuthenticator.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2271404E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665350() - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_22713EFD4(v5, v1 + 24, v1 + v4, v7, v8, a1);
}

uint64_t sub_227140588(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_227665350() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22713FCA0(a1, v7);
}

uint64_t sub_227140660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227665350() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_22713F304(a1, (v2 + 16), v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_227140748@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_22766AAF0() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_227665350() - 8);
  v8 = *(v2 + v6);
  v9 = *(v2 + v6 + 8);
  v10 = *(v2 + ((*(v7 + 64) + ((v6 + *(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22713F70C(a1, v8, v9, v10, a2);
}

unint64_t sub_227140894()
{
  result = qword_27D7BB3D8;
  if (!qword_27D7BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB3D8);
  }

  return result;
}

uint64_t sub_2271408E8(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_227668BB0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];

  return sub_22713D79C(a1, a2, v7, v2 + v6, v9, v10, v11);
}

uint64_t sub_2271409A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2271409F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227140AC4()
{
  v0 = sub_227669A90();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB410, &qword_22767A980);
  __swift_allocate_value_buffer(v5, qword_28139A410);
  __swift_project_value_buffer(v5, qword_28139A410);
  (*(v1 + 104))(v4, *MEMORY[0x277D4F040], v0);
  v7 = 0;
  v8 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB430, &unk_22767A9A0);
  sub_227140C84(&qword_281398F48);
  sub_227140C84(&qword_281398F40);
  return sub_227669760();
}

uint64_t sub_227140C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BB430, &unk_22767A9A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227140CF0(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v99 = sub_227666F60();
  v107 = *(v99 - 8);
  v3 = *(v107 + 64);
  MEMORY[0x28223BE20](v99);
  v90 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227663DD0();
  v102 = *(v5 - 8);
  v6 = *(v102 + 8);
  MEMORY[0x28223BE20](v5);
  v89 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84B0, &qword_227670D08);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v69 - v13;
  v15 = sub_227663590();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2276640B0();
  v70 = *(v20 - 8);
  v21 = *(v70 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v106 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = v69 - v24;
  v25 = sub_227664990();
  v104 = *(v25 - 8);
  v105 = v25;
  v26 = *(v104 + 64);
  MEMORY[0x28223BE20](v25);
  v109 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2276658E0();
  v28 = *(v71 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v71);
  v85 = v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2276660D0();
  v31 = *(v79 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a2 + 16);
  if (!v34)
  {
    return MEMORY[0x277D84F90];
  }

  v103 = v15;
  v100 = v14;
  v111 = MEMORY[0x277D84F90];
  v77 = v34;
  sub_226F1F130(0, v34, 0);
  v101 = 0;
  v86 = v111;
  v36 = *(v28 + 16);
  v35 = v28 + 16;
  v76 = v36;
  v75 = a2 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
  v98 = (v107 + 32);
  v94 = (v102 + 48);
  v95 = (v16 + 32);
  v87 = (v102 + 32);
  v93 = (v16 + 8);
  v37 = 0;
  v74 = (v35 - 8);
  v73 = v31 + 32;
  v72 = *(v35 + 56);
  v102 = v19;
  v38 = v71;
  v88 = v5;
  v96 = v20;
  v69[1] = v35;
  v78 = v31;
  do
  {
    v84 = v37;
    v76(v85, v75 + v72 * v37, v38);
    v39 = sub_2276658D0();
    v83 = v40;
    v41 = sub_2276658C0();
    v42 = *(v41 + 16);
    if (v42)
    {
      v82 = v39;
      v110 = MEMORY[0x277D84F90];
      v43 = v41;
      sub_226F1F150(0, v42, 0);
      v44 = v110;
      v45 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v81 = v43;
      v46 = v43 + v45;
      v107 = *(v70 + 72);
      v47 = v100;
      do
      {
        v48 = v108;
        sub_227141704(v46, v108);
        v49 = v106;
        sub_227141704(v48, v106);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v50 = (*v95)(v19, v49, v103);
          MEMORY[0x28223BE20](v50);
          v69[-2] = v19;
          v51 = v19;
          v52 = v12;
          v53 = v101;
          sub_227543988(sub_226F1C4F4, v97, v47);
          v101 = v53;
          v12 = v52;
          sub_226F1C514(v47, v52);
          if ((*v94)(v52, 1, v5) == 1)
          {
            sub_226F1C584(v52);
            v92 = sub_227663560();
            v91 = v54;
            sub_227663570();
            sub_227663580();
            v55 = v99;
            v12 = v52;
            v56 = v90;
            v5 = v88;
            sub_227666F30();
            sub_226F1C584(v100);
            sub_227141768(v108);
            v57 = v56;
            v47 = v100;
            (*v98)(v109, v57, v55);
          }

          else
          {
            sub_226F1C584(v47);
            sub_227141768(v108);
            v58 = *v87;
            v59 = v89;
            (*v87)(v89, v52, v5);
            v60 = v59;
            v47 = v100;
            v58(v109, v60, v5);
          }

          swift_storeEnumTagMultiPayload();
          (*v93)(v51, v103);
        }

        else
        {
          sub_227141768(v48);
          (*v98)(v109, v49, v99);
          swift_storeEnumTagMultiPayload();
        }

        v110 = v44;
        v62 = *(v44 + 16);
        v61 = *(v44 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_226F1F150(v61 > 1, v62 + 1, 1);
          v47 = v100;
          v44 = v110;
        }

        *(v44 + 16) = v62 + 1;
        sub_2271417C4(v109, v44 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v62);
        v46 += v107;
        --v42;
        v19 = v102;
      }

      while (v42);

      v38 = v71;
    }

    else
    {
    }

    v63 = v80;
    sub_2276660C0();
    (*v74)(v85, v38);
    v64 = v86;
    v111 = v86;
    v66 = *(v86 + 16);
    v65 = *(v86 + 24);
    if (v66 >= v65 >> 1)
    {
      sub_226F1F130(v65 > 1, v66 + 1, 1);
      v63 = v80;
      v64 = v111;
    }

    v37 = v84 + 1;
    *(v64 + 16) = v66 + 1;
    v67 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v86 = v64;
    (*(v78 + 32))(v64 + v67 + *(v78 + 72) * v66, v63, v79);
  }

  while (v37 != v77);
  return v86;
}

uint64_t sub_227141704(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276640B0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227141768(uint64_t a1)
{
  v2 = sub_2276640B0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2271417C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664990();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22714184C(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 1866.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

void sub_227141938(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 81920.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

void sub_227141A24(uint64_t a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = floorf(a2 * 104860000.0);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        sub_227663CB0();
        v3 = 0;
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  v3 = 1;
LABEL_7:
  v5 = sub_227663CD0();
  v6 = *(*(v5 - 8) + 56);

  v6(a1, v3, 1, v5);
}

id sub_227141B34()
{
  v1 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader____lazy_storage___session);
  }

  else
  {
    v4 = [objc_opt_self() defaultSessionConfiguration];
    [v4 setURLCache_];
    v5 = [objc_opt_self() sessionWithConfiguration:v4 delegate:v0 delegateQueue:*(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_queue)];

    sub_2276693D0();
    sub_2276693E0();
    v6 = v0;
    v7 = sub_22766C840();

    v8 = *(v6 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_227141C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetImageLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_227141D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2276624A0();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276639B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = v14;
  v50 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v17 = sub_22766B390();
  v47 = *(v17 - 8);
  v48 = v17;
  v18 = *(v47 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v21 = *(v11 + 16);
  v51 = v10;
  v52 = a1;
  v46 = v21;
  v21(v16, a1, v10);
  v22 = sub_22766B380();
  v23 = sub_22766C8B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v42 = v3;
    v25 = v24;
    v41 = swift_slowAlloc();
    v53 = v41;
    *v25 = 141558274;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    sub_2276639A0();
    v26 = sub_227662390();
    v43 = a2;
    v28 = v27;
    (*(v44 + 8))(v9, v45);
    v29 = v16;
    v30 = v51;
    (*(v11 + 8))(v29, v51);
    v31 = sub_226E97AE8(v26, v28, &v53);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_226E8E000, v22, v23, "Requesting remoteURL: %{mask.hash}s", v25, 0x16u);
    v32 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v33 = v25;
    v3 = v42;
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  else
  {

    v34 = v16;
    v30 = v51;
    (*(v11 + 8))(v34, v51);
  }

  (*(v47 + 8))(v20, v48);
  v35 = v50;
  v46(v50, v52, v30);
  v36 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v3;
  (*(v11 + 32))(v37 + v36, v35, v30);
  type metadata accessor for AssetLoaderResponse();
  v38 = v3;
  return sub_227669270();
}

void sub_227142190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a4;
  v37 = a1;
  v5 = sub_2276624A0();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetProgressUpdated();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v34 - v15;
  v17 = sub_227663CD0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227141938(v16, 0.01);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_226E97D1C(v16, &qword_27D7B9648, &unk_227674880);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v22 = *(a3 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub);
    v34[1] = *(a3 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub + 8);
    swift_getObjectType();
    sub_2276639A0();
    (*(v18 + 16))(&v12[*(v9 + 20)], v21, v17);
    sub_226EB0F20(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
    sub_2276699D0();
    sub_227145B64(v12, type metadata accessor for AssetProgressUpdated);
    (*(v18 + 8))(v21, v17);
  }

  v23 = sub_227141B34();
  v24 = v39;
  sub_2276639A0();
  v25 = sub_2276623E0();
  (*(v35 + 8))(v8, v36);
  v26 = [v23 downloadTaskWithURL_];

  v27 = *(a3 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
  MEMORY[0x28223BE20](v28);
  v34[-6] = a3;
  v34[-5] = v26;
  v29 = v38;
  v34[-4] = v37;
  v34[-3] = v29;
  v34[-2] = v24;
  sub_2276696A0();
  v30 = v26;
  v31 = sub_227663990();
  if (v31 <= 16)
  {
    if (v31 != 9)
    {
LABEL_10:
      v33 = MEMORY[0x277CCA790];
      goto LABEL_12;
    }
  }

  else if (v31 != 17)
  {
    if (v31 == 33)
    {
      v33 = MEMORY[0x277CCA798];
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v33 = MEMORY[0x277CCA7A0];
LABEL_12:
  LODWORD(v32) = *v33;
  [v30 setPriority_];

  [v30 resume];
}

uint64_t sub_227142614(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions;
  swift_beginAccess();

  v10 = a2;
  v11 = *(a1 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_22736B130(sub_227143C7C, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a1 + v9) = v21;
  swift_endAccess();
  v13 = sub_227663910();
  v15 = v14;
  v16 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v17 = v10;
  v18 = *(a1 + v16);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + v16);
  *(a1 + v16) = 0x8000000000000000;
  sub_22736AFB8(v17, v13, v15, v19);

  *(a1 + v16) = v22;
  return swift_endAccess();
}

void sub_227142788(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2276639B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  sub_22766A6C0();
  sub_22766B370();
  v39 = *(v10 + 8);
  v40 = v9;
  v39(v19, v9);
  v20 = *(v2 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
  v41 = v2;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB558, &qword_22767AA38);
  sub_2276696A0();
  v21 = v43;
  if (v43)
  {
    v22 = v43;
    sub_22766A6C0();
    v23 = v22;
    v24 = sub_22766B380();
    v25 = sub_22766C8B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 141558274;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v21;
      v28 = v23;
      _os_log_impl(&dword_226E8E000, v24, v25, "[Loader Cancel] Canceling task: %{mask.hash}@", v26, 0x16u);
      sub_226E97D1C(v27, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    v39(v17, v40);
    [v23 cancel];
  }

  else
  {
    sub_22766A6C0();
    (*(v5 + 16))(v8, a1, v4);
    v29 = sub_22766B380();
    v30 = sub_22766C8B0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v31 = 136446210;
      v32 = sub_227663910();
      v34 = v33;
      (*(v5 + 8))(v8, v4);
      v35 = sub_226E97AE8(v32, v34, &v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_226E8E000, v29, v30, "[Loader Cancel] No task tracked for request identifier %{public}s", v31, 0xCu);
      v36 = v38;
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v39(v14, v40);
  }
}

uint64_t sub_227142C1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_227663910();
  v6 = v5;
  v7 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v8 = *(a1 + v7);
  if (*(v8 + 16) && (, v9 = sub_226E92000(v4, v6), v11 = v10, , (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v9);
    v13 = v12;
  }

  else
  {

    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t sub_227142D44()
{
  v0 = sub_227663190();
  sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D4FCD8], v0);
  *(swift_allocObject() + 16) = v1;
  type metadata accessor for AssetLoaderResponse();

  return sub_227669280();
}

uint64_t sub_227142E54(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v12 - v5);
  v7 = sub_227663190();
  sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
  v8 = swift_allocError();
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D4FD00], v7);
  *v6 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_227363D88(v6, a2);
  return swift_endAccess();
}

uint64_t sub_227143014(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for AssetLoaderResponse();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 response];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 expectedContentLength];
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_2276624A0();
  (*(*(v15 - 8) + 16))(v11, a2, v15);
  *&v11[*(v8 + 20)] = v14;
  sub_227145B00(v11, v7);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  swift_beginAccess();
  sub_227363D88(v7, a1);
  swift_endAccess();
  return sub_227145B64(v11, type metadata accessor for AssetLoaderResponse);
}

uint64_t sub_227143244(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  *(&v12 - v7) = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  swift_beginAccess();
  v10 = a3;
  sub_227363D88(v8, a2);
  return swift_endAccess();
}

uint64_t sub_227143590@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - v9;
  v11 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskResults;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (*(v12 + 16))
  {
    v13 = *(a1 + v11);

    v14 = sub_226F3B1C0(a2);
    if (v15)
    {
      v16 = v14;
      v30 = v3;
      v17 = *(v12 + 56);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
      v29 = a2;
      v19 = v18;
      v20 = *(v18 - 8);
      sub_226E93170(v17 + *(v20 + 72) * v16, a3, &qword_27D7B9628, &unk_227674860);

      v21 = v19;
      a2 = v29;
      (*(v20 + 56))(a3, 0, 1, v21);
      goto LABEL_6;
    }
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
LABEL_6:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
  swift_beginAccess();
  sub_227363D88(v10, a2);
  swift_endAccess();
  result = sub_227143850();
  if (v25)
  {
    v26 = result;
    v27 = v25;
    swift_beginAccess();
    sub_227363C90(0, v26, v27);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_227143850()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
  sub_227669690();
  v3 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_requestIdentifierToTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(v4 + 56) + 8 * v12);
      sub_227145A58();

      v17 = v16;
      v18 = sub_22766CB30();

      if (v18)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return 0;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2271439C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_taskCompletions;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (*(v7 + 16))
  {
    v8 = *(a1 + v6);

    v9 = sub_226F3B1C0(a2);
    if (v10)
    {
      v16 = *(*(v7 + 56) + 16 * v9);

      v11 = swift_allocObject();
      v12 = 0;
      *(v11 + 16) = v16;
      v13 = sub_227145A50;
      goto LABEL_6;
    }
  }

  v13 = 0;
  v11 = 0;
  v12 = 1;
LABEL_6:
  swift_beginAccess();
  sub_227363B80(0, 0, a2);
  swift_endAccess();
  v14 = 0;
  result = 0;
  if ((v12 & 1) == 0)
  {
    result = swift_allocObject();
    *(result + 16) = v13;
    *(result + 24) = v11;
    v14 = sub_227145BC4;
  }

  *a3 = v14;
  a3[1] = result;
  return result;
}

void sub_227143BD4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_227142190(a1, a2, v6, v7);
}

uint64_t sub_227143C7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_227143CA4(void *a1, uint64_t a2)
{
  v65 = a2;
  v3 = sub_22766B390();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v65 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v65 - v21;
  v23 = sub_2276624A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v66 = &v65 - v30;
  MEMORY[0x28223BE20](v29);
  v68 = &v65 - v31;
  v72 = a1;
  v32 = [a1 originalRequest];
  if (v32)
  {
    v33 = v32;
    sub_227661F90();

    v34 = sub_227661FD0();
    (*(*(v34 - 8) + 56))(v13, 0, 1, v34);
  }

  else
  {
    v34 = sub_227661FD0();
    (*(*(v34 - 8) + 56))(v13, 1, 1, v34);
  }

  sub_226E95D18(v13, v15, &qword_27D7BB568, &qword_22767AA48);
  sub_227661FD0();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v15, 1, v34) == 1)
  {
    sub_226E97D1C(v15, &qword_27D7BB568, &qword_22767AA48);
    (*(v24 + 56))(v22, 1, 1, v23);
LABEL_7:
    sub_226E97D1C(v22, &unk_27D7BB570, &unk_227670FC0);
    sub_22766A6C0();
    v37 = v72;
    v38 = sub_22766B380();
    v39 = sub_22766C890();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 141558274;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v37;
      v42 = v37;
      _os_log_impl(&dword_226E8E000, v38, v39, "No remote URL in finished download task: %{mask.hash}@", v40, 0x16u);
      sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);
    }

    return (*(v70 + 8))(v7, v71);
  }

  sub_227661FB0();
  (*(v35 + 8))(v15, v34);
  v36 = *(v24 + 48);
  if (v36(v22, 1, v23) == 1)
  {
    goto LABEL_7;
  }

  v44 = *(v24 + 32);
  v44(v68, v22, v23);
  v45 = sub_227447BF8(0x6567616D692ELL, 0xE600000000000000);
  v47 = v46;
  v48 = __swift_project_boxed_opaque_existential_0((v69 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore), *(v69 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_assetFileStore + 24));
  sub_226E93170(*v48 + OBJC_IVAR____TtC15SeymourServices14AssetFileStore_browsingAssetDirectory, v20, &unk_27D7BB570, &unk_227670FC0);
  if (v36(v20, 1, v23) == 1)
  {
    v49 = v45;
    sub_226E97D1C(v20, &unk_27D7BB570, &unk_227670FC0);
    v50 = v67;
    sub_22766A6C0();

    v51 = sub_22766B380();
    v52 = sub_22766C890();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v73 = v54;
      *v53 = 141558274;
      *(v53 + 4) = 1752392040;
      *(v53 + 12) = 2080;
      v55 = sub_226E97AE8(v49, v47, &v73);

      *(v53 + 14) = v55;
      _os_log_impl(&dword_226E8E000, v51, v52, "Couldn't get absolute path from filename '%{mask.hash}s'", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AA9A450](v54, -1, -1);
      MEMORY[0x22AA9A450](v53, -1, -1);
    }

    else
    {
    }

    v59 = (*(v70 + 8))(v50, v71);
    v60 = *(v69 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
    MEMORY[0x28223BE20](v59);
    v61 = v72;
    *(&v65 - 2) = v62;
    *(&v65 - 1) = v61;
    sub_2276696A0();
    return (*(v24 + 8))(v68, v23);
  }

  else
  {
    sub_227662400();
    v56 = *(v24 + 8);
    v56(v20, v23);

    v57 = v66;
    v44(v66, v28, v23);
    sub_2274B2098();
    v58 = sub_2274B2CB0();
    v63 = *(v69 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
    MEMORY[0x28223BE20](v58);
    *(&v65 - 4) = v72;
    *(&v65 - 3) = v57;
    *(&v65 - 2) = v64;
    sub_2276696A0();
    v56(v68, v23);
    return (v56)(v57, v23);
  }
}

uint64_t sub_2271445C4(void *a1, uint64_t a2, uint64_t a3)
{
  v56 = a2;
  v57 = a3;
  v4 = sub_22766B390();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AssetProgressUpdated();
  v8 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v51 - v12;
  v13 = sub_227663CD0();
  v58 = *(v13 - 8);
  v59 = v13;
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v13);
  v52 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v51 - v25;
  v27 = sub_2276624A0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [a1 originalRequest];
  if (v32)
  {
    v33 = v32;
    sub_227661F90();

    v34 = sub_227661FD0();
    (*(*(v34 - 8) + 56))(v20, 0, 1, v34);
  }

  else
  {
    v34 = sub_227661FD0();
    (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
  }

  sub_226E95D18(v20, v22, &qword_27D7BB568, &qword_22767AA48);
  sub_227661FD0();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v22, 1, v34) == 1)
  {
    sub_226E97D1C(v22, &qword_27D7BB568, &qword_22767AA48);
    (*(v28 + 56))(v26, 1, 1, v27);
  }

  else
  {
    sub_227661FB0();
    (*(v35 + 8))(v22, v34);
    if ((*(v28 + 48))(v26, 1, v27) != 1)
    {
      (*(v28 + 32))(v31, v26, v27);
      v43 = v55;
      v44 = v60;
      sub_227141938(v55, v56 / v57);
      v46 = v58;
      v45 = v59;
      if ((*(v58 + 48))(v43, 1, v59) == 1)
      {
        (*(v28 + 8))(v31, v27);
        return sub_226E97D1C(v43, &qword_27D7B9648, &unk_227674880);
      }

      else
      {
        v47 = v52;
        (*(v46 + 32))(v52, v43, v45);
        v48 = v44 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub;
        v49 = *(v44 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_eventHub);
        v62 = *(v48 + 8);
        swift_getObjectType();
        v50 = v53;
        (*(v28 + 16))(v53, v31, v27);
        (*(v46 + 16))(v50 + *(v54 + 20), v47, v45);
        sub_226EB0F20(qword_2813A1330, type metadata accessor for AssetProgressUpdated);
        sub_2276699D0();
        sub_227145B64(v50, type metadata accessor for AssetProgressUpdated);
        (*(v46 + 8))(v47, v45);
        return (*(v28 + 8))(v31, v27);
      }
    }
  }

  sub_226E97D1C(v26, &unk_27D7BB570, &unk_227670FC0);
  sub_22766A6C0();
  v36 = a1;
  v37 = sub_22766B380();
  v38 = sub_22766C890();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 141558274;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2112;
    *(v39 + 14) = v36;
    *v40 = v36;
    v41 = v36;
    _os_log_impl(&dword_226E8E000, v37, v38, "No remote URL in download task: %{mask.hash}@", v39, 0x16u);
    sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v40, -1, -1);
    MEMORY[0x22AA9A450](v39, -1, -1);
  }

  return (*(v61 + 8))(v7, v62);
}

uint64_t sub_227144D54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB568, &qword_22767AA48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41 - v11;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v18 = a1;
  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  if (!os_log_type_enabled(v19, v20))
  {

    return (*(v14 + 8))(v17, v13);
  }

  v42 = v20;
  v21 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v46 = v41;
  *v21 = 141558274;
  *(v21 + 4) = 1752392040;
  *(v21 + 12) = 2080;
  v22 = [v18 originalRequest];
  v43 = v13;
  if (v22)
  {
    v23 = v22;
    sub_227661F90();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v26 = sub_227661FD0();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v6, v24, 1, v26);
  sub_226E95D18(v6, v8, &qword_27D7BB568, &qword_22767AA48);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    v28 = &qword_27D7BB568;
    v29 = &qword_22767AA48;
    v30 = v8;
  }

  else
  {
    sub_227661FB0();
    (*(v27 + 8))(v8, v26);
    v31 = sub_2276624A0();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v12, 1, v31) != 1)
    {
      v33 = sub_227662390();
      v34 = v35;
      (*(v32 + 8))(v12, v31);
      goto LABEL_12;
    }

    v28 = &unk_27D7BB570;
    v29 = &unk_227670FC0;
    v30 = v12;
  }

  sub_226E97D1C(v30, v28, v29);
  v33 = 0;
  v34 = 0;
LABEL_12:
  v44 = v33;
  v45 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v36 = sub_22766CB80();
  v38 = v37;

  v39 = sub_226E97AE8(v36, v38, &v46);

  *(v21 + 14) = v39;
  _os_log_impl(&dword_226E8E000, v19, v42, "Task is waiting for connectivity for remoteURL: %{mask.hash}s", v21, 0x16u);
  v40 = v41;
  __swift_destroy_boxed_opaque_existential_0(v41);
  MEMORY[0x22AA9A450](v40, -1, -1);
  MEMORY[0x22AA9A450](v21, -1, -1);

  return (*(v14 + 8))(v17, v43);
}

uint64_t sub_2271451F8(void *a1, void *a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_22766B390();
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v63 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  v15 = *(v69 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v69);
  v67 = (&v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v63 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB560, &qword_227682040);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = *(v2 + OBJC_IVAR____TtC15SeymourServices16AssetImageLoader_lock);
  v75 = v3;
  v76 = a1;
  v72 = &v63 - v27;
  sub_2276696A0();
  v73 = v3;
  v74 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9630, &qword_22767AA40);
  sub_2276696A0();
  v28 = v79[0];
  if (v79[0])
  {
    v29 = v68;
    if (v68)
    {
      v66 = v79[1];

      sub_22766A6C0();
      v30 = a1;
      v31 = v29;
      v32 = sub_22766B380();
      v33 = sub_22766C890();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v64 = v35;
        v65 = swift_slowAlloc();
        v79[0] = v65;
        *v34 = 138412546;
        *(v34 + 4) = v30;
        *v35 = v30;
        *(v34 + 12) = 2082;
        swift_getErrorValue();
        v36 = v77;
        v37 = v29;
        v38 = v78;
        v39 = v30;
        v40 = MEMORY[0x22AA995D0](v36, v38);
        v42 = sub_226E97AE8(v40, v41, v79);

        *(v34 + 14) = v42;
        _os_log_impl(&dword_226E8E000, v32, v33, "Task %@ completed with error: %{public}s", v34, 0x16u);
        v43 = v64;
        sub_226E97D1C(v64, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v43, -1, -1);
        v44 = v65;
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v34, -1, -1);

        (*(v70 + 8))(v12, v71);
      }

      else
      {

        (*(v70 + 8))(v12, v71);
        v37 = v29;
      }

      v51 = v72;
      v58 = v67;
      *v67 = v37;
      swift_storeEnumTagMultiPayload();
      v60 = v37;
      v28(v58);
      sub_226EA9E3C(v28);
      v59 = v28;
    }

    else
    {
      v51 = v72;
      sub_226E93170(v72, v25, &qword_27D7BB560, &qword_227682040);
      if ((*(v15 + 48))(v25, 1, v69) != 1)
      {
        sub_226E95D18(v25, v20, &qword_27D7B9628, &unk_227674860);

        v28(v20);
        sub_226EA9E3C(v28);
        sub_226EA9E3C(v28);
        v61 = v20;
        goto LABEL_15;
      }

      sub_226E97D1C(v25, &qword_27D7BB560, &qword_227682040);
      sub_22766A6C0();
      v52 = sub_22766B380();
      v53 = sub_22766C890();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_226E8E000, v52, v53, "Task completed before local file was saved.", v54, 2u);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v70 + 8))(v14, v71);
      v55 = sub_227663190();
      sub_226EB0F20(&qword_27D7B9620, MEMORY[0x277D4FDC8]);
      v56 = swift_allocError();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D4FDC0], v55);
      v58 = v67;
      *v67 = v56;
      swift_storeEnumTagMultiPayload();
      v28(v58);
      sub_226EA9E3C(v28);
      v59 = v28;
    }

    sub_226EA9E3C(v59);
    v61 = v58;
LABEL_15:
    sub_226E97D1C(v61, &qword_27D7B9628, &unk_227674860);
    return sub_226E97D1C(v51, &qword_27D7BB560, &qword_227682040);
  }

  sub_22766A6C0();
  v45 = a1;
  v46 = sub_22766B380();
  v47 = sub_22766C890();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 141558274;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2112;
    *(v48 + 14) = v45;
    *v49 = v45;
    v50 = v45;
    _os_log_impl(&dword_226E8E000, v46, v47, "No completion for finished task: %{mask.hash}@", v48, 0x16u);
    sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
    MEMORY[0x22AA9A450](v49, -1, -1);
    MEMORY[0x22AA9A450](v48, -1, -1);
  }

  (*(v70 + 8))(v9, v71);
  v51 = v72;
  return sub_226E97D1C(v51, &qword_27D7BB560, &qword_227682040);
}

unint64_t sub_227145A58()
{
  result = qword_28139D210;
  if (!qword_28139D210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28139D210);
  }

  return result;
}

uint64_t sub_227145B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetLoaderResponse();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227145B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_227145BDC()
{
  result = qword_27D7BB5E0;
  if (!qword_27D7BB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5E0);
  }

  return result;
}

unint64_t sub_227145C30(uint64_t a1)
{
  result = sub_227145C58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227145C58()
{
  result = qword_27D7BB5E8;
  if (!qword_27D7BB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5E8);
  }

  return result;
}

uint64_t sub_227145CAC()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EF30(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EF30((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t AMSRequestBagConsumerError.hashValue.getter()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

unint64_t sub_227145E54()
{
  result = qword_27D7BB5F0;
  if (!qword_27D7BB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB5F0);
  }

  return result;
}

unint64_t sub_227145EAC()
{
  result = qword_28139A078[0];
  if (!qword_28139A078[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28139A078);
  }

  return result;
}

size_t static Configuration.representativeSamples()()
{
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB5F8, &qword_22767ACD0);
  v212 = *(v209 - 1);
  v0 = *(v212 + 64);
  MEMORY[0x28223BE20](v209);
  v208 = &v168 - v1;
  v207 = sub_227663FA0();
  v211 = *(v207 - 8);
  v2 = *(v211 + 64);
  MEMORY[0x28223BE20](v207);
  v210 = &v168 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_227667370();
  v193 = *(v216 - 8);
  v4 = *(v193 + 64);
  MEMORY[0x28223BE20](v216);
  v215 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_2276676D0();
  v195 = *(v214 - 8);
  v6 = *(v195 + 64);
  MEMORY[0x28223BE20](v214);
  v213 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_227667500();
  v223 = *(v234 - 8);
  v8 = *(v223 + 64);
  MEMORY[0x28223BE20](v234);
  v233 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v196 = &v168 - v11;
  v235 = sub_227666ED0();
  v222 = *(v235 - 8);
  v12 = *(v222 + 64);
  MEMORY[0x28223BE20](v235);
  v232 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v201 = &v168 - v15;
  v218 = sub_227668970();
  v221 = *(v218 - 8);
  v16 = *(v221 + 64);
  MEMORY[0x28223BE20](v218);
  v238 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_227666CB0();
  v220 = *(v217 - 8);
  v18 = *(v220 + 64);
  MEMORY[0x28223BE20](v217);
  v237 = &v168 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_227668300();
  v231 = *(v219 - 8);
  v236 = v219 - 8;
  *&v229 = v231;
  v20 = *(v231 + 8);
  MEMORY[0x28223BE20](v219);
  v22 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_227668CB0();
  v24 = *(v23 - 8);
  v25 = v24;
  v26 = v24[8];
  MEMORY[0x28223BE20](v23);
  v28 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227668CA0();
  v29 = sub_22766C380();
  *(v29 + 16) = 3;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v192 = v29;
  v31 = v29 + v30;
  v32 = v24[2];
  v32(v29 + v30, v28, v23);
  v33 = v24[9];
  v204 = v32;
  v205 = v25 + 2;
  v32(v31 + v33, v28, v23);
  v34 = v25[4];
  v230 = v28;
  v206 = v23;
  v34(v31 + 2 * v33, v28, v23);
  v35 = sub_226F5D274();
  v191 = sub_22766BE70();
  v190 = sub_22766BE70();
  v189 = sub_22766BE70();
  v188 = sub_22766BE70();
  v187 = sub_22766BE70();
  v186 = sub_22766BE70();
  v185 = sub_22766BE70();
  sub_2276682F0();
  v36 = v219;
  v37 = sub_22766C380();
  *(v37 + 16) = 3;
  v38 = v229;
  v39 = (*(v229 + 80) + 32) & ~*(v229 + 80);
  v184 = v37;
  v40 = v37 + v39;
  v41 = *(v229 + 16);
  v41(v37 + v39, v22, v36);
  v42 = *(v231 + 9);
  v202 = v41;
  v203 = v38 + 16;
  v41(v40 + v42, v22, v36);
  v43 = *(v38 + 32);
  v231 = v22;
  v43(v40 + 2 * v42, v22, v36);
  v183 = sub_22766BE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB600, &qword_22767ACD8);
  v44 = swift_allocObject();
  v181 = xmmword_227675BD0;
  *(v44 + 16) = xmmword_227675BD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB608, &qword_22767ACE0);
  inited = swift_initStackObject();
  v229 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_22766C0A0();
  *(inited + 40) = v46;
  v194 = xmmword_22767A620;
  *(inited + 48) = xmmword_22767A620;
  *(inited + 64) = 1;
  v47 = sub_2271483E4(inited, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(inited + 32, &qword_27D7BB610, &qword_22767ACE8);
  *(v44 + 32) = v47;
  v48 = swift_initStackObject();
  *(v48 + 16) = v229;
  *(v48 + 32) = sub_22766C0A0();
  *(v48 + 48) = 0;
  *(v48 + 56) = 0;
  *(v48 + 40) = v49;
  *(v48 + 64) = 1;
  v50 = sub_2271483E4(v48, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v48 + 32, &qword_27D7BB610, &qword_22767ACE8);
  *(v44 + 40) = v50;
  v51 = swift_initStackObject();
  *(v51 + 16) = v229;
  *(v51 + 32) = sub_22766C0A0();
  *(v51 + 40) = v52;
  v180 = xmmword_22767ACC0;
  *(v51 + 48) = xmmword_22767ACC0;
  *(v51 + 64) = 1;
  v53 = sub_2271483E4(v51, &qword_27D7BB810, &qword_22767AEB8, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v51 + 32, &qword_27D7BB610, &qword_22767ACE8);
  v182 = v44;
  *(v44 + 48) = v53;
  v228 = sub_226F05E24();
  v357[0] = sub_22766CFA0();
  v357[1] = v357;
  v356 = sub_22766BE70();
  v357[2] = &v356;
  v197 = v35;
  v355 = sub_22766BE70();
  v357[3] = &v355;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v352 = v225;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v224 = v353;
  v354 = v353;
  v227 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v349[3] = v227;
  v350 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v226 = v350;
  v351 = v350;
  v54 = sub_2276638E0();

  v55 = *(v54 + 16);
  if (v55)
  {
    v318 = MEMORY[0x277D84F90];
    result = sub_226F20088(0, v55, 0);
    v57 = 0;
    v58 = v318;
    v59 = v222;
    v236 = v222 + 32;
    v60 = (v54 + 48);
    v61 = v201;
    while (v57 < *(v54 + 16))
    {
      v62 = *(v60 - 2);
      v63 = *(v60 - 1);
      v64 = *v60;
      sub_227666E90();
      v318 = v58;
      v66 = v58[2];
      v65 = v58[3];
      if (v66 >= v65 >> 1)
      {
        sub_226F20088(v65 > 1, v66 + 1, 1);
        v58 = v318;
      }

      ++v57;
      v58[2] = v66 + 1;
      result = (*(v59 + 32))(v58 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v66, v61, v235);
      v60 += 3;
      if (v55 == v57)
      {
        v179 = v58;

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  v179 = MEMORY[0x277D84F90];
LABEL_9:
  sub_227665950();
  sub_22714BEB8(&qword_27D7BB618, MEMORY[0x277D51A98]);
  v67 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB620, &qword_22767ACF0);
  v68 = sub_22766C380();
  v68[2] = 3;
  v68[4] = v67;
  v68[5] = v67;
  v178 = v68;
  v68[6] = v67;
  sub_227664010();
  sub_22714BEB8(&qword_28139BA00, MEMORY[0x277D50618]);
  swift_bridgeObjectRetain_n();
  v69 = sub_22766C5F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  v70 = sub_22766C380();
  v70[2] = 3;
  v70[4] = v69;
  v70[5] = v69;
  v177 = v70;
  v70[6] = v69;
  v71 = sub_227667C20();
  v72 = sub_22714BEB8(&qword_28139B4E0, MEMORY[0x277D531E0]);
  swift_bridgeObjectRetain_n();
  v173 = v71;
  v171 = v72;
  v73 = sub_22766C5F0();
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB628, &qword_22767ACF8);
  v74 = sub_22766C380();
  v74[2] = 3;
  v74[4] = v73;
  v74[5] = v73;
  v176 = v74;
  v74[6] = v73;
  swift_bridgeObjectRetain_n();
  v175 = sub_22766BE70();
  v75 = v237;
  sub_227666CA0();
  v76 = v217;
  v77 = sub_22766C380();
  *(v77 + 16) = 3;
  v78 = v220;
  v79 = (*(v220 + 80) + 32) & ~*(v220 + 80);
  v174 = v77;
  v80 = v77 + v79;
  v81 = *(v220 + 16);
  v81(v77 + v79, v75, v76);
  v82 = *(v78 + 72);
  v200 = v81;
  v201 = (v78 + 16);
  v81(v80 + v82, v75, v76);
  (*(v78 + 32))(v80 + 2 * v82, v75, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_2271482DC();
  v220 = sub_22766C2D0();
  v83 = v238;
  sub_227668960();
  v84 = v218;
  v85 = sub_22766C380();
  *(v85 + 16) = 3;
  v86 = v221;
  v87 = (*(v221 + 80) + 32) & ~*(v221 + 80);
  v172 = v85;
  v88 = v85 + v87;
  v89 = *(v221 + 16);
  v89(v85 + v87, v83, v84);
  v90 = *(v86 + 72);
  v198 = v89;
  v199 = v86 + 16;
  v89(v88 + v90, v83, v84);
  (*(v86 + 32))(v88 + 2 * v90, v83, v84);
  v349[0] = sub_22766CFA0();
  v349[1] = v349;
  v348 = sub_22766BE70();
  v349[2] = &v348;
  v346 = v225;
  v347 = v224;
  v344 = v227;
  v345 = v226;
  v91 = sub_2276638E0();

  v92 = *(v91 + 16);
  if (v92)
  {
    v318 = MEMORY[0x277D84F90];
    result = sub_226F20068(0, v92, 0);
    v93 = 0;
    v94 = v318;
    v95 = v223;
    v236 = v223 + 32;
    v96 = (v91 + 40);
    v97 = v196;
    while (v93 < *(v91 + 16))
    {
      v98 = *(v96 - 1);
      v99 = *v96;
      sub_2276674E0();
      v318 = v94;
      v101 = v94[2];
      v100 = v94[3];
      if (v101 >= v100 >> 1)
      {
        sub_226F20068(v100 > 1, v101 + 1, 1);
        v95 = v223;
        v94 = v318;
      }

      ++v93;
      v94[2] = v101 + 1;
      result = (*(v95 + 32))(v94 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v101, v97, v234);
      v96 += 2;
      if (v92 == v93)
      {

        goto LABEL_17;
      }
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v94 = MEMORY[0x277D84F90];
LABEL_17:
  v236 = sub_22766CFA0();
  v102 = v213;
  sub_2276676C0();
  v103 = v214;
  v104 = sub_22766C380();
  v221 = v104;
  *(v104 + 16) = 3;
  v105 = v195;
  v106 = v104 + ((*(v195 + 80) + 32) & ~*(v195 + 80));
  v107 = v195 + 16;
  v108 = *(v195 + 16);
  (v108)(v106, v102, v103);
  v109 = *(v105 + 72);
  v196 = v108;
  v197 = v107;
  (v108)(v106 + v109, v102, v103);
  (*(v105 + 32))(v106 + 2 * v109, v102, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB640, &qword_22767AD00);
  v110 = swift_allocObject();
  *(v110 + 16) = v181;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB648, &qword_22767AD08);
  v111 = swift_initStackObject();
  *(v111 + 16) = v229;
  *(v111 + 32) = sub_22766C0A0();
  *(v111 + 48) = 0;
  *(v111 + 56) = 0;
  *(v111 + 40) = v112;
  *(v111 + 64) = 1;
  v113 = sub_2271483E4(v111, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v111 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v110 + 32) = v113;
  v114 = swift_initStackObject();
  *(v114 + 16) = v229;
  *(v114 + 32) = sub_22766C0A0();
  *(v114 + 40) = v115;
  *(v114 + 48) = v194;
  *(v114 + 64) = 1;
  v116 = sub_2271483E4(v114, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v114 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v110 + 40) = v116;
  v169 = v110;
  v117 = swift_initStackObject();
  *(v117 + 16) = v229;
  *(v117 + 32) = sub_22766C0A0();
  *(v117 + 40) = v118;
  *(v117 + 48) = v180;
  *(v117 + 64) = 1;
  v119 = sub_2271483E4(v117, &qword_27D7BB808, &qword_22767AEB0, sub_226F491DC);
  swift_setDeallocating();
  sub_226E97D1C(v117 + 32, &qword_27D7BB650, &qword_22767AD10);
  *(v110 + 48) = v119;
  *&v229 = sub_22766CFA0();
  v120 = sub_22766C5F0();
  v121 = sub_22766C380();
  v121[2] = 3;
  v121[4] = v120;
  v121[5] = v120;
  v121[6] = v120;
  swift_bridgeObjectRetain_n();
  v122 = v215;
  sub_227667350();
  v123 = v216;
  v124 = sub_22766C380();
  v228 = v124;
  *(v124 + 16) = 3;
  v125 = v193;
  v126 = v124 + ((*(v193 + 80) + 32) & ~*(v193 + 80));
  v128 = v193 + 16;
  v127 = *(v193 + 16);
  v127(v126, v122, v123);
  v129 = *(v125 + 72);
  v195 = v128;
  *&v194 = v127;
  v127(v126 + v129, v122, v123);
  (*(v125 + 32))(v126 + 2 * v129, v122, v123);
  v317 = v192;
  v316 = v191;
  v318 = &v317;
  v319 = &v316;
  v315 = v190;
  v314 = v189;
  v320 = &v315;
  v321 = &v314;
  v313 = v188;
  v312 = v187;
  v322 = &v313;
  v323 = &v312;
  v311 = v186;
  v310 = v185;
  v324 = &v311;
  v325 = &v310;
  v309 = v184;
  v308 = v183;
  v326 = &v309;
  v327 = &v308;
  v307 = v182;
  v306 = v179;
  v328 = &v307;
  v329 = &v306;
  v305 = v178;
  v304 = v177;
  v330 = &v305;
  v331 = &v304;
  v303 = v176;
  v302 = v175;
  v332 = &v303;
  v333 = &v302;
  v301 = v174;
  v300 = v220;
  v334 = &v301;
  v335 = &v300;
  v299 = v172;
  v298 = v94;
  v336 = &v299;
  v337 = &v298;
  v297 = v236;
  v296 = v221;
  v338 = &v297;
  v339 = &v296;
  v295 = v169;
  v294 = v229;
  v340 = &v295;
  v341 = &v294;
  v293 = v121;
  v292 = v228;
  v342 = &v293;
  v343 = &v292;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB658, &qword_22767AD18);
  v130 = v224;
  v267 = v224;
  v268 = v224;
  v269 = v224;
  v270 = v224;
  v271 = v224;
  v272 = v224;
  v273 = v224;
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB660, &qword_22767AD20);
  v275 = v130;
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB668, &qword_22767AD28);
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB670, &qword_22767AD30);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB678, &qword_22767AD38);
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB680, &qword_22767AD40);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB688, &qword_22767AD48);
  v280 = v131;
  v281 = v130;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB690, &qword_22767AD50);
  v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB698, &qword_22767AD58);
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6A0, &qword_22767AD60);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6A8, &qword_22767AD68);
  v132 = v225;
  v286 = v225;
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6B0, &qword_22767AD70);
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6B8, &qword_22767AD78);
  v289 = v132;
  v290 = v131;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB6C0, &qword_22767AD80);
  v240 = sub_226F5BF60(&qword_27D7BB6C8, &qword_27D7BB658, &qword_22767AD18);
  v133 = v226;
  v241 = v226;
  v242 = v226;
  v243 = v226;
  v244 = v226;
  v245 = v226;
  v246 = v226;
  v247 = v226;
  v248 = sub_226F5BF60(&qword_27D7BB6D0, &qword_27D7BB660, &qword_22767AD20);
  v249 = v133;
  v250 = sub_226F5BF60(&qword_27D7BB6D8, &qword_27D7BB668, &qword_22767AD28);
  v251 = sub_226F5BF60(&qword_27D7BB6E0, &qword_27D7BB670, &qword_22767AD30);
  v252 = sub_226F5BF60(&qword_27D7BB6E8, &qword_27D7BB678, &qword_22767AD38);
  v253 = sub_226F5BF60(&qword_27D7BB6F0, &qword_27D7BB680, &qword_22767AD40);
  v134 = sub_226F5BF60(&qword_27D7BB6F8, &qword_27D7BB688, &qword_22767AD48);
  v254 = v134;
  v255 = v133;
  v256 = sub_226F5BF60(&qword_27D7BB700, &qword_27D7BB690, &qword_22767AD50);
  v257 = sub_226F5BF60(&qword_27D7BB708, &qword_27D7BB698, &qword_22767AD58);
  v258 = sub_226F5BF60(&qword_27D7BB710, &qword_27D7BB6A0, &qword_22767AD60);
  v259 = sub_226F5BF60(&qword_27D7BB718, &qword_27D7BB6A8, &qword_22767AD68);
  v135 = v227;
  v260 = v227;
  v261 = sub_226F5BF60(&qword_27D7BB720, &qword_27D7BB6B0, &qword_22767AD70);
  v262 = sub_226F5BF60(&qword_27D7BB728, &qword_27D7BB6B8, &qword_22767AD78);
  v263 = v135;
  v264 = v134;
  v265 = sub_226F5BF60(&qword_27D7BB730, &qword_27D7BB6C0, &qword_22767AD80);
  v136 = sub_2276638E0();

  v137 = *(v136 + 16);
  if (v137)
  {
    v239 = MEMORY[0x277D84F90];
    result = sub_226F20048(0, v137, 0);
    v138 = 0;
    v139 = *(v212 + 80);
    v236 = v239;
    v191 = v136 + ((v139 + 32) & ~v139);
    v192 = v137;
    v189 = (v223 + 16);
    v190 = (v222 + 16);
    v188 = v211 + 32;
    v193 = v136;
    while (v138 < *(v136 + 16))
    {
      v140 = v208;
      sub_226E93170(v191 + *(v212 + 72) * v138, v208, &qword_27D7BB5F8, &qword_22767ACD0);
      *&v229 = *(v140 + v209[12]);
      v141 = *(v140 + v209[16]);
      v142 = *(v140 + v209[20]);
      v143 = *(v140 + v209[24]);
      v144 = *(v140 + v209[28]);
      v145 = *(v140 + v209[32]);
      v146 = *(v140 + v209[36]);
      v147 = v209[40];
      v148 = *(v140 + v209[44]);
      v149 = *(v140 + v209[48]);
      v150 = *(v140 + v209[56]);
      v151 = *(v140 + v209[60]);
      v152 = v209[64];
      v228 = v138;
      v153 = *(v140 + v152);
      v154 = v209[52];
      v155 = *(v140 + v209[68]);
      v156 = v209[72];
      v157 = *(v140 + v209[76]);
      v224 = v149;
      v225 = v157;
      v158 = v209[80];
      v159 = *(v140 + v209[88]);
      v160 = v209[84];
      v161 = v209[92];
      v223 = *(v140 + v209[96]);
      v226 = *(v140 + v209[100]);
      v227 = v159;
      v162 = *(v140 + v209[104]);
      v221 = v161;
      v222 = v162;
      v220 = v209[108];
      v204(v230, v140, v206);
      v202(v231, v140 + v147, v219);
      (*v190)(v232, v140 + v154, v235);
      v200(v237, v140 + v156, v217);
      v198(v238, v140 + v158, v218);
      (*v189)(v233, v140 + v160, v234);
      (v196)(v213, v140 + v221, v214);
      (v194)(v215, v140 + v220, v216);

      v163 = v210;
      sub_227663E70();
      sub_226E97D1C(v140, &qword_27D7BB5F8, &qword_22767ACD0);
      v239 = v236;
      v165 = *(v236 + 16);
      v164 = *(v236 + 24);
      if (v165 >= v164 >> 1)
      {
        sub_226F20048(v164 > 1, v165 + 1, 1);
        v163 = v210;
        v236 = v239;
      }

      v166 = v228 + 1;
      v167 = v236;
      *(v236 + 16) = v165 + 1;
      result = (*(v211 + 32))(v167 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v165, v163, v207);
      v136 = v193;
      v138 = v166;
      if (v192 == v166)
      {

        return v236;
      }
    }

    goto LABEL_28;
  }

  return MEMORY[0x277D84F90];
}

void sub_227147D44(void *a1)
{
  v2 = [a1 data];
  if (v2)
  {
    v3 = v2;
    sub_227662590();

    sub_22714BEB8(&qword_28139BA28, MEMORY[0x277D50560]);
    sub_2276683D0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_22714BEB8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

unint64_t sub_227147EB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7E8, &qword_22767AE88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A58, &qword_227674E80);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7E8, &qword_22767AE88);
      result = sub_226F39E30(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2276694E0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_226E92AB8(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2271480B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E78, &qword_2276724C0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2271481B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E70, qword_22768D100);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2271482DC()
{
  result = qword_27D7BB630;
  if (!qword_27D7BB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8560, &unk_227671560);
    sub_227148368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB630);
  }

  return result;
}

unint64_t sub_227148368()
{
  result = qword_27D7BB638;
  if (!qword_27D7BB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB638);
  }

  return result;
}

unint64_t sub_2271483E4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();

    for (i = (a1 + 64); ; i += 40)
    {
      v9 = *(i - 4);
      v10 = *(i - 3);
      v11 = *(i - 2);
      v12 = *(i - 1);
      v13 = *i;

      a4(v11, v12, v13);
      result = sub_226E92000(v9, v10);
      if (v15)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v9;
      v16[1] = v10;
      v17 = v7[7] + 24 * result;
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      if (!--v4)
      {

        return v7;
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

uint64_t sub_227148508(uint64_t a1)
{
  result = sub_22714BEB8(&qword_28139BA30, MEMORY[0x277D50560]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227148560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7B0, &qword_22767AE48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7B8, &qword_22767AE50);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7B0, &qword_22767AE48);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227664EB0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714874C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7A0, &qword_22767AE38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7A8, &qword_22767AE40);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7A0, &qword_22767AE38);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227666FF0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_227148938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB790, &qword_22767AE28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB798, &qword_22767AE30);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB790, &qword_22767AE28);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_2276632A0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_227148B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB780, &qword_22767AE18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB788, &qword_22767AE20);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB780, &qword_22767AE18);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227663A30();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_227148D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB768, &qword_22767AE00);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v15, &qword_27D7B9460, &unk_227689B60);
      v5 = v15;
      v6 = v16;
      result = sub_226E92000(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

unint64_t sub_227148E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9780, &qword_227674BE0);
    v3 = sub_22766D010();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_227148F7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A0, &qword_227674C00);
    v3 = sub_22766D010();

    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_226F3AA10(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_227149068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7E0, &qword_22767AE80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9758, &qword_227674BB8);
    v8 = sub_22766D010();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7E0, &qword_22767AE80);
      result = sub_226F3AA2C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2276639B0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_227149264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v13, &unk_27D7BE5C0, &qword_22767D1D0);
      v5 = v13;
      v6 = v14;
      result = sub_226E92000(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_226F04970(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_227149394(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D8, &qword_227674D28);
    v3 = sub_22766D010();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      *&v17 = *(i - 5);
      *(&v17 + 1) = v5;
      *&v18 = v6;
      *(&v18 + 1) = v7;
      v19 = v8;

      sub_226EB396C(v6, v7, v8);

      result = sub_226F3ABA4(&v17);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 40 * result;
      v13 = v18;
      *v12 = v17;
      *(v12 + 16) = v13;
      *(v12 + 32) = v19;
      *(v3[7] + 8 * result) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_2271494D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98D0, &qword_227674D20);
    v3 = sub_22766D010();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      sub_226EB396C(v6, v7, v8);

      result = sub_226F3AB00(v5, v6, v7, v8);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_227149604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D8, &qword_227674C30);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v11, &qword_27D7BA1C0, &qword_227678670);
      v5 = v11;
      result = sub_226F49208(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_226F04970(&v12, (v3[7] + 32 * result));
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

unint64_t sub_22714972C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, &v16, &qword_27D7BC920, &qword_22767F820);
      v5 = v16;
      v6 = v17;
      result = sub_226E92000(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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

unint64_t sub_227149864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98B8, &qword_227674D08);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_226F3ACCC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_227149954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A8, &qword_227674CF8);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226F3ACCC(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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

unint64_t sub_227149A48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9868, &qword_227674CB8);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_226F3AC2C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_227149B54(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9900, &unk_2276808E0);
    v5 = sub_22766D010();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      sub_226EB396C(v7, v8, *(i - 8));
      result = a2(v7, v8, v9);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v5[6] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v2)
      {

        return v5;
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

unint64_t sub_227149C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB770, &qword_22767AE08);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v14, &qword_27D7BB778, &qword_22767AE10);
      v5 = v14[0];
      result = sub_226F3B02C(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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

unint64_t sub_227149DC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9778, &qword_227674BD8);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BA4A8, &qword_227678D20);
      result = sub_226F3B058(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2276624A0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_227149FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7D0, &qword_22767AE68);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9770, &qword_227674BD0);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7D0, &qword_22767AE68);
      result = sub_226F3B058(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2276624A0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_227663CD0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714A1CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9740, &qword_227674BA0);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);

      result = sub_226F3B1C0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_22714A2D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7F8, &qword_22767AE98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98A0, &qword_227674CF0);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7F8, &qword_22767AE98);
      v12 = *v6;
      result = sub_226F3B1C0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
      result = sub_22714C150(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714A4C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_226E92000(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22714A5C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A60, &qword_227674E88);
    v3 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_226F3B210(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22714A6B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F8, &qword_227674D48);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7B93B0, &unk_22768C130);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227662750();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714A8A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7F0, &qword_22767AE90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A50, &qword_227674E78);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7F0, &qword_22767AE90);
      result = sub_226F39E30(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2276694E0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_226E92AB8(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714AA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE6A0, qword_22768B5E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9748, &qword_227674BA8);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &unk_27D7BE6A0, qword_22768B5E0);
      v12 = *v6;
      result = sub_226F3B23C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for AssetMediaStreamLoader.TaskResult();
      result = sub_22714C0E8(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for AssetMediaStreamLoader.TaskResult);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714AC9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_226E92000(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_22714AD98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7C8, &qword_22767AE60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97D0, &qword_227674C28);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB7C8, &qword_22767AE60);
      result = sub_226F3B28C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_227668BB0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification();
      result = sub_22714C0E8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for RemoteBrowsingGuestPairingVerifier.Verification);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB800, &qword_22767AEA0);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v11, &qword_27D7BBBB0, &qword_22767AEA8);
      v5 = v11[0];
      result = sub_226F3B360(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_226E92AB8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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

unint64_t sub_22714B0E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7D8, &qword_22767AE70);
    v3 = sub_22766D010();
    v4 = a1 + 32;

    while (1)
    {
      sub_226E93170(v4, v11, &qword_27D7BBBF0, &qword_22767AE78);
      v5 = v11[0];
      result = sub_226F3A004(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_226E92AB8(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 48;
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

unint64_t sub_22714B234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9890, &qword_227674CE0);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22714B360(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB7C0, &qword_22767AE58);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_226F5E0B4(v5, v6);
      result = sub_226F49208(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_22714B48C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_22714B5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9910, &qword_227674D58);
  v3 = sub_22766D010();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_226E923A0(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_226E923A0(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22714B6B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB748, &qword_22767ADE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB750, &qword_22767ADE8);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB748, &qword_22767ADE0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227666600();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714B8A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB758, &qword_22767ADF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97C0, &qword_227674C18);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BB758, &qword_22767ADF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_226E92000(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_227667DE0();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714BA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A8, &qword_227674C08);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BAC70, &qword_2276796B0);
      result = sub_226F3A6FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_227665F20();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_227666760();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_22714BCD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22766D010();
    v8 = (a1 + 32);

    while (1)
    {
      v9 = *v8;
      result = a4();
      if (v11)
      {
        break;
      }

      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v7 + 56) + 8 * result) = v9;
      v12 = *(v7 + 16);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v14;
      ++v8;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_22714BDBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB740, &qword_22767ADD8);
    v3 = sub_22766D010();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E92000(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_22714BEB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_22714BF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BADA0, &qword_227679808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9818, &unk_22767C480);
    v8 = sub_22766D010();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_226E93170(v10, v6, &qword_27D7BADA0, &qword_227679808);
      result = sub_226F39F04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_227665440();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_22714C0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22714C150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9628, &unk_227674860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22714C1C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a2;
  v3 = sub_227662750();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v31[0] = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v31 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = v31 - v10;
  v12 = sub_2276627D0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v31 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v31 - v21;
  v23 = [a1 planIdentifier];
  if (v23)
  {
    v24 = v23;
    sub_2276627B0();

    (*(v13 + 32))(v22, v20, v12);
    v25 = [a1 dateViewed];
    if (v25)
    {
      v26 = v25;
      sub_227662710();

      v28 = v32;
      v27 = v33;
      (*(v32 + 32))(v11, v9, v33);
      (*(v13 + 16))(v17, v22, v12);
      (*(v28 + 16))(v31[0], v11, v27);
      sub_227667420();

      (*(v28 + 8))(v11, v27);
      (*(v13 + 8))(v22, v12);
      return;
    }

    (*(v13 + 8))(v22, v12);
  }

  v29 = sub_227664DD0();
  sub_22714CD08(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D51028], v29);
  swift_willThrow();
}

size_t static WorkoutPlanSummaryViewed.representativeSamples()()
{
  v38 = sub_227662750();
  v0 = *(v38 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2276627D0();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = v28 - v8;
  v33 = sub_227667440();
  v10 = *(v33 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v33);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662780();
  v44 = sub_227662630();
  v45[0] = v14;
  v45[1] = v45;
  v45[2] = &v44;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v40 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v41 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v15 = sub_2276638E0();

  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = v13;
    v39 = MEMORY[0x277D84F90];
    result = sub_226F200A8(0, v16, 0);
    v18 = v3;
    v19 = 0;
    v32 = v6;
    v20 = v39;
    v29 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v30 = v10;
    v21 = (v18 + 16);
    v22 = (v0 + 16);
    v28[1] = v10 + 32;
    v23 = v31;
    while (v19 < *(v15 + 16))
    {
      v24 = v15;
      sub_22714CBD8(v29 + *(v32 + 72) * v19, v9);
      v25 = *(v34 + 48);
      (*v21)(v35, v9, v36);
      (*v22)(v37, &v9[v25], v38);
      sub_227667420();
      sub_22714CC48(v9);
      v39 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F200A8(v26 > 1, v27 + 1, 1);
        v20 = v39;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      result = (*(v30 + 32))(v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, v23, v33);
      v15 = v24;
      if (v16 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_22714CA08(void *a1)
{
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667410();
  v12 = sub_2276626A0();
  (*(v8 + 8))(v11, v7);
  [a1 setDateViewed_];

  sub_227667430();
  v13 = sub_227662790();
  (*(v3 + 8))(v6, v2);
  [a1 setPlanIdentifier_];
}

uint64_t sub_22714CBD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22714CC48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB818, &qword_22767AEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22714CCB0(uint64_t a1)
{
  result = sub_22714CD08(&qword_2813A5608, MEMORY[0x277D52D18]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22714CD08(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_22714CD8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22714CDD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22714CE50(uint64_t a1)
{
  v37 = sub_227664530();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 64;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 72;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 56) + *(v3 + 72) * v10, v37);
      v39 = sub_2276644D0();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
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
  }

  return result;
}

uint64_t sub_22714D158(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  v2[28] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB820, &unk_22767AFE0);
  v2[29] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v2[32] = v6;
  v7 = *(v6 - 8);
  v2[33] = v7;
  v8 = *(v7 + 64) + 15;
  v2[34] = swift_task_alloc();
  v9 = sub_2276627D0();
  v2[35] = v9;
  v10 = *(v9 - 8);
  v2[36] = v10;
  v2[37] = *(v10 + 64);
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22714D308, 0, 0);
}

uint64_t sub_22714D308()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  sub_22714E1C4(v5, v0 + 16);
  v9 = *(v4 + 16);
  *(v0 + 312) = v9;
  *(v0 + 320) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v6, v3);
  v10 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 328) = v11;
  v12 = *(v0 + 160);
  *(v11 + 144) = *(v0 + 144);
  *(v11 + 160) = v12;
  *(v11 + 176) = *(v0 + 176);
  *(v11 + 192) = *(v0 + 192);
  v13 = *(v0 + 96);
  *(v11 + 80) = *(v0 + 80);
  *(v11 + 96) = v13;
  v14 = *(v0 + 128);
  *(v11 + 112) = *(v0 + 112);
  *(v11 + 128) = v14;
  v15 = *(v0 + 32);
  *(v11 + 16) = *(v0 + 16);
  *(v11 + 32) = v15;
  v16 = *(v0 + 64);
  *(v11 + 48) = *(v0 + 48);
  *(v11 + 64) = v16;
  (*(v4 + 32))(v11 + v10, v1, v3);
  v17 = *(v8 + 24);
  v22 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v0 + 336) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB828, &qword_22767AFF0);
  *v19 = v0;
  v19[1] = sub_22714D53C;

  return (v22)(v0 + 200, sub_22714E1FC, v11, v20, v7, v8);
}

uint64_t sub_22714D53C()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = sub_22714DEAC;
  }

  else
  {
    v5 = *(v2 + 328);

    v4 = sub_22714D658;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22714D658()
{
  v1 = v0[43];
  v2 = v0[27];
  v0[44] = v0[25];
  v3 = v2[8];
  v4 = v2[9];
  __swift_project_boxed_opaque_existential_0(v2 + 5, v3);

  v6 = sub_22714CE50(v5);
  v0[45] = v6;

  v7 = *(MEMORY[0x277D4F210] + 4);
  v8 = swift_task_alloc();
  v0[46] = v8;
  v9 = *(v4 + 8);
  *v8 = v0;
  v8[1] = sub_22714D748;

  return MEMORY[0x2821AED78](v6, v3, v9);
}

uint64_t sub_22714D748(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  v4[47] = a1;
  v4[48] = v1;

  v7 = v3[45];
  if (v1)
  {
    v8 = v4[44];

    v9 = v4[38];
    v10 = v4[34];
    v12 = v4[30];
    v11 = v4[31];
    v13 = v4[28];

    v14 = *(v6 + 8);

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22714D8FC, 0, 0);
  }
}

unint64_t sub_22714D8FC()
{
  v65 = v0;
  v1 = v0[44];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v50 = v0[33];
    v51 = v0[47];
    v48 = v0[29];
    v49 = v0[32];
    v64[0] = MEMORY[0x277D84F90];
    sub_226F200C8(0, v2, 0);
    v4 = v64[0];
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = sub_22766CC90();
    v46 = v0;
    v47 = (v3 + 56);
    v52 = v1;
    v45 = v1 + 64;
    do
    {
      if ((result & 0x8000000000000000) != 0 || result >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      if ((*(v5 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_28;
      }

      v55 = 1 << result;
      v56 = result >> 6;
      v63 = v4;
      v53 = v2;
      v54 = *(v1 + 36);
      v58 = *(v48 + 48);
      v9 = v0[30];
      v8 = v0[31];
      v10 = *(v1 + 48);
      v11 = result;
      v12 = sub_227665F20();
      v13 = *(v12 - 8);
      v60 = *(v13 + 16);
      v60(v8, v10 + *(v13 + 72) * v11, v12);
      v14 = *(v1 + 56);
      v15 = sub_227664530();
      v16 = *(v15 - 8);
      v62 = v11;
      (*(v16 + 16))(v8 + v58, v14 + *(v16 + 72) * v11, v15);
      v61 = v12;
      (*(v13 + 32))(v9, v8, v12);
      (*(v16 + 32))(v9 + *(v48 + 48), v8 + v58, v15);
      v17 = sub_2276644D0();
      if (*(v51 + 16))
      {
        v19 = v0[47];
        v20 = sub_226E92000(v17, v18);
        v22 = v21;

        if (v22)
        {
          v23 = *(*(v51 + 56) + 8 * v20);
        }
      }

      else
      {
      }

      v57 = v0[39];
      v59 = v0[40];
      v25 = v0[34];
      v24 = v0[35];
      v26 = v0[30];
      v27 = v0[28];
      v28 = v0[26];
      sub_227664490();
      v29 = *(v49 + 48);
      sub_227664510();
      sub_2276644F0();
      v57(v27, v28, v24);
      (*v47)(v27, 0, 1, v24);
      sub_227666750();
      v60(v25, v26, v61);
      sub_226E97D1C(v26, &qword_27D7BB820, &unk_22767AFE0);
      v4 = v63;
      v64[0] = v63;
      v31 = *(v63 + 16);
      v30 = *(v63 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_226F200C8(v30 > 1, v31 + 1, 1);
        v4 = v64[0];
      }

      v32 = v46[34];
      *(v4 + 16) = v31 + 1;
      sub_22714F73C(v32, v4 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31);
      v1 = v52;
      result = v62;
      if (v62 >= -(-1 << *(v52 + 32)))
      {
        goto LABEL_29;
      }

      v0 = v46;
      v5 = v45;
      if ((*(v45 + 8 * v56) & v55) == 0)
      {
        goto LABEL_30;
      }

      if (v54 != *(v52 + 36))
      {
        goto LABEL_31;
      }

      result = sub_22766CCB0();
      v2 = v53 - 1;
    }

    while (v53 != 1);
    v33 = v46[47];
    v34 = v46[44];

    if (!*(v4 + 16))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97A8, &qword_227674C08);
    v35 = sub_22766D010();
    goto LABEL_20;
  }

LABEL_19:
  v35 = MEMORY[0x277D84F98];
LABEL_20:
  v36 = v0[48];
  v64[0] = v35;

  sub_22714F0FC(v37, 1, v64);
  if (v36)
  {

    return swift_unexpectedError();
  }

  else
  {
    v38 = v0[38];
    v39 = v0[34];
    v41 = v0[30];
    v40 = v0[31];
    v42 = v0[28];

    v43 = v64[0];

    v44 = v0[1];

    return v44(v43);
  }
}

uint64_t sub_22714DEAC()
{
  v1 = v0[41];

  v2 = v0[43];
  v3 = v0[38];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[28];

  v8 = v0[1];

  return v8();
}

uint64_t sub_22714DF54@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a4;
  v7 = sub_227663FA0();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276638D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *__swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  v30 = a1;
  v17 = v31;
  result = sub_22714E27C(a3, a1, v15);
  if (!v17)
  {
    v27 = v11;
    v31 = v12;
    v19 = sub_2276637D0();
    v20 = sub_226F491E8(v19);
    v21 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v22 = v30;
    sub_226EAF48C(v30, v10);
    sub_227663F60();
    v24 = v23;
    (*(v29 + 8))(v10, v7);
    v25 = sub_22727227C(a3, v20, v22, v24);
    (*(v31 + 8))(v15, v27);

    *v28 = v25;
  }

  return result;
}

uint64_t sub_22714E27C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACD0, &qword_227679720);
  v11 = sub_2276627D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v12 + 16))(v15 + v14, a1, v11);
  v16 = sub_226F4BB6C(v15);
  swift_setDeallocating();
  (*(v12 + 8))(v15 + v14, v11);
  swift_deallocClassInstance();
  v17 = sub_227273B0C(v16, a2);

  if (!v3)
  {
    sub_22722AEAC(v17, v10);

    v19 = sub_2276638D0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v10, 1, v19) == 1)
    {
      sub_226E97D1C(v10, &unk_27D7BB920, &unk_227672480);
      v21 = sub_227664EC0();
      sub_22714F81C();
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51188], v21);
      return swift_willThrow();
    }

    else
    {
      return (*(v20 + 32))(a3, v10, v19);
    }
  }

  return result;
}

uint64_t sub_22714E544(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_2276627D0();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v3[30] = *(v5 + 64);
  v3[31] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB830, &qword_22767B000);
  v3[32] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v8 = sub_2276638D0();
  v3[34] = v8;
  v9 = *(v8 - 8);
  v3[35] = v9;
  v10 = *(v9 + 64) + 15;
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22714E6A8, 0, 0);
}

uint64_t sub_22714E6A8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = v5[16];
  v8 = v5[17];
  __swift_project_boxed_opaque_existential_0(v5 + 13, v7);
  sub_22714E1C4(v5, v0 + 16);
  (*(v4 + 16))(v1, v6, v3);
  v9 = (*(v4 + 80) + 200) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v0 + 296) = v10;
  v11 = *(v0 + 160);
  *(v10 + 144) = *(v0 + 144);
  *(v10 + 160) = v11;
  *(v10 + 176) = *(v0 + 176);
  *(v10 + 192) = *(v0 + 192);
  v12 = *(v0 + 96);
  *(v10 + 80) = *(v0 + 80);
  *(v10 + 96) = v12;
  v13 = *(v0 + 128);
  *(v10 + 112) = *(v0 + 112);
  *(v10 + 128) = v13;
  v14 = *(v0 + 32);
  *(v10 + 16) = *(v0 + 16);
  *(v10 + 32) = v14;
  v15 = *(v0 + 64);
  *(v10 + 48) = *(v0 + 48);
  *(v10 + 64) = v15;
  (*(v4 + 32))(v10 + v9, v1, v3);
  v16 = *(v8 + 24);
  v22 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v0 + 304) = v18;
  *v18 = v0;
  v18[1] = sub_22714E8B8;
  v20 = *(v0 + 256);
  v19 = *(v0 + 264);

  return (v22)(v19, sub_22714F874, v10, v20, v7, v8);
}

uint64_t sub_22714E8B8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v7 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v4 = sub_22714EC74;
  }

  else
  {
    v5 = *(v2 + 296);

    v4 = sub_22714E9D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22714E9D4()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[27];
  v5 = *(v0[33] + *(v0[32] + 48));
  v0[40] = v5;
  (*(v2 + 32))(v1);
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_22714EAA8;
  v7 = v0[36];
  v8 = v0[25];

  return sub_227432300(v8, v4 + 40, v5);
}

uint64_t sub_22714EAA8()
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 320);
  v6 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v4 = sub_22714ED00;
  }

  else
  {
    v4 = sub_22714EBD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22714EBD8()
{
  v1 = v0[33];
  v2 = v0[31];
  (*(v0[35] + 8))(v0[36], v0[34]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22714EC74()
{
  v1 = v0[37];

  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[31];

  v6 = v0[1];

  return v6();
}

uint64_t sub_22714ED00()
{
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[33];
  v4 = v0[31];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22714ED9C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_227663FA0();
  v36 = *(v7 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276627D0();
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  MEMORY[0x28223BE20](v10);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276638D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *__swift_project_boxed_opaque_existential_0(a2 + 18, a2[21]);
  v19 = a3;
  v20 = a1;
  v21 = v40;
  result = sub_22714E27C(v19, a1, v17);
  if (!v21)
  {
    v34 = v14;
    v40 = v13;
    sub_2276637C0();
    v23 = sub_2276637D0();
    v24 = sub_226F491E8(v23);
    v25 = *__swift_project_boxed_opaque_existential_0(a2, a2[3]);
    sub_226EAF48C(a1, v38);
    v26 = v38;
    sub_227663F60();
    v28 = v27;
    (*(v36 + 8))(v26, v7);
    v29 = v39;
    v30 = sub_22727227C(v39, v24, v20, v28);
    (*(v37 + 8))(v29, v10);

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB830, &qword_22767B000) + 48);
    v32 = v35;
    result = (*(v34 + 32))(v35, v17, v40);
    *(v32 + v31) = v30;
  }

  return result;
}

void sub_22714F0FC(uint64_t a1, char a2, uint64_t *a3)
{
  v73 = a3;
  v6 = sub_227666760();
  v70 = *(v6 - 8);
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_227665F20();
  v69 = *(v72 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v61 - v15;
  v65 = *(a1 + 16);
  if (!v65)
  {
    goto LABEL_24;
  }

  v61[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v14 + 48);
  v18 = *(v68 + 80);
  v66 = a1;
  v19 = a1 + ((v18 + 32) & ~v18);
  v20 = (v69 + 32);
  v21 = (v70 + 32);
  v63 = v19;
  sub_22714F7AC(v19, v16);
  v62 = *v20;
  v62(v11, v16, v72);
  v22 = *v21;
  v64 = v17;
  v67 = v6;
  v22(v71, &v16[v17], v6);
  v23 = *v73;
  v25 = sub_226F3A6FC(v11);
  v26 = *(v23 + 16);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v29 = v24;
  if (*(v23 + 24) >= v28)
  {
    if (a2)
    {
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_226FF3C28();
      if ((v29 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  v30 = v73;
  sub_226FEA754(v28, a2 & 1);
  v31 = *v30;
  v32 = sub_226F3A6FC(v11);
  if ((v29 & 1) == (v33 & 1))
  {
    v25 = v32;
    if ((v29 & 1) == 0)
    {
LABEL_14:
      v36 = v72;
      v37 = *v73;
      *(*v73 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v62((v37[6] + *(v69 + 72) * v25), v11, v36);
      v38 = v67;
      v22((v37[7] + *(v70 + 72) * v25), v71, v67);
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v37[2] = v41;
      if (v65 != 1)
      {
        v42 = 1;
        while (v42 < *(v66 + 16))
        {
          sub_22714F7AC(v63 + *(v68 + 72) * v42, v16);
          v43 = *v20;
          (*v20)(v11, v16, v72);
          v44 = *v21;
          (*v21)(v71, &v16[v64], v38);
          v45 = *v73;
          v46 = sub_226F3A6FC(v11);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v40 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v40)
          {
            goto LABEL_26;
          }

          v51 = v47;
          if (*(v45 + 24) < v50)
          {
            v52 = v73;
            sub_226FEA754(v50, 1);
            v53 = *v52;
            v46 = sub_226F3A6FC(v11);
            if ((v51 & 1) != (v54 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v51)
          {
            goto LABEL_11;
          }

          v55 = v72;
          v56 = *v73;
          *(*v73 + 8 * (v46 >> 6) + 64) |= 1 << v46;
          v57 = v46;
          v43((v56[6] + *(v69 + 72) * v46), v11, v55);
          v58 = v56[7] + *(v70 + 72) * v57;
          v38 = v67;
          v44(v58, v71, v67);
          v59 = v56[2];
          v40 = __OFADD__(v59, 1);
          v60 = v59 + 1;
          if (v40)
          {
            goto LABEL_27;
          }

          ++v42;
          v56[2] = v60;
          if (v65 == v42)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v34 = swift_allocError();
    swift_willThrow();
    v76 = v34;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v70 + 8))(v71, v67);
      (*(v69 + 8))(v11, v72);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_22766D220();
  __break(1u);
LABEL_29:
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD00000000000001BLL, 0x8000000227694E60);
  sub_22766CF90();
  MEMORY[0x22AA98450](39, 0xE100000000000000);
  sub_22766CFB0();
  __break(1u);
}

uint64_t sub_22714F73C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22714F7AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC70, &qword_2276796B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22714F81C()
{
  result = qword_28139B898;
  if (!qword_28139B898)
  {
    sub_227664EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B898);
  }

  return result;
}

uint64_t static KeyCertificate.canonical()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662300();
  v3 = MEMORY[0x22AA8E800](v2);
  v5 = v4;
  result = type metadata accessor for KeyCertificate();
  v7 = (a1 + *(result + 20));
  *v7 = v3;
  v7[1] = v5;
  return result;
}

uint64_t sub_22714F940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662300();
  result = MEMORY[0x22AA8E800](v4);
  v6 = (a2 + *(a1 + 20));
  *v6 = result;
  v6[1] = v7;
  return result;
}

uint64_t sub_22714F978(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_226F1EF30(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_22766CC90();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_226F1EF30((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_226EB526C(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_226EB526C(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_22714FBA0(id a1@<X0>, uint64_t a2@<X8>)
{
  v177 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F08, &qword_227672920);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v180 = v156 - v5;
  v6 = sub_227664210();
  v182 = *(v6 - 8);
  v183 = v6;
  v7 = *(v182 + 64);
  MEMORY[0x28223BE20](v6);
  v181 = v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F00, &unk_227672910);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v179 = v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v156 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v178 = v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v156 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v156 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v156 - v25;
  v27 = sub_2276624A0();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v176 = v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v175 = v156 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v156 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = v156 - v37;
  v39 = [a1 identifier];
  if (!v39)
  {
    goto LABEL_13;
  }

  v173 = v14;
  v188 = v27;
  v40 = v39;
  v172 = sub_22766C000();
  v42 = v41;

  v43 = [a1 title];
  if (!v43)
  {

LABEL_13:
    v54 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v54 - 8) + 104))(v55, *MEMORY[0x277D51028], v54);
    swift_willThrow();

    return;
  }

  v169 = v21;
  v171 = v36;
  v44 = v43;
  v168 = sub_22766C000();
  v174 = v45;

  v184 = a1;
  v46 = [a1 streamingURL];
  if (v46)
  {
    v47 = v46;
    sub_22766C000();
  }

  sub_227662310();
  v48 = v28[6];
  v49 = v188;
  if (v48(v26, 1, v188) == 1)
  {

    v50 = v26;
LABEL_12:
    sub_226E97D1C(v50, &unk_27D7BB570, &unk_227670FC0);
    a1 = v184;
    goto LABEL_13;
  }

  v167 = v42;
  v170 = v28;
  v51 = v28[4];
  v51(v38, v26, v49);
  v52 = [v184 sharingURL];
  if (v52)
  {
    v53 = v52;
    sub_22766C000();

    v49 = v188;
  }

  sub_227662310();
  if (v48(v24, 1, v49) == 1)
  {
    (v170[1])(v38, v49);

    v50 = v24;
    goto LABEL_12;
  }

  v56 = v171;
  v51(v171, v24, v49);
  v57 = v184;
  v58 = [v184 trainerEvents];
  v59 = v38;
  if (!v58)
  {
    v65 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D51028], v65);
    swift_willThrow();

    v64 = v170;

    goto LABEL_23;
  }

  v60 = v58;
  v61 = MEMORY[0x22AA99A00]();
  v62 = v185;
  v63 = sub_227158438(v60);
  v64 = v170;
  if (v62)
  {
    objc_autoreleasePoolPop(v61);

LABEL_23:
    v75 = v64[1];
    v75(v56, v49);
    v76 = v59;
LABEL_24:
    v75(v76, v49);
    return;
  }

  v67 = v63;
  objc_autoreleasePoolPop(v61);
  v68 = sub_226F3FC54(v67);

  v69 = v184;
  v70 = [v184 musicTracks];
  if (!v70)
  {
    v73 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D51028], v73);
    swift_willThrow();

LABEL_21:

LABEL_22:
    v64 = v170;
    goto LABEL_23;
  }

  v71 = v70;
  v72 = MEMORY[0x22AA99A00]();
  v77 = sub_227156A60(v71, MEMORY[0x277D4FEC8], sub_226F1F408, type metadata accessor for ManagedMusicTrack, sub_2275D46FC);
  objc_autoreleasePoolPop(v72);
  v78 = sub_226F3FAB8(v77);

  v79 = [v69 mediaMoments];
  if (!v79)
  {
    v82 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v82 - 8) + 104))(v83, *MEMORY[0x277D51028], v82);
    swift_willThrow();

    goto LABEL_21;
  }

  v80 = v79;
  v81 = MEMORY[0x22AA99A00]();
  v84 = sub_2271579B8(v80);
  objc_autoreleasePoolPop(v81);
  v164 = sub_226F3F91C(v84);

  v85 = [v69 artwork];
  if (v85)
  {
    v86 = v85;
    sub_227662590();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
  sub_227125C68();
  sub_2276683D0();
  v185 = v186;
  v87 = [v69 musicPlaylistURL];
  if (v87)
  {
    v88 = v87;
    sub_22766C000();
  }

  v165 = v78;
  sub_227662310();
  v89 = v184;
  v90 = [v184 musicPlaylistIdentifier];
  if (v90)
  {
    v91 = v90;
    v92 = sub_22766C000();
    v163 = v93;
  }

  else
  {
    v92 = 0;
    v163 = 0;
  }

  v94 = v173;
  v95 = v181;
  v96 = [v89 preview];
  if (v96)
  {
    sub_226F96E94(v96, v95);
    v100 = v182;
    v101 = v94;
    v102 = v183;
    (*(v182 + 32))(v101, v95, v183);
    v103 = v102;
    v104 = 0;
    v49 = v188;
  }

  else
  {
    v97 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    v98 = swift_allocError();
    (*(*(v97 - 8) + 104))(v99, *MEMORY[0x277D51028], v97);
    swift_willThrow();

    v104 = 1;
    v49 = v188;
    v100 = v182;
    v103 = v183;
  }

  (*(v100 + 56))(v173, v104, 1, v103);
  v105 = [v89 location];
  if (v105)
  {
    v106 = v105;
    v181 = sub_22766C000();
    v183 = v107;
  }

  else
  {
    v181 = 0;
    v183 = 0;
  }

  v108 = [v89 summary];
  v166 = v68;
  if (v108)
  {
    v109 = v108;
    sub_22766C000();
    v182 = v110;
  }

  else
  {
    v182 = 0;
  }

  v64 = v170;
  v111 = [v89 contributors];
  if (!v111)
  {
    v114 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v114 - 8) + 104))(v115, *MEMORY[0x277D51028], v114);
    swift_willThrow();

    sub_226E97D1C(v173, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v169, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_23;
  }

  v112 = v111;
  v162 = v92;
  v113 = MEMORY[0x22AA99A00]();
  v116 = sub_227156A60(v112, MEMORY[0x277D4FFF0], sub_226F1F3C8, type metadata accessor for ManagedContributor, sub_2270A7880);
  objc_autoreleasePoolPop(v113);
  v117 = sub_226F3F780(v116);

  v118 = [v89 accessibilityFeatures];
  if (!v118)
  {
    v121 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v121 - 8) + 104))(v122, *MEMORY[0x277D51028], v121);
    swift_willThrow();

    v49 = v188;

    sub_226E97D1C(v173, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v169, &unk_27D7BB570, &unk_227670FC0);
    goto LABEL_22;
  }

  v119 = v118;
  v161 = v117;
  v120 = MEMORY[0x22AA99A00]();
  v123 = sub_226EB218C(v119, sub_226F1F2E8, type metadata accessor for ManagedCatalogAccessibilityFeature, &selRef_feature, sub_226F51824, MEMORY[0x277D530D8]);
  v124 = v59;
  objc_autoreleasePoolPop(v120);
  v160 = sub_226F3ECEC(v123);

  v125 = [v89 commentaryEvents];
  if (!v125)
  {
    v128 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v128 - 8) + 104))(v129, *MEMORY[0x277D51028], v128);
    swift_willThrow();

LABEL_60:

    sub_226E97D1C(v173, &qword_27D7B8F00, &unk_227672910);
    sub_226E97D1C(v169, &unk_27D7BB570, &unk_227670FC0);
    v75 = v170[1];
    v49 = v188;
    v75(v171, v188);
    v76 = v59;
    goto LABEL_24;
  }

  v126 = v125;
  v127 = MEMORY[0x22AA99A00]();
  v130 = sub_2271570C0(v126);
  objc_autoreleasePoolPop(v127);
  v158 = sub_226F3F5E4(v130);

  v131 = [v184 streamingProgramIdentifier];
  if (v131)
  {
    v132 = v131;
    v157 = sub_22766C000();
    v159 = v133;
  }

  else
  {
    v157 = 0;
    v159 = 0;
  }

  v134 = [v184 languageDisclaimers];
  if (!v134)
  {
    v137 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v137 - 8) + 104))(v138, *MEMORY[0x277D51028], v137);
    swift_willThrow();

LABEL_59:

    goto LABEL_60;
  }

  v135 = v134;
  v136 = MEMORY[0x22AA99A00]();
  v139 = sub_227156A60(v135, MEMORY[0x277D51730], sub_226F1F388, type metadata accessor for ManagedLanguageDisclaimer, sub_2271E39B0);
  objc_autoreleasePoolPop(v136);
  v156[3] = sub_226F3F448(v139);

  v140 = [v184 coachingEvents];
  if (!v140)
  {
    v143 = sub_227664DD0();
    sub_226EB2904(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v143 - 8) + 104))(v144, *MEMORY[0x277D51028], v143);
    swift_willThrow();

    goto LABEL_59;
  }

  v141 = v140;
  v142 = MEMORY[0x22AA99A00]();
  v145 = sub_227156A60(v141, MEMORY[0x277D50520], sub_226F1F368, type metadata accessor for ManagedCoachingEvent, sub_226F5E16C);
  objc_autoreleasePoolPop(v142);
  v156[2] = sub_226F3F2AC(v145);

  v156[1] = sub_2274B47BC([v184 availableAudioLanguages]);
  v146 = MEMORY[0x277D84FA0];
  if (v185)
  {
    v146 = v185;
  }

  v185 = v146;
  v147 = [v184 contentRatingSystem];
  if (v147)
  {
    v148 = v147;
    v149 = sub_22766C000();
    v151 = v150;
  }

  else
  {
    v149 = 0;
    v151 = 0;
  }

  v186 = v149;
  v187 = v151;
  sub_227665900();
  sub_226EB2904(&qword_27D7BB868, MEMORY[0x277D51A70]);
  sub_227663AF0();
  sub_226E93170(v169, v178, &unk_27D7BB570, &unk_227670FC0);
  sub_226E93170(v173, v179, &qword_27D7B8F00, &unk_227672910);
  v152 = v170;
  v153 = v170[2];
  v154 = v188;
  v153(v175, v171, v188);
  v153(v176, v124, v154);
  sub_227666430();

  sub_226E97D1C(v173, &qword_27D7B8F00, &unk_227672910);
  sub_226E97D1C(v169, &unk_27D7BB570, &unk_227670FC0);
  v155 = v152[1];
  v155(v171, v154);
  v155(v124, v154);
}