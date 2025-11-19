char *sub_20C4EC62C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C4EC738(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_20C4EC83C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C47B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20C4EC940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_20C4ECA94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C4ECBB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C4ECCEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5188);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_20C4ECDFC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_20C4ECF58(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_20C4ED134(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C5A0B3C();
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
      result = sub_20C5A0B3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20C4ED68C(&qword_27C7C51F0, &qword_27C7C51E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51E8);
            v9 = sub_20C4BF940(v13, i, a3);
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
        sub_20C479154(0, &qword_27C7C4780);
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

uint64_t sub_20C4ED2D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C5A0B3C();
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
      result = sub_20C5A0B3C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20C4ED68C(&qword_27C7C51C8, &qword_27C7C51C0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C51C0);
            v9 = sub_20C4BF8C0(v13, i, a3);
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
        sub_20C479154(0, &qword_27C7C4550);
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

uint64_t _s12SeymourMedia22MarketingOfferTemplateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        v4 = 1;
        v2 = 2;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (v2 == 3)
    {
      if (v3 == 3)
      {
        v4 = 1;
        v2 = 3;
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!v2)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v2 != 1)
  {
LABEL_10:
    if (v3 >= 4)
    {
      v4 = sub_20C5679D8(*a1, *a2);
LABEL_17:
      sub_20C497094(v3);
      sub_20C497094(v2);
      goto LABEL_18;
    }

LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  if (v3 != 1)
  {
    goto LABEL_16;
  }

  v2 = 1;
  v4 = 1;
LABEL_18:
  sub_20C498074(v2);
  sub_20C498074(v3);
  return v4 & 1;
}

unint64_t sub_20C4ED558()
{
  result = qword_27C7C5190;
  if (!qword_27C7C5190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5190);
  }

  return result;
}

uint64_t sub_20C4ED5AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4ED600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_20C4ED65C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_20C4ED68C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ServiceSubscriptionCaching.fetchIsSubscribed()(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_20C59D46C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_20C59E46C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_20C5A01CC();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4ED868, 0, 0);
}

uint64_t sub_20C4ED868()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  v11 = v0[8];
  sub_20C59FDDC();
  sub_20C5A01AC();
  v4 = *(v3 + 8);
  v0[20] = v4;
  v0[21] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_20C4ED9F4;
  v6 = v0[15];
  v7 = v0[8];
  v8 = v0[7];

  return v10(v6, v8, v7);
}

uint64_t sub_20C4ED9F4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_20C4EDBF8;
  }

  else
  {
    v2 = sub_20C4EDB08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C4EDB08()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  sub_20C59D45C();
  v7 = sub_20C59E45C();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8(v7 & 1);
}

uint64_t sub_20C4EDBF8()
{
  v23 = v0;
  v1 = *(v0 + 184);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
  if (swift_dynamicCast() & 1) != 0 && (sub_20C59E79C())
  {

    v3 = *(v0 + 40);
  }

  else
  {

    *(v0 + 193) = 4;
    sub_20C4EDEC8();
    v4 = sub_20C59E4EC();
    v5 = *(v0 + 184);
    if ((v4 & 1) == 0)
    {
      sub_20C59FDDC();
      v7 = v5;
      v8 = sub_20C5A01BC();
      v9 = sub_20C5A089C();

      if (os_log_type_enabled(v8, v9))
      {
        v21 = *(v0 + 160);
        v10 = *(v0 + 144);
        v11 = *(v0 + 128);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v22 = v13;
        *v12 = 136315138;
        swift_getErrorValue();
        v14 = MEMORY[0x20F2FF3F0](*(v0 + 24), *(v0 + 32));
        v16 = sub_20C479640(v14, v15, &v22);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_20C472000, v8, v9, "Unexpected error occurred fetching subscription state: %s.", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x20F2FFF90](v13, -1, -1);
        MEMORY[0x20F2FFF90](v12, -1, -1);

        v21(v10, v11);
      }

      else
      {
        v17 = *(v0 + 160);
        v18 = *(v0 + 144);
        v19 = *(v0 + 128);

        v17(v18, v19);
      }

      swift_willThrow();

      v6 = *(v0 + 8);
      goto LABEL_11;
    }

    v3 = *(v0 + 184);
  }

  v6 = *(v0 + 8);
LABEL_11:

  return v6(0);
}

unint64_t sub_20C4EDEC8()
{
  result = qword_2810F59F0;
  if (!qword_2810F59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810F59F0);
  }

  return result;
}

uint64_t static PictureInPictureStopped.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_20C4EDFA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6)
{
  v60 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5200);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = &v58 - v12;
  v13 = sub_20C59FEBC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  v18 = sub_20C59EC3C();
  (*(v14 + 104))(v16, *MEMORY[0x277D4F910], v13);
  LOBYTE(a5) = sub_20C510018(v16, v18);

  (*(v14 + 8))(v16, v13);
  if ((a5 & 1) == 0)
  {
    return sub_20C5896D0(MEMORY[0x277D84F90]);
  }

  if (a4)
  {
    v19 = a4;
  }

  else
  {
    a3 = 0x6E776F6E6B6E75;
    v19 = 0xE700000000000000;
  }

  v63 = 0;
  v64 = 0xE000000000000000;

  MEMORY[0x20F2FE9A0](15713, 0xE200000000000000);
  MEMORY[0x20F2FE9A0](a1, a2);
  v20 = 0xE300000000000000;
  MEMORY[0x20F2FE9A0](4026426, 0xE300000000000000);
  MEMORY[0x20F2FE9A0](a3, v19);

  MEMORY[0x20F2FE9A0](4023610, 0xE300000000000000);
  v62 = v17;
  sub_20C5A0D0C();
  v21 = v64;
  v59 = v63;
  sub_20C59EC4C();
  v22 = sub_20C59EC2C();
  if (v22)
  {
    v23 = 7759204;
  }

  else
  {
    v23 = 1685025392;
  }

  if ((v22 & 1) == 0)
  {
    v20 = 0xE400000000000000;
  }

  v24 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v25 = sub_20C5A036C();
  v26 = [v24 initWithSuiteName_];

  if (v26)
  {
    v27 = sub_20C5A036C();
    v28 = [v26 stringForKey_];

    v29 = v61;
    if (v28)
    {
      v23 = sub_20C5A039C();
      v31 = v30;

      v20 = v31;
    }
  }

  else
  {
    v29 = v61;
  }

  v63 = 0xD000000000000012;
  v64 = 0x800000020C5AC7A0;
  MEMORY[0x20F2FE9A0](v23, v20);

  v34 = v63;
  v33 = v64;
  sub_20C4EE594(v60, v29);
  v35 = sub_20C59F43C();
  if ((*(*(v35 - 8) + 48))(v29, 1, v35) == 1)
  {
    sub_20C4EE604(v29);
LABEL_20:
    v38 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_21;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C4EE66C(v29);
    goto LABEL_20;
  }

  v36 = sub_20C59EBBC();
  (*(*(v36 - 8) + 8))(v29, v36);
  v37 = 0xE800000000000000;
  v38 = 0x676E69747361632ELL;
LABEL_21:
  v63 = v34;
  v64 = v33;

  MEMORY[0x20F2FE9A0](v38, v37);

  v39 = v63;
  v40 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C6180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C5A68E0;
  v42 = objc_opt_self();
  v43 = [v42 smm_alternativeConfigurationMediaIdentifierKey];
  v44 = sub_20C5A039C();
  v46 = v45;

  *(inited + 32) = v44;
  v47 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  v48 = v59;
  *(inited + 40) = v46;
  *(inited + 48) = v48;
  *(inited + 56) = v21;
  v49 = [v42 smm_alternativeConfigurationServiceIdentifierKey];
  v50 = sub_20C5A039C();
  v52 = v51;

  *(inited + 80) = v50;
  *(inited + 88) = v52;
  *(inited + 120) = v47;
  *(inited + 96) = v39;
  *(inited + 104) = v40;
  v53 = [v42 smm_alternativeConfigurationiTunesServiceMonitoringKey];
  v54 = sub_20C5A039C();
  v56 = v55;

  *(inited + 128) = v54;
  *(inited + 136) = v56;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v57 = sub_20C5896D0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C50A0);
  swift_arrayDestroy();
  return v57;
}

uint64_t sub_20C4EE594(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4EE604(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4EE66C(uint64_t a1)
{
  v2 = sub_20C59F43C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricImpressionConsuming.consumeImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D22000];

  return sub_20C4EE7B8(a1, a2, a3, v3, "Error serializing impressions: %{public}s");
}

uint64_t MetricImpressionConsuming.snapshotOnScreenImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x277D21FF8];

  return sub_20C4EE7B8(a1, a2, a3, v3, "Error serializing impression snapshot: %{public}s");
}

uint64_t sub_20C4EE7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t), const char *a5)
{
  v45 = a5;
  v53[4] = *MEMORY[0x277D85DE8];
  v9 = sub_20C5A01CC();
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A029C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(a2, a3);
  v16 = v15;
  ObjectType = swift_getObjectType();
  (*(v12 + 104))(v14, *MEMORY[0x277D22230], v11);
  v18 = a4(v14, a1, ObjectType, v16);
  swift_unknownObjectRelease();
  (*(v12 + 8))(v14, v11);
  v19 = *(v18 + 16);
  if (v19)
  {
    v52 = MEMORY[0x277D84F90];
    sub_20C4C482C(0, v19, 0);
    v20 = v52;
    v21 = objc_opt_self();
    v22 = 0;
    for (i = v18 + 32; ; i += 32)
    {
      if (v22 >= *(v18 + 16))
      {
        __break(1u);
      }

      sub_20C479AA8(i, v53);
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      v24 = sub_20C5A0E8C();
      v51 = 0;
      v25 = [v21 dataWithJSONObject:v24 options:0 error:&v51];
      swift_unknownObjectRelease();
      v26 = v51;
      if (!v25)
      {
        break;
      }

      v27 = sub_20C59D3CC();
      v29 = v28;

      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      v52 = v20;
      v31 = *(v20 + 16);
      v30 = *(v20 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_20C4C482C((v30 > 1), v31 + 1, 1);
        v20 = v52;
      }

      ++v22;
      *(v20 + 16) = v31 + 1;
      v32 = v20 + 16 * v31;
      *(v32 + 32) = v27;
      *(v32 + 40) = v29;
      if (v19 == v22)
      {

        return v20;
      }
    }

    v33 = v26;

    v34 = sub_20C59D29C();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v53);

    v35 = v46;
    sub_20C59FE3C();
    v36 = v34;
    v37 = sub_20C5A01BC();
    v38 = sub_20C5A089C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53[0] = v40;
      *v39 = 136446210;
      swift_getErrorValue();
      v41 = MEMORY[0x20F2FF3F0](v49, v50);
      v43 = sub_20C479640(v41, v42, v53);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_20C472000, v37, v38, v45, v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x20F2FFF90](v40, -1, -1);
      MEMORY[0x20F2FFF90](v39, -1, -1);
    }

    (*(v47 + 8))(v35, v48);
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

void *SessionEventPublisher.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_20C4EFC80(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

void *SessionEventPublisher.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C4EFC80(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_20C4EED20()
{
  v0 = sub_20C59DD2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59F50C();
    sub_20C4EEE2C(v3);

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_20C4EEE2C(uint64_t a1)
{
  v2 = sub_20C59DD2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v69 - v7;
  v9 = sub_20C5A01CC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v77 = &v69 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v69 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  sub_20C59FE4C();
  v19 = *(v3 + 16);
  v78 = a1;
  v70 = v19;
  v71 = v3 + 16;
  v19(v8, a1, v2);
  v20 = sub_20C5A01BC();
  v21 = sub_20C5A08AC();
  v22 = os_log_type_enabled(v20, v21);
  v73 = v3;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v69 = v6;
    v24 = v23;
    v25 = swift_slowAlloc();
    v74 = v10;
    v26 = v25;
    v80 = v25;
    *v24 = 136446210;
    sub_20C4EFF50();
    v27 = sub_20C5A0E6C();
    v28 = v2;
    v29 = v9;
    v31 = v30;
    v32 = v8;
    v33 = v28;
    v72 = *(v3 + 8);
    v72(v32, v28);
    v34 = sub_20C479640(v27, v31, &v80);
    v9 = v29;

    *(v24 + 4) = v34;
    _os_log_impl(&dword_20C472000, v20, v21, "Received session update: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v35 = v26;
    v10 = v74;
    MEMORY[0x20F2FFF90](v35, -1, -1);
    v36 = v24;
    v6 = v69;
    MEMORY[0x20F2FFF90](v36, -1, -1);

    v37 = *(v10 + 8);
    v37(v18, v29);
  }

  else
  {

    v38 = v8;
    v33 = v2;
    v72 = *(v3 + 8);
    v72(v38, v2);
    v37 = *(v10 + 8);
    v37(v18, v9);
  }

  v39 = v78;
  if (!v79[5])
  {
    v44 = v76;
    sub_20C59FE4C();
    v45 = sub_20C5A01BC();
    v46 = sub_20C5A08AC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20C472000, v45, v46, "SessionEventPublisher inactive, not handling session updates", v47, 2u);
      MEMORY[0x20F2FFF90](v47, -1, -1);
    }

    v48 = v44;
    goto LABEL_11;
  }

  v40 = sub_20C59F38C();
  v42 = v41;
  if (v40 != sub_20C59DC6C() || v42 != v43)
  {
    v51 = sub_20C5A0E9C();

    if (v51)
    {
      goto LABEL_14;
    }

    v53 = v75;
    sub_20C59FE4C();
    v54 = v39;
    v55 = v33;
    v70(v6, v54, v33);

    v56 = sub_20C5A01BC();
    v57 = sub_20C5A08AC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v10;
      v60 = v59;
      v80 = v59;
      *v58 = 136446466;
      v61 = sub_20C59F38C();
      v63 = sub_20C479640(v61, v62, &v80);
      v79 = v9;
      v64 = v63;

      *(v58 + 4) = v64;
      *(v58 + 12) = 2082;
      v65 = sub_20C59DC6C();
      v67 = v66;
      v72(v6, v55);
      v68 = sub_20C479640(v65, v67, &v80);

      *(v58 + 14) = v68;
      _os_log_impl(&dword_20C472000, v56, v57, "Mismatched session identifier for update: %{public}s != %{public}s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v60, -1, -1);
      MEMORY[0x20F2FFF90](v58, -1, -1);

      v48 = v75;
      v49 = v79;
      return (v37)(v48, v49);
    }

    v72(v6, v55);
    v48 = v53;
LABEL_11:
    v49 = v9;
    return (v37)(v48, v49);
  }

LABEL_14:
  v52 = v77;
  sub_20C59FE4C();
  sub_20C5A01AC();
  v37(v52, v9);
  SessionUpdate.dispatch(using:)(v79[2], v79[3]);
}

uint64_t sub_20C4EF4E0()
{
  v0 = sub_20C59EBBC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20C59F7DC();
    sub_20C59EAEC();
    (*(v1 + 8))(v3, v0);
    sub_20C4EF600();
  }

  return result;
}

uint64_t sub_20C4EF600()
{
  v1 = v0;
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (*(v1 + 40))
  {

    v12 = sub_20C59F38C();
    v14 = v13;
    if (v12 == sub_20C59F38C() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_20C5A0E9C();

      if ((v17 & 1) == 0)
      {
        sub_20C59FE4C();

        v18 = sub_20C5A01BC();
        v19 = sub_20C5A08AC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v33 = v32;
          *v20 = 136446466;
          v21 = sub_20C59F38C();
          v23 = sub_20C479640(v21, v22, &v33);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2082;
          v24 = sub_20C59F38C();
          v26 = sub_20C479640(v24, v25, &v33);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_20C472000, v18, v19, "Mismatched session identifier for deactivation: %{public}s != %{public}s", v20, 0x16u);
          v27 = v32;
          swift_arrayDestroy();
          MEMORY[0x20F2FFF90](v27, -1, -1);
          MEMORY[0x20F2FFF90](v20, -1, -1);
        }

        else
        {
        }

        return (*(v3 + 8))(v6, v2);
      }
    }

    sub_20C59FE4C();
    sub_20C5A01AC();

    (*(v3 + 8))(v9, v2);
    *(v1 + 40) = 0;
  }

  sub_20C59FE4C();
  v28 = sub_20C5A01BC();
  v29 = sub_20C5A08AC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_20C472000, v28, v29, "SessionEventPublisher is already inactive", v30, 2u);
    MEMORY[0x20F2FFF90](v30, -1, -1);
  }

  return (*(v3 + 8))(v11, v2);
}

uint64_t SessionEventPublisher.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SessionEventPublisher.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t SessionEventPublisher.activate(sessionToken:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE4C();
  sub_20C5A01AC();
  (*(v5 + 8))(v7, v4);
  *(v2 + 40) = a1;
}

uint64_t sub_20C4EFB60(uint64_t a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_20C59FE4C();
  sub_20C5A01AC();
  (*(v4 + 8))(v6, v3);
  *(v7 + 40) = a1;
}

void *sub_20C4EFC80(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_20C59F76C();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  v2[4] = sub_20C59F75C();
  v2[5] = 0;
  swift_getObjectType();
  sub_20C59F51C();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  sub_20C59F7EC();
  swift_allocObject();
  swift_weakInit();

  sub_20C59F61C();

  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t sub_20C4EFE74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_20C4EFEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_20C4EFF18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_20C4EFF50()
{
  result = qword_27C7C5208;
  if (!qword_27C7C5208)
  {
    sub_20C59DD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5208);
  }

  return result;
}

uint64_t sub_20C4EFFA8(uint64_t a1)
{
  result = sub_20C4F0708(&qword_27C7C5210, MEMORY[0x277D50520]);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_20C4F0048()
{
  sub_20C59DB2C();
  v1 = v0;
  sub_20C59DB2C();
  return v1 < v2;
}

BOOL sub_20C4F008C()
{
  sub_20C59DB2C();
  v1 = v0;
  sub_20C59DB2C();
  return v1 >= v2;
}

BOOL sub_20C4F00D0()
{
  sub_20C59DB2C();
  v1 = v0;
  sub_20C59DB2C();
  return v1 >= v2;
}

BOOL sub_20C4F0114()
{
  sub_20C59DB2C();
  v1 = v0;
  sub_20C59DB2C();
  return v1 < v2;
}

uint64_t sub_20C4F0158(uint64_t a1)
{
  result = sub_20C4F0708(&qword_27C7C5220, MEMORY[0x277D50A68]);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_20C4F01F8()
{
  sub_20C59DF1C();
  v1 = v0;
  sub_20C59DF1C();
  return v1 < v2;
}

BOOL sub_20C4F023C()
{
  sub_20C59DF1C();
  v1 = v0;
  sub_20C59DF1C();
  return v1 >= v2;
}

BOOL sub_20C4F0280()
{
  sub_20C59DF1C();
  v1 = v0;
  sub_20C59DF1C();
  return v1 >= v2;
}

BOOL sub_20C4F02C4()
{
  sub_20C59DF1C();
  v1 = v0;
  sub_20C59DF1C();
  return v1 < v2;
}

uint64_t sub_20C4F0308(uint64_t a1)
{
  result = sub_20C4F0708(&qword_27C7C5230, MEMORY[0x277D50018]);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_20C4F03A8()
{
  sub_20C59D85C();
  v1 = v0;
  sub_20C59D85C();
  return v1 < v2;
}

BOOL sub_20C4F03EC()
{
  sub_20C59D85C();
  v1 = v0;
  sub_20C59D85C();
  return v1 >= v2;
}

BOOL sub_20C4F0430()
{
  sub_20C59D85C();
  v1 = v0;
  sub_20C59D85C();
  return v1 >= v2;
}

BOOL sub_20C4F0474()
{
  sub_20C59D85C();
  v1 = v0;
  sub_20C59D85C();
  return v1 < v2;
}

uint64_t sub_20C4F04B8(uint64_t a1)
{
  result = sub_20C4F0708(&qword_27C7C5240, MEMORY[0x277D4FEC8]);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_20C4F0558()
{
  sub_20C59D7CC();
  v1 = v0;
  sub_20C59D7CC();
  return v1 < v2;
}

BOOL sub_20C4F059C()
{
  sub_20C59D7CC();
  v1 = v0;
  sub_20C59D7CC();
  return v1 >= v2;
}

BOOL sub_20C4F05E0()
{
  sub_20C59D7CC();
  v1 = v0;
  sub_20C59D7CC();
  return v1 >= v2;
}

BOOL sub_20C4F0624()
{
  sub_20C59D7CC();
  v1 = v0;
  sub_20C59D7CC();
  return v1 < v2;
}

uint64_t sub_20C4F0668(uint64_t a1)
{
  result = sub_20C4F0708(&qword_27C7C5250, MEMORY[0x277D503E8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20C4F0708(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_20C4F0750()
{
  sub_20C59DADC();
  v1 = v0;
  sub_20C59DADC();
  return v1 < v2;
}

BOOL sub_20C4F0794()
{
  sub_20C59DADC();
  v1 = v0;
  sub_20C59DADC();
  return v1 >= v2;
}

BOOL sub_20C4F07D8()
{
  sub_20C59DADC();
  v1 = v0;
  sub_20C59DADC();
  return v1 >= v2;
}

BOOL sub_20C4F081C()
{
  sub_20C59DADC();
  v1 = v0;
  sub_20C59DADC();
  return v1 < v2;
}

void sub_20C4F093C(uint64_t a1, uint64_t a2, double (*a3)(void), double (*a4)(void))
{
  v6 = a3();
  v7 = a3();
  if (v6 > v7 + a4())
  {
    __break(1u);
  }
}

void *StandaloneWorkoutTimeProvider.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_20C476EF8(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_20C4F0A00()
{
  v0 = sub_20C59FF4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    (*(v1 + 104))(v3, *MEMORY[0x277D4F9B8], v0);
    sub_20C59FF7C();
    swift_allocObject();
    *(v5 + 40) = sub_20C59FF6C();
  }

  return result;
}

uint64_t sub_20C4F0B28()
{
  v0 = sub_20C59ECFC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59F58C();
  v4 = sub_20C59ECDC();
  (*(v1 + 8))(v3, v0);
  v6 = v4;
  v7 = BYTE4(v4) & 1;
  v8 = 0;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA7C())
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C59FF5C();
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    sub_20C59FF2C();
  }
}

uint64_t StandaloneWorkoutTimeProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

double StandaloneWorkoutTimeProvider.currentTime.getter()
{

  sub_20C59FF3C();
  v1 = v0;

  return v1;
}

double sub_20C4F0D3C()
{

  sub_20C59FF3C();
  v1 = v0;

  return v1;
}

uint64_t sub_20C4F0E0C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44E0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4F0EA8, 0, 0);
}

uint64_t sub_20C4F0EA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v0[12] = sub_20C59F88C();
    v0[13] = sub_20C59F89C();

    return MEMORY[0x2822009F8](sub_20C4F0F84, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_20C4F0F84()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_20C59E3CC();
  v3 = sub_20C59E3EC();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_badgingCounts;
  swift_beginAccess();
  sub_20C481748(v1, v2 + v4);
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20C4F1078(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C59E8FC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4F1138, 0, 0);
}

uint64_t sub_20C4F1138()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_20C59FD5C();

    return MEMORY[0x2822009F8](sub_20C4F120C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_20C4F120C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = sub_20C59E8DC();
  (*(v4 + 8))(v1, v3);
  v6 = *(v5 + 16);

  *(v2 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_deviceCount) = v6;
  if (*(v2 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_maxDeviceCount) < v6)
  {
    *(v2 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_maxDeviceCount) = v6;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_20C4F12E0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C59E1EC();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4F13A0, 0, 0);
}

uint64_t sub_20C4F13A0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_20C59FA9C();

    return MEMORY[0x2822009F8](sub_20C4F1474, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_20C4F1474()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_20C4F1980();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20C4F1510(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20C59DD2C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4F15D0, 0, 0);
}

uint64_t sub_20C4F15D0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = Strong;
    sub_20C59F50C();

    return MEMORY[0x2822009F8](sub_20C4F16A4, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_20C4F16A4()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_20C4F1740();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20C4F1740()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5E20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_20C59ECFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59DD0C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20C477B50(v4, &qword_27C7C5E20);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = sub_20C59ECDC();
  v18 = v10;
  v19 = BYTE4(v10) & 1;
  v16 = 3;
  v17 = 1;
  sub_20C4A24A0();
  sub_20C4A24F4();
  if (sub_20C59DA6C())
  {
    (*(v6 + 8))(v8, v5);
    v11 = (v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_sessionIdentifier);
    *v11 = 0;
    v11[1] = 0;
  }

  else
  {
    v12 = sub_20C59DC6C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v15 = (v1 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_sessionIdentifier);
    *v15 = v12;
    v15[1] = v14;
  }
}

uint64_t sub_20C4F1980()
{
  v1 = sub_20C59E1CC();
  if ((v3 & 1) == 0)
  {
    sub_20C481884(v1, v2, 0);
    goto LABEL_11;
  }

  if (v1 != 1)
  {
LABEL_11:
    v11 = (v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_groupSessionIdentifier);
    *v11 = 0;
    v11[1] = 0;
LABEL_12:

    *(v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_deviceCount) = 0;
    *(v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_maxDeviceCount) = 0;
    return result;
  }

  v4 = sub_20C59E19C();
  v6 = (v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_groupSessionIdentifier);
  v7 = *(v0 + OBJC_IVAR____TtC12SeymourMedia27MarketingMetricsAccumulator_groupSessionIdentifier + 8);
  if (!v7)
  {

LABEL_15:
    *v6 = sub_20C59E19C();
    v6[1] = v12;
    goto LABEL_12;
  }

  if (v4 != *v6 || v7 != v5)
  {
    v9 = sub_20C5A0E9C();

    if (v9)
    {
      return result;
    }

    goto LABEL_15;
  }
}

uint64_t sub_20C4F1A94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C4F0E0C(a1, v1);
}

uint64_t sub_20C4F1B2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C4F1078(a1, v1);
}

uint64_t sub_20C4F1BC4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCEC;

  return sub_20C4F12E0(a1, v1);
}

uint64_t sub_20C4F1C5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C47FCF0;

  return sub_20C4F1510(a1, v1);
}

unint64_t sub_20C4F1CF4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (v5)
  {
    return v5;
  }

  v7 = MEMORY[0x277D84F90];

  return sub_20C5896D0(v7);
}

Swift::Void __swiftcall NowPlayingUpdating.updateNowPlaying(info:)(Swift::OpaquePointer info)
{
  v2 = v1;
  v47 = sub_20C5A01CC();
  v4 = *(v47 - 8);
  v5 = MEMORY[0x28223BE20](v47);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  sub_20C59FE5C();

  v10 = sub_20C5A01BC();
  v11 = sub_20C5A08AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v52[0] = v46;
    *v12 = 141558274;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
    v13 = sub_20C5A02CC();
    v15 = sub_20C479640(v13, v14, v52);

    *(v12 + 14) = v15;
    v16 = v47;
    _os_log_impl(&dword_20C472000, v10, v11, "[NowPlayingUpdating] Updating now playing info: %{mask.hash}s", v12, 0x16u);
    v17 = v46;
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x20F2FFF90](v17, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);

    v18 = *(v4 + 8);
    v18(v9, v16);
  }

  else
  {

    v18 = *(v4 + 8);
    v18(v9, v47);
  }

  v19 = sub_20C5A039C();
  v21 = v19;
  v22 = v20;
  if (*(info._rawValue + 2) && (sub_20C4820C8(v19, v20), (v23 & 1) != 0) || !(*(v2 + 8))(v48, v2))
  {

    v32 = sub_20C4F1CF4(v48, v2);
    v31 = sub_20C4F2338(v32);
  }

  else
  {
    v25 = v24;
    v26 = sub_20C4F1CF4(v48, v2);
    v46 = v18;
    v27 = v26;
    ObjectType = swift_getObjectType();
    v29 = (*(v25 + 32))(ObjectType, v25);
    v52[3] = MEMORY[0x277D839F8];
    *v52 = v29;
    v51 = v27;
    sub_20C479AA8(v52, v49);

    sub_20C4F2B24(v49, v21, v22, v50);
    v18 = v46;

    sub_20C477B50(v50, &qword_27C7C44D0);
    v30 = v51;
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v31 = sub_20C4F2338(v30);
    swift_unknownObjectRelease();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = v31;
  sub_20C4F2C70(info._rawValue, sub_20C4F2AD8, 0, isUniquelyReferenced_nonNull_native, v52);

  v34 = sub_20C4F280C(v52[0]);

  sub_20C59FE5C();

  v35 = sub_20C5A01BC();
  v36 = sub_20C5A08AC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v52[0] = v38;
    *v37 = 141558274;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2080;
    v39 = sub_20C5A02CC();
    v46 = v7;
    v41 = v18;
    v42 = sub_20C479640(v39, v40, v52);

    *(v37 + 14) = v42;
    _os_log_impl(&dword_20C472000, v35, v36, "[NowPlayingUpdating] Updated now playing info %{mask.hash}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x20F2FFF90](v38, -1, -1);
    MEMORY[0x20F2FFF90](v37, -1, -1);

    v41(v46, v47);
  }

  else
  {

    v18(v7, v47);
  }

  (*(v2 + 16))(v48, v2);
  v44 = v43;
  v45 = swift_getObjectType();
  (*(v44 + 16))(v34, v45, v44);
  swift_unknownObjectRelease();
}

unint64_t sub_20C4F2338(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A98);
    v2 = sub_20C5A0D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_20C479AA8(*(a1 + 56) + 32 * v12, v32);
        *&v31 = v14;
        *(&v31 + 1) = v15;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v16 = v31;
        sub_20C4947E4(v30, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C44D0);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        result = sub_20C4820C8(v16, *(&v16 + 1));
        if (v17)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          result = sub_20C494918(&v24, v2[7] + 32 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          v18 = (v2[7] + 32 * result);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_20C4F25AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A58);
    v2 = sub_20C5A0D6C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4538);
        swift_dynamicCast();
        sub_20C4947E4(&v22, v24);
        sub_20C4947E4(v24, v25);
        sub_20C4947E4(v25, &v23);
        result = sub_20C4820C8(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_20C4947E4(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_20C4947E4(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_20C4F280C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_12:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20C4B1430(*(a1 + 56) + 32 * v13, v38);
    *&v37 = v16;
    *(&v37 + 1) = v15;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_20C4B1430(&v35, &v28);
    if (v29)
    {
      sub_20C4947E4(&v28, v33);
      v31 = v34;
      v32[0] = v35;
      v32[1] = v36;
      sub_20C4947E4(v33, v30);
      v17 = *(v2 + 16);
      if (*(v2 + 24) <= v17)
      {

        sub_20C4B8990(v17 + 1, 1);
        v2 = v39;
      }

      else
      {
      }

      v18 = v31;
      sub_20C5A0FBC();
      sub_20C5A049C();
      result = sub_20C5A0FFC();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
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
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_29;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v18;
      sub_20C4947E4(v30, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
      v10 = v32;
    }

    else
    {

      sub_20C477B50(&v34, &qword_27C7C5B90);
      v10 = &v28;
    }

    result = sub_20C477B50(v10, &qword_27C7C44D0);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_20C4F2AD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_20C4B1430((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_20C4F2B24@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = sub_20C4820C8(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_20C4B8990(v18, isUniquelyReferenced_nonNull_native);
    v13 = sub_20C4820C8(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = sub_20C5A0EDC();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v22 = v13;
    sub_20C4BB0B4();
    v13 = v22;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_20C4BA710(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  sub_20C4947E4((v12[7] + 32 * v13), a4);
  result = sub_20C4947E4(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
  return result;
}

unint64_t sub_20C4F2C70(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v49 = a1;
  v50 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v51 = v8;
  v52 = 0;
  v53 = v11 & v9;
  v54 = a2;
  v55 = a3;

  sub_20C5578E8(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  v44 = v47;
  v45 = v48;
  v14 = *a5;
  result = sub_20C4820C8(v46, *(&v46 + 1));
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20C4B8C48(v20, a4 & 1);
    result = sub_20C4820C8(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20C5A0EDC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_20C4BAF00();
    result = v25;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    sub_20C494918(&v44, v23[7] + 32 * v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v26 = (v23[6] + 16 * result);
  *v26 = v13;
  v26[1] = v12;
  v27 = (v23[7] + 32 * result);
  v28 = v45;
  *v27 = v44;
  v27[1] = v28;
  v29 = v23[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v23[2] = v30;
LABEL_15:
    sub_20C5578E8(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        v44 = v47;
        v45 = v48;
        v32 = *a5;
        result = sub_20C4820C8(v46, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_20C4B8C48(v36, 1);
          result = sub_20C4820C8(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v31 = result;

          sub_20C494918(&v44, v38[7] + 32 * v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          v40 = (v38[7] + 32 * result);
          v41 = v45;
          *v40 = v44;
          v40[1] = v41;
          v42 = v38[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        sub_20C5578E8(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_20C483B94();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t RemoteBrowsingWheelchairStatus.__allocating_init(source:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_20C4780E8(a1, v2 + 16);
  return v2;
}

uint64_t RemoteBrowsingWheelchairStatus.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

Swift::Bool __swiftcall RemoteBrowsingWheelchairStatus.isWheelchairUser()()
{
  v1 = sub_20C5A01CC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5260);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_20C59E82C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_20C59FC2C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20C4F3350(v7);
    sub_20C59FE2C();
    v12 = sub_20C5A01BC();
    v13 = sub_20C5A089C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20C472000, v12, v13, "[RemoteBrowsingWheelchairStatus] requesting isWheelchairUser with no active environment", v14, 2u);
      MEMORY[0x20F2FFF90](v14, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v15 = 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v15 = sub_20C59E81C();
    (*(v9 + 8))(v11, v8);
  }

  return v15 & 1;
}

uint64_t sub_20C4F3350(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AVPlayerItemStatus.description.getter(uint64_t a1)
{
  v1 = 0x64656C696166;
  v2 = 0x206E776F6E6B6E75;
  if (a1 == 1)
  {
    v2 = 0x506F547964616572;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_20C4F34BC()
{
  v1 = *v0;
  v2 = 0x64656C696166;
  v3 = 0x206E776F6E6B6E75;
  if (*v0 == 1)
  {
    v3 = 0x506F547964616572;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t ArtworkLoadRequest.template.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArtworkLoadRequest.cropCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ArtworkLoadRequest.fileType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ArtworkLoadRequest.init(artwork:size:cropCode:fileType:decorators:cacheBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v19 = *a7;
  v20 = sub_20C59EA5C();
  v22 = v21;
  v23 = sub_20C59EA6C();
  result = (*(*(v23 - 8) + 8))(a1, v23);
  *a8 = v20;
  *(a8 + 8) = v22;
  *(a8 + 16) = a9;
  *(a8 + 24) = a10;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3;
  *(a8 + 48) = a4;
  *(a8 + 56) = a5;
  *(a8 + 64) = a6;
  *(a8 + 72) = v19;
  return result;
}

uint64_t ArtworkLoadRequest.init(template:size:cropCode:fileType:decorators:cacheBehavior:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v11 = *a8;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = v11;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20C4F3700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C4F3748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4F37AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_20C4F37F0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_20C4F3830@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a2;
  v77 = a1;
  v92 = a3;
  v99 = sub_20C59D46C();
  v91 = *(v99 - 8);
  v90 = *(v91 + 64);
  MEMORY[0x28223BE20](v99);
  v89 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v100 = &v71 - v5;
  v93 = sub_20C5A019C();
  v81 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C5A017C();
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v97 = *(v82 - 8);
  v10 = v97[8];
  MEMORY[0x28223BE20](v82);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v96 = &v71 - v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v94 = &v71 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  v20 = sub_20C59D72C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  v27 = sub_20C59F48C();
  v87 = *(v27 - 8);
  v88 = v27;
  MEMORY[0x28223BE20](v27);
  v95 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FEAC();
  v29 = *(v21 + 16);
  v86 = v26;
  v29(v26, v77, v20);
  v84 = v20;
  v29(v23, v26, v20);
  v85 = v21;
  v30 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v31 = (v22 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v78;
  *(v32 + 16) = v78;
  (*(v21 + 32))(v32 + v30, v23, v20);
  v34 = v80;
  *(v32 + v31) = v80;
  v35 = v33;
  v36 = v34;
  v37 = v19;
  v76 = v19;
  sub_20C59EA9C();
  sub_20C59F41C();
  swift_allocObject();
  v38 = sub_20C59F3EC();
  sub_20C59F47C();

  sub_20C5A018C();
  sub_20C5A016C();
  (*(v81 + 8))(v7, v93);
  sub_20C59F47C();
  sub_20C59FF1C();
  swift_allocObject();
  v39 = sub_20C59FEEC();
  v81 = v39;
  v101 = v38;
  v40 = sub_20C5A041C();
  v79 = v40;
  v42 = v41;
  sub_20C59D44C();
  v43 = swift_allocObject();
  v80 = v38;
  *(v43 + 16) = v38;
  *(v43 + 24) = v39;
  *(v43 + 32) = v40;
  *(v43 + 40) = v42;
  v78 = v42;
  *(v43 + 48) = "AVContentKeyRequest.processKeyContext";
  *(v43 + 56) = 37;
  *(v43 + 64) = 2;

  v44 = v94;
  sub_20C59EA9C();
  v46 = v96;
  v45 = v97;
  v47 = v97[2];
  v93 = (v97 + 2);
  v48 = v82;
  v47(v96, v37, v82);
  v77 = v47;
  v49 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v74 = *(v45 + 80);
  v72 = swift_allocObject();
  v50 = v45[4];
  v75 = v49;
  v51 = v48;
  v50(v72 + v49, v46, v48);
  v52 = v50;
  v73 = v50;
  v53 = v83;
  v47(v83, v44, v51);
  v54 = (v49 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v52(v55 + v49, v53, v51);
  v56 = (v55 + v54);
  v57 = v72;
  *v56 = sub_20C4F86C4;
  v56[1] = v57;
  sub_20C59EA9C();
  v58 = v91;
  v59 = v89;
  v60 = v99;
  (*(v91 + 16))(v89, v100, v99);
  v61 = (*(v58 + 80) + 49) & ~*(v58 + 80);
  v62 = (v90 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v78;
  *(v63 + 16) = v79;
  *(v63 + 24) = v64;
  *(v63 + 32) = "AVContentKeyRequest.processKeyContext";
  *(v63 + 40) = 37;
  *(v63 + 48) = 2;
  (*(v58 + 32))(v63 + v61, v59, v60);
  *(v63 + v62) = v81;
  *(v63 + ((v62 + 15) & 0xFFFFFFFFFFFFFFF8)) = v80;
  v65 = v96;
  v66 = v98;
  v77(v96, v98, v51);
  v67 = swift_allocObject();
  v73(v67 + v75, v65, v51);
  v68 = (v67 + v54);
  *v68 = sub_20C4F875C;
  v68[1] = v63;

  sub_20C59EA9C();
  v69 = v97[1];
  v69(v66, v51);
  v69(v94, v51);
  (*(v58 + 8))(v100, v99);
  v69(v76, v51);
  (*(v85 + 8))(v86, v84);
  (*(v87 + 8))(v95, v88);
}

uint64_t sub_20C4F41FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v75 = a5;
  v67 = a3;
  v66 = sub_20C5A020C();
  v80 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v79 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A023C();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v76 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_20C5A021C();
  v11 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C59D72C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v74 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = sub_20C5A01CC();
  v68 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v71 = v22;

  sub_20C59FE5C();
  v23 = *(v14 + 16);
  v65 = a4;
  v69 = v23;
  v70 = v14 + 16;
  v23(v18, a4, v13);
  v24 = v67;
  v67 = v21;
  v25 = v24;
  v26 = sub_20C5A01BC();
  v27 = sub_20C5A08AC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v60 = v27;
    v29 = v28;
    v30 = swift_slowAlloc();
    v59 = v30;
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v29 = 138543875;
    *(v29 + 4) = v25;
    *v30 = v25;
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    v31 = v25;
    v61 = v25;
    v32 = sub_20C59D71C();
    v63 = v19;
    v34 = v33;
    v58 = sub_20C59D39C();
    v64 = v15;
    v36 = v35;
    sub_20C4A7C7C(v32, v34);
    (*(v14 + 8))(v18, v13);
    v37 = sub_20C479640(v58, v36, aBlock);
    v15 = v64;

    *(v29 + 24) = v37;
    _os_log_impl(&dword_20C472000, v26, v60, "%{public}@ Queueing KeyContext %{private,mask.hash}s for processing...", v29, 0x20u);
    v38 = v59;
    sub_20C477B50(v59, &qword_27C7C60F0);
    MEMORY[0x20F2FFF90](v38, -1, -1);
    v39 = v62;
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    MEMORY[0x20F2FFF90](v39, -1, -1);
    MEMORY[0x20F2FFF90](v29, -1, -1);

    (*(v68 + 8))(v67, v63);
  }

  else
  {

    (*(v14 + 8))(v18, v13);
    (*(v68 + 8))(v67, v19);
  }

  sub_20C479154(0, &qword_2810F3D90);
  v41 = v72;
  v40 = v73;
  (*(v11 + 104))(v72, *MEMORY[0x277D851C0], v73);
  v42 = sub_20C5A090C();
  (*(v11 + 8))(v41, v40);
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v74;
  v69(v74, v65, v13);
  v45 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v46 = (v15 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v43;
  (*(v14 + 32))(v47 + v45, v44, v13);
  v48 = (v47 + v46);
  v49 = v71;
  *v48 = sub_20C49B6E4;
  v48[1] = v49;
  v50 = v75;
  *(v47 + ((v46 + 23) & 0xFFFFFFFFFFFFFFF8)) = v75;
  aBlock[4] = sub_20C4F8908;
  aBlock[5] = v47;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_9;
  v51 = _Block_copy(aBlock);

  v52 = v50;
  v53 = v76;
  sub_20C5A022C();
  v81 = MEMORY[0x277D84F90];
  sub_20C4F89B8(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v54 = v79;
  v55 = v66;
  sub_20C5A0AEC();
  MEMORY[0x20F2FEDA0](0, v53, v54, v51);
  _Block_release(v51);

  (*(v80 + 8))(v54, v55);
  (*(v77 + 8))(v53, v78);
}

void sub_20C4F4A10(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v111 = a4;
  v110 = a3;
  v105 = sub_20C5A020C();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v102 = sub_20C5A023C();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v99 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_20C59D72C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v107 = &v88[-v12];
  v13 = sub_20C5A01CC();
  v98 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v88[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109 = sub_20C59D46C();
  v16 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v97 = &v88[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v88[-v19];
  MEMORY[0x28223BE20](v21);
  v112 = &v88[-v22];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (Strong, v24 = [objc_opt_self() standardUserDefaults], v25 = sub_20C5A036C(), v106 = a2, v26 = v25, objc_msgSend(v24, sel_doubleForKey_, v25), v28 = v27, v24, v26, v29 = v106, swift_beginAccess(), (v30 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v96 = v13;

    if (v28 <= 0.0)
    {
      v28 = 10.0;
    }

    sub_20C59D70C();
    v32 = v31 - v28;
    if (v32 <= 0.0)
    {
      sub_20C59D70C();
      v32 = v33;
    }

    sub_20C59D45C();
    v34 = v112;
    sub_20C59D40C();
    v35 = *(v16 + 8);
    v36 = v109;
    v95 = v16 + 8;
    v94 = v35;
    v35(v20, v109);
    sub_20C59FE5C();
    v37 = *(v9 + 16);
    v37(v107, v29, v8);
    v37(v108, v29, v8);
    v38 = v15;
    v39 = v97;
    (*(v16 + 16))(v97, v34, v36);

    v40 = sub_20C5A01BC();
    v41 = sub_20C5A08AC();

    v93 = v40;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v90 = v43;
      v92 = swift_slowAlloc();
      aBlock[0] = v92;
      *v42 = 138544643;
      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      *(v42 + 4) = v44;
      *v43 = v44;
      *(v42 + 12) = 2160;
      *(v42 + 14) = 1752392040;
      *(v42 + 22) = 2081;
      v89 = v41;
      v45 = v107;
      v46 = sub_20C59D71C();
      v48 = v47;
      v49 = sub_20C59D39C();
      v91 = v38;
      v50 = v49;
      v52 = v51;
      sub_20C4A7C7C(v46, v48);
      v53 = *(v9 + 8);
      v53(v45, v8);
      v54 = sub_20C479640(v50, v52, aBlock);

      *(v42 + 24) = v54;
      *(v42 + 32) = 2050;
      v55 = v108;
      sub_20C59D70C();
      v57 = v56;
      v53(v55, v8);
      *(v42 + 34) = v57;
      *(v42 + 42) = 2050;
      *(v42 + 44) = v32;
      *(v42 + 52) = 2082;
      sub_20C4F89B8(&qword_27C7C5268, MEMORY[0x277CC9578]);
      v58 = v109;
      v59 = sub_20C5A0E6C();
      v60 = v93;
      v61 = v59;
      v63 = v62;
      v64 = v94;
      v94(v39, v58);
      v65 = sub_20C479640(v61, v63, aBlock);

      *(v42 + 54) = v65;
      _os_log_impl(&dword_20C472000, v60, v89, "%{public}@ processing KeyContext %{private,mask.hash}s: renew-after %{public}f. Renewing in %{public}f seconds -> %{public}s", v42, 0x3Eu);
      v66 = v90;
      sub_20C477B50(v90, &qword_27C7C60F0);
      MEMORY[0x20F2FFF90](v66, -1, -1);
      v67 = v92;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v67, -1, -1);
      MEMORY[0x20F2FFF90](v42, -1, -1);

      (*(v98 + 8))(v91, v96);
      v68 = v64;
    }

    else
    {

      v72 = v109;
      v68 = v94;
      v94(v39, v109);
      v73 = *(v9 + 8);
      v73(v108, v8);
      v73(v107, v8);
      (*(v98 + 8))(v38, v96);
      v58 = v72;
    }

    v74 = sub_20C59D71C();
    v76 = v75;
    v77 = sub_20C59D3BC();
    v78 = sub_20C59D41C();
    v79 = [objc_opt_self() smu:v77 contentKeyResponseWithFairPlayStreamingKeyResponseData:v78 renewalDate:?];

    sub_20C4A7C7C(v74, v76);
    swift_beginAccess();
    v80 = swift_unknownObjectWeakLoadStrong();
    if (v80)
    {
      v81 = v80;
      [v80 processContentKeyResponse_];
    }

    v82 = swift_allocObject();
    v83 = v111;
    *(v82 + 16) = v110;
    *(v82 + 24) = v83;
    aBlock[4] = sub_20C4F89B0;
    aBlock[5] = v82;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20C4F8F74;
    aBlock[3] = &block_descriptor_30;
    v84 = _Block_copy(aBlock);

    v85 = v99;
    sub_20C5A022C();
    v113 = MEMORY[0x277D84F90];
    sub_20C4F89B8(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    v86 = v101;
    v87 = v105;
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v85, v86, v84);
    _Block_release(v84);

    (*(v103 + 8))(v86, v87);
    (*(v100 + 8))(v85, v102);
    v68(v112, v58);
  }

  else
  {
    v69 = sub_20C59E12C();
    sub_20C4F89B8(&unk_27C7C5990, MEMORY[0x277D50F38]);
    v70 = swift_allocError();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D50EE0], v69);
    v110(v70, 1);
  }
}

uint64_t sub_20C4F55D8(void (*a1)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
  sub_20C5A101C();
  a1(v3, v4);
  return sub_20C49B78C(v3);
}

uint64_t sub_20C4F5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15)
{
  v94 = a8;
  v92 = a7;
  v106 = a6;
  v79 = a4;
  v93 = a2;
  v91 = a1;
  v90 = a13;
  v82 = a12;
  v17 = a9;
  v18 = sub_20C5A020C();
  v99 = *(v18 - 8);
  v100 = v18;
  MEMORY[0x28223BE20](v18);
  v97 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_20C5A023C();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0);
  v87 = *(v21 - 8);
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v104 = &v76 - v22;
  v105 = sub_20C59D37C();
  v89 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v85 = v23;
  v103 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_20C59E52C();
  v86 = *(v102 - 8);
  v24 = *(v86 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C5A021C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C5896D0(MEMORY[0x277D84F90]);
  v30 = sub_20C59E50C();
  if (v31 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 != 2 || *(v30 + 16) == *(v30 + 24))
    {
      goto LABEL_8;
    }
  }

  else if (v32)
  {
    if (v30 == v30 >> 32)
    {
LABEL_8:
      sub_20C4BFD68(v30, v31);
      goto LABEL_11;
    }
  }

  else if ((v31 & 0xFF000000000000) == 0)
  {
    goto LABEL_8;
  }

  v110 = MEMORY[0x277CC9318];
  *&aBlock = v30;
  *(&aBlock + 1) = v31;
  v84 = a5;
  v33 = v24;
  v34 = v30;
  v35 = v31;
  sub_20C4947E4(&aBlock, &v113);
  sub_20C4BFD7C(v34, v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v29;
  sub_20C493C8C(&v113, 0xD000000000000013, 0x800000020C5AC9E0, isUniquelyReferenced_nonNull_native);
  v37 = v34;
  v24 = v33;
  a5 = v84;
  sub_20C4BFD68(v37, v35);
  v29 = v107;
LABEL_11:
  v84 = a15;
  v81 = a14;
  v83 = a11;
  v80 = a10;
  if (a5 >> 60 == 15)
  {
    v78 = v29;
  }

  else
  {
    v38 = sub_20C59D3BC();
    v77 = v24;
    v39 = v38;
    v40 = v29;
    v41 = sub_20C5A039C();
    v79 = a3;
    v43 = v42;
    v110 = MEMORY[0x277D839B0];
    LOBYTE(aBlock) = 1;
    sub_20C4947E4(&aBlock, &v113);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v40;
    sub_20C493C8C(&v113, v41, v43, v44);

    v45 = v107;
    v46 = sub_20C5A039C();
    v48 = v47;
    v110 = sub_20C479154(0, &qword_27C7C5270);
    *&aBlock = v39;
    sub_20C4947E4(&aBlock, &v113);
    v49 = v39;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v45;
    sub_20C493C8C(&v113, v46, v48, v50);
    v17 = a9;
    a3 = v79;

    v24 = v77;
    v78 = v107;
  }

  sub_20C479154(0, &qword_2810F3D90);
  (*(v26 + 104))(v28, *MEMORY[0x277D851C0], v25);
  v79 = sub_20C5A090C();
  (*(v26 + 8))(v28, v25);
  v51 = v86;
  (*(v86 + 16))(v101, a3, v102);
  sub_20C477580(v17, &v113);
  v52 = v89;
  (*(v89 + 16))(v103, v82, v105);
  sub_20C4775E4(v90, v104, &qword_27C7C59B0);
  v53 = (*(v51 + 80) + 24) & ~*(v51 + 80);
  v54 = (v24 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 23) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = (v57 + 47) & 0xFFFFFFFFFFFFFFF8;
  v82 = (*(v52 + 80) + v58 + 16) & ~*(v52 + 80);
  v90 = (v85 + *(v87 + 80) + v82) & ~*(v87 + 80);
  v59 = (v88 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = v106;
  (*(v51 + 32))(v60 + v53, v101, v102);
  v61 = (v60 + v54);
  v62 = v94;
  *v61 = v92;
  v61[1] = v62;
  *(v60 + v55) = v78;
  v63 = (v60 + v56);
  v64 = v93;
  *v63 = v91;
  v63[1] = v64;
  sub_20C4780E8(&v113, v60 + v57);
  v65 = (v60 + v58);
  v66 = v83;
  *v65 = v80;
  v65[1] = v66;
  (*(v52 + 32))(v60 + v82, v103, v105);
  sub_20C4F8A00(v104, v60 + v90);
  v67 = (v60 + v59);
  v68 = v84;
  *v67 = v81;
  v67[1] = v68;
  v111 = sub_20C4F8A70;
  v112 = v60;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v109 = sub_20C4F8F74;
  v110 = &block_descriptor_36;
  v69 = _Block_copy(&aBlock);
  v70 = v106;

  v71 = v95;
  sub_20C5A022C();
  v107 = MEMORY[0x277D84F90];
  sub_20C4F89B8(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v72 = v97;
  v73 = v100;
  sub_20C5A0AEC();
  v74 = v79;
  MEMORY[0x20F2FEDA0](0, v71, v72, v69);
  _Block_release(v69);

  (*(v99 + 8))(v72, v73);
  (*(v96 + 8))(v71, v98);
}

void sub_20C4F6058(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v63 = a8;
  v77 = a7;
  v70 = a6;
  v60 = a5;
  v57 = a4;
  v56 = a3;
  v73 = a14;
  v74 = a1;
  v71 = a13;
  v68 = a12;
  v62 = a11;
  v72 = a10;
  v69 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0);
  v64 = *(v15 - 8);
  v67 = *(v64 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = &v54 - v16;
  v65 = sub_20C59E52C();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = v17;
  v76 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20C59D37C();
  v18 = *(v75 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v75);
  v20 = sub_20C5A03FC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20C5A01CC();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v25 + 8))(v27, v24);
  v28 = sub_20C59E51C();
  v30 = v29;
  v58 = sub_20C59D3BC();
  sub_20C4A7C7C(v28, v30);
  sub_20C5A03EC();
  v31 = sub_20C5A03AC();
  v33 = v32;
  (*(v21 + 8))(v23, v20);
  v34 = 0;
  if (v33 >> 60 != 15)
  {
    v34 = sub_20C59D3BC();
    sub_20C4BFD68(v31, v33);
  }

  v57 = v34;
  v60 = sub_20C5A02AC();
  sub_20C477580(v63, &v79);
  v35 = v18;
  v36 = *(v18 + 16);
  v55 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36(v55, v62, v75);
  v37 = v61;
  v38 = a2;
  v39 = v65;
  (*(v61 + 16))(v76, v38, v65);
  v40 = v66;
  sub_20C4775E4(v68, v66, &qword_27C7C59B0);
  v41 = (*(v35 + 80) + 88) & ~*(v35 + 80);
  v42 = (v19 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = (v59 + *(v64 + 80) + v42) & ~*(v64 + 80);
  v44 = (v67 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v77;
  *(v45 + 2) = v70;
  *(v45 + 3) = v46;
  sub_20C4780E8(&v79, (v45 + 32));
  v47 = v72;
  *(v45 + 9) = v69;
  *(v45 + 10) = v47;
  (*(v35 + 32))(&v45[v41], v55, v75);
  (*(v37 + 32))(&v45[v42], v76, v39);
  sub_20C4F8A00(v40, &v45[v43]);
  v48 = &v45[v44];
  v49 = v73;
  *v48 = v71;
  *(v48 + 1) = v49;
  aBlock[4] = sub_20C4F8C44;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F7204;
  aBlock[3] = &block_descriptor_42;
  v50 = _Block_copy(aBlock);

  v51 = v58;
  v52 = v57;
  v53 = v60;
  [v74 makeStreamingContentKeyRequestDataForApp:v58 contentIdentifier:v57 options:v60 completionHandler:v50];
  _Block_release(v50);
}

uint64_t sub_20C4F66F0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a8;
  v54 = a7;
  v48 = a6;
  v53 = a5;
  v52 = a4;
  v65 = a2;
  v66 = a3;
  v67 = a1;
  v57 = a13;
  v56 = a12;
  v49 = a11;
  v50 = a10;
  v47 = a9;
  v60 = sub_20C5A020C();
  v63 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C5A023C();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v58 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0);
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v64 = &v42 - v18;
  v19 = sub_20C59E52C();
  v44 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v45 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C59D37C();
  v43 = v22;
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C479154(0, &qword_2810F3D90);
  v51 = sub_20C5A08EC();
  sub_20C477580(v48, &v69);
  (*(v23 + 16))(v25, v47, v22);
  (*(v20 + 16))(&v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v19);
  sub_20C4775E4(v49, v64, &qword_27C7C59B0);
  v26 = (*(v23 + 80) + 112) & ~*(v23 + 80);
  v27 = (v24 + *(v20 + 80) + v26) & ~*(v20 + 80);
  v28 = (v21 + *(v46 + 80) + v27) & ~*(v46 + 80);
  v29 = swift_allocObject();
  v30 = v65;
  *(v29 + 2) = v67;
  *(v29 + 3) = v30;
  v31 = v53;
  *(v29 + 4) = v52;
  *(v29 + 5) = v31;
  *(v29 + 6) = v66;
  sub_20C4780E8(&v69, (v29 + 56));
  v32 = v55;
  *(v29 + 12) = v54;
  *(v29 + 13) = v32;
  (*(v23 + 32))(&v29[v26], v25, v43);
  (*(v20 + 32))(&v29[v27], v45, v44);
  sub_20C4F8A00(v64, &v29[v28]);
  v33 = &v29[(v17 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  v34 = v57;
  *v33 = v56;
  *(v33 + 1) = v34;
  aBlock[4] = sub_20C4F8DE4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_48;
  v35 = _Block_copy(aBlock);
  sub_20C4E6460(v67, v65);

  v36 = v66;

  v37 = v58;
  sub_20C5A022C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C4F89B8(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v39 = v59;
  v38 = v60;
  sub_20C5A0AEC();
  v40 = v51;
  MEMORY[0x20F2FEDA0](0, v37, v39, v35);
  _Block_release(v35);

  (*(v63 + 8))(v39, v38);
  return (*(v61 + 8))(v37, v62);
}

void sub_20C4F6D58(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v47 = a7;
  v48 = a8;
  v51 = a4;
  v52 = a3;
  v50 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - v16;
  v18 = sub_20C59D37C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_20C59E5BC();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A50);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (&v41 - v26);
  if (a2 >> 60 == 15)
  {
    v28 = sub_20C59E12C();
    sub_20C4F89B8(&unk_27C7C5990, MEMORY[0x277D50F38]);
    v29 = swift_allocError();
    *v30 = a5;
    v31 = *MEMORY[0x277D50EC8];
    v32 = *(*(v28 - 8) + 104);
    v32(v30, v31, v28);
    *v27 = v29;
    swift_storeEnumTagMultiPayload();
    v33 = a5;
    v34 = a5;
    v52(v27);
    sub_20C477B50(v27, &qword_27C7C4A50);
    __swift_project_boxed_opaque_existential_1(a6, a6[3]);
    v35 = swift_allocError();
    *v36 = a5;
    v32(v36, v31, v28);
    sub_20C59F54C();
  }

  else
  {
    v44 = a12;
    v45 = a6;
    v42 = a11;
    (*(v19 + 16))(v21, a9, v18, v25);
    v37 = v50;
    sub_20C4E6460(v50, a2);
    sub_20C4E6460(v37, a2);
    v43 = v24;
    v38 = a2;

    sub_20C59E4FC();
    sub_20C4775E4(v42, v17, &qword_27C7C59B0);

    sub_20C59E59C();
    v39 = v46;
    v40 = v49;
    (*(v46 + 16))(v27, v23, v49);
    swift_storeEnumTagMultiPayload();
    v52(v27);
    sub_20C477B50(v27, &qword_27C7C4A50);
    __swift_project_boxed_opaque_existential_1(v45, v45[3]);
    sub_20C59F55C();
    sub_20C4BFD68(v37, v38);
    (*(v39 + 8))(v23, v40);
  }
}

uint64_t sub_20C4F7204(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_20C59D3CC();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_20C4BFD68(v4, v8);
}

void sub_20C4F72B0(void *a1)
{
  v3 = sub_20C5A01CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  if (sub_20C545218(v17[2]))
  {
    sub_20C59FE5C();
    v7 = a1;
    v8 = sub_20C5A01BC();
    v9 = sub_20C5A08AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = MEMORY[0x20F2FF3F0](v16[2], v16[3]);
      v14 = sub_20C479640(v12, v13, v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20C472000, v8, v9, "Ignoring recoverable error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x20F2FFF90](v11, -1, -1);
      MEMORY[0x20F2FFF90](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v15 = sub_20C59D28C();
    [v1 processContentKeyResponseError_];
  }
}

uint64_t sub_20C4F74C8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26 = a5;
  v9 = sub_20C5A01CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59F40C();
  sub_20C59FF0C();
  sub_20C59F46C();

  v13 = sub_20C5A01BC();
  v14 = sub_20C5A08AC();

  if (os_log_type_enabled(v13, v14))
  {
    v25 = a1;
    v15 = swift_slowAlloc();
    v24[1] = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24[0] = v9;
    v18 = v17;
    v29 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_20C479640(v26, a6, &v29);
    *(v16 + 12) = 2082;
    v19 = sub_20C5A0C1C();
    v21 = sub_20C479640(v19, v20, &v29);
    a1 = v25;

    *(v16 + 14) = v21;
    _os_log_impl(&dword_20C472000, v13, v14, "[%{public}s] %{public}s begin", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2FFF90](v18, -1, -1);
    MEMORY[0x20F2FFF90](v16, -1, -1);

    (*(v10 + 8))(v12, v24[0]);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
  sub_20C5A101C();
  v22 = v29;
  v27 = v29;
  v28 = v30;
  a1(&v27);
  return sub_20C49B78C(v22);
}

uint64_t sub_20C4F775C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v64 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a3;
  v66 = a1;
  v69 = a9;
  v70 = a10;
  v13 = sub_20C59D46C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  v22 = sub_20C5A01CC();
  v67 = *(v22 - 8);
  v68 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = (v14 + 16);
  if (a2)
  {
    sub_20C59F46C();
    (*v28)(v18, a8, v13);

    v29 = v66;
    sub_20C4F88FC(v66, 1);
    v30 = sub_20C5A01BC();
    v31 = sub_20C5A089C();

    sub_20C49B78C(v29);
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v71 = v60;
      *v32 = 136446978;
      *(v32 + 4) = sub_20C479640(v61, a4, &v71);
      *(v32 + 12) = 2082;
      v33 = sub_20C5A0C1C();
      v35 = sub_20C479640(v33, v34, &v71);

      *(v32 + 14) = v35;
      *(v32 + 22) = 2048;
      v36 = v65;
      sub_20C59D44C();
      sub_20C59D3FC();
      v38 = v37;
      v39 = *(v14 + 8);
      v39(v36, v13);
      v39(v18, v13);
      *(v32 + 24) = v38;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v41 = MEMORY[0x28223BE20](ErrorValue);
      (*(v43 + 16))(&v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v41);
      v44 = sub_20C5A041C();
      v46 = sub_20C479640(v44, v45, &v71);

      *(v32 + 34) = v46;
      _os_log_impl(&dword_20C472000, v30, v31, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      v47 = v60;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v47, -1, -1);
      MEMORY[0x20F2FFF90](v32, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
    }

    (*(v67 + 8))(v24, v68);
  }

  else
  {
    sub_20C59F46C();
    (*v28)(v21, a8, v13);

    v48 = sub_20C5A01BC();
    v49 = sub_20C5A08AC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v71 = v51;
      *v50 = 136446722;
      *(v50 + 4) = sub_20C479640(v61, a4, &v71);
      *(v50 + 12) = 2082;
      v52 = sub_20C5A0C1C();
      v54 = sub_20C479640(v52, v53, &v71);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2048;
      v55 = v65;
      sub_20C59D44C();
      sub_20C59D3FC();
      v57 = v56;
      v58 = *(v14 + 8);
      v58(v55, v13);
      v58(v21, v13);
      *(v50 + 24) = v57;
      _os_log_impl(&dword_20C472000, v48, v49, "[%{public}s] %{public}s ended in %fs", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v51, -1, -1);
      MEMORY[0x20F2FFF90](v50, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v21, v13);
    }

    (*(v67 + 8))(v27, v68);
  }

  sub_20C59FEFC();
  return sub_20C59F3FC();
}

uint64_t sub_20C4F7DFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11)
{
  v69 = a7;
  v70 = a3;
  v65 = a6;
  v64[1] = a4;
  v64[2] = a5;
  v64[0] = a2;
  v74 = a9;
  v75 = a8;
  v12 = sub_20C59D46C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v68 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v64 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v64 - v19;
  v21 = sub_20C5A01CC();
  v72 = *(v21 - 8);
  v73 = v21;
  MEMORY[0x28223BE20](v21);
  v71 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v64 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a10);
  MEMORY[0x28223BE20](v26);
  v28 = (v64 - v27);
  v66 = a10;
  v67 = a11;
  sub_20C4775E4(a1, v64 - v27, a10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v28;
    sub_20C59F46C();
    (*(v13 + 16))(v17, v69, v12);
    v30 = v70;

    v31 = v29;
    v32 = sub_20C5A01BC();
    v33 = sub_20C5A089C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76[0] = v69;
      *v34 = 136446978;
      *(v34 + 4) = sub_20C479640(v64[0], v30, v76);
      *(v34 + 12) = 2082;
      v35 = sub_20C5A0C1C();
      v37 = sub_20C479640(v35, v36, v76);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2048;
      v38 = v68;
      sub_20C59D44C();
      sub_20C59D3FC();
      v40 = v39;
      v41 = *(v13 + 8);
      v41(v38, v12);
      v41(v17, v12);
      *(v34 + 24) = v40;
      *(v34 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v43 = MEMORY[0x28223BE20](ErrorValue);
      (*(v45 + 16))(v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
      v46 = sub_20C5A041C();
      v48 = sub_20C479640(v46, v47, v76);

      *(v34 + 34) = v48;
      _os_log_impl(&dword_20C472000, v32, v33, "[%{public}s] %{public}s ended in %fs -> %{public}s", v34, 0x2Au);
      v49 = v69;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v49, -1, -1);
      MEMORY[0x20F2FFF90](v34, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v17, v12);
    }

    (*(v72 + 8))(v71, v73);
  }

  else
  {
    sub_20C59F46C();
    v50 = v12;
    (*(v13 + 16))(v20, v69, v12);
    v51 = v70;

    v52 = sub_20C5A01BC();
    v53 = sub_20C5A08AC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v76[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_20C479640(v64[0], v51, v76);
      *(v54 + 12) = 2082;
      v56 = sub_20C5A0C1C();
      LODWORD(v71) = v53;
      v58 = sub_20C479640(v56, v57, v76);

      *(v54 + 14) = v58;
      *(v54 + 22) = 2048;
      v59 = v68;
      sub_20C59D44C();
      sub_20C59D3FC();
      v61 = v60;
      v62 = *(v13 + 8);
      v62(v59, v50);
      v62(v20, v50);
      *(v54 + 24) = v61;
      _os_log_impl(&dword_20C472000, v52, v71, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v55, -1, -1);
      MEMORY[0x20F2FFF90](v54, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v20, v50);
    }

    (*(v72 + 8))(v25, v73);
    sub_20C477B50(v28, v66);
  }

  sub_20C59FEFC();
  return sub_20C59F3FC();
}

uint64_t sub_20C4F8518(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C59D72C() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_20C4F41FC(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_20C4F864C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_20C4F86C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20C4F875C(uint64_t a1)
{
  v3 = *(sub_20C59D46C() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C4F775C(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_20C4F882C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

id sub_20C4F88FC(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_20C4F8908()
{
  v1 = *(sub_20C59D72C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  sub_20C4F4A10(v5, v0 + v2, v8, v9, v7);
}

uint64_t sub_20C4F89B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C4F8A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20C4F8A70()
{
  v1 = *(sub_20C59E52C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_20C59D37C() - 8);
  v9 = (*(v8 + 80) + v7 + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0) - 8);
  v12 = (v10 + *(v11 + 80) + v9) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_20C4F6058(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v5), *(v0 + v5 + 8), v0 + v6, *(v0 + v7), *(v0 + v7 + 8), v0 + v9, v0 + v12, *(v0 + v13), *(v0 + v13 + 8));
}

uint64_t sub_20C4F8C44(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(sub_20C59D37C() - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_20C59E52C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C4F66F0(a1, a2, a3, v3[2], v3[3], (v3 + 4), v3[9], v3[10], v3 + v8, v3 + v11, v3 + v14, *(v3 + v15), *(v3 + v15 + 8));
}

void sub_20C4F8DE4()
{
  v1 = *(sub_20C59D37C() - 8);
  v2 = (*(v1 + 80) + 112) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20C59E52C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C59B0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  sub_20C4F6D58(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + 56), *(v0 + 96), *(v0 + 104), v0 + v2, v0 + v5, v0 + v8, *(v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_20C4F8F8C()
{
  result = qword_27C7C5278;
  if (!qword_27C7C5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5278);
  }

  return result;
}

uint64_t sub_20C4F9010(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_20C4F9074();
  v5 = sub_20C4F90C8();

  return a3(a1, v4, v5);
}

unint64_t sub_20C4F9074()
{
  result = qword_27C7C5280;
  if (!qword_27C7C5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5280);
  }

  return result;
}

unint64_t sub_20C4F90C8()
{
  result = qword_27C7C5288;
  if (!qword_27C7C5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5288);
  }

  return result;
}

unint64_t sub_20C4F9120()
{
  result = qword_27C7C5290;
  if (!qword_27C7C5290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5290);
  }

  return result;
}

uint64_t sub_20C4F91A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_20C4F9208();
  v5 = sub_20C4C0628();

  return a3(a1, v4, v5);
}

unint64_t sub_20C4F9208()
{
  result = qword_27C7C5298;
  if (!qword_27C7C5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5298);
  }

  return result;
}

uint64_t SiriBeginSessionCriteria.init(healthKitActivityType:candidates:personalizationMethod:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t SiriBeginSessionCriteria.init(activity:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C5A01CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  MEMORY[0x28223BE20](v11);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v55 - v14;
  v58 = a1;
  v16 = [a1 userInfo];
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = v16;
  v18 = sub_20C5A02BC();

  strcpy(v59, "candidateData");
  HIWORD(v59[1]) = -4864;
  sub_20C5A0B9C();
  if (!*(v18 + 16) || (v19 = sub_20C495C20(&v60), (v20 & 1) == 0))
  {

    sub_20C4914D8(&v60);
LABEL_8:
    v62 = 0u;
    v63 = 0u;
    goto LABEL_9;
  }

  sub_20C479AA8(*(v18 + 56) + 32 * v19, &v62);
  sub_20C4914D8(&v60);

  if (!*(&v63 + 1))
  {
LABEL_9:
    sub_20C491424(&v62);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    sub_20C59FDEC();
    v23 = sub_20C5A01BC();
    v24 = sub_20C5A089C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20C472000, v23, v24, "SiriUserActivityHandler begin session was missing workout candidates", v25, 2u);
      MEMORY[0x20F2FFF90](v25, -1, -1);
    }

    result = (*(v5 + 8))(v15, v4);
    goto LABEL_13;
  }

  v22 = v60;
  v21 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C52A0);
  sub_20C4BFD7C(v22, v21);
  sub_20C4FA198();
  v57 = v21;
  sub_20C59E9BC();
  v27 = v60;
  v28 = [v58 userInfo];
  if (!v28)
  {

    v62 = 0u;
    v63 = 0u;
    goto LABEL_26;
  }

  v56 = v27;
  v29 = v28;
  v30 = sub_20C5A02BC();

  v59[0] = 0xD000000000000015;
  v59[1] = 0x800000020C5ABC20;
  sub_20C5A0B9C();
  if (!*(v30 + 16) || (v31 = sub_20C495C20(&v60), (v32 & 1) == 0))
  {

    sub_20C4914D8(&v60);
    v62 = 0u;
    v63 = 0u;
    goto LABEL_24;
  }

  sub_20C479AA8(*(v30 + 56) + 32 * v31, &v62);
  sub_20C4914D8(&v60);

  if (!*(&v63 + 1))
  {
LABEL_24:

LABEL_26:
    sub_20C491424(&v62);
LABEL_27:
    sub_20C59FDEC();
    v43 = sub_20C5A01BC();
    v44 = sub_20C5A089C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20C472000, v43, v44, "SiriUserActivityHandler begin session was missing personalization method", v45, 2u);
      MEMORY[0x20F2FFF90](v45, -1, -1);

      sub_20C4A7C7C(v22, v57);
    }

    else
    {
      sub_20C4A7C7C(v22, v57);
    }

    result = (*(v5 + 8))(v10, v4);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_27;
  }

  v33 = v60;
  v34 = v61;

  v35 = MEMORY[0x20F2FCCE0](v33, v34);
  if (v35 != 3)
  {
    v46 = v35;

    v47 = [v58 userInfo];
    if (v47)
    {
      v48 = v46;
      v49 = v47;
      v50 = sub_20C5A02BC();

      *&v62 = 0xD000000000000015;
      *(&v62 + 1) = 0x800000020C5ABC40;
      sub_20C5A0B9C();
      if (*(v50 + 16) && (v51 = sub_20C495C20(&v60), (v52 & 1) != 0))
      {
        sub_20C479AA8(*(v50 + 56) + 32 * v51, &v62);

        sub_20C4A7C7C(v22, v57);
        sub_20C4914D8(&v60);

        v46 = v48;
        if (*(&v63 + 1))
        {
          result = swift_dynamicCast();
          v53 = v60;
          if (!result)
          {
            v53 = 0;
          }

          v54 = result ^ 1;
          goto LABEL_44;
        }
      }

      else
      {
        sub_20C4A7C7C(v22, v57);

        sub_20C4914D8(&v60);
        v62 = 0u;
        v63 = 0u;
        v46 = v48;
      }
    }

    else
    {
      sub_20C4A7C7C(v22, v57);

      v62 = 0u;
      v63 = 0u;
    }

    result = sub_20C491424(&v62);
    v53 = 0;
    v54 = 1;
LABEL_44:
    *a2 = v53;
    *(a2 + 8) = v54;
    *(a2 + 16) = v56;
    *(a2 + 24) = v46;
    return result;
  }

  sub_20C59FDEC();

  v36 = sub_20C5A01BC();
  v37 = sub_20C5A089C();

  v38 = v36;
  if (os_log_type_enabled(v36, v37))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    LODWORD(v56) = v37;
    v41 = v40;
    v60 = v40;
    *v39 = 136446210;
    v42 = sub_20C479640(v33, v34, &v60);

    *(v39 + 4) = v42;
    _os_log_impl(&dword_20C472000, v38, v56, "SiriUserActivityHandler begin session parsed unexpected personalization method: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x20F2FFF90](v41, -1, -1);
    MEMORY[0x20F2FFF90](v39, -1, -1);

    sub_20C4A7C7C(v22, v57);
  }

  else
  {
    sub_20C4A7C7C(v22, v57);
  }

  result = (*(v5 + 8))(v7, v4);
LABEL_13:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_20C4F9B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C59E86C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_20C4FA604(&qword_27C7C52B8);
      v26 = sub_20C5A02EC();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_20C4FA604(&qword_27C7C52C0);
        v31 = sub_20C5A033C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t SiriBeginSessionCriteria.hash(into:)(__int128 *a1)
{
  v3 = v1[2];
  if (*(v1 + 8) == 1)
  {
    sub_20C5A0FDC();
  }

  else
  {
    v4 = *v1;
    sub_20C5A0FDC();
    MEMORY[0x20F2FF470](v4);
  }

  sub_20C4FA21C(a1, v3);
  sub_20C59E84C();
  sub_20C5A049C();
}

uint64_t SiriBeginSessionCriteria.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  if (v2 != 1)
  {
    MEMORY[0x20F2FF470](v1);
  }

  sub_20C4FA21C(v5, v3);
  sub_20C59E84C();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C4FA034(__int128 *a1)
{
  v3 = v1[2];
  if (*(v1 + 8) == 1)
  {
    sub_20C5A0FDC();
  }

  else
  {
    v4 = *v1;
    sub_20C5A0FDC();
    MEMORY[0x20F2FF470](v4);
  }

  sub_20C4FA21C(a1, v3);
  sub_20C59E84C();
  sub_20C5A049C();
}

uint64_t sub_20C4FA0E0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_20C5A0FBC();
  sub_20C5A0FDC();
  if (v2 != 1)
  {
    MEMORY[0x20F2FF470](v1);
  }

  sub_20C4FA21C(v5, v3);
  sub_20C59E84C();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

unint64_t sub_20C4FA198()
{
  result = qword_27C7C52A8;
  if (!qword_27C7C52A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C52A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C52A8);
  }

  return result;
}

uint64_t sub_20C4FA21C(__int128 *a1, uint64_t a2)
{
  v4 = sub_20C59E86C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_20C5A0FFC();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_20C4FA604(&qword_27C7C52B8);
    v21 = sub_20C5A02EC();
    result = (*(v5 + 8))(v7, v4);
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

      return MEMORY[0x20F2FF470](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12SeymourMedia24SiriBeginSessionCriteriaV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4)
  {
    if (!v6)
    {
LABEL_12:
      v13 = 0;
      return v13 & 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_12;
    }
  }

  if ((sub_20C4F9B44(v5, v7) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = sub_20C59E84C();
  v11 = v10;
  if (v9 == sub_20C59E84C() && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20C5A0E9C();
  }

  return v13 & 1;
}

unint64_t sub_20C4FA510()
{
  result = qword_27C7C52B0;
  if (!qword_27C7C52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C52B0);
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

uint64_t sub_20C4FA578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C4FA5C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4FA604(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20C59E86C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MetricPerformanceStreamOccurred.metricPerformanceStream.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C59E6CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricPerformanceStreamOccurred.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C59E6CC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t static MetricPerformanceStreamOccurred.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AudioHint.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioHint.content.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AudioHint.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioHint() + 28);
  v4 = sub_20C59D63C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AudioHint()
{
  result = qword_27C7C52D8;
  if (!qword_27C7C52D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AudioHint.hash(into:)()
{
  sub_20C5A049C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2FF490](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x20F2FF490](*&v3);
  sub_20C5A049C();
  type metadata accessor for AudioHint();
  sub_20C59D63C();
  sub_20C4FAE2C(&qword_27C7C52C8, MEMORY[0x277CC9788]);
  return sub_20C5A02FC();
}

uint64_t AudioHint.hashValue.getter()
{
  sub_20C5A0FBC();
  sub_20C5A049C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2FF490](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  MEMORY[0x20F2FF490](*&v3);
  sub_20C5A049C();
  type metadata accessor for AudioHint();
  sub_20C59D63C();
  sub_20C4FAE2C(&qword_27C7C52C8, MEMORY[0x277CC9788]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4FAAB4()
{
  sub_20C5A0FBC();
  sub_20C5A049C();
  sub_20C4FACE0(*(v0 + 16), *(v0 + 24));
  sub_20C5A049C();
  sub_20C59D63C();
  sub_20C4FAE2C(&qword_27C7C52C8, MEMORY[0x277CC9788]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4FAB74()
{
  sub_20C5A049C();
  sub_20C4FACE0(*(v0 + 16), *(v0 + 24));
  sub_20C5A049C();
  sub_20C59D63C();
  sub_20C4FAE2C(&qword_27C7C52C8, MEMORY[0x277CC9788]);
  return sub_20C5A02FC();
}

uint64_t sub_20C4FAC18()
{
  sub_20C5A0FBC();
  sub_20C5A049C();
  sub_20C4FACE0(*(v0 + 16), *(v0 + 24));
  sub_20C5A049C();
  sub_20C59D63C();
  sub_20C4FAE2C(&qword_27C7C52C8, MEMORY[0x277CC9788]);
  sub_20C5A02FC();
  return sub_20C5A0FFC();
}

uint64_t sub_20C4FACE0(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2FF490](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2FF490](*&v3);
}

uint64_t _s12SeymourMedia9AudioHintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_20C5A0E9C() & 1) != 0)
  {
    v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v5 && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_20C5A0E9C() & 1) != 0))
    {
      type metadata accessor for AudioHint();

      JUMPOUT(0x20F2FBA20);
    }
  }

  return 0;
}

uint64_t sub_20C4FAE2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20C4FAE9C()
{
  sub_20C4FAF30();
  if (v0 <= 0x3F)
  {
    sub_20C59D63C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C4FAF30()
{
  if (!qword_27C7C52E8)
  {
    v0 = sub_20C5A083C();
    if (!v1)
    {
      atomic_store(v0, &qword_27C7C52E8);
    }
  }
}

uint64_t AMSBagProtocol.makeMarketingLink(for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_20C59D37C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v2;
  (*(v6 + 32))(v9 + v8, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  type metadata accessor for MarketingLink();
  swift_unknownObjectRetain();
  return sub_20C59EA9C();
}

void sub_20C4FB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C59D37C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = [objc_allocWithZone(MEMORY[0x277CEE6C8]) initWithBag_];
  v12 = sub_20C59D30C();
  v13 = [v11 typeForURL_];

  (*(v9 + 16))(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  aBlock[4] = sub_20C4FB730;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C499B34;
  aBlock[3] = &block_descriptor_10;
  v17 = _Block_copy(aBlock);

  [v13 addFinishBlock_];
  _Block_release(v17);
}

void sub_20C4FB314(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_20C59D37C() - 8);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_20C4FB0E8(a1, a2, v6, v7);
}

uint64_t sub_20C4FB3A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v29 = a1;
  v33 = sub_20C5A020C();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C5A023C();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C59D37C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C4B3570();
  v30 = sub_20C5A08EC();
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v13 + 32))(v19 + v16, v15, v12);
  v20 = (v19 + v17);
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v22 = v29;
  *(v19 + v18) = v29;
  aBlock[4] = sub_20C4FBE50;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_9;
  v23 = _Block_copy(aBlock);
  v24 = a2;
  v25 = v22;

  sub_20C5A022C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C4959D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v26 = v33;
  sub_20C5A0AEC();
  v27 = v30;
  MEMORY[0x20F2FEDA0](0, v11, v8, v23);
  _Block_release(v23);

  (*(v36 + 8))(v8, v26);
  return (*(v34 + 8))(v11, v35);
}

uint64_t sub_20C4FB730(void *a1, void *a2)
{
  v5 = *(sub_20C59D37C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20C4FB3A0(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20C4FB7E0(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v56 = a5;
  v59 = a4;
  v60 = a3;
  v7 = type metadata accessor for MarketingLink();
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C52F0);
  MEMORY[0x28223BE20](v57);
  v58 = (&v54 - v10);
  v11 = sub_20C59D37C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = sub_20C5A01CC();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v25 = &v54 - v24;
  if (a1)
  {
    v55 = v23;
    v56 = v22;
    v26 = a1;
    sub_20C59FDBC();
    (*(v12 + 16))(v17, a2, v11);
    v27 = a1;
    v28 = sub_20C5A01BC();
    v29 = sub_20C5A089C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v54;
      *v30 = 136446722;
      swift_getErrorValue();
      v31 = MEMORY[0x20F2FF3F0](v61, v62);
      v33 = sub_20C479640(v31, v32, &v63);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2080;
      v34 = sub_20C59D2FC();
      v36 = v35;
      (*(v12 + 8))(v17, v11);
      v37 = sub_20C479640(v34, v36, &v63);

      *(v30 + 24) = v37;
      _os_log_impl(&dword_20C472000, v28, v29, "Upsell URL parsing failed with error: %{public}s - url: %{mask.hash}s", v30, 0x20u);
      v38 = v54;
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v38, -1, -1);
      MEMORY[0x20F2FFF90](v30, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v17, v11);
    }

    (*(v55 + 8))(v25, v56);
    v42 = v58;
    *v58 = a1;
    swift_storeEnumTagMultiPayload();
    v43 = a1;
    v60(v42);
  }

  else
  {
    if (v56)
    {
      v39 = [v56 integerValue];
      (*(v12 + 16))(&v9[*(v7 + 20)], a2, v11);
      *v9 = v39;
      v40 = v58;
      sub_20C4FBFAC(v9, v58);
      swift_storeEnumTagMultiPayload();
      v60(v40);
      sub_20C4FBF44(v40);
      return sub_20C4FC010(v9);
    }

    v55 = v23;
    v56 = v22;
    sub_20C59FDBC();
    (*(v12 + 16))(v15, a2, v11);
    v44 = sub_20C5A01BC();
    v45 = sub_20C5A089C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63 = v47;
      *v46 = 141558274;
      *(v46 + 4) = 1752392040;
      *(v46 + 12) = 2080;
      v48 = sub_20C59D2FC();
      v50 = v49;
      (*(v12 + 8))(v15, v11);
      v51 = sub_20C479640(v48, v50, &v63);

      *(v46 + 14) = v51;
      _os_log_impl(&dword_20C472000, v44, v45, "Failed to create AMSParseURLType with nil raw value - url: %{mask.hash}s", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x20F2FFF90](v47, -1, -1);
      MEMORY[0x20F2FFF90](v46, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    (*(v55 + 8))(v21, v56);
    sub_20C4FBEF0();
    v52 = swift_allocError();
    *v53 = 1;
    v42 = v58;
    *v58 = v52;
    swift_storeEnumTagMultiPayload();
    v60(v42);
  }

  return sub_20C4FBF44(v42);
}

uint64_t sub_20C4FBE50()
{
  v1 = *(sub_20C59D37C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = v0 + v3;
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = *(v6 + 8);

  return sub_20C4FB7E0(v5, v0 + v2, v8, v9, v7);
}

unint64_t sub_20C4FBEF0()
{
  result = qword_27C7C52F8;
  if (!qword_27C7C52F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C52F8);
  }

  return result;
}

uint64_t sub_20C4FBF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C52F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4FBFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C4FC010(uint64_t a1)
{
  v2 = type metadata accessor for MarketingLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GymKitConnection.isActive.getter()
{
  sub_20C59E10C();
  sub_20C4FC154();
  sub_20C4FC1A8();
  if (sub_20C59DA8C() & 1) != 0 || (sub_20C59DA8C())
  {
    v0 = 1;
  }

  else
  {
    v0 = sub_20C59DA8C();
  }

  return v0 & 1;
}

unint64_t sub_20C4FC154()
{
  result = qword_27C7C5300;
  if (!qword_27C7C5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5300);
  }

  return result;
}

unint64_t sub_20C4FC1A8()
{
  result = qword_27C7C5308;
  if (!qword_27C7C5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5308);
  }

  return result;
}

uint64_t MarketingMetric.init(actionItem:offer:additionalFields:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a3;
  v62 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5310);
  MEMORY[0x28223BE20](v6 - 8);
  v57 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5318);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5320);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v56 - v15;
  v60 = sub_20C59D79C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5328);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  v22 = a2[3];
  v71[2] = a2[2];
  v72 = v22;
  v73 = a2[4];
  v23 = a2[1];
  v71[0] = *a2;
  v71[1] = v23;
  v61 = a1;
  sub_20C4775E4(a1, &v56 - v20, &qword_27C7C5328);
  v24 = type metadata accessor for MarketingActionItem();
  if ((*(*(v24 - 8) + 48))(v21, 1, v24) != 1)
  {
    v25 = *&v21[*(v24 + 24) + 8];

    sub_20C498018(v21);
    if (*&v71[0])
    {
      goto LABEL_3;
    }

LABEL_6:
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    v29 = v18;
    goto LABEL_8;
  }

  sub_20C477B50(v21, &qword_27C7C5328);
  v25 = 0;
  if (!*&v71[0])
  {
    goto LABEL_6;
  }

LABEL_3:
  v26 = *(&v72 + 1);
  v27 = [*(&v72 + 1) itemID];
  if (v27)
  {
    v28 = v27;
    sub_20C5A039C();
  }

  v29 = v18;
  v30 = v26;
  sub_20C477B50(v71, &qword_27C7C5358);
  AMSMarketingItem.metrics.getter(v69);

LABEL_8:
  v31 = v58;
  if (v25)
  {
  }

  v32 = *MEMORY[0x277D51828];
  v33 = sub_20C59E38C();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v16, v32, v33);
  (*(v34 + 56))(v16, 0, 1, v33);
  v35 = sub_20C59D37C();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  v36 = sub_20C59E5DC();
  (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
  v37 = sub_20C59E7FC();
  (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
  sub_20C59D75C();
  if (!v31)
  {
    v31 = sub_20C5890BC(MEMORY[0x277D84F90]);
  }

  sub_20C4775E4(v69, &v64, &qword_27C7C55A0);
  if (*(&v65 + 1))
  {
    v67[0] = v64;
    v67[1] = v65;
    v68 = v66;
    v38 = sub_20C59E05C();
    v40 = v39;
    sub_20C483FD8(v67, &v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v31;
    sub_20C483290(&v64, v38, v40, isUniquelyReferenced_nonNull_native);

    v42 = v63;
    v43 = sub_20C59DFBC();
    v45 = v44;
    sub_20C483FD8(v67, &v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5330);
    if (swift_dynamicCast())
    {
      v46 = sub_20C58B5BC(v63);
    }

    else
    {
      v46 = 0;
    }

    v63 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5338);
    sub_20C4FD094();
    sub_20C5A0B9C();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v63 = v42;
    sub_20C483290(&v64, v43, v45, v47);

    sub_20C4914D8(v67);
    v31 = v63;
  }

  else
  {
    sub_20C477B50(&v64, &qword_27C7C55A0);
  }

  v48 = v59;
  v49 = v62;
  v50 = v60;
  (*(v59 + 16))(v62, v29, v60);
  v51 = type metadata accessor for MarketingMetric();
  v52 = v51[7];
  static MetricEnvironment.current()();
  v53 = sub_20C59E2AC();
  (*(*(v53 - 8) + 56))(v49 + v52, 0, 1, v53);
  v54 = sub_20C5890BC(MEMORY[0x277D84F90]);
  sub_20C477B50(v61, &qword_27C7C5328);
  (*(v48 + 8))(v29, v50);
  result = sub_20C477B50(v69, &qword_27C7C55A0);
  *(v49 + v51[5]) = v54;
  *(v49 + v51[6]) = v31;
  return result;
}

uint64_t MarketingMetric.init(actionItemIdentifier:offerIdentifier:offerMetrics:additionalFields:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, unint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v48 = a3;
  v52 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5310);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5318);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5320);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_20C59D79C();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  if (a1)
  {
  }

  v21 = *MEMORY[0x277D51828];
  v22 = sub_20C59E38C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v17, v21, v22);
  (*(v23 + 56))(v17, 0, 1, v22);
  v24 = sub_20C59D37C();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  v25 = sub_20C59E5DC();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v26 = sub_20C59E7FC();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v27 = v20;
  sub_20C59D75C();
  v28 = v48;
  if (!v48)
  {
    v28 = sub_20C5890BC(MEMORY[0x277D84F90]);
  }

  v29 = v51;
  sub_20C4775E4(v51, &v54, &qword_27C7C55A0);
  if (*(&v55 + 1))
  {
    v57[0] = v54;
    v57[1] = v55;
    v58 = v56;
    v30 = sub_20C59E05C();
    v32 = v31;
    sub_20C483FD8(v57, &v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = v28;
    sub_20C483290(&v54, v30, v32, isUniquelyReferenced_nonNull_native);

    v34 = v53;
    v35 = sub_20C59DFBC();
    v37 = v36;
    sub_20C483FD8(v57, &v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5330);
    if (swift_dynamicCast())
    {
      v38 = sub_20C58B5BC(v53);
    }

    else
    {
      v38 = 0;
    }

    v53 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5338);
    sub_20C4FD094();
    sub_20C5A0B9C();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v53 = v34;
    sub_20C483290(&v54, v35, v37, v39);

    sub_20C4914D8(v57);
    v28 = v53;
  }

  else
  {
    sub_20C477B50(&v54, &qword_27C7C55A0);
  }

  v41 = v49;
  v40 = v50;
  v42 = v52;
  (*(v49 + 16))(v52, v27, v50);
  v43 = type metadata accessor for MarketingMetric();
  v44 = v43[7];
  static MetricEnvironment.current()();
  v45 = sub_20C59E2AC();
  (*(*(v45 - 8) + 56))(v42 + v44, 0, 1, v45);
  v46 = sub_20C5890BC(MEMORY[0x277D84F90]);
  sub_20C477B50(v29, &qword_27C7C55A0);
  result = (*(v41 + 8))(v27, v40);
  *(v42 + v43[5]) = v46;
  *(v42 + v43[6]) = v28;
  return result;
}

unint64_t sub_20C4FD094()
{
  result = qword_27C7C5340;
  if (!qword_27C7C5340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5338);
    sub_20C4FD118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5340);
  }

  return result;
}

unint64_t sub_20C4FD118()
{
  result = qword_27C7C5348;
  if (!qword_27C7C5348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7C5350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5348);
  }

  return result;
}

id CGFloat.roundToScale(_:)(double a1, double a2)
{
  v4 = objc_opt_self();

  return [v4 roundValue:a2 toScale:a1];
}

id CGFloat.roundToViewScale(_:)(uint64_t a1, double a2)
{
  v4 = objc_opt_self();

  return [v4 roundValue:a1 toScaleOfView:a2];
}

id CGFloat.roundToScreenScale(_:)(uint64_t a1, double a2)
{
  v4 = objc_opt_self();

  return [v4 roundValue:a1 toScaleOfScreen:a2];
}

uint64_t VideoTextTrackError.hashValue.getter(unsigned __int8 a1)
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](a1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C4FD33C()
{
  result = qword_27C7C5360;
  if (!qword_27C7C5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5360);
  }

  return result;
}

uint64_t sub_20C4FD3A0@<X0>(uint64_t a1@<X8>)
{
  if (sub_20C5A0F1C() == 0xD000000000000014 && 0x800000020C5AB9C0 == v2)
  {

LABEL_5:
    sub_20C5A0F0C();

    return sub_20C59DA2C();
  }

  v3 = sub_20C5A0E9C();

  if (v3)
  {
    goto LABEL_5;
  }

  v5 = sub_20C59DA3C();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

uint64_t sub_20C4FD4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5368);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v21 - v7);
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v10);
  v13 = sub_20C59E12C();
  v14 = swift_dynamicCast();
  v15 = *(*(v13 - 8) + 56);
  if (v14)
  {
    v16 = *(v13 - 8);
    v15(v8, 0, 1, v13);
    if ((*(v16 + 88))(v8, v13) == *MEMORY[0x277D50EC8])
    {
      (*(v16 + 96))(v8, v13);
      if (*v8)
      {
        v21[1] = *v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
        v17 = sub_20C59DF9C();
        v18 = swift_dynamicCast();
        return (*(*(v17 - 8) + 56))(a2, v18 ^ 1u, 1, v17);
      }
    }

    else
    {
      (*(v16 + 8))(v8, v13);
    }
  }

  else
  {
    v15(v8, 1, 1, v13);
    sub_20C4FD9D0(v8);
  }

  v20 = sub_20C59DF9C();
  return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
}

uint64_t sub_20C4FD77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v6 = sub_20C59E12C();
  v7 = swift_dynamicCast();
  return (*(*(v6 - 8) + 56))(a2, v7 ^ 1u, 1, v6);
}

uint64_t sub_20C4FD890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v8, a1, v5);
  v9 = sub_20C5A0E7C();
  if (v9)
  {
    v10 = v9;
    (*(v4 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v4 + 32))(v11, v7, a1);
  }

  return FairPlayError.init(_:)(v10, a2);
}

uint64_t sub_20C4FD9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_20C4FDA68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndWorkoutIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20C4FDAE4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_20C59EBBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C5A01CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20C48DF30())
  {
    v14 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v15 = sub_20C5A036C();
    v16 = [v14 initWithActivityType_];

    v17 = [objc_allocWithZone(MEMORY[0x277CD3BD8]) initWithCode:2 userActivity:v16];
    a2();
  }

  else
  {
    v30 = v11;
    v31 = a3;
    v32 = a2;
    sub_20C59FDEC();
    (*(v7 + 16))(v9, a1, v6);
    v18 = sub_20C5A01BC();
    v19 = sub_20C5A089C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = v10;
      v21 = v20;
      v28 = swift_slowAlloc();
      v33 = v28;
      *v21 = 136446210;
      sub_20C4FE818();
      v22 = sub_20C5A0E6C();
      v24 = v23;
      (*(v7 + 8))(v9, v6);
      v25 = sub_20C479640(v22, v24, &v33);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20C472000, v18, v19, "Session is not eligible for intent control, not ending: %{public}s", v21, 0xCu);
      v26 = v28;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x20F2FFF90](v26, -1, -1);
      MEMORY[0x20F2FFF90](v21, -1, -1);

      (*(v30 + 8))(v13, v29);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      (*(v30 + 8))(v13, v10);
    }

    v27 = [objc_allocWithZone(MEMORY[0x277CD3BD8]) initWithCode:3 userActivity:0];
    v32();
  }
}

void sub_20C4FDE6C(void *a1, void (*a2)(void), uint64_t a3)
{
  v19[2] = a3;
  v20 = a2;
  v5 = sub_20C5A01CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  v9 = a1;
  v10 = sub_20C5A01BC();
  v11 = sub_20C5A089C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19[1] = v3;
    v14 = v13;
    v23 = v13;
    *v12 = 136446210;
    swift_getErrorValue();
    v15 = MEMORY[0x20F2FF3F0](v21, v22);
    v17 = sub_20C479640(v15, v16, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_20C472000, v10, v11, "Session query failed, not ending: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x20F2FFF90](v14, -1, -1);
    MEMORY[0x20F2FFF90](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v18 = [objc_allocWithZone(MEMORY[0x277CD3BD8]) initWithCode:5 userActivity:0];
  v20();
}

uint64_t sub_20C4FE130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C53E0);
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v47);
  v9 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v45 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v49 = *(v51 - 8);
  v48 = *(v49 + 64);
  v12 = MEMORY[0x28223BE20](v51);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v46 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v52 = &v45 - v16;
  v17 = sub_20C5A01CC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FDEC();
  sub_20C5A01AC();
  (*(v18 + 8))(v20, v17);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12SeymourMedia23EndWorkoutIntentHandler_sessionClient), *(v3 + OBJC_IVAR____TtC12SeymourMedia23EndWorkoutIntentHandler_sessionClient + 24));
  sub_20C59F29C();
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v22 = a2;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20C4FE6C8;
  *(v23 + 24) = v21;
  v24 = v47;
  (*(v6 + 16))(v9, v11, v47);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  (*(v6 + 32))(v26 + v25, v9, v24);
  v27 = (v26 + ((v7 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20C4C5A2C;
  v27[1] = v23;
  v28 = v22;

  v29 = v46;
  sub_20C59EA9C();
  (*(v6 + 8))(v11, v24);
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_20C4FE70C;
  *(v31 + 24) = v30;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  (*(v49 + 16))(v50, v29, v51);
  v35 = v32;
  v36 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v37 = (v48 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v35 + 32))(v38 + v36, v33, v34);
  v39 = (v38 + v37);
  *v39 = sub_20C4907C8;
  v39[1] = v31;

  v40 = v52;
  sub_20C59EA9C();
  v41 = *(v35 + 8);
  v41(v29, v34);
  v42 = sub_20C59EABC();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_20C4907D4, v43);

  return (v41)(v40, v34);
}

uint64_t sub_20C4FE750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20C4FE818()
{
  result = qword_27C7C53F0;
  if (!qword_27C7C53F0)
  {
    sub_20C59EBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C53F0);
  }

  return result;
}

uint64_t static PictureInPictureStopping.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static MarketingOperationBegan.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4FE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(a4 + 24);
    v13 = a5[3];
    v14 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v13);
    (*(v14 + 8))(v11, v12, a1, a2, a3, v13, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C4FEA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = *(a4 + 24);
    v13 = a5[3];
    v14 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v13);
    (*(v14 + 16))(v11, v12, a1, a2, a3, v13, v14);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20C4FEB10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 64))(ObjectType, a2);
  return (*(v7 + 16))(a1, a2, v9, v10, v11, v6, v7);
}

uint64_t PlayerTimelineObserver.deinit()
{
  PlayerTimelineObserver.deactivate()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  sub_20C4FECC0(v0 + 128);
  return v0;
}

Swift::Void __swiftcall PlayerTimelineObserver.deactivate()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    (*(v1 + 128))(v0 + 16, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v0 + 136);
    v4 = swift_getObjectType();
    (*(v3 + 128))(v0 + 48, v4, v3);
    swift_unknownObjectRelease();
  }

  *(v0 + 136) = 0;

  swift_unknownObjectWeakAssign();
}

uint64_t PlayerTimelineObserver.__deallocating_deinit()
{
  PlayerTimelineObserver.deactivate()();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  sub_20C4FECC0(v0 + 128);

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t static SiriResumeSessionRequested.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_20C59F7AC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_20C4FEE3C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20C4FEEE8(uint64_t a1, unint64_t a2, void *a3)
{
  v57 = a1;
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_20C59D37C();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v3 assetCache];
  if (!v17)
  {
    goto LABEL_6;
  }

  v18 = v17;
  v19 = [v3 URL];
  sub_20C59D32C();

  LOBYTE(v19) = sub_20C59D2BC();
  (*(v13 + 8))(v16, v12);
  if ((v19 & 1) == 0)
  {

LABEL_6:

    return v57;
  }

  v20 = [v18 mediaPresentationLanguagesForMediaSelectionGroup_];
  v54 = sub_20C5A061C();

  sub_20C59FE5C();
  v21 = v18;
  v22 = a3;
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A08AC();

  v25 = os_log_type_enabled(v23, v24);
  v55 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58[0] = v53;
    *v26 = 136315138;
    v27 = [v21 mediaSelectionOptionsInMediaSelectionGroup_];
    v28 = sub_20C4FF534();
    v29 = v7;
    v30 = v6;
    v31 = sub_20C5A061C();

    v32 = MEMORY[0x20F2FEAF0](v31, v28);
    v34 = v33;
    v6 = v30;

    v35 = sub_20C479640(v32, v34, v58);

    *(v26 + 4) = v35;
    _os_log_impl(&dword_20C472000, v23, v24, "AVAssetCache has mediaSelectionOptions: %s", v26, 0xCu);
    v36 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x20F2FFF90](v36, -1, -1);
    MEMORY[0x20F2FFF90](v26, -1, -1);

    v37 = v29;
  }

  else
  {

    v37 = v7;
  }

  v39 = *(v37 + 8);
  v40 = v39(v11, v6);
  v41 = v57;
  v58[0] = v57;
  v58[1] = a2;
  MEMORY[0x28223BE20](v40);
  *(&v53 - 2) = v58;
  v42 = v54;
  if ((sub_20C4FEE3C(sub_20C4FF4DC, (&v53 - 4), v54) & 1) != 0 || !v42[2])
  {

    return v41;
  }

  else
  {
    v43 = v42[4];
    v44 = v42[5];

    v45 = v56;
    sub_20C59FE5C();

    v46 = sub_20C5A01BC();
    v47 = sub_20C5A08AC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v57 = v43;
      v49 = v41;
      v50 = v48;
      v51 = swift_slowAlloc();
      v58[0] = v51;
      *v50 = 136315394;
      *(v50 + 4) = sub_20C479640(v49, a2, v58);
      *(v50 + 12) = 2080;
      v43 = v57;
      *(v50 + 14) = sub_20C479640(v57, v44, v58);
      _os_log_impl(&dword_20C472000, v46, v47, "Preferred language %s is not available in AVAssetCache, selecting %s instead.", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v51, -1, -1);
      MEMORY[0x20F2FFF90](v50, -1, -1);

      v52 = v56;
    }

    else
    {

      v52 = v45;
    }

    v39(v52, v6);
    return v43;
  }
}

uint64_t sub_20C4FF484(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_20C5A0E9C() & 1;
  }
}

uint64_t sub_20C4FF4DC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20C5A0E9C() & 1;
  }
}

unint64_t sub_20C4FF534()
{
  result = qword_27C7C5400;
  if (!qword_27C7C5400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7C5400);
  }

  return result;
}

void sub_20C4FF5D0(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  if (a1)
  {
    v10 = a1;
    v6 = a1;
  }

  else
  {
    sub_20C4F90C8();
    v7 = swift_allocError();
    *v8 = 0;
    v10 = v7;
  }

  sub_20C4E1F24();
  sub_20C59F5FC();
}

void sub_20C4FF774(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C5A01CC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v61 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v62 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v59 - v12;
  sub_20C59FE5C();
  v14 = a1;
  v15 = sub_20C5A01BC();
  v16 = sub_20C5A08AC();
  if (os_log_type_enabled(v15, v16))
  {
    v63 = v7;
    v64 = v6;
    v60 = a2;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v67 = v18;
    *v17 = 136446466;
    v19 = [v14 status];
    v20 = a3;
    if (v19)
    {
      v21 = 0xEF746C7561666564;
      v22 = 0x206E776F6E6B6E75;
      if (v19 == 1)
      {
        v22 = 0x506F547964616572;
        v21 = 0xEB0000000079616CLL;
      }

      v23 = v19 == 2;
      if (v19 == 2)
      {
        v24 = 0x64656C696166;
      }

      else
      {
        v24 = v22;
      }

      if (v23)
      {
        v25 = 0xE600000000000000;
      }

      else
      {
        v25 = v21;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
    }

    v27 = sub_20C479640(v24, v25, &v67);

    *(v17 + 4) = v27;
    *(v17 + 12) = 2050;
    v28 = [v14 status];

    *(v17 + 14) = v28;
    _os_log_impl(&dword_20C472000, v15, v16, "received AVPlayerItem status: %{public}s (rawValue: %{public}ld)", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x20F2FFF90](v18, -1, -1);
    MEMORY[0x20F2FFF90](v17, -1, -1);

    v7 = v63;
    v6 = v64;
    v26 = *(v63 + 8);
    v26(v13, v64);
    a3 = v20;
    a2 = v60;
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v13, v6);
  }

  if ([v14 status] == 1)
  {
    swift_getObjectType();
    sub_20C50086C();
    sub_20C59F5FC();
    sub_20C4FFDD8(v14, a2, a3);
  }

  if ([v14 status] == 2)
  {
    v29 = [v14 error];
    if (v29)
    {
      v30 = v29;
      v60 = v26;
      v63 = v7;
      v64 = v6;
      v31 = v62;
      sub_20C59FE5C();
      v32 = v14;
      v33 = v30;
      v34 = sub_20C5A01BC();
      v35 = sub_20C5A089C();

      v36 = os_log_type_enabled(v34, v35);
      v59[0] = v33;
      v59[1] = a3;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v67 = v39;
        *v37 = 138543618;
        *(v37 + 4) = v32;
        *v38 = v32;
        *(v37 + 12) = 2082;
        swift_getErrorValue();
        v40 = v65;
        v41 = v66;
        v42 = v32;
        v43 = MEMORY[0x20F2FF3F0](v40, v41);
        v45 = sub_20C479640(v43, v44, &v67);

        *(v37 + 14) = v45;
        _os_log_impl(&dword_20C472000, v34, v35, "AVPlayerItem (%{public}@) failed to play with error: %{public}s", v37, 0x16u);
        sub_20C4A7CD0(v38);
        MEMORY[0x20F2FFF90](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x20F2FFF90](v39, -1, -1);
        MEMORY[0x20F2FFF90](v37, -1, -1);

        v46 = v62;
      }

      else
      {

        v46 = v31;
      }

      v47 = v64;
      v60(v46, v64);
      v48 = [v32 errorLog];
      if (v48)
      {
        v49 = v48;
        v50 = v61;
        sub_20C59FE5C();
        v51 = v49;
        v52 = sub_20C5A01BC();
        v53 = sub_20C5A089C();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138543362;
          *(v54 + 4) = v51;
          *v55 = v49;
          v56 = v51;
          _os_log_impl(&dword_20C472000, v52, v53, "AVPlayerItem error logs: %{public}@", v54, 0xCu);
          sub_20C4A7CD0(v55);
          MEMORY[0x20F2FFF90](v55, -1, -1);
          MEMORY[0x20F2FFF90](v54, -1, -1);
        }

        else
        {
          v56 = v52;
          v52 = v51;
        }

        v60(v50, v47);
      }

      swift_getObjectType();
      v57 = v59[0];
      v67 = v59[0];
      sub_20C4E1F24();
      v58 = v57;
      sub_20C59F5FC();
    }
  }
}

void sub_20C4FFDD8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  v6 = swift_allocBox();
  swift_storeEnumTagMultiPayload();
  v7 = [a1 asset];
  v8 = *MEMORY[0x277CE5E30];
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v6;
  v9[4] = a2;
  v9[5] = a3;
  v12[4] = sub_20C500740;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20C499B34;
  v12[3] = &block_descriptor_11;
  v10 = _Block_copy(v12);
  v11 = a1;

  swift_unknownObjectRetain();

  [v7 loadMediaSelectionGroupForMediaCharacteristic:v8 completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_20C4FFF38(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a1;
  v60 = a6;
  v57 = a3;
  v58 = a5;
  v7 = type metadata accessor for MediaPlayerMediaSelectionChanged(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C59D63C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C5A01CC();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  if (!a2)
  {
    v55 = v12;
    v56 = v14;
    v61 = v13;
    v54 = v10;
    v30 = v57;
    if (v59)
    {
      v62 = v20;
      v31 = v59;
      v32 = [v30 currentMediaSelection];
      v33 = [v32 selectedMediaOptionInMediaSelectionGroup_];

      if (v33)
      {
        v34 = [v33 locale];
        if (v34)
        {
          v35 = v16;
          v36 = v34;
          sub_20C59D58C();

          v37 = [v33 mediaType];
          v38 = sub_20C5A039C();
          v40 = v39;
          if (v38 == sub_20C5A039C() && v40 == v41)
          {
          }

          else
          {
            v43 = sub_20C5A0E9C();

            if ((v43 & 1) == 0)
            {
              v48 = sub_20C5A039C();
              v50 = v49;
              if (v48 == sub_20C5A039C() && v50 == v51)
              {
              }

              else
              {
                v52 = sub_20C5A0E9C();

                if ((v52 & 1) == 0)
                {
                  (*(v56 + 8))(v16, v61);

                  v20 = v62;
                  goto LABEL_18;
                }
              }

              [v33 hasMediaCharacteristic_];
              [v33 hasMediaCharacteristic_];

              v53 = v55;
              (*(v56 + 32))(v55, v16, v61);
              swift_storeEnumTagMultiPayload();
              v45 = v62;
              swift_beginAccess();
              v46 = v53;
              goto LABEL_17;
            }

            v35 = v16;
          }

          v44 = v55;
          (*(v56 + 32))(v55, v35, v61);
          swift_storeEnumTagMultiPayload();
          v45 = v62;
          swift_beginAccess();
          v46 = v44;
LABEL_17:
          sub_20C4E2020(v46, v45);
          v20 = v45;
          goto LABEL_18;
        }
      }

      v20 = v62;
    }

LABEL_18:
    v47 = v20;
    swift_beginAccess();
    sub_20C500754(v47, v9);
    swift_getObjectType();
    sub_20C5007B8();
    sub_20C59F5FC();
    return sub_20C500810(v9);
  }

  v21 = a2;
  sub_20C59FE5C();
  v22 = a2;
  v23 = sub_20C5A01BC();
  v24 = sub_20C5A089C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v65[0] = v26;
    *v25 = 136315138;
    swift_getErrorValue();
    v27 = MEMORY[0x20F2FF3F0](v63, v64);
    v29 = sub_20C479640(v27, v28, v65);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_20C472000, v23, v24, "Error loading media selection group: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x20F2FFF90](v26, -1, -1);
    MEMORY[0x20F2FFF90](v25, -1, -1);
  }

  else
  {
  }

  return (*(v61 + 8))(v19, v62);
}

uint64_t sub_20C5005A8(void *a1)
{
  v2 = sub_20C5A01CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C59FE5C();
  sub_20C5A01AC();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  [a1 duration];
  time.value = CMTimeGetSeconds(&time);
  sub_20C5008C0();
  return sub_20C59F5FC();
}

uint64_t sub_20C500754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaPlayerMediaSelectionChanged.Subtitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C5007B8()
{
  result = qword_27C7C4FF8;
  if (!qword_27C7C4FF8)
  {
    type metadata accessor for MediaPlayerMediaSelectionChanged(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C4FF8);
  }

  return result;
}

uint64_t sub_20C500810(uint64_t a1)
{
  v2 = type metadata accessor for MediaPlayerMediaSelectionChanged(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C50086C()
{
  result = qword_27C7C6110;
  if (!qword_27C7C6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C6110);
  }

  return result;
}

unint64_t sub_20C5008C0()
{
  result = qword_27C7C5408;
  if (!qword_27C7C5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5408);
  }

  return result;
}

uint64_t SessionArchiverError.hashValue.getter(unsigned __int8 a1)
{
  sub_20C5A0FBC();
  MEMORY[0x20F2FF470](a1);
  return sub_20C5A0FFC();
}

unint64_t sub_20C5009A8()
{
  result = qword_27C7C5410;
  if (!qword_27C7C5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5410);
  }

  return result;
}

uint64_t AssetClientProtocol.fetchArtwork(_:size:priority:cropCode:fileType:)@<X0>(char *a1@<X1>, void (*a2)(char *, void, uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, void (*a7)(void, void)@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v20 = sub_20C59EA5C();
  AssetClientProtocol.fetchArtwork(_:size:priority:cropCode:fileType:expirationPolicy:)(v20, v21, a1, a2, a3, a4, a5, 1, a8, a9, a10, 1u, a6, a7);
}

void AssetClientProtocol.fetchArtwork(_:size:priority:cropCode:fileType:expirationPolicy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void (*a4)(char *, void, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void (*a8)(unint64_t, char *, uint64_t)@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, unsigned __int8 a12, uint64_t a13, void (*a14)(void, void))
{
  v118 = a8;
  v130 = a6;
  v131 = a7;
  v125 = a4;
  v126 = a5;
  v119 = a3;
  v136 = a2;
  v137 = a1;
  v138 = a9;
  v133 = a14;
  LODWORD(v117) = a12;
  v134 = *(a13 - 8);
  MEMORY[0x28223BE20](a1);
  v128 = v16;
  v132 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A60);
  v121 = *(v17 - 8);
  v18 = *(v121 + 64);
  MEMORY[0x28223BE20](v17);
  v120 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v104 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v21 = *(v122 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v122);
  v123 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v135 = &v104 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v104 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4AC0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v104 - v29;
  v31 = sub_20C59D37C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v34);
  v38 = &v104 - v37;
  if (a10 != 0.0 || a11 != 0.0)
  {
    v113 = v36;
    v115 = a13;
    v124 = v35;
    v114 = v27;
    v42 = [objc_opt_self() mainScreen];
    [v42 scale];
    v44 = v43;

    if (v44 * a10 <= -2147483650.0)
    {
      __break(1u);
    }

    else if (v44 * a10 < 2147483650.0)
    {
      v45 = v44 * a11;
      v46 = COERCE__INT64(fabs(v44 * a11)) > 0x7FEFFFFFFFFFFFFFLL;
      if (COERCE__INT64(fabs(v44 * a10)) <= 0x7FEFFFFFFFFFFFFFLL && !v46)
      {
        if (v45 > -2147483650.0)
        {
          if (v45 < 2147483650.0)
          {
            v109 = v18;
            v110 = v22;
            v111 = v17;
            v116 = v38;
            v112 = v21;

            sub_20C59D2EC();
            v47 = v124;
            if ((*(v32 + 48))(v30, 1) == 1)
            {
              sub_20C477B50(v30, &qword_27C7C4AC0);
              v48 = sub_20C59D6EC();
              sub_20C504838(&qword_27C7C5418, MEMORY[0x277D4FDC8]);
              v49 = swift_allocError();
              (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D4FD28], v48);
              *(swift_allocObject() + 16) = v49;
              sub_20C479154(0, &qword_2810F3D80);
              sub_20C59EAAC();
            }

            else
            {
              v105 = v33;
              v106 = *(v32 + 32);
              v107 = v32 + 32;
              v106(v116, v30, v47);
              v51 = v115;
              v52 = v137;
              v108 = v32;
              v53 = v136;
              v54 = v129;
              sub_20C59F18C();
              v55 = v134;
              v56 = v134[2];
              v119 = (v134 + 2);
              v125 = v56;
              v56(v132, v54, v51);
              v57 = v53;
              v126 = *(v55 + 80);
              v58 = (v126 + 32) & ~v126;
              v117 = v126 | 7;
              v59 = v52;
              v60 = (v128 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
              v61 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
              v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
              v63 = swift_allocObject();
              v64 = v133;
              *(v63 + 16) = v51;
              *(v63 + 24) = v64;
              v65 = v55[4];
              v134 = v55 + 4;
              v118 = v65;
              v65(v63 + v58, v132, v51);
              v66 = (v63 + v60);
              *v66 = v59;
              v66[1] = v57;
              *(v63 + v61) = v44;
              v67 = (v63 + v62);
              *v67 = a10;
              v67[1] = a11;
              v68 = (v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8));
              v69 = v131;
              *v68 = v130;
              v68[1] = v69;
              v70 = v121;
              v71 = v120;
              v72 = v127;
              v73 = v111;
              (*(v121 + 16))(v120, v127, v111);
              v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
              v75 = (v109 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
              v76 = swift_allocObject();
              (*(v70 + 32))(v76 + v74, v71, v73);
              v77 = (v76 + v75);
              *v77 = sub_20C504164;
              v77[1] = v63;
              v130 = sub_20C479154(0, &qword_2810F3D80);

              sub_20C59EA9C();
              (*(v70 + 8))(v72, v73);
              v78 = v108;
              v79 = v113;
              v80 = v124;
              (*(v108 + 16))(v113, v116, v124);
              v81 = v132;
              v82 = v115;
              v125(v132, v129, v115);
              v83 = (*(v78 + 80) + 32) & ~*(v78 + 80);
              v84 = (v105 + v83 + v126) & ~v126;
              v85 = swift_allocObject();
              v86 = v133;
              *(v85 + 16) = v82;
              *(v85 + 24) = v86;
              v106((v85 + v83), v79, v80);
              v118(v85 + v84, v81, v82);
              v87 = swift_allocObject();
              *(v87 + 16) = sub_20C504248;
              *(v87 + 24) = v85;
              v88 = v112;
              v89 = *(v112 + 16);
              v132 = (v112 + 16);
              v134 = v89;
              v91 = v122;
              v90 = v123;
              (v89)(v123, v135, v122);
              v92 = (*(v88 + 80) + 16) & ~*(v88 + 80);
              v131 = v92;
              v93 = (v110 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
              v94 = swift_allocObject();
              v129 = *(v88 + 32);
              v95 = v90;
              v96 = v91;
              v129(v94 + v92, v95, v91);
              v97 = (v94 + v93);
              *v97 = sub_20C50432C;
              v97[1] = v87;
              v98 = v114;
              sub_20C59EA9C();
              v133 = *(v88 + 8);
              v99 = v135;
              v133(v135, v91);
              v100 = swift_allocObject();
              *(v100 + 16) = a10;
              *(v100 + 24) = a11;
              v101 = v136;
              *(v100 + 32) = v137;
              *(v100 + 40) = v101;
              (v134)(v99, v98, v91);
              v102 = swift_allocObject();
              v129(v102 + v131, v99, v96);
              v103 = (v102 + v93);
              *v103 = sub_20C504420;
              v103[1] = v100;

              sub_20C59EA9C();
              v133(v98, v96);
              (*(v108 + 8))(v116, v124);
            }

            return;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }

  v39 = sub_20C59D6EC();
  sub_20C504838(&qword_27C7C5418, MEMORY[0x277D4FDC8]);
  v40 = swift_allocError();
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D4FCD0], v39);
  *(swift_allocObject() + 16) = v40;
  sub_20C479154(0, &qword_2810F3D80);

  sub_20C59EAAC();
}

uint64_t sub_20C5017FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v40 = a8;
  v41 = a2;
  v44 = a6;
  v45 = a4;
  v42 = a5;
  v43 = a3;
  v39 = a1;
  v46 = a9;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1);
  v20 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v12, v21, v19);
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  *(v27 + 16) = a7;
  *(v27 + 24) = v28;
  (*(v17 + 32))(v27 + v22, v20, a7);
  v29 = (v27 + v23);
  v30 = v39;
  v31 = v41;
  v32 = v42;
  *v29 = v39;
  v29[1] = v31;
  *(v27 + v24) = a10;
  v33 = (v27 + v25);
  *v33 = a11;
  v33[1] = a12;
  v34 = (v27 + v26);
  v36 = v44;
  v35 = v45;
  *v34 = v32;
  v34[1] = v36;
  v37 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v43;
  v37[1] = v35;
  sub_20C4BFD7C(v30, v31);
  sub_20C479154(0, &qword_2810F3D80);

  return sub_20C59EA9C();
}

id sub_20C5019FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v43 = a3;
  v48 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v47 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v46 = &v37 - v7;
  v8 = sub_20C59D37C();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C5A01CC();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5420);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v49 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
  v18 = sub_20C59D6EC();
  v19 = swift_dynamicCast();
  v20 = *(*(v18 - 8) + 56);
  if (v19)
  {
    v21 = *(v18 - 8);
    v39 = v6;
    v20(v16, 0, 1, v18);
    v22 = (*(v21 + 88))(v16, v18);
    v23 = *MEMORY[0x277D4FD38];
    (*(v21 + 8))(v16, v18);
    if (v22 == v23)
    {
      sub_20C59FDFC();
      v24 = v40;
      (*(v40 + 16))(v10, v48, v8);
      v25 = sub_20C5A01BC();
      v26 = sub_20C5A08AC();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v49 = v28;
        *v27 = 141558274;
        *(v27 + 4) = 1752392040;
        *(v27 + 12) = 2080;
        v38 = v26;
        v37 = sub_20C59D2FC();
        v30 = v29;
        (*(v24 + 8))(v10, v8);
        v31 = sub_20C479640(v37, v30, &v49);

        *(v27 + 14) = v31;
        _os_log_impl(&dword_20C472000, v25, v38, "fetchArtwork - unable to decode bytes, so marking asset entry failed for %{mask.hash}s", v27, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x20F2FFF90](v28, -1, -1);
        MEMORY[0x20F2FFF90](v27, -1, -1);
      }

      else
      {

        (*(v24 + 8))(v10, v8);
      }

      (*(v41 + 8))(v13, v42);
      v32 = v39;
      v33 = v46;
      sub_20C59F15C();
      v34 = sub_20C59EABC();
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = 0;
      v34(sub_20C490920, v35);

      (*(v47 + 8))(v33, v32);
    }
  }

  else
  {
    v20(v16, 1, 1, v18);
    sub_20C477B50(v16, &qword_27C7C5420);
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_20C501F48@<X0>(id *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>)
{
  v37 = a3;
  v11 = sub_20C5A01CC();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  [*a1 size];
  v41.width = a5;
  v41.height = a6;
  if (!CGSizeEqualToSize(v40, v41))
  {
    v33 = a2;
    v34 = v12;
    v35 = v11;
    v36 = a4;
    v38 = 40;
    v39 = 0xE100000000000000;
    [v16 size];
    v17 = sub_20C5A075C();
    MEMORY[0x20F2FE9A0](v17);

    MEMORY[0x20F2FE9A0](8236, 0xE200000000000000);
    [v16 size];
    v18 = sub_20C5A075C();
    MEMORY[0x20F2FE9A0](v18);

    MEMORY[0x20F2FE9A0](41, 0xE100000000000000);
    v19 = v39;
    v32 = v38;
    v38 = 40;
    v39 = 0xE100000000000000;
    v20 = sub_20C5A075C();
    MEMORY[0x20F2FE9A0](v20);

    MEMORY[0x20F2FE9A0](8236, 0xE200000000000000);
    v21 = sub_20C5A075C();
    MEMORY[0x20F2FE9A0](v21);

    MEMORY[0x20F2FE9A0](41, 0xE100000000000000);
    v22 = v38;
    v23 = v39;
    sub_20C59FDFC();

    v24 = sub_20C5A01BC();
    v25 = sub_20C5A089C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v38 = v27;
      *v26 = 136446722;
      v28 = sub_20C479640(v32, v19, &v38);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2082;
      v29 = sub_20C479640(v22, v23, &v38);

      *(v26 + 14) = v29;
      *(v26 + 22) = 2082;
      *(v26 + 24) = sub_20C479640(v33, v37, &v38);
      _os_log_impl(&dword_20C472000, v24, v25, "Unexpected image size (%{public}s) != %{public}s for URL: %{public}s", v26, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2FFF90](v27, -1, -1);
      MEMORY[0x20F2FFF90](v26, -1, -1);
    }

    else
    {
    }

    (*(v34 + 8))(v15, v35);
  }

  *(swift_allocObject() + 16) = v16;
  sub_20C479154(0, &qword_2810F3D80);
  v30 = v16;
  return sub_20C59EAAC();
}

uint64_t sub_20C5022F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v64 = a7;
  v65 = a8;
  v63 = a6;
  v60 = a5;
  v59 = a4;
  v58 = a14;
  v62 = a12;
  v67 = sub_20C5A020C();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C5A023C();
  v68 = *(v21 - 8);
  v69 = v21;
  MEMORY[0x28223BE20](v21);
  v61 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a13 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v55 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_20C5A021C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  v56 = v30;
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;
  sub_20C479154(0, &qword_2810F3D90);
  (*(v27 + 104))(v29, *MEMORY[0x277D851C0], v26);

  v57 = sub_20C5A090C();
  (*(v27 + 8))(v29, v26);
  (*(v23 + 16))(&v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a13);
  v31 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v32 = (v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = a13;
  *(v37 + 24) = v38;
  (*(v23 + 32))(v37 + v31, v55, a13);
  v39 = (v37 + v32);
  v40 = v59;
  v41 = v60;
  *v39 = v59;
  v39[1] = v41;
  *(v37 + v33) = a9;
  v42 = (v37 + v34);
  *v42 = a10;
  v42[1] = a11;
  v43 = (v37 + v35);
  v44 = v64;
  *v43 = v63;
  v43[1] = v44;
  v45 = (v37 + v36);
  v46 = v62;
  *v45 = v65;
  v45[1] = v46;
  v47 = (v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  v48 = v56;
  *v47 = sub_20C4959AC;
  v47[1] = v48;
  aBlock[4] = sub_20C504754;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20C4F8F74;
  aBlock[3] = &block_descriptor_12;
  v49 = _Block_copy(aBlock);
  sub_20C4BFD7C(v40, v41);

  v50 = v61;
  sub_20C5A022C();
  v71 = MEMORY[0x277D84F90];
  sub_20C504838(&qword_2810F3E00, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
  sub_20C495A30();
  v52 = v66;
  v51 = v67;
  sub_20C5A0AEC();
  v53 = v57;
  MEMORY[0x20F2FEDA0](0, v50, v52, v49);
  _Block_release(v49);

  (*(v70 + 8))(v52, v51);
  (*(v68 + 8))(v50, v69);
}

uint64_t sub_20C502884(double a1, double a2, double a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12)
{
  v46 = a10;
  v47 = a11;
  v44 = a9;
  v19 = sub_20C5A01CC();
  v45 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C5A020C();
  v50 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C5A023C();
  v48 = *(v25 - 8);
  v49 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C504880(a5, a6, a7, a8, a1, a2, a3);
  if (v28)
  {
    v29 = v28;
    sub_20C479154(0, &qword_2810F3D90);
    v30 = sub_20C5A08EC();
    v31 = swift_allocObject();
    v31[2] = v47;
    v31[3] = a12;
    v31[4] = v29;
    v55 = sub_20C495AF4;
    v56 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_20C4F8F74;
    v54 = &block_descriptor_98;
    v32 = _Block_copy(&aBlock);

    v33 = v29;

    sub_20C5A022C();
    aBlock = MEMORY[0x277D84F90];
    sub_20C504838(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v27, v24, v32);
    _Block_release(v32);
  }

  else
  {
    v43 = v19;
    v34 = v47;
    sub_20C59FE2C();

    v35 = sub_20C5A01BC();
    v36 = sub_20C5A089C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_20C479640(v44, v46, &aBlock);
      _os_log_impl(&dword_20C472000, v35, v36, "Failed to create image from artwork template: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x20F2FFF90](v38, -1, -1);
      MEMORY[0x20F2FFF90](v37, -1, -1);
    }

    (*(v45 + 8))(v21, v43);
    sub_20C479154(0, &qword_2810F3D90);
    v30 = sub_20C5A08EC();
    v39 = swift_allocObject();
    *(v39 + 16) = v34;
    *(v39 + 24) = a12;
    v55 = sub_20C504A14;
    v56 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_20C4F8F74;
    v54 = &block_descriptor_92;
    v40 = _Block_copy(&aBlock);

    sub_20C5A022C();
    aBlock = MEMORY[0x277D84F90];
    sub_20C504838(&qword_2810F3E00, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60D0);
    sub_20C495A30();
    sub_20C5A0AEC();
    MEMORY[0x20F2FEDA0](0, v27, v24, v40);
    _Block_release(v40);
  }

  (*(v50 + 8))(v24, v22);
  return (*(v48 + 8))(v27, v49);
}

void sub_20C502E88(void (*a1)(void *, uint64_t))
{
  v2 = sub_20C59D6EC();
  sub_20C504838(&qword_27C7C5418, MEMORY[0x277D4FDC8]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D4FD38], v2);
  a1(v3, 1);
}

uint64_t sub_20C502F6C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_20C59EA9C();
}

uint64_t sub_20C503010(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  sub_20C479154(0, &qword_2810F3D80);

  return sub_20C59EA9C();
}

uint64_t sub_20C5030C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C46D8);

  return sub_20C59EA9C();
}

uint64_t sub_20C5031A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;

  v10 = a1;
  a5(0);

  return sub_20C59EA9C();
}

void sub_20C503280(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_20C48D05C(v6);
}

void sub_20C503314(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_20C4C0054(v6, 0);
}

uint64_t sub_20C5033A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v20[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v20 - v17;
  a3(a5, v16);
  swift_storeEnumTagMultiPayload();
  sub_20C4E1800(v11, v14, a6);
  sub_20C4E1800(v14, v18, a6);
  (v20[0])(v18);
  return sub_20C477B50(v18, a6);
}

uint64_t sub_20C503658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  v13 = sub_20C59EABC();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a4;
  v14[5] = a5;

  v13(a9, v14);
}

uint64_t sub_20C503718(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5970);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  if (a2)
  {
    a5(a1);
    v14 = sub_20C59EABC();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;

    v14(sub_20C4907D4, v15);

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;
    return a3(&v17);
  }
}

void sub_20C5038A4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, __n128))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C59EABC();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20C4907D4, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    v17 = a1;
    a3(&v18);
    sub_20C48D05C(a1);
  }
}

void sub_20C503A40(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *, __n128))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A20);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  if (a2)
  {
    a5(a1, v12);
    v15 = sub_20C59EABC();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_20C4C00E8, v16);

    (*(v11 + 8))(v14, v10);
  }

  else
  {
    v17 = a1;
    v18 = 0;

    a3(&v17);
    sub_20C4C0054(a1, 0);
  }
}

uint64_t sub_20C503BE0(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A48);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20C4775E4(a1, v22 - v15, &qword_27C7C4A48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C48173C, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C59D72C();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20C477B50(v13, &qword_27C7C4A48);
  }
}

uint64_t sub_20C503E7C(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a5;
  v23 = a2;
  v24 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C49D8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4A80);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (v22 - v15);
  sub_20C4775E4(a1, v22 - v15, &qword_27C7C4A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    a4(*v16);
    v18 = sub_20C59EABC();
    v19 = swift_allocObject();
    *(v19 + 16) = v23;
    *(v19 + 24) = v24;

    v18(sub_20C48173C, v19);

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = sub_20C59D37C();
    (*(*(v21 - 8) + 32))(v13, v16, v21);
    swift_storeEnumTagMultiPayload();
    v23(v13);
    return sub_20C477B50(v13, &qword_27C7C4A80);
  }
}

uint64_t sub_20C504164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(*(v2 + 16) - 8) + 64) + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C5017FC(*a1, *(a1 + 8), *(v2 + v3), *(v2 + v3 + 8), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + 16), *(v2 + 24), a2, *(v2 + v4), *(v2 + v5), *(v2 + v5 + 8));
}

id sub_20C504248(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_20C59D37C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_20C5019FC(a1, v1 + v6, v1 + ((v6 + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80)), v3, v4);
}

uint64_t sub_20C504334(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C5A00) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20C503658(a1, a2, v2 + v6, *v7, v7[1], &unk_27C7C5A00, &unk_20C5A58B0, &unk_2823702E8, sub_20C504604);
}

uint64_t sub_20C504454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20C50451C()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20C504688(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C5022F8(a1, a2, v2 + v3, *(v2 + v4), *(v2 + v4 + 8), *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + v5), *(v2 + v6), *(v2 + v6 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_20C504754()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_20C502884(*(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), v0 + v1, *(v0 + v2), *(v0 + v2 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_20C504838(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_20C504880(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      return 0;
    }
  }

  else if (v8)
  {
    if (a1 == a1 >> 32)
    {
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    return 0;
  }

  if (sub_20C59EC0C() == a3 && v13 == a4)
  {

LABEL_13:
    v15 = sub_20C59EC4C();
    v16 = a7;
    v17 = a5 * a7;
    if (v15 == 2)
    {
      v18 = a5 * a6;
    }

    else
    {
      v18 = a6;
    }

    if (v15 == 2)
    {
      v19 = v17;
    }

    else
    {
      v19 = v16;
    }

    v20 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v21 = sub_20C59D3BC();
    v22 = [v20 initWithData:v21 immediateLoadWithMaxSize:v18 scale:{v19, a5}];
    goto LABEL_21;
  }

  v14 = sub_20C5A0E9C();

  if (v14)
  {
    goto LABEL_13;
  }

  v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v21 = sub_20C59D3BC();
  v22 = [v23 initWithData:v21 scale:a5];
LABEL_21:
  v24 = v22;

  return v24;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C504A64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_20C504AAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

SeymourMedia::QualityReportingEntity_optional __swiftcall QualityReportingEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_20C5A0D9C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t QualityReportingEntity.rawValue.getter()
{
  if (*v0)
  {
    return 0x74756F6B726F77;
  }

  else
  {
    return 0x72656C69617274;
  }
}

uint64_t sub_20C504BAC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x74756F6B726F77;
  }

  else
  {
    v2 = 0x72656C69617274;
  }

  if (*a2)
  {
    v3 = 0x74756F6B726F77;
  }

  else
  {
    v3 = 0x72656C69617274;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_20C5A0E9C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_20C504C34@<X0>(char *a1@<X8>)
{
  v2 = sub_20C5A0D9C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_20C504C94(uint64_t *a1@<X8>)
{
  v2 = 0x72656C69617274;
  if (*v1)
  {
    v2 = 0x74756F6B726F77;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_20C504CD0()
{
  result = qword_27C7C5428;
  if (!qword_27C7C5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7C5428);
  }

  return result;
}

uint64_t sub_20C504D24()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C504D9C()
{
  sub_20C5A049C();
}

uint64_t sub_20C504DF8()
{
  sub_20C5A0FBC();
  sub_20C5A049C();

  return sub_20C5A0FFC();
}

uint64_t sub_20C504E6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4660);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5478);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5368);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v31 = v0;
  sub_20C506E58();
  v13 = sub_20C59E12C();
  v14 = v0;
  v15 = swift_dynamicCast();
  v16 = *(v13 - 8);
  (*(v16 + 56))(v12, v15 ^ 1u, 1, v13);
  if ((*(v16 + 48))(v12, 1, v13) == 1)
  {
    sub_20C477B50(v12, &qword_27C7C5368);
    v17 = 0;
  }

  else
  {
    v17 = sub_20C5458A0();
    (*(v16 + 8))(v12, v13);
  }

  v31 = v14;
  sub_20C507044(&qword_27C7C5458, sub_20C506E58);
  if (sub_20C5A0F1C() == 0xD000000000000014 && 0x800000020C5AB9C0 == v18)
  {

LABEL_8:
    sub_20C5A0F0C();
    sub_20C59DA2C();
    goto LABEL_10;
  }

  v19 = sub_20C5A0E9C();

  if (v19)
  {
    goto LABEL_8;
  }

  v20 = sub_20C59DA3C();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_10:
  v21 = sub_20C59DA3C();
  (*(*(v21 - 8) + 48))(v9, 1, v21);
  sub_20C477B50(v9, &qword_27C7C5478);
  sub_20C505330(v6);
  v22 = sub_20C59DF9C();
  (*(*(v22 - 8) + 48))(v6, 1, v22);
  sub_20C477B50(v6, &qword_27C7C5470);
  v31 = v14;
  v23 = v14;
  v24 = sub_20C5A0E7C();
  if (v24)
  {
    v25 = v24;

    v26 = v25;
  }

  else
  {
    v26 = swift_allocError();
    *v27 = v23;
  }

  FairPlayError.init(_:)(v26, v3);
  v28 = sub_20C59DB5C();
  (*(*(v28 - 8) + 48))(v3, 1, v28);
  sub_20C477B50(v3, &qword_27C7C4660);
  return v17 & 1;
}

uint64_t sub_20C505330@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5368);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v15 - v4);
  v16 = v1;
  sub_20C506E58();
  v6 = sub_20C59E12C();
  v7 = v1;
  v8 = swift_dynamicCast();
  v9 = *(*(v6 - 8) + 56);
  if (v8)
  {
    v10 = *(v6 - 8);
    v9(v5, 0, 1, v6);
    if ((*(v10 + 88))(v5, v6) == *MEMORY[0x277D50EC8])
    {
      (*(v10 + 96))(v5, v6);
      if (*v5)
      {
        v16 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7C60C0);
        v11 = sub_20C59DF9C();
        v12 = swift_dynamicCast();
        return (*(*(v11 - 8) + 56))(a1, v12 ^ 1u, 1, v11);
      }
    }

    else
    {
      (*(v10 + 8))(v5, v6);
    }
  }

  else
  {
    v9(v5, 1, 1, v6);
    sub_20C477B50(v5, &qword_27C7C5368);
  }

  v14 = sub_20C59DF9C();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_20C50558C(uint64_t a1, char a2)
{
  *(v3 + 400) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  v4 = sub_20C59D4CC();
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C4588);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = type metadata accessor for StreamingKeyFailureAnalyticsEvent();
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7C5440);
  *(v3 + 328) = swift_task_alloc();
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  v5 = sub_20C5A010C();
  *(v3 + 352) = v5;
  *(v3 + 360) = *(v5 - 8);
  *(v3 + 368) = swift_task_alloc();
  *(v3 + 376) = swift_task_alloc();
  *(v3 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C505794, v2, 0);
}

uint64_t sub_20C505794()
{
  v1 = v0[32];
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_20C505854;
  v5 = v0[43];

  return MEMORY[0x2821AFC40](v5, v2, v3);
}

uint64_t sub_20C505854()
{
  v2 = *v1;

  v3 = *(v2 + 256);
  if (v0)
  {

    v4 = sub_20C5061E4;
  }

  else
  {
    v4 = sub_20C50598C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_20C50598C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 344);
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v3 + 32))(v1, v4, v2);
  v5 = sub_20C504E6C();
  v6 = 1;
  if ((v5 & 1) == 0)
  {
    v6 = sub_20C506A40();
  }

  v88 = v6;
  v7 = *(v0 + 376);
  v8 = *(v0 + 352);
  v9 = *(v0 + 360);
  v10 = *(v0 + 320);
  v11 = *(v0 + 304);
  v12 = *(v0 + 272);
  v90 = *(v0 + 264);
  v91 = *(v0 + 400);
  v13 = *(v0 + 256);
  v84 = *(v0 + 248);
  v86 = v8;
  v75 = *(v9 + 16);
  v75(v7, *(v0 + 384), v8);
  v76 = v11[9];
  v77 = *(v12 + 16);
  v77(v10 + v76, v13 + OBJC_IVAR____TtC12SeymourMedia32StreamingKeyFailureEventReporter_contentKeySessionIdentifier, v90);
  v75(v10, v7, v8);
  swift_getErrorValue();
  v14 = sub_20C5A0F5C();
  v15 = (v10 + v11[5]);
  v82 = v14;
  v83 = v16;
  *v15 = v14;
  v15[1] = v16;
  swift_getErrorValue();
  v17 = sub_20C5A0F6C();
  v19 = v18;
  v20 = *(v9 + 8);
  v20(v7, v86);
  v21 = (v10 + v11[6]);
  v87 = v17;
  *v21 = v17;
  v21[1] = v19;
  v80 = v19;
  *(v10 + v11[7]) = v91;
  v22 = v88;
  *(v10 + v11[8]) = v88;
  v89 = v11;
  v23 = v10 + v11[10];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v0 + 232) = v84;
  v24 = sub_20C59E4BC();
  *(v0 + 40) = v24;
  *(v0 + 48) = sub_20C507044(&qword_27C7C5448, MEMORY[0x277D51F70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51EE8], v24);
  sub_20C506E58();
  sub_20C507044(&qword_27C7C5458, sub_20C506E58);
  LOBYTE(v24) = sub_20C5A0F2C();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if ((v24 & 1) == 0)
  {
    goto LABEL_11;
  }

  v26 = [*(v0 + 248) userInfo];
  v27 = sub_20C5A02BC();

  if (!*(v27 + 16) || (v28 = sub_20C4820C8(0xD000000000000019, 0x800000020C5ACD70), (v29 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_20C479AA8(*(v27 + 56) + 32 * v28, v0 + 136);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v44 = v0 + 56;
    v45 = *(v0 + 384);
    v46 = *(v0 + 352);
    v47 = *(v0 + 320);
    v48 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((*(v0 + 256) + 152), *(*(v0 + 256) + 176));
    *(v0 + 80) = v48;
    *(v0 + 88) = sub_20C507044(&qword_27C7C5460, type metadata accessor for StreamingKeyFailureAnalyticsEvent);
    v49 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_20C506EA4(v47, v49);
    sub_20C59F77C();
    sub_20C506F08(v47);
    v20(v45, v46);
    goto LABEL_12;
  }

  v85 = v20;
  v31 = *(v0 + 352);
  v30 = *(v0 + 360);
  v33 = *(v0 + 328);
  v32 = *(v0 + 336);
  v34 = *(v0 + 296);
  v36 = *(v0 + 264);
  v35 = *(v0 + 272);
  v74 = *(v0 + 240);
  (*(v30 + 56))(v32, 1, 1, v31);
  (*(v35 + 56))(v34, 1, 1, v36);
  sub_20C506F64(v32, v33);
  v37 = *(v30 + 48);
  v38 = v37(v33, 1, v31);
  v39 = *(v0 + 368);
  if (v38 == 1)
  {
    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v75(v39, *(v0 + 320), v40);
    v42 = v37(v41, 1, v40);
    v43 = v80;
    if (v42 != 1)
    {
      sub_20C477B50(*(v0 + 328), &qword_27C7C5440);
    }
  }

  else
  {
    (*(*(v0 + 360) + 32))(v39, *(v0 + 328), *(v0 + 352));
    v43 = v80;
  }

  v52 = *(v0 + 336);
  v54 = *(v0 + 288);
  v53 = *(v0 + 296);
  v56 = *(v0 + 264);
  v55 = *(v0 + 272);

  sub_20C477B50(v52, &qword_27C7C5440);
  sub_20C506FD4(v53, v54);
  v57 = *(v55 + 48);
  v58 = v57(v54, 1, v56);
  v59 = *(v0 + 280);
  v60 = *(v0 + 288);
  if (v58 == 1)
  {
    v61 = *(v0 + 264);
    v77(v59, v10 + v76, v61);
    v62 = v57(v60, 1, v61);

    v63 = v43;
    if (v62 != 1)
    {
      sub_20C477B50(*(v0 + 288), &qword_27C7C4588);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(v59, *(v0 + 288), *(v0 + 264));

    v63 = v43;
  }

  v78 = *(v0 + 352);
  v64 = *(v0 + 312);
  v79 = *(v0 + 320);
  v81 = *(v0 + 384);
  v65 = *(v0 + 304);
  v67 = *(v0 + 272);
  v66 = *(v0 + 280);
  v69 = *(v0 + 256);
  v68 = *(v0 + 264);
  (*(*(v0 + 360) + 32))(v64, *(v0 + 368));
  v70 = (v64 + v89[5]);
  *v70 = v82;
  v70[1] = v83;
  v71 = (v64 + v89[6]);
  *v71 = v87;
  v71[1] = v63;
  *(v64 + v89[7]) = v91;
  *(v64 + v89[8]) = v22;
  (*(v67 + 32))(v64 + v89[9], v66, v68);
  v72 = v64 + v89[10];
  *v72 = v74;
  *(v72 + 8) = 0;
  __swift_project_boxed_opaque_existential_1((v69 + 152), *(v69 + 176));
  *(v0 + 120) = v65;
  *(v0 + 128) = sub_20C507044(&qword_27C7C5460, type metadata accessor for StreamingKeyFailureAnalyticsEvent);
  v44 = v0 + 96;
  v73 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_20C506EA4(v64, v73);
  sub_20C59F77C();
  sub_20C506F08(v64);
  sub_20C506F08(v79);
  v85(v81, v78);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1Tm(v44);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_20C5061E4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  (*(v3 + 56))(*(v0 + 344), 1, 1, v2);
  (*(v3 + 104))(v1, *MEMORY[0x277D4FA98], v2);
  v4 = sub_20C504E6C();
  v5 = 1;
  if ((v4 & 1) == 0)
  {
    v5 = sub_20C506A40();
  }

  v87 = v5;
  v6 = *(v0 + 376);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  v9 = *(v0 + 320);
  v10 = *(v0 + 304);
  v11 = *(v0 + 272);
  v89 = *(v0 + 264);
  v90 = *(v0 + 400);
  v12 = *(v0 + 256);
  v83 = *(v0 + 248);
  v85 = v7;
  v74 = *(v8 + 16);
  v74(v6, *(v0 + 384), v7);
  v75 = v10[9];
  v76 = *(v11 + 16);
  v76(v9 + v75, v12 + OBJC_IVAR____TtC12SeymourMedia32StreamingKeyFailureEventReporter_contentKeySessionIdentifier, v89);
  v74(v9, v6, v7);
  swift_getErrorValue();
  v13 = sub_20C5A0F5C();
  v14 = (v9 + v10[5]);
  v81 = v13;
  v82 = v15;
  *v14 = v13;
  v14[1] = v15;
  swift_getErrorValue();
  v16 = sub_20C5A0F6C();
  v18 = v17;
  v19 = *(v8 + 8);
  v19(v6, v85);
  v20 = (v9 + v10[6]);
  v86 = v16;
  *v20 = v16;
  v20[1] = v18;
  v79 = v18;
  *(v9 + v10[7]) = v90;
  v21 = v87;
  *(v9 + v10[8]) = v87;
  v88 = v10;
  v22 = v9 + v10[10];
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v0 + 232) = v83;
  v23 = sub_20C59E4BC();
  *(v0 + 40) = v23;
  *(v0 + 48) = sub_20C507044(&qword_27C7C5448, MEMORY[0x277D51F70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v23 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D51EE8], v23);
  sub_20C506E58();
  sub_20C507044(&qword_27C7C5458, sub_20C506E58);
  LOBYTE(v23) = sub_20C5A0F2C();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  if ((v23 & 1) == 0)
  {
    goto LABEL_11;
  }

  v25 = [*(v0 + 248) userInfo];
  v26 = sub_20C5A02BC();

  if (!*(v26 + 16) || (v27 = sub_20C4820C8(0xD000000000000019, 0x800000020C5ACD70), (v28 & 1) == 0))
  {

    goto LABEL_11;
  }

  sub_20C479AA8(*(v26 + 56) + 32 * v27, v0 + 136);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v43 = v0 + 56;
    v44 = *(v0 + 384);
    v45 = *(v0 + 352);
    v46 = *(v0 + 320);
    v47 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((*(v0 + 256) + 152), *(*(v0 + 256) + 176));
    *(v0 + 80) = v47;
    *(v0 + 88) = sub_20C507044(&qword_27C7C5460, type metadata accessor for StreamingKeyFailureAnalyticsEvent);
    v48 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_20C506EA4(v46, v48);
    sub_20C59F77C();
    sub_20C506F08(v46);
    v19(v44, v45);
    goto LABEL_12;
  }

  v84 = v19;
  v30 = *(v0 + 352);
  v29 = *(v0 + 360);
  v32 = *(v0 + 328);
  v31 = *(v0 + 336);
  v33 = *(v0 + 296);
  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v73 = *(v0 + 240);
  (*(v29 + 56))(v31, 1, 1, v30);
  (*(v34 + 56))(v33, 1, 1, v35);
  sub_20C506F64(v31, v32);
  v36 = *(v29 + 48);
  v37 = v36(v32, 1, v30);
  v38 = *(v0 + 368);
  if (v37 == 1)
  {
    v39 = *(v0 + 352);
    v40 = *(v0 + 328);
    v74(v38, *(v0 + 320), v39);
    v41 = v36(v40, 1, v39);
    v42 = v79;
    if (v41 != 1)
    {
      sub_20C477B50(*(v0 + 328), &qword_27C7C5440);
    }
  }

  else
  {
    (*(*(v0 + 360) + 32))(v38, *(v0 + 328), *(v0 + 352));
    v42 = v79;
  }

  v51 = *(v0 + 336);
  v53 = *(v0 + 288);
  v52 = *(v0 + 296);
  v55 = *(v0 + 264);
  v54 = *(v0 + 272);

  sub_20C477B50(v51, &qword_27C7C5440);
  sub_20C506FD4(v52, v53);
  v56 = *(v54 + 48);
  v57 = v56(v53, 1, v55);
  v58 = *(v0 + 280);
  v59 = *(v0 + 288);
  if (v57 == 1)
  {
    v60 = *(v0 + 264);
    v76(v58, v9 + v75, v60);
    v61 = v56(v59, 1, v60);

    v62 = v42;
    if (v61 != 1)
    {
      sub_20C477B50(*(v0 + 288), &qword_27C7C4588);
    }
  }

  else
  {
    (*(*(v0 + 272) + 32))(v58, *(v0 + 288), *(v0 + 264));

    v62 = v42;
  }

  v77 = *(v0 + 352);
  v63 = *(v0 + 312);
  v78 = *(v0 + 320);
  v80 = *(v0 + 384);
  v64 = *(v0 + 304);
  v66 = *(v0 + 272);
  v65 = *(v0 + 280);
  v68 = *(v0 + 256);
  v67 = *(v0 + 264);
  (*(*(v0 + 360) + 32))(v63, *(v0 + 368));
  v69 = (v63 + v88[5]);
  *v69 = v81;
  v69[1] = v82;
  v70 = (v63 + v88[6]);
  *v70 = v86;
  v70[1] = v62;
  *(v63 + v88[7]) = v90;
  *(v63 + v88[8]) = v21;
  (*(v66 + 32))(v63 + v88[9], v65, v67);
  v71 = v63 + v88[10];
  *v71 = v73;
  *(v71 + 8) = 0;
  __swift_project_boxed_opaque_existential_1((v68 + 152), *(v68 + 176));
  *(v0 + 120) = v64;
  *(v0 + 128) = sub_20C507044(&qword_27C7C5460, type metadata accessor for StreamingKeyFailureAnalyticsEvent);
  v43 = v0 + 96;
  v72 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
  sub_20C506EA4(v63, v72);
  sub_20C59F77C();
  sub_20C506F08(v63);
  sub_20C506F08(v78);
  v84(v80, v77);
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1Tm(v43);

  v49 = *(v0 + 8);

  return v49();
}