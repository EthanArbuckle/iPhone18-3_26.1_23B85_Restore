void *sub_27573C8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3C0);
  v2 = *v0;
  v3 = sub_275798850();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = (*(v2 + 56) + v17);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(v4 + 48) + v17;
        *v23 = v19;
        *(v23 + 8) = v18;
        v24 = (*(v4 + 56) + v17);
        *v24 = v22;
        v24[1] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_27573CA44(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_275797F50();
  sub_275798A40();
  sub_275797FF0();
  v7 = sub_275798A70();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_275797F50();
      v13 = v12;
      if (v11 == sub_275797F50() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_275798980();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_27573CE6C(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_27573CBF0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3B8);
  result = sub_2757986D0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_275797F50();
      sub_275798A40();
      sub_275797FF0();
      v17 = sub_275798A70();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_27573CE6C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_27573CBF0();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_27573D054();
      goto LABEL_16;
    }

    sub_27573D1A4();
  }

  v9 = *v3;
  sub_275797F50();
  sub_275798A40();
  sub_275797FF0();
  v10 = sub_275798A70();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for Dataclass(0);
    do
    {
      v13 = sub_275797F50();
      v15 = v14;
      if (v13 == sub_275797F50() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_275798980();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2757989C0();
  __break(1u);
  return result;
}

id sub_27573D054()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3B8);
  v2 = *v0;
  v3 = sub_2757986C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_27573D1A4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3B8);
  result = sub_2757986D0();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = v2 + 56;
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_275797F50();
      sub_275798A40();
      v17 = v16;
      sub_275797FF0();
      v18 = sub_275798A70();

      v19 = -1 << *(v4 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v17;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v26;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_27573D3F8()
{
  v0 = sub_2757988A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_27573D444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  if (a1 == 1664117041 && a2 == 0xE400000000000000 || (sub_275798980() & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a1 == 1664117042 && a2 == 0xE400000000000000 || (sub_275798980() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 1664182578 && a2 == 0xE400000000000000 || (sub_275798980() & 1) != 0)
  {

    return 3;
  }

  if (a1 == 1668835634 && a2 == 0xE400000000000000)
  {
LABEL_21:

    return 1;
  }

  else
  {
    v6 = sub_275798980();

    return v6 & 1;
  }
}

uint64_t sub_27573D5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F43707061 && a2 == 0xE800000000000000 || (sub_275798980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037277037 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_275798980();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_27573D704(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3D0);
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v30 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3D8);
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3E0);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3E8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v39 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_27573FF84();
  v14 = v38;
  sub_275798A80();
  if (v14)
  {
    goto LABEL_9;
  }

  v15 = v37;
  v31 = 0;
  v38 = v9;
  v16 = sub_275798920();
  v17 = *(v16 + 16);
  if (!v17 || ((v18 = *(v16 + 32), v17 == 1) ? (v19 = v18 == 3) : (v19 = 1), v19))
  {
    v20 = sub_275798750();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3F0);
    v13 = v11;
    *v22 = &type metadata for AppMessageKey;
    sub_2757988C0();
    sub_275798740();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v38 + 8))(v11, v8);
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (!*(v16 + 32))
  {
    v40 = 0;
    sub_275740080();
    v13 = v11;
    v26 = v31;
    sub_2757988B0();
    v27 = v38;
    if (!v26)
    {
      (*(v33 + 8))(v7, v5);
      (*(v27 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
      goto LABEL_9;
    }

    (*(v38 + 8))(v11, v8);
    goto LABEL_19;
  }

  v24 = v38;
  if (v18 != 1)
  {
    v42 = 2;
    sub_27573FFD8();
    v13 = v11;
    v28 = v31;
    sub_2757988B0();
    if (!v28)
    {
      (*(v36 + 8))(v15, v34);
      (*(v24 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 1;
      goto LABEL_9;
    }

    (*(v24 + 8))(v11, v8);
LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v41 = 1;
  sub_27574002C();
  v13 = v11;
  v25 = v31;
  sub_2757988B0();
  if (!v25)
  {
    v29 = v32;
    v13 = sub_275798900();
    (*(v35 + 8))(v4, v29);
  }

  (*(v24 + 8))(v11, v8);
  swift_unknownObjectRelease();
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v13;
}

char *sub_27573DCFC(char *a1)
{
  v3 = sub_2757963E0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = sub_27574911C();
  if (!v1)
  {
    v11 = v10;
    if (*(v10 + 16))
    {
      v12 = sub_2756F72B4(7955819, 0xE300000000000000);
      if (v13)
      {
        v14 = *(v11 + 56);
        v15 = v4[2];
        v25 = v4[9];
        v26 = v15;
        v15(v9, v14 + v25 * v12, v3);
        v22 = sub_2757487CC();
        v24 = v17;
        v23 = v4[1];
        v23(v9, v3);
        if (*(v11 + 16))
        {
          v18 = sub_2756F72B4(0x65756C6176, 0xE500000000000000);
          if (v19)
          {
            v26(v7, *(v11 + 56) + v18 * v25, v3);

            sub_2757487CC();
            v20 = v23;
            v23(v7, v3);
            v7 = sub_27573D444(v22, v24);
            v20(a1, v3);
            return v7;
          }
        }
      }
    }

    sub_27573FF30();
    swift_allocError();
    swift_willThrow();
  }

  (v4[1])(a1, v3);
  return v7;
}

uint64_t sub_27573E014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF0D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_2757963E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  sub_2756C9074(a1, v4, &qword_2809FF0D8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2756C92B4(a1, &qword_2809FF0D8);
    sub_2756C92B4(v4, &qword_2809FF0D8);
    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  v13 = sub_2757490EC();
  v14 = v13;
  v42 = a1;
  v50 = *(v13 + 16);
  if (!v50)
  {
    v12 = MEMORY[0x277D84F98];
LABEL_19:

    sub_2756C92B4(v42, &qword_2809FF0D8);
    (*(v6 + 8))(v11, v5);
    return v12;
  }

  v15 = 0;
  v49 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v48 = v6 + 16;
  v12 = MEMORY[0x277D84F98];
  v46 = v6;
  v47 = v5;
  v44 = v9;
  v45 = v11;
  v43 = v13;
  while (v15 < *(v14 + 16))
  {
    (*(v6 + 16))(v9, v49 + *(v6 + 72) * v15, v5);
    v16 = sub_27573DCFC(v9);
    v18 = v17;
    v20 = v19;
    v22 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v12;
    v25 = sub_27573C4B4(v16, v18 & 1);
    v26 = v12[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_22;
    }

    v29 = v24;
    if (v12[3] < v28)
    {
      sub_27573C5F0(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_27573C4B4(v16, v18 & 1);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_24;
      }

      v25 = v30;
LABEL_12:
      v32 = v22;
      v33 = v20;
      v12 = v51;
      if (v29)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    sub_27573C8CC();
    v33 = v20;
    v32 = v22;
    v12 = v51;
    if (v29)
    {
LABEL_13:
      v34 = (v12[7] + 16 * v25);
      *v34 = v33;
      v34[1] = v32;

      goto LABEL_17;
    }

LABEL_15:
    v12[(v25 >> 6) + 8] |= 1 << v25;
    v35 = v12[6] + 16 * v25;
    *v35 = v16;
    *(v35 + 8) = v18 & 1;
    v36 = (v12[7] + 16 * v25);
    *v36 = v33;
    v36[1] = v32;

    v37 = v12[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_23;
    }

    v12[2] = v39;
LABEL_17:
    v6 = v46;
    v5 = v47;
    v9 = v44;
    v11 = v45;
    v14 = v43;
    if (v50 == ++v15)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_2757989D0();
  __break(1u);
  return result;
}

unint64_t sub_27573E460()
{
  result = qword_2809FF2A8;
  if (!qword_2809FF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF2A8);
  }

  return result;
}

uint64_t sub_27573E4B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275798950();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_27573E508()
{
  result = qword_2809FF2B8;
  if (!qword_2809FF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF2B8);
  }

  return result;
}

unint64_t sub_27573E55C()
{
  result = qword_2809FF2C0;
  if (!qword_2809FF2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF2C0);
  }

  return result;
}

void sub_27573E5B0(uint64_t *a1@<X8>)
{
  if (__OFSUB__(*(*(v1 + 16) + 16), **(v1 + 24)))
  {
    __break(1u);
  }

  else
  {
    *a1 = sub_275798950();
    a1[1] = v3;
  }
}

void sub_27573E618(uint64_t *a1@<X8>)
{
  v3 = [objc_opt_self() localizedTextForDataclass_];
  v4 = sub_275797F50();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_27573E690(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_27573E6A4(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t type metadata accessor for AppMessageTextView()
{
  result = qword_280A08AC0;
  if (!qword_280A08AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_27573E704()
{
  result = qword_280A083B8[0];
  if (!qword_280A083B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A083B8);
  }

  return result;
}

uint64_t sub_27573E758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMessageTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27573E7BC(uint64_t a1)
{
  v2 = type metadata accessor for AppMessageTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_27573E818(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_27573E824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppMessageTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_27573E8E8()
{
  result = qword_2809FF300;
  if (!qword_2809FF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF300);
  }

  return result;
}

unint64_t sub_27573E940()
{
  result = qword_2809FF308;
  if (!qword_2809FF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF308);
  }

  return result;
}

uint64_t sub_27573E994()
{
  sub_27573EA4C(&qword_2809FF270, type metadata accessor for AppMessageTextView);
  sub_27573EA4C(&qword_2809FF310, type metadata accessor for AppMessageTextView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27573EA4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27573EB44()
{
  result = qword_2809FF328;
  if (!qword_2809FF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF328);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13iCloudQuotaUI8AppStateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_27573EBE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_27573EC28(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27573EC6C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppMessageKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppMessageKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_27573ECE4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27573ED00(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_27573ED30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27573ED78(uint64_t result, int a2, int a3)
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

void sub_27573EE00()
{
  sub_2756CF50C();
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_27573EFF8(319, &qword_2809FF330, &qword_2809FDEF0, &unk_2757A5D78, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_27573F118(319, &qword_2809FF338, &type metadata for AppState, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2756FFE70();
          if (v4 <= 0x3F)
          {
            sub_27573EFF8(319, &qword_2809FD960, &qword_2809FD900, &unk_2757A6EE0, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_27573EFF8(319, &qword_2809FF340, &qword_2809FF2E8, &unk_2757AA1E0, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_27573EFF8(319, &qword_2809FF348, &qword_2809FD858, &unk_2757A5D40, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_27573EFF8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_27573F06C()
{
  result = qword_2809FF350;
  if (!qword_2809FF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF350);
  }

  return result;
}

void sub_27573F118(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AppMessageTextView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppMessageTextView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27573F2BC()
{
  result = qword_280A08C50[0];
  if (!qword_280A08C50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A08C50);
  }

  return result;
}

unint64_t sub_27573F3EC()
{
  result = qword_280A09060;
  if (!qword_280A09060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A09060);
  }

  return result;
}

unint64_t sub_27573F444()
{
  result = qword_280A09068[0];
  if (!qword_280A09068[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09068);
  }

  return result;
}

uint64_t sub_27573F498()
{
  v0 = sub_2757988A0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

void sub_27573F4E4()
{
  v1 = v0;
  v2 = type metadata accessor for AppMessageTextView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_275796280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_275700E70();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_275796270();
  v11 = sub_2757982E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_275623000, v10, v11, "Fetching PR status for app message", v12, 2u);
    MEMORY[0x277C81E50](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v13 = objc_opt_self();
  sub_2756C557C(0, &qword_2809FEE60);
  v14 = sub_275798340();
  sub_27573E758(v1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_27573E824(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  aBlock[4] = sub_27573FE04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27573BCEC;
  aBlock[3] = &block_descriptor_64;
  v17 = _Block_copy(aBlock);

  [v13 getServiceStatus:v14 completionHandler:v17];
  _Block_release(v17);
}

uint64_t sub_27573F7BC(void *a1)
{
  v3 = *(type metadata accessor for AppMessageTextView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27573AE74(a1, v4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_27573F844()
{
  type metadata accessor for AppMessageTextView();
  v1 = *(v0 + 16);
  v2 = [v1 photoCount];
  result = [v1 videoCount];
  if (__CFADD__(v2, result))
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
    return sub_2757975C0();
  }

  return result;
}

uint64_t sub_27573F944(unint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for AppMessageTextView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_27573B408(a1, a2, v6);
}

uint64_t sub_27573F9C4()
{
  type metadata accessor for AppMessageTextView();
  v1 = *(v0 + 16);
  if (v1 && v1 >> 62)
  {
    sub_275798640();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2C8);
  return sub_2757975C0();
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for AppMessageTextView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v23 = v0;
  v4 = v0 + v3;

  sub_27573E818(*(v4 + 24), *(v4 + 32));
  sub_27573E6A4(*(v4 + 40), *(v4 + 48));

  v5 = v1[9];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);
  v9 = v1[10];
  v10 = *(v7 + 48);
  if (!v10(v4 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v11 = v1[11];
  if (!v10(v4 + v11, 1, v6))
  {
    v8(v4 + v11, v6);
  }

  v12 = v1[12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v16 = v1[13];
  if (!v15(v4 + v16, 1, v13))
  {
    (*(v14 + 8))(v4 + v16, v13);
  }

  v17 = v1[14];
  if (!v15(v4 + v17, 1, v13))
  {
    (*(v14 + 8))(v4 + v17, v13);
  }

  v18 = v1[15];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v4 + v18, 1, v19))
  {
    (*(v20 + 8))(v4 + v18, v19);
  }

  return MEMORY[0x2821FE8E8](v23, v3 + v22, v2 | 7);
}

uint64_t sub_27573FE04(void *a1)
{
  v3 = *(type metadata accessor for AppMessageTextView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27573BAD0(a1, v4);
}

uint64_t sub_27573FE74(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for Dataclass(0);
  v4 = v3;
  v5 = sub_27573EA4C(&qword_2809FF380, type metadata accessor for Dataclass);
  result = MEMORY[0x277C80350](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_27573CA44(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_27573FF30()
{
  result = qword_2809FF3C8;
  if (!qword_2809FF3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF3C8);
  }

  return result;
}

unint64_t sub_27573FF84()
{
  result = qword_280A090F0;
  if (!qword_280A090F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A090F0);
  }

  return result;
}

unint64_t sub_27573FFD8()
{
  result = qword_280A090F8;
  if (!qword_280A090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A090F8);
  }

  return result;
}

unint64_t sub_27574002C()
{
  result = qword_280A09100;
  if (!qword_280A09100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A09100);
  }

  return result;
}

unint64_t sub_275740080()
{
  result = qword_280A09108[0];
  if (!qword_280A09108[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09108);
  }

  return result;
}

unint64_t sub_275740118()
{
  result = qword_280A09310[0];
  if (!qword_280A09310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09310);
  }

  return result;
}

unint64_t sub_275740170()
{
  result = qword_280A09620[0];
  if (!qword_280A09620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09620);
  }

  return result;
}

unint64_t sub_2757401C8()
{
  result = qword_280A09730;
  if (!qword_280A09730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A09730);
  }

  return result;
}

unint64_t sub_275740220()
{
  result = qword_280A09738[0];
  if (!qword_280A09738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09738);
  }

  return result;
}

unint64_t sub_275740278()
{
  result = qword_280A097C0;
  if (!qword_280A097C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A097C0);
  }

  return result;
}

unint64_t sub_2757402D0()
{
  result = qword_280A097C8[0];
  if (!qword_280A097C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A097C8);
  }

  return result;
}

unint64_t sub_275740328()
{
  result = qword_280A09850;
  if (!qword_280A09850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A09850);
  }

  return result;
}

unint64_t sub_275740380()
{
  result = qword_280A09858[0];
  if (!qword_280A09858[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09858);
  }

  return result;
}

unint64_t sub_2757403D8()
{
  result = qword_280A098E0;
  if (!qword_280A098E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A098E0);
  }

  return result;
}

unint64_t sub_275740430()
{
  result = qword_280A098E8[0];
  if (!qword_280A098E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A098E8);
  }

  return result;
}

uint64_t sub_27574050C()
{
  v1 = *v0;
  v2 = v0[1];
  strcpy(v4, "inAppBanner_");
  MEMORY[0x277C80130](v1, v2);
  return v4[0];
}

uint64_t sub_275740560@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

__n128 sub_27574058C@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unint64_t a4@<X3>, __n128 *a5@<X8>)
{
  a5->n128_u64[0] = a1;
  a5->n128_u64[1] = a2;
  result = *a3;
  a5[1] = *a3;
  a5[2].n128_u64[0] = a4;
  return result;
}

uint64_t sub_2757405C0@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  MEMORY[0x277C80130]();
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v6;
  a4[3] = v5;
  a4[4] = 0;
}

uint64_t sub_275740624@<X0>(uint64_t *a1@<X3>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  strcpy(v7, "loadSuccess_");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x277C80130]();
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = 0;
}

uint64_t sub_2757406A4@<X0>(uint64_t *a1@<X5>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  strcpy(v7, "loadFailure_");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  MEMORY[0x277C80130]();
  v5 = v7[1];
  *a2 = v7[0];
  a2[1] = v5;
  a2[2] = v4;
  a2[3] = v3;
  a2[4] = 0;
}

uint64_t sub_275740724@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2757A8B60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002757B95E0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v7 = sub_27574152C(inited);
  swift_setDeallocating();
  sub_275741640(inited + 32);
  v8 = sub_275740810(v7);

  *a3 = 0xD000000000000018;
  a3[1] = 0x80000002757B9600;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = v8;
  return result;
}

unint64_t sub_275740810(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    v2 = sub_275798870();
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
        v14 = (*(a1 + 48) + ((v12 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_2756D5AA8(&v22, v24);
        sub_2756D5AA8(v24, v25);
        sub_2756D5AA8(v25, &v23);
        result = sub_2756F72B4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_2756D5AA8(&v23, v11);
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
          result = sub_2756D5AA8(&v23, (v2[7] + 32 * result));
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

void sub_275740A68(void *a1@<X8>)
{
  *a1 = 0xD000000000000017;
  a1[1] = 0x80000002757B9620;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
}

void sub_275740A90(void *a1@<X8>)
{
  *a1 = 0xD000000000000011;
  a1[1] = 0x80000002757B9640;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
}

id Analytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Analytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_275740CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x277C80130](a3, a4);
  (*((*MEMORY[0x277D85000] & *v4) + 0x80))(a1, a2, 0x6E696D6873657266, 0xEA00000000005F74);
}

uint64_t sub_275740E70(uint64_t a1, uint64_t a2)
{
  sub_275798710();

  MEMORY[0x277C80130](a1, a2);
  (*((*MEMORY[0x277D85000] & *v2) + 0x80))(a1, a2, 0xD000000000000013, 0x80000002757B9680);
}

uint64_t sub_2757411C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = 0;
  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x50);

  v5(v7);
}

uint64_t static Analytics.logInAppBannerImpression(appIdentifier:)()
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

uint64_t static Analytics.logInAppBannerView(appIdentifier:)()
{
  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
}

id Analytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Analytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_27574152C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF158);
    v3 = sub_275798870();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2756F72B4(v5, v6);
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

uint64_t sub_275741640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2757416CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  MEMORY[0x277C80130]();
  memset(&v6[2], 0, 24);
  (*((*MEMORY[0x277D85000] & *v4) + 0x50))(v6);
}

uint64_t sub_275741774(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF3F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2757A8B60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000002757B95E0;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v5 = sub_27574152C(inited);
  swift_setDeallocating();
  sub_275741640(inited + 32);
  sub_275740810(v5);

  _s13iCloudQuotaUI9AnalyticsC3logyyAC5EventVFZ_0();
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

uint64_t sub_275741A28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_275741A70(uint64_t result, int a2, int a3)
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

uint64_t sub_275741AC8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_27562F5A8(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_275741AF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  sub_275741F24(v1, v12);
  v6 = swift_allocObject();
  v7 = v12[1];
  *(v6 + 16) = v12[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v12[2];
  *(v6 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF408);

  v8 = sub_275797E90();
  v9 = sub_2757981E0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2757AADD0;
  v10[5] = v6;
  v10[6] = v8;

  sub_275742600(0, 0, v5, &unk_2757AADE8, v10);

  return v8;
}

uint64_t sub_275741C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_275741CBC, 0, 0);
}

uint64_t sub_275741CBC()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);

  v6 = nullsub_1(v4, v5);
  v0[6] = v6;
  v0[2] = v6;
  v7 = v1[5];
  v8 = swift_task_alloc();
  v0[7] = v8;
  v9 = sub_27570A6BC();
  *v8 = v0;
  v8[1] = sub_275741DBC;
  v10 = v0[3];

  return MEMORY[0x28217F4B0](v10, v0 + 2, v7, &type metadata for LintIntent, v9, v2, v3);
}

uint64_t sub_275741DBC()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_275741F0C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_275741F5C(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DC7F0;

  return sub_275741C98(a1, v1 + 16, v4);
}

uint64_t sub_275742008(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  sub_275741F24(v1, v12);
  v6 = swift_allocObject();
  v7 = v12[1];
  *(v6 + 16) = v12[0];
  *(v6 + 32) = v7;
  *(v6 + 48) = v12[2];
  *(v6 + 64) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF408);

  v8 = sub_275797E90();
  v9 = sub_2757981E0();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_2757AAE70;
  v10[5] = v6;
  v10[6] = v8;

  sub_275742600(0, 0, v5, &unk_2757AAE78, v10);

  return v8;
}

uint64_t sub_2757421A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_275797C40();
  v6[3] = v8;
  v6[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v6[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_275742308;

  return v12(v9);
}

uint64_t sub_275742308()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2757424AC;
  }

  else
  {
    v2 = sub_27574241C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27574241C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_275797E80();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2757424AC()
{
  v1 = *(v0 + 56);
  sub_275797E70();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_275742524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2756DC7F0;

  return sub_2757421A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_275742600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2756DDED4(a3, v23 - v10);
  v12 = sub_2757981E0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2756DDF44(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2757981D0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_275798160();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_275797FD0() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2756DDF44(a3);

    return v21;
  }

LABEL_8:
  sub_2756DDF44(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2757428BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_275742904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2757429A8(uint64_t a1)
{
  v4 = *(v1 + 64);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DBB90;

  return sub_275741C98(a1, v1 + 16, v4);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275742A9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2756DBB90;

  return sub_2757421A8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_275742B78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DC7F0;

  return sub_2756F11B0(a1, v4);
}

unint64_t sub_275742C8C()
{
  result = qword_2809FD688;
  if (!qword_2809FD688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FD688);
  }

  return result;
}

uint64_t sub_275742CD8(double a1)
{
  sub_2757983E0();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  return MEMORY[0x277C80B80](*&v2);
}

uint64_t sub_275742D24(double a1)
{
  sub_275798A40();
  sub_2757983E0();
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  MEMORY[0x277C80B80](*&v2);
  return sub_275798A70();
}

uint64_t sub_275742D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_275742C8C();
  return sub_2757983D0() & (v2 == v3);
}

uint64_t sub_275742DE8()
{
  v1 = *(v0 + 8);
  sub_275798A40();
  sub_2757983E0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x277C80B80](*&v2);
  return sub_275798A70();
}

uint64_t sub_275742E54()
{
  v1 = *(v0 + 8);
  sub_2757983E0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x277C80B80](*&v2);
}

uint64_t sub_275742EA4()
{
  v1 = *(v0 + 8);
  sub_275798A40();
  sub_2757983E0();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x277C80B80](*&v2);
  return sub_275798A70();
}

uint64_t sub_275742F20()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
}

uint64_t sub_275742FA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_275742FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

uint64_t sub_275743044(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2])
  {
    if (a1)
    {

      sub_27574650C(v3, a1);
      v5 = v4;

      if (v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x28223BE20](KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 288))(v7, sub_275743180);
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v1[2] = a1;
}

uint64_t sub_275743180()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 16) = v1;
}

void (*sub_2757431E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 280))(KeyPath);

  v4[5] = OBJC_IVAR____TtC13iCloudQuotaUI14PhotoGridModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2757466BC();
  sub_275795E30();

  v4[7] = sub_2756C2EF8();
  return sub_275743304;
}

uint64_t sub_275743324@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t sub_275743338()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  return v0[3];
}

__n128 sub_2757433A4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 280))();

  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_27574342C(__int128 *a1, uint64_t *a2)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  KeyPath = swift_getKeyPath();
  v9 = v4;
  v10 = v7;
  v11 = v2;
  v12 = v3;
  (*(*v4 + 288))(KeyPath, sub_27574780C, v8, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_275743550()
{
  swift_getKeyPath();
  (*(*v0 + 280))();

  swift_beginAccess();
  return v0[49];
}

uint64_t sub_2757435D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_275743668(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[49] == v2)
  {
    v1[49] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 288))(v5, sub_275746760);
  }

  return result;
}

void (*sub_275743764(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 280))(KeyPath);

  v4[5] = OBJC_IVAR____TtC13iCloudQuotaUI14PhotoGridModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_2757466BC();
  sub_275795E30();

  v4[7] = sub_2757434F8();
  return sub_275743884;
}

void sub_275743890(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_275795E20();

  free(v1);
}

uint64_t sub_275743924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  v4[6] = swift_task_alloc();
  v5 = sub_275796280();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = sub_2757981B0();
  v4[13] = sub_2757981A0();
  v7 = sub_275798160();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x2822009F8](sub_275743A70, v7, v6);
}

uint64_t sub_275743A70()
{
  v1 = v0[5];
  swift_getKeyPath();
  (*(*v1 + 280))();

  v2 = v0[2];
  if ((v1[48] & 1) == 0 && ((v3 = v0[5], v3[3] == v2) ? (v4 = v3[4] == v0[3]) : (v4 = 0), v4 ? (v5 = v3[5] == v0[4]) : (v5 = 0), v5))
  {
    v36 = v0[11];
    v37 = v0[7];
    v38 = v0[8];

    v39 = sub_275700E70();
    (*(v38 + 16))(v36, v39, v37);
    v40 = sub_275796270();
    v41 = sub_2757982E0();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[11];
    v44 = v0[7];
    v45 = v0[8];
    if (v42)
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_275623000, v40, v41, "No change in parameters, not refetching photos for grid.", v46, 2u);
      MEMORY[0x277C81E50](v46, -1, -1);
    }

    (*(v45 + 8))(v43, v44);
  }

  else
  {
    if (v2)
    {
      v6 = v0[10];
      v7 = v0[7];
      v8 = v0[8];
      v9 = sub_275700E70();
      (*(v8 + 16))(v6, v9, v7);
      v10 = sub_275796270();
      v11 = sub_2757982E0();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_275623000, v10, v11, "Fetching photos for grid...", v12, 2u);
        MEMORY[0x277C81E50](v12, -1, -1);
      }

      v13 = v0[10];
      v14 = v0[7];
      v15 = v0[8];
      v17 = v0[4];
      v16 = v0[5];
      v48 = *(v0 + 1);

      (*(v15 + 8))(v13, v14);
      KeyPath = swift_getKeyPath();
      v19 = swift_task_alloc();
      *(v19 + 16) = v16;
      *(v19 + 24) = v48;
      *(v19 + 40) = v17;
      *(v19 + 48) = 0;
      (*(*v16 + 288))(KeyPath, sub_2757467B4, v19, MEMORY[0x277D84F78] + 8);

      v20 = swift_task_alloc();
      v0[16] = v20;
      *v20 = v0;
      v20[1] = sub_275743F34;
      v21 = v0[4];
      v23 = v0[2];
      v22 = v0[3];

      return sub_275744470(v23, v22, v21);
    }

    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];

    v28 = sub_275700E70();
    (*(v26 + 16))(v25, v28, v27);
    v29 = sub_275796270();
    v30 = sub_2757982E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_275623000, v29, v30, "No photos requested, not refetching photos for grid.", v31, 2u);
      MEMORY[0x277C81E50](v31, -1, -1);
    }

    v33 = v0[8];
    v32 = v0[9];
    v34 = v0[7];
    v35 = v0[5];

    (*(v33 + 8))(v32, v34);
    (*(*v35 + 144))(0);
    (*(*v35 + 240))(1);
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_275743F34(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);

  return MEMORY[0x2822009F8](sub_27574405C, v4, v3);
}

uint64_t sub_27574405C()
{
  v1 = v0[17];
  v3 = v0[5];
  v2 = v0[6];

  v4 = sub_2757981E0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v5 = sub_2757981A0();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v1;
  v6[5] = v3;
  sub_2756F03A8(0, 0, v2, &unk_2757AAF58, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_275744194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2757981B0();
  v5[4] = sub_2757981A0();
  v7 = sub_275798160();

  return MEMORY[0x2822009F8](sub_27574422C, v7, v6);
}

uint64_t sub_27574422C()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  if (v2 >= 0xD)
  {
    v11 = v0[2];
    v12 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF420);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2757A4FA0;
    swift_bridgeObjectRetain_n();
    sub_275746984(v11, v11 + 32, 0, 9uLL);
    *(v13 + 32) = v14;
    sub_275746984(v11, v11 + 32, 4, 0x13uLL);
    *(v13 + 40) = v15;

    sub_275746984(v11, v11 + 32, 9, 0x1BuLL);
    v17 = v16;

    *(v13 + 48) = v17;
    v3 = v0[3];
    (*(*v12 + 144))(v13);
  }

  else
  {
    v3 = v0[3];
    if (v2)
    {
      v4 = v0[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF420);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_2757A8B60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF428);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_2757A8B60;
      v7 = *(v4 + 32);
      v8 = *(v4 + 40);
      *(v6 + 32) = v7;
      *(v6 + 40) = v8;
      *(v5 + 32) = v6;
      v9 = *(*v3 + 144);
      v10 = v7;
      v9(v5);
    }

    else
    {
      (*(*v3 + 144))(0);
    }
  }

  (*(*v3 + 240))(1);
  v18 = v0[1];

  return v18();
}

uint64_t sub_275744470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_275796040();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_275796280();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = sub_2757981B0();
  v4[15] = sub_2757981A0();
  v8 = sub_275798160();
  v4[16] = v8;
  v4[17] = v7;

  return MEMORY[0x2822009F8](sub_2757445D4, v8, v7);
}

uint64_t sub_2757445D4()
{
  v1 = v0[13];
  v2 = v0[11];
  v45 = sub_275700E70();
  v44 = *(v2 + 16);
  v44(v1);
  v3 = sub_275796270();
  v4 = sub_275798310();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_275623000, v3, v4, "Starting photo grid fetch", v5, 2u);
    MEMORY[0x277C81E50](v5, -1, -1);
  }

  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v42 = v8;
  v43 = v0[12];
  v9 = v0[8];
  v40 = v0[9];
  v41 = v0[7];

  v47 = *(v7 + 8);
  v47(v6, v8);
  v10 = [objc_opt_self() sharedPhotoLibrary];
  v0[18] = v10;
  sub_275796030();
  v11 = v10;
  v0[19] = sub_275795FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF430);
  v12 = sub_275795FC0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2757A4FA0;
  v17 = v16 + v15;
  v18 = *(v13 + 104);
  v18(v17, *MEMORY[0x277D3C298], v12);
  v18(v17 + v14, *MEMORY[0x277D3C2A0], v12);
  v18(v17 + 2 * v14, *MEMORY[0x277D3C2A8], v12);
  sub_275796010();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2757AAEA0;
  v20 = sub_275795FE0();
  v21 = objc_allocWithZone(v20);
  *(v19 + 32) = sub_275795FD0();
  v22 = objc_allocWithZone(v20);
  *(v19 + 40) = sub_275795FD0();
  sub_275796020();
  (*(v9 + 104))(v40, *MEMORY[0x277D3C2F8], v41);
  sub_275796000();
  sub_275795FB0();
  v23 = sub_275795FA0();
  v0[20] = v23;
  (v44)(v43, v45, v42);
  v24 = sub_275796270();
  v25 = sub_275798310();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    v28 = [v23 fetchError];
    if (v28)
    {
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    *(v26 + 4) = v28;
    *v27 = v29;
    _os_log_impl(&dword_275623000, v24, v25, "Fetched photos assets with error: %@", v26, 0xCu);
    sub_2756C92B4(v27, &qword_2809FEDA0);
    MEMORY[0x277C81E50](v27, -1, -1);
    MEMORY[0x277C81E50](v26, -1, -1);
  }

  v30 = v0[12];
  v31 = v0[10];
  v32 = v0[6];

  v47(v30, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF438);
  v34 = sub_2757981A0();
  v0[21] = v34;
  v35 = swift_task_alloc();
  v0[22] = v35;
  *(v35 + 16) = v23;
  *(v35 + 24) = v32;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE690);
  v37 = swift_task_alloc();
  v0[23] = v37;
  *v37 = v0;
  v37[1] = sub_275744B40;
  v38 = MEMORY[0x277D85700];

  return MEMORY[0x282200600](v0 + 2, v33, v36, v34, v38, &unk_2757AB0D0, v35, v33);
}

uint64_t sub_275744B40()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_275744CA0, v3, v2);
}

uint64_t sub_275744CA0()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);

  v3 = *(v0 + 16);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_275744D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_275796280();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF440);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  v4[23] = swift_task_alloc();
  v4[24] = sub_2757981B0();
  v4[25] = sub_2757981A0();
  v8 = sub_275798160();
  v4[26] = v8;
  v4[27] = v7;

  return MEMORY[0x2822009F8](sub_275744EEC, v8, v7);
}

uint64_t sub_275744EEC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = swift_allocObject();
  v0[28] = v3;
  *(v3 + 16) = *v1;
  if ([v2 count] > 12)
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v10;
    v0[6] = sub_275746B10;
    v0[7] = v12;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_275746054;
    v0[5] = &block_descriptor_8;
    v13 = _Block_copy(v0 + 2);

    [v11 enumerateObjectsUsingBlock_];
    _Block_release(v13);
  }

  else
  {
    v4 = v0[23];
    v6 = v0[15];
    v5 = v0[16];
    v7 = sub_2757981E0();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    v8[5] = v5;
    v9 = v6;

    sub_275745B18(v4, &unk_2757AB0E8, v8);
    sub_2756C92B4(v4, &unk_2809FF730);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF438);
  sub_275798170();
  v0[29] = MEMORY[0x277D84F90];
  v14 = sub_2757981A0();
  v0[30] = v14;
  v15 = swift_task_alloc();
  v0[31] = v15;
  *v15 = v0;
  v15[1] = sub_2757451B0;
  v16 = v0[20];
  v17 = MEMORY[0x277D85700];

  return MEMORY[0x2822002E8](v0 + 11, v14, v17, v16);
}

uint64_t sub_2757451B0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2757452F4, v3, v2);
}

uint64_t sub_2757452F4()
{
  v1 = *(v0 + 88);
  if (v1 == 1)
  {
    v12 = *(v0 + 152);
    v13 = *(v0 + 136);
    v14 = *(v0 + 144);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    v15 = sub_275700E70();
    (*(v14 + 16))(v12, v15, v13);

    v16 = sub_275796270();
    v17 = sub_275798310();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 232);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 136);
    if (v18)
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(v19 + 16);

      _os_log_impl(&dword_275623000, v16, v17, "Finished photo grid fetch with count: %ld", v23, 0xCu);
      MEMORY[0x277C81E50](v23, -1, -1);

      (*(v21 + 8))(v20, v22);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
    }

    **(v0 + 104) = *(v0 + 232);

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 232);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_275746400(0, *(v4 + 2) + 1, 1, v4);
      }

      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      if (v6 >= v5 >> 1)
      {
        v4 = sub_275746400((v5 > 1), v6 + 1, 1, v4);
      }

      *(v4 + 2) = v6 + 1;
      v7 = &v4[16 * v6];
      *(v7 + 4) = v1;
      *(v7 + 5) = v2;
      *(v0 + 232) = v4;
    }

    v8 = sub_2757981A0();
    *(v0 + 240) = v8;
    v9 = swift_task_alloc();
    *(v0 + 248) = v9;
    *v9 = v0;
    v9[1] = sub_2757451B0;
    v10 = *(v0 + 160);
    v11 = MEMORY[0x277D85700];

    return MEMORY[0x2822002E8](v0 + 88, v8, v11, v10);
  }
}

uint64_t sub_2757455EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_27574560C, 0, 0);
}

uint64_t sub_27574560C()
{
  v1 = [*(v0 + 24) firstObject];
  *(v0 + 32) = v1;
  if (v1)
  {
    *(v0 + 40) = objc_opt_self();
    *(v0 + 48) = sub_2757981B0();
    *(v0 + 56) = sub_2757981A0();
    v3 = sub_275798160();

    return MEMORY[0x2822009F8](sub_27574570C, v3, v2);
  }

  else
  {
    v4 = *(v0 + 16);
    *v4 = 0;
    v4[1] = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_27574570C()
{
  v1 = *(v0 + 40);

  *(v0 + 64) = [v1 mainScreen];

  return MEMORY[0x2822009F8](sub_275745794, 0, 0);
}

uint64_t sub_275745794()
{
  *(v0 + 72) = sub_2757981A0();
  v2 = sub_275798160();

  return MEMORY[0x2822009F8](sub_275745820, v2, v1);
}

uint64_t sub_275745820()
{
  v1 = v0[8];

  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v0[10] = v3;
  v0[11] = v5;
  v0[12] = v7;
  v0[13] = v9;

  return MEMORY[0x2822009F8](sub_2757458C4, 0, 0);
}

uint64_t sub_2757458C4()
{
  v1 = *(v0 + 24);
  v2 = CGRectGetHeight(*(v0 + 80)) * 0.25;
  v3 = [v1 count] != 1;
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_2757459AC;
  v5 = *(v0 + 32);

  return sub_275746E90(v5, v3, 1.66666667, v2 * 1.66666667, v2);
}

uint64_t sub_2757459AC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x2822009F8](sub_275745AAC, 0, 0);
}

uint64_t sub_275745AAC()
{
  **(v0 + 16) = *(v0 + 120);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_275745B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  sub_2756DDED4(a1, v20 - v9);
  v11 = sub_2757981E0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2756C92B4(v10, &unk_2809FF730);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_275798160();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2757981D0();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF438);
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_275745D30(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_2757981E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a3;
  v9[5] = a1;
  swift_beginAccess();

  v10 = a1;
  sub_275745B18(v7, &unk_2757AB110, v9);
  swift_endAccess();
  return sub_2756C92B4(v7, &unk_2809FF730);
}

uint64_t sub_275745E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_275745F34;

  return sub_275746E90(a5, 1, 1.0, 256.0, 256.0);
}

uint64_t sub_275745F34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_275746034, 0, 0);
}

void sub_275746054(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2757460D8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_275797EB0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_275746268()
{

  v1 = OBJC_IVAR____TtC13iCloudQuotaUI14PhotoGridModel___observationRegistrar;
  v2 = sub_275795E50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2757462D0()
{

  v1 = OBJC_IVAR____TtC13iCloudQuotaUI14PhotoGridModel___observationRegistrar;
  v2 = sub_275795E50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_275746374()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  sub_275795E40();
  return v0;
}

uint64_t sub_2757463C8()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 1;
  sub_275795E40();
  return v0;
}

char *sub_275746400(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF428);
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

void sub_27574650C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      if (a1 != a2)
      {
        v3 = a1 + 32;
        v4 = a2 + 32;
        v5 = *(a1 + 32);
        v6 = *(a2 + 32);
        v7 = *(v5 + 16);
        if (v7 == *(v6 + 16))
        {
          v8 = 1;
          v16 = a2 + 32;
          v17 = a1 + 32;
          while (!v7 || v5 == v6)
          {
LABEL_15:
            if (v8 != v2)
            {
              v5 = *(v3 + 8 * v8);
              v6 = *(v4 + 8 * v8++);
              v7 = *(v5 + 16);
              if (v7 == *(v6 + 16))
              {
                continue;
              }
            }

            return;
          }

          sub_275742C8C();

          v9 = 0;
          v10 = 0;
          while (v10 < *(v5 + 16))
          {
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_23;
            }

            v11 = *(v5 + v9 + 40);
            v12 = *(v6 + v9 + 32);
            v13 = *(v6 + v9 + 40);
            v14 = *(v5 + v9 + 32);
            v15 = v12;
            if ((sub_2757983D0() & 1) == 0)
            {

              return;
            }

            if (v11 != v13)
            {

              return;
            }

            ++v10;
            v9 += 16;
            if (v7 == v10)
            {

              v4 = v16;
              v3 = v17;
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_23:
          __break(1u);
        }
      }
    }
  }
}

unint64_t sub_2757466BC()
{
  result = qword_2809FF410;
  if (!qword_2809FF410)
  {
    type metadata accessor for PhotoGridModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF410);
  }

  return result;
}

uint64_t type metadata accessor for PhotoGridModel()
{
  result = qword_280A09C10;
  if (!qword_280A09C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275746760()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 49) = v2;
  return result;
}

uint64_t sub_2757467CC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2756DBB90;

  return sub_275744194(v4, v5, v6, v2, v3);
}

unint64_t sub_275746868()
{
  result = qword_2809FF418;
  if (!qword_2809FF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF418);
  }

  return result;
}

uint64_t sub_2757468D4()
{
  result = sub_275795E50();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_275746984(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF428);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_275746A5C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2756DC7F0;

  return sub_275744D50(a1, a2, v7, v6);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275746B30(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2756DC7F0;

  return sub_2757455EC(a1, v5, v6, v4);
}

uint64_t sub_275746BD0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_275746CC4;

  return v5(v2 + 16);
}

uint64_t sub_275746CC4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_275746DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DBB90;

  return sub_275746BD0(a1, v4);
}

uint64_t sub_275746E90(uint64_t a1, char a2, double a3, double a4, double a5)
{
  *(v5 + 192) = a2;
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  *(v5 + 120) = a3;
  *(v5 + 112) = a1;
  v6 = sub_275796280();
  *(v5 + 144) = v6;
  *(v5 + 152) = *(v6 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  sub_2757981B0();
  *(v5 + 184) = sub_2757981A0();
  v8 = sub_275798160();

  return MEMORY[0x2822009F8](sub_275746FA8, v8, v7);
}

uint64_t sub_275746FA8()
{
  v1 = *(v0 + 22);
  v2 = *(v0 + 19);
  v3 = *(v0 + 14);

  v83 = sub_275700E70();
  v82 = *(v2 + 16);
  v82(v1);
  v4 = v3;
  v5 = sub_275796270();
  v6 = sub_2757982E0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 14);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_275623000, v5, v6, "Fetching thumbnail for %@", v8, 0xCu);
    sub_2756C92B4(v9, &qword_2809FEDA0);
    MEMORY[0x277C81E50](v9, -1, -1);
    MEMORY[0x277C81E50](v8, -1, -1);
  }

  v11 = *(v0 + 21);
  v12 = *(v0 + 22);
  v14 = *(v0 + 18);
  v13 = *(v0 + 19);
  v80 = v0[15];
  v15 = *(v0 + 14);

  v84 = *(v13 + 8);
  v84(v12, v14);
  v16 = [objc_allocWithZone(MEMORY[0x277CD98A0]) init];
  v17 = objc_opt_self();
  v18 = [v15 pixelWidth];
  v19 = [v15 pixelHeight];
  [v15 preferredCropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [v15 acceptableCropRect];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v15 normalizedFaceAreaRect];
  [v17 bestCropRectForAspectRatio:0 verticalContentMode:0 cropMode:v18 sourcePixelWidth:v19 sourcePixelHeight:v80 sourcePreferredCropRectNormalized:v21 sourceAcceptableCropRectNormalized:v23 sourceFaceAreaRectNormalized:{v25, v27, v29, v31, v33, v35, v36, v37, v38, v39}];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  (v82)(v11, v83, v14);
  v48 = sub_275796270();
  v49 = sub_2757982E0();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218752;
    v86.origin.x = v41;
    v86.origin.y = v43;
    v86.size.width = v45;
    v86.size.height = v47;
    *(v50 + 4) = CGRectGetMinX(v86);
    *(v50 + 12) = 2048;
    v87.origin.x = v41;
    v87.origin.y = v43;
    v87.size.width = v45;
    v87.size.height = v47;
    *(v50 + 14) = CGRectGetMinY(v87);
    *(v50 + 22) = 2048;
    v88.origin.x = v41;
    v88.origin.y = v43;
    v88.size.width = v45;
    v88.size.height = v47;
    *(v50 + 24) = CGRectGetMaxX(v88);
    *(v50 + 32) = 2048;
    v89.origin.x = v41;
    v89.origin.y = v43;
    v89.size.width = v45;
    v89.size.height = v47;
    *(v50 + 34) = CGRectGetMaxY(v89);
    _os_log_impl(&dword_275623000, v48, v49, "cropping thumbnail to %f, %f, %f, %f", v50, 0x2Au);
    MEMORY[0x277C81E50](v50, -1, -1);
  }

  v81 = *(v0 + 20);
  v51 = *(v0 + 18);
  v52 = *(v0 + 192);
  v54 = v0[16];
  v53 = v0[17];
  v55 = *(v0 + 15);
  v56 = *(v0 + 14);
  v84(*(v0 + 21), v51);
  [v16 setNormalizedCropRect_];
  [v16 setResizeMode_];
  [v16 setNetworkAccessAllowed_];
  [v16 setSynchronous_];
  [v16 setUseLowMemoryMode_];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v58 = (v57 + 16);
  *(v57 + 24) = 0;
  v59 = [objc_opt_self() defaultManager];
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v55;
  *(v0 + 6) = sub_2757476D4;
  *(v0 + 7) = v60;
  *(v0 + 2) = MEMORY[0x277D85DD0];
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_2757460D8;
  *(v0 + 5) = &block_descriptor_58_0;
  v61 = _Block_copy(v0 + 2);
  v62 = v16;

  [v59 requestImageForAsset:v56 targetSize:1 contentMode:v62 options:v61 resultHandler:{v54, v53}];
  _Block_release(v61);

  (v82)(v81, v83, v51);
  v63 = v56;

  v64 = sub_275796270();
  v65 = sub_275798310();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412546;
    swift_beginAccess();
    v68 = *v58;
    if (*v58)
    {
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v71 = *(v0 + 14);
    *(v66 + 4) = v69;
    *(v66 + 12) = 2112;
    *(v66 + 14) = v71;
    *v67 = v68;
    v67[1] = v71;
    v72 = v71;
    _os_log_impl(&dword_275623000, v64, v65, "Did fetch thumbnail %@ for asset %@", v66, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEDA0);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v67, -1, -1);
    MEMORY[0x277C81E50](v66, -1, -1);
    v70 = v62;
  }

  else
  {
    v70 = v64;
    v64 = v62;
  }

  v73 = *(v0 + 20);
  v74 = *(v0 + 18);

  v84(v73, v74);
  swift_beginAccess();
  v75 = *(v57 + 16);
  v76 = *(v57 + 24);
  v77 = v75;

  v78 = *(v0 + 1);

  return v78(v75, v76);
}

void sub_2757476D4(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    swift_beginAccess();
    v5 = *(v4 + 16);
    *(v4 + 16) = a1;
    *(v4 + 24) = v3;
    v6 = a1;
  }
}

uint64_t sub_275747744(uint64_t a1)
{
  v4 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2756DC7F0;

  return sub_275745E88(a1, v5, v6, v7, v4);
}

__n128 sub_2757477E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

uint64_t sub_275747824@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v128 = a2;
  v5 = sub_275798550();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v114 = &v109 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v116 = &v109 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v119 = &v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v109 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v109 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v109 - v19;
  v21 = sub_2757963E0();
  v22 = MEMORY[0x28223BE20](v21);
  v110 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v113 = &v109 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v115 = &v109 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v118 = &v109 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v109 - v31;
  MEMORY[0x28223BE20](v30);
  v130 = v33;
  v35 = v3;
  v123 = *(v33 + 16);
  v124 = v33 + 16;
  v123(&v109 - v34, v3, v21);
  v129 = v21;
  v36 = swift_dynamicCast();
  v37 = *(a1 - 1);
  v38 = *(v37 + 56);
  if (v36)
  {
    v38(v20, 0, 1, a1);
    return (*(v37 + 32))(v128, v20, a1);
  }

  v38(v20, 1, 1, a1);
  v40 = *(v6 + 8);
  v122 = v5;
  v127 = v40;
  v40(v20, v5);
  v109 = v35;
  v41 = v131;
  v42 = sub_2757487CC();
  v112 = v37;
  v125 = v38;
  v126 = v37 + 56;
  if (v41)
  {

    v44 = v121;
    v38(v121, 1, 1, a1);
    v131 = 0;
    v45 = v130;
  }

  else
  {
    v131 = 0;
    v132 = v42;
    v133 = v43;
    v44 = v121;
    v46 = swift_dynamicCast();
    v38(v44, v46 ^ 1u, 1, a1);
    v47 = (*(v37 + 48))(v44, 1, a1) == 1;
    v45 = v130;
    if (!v47)
    {
      return (*(v37 + 32))(v128, v44, a1);
    }
  }

  v48 = v44;
  v49 = v122;
  v127(v48, v122);
  v50 = v109;
  v51 = v129;
  v52 = v123;
  v123(v32, v109, v129);
  v53 = *(v45 + 88);
  v121 = (v45 + 88);
  v117 = v53;
  if (v53(v32, v51) == *MEMORY[0x277D23248])
  {
    (*(v45 + 96))(v32, v51);
    v54 = *(*v32 + 16);

    v132 = v54;
    v55 = v120;
    v56 = swift_dynamicCast();
    v125(v55, v56 ^ 1u, 1, a1);
    v57 = v112;
    if ((*(v112 + 48))(v55, 1, a1) != 1)
    {
      return (*(v57 + 32))(v128, v55, a1);
    }

    v50 = v109;
    v52 = v123;
    v58 = v131;
  }

  else
  {
    (*(v45 + 8))(v32, v51);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    v59 = swift_allocError();
    v61 = v60;
    v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v52(v61, v50, v51);
    *(v61 + v62) = MEMORY[0x277D83B88];
    v49 = v122;
    swift_willThrow();

    v55 = v120;
    v125(v120, 1, 1, a1);
    v58 = 0;
  }

  v127(v55, v49);
  v63 = v118;
  v52(v118, v50, v51);
  if (v117(v63, v51) == *MEMORY[0x277D23288])
  {
    v64 = a1;
    v65 = v50;
    (*(v130 + 96))(v63, v51);
    v66 = *(*v63 + 16);

    v132 = v66;
    v67 = v119;
    v68 = swift_dynamicCast();
    v125(v67, v68 ^ 1u, 1, v64);
    v69 = v112;
    if ((*(v112 + 48))(v67, 1, v64) != 1)
    {
      return (*(v69 + 32))(v128, v67, v64);
    }

    v131 = v64;
    v52 = v123;
  }

  else
  {
    (*(v130 + 8))(v63, v51);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    v70 = swift_allocError();
    v71 = a1;
    v73 = v72;
    v74 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v52(v73, v50, v129);
    *(v73 + v74) = MEMORY[0x277D839F8];
    v51 = v129;
    v49 = v122;
    swift_willThrow();

    v65 = v50;
    v67 = v119;
    v131 = v71;
    v125(v119, 1, 1, v71);
    v58 = 0;
  }

  v127(v67, v49);
  v75 = v115;
  v52(v115, v65, v51);
  if (v117(v75, v51) == *MEMORY[0x277D23258])
  {
    v76 = v75;
    v77 = v65;
    v78 = v58;
    (*(v130 + 96))(v76, v51);
    v79 = *(*v76 + 16);

    LOBYTE(v132) = v79;
    v80 = v116;
    v81 = v131;
    v82 = swift_dynamicCast();
    v125(v80, v82 ^ 1u, 1, v81);
    v83 = v112;
    if ((*(v112 + 48))(v80, 1, v81) != 1)
    {
      return (*(v83 + 32))(v128, v80, v81);
    }

    v84 = v77;
    v85 = v123;
  }

  else
  {
    v85 = v52;
    (*(v130 + 8))(v75, v51);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    v86 = swift_allocError();
    v88 = v87;
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v52(v88, v65, v129);
    *(v88 + v89) = MEMORY[0x277D839B0];
    v84 = v65;
    v81 = v131;
    v51 = v129;
    v49 = v122;
    swift_willThrow();

    v80 = v116;
    v125(v116, 1, 1, v81);
    v78 = 0;
  }

  v127(v80, v49);
  v90 = v113;
  v85(v113, v84, v51);
  if (v117(v90, v51) != *MEMORY[0x277D23278])
  {
    (*(v130 + 8))(v90, v51);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    v95 = swift_allocError();
    v97 = v96;
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v85(v97, v84, v129);
    *&v97[v98] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8B0);
    v51 = v129;
    v49 = v122;
    swift_willThrow();

    v80 = v114;
    v125(v114, 1, 1, v81);
    v131 = 0;
    v94 = v84;
    v83 = v112;
LABEL_24:
    v127(v80, v49);
    v99 = v110;
    v85(v110, v94, v51);
    if (v117(v99, v51) == *MEMORY[0x277D23270])
    {
      (*(v130 + 96))(v99, v51);
      v100 = *(*v99 + 16);

      v132 = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF78);
      v80 = v111;
      v101 = swift_dynamicCast();
      v125(v80, v101 ^ 1u, 1, v81);
      if ((*(v83 + 48))(v80, 1, v81) != 1)
      {
        return (*(v83 + 32))(v128, v80, v81);
      }
    }

    else
    {
      (*(v130 + 8))(v99, v51);
      type metadata accessor for DecodableStateError();
      sub_275749374();
      v102 = swift_allocError();
      v104 = v103;
      v105 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
      v85(v104, v94, v129);
      *&v104[v105] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF78);
      v51 = v129;
      v49 = v122;
      swift_willThrow();

      v80 = v111;
      v125(v111, 1, 1, v81);
    }

    v127(v80, v49);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v107 = v106;
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v85(v107, v94, v51);
    *&v107[v108] = v81;
    return swift_willThrow();
  }

  v91 = v84;
  v131 = v78;
  (*(v130 + 96))(v90, v51);
  v92 = *(*v90 + 16);

  v132 = v92;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8B0);
  v80 = v114;
  v93 = swift_dynamicCast();
  v125(v80, v93 ^ 1u, 1, v81);
  v83 = v112;
  if ((*(v112 + 48))(v80, 1, v81) == 1)
  {
    v94 = v91;
    v85 = v123;
    goto LABEL_24;
  }

  return (*(v83 + 32))(v128, v80, v81);
}

uint64_t sub_2757487CC()
{
  v1 = v0;
  v2 = sub_2757963E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, v1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277D232A0])
  {
    (*(v3 + 96))(v5, v2);
    v2 = *(*v5 + 16);

    return v2;
  }

  if (v7 == *MEMORY[0x277D23248])
  {
    (*(v3 + 96))(v5, v2);
    v19 = *(*v5 + 16);
    v2 = sub_275798950();

    return v2;
  }

  if (v7 == *MEMORY[0x277D23288])
  {
    (*(v3 + 96))(v5, v2);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_275798210();

    return v19;
  }

  if (v7 == *MEMORY[0x277D23258])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *(*v5 + 16);
    v19 = 0;
    v20 = 0xE000000000000000;
    if (v8)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (v8)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    MEMORY[0x277C80130](v9, v10);

    return v19;
  }

  if (v7 == *MEMORY[0x277D23278] || v7 == *MEMORY[0x277D23270])
  {
    (*(v3 + 8))(v5, v2);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v6(v13, v1, v2);
    *&v13[v14] = MEMORY[0x277D837D0];
    swift_willThrow();
  }

  else
  {
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v6(v16, v1, v2);
    *&v16[v17] = MEMORY[0x277D837D0];
    swift_willThrow();
    (*(v3 + 8))(v5, v2);
  }

  return v2;
}

uint64_t sub_275748BA4()
{
  v1 = v0;
  v2 = sub_2757963E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D23248])
  {
    (*(v3 + 96))(v5, v2);
    v2 = *(*v5 + 16);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v6(v8, v1, v2);
    *&v8[v9] = MEMORY[0x277D83B88];
    swift_willThrow();
  }

  return v2;
}

double sub_275748D64()
{
  v2 = v0;
  v3 = sub_2757963E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v7(v6, v2, v3);
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D23288])
  {
    (*(v4 + 96))(v6, v3);
    v1 = *(*v6 + 16);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v7(v9, v2, v3);
    *&v9[v10] = MEMORY[0x277D839F8];
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_275748F2C()
{
  v1 = v0;
  v2 = sub_2757963E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v3 + 16);
  v6(v5, v1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D23258])
  {
    (*(v3 + 96))(v5, v2);
    LOBYTE(v2) = *(*v5 + 16);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v6(v8, v1, v2);
    *&v8[v9] = MEMORY[0x277D839B0];
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_27574914C(_DWORD *a1, uint64_t *a2, uint64_t a3)
{
  v16[1] = a3;
  v6 = v3;
  v7 = sub_2757963E0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v11(v10, v6, v7);
  if ((*(v8 + 88))(v10, v7) == *a1)
  {
    (*(v8 + 96))(v10, v7);
    v7 = *(*v10 + 16);
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    type metadata accessor for DecodableStateError();
    sub_275749374();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
    v11(v13, v6, v7);
    *&v13[v14] = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    swift_willThrow();
  }

  return v7;
}

uint64_t type metadata accessor for DecodableStateError()
{
  result = qword_280A09CA0;
  if (!qword_280A09CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_275749374()
{
  result = qword_2809FF448;
  if (!qword_2809FF448)
  {
    type metadata accessor for DecodableStateError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF448);
  }

  return result;
}

uint64_t sub_2757493CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_2757963E0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  v67 = *(v7 + 16);
  v67(&v57 - v14, v4, v6);
  v16 = (*(v7 + 88))(v15, v6);
  if (v16 == *MEMORY[0x277D232A0])
  {
    (*(v7 + 96))(v15, v6);
    v17 = *(*v15 + 16);
    v18 = *(*v15 + 24);
    a1[3] = MEMORY[0x277D837D0];

    *a1 = v17;
    a1[1] = v18;
    return result;
  }

  if (v16 == *MEMORY[0x277D23248])
  {
    (*(v7 + 96))(v15, v6);
    v20 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D83B88];

    *a1 = v20;
    return result;
  }

  if (v16 == *MEMORY[0x277D23288])
  {
    (*(v7 + 96))(v15, v6);
    v21 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D839F8];

    *a1 = v21;
    return result;
  }

  if (v16 == *MEMORY[0x277D23258])
  {
    (*(v7 + 96))(v15, v6);
    v22 = *(*v15 + 16);
    a1[3] = MEMORY[0x277D839B0];

    *a1 = v22;
    return result;
  }

  v23 = *MEMORY[0x277D23278];
  v61 = a1;
  if (v16 == v23)
  {
    (*(v7 + 96))(v15, v6);
    v24 = *v15;
    v25 = *(v24 + 16);
    v26 = *(v25 + 16);
    v27 = MEMORY[0x277D84F90];
    if (!v26)
    {
LABEL_34:
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF450);
      v56 = v61;
      v61[3] = v55;

      *v56 = v27;
      return result;
    }

    v60 = v24;
    v68 = MEMORY[0x277D84F90];

    v62 = v26;
    sub_275749AA0(0, v26, 0);
    v28 = 0;
    v27 = v68;
    v29 = *(v7 + 80);
    v63 = v25;
    v64 = v25 + ((v29 + 32) & ~v29);
    v65 = (v7 + 8);
    while (v28 < *(v25 + 16))
    {
      v30 = (v67)(v13, v64 + *(v7 + 72) * v28, v6);
      sub_2757493CC(v69, v30);
      if (v3)
      {
        (*v65)(v13, v6);
      }

      v66 = 0;
      (*v65)(v13, v6);
      v68 = v27;
      v32 = *(v27 + 16);
      v31 = *(v27 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_275749AA0((v31 > 1), v32 + 1, 1);
        v27 = v68;
      }

      ++v28;
      *(v27 + 16) = v32 + 1;
      sub_2756D5AA8(v69, (v27 + 32 * v32 + 32));
      v25 = v63;
      v3 = v66;
      if (v62 == v28)
      {

        goto LABEL_34;
      }
    }

    goto LABEL_37;
  }

  if (v16 != *MEMORY[0x277D23270])
  {
LABEL_39:
    result = sub_275798970();
    __break(1u);
    return result;
  }

  (*(v7 + 96))(v15, v6);
  v57 = *v15;
  v33 = *(v57 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
  v34 = sub_275798850();
  v35 = *(v33 + 64);
  v59 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v35;
  v58 = (v36 + 63) >> 6;
  v62 = (v7 + 8);
  v39 = v34;
  v60 = v34 + 64;
  v64 = v33;

  v40 = 0;
  v63 = v39;
  if (!v38)
  {
LABEL_23:
    v42 = v40;
    while (1)
    {
      v40 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v40 >= v58)
      {

        a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE8D0);

        *a1 = v39;
        return result;
      }

      v43 = *(v59 + 8 * v40);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v65 = ((v43 - 1) & v43);
        v66 = v3;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  while (1)
  {
    v41 = __clz(__rbit64(v38));
    v65 = ((v38 - 1) & v38);
    v66 = v3;
LABEL_28:
    v44 = v41 | (v40 << 6);
    v45 = (*(v64 + 48) + 16 * v44);
    v46 = *v45;
    v47 = v45[1];
    v67(v10, *(v64 + 56) + *(v7 + 72) * v44, v6);

    v49 = v66;
    sub_2757493CC(v69, v48);
    if (v49)
    {
      break;
    }

    (*v62)(v10, v6);
    *(v60 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
    v50 = v63;
    v51 = (*(v63 + 48) + 16 * v44);
    *v51 = v46;
    v51[1] = v47;
    v39 = v50;
    sub_2756D5AA8(v69, (*(v50 + 56) + 32 * v44));
    v52 = *(v39 + 16);
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_38;
    }

    *(v39 + 16) = v54;
    v3 = 0;
    a1 = v61;
    v38 = v65;
    if (!v65)
    {
      goto LABEL_23;
    }
  }

  (*v62)(v10, v6);
}

char *sub_275749AA0(char *a1, int64_t a2, char a3)
{
  result = sub_275749C94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_275749AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275749B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_275749BC0(uint64_t a1)
{
  sub_2756FB380();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_2757963E0();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

char *sub_275749C94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_275749DDC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_275749E5C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *sub_275749EF4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_275749F38(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_275749FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2757967F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_27574A03C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA28);
  sub_275713F48();
  v19[0] = v3;
  v19[1] = v5;
  v19[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_2757972A0();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v19, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEBB0);
  sub_275717B58();
  v16[0] = v6;
  v16[1] = v8;
  v16[2] = v7;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_2757972A0();

  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_getKeyPath();
  v11 = sub_2757967F0();
  sub_27574C014(&qword_2809FF068, MEMORY[0x277CDD848]);
  v13[0] = v9;
  v13[1] = v11;
  v13[2] = v10;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2757972A0();

  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF460);
  sub_27574AAC4();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();

  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_27574A43C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t sub_27574A498(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t sub_27574A518(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_2757978A0();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2757978C0();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2757967F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2756CB330();
  v12 = sub_275798340();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_27574C0F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27574C014(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_27574A8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2757967F0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_dismissAction;
  swift_beginAccess();
  sub_275703F04(v6, a1 + v9, &qword_2809FEB80);
  return swift_endAccess();
}

uint64_t sub_27574AA14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2757796DC();
  *a1 = result;
  return result;
}

void sub_27574AA70(void **a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

unint64_t sub_27574AAC4()
{
  result = qword_2809FF468;
  if (!qword_2809FF468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF460);
    sub_27574C014(&qword_2809FF470, type metadata accessor for ManageStorageModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF468);
  }

  return result;
}

uint64_t sub_27574AB78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_27574B8F8)(a1);
}

uint64_t sub_27574AC24(uint64_t a1)
{
  v2 = sub_2757967F0();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - v10;
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_shouldDismiss;
  swift_beginAccess();
  if ((*(v9 + 48))(a1 + v12, 1, v8))
  {
    v13 = 0;
  }

  else
  {
    (*(v9 + 16))(v11, a1 + v12, v8);
    sub_275796390();
    (*(v9 + 8))(v11, v8);
    v13 = v26;
  }

  v14 = sub_275700E70();
  (*(v5 + 16))(v7, v14, v4);
  v15 = sub_275796270();
  v16 = sub_275798310();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_275623000, v15, v16, "ReloadStorageAppsAction, dismiss: %{BOOL}d", v17, 8u);
    MEMORY[0x277C81E50](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    v18 = OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_dismissAction;
    swift_beginAccess();
    if (!(*(v25 + 48))(a1 + v18, 1, v2))
    {
      v19 = v25;
      v20 = a1 + v18;
      v21 = v24;
      (*(v25 + 16))(v24, v20, v2);
      sub_2757967E0();
      (*(v19 + 8))(v21, v2);
    }
  }

  swift_beginAccess();
  if (*(a1 + 16))
  {

    sub_275795E60();
  }

  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_275795F20();
  }

  return result;
}

uint64_t sub_27574B080()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_27574B104()
{
  sub_275798A40();
  sub_275797FF0();
  return sub_275798A70();
}

uint64_t sub_27574B160@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27574B200@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27574B258(uint64_t a1)
{
  v2 = sub_27574BC70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27574B294(uint64_t a1)
{
  v2 = sub_27574BC70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27574B2D0(void *a1)
{
  v2 = swift_allocObject();
  sub_27574B320(a1);
  return v2;
}

void *sub_27574B320(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v5 - 8);
  v20 = &v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF478);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v10 = OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_dismissAction;
  v11 = sub_2757967F0();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_shouldDismiss;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27574BC70();
  sub_275798A80();
  if (v2)
  {
  }

  else
  {
    sub_2756CFA44(&qword_2809FD870, &qword_2809FD868);
    v14 = v20;
    v15 = v19;
    sub_2757988E0();
    (*(v18 + 8))(v9, v15);
    swift_beginAccess();
    sub_275703F04(v14, v3 + v12, &qword_2809FD850);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_27574B620()
{

  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_shouldDismiss, &qword_2809FD850);
  return v0;
}

uint64_t sub_27574B690()
{

  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI23ReloadStorageAppsAction_shouldDismiss, &qword_2809FD850);

  return swift_deallocClassInstance();
}

uint64_t sub_27574B73C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_27574B8F8)(a1);
}

void *sub_27574B8A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27574B320(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27574B8F8(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2757978A0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2757978C0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27574BA14, 0, 0);
}

uint64_t sub_27574BA14()
{
  v1 = v0[16];
  v2 = v0[13];
  v12 = v0[15];
  v13 = v0[14];
  v3 = v0[11];
  v11 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  sub_2756CB330();
  v10 = sub_275798340();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v0[6] = sub_27574BFF4;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2756F1D58;
  v0[5] = &block_descriptor_9;
  v7 = _Block_copy(v0 + 2);

  sub_2757978B0();
  v0[8] = MEMORY[0x277D84F90];
  sub_27574C014(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v1, v2, v7);
  _Block_release(v7);

  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v1, v13);

  v8 = v0[1];

  return v8();
}

unint64_t sub_27574BC70()
{
  result = qword_280A09CE0[0];
  if (!qword_280A09CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A09CE0);
  }

  return result;
}

uint64_t type metadata accessor for ReloadStorageAppsAction()
{
  result = qword_280A09E70;
  if (!qword_280A09E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27574BDA8()
{
  sub_27574BE84();
  if (v0 <= 0x3F)
  {
    sub_27572938C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_27574BE84()
{
  if (!qword_2809FF088)
  {
    sub_2757967F0();
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FF088);
    }
  }
}

unint64_t sub_27574BEF0()
{
  result = qword_280A0A000[0];
  if (!qword_280A0A000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0A000);
  }

  return result;
}

unint64_t sub_27574BF48()
{
  result = qword_280A0A110;
  if (!qword_280A0A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0A110);
  }

  return result;
}

unint64_t sub_27574BFA0()
{
  result = qword_280A0A118[0];
  if (!qword_280A0A118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0A118);
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27574C014(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_27574C05C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *((*MEMORY[0x277D85000] & *v1) + 0x118);
    v3 = v1;
    v2(0);
  }
}

uint64_t sub_27574C0F0()
{
  v1 = *(sub_2757967F0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_27574A8D0(v2, v3);
}

uint64_t sub_27574C15C(uint64_t a1, uint64_t a2)
{
  v2 = nullsub_1(a1, a2);

  return v2;
}

uint64_t sub_27574C194@<X0>(void *a1@<X8>)
{
  *a1 = nullsub_1(*v1, v1[1]);
  a1[1] = v3;
}

uint64_t sub_27574C26C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t sub_27574C2A4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t sub_27574C2F0(uint64_t result, double a2, double a3, double a4)
{
  v5 = (v4 + *(result + 44));
  *v5 = a2;
  v5[1] = a3;
  v5[2] = a4;
  return result;
}

uint64_t sub_27574C334(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_27574C390(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_27562F5C0(v2);
  return v2;
}

uint64_t sub_27574C3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = sub_2756D4A30(*v6);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_27574C430@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v20 = a2;
  v4 = *(a1 + 16);
  sub_275796990();
  sub_275796990();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF490);
  v5 = *(a1 + 24);
  type metadata accessor for TipView.Action();
  v6 = sub_275798140();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  WitnessTable = swift_getWitnessTable();
  v25 = v6;
  v26 = MEMORY[0x277D837D0];
  v27 = v7;
  v28 = WitnessTable;
  v29 = MEMORY[0x277D837E0];
  sub_2757977D0();
  v24 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  swift_getWitnessTable();
  sub_275797670();
  swift_getTupleTypeMetadata2();
  sub_275797860();
  swift_getWitnessTable();
  sub_275797710();
  swift_getTupleTypeMetadata2();
  sub_275797860();
  swift_getWitnessTable();
  v9 = sub_275797670();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_275796C70();
  v21 = v4;
  v22 = v5;
  v23 = v2;
  sub_275797660();
  swift_getWitnessTable();
  v16 = *(v10 + 16);
  v16(v15, v13, v9);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v16(v20, v15, v9);
  return (v17)(v15, v9);
}

uint64_t sub_27574C7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a1;
  v52 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF490);
  type metadata accessor for TipView.Action();
  v6 = sub_275798140();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  WitnessTable = swift_getWitnessTable();
  v58 = v6;
  v59 = MEMORY[0x277D837D0];
  v60 = v7;
  v61 = WitnessTable;
  v62 = MEMORY[0x277D837E0];
  sub_2757977D0();
  v57[6] = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  swift_getWitnessTable();
  sub_275797670();
  swift_getTupleTypeMetadata2();
  v48 = sub_275797860();
  v47 = swift_getWitnessTable();
  v9 = sub_275797710();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v12;
  v13 = sub_275796990();
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v43 = sub_275796990();
  v16 = *(v43 - 8);
  v17 = MEMORY[0x28223BE20](v43);
  v44 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  type metadata accessor for TipView();
  sub_275797820();
  v51 = a2;
  sub_275797360();
  v24 = sub_275796FB0();
  sub_275796FD0();
  sub_275796FD0();
  if (sub_275796FD0() != v24)
  {
    sub_275796FD0();
  }

  v57[4] = a3;
  v57[5] = MEMORY[0x277CDF678];
  v25 = swift_getWitnessTable();
  sub_275797370();
  v42[1](v15, v13);
  v57[2] = v25;
  v57[3] = MEMORY[0x277CDF918];
  v26 = v43;
  v40 = swift_getWitnessTable();
  v39 = *(v16 + 16);
  v53 = v23;
  v39(v23, v21, v26);
  v27 = *(v16 + 8);
  v41 = v16 + 8;
  v42 = v27;
  (v27)(v21, v26);
  v28 = sub_275796D30();
  MEMORY[0x28223BE20](v28);
  *(&v38 - 4) = v51;
  *(&v38 - 3) = a3;
  *(&v38 - 2) = v54;
  v29 = v45;
  sub_275797700();
  v30 = v50;
  v54 = swift_getWitnessTable();
  v31 = v49;
  v32 = *(v49 + 16);
  v33 = v46;
  v32(v46, v29, v30);
  v34 = *(v31 + 8);
  v34(v29, v30);
  v35 = v44;
  v39(v44, v53, v26);
  v58 = v35;
  v32(v29, v33, v30);
  v59 = v29;
  v57[0] = v26;
  v57[1] = v30;
  v55 = v40;
  v56 = v54;
  sub_27574DCD8(&v58, 2uLL, v57);
  v34(v33, v30);
  v36 = v42;
  (v42)(v53, v26);
  v34(v29, v30);
  return (v36)(v35, v26);
}

uint64_t sub_27574CE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v29 = a4;
  type metadata accessor for TipView.Action();
  v6 = sub_275798140();
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  WitnessTable = swift_getWitnessTable();
  v36 = v6;
  v37 = MEMORY[0x277D837D0];
  v38 = v7;
  v39 = WitnessTable;
  v40 = MEMORY[0x277D837E0];
  sub_2757977D0();
  v35[2] = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  swift_getWitnessTable();
  v9 = sub_275797670();
  v26 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF490);
  v15 = MEMORY[0x28223BE20](v27);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  *v19 = sub_275796D30();
  *(v19 + 1) = 0x4008000000000000;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF510);
  v21 = v28;
  sub_27574D260(a1, a2, v28, &v19[*(v20 + 44)]);
  v30 = a2;
  v31 = v21;
  v32 = a1;
  sub_275796C80();
  sub_275797660();
  v28 = swift_getWitnessTable();
  v22 = v26;
  v23 = *(v26 + 16);
  v23(v14, v12, v9);
  v24 = *(v22 + 8);
  v24(v12, v9);
  sub_2756C9074(v19, v17, &qword_2809FF490);
  v36 = v17;
  v23(v12, v14, v9);
  v37 = v12;
  v35[0] = v27;
  v35[1] = v9;
  v33 = sub_2756CFA44(&qword_2809FF518, &qword_2809FF490);
  v34 = v28;
  sub_27574DCD8(&v36, 2uLL, v35);
  v24(v14, v9);
  sub_2756C92B4(v19, &qword_2809FF490);
  v24(v12, v9);
  return sub_2756C92B4(v17, &qword_2809FF490);
}

uint64_t sub_27574D260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF520);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  *v11 = sub_275796C70();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF528);
  sub_27574D510(a1, a2, a3, &v11[*(v12 + 44)]);
  v13 = (a1 + *(type metadata accessor for TipView() + 40));
  v14 = v13[1];
  v37 = *v13;
  v38 = v14;
  sub_2756DC79C();

  v15 = sub_2757970D0();
  v17 = v16;
  LOBYTE(a2) = v18;
  sub_275796FF0();
  v19 = sub_2757970A0();
  v21 = v20;
  v23 = v22;

  sub_2756E15EC(v15, v17, a2 & 1);

  sub_275797500();
  v24 = sub_275797070();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_2756E15EC(v19, v21, v23 & 1);

  v31 = v35;
  sub_2756C9074(v11, v35, &qword_2809FF520);
  v32 = v36;
  sub_2756C9074(v31, v36, &qword_2809FF520);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF530) + 48);
  *v33 = v24;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28 & 1;
  *(v33 + 24) = v30;
  sub_2756E0DD0(v24, v26, v28 & 1);

  sub_2756C92B4(v11, &qword_2809FF520);
  sub_2756E15EC(v24, v26, v28 & 1);

  return sub_2756C92B4(v31, &qword_2809FF520);
}

uint64_t sub_27574D510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF538);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = (&v55 - v7);
  v62 = a2;
  v63 = a3;
  v8 = type metadata accessor for TipView();
  v61 = *(v8 - 8);
  v58 = *(v61 + 64);
  MEMORY[0x28223BE20](v8);
  v59 = &v55 - v9;
  v10 = sub_275797560();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF540);
  v14 = MEMORY[0x28223BE20](v56);
  v60 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF548);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v70 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v55 - v20;
  v21 = (a1 + *(v8 + 36));
  v22 = v21[1];
  *&v80[0] = *v21;
  *(&v80[0] + 1) = v22;
  sub_2756DC79C();

  v23 = sub_2757970D0();
  v25 = v24;
  v27 = v26;
  sub_275797030();
  v67 = sub_2757970A0();
  v66 = v28;
  v65 = v29;
  v68 = v30;

  sub_2756E15EC(v23, v25, v27 & 1);

  v31 = *(a1 + *(v8 + 52));
  if (v31)
  {

    sub_275797550();
    (*(v11 + 104))(v13, *MEMORY[0x277CE0FE0], v10);
    v32 = sub_275797570();

    (*(v11 + 8))(v13, v10);
    v33 = sub_275797030();
    KeyPath = swift_getKeyPath();
    v35 = sub_275797500();
    v36 = swift_getKeyPath();
    sub_275797820();
    sub_2757967D0();
    *&v74 = v32;
    *(&v74 + 1) = KeyPath;
    *&v75 = v33;
    *(&v75 + 1) = v36;
    *&v76 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF558);
    sub_27574F7B8();
    v37 = v57;
    sub_2757971F0();
    v80[3] = v77;
    v80[4] = v78;
    v81 = v79;
    v80[0] = v74;
    v80[1] = v75;
    v80[2] = v76;
    sub_27574F9B4(v80);
    v38 = v61;
    v39 = v59;
    (*(v61 + 16))(v59, a1, v8);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    v42 = v63;
    *(v41 + 16) = v62;
    *(v41 + 24) = v42;
    (*(v38 + 32))(v41 + v40, v39, v8);
    v43 = (v37 + *(v56 + 36));
    *v43 = sub_27574FA1C;
    v43[1] = v41;
    v44 = v60;
    sub_2756C9074(v37, v60, &qword_2809FF540);
    v45 = v64;
    *v64 = 0;
    *(v45 + 8) = 1;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF598);
    sub_2756C9074(v44, v45 + *(v46 + 48), &qword_2809FF540);
    sub_2756D4A30(v31);
    sub_2756C92B4(v37, &qword_2809FF540);
    sub_2756C92B4(v44, &qword_2809FF540);
    v47 = v69;
    sub_27562DA4C(v45, v69);
    (*(v71 + 56))(v47, 0, 1, v72);
  }

  else
  {
    v47 = v69;
    (*(v71 + 56))(v69, 1, 1, v72);
  }

  v48 = v70;
  sub_2756C9074(v47, v70, &qword_2809FF548);
  v49 = v73;
  v50 = v67;
  v51 = v66;
  *v73 = v67;
  v49[1] = v51;
  v52 = v65 & 1;
  *(v49 + 16) = v65 & 1;
  v49[3] = v68;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF550);
  sub_2756C9074(v48, v49 + *(v53 + 48), &qword_2809FF548);
  sub_2756E0DD0(v50, v51, v52);

  sub_2756C92B4(v47, &qword_2809FF548);
  sub_2756C92B4(v48, &qword_2809FF548);
  sub_2756E15EC(v50, v51, v52);
}

uint64_t sub_27574DCD8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_275797870();
}

uint64_t sub_27574DEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v24 = a4;
  v23 = type metadata accessor for TipView.Action();
  v7 = sub_275798140();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FECC0);
  WitnessTable = swift_getWitnessTable();
  v26 = v7;
  v27 = MEMORY[0x277D837D0];
  v28 = v22;
  v29 = WitnessTable;
  v30 = MEMORY[0x277D837E0];
  v9 = sub_2757977D0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v26 = *(a1 + *(type metadata accessor for TipView() + 48));
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);

  swift_getWitnessTable();
  sub_2757977B0();
  v25 = v17;
  swift_getWitnessTable();
  v18 = *(v10 + 16);
  v18(v15, v13, v9);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v18(v24, v15, v9);
  return (v19)(v15, v9);
}

uint64_t sub_27574E168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13)
{
  (*(*(a13 - 8) + 32))(a9, a1, a13);
  v24 = type metadata accessor for TipView();
  v25 = (a9 + v24[9]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a9 + v24[10]);
  *v26 = a4;
  v26[1] = a5;
  v27 = (a9 + v24[11]);
  *v27 = a10;
  v27[1] = a11;
  v27[2] = a12;
  *(a9 + v24[12]) = a6;
  v28 = (a9 + v24[13]);
  *v28 = a7;
  v28[1] = a8;
  v29 = a9 + v24[14];
  result = sub_2757975A0();
  *v29 = v31;
  *(v29 + 8) = v32;
  return result;
}

uint64_t sub_27574E2A0@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_2757969F0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF498);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF4A0);
  sub_2756CFA44(&qword_2809FF4A8, &qword_2809FF4A0);
  sub_275797040();
  sub_275797850();
  sub_2756CFA44(&qword_2809FF4B0, &qword_2809FF498);
  sub_27574EF28();
  v9 = v14;
  sub_2757973C0();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v10 = sub_2757974A0();
  LOBYTE(v1) = sub_275796FA0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF4B8);
  v12 = v9 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v1;
  return result;
}

uint64_t sub_27574E514@<X0>(char *a1@<X8>)
{
  v39 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF4E8);
  v31 = *(v38 - 8);
  v1 = v31;
  v2 = MEMORY[0x28223BE20](v38);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v36 = &v30 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF4F0);
  v35 = *(v11 - 8);
  v12 = v35;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE00);
  sub_2756CFA44(&qword_2809FDE10, &qword_2809FDE00);
  v34 = v17;
  sub_2757977F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF4F8);
  sub_2756CFA44(&qword_2809FF500, &qword_2809FF4F8);
  v32 = v10;
  sub_2757977F0();
  v30 = v8;
  sub_2757977F0();
  v18 = *(v12 + 16);
  v33 = v15;
  v18(v15, v17, v11);
  v19 = *(v1 + 16);
  v20 = v36;
  v21 = v38;
  v19(v36, v10, v38);
  v22 = v37;
  v23 = v8;
  v24 = v21;
  v19(v37, v23, v21);
  v25 = v39;
  v18(v39, v15, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF508);
  v19(&v25[*(v26 + 48)], v20, v24);
  v19(&v25[*(v26 + 64)], v22, v24);
  v27 = *(v31 + 8);
  v27(v30, v24);
  v27(v32, v24);
  v28 = *(v35 + 8);
  v28(v34, v11);
  v27(v22, v24);
  v27(v20, v24);
  return (v28)(v33, v11);
}

uint64_t sub_27574E970@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x80000002757B98B0;
  *(a1 + 16) = 0;
  v1 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0xD00000000000001ALL;
  *(a1 + 40) = 0x80000002757B98D0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v1;
  sub_2756E0DD0(0xD000000000000014, 0x80000002757B98B0, 0);

  sub_2756E0DD0(0xD00000000000001ALL, 0x80000002757B98D0, 0);

  sub_2756E15EC(0xD00000000000001ALL, 0x80000002757B98D0, 0);

  sub_2756E15EC(0xD000000000000014, 0x80000002757B98B0, 0);
}

__n128 sub_27574EA64@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275797550();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();

  (*(v3 + 8))(v5, v2);
  v7 = sub_275797400();
  KeyPath = swift_getKeyPath();
  v16[15] = 0;
  sub_2757975A0();
  v9 = v16[16];
  v10 = v17;
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0xD000000000000011;
  *(a1 + 32) = 0x80000002757B9870;
  *(a1 + 40) = 0xD000000000000016;
  *(a1 + 48) = 0x80000002757B9890;
  __asm { FMOV            V0.2D, #26.0 }

  *(a1 + 56) = result;
  *(a1 + 72) = 0x4024000000000000;
  *(a1 + 80) = &unk_28844D8B0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  return result;
}

int64x2_t sub_27574EC2C@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_275797560();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_275797550();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_275797570();

  (*(v3 + 8))(v5, v2);
  v7 = sub_2757974B0();
  KeyPath = swift_getKeyPath();
  v12[15] = 0;
  sub_2757975A0();
  v9 = v12[16];
  v10 = v13;
  *a1 = v6;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0xD000000000000015;
  *(a1 + 32) = 0x80000002757B9830;
  *(a1 + 40) = 0xD00000000000001CLL;
  *(a1 + 48) = 0x80000002757B9850;
  result = vdupq_n_s64(0x4048800000000000uLL);
  *(a1 + 56) = result;
  *(a1 + 72) = 0x4022000000000000;
  *(a1 + 80) = &unk_28844D8F0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v9;
  *(a1 + 112) = v10;
  return result;
}

uint64_t sub_27574EDFC(uint64_t a1)
{
  v2 = sub_27574F6D0();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_27574EE48(uint64_t a1)
{
  v2 = sub_27574F6D0();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_27574EE94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275796B90();
  *a1 = result;
  return result;
}

unint64_t sub_27574EF28()
{
  result = qword_2809FDD20;
  if (!qword_2809FDD20)
  {
    sub_2757969F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD20);
  }

  return result;
}

unint64_t sub_27574EFC8()
{
  result = qword_2809FF4C0;
  if (!qword_2809FF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF4C0);
  }

  return result;
}

void sub_27574F040()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TipView.TipImageConfiguration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TipView.Action();
      sub_275798140();
      if (v2 <= 0x3F)
      {
        sub_2756F40C0();
        if (v3 <= 0x3F)
        {
          sub_2756D3FDC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_27574F14C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_27574F2B0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[1] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_27574F4B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27574F4F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_27574F52C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27574F54C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_27574F588()
{
  result = qword_2809FF4C8;
  if (!qword_2809FF4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF4B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF498);
    sub_2757969F0();
    sub_2756CFA44(&qword_2809FF4B0, &qword_2809FF498);
    sub_27574EF28();
    swift_getOpaqueTypeConformance2();
    sub_2756CFA44(&qword_2809FF4D0, &qword_2809FF4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF4C8);
  }

  return result;
}

unint64_t sub_27574F6D0()
{
  result = qword_2809FF4E0;
  if (!qword_2809FF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF4E0);
  }

  return result;
}

uint64_t sub_27574F73C()
{
  sub_2756DC79C();

  return sub_275797650();
}

unint64_t sub_27574F7B8()
{
  result = qword_2809FF560;
  if (!qword_2809FF560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF558);
    sub_27574F844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF560);
  }

  return result;
}

unint64_t sub_27574F844()
{
  result = qword_2809FF568;
  if (!qword_2809FF568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF570);
    sub_27574F8FC();
    sub_2756CFA44(&qword_2809FDFF0, &qword_2809FDFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF568);
  }

  return result;
}

unint64_t sub_27574F8FC()
{
  result = qword_2809FF578;
  if (!qword_2809FF578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF580);
    sub_2756CFA44(&qword_2809FF588, &qword_2809FF590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF578);
  }

  return result;
}

uint64_t sub_27574F9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27574FA1C()
{
  type metadata accessor for TipView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  return sub_2757975C0();
}

uint64_t sub_27574FAC4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_27574FB00(uint64_t a1, char a2)
{
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_275798300();
    v9 = sub_275796F80();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_27562792C(0xD00000000000001ALL, 0x80000002757B9910, &v14);
      _os_log_impl(&dword_275623000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x277C81E50](v11, -1, -1);
      MEMORY[0x277C81E50](v10, -1, -1);
    }

    sub_275796C20();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_27574FCCC(uint64_t a1, char a2)
{
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_275798300();
    v9 = sub_275796F80();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_27562792C(0xD00000000000001DLL, 0x80000002757B98F0, &v14);
      _os_log_impl(&dword_275623000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x277C81E50](v11, -1, -1);
      MEMORY[0x277C81E50](v10, -1, -1);
    }

    sub_275796C20();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_27574FEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = KeyPath;
  *(a4 + 32) = 0;
  *(a4 + 40) = result;
  *(a4 + 48) = 0;
  return result;
}

uint64_t sub_27574FF58@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_275795CB0();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE1D8);
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF5A0);
  MEMORY[0x28223BE20](v21);
  v9 = &v21 - v8;
  v10 = *sub_2756D8EF8();
  v11 = *v1;

  v12 = [v11 actionURL];
  sub_275795C90();

  v13 = *(v1 + 16);
  if (v13)
  {
    v14 = *(v1 + 8);
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = *(*v10 + 200);

  v16(v4, v14, v15);

  (*(v2 + 8))(v4, v23);
  (*(v5 + 32))(v9, v7, v22);
  v17 = &v9[*(v21 + 36)];
  *v17 = sub_27575022C;
  v17[1] = 0;
  v17[2] = 0;
  v17[3] = 0;
  v18 = v24;
  sub_27562DABC(v9, v24);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF5A8);
  v20 = (v18 + *(result + 36));
  *v20 = 0;
  v20[1] = 0;
  v20[2] = sub_2757502E0;
  v20[3] = 0;
  return result;
}

uint64_t sub_27575022C()
{
  v0 = *(**sub_2756D8EF8() + 160);

  v2 = v0(v1);

  if (v2)
  {
    (*(*v2 + 128))(result);
  }

  return result;
}

uint64_t sub_2757502E0()
{
  v0 = *(**sub_2756D8EF8() + 160);

  v2 = v0(v1);

  if (v2)
  {
    (*(*v2 + 144))(result);
  }

  return result;
}

unint64_t sub_2757503B8()
{
  result = qword_2809FF5B0;
  if (!qword_2809FF5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF5B0);
  }

  return result;
}

uint64_t sub_275750428(uint64_t a1)
{
  v2 = sub_2757506C4();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_275750474(uint64_t a1)
{
  v2 = sub_2757506C4();

  return MEMORY[0x28212D8E0](a1, v2);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2757504DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_275750524(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_275750594()
{
  result = qword_2809FF5B8;
  if (!qword_2809FF5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF5A8);
    sub_275750620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF5B8);
  }

  return result;
}

unint64_t sub_275750620()
{
  result = qword_2809FF5C0;
  if (!qword_2809FF5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF5A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF5C0);
  }

  return result;
}

unint64_t sub_2757506C4()
{
  result = qword_2809FF5C8;
  if (!qword_2809FF5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF5C8);
  }

  return result;
}

double sub_275750730@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275796C80();
  v16 = 1;
  sub_275750838(v2, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2756C9074(&v17, &v9, &qword_2809FF5D0);
  sub_2756C92B4(v22, &qword_2809FF5D0);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a1 + 49) = *&v15[32];
  *(a1 + 65) = v5;
  *(a1 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a1 + 17) = *v15;
  v8 = v16;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 96) = *&v15[79];
  *(a1 + 33) = v7;
  return result;
}

uint64_t sub_275750838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 48))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v34 = *(a1 + 16);
    v39 = sub_2756E3C04(*(a1 + 32), *(a1 + 40));
    v40 = v11;
    sub_2756DC79C();
    v12 = sub_2757970D0();
    v14 = v13;
    v16 = v15;
    sub_275796FF0();
    v32 = v3;
    v33 = v6;
    v31 = sub_2757970A0();
    v18 = v17;
    v20 = v19;

    sub_2756E15EC(v12, v14, v16 & 1);

    sub_275797500();
    v7 = sub_275797070();
    v8 = v21;
    v23 = v22;
    v10 = v24;

    v25 = v20 & 1;
    v6 = v33;
    v26 = v18;
    v3 = v32;
    sub_2756E15EC(v31, v26, v25);

    v9 = v23 & 1;
    sub_2756E0DD0(v7, v8, v23 & 1);

    v5 = v34;
  }

  v39 = v3;
  v40 = v4;
  v41 = v5;
  v38 = v6;
  v27 = v5 & 1;
  v37 = v5 & 1;
  v36 = 1;
  sub_275751230(&v39, v35);
  sub_2756C9074(&v38, v35, &qword_2809FF610);
  sub_2756E0DD0(v3, v4, v27);

  sub_2756E171C(v7, v8, v9, v10);
  sub_2756E1760(v7, v8, v9, v10);
  v28 = v37;
  v29 = v36;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v28;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0;
  *(a2 + 40) = v29;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = v10;
  sub_2756E1760(v7, v8, v9, v10);
  sub_2756E15EC(v3, v4, v27);
}

uint64_t sub_275750A80@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7 & 1;
  return result;
}

uint64_t sub_275750AA0@<X0>(void *a1@<X8>)
{
  sub_275796CE0();
  v24 = sub_2757970B0();
  v28 = v2;
  v29 = v1;
  v4 = v3;
  sub_275797820();
  sub_2757967D0();
  *(v33 + 7) = *&v33[7];
  *(&v33[2] + 7) = *&v33[9];
  *(&v33[4] + 7) = v34;
  sub_275796CE0();
  *&v26 = sub_2757970B0();
  *(&v26 + 1) = v5;
  v7 = v6;
  v27 = v8;
  v23 = nullsub_1(0x140000000, 0x140000000);
  v10 = v9;
  sub_275797820();
  sub_2757967D0();
  v7 &= 1u;
  LOBYTE(v75[0]) = v7;
  LOBYTE(v64) = 0;
  *&v32[7] = v35;
  *&v32[23] = v36;
  *&v32[39] = v37;
  sub_275796CE0();
  v11 = sub_2757970B0();
  v21 = v13;
  v22 = v12;
  v15 = v14;
  v16 = nullsub_1(0x780000000, 0xC80000000);
  v19 = v17;
  v20 = v16;
  sub_275797820();
  sub_2757967D0();
  v15 &= 1u;
  *(v31 + 7) = v38;
  *(&v31[1] + 7) = v39;
  *(&v31[2] + 7) = v40;
  *&v41 = v24;
  *(&v41 + 1) = v29;
  LOBYTE(v42) = v4 & 1;
  *(&v42 + 1) = v28;
  v43 = 0uLL;
  v44[0] = 1;
  *&v44[48] = *(&v34 + 1);
  *&v44[33] = *&v33[4];
  *&v44[17] = *&v33[2];
  *&v44[1] = *v33;
  *&v44[56] = xmmword_2757A7CD0;
  __src[2] = 0uLL;
  __src[3] = *v44;
  __src[0] = v41;
  __src[1] = v42;
  *&__src[7] = 0xED00006574617453;
  __src[5] = *&v44[32];
  __src[6] = *&v44[48];
  __src[4] = *&v44[16];
  v45 = v26;
  LOBYTE(v46) = v7;
  *(&v46 + 1) = v27;
  *&v47 = v23;
  *(&v47 + 1) = v10;
  v48[0] = 0;
  *&v48[48] = *(&v37 + 1);
  *&v48[33] = *&v32[32];
  *&v48[17] = *&v32[16];
  *&v48[1] = *v32;
  *&v48[56] = 0xD000000000000010;
  v49 = 0x80000002757B9930;
  *(&__src[10] + 8) = *v48;
  *(&__src[9] + 8) = v47;
  *(&__src[8] + 8) = v46;
  *(&__src[7] + 8) = v26;
  *(&__src[14] + 1) = 0x80000002757B9930;
  *(&__src[13] + 8) = *&v48[48];
  *(&__src[12] + 8) = *&v48[32];
  *(&__src[11] + 8) = *&v48[16];
  *&v50 = v11;
  *(&v50 + 1) = v22;
  LOBYTE(v51) = v15;
  *(&v51 + 1) = v21;
  *&v52 = v20;
  *(&v52 + 1) = v19;
  v53[0] = 0;
  *&v53[48] = *(&v40 + 1);
  *&v53[33] = v31[2];
  *&v53[17] = v31[1];
  *&v53[1] = v31[0];
  *&v53[56] = xmmword_2757ABAD0;
  __src[17] = v52;
  __src[18] = *v53;
  __src[15] = v50;
  __src[16] = v51;
  *&__src[22] = 0xED00004247203035;
  __src[20] = *&v53[32];
  __src[21] = *&v53[48];
  __src[19] = *&v53[16];
  memcpy(a1, __src, 0x168uLL);
  v60 = v31[0];
  v54[0] = v11;
  v54[1] = v22;
  v55 = v15;
  v56 = v21;
  v57 = v20;
  v58 = v19;
  v59 = 0;
  v61 = v31[1];
  *v62 = v31[2];
  *&v62[15] = *(&v31[2] + 15);
  v63 = xmmword_2757ABAD0;
  sub_2756C9074(&v41, v75, &qword_2809FF5D8);
  sub_2756C9074(&v45, v75, &qword_2809FF5D8);
  sub_2756C9074(&v50, v75, &qword_2809FF5D8);
  sub_2756C92B4(v54, &qword_2809FF5D8);
  v70 = *v32;
  v64 = v26;
  v65 = v7;
  v66 = v27;
  v67 = v23;
  v68 = v10;
  v69 = 0;
  v71 = *&v32[16];
  *v72 = *&v32[32];
  *&v72[15] = *&v32[47];
  v73 = 0xD000000000000010;
  v74 = 0x80000002757B9930;
  sub_2756C92B4(&v64, &qword_2809FF5D8);
  v81 = *v33;
  v75[0] = v24;
  v75[1] = v29;
  v76 = v4 & 1;
  v78 = 0;
  v79 = 0;
  v77 = v28;
  v80 = 1;
  v82 = *&v33[2];
  *v83 = *&v33[4];
  *&v83[15] = *(&v33[5] + 7);
  v84 = xmmword_2757A7CD0;
  return sub_2756C92B4(v75, &qword_2809FF5D8);
}

unint64_t sub_275751018()
{
  result = qword_2809FF5E0;
  if (!qword_2809FF5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF5E0);
  }

  return result;
}

uint64_t sub_27575108C(uint64_t a1)
{
  v2 = sub_2757511DC();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2757510D8(uint64_t a1)
{
  v2 = sub_2757511DC();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_275751124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_27575116C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2757511DC()
{
  result = qword_2809FF608;
  if (!qword_2809FF608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF608);
  }

  return result;
}

uint64_t sub_27575128C(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_signposter;
  v4 = sub_275796210();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t sub_27575131C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad) = 0;
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_signposter;
  v4 = sub_275796210();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_275751398()
{
  v1 = v0;
  v2 = sub_2757961E0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  sub_2757961D0();
  v9 = sub_275796200();
  v10 = sub_275798370();
  if (sub_275798520())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_2757961C0();
    _os_signpost_emit_with_name_impl(&dword_275623000, v9, v10, v12, "ManageStorageDrilldown", "", v11, 2u);
    MEMORY[0x277C81E50](v11, -1, -1);
  }

  (*(v3 + 16))(v6, v8, v2);
  sub_275796250();
  swift_allocObject();
  v13 = sub_275796240();
  (*(v3 + 8))(v8, v2);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad) = v13;
}

uint64_t sub_275751578(int a1)
{
  v2 = v1;
  v4 = sub_275796220();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2757961E0();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v2 + OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v20 = a1;

    v13 = sub_275796200();
    sub_275796230();
    v19 = sub_275798360();
    if (sub_275798520())
    {

      sub_275796260();

      v14 = v21;
      if ((*(v21 + 88))(v6, v4) == *MEMORY[0x277D85B00])
      {
        v15 = 0;
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v6, v4);
        v16 = "success: %{BOOL}d";
        v15 = 1;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      *(v17 + 1) = v15;
      *(v17 + 2) = 1024;
      *(v17 + 4) = v20 & 1;
      v18 = sub_2757961C0();
      _os_signpost_emit_with_name_impl(&dword_275623000, v13, v19, v18, "ManageStorageDrilldown", v16, v17, 8u);
      MEMORY[0x277C81E50](v17, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    *(v2 + v12) = 0;
  }

  return result;
}

uint64_t sub_275751828()
{
  v1 = v0;
  v2 = sub_275796220();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2757961E0();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad;
  if (*(v1 + OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_manageStorageDrilldownLoad))
  {
    v19 = v3;

    v12 = sub_275796200();
    sub_275796230();
    v18 = sub_275798360();
    if (sub_275798520())
    {

      sub_275796260();

      v13 = v19;
      if ((*(v19 + 88))(v5, v2) == *MEMORY[0x277D85B00])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v5, v2);
        v14 = "didExitBeforeLoaded";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_2757961C0();
      _os_signpost_emit_with_name_impl(&dword_275623000, v12, v18, v16, "ManageStorageDrilldown", v14, v15, 2u);
      MEMORY[0x277C81E50](v15, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    *(v1 + v11) = 0;
  }

  return result;
}

uint64_t sub_275751AB4()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_signposter;
  v2 = sub_275796210();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_275751B24()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI22ManageStorageAnalytics_signposter;
  v2 = sub_275796210();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageStorageAnalytics()
{
  result = qword_280A0A850;
  if (!qword_280A0A850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275751C24()
{
  result = sub_275796210();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_275751D10(uint64_t a1)
{
  swift_beginAccess();
  qword_280A0D888 = a1;
}

uint64_t static JetAnalytics.preload(account:)(void *a1)
{
  swift_beginAccess();
  if (!qword_280A0D888)
  {
    qword_280A0D888 = sub_275752938(a1);
  }
}

uint64_t static JetAnalytics.start(account:)(void *a1)
{
  swift_beginAccess();
  if (qword_280A0D888)
  {
    v2 = qword_280A0D888;
  }

  else
  {
    v2 = sub_275752938(a1);
    qword_280A0D888 = v2;
  }

  return v2;
}

uint64_t sub_275751F60@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v76 = a3;
  v4 = sub_275797B10();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v55 - v7;
  v69 = sub_275797CC0();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_275797D70();
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF618);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v78 = sub_275797DF0();
  v62 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_275797DA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_275797D20();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_275797E30();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v63 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v55 - v25;
  MEMORY[0x28223BE20](v24);
  v61 = &v55 - v27;
  v60 = *a1;
  sub_275797AE0();
  sub_275797E40();
  v56 = v19;
  sub_275797D10();
  v28 = sub_27575DC08(v59);
  v30 = v29;
  v83 = &type metadata for FieldsProvider;
  v84 = sub_275752C4C();
  v82[0] = v28;
  v82[1] = v30;
  v31 = sub_27575F078();
  (*(v15 + 16))(v17, v31, v14);
  sub_275797CF0();
  (*(v15 + 8))(v17, v14);
  __swift_destroy_boxed_opaque_existential_0(v82);
  v32 = [objc_opt_self() quotaBag];
  v58 = v26;
  sub_275797E00();
  v33 = [objc_opt_self() ams_sharedAccountStore];
  v83 = sub_275752CA0();
  v84 = MEMORY[0x277D225B8];
  v82[0] = v33;
  v57 = v21;
  v59 = *(v21 + 16);
  (v59)(v12, v26, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  v34 = [objc_opt_self() currentProcess];
  sub_275797DE0();
  sub_275797DD0();
  v35 = v77;
  sub_275797DC0();
  v36 = v78;
  v83 = v78;
  v84 = MEMORY[0x277D22368];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
  v38 = v62;
  (*(v62 + 16))(boxed_opaque_existential_1, v35, v36);
  v39 = sub_27575F19C();
  v40 = v65;
  v41 = v64;
  v42 = v66;
  (*(v65 + 16))(v64, v39, v66);
  v43 = v56;
  sub_275797D00();
  (*(v40 + 8))(v41, v42);
  __swift_destroy_boxed_opaque_existential_0(v82);
  v44 = v67;
  v45 = sub_275797CB0();
  nullsub_1(v45, v46);
  sub_275752CEC();
  sub_275797CA0();
  v47 = v69;
  v80 = v69;
  v81 = MEMORY[0x277D22188];
  v48 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v49 = v71;
  (*(v71 + 16))(v48, v44, v47);
  v50 = v60;

  sub_275741AC8(&v79, v50, v82);
  v51 = v61;
  (v59)(v63, v61, v20);
  v80 = &type metadata for IntentMetricsEventLinter;
  v81 = sub_275752D40();
  *&v79 = swift_allocObject();
  sub_275741F24(v82, v79 + 16);
  v52 = v73;
  sub_275797B00();
  sub_275797AF0();
  (*(v74 + 8))(v52, v75);
  sub_275797B20();
  sub_275752D94(v82);
  (*(v49 + 8))(v44, v47);
  (*(v38 + 8))(v77, v78);
  v53 = *(v57 + 8);
  v53(v58, v20);
  (*(v68 + 8))(v43, v70);
  return (v53)(v51, v20);
}

id JetAnalytics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JetAnalytics.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v2, sel_init);
}

id JetAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JetAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275752938(void *a1)
{
  v2 = sub_2757978F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275797E20();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_275797910();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275797E10();
  v11 = [objc_opt_self() currentProcess];
  (*(v3 + 104))(v5, *MEMORY[0x277D21A90], v2);
  sub_2757978E0();
  sub_275797900();
  *(swift_allocObject() + 16) = a1;
  v16[3] = sub_275797C20();
  v16[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v16);
  v12 = a1;
  sub_275797C10();
  sub_275797B30();
  v13 = sub_275797E50();

  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v13;
}

unint64_t sub_275752C4C()
{
  result = qword_2809FF620;
  if (!qword_2809FF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF620);
  }

  return result;
}

unint64_t sub_275752CA0()
{
  result = qword_2809FF628;
  if (!qword_2809FF628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FF628);
  }

  return result;
}

unint64_t sub_275752CEC()
{
  result = qword_2809FF630;
  if (!qword_2809FF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF630);
  }

  return result;
}

unint64_t sub_275752D40()
{
  result = qword_2809FF638;
  if (!qword_2809FF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FF638);
  }

  return result;
}

uint64_t sub_275752DE8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v20 = MEMORY[0x277D84F90];
  sub_275754094(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v20;
    v9 = a4;
    if (a4 <= a3)
    {
      v9 = a3;
    }

    v10 = v9 - a3 + 1;
    while (v8 < v5)
    {
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

      v18 = a3 + v8;
      a1(&v19, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v12 = v19;
      v20 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_275754094((v13 > 1), v14 + 1, 1);
        v6 = v20;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v12;
      if (a4 < a3)
      {
        goto LABEL_18;
      }

      if (v10 == ++v8)
      {
        goto LABEL_19;
      }

      if (v11 == v5)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_275752F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = sub_2757967A0();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - v6;
  v8 = sub_275796850();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *a1;
  sub_2757968B0();
  sub_27575542C();
  sub_275798260();
  sub_275798290();
  result = sub_275798280();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    if (v15 < result - 1)
    {
      sub_2757968C0();
      sub_275796840();
      v18 = *(v9 + 8);
      v18(v14, v8);
      sub_2757968C0();
      v19 = v23;
      sub_275796840();
      v18(v12, v8);
      sub_275796790();
      v17 = v20;
      v21 = v25;
      v22 = *(v24 + 8);
      v22(v19, v25);
      result = (v22)(v7, v21);
    }

    *v26 = v17;
  }

  return result;
}

uint64_t (*sub_275753230(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_275796660();
  return sub_2757560A8;
}

uint64_t sub_2757532B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2757967A0();
  v31 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_275796850();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v18 = *a1;
  if (*a1)
  {
    goto LABEL_6;
  }

  v30 = v18 + 2;
  if (!__OFADD__(v18, 2))
  {
    v27 = v4;
    v28 = result;
    v29 = a2;
    sub_2757968B0();
    sub_27575542C();
    sub_275798260();
    sub_275798290();
    result = sub_275798280();
    if (v30 < result)
    {
      sub_2757968C0();
      sub_275796840();
      v19 = *(v11 + 8);
      v20 = v28;
      v19(v17, v28);
      sub_2757968C0();
      sub_275796840();
      v19(v14, v20);
      sub_275796790();
      v22 = v21;
      v23 = *(v31 + 8);
      v24 = v27;
      v23(v7, v27);
      result = (v23)(v9, v24);
      v25 = 0;
      a2 = v29;
      *v29 = v22;
LABEL_7:
      *(a2 + 8) = v25;
      return result;
    }

    a2 = v29;
LABEL_6:
    *a2 = 0;
    v25 = 1;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_275753584(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x277D84F90];
      while (a4 != v7)
      {
        v14 = v7;
        result = v8(&v12, &v14);
        if (v4)
        {

          return v5;
        }

        if ((v13 & 1) == 0)
        {
          v9 = v12;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2757542DC(0, *(v5 + 16) + 1, 1, v5);
            v5 = result;
          }

          v11 = *(v5 + 16);
          v10 = *(v5 + 24);
          if (v11 >= v10 >> 1)
          {
            result = sub_2757542DC((v10 > 1), v11 + 1, 1, v5);
            v5 = result;
          }

          *(v5 + 16) = v11 + 1;
          *(v5 + 8 * v11 + 32) = v9;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t (*sub_2757536E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_275796660();
  return sub_2757560A8;
}

uint64_t sub_275753768(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a2 & 1) == 0)
  {
    v7 = a3;
    v8 = a5;
    v9 = a1;
    v11 = a1;
    sub_275753820(&v11, v12);
    a5 = v8;
    a1 = v9;
    a3 = v7;
    if (v12[0] != 2 && (v12[0] & 1) == 0)
    {
      return sub_275755034(v9, a2 & 1, v8);
    }
  }

  LOBYTE(v11) = a2 & 1;
  v12[0] = a4 & 1;
  return sub_275754684(a1, a2 & 1, a3, a4 & 1, a5);
}

uint64_t sub_275753820@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_275755C64(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_275753860(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = a3;
  result = a1(&var1, &v6);
  if (!v4)
  {
    return var1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2757538B8(uint64_t a1, char a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v53 = a4;
  v17 = sub_275796850();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v57 = a5;
  v54 = v18;
  if (a2 & 1) != 0 || (*&v59[0] = a1, sub_27575605C(v59, &v58), v58 == 2) || (v58)
  {
    sub_2757968B0();
    sub_27575542C();
    sub_275798260();
    result = sub_275798290();
    if (v58 < *&v59[0])
    {
      __break(1u);
    }

    else
    {
      MEMORY[0x28223BE20](result);
      *(&v51 - 2) = a5;
      v56 = COERCE_DOUBLE(sub_275752DE8(sub_275755484, (&v51 - 4), v25, v26));
      v60.origin.x = a6;
      v60.origin.y = a7;
      v60.size.width = a8;
      v60.size.height = a9;
      MinX = CGRectGetMinX(v60);
      sub_275798260();
      result = sub_275798290();
      v28 = *&v59[0];
      v29 = v58;
      if (v58 >= *&v59[0])
      {
        if (*&v59[0] == v58)
        {
        }

        if (*&v59[0] < v58)
        {
          if ((*&v59[0] & 0x8000000000000000) == 0)
          {
            v30 = *(*&v56 + 16);
            if (*&v59[0] < v30 && v58 - 1 < v30)
            {
              v55 = *&a1;
              v31 = (v54 + 8);
              v32 = a2 & 1;
              v54 = a3;
              v53 &= 1u;
              do
              {
                v33 = v29;
                sub_2757968C0();
                v61.origin.x = a6;
                v61.origin.y = a7;
                v61.size.width = a8;
                v61.size.height = a9;
                CGRectGetMinY(v61);
                sub_275797880();
                LOBYTE(v59[0]) = v32;
                LOBYTE(v58) = v53;
                sub_275796830();
                v34 = *v31;
                (*v31)(v23, v17);
                sub_2757968C0();
                sub_275796A20();
                LOBYTE(v59[0]) = v35 & 1;
                LOBYTE(v58) = v36 & 1;
                sub_275796820();
                v38 = v37;
                v34(v23, v17);
                v29 = v33;
                MinX = MinX + v38 + *(*&v56 + 8 * v28++ + 32);
              }

              while (v33 != v28);
            }

            goto LABEL_27;
          }

LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_275754F34(a5);
  v40 = v39;
  v62.origin.x = a6;
  v62.origin.y = a7;
  v62.size.width = a8;
  v62.size.height = a9;
  CGRectGetMinX(v62);
  v63.origin.x = a6;
  v63.origin.y = a7;
  v63.size.width = a8;
  v63.size.height = a9;
  MinY = CGRectGetMinY(v63);
  sub_2757968B0();
  sub_27575542C();
  sub_275798260();
  result = sub_275798290();
  v42 = *&v59[0];
  v43 = v58;
  if (v58 < *&v59[0])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (*&v59[0] != v58)
  {
    if (*&v59[0] >= v58)
    {
LABEL_29:
      __break(1u);
      __break(1u);
      return result;
    }

    v44 = (v54 + 8);
    v55 = *&a1 * 0.5 - v40;
    v56 = v55;
    v45 = v17;
    v52 = a6;
    do
    {
      v46 = v42 + 1;
      v47 = v43;
      sub_2757968C0();
      v48 = *v44;
      (*v44)(v21, v45);
      sub_2757554B0(a5, v42);
      v50 = v49;
      v64.origin.x = a6;
      v64.origin.y = a7;
      v64.size.width = a8;
      v64.size.height = a9;
      CGRectGetMinX(v64);
      sub_2757968C0();
      sub_275797890();
      LOBYTE(v59[0]) = 0;
      LOBYTE(v58) = 0;
      a6 = v52;
      sub_275796830();
      result = v48(v23, v45);
      v43 = v47;
      if ((v42 & 0x8000000000000001) == 1)
      {
        MinY = MinY + v50 + 4.0;
      }

      ++v42;
    }

    while (v47 != v46);
  }

  return result;
}

uint64_t sub_275753E38(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v12[2] = a5;
  v9 = a2 & 1;
  v10 = sub_275753860(sub_27575605C, v12, a1, a2 & 1);
  if (v10 != 2 && (v10 & 1) == 0)
  {
    return sub_275755034(a1, v9, a5);
  }

  v14 = v9;
  v13 = a4 & 1;
  return sub_275754684(a1, v9, a3, a4 & 1, a5);
}

uint64_t (*sub_275753FBC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_275796660();
  return sub_275754044;
}

void sub_275754048(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

char *sub_275754094(char *a1, int64_t a2, char a3)
{
  result = sub_2757540D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2757540B4(char *a1, int64_t a2, char a3)
{
  result = sub_2757541D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2757540D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF658);
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

char *sub_2757541D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF660);
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

char *sub_2757542DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF658);
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

uint64_t sub_2757543E0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v34 = a5;
  v32 = a2;
  v33 = a4;
  v31 = sub_275796850();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2757968B0();
  sub_27575542C();
  v10 = sub_275798270();
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v10;
    v37 = MEMORY[0x277D84F90];
    sub_275754094(0, v10 & ~(v10 >> 63), 0);
    v11 = v37;
    result = sub_275798260();
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v29 = (v6 + 8);
    v30 = (v6 + 16);
    v14 = a3 & 1;
    do
    {
      v15 = sub_2757982B0();
      v16 = v9;
      v17 = v31;
      (*v30)(v8);
      v15(v36, 0);
      v36[0] = v14;
      v35 = v34 & 1;
      sub_275796820();
      v19 = v18;
      (*v29)(v8, v17);
      v37 = v11;
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_275754094((v20 > 1), v21 + 1, 1);
        v11 = v37;
      }

      *(v11 + 16) = v21 + 1;
      *(v11 + 8 * v21 + 32) = v19;
      sub_2757982A0();
      --v12;
      v9 = v16;
    }

    while (v12);
  }

  v22 = *(v11 + 16);
  if (v22)
  {
    v23 = *(v11 + 32);
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = (v11 + 40);
      do
      {
        v26 = *v25++;
        v27 = v26;
        if (v23 < v26)
        {
          v23 = v27;
        }

        --v24;
      }

      while (v24);
    }
  }
}

uint64_t sub_275754684(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v65 = sub_275796850();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v59[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2757968B0();
  v12 = sub_27575542C();
  sub_275798260();
  sub_275798290();
  result = sub_275798280();
  if (result >= 1)
  {
    v63 = a2;
    v14 = sub_275798270();
    v15 = MEMORY[0x277D84F90];
    v61 = a1;
    v62 = a3;
    v60 = a4;
    if (v14)
    {
      v16 = v14;
      v68 = MEMORY[0x277D84F90];
      sub_2757540B4(0, v14 & ~(v14 >> 63), 0);
      v17 = v68;
      result = sub_275798260();
      if (v16 < 0)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        return result;
      }

      v18 = (v10 + 16);
      v19 = (v10 + 8);
      do
      {
        v20 = sub_2757982B0();
        v22 = v64;
        v21 = v65;
        (*v18)(v64);
        v20(v67, 0);
        sub_275796A20();
        LOBYTE(v67[0]) = v23 & 1;
        v66 = v24 & 1;
        sub_275796820();
        v26 = v25;
        v28 = v27;
        (*v19)(v22, v21);
        v68 = v17;
        v29 = a5;
        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2757540B4((v30 > 1), v31 + 1, 1);
          v17 = v68;
        }

        *(v17 + 16) = v31 + 1;
        v32 = v17 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v28;
        sub_2757982A0();
        --v16;
        a5 = v29;
      }

      while (v16);
      a1 = v61;
      a3 = v62;
      LOBYTE(a4) = v60;
      v15 = MEMORY[0x277D84F90];
      v33 = v63;
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      v33 = v63;
      if ((v63 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v65 = v12;
    v34 = *(v17 + 16);
    if (v34)
    {
      v67[0] = v15;
      sub_275754094(0, v34, 0);
      v35 = v67[0];
      v36 = *(v67[0] + 16);
      v37 = 32;
      do
      {
        v38 = *(v17 + v37);
        v67[0] = v35;
        v39 = *(v35 + 24);
        if (v36 >= v39 >> 1)
        {
          sub_275754094((v39 > 1), v36 + 1, 1);
          v35 = v67[0];
        }

        *(v35 + 16) = v36 + 1;
        *(v35 + 8 * v36 + 32) = v38;
        v37 += 16;
        ++v36;
        --v34;
      }

      while (v34);

      a1 = v61;
      LOBYTE(a4) = v60;
      v33 = v63;
      v40 = *(v35 + 16);
      if (!v40)
      {
        goto LABEL_28;
      }
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
      v40 = *(MEMORY[0x277D84F90] + 16);
      if (!v40)
      {
        goto LABEL_28;
      }
    }

    if (v40 <= 3)
    {
      v41 = 0;
      v42 = 0.0;
LABEL_26:
      v45 = v40 - v41;
      v46 = (v35 + 8 * v41 + 32);
      do
      {
        v47 = *v46++;
        v42 = v42 + v47;
        --v45;
      }

      while (v45);
      goto LABEL_28;
    }

    v41 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    v43 = (v35 + 48);
    v42 = 0.0;
    v44 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v42 = v42 + *(v43 - 2) + *(v43 - 1) + *v43 + v43[1];
      v43 += 4;
      v44 -= 4;
    }

    while (v44);
    if (v40 != v41)
    {
      goto LABEL_26;
    }

LABEL_28:

    sub_275798260();
    result = sub_275798290();
    if (v68 >= v67[0])
    {
      MEMORY[0x28223BE20](result);
      *&v59[-16] = a5;
      v50 = sub_275752DE8(sub_275756090, &v59[-32], v48, v49);
      v51 = *(v50 + 16);
      if (v51)
      {
        a3 = v62;
        if (v51 > 3)
        {
          v52 = v51 & 0x7FFFFFFFFFFFFFFCLL;
          v54 = (v50 + 48);
          v53 = 0.0;
          v55 = v51 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v53 = v53 + *(v54 - 2) + *(v54 - 1) + *v54 + v54[1];
            v54 += 4;
            v55 -= 4;
          }

          while (v55);
          if (v51 == v52)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v52 = 0;
          v53 = 0.0;
        }

        v56 = v51 - v52;
        v57 = (v50 + 8 * v52 + 32);
        do
        {
          v58 = *v57++;
          v53 = v53 + v58;
          --v56;
        }

        while (v56);
      }

      else
      {
        a3 = v62;
      }

LABEL_38:

      LOBYTE(v67[0]) = v33 & 1;
      LOBYTE(v68) = a4 & 1;
      return sub_2757543E0(a5, a1, v33 & 1, a3, a4 & 1);
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t sub_275754BFC(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v18 = sub_275796850();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2757968B0();
  sub_27575542C();
  sub_275798260();
  result = sub_275798290();
  if (v45 < v46)
  {
    __break(1u);
    goto LABEL_12;
  }

  v40 = v19;
  LODWORD(v44) = a2;
  MEMORY[0x28223BE20](result);
  *&v38[-16] = a5;
  v25 = sub_275752DE8(sub_275756090, &v38[-32], v23, v24);
  v47.origin.x = a6;
  v47.origin.y = a7;
  v47.size.width = a8;
  v47.size.height = a9;
  MinX = CGRectGetMinX(v47);
  sub_275798260();
  result = sub_275798290();
  v27 = v46;
  if (v45 < v46)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v46 == v45)
  {
  }

  if (v46 >= v45)
  {
    goto LABEL_13;
  }

  if (v46 < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = *(v25 + 16);
  if (v46 < v28 && v45 - 1 < v28)
  {
    v41 = v18;
    v42 = v45;
    v29 = (v40 + 8);
    v39 = a4 & 1;
    LODWORD(v40) = v44 & 1;
    v43 = a5;
    v44 = v25;
    do
    {
      sub_2757968C0();
      v48.origin.x = a6;
      v48.origin.y = a7;
      v48.size.width = a8;
      v48.size.height = a9;
      CGRectGetMinY(v48);
      sub_275797880();
      LOBYTE(v46) = v40;
      LOBYTE(v45) = v39;
      sub_275796830();
      v30 = a1;
      v31 = a3;
      v32 = *v29;
      v33 = v41;
      (*v29)(v21, v41);
      sub_2757968C0();
      sub_275796A20();
      LOBYTE(v46) = v34 & 1;
      LOBYTE(v45) = v35 & 1;
      sub_275796820();
      v37 = v36;
      v32(v21, v33);
      a3 = v31;
      a1 = v30;
      MinX = MinX + v37 + *(v44 + 8 * v27++ + 32);
    }

    while (v42 != v27);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_275754F34(uint64_t a1)
{
  sub_2757968B0();
  sub_27575542C();
  sub_275798260();
  result = sub_275798290();
  if (v12[6] < v12[7])
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v12[2] = a1;
    v5 = sub_275753584(sub_275755C38, v12, v3, v4);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v5 + 32);
      v8 = v6 - 1;
      if (v8)
      {
        v9 = (v5 + 40);
        do
        {
          v10 = *v9++;
          v11 = v10;
          if (v7 < v10)
          {
            v7 = v11;
          }

          --v8;
        }

        while (v8);
      }
    }
  }

  return result;
}