uint64_t sub_268161264(uint64_t a1, unint64_t a2)
{
  v4 = sub_2681612B0(a1, a2);
  sub_2681613C8(&unk_2878FAD40);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2681612B0(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_2683CFBC8())
  {
    result = sub_2681614AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2683D0158();
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
          result = sub_2683D01E8();
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

  return MEMORY[0x277D84F90];
}

uint64_t sub_2681613C8(uint64_t result)
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

    result = sub_26816151C(result, v8, 1, v3);
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

void *sub_2681614AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC58, &qword_2683D4490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26816151C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC58, &qword_2683D4490);
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

unint64_t sub_268161610()
{
  result = qword_28024DC40;
  if (!qword_28024DC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024DC40);
  }

  return result;
}

_OWORD *sub_268161678(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void OUTLINED_FUNCTION_3_4()
{

  JUMPOUT(0x26D616690);
}

uint64_t sub_2681616D0()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  result = sub_2683ABE58(v2);
  v4 = result;
  v5 = 0;
  v6 = v1;
  while (1)
  {
    if (v4 == v5)
    {

      result = sub_2683ABE58(v6);
      v9 = result;
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          swift_getKeyPath();
          v17 = MEMORY[0x277D84F90];
          v23 = MEMORY[0x277D84F90];
          result = sub_2683ABE58(v1);
          v18 = result;
          v19 = 0;
          while (v18 != v19)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x26D616C90](v19, v1);
            }

            else
            {
              if (v19 >= *(v1 + 16))
              {
                goto LABEL_49;
              }

              v20 = *(v1 + 8 * v19 + 32);
            }

            v21 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_48;
            }

            swift_getAtKeyPath();

            ++v19;
            if (v22)
            {
              MEMORY[0x26D616770](result);
              if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2683CFCD8();
              }

              result = sub_2683CFD08();
              v17 = v23;
              v19 = v21;
            }
          }

          return v17;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D616C90](i, v6);
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v11 = *(v6 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_46;
        }

        v12 = sub_2683CD4B8();
        if (!v13)
        {
          break;
        }

        if (v12 == 0x7465536F54646461 && v13 == 0xE800000000000000)
        {
        }

        else
        {
          v15 = sub_2683D0598();

          if ((v15 & 1) == 0)
          {
            break;
          }
        }

        sub_2683D01F8();
        v16 = *(v1 + 16);
        sub_2683D0238();
        sub_2683D0248();
        result = sub_2683D0208();
LABEL_30:
        ;
      }

      goto LABEL_30;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v5;
    if (v22)
    {
      MEMORY[0x26D616770](result);
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v6 = v1;
      v5 = v8;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_268161A6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2683CD4C8();
  *a2 = v5;
  return result;
}

uint64_t sub_268161AA8()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v14 = MEMORY[0x277D84F90];
  result = sub_2683ABE58(v2);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if (sub_2683CD438())
    {
    }

    else
    {
      sub_2683D01F8();
      v7 = *(v14 + 16);
      sub_2683D0238();
      sub_2683D0248();
      result = sub_2683D0208();
    }
  }

  v8 = v14;
  swift_getKeyPath();
  v15 = v1;
  result = sub_2683ABE58(v8);
  v9 = result;
  v10 = 0;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v10, v8);
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_30;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_29;
    }

    swift_getAtKeyPath();

    ++v10;
    if (v13)
    {
      MEMORY[0x26D616770](result);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v15;
      v10 = v12;
    }
  }

  return v1;
}

uint64_t sub_268161CE4()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  swift_getKeyPath();
  v9 = v1;
  result = sub_2683ABE58(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return v1;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v5;
    if (v8)
    {
      MEMORY[0x26D616770](result);
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v9;
      v5 = v7;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_268161E50()
{
  v0 = sub_2681616D0();
  if (sub_2683ABE58(v0))
  {
    return v0;
  }

  return sub_268161AA8();
}

uint64_t sub_268161EA4()
{
  result = sub_2683CDAB8();
  if (result)
  {
    v1 = result;
    result = sub_2683ABE58(result);
    v2 = result;
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        return 0;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D616C90](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v4 = *(v1 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_2683CD438() && (v5 = sub_2683CD4B8(), v7 = v6, , v7))
      {
        if (v5 == 0x724665766F6D6572 && v7 == 0xED00007465536D6FLL)
        {

          return 1;
        }

        v9 = sub_2683D0598();

        if (v9)
        {

          return 1;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_26816201C()
{

  sub_2683CDDE8();
  OUTLINED_FUNCTION_0_12();
  sub_2683CDDD8();
  if (v9)
  {
    sub_2683CD7C8();
  }

  OUTLINED_FUNCTION_0_12();
  sub_2683CDDD8();
  if (v9 && (v0 = sub_2683CD7D8(), , v0))
  {
    swift_getKeyPath();
    v8 = MEMORY[0x277D84F90];
    result = sub_2683ABE58(v0);
    v2 = result;
    v3 = 0;
    while (1)
    {
      if (v2 == v3)
      {

        goto LABEL_18;
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D616C90](v3, v0);
      }

      else
      {
        if (v3 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      swift_getAtKeyPath();

      ++v3;
      if (v7)
      {
        MEMORY[0x26D616770](result);
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
        v3 = v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_0_12();
    sub_2683CDDE8();

    if (!v9 || (v6 = sub_2683CD4E8(), , !v6))
    {
      OUTLINED_FUNCTION_0_12();
      sub_2683CDDD8();
      if (v9)
      {
        sub_2683CD4E8();
      }
    }

    return v9;
  }

  return result;
}

id sub_268162270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  if (!a1)
  {
    return 0;
  }

  sub_2683CD7B8();
  if (!v9)
  {
    return 0;
  }

  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v10 = sub_26835E5F8();
  v11 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
  return sub_26835E66C(v10, 0, 0, 0, 0, v8, v6, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_2681623EC(uint64_t a1)
{
  v2 = sub_2683CD928();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC60, &qword_2683D4660);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  if (a1 && sub_2683CD4D8())
  {
    sub_2683CD918();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v2);
  }

  (*(v3 + 104))(v18, *MEMORY[0x277D5EA28], v2);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v2);
  v21 = *(v7 + 48);
  sub_26816284C(v20, v10);
  sub_26816284C(v18, &v10[v21]);
  OUTLINED_FUNCTION_2_6(v10);
  if (!v23)
  {
    sub_26816284C(v10, v15);
    OUTLINED_FUNCTION_2_6(&v10[v21]);
    if (!v23)
    {
      (*(v3 + 32))(v6, &v10[v21], v2);
      sub_2681628BC();
      v22 = sub_2683CFA58();
      v24 = *(v3 + 8);
      v24(v6, v2);
      sub_26812C310(v18, &qword_28024DC68, &qword_2683D4668);
      sub_26812C310(v20, &qword_28024DC68, &qword_2683D4668);
      v24(v15, v2);
      sub_26812C310(v10, &qword_28024DC68, &qword_2683D4668);
      return v22 & 1;
    }

    OUTLINED_FUNCTION_1_8(v18);
    OUTLINED_FUNCTION_1_8(v20);
    (*(v3 + 8))(v15, v2);
LABEL_13:
    sub_26812C310(v10, &qword_28024DC60, &qword_2683D4660);
    v22 = 0;
    return v22 & 1;
  }

  OUTLINED_FUNCTION_1_8(v18);
  OUTLINED_FUNCTION_1_8(v20);
  OUTLINED_FUNCTION_2_6(&v10[v21]);
  if (!v23)
  {
    goto LABEL_13;
  }

  sub_26812C310(v10, &qword_28024DC68, &qword_2683D4668);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_268162794(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2681627E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26816284C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2681628BC()
{
  result = qword_28024DC70;
  if (!qword_28024DC70)
  {
    sub_2683CD928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return sub_26812C310(a1, v1, v2);
}

uint64_t type metadata accessor for SetTaskAttributeCATPatternsExecutor()
{
  result = qword_28024DC78;
  if (!qword_28024DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681629E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681629F8()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(49);

  return v6(v5);
}

uint64_t sub_268162AF4()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_268162C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268162C34()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(39);

  return v6(v5);
}

uint64_t sub_268162D30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268162D44()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12(MEMORY[0x277D55BE8]);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(38);

  return v6(v5);
}

uint64_t sub_268162E40()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    v13 = OUTLINED_FUNCTION_5();

    return v14(v13);
  }
}

uint64_t sub_268162F6C()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_268162FD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_268163024(a1, a2);
}

uint64_t sub_268163024(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CF238();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_2683CF0A8();
  (*(v5 + 8))(a2, v4);
  sub_268163208(a1);
  return v12;
}

uint64_t sub_268163198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268163208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268163274(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_13();
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = type metadata accessor for NotebookSpatialEventTriggerConcept.Builder(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = sub_2681E0784();
  sub_2683C7AE4([a1 event], v7);
  v12 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  OUTLINED_FUNCTION_2_7();
  sub_268163BC8(v7, v11 + v12);
  swift_endAccess();
  sub_26812C310(v7, &unk_28024E7C0, &unk_2683D6CA0);
  if ([a1 mobileSpace] == 1)
  {
    sub_2683CFB38();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v1, v13, 1, v14);
  v15 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace;
  OUTLINED_FUNCTION_2_7();
  sub_268163BC8(v1, v11 + v15);
  swift_endAccess();
  sub_26812C310(v1, &unk_28024E7C0, &unk_2683D6CA0);
  sub_2683CF088();
  v16 = sub_26812E314([a1 placemark]);
  v17 = sub_2681E07F4(v16);

  v18 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_2681E08AC(v17);

  return v21;
}

uint64_t sub_26816349C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26816350C()
{
  result = qword_28024DC90;
  if (!qword_28024DC90)
  {
    sub_2683CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DC90);
  }

  return result;
}

uint64_t sub_268163574()
{
  v2 = sub_2683CF168();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC88, &qword_2683D4708);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_0_13();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v20 = OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event;
  sub_2683CFB38();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v2);
  v21 = *(v11 + 56);
  sub_26816349C(v0 + v20, v14);
  sub_26816349C(v19, &v14[v21]);
  OUTLINED_FUNCTION_3_5(v14);
  if (!v23)
  {
    sub_26816349C(v14, v1);
    OUTLINED_FUNCTION_3_5(&v14[v21]);
    if (!v23)
    {
      (*(v5 + 32))(v9, &v14[v21], v2);
      sub_26816350C();
      v22 = sub_2683CFA58();
      v24 = *(v5 + 8);
      v24(v9, v2);
      sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
      v24(v1, v2);
      sub_26812C310(v14, &unk_28024E7C0, &unk_2683D6CA0);
      return v22 & 1;
    }

    sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
    (*(v5 + 8))(v1, v2);
LABEL_9:
    sub_26812C310(v14, &qword_28024DC88, &qword_2683D4708);
    v22 = 0;
    return v22 & 1;
  }

  sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_3_5(&v14[v21]);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_26812C310(v14, &unk_28024E7C0, &unk_2683D6CA0);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_268163894()
{
  v1 = v0;
  v2 = sub_2683CF168();
  v3 = OUTLINED_FUNCTION_0_3(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC88, &qword_2683D4708);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v28[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v28[-v20];
  v22 = OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace;
  sub_2683CFB38();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v2);
  v23 = *(v11 + 56);
  sub_26816349C(v1 + v22, v14);
  sub_26816349C(v21, &v14[v23]);
  OUTLINED_FUNCTION_4_6(v14);
  if (v24)
  {
    sub_26812C310(v21, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_4_6(&v14[v23]);
    if (v24)
    {
      sub_26812C310(v14, &unk_28024E7C0, &unk_2683D6CA0);
LABEL_12:
      v25 = sub_268163574();
      return v25 & 1;
    }

    goto LABEL_9;
  }

  sub_26816349C(v14, v19);
  OUTLINED_FUNCTION_4_6(&v14[v23]);
  if (v24)
  {
    sub_26812C310(v21, &unk_28024E7C0, &unk_2683D6CA0);
    (*(v5 + 8))(v19, v2);
LABEL_9:
    sub_26812C310(v14, &qword_28024DC88, &qword_2683D4708);
    goto LABEL_10;
  }

  (*(v5 + 32))(v9, &v14[v23], v2);
  sub_26816350C();
  v29 = sub_2683CFA58();
  v26 = *(v5 + 8);
  v26(v9, v2);
  sub_26812C310(v21, &unk_28024E7C0, &unk_2683D6CA0);
  v26(v19, v2);
  sub_26812C310(v14, &unk_28024E7C0, &unk_2683D6CA0);
  if (v29)
  {
    goto LABEL_12;
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_268163BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_beginAccess();
}

uint64_t Snippet.Note.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Note.identifier.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippet.Note.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Note.title.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippet.Note.groupName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Note.groupName.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippet.Note.textContent.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_9_0();
}

uint64_t Snippet.Note.textContent.setter()
{
  OUTLINED_FUNCTION_13_3();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippet.Note.init(identifier:title:groupName:textContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t static Snippet.Note.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = a2[7];
      v33 = a1[4];
      v18 = a2[6];
      v19 = a1[7];
      v20 = a1[6];
      v21 = a2[4];
      v22 = sub_2683D0598();
      v12 = v21;
      v7 = v20;
      v9 = v19;
      v14 = v18;
      v16 = v32;
      v5 = v33;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 != v11 || v6 != v13)
  {
    v24 = v7;
    v25 = v12;
    v26 = sub_2683D0598();
    v12 = v25;
    v7 = v24;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (v15)
    {
      if (v5 == v12 && v8 == v15)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = sub_2683D0598();
      v7 = v28;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_22:
  if (v7 == v14 && v9 == v16)
  {
    return 1;
  }

  return sub_2683D0598();
}

uint64_t sub_268164058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

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

uint64_t sub_2681641C8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = 0x746E6F4374786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268164260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268164058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268164288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2681641C0();
  *a1 = result;
  return result;
}

uint64_t sub_2681642B0(uint64_t a1)
{
  v2 = sub_2681644F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681642EC(uint64_t a1)
{
  v2 = sub_2681644F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Note.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC98, &qword_2683D4710);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v19[5] = v1[3];
  v19[6] = v13;
  v14 = v1[4];
  v19[3] = v1[5];
  v19[4] = v14;
  v15 = v1[6];
  v19[1] = v1[7];
  v19[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681644F0();
  sub_2683D0718();
  v23 = 0;
  v17 = v19[7];
  sub_2683D04D8();
  if (!v17)
  {
    v22 = 1;
    OUTLINED_FUNCTION_2_8();
    sub_2683D0518();
    v21 = 2;
    OUTLINED_FUNCTION_2_8();
    sub_2683D04D8();
    v20 = 3;
    OUTLINED_FUNCTION_2_8();
    sub_2683D0518();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_2681644F0()
{
  result = qword_28024DCA0;
  if (!qword_28024DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCA0);
  }

  return result;
}

uint64_t Snippet.Note.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  if (v0[1])
  {
    v7 = *v0;
    sub_2683D06B8();
    sub_2683CFB48();
  }

  else
  {
    sub_2683D06B8();
  }

  sub_2683CFB48();
  sub_2683D06B8();
  if (v5)
  {
    sub_2683CFB48();
  }

  return sub_2683CFB48();
}

uint64_t Snippet.Note.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_2683D0698();
  sub_2683D06B8();
  if (v2)
  {
    sub_2683CFB48();
  }

  sub_2683CFB48();
  sub_2683D06B8();
  if (v6)
  {
    sub_2683CFB48();
  }

  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.Note.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCA8, &qword_2683D4718);
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v33 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681644F0();
  sub_2683D06F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v42[0]) = 0;
    OUTLINED_FUNCTION_1_9();
    v14 = sub_2683D0438();
    v16 = v15;
    v37 = v14;
    LOBYTE(v42[0]) = 1;
    OUTLINED_FUNCTION_1_9();
    v17 = sub_2683D0478();
    v19 = v18;
    v35 = v17;
    v36 = a2;
    LOBYTE(v42[0]) = 2;
    OUTLINED_FUNCTION_1_9();
    v20 = sub_2683D0438();
    v22 = v21;
    v34 = v20;
    v43 = 3;
    v23 = sub_2683D0478();
    v24 = v12;
    v26 = v25;
    (*(v8 + 8))(v24, v5);
    v27 = v37;
    *&v38 = v37;
    *(&v38 + 1) = v16;
    v28 = v35;
    *&v39 = v35;
    *(&v39 + 1) = v19;
    *&v40 = v34;
    *(&v40 + 1) = v22;
    *&v41 = v23;
    *(&v41 + 1) = v26;
    v29 = v39;
    v30 = v36;
    *v36 = v38;
    v30[1] = v29;
    v31 = v41;
    v30[2] = v40;
    v30[3] = v31;
    sub_268164A18(&v38, v42);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v42[0] = v27;
    v42[1] = v16;
    v42[2] = v28;
    v42[3] = v19;
    v42[4] = v34;
    v42[5] = v22;
    v42[6] = v23;
    v42[7] = v26;
    return sub_268164A50(v42);
  }
}

uint64_t sub_2681649DC()
{
  sub_2683D0698();
  Snippet.Note.hash(into:)();
  return sub_2683D06D8();
}

unint64_t sub_268164A84()
{
  result = qword_28024DCB0;
  if (!qword_28024DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCB0);
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

uint64_t sub_268164AF0(uint64_t a1, int a2)
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

uint64_t sub_268164B30(uint64_t result, int a2, int a3)
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

uint64_t _s14descr2878F8F29V4NoteV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V4NoteV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268164CF8()
{
  result = qword_28024DCB8;
  if (!qword_28024DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCB8);
  }

  return result;
}

unint64_t sub_268164D50()
{
  result = qword_28024DCC0;
  if (!qword_28024DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCC0);
  }

  return result;
}

unint64_t sub_268164DA8()
{
  result = qword_28024DCC8;
  if (!qword_28024DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCC8);
  }

  return result;
}

uint64_t sub_268164E38(uint64_t a1, int a2)
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

uint64_t sub_268164E78(uint64_t result, int a2, int a3)
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

uint64_t sub_268164EE4()
{
  OUTLINED_FUNCTION_14();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_2683CF388();
  v0[9] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[10] = v4;
  v6 = *(v5 + 64);
  v0[11] = OUTLINED_FUNCTION_15_1();
  v7 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268164F88()
{
  v1 = *(v0 + 88);
  v2 = *MEMORY[0x277D48BE8];
  sub_2683CFA78();
  sub_2683CF378();
  sub_2683CF368();
  *(v0 + 96) = sub_2683CF358();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  v3 = sub_2683CF9D8();
  *(v0 + 104) = v3;
  v4 = *(MEMORY[0x277D605C8] + 4);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_26816517C;
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 88);

  return MEMORY[0x2821C6040](v6, v7, 0, 0, v0 + 16, v3, 0, 0);
}

uint64_t sub_26816517C()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = v2[14];
  *v4 = *v1;

  v6 = v2[13];
  v7 = v2[12];
  if (v0)
  {

    sub_26812C310((v3 + 2), &qword_28024DCE8, &qword_2683D49C8);
    v8 = sub_268165384;
  }

  else
  {
    sub_26812C310((v3 + 2), &qword_28024DCE8, &qword_2683D49C8);

    v8 = sub_268165314;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268165314()
{
  OUTLINED_FUNCTION_14();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[11];

  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268165384()
{
  OUTLINED_FUNCTION_14();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[7];
  v2 = sub_2683CF2F8();
  OUTLINED_FUNCTION_8_7(v2);
  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_2681653FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26816542C()
{
  v9 = v0[16];
  sub_26813CA00(v0[17] + 40, (v0 + 7));
  v1 = *(v9 + 8);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_268165554;
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[12];

  return (v8)(v0 + 2, v0 + 7, v4, v5);
}

uint64_t sub_268165554()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 144);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v2 = v7;

  sub_268165AD4(v7 + 56);
  v3 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_268165644()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = (*(v2 + 8))(v1, v2);
    v0[19] = v3;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (*(v3 + 16))
    {
      v4 = v0[17];
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      v7 = *(MEMORY[0x277D60588] + 4);
      v8 = swift_task_alloc();
      v0[20] = v8;
      v9 = *(v6 + 8);
      *v8 = v0;
      v8[1] = sub_2681657AC;
      v11 = v0[13];
      v10 = v0[14];

      return MEMORY[0x2821C5FE0](v11, v10, v3, v5, v9);
    }
  }

  else
  {
    sub_26812C310((v0 + 2), &qword_28024DCD0, &unk_2683D4990);
  }

  OUTLINED_FUNCTION_40();

  return v12();
}

uint64_t sub_2681657AC()
{
  OUTLINED_FUNCTION_14();
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2681658EC, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v7();
  }
}

uint64_t sub_2681658EC()
{
  v19 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);

  v4 = v1;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE78();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[21];
  if (v7)
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_2681610A0(v10, v9, &v18);
    *(v11 + 12) = 2112;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v15;
    *v12 = v15;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SuggestionsProvider] Failed to submit SiriSuggestion Execution Parameters for request %s: %@.", v11, 0x16u);
    sub_26812C310(v12, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v13);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_40();

  return v16();
}

uint64_t sub_268165B28()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2683CF408();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v8 = *(v7 + 64);
  v1[8] = OUTLINED_FUNCTION_15_1();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250) - 8) + 64);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v10 = sub_2683CB598();
  v1[10] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[11] = v11;
  v13 = *(v12 + 64);
  v1[12] = OUTLINED_FUNCTION_15_1();
  v14 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_268165C4C()
{
  v32 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];
  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_26812C310(v0[9], &qword_28024DB50, &qword_2683D4250);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v5 = v0[4];
    v6 = sub_2683CF7E8();
    __swift_project_value_buffer(v6, qword_28027C958);

    v7 = sub_2683CF7C8();
    v8 = sub_2683CFE78();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[3];
      v9 = v0[4];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_2681610A0(v10, v9, &v31);
      _os_log_impl(&dword_2680EB000, v7, v8, "[SuggestionsProvider] Unable to parse %s to UUID", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    v13 = v0[12];
    v14 = v0[8];
    v15 = v0[9];

    OUTLINED_FUNCTION_40();

    return v16();
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v21 = v0[5];
    v20 = v0[6];
    v22 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v23 = v21[3];
    v24 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v23);
    *v18 = v22;
    (*(v19 + 104))(v18, *MEMORY[0x277D60918], v20);
    v25 = *(v24 + 8);
    v26 = *(MEMORY[0x277D60578] + 4);
    v27 = v22;
    v28 = swift_task_alloc();
    v0[13] = v28;
    *v28 = v0;
    v28[1] = sub_268165F04;
    v29 = v0[12];
    v30 = v0[8];

    return MEMORY[0x2821C5FD0](v29, v30, 1, v23, v25);
  }
}

uint64_t sub_268165F04()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;
  *(v8 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = sub_2681660F0;
  }

  else
  {
    v9 = sub_26816606C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26816606C()
{
  OUTLINED_FUNCTION_14();
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];

  OUTLINED_FUNCTION_40();

  return v4();
}

uint64_t sub_2681660F0()
{
  v27 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v1 = v0[14];
  v2 = v0[4];
  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);

  v4 = v1;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE78();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];
  if (v7)
  {
    v25 = v0[12];
    v12 = v0[3];
    v13 = v0[4];
    v24 = v0[10];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2681610A0(v12, v13, &v26);
    *(v14 + 12) = 2112;
    v17 = v8;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_2680EB000, v5, v6, "[SuggestionsProvider] Failed to submit SiriSuggestion intent for request %s: %@.", v14, 0x16u);
    sub_26812C310(v15, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    (*(v10 + 8))(v25, v24);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[12];
  v20 = v0[8];
  v21 = v0[9];

  OUTLINED_FUNCTION_40();

  return v22();
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
  v3 = *(v2 + 88);
}

uint64_t sub_268166370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_2681663B0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_268166410()
{
  v1 = _s12FlowStrategyV21IntentConversionErrorOMa();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  v6 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v7;
  sub_268167F18(v0, v4);
  v8 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  return sub_2683CF9D8();
}

uint64_t sub_268166510(uint64_t a1)
{
  v2 = sub_268167ED4(&qword_28024DD20);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_268166568(uint64_t a1)
{
  v2 = sub_268167ED4(&qword_28024DD20);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2681665C4()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_2683CCB88();
  v7(v37, v5, 0);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v37, v36);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v36, v32);
  if (v35)
  {
    if (v35 == 7)
    {
      v8 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[AddTasks FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v37, v32);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      sub_268167C34(v32, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_268167CA4(v32);
      v17 = sub_2681610A0(v14, v16, &v31);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[AddTasks FlowStrategy] unsupported task, ignoring: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v32);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v37);
    return sub_268167CA4(v36);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[AddTasks FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v37);
  sub_26813A1A0(v32);
  return sub_268167CA4(v36);
}

uint64_t sub_2681669B0(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681669C8()
{
  v28 = v0;
  v1 = *(v0 + 328);
  v2 = *(v1 + 56);
  (*(v1 + 48))(*(v0 + 312), 0);
  sub_268167C34(v0 + 16, v0 + 80);
  if (*(v0 + 136))
  {
    v3 = v0 + 80;
    if (*(v0 + 136) == 255)
    {
      sub_268167CA4(v3);
    }

    else
    {
      sub_26813A1A0(v3);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);
    sub_268167C34(v0 + 16, v0 + 144);
    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      sub_268167C34(v0 + 144, v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v17 = sub_2683CFAD8();
      v19 = v18;
      sub_268167CA4(v0 + 144);
      v20 = sub_2681610A0(v17, v19, &v27);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_2680EB000, v13, v14, "[AddTasks FlowStrategy] Did not get addTasks task from parse. Got: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v0 + 144);
    }

    v21 = *(v0 + 312);
    _s12FlowStrategyV21IntentConversionErrorOMa();
    sub_268167ED4(&qword_28024DD08);
    swift_allocError();
    v23 = v22;
    v24 = sub_2683CCC18();
    (*(*(v24 - 8) + 16))(v23, v21, v24);
    swift_willThrow();
    sub_268167CA4(v0 + 16);
    OUTLINED_FUNCTION_40();

    return v25();
  }

  else
  {
    v4 = *(v0 + 328);
    sub_268128148((v0 + 80), v0 + 272);
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v5);
    v7 = *v4;
    *(v0 + 336) = v7;
    v8 = *(v6 + 24);
    v26 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    *(v0 + 344) = v10;
    *v10 = v0;
    v10[1] = sub_268166D6C;

    return v26(1, v7, v5, v6);
  }
}

uint64_t sub_268166D6C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 344);
  v8 = *v1;
  *(v3 + 352) = v5;
  *(v3 + 360) = v0;

  if (v0)
  {
    v6 = sub_2681672B4;
  }

  else
  {
    v6 = sub_268166E78;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_268166E78()
{
  v1 = v0[37];
  v2 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v1);
  v3 = *(v2 + 24);
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_268166FA4;
  v6 = v0[42];

  return (v8)(0, v6, v1, v2);
}

uint64_t sub_268166FA4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 368);
  v8 = *v1;
  *(v3 + 376) = v5;
  *(v3 + 384) = v0;

  if (v0)
  {
    v6 = sub_268167318;
  }

  else
  {
    v6 = sub_2681670B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2681670B0()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2682D33A8(*(v0 + 352));
  }

  else
  {
    v1 = *(v0 + 376);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 352);
  if (v7)
  {
    v20 = *(v0 + 376);
    v19 = *(v0 + 352);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[AddTasks FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_2681672B4()
{
  OUTLINED_FUNCTION_14();
  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v1 = *(v0 + 360);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268167318()
{
  OUTLINED_FUNCTION_14();

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  v1 = *(v0 + 384);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_268167384(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26816739C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 8), *(v0[4] + 32));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_268167418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_2681669B0(a1, a2);
}

uint64_t sub_2681674C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_268167584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B498] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681342AC;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_268167650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B490] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681342AC;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26816771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D5B488] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2681342AC;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_2681677E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B480] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_268133EC8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2681678C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(MEMORY[0x277D5B6D8] + 4);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2681342AC;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2681679A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_268167384(a1, a2);
}

uint64_t sub_268167A44()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  OUTLINED_FUNCTION_37();

  return v7(v2);
}

unint64_t sub_268167B30()
{
  result = qword_28024DCF0;
  if (!qword_28024DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCF0);
  }

  return result;
}

unint64_t sub_268167B88()
{
  result = qword_28024DCF8;
  if (!qword_28024DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCF8);
  }

  return result;
}

unint64_t sub_268167BE0()
{
  result = qword_28024DD00;
  if (!qword_28024DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD00);
  }

  return result;
}

uint64_t sub_268167C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268167CA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12FlowStrategyV21IntentConversionErrorOMa()
{
  result = qword_28024DD10;
  if (!qword_28024DD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268167D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CCC18();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268167DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CCC18();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_268167DF8(uint64_t a1)
{
  v2 = sub_2683CCC18();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_268167ED4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s12FlowStrategyV21IntentConversionErrorOMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268167F18(uint64_t a1, uint64_t a2)
{
  v4 = _s12FlowStrategyV21IntentConversionErrorOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_9_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268167FAC(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v55 = a1;
  v56 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_14_3();
  v57 = v14 - v13;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_3(AssociatedTypeWitness);
  v59 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v25 = *(a4 - 8);
  v24 = a4 - 8;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v53 = v28 - v27;
  v29 = swift_getAssociatedTypeWitness();
  v30 = OUTLINED_FUNCTION_0_3(v29);
  v47 = v31;
  v48 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18_4();
  v35 = sub_2683CFDE8();
  if (!v35)
  {
    return sub_2683CFCE8();
  }

  v58 = v35;
  v62 = sub_2683D0268();
  v49 = sub_2683D0278();
  sub_2683D0218();
  result = sub_2683CFDD8();
  if ((v58 & 0x8000000000000000) == 0)
  {
    v44 = v11;
    v45 = a5;
    v37 = 0;
    v50 = (v59 + 16);
    v51 = v59 + 8;
    v52 = v8;
    while (!__OFADD__(v37, 1))
    {
      v59 = v37 + 1;
      v38 = sub_2683CFE28();
      (*v50)(v23);
      v38(v61, 0);
      v39 = v60;
      v55(v23, v57);
      if (v39)
      {
        v42 = OUTLINED_FUNCTION_22_3();
        v43(v42);
        (*(v47 + 8))(v24, v48);

        return (*(v44 + 32))(v46, v57, v45);
      }

      v60 = 0;
      v40 = OUTLINED_FUNCTION_22_3();
      v41(v40);
      sub_2683D0258();
      result = sub_2683CFE08();
      ++v37;
      if (v59 == v58)
      {
        (*(v47 + 8))(v24, v48);
        return v62;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268168378()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v50 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = sub_2683CF8B8();
  v19 = OUTLINED_FUNCTION_0_3(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v48 = (v25 - v24);
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  sub_2683CCFA8();
  v46 = v7;
  sub_2683CC438();
  v26 = 0;
  v45 = v21;
  v47 = (v21 + 32);
  v27 = v2 + 40;
  v49 = MEMORY[0x277D84F90];
  v28 = *(v2 + 16);
  v43 = v28;
  for (i = v2 + 40; ; v27 = i)
  {
    v29 = ~v26;
    v30 = (v27 + 16 * v26);
    v31 = v28 - v26;
    if (v28 == v26)
    {
      break;
    }

    while (1)
    {
      v32 = *(v30 - 1);
      v33 = *v30;
      ObjectType = swift_getObjectType();
      v35 = sub_2683CF828();
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v35);
      swift_unknownObjectRetain();
      sub_26816A834(v5, v50, 0, 0, v0, ObjectType, v33, v17);
      swift_unknownObjectRelease();
      sub_26812C310(v0, &qword_28024DD70, &unk_2683D4E80);
      if (__swift_getEnumTagSinglePayload(v17, 1, v18) != 1)
      {
        break;
      }

      sub_26812C310(v17, &qword_28024DD28, &qword_2683D4CF0);
      --v29;
      v30 += 2;
      if (!--v31)
      {
        goto LABEL_13;
      }
    }

    v36 = *v47;
    (*v47)(v48, v17, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = *(v49 + 16);
      sub_2682E48E8();
      v49 = v41;
    }

    v37 = *(v49 + 16);
    if (v37 >= *(v49 + 24) >> 1)
    {
      sub_2682E48E8();
      v49 = v42;
    }

    v26 = -v29;
    v38 = v48;
    v39 = v49;
    *(v49 + 16) = v37 + 1;
    v36(v39 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v37, v38, v18);
    v28 = v43;
  }

LABEL_13:
  sub_2683CC418();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681686A4(void *a1)
{
  sub_268168DC4();
  sub_2683CC4E8();
  v3 = a1[3];
  v2 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v3);
  OUTLINED_FUNCTION_5_6(v4, *(v2 + 8));
  v6 = v5(v3);
  sub_2682BFDDC(v6);
  return sub_2683CC4F8();
}

uint64_t sub_26816873C()
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    swift_once();
  }

  sub_2683CCFA8();
  sub_2683CC438();
  sub_2681E1E24();
  sub_2683CC4A8();
  return sub_2683CC468();
}

void sub_2681687C8()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_4();
  v9 = sub_2683CCF08();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v39 = v16 - v15;
  sub_26816873C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v17 = OUTLINED_FUNCTION_19_4();
  *(v17 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  *(v17 + 32) = sub_2681E1E3C();
  *(v17 + 40) = v18;
  v20 = v2[3];
  v19 = v2[4];
  v21 = __swift_project_boxed_opaque_existential_1(v2, v20);
  OUTLINED_FUNCTION_5_6(v21, *(v19 + 8));
  v23 = v22(v20);
  sub_2682BFDDC(v23);
  sub_2683CC4F8();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2683D1ED0;
  v40 = sub_2681E1E3C();
  v43 = v25;
  OUTLINED_FUNCTION_18_5();
  v26 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v26);

  *(v24 + 32) = v40;
  *(v24 + 40) = v43;
  v41 = sub_2681E1E3C();
  v44 = v27;
  OUTLINED_FUNCTION_18_5();
  v28 = sub_2683CFB08();
  MEMORY[0x26D616690](v28);

  *(v24 + 48) = v41;
  *(v24 + 56) = v44;
  v42 = sub_2681E1E3C();
  v45 = v29;
  OUTLINED_FUNCTION_18_5();
  v30 = sub_2683CFB08();
  v32 = v31;
  MEMORY[0x26D616690](v30);

  *(v24 + 64) = v42;
  *(v24 + 72) = v45;
  sub_2683CC4D8();
  v33 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6(v33, *(v4 + 24));
  if (v34(v32))
  {
    sub_268368174();
    OUTLINED_FUNCTION_16_7();
    if (v35)
    {

      sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
    }

    else
    {
      (*(v12 + 32))(v39, v0, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
      v36 = *(v12 + 72);
      v37 = *(v12 + 80);
      v38 = OUTLINED_FUNCTION_11_8();
      *(v38 + 16) = xmmword_2683D1EC0;
      (*(v12 + 16))(v38 + v0, v39, v9);
      sub_2683CC448();

      (*(v12 + 8))(v39, v9);
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268168B1C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_4();
  v7 = sub_2683CCF08();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  v16 = qword_28027CC98;
  sub_2683CCFA8();
  sub_2683CC438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v17 = OUTLINED_FUNCTION_19_4();
  *(v17 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  v33 = sub_2681E1E3C();
  v34 = v18;
  v19 = OUTLINED_FUNCTION_21_4();
  MEMORY[0x26D616690](v19, 0xE700000000000000);
  v20 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v20);

  *(v17 + 32) = v33;
  *(v17 + 40) = v34;
  sub_2683CC488();
  sub_2681E1E24();
  sub_2683CC4B8();
  v21 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6(v21, *(v2 + 8));
  v22(v16);
  sub_2683CC498();
  v23 = OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6(v23, *(v2 + 24));
  if (v24(v16))
  {
    sub_268368174();
    OUTLINED_FUNCTION_16_7();
    if (v25)
    {

      sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_15_6();
      v27(v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
      v28 = *(v10 + 72);
      v29 = *(v10 + 80);
      v30 = OUTLINED_FUNCTION_11_8();
      v31 = OUTLINED_FUNCTION_9_7(v30);
      v32(v31);
      sub_2683CC448();

      (*(v10 + 8))(v15, v7);
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268168DC4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = sub_2683CCF08();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  sub_26816873C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v14 = OUTLINED_FUNCTION_19_4();
  *(v14 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  *(v14 + 32) = sub_2681E1E3C();
  *(v14 + 40) = v15;
  sub_2683CC4F8();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683D1ED0;
  v33 = sub_2681E1E3C();
  v34 = v17;
  OUTLINED_FUNCTION_20_6();
  MEMORY[0x26D616690](v14, 0xE700000000000000);
  v18 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v18);

  *(v16 + 32) = v33;
  *(v16 + 40) = v34;
  v19 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v19, v20);
  v21 = sub_2683CFB08();
  MEMORY[0x26D616690](v21);

  *(v16 + 48) = v33;
  *(v16 + 56) = v34;
  v22 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v22, v23);
  v24 = sub_2683CFB08();
  MEMORY[0x26D616690](v24);

  *(v16 + 64) = v33;
  *(v16 + 72) = v34;
  sub_2683CC4D8();
  sub_2683CC468();
  sub_268368414();
  OUTLINED_FUNCTION_16_7();
  if (v25)
  {
    sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_15_6();
    v27(v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v28 = *(v8 + 72);
    v29 = *(v8 + 80);
    v30 = OUTLINED_FUNCTION_11_8();
    v31 = OUTLINED_FUNCTION_9_7(v30);
    v32(v31);
    sub_2683CC448();
    (*(v8 + 8))(v13, v5);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268169078()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = v47 - v8;
  v49 = sub_2683CC168();
  v10 = OUTLINED_FUNCTION_0_3(v49);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v17 = v16 - v15;
  sub_26816873C();
  sub_2683CC458();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6();
  }

  sub_2681E1E24();
  sub_2683CC4A8();
  v47[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v18 = OUTLINED_FUNCTION_19_4();
  v48 = xmmword_2683D1EC0;
  *(v18 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10();
  }

  OUTLINED_FUNCTION_20_6();
  v47[0] = qword_28027CCD8;
  v19 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v19, v20);
  v21 = sub_2683CFB08();
  MEMORY[0x26D616690](v21);

  v22 = v54;
  *(v18 + 32) = v53;
  *(v18 + 40) = v22;
  v47[3] = v3;
  sub_2683CC478();
  v23 = *(v1 + 16);
  v47[2] = v1;
  if (v23)
  {
    v25 = *(v12 + 16);
    v24 = v12 + 16;
    v26 = v1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v51 = *(v24 + 56);
    v52 = v25;
    v27 = (v24 - 8);
    v28 = MEMORY[0x277D84F90];
    v29 = v49;
    v50 = v24;
    do
    {
      v52(v17, v26, v29);
      sub_2683CC148();
      v30 = sub_2683CC288();
      if (__swift_getEnumTagSinglePayload(v9, 1, v30) == 1)
      {
        (*v27)(v17, v29);
        sub_26812C310(v9, &qword_28024DD40, &qword_2683D4D10);
      }

      else
      {
        v31 = sub_2683CC278();
        v33 = v32;
        (*v27)(v17, v29);
        (*(*(v30 - 8) + 8))(v9, v30);
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2682E4728(0, *(v28 + 16) + 1, 1, v28);
            v28 = v37;
          }

          v35 = *(v28 + 16);
          v34 = *(v28 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_2682E4728(v34 > 1, v35 + 1, 1, v28);
            v28 = v38;
          }

          *(v28 + 16) = v35 + 1;
          v36 = v28 + 16 * v35;
          *(v36 + 32) = v31;
          *(v36 + 40) = v33;
          v29 = v49;
        }
      }

      v26 += v51;
      --v23;
    }

    while (v23);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v39 = sub_2682B4344(v28);
  inited = swift_initStackObject();
  *(inited + 16) = v48;
  *(inited + 32) = sub_2681E1E3C();
  *(inited + 40) = v41;
  sub_2681694C4(v39, inited);

  swift_setDeallocating();
  sub_2681F5508();
  sub_2683CC4F8();
  v42 = OUTLINED_FUNCTION_19_4();
  *(v42 + 16) = v48;
  v53 = sub_2681E1E3C();
  v54 = v43;
  v44 = OUTLINED_FUNCTION_21_4();
  MEMORY[0x26D616690](v44, 0xE700000000000000);
  v45 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v45);

  v46 = v54;
  *(v42 + 32) = v53;
  *(v42 + 40) = v46;
  sub_2683CC4D8();

  sub_2683CC428();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681694C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_2682E4728(0, v5 & ~(v5 >> 63), 0, MEMORY[0x277D84F90]);
    v9 = v6;

    sub_2682BFE84(v7);

    sub_2682BFDDC(v8);
    return v9;
  }

  return result;
}

void sub_26816954C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = v29 - v14;
  v16 = sub_2683CCF08();
  v17 = OUTLINED_FUNCTION_0_3(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  type metadata accessor for SimpleDisambiguationItem();
  type metadata accessor for IdentifiableItem();
  v31 = &off_28790C6F8;
  swift_getWitnessTable();
  v29[1] = v9;
  sub_268169858();
  v30 = v7;
  v29[4] = v1;
  v29[5] = v5;
  v29[6] = v3;
  sub_2683CFD28();
  sub_2683CD208();
  OUTLINED_FUNCTION_6_6();
  sub_2683CFC28();
  sub_268368898();

  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    v25 = sub_26812C310(v15, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    (*(v19 + 32))(v24, v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v26 = *(v19 + 72);
    v27 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2683D1EC0;
    (*(v19 + 16))(v28 + v27, v24, v16);
    sub_2683CC448();
    v25 = (*(v19 + 8))(v24, v16);
  }

  v30 = v7;
  MEMORY[0x28223BE20](v25);
  v29[-2] = v1;
  sub_2683CF8B8();
  sub_2683CFC28();
  sub_2683CC418();
  OUTLINED_FUNCTION_29_0();
}

void sub_268169858()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v24[1] = v6;
  v7 = sub_2683CCA28();
  v8 = OUTLINED_FUNCTION_0_3(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v25 = v5;
  v24[4] = v3;
  v24[5] = v1;
  v16 = sub_2683CFD28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD48, &qword_2683D4D18);
  OUTLINED_FUNCTION_6_6();
  sub_26816A078();
  v24[0] = sub_2683CFC48();
  if (qword_28024CB88 != -1)
  {
    swift_once();
  }

  sub_2683CD158();
  v17 = sub_2683CCA08();
  v25 = v5;
  MEMORY[0x28223BE20](v17);
  v24[-2] = v3;
  v24[-1] = v1;
  KeyPath = swift_getKeyPath();
  v19 = MEMORY[0x28223BE20](KeyPath);
  v24[-2] = v1;
  v24[-1] = v19;
  v20 = sub_2683CC288();
  WitnessTable = swift_getWitnessTable();
  sub_268167FAC(sub_26816A0DC, &v24[-4], v16, v20, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v22);

  v23 = sub_2683CCA18();

  (*(v10 + 8))(v15, v7);
  v25 = v24[0];
  sub_2682C00E0(v23);
  sub_268169078();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268169AEC@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, void, void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for SimpleDisambiguationItem();
  v11 = type metadata accessor for IdentifiableItem();
  sub_2682B2AD8(*(a1 + *(v11 + 28) + *(v10 + 32)));
  v12 = sub_2683CC288();
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_26812C310(v9, &qword_28024DD40, &qword_2683D4D10);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = sub_2683CC268();
    v14 = v15;
    (*(*(v12 - 8) + 8))(v9, v12);
  }

  v16 = a2(v13, v14, *a1, a1[1]);

  *a3 = v16;
  return result;
}

uint64_t sub_268169C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SimpleDisambiguationItem();
  v5 = type metadata accessor for IdentifiableItem();
  return sub_26816A168(a1 + *(v4 + 36) + *(v5 + 28), a2);
}

uint64_t sub_268169CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = (*(*(a3 + 8) + 8))(a2);
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a1;
  v9 = sub_268152950(sub_26816A108, v11, v8);

  *a4 = v9;
  return result;
}

uint64_t sub_268169D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2683CC288();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v17 - v14;
  (*(a4 + 16))(a3, a4);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
  (*(v8 + 16))(v11, a1, v7);
  return sub_2683CC158();
}

void sub_268169F04()
{
  sub_268168DC4();
  v0 = [objc_allocWithZone(MEMORY[0x277D47128]) init];
  v1 = *MEMORY[0x277D47C00];
  v2 = sub_2683CFA78();
  sub_26816A1D8(v2, v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2683D2250;
  *(v4 + 32) = v0;
  v8 = v0;
  sub_2683CC4C8();
  v5 = sub_2683CC8C8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2683CC8B8();
  sub_2683CF258();
  sub_2683CC898();

  sub_2683CC8A8();

  sub_2683CC508();
}

unint64_t sub_26816A078()
{
  result = qword_28024DD50;
  if (!qword_28024DD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024DD48, &qword_2683D4D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD50);
  }

  return result;
}

uint64_t sub_26816A12C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_268169AEC(a1, *(v2 + 24), a2);
}

uint64_t sub_26816A168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26816A1D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setReason_];
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_2683CFB08();
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1)
{
  *(a1 + 16) = *(v3 - 112);
  v4 = *(v2 + 16);
  return a1 + v1;
}

uint64_t OUTLINED_FUNCTION_11_8()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;

  JUMPOUT(0x26D616690);
}

void *OUTLINED_FUNCTION_17_3()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v3);
}

void OUTLINED_FUNCTION_18_5()
{

  JUMPOUT(0x26D616690);
}

uint64_t OUTLINED_FUNCTION_19_4()
{

  return swift_allocObject();
}

uint64_t Snippet.LocalizableLabel.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_2683D0408();

  v4 = 7;
  if (v2 < 7)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t Snippet.LocalizableLabel.rawValue.getter()
{
  result = 0x474E495649525241;
  switch(*v0)
  {
    case 1:
      result = 0x474E495641454CLL;
      break;
    case 2:
      result = 0x41435F5245544E45;
      break;
    case 3:
      result = 0x5241435F54495845;
      break;
    case 4:
      result = 0x4E4947415353454DLL;
      break;
    case 5:
      result = 5457241;
      break;
    case 6:
      result = 20302;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26816A528@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return Snippet.LocalizableLabel.init(rawValue:)(a1);
}

uint64_t sub_26816A534@<X0>(uint64_t *a1@<X8>)
{
  result = Snippet.LocalizableLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_26816A560()
{
  result = qword_28024DD58;
  if (!qword_28024DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD58);
  }

  return result;
}

uint64_t _s14descr2878F8F29V16LocalizableLabelOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s14descr2878F8F29V16LocalizableLabelOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26816A7E0()
{
  result = qword_28024DD60;
  if (!qword_28024DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD60);
  }

  return result;
}

uint64_t sub_26816A834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v23 - v20;
  sub_26816AC94(a5, &v23 - v20);

  swift_unknownObjectRetain();

  return RREntity.init<A>(_:appBundleId:objectIdOverride:groupId:)(a1, a2, a3, a4, v21, a6, a7, a8);
}

uint64_t RREntity.init<A>(_:appBundleId:objectIdOverride:groupId:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a5;
  v36 = a2;
  v34[0] = a3;
  v34[1] = a1;
  v37 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  swift_getAssociatedTypeWitness();
  v23 = sub_2683CE308();
  OUTLINED_FUNCTION_23(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v26);
  sub_2683CE288();
  (*(a7 + 32))(a6, a7);
  sub_2683CE278();
  if (sub_2683CD568())
  {
    v27 = v35;
    if (!a4)
    {
      (*(a7 + 24))(a6, a7);
    }

    sub_26816AC94(v27, v16);
    sub_2683CF868();
    sub_26812C310(v27, &qword_28024DD70, &unk_2683D4E80);

    v28 = sub_2683CF8B8();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v28);
    if (!__swift_getEnumTagSinglePayload(v22, 1, v28))
    {
      v32 = v37;
      (*(*(v28 - 8) + 32))(v37, v22, v28);
      v30 = v32;
      v31 = 0;
      v29 = v28;
      return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
    }

    sub_26812C310(v22, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_26812C310(v35, &qword_28024DD70, &unk_2683D4E80);
    swift_unknownObjectRelease();
  }

  v29 = sub_2683CF8B8();
  v30 = v37;
  v31 = 1;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v29);
}

uint64_t sub_26816AC94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26816AD2C(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_1_11();

      v3 = 0x657A6F6F6E73;
      goto LABEL_10;
    case 2:
      v5 = 0x73746E65746E6F63;
      goto LABEL_13;
    case 3:
      v4 = 1702129518;
      goto LABEL_6;
    case 4:
      v4 = 1802723700;
LABEL_6:
      v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x5B7300000000;
      goto LABEL_13;
    case 5:
      v5 = 0x7473694C6B736174;
      goto LABEL_13;
    case 6:
      v5 = 0x7361546465646461;
      goto LABEL_13;
    case 7:
      result = 0x6465696669646F6DLL;
      switch(a1)
      {
        case 1:
          OUTLINED_FUNCTION_0_15();
          result = v10 + 3;
          break;
        case 2:
          OUTLINED_FUNCTION_0_15();
          result = v11 + 5;
          break;
        case 3:
          OUTLINED_FUNCTION_0_15();
          result = v9 + 11;
          break;
        case 4:
          result = 0xD000000000000019;
          break;
        case 5:
          result = 0xD000000000000019;
          break;
        case 6:
          OUTLINED_FUNCTION_0_15();
          result = v12 - 9;
          break;
        case 7:
          return result;
        case 8:
          result = 0x5464657461657263;
          break;
        case 9:
          result = 0x70756F7267;
          break;
        case 10:
          result = 0x656C746974;
          break;
        case 11:
          result = 0;
          break;
        default:
          OUTLINED_FUNCTION_0_15();
          result = v7 - 3;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_1_11();

      v3 = 0x6574656C6564;
LABEL_10:
      v5 = v3 & 0xFFFFFFFFFFFFLL | 0x5464000000000000;
LABEL_13:
      v13 = v5;
      v8 = sub_2683D0568();
      MEMORY[0x26D616690](v8);

      MEMORY[0x26D616690](93, 0xE100000000000000);
      return v13;
  }
}

BOOL sub_26816AFAC(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        return 0;
      }

      return a1 == a3;
    case 5:
      if (a4 != 5)
      {
        return 0;
      }

      return a1 == a3;
    case 6:
      if (a4 == 6)
      {
        return a1 == a3;
      }

      return 0;
    case 7:
      switch(a1)
      {
        case 1:
          if (a4 != 7 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 7 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 7 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 7 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 7 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 7 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 7 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 7 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 7 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 7 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 7 || a3 != 11)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 7 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

unint64_t sub_26816B19C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_26816AD2C(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParameterKeyPathComponent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF9 && *(a1 + 9))
    {
      v2 = *a1 + 248;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 7)
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

uint64_t storeEnumTagSinglePayload for ParameterKeyPathComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_26816B268(uint64_t a1)
{
  if (*(a1 + 8) <= 6u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 7);
  }
}

uint64_t sub_26816B280(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return sub_2683D0178();
}

id sub_26816B2DC(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = sub_2683CB3C8();
  [v2 setPunchOutUri_];

  v4 = sub_2683CB438();
  (*(*(v4 - 8) + 8))(a1, v4);
  return v2;
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

uint64_t sub_26816B39C(uint64_t *a1, int a2)
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

uint64_t sub_26816B3DC(uint64_t result, int a2, int a3)
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

uint64_t sub_26816B434()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_2683CCB88();
  v8 = OUTLINED_FUNCTION_27_2();
  v7(v8);
  (*(v2 + 8))(v5, v1);
  sub_2681340E8(v37, v36, &qword_28024D460, &qword_2683D5050);
  if (v36[56] == 255)
  {
    goto LABEL_6;
  }

  sub_2681340E8(v36, v32, &qword_28024D460, &qword_2683D5050);
  if (v35)
  {
    if (v35 == 7)
    {
      v9 = vorrq_s8(v33, v34);
      if (!(*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | v32[2] | v32[1] | v32[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v25 = sub_2683CF7E8();
        __swift_project_value_buffer(v25, qword_28027C958);
        v26 = sub_2683CF7C8();
        v27 = sub_2683CFE98();
        if (os_log_type_enabled(v26, v27))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v28, v29, "AddTasks.NeedsValueStrategy actionForInput returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v32);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v10 = sub_2683CF7E8();
    __swift_project_value_buffer(v10, qword_28027C958);
    sub_2681340E8(v37, v32, &qword_28024D460, &qword_2683D5050);
    v11 = sub_2683CF7C8();
    v12 = sub_2683CFE98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v13 = 136315138;
      sub_2681340E8(v32, v30, &qword_28024D460, &qword_2683D5050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v15 = sub_2683CFAD8();
      v17 = v16;
      sub_2681433DC(v32, &qword_28024D460, &qword_2683D5050);
      v18 = sub_2681610A0(v15, v17, &v31);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2680EB000, v11, v12, "AddTasks.NeedsValueStrategy actionForInput returning .ignore() for unsupported task: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_2681433DC(v32, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_2681433DC(v37, &qword_28024D460, &qword_2683D5050);
    return sub_2681433DC(v36, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v19 = sub_2683CF7E8();
  __swift_project_value_buffer(v19, qword_28027C958);
  v20 = sub_2683CF7C8();
  v21 = sub_2683CFE98();
  if (os_log_type_enabled(v20, v21))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v22, v23, "AddTasks.NeedsValueStrategy actionForInput returning .handle()");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_2681433DC(v37, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v32);
  return sub_2681433DC(v36, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_26816B8B8()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCBA8();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC748();
  v1[22] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[23] = v10;
  v12 = *(v11 + 64);
  v1[24] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  v1[25] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[26] = v14;
  v16 = *(v15 + 64);
  v1[27] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CCC18();
  v1[28] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[29] = v18;
  v20 = *(v19 + 64);
  v1[30] = OUTLINED_FUNCTION_15_1();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_26816BA50()
{
  v42 = v0;
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v7 = *(v4 + 24);
  v6 = *(v4 + 32);
  sub_2683CCB88();
  v7(v1, 0);
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 72))
  {
    if (*(v0 + 72) == 255)
    {
      sub_2681433DC(v0 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 16);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C958);
    (*(v18 + 16))(v17, v20, v19);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE88();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 240);
      v25 = *(v0 + 224);
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      v28 = *(v0 + 152);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315138;
      sub_2683CCB88();
      v31 = sub_2683CFAD8();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = sub_2681610A0(v31, v33, &v41);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2680EB000, v22, v23, "AddTasks.NeedsValueStrategy.parseValueResponse Did not find an .addTasks task from parse: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    sub_26812C6B8();
    swift_allocError();
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 4;
    swift_willThrow();
    OUTLINED_FUNCTION_43_3();

    OUTLINED_FUNCTION_40();

    return v39();
  }

  else
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 136);
    sub_268128148((v0 + 16), v0 + 80);
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 80), v10);
    v12 = sub_2683CC9B8();
    *(v0 + 248) = v12;
    v13 = *(v11 + 24);
    v40 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 256) = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_26_4(v15);

    return v40(1, v12, v10, v11);
  }
}

uint64_t sub_26816BE44()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 256);
  *v4 = *v1;
  v3[33] = v7;
  v3[34] = v0;

  if (v0)
  {
    v8 = sub_26816C2AC;
  }

  else
  {
    v9 = v3[31];

    v8 = sub_26816BF54;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26816BF54()
{
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[17];
  v4 = sub_2683CC9C8();
  v5 = sub_2682D33A8(v1);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[25];
  v9 = v0[17];
  v10 = sub_2683CF7E8();
  __swift_project_value_buffer(v10, qword_28027C958);
  (*(v7 + 16))(v6, v9, v8);
  v11 = v5;
  v12 = sub_2683CF7C8();
  v13 = sub_2683CFE98();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[26];
  v16 = v0[27];
  v17 = v0[25];
  if (v14)
  {
    v18 = v0[23];
    v19 = v0[24];
    v39 = v0[22];
    v20 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v20 = 136315394;
    log = v12;
    sub_2683CC9E8();
    sub_2683CC738();
    (*(v18 + 8))(v19, v39);
    (*(v15 + 8))(v16, v17);
    v21 = OUTLINED_FUNCTION_41_0();
    v24 = sub_2681610A0(v21, v22, v23);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v11;
    *v41 = v11;
    v25 = v11;
    _os_log_impl(&dword_2680EB000, log, v13, "Updated intent after prompt for %s: %@", v20, 0x16u);
    sub_2681433DC(v41, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    (*(v15 + 8))(v16, v17);
  }

  v26 = v0[33];
  v27 = v0[30];
  v28 = v0[27];
  v30 = v0[24];
  v29 = v0[25];
  v31 = v0[21];
  v32 = v0[17];
  v33 = v0[15];
  v34 = sub_2683CC9D8();
  v35 = [v34 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_26816E814();
  sub_2683CC618();

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD98, &qword_2683D5058);
  __swift_storeEnumTagSinglePayload(v33, 0, 1, v36);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  OUTLINED_FUNCTION_7_4();

  return v37();
}

uint64_t sub_26816C2AC()
{
  v1 = v0[31];

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v2 = v0[34];
  OUTLINED_FUNCTION_43_3();

  OUTLINED_FUNCTION_40();

  return v3();
}

uint64_t sub_26816C338()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = type metadata accessor for Snippet();
  v1[30] = v4;
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64) + 15;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v7 = sub_2683CC9A8();
  v1[35] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[36] = v8;
  v10 = *(v9 + 64);
  v1[37] = OUTLINED_FUNCTION_15_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E760, &unk_2683D2BF0);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  v1[38] = OUTLINED_FUNCTION_15_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D588, &unk_2683D8DB0);
  OUTLINED_FUNCTION_23(v14);
  v16 = *(v15 + 64);
  v1[39] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CC138();
  v1[40] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[41] = v18;
  v20 = *(v19 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460);
  OUTLINED_FUNCTION_23(v21);
  v23 = *(v22 + 64);
  v1[44] = OUTLINED_FUNCTION_15_1();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E770, &qword_2683D80D0);
  OUTLINED_FUNCTION_3_1(v24);
  v1[45] = v25;
  v1[46] = *(v26 + 64);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v27 = sub_2683CC528();
  v1[55] = v27;
  OUTLINED_FUNCTION_3_1(v27);
  v1[56] = v28;
  v30 = *(v29 + 64);
  v1[57] = OUTLINED_FUNCTION_15_1();
  v31 = sub_2683CC748();
  v1[58] = v31;
  OUTLINED_FUNCTION_3_1(v31);
  v1[59] = v32;
  v34 = *(v33 + 64);
  v1[60] = OUTLINED_FUNCTION_15_1();
  v35 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v35, v36, v37);
}

uint64_t sub_26816C664()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD80, &qword_2683D5030);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_0_0();
  v8 = sub_2681E290C();
  if (v8 == 8)
  {
    sub_26812C6B8();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    swift_willThrow();
    v10 = v0[60];
    v11 = v0[57];
    v13 = v0[53];
    v12 = v0[54];
    v14 = v0[51];
    v15 = v0[52];
    v17 = v0[49];
    v16 = v0[50];
    v19 = v0[47];
    v18 = v0[48];
    v34 = v0[44];
    v35 = v0[43];
    v36 = v0[42];
    v37 = v0[39];
    v38 = v0[38];
    v39 = v0[37];
    v40 = v0[34];
    v41 = v0[33];
    v42 = v0[32];
    v43 = v0[31];

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_24_3();

    __asm { BRAA            X1, X16 }
  }

  v22 = v8;
  v23 = v0[57];
  v25 = v0[53];
  v24 = v0[54];
  v26 = v0[30];

  v0[5] = &type metadata for AddTasks.Parameter;
  v0[6] = &off_287903B10;
  *(v0 + 16) = v22;
  sub_2681687C8();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v26);
  v27 = OUTLINED_FUNCTION_27_2();
  __swift_storeEnumTagSinglePayload(v27, v28, 1, v26);
  v29 = swift_task_alloc();
  v0[61] = v29;
  *v29 = v0;
  v29[1] = sub_26816C930;
  v30 = v0[29];
  OUTLINED_FUNCTION_24_3();

  return sub_26816DD24(v31);
}

uint64_t sub_26816C930()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 488);
  *v4 = *v1;
  v3[62] = v7;
  v3[63] = v0;

  if (v0)
  {
    v8 = v3[54];
    sub_2681433DC(v3[53], &qword_28024E770, &qword_2683D80D0);
    v9 = OUTLINED_FUNCTION_41_0();
    sub_2681433DC(v9, v10, &qword_2683D80D0);
    v11 = sub_26816DBAC;
  }

  else
  {
    v3[64] = *(v3[29] + 8);
    v11 = sub_26816CA7C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

void sub_26816CA7C()
{
  v1 = v0[62];
  v2 = v0[55];
  v3 = v0[44];
  v5 = v0[38];
  v4 = v0[39];
  (*(v0[56] + 16))(v3, v0[57], v2);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_2683CC118();
  v6 = sub_2683CED08();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
  sub_2683CC1D8();
  v7 = OUTLINED_FUNCTION_27_2();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v10 = swift_allocObject();
  v0[65] = v10;
  *(v10 + 16) = xmmword_2683D2250;
  *(v10 + 32) = v1;
  v11 = v1;
  if (sub_2683ABE58(v10))
  {
    sub_2683ABE60(0, (v10 & 0xC000000000000001) == 0, v10);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x26D616C90](0, v10);
    }

    else
    {
      v12 = *(v10 + 32);
    }

    v13 = v12;
    v14 = [v12 catId];

    v90 = sub_2683CFA78();
    v93 = v15;
  }

  else
  {
    v90 = 0;
    v93 = 0;
  }

  v16 = v0[64];
  v17 = v0[54];
  v89 = v17;
  v19 = v0[51];
  v18 = v0[52];
  v21 = v0[45];
  v20 = v0[46];
  v84 = v0[43];
  v85 = v0[44];
  v22 = v0[41];
  v82 = v0[42];
  v83 = v0[40];
  v86 = v0[39];
  v87 = v0[38];
  v88 = v0[37];
  v91 = v0[30];
  v92 = v0[50];
  sub_2681340E8(v0[53], v18, &qword_28024E770, &qword_2683D80D0);
  sub_2681340E8(v17, v19, &qword_28024E770, &qword_2683D80D0);
  v23 = *(v21 + 80);
  v24 = (v23 + 24) & ~v23;
  v25 = (v20 + v23 + v24) & ~v23;
  v26 = swift_allocObject();
  v0[66] = v26;
  *(v26 + 16) = v16;
  sub_2681430AC(v18, v26 + v24);
  sub_2681430AC(v19, v26 + v25);
  (*(v22 + 16))(v82, v84, v83);
  v27 = swift_task_alloc();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(v27 + 40) = v90;
  *(v27 + 48) = v93;
  *(v27 + 56) = v85;
  *(v27 + 64) = 513;
  *(v27 + 72) = sub_26814311C;
  *(v27 + 80) = v26;
  *(v27 + 88) = 0;
  *(v27 + 96) = v86;
  *(v27 + 104) = 2;
  *(v27 + 112) = v87;

  sub_2683CC8E8();

  sub_2681340E8(v89, v92, &qword_28024E770, &qword_2683D80D0);
  if (__swift_getEnumTagSinglePayload(v92, 1, v91) == 1)
  {
    v28 = v0 + 50;
  }

  else
  {
    v29 = v0[53];
    v30 = v0[49];
    v31 = v0[30];
    sub_26814320C(v0[50], v0[34]);
    v32 = OUTLINED_FUNCTION_41_0();
    sub_2681340E8(v32, v33, v34, v35);
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) != 1)
    {
      v61 = v0[33];
      v62 = v0[34];
      v63 = v0[30];
      sub_26814320C(v0[49], v61);
      v0[20] = v63;
      v64 = sub_268143270();
      v0[21] = v64;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 17);
      sub_2681432C8(v62, boxed_opaque_existential_0);
      v0[25] = v63;
      v0[26] = v64;
      v66 = __swift_allocate_boxed_opaque_existential_0(v0 + 22);
      sub_2681432C8(v61, v66);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD30]);
      OUTLINED_FUNCTION_10_2();
      v0[67] = v67;
      *v67 = v68;
      OUTLINED_FUNCTION_30_2(v67);
      v69 = v0[37];
      v70 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X5 }
    }

    v28 = v0 + 49;
    sub_26814332C(v0[34]);
  }

  v36 = *v28;
  v37 = v0[54];
  v38 = v0[48];
  v39 = v0[30];
  sub_2681433DC(v36, &qword_28024E770, &qword_2683D80D0);
  v40 = OUTLINED_FUNCTION_41_0();
  sub_2681340E8(v40, v41, &qword_28024E770, &qword_2683D80D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v39);
  v43 = v0[48];
  v44 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    v45 = v0[53];
    v46 = v0[47];
    sub_2681433DC(v43, &qword_28024E770, &qword_2683D80D0);
    sub_2681340E8(v45, v46, &qword_28024E770, &qword_2683D80D0);
    v47 = OUTLINED_FUNCTION_33_1();
    if (__swift_getEnumTagSinglePayload(v47, v48, v44) == 1)
    {
      sub_2681433DC(v0[47], &qword_28024E770, &qword_2683D80D0);
      OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD50]);
      OUTLINED_FUNCTION_10_2();
      v0[70] = v49;
      *v49 = v50;
      OUTLINED_FUNCTION_30_2(v49);
      v51 = v0[37];
      v52 = v0[27];
      OUTLINED_FUNCTION_24_3();

      __asm { BR              X3 }
    }

    v73 = v0[30];
    v74 = v0[31];
    sub_26814320C(v0[47], v74);
    v0[10] = v73;
    v0[11] = sub_268143270();
    v75 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
    sub_2681432C8(v74, v75);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD40]);
    OUTLINED_FUNCTION_10_2();
    v0[69] = v76;
    *v76 = v77;
    OUTLINED_FUNCTION_30_2(v76);
    v78 = v0[37];
    v79 = v0[27];
  }

  else
  {
    v55 = v0[32];
    sub_26814320C(v43, v55);
    v0[15] = v44;
    v0[16] = sub_268143270();
    v56 = __swift_allocate_boxed_opaque_existential_0(v0 + 12);
    sub_2681432C8(v55, v56);
    OUTLINED_FUNCTION_15_4(MEMORY[0x277D5BD38]);
    OUTLINED_FUNCTION_10_2();
    v0[68] = v57;
    *v57 = v58;
    OUTLINED_FUNCTION_30_2(v57);
    v59 = v0[37];
    v60 = v0[27];
  }

  OUTLINED_FUNCTION_24_3();

  __asm { BR              X4 }
}

uint64_t sub_26816D11C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 536);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 176));
  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26816D3D0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26816D674()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v5 = *(v4 + 552);
  v6 = *(v4 + 520);
  v7 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26816D918()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 560);
  v3 = *(v1 + 520);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26816DBAC()
{
  (*(v0[56] + 8))(v0[57], v0[55]);
  v23 = v0[63];
  v1 = v0[60];
  v2 = v0[57];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[47];
  v9 = v0[48];
  v13 = v0[44];
  v14 = v0[43];
  v15 = v0[42];
  v16 = v0[39];
  v17 = v0[38];
  v18 = v0[37];
  v19 = v0[34];
  v20 = v0[33];
  v21 = v0[32];
  v22 = v0[31];

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_26816DD24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  v3 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26816DD50()
{
  switch(*(v0 + 56))
  {
    case 2:
      OUTLINED_FUNCTION_35_2();
      v9 = swift_task_alloc();
      *(v0 + 24) = v9;
      *v9 = v0;
      OUTLINED_FUNCTION_26_4(v9);

      result = sub_268324F34();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_35_2();
      v7 = swift_task_alloc();
      *(v0 + 32) = v7;
      *v7 = v0;
      OUTLINED_FUNCTION_26_4(v7);

      result = sub_268324E90();
      break;
    case 5:
      OUTLINED_FUNCTION_35_2();
      v10 = swift_task_alloc();
      *(v0 + 40) = v10;
      *v10 = v0;
      OUTLINED_FUNCTION_26_4(v10);

      result = sub_268324FD8();
      break;
    case 6:
      OUTLINED_FUNCTION_35_2();
      v8 = swift_task_alloc();
      *(v0 + 48) = v8;
      *v8 = v0;
      OUTLINED_FUNCTION_26_4(v8);

      result = sub_268324DEC();
      break;
    default:
      v1 = sub_2681E6434(*(v0 + 56));
      v3 = v2;
      sub_26816E7C0();
      swift_allocError();
      *v4 = v1;
      *(v4 + 8) = v3;
      *(v4 + 16) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_40();

      result = v5();
      break;
  }

  return result;
}

uint64_t sub_26816DFCC()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26816E0B8()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26816E1A4()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26816E290()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v7 = v6;

  OUTLINED_FUNCTION_37();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_26816E380()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26816E858;

  return sub_26816B8B8();
}

uint64_t sub_26816E444()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 56) = v3;
  *v3 = v1;
  v3[1] = sub_26816E500;

  return sub_26816C338();
}

uint64_t sub_26816E500()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40();

  return v5();
}

uint64_t sub_26816E5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B370] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_268133EC8;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_26816E6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B378] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

unint64_t sub_26816E76C()
{
  result = qword_28024DD78;
  if (!qword_28024DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD78);
  }

  return result;
}

unint64_t sub_26816E7C0()
{
  result = qword_28024DD88;
  if (!qword_28024DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD88);
  }

  return result;
}

unint64_t sub_26816E814()
{
  result = qword_28024DD90;
  if (!qword_28024DD90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024DD90);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_12()
{
  v3 = v0[56];
  v2 = v0[57];
  v4 = v0[54];
  v17 = v0[55];
  v18 = v0[60];
  v5 = v0[53];
  v19 = v0[52];
  v20 = v0[51];
  v21 = v0[50];
  v22 = v0[49];
  v23 = v0[48];
  v24 = v0[47];
  v6 = v0[43];
  v16 = v0[44];
  v7 = v0[41];
  v9 = v0[39];
  v8 = v0[40];
  result = v0[37];
  v25 = v0[42];
  v11 = v0[35];
  v12 = v0[36];
  v26 = v0[34];
  v13 = v0[31];
  v14 = v0[32];
  *(v1 - 96) = v0[33];
  *(v1 - 88) = v14;
  *(v1 - 80) = v13;
  v15 = *(v12 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_2681433DC(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_2681433DC(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 512);
  return result;
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[24];
  v5 = v0[21];
}

uint64_t OUTLINED_FUNCTION_46_3(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_2681433DC(a10, a2, a3);
}

uint64_t sub_26816E9C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2681E73A0();
  v4 = sub_2683CC808();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  sub_2683CC7F8();
  sub_2683CC7E8();
  if (v7)
  {
    sub_2683CF288();

    v8 = sub_2683CB668();
    OUTLINED_FUNCTION_0_9(v8);
    (*(v9 + 8))(a1);
    v10 = sub_2683CF2A8();

    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v12 = sub_2683CF7E8();
    __swift_project_value_buffer(v12, qword_28027C958);

    v13 = sub_2683CF7C8();
    v14 = sub_2683CFE78();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315138;
      sub_2683CF278();
      sub_26816EC88();
      v17 = sub_2683D0568();
      v19 = sub_2681610A0(v17, v18, &v23);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2680EB000, v13, v14, "Could not construct an AppDisplayInfo for app: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D617A40](v16, -1, -1);
      MEMORY[0x26D617A40](v15, -1, -1);
    }

    else
    {
    }

    v20 = sub_2683CB668();
    OUTLINED_FUNCTION_0_9(v20);
    (*(v21 + 8))(a1);
    v22 = sub_2683CF2A8();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
  }
}

unint64_t sub_26816EC88()
{
  result = qword_280253330;
  if (!qword_280253330)
  {
    sub_2683CF278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280253330);
  }

  return result;
}

uint64_t sub_26816ECEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a4;
  if (a4)
  {

    return sub_2681E658C(v5);
  }

  return result;
}

uint64_t sub_26816ED20()
{
  result = *(v0 + *(type metadata accessor for SetTaskAttributeIntentModelNLv4() + 36));
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816ED60()
{
  result = *(v0 + 32);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816ED94()
{
  result = *(v0 + 56);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816EDC8()
{
  result = *(v0 + 40);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816EDFC()
{
  result = *(v0 + 24);
  if (result)
  {

    return sub_2681E658C(v2);
  }

  return result;
}

uint64_t sub_26816EE34()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  return sub_26816ED94();
}

uint64_t sub_26816EE6C()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  return sub_26816EDC8();
}

uint64_t sub_26816EEAC()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 32);
  return sub_26816EDFC();
}

uint64_t sub_26816EEE4()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 25);
  return sub_26816ED60();
}

uint64_t sub_26816EF1C()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 32);
  return sub_26816EDC8();
}

uint64_t sub_26816EF54()
{
  OUTLINED_FUNCTION_0_16();
  v2 = *(v0 + 32);
  return sub_26816ED60();
}

__n128 OUTLINED_FUNCTION_0_16()
{
  result = *v0;
  v2 = *(v0 + 16);
  return result;
}

void sub_26816EF9C()
{
  OUTLINED_FUNCTION_30_0();
  v35[0] = v0;
  v1 = sub_2683CF8B8();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v11 = OUTLINED_FUNCTION_23(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_3();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v20 = sub_2683CDB98();
  v21 = OUTLINED_FUNCTION_0_3(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_3();
  v28 = v27 - v26;
  v29 = sub_2683CE038();
  OUTLINED_FUNCTION_42_3(v29);
  sub_2683CE028();
  (*(v23 + 104))(v28, *MEMORY[0x277D5EE50], v20);
  sub_2683CE018();
  (*(v23 + 8))(v28, v20);
  v30 = sub_2683CE0F8();
  OUTLINED_FUNCTION_42_3(v30);
  v31 = sub_2683CE0E8();

  sub_2683CD898();

  sub_26816F2D8(v31, 3, v19);
  sub_2681340E8(v19, v16, &qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_72(v16, 1, v1);
  if (v32)
  {
    sub_26812D9E0(v19, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_36_3(v4);
    v34(v33);
    sub_2683CF8A8();
    sub_2683CDC28();
    sub_2683CD8A8();

    if (v35[1])
    {
      sub_2683CDC18();
    }

    (*(v4 + 8))(v9, v1);
    sub_26812D9E0(v19, &qword_28024DD28, &qword_2683D4CF0);
  }

  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26816F2D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v77 = sub_2683CF808();
  v74 = *(v77 - 8);
  v6 = *(v74 + 64);
  v7 = MEMORY[0x28223BE20](v77);
  v73 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = v70 - v9;
  v10 = sub_2683CF838();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA0, &unk_2683D50C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v70 - v17;
  v19 = sub_2683CF8C8();
  v78 = *(v19 - 8);
  v20 = *(v78 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = v70 - v24;
  v25 = MEMORY[0x26D614230](a1);
  if (!v25)
  {
    goto LABEL_4;
  }

  v26 = v25;
  v70[1] = v3;
  v71 = v19;
  v76 = a3;
  v27 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *v14 = v26;
  (*(v11 + 104))(v14, *MEMORY[0x277D5FEA8], v10);

  sub_2683CF6D8();
  (*(v11 + 8))(v14, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_26812D9E0(v18, &qword_28024DDA0, &unk_2683D50C0);
    a3 = v76;
LABEL_4:
    v28 = sub_2683CF8B8();
    v29 = a3;
LABEL_5:
    v30 = 1;
    return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  }

  v70[0] = v26;
  v33 = v78;
  v32 = v79;
  v34 = v71;
  (*(v78 + 32))(v79, v18, v71);
  (*(v33 + 16))(v23, v32, v34);
  v35 = (*(v33 + 88))(v23, v34);
  if (v35 == *MEMORY[0x277D5FEC0])
  {
    (*(v33 + 96))(v23, v34);
    v37 = v74;
    v36 = v75;
    v38 = v77;
    (*(v74 + 32))(v75, v23, v77);
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v39 = sub_2683CF7E8();
    __swift_project_value_buffer(v39, qword_28027C958);
    v40 = v73;
    (*(v37 + 16))(v73, v36, v38);
    v41 = sub_2683CF7C8();
    v42 = sub_2683CFE98();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = v40;
      v45 = swift_slowAlloc();
      v80 = v45;
      *v43 = 136315138;
      sub_268172F84();
      v46 = sub_2683D0568();
      v48 = v47;
      v49 = *(v37 + 8);
      v49(v44, v77);
      v50 = v46;
      v32 = v79;
      v51 = sub_2681610A0(v50, v48, &v80);
      v38 = v77;

      *(v43 + 4) = v51;
      _os_log_impl(&dword_2680EB000, v41, v42, "Found single candidate of %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x26D617A40](v45, -1, -1);
      v52 = v43;
      v36 = v75;
      MEMORY[0x26D617A40](v52, -1, -1);
    }

    else
    {

      v49 = *(v37 + 8);
      v49(v40, v38);
    }

    v58 = v76;
    sub_2683CF7F8();

    v49(v36, v38);
    (*(v33 + 8))(v32, v71);
    v28 = sub_2683CF8B8();
    v29 = v58;
    v30 = 0;
    return __swift_storeEnumTagSinglePayload(v29, v30, 1, v28);
  }

  v53 = v35 == *MEMORY[0x277D5FED0] || v35 == *MEMORY[0x277D5FEC8];
  v54 = v76;
  if (v53)
  {
    (*(v33 + 96))(v23, v34);
    v55 = v54;
    v56 = *v23;
    v57 = v72;
LABEL_31:
    sub_2681725F0(v56, v57, v55);

    return (*(v33 + 8))(v32, v34);
  }

  if (v35 == *MEMORY[0x277D5FED8])
  {
    (*(v33 + 96))(v23, v34);
    if (*(*v23 + 16))
    {
      v59 = *(*v23 + 32);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

    v55 = v54;
    v56 = v59;
    v57 = v72;
    goto LABEL_31;
  }

  if (v35 == *MEMORY[0x277D5FEE0])
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v60 = sub_2683CF7E8();
    __swift_project_value_buffer(v60, qword_28027C958);

    v61 = sub_2683CF7C8();
    v62 = sub_2683CFE98();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v80 = v64;
      *v63 = 136446210;
      v65 = sub_2683CE318();
      v67 = sub_2681610A0(v65, v66, &v80);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_2680EB000, v61, v62, "No match found for %{public}s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x26D617A40](v64, -1, -1);
      MEMORY[0x26D617A40](v63, -1, -1);
    }

    else
    {
    }

    (*(v33 + 8))(v32, v34);
    v28 = sub_2683CF8B8();
    v29 = v54;
    goto LABEL_5;
  }

  v68 = *(v33 + 8);
  v68(v32, v34);

  v69 = sub_2683CF8B8();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v69);
  return (v68)(v23, v34);
}

void sub_26816FB84()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_1(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  v7 = OUTLINED_FUNCTION_23(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_3();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v33 = &v32 - v14;
  OUTLINED_FUNCTION_8_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v32 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v32 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v32 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v32 - v25;
  sub_26816FE98(0, 0, &v32 - v25);
  sub_2681340E8(v26, v24, &qword_28024DDB8, &unk_2683D50D8);
  v27 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v27, v28, v0);
  if (!v29)
  {
    sub_268172F14(v24, v5);
    sub_2683CF848();
    sub_26812D9E0(v5, &qword_28024DDB0, &qword_2683D50D0);
    v30 = v26;
LABEL_9:
    sub_26812D9E0(v30, &qword_28024DDB8, &unk_2683D50D8);
    goto LABEL_10;
  }

  sub_26812D9E0(v26, &qword_28024DDB8, &unk_2683D50D8);
  sub_26816FE98(1, 1, v21);
  sub_2681340E8(v21, v18, &qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_72(v18, 1, v0);
  if (!v29)
  {
    v31 = v18;
LABEL_8:
    sub_268172F14(v31, v5);
    sub_2683CF848();
    sub_26812D9E0(v5, &qword_28024DDB0, &qword_2683D50D0);
    v30 = v21;
    goto LABEL_9;
  }

  sub_26812D9E0(v21, &qword_28024DDB8, &unk_2683D50D8);
  v21 = v33;
  sub_26816FE98(2, 2, v33);
  sub_2681340E8(v21, v12, &qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_72(v12, 1, v0);
  if (!v29)
  {
    v31 = v12;
    goto LABEL_8;
  }

  sub_26812D9E0(v21, &qword_28024DDB8, &unk_2683D50D8);
LABEL_10:
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_26816FE98@<X0>(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v40 = a2;
  v4 = sub_2683CF8B8();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  v15 = sub_2683CDB98();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2683CE038();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_2683CE028();
  (*(v16 + 104))(v19, *MEMORY[0x277D5EE50], v15);
  sub_2683CE018();
  (*(v16 + 8))(v19, v15);
  if (a1)
  {
    if (a1 == 1)
    {
      v23 = sub_2683CDFE8();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = sub_2683CDFD8();
    }

    else
    {
      v30 = sub_2683CD9C8();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();
      v26 = sub_2683CD9B8();
    }
  }

  else
  {
    v27 = sub_2683CDD18();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v26 = sub_2683CDD08();
  }

  v33 = v26;
  v34 = v41;

  sub_2683CD898();

  sub_26816F2D8(v33, v40, v14);
  sub_2681340E8(v14, v12, &qword_28024DD28, &qword_2683D4CF0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
  {

    sub_26812D9E0(v14, &qword_28024DD28, &qword_2683D4CF0);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    return __swift_storeEnumTagSinglePayload(v34, 1, 1, v35);
  }

  else
  {
    v37 = v39;
    (*(v39 + 32))(v7, v12, v4);
    sub_268172398(v7, a1, v34);

    (*(v37 + 8))(v7, v4);
    return sub_26812D9E0(v14, &qword_28024DD28, &qword_2683D4CF0);
  }
}

void sub_268170280()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v2 = OUTLINED_FUNCTION_23(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19_3();
  v7 = v5 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_6(v9, v10, v11, v12, v13, v14, v15, v16, v111);
  v17 = sub_2683CB7D8();
  v18 = OUTLINED_FUNCTION_0_3(v17);
  v116 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_3();
  v24 = v23 - v22;
  v25 = sub_2683CB7A8();
  v26 = OUTLINED_FUNCTION_0_3(v25);
  v117 = v27;
  v118 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_3();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_28_2();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_23(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v40);
  v42 = &v111 - v41;
  v43 = sub_2683CF8B8();
  v44 = OUTLINED_FUNCTION_0_3(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_14_3();
  v51 = v50 - v49;
  sub_26816FE98(0, 0, v42);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_72(v42, 1, v52);
  if (!v63)
  {
    v115 = v7;
    v56 = &v42[*(v52 + 48)];
    v57 = *v56;
    v58 = v51;
    v59 = v56[8];
    (*(v46 + 32))(v58, v42, v43);
    sub_2683CF888();
    sub_2683CF828();
    v60 = OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_72(v60, v61, v62);
    v64 = v43;
    if (!v63)
    {
      (*(v46 + 8))(v58, v43);
      sub_268173250(v57, v59);
      v53 = &qword_28024DD70;
      v54 = &unk_2683D4E80;
      v55 = v0;
      goto LABEL_12;
    }

    v65 = v58;
    v114 = v46;
    sub_26812D9E0(v0, &qword_28024DD70, &unk_2683D4E80);
    if (v59)
    {
      if (v59 == 1)
      {
        v66 = v57;
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v67 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v67, qword_28027C958);

        v68 = sub_2683CF7C8();
        v69 = sub_2683CFE98();
        sub_268173250(v57, 1u);
        if (os_log_type_enabled(v68, v69))
        {
          OUTLINED_FUNCTION_49();
          v70 = OUTLINED_FUNCTION_40_3();
          v120 = v70;
          OUTLINED_FUNCTION_39_3(4.8149e-34);
          v71 = sub_2683CFAD8();
          v73 = sub_2681610A0(v71, v72, &v120);

          *(v64 + 4) = v73;
          OUTLINED_FUNCTION_38_3(&dword_2680EB000, v74, v75, "Resolved notebook item is not a task or reminder %s");
          __swift_destroy_boxed_opaque_existential_0(v70);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();

          v76 = v66;
          v77 = 1;
LABEL_22:
          sub_268173250(v76, v77);
          (*(v114 + 8))(v65, v32);
          goto LABEL_13;
        }

        v103 = v57;
        v104 = 1;
      }

      else
      {
        v93 = v57;
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v94 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v94, qword_28027C958);

        v95 = sub_2683CF7C8();
        v96 = sub_2683CFE98();
        sub_268173250(v57, 2u);
        if (os_log_type_enabled(v95, v96))
        {
          OUTLINED_FUNCTION_49();
          v97 = OUTLINED_FUNCTION_40_3();
          v120 = v97;
          OUTLINED_FUNCTION_39_3(4.8149e-34);
          v98 = sub_2683CFAD8();
          v100 = sub_2681610A0(v98, v99, &v120);

          *(v64 + 4) = v100;
          OUTLINED_FUNCTION_38_3(&dword_2680EB000, v101, v102, "Resolved notebook item is not a task or reminder %s");
          __swift_destroy_boxed_opaque_existential_0(v97);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();

          v76 = v93;
          v77 = 2;
          goto LABEL_22;
        }

        v103 = v57;
        v104 = 2;
      }

      sub_268173250(v103, v104);
      (*(v114 + 8))(v65, v64);
      goto LABEL_13;
    }

    v113 = v64;
    if (v57)
    {

      v78 = sub_2683CD7C8();
      v79 = v114;
      if (v78)
      {
        v80 = sub_2683CDA58();

        if (v80)
        {
          v112 = sub_2683CD758();

          sub_2683CB768();
          sub_2683CB788();
          v81 = sub_2683CEB38();
          v111 = v81;
          (*(v116 + 8))(v24, v17);
          v82 = [objc_allocWithZone(MEMORY[0x277CD4240]) initWithDateComponentsRange_];
          sub_2683CD7B8();
          v83 = v79;
          v116 = sub_268129504(0, &qword_280253310, 0x277CD4220);
          sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
          OUTLINED_FUNCTION_35_3();
          v84 = sub_26835E5F8();
          sub_2683CB0D8();
          v85 = v119;
          OUTLINED_FUNCTION_18_6(v119);
          v86 = v115;
          OUTLINED_FUNCTION_18_6(v115);
          v87 = v82;
          sub_2683CF878();
          OUTLINED_FUNCTION_13_7();
          sub_26835E66C(v84, 0, 0, v82, 0, v85, v86, v88, v111, v112, v113, v114, v115, v116);
          v89 = OUTLINED_FUNCTION_37_2();
          sub_268173250(v89, v90);

          v91 = OUTLINED_FUNCTION_37_2();
          sub_268173250(v91, v92);

          (*(v117 + 8))(v32, v118);
          (*(v83 + 8))(v65, v113);
          goto LABEL_13;
        }
      }

      v105 = v57;
      sub_268173250(v57, 0);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      sub_2683CD7B8();
      if (v106)
      {
        v107 = v115;
LABEL_30:
        v108 = sub_26835E5F8();
        sub_2683CB0D8();
        v109 = v119;
        OUTLINED_FUNCTION_18_6(v119);
        OUTLINED_FUNCTION_18_6(v107);
        sub_2683CF878();
        OUTLINED_FUNCTION_13_7();
        sub_26835E66C(v108, 0, 0, 0, 0, v109, v107, v110, v111, v112, v113, v114, v115, v116);
        sub_268173250(v105, 0);
        (*(v79 + 8))(v65, v113);
        goto LABEL_13;
      }
    }

    else
    {
      sub_268129504(0, &qword_280253310, 0x277CD4220);
      sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
      v79 = v114;
      v105 = 0;
    }

    v107 = v115;

    goto LABEL_30;
  }

  v53 = &qword_28024DDB8;
  v54 = &unk_2683D50D8;
  v55 = v42;
LABEL_12:
  sub_26812D9E0(v55, v53, v54);
LABEL_13:
  OUTLINED_FUNCTION_29_0();
}

void sub_268170B28()
{
  OUTLINED_FUNCTION_30_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v84 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB8, &unk_2683D50D8);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v84 - v10;
  v12 = sub_2683CF8B8();
  v13 = OUTLINED_FUNCTION_0_3(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_3();
  sub_26816FE98(1, 1, v11);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  OUTLINED_FUNCTION_72(v11, 1, v18);
  if (v28)
  {
    v19 = &qword_28024DDB8;
    v20 = &unk_2683D50D8;
    v21 = v11;
  }

  else
  {
    v22 = &v11[*(v18 + 48)];
    v23 = *v22;
    v24 = v22[8];
    v25 = OUTLINED_FUNCTION_36_3(v15);
    v26(v25);
    sub_2683CF888();
    v27 = sub_2683CF828();
    OUTLINED_FUNCTION_72(v5, 1, v27);
    if (v28)
    {
      sub_26812D9E0(v5, &qword_28024DD70, &unk_2683D4E80);
      if (v24)
      {
        if (v24 == 1)
        {
          if (v23)
          {

            sub_2683CDA98();
            if (v29)
            {
              sub_268129504(0, &qword_280253320, 0x277CD4228);
              sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
              OUTLINED_FUNCTION_35_3();
              v30 = sub_26835E5F8();
              v31 = sub_2683CF878();
              sub_268177814(v30, MEMORY[0x277D84F90], 0, 0, v31, v32);
              v33 = OUTLINED_FUNCTION_8_8();
              sub_268173250(v33, v34);
              v35 = OUTLINED_FUNCTION_8_8();
              sub_268173250(v35, v36);
              v37 = OUTLINED_FUNCTION_19_6();
              v38(v37);
              goto LABEL_33;
            }

            v69 = OUTLINED_FUNCTION_8_8();
            sub_268173250(v69, v70);
          }

          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v71 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v71, qword_28027C958);

          v72 = sub_2683CF7C8();
          v73 = sub_2683CFE98();
          v74 = OUTLINED_FUNCTION_8_8();
          sub_268173250(v74, v75);
          if (os_log_type_enabled(v72, v73))
          {
            OUTLINED_FUNCTION_49();
            v76 = OUTLINED_FUNCTION_27_3();
            v85 = v76;
            *v11 = 136315138;
            v87 = v23;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDE8, &qword_2683D5278);
            v77 = sub_2683CFAD8();
            v79 = sub_2681610A0(v77, v78, &v85);

            *(v11 + 4) = v79;
            OUTLINED_FUNCTION_16_9(&dword_2680EB000, v80, v81, "Resolved notebook list did not have a title %s");
            __swift_destroy_boxed_opaque_existential_0(v76);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          v58 = OUTLINED_FUNCTION_8_8();
        }

        else
        {
          if (qword_28024C8E0 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v60 = sub_2683CF7E8();
          OUTLINED_FUNCTION_67(v60, qword_28027C958);

          v61 = sub_2683CF7C8();
          v62 = sub_2683CFE98();
          sub_268173250(v23, 2u);
          if (os_log_type_enabled(v61, v62))
          {
            OUTLINED_FUNCTION_49();
            v63 = OUTLINED_FUNCTION_27_3();
            v87 = v63;
            *v11 = 136315138;
            v85 = v23;
            v86 = 2;

            v64 = sub_2683CFAD8();
            v66 = sub_2681610A0(v64, v65, &v87);

            *(v11 + 4) = v66;
            OUTLINED_FUNCTION_16_9(&dword_2680EB000, v67, v68, "Resolved notebook list item is not actually a list %s");
            __swift_destroy_boxed_opaque_existential_0(v63);
            OUTLINED_FUNCTION_38();
            OUTLINED_FUNCTION_38();
          }

          v58 = v23;
          v59 = 2;
        }
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v47 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v47, qword_28027C958);

        v48 = sub_2683CF7C8();
        v49 = sub_2683CFE98();
        v50 = OUTLINED_FUNCTION_37_2();
        sub_268173250(v50, v51);
        if (os_log_type_enabled(v48, v49))
        {
          OUTLINED_FUNCTION_49();
          v52 = OUTLINED_FUNCTION_27_3();
          v87 = v52;
          *v11 = 136315138;
          v85 = v23;
          v86 = 0;

          v53 = sub_2683CFAD8();
          v55 = sub_2681610A0(v53, v54, &v87);

          *(v11 + 4) = v55;
          OUTLINED_FUNCTION_16_9(&dword_2680EB000, v56, v57, "Resolved notebook list item is not actually a list %s");
          __swift_destroy_boxed_opaque_existential_0(v52);
          OUTLINED_FUNCTION_38();
          OUTLINED_FUNCTION_38();
        }

        v58 = OUTLINED_FUNCTION_37_2();
      }

      sub_268173250(v58, v59);
      v82 = OUTLINED_FUNCTION_19_6();
      v83(v82);
      goto LABEL_33;
    }

    v39 = OUTLINED_FUNCTION_19_6();
    v40(v39);
    sub_268173250(v23, v24);
    v19 = &qword_28024DD70;
    v20 = &unk_2683D4E80;
    v21 = v5;
  }

  sub_26812D9E0(v21, v19, v20);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v41 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v41, qword_28027C958);
  v42 = sub_2683CF7C8();
  v43 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_11_9(v43))
  {
    v44 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_32_5(v44);
    OUTLINED_FUNCTION_4_7(&dword_2680EB000, v45, v46, "No notebook list items resolved");
    OUTLINED_FUNCTION_38();
  }

LABEL_33:
  OUTLINED_FUNCTION_29_0();
}

void sub_268171184()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CF8B8();
  v154 = OUTLINED_FUNCTION_0_3(v3);
  v155 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_19_3();
  v150 = v7 - v8;
  OUTLINED_FUNCTION_8_0();
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_25_6(v10, v11, v12, v13, v14, v15, v16, v17, v145);
  v156 = sub_2683CF808();
  v18 = OUTLINED_FUNCTION_0_3(v156);
  v151 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19_3();
  v149 = v22 - v23;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  v152 = &v145 - v25;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  v145 = &v145 - v27;
  v28 = sub_2683CF838();
  v29 = OUTLINED_FUNCTION_0_3(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_3();
  v36 = (v35 - v34);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA0, &unk_2683D50C0);
  OUTLINED_FUNCTION_1(v148);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v145 - v40;
  v42 = sub_2683CF8C8();
  v43 = OUTLINED_FUNCTION_0_3(v42);
  v147 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_19_3();
  v146 = (v47 - v48);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v49);
  v51 = &v145 - v50;
  v52 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  *v36 = v2;
  (*(v31 + 104))(v36, *MEMORY[0x277D5FEA8], v28);

  sub_2683CF6D8();
  (*(v31 + 8))(v36, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26812D9E0(v41, &qword_28024DDA0, &unk_2683D50C0);
    OUTLINED_FUNCTION_31_2();
    if (!v74)
    {
LABEL_77:
      OUTLINED_FUNCTION_0_5();
    }

    v53 = sub_2683CF7E8();
    OUTLINED_FUNCTION_67(v53, qword_28027C958);
    v54 = sub_2683CF7C8();
    v55 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_11_9(v55))
    {
      v56 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v56);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v57, v58, "[NotebookReferenceResolver] Failed to resolve");
      OUTLINED_FUNCTION_38();
    }
  }

  else
  {
    v59 = v147;
    (*(v147 + 32))(v51, v41, v42);
    v60 = v146;
    (*(v59 + 16))(v146, v51, v42);
    v61 = (*(v59 + 88))(v60, v42);
    v62 = v51;
    if (v61 == *MEMORY[0x277D5FEC0])
    {
      v63 = OUTLINED_FUNCTION_5_7();
      v64(v63);
      v65 = v145;
      (*(v151 + 32))(v145, v60, v156);
      OUTLINED_FUNCTION_31_2();
      if (!v74)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v66 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v66, qword_28027C958);
      v67 = sub_2683CF7C8();
      v68 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_11_9(v68))
      {
        v69 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v69);
        OUTLINED_FUNCTION_4_7(&dword_2680EB000, v70, v71, "[NotebookReferenceResolver] One match");
        OUTLINED_FUNCTION_38();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDA8, &qword_2683E6540);
      v72 = *(v155 + 72);
      v73 = (*(v155 + 80) + 32) & ~*(v155 + 80);
      *(swift_allocObject() + 16) = xmmword_2683D1EC0;
      sub_2683CF7F8();
      (*(v151 + 8))(v65, v156);
      (*(v59 + 8))(v62, v42);
    }

    else
    {
      v74 = v61 == *MEMORY[0x277D5FED0] || v61 == *MEMORY[0x277D5FEC8];
      if (v74)
      {
        v75 = OUTLINED_FUNCTION_5_7();
        v76(v75);
        v77 = *v60;
        OUTLINED_FUNCTION_31_2();
        if (!v74)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v148 = v51;
        v78 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v78, qword_28027C958);
        v79 = sub_2683CF7C8();
        v80 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v80))
        {
          v81 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_33_4(v81);
          _os_log_impl(&dword_2680EB000, v79, OS_LOG_TYPE_DEFAULT, "[NotebookReferenceResolver] Plural matches, returning all", v51, 2u);
          OUTLINED_FUNCTION_38();
        }

        v82 = *(v77 + 16);
        if (v82)
        {
          v146 = v42;
          v83 = *(v151 + 16);
          v150 = v77;
          v151 = v83;
          OUTLINED_FUNCTION_34_4();
          v85 = *(v84 + 56);
          v86 = (v84 - 8);
          v87 = MEMORY[0x277D84F90];
          do
          {
            v88 = v152;
            v89 = v156;
            (v151)(v152, v51, v156);
            sub_2683CF7F8();
            (*v86)(v88, v89);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_29_4();
              v87 = v94;
            }

            v90 = *(v87 + 16);
            if (v90 >= *(v87 + 24) >> 1)
            {
              OUTLINED_FUNCTION_28_4();
              v87 = v95;
            }

            OUTLINED_FUNCTION_12_5();
            (*(v93 + 32))(v91 + v92 * v90, v153);
            v51 += v85;
            --v82;
          }

          while (v82);

          v42 = v146;
          v59 = v147;
        }

        else
        {
        }

        (*(v59 + 8))(v148, v42);
      }

      else if (v61 == *MEMORY[0x277D5FED8])
      {
        v148 = v51;
        v96 = OUTLINED_FUNCTION_5_7();
        v97(v96);
        v98 = *v60;
        OUTLINED_FUNCTION_31_2();
        if (!v74)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v146 = v42;
        v99 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v99, qword_28027C958);
        v100 = sub_2683CF7C8();
        v101 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_17_5(v101))
        {
          v102 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_33_4(v102);
          OUTLINED_FUNCTION_15_7(&dword_2680EB000, v103, v104, "[NotebookReferenceResolver] Plural matches, returning all");
          OUTLINED_FUNCTION_38();
        }

        v105 = 0;
        v106 = *(v98 + 16);
        v107 = MEMORY[0x277D84F90];
        while (v106 != v105)
        {
          if (v105 >= *(v98 + 16))
          {
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

          v108 = v98 + 8 * v105;
          v109 = *(v108 + 32);
          v110 = *(v109 + 16);
          v111 = *(v107 + 16);
          if (__OFADD__(v111, v110))
          {
            goto LABEL_73;
          }

          v112 = *(v108 + 32);

          if (!swift_isUniquelyReferenced_nonNull_native() || v111 + v110 > *(v107 + 24) >> 1)
          {
            sub_2682E4F8C();
            v107 = v113;
          }

          if (*(v109 + 16))
          {
            if ((*(v107 + 24) >> 1) - *(v107 + 16) < v110)
            {
              goto LABEL_75;
            }

            v114 = (*(v151 + 80) + 32) & ~*(v151 + 80);
            v115 = *(v151 + 72);
            swift_arrayInitWithCopy();

            if (v110)
            {
              v116 = *(v107 + 16);
              v117 = __OFADD__(v116, v110);
              v118 = v116 + v110;
              if (v117)
              {
                goto LABEL_76;
              }

              *(v107 + 16) = v118;
            }
          }

          else
          {

            if (v110)
            {
              goto LABEL_74;
            }
          }

          ++v105;
        }

        v125 = *(v107 + 16);
        if (v125)
        {
          v126 = *(v151 + 16);
          OUTLINED_FUNCTION_34_4();
          v152 = *(v127 + 56);
          v153 = v128;
          v129 = (v127 - 8);
          v130 = MEMORY[0x277D84F90];
          do
          {
            v131 = v149;
            v132 = v156;
            v153(v149, v106, v156);
            sub_2683CF7F8();
            (*v129)(v131, v132);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_29_4();
              v130 = v138;
            }

            v133 = *(v130 + 16);
            v134 = v150;
            if (v133 >= *(v130 + 24) >> 1)
            {
              OUTLINED_FUNCTION_28_4();
              v134 = v150;
              v130 = v139;
            }

            OUTLINED_FUNCTION_12_5();
            (*(v137 + 32))(v135 + v136 * v133, v134);
            v106 += v152;
            --v125;
          }

          while (v125);
        }

        (*(v147 + 8))(v148, v146);
      }

      else if (v61 == *MEMORY[0x277D5FEE0])
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v119 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v119, qword_28027C958);
        v120 = sub_2683CF7C8();
        v121 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_11_9(v121))
        {
          v122 = OUTLINED_FUNCTION_21_5();
          OUTLINED_FUNCTION_32_5(v122);
          OUTLINED_FUNCTION_4_7(&dword_2680EB000, v123, v124, "[NotebookReferenceResolver] No matches");
          OUTLINED_FUNCTION_38();
        }

        (*(v59 + 8))(v51, v42);
      }

      else
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v140 = sub_2683CF7E8();
        OUTLINED_FUNCTION_67(v140, qword_28027C958);
        v141 = sub_2683CF7C8();
        v142 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_17_5(v142))
        {
          v143 = OUTLINED_FUNCTION_21_5();
          *v143 = 0;
          _os_log_impl(&dword_2680EB000, v141, v41, "[NotebookReferenceResolver] No matches from unknown case", v143, 2u);
          OUTLINED_FUNCTION_38();
        }

        v144 = *(v59 + 8);
        v144(v51, v42);
        v144(v60, v42);
      }
    }
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268171C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_2();
  v5 = sub_2683CE138();
  OUTLINED_FUNCTION_42_3(v5);
  v6 = sub_2683CE128();
  OUTLINED_FUNCTION_41_2(v6);
  v7 = sub_2683CF8B8();
  v8 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v8, v9, v7);
  if (v10)
  {
    sub_26812D9E0(v0, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_2683CF8A8();
    (*(*(v7 - 8) + 8))(v0, v7);
    v11 = sub_268171E88();
    if ((v11 & 1) != 0 && (sub_2683CDD38(), , sub_2683CD8A8(), , v22))
    {
      v12 = sub_2683CDD28();
      v14 = v13;

      if (v14)
      {

        return v12;
      }
    }

    else
    {
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v15 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v15, qword_28027C958);
  v16 = sub_2683CF7C8();
  v17 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_17_5(v17))
  {
    v18 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_33_4(v18);
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v19, v20, "[NotebookReferenceResolver] Did not resolve formatted text entity.");
    OUTLINED_FUNCTION_38();
  }

  return 0;
}

uint64_t sub_268171E88()
{
  v0 = sub_2683CD1F8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2683CE458();
  v6 = result;
  v7 = 0;
  v8 = *(result + 16);
  v17[2] = v1 + 16;
  v18 = v8;
  v17[1] = "AddTasksIntentResponse";
  v9 = (v1 + 8);
  while (1)
  {
    v10 = v7;
    if (v18 == v7)
    {
      goto LABEL_11;
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    (*(v1 + 16))(v4, v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v0);
    sub_2683CD1B8();
    v11 = sub_2683CFAF8();
    v13 = v12;

    if (v11 == sub_2683CFAF8() && v13 == v14)
    {

      (*v9)(v4, v0);
LABEL_11:

      return v18 != v10;
    }

    ++v7;
    v16 = sub_2683D0598();

    result = (*v9)(v4, v0);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_268172098()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_28_2();
  v5 = sub_2683CD018();
  OUTLINED_FUNCTION_42_3(v5);
  v6 = sub_2683CD008();
  OUTLINED_FUNCTION_41_2(v6);
  v7 = sub_2683CF8B8();
  v8 = OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72(v8, v9, v7);
  if (v10)
  {
    sub_26812D9E0(v0, &qword_28024DD28, &qword_2683D4CF0);
  }

  else
  {
    sub_2683CF8A8();
    (*(*(v7 - 8) + 8))(v0, v7);
    sub_2683CCFE8();

    sub_2683CD8A8();

    if (v25)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v11 = sub_2683CF7E8();
      OUTLINED_FUNCTION_67(v11, qword_28027C958);

      v12 = sub_2683CF7C8();
      v13 = sub_2683CFE98();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_49();
        v15 = swift_slowAlloc();
        v26 = v15;
        *v14 = 136315138;
        sub_2683CCFD8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
        v16 = sub_2683CFAD8();
        v18 = sub_2681610A0(v16, v17, &v26);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_2680EB000, v12, v13, "[NotebookReferenceResolver] Resolved content topic as: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      sub_2683CCFD8();

      goto LABEL_16;
    }
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v19 = sub_2683CF7E8();
  OUTLINED_FUNCTION_67(v19, qword_28027C958);
  v20 = sub_2683CF7C8();
  v21 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_17_5(v21))
  {
    v22 = OUTLINED_FUNCTION_21_5();
    OUTLINED_FUNCTION_33_4(v22);
    OUTLINED_FUNCTION_15_7(&dword_2680EB000, v23, v24, "[NotebookReferenceResolver] Did not resolve content topic entity.");
    OUTLINED_FUNCTION_38();
  }

LABEL_16:
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_268172398@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    sub_2683CF8A8();
    sub_2683CD7E8();
    sub_2683CD8A8();

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    v6 = v12;
    if (v19)
    {
      v13 = a3 + *(v12 + 48);
      v14 = sub_2683CF8B8();
      (*(*(v14 - 8) + 16))(a3, a1, v14);
      v11 = 0;
      *v13 = v19;
      *(v13 + 8) = 0;
LABEL_11:
      v10 = a3;
      return __swift_storeEnumTagSinglePayload(v10, v11, 1, v6);
    }

LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

  if (a2 != 1)
  {
    sub_2683CF8A8();
    sub_2683CD6A8();
    sub_2683CD8A8();

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
    v6 = v15;
    if (v19)
    {
      v16 = a3 + *(v15 + 48);
      v17 = sub_2683CF8B8();
      (*(*(v17 - 8) + 16))(a3, a1, v17);
      v11 = 0;
      *v16 = v19;
      *(v16 + 8) = 2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_2683CF8A8();
  sub_2683CDAC8();
  sub_2683CD8A8();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  v6 = v5;
  v7 = 1;
  if (v19)
  {
    v8 = a3 + *(v5 + 48);
    v9 = sub_2683CF8B8();
    (*(*(v9 - 8) + 16))(a3, a1, v9);
    *v8 = v19;
    *(v8 + 8) = 1;
    v7 = 0;
  }

  v10 = a3;
  v11 = v7;
  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v6);
}

uint64_t sub_2681725F0@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v111) = a2;
  v5 = a2;
  v113 = sub_2683CF8B8();
  v109 = *(v113 - 8);
  v6 = *(v109 + 64);
  v7 = MEMORY[0x28223BE20](v113);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v102 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v102 - v13;
  v15 = sub_2683CF808();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v102 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v102 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  if (v5 == 3)
  {
    if (a1[2])
    {
      v33 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
      sub_2683CF7F8();
      v34 = a3;
      v35 = 0;
    }

    else
    {
      v34 = a3;
      v35 = 1;
    }

    v65 = v113;

    return __swift_storeEnumTagSinglePayload(v34, v35, 1, v65);
  }

  v108 = a3;
  v103 = &v102 - v30;
  v104 = v32;
  v110 = a1;
  v105 = v31;
  v112 = v29;
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v36 = sub_2683CF7E8();
  __swift_project_value_buffer(v36, qword_28027C958);
  v37 = v110;

  v38 = v37;
  v39 = sub_2683CF7C8();
  v40 = sub_2683CFE98();

  v106 = v40;
  v41 = os_log_type_enabled(v39, v40);
  v107 = v16;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v102 = v39;
    v43 = v42;
    v44 = swift_slowAlloc();
    v115 = v44;
    *v43 = 136315394;
    v114 = v111;
    v45 = sub_2683CFAD8();
    v47 = sub_2681610A0(v45, v46, &v115);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2080;
    v48 = MEMORY[0x26D6167A0](v110, v112);
    v50 = sub_2681610A0(v48, v49, &v115);
    v38 = v110;

    *(v43 + 14) = v50;
    v51 = v102;
    _os_log_impl(&dword_2680EB000, v102, v106, "Found multiple candidates, filtering for specific type (nil if no filter) then taking the first %s from candidates: %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D617A40](v44, -1, -1);
    MEMORY[0x26D617A40](v43, -1, -1);
  }

  else
  {
  }

  v52 = v38[2];
  v53 = v112;
  if (!v111)
  {
    if (v52)
    {
      v67 = sub_268129504(0, &qword_280253310, 0x277CD4220);
      v110 = *(v107 + 16);
      v111 = v67;
      v68 = v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v69 = (v109 + 8);
      v70 = (v107 + 8);
      v109 = *(v107 + 72);
      do
      {
        (v110)(v28, v68, v53);
        sub_2683CF7F8();
        v71 = sub_2683CF898();
        v73 = v72;
        (*v69)(v14, v113);
        v115 = v111;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDD8, &qword_2683D50F8);
        v74 = sub_2683CFAD8();
        if (v73)
        {
          if (v71 == v74 && v73 == v75)
          {

LABEL_54:
            v96 = v107 + 32;
            v97 = v103;
            v98 = v28;
            v99 = v112;
            (*(v107 + 32))(v103, v98, v112);
            v100 = v108;
            sub_2683CF7F8();
            (*(v96 - 24))(v97, v99);
            goto LABEL_58;
          }

          v77 = sub_2683D0598();

          if (v77)
          {
            goto LABEL_54;
          }
        }

        else
        {
        }

        v53 = v112;
        (*v70)(v28, v112);
        v68 += v109;
        --v52;
      }

      while (v52);
    }

LABEL_50:
    v89 = v108;
    v90 = 1;
    return __swift_storeEnumTagSinglePayload(v89, v90, 1, v113);
  }

  if (v111 != 1)
  {
    if (v52)
    {
      v78 = sub_268129504(0, &qword_28024D350, 0x277CD3E00);
      v110 = *(v107 + 16);
      v111 = v78;
      v79 = v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v80 = (v109 + 8);
      v81 = (v107 + 8);
      v109 = *(v107 + 72);
      do
      {
        (v110)(v24, v79, v53);
        sub_2683CF7F8();
        v82 = sub_2683CF898();
        v84 = v83;
        (*v80)(v12, v113);
        v115 = v111;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDD0, &qword_2683D50F0);
        v85 = sub_2683CFAD8();
        if (v84)
        {
          if (v82 == v85 && v84 == v86)
          {

LABEL_56:
            v92 = v107 + 32;
            v91 = *(v107 + 32);
            v93 = v104;
            v94 = v104;
            v95 = v24;
            goto LABEL_57;
          }

          v88 = sub_2683D0598();

          if (v88)
          {
            goto LABEL_56;
          }
        }

        else
        {
        }

        v53 = v112;
        (*v81)(v24, v112);
        v79 += v109;
        --v52;
      }

      while (v52);
    }

    goto LABEL_50;
  }

  if (!v52)
  {
    goto LABEL_50;
  }

  v54 = sub_268129504(0, &qword_280253320, 0x277CD4228);
  v110 = *(v107 + 16);
  v111 = v54;
  v55 = v38 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  v56 = (v109 + 8);
  v57 = (v107 + 8);
  v109 = *(v107 + 72);
  while (1)
  {
    (v110)(v20, v55, v53);
    sub_2683CF7F8();
    v58 = sub_2683CF898();
    v60 = v59;
    (*v56)(v9, v113);
    v115 = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDC8, &qword_2683D50E8);
    v61 = sub_2683CFAD8();
    if (!v60)
    {

      goto LABEL_21;
    }

    if (v58 == v61 && v60 == v62)
    {
      break;
    }

    v64 = sub_2683D0598();

    if (v64)
    {
      goto LABEL_52;
    }

LABEL_21:
    v53 = v112;
    (*v57)(v20, v112);
    v55 += v109;
    if (!--v52)
    {
      goto LABEL_50;
    }
  }

LABEL_52:
  v92 = v107 + 32;
  v91 = *(v107 + 32);
  v93 = v105;
  v94 = v105;
  v95 = v20;
LABEL_57:
  v101 = v112;
  v91(v94, v95, v112);
  v100 = v108;
  sub_2683CF7F8();
  (*(v92 - 24))(v93, v101);
LABEL_58:
  v89 = v100;
  v90 = 0;
  return __swift_storeEnumTagSinglePayload(v89, v90, 1, v113);
}

uint64_t sub_268172F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DDB0, &qword_2683D50D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_268172F84()
{
  result = qword_28024DDC0;
  if (!qword_28024DDC0)
  {
    sub_2683CF808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DDC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotebookReferenceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2681730C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_268173104(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_268173160(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2681731A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2681731FC()
{
  result = qword_28024DDE0;
  if (!qword_28024DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DDE0);
  }

  return result;
}

uint64_t sub_268173250(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_4_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL OUTLINED_FUNCTION_11_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_12_5()
{
  *(v0 + 16) = v1;
  v3 = *(v2 - 104);
  v4 = *(v2 - 96);
  v5 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
}

void OUTLINED_FUNCTION_15_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_16_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

BOOL OUTLINED_FUNCTION_17_5(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_6(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_28_4()
{

  sub_2682E48E8();
}

void OUTLINED_FUNCTION_29_4()
{
  v2 = *(v0 + 16) + 1;

  sub_2682E48E8();
}

void OUTLINED_FUNCTION_38_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_39_3(float a1)
{
  *v1 = a1;
  *(v4 - 104) = v3;
  *(v4 - 96) = v2;
}

uint64_t OUTLINED_FUNCTION_40_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_41_2(uint64_t a1)
{

  return sub_26816F2D8(a1, 3, v1);
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_268173518()
{
  qword_28024DDF0 = 0xD000000000000028;
  *algn_28024DDF8 = 0x80000002683FD670;
  qword_28024DE00 = 0xD000000000000016;
  unk_28024DE08 = 0x80000002683FD650;
}

uint64_t static DIDisambiguationResponse.identifier.getter@<X0>(void *a1@<X8>)
{
  if (qword_28024C888 != -1)
  {
    swift_once();
  }

  v2 = *algn_28024DDF8;
  v3 = qword_28024DE00;
  v4 = unk_28024DE08;
  *a1 = qword_28024DDF0;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

BOOL static DIDisambiguationResponse.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      sub_26817370C(*a1, v3, 1);
      v7 = OUTLINED_FUNCTION_113();
      sub_26817370C(v7, v8, 1);
      return v2 == v5;
    }

    goto LABEL_6;
  }

  if (a2[2])
  {
    v10 = *(a1 + 8);

LABEL_6:
    v11 = OUTLINED_FUNCTION_113();
    sub_2681736FC(v11, v12, v6);
    sub_26817370C(v2, v3, v4);
    v13 = OUTLINED_FUNCTION_113();
    sub_26817370C(v13, v14, v6);
    return 0;
  }

  v15 = *a1;
  if (v2 == v5 && v3 == a2[1])
  {
    sub_2681736FC(v15, v3, 0);
    v28 = OUTLINED_FUNCTION_1_13();
    sub_2681736FC(v28, v29, v30);
    v31 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v31, v32, v33);
    v34 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v34, v35, v36);
    return 1;
  }

  else
  {
    v17 = sub_2683D0598();
    v18 = OUTLINED_FUNCTION_113();
    sub_2681736FC(v18, v19, 0);
    v20 = OUTLINED_FUNCTION_1_13();
    sub_2681736FC(v20, v21, v22);
    v23 = OUTLINED_FUNCTION_1_13();
    sub_26817370C(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_113();
    sub_26817370C(v26, v27, 0);
    return v17 & 1;
  }
}

uint64_t sub_2681736FC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26817370C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_26817371C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64497463656C6573 && a2 == 0xE800000000000000;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E497463656C6573 && a2 == 0xEB00000000786564)
  {

    return 1;
  }

  else
  {
    v7 = sub_2683D0598();

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

uint64_t sub_2681737E8(char a1)
{
  sub_2683D0698();
  MEMORY[0x26D617190](a1 & 1);
  return sub_2683D06D8();
}

uint64_t sub_268173830(char a1)
{
  if (a1)
  {
    return 0x6E497463656C6573;
  }

  else
  {
    return 0x64497463656C6573;
  }
}

uint64_t sub_268173880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26817371C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681738A8(uint64_t a1)
{
  v2 = sub_268173CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681738E4(uint64_t a1)
{
  v2 = sub_268173CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268173920(uint64_t a1)
{
  v2 = sub_268173D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26817395C(uint64_t a1)
{
  v2 = sub_268173D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268173998(uint64_t a1)
{
  v2 = sub_268173D24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681739D4(uint64_t a1)
{
  v2 = sub_268173D24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIDisambiguationResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE10, &qword_2683D5290);
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v37 = v5;
  v38 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE18, &qword_2683D5298);
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v34 = v12;
  v35 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE20, &qword_2683D52A0);
  OUTLINED_FUNCTION_0_3(v18);
  v20 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v23);
  v25 = &v33 - v24;
  v26 = v1[1];
  v39 = *v1;
  v33 = v26;
  v27 = *(v1 + 16);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268173CD0();
  sub_2683D0718();
  if (v27)
  {
    v41 = 1;
    sub_268173D24();
    v29 = v36;
    sub_2683D04C8();
    v30 = v38;
    sub_2683D0538();
    (*(v37 + 8))(v29, v30);
  }

  else
  {
    v40 = 0;
    sub_268173D78();
    sub_2683D04C8();
    v31 = v35;
    sub_2683D0518();
    (*(v34 + 8))(v17, v31);
  }

  return (*(v20 + 8))(v25, v18);
}

unint64_t sub_268173CD0()
{
  result = qword_28024DE28;
  if (!qword_28024DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE28);
  }

  return result;
}

unint64_t sub_268173D24()
{
  result = qword_28024DE30;
  if (!qword_28024DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE30);
  }

  return result;
}

unint64_t sub_268173D78()
{
  result = qword_28024DE38;
  if (!qword_28024DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE38);
  }

  return result;
}

uint64_t DIDisambiguationResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE40, &qword_2683D52A8);
  v60 = OUTLINED_FUNCTION_0_3(v3);
  v61 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  v9 = v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE48, &qword_2683D52B0);
  OUTLINED_FUNCTION_0_3(v10);
  v59 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v14);
  v16 = v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DE50, &qword_2683D52B8);
  OUTLINED_FUNCTION_0_3(v17);
  v62 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v21);
  v23 = v56 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268173CD0();
  v25 = v63;
  sub_2683D06F8();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v56[1] = v10;
  v56[2] = v16;
  v57 = v9;
  v63 = a1;
  v26 = sub_2683D04B8();
  result = sub_268151B7C(v26, 0);
  if (v29 == v30 >> 1)
  {
LABEL_8:
    v42 = sub_2683D01D8();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D690, &qword_2683D52C0) + 48);
    *v44 = &type metadata for DIDisambiguationResponse;
    sub_2683D0428();
    sub_2683D01C8();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v23, v17);
    a1 = v63;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = v17;
    v32 = *(v28 + v29);
    sub_268151B68(v29 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    v37 = v34 == v36 >> 1;
    v38 = v61;
    if (!v37)
    {
      v17 = v31;
      goto LABEL_8;
    }

    v64 = v32;
    if (v32)
    {
      v66 = 1;
      sub_268173D24();
      v39 = v57;
      OUTLINED_FUNCTION_6_7();
      v40 = v39;
      v41 = v60;
      v47 = sub_2683D0498();
      swift_unknownObjectRelease();
      (*(v38 + 8))(v40, v41);
      v48 = OUTLINED_FUNCTION_46();
      v49(v48);
      v50 = 0;
      v51 = v47;
    }

    else
    {
      v65 = 0;
      sub_268173D78();
      OUTLINED_FUNCTION_6_7();
      v46 = v62;
      v51 = sub_2683D0478();
      v50 = v52;
      swift_unknownObjectRelease();
      v53 = OUTLINED_FUNCTION_5_8();
      v54(v53);
      (*(v46 + 8))(v23, v31);
    }

    v55 = v58;
    *v58 = v51;
    v55[1] = v50;
    *(v55 + 16) = v64;
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  return result;
}

unint64_t sub_268174330(void *a1)
{
  a1[1] = sub_268174368();
  a1[2] = sub_2681743BC();
  result = sub_268174410();
  a1[3] = result;
  return result;
}

unint64_t sub_268174368()
{
  result = qword_28024DE58;
  if (!qword_28024DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE58);
  }

  return result;
}

unint64_t sub_2681743BC()
{
  result = qword_28024DE60;
  if (!qword_28024DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE60);
  }

  return result;
}

unint64_t sub_268174410()
{
  result = qword_28024DE68;
  if (!qword_28024DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE68);
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

uint64_t sub_268174484(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2681744C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

_BYTE *storeEnumTagSinglePayload for DIDisambiguationResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_268174610(_BYTE *result, int a2, int a3)
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

unint64_t sub_2681746C0()
{
  result = qword_28024DE70;
  if (!qword_28024DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE70);
  }

  return result;
}

unint64_t sub_268174718()
{
  result = qword_28024DE78;
  if (!qword_28024DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE78);
  }

  return result;
}

unint64_t sub_268174770()
{
  result = qword_28024DE80;
  if (!qword_28024DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE80);
  }

  return result;
}

unint64_t sub_2681747C8()
{
  result = qword_28024DE88;
  if (!qword_28024DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE88);
  }

  return result;
}

unint64_t sub_268174820()
{
  result = qword_28024DE90;
  if (!qword_28024DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE90);
  }

  return result;
}

unint64_t sub_268174878()
{
  result = qword_28024DE98;
  if (!qword_28024DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DE98);
  }

  return result;
}

unint64_t sub_2681748D0()
{
  result = qword_28024DEA0;
  if (!qword_28024DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEA0);
  }

  return result;
}

unint64_t sub_268174928()
{
  result = qword_28024DEA8;
  if (!qword_28024DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEA8);
  }

  return result;
}

unint64_t sub_268174980()
{
  result = qword_28024DEB0;
  if (!qword_28024DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DEB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_7()
{

  return sub_2683D0418();
}

uint64_t sub_268174A2C()
{
  v0 = sub_2683CD5F8();
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = v0 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v1)
    {

      sub_2683CD5E8();
      sub_2683CD618();
      return sub_2683CD608();
    }

    if (v1 >= *(v0 + 16))
    {
      break;
    }

    sub_26813CA00(v3, v13);
    sub_268174BC8(v13, &v10);
    __swift_destroy_boxed_opaque_existential_0(v13);
    if (v11)
    {
      sub_268128148(&v10, v12);
      sub_268128148(v12, &v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = *(v4 + 16);
        sub_2682E4594();
        v4 = v7;
      }

      v5 = *(v4 + 16);
      if (v5 >= *(v4 + 24) >> 1)
      {
        sub_2682E4594();
        v4 = v8;
      }

      *(v4 + 16) = v5 + 1;
      sub_268128148(&v10, v4 + 40 * v5 + 32);
    }

    else
    {
      sub_268175034(&v10);
    }

    v3 += 40;
    ++v1;
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v13);

  __break(1u);
  return result;
}

uint64_t sub_268174BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_2683CD628();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_2683CD548();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v37 = a1;
  sub_26813CA00(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC0, &qword_2683E6550);
  if (swift_dynamicCast())
  {
    (*(v12 + 32))(v16, v18, v11);
    if (sub_2682E87E8())
    {
      v19 = MEMORY[0x277D5E670];
      v20 = v38;
      v38[3] = v11;
      v20[4] = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
      (*(v12 + 16))(boxed_opaque_existential_0, v16, v11);
      (*(v12 + 8))(v16, v11);
    }

    else
    {
      (*(v12 + 8))(v16, v11);
      v24 = v38;
      v38[4] = 0;
      *v24 = 0u;
      *(v24 + 1) = 0u;
    }
  }

  else if (swift_dynamicCast())
  {
    (*(v4 + 32))(v8, v10, v3);
    v22 = MEMORY[0x277D5E728];
    v23 = v38;
    v38[3] = v3;
    v23[4] = v22;
    __swift_allocate_boxed_opaque_existential_0(v23);
    sub_268174A2C();
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v25 = sub_2683CF7E8();
    __swift_project_value_buffer(v25, qword_28027C958);
    v26 = v37;
    sub_26813CA00(v37, v41);
    v27 = sub_2683CF7C8();
    v28 = sub_2683CFE88();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43 = v30;
      *v29 = 136446210;
      __swift_project_boxed_opaque_existential_1(v41, v41[3]);
      DynamicType = swift_getDynamicType();
      v40 = v41[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEC8, &qword_2683D5758);
      v31 = sub_2683CFAD8();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v41);
      v34 = sub_2681610A0(v31, v33, &v43);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2680EB000, v27, v28, "Got unknown node type: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x26D617A40](v30, -1, -1);
      MEMORY[0x26D617A40](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    sub_26813CA00(v26, v38);
  }

  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t sub_268175034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DEB8, &qword_2683D5750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26817509C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = sub_2683CB0D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v18 - v14;
  sub_268176AE4(v4, v18 - v14);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v16 = sub_2683CB528();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v16);
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    a1(v11);
    result = (*(v8 + 8))(v11, v7);
    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_268175270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2;
  if (a2)
  {
    sub_268133FA8();
    v16 = sub_26835E5F8();
  }

  if (a4)
  {
    v17 = sub_2683CFA68();
  }

  else
  {
    v17 = 0;
  }

  if (a14)
  {
    v18 = sub_2683CFA68();
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v16 content:v17 itemType:a5 status:a6 location:a7 locationSearchType:a8 dateTime:a9 dateSearchType:a10 temporalEventTriggerTypes:a11 taskPriority:a12 notebookItemIdentifier:v18];

  return v19;
}

id sub_2681753A0(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(0, 1, 1, 0, 0, 0, 1, 0, 0, v23, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 2:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v31 = v14;
      v15 = OUTLINED_FUNCTION_3_7();
      result = sub_26817551C(v15, v16, v17, 0, 1uLL, 0, 1, 0, v29, v31, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 3:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v32 = v18;
      v19 = OUTLINED_FUNCTION_3_7();
      result = sub_26817551C(v19, v20, v21, 0, 0, 1, 1, 0, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 4:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      v30 = v3;
      OUTLINED_FUNCTION_3_7();
      OUTLINED_FUNCTION_4_8();
      result = sub_26817551C(v4, v5, v6, v7, v8, v9, v10, 1, v29, v30, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 5:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, v24, v24, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
    case 6:
      OUTLINED_FUNCTION_1_14();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v25, v25, 0, v35, v36, v37, v38, v39, 0, 0);
      break;
    case 7:
      OUTLINED_FUNCTION_1_14();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v22, 0, v22, v35, v36, v37, v38, v39, 0, 0);
      break;
    case 8:
      v26 = OUTLINED_FUNCTION_2_9();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v27, *&v26, v28, v27, v27, v27, 0, v39, v40, v41);
      break;
    case 9:
      v11 = OUTLINED_FUNCTION_2_9();
      result = sub_26817551C(0, 1, 0, 0, 0, 0, 1, 0, 0, v12, *&v11, v13, v12, 0, v12, v12, v39, v40, v41);
      break;
    default:
      OUTLINED_FUNCTION_5_9();
      OUTLINED_FUNCTION_0_17();
      result = sub_26817551C(1, 1, 0, 0, 0, 0, 1, 0, 0, v1, v33, v34, v35, v36, v37, v38, v39, v40, v41);
      break;
  }

  return result;
}