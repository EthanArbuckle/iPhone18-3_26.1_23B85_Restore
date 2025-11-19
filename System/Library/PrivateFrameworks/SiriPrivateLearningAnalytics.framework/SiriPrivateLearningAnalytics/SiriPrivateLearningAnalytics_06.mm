uint64_t sub_222A99A14@<X0>(char *a1@<X8>)
{
  v2 = sub_222B02E48();

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

uint64_t sub_222A99A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x454C4C45434E4143;
  }

  else
  {
    v4 = 0x414D5249464E4F43;
  }

  if (v3)
  {
    v5 = 0xEF4F4E5F4E4F4954;
  }

  else
  {
    v5 = 0xE900000000000044;
  }

  if (*a2)
  {
    v6 = 0x454C4C45434E4143;
  }

  else
  {
    v6 = 0x414D5249464E4F43;
  }

  if (*a2)
  {
    v7 = 0xE900000000000044;
  }

  else
  {
    v7 = 0xEF4F4E5F4E4F4954;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A99B2C()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99BC0()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A99C40()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A99CDC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_222A99D38(uint64_t *a1@<X8>)
{
  v2 = 0x414D5249464E4F43;
  if (*v1)
  {
    v2 = 0x454C4C45434E4143;
  }

  v3 = 0xEF4F4E5F4E4F4954;
  if (*v1)
  {
    v3 = 0xE900000000000044;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222A99D88(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_222B02DC8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_222B02CC8();
  *v1 = result;
  return result;
}

void *sub_222A99E28(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A99E80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
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
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&unk_27D01E360, &qword_27D01DB88, &qword_222B0B2E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB88, &qword_222B0B2E0);
            v9 = sub_222A6E00C(v13, i, a3);
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
        sub_222A250BC(0, &qword_280CB4BB0, 0x277D5A790);
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

uint64_t sub_222A9A020(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
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
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&qword_27D01DBA8, &qword_27D01DBA0, &qword_222B0B2F0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DBA0, &qword_222B0B2F0);
            v9 = sub_222A6DF8C(v13, i, a3);
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
        type metadata accessor for Turn();
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

uint64_t sub_222A9A1B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_222B02DC8();
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
      result = sub_222B02DC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_222A9DBC8(&qword_27D01DB98, &qword_27D01DB90, &qword_222B0B2E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DB90, &qword_222B0B2E8);
            v9 = sub_222A6E1A4(v13, i, a3);
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
        sub_222A250BC(0, &qword_27D01C9F8, 0x277CBEBC0);
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

uint64_t sub_222A9A350(void *a1)
{
  v2 = sub_222B01638();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 count];
  v9 = v8;
  if (v8)
  {
    if (v8 < 1)
    {
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v12 = v11 - 32;
      if (v11 < 32)
      {
        v12 = v11 - 1;
      }

      v10[2] = v9;
      v10[3] = 2 * (v12 >> 5);
    }
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10[3];

  result = sub_222B028B8();
  if (v9 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = v13 >> 1;
  v16 = v10 + 4;
  if (v9)
  {
    v15 -= v9;
    sub_222A9AC64(&unk_280CB8318, MEMORY[0x277CC9178]);
    do
    {
      result = sub_222B02B48();
      if (!v36)
      {
        goto LABEL_38;
      }

      sub_222A250AC(&v35, v16);
      v16 += 2;
    }

    while (--v9);
  }

  v32 = v3;
  sub_222A9AC64(&unk_280CB8318, MEMORY[0x277CC9178]);
  sub_222B02B48();
  if (v34)
  {
    while (1)
    {
      result = sub_222A250AC(&v33, &v35);
      if (!v15)
      {
        v17 = v10[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01C968, &qword_222B04928);
        v20 = swift_allocObject();
        v21 = _swift_stdlib_malloc_size(v20);
        v22 = v21 - 32;
        if (v21 < 32)
        {
          v22 = v21 - 1;
        }

        v23 = v22 >> 5;
        v20[2] = v19;
        v20[3] = 2 * (v22 >> 5);
        v24 = (v20 + 4);
        v25 = v10[3] >> 1;
        if (v10[2])
        {
          v26 = v10 + 4;
          if (v20 != v10 || v24 >= v26 + 32 * v25)
          {
            memmove(v20 + 4, v26, 32 * v25);
          }

          v10[2] = 0;
        }

        v16 = (v24 + 32 * v25);
        v15 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - v25;

        v10 = v20;
      }

      v27 = __OFSUB__(v15--, 1);
      if (v27)
      {
        break;
      }

      sub_222A250AC(&v35, v16);
      v16 += 2;
      sub_222B02B48();
      if (!v34)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_30:
  (*(v32 + 8))(v7, v2);
  result = sub_222A34F20(&v33, &unk_27D01CB00, &qword_222B08ED0);
  v28 = v10[3];
  if (v28 < 2)
  {
    return v10;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v15);
  v30 = v29 - v15;
  if (!v27)
  {
    v10[2] = v30;
    return v10;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

char *sub_222A9A6E4(void *a1)
{
  v1 = [a1 entitiesPresenteds];
  if (v1)
  {
    v2 = v1;
    sub_222A250BC(0, &qword_27D01DC10, 0x277D57560);
    v3 = sub_222B025F8();

    if (v3 >> 62)
    {
LABEL_23:
      v4 = sub_222B02DC8();
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v6 = MEMORY[0x277D84F90];
        do
        {
          v7 = v5;
          while (1)
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x223DC6F00](v7, v3);
            }

            else
            {
              if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v8 = *(v3 + 8 * v7 + 32);
            }

            v9 = v8;
            v5 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v10 = [v8 entityId];
            if (v10)
            {
              break;
            }

            ++v7;
            if (v5 == v4)
            {
              goto LABEL_25;
            }
          }

          v11 = v10;
          v12 = sub_222B02388();
          v18 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_222AA8C78(0, *(v6 + 2) + 1, 1, v6);
          }

          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v6 = sub_222AA8C78((v14 > 1), v15 + 1, 1, v6);
          }

          *(v6 + 2) = v15 + 1;
          v16 = &v6[16 * v15];
          *(v16 + 4) = v12;
          *(v16 + 5) = v18;
        }

        while (v5 != v4);
        goto LABEL_25;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x277D84F90];
LABEL_25:

    return v6;
  }

  return 0;
}

id sub_222A9A8C8(uint64_t *a1, id *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v46 - v7;
  v9 = *a2;
  result = [*a2 linkId];
  if (!result)
  {
    return result;
  }

  v11 = result;
  v12 = [result value];
  if (!v12)
  {

    v31 = sub_222B018D8();
    (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
    return sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  }

  v13 = v12;
  v14 = sub_222B01798();
  v16 = v15;

  sub_222A67044(v14, v16, v8);
  sub_222A26530(v14, v16);
  v17 = sub_222B018D8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    return sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  }

  v19 = sub_222B01868();
  v21 = v20;
  (*(v18 + 8))(v8, v17);
  v22 = sub_222A9A6E4(v9);
  if (!v22)
  {
    v23 = *a1;
    if (*(*a1 + 16) && (v24 = sub_222A26EC8(v19, v21), (v25 & 1) != 0))
    {
      v26 = (*(v23 + 56) + 24 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];

      swift_bridgeObjectRetain_n();
      v30 = v27;
      v22 = v27;
    }

    else
    {
      v22 = 0;
      v30 = 1;
    }

    sub_222A9DC1C(v30);
  }

  v32 = [v9 entitySelected];
  if (v32 && (v33 = v32, v34 = [v32 entityId], v33, v34))
  {
    v35 = sub_222B02388();
    v37 = v36;
  }

  else
  {
    v38 = *a1;
    if (*(*a1 + 16) && (v39 = sub_222A26EC8(v19, v21), (v40 & 1) != 0))
    {
      v41 = (*(v38 + 56) + 24 * v39);
      v42 = *v41;
      v35 = v41[1];
      v37 = v41[2];
      swift_bridgeObjectRetain_n();
    }

    else
    {
      v37 = 0;
      v35 = 0;
      v43 = 1;
    }

    sub_222A9DC1C(v43);
  }

  v44 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *a1;
  sub_222AE991C(v22, v35, v37, v19, v21, isUniquelyReferenced_nonNull_native);

  *a1 = v47;
  return result;
}

uint64_t sub_222A9AC64(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_222A9ACAC(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 flowState];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 resolvedSlotName];

    if (v6)
    {
      v7 = sub_222B02388();
      v9 = v8;

      v10 = [v3 flowState];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 flowStateType];

        if (v12 <= 0x29)
        {
          if (((1 << v12) & 0x43408) != 0 || ((1 << v12) & 0x34000000024) != 0)
          {
            goto LABEL_12;
          }

          if (v12 == 11)
          {
            if (sub_222A97538(v7, v9, *a1) & 1) != 0 || (sub_222A97538(v7, v9, a1[1]))
            {
              goto LABEL_13;
            }

            goto LABEL_12;
          }
        }

        if (v12 == 136)
        {
LABEL_12:
          sub_222AE3FC4(&v13, v7, v9);
        }
      }

LABEL_13:
    }
  }
}

uint64_t sub_222A9AE28(unint64_t a1)
{
  v18 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC6F00](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v14 = v4;
      sub_222A9ACAC(&v15, &v14);

      ++v3;
      if (v6 == i)
      {
        v7 = v15;
        v8 = v16;
        v9 = v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v9 = MEMORY[0x277D84FA0];
  v8 = MEMORY[0x277D84FA0];
  v7 = MEMORY[0x277D84FA0];
LABEL_15:
  v10 = sub_222A96824(v7, type metadata accessor for PromptBeginSlotName, &qword_27D01DC08, type metadata accessor for PromptBeginSlotName);
  sub_222A96BDC(v10);
  v11 = sub_222A96824(v8, type metadata accessor for PromptEndSlotName, &qword_280CB6E88, type metadata accessor for PromptEndSlotName);
  sub_222A96BDC(v11);
  v12 = sub_222A96824(v9, type metadata accessor for PromptBeginSlotName, &qword_27D01DC08, type metadata accessor for PromptBeginSlotName);

  sub_222A96BDC(v12);
  return v18;
}

unint64_t sub_222A9B03C(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    while (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v3 = sub_222B02DC8();
      if (!v3)
      {
        return v3;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DC6F00](v3, a1);
      goto LABEL_10;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_18;
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v5 = *(a1 + 32 + 8 * v3);
LABEL_10:
    v6 = v5;
    v7 = [v5 flowState];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 flowStateType];

      v10 = *(a2 + 16);
      v11 = (a2 + 32);
      while (v10)
      {
        v12 = *v11++;
        --v10;
        if (v12 == v9)
        {

          return v3;
        }
      }
    }
  }

  return v3;
}

id sub_222A9B194(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v20 - v5;
  result = [a1 platformRelatedContext];
  if (result)
  {
    v8 = result;
    v9 = [result entityContextValue];

    if (v9)
    {
      v10 = [v9 linkId];

      if (v10)
      {
        v11 = [v10 value];
        if (v11)
        {
          v12 = v11;
          v13 = sub_222B01798();
          v15 = v14;

          sub_222A67044(v13, v15, v6);
          sub_222A26530(v13, v15);
          v16 = sub_222B018D8();
          v17 = *(v16 - 8);
          if ((*(v17 + 48))(v6, 1, v16) != 1)
          {
            v18 = sub_222B01868();
            (*(v17 + 8))(v6, v16);
            return v18;
          }
        }

        else
        {

          v19 = sub_222B018D8();
          (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
        }

        sub_222A34F20(v6, &unk_27D01DA50, &unk_222B04E20);
      }
    }

    return 0;
  }

  return result;
}

void *sub_222A9B3B8(unint64_t a1, uint64_t a2)
{
  v54 = a1;
  v4 = sub_222A9B03C(a1, &unk_2835F1268);
  if (v5)
  {
    goto LABEL_17;
  }

  v55 = v4;
  sub_222A6E52C(&v55, &v51);
  v6 = v51;
  if (!v51)
  {
    goto LABEL_17;
  }

  v7 = sub_222A9B194(v51);
  if (!v8)
  {
    goto LABEL_16;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_16;
  }

  v9 = sub_222A26EC8(v7, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_16:

LABEL_17:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v12 = (*(a2 + 56) + 24 * v9);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  if (*v12)
  {
    v50 = v12[1];
    v16 = type metadata accessor for PromptBeginCandidates(0);
    v49 = swift_allocObject();
    *(v49 + 16) = v13;

    swift_bridgeObjectRetain_n();
    v17 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
    v19 = v17[2];
    v18 = v17[3];
    if (v19 >= v18 >> 1)
    {
      v17 = sub_222AA8FDC((v18 > 1), v19 + 1, 1, v17);
    }

    v52 = v16;
    v53 = sub_222A9AC64(&qword_27D01DC00, type metadata accessor for PromptBeginCandidates);
    *&v51 = v49;
    v17[2] = v19 + 1;
    sub_222A2577C(&v51, &v17[5 * v19 + 4]);

    v14 = v50;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v43 = v12[2];

    v17 = MEMORY[0x277D84F90];
    if (v15)
    {
LABEL_10:
      v20 = type metadata accessor for PromptEndResultEntity(0);
      v21 = swift_allocObject();
      *(v21 + 16) = v14;
      *(v21 + 24) = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
      }

      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        v17 = sub_222AA8FDC((v22 > 1), v23 + 1, 1, v17);
      }

      v52 = v20;
      v53 = sub_222A9AC64(&qword_27D01DBF0, type metadata accessor for PromptEndResultEntity);
      *&v51 = v21;
      v17[2] = v23 + 1;
      sub_222A2577C(&v51, &v17[5 * v23 + 4]);
      goto LABEL_18;
    }
  }

LABEL_18:
  v54 = a1;
  v24 = sub_222A9B03C(a1, &unk_2835F1290);
  v26 = MEMORY[0x28223BE20](v24, v25);
  if (v27)
  {
    return v17;
  }

  v55 = v26;
  sub_222A6E52C(&v55, &v51);
  v28 = v51;
  if (!v51)
  {
    return v17;
  }

  v29 = sub_222A9B194(v51);
  if (!v30)
  {
    goto LABEL_31;
  }

  if (!*(a2 + 16))
  {

    goto LABEL_31;
  }

  v31 = sub_222A26EC8(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0)
  {
    goto LABEL_31;
  }

  v34 = (*(a2 + 56) + 24 * v31);
  v35 = *v34;
  v36 = v34[1];
  v37 = v34[2];
  if (*v34)
  {
    v38 = type metadata accessor for PromptEndCandidates(0);
    v39 = swift_allocObject();
    *(v39 + 16) = v35;

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
    }

    v41 = v17[2];
    v40 = v17[3];
    if (v41 >= v40 >> 1)
    {
      v17 = sub_222AA8FDC((v40 > 1), v41 + 1, 1, v17);
    }

    v52 = v38;
    v53 = sub_222A9AC64(&qword_27D01DBF8, type metadata accessor for PromptEndCandidates);
    *&v51 = v39;
    v17[2] = v41 + 1;
    sub_222A2577C(&v51, &v17[5 * v41 + 4]);

    if (!v37)
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  v44 = v34[2];

  if (!v37)
  {
LABEL_31:

    return v17;
  }

LABEL_36:
  v45 = type metadata accessor for PromptEndResultEntity(0);
  v46 = swift_allocObject();
  *(v46 + 16) = v36;
  *(v46 + 24) = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_222AA8FDC(0, v17[2] + 1, 1, v17);
  }

  v48 = v17[2];
  v47 = v17[3];
  if (v48 >= v47 >> 1)
  {
    v17 = sub_222AA8FDC((v47 > 1), v48 + 1, 1, v17);
  }

  v52 = v45;
  v53 = sub_222A9AC64(&qword_27D01DBF0, type metadata accessor for PromptEndResultEntity);
  *&v51 = v46;
  v17[2] = v48 + 1;
  sub_222A2577C(&v51, &v17[5 * v48 + 4]);
  return v17;
}

uint64_t sub_222A9B940(uint64_t a1, int *a2, char a3)
{
  v3 = *a2;
  if (*a2 > 37)
  {
    if ((v3 - 38) < 2)
    {
      v4 = "END-CONFIRMATION";
      goto LABEL_12;
    }

    if (v3 != 40)
    {
      if (v3 != 41)
      {
        return result;
      }

      if (a3)
      {
        v7 = sub_222B02F78();

        if ((v7 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }
    }

    v6 = 0x8000000222B10210;
    v5 = 0xD000000000000010;
LABEL_20:
    sub_222AE3FC4(&v9, v5, v6);
  }

  v4 = "BLE";
  if ((v3 - 12) < 2)
  {
LABEL_12:
    v5 = 0xD000000000000012;
    v6 = v4 | 0x8000000000000000;
    if ((v3 - 12) >= 2 && v3 != 38 && v3 != 18)
    {
    }

    goto LABEL_20;
  }

  if (v3 == 10)
  {
    v6 = 0x8000000222B101F0;
    v5 = 0xD000000000000014;
    goto LABEL_20;
  }

  if (v3 == 18)
  {
    goto LABEL_12;
  }

  return result;
}

void *sub_222A9BB0C(unint64_t a1, unsigned __int8 *a2)
{
  LODWORD(v3) = *a2;
  v47 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = a1 & 0xC000000000000001;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    j = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_222B02DC8();
  v6 = a1 & 0xC000000000000001;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  j = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v6)
      {
        v10 = MEMORY[0x223DC6F00](v9, a1);
      }

      else
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 flowState];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v5)
      {
        goto LABEL_23;
      }
    }

    v13 = v12;
    v14 = [v12 flowStateType];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      j = sub_222AA9210(0, *(j + 16) + 1, 1, j);
    }

    v16 = *(j + 16);
    v15 = *(j + 24);
    if (v16 >= v15 >> 1)
    {
      j = sub_222AA9210((v15 > 1), v16 + 1, 1, j);
    }

    *(j + 16) = v16 + 1;
    *(j + 4 * v16 + 32) = v14;
  }

  while (v7 != v5);
LABEL_23:
  i = MEMORY[0x277D84FA0];
  *&v43 = MEMORY[0x277D84FA0];
  *(&v43 + 1) = MEMORY[0x277D84FA0];
  v18 = *(j + 16);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (i >= *(j + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v46 = *(j + 32 + 4 * i);
      sub_222A9B940(&v43, &v46, v3);
    }

    i = *(&v43 + 1);
    v18 = v43;
  }

  else
  {
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = sub_222A96824(v18, type metadata accessor for PromptBeginEventType, &qword_27D01DBE8, type metadata accessor for PromptBeginEventType);
  sub_222A96BDC(v19);
  v20 = sub_222A96824(i, type metadata accessor for PromptEndEventType, &qword_27D01DBE0, type metadata accessor for PromptEndEventType);

  sub_222A96BDC(v20);
  if (v5)
  {
    j = 0;
    while (1)
    {
      if (v6)
      {
        v21 = MEMORY[0x223DC6F00](j, a1);
      }

      else
      {
        if (j >= *(v4 + 16))
        {
          goto LABEL_71;
        }

        v21 = *(a1 + 8 * j + 32);
      }

      v22 = v21;
      v23 = (j + 1);
      if (__OFADD__(j, 1))
      {
        goto LABEL_70;
      }

      v24 = [v21 flowState];
      if (v24)
      {
        i = v24;
        v18 = [v24 flowStateType];

        if (v18 == 5)
        {
          v18 = type metadata accessor for PromptEndResultAction(0);
          i = swift_allocObject();
          *(i + 16) = 0x454C4C45434E4143;
          *(i + 24) = 0xE900000000000044;
          j = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_74;
          }

          while (1)
          {
            v27 = *(j + 16);
            v26 = *(j + 24);
            v28 = v27 + 1;
            if (v27 >= v26 >> 1)
            {
              j = sub_222AA8FDC((v26 > 1), v27 + 1, 1, j);
            }

            v44 = v18;
            v45 = sub_222A9AC64(&qword_27D01DBD8, type metadata accessor for PromptEndResultAction);
            *&v43 = i;
            *(j + 16) = v28;
            sub_222A2577C(&v43, j + 40 * v27 + 32);
            v47 = j;
            if (v3 == 1)
            {
              v29 = 0x8000000222B10230;
              i = type metadata accessor for PromptEndEventType(0);
              v30 = swift_allocObject();
              v3 = v30;
              v31 = 0xD000000000000012;
            }

            else
            {
              if (v3)
              {
                goto LABEL_51;
              }

              v29 = 0x8000000222B10210;
              i = type metadata accessor for PromptEndEventType(0);
              v30 = swift_allocObject();
              v3 = v30;
              v31 = 0xD000000000000010;
            }

            *(v30 + 16) = v31;
            *(v30 + 24) = v29;
            v32 = *(j + 24);
            v18 = (v27 + 2);
            if ((v27 + 2) > (v32 >> 1))
            {
              j = sub_222AA8FDC((v32 > 1), v27 + 2, 1, j);
            }

            v44 = i;
            v45 = sub_222A9AC64(&qword_27D01DBE0, type metadata accessor for PromptEndEventType);
            *&v43 = v3;
            *(j + 16) = v18;
            sub_222A2577C(&v43, j + 40 * v28 + 32);
            v47 = j;
LABEL_51:
            if (!v5)
            {
              return v47;
            }

            for (j = 0; ; ++j)
            {
              if (v6)
              {
                v33 = MEMORY[0x223DC6F00](j, a1);
              }

              else
              {
                if (j >= *(v4 + 16))
                {
                  goto LABEL_73;
                }

                v33 = *(a1 + 8 * j + 32);
              }

              v34 = v33;
              v18 = (j + 1);
              if (__OFADD__(j, 1))
              {
                break;
              }

              v35 = [v33 flowState];
              if (v35)
              {
                v3 = v35;
                i = [v35 flowStateType];

                if (i == 41)
                {
                  v36 = type metadata accessor for PromptEndResultAction(0);
                  v37 = swift_allocObject();
                  *(v37 + 16) = 0x414D5249464E4F43;
                  *(v37 + 24) = 0xEF4F4E5F4E4F4954;
                  v38 = v47;
                  v39 = swift_isUniquelyReferenced_nonNull_native();
                  if ((v39 & 1) == 0)
                  {
                    v38 = sub_222AA8FDC(0, v38[2] + 1, 1, v38);
                  }

                  v41 = v38[2];
                  v40 = v38[3];
                  if (v41 >= v40 >> 1)
                  {
                    v38 = sub_222AA8FDC((v40 > 1), v41 + 1, 1, v38);
                  }

                  v44 = v36;
                  v45 = sub_222A9AC64(&qword_27D01DBD8, type metadata accessor for PromptEndResultAction);
                  *&v43 = v37;
                  v38[2] = v41 + 1;
                  sub_222A2577C(&v43, &v38[5 * v41 + 4]);
                  return v38;
                }
              }

              else
              {
              }

              if (v18 == v5)
              {
                return v47;
              }
            }

LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            j = sub_222AA8FDC(0, *(j + 16) + 1, 1, j);
          }
        }
      }

      else
      {
      }

      ++j;
      if (v23 == v5)
      {
        goto LABEL_51;
      }
    }
  }

  return v47;
}

void *sub_222A9C210(unint64_t a1)
{
  v1 = a1;
  *&v65 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x223DC6F00](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 flowState];
      if (v7 && (v8 = v7, v9 = [v7 currentTaskName], v8, v9) && (sub_222B02388(), v9, v10 = sub_222AA855C(), , (v10 & 1) != 0))
      {
        sub_222B02D18();
        v11 = *(v65 + 16);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        v12 = v65;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v68 = v12;
  v13 = sub_222A9B03C(v12, &unk_2835F12B8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  if (v16)
  {
    goto LABEL_28;
  }

  v69 = v15;
  sub_222A6E41C(&v69, &v65);
  v17 = v65;
  if (!v65)
  {
    goto LABEL_28;
  }

  v18 = [v65 flowState];
  if (!v18 || (v19 = v18, v20 = [v18 currentTaskName], v19, !v20))
  {

LABEL_28:
    v26 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v21 = sub_222B02388();
  v23 = v22;

  v24 = type metadata accessor for PromptBeginTaskName(0);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v23;
  v26 = sub_222AA8FDC(0, 1, 1, MEMORY[0x277D84F90]);
  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_222AA8FDC((v27 > 1), v28 + 1, 1, v26);
  }

  v66 = v24;
  v67 = sub_222A9AC64(&qword_27D01DBD0, type metadata accessor for PromptBeginTaskName);
  *&v65 = v25;
  v26[2] = v28 + 1;
  sub_222A2577C(&v65, &v26[5 * v28 + 4]);
LABEL_29:
  v68 = v12;
  v29 = sub_222A9B03C(v12, &unk_2835F12F0);
  v31 = MEMORY[0x28223BE20](v29, v30);
  if (v32)
  {
    v33 = 0;
  }

  else
  {
    v69 = v31;
    sub_222A6E52C(&v69, &v65);
    v33 = v65;
  }

  if (v33)
  {
    v34 = [v33 flowState];
    if (!v34 || (v35 = v34, v36 = [v34 currentTaskName], v35, !v36))
    {

      if (i)
      {
        goto LABEL_41;
      }

LABEL_61:
      v46 = MEMORY[0x277D84F90];
      goto LABEL_62;
    }

    v37 = sub_222B02388();
    v39 = v38;

    v40 = type metadata accessor for PromptEndTaskName(0);
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_222AA8FDC(0, v26[2] + 1, 1, v26);
    }

    v43 = v26[2];
    v42 = v26[3];
    if (v43 >= v42 >> 1)
    {
      v26 = sub_222AA8FDC((v42 > 1), v43 + 1, 1, v26);
    }

    v66 = v40;
    v67 = sub_222A9AC64(&qword_27D01DBC8, type metadata accessor for PromptEndTaskName);
    *&v65 = v41;
    v26[2] = v43 + 1;
    sub_222A2577C(&v65, &v26[5 * v43 + 4]);
  }

  if (!i)
  {
    goto LABEL_61;
  }

LABEL_41:
  v44 = 0;
  v45 = v1 & 0xFFFFFFFFFFFFFF8;
  v46 = MEMORY[0x277D84F90];
  do
  {
    v47 = v44;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x223DC6F00](v47, v1);
        v44 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v47 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v49 = *(v1 + 8 * v47 + 32);
        v44 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      v50 = v49;
      v51 = [v50 flowState];
      if (v51)
      {
        break;
      }

      v48 = v50;
LABEL_44:

      ++v47;
      if (v44 == i)
      {
        goto LABEL_62;
      }
    }

    v48 = v51;
    v52 = [v48 currentTaskName];
    if (!v52)
    {

      goto LABEL_44;
    }

    v53 = v26;
    v54 = v52;
    v55 = sub_222B02388();
    v63 = v56;
    v64 = v55;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_222AA8C78(0, *(v46 + 2) + 1, 1, v46);
    }

    v26 = v53;
    v58 = *(v46 + 2);
    v57 = *(v46 + 3);
    if (v58 >= v57 >> 1)
    {
      v46 = sub_222AA8C78((v57 > 1), v58 + 1, 1, v46);
    }

    *(v46 + 2) = v58 + 1;
    v59 = &v46[16 * v58];
    *(v59 + 4) = v64;
    *(v59 + 5) = v63;
  }

  while (v44 != i);
LABEL_62:
  if (*(v46 + 2))
  {
    v45 = type metadata accessor for TurnTaskNames(0);
    v1 = swift_allocObject();
    *(v1 + 16) = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_71:
      v26 = sub_222AA8FDC(0, v26[2] + 1, 1, v26);
    }

    v61 = v26[2];
    v60 = v26[3];
    if (v61 >= v60 >> 1)
    {
      v26 = sub_222AA8FDC((v60 > 1), v61 + 1, 1, v26);
    }

    v66 = v45;
    v67 = sub_222A9AC64(qword_280CB7490, type metadata accessor for TurnTaskNames);
    *&v65 = v1;
    v26[2] = v61 + 1;
    sub_222A2577C(&v65, &v26[5 * v61 + 4]);
  }

  else
  {
  }

  return v26;
}

uint64_t sub_222A9C96C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = &off_2784BA000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223DC6F00](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 flowState];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[352];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA9210(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    v16 = v5;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_222AA9210((v14 > 1), v15 + 1, 1, v5);
    }

    v5 = v16;
    *(v16 + 2) = v15 + 1;
    *&v16[4 * v15 + 32] = v13;
    v6 = &off_2784BA000;
  }

  while (v4 != v3);
LABEL_23:
  v17 = *(v5 + 2);
  if (v17)
  {
    v18 = (v5 + 32);
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v22 = *v18++;
      v21 = v22;
      if (v22 == 26)
      {
        break;
      }

      if (v21 == 11)
      {
        v23 = 0xD000000000000019;
        v24 = "FLOWSTATETYPE_VALUE_UNSUPPORTED";
LABEL_31:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_222AA8C78(0, *(v19 + 2) + 1, 1, v19);
        }

        v26 = *(v19 + 2);
        v25 = *(v19 + 3);
        if (v26 >= v25 >> 1)
        {
          v19 = sub_222AA8C78((v25 > 1), v26 + 1, 1, v19);
        }

        *(v19 + 2) = v26 + 1;
        v20 = &v19[16 * v26];
        *(v20 + 4) = v23;
        *(v20 + 5) = v24 | 0x8000000000000000;
      }

      if (!--v17)
      {
        goto LABEL_36;
      }
    }

    v23 = 0xD00000000000001FLL;
    v24 = "END-DISAMBIGUATION";
    goto LABEL_31;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_36:

  sub_222A2244C(v19);

  v27 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v28 = sub_222B025D8();

  v29 = [v27 initWithArray_];

  v30 = sub_222A9A350(v29);
  v31 = sub_222A97118(v30);

  if (v31)
  {
    if (*(v31 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_222B05250;
      v33 = type metadata accessor for FlowTaskStateNames(0);
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v32 + 56) = v33;
      v35 = sub_222A9AC64(&qword_27D01DBC0, type metadata accessor for FlowTaskStateNames);
      result = v32;
      *(v32 + 64) = v35;
      *(v32 + 32) = v34;
      return result;
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_222A9CD28(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 flowState];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 resolvedSlotName];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = sub_222B02388();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA8C78(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_222AA8C78((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    v17 = &v5[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v4 != v3);
LABEL_24:
  v18 = 0;
  v19 = *(v5 + 2);
  v20 = MEMORY[0x277D84F90];
LABEL_25:
  v21 = &v5[16 * v18 + 40];
  while (v19 != v18)
  {
    if (v18 >= *(v5 + 2))
    {
      __break(1u);
      return;
    }

    ++v18;
    v22 = *(v21 - 1);
    v23 = *v21;

    v24 = sub_222B02E48();

    if (!v24)
    {
      v25 = 0;
      goto LABEL_32;
    }

    v21 += 16;
    if (v24 == 1)
    {
      v25 = 1;
LABEL_32:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_222AA9224(0, *(v20 + 2) + 1, 1, v20);
      }

      v27 = *(v20 + 2);
      v26 = *(v20 + 3);
      if (v27 >= v26 >> 1)
      {
        v20 = sub_222AA9224((v26 > 1), v27 + 1, 1, v20);
      }

      *(v20 + 2) = v27 + 1;
      v20[v27 + 32] = v25;
      goto LABEL_25;
    }
  }

  sub_222A2254C(v20);

  v28 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v29 = sub_222B025D8();

  v30 = [v28 initWithArray_];

  v31 = sub_222A9A350(v30);
  v32 = sub_222A9722C(v31);

  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    v34 = *(v32 + 16);
    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_222B05250;
      sub_222A23AE4(0, v34, 0);
      v35 = v33;
      v36 = *(v33 + 16);
      v37 = 16 * v36;
      v38 = 32;
      v39 = 0x746E65746E6F63;
      do
      {
        if (*(v32 + v38))
        {
          v40 = v39;
        }

        else
        {
          v40 = 0x6E65697069636572;
        }

        if (*(v32 + v38))
        {
          v41 = 0xE700000000000000;
        }

        else
        {
          v41 = 0xE900000000000074;
        }

        v49 = v35;
        v42 = *(v35 + 24);
        v43 = v36 + 1;
        if (v36 >= v42 >> 1)
        {
          v45 = v39;
          sub_222A23AE4((v42 > 1), v36 + 1, 1);
          v39 = v45;
          v35 = v49;
        }

        *(v35 + 16) = v43;
        v44 = v35 + v37;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v37 += 16;
        ++v38;
        v36 = v43;
        --v34;
      }

      while (v34);

      v46 = type metadata accessor for ResolvedSlots(0);
      v47 = swift_allocObject();
      *(v47 + 16) = v35;
      *(v48 + 56) = v46;
      *(v48 + 64) = sub_222A9AC64(&qword_27D01DBB8, type metadata accessor for ResolvedSlots);
      *(v48 + 32) = v47;
    }

    else
    {
    }
  }
}

void sub_222A9D1E8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_222B02DC8();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 appContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 bundleId];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = sub_222B02388();
    v14 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_222AA8C78(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_222AA8C78((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    v17 = &v5[16 * v16];
    *(v17 + 4) = v12;
    *(v17 + 5) = v14;
  }

  while (v4 != v3);
LABEL_24:
  v18 = *(v5 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v21 = &v5[16 * v19 + 40];
      v22 = v19;
      while (1)
      {
        if (v22 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_46;
        }

        v23 = *(v21 - 1);
        v24 = *v21;
        if (v23 != 0x6C7070615F746F6ELL || v24 != 0xEE00656C62616369)
        {
          v26 = *(v21 - 1);
          v27 = *v21;
          if ((sub_222B02F78() & 1) == 0)
          {
            break;
          }
        }

        ++v22;
        v21 += 16;
        if (v18 == v22)
        {
          goto LABEL_41;
        }
      }

      v39 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222A23AE4(0, *(v20 + 16) + 1, 1);
        v20 = v39;
      }

      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_222A23AE4((v28 > 1), v29 + 1, 1);
        v30 = v29 + 1;
        v20 = v39;
      }

      v19 = v22 + 1;
      *(v20 + 16) = v30;
      v31 = v20 + 16 * v29;
      *(v31 + 32) = v23;
      *(v31 + 40) = v24;
    }

    while (v18 - 1 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_41:

  v32 = sub_222A2E00C(v20);

  v33 = *(v32 + 16);
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_222B05250;
    v35 = sub_222A95D54(v33, 0);
    v36 = sub_222A95F5C(&v39, v35 + 4, v33, v32);
    sub_222A965EC();
    if (v36 == v33)
    {
      v37 = type metadata accessor for BundleIds(0);
      v38 = swift_allocObject();
      *(v38 + 16) = v35;
      *(v34 + 56) = v37;
      *(v34 + 64) = sub_222A9AC64(&qword_27D01DBB0, type metadata accessor for BundleIds);
      *(v34 + 32) = v38;
    }

    else
    {
LABEL_46:
      __break(1u);
    }
  }

  else
  {
  }
}

unint64_t sub_222A9D5D8()
{
  result = qword_27D01DAB8;
  if (!qword_27D01DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAB8);
  }

  return result;
}

unint64_t sub_222A9D630()
{
  result = qword_27D01DAC0;
  if (!qword_27D01DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAC0);
  }

  return result;
}

unint64_t sub_222A9D688()
{
  result = qword_27D01DAC8;
  if (!qword_27D01DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAC8);
  }

  return result;
}

unint64_t sub_222A9D6E0()
{
  result = qword_27D01DAD0;
  if (!qword_27D01DAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAD0);
  }

  return result;
}

unint64_t sub_222A9D738()
{
  result = qword_27D01DAD8;
  if (!qword_27D01DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAD8);
  }

  return result;
}

unint64_t sub_222A9D790()
{
  result = qword_27D01DAE0;
  if (!qword_27D01DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DAE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptEventType.PreviousTurn(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PromptEventType.PreviousTurn(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222A9DBC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_222A9DC1C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t IncrementalMigrationManager.__allocating_init(bundle:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_222A9DDF4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_222B02D08();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_222AA03D4(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_222A9E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = [objc_opt_self() defaultManager];
  sub_222B01738();
  v12 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_280CB8570);
    v19 = sub_222B02128();
    v23 = sub_222B028D8();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_222A1C000, v19, v23, "No store at provided url. Skipping migration steps.", v24, 2u);
      MEMORY[0x223DC7E30](v24, -1, -1);
    }

    goto LABEL_14;
  }

  sub_222A250BC(0, &qword_280CB4AF0, 0x277CBE4D8);
  v14 = sub_222B02A98();
  if (v5)
  {
    return;
  }

  v15 = v14;
  v16 = sub_222A9FBB8();
  if (!v16)
  {

    sub_222AA030C();
    swift_allocError();
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 1;
    swift_willThrow();
    return;
  }

  v17 = v16;
  if (sub_222AA1A24(v15, v16))
  {

    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v18 = sub_222B02148();
    __swift_project_value_buffer(v18, qword_280CB8570);
    v19 = sub_222B02128();
    v20 = sub_222B028D8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_222A1C000, v19, v20, "Model does not require migration. Skipping migration.", v21, 2u);
      MEMORY[0x223DC7E30](v21, -1, -1);
    }

LABEL_14:
    return;
  }

  v69 = v15;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v26 = sub_222B02148();
  __swift_project_value_buffer(v26, qword_280CB8570);
  v27 = sub_222B02128();
  v28 = sub_222B028D8();
  if (os_log_type_enabled(v27, v28))
  {
    v50 = v17;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_222A1C000, v27, v28, "Latest model is not compatible with store. Migration required.", v29, 2u);
    v30 = v29;
    v17 = v50;
    MEMORY[0x223DC7E30](v30, -1, -1);
  }

  v31 = [v17 versionIdentifiers];
  v32 = sub_222B027E8();

  *&v55 = v32;
  *(&v55 + 1) = sub_222A9FED4;
  *&v56 = 0;
  *(&v56 + 1) = sub_222AA161C;
  *&v57 = 0;
  *(&v57 + 1) = sub_222AA162C;
  *&v58 = 0;
  *(&v58 + 1) = sub_222A9FF2C;
  *&v59 = 0;
  *(&v59 + 1) = sub_222AA15F4;
  v60 = 0;
  v61 = sub_222AA1604;
  v62 = 0;
  v68 = 0;
  v65 = v57;
  v66 = v58;
  v67 = v59;
  v63 = v55;
  v64 = v56;
  v33 = sub_222AA0FF4();
  if (v35)
  {
    goto LABEL_34;
  }

  if (*(v32 + 36) != v34)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 == 1 << *(v32 + 32))
  {
    sub_222A34F20(&v55, &qword_27D01DC20, &qword_222B0B310);

    sub_222AA030C();
    swift_allocError();
    *v36 = xmmword_222B0B300;
    *(v36 + 16) = 1;
LABEL_25:
    swift_willThrow();

    return;
  }

  sub_222AA159C(v33, v34, v32, v52);
  sub_222A9FED4(v52, &v53);
  sub_222A2E350(v52);
  if (!v54)
  {
    goto LABEL_35;
  }

  v52[0] = v53;
  v52[1] = v54;
  sub_222A9FF2C(v52, &v53);

  if (v54 == 1)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v37 = v53;
  sub_222A34F20(&v55, &qword_27D01DC20, &qword_222B0B310);
  v38 = sub_222AA1C6C(a3, a4, *(v6 + 16));
  v49 = v37;
  sub_222AA263C(v69, v38);
  v40 = v39;
  v42 = v41;

  if (!v42)
  {

    sub_222AA030C();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 1;
    goto LABEL_25;
  }

  v43 = sub_222B02128();
  v44 = sub_222B028D8();
  if (os_log_type_enabled(v43, v44))
  {
    v51 = v17;
    v45 = swift_slowAlloc();
    *v45 = 134218240;
    *(v45 + 4) = v40;
    *(v45 + 12) = 2048;
    *(v45 + 14) = v49;
    _os_log_impl(&dword_222A1C000, v43, v44, "Store needs updating from model version %ld to %ld", v45, 0x16u);
    v46 = v45;
    v17 = v51;
    MEMORY[0x223DC7E30](v46, -1, -1);
  }

  v47 = sub_222AA281C(v40, v49, v38);

  sub_222A9E804(a1, v47, a2);
}

uint64_t sub_222A9E804(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v134 = *MEMORY[0x277D85DE8];
  v8 = sub_222B01748();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v130 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v117 = &v109 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v126 = &v109 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v116 = &v109 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v118 = &v109 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v109 - v27;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v29 = sub_222B02148();
  v30 = __swift_project_value_buffer(v29, qword_280CB8570);
  v31 = v9[2];
  v124 = v9 + 2;
  v122 = v31;
  (v31)(v28, a1, v8);

  v115 = v30;
  v32 = sub_222B02128();
  v33 = sub_222B028D8();
  v34 = os_log_type_enabled(v32, v33);
  v119 = v8;
  v120 = a3;
  v123 = a1;
  v125 = a2;
  v121 = v4;
  *&v111 = v9;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v132 = v36;
    *v35 = 134218242;
    *(v35 + 4) = a2[2];

    *(v35 + 12) = 2080;
    sub_222AA2B58(&qword_280CB8310);
    LODWORD(v128) = v33;
    v37 = sub_222B02F38();
    v39 = v38;
    v40 = v9[1];
    v40(v28, v119);
    v41 = sub_222A230FC(v37, v39, &v132);

    *(v35 + 14) = v41;
    v42 = (v9 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    _os_log_impl(&dword_222A1C000, v32, v128, "Performing %ld migrations to store at %s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v36);
    v43 = v36;
    v8 = v119;
    MEMORY[0x223DC7E30](v43, -1, -1);
    v44 = v35;
    a1 = v123;
    MEMORY[0x223DC7E30](v44, -1, -1);
  }

  else
  {

    v40 = v9[1];
    v42 = (v9 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v28, v8);
  }

  v45 = v116;
  sub_222B01708();
  v132 = 0x6974617267696D2ELL;
  v133 = 0xEB000000005F6E6FLL;
  v46 = v126;
  sub_222B016B8();
  v47 = sub_222B01698();
  v48 = a1;
  v50 = v49;
  v40(v46, v8);
  MEMORY[0x223DC66E0](v47, v50);

  v51 = v118;
  sub_222B016E8();

  v40(v45, v8);
  v52 = [objc_allocWithZone(MEMORY[0x277CBE450]) init];
  v114 = [objc_allocWithZone(MEMORY[0x277CBE4D8]) initWithManagedObjectModel_];

  v53 = [objc_opt_self() defaultManager];
  v54 = sub_222B016A8();
  v132 = 0;
  LODWORD(v50) = [v53 createDirectoryAtURL:v54 withIntermediateDirectories:1 attributes:0 error:&v132];

  v55 = v132;
  v56 = v117;
  if (!v50)
  {
    v91 = v132;
    sub_222B01628();

    swift_willThrow();
    v92 = v51;
LABEL_25:
    result = (v40)(v92, v8);
    goto LABEL_26;
  }

  (v122)(v117, v48, v8);
  v57 = v125;
  v58 = v125[2];
  if (!v58)
  {
    v93 = v55;
    v62 = v129;
LABEL_18:
    v94 = sub_222B02128();
    v95 = sub_222B028D8();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_222A1C000, v94, v95, "Migration complete. Replacing existing store.", v96, 2u);
      MEMORY[0x223DC7E30](v96, -1, -1);
    }

    v97 = v114;
    sub_222B02A88();
    if (!v62)
    {
      v98 = sub_222B02128();
      v99 = sub_222B028D8();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_222A1C000, v98, v99, "Cleaning up migrated store", v100, 2u);
        v101 = v100;
        v97 = v114;
        MEMORY[0x223DC7E30](v101, -1, -1);
      }

      sub_222B02A78();
    }

    v40(v56, v8);
    v102 = v118;
    sub_222A9F410();

    v92 = v102;
    goto LABEL_25;
  }

  v113 = objc_opt_self();
  v112 = *(v121 + 16);
  v110 = (v111 + 32);
  v59 = v55;
  v60 = (v57 + 7);
  *&v61 = 134218240;
  v109 = v61;
  v111 = xmmword_222B06DF0;
  v62 = v129;
  v127 = v42;
  v128 = v40;
  while (1)
  {
    v121 = v58;
    v122 = v60;
    v63 = *(v60 - 3);
    v64 = *(v60 - 2);
    v65 = *(v60 - 1);
    v66 = *v60;
    v67 = v63;
    v68 = v64;
    v69 = sub_222B02128();
    v70 = sub_222B028D8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = v109;
      *(v71 + 4) = v65;
      *(v71 + 12) = 2048;
      *(v71 + 14) = v66;
      _os_log_impl(&dword_222A1C000, v69, v70, "Migration step v%ld to v%ld", v71, 0x16u);
      MEMORY[0x223DC7E30](v71, -1, -1);
    }

    v124 = v65;
    v131 = v65;
    v132 = sub_222B02F38();
    v133 = v72;
    MEMORY[0x223DC66E0](1601139807, 0xE400000000000000);
    v125 = v66;
    v131 = v66;
    v73 = sub_222B02F38();
    MEMORY[0x223DC66E0](v73);

    v74 = v116;
    v75 = v118;
    sub_222B016E8();

    sub_222B01668();
    v76 = v130;
    sub_222B016F8();

    v77 = v128(v74, v8);
    v126 = MEMORY[0x223DC7570](v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
    v78 = swift_allocObject();
    *(v78 + 16) = v111;
    v79 = v112;
    *(v78 + 32) = v112;
    sub_222A250BC(0, &qword_27D01DC28, 0x277CCA8D8);
    v80 = v67;
    v81 = v68;
    v82 = v79;
    v83 = sub_222B025D8();

    v84 = [v113 mappingModelFromBundles:v83 forSourceModel:v80 destinationModel:v81];

    if (!v84)
    {
      sub_222AA030C();
      swift_allocError();
      v105 = v125;
      *v106 = v124;
      *(v106 + 8) = v105;
      *(v106 + 16) = 0;
      swift_willThrow();
      goto LABEL_29;
    }

    v85 = [objc_allocWithZone(MEMORY[0x277CBE468]) initWithSourceModel:v80 destinationModel:v81];
    v132 = v85;
    swift_getKeyPath();
    v129 = v62;
    v86 = swift_allocObject();
    v86[2] = v80;
    v86[3] = v81;
    v87 = v125;
    v86[4] = v124;
    v86[5] = v87;
    v124 = v80;
    v125 = v81;
    v88 = sub_222B01648();

    v56 = v117;
    v89 = v129;
    sub_222B029D8();
    v62 = v89;
    if (v89)
    {
      break;
    }

    sub_222B01608();

    objc_autoreleasePoolPop(v126);
    sub_222AA2B58(&qword_27D01DC30);
    v8 = v119;
    if ((sub_222B02338() & 1) == 0)
    {
      sub_222B02A78();
    }

    v40 = v128;
    v90 = v124;
    v60 = v122 + 4;
    v128(v56, v8);

    (*v110)(v56, v130, v8);
    v58 = v121 - 1;
    if (v121 == 1)
    {
      goto LABEL_18;
    }
  }

  v75 = v118;
  v76 = v130;
LABEL_29:
  objc_autoreleasePoolPop(v126);

  v107 = v119;
  v108 = v128;
  v128(v76, v119);
  v108(v117, v107);
  sub_222A9F410();

  result = (v108)(v75, v107);
LABEL_26:
  v104 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222A9F410()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_222B016A8();
  v15[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v15];

  if (v2)
  {
    v3 = qword_280CB8568;
    v4 = v15[0];
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_222B02148();
    __swift_project_value_buffer(v5, qword_280CB8570);
    v6 = sub_222B02128();
    v7 = sub_222B028D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_222A1C000, v6, v7, "Migration storage cleanup completed!", v8, 2u);
      MEMORY[0x223DC7E30](v8, -1, -1);
    }
  }

  else
  {
    v9 = v15[0];
    v10 = sub_222B01628();

    swift_willThrow();
    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v11 = sub_222B02148();
    __swift_project_value_buffer(v11, qword_280CB8570);
    v6 = sub_222B02128();
    v12 = sub_222B028E8();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_222A1C000, v6, v12, "Failed to cleanup migration directory! State may be left on the device.", v13, 2u);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_222A9F65C(void **a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (qword_280CB8568 != -1)
  {
    swift_once();
  }

  v11 = sub_222B02148();
  __swift_project_value_buffer(v11, qword_280CB8570);
  v12 = a3;
  v13 = a4;
  v14 = v10;
  oslog = sub_222B02128();
  v15 = sub_222B028D8();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    *(v16 + 4) = a5;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a6;

    *(v16 + 22) = 2048;
    [v14 migrationProgress];
    *(v16 + 24) = (v17 * 100.0);
    _os_log_impl(&dword_222A1C000, oslog, v15, "Migration %ld -> %ld progress: %f%%", v16, 0x20u);
    MEMORY[0x223DC7E30](v16, -1, -1);
    v18 = oslog;
  }

  else
  {

    v18 = v12;
  }
}

void sub_222A9F7EC(uint64_t *a1, id *a2)
{
  v3 = *a2;
  v4 = [*a2 versionIdentifiers];
  v5 = sub_222B027E8();

  *&v31 = v5;
  *(&v31 + 1) = sub_222A9FED4;
  *&v32 = 0;
  *(&v32 + 1) = sub_222AA161C;
  *&v33 = 0;
  *(&v33 + 1) = sub_222AA162C;
  *&v34 = 0;
  *(&v34 + 1) = sub_222A9FF2C;
  *&v35 = 0;
  *(&v35 + 1) = sub_222AA15F4;
  v36 = 0;
  v37 = sub_222AA1604;
  v38 = 0;
  v30 = 0;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  v25 = v31;
  v26 = v32;
  v6 = sub_222AA0FF4();
  if (v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v5 + 36) != v7)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v6 == 1 << *(v5 + 32))
  {
    sub_222A34F20(&v31, &qword_27D01DC20, &qword_222B0B310);
    if (qword_280CB8568 == -1)
    {
LABEL_5:
      v9 = sub_222B02148();
      __swift_project_value_buffer(v9, qword_280CB8570);
      v10 = sub_222B02128();
      v11 = sub_222B028D8();
      if (!os_log_type_enabled(v10, v11))
      {
        v13 = 1;
        goto LABEL_18;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222A1C000, v10, v11, "Missing version number for model", v12, 2u);
      v13 = 1;
LABEL_15:
      MEMORY[0x223DC7E30](v12, -1, -1);
LABEL_18:

      sub_222AA030C();
      swift_allocError();
      *v21 = v13;
      *(v21 + 8) = 0;
      *(v21 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_5;
  }

  sub_222AA159C(v6, v7, v5, v22);
  sub_222A9FED4(v22, &v23);
  sub_222A2E350(v22);
  if (!v24)
  {
    goto LABEL_22;
  }

  v22[0] = v23;
  v22[1] = v24;
  sub_222A9FF2C(v22, &v23);

  if (v24 != 1)
  {
    v14 = v23;
    sub_222A34F20(&v31, &qword_27D01DC20, &qword_222B0B310);
    if (!*(*a1 + 16) || (sub_222A270C0(v14), (v15 & 1) == 0))
    {
      v18 = v3;
      v19 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22[0] = *a1;
      sub_222AE9ACC(v18, v14, isUniquelyReferenced_nonNull_native);
      *a1 = v22[0];
      return;
    }

    if (qword_280CB8568 != -1)
    {
      swift_once();
    }

    v16 = sub_222B02148();
    __swift_project_value_buffer(v16, qword_280CB8570);
    v10 = sub_222B02128();
    v17 = sub_222B028E8();
    v13 = 2;
    if (!os_log_type_enabled(v10, v17))
    {
      goto LABEL_18;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_222A1C000, v10, v17, "Duplicate model number found between two models.", v12, 2u);
    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
}

id sub_222A9FBB8()
{
  v1 = sub_222B01748();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v28 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v28 - v18;
  v20 = *(v0 + 16);
  v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v22 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v23 = [v20 URLForResource:v21 withExtension:v22];

  if (v23)
  {
    sub_222B01718();

    (*(v2 + 56))(v16, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v16, 1, 1, v1);
  }

  sub_222A5689C(v16, v19);
  sub_222A69B04(v19, v12);
  if ((*(v2 + 48))(v12, 1, v1) == 1)
  {
    v24 = 0;
  }

  else
  {
    (*(v2 + 32))(v6, v12, v1);
    v25 = objc_allocWithZone(MEMORY[0x277CBE450]);
    v26 = sub_222B016A8();
    v24 = [v25 initWithContentsOfURL_];

    (*(v2 + 8))(v6, v1);
  }

  sub_222A34F20(v19, &qword_27D01D458, &unk_222B07E00);
  return v24;
}

uint64_t IncrementalMigrationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_222A9FED4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_222A2E2F4(a1, v4);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t *sub_222A9FF2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = result[1];
    v29 = a2;

    v8 = sub_222AA03D4(v2, v3, 10);
    v26 = v30;

    a2 = v29;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = *result;
      v32 = a2;
      result = sub_222B02D08();
      a2 = v32;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v34 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33[0] = *result;
  v33[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v33;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v33 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v33 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_222AA0244()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_280CB8570);
  v1 = __swift_project_value_buffer(v0, qword_280CB8570);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_222AA030C()
{
  result = qword_27D01DC18;
  if (!qword_27D01DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC18);
  }

  return result;
}

void *sub_222AA0360(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CAE0, qword_222B0B410);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_222AA03D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_222B02538();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_222AA0960();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_222B02D08();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_222AA0960()
{
  v0 = sub_222B02548();
  v4 = sub_222AA09E0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_222AA09E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_222B02438();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_222B02B38();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_222AA0360(v9, 0);
  v12 = sub_222AA0B38(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_222B02438();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_222B02D08();
LABEL_4:

  return sub_222B02438();
}

unint64_t sub_222AA0B38(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_222A92BEC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_222B024F8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_222B02D08();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_222A92BEC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_222B024D8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t *sub_222AA0D58(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_222AA2300(v5, a2, a3);
    v7 = v6;
    swift_bridgeObjectRelease_n();

    return v7;
  }

  return result;
}

uint64_t sub_222AA0DF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDC0, &qword_222B05BA0);
  result = sub_222B02DF8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_222B03118();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = v18;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_222AA0FF4()
{
  v2 = v0[1];
  v23 = *v0;
  v24 = v2;
  v3 = *(v0 + 5);
  v25 = *(v0 + 4);
  v13 = *(v0 + 6);
  v14 = v3;
  v12 = *(v0 + 7);
  v4 = *(v0 + 8);
  v5 = *(v0 + 9);
  v6 = *(v0 + 10);
  result = sub_222AA1178();
  v20 = result;
  v21 = v8;
  v22 = v9 & 1;
  if (v9)
  {
LABEL_7:
    __break(1u);
    return v1;
  }

  else
  {
    v10 = v8;
    v11 = v23;
    while (*(v11 + 36) == v10)
    {
      v1 = v20;
      if (v20 == 1 << *(v11 + 32))
      {
        return v1;
      }

      sub_222AA159C(v20, v10, v11, &v15);
      (*(&v11 + 1))(v17, &v15);
      sub_222A2E350(&v15);
      v14(&v15, v17);

      v17[0] = v15;
      v17[1] = v16;
      v12(&v18, v17);

      v15 = v18;
      LOBYTE(v16) = v19;
      if (v5(&v15))
      {
        return v1;
      }

      result = sub_222AA1380(&v20);
      v10 = v21;
      if (v22 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222AA1178()
{
  v1 = *v0;
  v20 = v0[2];
  v21 = v0[1];
  v19 = v0[3];
  v2 = v0[4];
  v3 = *v0 + 56;
  v4 = -1 << *(*v0 + 32);
  result = sub_222B02BC8();
  v6 = result;
  v7 = *(v1 + 36);
  v8 = 1 << *(v1 + 32);
  if (result == v8)
  {
    return v6;
  }

  else
  {
    while ((v6 & 0x8000000000000000) == 0 && v6 < v8)
    {
      v10 = v6 >> 6;
      if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      sub_222A2E2F4(*(v1 + 48) + 40 * v6, v22);
      v21(v23, v22);
      sub_222A2E350(v22);
      v22[0] = v23[0];
      v22[1] = v23[1];
      v11 = v19(v22);

      if (v11)
      {
        return v6;
      }

      v9 = 1 << *(v1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_22;
      }

      v12 = *(v3 + 8 * v10);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v9 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v10 << 6;
        v15 = v10 + 1;
        v16 = (v1 + 64 + 8 * v10);
        while (v15 < (v9 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_222A965F4(v6, v7, 0);
            v9 = __clz(__rbit64(v17)) + v14;
            goto LABEL_6;
          }
        }

        result = sub_222A965F4(v6, v7, 0);
      }

LABEL_6:
      v7 = *(v1 + 36);
      v8 = 1 << *(v1 + 32);
      v6 = v9;
      if (v9 == v8)
      {
        return v9;
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
  }

  return result;
}

uint64_t sub_222AA1380(uint64_t result)
{
  if (*(result + 16))
  {
    goto LABEL_29;
  }

  v2 = *v1;
  v3 = *(result + 8);
  v4 = *(*v1 + 36);
  if (v4 != v3)
  {
    goto LABEL_27;
  }

  v5 = *result;
  if (*result != 1 << *(v2 + 32))
  {
    v21 = v1[2];
    v22 = v1[1];
    v6 = v2 + 56;
    v20 = result;
    v8 = v1[3];
    v7 = v1[4];
    while ((v5 & 0x8000000000000000) == 0)
    {
      v9 = 1 << *(v2 + 32);
      if (v5 >= v9)
      {
        break;
      }

      v10 = v5 >> 6;
      v11 = *(v6 + 8 * (v5 >> 6));
      if (((v11 >> v5) & 1) == 0)
      {
        goto LABEL_23;
      }

      if (v4 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        result = sub_222A965F4(v5, v3, 0);
        v5 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v10 << 6;
        v14 = v10 + 1;
        v15 = (v2 + 64 + 8 * v10);
        while (v14 < (v9 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_222A965F4(v5, v3, 0);
            v5 = __clz(__rbit64(v16)) + v13;
            goto LABEL_16;
          }
        }

        result = sub_222A965F4(v5, v3, 0);
        v5 = v9;
      }

LABEL_16:
      v3 = *(v2 + 36);
      v18 = 1 << *(v2 + 32);
      if (v5 != v18)
      {
        if ((v5 & 0x8000000000000000) != 0 || v5 >= v18)
        {
          goto LABEL_25;
        }

        if (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_222A2E2F4(*(v2 + 48) + 40 * v5, v23);
        v22(v24, v23);
        sub_222A2E350(v23);
        v23[0] = v24[0];
        v23[1] = v24[1];
        v19 = v8(v23);

        v4 = v3;
        if ((v19 & 1) == 0)
        {
          continue;
        }
      }

      *v20 = v5;
      *(v20 + 8) = v3;
      *(v20 + 16) = 0;
      return result;
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
LABEL_27:
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_222AA159C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_222A2E2F4(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222AA1604@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_222AA162C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unsigned __int8 *sub_222AA1648(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_222A26EC8(0xD00000000000001ELL, 0x8000000222B14550);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_222A25344(*(a1 + 56) + 32 * v2, v32);
  sub_222A250AC(v32, v33);
  sub_222A25344(v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (!v31[2])
  {

LABEL_25:
    __swift_destroy_boxed_opaque_existential_0(v33);
    return 0;
  }

  v5 = v31[4];
  v4 = v31[5];

  v7 = HIBYTE(v4) & 0xF;
  v8 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_0(v33);

    return 0;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      *&v32[0] = v5;
      *(&v32[0] + 1) = v4 & 0xFFFFFFFFFFFFFFLL;
      if (v5 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v32 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_79:
        __break(1u);
        return result;
      }

      if (v5 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v32;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v32 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_69;
            }
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_222B02D08();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = result + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_68;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_68;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_68;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_68;
        }

        goto LABEL_78;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_68;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_68;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_60;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_68:
        v11 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_69;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = result + 1;
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_68;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_68;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_68;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_69;
              }
            }
          }

LABEL_60:
          LOBYTE(v7) = 0;
LABEL_69:
          v29 = v7;
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v11 = sub_222AA03D4(v5, v4, 10);
  v29 = v30;

LABEL_70:
  __swift_destroy_boxed_opaque_existential_0(v33);

  if (v29)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_222AA1A24(uint64_t a1, void *a2)
{
  v4 = sub_222B022A8();
  v5 = [a2 isConfiguration:0 compatibleWithStoreMetadata:v4];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_222AA1648(a1);
  if (v7)
  {
    return 1;
  }

  v9 = v6;
  v10 = [a2 versionIdentifiers];
  v11 = sub_222B027E8();

  *&v18 = v11;
  *(&v18 + 1) = sub_222A9FED4;
  *&v19 = 0;
  *(&v19 + 1) = sub_222AA161C;
  *&v20 = 0;
  *(&v20 + 1) = sub_222AA162C;
  *&v21 = 0;
  *(&v21 + 1) = sub_222A9FF2C;
  *&v22 = 0;
  *(&v22 + 1) = sub_222AA15F4;
  v23 = 0;
  v24 = sub_222AA1604;
  v25 = 0;
  v31 = 0;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v26 = v18;
  v27 = v19;
  result = sub_222AA0FF4();
  if (v13)
  {
    goto LABEL_14;
  }

  if (*(v11 + 36) != v12)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result != 1 << *(v11 + 32))
  {
    sub_222AA159C(result, v12, v11, v15);
    sub_222A9FED4(v15, &v16);
    result = sub_222A2E350(v15);
    if (v17)
    {
      v15[0] = v16;
      v15[1] = v17;
      sub_222A9FF2C(v15, &v16);

      if (v17 != 1)
      {
        v14 = v16;
        sub_222A34F20(&v18, &qword_27D01DC20, &qword_222B0B310);
        return v9 == v14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_222A34F20(&v18, &qword_27D01DC20, &qword_222B0B310);
  return 0;
}

id sub_222AA1C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v67 = sub_222B01748();
  v64 = *(v67 - 8);
  v5 = *(v64 + 64);
  v7 = MEMORY[0x28223BE20](v67, v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v63 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v66 = &v57 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v57 - v17;
  v19 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v20 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v21 = [a3 URLForResource:v19 withExtension:v20];

  if (v21)
  {
    sub_222B01718();

    v22 = [objc_opt_self() defaultManager];
    v23 = sub_222B016A8();
    v69[0] = 0;
    v24 = [v22 contentsOfDirectoryAtURL:v23 includingPropertiesForKeys:0 options:0 error:v69];

    v25 = v69[0];
    if (v24)
    {
      v57 = v18;
      v58 = v3;
      v26 = sub_222B025F8();
      v27 = v25;

      v28 = MEMORY[0x277D84F90];
      v62 = *(v26 + 16);
      if (v62)
      {
        v29 = 0;
        v60 = v9;
        v61 = (v64 + 16);
        v59 = (v64 + 8);
        v65 = (v64 + 32);
        while (1)
        {
          if (v29 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_41;
          }

          v30 = (*(v64 + 80) + 32) & ~*(v64 + 80);
          v31 = *(v64 + 72);
          (*(v64 + 16))(v66, v26 + v30 + v31 * v29, v67);
          if (sub_222B01668() == 7171949 && v32 == 0xE300000000000000)
          {
            break;
          }

          v33 = sub_222B02F78();

          if (v33)
          {
            goto LABEL_12;
          }

          (*v59)(v66, v67);
LABEL_6:
          if (v62 == ++v29)
          {
            goto LABEL_17;
          }
        }

LABEL_12:
        v34 = *v65;
        (*v65)(v9, v66, v67);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[0] = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_222A23C24(0, *(v28 + 16) + 1, 1);
          v28 = v69[0];
        }

        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_222A23C24(v36 > 1, v37 + 1, 1);
          v28 = v69[0];
        }

        *(v28 + 16) = v37 + 1;
        v38 = (v28 + v30 + v37 * v31);
        v9 = v60;
        v34(v38, v60, v67);
        goto LABEL_6;
      }

LABEL_17:

      v69[0] = MEMORY[0x277D84F90];
      v39 = *(v28 + 16);
      if (v39)
      {
        v65 = *(v64 + 16);
        v66 = (v64 + 16);
        v40 = (v28 + ((*(v64 + 80) + 32) & ~*(v64 + 80)));
        v62 = *(v64 + 72);
        v41 = (v64 + 8);
        v61 = MEMORY[0x277D84F90];
        do
        {
          v42 = v63;
          v43 = v67;
          (v65)(v63, v40, v67);
          v44 = objc_allocWithZone(MEMORY[0x277CBE450]);
          v45 = sub_222B016A8();
          v46 = [v44 initWithContentsOfURL_];

          v47 = (*v41)(v42, v43);
          if (v46)
          {
            MEMORY[0x223DC6810](v47);
            if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v48 = *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_222B02648();
            }

            sub_222B02688();
            v61 = v69[0];
          }

          v40 += v62;
          --v39;
        }

        while (v39);

        v28 = v61;
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      v69[0] = MEMORY[0x277D84F98];
      v26 = v58;
      if (v28 >> 62)
      {
        goto LABEL_43;
      }

      for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
      {
        v52 = 0;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x223DC6F00](v52, v28);
          }

          else
          {
            if (v52 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v53 = *(v28 + 8 * v52 + 32);
          }

          v54 = v53;
          v55 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          v68 = v53;
          sub_222A9F7EC(v69, &v68);
          if (v26)
          {

            result = (*(v64 + 8))(v57, v67);
            goto LABEL_45;
          }

          ++v52;
          if (v55 == i)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        ;
      }

LABEL_44:

      (*(v64 + 8))(v57, v67);
      result = v69[0];
    }

    else
    {
      v50 = v69[0];
      sub_222B01628();

      swift_willThrow();
      result = (*(v64 + 8))(v18, v67);
    }
  }

  else
  {
    result = sub_222A39F44(MEMORY[0x277D84F90]);
  }

LABEL_45:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222AA2300(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v20 = 0;
  v4 = 0;
  v5 = a3 + 64;
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
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    v15 = sub_222B022A8();
    v16 = [v14 isConfiguration:0 compatibleWithStoreMetadata:{v15, v18}];

    if (v16)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_222AA0DF4(a1, v18, v20, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_222AA247C(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v7 = swift_bridgeObjectRetain_n();
  if (v4 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_222AA0D58(v13, v5, a1);
      MEMORY[0x223DC7E30](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v7, v8);
  bzero(v14 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0), v6);

  sub_222AA2300((v14 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0)), v5, a1);
  v10 = v9;

  if (v1)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

void sub_222AA263C(uint64_t a1, uint64_t a2)
{
  v3 = sub_222AA1648(a1);
  if (v4)
  {

    v5 = sub_222AA247C(a2);

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v5[8];
    if (v8)
    {
      v9 = 0;
      v10 = __clz(__rbit64(v8));
      v11 = (v8 - 1) & v8;
      v12 = (v6 + 63) >> 6;
LABEL_13:
      v18 = *(v5[6] + 8 * v10);
      v19 = *(v5[7] + 8 * v10);

      if (!v11)
      {
        goto LABEL_16;
      }

      do
      {
LABEL_14:
        while (1)
        {
          v20 = __clz(__rbit64(v11));
          v11 &= v11 - 1;
          v21 = v20 | (v9 << 6);
          v22 = *(v5[6] + 8 * v21);
          if (v22 < v18)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        v24 = *(v5[7] + 8 * v21);

        v19 = v24;
        v18 = v22;
      }

      while (v11);
LABEL_16:
      while (1)
      {
        v23 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v23 >= v12)
        {

          return;
        }

        v11 = v5[v23 + 8];
        ++v9;
        if (v11)
        {
          v9 = v23;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      v16 = 0;
      v12 = (v6 + 63) >> 6;
      while (v12 - 1 != v8)
      {
        v9 = v8 + 1;
        v17 = v5[v8 + 9];
        v16 -= 64;
        ++v8;
        if (v17)
        {
          v11 = (v17 - 1) & v17;
          v10 = __clz(__rbit64(v17)) - v16;
          goto LABEL_13;
        }
      }
    }
  }

  else if (*(a2 + 16))
  {
    v13 = sub_222A270C0(v3);
    if (v14)
    {
      v15 = *(*(a2 + 56) + 8 * v13);
    }
  }
}

int64_t sub_222AA281C(int64_t result, int64_t a2, uint64_t a3)
{
  if (result >= a2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = result;
  v24 = a2 - 1;
  v4 = a2 - 1 - result;
  if (__OFSUB__(a2 - 1, result))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a2 - result;
  if (!__OFADD__(v4, 1))
  {
    v6 = MEMORY[0x277D84F90];
    if (v4 != -1)
    {
      v26 = MEMORY[0x277D84F90];
      result = sub_222A23C68(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        goto LABEL_29;
      }

      v23 = a3;
      v8 = 0;
      v9 = 0;
      v6 = v26;
      while (v8 < v5)
      {
        if (__OFADD__(v8, 1))
        {
          goto LABEL_25;
        }

        v25 = v8 + 1;
        if (v9)
        {
          goto LABEL_30;
        }

        v10 = v6;
        if (!*(a3 + 16))
        {
          goto LABEL_22;
        }

        result = sub_222A270C0(v3);
        if ((v11 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_26;
        }

        v12 = *(a3 + 56);
        v13 = *(v12 + 8 * result);
        v14 = sub_222A270C0(v3 + 1);
        if ((v15 & 1) == 0)
        {
LABEL_22:
          sub_222AA030C();
          swift_allocError();
          *v22 = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 1;
          swift_willThrow();

          return v6;
        }

        v16 = *(v12 + 8 * v14);
        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        v19 = v13;
        result = v16;
        v6 = v10;
        if (v18 >= v17 >> 1)
        {
          v21 = result;
          sub_222A23C68((v17 > 1), v18 + 1, 1);
          result = v21;
          v6 = v10;
        }

        *(v6 + 16) = v18 + 1;
        v20 = (v6 + 32 * v18);
        v20[4] = v19;
        v20[5] = result;
        v20[6] = v3;
        v20[7] = v3 + 1;
        v9 = v3 == v24;
        if (v3 == v24)
        {
          v3 = 0;
        }

        else
        {
          ++v3;
        }

        ++v8;
        a3 = v23;
        if (v25 == v5)
        {
          return v6;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    return v6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for MigrationManagerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MigrationManagerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_222AA2AF4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222AA2B10(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_222AA2B58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222B01748();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222AA2BB4(id *a1)
{
  v1 = *a1;
  v2 = [*a1 intent];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01C9E8, &unk_222B06120);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_222B05260;
    v6 = [v4 typeName];
    v7 = sub_222B02388();
    v9 = v8;

    NoteEvent = type metadata accessor for CreateNoteEventFeature.EventType(0);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v9;
    *(v5 + 56) = NoteEvent;
    *(v5 + 64) = sub_222AA2F6C(&qword_27D01DC38, type metadata accessor for CreateNoteEventFeature.EventType);
    *(v5 + 32) = v11;
    v12 = [v1 _donatedBySiri];
    v13 = type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v5 + 96) = v13;
    *(v5 + 104) = sub_222AA2F6C(&qword_27D01DC40, type metadata accessor for CreateNoteEventFeature.DonatedBySiri);
    *(v5 + 72) = v14;
    v15 = [v4 content];
    if (v15)
    {
      v16 = v15;
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_222B02388();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0xE000000000000000;
        }

        v23 = type metadata accessor for CreateNoteEventFeature.NoteTextContent(0);
        v24 = swift_allocObject();
        *(v24 + 16) = v20;
        *(v24 + 24) = v22;
        v5 = sub_222AA8FDC(1, 3, 1, v5);

        v27 = v24;
        v28 = v5;
        v25 = sub_222AA2F6C(&qword_27D01DC48, type metadata accessor for CreateNoteEventFeature.NoteTextContent);

        sub_222A3ED48(2, &v27, &v28, v23, v25);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t CreateNoteEventFeature.DonatedBySiri.__allocating_init(value:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t CreateNoteEventFeature.NoteTextContent.__allocating_init(value:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CreateNoteEventFeature.DonatedBySiri.init(value:)(char a1)
{
  *(v1 + 16) = a1;
  return v1;
}

{
  if (a1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(v1 + 16) = a1 & 1;
  }

  return v1;
}

uint64_t sub_222AA2F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CreateNoteEventFeature.DonatedBySiri.__allocating_init(value:)(unsigned __int8 a1)
{
  v2 = a1;
  result = swift_allocObject();
  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = a1 & 1;
  }

  return result;
}

uint64_t sub_222AA30E0(char *a1)
{
  v1 = *a1;
  type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  *(result + 16) = v1;
  return result;
}

uint64_t sub_222AA3118(unsigned __int8 *a1)
{
  v1 = *a1;
  type metadata accessor for CreateNoteEventFeature.DonatedBySiri(0);
  result = swift_allocObject();
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0C0, qword_222B06130);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *(result + 16) = v1 & 1;
  }

  return result;
}

uint64_t CreateNoteEventFeature.NoteTextContent.init(value:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t CreateNoteEventFeature.NoteTextContent.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CreateNoteEventFeature.NoteTextContent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_222AA3218(uint64_t *a1, void (*a2)(void))
{
  v2 = *a1;
  v3 = a1[1];
  a2(0);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_222AA326C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  a2(0);
  result = swift_allocObject();
  if (v2)
  {
    *(result + 16) = v3;
    *(result + 24) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D0B8, &unk_222B07340);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.TriggerType.description.getter()
{
  if (*v0)
  {
    result = 0x6D69742D6C616572;
  }

  else
  {
    result = 0x616E65746E69616DLL;
  }

  *v0;
  return result;
}

SiriPrivateLearningAnalytics::SiriUserFeedbackLearningTaskContext::TriggerType_optional __swiftcall SiriUserFeedbackLearningTaskContext.TriggerType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_222B02E48();

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

uint64_t SiriUserFeedbackLearningTaskContext.TriggerType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656D69746C616572;
  }

  else
  {
    result = 0x616E65746E69616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_222AA34B8()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA3544()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222AA35BC()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA3644@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_222AA36A4(uint64_t *a1@<X8>)
{
  v2 = 0x616E65746E69616DLL;
  if (*v1)
  {
    v2 = 0x656D69746C616572;
  }

  v3 = 0xEB0000000065636ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222AA379C()
{
  if (*v0)
  {
    result = 0x6D69742D6C616572;
  }

  else
  {
    result = 0x616E65746E69616DLL;
  }

  *v0;
  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.description.getter()
{
  v1 = *v0;
  strcpy(v5, "triggerType: ");
  HIWORD(v5[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  return v5[0];
}

uint64_t static SiriUserFeedbackLearningTaskContext.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656D69746C616572;
  }

  else
  {
    v4 = 0x616E65746E69616DLL;
  }

  if (v3)
  {
    v5 = 0xEB0000000065636ELL;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x656D69746C616572;
  }

  else
  {
    v6 = 0x616E65746E69616DLL;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xEB0000000065636ELL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222AA3964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5472656767697274 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_222B02F78();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_222AA39F0(uint64_t a1)
{
  v2 = sub_222AA3BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222AA3A2C(uint64_t a1)
{
  v2 = sub_222AA3BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriUserFeedbackLearningTaskContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DC80, &qword_222B0B540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AA3BB4();
  sub_222B031B8();
  v13 = v9;
  sub_222AA3C08();
  sub_222B02EF8();
  return (*(v4 + 8))(v8, v3);
}

unint64_t sub_222AA3BB4()
{
  result = qword_280CBA598;
  if (!qword_280CBA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA598);
  }

  return result;
}

unint64_t sub_222AA3C08()
{
  result = qword_280CB7B88;
  if (!qword_280CB7B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB7B88);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningTaskContext.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DC88, &qword_222B0B548);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222AA3BB4();
  sub_222B03198();
  if (!v2)
  {
    sub_222AA3DC8();
    sub_222B02E98();
    (*(v6 + 8))(v10, v5);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_222AA3DC8()
{
  result = qword_280CBA1B0;
  if (!qword_280CBA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA1B0);
  }

  return result;
}

unint64_t sub_222AA3E20()
{
  result = qword_27D01DC90;
  if (!qword_27D01DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC90);
  }

  return result;
}

uint64_t sub_222AA3EA4()
{
  v1 = *v0;
  strcpy(v5, "triggerType: ");
  HIWORD(v5[1]) = -4864;
  if (v1)
  {
    v2 = 0x6D69742D6C616572;
  }

  else
  {
    v2 = 0x616E65746E69616DLL;
  }

  if (v1)
  {
    v3 = 0xE900000000000065;
  }

  else
  {
    v3 = 0xEB0000000065636ELL;
  }

  MEMORY[0x223DC66E0](v2, v3);

  return v5[0];
}

unint64_t sub_222AA3F7C()
{
  result = qword_27D01DC98;
  if (!qword_27D01DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DC98);
  }

  return result;
}

unint64_t sub_222AA3FD4()
{
  result = qword_280CBA588;
  if (!qword_280CBA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA588);
  }

  return result;
}

unint64_t sub_222AA402C()
{
  result = qword_280CBA590;
  if (!qword_280CBA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA590);
  }

  return result;
}

unint64_t sub_222AA4080()
{
  result = qword_280CBA580;
  if (!qword_280CBA580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CBA580);
  }

  return result;
}

uint64_t sub_222AA40D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_222B02098();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  sub_222AA56C8(v8, v9, v10, v11);
  v12 = sub_222AA44E0(a1, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_222AA5424(v8, v9, v10, v11);
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  LOBYTE(v8) = *(v2 + 40);
  sub_222AA56C8(v19, v20, v21, v8);
  LOBYTE(v9) = sub_222AA5538(v19, v20, v21, v8, v12, v14, v16, v18);
  sub_222AA5424(v19, v20, v21, v8);
  if ((v9 & 1) == 0)
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v22 = sub_222B02148();
    __swift_project_value_buffer(v22, qword_27D01DCA0);
    sub_222AA56C8(v12, v14, v16, v18);
    v23 = sub_222B02128();
    v24 = sub_222B028D8();
    sub_222AA5424(v12, v14, v16, v18);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40 = v24;
      v27 = v26;
      v44 = v26;
      *v25 = 136315138;
      v28 = sub_222AA4690(v12, v14, v16, v18);
      v30 = sub_222A230FC(v28, v29, &v44);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_222A1C000, v23, v40, "UserDisambiguatesPhoneCallOrMessagesContact state will be updated to %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DC7E30](v27, -1, -1);
      MEMORY[0x223DC7E30](v25, -1, -1);
    }
  }

  v31 = *(v2 + 16);
  v32 = *(v2 + 24);
  v33 = *(v2 + 32);
  *(v2 + 16) = v12;
  *(v2 + 24) = v14;
  *(v2 + 32) = v16;
  v34 = *(v2 + 40);
  *(v2 + 40) = v18;
  sub_222AA56C8(v12, v14, v16, v18);
  sub_222AA56C8(v12, v14, v16, v18);
  sub_222AA5424(v31, v32, v33, v34);
  if (v18 == 2)
  {

    if (v12)
    {
      v35 = 4;
    }

    else
    {
      v35 = 3;
    }

    if (qword_280CB79E8 != -1)
    {
      swift_once();
    }

    v36 = sub_222B020C8();
    __swift_project_value_buffer(v36, qword_280CBC3F8);
    v37 = v41;
    sub_222B02088();
    sub_222A6F5D4("events.filters.UserDisambiguatesPhoneCallOrMessagesContact", 58, 2);
    sub_222AA5424(v12, v14, v16, 2u);
    (*(v42 + 8))(v37, v43);
  }

  else
  {
    sub_222AA5424(v12, v14, v16, v18);
    sub_222AA5424(v12, v14, v16, v18);
    return 0;
  }

  return v35;
}

void *sub_222AA44E0(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  if (*(a1 + 24))
  {
    v9 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      sub_222A8B0A8(v9, 1u);
      a2 = sub_222AA4F94(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 1;
    }

    else
    {
      sub_222A8B0A8(v9, 2u);
      a2 = sub_222AA4C4C(v9, a2, a3, a4, a5);
      v10 = v9;
      v11 = 2;
    }

    sub_222A86648(v10, v11);
  }

  else
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v12 = sub_222B02148();
    __swift_project_value_buffer(v12, qword_27D01DCA0);
    v13 = sub_222B02128();
    v14 = sub_222B028D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_222A1C000, v13, v14, "UserDisambiguatesPhoneCallOrMessagesContact received a non Siri UI / Execution event", v15, 2u);
      MEMORY[0x223DC7E30](v15, -1, -1);
    }

    sub_222AA56C8(a2, a3, a4, a5);
  }

  return a2;
}

unint64_t sub_222AA4690(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 == 2)
    {
      BYTE8(v6) = 0;
      sub_222B02C88();
      MEMORY[0x223DC66E0](0xD00000000000002ALL, 0x8000000222B14750);
      *&v6 = a1 & 1;
      sub_222B02D98();
      MEMORY[0x223DC66E0](41, 0xE100000000000000);
      return *(&v6 + 1);
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else if (a4)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_222AA47B0()
{
  sub_222AA5424(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_28SiriPrivateLearningAnalytics54UserDisambiguatesPhoneCallOrMessagesContactFilterState33_347939869CF7152D1DD2BE2960459E8FLLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222AA4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_222AA488C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_222AA48D4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_222AA4900()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 32);
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  v5 = *(v1 + 40);
  *(v1 + 40) = 3;
  sub_222AA5424(v2, v3, v4, v5);
}

uint64_t sub_222AA4954()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA49E4()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222AA4A60()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222AA4AEC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_222AA4B4C(uint64_t *a1@<X8>)
{
  v2 = 0x65646E6F70736572;
  if (*v1)
  {
    v2 = 0x6D6E6F646E616261;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xEB00000000746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222AA4B98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6E6F646E616261;
  }

  else
  {
    v4 = 0x65646E6F70736572;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v6 = 0x6D6E6F646E616261;
  }

  else
  {
    v6 = 0x65646E6F70736572;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E65;
  }

  else
  {
    v7 = 0xE900000000000064;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

void *sub_222AA4C4C(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v10 = [a1 eventBody];
  if (v10)
  {
    v11 = v10;
    if (a5 - 2 < 2)
    {
      if (sub_222A862A4(v10) & 1) != 0 || (sub_222A864B4(v11))
      {
        v12 = [v11 taskStep];

        if (v12 == 15)
        {
LABEL_6:
          v13 = a1;
          return a1;
        }

        return 0;
      }

LABEL_22:

      return 0;
    }

    if (a5)
    {
      [a2 timestamp];
      v22 = v21;
      [a1 timestamp];
      v24 = v23;

      if (v24 - v22 > 300.0)
      {
        return 0;
      }
    }

    else
    {
      v18 = [a2 eventBody];
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = v18;
      if ((sub_222AA51DC(v11) & 1) == 0)
      {

        goto LABEL_22;
      }

      v20 = [v11 taskStep];
      if (v20 == 4)
      {
        v27 = [v11 statusReason];
        v28 = sub_222B02388();
        v30 = v29;

        if (v28 == 0xD000000000000014 && 0x8000000222B147E0 == v30)
        {

          goto LABEL_6;
        }

        v32 = sub_222B02F78();

        if (v32)
        {
          goto LABEL_6;
        }

        return 0;
      }

      if (v20 == 41 || v20 == 15)
      {

        goto LABEL_6;
      }

      v31 = v20;

      if (v31 != 39)
      {
        return 0;
      }
    }

    v25 = a2;
    return a2;
  }

  if (qword_27D01C520 != -1)
  {
    swift_once();
  }

  v14 = sub_222B02148();
  __swift_project_value_buffer(v14, qword_27D01DCA0);
  v15 = sub_222B02128();
  v16 = sub_222B028D8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_222A1C000, v15, v16, "UserDisambiguatesPhoneCallOrMessagesContact cannot unwrap execution store event body", v17, 2u);
    MEMORY[0x223DC7E30](v17, -1, -1);
  }

  sub_222AA56C8(a2, a3, a4, a5);
  return a2;
}

uint64_t sub_222AA4F94(void *a1, void *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v10 = [a1 eventBody];
  if (!v10)
  {
    if (qword_27D01C520 != -1)
    {
      swift_once();
    }

    v13 = sub_222B02148();
    __swift_project_value_buffer(v13, qword_27D01DCA0);
    v14 = sub_222B02128();
    v15 = sub_222B028D8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_222A1C000, v14, v15, "UserDisambiguatesPhoneCallOrMessagesContact cannot unwrap UI store event body", v16, 2u);
      MEMORY[0x223DC7E30](v16, -1, -1);
    }

    sub_222AA56C8(a2, a3, a4, a5);
    return a2;
  }

  v11 = v10;
  if (a5 > 1u)
  {

    return 0;
  }

  if (!a5)
  {
    v12 = a2;
    if ([v11 isStarting])
    {

      return a2;
    }

    v20 = [v11 dismissalReason];
    sub_222B02388();

    LOBYTE(v20) = sub_222A86258();
    if (v20 - 1 < 0xC)
    {
      v21 = a1;
      return 1;
    }

    sub_222AA5424(a2, a3, a4, 0);
    return 0;
  }

  v18 = a2;
  v19 = [v11 isStarting];

  if (v19)
  {
    return a2;
  }

  v22 = a1;
  return 0;
}

uint64_t sub_222AA51DC(void *a1)
{
  v3 = [a1 taskId];
  v4 = sub_222B02388();
  v6 = v5;

  v7 = [v1 taskId];
  v8 = sub_222B02388();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = sub_222B02F78();

    if ((v12 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v13 = [a1 intentName];
  v14 = sub_222B02388();
  v16 = v15;

  v17 = [v1 intentName];
  v18 = sub_222B02388();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_222B02F78();

    if ((v21 & 1) == 0)
    {
LABEL_15:
      v30 = 0;
      return v30 & 1;
    }
  }

  v22 = [a1 slotValue];
  v23 = sub_222B02388();
  v25 = v24;

  v26 = [v1 slotValue];
  v27 = sub_222B02388();
  v29 = v28;

  if (v23 == v27 && v25 == v29)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_222B02F78();
  }

  return v30 & 1;
}

void sub_222AA5424(void *a1, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_222AA5470()
{
  v0 = sub_222B02148();
  __swift_allocate_value_buffer(v0, qword_27D01DCA0);
  v1 = __swift_project_value_buffer(v0, qword_27D01DCA0);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CBC458);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222AA5538(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      if (a8 == 1)
      {
LABEL_23:
        sub_222A6EEE8();
        return sub_222B02AE8() & 1;
      }
    }

    else if (!a8)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (a4 == 2)
  {
    if (a8 == 2)
    {
      v8 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 0x6D6E6F646E616261;
      }

      else
      {
        v9 = 0x65646E6F70736572;
      }

      if (v8)
      {
        v10 = 0xE900000000000064;
      }

      else
      {
        v10 = 0xEB00000000746E65;
      }

      if (a5)
      {
        v11 = 0x6D6E6F646E616261;
      }

      else
      {
        v11 = 0x65646E6F70736572;
      }

      if (a5)
      {
        v12 = 0xEB00000000746E65;
      }

      else
      {
        v12 = 0xE900000000000064;
      }

      if (v9 == v11 && v10 == v12)
      {

        goto LABEL_29;
      }

      v14 = sub_222B02F78();

      if (v14)
      {
LABEL_29:
        sub_222A6EEE8();
        if (sub_222B02AE8())
        {
          return sub_222B02AE8() & 1;
        }
      }
    }
  }

  else if (a8 == 3 && !(a6 | a5 | a7))
  {
    return 1;
  }

  return 0;
}

id sub_222AA56C8(id result, void *a2, void *a3, unsigned __int8 a4)
{
  if (a4 >= 2u)
  {
    if (a4 != 2)
    {
      return result;
    }

    v6 = a2;
    result = a3;
  }

  return result;
}

unint64_t sub_222AA5728()
{
  result = qword_27D01DCB8;
  if (!qword_27D01DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01DCB8);
  }

  return result;
}

uint64_t Turn.__allocating_init(turnID:events:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v11 = sub_222B018D8();
  (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  *(v9 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = a2;
  sub_222A5E93C(a3, v9 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v9;
}

uint64_t Turn.turnID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v4 = sub_222B018D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Turn.__allocating_init(turnID:events:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v19 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10);
  v16 = sub_222B01848();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = (*(v2 + 104))(v15, a2, v9);
  (*(v11 + 8))(a1, v10);
  return v17;
}

uint64_t Turn.init(turnID:events:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v8 = sub_222B018D8();
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  *(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events) = a2;
  sub_222A5E93C(a3, v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v3;
}

uint64_t sub_222AA5B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Turn.deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

  sub_222AA5C00(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  return v0;
}

uint64_t sub_222AA5C00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Turn.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_turnID;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);

  sub_222AA5C00(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_date);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Turn()
{
  result = qword_280CB86C0;
  if (!qword_280CB86C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_222AA5D78()
{
  v0 = sub_222B018D8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_222AA5E7C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_222AA5E7C()
{
  if (!qword_280CBA1F8)
  {
    sub_222B01848();
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBA1F8);
    }
  }
}

uint64_t sub_222AA5EFC(unint64_t *a1, uint64_t *a2)
{
  v4 = v2;
  v5 = sub_222A250BC(0, a1, a2);
  [v4 anyEventType];
  result = sub_222B02A28();
  if (result)
  {
    if (v5 != result)
    {
      return 0;
    }

    v7 = [v4 payload];
    if (v7)
    {
      v8 = v7;
      v9 = sub_222B01798();
      v11 = v10;

      v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = sub_222B01788();
      sub_222A26530(v9, v11);
      v14 = v12;
    }

    else
    {
      v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v13 = 0;
    }

    v15 = [v14 initWithData_];

    if (!v15)
    {
      return 0;
    }

    v16 = *a2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_222AA6030(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v7 + 24);
  *(v7 + 24) = a1;

  v9 = a1;
  sub_222A34E38(v8);

  v10 = *(v3 + 16);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_27D01D5F0] = v10;
  v14.receiver = v12;
  v14.super_class = v11;

  v13 = objc_msgSendSuper2(&v14, sel_init);
  [*(*(v3 + 16) + 16) receiveSubscription_];
}

id sub_222AA6114(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 32);
  if (v5 == *MEMORY[0x277CF1780])
  {
    v7 = *(v4 + 48);

    a2(a1);
  }

  else
  {
    v5 = [*(v4 + 16) receiveInput_];
    v8 = *(v2 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D600, &unk_222B083C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222B05260;
    *(inited + 32) = v5;
    *(inited + 40) = *(v8 + 32);

    v10 = sub_222A65A74(-1, inited);
    swift_setDeallocating();
    *(v8 + 32) = v10;
  }

  return v5;
}

void sub_222AA6208(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 24);
  *(v3 + 24) = 1;

  sub_222A34E38(v4);

  v5 = *(v1 + 16);
  v6 = *(v5 + 32);
  if (v6 != *MEMORY[0x277CF1788] && (v6 >= 1 ? (v7 = v6 == *MEMORY[0x277CF1780]) : (v7 = 1), v7))
  {
    v12 = *(v5 + 40);
    *(v5 + 40) = a1;

    v8 = a1;
  }

  else
  {
    v9 = [a1 state];
    v10 = *(v1 + 16);
    if (v9 || !*(*(v10 + 48) + 16))
    {
      v11 = *(v10 + 16);

      [v11 receiveCompletion_];
    }
  }
}

void sub_222AA6340()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  if (v2 >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 24) = 1;

  sub_222A34E38(v2);

  [v3 cancel];
}

void *sub_222AA63DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3[3] = 0;
  v3[4] = BPSDemandMax();
  v3[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = swift_allocObject();
  v7[3] = 0;
  v7[4] = 0;
  v7[2] = 0;
  v3[6] = v7;
  v3[2] = a1;
  return v3;
}

void sub_222AA6448()
{
  v1 = v0;
  v2 = type metadata accessor for ScanConversationsSubscriber();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD08, &qword_222B0BB80);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD10, &qword_222B0BB88);
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  *(v4 + 16) = sub_222AA63DC(v5, &qword_27D01DD18, &qword_222B0BB90);
  *&v3[OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream] = v4;
  v9.receiver = v3;
  v9.super_class = v2;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = *(v0 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_inner);
  *(v0 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_inner) = v6;
  v8 = v6;

  [*(v1 + OBJC_IVAR____TtCO28SiriPrivateLearningAnalytics15BiomePublishers17ScanConversations_upstream) subscribe_];
}

uint64_t sub_222AA6708(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v101 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v101 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v101 - v19;
  sub_222A25344(a1, v112);
  type metadata accessor for Turn();
  if (!swift_dynamicCast())
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v57 = sub_222B02148();
    __swift_project_value_buffer(v57, qword_280CBC458);
    sub_222A25344(a1, v112);
    v58 = sub_222B02128();
    v59 = sub_222B028D8();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v111[0] = v61;
      *v60 = 136315138;
      __swift_project_boxed_opaque_existential_1(v112, v112[3]);
      v111[3] = swift_getDynamicType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D138, &unk_222B06790);
      v62 = sub_222B023D8();
      v64 = v63;
      __swift_destroy_boxed_opaque_existential_0(v112);
      v65 = sub_222A230FC(v62, v64, v111);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_222A1C000, v58, v59, "ScanConversationsSubscriber ignored unexpected input type %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x223DC7E30](v61, -1, -1);
      MEMORY[0x223DC7E30](v60, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v112);
    }

    return BPSDemandMax();
  }

  v106 = v13;
  v107 = v9;
  v108 = v20;
  v21 = v111[0];
  v22 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (v23 >> 62)
  {
LABEL_74:
    if (sub_222B02DC8())
    {
      goto LABEL_4;
    }

LABEL_69:
    swift_beginAccess();

    MEMORY[0x223DC6810](v89);
    if (*((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v91 = *((*(v2 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_222B02648();
    }

    sub_222B02688();
    swift_endAccess();
    v90 = BPSDemandMax();
    goto LABEL_84;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_69;
  }

LABEL_4:
  v103 = v2;
  v102 = v21;
  v24 = *(v21 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics4Turn_events);
  v104 = v24 >> 62;
  v105 = v22;
  v2 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    v21 = sub_222B02DC8();
  }

  else
  {
    v21 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v24 & 0xC000000000000001;
  v101 = v24 + 32;

  v22 = 0;
  v109 = v24;
  v110 = v24 & 0xC000000000000001;
  while (v21 != v22)
  {
    if (v25)
    {
      v26 = MEMORY[0x223DC6F00](v22, v24);
    }

    else
    {
      if (v22 >= *(v2 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v26 = *(v24 + 8 * v22 + 32);
    }

    v27 = v26;
    if ([v26 anyEventType] == 6)
    {
      v28 = [v27 payload];
      if (v28)
      {
        v29 = v28;
        v30 = sub_222B01798();
        v32 = v31;

        v33 = sub_222B01788();
        v34 = v32;
        v25 = v110;
        sub_222A26530(v30, v34);
      }

      else
      {
        v33 = 0;
      }

      v9 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

      v35 = [v9 event];
      if (!v35)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v35 = v27;
    }

    v9 = sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
    [v35 anyEventType];
    v36 = sub_222B02A28();
    if (!v36 || v9 != v36)
    {
      goto LABEL_19;
    }

    v41 = [v35 payload];
    if (v41)
    {
      v42 = v41;
      v43 = sub_222B01798();
      v45 = v44;

      v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = sub_222B01788();
      v47 = v43;
      v48 = v45;
      v24 = v109;
      v25 = v110;
      sub_222A26530(v47, v48);
      v49 = v46;
    }

    else
    {
      v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = 0;
    }

    v38 = [v49 initWithData_];

    if (!v38)
    {
      goto LABEL_19;
    }

    objc_opt_self();
    v50 = swift_dynamicCastObjCClass();

    if (!v50)
    {
      v35 = v38;
      v24 = v109;
LABEL_19:

LABEL_20:
      v37 = sub_222B018D8();
      (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
      v38 = v27;
      goto LABEL_21;
    }

    v51 = [v50 clientConversationTrace];
    if (v51 && (v52 = v51, v9 = [v51 previousTurnID], v52, v9))
    {
      v53 = sub_222B01798();
      v55 = v54;

      sub_222A67044(v53, v55, v17);
      sub_222A26530(v53, v55);
    }

    else
    {
      v56 = sub_222B018D8();
      (*(*(v56 - 8) + 56))(v17, 1, 1, v56);
    }

    v24 = v109;
LABEL_21:

    v39 = sub_222B018D8();
    a1 = (*(*(v39 - 8) + 48))(v17, 1, v39);
    sub_222A264C8(v17);
    if (a1 != 1)
    {
      v21 = v22;
      break;
    }

    if (__OFADD__(v22++, 1))
    {
      goto LABEL_73;
    }
  }

  v22 = v105;
  if (v104)
  {
    if (v21 == sub_222B02DC8())
    {
      goto LABEL_54;
    }

LABEL_46:
    if (v25)
    {
      v67 = MEMORY[0x223DC6F00](v21, v24);
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v67 = *(v101 + 8 * v21);
    }

    v68 = v67;
    v2 = v103;
    v69 = sub_222A66E54();
    v21 = v102;
    if (v69)
    {
      v70 = v69;
      v71 = [v69 clientConversationTrace];
      if (v71 && (v72 = v71, v73 = [v71 previousTurnID], v72, v73))
      {
        v74 = sub_222B01798();
        v76 = v75;

        v77 = v106;
        sub_222A67044(v74, v76, v106);
        sub_222A26530(v74, v76);
      }

      else
      {
        v80 = sub_222B018D8();
        v77 = v106;
        (*(*(v80 - 8) + 56))(v106, 1, 1, v80);
      }

      v68 = v70;
    }

    else
    {
      v81 = sub_222B018D8();
      v77 = v106;
      (*(*(v81 - 8) + 56))(v106, 1, 1, v81);
    }

    v82 = v107;
    sub_222A6E45C(v77, v107);
    v78 = sub_222B018D8();
    v83 = *(v78 - 8);
    result = (*(v83 + 48))(v82, 1, v78);
    if (result != 1)
    {
      v79 = v108;
      (*(v83 + 32))(v108, v82, v78);
      sub_222A264C8(v77);
      (*(v83 + 56))(v79, 0, 1, v78);
      goto LABEL_60;
    }

    goto LABEL_91;
  }

  if (v21 != *(v2 + 16))
  {
    goto LABEL_46;
  }

LABEL_54:
  v78 = sub_222B018D8();
  v79 = v108;
  (*(*(v78 - 8) + 56))(v108, 1, 1, v78);
  v21 = v102;
  v2 = v103;
LABEL_60:

  sub_222B018D8();
  v84 = (*(*(v78 - 8) + 48))(v79, 1, v78);
  sub_222A264C8(v79);
  if (v84 != 1)
  {
    goto LABEL_69;
  }

  v85 = *(v2 + v22);
  if (v85 >> 62)
  {
    if (v85 < 0)
    {
      v92 = *(v2 + v22);
    }

    result = sub_222B02DC8();
    if (!result)
    {
      goto LABEL_81;
    }

LABEL_63:
    v86 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v85 & 0xC000000000000001) == 0)
    {
      if ((v86 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v86 < *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v87 = *(v85 + 8 * v86 + 32);

        goto LABEL_68;
      }

      __break(1u);
LABEL_91:
      __break(1u);
      return result;
    }

    MEMORY[0x223DC6F00](v86, v85);

LABEL_68:
    v88 = sub_222B01888();

    if (v88)
    {
      goto LABEL_69;
    }

    goto LABEL_81;
  }

  result = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    goto LABEL_63;
  }

LABEL_81:
  v93 = *(v2 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  a1 = swift_allocObject();
  a1[6] = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v9 = swift_allocObject();
  v9[2] = 0;
  if (!(v93 >> 62))
  {
    v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_83;
  }

LABEL_86:
  v94 = sub_222B02DC8();
LABEL_83:
  v95 = sub_222A84F40();
  v96 = swift_allocObject();
  *(v96 + 16) = v94;
  a1[2] = v9;
  a1[3] = v95;
  a1[4] = v96;
  a1[5] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCF0, &qword_222B0BB70);
  v97 = swift_allocObject();
  *(v97 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D220, &unk_222B06C60);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_222B06DF0;
  *(v98 + 32) = v21;
  v99 = *(v2 + v22);
  *(v2 + v22) = v98;

  v100 = *(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_downstream);
  v90 = sub_222AA6114(v97, sub_222AE3AE8);

LABEL_84:

  return v90;
}

void sub_222AA73C8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC28SiriPrivateLearningAnalyticsP33_1C28A16D52A6DDC29A328441443490A627ScanConversationsSubscriber_currentConversation;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &unk_27D01D000;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_3;
  }

  if (v5 < 0)
  {
    v18 = *(v1 + v4);
  }

  v19 = sub_222B02DC8();
  v7 = &unk_27D01D000;
  if (v19)
  {
LABEL_3:
    v8 = *(v1 + v7[410]);
    v9 = *(v2 + v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
    v10 = swift_allocObject();
    v10[6] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    if (v9 >> 62)
    {
      v12 = sub_222B02DC8();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = sub_222A84F40();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v10[2] = v11;
    v10[3] = v13;
    v10[4] = v14;
    v10[5] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCF0, &qword_222B0BB70);
    v15 = swift_allocObject();
    *(v15 + 16) = v10;

    sub_222AA6114(v15, sub_222AE3AE8);

    v16 = *(v2 + v4);
    *(v2 + v4) = MEMORY[0x277D84F90];

    v7 = &unk_27D01D000;
  }

LABEL_6:
  v17 = *(v2 + v7[410]);
  sub_222AA6208(a1);
}

id sub_222AA7694(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id static ORCHEvents.requestID(_:)()
{
  v0 = sub_222A66E6C();
  v1 = [v0 eventMetadata];

  v2 = [v1 requestId];
  return v2;
}

void __swiftcall WakeWordTrimmer.init(localeHandler:)(SiriPrivateLearningAnalytics::WakeWordTrimmer *__return_ptr retstr, SiriPrivateLearningAnalytics::CurrentLocales *localeHandler)
{
  region = localeHandler->siriVoice.region;
  retstr->localeHandler.siriVoice.language = localeHandler->siriVoice.language;
  retstr->localeHandler.siriVoice.region = region;
  retstr->localeHandler.emptyIdentifier = localeHandler->emptyIdentifier;
  v3 = localeHandler->device.region;
  retstr->localeHandler.device.language = localeHandler->device.language;
  retstr->localeHandler.device.region = v3;
  v4 = localeHandler->siri.region;
  retstr->localeHandler.siri.language = localeHandler->siri.language;
  retstr->localeHandler.siri.region = v4;
}

uint64_t *WakeWordTrimmer.trim(tokens:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01DD30, &qword_222B0BBE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v134 = &v123 - v5;
  v6 = WakeWordTrimmer.getLocale()();
  if (!v6.value._object)
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v55 = sub_222B02148();
    __swift_project_value_buffer(v55, qword_280CBC458);
    v56 = sub_222B02128();
    v57 = sub_222B028E8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_222A1C000, v56, v57, "[ASRFeatureExtractor] #TrimWakeWords: Siri Locale was nil. Not attempting to trim wake words", v58, 2u);
      MEMORY[0x223DC7E30](v58, -1, -1);
    }

    goto LABEL_59;
  }

  countAndFlagsBits = v6.value._countAndFlagsBits;
  object = v6.value._object;
  if (qword_280CBA628 != -1)
  {
    goto LABEL_86;
  }

  while (1)
  {
    v9 = sub_222B02148();
    v10 = __swift_project_value_buffer(v9, qword_280CBC458);

    v125 = v10;
    v11 = sub_222B02128();
    v12 = sub_222B028C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v136 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_222A230FC(countAndFlagsBits, object, &v136);
      _os_log_impl(&dword_222A1C000, v11, v12, "[ASRFeatureExtractor] #TrimWakeWords: Trimming wake words for locale %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DC7E30](v14, -1, -1);
      MEMORY[0x223DC7E30](v13, -1, -1);
    }

    v15 = _s28SiriPrivateLearningAnalytics15WakeWordTrimmerV17getTriggerPhrases6localeSaySSGSS_tFZ_0(countAndFlagsBits, object);
    v16 = sub_222B02128();
    v17 = sub_222B028C8();
    v18 = os_log_type_enabled(v16, v17);
    v131 = v15;
    v133 = countAndFlagsBits;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v15;
      v22 = v20;
      v136 = v20;
      *v19 = 136315138;
      v23 = MEMORY[0x223DC6850](v21, MEMORY[0x277D837D0]);
      countAndFlagsBits = v24;
      v25 = a1;
      v26 = sub_222A230FC(v23, v24, &v136);

      *(v19 + 4) = v26;
      a1 = v25;
      _os_log_impl(&dword_222A1C000, v16, v17, "[ASRFeatureExtractor] #TrimWakeWords: Wake words: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DC7E30](v22, -1, -1);
      MEMORY[0x223DC7E30](v19, -1, -1);
    }

    v126 = object;
    object = a1[2];
    v29 = MEMORY[0x277D84F90];
    v123 = a1;
    if (object)
    {
      v30 = (a1 + 5);
      a1 = &v136;
      do
      {
        v32 = *(v30 - 1);
        v31 = *v30;
        v136 = 32;
        v137 = 0xE100000000000000;
        MEMORY[0x28223BE20](v27, v28);
        *(&v123 - 2) = &v136;

        v34 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222AAA918, (&v123 - 4), v32, v31, v33);
        v35 = *(v34 + 16);
        countAndFlagsBits = *(v29 + 2);
        v36 = countAndFlagsBits + v35;
        if (__OFADD__(countAndFlagsBits, v35))
        {
          goto LABEL_81;
        }

        v37 = v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v36 <= *(v29 + 3) >> 1)
        {
          if (!*(v37 + 16))
          {
            goto LABEL_9;
          }
        }

        else
        {
          if (countAndFlagsBits <= v36)
          {
            v39 = countAndFlagsBits + v35;
          }

          else
          {
            v39 = countAndFlagsBits;
          }

          v29 = sub_222AA8D84(isUniquelyReferenced_nonNull_native, v39, 1, v29);
          if (!*(v37 + 16))
          {
LABEL_9:

            if (v35)
            {
              goto LABEL_82;
            }

            goto LABEL_10;
          }
        }

        if ((*(v29 + 3) >> 1) - *(v29 + 2) < v35)
        {
          goto LABEL_83;
        }

        swift_arrayInitWithCopy();

        if (v35)
        {
          v40 = *(v29 + 2);
          v41 = __OFADD__(v40, v35);
          v42 = v40 + v35;
          if (v41)
          {
            goto LABEL_85;
          }

          *(v29 + 2) = v42;
        }

LABEL_10:
        v30 += 2;
        --object;
      }

      while (object);
    }

    v132 = 0;
    v43 = *(v29 + 2);
    if (!v43)
    {
      break;
    }

    v136 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v43, 0);
    v44 = 0;
    v45 = v136;
    v46 = (v29 + 56);
    while (v44 < *(v29 + 2))
    {
      v47 = *(v46 - 3);
      v48 = *(v46 - 2);
      v49 = *(v46 - 1);
      v50 = *v46;

      v51 = MEMORY[0x223DC6660](v47, v48, v49, v50);
      a1 = v52;

      v136 = v45;
      object = *(v45 + 16);
      v53 = *(v45 + 24);
      countAndFlagsBits = object + 1;
      if (object >= v53 >> 1)
      {
        sub_222A23AE4((v53 > 1), object + 1, 1);
        v45 = v136;
      }

      ++v44;
      *(v45 + 16) = countAndFlagsBits;
      v54 = v45 + 16 * object;
      *(v54 + 32) = v51;
      *(v54 + 40) = a1;
      v46 += 4;
      if (v43 == v44)
      {

        goto LABEL_37;
      }
    }

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
    swift_once();
  }

  v45 = MEMORY[0x277D84F90];
LABEL_37:
  v60 = *(v45 + 16);
  v61 = MEMORY[0x277D84F90];
  v62 = v132;
  v124 = v45;
  if (v60)
  {
    v135 = MEMORY[0x277D84F90];
    sub_222A23AE4(0, v60, 0);
    v61 = v135;
    v63 = (v45 + 40);
    do
    {
      v64 = *v63;
      v136 = *(v63 - 1);
      v137 = v64;

      v65 = v134;
      sub_222B018E8();
      v66 = sub_222B01988();
      (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      sub_222A397FC();
      a1 = sub_222B02B78();
      object = v67;
      sub_222AAA934(v65);

      v135 = v61;
      v69 = *(v61 + 16);
      v68 = *(v61 + 24);
      countAndFlagsBits = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        sub_222A23AE4((v68 > 1), v69 + 1, 1);
        v61 = v135;
      }

      *(v61 + 16) = countAndFlagsBits;
      v70 = v61 + 16 * v69;
      *(v70 + 32) = a1;
      *(v70 + 40) = object;
      v63 += 2;
      --v60;
    }

    while (v60);
  }

  v71 = v131;
  v130 = v131[2];
  if (v130)
  {
    v72 = 0;
    v128 = v61;
    v129 = (v131 + 4);
    while (1)
    {
      if (v72 >= v71[2])
      {
        goto LABEL_84;
      }

      v133 = v72;
      v73 = &v129[16 * v72];
      countAndFlagsBits = *v73;
      v74 = v73[1];
      v136 = 32;
      v137 = 0xE100000000000000;
      MEMORY[0x28223BE20](v71, v59);
      *(&v123 - 2) = &v136;
      swift_bridgeObjectRetain_n();
      v127 = countAndFlagsBits;
      v134 = v74;
      v76 = sub_222AA87B4(0x7FFFFFFFFFFFFFFFLL, 1, sub_222AAAACC, (&v123 - 4), countAndFlagsBits, v74, v75);
      v132 = v62;
      v77 = *(v76 + 16);
      if (v77)
      {
        break;
      }

      v79 = MEMORY[0x277D84F90];
LABEL_53:
      v61 = v128;
      v89 = sub_222AA84A0(v79, v128);
      v62 = v132;
      if (v89)
      {

        v100 = v134;

        v101 = sub_222B02128();
        v102 = sub_222B028C8();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v136 = v104;
          *v103 = 136315138;
          v105 = sub_222A230FC(v127, v100, &v136);

          *(v103 + 4) = v105;
          _os_log_impl(&dword_222A1C000, v101, v102, "[ASRFeatureExtractor] #TrimWakeWords: Trigger phrase %s detected. Removing from utterance", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v104);
          MEMORY[0x223DC7E30](v104, -1, -1);
          MEMORY[0x223DC7E30](v103, -1, -1);
        }

        else
        {
        }

        v106 = *(v79 + 16);

        v107 = v124;
        v108 = *(v124 + 16);
        if (v108 >= v106)
        {
          v109 = v106;
        }

        else
        {
          v109 = *(v124 + 16);
        }

        if (v106)
        {
          v110 = v109;
        }

        else
        {
          v110 = 0;
        }

        sub_222B03088();
        swift_unknownObjectRetain_n();
        v111 = v107;
        v112 = swift_dynamicCastClass();
        if (!v112)
        {
          swift_unknownObjectRelease();
          v112 = MEMORY[0x277D84F90];
        }

        v113 = *(v112 + 16);

        if (v113 == v108 - v110)
        {
          a1 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!a1)
          {
            a1 = MEMORY[0x277D84F90];
            goto LABEL_75;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          sub_222AAA1DC(v111, v111 + 32, v110, (2 * v108) | 1);
          a1 = v122;
LABEL_75:
          swift_unknownObjectRelease();
        }

        v114 = sub_222B02128();
        v115 = sub_222B028C8();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          v136 = v117;
          *v116 = 136315138;
          v118 = MEMORY[0x223DC6850](a1, MEMORY[0x277D837D0]);
          v120 = a1;
          v121 = sub_222A230FC(v118, v119, &v136);

          *(v116 + 4) = v121;
          a1 = v120;
          _os_log_impl(&dword_222A1C000, v114, v115, "[ASRFeatureExtractor] #TrimWakeWords: New utterance: %s", v116, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v117);
          MEMORY[0x223DC7E30](v117, -1, -1);
          MEMORY[0x223DC7E30](v116, -1, -1);
        }

        return a1;
      }

      v72 = v133 + 1;

      v71 = v131;
      if (v72 == v130)
      {
        goto LABEL_55;
      }
    }

    v136 = MEMORY[0x277D84F90];
    a1 = v76;
    sub_222A23AE4(0, v77, 0);
    v78 = 0;
    v79 = v136;
    v80 = a1 + 7;
    while (v78 < a1[2])
    {
      v81 = *(v80 - 3);
      v82 = *(v80 - 2);
      v83 = *(v80 - 1);
      v84 = *v80;

      countAndFlagsBits = MEMORY[0x223DC6660](v81, v82, v83, v84);
      object = v85;

      v136 = v79;
      v87 = *(v79 + 16);
      v86 = *(v79 + 24);
      if (v87 >= v86 >> 1)
      {
        sub_222A23AE4((v86 > 1), v87 + 1, 1);
        v79 = v136;
      }

      ++v78;
      *(v79 + 16) = v87 + 1;
      v88 = v79 + 16 * v87;
      *(v88 + 32) = countAndFlagsBits;
      *(v88 + 40) = object;
      v80 += 4;
      if (v77 == v78)
      {

        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

LABEL_55:

  v90 = v61;
  v91 = sub_222B02128();
  v92 = sub_222B028C8();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v136 = v94;
    *v93 = 136315138;
    v95 = MEMORY[0x223DC6850](v90, MEMORY[0x277D837D0]);
    v97 = v96;

    v98 = sub_222A230FC(v95, v97, &v136);

    *(v93 + 4) = v98;
    _os_log_impl(&dword_222A1C000, v91, v92, "[ASRFeatureExtractor] #TrimWakeWords: No wake words detected. Utterance used: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x223DC7E30](v94, -1, -1);
    MEMORY[0x223DC7E30](v93, -1, -1);
  }

  else
  {
  }

  a1 = v123;
LABEL_59:

  return a1;
}

uint64_t sub_222AA84A0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_222B02F78();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_222AA855C()
{

  v0 = sub_222B024B8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_222B024B8();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_222B02F78();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_222B024B8();
      v3 = v5;
    }

    while (v5);
  }

  sub_222B024B8();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

Swift::String_optional __swiftcall WakeWordTrimmer.getLocale()()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[12];
  v4 = v0[13];
  v11 = v0[4];
  v12 = v0[5];

  MEMORY[0x223DC66E0](95, 0xE100000000000000);
  MEMORY[0x223DC66E0](v1, v2);
  v6 = v11;
  v5 = v12;
  v7 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v7 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (sub_222A397FC(), (sub_222B02B98() & 1) != 0) || v11 == 95 && v12 == 0xE100000000000000 || (sub_222B02F78() & 1) != 0)
  {

    v6 = 0;
    v5 = 0;
  }

  v8 = v6;
  v9 = v5;
  result.value._object = v9;
  result.value._countAndFlagsBits = v8;
  return result;
}

unint64_t sub_222AA87B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_222B02548();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_222AA8D84(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_222AA8D84((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_222B02528();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_222B02468();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_222B02468();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_222B02548();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_222AA8D84(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_222B02548();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_222AA8D84(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_222AA8D84((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_222B02468();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}