char *sub_21D08FC60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544B8, &qword_21D0964C8);
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

unint64_t sub_21D08FD64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE543E8, &qword_21D0963E8);
    v3 = sub_21D094770();
    v4 = a1 + 32;

    while (1)
    {
      sub_21D05B270(v4, &v13, &qword_27CE543F0, &qword_21D0963F0);
      v5 = v13;
      v6 = v14;
      result = sub_21D055BA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21D091028(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21D08FE94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54208, &qword_21D095B58);
    v3 = sub_21D094770();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21D055BA8(v5, v6);
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

unint64_t sub_21D08FF98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE54218, &qword_21D0964D0);
    v3 = sub_21D094770();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21D055C20(v7, v8);
      result = sub_21D055BA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_21D0900B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE541C8, &unk_21D095B10);
    v3 = sub_21D094770();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21D055BA8(v5, v6);
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

uint64_t sub_21D0901C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_21D051DB8;

  return sub_21D061B74(a1, v4, v5, v6, v7, v8, v9, v10);
}

id sub_21D09029C(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_21D092F20();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_21D090360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_21D0936A0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = *(*(sub_21D0936C0() - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D090450, 0, 0);
}

uint64_t sub_21D090450()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[2];
  sub_21D0936F0();
  v6 = *(sub_21D093D00() - 8);
  v7 = *(v6 + 64) + 15;
  swift_task_alloc();
  (*(v6 + 16))();
  sub_21D0900B0(MEMORY[0x277D84F90]);
  sub_21D093690();

  (*(v4 + 104))(v1, *MEMORY[0x277D41588], v3);
  sub_21D0936B0();
  v8 = sub_21D0936D0();
  v0[9] = v8;
  v14 = (v0[3] + *v0[3]);
  v9 = *(v0[3] + 4);
  v10 = v8;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_21D0906D0;
  v12 = v0[4];

  return v14(v10);
}

uint64_t sub_21D0906D0()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21D0907CC, 0, 0);
}

uint64_t sub_21D0907CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_21D090864(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_21D0522A0;

  return sub_21D075130(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_21D09093C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v16 = *(v3 + 72);
  v17 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_21D0522A0;

  return sub_21D0821B8(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D090A4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21D090A98()
{
  result = qword_27CE54348;
  if (!qword_27CE54348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54348);
  }

  return result;
}

unint64_t sub_21D090AF0()
{
  result = qword_27CE54350;
  if (!qword_27CE54350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54350);
  }

  return result;
}

unint64_t sub_21D090B48()
{
  result = qword_27CE54358;
  if (!qword_27CE54358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54358);
  }

  return result;
}

unint64_t sub_21D090BA0()
{
  result = qword_27CE54360;
  if (!qword_27CE54360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54360);
  }

  return result;
}

unint64_t sub_21D090BF4()
{
  result = qword_27CE54368;
  if (!qword_27CE54368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54368);
  }

  return result;
}

unint64_t sub_21D090C4C()
{
  result = qword_27CE54370;
  if (!qword_27CE54370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54370);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_32PrivateMLClientInferenceProvider0abcD5ErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_21D090CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21D090D18(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21D090D5C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_21D090D90(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21D090DEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t type metadata accessor for NewInferenceProvider()
{
  result = qword_2812215D8;
  if (!qword_2812215D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D090EB0()
{
  result = sub_21D094230();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_21D094730();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_21D0941B0();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_21D090FE0(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_21D091028(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21D091038(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D0522A0;

  return sub_21D08B12C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21D091198()
{
  result = qword_281221478;
  if (!qword_281221478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281221478);
  }

  return result;
}

unint64_t sub_21D0911EC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_21D055BA8(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_21D056498(v15, v5 & 1);
    v17 = *a3;
    result = sub_21D055BA8(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_21D0947E0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v23 = (v19[6] + 16 * result);
    *v23 = v8;
    v23[1] = v7;
    *(v19[7] + 4 * result) = v9;
    v24 = v19[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v25;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v22 = result;
  sub_21D0576DC();
  result = v22;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v19[7] + 4 * result);
  v21 = result;

  *(v19[7] + 4 * v21) = v20;
  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v9 = *v5;
      v28 = *a3;

      result = sub_21D055BA8(v7, v6);
      v30 = v28[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v29;
      if (v28[3] < v32)
      {
        sub_21D056498(v32, 1);
        v33 = *a3;
        result = sub_21D055BA8(v7, v6);
        if ((v8 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      v35 = *a3;
      if (v8)
      {
        v26 = *(v35[7] + 4 * result);
        v27 = result;

        *(v35[7] + 4 * v27) = v26;
      }

      else
      {
        v35[(result >> 6) + 8] |= 1 << result;
        v36 = (v35[6] + 16 * result);
        *v36 = v7;
        v36[1] = v6;
        *(v35[7] + 4 * result) = v9;
        v37 = v35[2];
        v14 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v35[2] = v38;
      }

      v5 += 6;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_21D091454(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544C0, &unk_21D0964D8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21D094070() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[3];
  v20 = v1[2];
  v12 = v1[4];
  v13 = v1[5];
  v14 = (v1 + v9);
  v16 = *v14;
  v15 = v14[1];
  v17 = *(v1 + v10);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_21D0522A0;

  return sub_21D06A970(a1, v20, v11, v12, v13, v1 + v5, v1 + v8, v16);
}

uint64_t sub_21D091638(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D0522A0;

  return sub_21D06D8A8(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21D091728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v16 = *(v3 + 72);
  v17 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_21D0522A0;

  return sub_21D0806D4(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D091838(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D0522A0;

  return sub_21D08B12C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091938(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE544D8, &qword_21D096540) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_21D094070() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_21D093EB0() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = v1[5];
  v16 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_21D0522A0;

  return sub_21D0629D0(a1, v12, v13, v14, v15, v1 + v5, v1 + v8, v1 + v11);
}

uint64_t sub_21D091B40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D091B88(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D0522A0;

  return sub_21D065BE4(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21D091C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v16 = *(v3 + 72);
  v17 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = swift_task_alloc();
  *(v4 + 16) = v14;
  *v14 = v4;
  v14[1] = sub_21D0522A0;

  return sub_21D08BBB0(a1, a2, a3, v8, v9, v10, v11, v12);
}

uint64_t sub_21D091D88(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v15 = *(v2 + 64);
  v12 = *(v2 + 80);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21D051DB8;

  return sub_21D08D86C(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_21D091E88(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21D091EEC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21D0947D0() & 1;
  }
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

uint64_t sub_21D091FF0()
{
  v0 = sub_21D094230();
  __swift_allocate_value_buffer(v0, qword_281221760);
  __swift_project_value_buffer(v0, qword_281221760);

  return sub_21D094220();
}

uint64_t static Logger.viewCycle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2812217B0 != -1)
  {
    swift_once();
  }

  v2 = sub_21D094230();
  v3 = __swift_project_value_buffer(v2, qword_281221760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t InferenceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  InferenceProvider.init()();
  return v0;
}

void *InferenceProvider.init()()
{
  v1 = v0;
  v2 = sub_21D094230();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21D0941B0();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812217B0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_281221760);
  v11 = sub_21D094210();
  v12 = sub_21D094550();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21D044000, v11, v12, "Using NewInferenceProvider", v13, 2u);
    MEMORY[0x223D3CDF0](v13, -1, -1);
  }

  v14 = type metadata accessor for NewInferenceProvider();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_logger;
  if (qword_281221778 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v2, qword_2812217C8);
  v20 = *(v3 + 16);
  v20(v17 + v18, v19, v2);
  sub_21D094700();
  v20(v6, v17 + v18, v2);
  sub_21D094190();
  (*(v7 + 32))(v17 + OBJC_IVAR____TtC32PrivateMLClientInferenceProvider20NewInferenceProvider_signPoster, v10, v23);
  v1[5] = v14;
  v1[6] = sub_21D092430();
  v1[2] = v17;
  return v1;
}

unint64_t sub_21D092430()
{
  result = qword_27CE54500;
  if (!qword_27CE54500)
  {
    type metadata accessor for NewInferenceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE54500);
  }

  return result;
}

uint64_t InferenceProvider.loadIn(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D0924AC, 0, 0);
}

uint64_t sub_21D0924AC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D29E60] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_21D092DD8;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282188C28](v7, v6, v2, v3);
}

uint64_t InferenceProvider.loadOut(inferenceAssetIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21D092590, 0, 0);
}

uint64_t sub_21D092590()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D29E68] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_21D092DD8;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282188C30](v7, v6, v2, v3);
}

uint64_t InferenceProvider.requestStream(clientData:configuration:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  return sub_21D093F00();
}

uint64_t InferenceProvider.requestOneShot(clientData:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21D0926E8, 0, 0);
}

uint64_t sub_21D0926E8()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D29E58] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21D0927AC;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x282188C20](v8, v6, v7, v2, v3);
}

uint64_t sub_21D0927AC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t InferenceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_21D092914@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = InferenceProvider.init()();
  *a1 = v2;
  return result;
}

uint64_t sub_21D092950(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_21D092978, 0, 0);
}

uint64_t sub_21D092978()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D29E60] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_21D092A38;
  v7 = v0[2];
  v6 = v0[3];

  return MEMORY[0x282188C28](v7, v6, v2, v3);
}

uint64_t sub_21D092A38()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21D092B2C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_21D092590, 0, 0);
}

uint64_t sub_21D092B54()
{
  v1 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  return sub_21D093F00();
}

uint64_t sub_21D092BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_21D092BF8, 0, 0);
}

uint64_t sub_21D092BF8()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(MEMORY[0x277D29E58] + 4);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_21D092DDC;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return MEMORY[0x282188C20](v8, v6, v7, v2, v3);
}

uint64_t sub_21D092CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(MEMORY[0x277D29E78] + 4);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_21D0522A0;

  return MEMORY[0x282188C50](a1, a2, a3, a4, a5);
}