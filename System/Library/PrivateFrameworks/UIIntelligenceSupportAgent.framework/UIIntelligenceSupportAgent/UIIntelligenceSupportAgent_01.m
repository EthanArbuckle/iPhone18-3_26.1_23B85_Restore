size_t sub_22BAD2D70(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF2D8, &qword_22BB21FB0, type metadata accessor for FragmentCollator.RootElement);
  *v3 = result;
  return result;
}

size_t sub_22BAD2DB4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_22BAD2FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22BAD3018(uint64_t a1, char **a2)
{
  v4 = sub_22BB1E93C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1E96C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v38 = &v37 - v13;
  result = MEMORY[0x28223BE20](v12);
  v52 = &v37 - v17;
  v44 = *(a1 + 16);
  if (!v44)
  {
    return result;
  }

  v18 = 0;
  v37 = a2;
  v19 = *a2;
  v21 = *(v15 + 16);
  v20 = v15 + 16;
  v50 = v21;
  v47 = (*(v20 + 64) + 32) & ~*(v20 + 64);
  v42 = v16;
  v43 = a1 + v47;
  v22 = *(v20 + 56);
  v23 = (v5 + 88);
  v53 = *MEMORY[0x277D74668];
  v51 = *MEMORY[0x277D74640];
  v24 = (v5 + 8);
  v45 = (v20 - 8);
  v46 = v9;
  v41 = (v20 + 16);
  v25 = v52;
  v49 = v20;
  while (1)
  {
    v48 = v18;
    v50(v25, v43 + v22 * v18, v9);
    v28 = *(v19 + 2);
    if (v28)
    {
      break;
    }

LABEL_18:
    v34 = v42;
    v9 = v46;
    v50(v42, v52, v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22BAD34A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v36 = *(v19 + 2);
    v35 = *(v19 + 3);
    if (v36 >= v35 >> 1)
    {
      v19 = sub_22BAD34A8(v35 > 1, v36 + 1, 1, v19);
    }

    *(v19 + 2) = v36 + 1;
    (*v41)(&v19[v47 + v36 * v22], v34, v9);
    v26 = *v45;
LABEL_4:
    v27 = v48 + 1;
    v25 = v52;
    result = (v26)(v52, v9);
    v18 = v27;
    if (v27 == v44)
    {
      *v37 = v19;
      return result;
    }
  }

  v29 = 0;
  v30 = v47;
  while (1)
  {
    sub_22BB1E94C();
    v31 = (*v23)(v8, v4);
    if (v31 == v53)
    {
      break;
    }

    if (v31 == v51)
    {
      goto LABEL_12;
    }

    (*v24)(v8, v4);
LABEL_8:
    ++v29;
    v30 += v22;
    if (v28 == v29)
    {
      goto LABEL_18;
    }
  }

  (*v24)(v8, v4);
LABEL_12:
  result = sub_22BB1E79C();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v29 >= *(v19 + 2))
  {
    __break(1u);
  }

  else
  {
    v32 = v38;
    v33 = v46;
    v50(v38, &v19[v30], v46);
    v40 = sub_22BB1E6EC();
    v39 = *v45;
    v39(v32, v33);
    v54 = v40;
    sub_22BB1E6EC();
    sub_22BAD3018();

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22BADC0C8(v19);
      v19 = result;
    }

    if (v29 < *(v19 + 2))
    {
      sub_22BB1E6FC();
      v9 = v46;
      v26 = v39;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BAD34EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v4 = sub_22BB1F35C();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F3AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  if ((a1[1] & 1) == 0 && (a1[3] & 1) == 0)
  {
    v16 = a1[2];
    v27 = *a1;
    v28 = v16;
    *a1 = 0;
    *(a1 + 8) = 1;
    a1[2] = 0;
    *(a1 + 24) = 1;
    v26 = *(a1[4] + 16);
    sub_22BB1F38C();
    sub_22BB1F38C();
    sub_22BB1F39C();

    sub_22BB1F33C();
    v29 = *(v9 + 8);
    v29(v13, v8);
    sub_22BACDF8C();
    sub_22BACCE68();
    sub_22BAD381C(v17);
    sub_22BACCE68();
    sub_22BAD381C(v18);
    v19 = sub_22BB1F39C();
    v25 = sub_22BB1F9BC();
    if (sub_22BB1FA0C())
    {
      v20 = swift_slowAlloc();
      v24[1] = v2;
      v21 = v20;
      *v20 = 134218496;
      *(v20 + 4) = v27;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v28;
      *(v20 + 22) = 2050;
      *(v20 + 24) = v26;
      v22 = sub_22BB1F34C();
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v19, v25, v22, "ManagementPolicy", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu count=%{public}ld", v21, 0x20u);
      MEMORY[0x23189DF20](v21, -1, -1);
    }

    (*(v30 + 8))(v7, v4);
    v29(v15, v8);
  }

  *v31 = a1[4];
}

uint64_t sub_22BAD3820(uint64_t a1)
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
    result = sub_22BAD3980(v6, v4, v2);
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
  v10 = sub_22BB10DAC(v9, v4, v2);
  result = MEMORY[0x23189DF20](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_22BAD3980(unint64_t *result, uint64_t a2, uint64_t a3)
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
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_22BAD3A6C(result, a2, v4, a3);
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
      return sub_22BAD3A6C(result, a2, v4, a3);
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

uint64_t sub_22BAD3A6C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF610, &qword_22BB21248);
  result = sub_22BB1FC2C();
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
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v33 = *(v17 + v16);
    v21 = *(v9 + 40);
    sub_22BB1FDDC();

    sub_22BB1F6EC();
    result = sub_22BB1FE0C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
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

uint64_t sub_22BAD3CA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_22BAC8968(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_22BB1FA9C();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_22BAC8968((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
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
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22BADEAF4(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22BADEAF4(v7, v25, 0);
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
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22BAD3F4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v4 = sub_22BB1F35C();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F3AC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - v14;
  if ((a1[1] & 1) == 0 && (a1[3] & 1) == 0)
  {
    v16 = a1[2];
    v27 = *a1;
    v28 = v16;
    *a1 = 0;
    *(a1 + 8) = 1;
    a1[2] = 0;
    *(a1 + 24) = 1;
    v26 = *(a1[4] + 16);
    sub_22BB1F38C();
    sub_22BB1F38C();
    sub_22BB1F39C();

    sub_22BB1F33C();
    v29 = *(v9 + 8);
    v29(v13, v8);
    sub_22BACDF8C();
    sub_22BACCE68();
    sub_22BAD381C(v17);
    sub_22BACCE68();
    sub_22BAD381C(v18);
    v19 = sub_22BB1F39C();
    v25 = sub_22BB1F9BC();
    if (sub_22BB1FA0C())
    {
      v20 = swift_slowAlloc();
      v24[1] = v2;
      v21 = v20;
      *v20 = 134218496;
      *(v20 + 4) = v27;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v28;
      *(v20 + 22) = 2050;
      *(v20 + 24) = v26;
      v22 = sub_22BB1F34C();
      _os_signpost_emit_with_name_impl(&dword_22BABB000, v19, v25, v22, "WindowVisibility", "%{public, signpost.description:begin_time}llu %{public, signpost.description:end_time}llu count=%{public}ld", v21, 0x20u);
      MEMORY[0x23189DF20](v21, -1, -1);
    }

    (*(v30 + 8))(v7, v4);
    v29(v15, v8);
  }

  *v31 = a1[4];
}

uint64_t sub_22BAD427C(uint64_t a1, uint64_t a2)
{
  v26 = sub_22BAD4468(MEMORY[0x277D84F90]);
  v24 = *(a1 + 16);
  if (!v24)
  {
    return v26;
  }

  v4 = 0;
  v23 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    v6 = *(v23 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      break;
    }

LABEL_4:
    if (++v4 == v24)
    {
      return v26;
    }
  }

  v25 = v4;

  v9 = 0;
  v10 = 0;
  while (v9 < *(v6 + 16))
  {
    if (*(a2 + 16))
    {
      v11 = (v6 + 32 + 16 * v9);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(a2 + 40);
      sub_22BB1FDDC();

      sub_22BB1F6EC();
      v15 = sub_22BB1FE0C();
      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if ((*(v5 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (*(a2 + 48) + 16 * v17);
          v20 = *v19 == v13 && v19[1] == v12;
          if (v20 || (sub_22BB1FD9C() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v5 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_22BB0EC04(v10, v13, v12, isUniquelyReferenced_nonNull_native);

        if (__OFADD__(v10++, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_7:
      }
    }

    if (++v9 == v7)
    {

      v4 = v25;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_22BAD4468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
    v3 = sub_22BB1FC2C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22BAD6B9C(v5, v6);
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

size_t sub_22BAD4564(size_t a1, int64_t a2, char a3)
{
  result = sub_22BAC49DC(a1, a2, a3, *v3, &qword_27D8DF2D0, &unk_22BB227F0, MEMORY[0x277D746B0]);
  *v3 = result;
  return result;
}

uint64_t sub_22BAD45C8(uint64_t a1, uint64_t a2)
{
  v90 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v92 = *(v90 - 8);
  v4 = *(v92 + 64);
  MEMORY[0x28223BE20](v90);
  v91 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v81 = sub_22BB1F45C();
  v9 = *(v81 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v81);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v75 - v15;
  v17 = sub_22BB1E55C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v103 = &v75 - v22;
  MEMORY[0x28223BE20](v23);
  v102 = &v75 - v24;
  MEMORY[0x28223BE20](v25);
  v101 = &v75 - v26;
  MEMORY[0x28223BE20](v27);
  v82 = &v75 - v28;
  sub_22BAD4EF0(a2, &v75 - v28);
  (*(v18 + 56))(v16, 1, 1, v17);
  v76 = v16;
  v104 = sub_22BAD5458(a2, v16);
  v29 = sub_22BAD70AC(MEMORY[0x277D84F90]);
  v31 = *(a1 + 16);
  v93 = v18;
  v84 = v31;
  if (!v31)
  {
LABEL_29:

    sub_22BAC81E8(v76, &qword_27D8DF5A8, &qword_22BB22BA0);
    (*(v93 + 8))(v82, v17);
    return v29;
  }

  v32 = a1;
  v33 = 0;
  v80 = v32 + 32;
  v79 = (v9 + 8);
  v100 = (v18 + 16);
  v89 = (v18 + 32);
  v86 = v18 + 40;
  v97 = (v18 + 8);
  *&v30 = 134349570;
  v77 = v30;
  v94 = v8;
  v95 = v17;
  v83 = v32;
  v78 = v12;
  while (1)
  {
    v34 = *(v80 + 8 * v33);
    v35 = v33 + 1;

    sub_22BB1F43C();

    v36 = sub_22BB1F44C();
    v37 = sub_22BB1F89C();

    v38 = os_log_type_enabled(v36, v37);
    v98 = v34;
    v85 = v35;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v105 = v40;
      *v39 = v77;
      *(v39 + 4) = v35;
      *(v39 + 12) = 2050;
      *(v39 + 14) = v84;

      *(v39 + 22) = 2082;
      v41 = MEMORY[0x23189D210](v98, MEMORY[0x277D837D0]);
      v43 = sub_22BABDC4C(v41, v42, &v105);
      v8 = v94;

      *(v39 + 24) = v43;
      v17 = v95;
      _os_log_impl(&dword_22BABB000, v36, v37, "windowZOrderList for screen %{public}ld of %{public}ld: %{public}s", v39, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      v44 = v40;
      v34 = v98;
      MEMORY[0x23189DF20](v44, -1, -1);
      MEMORY[0x23189DF20](v39, -1, -1);
    }

    else
    {
    }

    (*v79)(v12, v81);
    v99 = *v100;
    v99(v101, v82, v17);
    v45 = *(v34 + 16);
    if (v45)
    {
      break;
    }

LABEL_3:

    (*v97)(v101, v17);
    v33 = v85;
    v12 = v78;
    if (v85 == v84)
    {
      goto LABEL_29;
    }
  }

  v46 = 0;
  v47 = (v34 + 40);
  v96 = *(v34 + 16);
  while (v46 < *(v34 + 16))
  {
    if (*(v104 + 16))
    {
      v49 = *(v47 - 1);
      v48 = *v47;

      v50 = sub_22BAD6B9C(v49, v48);
      if (v51)
      {
        v52 = v91;
        sub_22BABE3D4(*(v104 + 56) + *(v92 + 72) * v50, v91, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        sub_22BABE43C(v52, v8, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        v53 = v102;
        v54 = v99;
        v99(v102, v101, v17);
        sub_22BB1E50C();
        v54(v103, v53, v17);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v29;
        v57 = sub_22BAD6B9C(v49, v48);
        v58 = v29[2];
        v59 = (v56 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_31;
        }

        v61 = v56;
        if (v29[3] >= v60)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v56 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          else
          {
            sub_22BAEBEA8();
            if ((v61 & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          sub_22BAE9818(v60, isUniquelyReferenced_nonNull_native);
          v62 = sub_22BAD6B9C(v49, v48);
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_33;
          }

          v57 = v62;
          if ((v61 & 1) == 0)
          {
LABEL_23:
            v29 = v105;
            v105[(v57 >> 6) + 8] |= 1 << v57;
            v65 = (v29[6] + 16 * v57);
            *v65 = v49;
            v65[1] = v48;
            v66 = v29[7] + *(v93 + 72) * v57;
            v17 = v95;
            (*(v93 + 32))(v66, v103, v95);
            v67 = v29[2];
            v68 = __OFADD__(v67, 1);
            v69 = v67 + 1;
            if (v68)
            {
              goto LABEL_32;
            }

            v29[2] = v69;
            goto LABEL_25;
          }
        }

        v29 = v105;
        v64 = v105[7] + *(v93 + 72) * v57;
        v17 = v95;
        (*(v93 + 40))(v64, v103, v95);
LABEL_25:
        v8 = v94;
        if (v94[*(v90 + 20)] == 1)
        {
          v70 = v87;
          v71 = v101;
          v99(v87, v101, v17);
          v72 = v102;
          sub_22BB1E53C();
          v88 = v29;
          v73 = *v97;
          (*v97)(v72, v17);
          sub_22BAD2FB8(v8, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
          v73(v71, v17);
          v29 = v88;
          (*v89)(v71, v70, v17);
        }

        else
        {
          (*v97)(v102, v17);
          sub_22BAD2FB8(v8, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        }

        v34 = v98;
        v45 = v96;
        goto LABEL_10;
      }
    }

LABEL_10:
    ++v46;
    v47 += 2;
    if (v45 == v46)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

uint64_t sub_22BAD4EF0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v42 - v6;
  v8 = sub_22BB1E55C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])(v8);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (MEMORY[0x28223BE20])(v11);
  v50 = &v42 - v14;
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - v15;
  v61 = sub_22BB1E93C();
  v16 = *(v61 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22BB1E96C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a2;
  result = sub_22BB1E51C();
  v25 = *(a1 + 16);
  if (v25)
  {
    v27 = *(v20 + 16);
    v26 = v20 + 16;
    v28 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v56 = *(v26 + 56);
    v57 = v27;
    v54 = (v16 + 8);
    v55 = (v16 + 88);
    v53 = *MEMORY[0x277D74668];
    v47 = (v9 + 8);
    v48 = (v9 + 16);
    v58 = v26;
    v59 = v19;
    v52 = (v26 - 8);
    v46 = (v9 + 32);
    v44 = (v9 + 48);
    v49 = v7;
    v27(v23, v28, v19);
    while (1)
    {
      v34 = v60;
      sub_22BB1E94C();
      v35 = v61;
      v36 = (*v55)(v34, v61);
      (*v54)(v34, v35);
      if (v36 == v53)
      {
        sub_22BB1E71C();
        if ((*v44)(v7, 1, v8) == 1)
        {
          (*v52)(v23, v19);
          result = sub_22BAC81E8(v7, &qword_27D8DF5A8, &qword_22BB22BA0);
        }

        else
        {
          v43 = *v46;
          v37 = v42;
          v43(v42, v7, v8);
          v39 = v50;
          v38 = v51;
          (*v48)(v50, v51, v8);
          sub_22BB1E54C();
          v40 = *v47;
          (*v47)(v37, v8);
          (*v52)(v23, v59);
          v40(v38, v8);
          v41 = v38;
          v7 = v49;
          result = v43(v41, v39, v8);
          v19 = v59;
        }
      }

      else
      {
        v29 = v50;
        v30 = v51;
        (*v48)(v50, v51, v8);
        sub_22BB1E73C();
        v31 = v45;
        sub_22BAD4EF0();
        v19 = v59;

        sub_22BB1E54C();
        v32 = *v47;
        (*v47)(v31, v8);
        (*v52)(v23, v19);
        v32(v30, v8);
        v33 = v30;
        v7 = v49;
        result = (*v46)(v33, v29, v8);
      }

      v28 += v56;
      if (!--v25)
      {
        break;
      }

      v57(v23, v28, v19);
    }
  }

  return result;
}

uint64_t sub_22BAD5458(uint64_t a1, uint64_t a2)
{
  v183 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5B0, &qword_22BB22BA8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v160 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5B8, &qword_22BB22BB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v160 - v12);
  v163 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v207 = *(v163 - 8);
  v14 = *(v207 + 64);
  MEMORY[0x28223BE20](v163);
  v208 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v205 = &v160 - v17;
  MEMORY[0x28223BE20](v18);
  v168 = &v160 - v19;
  MEMORY[0x28223BE20](v20);
  v162 = &v160 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v165 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v179 = &v160 - v26;
  MEMORY[0x28223BE20](v27);
  v197 = &v160 - v28;
  MEMORY[0x28223BE20](v29);
  v169 = &v160 - v30;
  MEMORY[0x28223BE20](v31);
  v175 = &v160 - v32;
  v193 = sub_22BB1E55C();
  v33 = *(v193 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v193);
  v167 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v166 = &v160 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v160 - v39;
  v196 = sub_22BB1E93C();
  v41 = *(v196 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v196);
  v173 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v184 = &v160 - v45;
  v180 = sub_22BB1E91C();
  v46 = *(v180 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v180);
  v182 = &v160 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_22BB1E96C();
  v49 = *(v198 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v198);
  v199 = &v160 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_22BAD694C(MEMORY[0x277D84F90]);
  v187 = *(a1 + 16);
  if (!v187)
  {
    return v52;
  }

  v53 = v9;
  v54 = 0;
  v56 = *(v49 + 16);
  v55 = v49 + 16;
  v191 = a1 + ((*(v55 + 64) + 32) & ~*(v55 + 64));
  v192 = v56;
  v195 = (v41 + 88);
  v181 = (v41 + 8);
  v190 = (v33 + 48);
  v189 = *MEMORY[0x277D74670];
  v170 = (v33 + 32);
  v160 = (v33 + 56);
  v172 = *MEMORY[0x277D74668];
  v186 = (v55 - 8);
  v178 = (v41 + 96);
  v177 = (v46 + 32);
  v161 = (v33 + 16);
  v164 = (v33 + 8);
  v176 = (v46 + 8);
  v188 = *(v55 + 56);
  v203 = v13;
  v204 = v53;
  v171 = v40;
  v57 = v184;
  v58 = v182;
  v174 = v6;
  v185 = v55;
  v56(v199, v191, v198);
  while (1)
  {
    sub_22BB1E94C();
    v60 = v196;
    v61 = *v195;
    v62 = (*v195)(v57, v196);
    if (v62 != v189)
    {
      break;
    }

    (*v178)(v57, v60);
    v63 = v180;
    (*v177)(v58, v57, v180);
    v210 = sub_22BB1E8AC();
    v65 = v190;
    if (v64)
    {
      v66 = v64;
      v206 = v52;
      v67 = v175;
      sub_22BAD6B34(v183, v175, &qword_27D8DF5A8, &qword_22BB22BA0);
      v68 = *v65;
      v69 = v193;
      if ((*v65)(v67, 1, v193) == 1)
      {

        (*v176)(v58, v63);
        v59 = v199;
        (*v186)(v199, v198);
        sub_22BAC81E8(v67, &qword_27D8DF5A8, &qword_22BB22BA0);
        v6 = v174;
        v57 = v184;
        v52 = v206;
      }

      else
      {
        v194 = v54;
        v81 = v171;
        v82 = *v170;
        (*v170)(v171, v67, v69);
        v83 = v169;
        sub_22BB1E71C();
        v84 = v83;
        if (v68(v83, 1, v69) == 1)
        {

          (*v164)(v81, v69);
          v58 = v182;
          (*v176)(v182, v63);
          v59 = v199;
          (*v186)(v199, v198);
          sub_22BAC81E8(v84, &qword_27D8DF5A8, &qword_22BB22BA0);
          v6 = v174;
          v57 = v184;
          v54 = v194;
          v52 = v206;
        }

        else
        {
          v82(v166, v83, v69);
          v85 = *v161;
          v86 = v167;
          (*v161)(v167, v81, v69);
          sub_22BB1E50C();
          v87 = sub_22BB1E89C();
          v88 = v162;
          v85(v162, v86, v69);
          *(v88 + *(v163 + 20)) = v87 & 1;
          sub_22BABE43C(v88, v168, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
          v89 = v206;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v211 = v89;
          v91 = v210;
          v92 = sub_22BAD6B9C(v210, v66);
          v94 = v89[2];
          v95 = (v93 & 1) == 0;
          v96 = __OFADD__(v94, v95);
          v97 = v94 + v95;
          if (v96)
          {
            goto LABEL_65;
          }

          v98 = v93;
          if (v89[3] >= v97)
          {
            v6 = v174;
            v100 = v171;
            v101 = v180;
            v54 = v194;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v158 = v92;
              sub_22BAEBC50();
              v92 = v158;
              v100 = v171;
            }
          }

          else
          {
            sub_22BAD6CCC(v97, isUniquelyReferenced_nonNull_native);
            v92 = sub_22BAD6B9C(v91, v66);
            v6 = v174;
            v100 = v171;
            v101 = v180;
            v54 = v194;
            if ((v98 & 1) != (v99 & 1))
            {
              goto LABEL_67;
            }
          }

          v58 = v182;
          if (v98)
          {
            v150 = v92;

            v52 = v211;
            sub_22BB10E4C(v168, v211[7] + *(v207 + 72) * v150);
            v151 = *v164;
            v152 = v193;
            (*v164)(v167, v193);
            v151(v166, v152);
            v151(v100, v152);
            (*v176)(v58, v101);
            v59 = v199;
            (*v186)(v199, v198);
          }

          else
          {
            v52 = v211;
            v211[(v92 >> 6) + 8] |= 1 << v92;
            v153 = (v52[6] + 16 * v92);
            *v153 = v91;
            v153[1] = v66;
            sub_22BABE43C(v168, v52[7] + *(v207 + 72) * v92, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
            v154 = *v164;
            v155 = v193;
            (*v164)(v167, v193);
            v154(v166, v155);
            v154(v100, v155);
            (*v176)(v58, v101);
            v59 = v199;
            (*v186)(v199, v198);
            v156 = v52[2];
            v96 = __OFADD__(v156, 1);
            v157 = v156 + 1;
            if (v96)
            {
              goto LABEL_66;
            }

            v52[2] = v157;
          }

          v57 = v184;
        }
      }
    }

    else
    {
      (*v176)(v58, v63);
      v59 = v199;
      (*v186)(v199, v198);
    }

LABEL_4:
    if (++v54 == v187)
    {
      return v52;
    }

    v192(v59, v191 + v188 * v54, v198);
  }

  v70 = v57;
  v71 = *v181;
  (*v181)(v70, v60);
  v72 = v197;
  v206 = v52;
  sub_22BAD6B34(v183, v197, &qword_27D8DF5A8, &qword_22BB22BA0);
  v73 = v179;
  sub_22BAD6B34(v72, v179, &qword_27D8DF5A8, &qword_22BB22BA0);
  v74 = *v190;
  LODWORD(v72) = (*v190)(v73, 1, v193);
  v75 = v206;
  sub_22BAC81E8(v73, &qword_27D8DF5A8, &qword_22BB22BA0);
  if (v72 == 1)
  {
    v76 = v173;
    sub_22BB1E94C();
    v77 = v196;
    v78 = v61(v76, v196);
    v71(v76, v77);
    if (v78 == v172)
    {
      v79 = v165;
      sub_22BB1E71C();
      v80 = v193;
      if (v74(v79, 1, v193) == 1)
      {
        sub_22BAC81E8(v79, &qword_27D8DF5A8, &qword_22BB22BA0);
      }

      else
      {
        v102 = v197;
        sub_22BAC81E8(v197, &qword_27D8DF5A8, &qword_22BB22BA0);
        (*v170)(v102, v79, v80);
        (*v160)(v102, 0, 1, v80);
      }
    }
  }

  v194 = v54;
  sub_22BB1E73C();
  v103 = sub_22BAD5458();

  v104 = swift_isUniquelyReferenced_nonNull_native();
  v211 = v75;
  v105 = *(v103 + 64);
  v201 = v103 + 64;
  v202 = v103;
  v106 = 1 << *(v103 + 32);
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  else
  {
    v107 = -1;
  }

  v108 = v107 & v105;
  v200 = (v106 + 63) >> 6;

  v109 = 0;
  v110 = v204;
  v52 = v206;
  v111 = v6;
  while (1)
  {
    LODWORD(v210) = v104;
    if (!v108)
    {
      break;
    }

    v206 = v52;
    v114 = v110;
    v115 = v109;
LABEL_37:
    v117 = __clz(__rbit64(v108));
    v108 &= v108 - 1;
    v118 = v117 | (v115 << 6);
    v119 = (*(v202 + 48) + 16 * v118);
    v121 = *v119;
    v120 = v119[1];
    v122 = v205;
    sub_22BABE3D4(*(v202 + 56) + *(v207 + 72) * v118, v205, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
    v124 = *(v123 + 48);
    *v114 = v121;
    v110 = v114;
    v114[1] = v120;
    sub_22BABE43C(v122, v114 + v124, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    (*(*(v123 - 8) + 56))(v114, 0, 1, v123);

    v209 = v115;
    v52 = v206;
LABEL_38:
    sub_22BAD7044(v110, v111, &qword_27D8DF5B0, &qword_22BB22BA8);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
    if ((*(*(v125 - 8) + 48))(v111, 1, v125) == 1)
    {
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
      v127 = v203;
      (*(*(v126 - 8) + 56))(v203, 1, 1, v126);
    }

    else
    {
      v128 = *(v125 + 48);
      v129 = v52;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
      v132 = *v111;
      v131 = v111[1];
      v133 = v203;
      sub_22BABE3D4(v111 + v128, v203 + *(v130 + 48), type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      *v133 = v132;
      v133[1] = v131;
      v127 = v133;

      sub_22BAC81E8(v111, &unk_27D8DF5C0, &qword_22BB22BB8);
      v52 = v129;
      (*(*(v130 - 8) + 56))(v133, 0, 1, v130);
    }

    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
    if ((*(*(v134 - 8) + 48))(v127, 1, v134) == 1)
    {
      v6 = v111;

      sub_22BAC81E8(v197, &qword_27D8DF5A8, &qword_22BB22BA0);
      v59 = v199;
      (*v186)(v199, v198);
      v57 = v184;
      v58 = v182;
      v54 = v194;
      goto LABEL_4;
    }

    v135 = v111;
    v137 = *v127;
    v136 = v127[1];
    sub_22BABE43C(v127 + *(v134 + 48), v208, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v139 = sub_22BAD6B9C(v137, v136);
    v140 = v52[2];
    v141 = (v138 & 1) == 0;
    v142 = v140 + v141;
    if (__OFADD__(v140, v141))
    {
      goto LABEL_63;
    }

    v143 = v138;
    if (v52[3] >= v142)
    {
      if (v210)
      {
        v52 = v211;
        if (v138)
        {
          goto LABEL_26;
        }
      }

      else
      {
        sub_22BAEBC50();
        v52 = v211;
        if (v143)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_22BAD6CCC(v142, v210 & 1);
      v144 = sub_22BAD6B9C(v137, v136);
      if ((v143 & 1) != (v145 & 1))
      {
        goto LABEL_67;
      }

      v139 = v144;
      v52 = v211;
      if (v143)
      {
LABEL_26:
        v112 = *(v207 + 72) * v139;
        v113 = v205;
        sub_22BABE3D4(v52[7] + v112, v205, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
        sub_22BAD2FB8(v208, type metadata accessor for FragmentCollator.WindowOcclusionInfo);

        sub_22BB10E4C(v113, v52[7] + v112);
        goto LABEL_27;
      }
    }

    v52[(v139 >> 6) + 8] |= 1 << v139;
    v146 = (v52[6] + 16 * v139);
    *v146 = v137;
    v146[1] = v136;
    sub_22BABE43C(v208, v52[7] + *(v207 + 72) * v139, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
    v147 = v52[2];
    v96 = __OFADD__(v147, 1);
    v148 = v147 + 1;
    if (v96)
    {
      goto LABEL_64;
    }

    v52[2] = v148;
LABEL_27:
    v104 = 1;
    v109 = v209;
    v111 = v135;
    v110 = v204;
  }

  if (v200 <= v109 + 1)
  {
    v116 = v109 + 1;
  }

  else
  {
    v116 = v200;
  }

  while (1)
  {
    v115 = v109 + 1;
    if (__OFADD__(v109, 1))
    {
      break;
    }

    if (v115 >= v200)
    {
      v209 = v116 - 1;
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5C0, &qword_22BB22BB8);
      (*(*(v149 - 8) + 56))(v110, 1, 1, v149);
      v108 = 0;
      goto LABEL_38;
    }

    v108 = *(v201 + 8 * v115);
    ++v109;
    if (v108)
    {
      v206 = v52;
      v114 = v110;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

unint64_t sub_22BAD694C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C8, &qword_22BB22BC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF2C8, &qword_22BB22BC0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22BAD6B9C(*v6, v13);
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
      v19 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
      result = sub_22BAF8248(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
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

uint64_t sub_22BAD6B34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22BAD6B9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22BB1FDDC();
  sub_22BB1F6EC();
  v6 = sub_22BB1FE0C();

  return sub_22BAD6C14(a1, a2, v6);
}

unint64_t sub_22BAD6C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22BB1FD9C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_22BAD6CCC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for FragmentCollator.WindowOcclusionInfo(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF010, &qword_22BB21210);
  v44 = a2;
  result = sub_22BB1FC1C();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_22BAC3614(v31, v45, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      else
      {
        sub_22BABE90C(v31, v45, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      }

      v32 = *(v12 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_22BAC3614(v45, *(v12 + 56) + v30 * v20, type metadata accessor for FragmentCollator.WindowOcclusionInfo);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_22BAD7044(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_22BAD70AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF2C0, &qword_22BB21F88);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
    v8 = sub_22BB1FC2C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22BAD6B34(v10, v6, &qword_27D8DF2C0, &qword_22BB21F88);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22BAD6B9C(*v6, v13);
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
      v19 = sub_22BB1E55C();
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

uint64_t sub_22BAD7298(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF608, &unk_22BB22BF0);
    v1 = sub_22BB1FC2C();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    v30 = &off_283F6BCA0;
    v29 = &type metadata for EmbeddedWindowVisibilityProvider.EmbeddedElementOverlayState;
    *&v28 = v16;
    sub_22BAD7560(&v28, v26);
    sub_22BAD7560(v26, &v27);
    v17 = *(v1 + 40);
    sub_22BB1FDDC();
    if (v14 == 1)
    {
      MEMORY[0x23189D810](0);
    }

    else
    {
      MEMORY[0x23189D810](1);
      if (v14)
      {
        sub_22BB1FDFC();

        sub_22BABFC10(v15, v14);
        sub_22BB1F6EC();
        goto LABEL_21;
      }

      sub_22BB1FDFC();
    }

LABEL_21:
    result = sub_22BB1FE0C();
    v18 = -1 << *(v1 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_32;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = (*(v1 + 48) + 16 * v9);
    *v10 = v15;
    v10[1] = v14;
    result = sub_22BAD7560(&v27, *(v1 + 56) + 40 * v9);
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22BAD7560(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_22BAD7598()
{
  result = qword_2814240C8;
  if (!qword_2814240C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814240C8);
  }

  return result;
}

uint64_t sub_22BAD75F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_22BAD7618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_22BB1E96C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v37 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v30 - v16;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = *(type metadata accessor for FragmentCollator.RootElement(0) - 8);
    v19 = (v12 + 48);
    v32 = v12;
    v20 = (v12 + 32);
    v21 = (a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80)));
    v36 = *(v18 + 72);
    v22 = MEMORY[0x277D84F90];
    v33 = a3;
    v34 = a4;
    v31 = v19;
    do
    {
      sub_22BAD7984(v21, a3, v10);
      if ((*v19)(v10, 1, v11) == 1)
      {
        sub_22BAC81E8(v10, &unk_27D8DF5D0, qword_22BB22830);
      }

      else
      {
        v23 = *v20;
        v24 = v35;
        (*v20)(v35, v10, v11);
        v23(v37, v24, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22BAD34A8(0, *(v22 + 2) + 1, 1, v22);
        }

        v26 = *(v22 + 2);
        v25 = *(v22 + 3);
        if (v26 >= v25 >> 1)
        {
          v22 = sub_22BAD34A8(v25 > 1, v26 + 1, 1, v22);
        }

        *(v22 + 2) = v26 + 1;
        v23(&v22[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26], v37, v11);
        a3 = v33;
        v19 = v31;
      }

      v21 = (v21 + v36);
      --v17;
    }

    while (v17);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v27 = v30;
  swift_beginAccess();
  v28 = *(v27 + 16);
  *(v27 + 16) = v22;
}

uint64_t sub_22BAD7984@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v19 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v19 - v12;
  v14 = *(type metadata accessor for FragmentCollator.RootElement(0) + 20);
  v15 = type metadata accessor for FragmentCollator.ElementVisibilityContext(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = sub_22BB1EADC();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = a1[1];
  v19[0] = *a1;
  v19[1] = v17;
  v19[2] = a1[2];
  sub_22BAD7C38(a1 + v14, a2, 0, 2, v13, v9, v19, a3);
  sub_22BAC81E8(v9, &qword_27D8DEEA0, &qword_22BB20A30);
  return sub_22BAC81E8(v13, &qword_27D8DF5E0, &qword_22BB22BC8);
}

uint64_t __swift_store_extra_inhabitant_index_44Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22BB1E55C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22BAD7C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, unsigned int (**a6)(uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v400 = a6;
  v391 = a5;
  v399 = a4;
  v410 = a3;
  v411 = a2;
  v392 = a8;
  v10 = *a7;
  v359 = *(a7 + 16);
  v358 = v10;
  tx = *(a7 + 32);
  ty = *(a7 + 40);
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E8, &qword_22BB22BD0);
  v13 = *(*(v339 - 8) + 64);
  MEMORY[0x28223BE20](v339);
  v340 = &v332 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v373 = *(v15 - 8);
  v16 = *(v373 + 64);
  MEMORY[0x28223BE20](v15);
  v404 = &v332 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5D0, qword_22BB22830);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v403 = &v332 - v20;
  v366 = sub_22BB1E9DC();
  v365 = *(v366 - 8);
  v21 = *(v365 + 64);
  MEMORY[0x28223BE20](v366);
  v364 = &v332 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_22BB1EA5C();
  v360 = *(v361 - 8);
  v23 = *(v360 + 64);
  MEMORY[0x28223BE20](v361);
  v353 = &v332 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v377 = &v332 - v26;
  v393 = sub_22BB1E9AC();
  v388 = *(v393 - 8);
  v27 = *(v388 + 64);
  MEMORY[0x28223BE20](v393);
  v336 = &v332 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v387 = &v332 - v30;
  v383 = sub_22BB1EADC();
  v378 = *(v383 - 8);
  v31 = *(v378 + 64);
  MEMORY[0x28223BE20](v383);
  v338 = &v332 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v350 = &v332 - v34;
  MEMORY[0x28223BE20](v35);
  v333 = &v332 - v36;
  MEMORY[0x28223BE20](v37);
  v345 = &v332 - v38;
  v375 = sub_22BB1E91C();
  v374 = *(v375 - 8);
  v39 = *(v374 + 64);
  MEMORY[0x28223BE20](v375);
  v384 = &v332 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF5F0, &qword_22BB22BD8);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v342 = &v332 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v354 = &v332 - v45;
  MEMORY[0x28223BE20](v46);
  v357 = &v332 - v47;
  v363 = sub_22BB1E68C();
  v362 = *(v363 - 8);
  v48 = *(v362 + 64);
  MEMORY[0x28223BE20](v363);
  v337 = &v332 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v344 = &v332 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF588, &unk_22BB22BE0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v355 = &v332 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v372 = &v332 - v56;
  v380 = sub_22BB1F2AC();
  v379 = *(v380 - 8);
  v57 = *(v379 + 64);
  MEMORY[0x28223BE20](v380);
  v367 = &v332 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v385 = &v332 - v60;
  v369 = sub_22BB1E82C();
  v371 = *(v369 - 8);
  v61 = *(v371 + 64);
  MEMORY[0x28223BE20](v369);
  v370 = &v332 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v368 = &v332 - v64;
  v397 = sub_22BB1E93C();
  v398 = *(v397 - 8);
  v65 = *(v398 + 64);
  MEMORY[0x28223BE20](v397);
  v386 = &v332 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v69 = &v332 - v68;
  MEMORY[0x28223BE20](v70);
  v381 = &v332 - v71;
  MEMORY[0x28223BE20](v72);
  v74 = &v332 - v73;
  v390 = sub_22BB1E88C();
  v389 = *(v390 - 8);
  v75 = v389[8];
  MEMORY[0x28223BE20](v390);
  v407 = (&v332 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v348 = *(v77 - 8);
  v78 = *(v348 + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v335 = &v332 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v341 = &v332 - v80;
  MEMORY[0x28223BE20](v81);
  v349 = &v332 - v82;
  MEMORY[0x28223BE20](v83);
  v405 = &v332 - v84;
  MEMORY[0x28223BE20](v85);
  v347 = &v332 - v86;
  MEMORY[0x28223BE20](v87);
  v351 = &v332 - v88;
  MEMORY[0x28223BE20](v89);
  v352 = &v332 - v90;
  MEMORY[0x28223BE20](v91);
  v376 = &v332 - v92;
  MEMORY[0x28223BE20](v93);
  v334 = &v332 - v94;
  MEMORY[0x28223BE20](v95);
  v343 = &v332 - v96;
  MEMORY[0x28223BE20](v97);
  v356 = &v332 - v98;
  MEMORY[0x28223BE20](v99);
  v406 = &v332 - v100;
  v101 = type metadata accessor for FragmentCollator.ElementVisibilityResult(0);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101 - 8);
  v104 = &v332 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v105);
  v107 = &v332 - v106;
  v108 = sub_22BB1E96C();
  v109 = *(*(v108 - 8) + 64);
  MEMORY[0x28223BE20](v108);
  v402 = &v332 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111);
  v396 = &v332 - v112;
  v114 = MEMORY[0x28223BE20](v113);
  v116 = &v332 - v115;
  v394 = v117;
  v118 = *(v117 + 16);
  v412 = v119;
  v118(&v332 - v115, a1, v114);
  sub_22BB1E6CC();
  IsNull = CGRectIsNull(v417);
  sub_22BB1E6CC();
  v122 = v121;
  v124 = v123;
  v125 = v15;
  v395 = swift_allocBox();
  v126 = v391;
  v408 = v127;
  sub_22BAD6B34(v391, v127, &qword_27D8DF5E0, &qword_22BB22BC8);
  v401 = v116;
  v346 = IsNull;
  v382 = a7;
  if (!IsNull)
  {
    sub_22BB1E77C();
    sub_22BADADFC(v116, v411, v126, v107);
    sub_22BABE43C(v107, v104, type metadata accessor for FragmentCollator.ElementVisibilityResult);
    if ((*(v373 + 48))(v104, 1, v125) == 1)
    {
      LODWORD(v391) = 0;
      goto LABEL_6;
    }

    sub_22BADBC60(v104, v408);
  }

  LODWORD(v391) = 1;
LABEL_6:
  v128 = v397;
  v129 = v410;
  v130 = v400;
  v131 = v399;
  v132 = swift_allocObject();
  *(v132 + 16) = v129;
  v399 = (v132 + 16);
  v410 = v132;
  *(v132 + 24) = v131;
  sub_22BAD6B34(v130, v406, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BADBCD0(v129, v131);
  sub_22BB1E94C();
  v133 = v398;
  v134 = v398 + 88;
  v135 = *(v398 + 88);
  v136 = v135(v74, v128);
  v137 = v136 == *MEMORY[0x277D74668];
  v400 = v135;
  if (v137)
  {
    LODWORD(v375) = v136;
    v384 = v78;
    v373 = v134;
    (*(v133 + 96))(v74, v128);
    (v389[4])(v407, v74, v390);
    v138 = v368;
    sub_22BB1E83C();
    v139 = v371;
    v140 = v370;
    v141 = v369;
    (*(v371 + 104))(v370, *MEMORY[0x277D74600], v369);
    sub_22BADBCE0(&qword_281425108, MEMORY[0x277D74610]);
    v142 = sub_22BB1F65C();
    v143 = *(v139 + 8);
    v143(v140, v141);
    v143(v138, v141);
    v144 = v133;
    if (v142)
    {
      v145 = 0;
      v146 = 1;
      v147 = v380;
      v148 = v385;
    }

    else
    {
      v161 = sub_22BB1E7FC();
      if (v162)
      {
        v145 = v161;
      }

      else
      {
        v145 = 0;
      }

      if (v162 <= 1)
      {
        v146 = 1;
      }

      else
      {
        v146 = v162;
      }

      v147 = v380;
      v148 = v385;
    }

    v163 = v410;
    v164 = *(v410 + 16);
    v165 = *(v410 + 24);
    *(v410 + 16) = v145;
    *(v163 + 24) = v146;
    sub_22BADBD28(v164, v165);
    v166 = v372;
    sub_22BB1E84C();
    v167 = v379;
    v168 = (*(v379 + 48))(v166, 1, v147);
    v169 = v401;
    v78 = v384;
    if (v168 == 1)
    {
      sub_22BAC81E8(v166, &qword_27D8DF588, &unk_22BB22BE0);
      v385 = 0;
    }

    else
    {
      (*(v167 + 32))(v148, v166, v147);
      v173 = v167;
      v174 = v411 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter;
      v175 = type metadata accessor for Snapshotter();
      v176 = *(v174 + *(v175 + 24));
      MEMORY[0x28223BE20](v175);
      *(&v332 - 2) = v148;
      os_unfair_lock_lock((v176 + 24));
      v177 = v148;
      v178 = v357;
      sub_22BB1414C((v176 + 16), v357);
      v385 = 0;
      os_unfair_lock_unlock((v176 + 24));
      v179 = v362;
      v180 = v363;
      if ((*(v362 + 48))(v178, 1, v363) == 1)
      {
        (*(v173 + 8))(v177, v147);
        sub_22BAC81E8(v178, &unk_27D8DF5F0, &qword_22BB22BD8);
      }

      else
      {
        v181 = v344;
        (*(v179 + 32))(v344, v178, v180);
        v182 = v354;
        (*(v179 + 16))(v354, v181, v180);
        (*(v179 + 56))(v182, 0, 1, v180);
        sub_22BB1E81C();
        (*(v179 + 8))(v181, v180);
        (*(v173 + 8))(v177, v147);
      }

      v128 = v397;
      v144 = v398;
    }

    v183 = v389;
    v184 = v381;
    v185 = v407;
    v186 = v390;
    (v389[2])(v381, v407, v390);
    (*(v144 + 104))(v184, v375, v128);
    sub_22BB1E95C();
    (v183[1])(v185, v186);
    v171 = v386;
    v170 = v395;
    goto LABEL_51;
  }

  v149 = *(v133 + 8);
  v149(v74, v128);
  sub_22BB1E94C();
  v150 = v135(v69, v128);
  v151 = v411;
  if (v150 != *MEMORY[0x277D74670])
  {
    v149(v69, v128);
    v385 = 0;
    v170 = v395;
    v169 = v401;
    v144 = v133;
    v171 = v386;
    v172 = v151;
    goto LABEL_52;
  }

  LODWORD(v407) = v150;
  v373 = v134;
  (*(v133 + 96))(v69, v128);
  (*(v374 + 32))(v384, v69, v375);
  v152 = v356;
  sub_22BAD6B34(v406, v356, &qword_27D8DEEA0, &qword_22BB20A30);
  v153 = v378;
  v154 = *(v378 + 48);
  v155 = v154(v152, 1, v383);
  sub_22BAC81E8(v152, &qword_27D8DEEA0, &qword_22BB20A30);
  v156 = v401;
  v157 = v367;
  v158 = v151;
  if (v155 == 1)
  {
    v159 = v343;
    sub_22BB1E8CC();
    v160 = v383;
    if (v154(v159, 1, v383) == 1)
    {
      sub_22BAC81E8(v159, &qword_27D8DEEA0, &qword_22BB20A30);
    }

    else
    {
      v187 = v151;
      v188 = *(v153 + 32);
      v188(v345, v159, v160);
      v189 = sub_22BB1EA9C();
      if (v190)
      {
        v191 = *(v151 + 24);
        if (*(v191 + 16))
        {
          v192 = sub_22BAD6B9C(v189, v190);
          v194 = v193;
          v157 = v367;

          if ((v194 & 1) != 0 && *(*(v191 + 56) + v192) == 1)
          {
            (*(v378 + 8))(v345, v383);
            (*(v374 + 8))(v384, v375);
            v195 = v394;
            v196 = v412;
            (*(v394 + 8))(v401, v412);
            (*(v195 + 56))(v392, 1, 1, v196);
            goto LABEL_73;
          }
        }

        else
        {
        }
      }

      v197 = v406;
      sub_22BAC81E8(v406, &qword_27D8DEEA0, &qword_22BB20A30);
      v198 = v383;
      v188(v197, v345, v383);
      (*(v378 + 56))(v197, 0, 1, v198);
      v158 = v187;
      v156 = v401;
    }
  }

  v199 = *(v410 + 24);
  v144 = v398;
  if (v199 != 2)
  {
    v200 = *(v158 + 96);
    if (*(v200 + 16))
    {
      v201 = *(v410 + 16);
      sub_22BABFC10(v201, *(v410 + 24));
      v202 = sub_22BACE4A8(v201, v199);
      v204 = v203;
      v205 = v201;
      v144 = v398;
      sub_22BADBD28(v205, v199);
      if (v204)
      {
        sub_22BB13D3C(*(v200 + 56) + 40 * v202, &t2);
        sub_22BAD7560(&t2, &t1);
        v206 = __swift_project_boxed_opaque_existential_1(&t1, *&t1.d);
        v207 = v384;
        v208 = sub_22BB1E8AC();
        sub_22BAEFC30(v208, v209, v406, *v206);
        v211 = v210;
        v212 = v210;

        v213 = v378;
        if (v212 < 2)
        {
LABEL_40:
          v214 = sub_22BB10EB0(v207, v211, v158);
          v144 = v398;
          v157 = v367;
          if (v214)
          {
            sub_22BB1E90C();
          }

          __swift_destroy_boxed_opaque_existential_0(&t1);
          goto LABEL_44;
        }

        v278 = v334;
        sub_22BB1E8CC();
        v279 = v383;
        if (v154(v278, 1, v383) == 1)
        {
          sub_22BAC81E8(v278, &qword_27D8DEEA0, &qword_22BB20A30);
        }

        else
        {
          v327 = v333;
          (*(v213 + 32))(v333, v278, v279);
          v328 = v279;
          v329 = sub_22BB1EA8C();
          (*(v213 + 8))(v327, v328);
          if (v329)
          {
            goto LABEL_40;
          }
        }

        (*(v374 + 8))(v207, v375);
        v330 = v394;
        v331 = v412;
        (*(v394 + 8))(v156, v412);
        (*(v330 + 56))(v392, 1, 1, v331);
        __swift_destroy_boxed_opaque_existential_0(&t1);
        goto LABEL_73;
      }
    }

    v157 = v367;
  }

LABEL_44:
  v215 = v355;
  sub_22BB1E8EC();
  v216 = v379;
  v217 = v380;
  if ((*(v379 + 48))(v215, 1, v380) == 1)
  {
    sub_22BAC81E8(v215, &qword_27D8DF588, &unk_22BB22BE0);
    v385 = 0;
    v170 = v395;
    v128 = v397;
    v171 = v386;
  }

  else
  {
    (*(v216 + 32))(v157, v215, v217);
    v218 = v216;
    v219 = v158 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent16FragmentCollatorP33_6BE94AAF2C91BC919D389B27AF47AB7925FragmentResolutionContext_snapshotter;
    v220 = type metadata accessor for Snapshotter();
    v221 = *(v219 + *(v220 + 24));
    MEMORY[0x28223BE20](v220);
    *(&v332 - 2) = v157;
    os_unfair_lock_lock((v221 + 24));
    v222 = v342;
    sub_22BB13D20((v221 + 16), v342);
    v223 = v222;
    v385 = 0;
    os_unfair_lock_unlock((v221 + 24));
    v224 = v362;
    v225 = v363;
    v226 = (*(v362 + 48))(v222, 1, v363);
    v227 = v395;
    v171 = v386;
    if (v226 == 1)
    {
      (*(v218 + 8))(v367, v217);
      sub_22BAC81E8(v223, &unk_27D8DF5F0, &qword_22BB22BD8);
    }

    else
    {
      v228 = v337;
      (*(v224 + 32))(v337, v223, v225);
      v229 = v354;
      (*(v224 + 16))(v354, v228, v225);
      (*(v224 + 56))(v229, 0, 1, v225);
      sub_22BB1E8BC();
      (*(v224 + 8))(v228, v225);
      (*(v218 + 8))(v367, v217);
    }

    v128 = v397;
    v144 = v398;
    v170 = v227;
  }

  v230 = v374;
  v231 = v381;
  v232 = v384;
  v233 = v375;
  (*(v374 + 16))(v381, v384, v375);
  (*(v144 + 104))(v231, v407, v128);
  v234 = v401;
  sub_22BB1E95C();
  v235 = v232;
  v169 = v234;
  (*(v230 + 8))(v235, v233);
LABEL_51:
  v172 = v411;
LABEL_52:
  sub_22BB1E94C();
  if ((v400)(v171, v128) != *MEMORY[0x277D74658])
  {
    v253 = (*(v144 + 8))(v171, v128);
    v254 = v391;
LABEL_60:
    MEMORY[0x28223BE20](v253);
    *(&v332 - 6) = v255;
    *(&v332 - 5) = v172;
    v256 = v408;
    *(&v332 - 4) = v399;
    *(&v332 - 3) = v256;
    v257 = v382;
    *(&v332 - 2) = v406;
    *(&v332 - 1) = v257;
    sub_22BB1E7DC();
    goto LABEL_61;
  }

  (*(v144 + 96))(v171, v128);
  (*(v388 + 32))(v387, v171, v393);
  v236 = *(v172 + 16);
  v237 = v364;
  sub_22BB1E99C();
  v238 = v170;
  if (!*(v236 + 16) || (v239 = sub_22BB19424(v237), (v240 & 1) == 0))
  {
    (*(v365 + 8))(v237, v366);
    v253 = (*(v388 + 8))(v387, v393);
    v254 = v391;
    goto LABEL_60;
  }

  v241 = v360;
  v242 = *(v236 + 56) + *(v360 + 72) * v239;
  v243 = v353;
  v244 = v361;
  (*(v360 + 16))(v353, v242, v361);
  (*(v365 + 8))(v237, v366);
  (*(v241 + 32))(v377, v243, v244);
  v245 = v352;
  sub_22BB1E97C();
  v246 = v378;
  v248 = (v378 + 48);
  v247 = *(v378 + 48);
  v249 = v383;
  if (v247(v245, 1, v383) == 1)
  {
    v250 = v376;
    sub_22BAD6B34(v406, v376, &qword_27D8DEEA0, &qword_22BB20A30);
    v251 = v247(v245, 1, v249);
    v252 = v351;
    if (v251 != 1)
    {
      sub_22BAC81E8(v245, &qword_27D8DEEA0, &qword_22BB20A30);
    }
  }

  else
  {
    v250 = v376;
    (*(v246 + 32))(v376, v245, v249);
    (*(v246 + 56))(v250, 0, 1, v249);
    v252 = v351;
  }

  sub_22BAD6B34(v250, v252, &qword_27D8DEEA0, &qword_22BB20A30);
  v386 = v247;
  if (v247(v252, 1, v249) == 1)
  {
    sub_22BAC81E8(v252, &qword_27D8DEEA0, &qword_22BB20A30);
  }

  else
  {
    v270 = v249;
    v271 = sub_22BB1EA9C();
    v273 = v272;
    (*(v246 + 8))(v252, v270);
    if (v273)
    {
      v274 = *(v172 + 24);
      if (*(v274 + 16))
      {
        v275 = sub_22BAD6B9C(v271, v273);
        v277 = v276;

        if ((v277 & 1) != 0 && *(*(v274 + 56) + v275) == 1)
        {
          sub_22BAC81E8(v376, &qword_27D8DEEA0, &qword_22BB20A30);
          (*(v360 + 8))(v377, v361);
          (*(v388 + 8))(v387, v393);
          v265 = v394;
          v266 = *(v394 + 8);
          v267 = v401;
          goto LABEL_72;
        }
      }

      else
      {
      }
    }
  }

  v384 = v248;
  v280 = v238;
  if (!v346)
  {
    CGAffineTransformMakeTranslation(&t1, v122, v124);
    *&t2.a = v358;
    *&t2.c = v359;
    t2.tx = tx;
    t2.ty = ty;
    CGAffineTransformConcat(&v414, &t1, &t2);
    v359 = *&v414.c;
    v358 = *&v414.a;
    tx = v414.tx;
    ty = v414.ty;
  }

  v281 = v376;
  v282 = v348;
  sub_22BB1E9BC();
  v414 = t2;
  *&v413.c = v359;
  *&v413.a = v358;
  v413.tx = tx;
  v413.ty = ty;
  CGAffineTransformConcat(&t1, &v414, &v413);
  v283 = v347;
  sub_22BAD6B34(v281, v347, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BAD6B34(v283, v405, &qword_27D8DEEA0, &qword_22BB20A30);
  v284 = (*(v282 + 80) + 48) & ~*(v282 + 80);
  v285 = swift_allocObject();
  v285[2] = v409;
  v285[3] = v172;
  v285[4] = v410;
  v285[5] = v280;
  sub_22BAD7044(v283, v285 + v284, &qword_27D8DEEA0, &qword_22BB20A30);
  v286 = (v285 + (&v78[v284 + 7] & 0xFFFFFFFFFFFFFFF8));
  v287 = *&t1.c;
  *v286 = *&t1.a;
  v286[1] = v287;
  v286[2] = *&t1.tx;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v288 = sub_22BB1E9FC();
  v289 = *(v288 + 16);
  v389 = v285;

  swift_beginAccess();
  swift_beginAccess();
  v382 = v288;
  if (v289)
  {
    v390 = (*(v394 + 80) + 32) & ~*(v394 + 80);
    v290 = v288 + v390;
    v400 = (v394 + 48);
    v399 = (v394 + 32);
    v407 = MEMORY[0x277D84F90];
    v291 = *(v394 + 72);
    do
    {
      v292 = *(v410 + 16);
      v293 = *(v410 + 24);
      v294 = v404;
      sub_22BAD6B34(v408, v404, &qword_27D8DF5E0, &qword_22BB22BC8);
      sub_22BADBCD0(v292, v293);
      v295 = v403;
      sub_22BAD7C38(v290, v411, v292, v293, v294, v405, &t1);
      sub_22BADBD28(v292, v293);
      sub_22BAC81E8(v294, &qword_27D8DF5E0, &qword_22BB22BC8);
      v296 = v412;
      if ((*v400)(v295, 1, v412) == 1)
      {
        sub_22BAC81E8(v295, &unk_27D8DF5D0, qword_22BB22830);
      }

      else
      {
        v297 = *v399;
        v298 = v396;
        (*v399)(v396, v295, v296);
        v297(v402, v298, v296);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v407 = sub_22BAD34A8(0, v407[2] + 1, 1, v407);
        }

        v300 = v407[2];
        v299 = v407[3];
        if (v300 >= v299 >> 1)
        {
          v407 = sub_22BAD34A8(v299 > 1, v300 + 1, 1, v407);
        }

        v301 = v407;
        v407[2] = v300 + 1;
        v297(&v301[v390 + v300 * v291], v402, v412);
      }

      v290 += v291;
      --v289;
    }

    while (v289);
  }

  else
  {
    v407 = MEMORY[0x277D84F90];
  }

  v302 = v401;
  sub_22BB1E7DC();

  v303 = sub_22BB1E6EC();
  *&v414.a = v407;
  v169 = v302;
  sub_22BAE1E48(v303);
  sub_22BB1E6FC();
  v304 = v376;
  v305 = v349;
  sub_22BAD6B34(v376, v349, &qword_27D8DEEA0, &qword_22BB20A30);
  v306 = v383;
  v307 = v386;
  if ((v386)(v305, 1, v383) == 1)
  {
    sub_22BAC81E8(v305, &qword_27D8DEEA0, &qword_22BB20A30);
    v172 = v411;
    v308 = v398;
LABEL_109:
    if (*(v172 + 32) == 1)
    {
      (*(v308 + 104))(v381, *MEMORY[0x277D74648], v397);
      sub_22BB1E95C();
    }

    sub_22BAC81E8(v405, &qword_27D8DEEA0, &qword_22BB20A30);
    sub_22BAC81E8(v304, &qword_27D8DEEA0, &qword_22BB20A30);
    (*(v360 + 8))(v377, v361);
    (*(v388 + 8))(v387, v393);
    goto LABEL_112;
  }

  v309 = v378;
  v310 = v350;
  v408 = *(v378 + 32);
  (v408)(v350, v305, v306);
  v311 = v341;
  v409 = *(v309 + 16);
  v409(v341, v310, v306);
  (*(v309 + 56))(v311, 0, 1, v306);
  v312 = *(v339 + 48);
  v313 = v340;
  sub_22BAD6B34(v311, v340, &qword_27D8DEEA0, &qword_22BB20A30);
  v314 = v383;
  sub_22BAD6B34(v406, v313 + v312, &qword_27D8DEEA0, &qword_22BB20A30);
  if (v307(v313, 1, v314) == 1)
  {
    sub_22BAC81E8(v311, &qword_27D8DEEA0, &qword_22BB20A30);
    v315 = v307(v313 + v312, 1, v314);
    v172 = v411;
    if (v315 == 1)
    {
      sub_22BAC81E8(v313, &qword_27D8DEEA0, &qword_22BB20A30);
      v316 = *(v378 + 8);
LABEL_108:
      v169 = v401;
      v316(v350, v314);
      v308 = v398;
      v304 = v376;
      goto LABEL_109;
    }

    goto LABEL_105;
  }

  v317 = v335;
  sub_22BAD6B34(v313, v335, &qword_27D8DEEA0, &qword_22BB20A30);
  v318 = v307(v313 + v312, 1, v314);
  v172 = v411;
  if (v318 == 1)
  {
    sub_22BAC81E8(v341, &qword_27D8DEEA0, &qword_22BB20A30);
    (*(v378 + 8))(v317, v314);
LABEL_105:
    sub_22BAC81E8(v313, &qword_27D8DF5E8, &qword_22BB22BD0);
    goto LABEL_106;
  }

  v325 = v317;
  v326 = v338;
  (v408)(v338, v313 + v312, v314);
  sub_22BADBCE0(&unk_2814250D0, MEMORY[0x277D74708]);
  LODWORD(v408) = sub_22BB1F65C();
  v316 = *(v378 + 8);
  v316(v326, v383);
  sub_22BAC81E8(v341, &qword_27D8DEEA0, &qword_22BB20A30);
  v316(v325, v383);
  v314 = v383;
  sub_22BAC81E8(v313, &qword_27D8DEEA0, &qword_22BB20A30);
  if (v408)
  {
    goto LABEL_108;
  }

LABEL_106:
  v319 = v350;
  v409(v338, v350, v314);
  v320 = v388;
  v321 = v387;
  (*(v388 + 16))(v336, v387, v393);
  v322 = v381;
  sub_22BB1E70C();
  (*(v398 + 104))(v322, *MEMORY[0x277D74638], v397);
  v323 = v314;
  v324 = v401;
  sub_22BB1E95C();

  sub_22BAC81E8(v405, &qword_27D8DEEA0, &qword_22BB20A30);
  (*(v378 + 8))(v319, v323);
  sub_22BAC81E8(v376, &qword_27D8DEEA0, &qword_22BB20A30);
  (*(v360 + 8))(v377, v361);
  (*(v320 + 8))(v321, v393);
  v169 = v324;
LABEL_112:
  v254 = v391;
LABEL_61:
  if (*(v172 + 88) == 1)
  {
    LOBYTE(v414.a) = sub_22BB1E6AC() & 1;
    if (!LOBYTE(v414.a))
    {
      v258 = sub_22BB1E7EC();
      if (v258)
      {
        MEMORY[0x28223BE20](v258);
        *(&v332 - 2) = &v414;
        sub_22BB1E78C();
      }
    }

    sub_22BB1E7BC();
  }

  if ((v254 & 1) == 0 && (sub_22BB1E7AC() & 1) == 0)
  {
    v265 = v394;
    v266 = *(v394 + 8);
    v267 = v169;
LABEL_72:
    v268 = v412;
    v266(v267, v412);
    (*(v265 + 56))(v392, 1, 1, v268);
    goto LABEL_73;
  }

  v259 = *(v172 + 40);

  v260 = sub_22BB1E6DC();
  sub_22BADBFDC(v261, v259);

  v260(&v414, 0);
  if (*(v172 + 32) == 1)
  {
    sub_22BB1E92C();
    (*(v394 + 8))(v169, v412);
  }

  else
  {
    v262 = v394;
    v263 = v392;
    v264 = v412;
    (*(v394 + 32))(v392, v169, v412);
    (*(v262 + 56))(v263, 0, 1, v264);
  }

LABEL_73:
  sub_22BAC81E8(v406, &qword_27D8DEEA0, &qword_22BB20A30);
}

uint64_t sub_22BADAB78()
{
  if ((*(v0 + 24) - 1) >= 2)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADABBC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 3);

  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = sub_22BB1EADC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 48, v2 | 7);
}

uint64_t __swift_get_extra_inhabitant_index_43Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1E55C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22BADADFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a1;
  v125 = a4;
  v6 = sub_22BB1E93C();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = *(v112 + 64);
  MEMORY[0x28223BE20](v6);
  v111 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1E91C();
  v115 = *(v9 - 8);
  v116 = v9;
  v10 = *(v115 + 64);
  MEMORY[0x28223BE20](v9);
  v110 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5A8, &qword_22BB22BA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v102 - v16;
  MEMORY[0x28223BE20](v17);
  v109 = &v102 - v18;
  MEMORY[0x28223BE20](v19);
  v118 = &v102 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v102 - v22;
  v126 = sub_22BB1E55C();
  v121 = *(v126 - 8);
  v24 = *(v121 + 64);
  MEMORY[0x28223BE20](v126);
  v104 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v106 = &v102 - v27;
  MEMORY[0x28223BE20](v28);
  v105 = &v102 - v29;
  MEMORY[0x28223BE20](v30);
  v119 = &v102 - v31;
  v32 = type metadata accessor for FragmentCollator.ElementVisibilityContext(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v114 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v120 = &v102 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v123 = *(v38 - 8);
  v124 = v38;
  v39 = *(v123 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = &v102 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v102 - v43;
  sub_22BAD6B34(a3, &v102 - v43, &qword_27D8DF5E0, &qword_22BB22BC8);
  v117 = a2;
  v45 = *(a2 + 48);
  if (!v45)
  {
    goto LABEL_36;
  }

  v108 = v44;
  sub_22BAD6B34(a3, v41, &qword_27D8DF5E0, &qword_22BB22BC8);
  if ((*(v33 + 48))(v41, 1, v32) == 1)
  {
    sub_22BAC81E8(v41, &qword_27D8DF5E0, &qword_22BB22BC8);
    v46 = v111;
    sub_22BB1E94C();
    v48 = v112;
    v47 = v113;
    if ((*(v112 + 88))(v46, v113) != *MEMORY[0x277D74670])
    {
      (*(v48 + 8))(v46, v47);
LABEL_35:
      v44 = v108;
      goto LABEL_36;
    }

    v102 = v32;
    (*(v48 + 96))(v46, v47);
    v49 = v110;
    (*(v115 + 32))(v110, v46, v116);
    v50 = v121;
    v51 = *(v121 + 56);
    v52 = v109;
    v53 = v126;
    v51(v109, 1, 1, v126);
    if (sub_22BB1E8FC())
    {
      v54 = v118;
      sub_22BB1E71C();
      sub_22BAC81E8(v52, &qword_27D8DF5A8, &qword_22BB22BA0);
      v55 = v52;
      v56 = v107;
LABEL_32:
      sub_22BAD7044(v54, v55, &qword_27D8DF5A8, &qword_22BB22BA0);
      goto LABEL_33;
    }

    v71 = sub_22BB1E8AC();
    v55 = v52;
    v56 = v107;
    if (!v72)
    {
LABEL_33:
      sub_22BAD6B34(v55, v56, &qword_27D8DF5A8, &qword_22BB22BA0);
      if ((*(v50 + 48))(v56, 1, v53) == 1)
      {
        sub_22BAC81E8(v56, &qword_27D8DF5A8, &qword_22BB22BA0);
        sub_22BAC81E8(v55, &qword_27D8DF5A8, &qword_22BB22BA0);
        (*(v115 + 8))(v49, v116);
        goto LABEL_35;
      }

      v90 = v102;
      v91 = *(v50 + 32);
      v92 = v56;
      v93 = v104;
      v91(v104, v92, v53);
      v94 = v118;
      (*(v50 + 16))(v118, v93, v53);
      v51(v94, 0, 1, v53);
      sub_22BB1E72C();
      if ((sub_22BB1E52C() & 1) == 0)
      {
        v95 = *(v117 + 56);
        v96 = *(v117 + 64);
        v97 = COERCE_DOUBLE(sub_22BB1E74C());
        if ((v98 & 1) != 0 || (v99 = v97, v95 <= v97))
        {
          sub_22BAC81E8(v109, &qword_27D8DF5A8, &qword_22BB22BA0);
          (*(v115 + 8))(v110, v116);
          v44 = v108;
          sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
        }

        else
        {
          sub_22BB1E6CC();
          Width = CGRectGetWidth(v129);
          sub_22BB1E6CC();
          Height = CGRectGetHeight(v130);
          sub_22BAC81E8(v109, &qword_27D8DF5A8, &qword_22BB22BA0);
          (*(v115 + 8))(v110, v116);
          v44 = v108;
          sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
          if (v96 > Width * Height * v99)
          {
            (*(v50 + 8))(v93, v53);
            goto LABEL_40;
          }
        }

        v91(v44, v93, v53);
        v44[*(v90 + 20)] = 0;
        (*(v33 + 56))(v44, 0, 1, v90);
        goto LABEL_36;
      }

      (*(v50 + 8))(v93, v53);
      sub_22BAC81E8(v109, &qword_27D8DF5A8, &qword_22BB22BA0);
      (*(v115 + 8))(v110, v116);
      sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
LABEL_40:
      v88 = 1;
      v87 = v125;
      return (*(v123 + 56))(v87, v88, 1, v124);
    }

    if (*(v45 + 16))
    {
      v73 = sub_22BAD6B9C(v71, v72);
      v75 = v74;

      if (v75)
      {
        v54 = v103;
        (*(v50 + 16))(v103, *(v45 + 56) + *(v50 + 72) * v73, v53);
        v55 = v109;
        sub_22BAC81E8(v109, &qword_27D8DF5A8, &qword_22BB22BA0);
        v76 = 0;
        v49 = v110;
LABEL_31:
        v51(v54, v76, 1, v53);
        goto LABEL_32;
      }

      v55 = v109;
      sub_22BAC81E8(v109, &qword_27D8DF5A8, &qword_22BB22BA0);
      v76 = 1;
      v49 = v110;
    }

    else
    {
      sub_22BAC81E8(v55, &qword_27D8DF5A8, &qword_22BB22BA0);

      v76 = 1;
    }

    v54 = v103;
    goto LABEL_31;
  }

  v102 = v32;
  v116 = v33;
  v57 = v41;
  v58 = v120;
  sub_22BABE43C(v57, v120, type metadata accessor for FragmentCollator.ElementVisibilityContext);
  v59 = v121;
  v60 = *(v121 + 16);
  v61 = v119;
  v62 = v126;
  v60(v119, v58, v126);
  sub_22BB1E71C();
  if ((*(v59 + 48))(v23, 1, v62) == 1)
  {
    sub_22BAC81E8(v23, &qword_27D8DF5A8, &qword_22BB22BA0);
  }

  else
  {
    v115 = *(v59 + 32);
    v64 = v105;
    (v115)(v105, v23, v126);
    v65 = v106;
    v60(v106, v58, v126);
    sub_22BB1E50C();
    v66 = *(v59 + 8);
    v66(v64, v126);
    v66(v61, v126);
    (v115)(v61, v65, v126);
    v62 = v126;
  }

  v63 = v114;
  v67 = v118;
  v60(v118, v61, v62);
  (*(v59 + 56))(v67, 0, 1, v62);
  sub_22BB1E72C();
  v68 = 0;
  v69 = v117;
  v70 = v102;
  if (*(v117 + 88) == 1)
  {
    if (*(v120 + *(v102 + 20)))
    {
      v68 = 1;
    }

    else
    {
      v68 = sub_22BB1E6AC();
    }
  }

  v77 = v119;
  v60(v63, v119, v62);
  *(v63 + *(v70 + 20)) = v68 & 1;
  if (sub_22BB1E52C())
  {
    (*(v121 + 8))(v77, v62);
    sub_22BAD2FB8(v120, type metadata accessor for FragmentCollator.ElementVisibilityContext);
    v44 = v108;
    sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
    v78 = v116;
    if ((v68 & 1) == 0)
    {
LABEL_20:
      sub_22BAD2FB8(v63, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      goto LABEL_40;
    }
  }

  else
  {
    v78 = v116;
    v79 = v120;
    if (v68 & 1) != 0 || (v80 = *(v69 + 72), v81 = *(v69 + 80), v82 = COERCE_DOUBLE(sub_22BB1E74C()), (v83) || (v84 = v82, v80 <= v82))
    {
      (*(v121 + 8))(v77, v62);
      sub_22BAD2FB8(v79, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      v44 = v108;
      sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
    }

    else
    {
      sub_22BB1E6CC();
      v85 = CGRectGetWidth(v127);
      sub_22BB1E6CC();
      v86 = CGRectGetHeight(v128);
      (*(v121 + 8))(v77, v62);
      sub_22BAD2FB8(v79, type metadata accessor for FragmentCollator.ElementVisibilityContext);
      v44 = v108;
      sub_22BAC81E8(v108, &qword_27D8DF5E0, &qword_22BB22BC8);
      if (v81 > v85 * v86 * v84)
      {
        goto LABEL_20;
      }
    }
  }

  sub_22BABE43C(v63, v44, type metadata accessor for FragmentCollator.ElementVisibilityContext);
  (*(v78 + 56))(v44, 0, 1, v70);
LABEL_36:
  v87 = v125;
  sub_22BAD7044(v44, v125, &qword_27D8DF5E0, &qword_22BB22BC8);
  v88 = 0;
  return (*(v123 + 56))(v87, v88, 1, v124);
}

uint64_t sub_22BADBC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BADBCD0(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_22BABFC10(a1, a2);
  }

  return a1;
}

uint64_t sub_22BADBCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22BADBD28(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_22BABFC24(a1, a2);
  }

  return a1;
}

uint64_t sub_22BADBD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a2;
  v24 = a7;
  v21 = a1;
  v22 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v21 - v16;
  v19 = *a4;
  v18 = a4[1];
  sub_22BAD6B34(a5, &v21 - v16, &qword_27D8DF5E0, &qword_22BB22BC8);
  sub_22BAD6B34(a6, v13, &qword_27D8DEEA0, &qword_22BB20A30);
  sub_22BADBCD0(v19, v18);
  sub_22BAD7C38(v21, v22, v19, v18, v17, v13, v24);
  sub_22BADBD28(v19, v18);
  sub_22BAC81E8(v13, &qword_27D8DEEA0, &qword_22BB20A30);
  return sub_22BAC81E8(v17, &qword_27D8DF5E0, &qword_22BB22BC8);
}

unint64_t sub_22BADBEF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 == 1)
      {
        if (a2 == 1)
        {
          return v6;
        }
      }

      else if (a2 != 1)
      {
        if (v12)
        {
          if (a2)
          {
            v13 = *v11 == a1 && v12 == a2;
            if (v13 || (sub_22BB1FD9C() & 1) != 0)
            {
              return v6;
            }
          }
        }

        else if (!a2)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_22BADBFDC(void **a1, uint64_t a2)
{
  v4 = *(sub_22BB1E96C() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_22BADC0C8(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_22BADC0DC(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22BADC0DC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_22BB1FD6C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BB1E96C();
        v8 = sub_22BB1F80C();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_22BB1E96C() - 8);
      v10[0] = (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
      v10[1] = v7;

      sub_22BB12098(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_22BB134E4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22BADC260(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ConnectionID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22BADC30C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ConnectionID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BADC3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22BADC46C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22BADC56C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_22BADC5E8()
{
  v1 = _s17AsyncProviderTaskVMa();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_22BB1F2EC();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + *(v2 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22BADC6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22BB1EADC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22BADC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22BB1EADC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BADC7E4()
{
  v1 = (_s17AsyncProviderTaskVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = v1[7];
  v8 = sub_22BB1F2EC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BADC8F4()
{
  v1 = (_s17AsyncProviderTaskVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = v1[7];
  v7 = sub_22BB1F2EC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22BADC9F4()
{
  v1 = _s17AsyncProviderTaskVMa();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_22BB1F2EC();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + *(v2 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_22BADCB8C@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22BADCB98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *a2 = v3;
  return result;
}

double sub_22BADCC20@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCC2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 8) = v3;
  return result;
}

double sub_22BADCCB4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCCC0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 16) = v3;
  return result;
}

double sub_22BADCD48@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

uint64_t sub_22BADCD54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_22BB1EAEC();
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_22BADCE48(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[19];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_22BB1EC9C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[20];
    goto LABEL_15;
  }

  v13 = sub_22BB1EC5C();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[21];
    goto LABEL_15;
  }

  v14 = sub_22BB1EC7C();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[22];
    goto LABEL_15;
  }

  v15 = sub_22BB1F0BC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[31];
    goto LABEL_15;
  }

  v17 = sub_22BB1EE9C();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[34];

  return v18(v19, a2, v17);
}

uint64_t sub_22BADD098(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF3A0, &qword_22BB220B8);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[19];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_22BB1EC9C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[20];
    goto LABEL_13;
  }

  v13 = sub_22BB1EC5C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[21];
    goto LABEL_13;
  }

  v14 = sub_22BB1EC7C();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[22];
    goto LABEL_13;
  }

  v15 = sub_22BB1F0BC();
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[31];
    goto LABEL_13;
  }

  v17 = sub_22BB1EE9C();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[34];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_22BADD2F8()
{
  v1 = _s17AsyncProviderTaskVMa();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v4;
  v8 = *(v1 + 20);
  v9 = sub_22BB1F2EC();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = *(v7 + *(v2 + 32) + 8);

  v11 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_22BADD420()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADD458()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22BADD4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1E9DC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22BB1EADC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22BADD5C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BB1E9DC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22BB1EADC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22BADD6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADD744(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF5E0, &qword_22BB22BC8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22BADD7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22BB1E96C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22BADD84C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22BB1E96C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22BADD8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22BB1F5BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22BB1F11C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_22BADD9DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22BB1F5BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22BB1F11C();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22BADDAE4()
{
  v1 = (_s17AsyncProviderTaskVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_22BB1F2AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = (type metadata accessor for Snapshotter() - 8);
  v11 = *(*v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v23 = *(*v10 + 64);
  v13 = v2 | v7 | v11;
  v14 = v0 + v3;
  v15 = v1[7];
  v16 = sub_22BB1F2EC();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);
  v17 = *(v14 + v1[8] + 8);

  (*(v6 + 8))(v0 + v8, v5);
  v18 = sub_22BB1F5BC();
  (*(*(v18 - 8) + 8))(v0 + v12, v18);
  v19 = v10[7];
  v20 = sub_22BB1F11C();
  (*(*(v20 - 8) + 8))(v0 + v12 + v19, v20);
  v21 = *(v0 + v12 + v10[8]);

  return MEMORY[0x2821FE8E8](v0, v12 + v23, v13 | 7);
}

uint64_t sub_22BADDD64()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22BB1E5AC();
}

uint64_t sub_22BADDDB0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22BB1E59C();
}

uint64_t sub_22BADDE08()
{
  sub_22BB1FDDC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_22BB1E59C();
  return sub_22BB1FE0C();
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_22BADDEA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADDEC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_22BADDF58(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADDF78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_22BADDFC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22BADDFE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_22BADE034(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22BADE080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_22BB1E58C();
}

uint64_t sub_22BADE154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BADE198()
{
  v1 = v0;
  v2 = sub_22BB1F45C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB1E5BC();
  v7 = sub_22BB1F6CC();

  mach_service = xpc_connection_create_mach_service((v7 + 32), 0, 1uLL);

  xpc_connection_set_non_launching();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_22BABD7B0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22BABD7B8;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  xpc_connection_set_event_handler(mach_service, v10);
  _Block_release(v10);
  sub_22BB1F42C();
  v11 = sub_22BB1F44C();
  v12 = sub_22BB1F89C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22BABB000, v11, v12, "Activating xpc listener", v13, 2u);
    MEMORY[0x23189DF20](v13, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  xpc_connection_activate(mach_service);
  v14 = *(v1 + 32);
  *(v1 + 32) = mach_service;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v15 = *(v1 + 40);

  sub_22BB1F12C();
  swift_unknownObjectRelease();
}

uint64_t sub_22BADE400(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_22BB1EA5C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x277D84F90];
  sub_22BB033E8(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_22BB033E8(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BADE5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA0, &qword_22BB20A30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  v10 = sub_22BB1EA5C();
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  v11 = sub_22BB1EADC();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v9, a2, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  return sub_22BB1E98C();
}

uint64_t sub_22BADE704()
{
  sub_22BADE8C8((v0 + 2));
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return swift_deallocClassInstance();
}

void sub_22BADE81C()
{
  if (!qword_281424170)
  {
    type metadata accessor for ConnectionID();
    sub_22BB1F4CC();
    sub_22BABDC04(qword_281424A20, type metadata accessor for ConnectionID);
    v0 = sub_22BB1F60C();
    if (!v1)
    {
      atomic_store(v0, &qword_281424170);
    }
  }
}

void *sub_22BADE8F0()
{
  v1 = v0;
  v2 = type metadata accessor for IntelligenceSupportAgentXPCListener.State(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v0[3] = 0;
  swift_unknownObjectWeakInit();
  v0[4] = 0;
  sub_22BB1F14C();
  v0[5] = sub_22BB1F13C();
  *v6 = sub_22BAF6664(MEMORY[0x277D84F90]);
  v7 = (v6 + *(v3 + 28));
  memset(v14, 0, sizeof(v14));
  v15 = 1;
  v8 = v7 + *(type metadata accessor for ConnectionID() + 20);
  sub_22BB1EA6C();
  *v7 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEA8, &qword_22BB20A38);
  v10 = *(v9 + 52);
  v11 = (*(v9 + 48) + 3) & 0x1FFFFFFFCLL;
  v12 = swift_allocObject();
  *(v12 + ((*(*v12 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_22BABE0FC(v6, v12 + *(*v12 + *MEMORY[0x277D841D0] + 16), type metadata accessor for IntelligenceSupportAgentXPCListener.State);
  v1[6] = v12;
  return v1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22BADEAF4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22BADEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BADEC04(uint64_t a1)
{
  v37 = sub_22BB1F2EC();
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
    sub_22BAC8968(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22BB1FA9C();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
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
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_22BB1F2BC();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_22BAC8968((v19 > 1), v20 + 1, 1);
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
            result = sub_22BADEAF4(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_22BADEAF4(v10, v38, 0);
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

uint64_t sub_22BADEF0C(uint64_t a1)
{
  v3 = type metadata accessor for ConnectionID();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BB1EADC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v40 = v10;
  v34[1] = v1;
  v47 = MEMORY[0x277D84F90];
  sub_22BB0342C(0, v11, 0);
  v12 = v47;
  v13 = a1 + 56;
  v14 = -1 << *(a1 + 32);
  result = sub_22BB1FA9C();
  v16 = v7;
  v17 = result;
  v18 = 0;
  v41 = v16;
  v38 = v16 + 32;
  v39 = (v16 + 16);
  v35 = a1 + 64;
  v36 = v11;
  v37 = a1 + 56;
  while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
  {
    v20 = v17 >> 6;
    if ((*(v13 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
    {
      goto LABEL_21;
    }

    v21 = *(a1 + 36);
    v45 = v18;
    v46 = v21;
    v22 = v42;
    sub_22BABE90C(*(a1 + 48) + *(v43 + 72) * v17, v42, type metadata accessor for ConnectionID);
    v23 = v40;
    (*v39)(v40, v22 + *(v44 + 20), v6);
    sub_22BAC1514(v22, type metadata accessor for ConnectionID);
    v47 = v12;
    v24 = v6;
    v26 = *(v12 + 16);
    v25 = *(v12 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_22BB0342C(v25 > 1, v26 + 1, 1);
      v12 = v47;
    }

    *(v12 + 16) = v26 + 1;
    result = (*(v41 + 32))(v12 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v26, v23, v24);
    v19 = 1 << *(a1 + 32);
    if (v17 >= v19)
    {
      goto LABEL_22;
    }

    v6 = v24;
    v13 = v37;
    v27 = *(v37 + 8 * v20);
    if ((v27 & (1 << v17)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v17 & 0x3F));
    if (v28)
    {
      v19 = __clz(__rbit64(v28)) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v20 << 6;
      v30 = v20 + 1;
      v31 = (v35 + 8 * v20);
      while (v30 < (v19 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_22BADEAF4(v17, v46, 0);
          v19 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_22BADEAF4(v17, v46, 0);
    }

LABEL_4:
    v18 = v45 + 1;
    v17 = v19;
    if (v45 + 1 == v36)
    {
      return v12;
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

unint64_t sub_22BADF2E8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7073;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105779;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22BADF38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BAEDB3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BADF3CC(uint64_t a1)
{
  v2 = sub_22BADFBE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF408(uint64_t a1)
{
  v2 = sub_22BADFBE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF450(uint64_t a1)
{
  v2 = sub_22BADFC3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF48C(uint64_t a1)
{
  v2 = sub_22BADFC3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF4C8(uint64_t a1)
{
  v2 = sub_22BADFD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF504(uint64_t a1)
{
  v2 = sub_22BADFD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF540(uint64_t a1)
{
  v2 = sub_22BADFC90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF57C(uint64_t a1)
{
  v2 = sub_22BADFC90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF5B8(uint64_t a1)
{
  v2 = sub_22BADFCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF5F4(uint64_t a1)
{
  v2 = sub_22BADFCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BADF630(uint64_t a1)
{
  v2 = sub_22BADFD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BADF66C(uint64_t a1)
{
  v2 = sub_22BADFD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IntelligenceSupportAgent.Client.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEB0, &qword_22BB20A80);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEB8, &qword_22BB20A88);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEC0, &qword_22BB20A90);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEEC8, &qword_22BB20A98);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEED0, &qword_22BB20AA0);
  v49 = *(v16 - 8);
  v17 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEED8, &qword_22BB20AA8);
  v20 = *(v52 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_22BADFBE8();
  sub_22BB1FE2C();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_22BADFD38();
      v38 = v52;
      sub_22BB1FCDC();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_22BADFD8C();
      v38 = v52;
      sub_22BB1FCDC();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_22BADFCE4();
      v29 = v40;
      v30 = v52;
      sub_22BB1FCDC();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_22BADFC90();
      v29 = v43;
      v30 = v52;
      sub_22BB1FCDC();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_22BADFC3C();
      v29 = v46;
      v30 = v52;
      sub_22BB1FCDC();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_22BADFBE8()
{
  result = qword_27D8DEEE0;
  if (!qword_27D8DEEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEE0);
  }

  return result;
}

unint64_t sub_22BADFC3C()
{
  result = qword_27D8DEEE8;
  if (!qword_27D8DEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEE8);
  }

  return result;
}

unint64_t sub_22BADFC90()
{
  result = qword_27D8DEEF0;
  if (!qword_27D8DEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEF0);
  }

  return result;
}

unint64_t sub_22BADFCE4()
{
  result = qword_27D8DEEF8;
  if (!qword_27D8DEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEEF8);
  }

  return result;
}

unint64_t sub_22BADFD38()
{
  result = qword_27D8DEF00;
  if (!qword_27D8DEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF00);
  }

  return result;
}

unint64_t sub_22BADFD8C()
{
  result = qword_27D8DEF08;
  if (!qword_27D8DEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8DEF08);
  }

  return result;
}

uint64_t IntelligenceSupportAgent.Client.hashValue.getter()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t IntelligenceSupportAgent.Client.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF10, &qword_22BB20AB0);
  v48 = *(v50 - 8);
  v3 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v39[-v4];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF18, &qword_22BB20AB8);
  v47 = *(v49 - 8);
  v5 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v51 = &v39[-v6];
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF20, &qword_22BB20AC0);
  v44 = *(v46 - 8);
  v7 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v53 = &v39[-v8];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF28, &qword_22BB20AC8);
  v43 = *(v45 - 8);
  v9 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v39[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF30, &qword_22BB20AD0);
  v42 = *(v12 - 8);
  v13 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v39[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF38, &qword_22BB20AD8);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v39[-v19];
  v22 = a1[3];
  v21 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_22BADFBE8();
  v23 = v55;
  sub_22BB1FE1C();
  if (!v23)
  {
    v41 = v12;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_22BB1FCCC();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 5) : (v30 = 1), v30))
    {
      v31 = sub_22BB1FBAC();
      swift_allocError();
      v33 = v32;
      v34 = v16;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEF40, &qword_22BB20AE0) + 48);
      *v33 = &type metadata for IntelligenceSupportAgent.Client;
      sub_22BB1FC4C();
      sub_22BB1FB9C();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = *(v27 + 32);
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_22BADFD38();
          sub_22BB1FC3C();
          (*(v43 + 8))(v11, v45);
        }

        else
        {
          v57 = 0;
          sub_22BADFD8C();
          sub_22BB1FC3C();
          (*(v42 + 8))(v15, v41);
        }

        (*(v55 + 8))(v20, v16);
      }

      else
      {
        v45 = v27;
        v37 = v55;
        if (v29 == 2)
        {
          v59 = 2;
          sub_22BADFCE4();
          sub_22BB1FC3C();
          (*(v44 + 8))(v24, v46);
          (*(v37 + 8))(v26, v16);
        }

        else
        {
          if (v29 == 3)
          {
            v60 = 3;
            sub_22BADFC90();
            v38 = v51;
            sub_22BB1FC3C();
            (*(v47 + 8))(v38, v49);
          }

          else
          {
            v61 = 4;
            sub_22BADFC3C();
            sub_22BB1FC3C();
            (*(v48 + 8))(v25, v50);
          }

          (*(v37 + 8))(v26, v16);
        }
      }

      swift_unknownObjectRelease();
      *v52 = v40;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}

uint64_t sub_22BAE05B4()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t sub_22BAE05FC()
{
  v1 = *v0;
  sub_22BB1FDDC();
  MEMORY[0x23189D810](v1);
  return sub_22BB1FE0C();
}

uint64_t static IntelligenceSupportAgent.initialize()()
{
  if (qword_281424D70 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t static IntelligenceSupportAgent.fetchElementHierarchy(for:parameters:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_22BAC2C0C, 0, 0);
}

uint64_t sub_22BAE06D0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_22BAE07E0(uint64_t *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_22BAEE694(*a1, a1[1]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DEFB8, &qword_22BB211C8);
  return sub_22BB1F81C();
}

uint64_t sub_22BAE0860()
{
  type metadata accessor for IntelligenceSupportAgent();
  swift_allocObject();
  result = sub_22BAE30A4();
  qword_281425148 = result;
  return result;
}

uint64_t sub_22BAE089C()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281425060 = result;
  return result;
}

uint64_t sub_22BAE0B10()
{
  v0 = sub_22BB1F8EC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_22BB1F90C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BB1F56C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
  sub_22BB1F55C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v2);
  v10[1] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&unk_2814240D0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF0C8, &qword_22BB21710);
  sub_22BAC8324(&qword_281424140, &unk_27D8DF0C8, &qword_22BB21710);
  sub_22BB1FA8C();
  result = sub_22BB1F93C();
  qword_281425048 = result;
  return result;
}

uint64_t sub_22BAE0D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v62 = a1;
  v6 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22BB1F2EC();
  v57 = *(v61 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BB1F11C();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1F5BC();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22BB1F95C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer;
  sub_22BAC83C0(0, &qword_2814240B0, 0x277D85CA0);
  if (qword_281425040 != -1)
  {
    swift_once();
  }

  *&v63[0] = MEMORY[0x277D84F90];
  sub_22BAC36FC(&qword_2814240B8, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF060, &qword_22BB21250);
  sub_22BAC8324(&qword_281424138, &unk_27D8DF060, &qword_22BB21250);
  sub_22BB1FA8C();
  v22 = sub_22BB1F96C();
  (*(v18 + 8))(v21, v17);
  *(v5 + v48) = v22;
  v23 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
  v24 = MEMORY[0x277D84F90];
  *(v5 + v23) = sub_22BAF6E94(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks) = v24;
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients) = MEMORY[0x277D84FA0];
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 0;
  v25 = (v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  *v25 = 0;
  v25[1] = 0;
  v26 = v49;
  sub_22BB1F59C();
  v27 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime;
  v29 = v50;
  v28 = v51;
  (*(v50 + 32))(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime, v26, v51);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_signpostStartTime) = mach_continuous_time();
  v30 = v58;
  sub_22BABE90C(v58, v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v31 = v57;
  v32 = v52;
  (*(v57 + 16))(v52, v62, v61);
  v33 = v56;
  sub_22BABE90C(v30, v56, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  (*(v29 + 16))(v26, v5 + v27, v28);
  v34 = v55;
  sub_22BAF85B8(v32, v33, v26);
  v35 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v37 = v53;
  v36 = v54;
  (*(v53 + 32))(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request, v34, v54);
  (*(v37 + 16))(v34, v5 + v35, v36);
  v38 = type metadata accessor for FragmentCollator(0);
  memset(v63, 0, sizeof(v63));
  v64 = 0;
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_22BB0D58C(v34, v63);
  sub_22BAC1514(v30, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  (*(v31 + 8))(v62, v61);
  *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator) = v41;
  v42 = (v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v43 = *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler);
  v44 = *(v5 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler + 8);
  v45 = v60;
  *v42 = v59;
  v42[1] = v45;
  sub_22BAD162C(v43);
  return v5;
}

uint64_t sub_22BAE1358()
{
  v1 = sub_22BB1F52C();
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22BB1F56C();
  v60 = *(v62 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22BB1F53C();
  v53 = *(v54 - 8);
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22BB1F5BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF048, &unk_22BB216E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48 - v15;
  v65 = _s17AsyncProviderTaskVMa();
  v17 = *(v65 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v65);
  v51 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v56 = &v48 - v20;
  v21 = sub_22BB1F51C();
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v25 = 40;
  v26 = *MEMORY[0x277D85178];
  v66 = v28;
  v67 = v27;
  (*(v28 + 104))(v25, v26, v23);
  v29 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
  v55 = v0;
  sub_22BB1F0DC();
  aBlock = 0;
  v70 = 0xE000000000000000;
  sub_22BB1FB7C();

  aBlock = 0xD000000000000014;
  v70 = 0x800000022BB26EA0;
  v30 = sub_22BB1F4FC();
  MEMORY[0x23189D130](v30);

  MEMORY[0x23189D130](41, 0xE100000000000000);
  sub_22BAC8A94(v12, aBlock, v70, v16);

  v31 = *(v9 + 8);
  v57 = v9 + 8;
  v58 = v8;
  v31(v12, v8);
  v50 = v17;
  if ((*(v17 + 48))(v16, 1, v65) == 1)
  {
    (*(v66 + 8))(v25, v67);
    return sub_22BAC81E8(v16, &qword_27D8DF048, &unk_22BB216E0);
  }

  else
  {
    v33 = v16;
    v34 = v56;
    sub_22BAC3614(v33, v56, _s17AsyncProviderTaskVMa);
    sub_22BAC83C0(0, &qword_2814240C8, 0x277D85C78);
    v65 = v31;
    v35 = v53;
    v36 = v52;
    v37 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x277D851C0], v54);
    v49 = sub_22BB1F94C();
    (*(v35 + 8))(v36, v37);
    v38 = v12;
    MEMORY[0x23189CFF0](v55 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime, v25);
    v39 = v34;
    v40 = v51;
    sub_22BABE90C(v34, v51, _s17AsyncProviderTaskVMa);
    v41 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v42 = swift_allocObject();
    sub_22BAC3614(v40, v42 + v41, _s17AsyncProviderTaskVMa);
    v73 = sub_22BACE2E0;
    v74 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v70 = 1107296256;
    v71 = sub_22BAC37D4;
    v72 = &block_descriptor_53;
    v43 = _Block_copy(&aBlock);
    v44 = v59;
    sub_22BB1F54C();
    v68 = MEMORY[0x277D84F90];
    sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
    sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
    v45 = v61;
    v46 = v64;
    sub_22BB1FA8C();
    v47 = v49;
    MEMORY[0x23189D320](v38, v44, v45, v43);
    _Block_release(v43);

    (*(v63 + 8))(v45, v46);
    (*(v60 + 8))(v44, v62);
    v65(v38, v58);
    sub_22BAC1514(v39, _s17AsyncProviderTaskVMa);
    (*(v66 + 8))(v25, v67);
  }
}

uint64_t sub_22BAE1B54(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = type metadata accessor for ConnectionID();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + v10);
  v24 = v13;
  *(v4 + v10) = 0x8000000000000000;
  v15 = sub_22BABE164(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v14;
  if (v13[3] >= v18)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + v10) = v13;
      if (v14)
      {
LABEL_9:
        v21 = v13[7] + 8 * v15;

        sub_22BAE1D54(v22);
        return swift_endAccess();
      }

LABEL_8:
      sub_22BABE90C(a2, v9, type metadata accessor for ConnectionID);
      sub_22BABE4A4(v15, v9, MEMORY[0x277D84F90], v13);
      goto LABEL_9;
    }

LABEL_11:
    sub_22BAEB8A8();
    v13 = v24;
    *(v4 + v10) = v24;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_22BAE9194(v18, isUniquelyReferenced_nonNull_native);
  v13 = v24;
  v19 = sub_22BABE164(a2);
  if ((v3 & 1) == (v20 & 1))
  {
    v15 = v19;
    *(v4 + v10) = v13;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

uint64_t sub_22BAE1D54(uint64_t result)
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

  result = sub_22BACE678(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_22BAE1E74(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22BAE1FD4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v105 = type metadata accessor for ConnectionID();
  v101 = *(v105 - 8);
  v5 = *(v101 + 64);
  MEMORY[0x28223BE20](v105);
  v100 = v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE8, &qword_22BB211F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = v94 - v12;
  v109 = sub_22BB1EADC();
  v99 = *(v109 - 8);
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v109);
  v110 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v94 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v94 - v19;
  if (a1 || (v21 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient, swift_beginAccess(), *(*(v2 + v21) + 16)) || (v22 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks, result = swift_beginAccess(), *(*(v2 + v22) + 16)))
  {
    v112 = 0;
    *&v113 = MEMORY[0x277D84FA0];
    *(&v113 + 1) = sub_22BAF7078(MEMORY[0x277D84F90]);
    v96 = v2;
    v107 = v10;
    v94[0] = a2;
    if (a1 && (v24 = *(a1 + 16)) != 0)
    {
      v94[1] = v20;
      v95 = v17;
      v25 = 0;
      v26 = 0;
      v27 = a1 + 32;
      v28 = v99 + 16;
      v29 = (v99 + 8);
      v102 = v24;
      v98 = v27;
      v30 = v20;
      do
      {
        v31 = v27 + 16 * v25;
        if (*(v31 + 8) - 1 < 2)
        {
          HIBYTE(v112) = 1;
        }

        else if (*(v31 + 8))
        {
          LOBYTE(v112) = 1;
        }

        else
        {
          v32 = *v31;

          v34 = sub_22BADEF0C(v33);
          v35 = *(v34 + 16);
          if (v35)
          {
            v103 = v32;
            v104 = v25;
            v97 = v26;
            v36 = *(v99 + 80);
            v108 = v34;
            v37 = v28;
            v38 = v34 + ((v36 + 32) & ~v36);
            v39 = *(v99 + 72);
            v40 = *(v99 + 16);
            v41 = v109;
            v42 = v95;
            do
            {
              v40(v30, v38, v41);
              sub_22BB197C4(v42, v30);
              (*v29)(v42, v41);
              v38 += v39;
              --v35;
            }

            while (v35);

            v10 = v107;
            v26 = v97;
            v24 = v102;
            v27 = v98;
            v28 = v37;
            v25 = v104;
          }

          else
          {

            v10 = v107;
          }
        }

        v25 = (v25 + 1);
      }

      while (v25 != v24);
    }

    else
    {
      v26 = 0;
    }

    v97 = v26;
    v43 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient;
    v44 = v96;
    swift_beginAccess();
    v45 = *(v44 + v43);
    v46 = (v45 + 64);
    v47 = 1 << v45[32];
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v45 + 8);
    v98 = (v47 + 63) >> 6;
    v108 = (v99 + 16);
    v104 = (v99 + 8);
    v102 = v45;

    v50 = 0;
    a2 = 0;
    v51 = &unk_27D8DEFF0;
    v52 = &unk_22BB211F8;
    v103 = v46;
    while (v49)
    {
      v54 = v50;
      v55 = a2;
LABEL_32:
      v58 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v59 = v58 | (v55 << 6);
      v60 = v102;
      v61 = v100;
      sub_22BABE90C(v102[6] + *(v101 + 72) * v59, v100, type metadata accessor for ConnectionID);
      v62 = *(v60[7] + v59);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
      v64 = v51;
      v65 = *(v63 + 48);
      sub_22BAC3614(v61, v10, type metadata accessor for ConnectionID);
      *&v10[v65] = v62;
      (*(*(v63 - 8) + 56))(v10, 0, 1, v63);

      v66 = v52;
      v50 = v54;
LABEL_33:
      v67 = v106;
      sub_22BAD7044(v10, v106, &qword_27D8DEFE8, &qword_22BB211F0);
      v68 = v64;
      v52 = v66;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(v64, v66);
      if ((*(*(v69 - 8) + 48))(v67, 1, v69) == 1)
      {

        v88 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks;
        v89 = v96;
        swift_beginAccess();
        v90 = *(v89 + v88);
        v91 = 256;
        if (!HIBYTE(v112))
        {
          v91 = 0;
        }

        v92 = v91 | v112;
        v93 = v94[0];
        *v94[0] = v92;
        *(v93 + 8) = v113;
        *(v93 + 24) = v90;

        return sub_22BAD162C(v50);
      }

      v70 = *(v67 + *(v69 + 48));
      v71 = *v108;
      v72 = v110;
      (*v108)(v110, v67 + *(v105 + 20), v109);
      sub_22BAC1514(v67, type metadata accessor for ConnectionID);
      sub_22BAD162C(v50);
      v73 = *(&v113 + 1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v73;
      v76 = sub_22BB1927C(v72);
      v77 = v73[2];
      v78 = (v75 & 1) == 0;
      v79 = v77 + v78;
      if (__OFADD__(v77, v78))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        result = sub_22BB1FDBC();
        __break(1u);
        return result;
      }

      v80 = v75;
      if (v73[3] >= v79)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BAEC128(&unk_27D8DEFF8, &unk_22BB21200);
          v73 = v111;
        }
      }

      else
      {
        sub_22BAE9B98(v79, isUniquelyReferenced_nonNull_native, &unk_27D8DEFF8, &unk_22BB21200);
        v73 = v111;
        v81 = sub_22BB1927C(v110);
        if ((v80 & 1) != (v82 & 1))
        {
          goto LABEL_51;
        }

        v76 = v81;
      }

      v83 = v109;
      *(&v113 + 1) = v73;
      if ((v80 & 1) == 0)
      {
        v73[(v76 >> 6) + 8] |= 1 << v76;
        v71(v73[6] + *(v99 + 72) * v76, v110, v83);
        *(v73[7] + 8 * v76) = MEMORY[0x277D84F90];
        v84 = v73[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (v85)
        {
          goto LABEL_50;
        }

        v73[2] = v86;
      }

      v53 = v73[7] + 8 * v76;
      sub_22BAE1D54(v70);
      result = (*v104)(v110, v83);
      v50 = sub_22BAE1D18;
      v10 = v107;
      v51 = v68;
      v46 = v103;
    }

    if (v98 <= a2 + 1)
    {
      v56 = a2 + 1;
    }

    else
    {
      v56 = v98;
    }

    v57 = v56 - 1;
    while (1)
    {
      v55 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      if (v55 >= v98)
      {
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
        (*(*(v87 - 8) + 56))(v10, 1, 1, v87);
        v49 = 0;
        a2 = v57;
        v64 = v51;
        v66 = v52;
        goto LABEL_33;
      }

      v49 = v46[v55];
      a2 = (a2 + 1);
      if (v49)
      {
        v54 = v50;
        a2 = v55;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

unint64_t sub_22BAE2918(uint64_t a1, unsigned __int8 a2)
{
  v4 = type metadata accessor for FragmentCollator.PendingRemoteDetails(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      return 0xD000000000000014;
    }

    v10 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v40 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v10, 0);
      v11 = v40;
      v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v37 = *(v5 + 72);
      do
      {
        sub_22BABE90C(v12, v8, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v38 = 40;
        v39 = 0xE100000000000000;
        sub_22BB1E9DC();
        sub_22BAC36FC(&qword_2814250E8, MEMORY[0x277D746D8]);
        v13 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v13);

        MEMORY[0x23189D130](0x65746F6D6572202CLL, 0xE90000000000003DLL);
        v14 = *(v4 + 20);
        sub_22BB1EADC();
        sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
        v15 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v15);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v16 = v38;
        v17 = v39;
        sub_22BAC1514(v8, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v40 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22BAC8968((v18 > 1), v19 + 1, 1);
          v11 = v40;
        }

        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v12 += v37;
        --v10;
      }

      while (v10);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22BB1FB7C();

    v32 = 0x800000022BB26FA0;
    v33 = 0xD000000000000019;
    goto LABEL_20;
  }

  if (a2)
  {
    v21 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v21)
    {
      v40 = MEMORY[0x277D84F90];
      sub_22BAC8968(0, v21, 0);
      v11 = v40;
      v22 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v37 = *(v5 + 72);
      do
      {
        sub_22BABE90C(v22, v8, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v38 = 40;
        v39 = 0xE100000000000000;
        sub_22BB1E9DC();
        sub_22BAC36FC(&qword_2814250E8, MEMORY[0x277D746D8]);
        v23 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v23);

        MEMORY[0x23189D130](0x656372756F73202CLL, 0xE90000000000003DLL);
        v24 = *(v4 + 20);
        sub_22BB1EADC();
        sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
        v25 = sub_22BB1FD7C();
        MEMORY[0x23189D130](v25);

        MEMORY[0x23189D130](41, 0xE100000000000000);
        v26 = v38;
        v27 = v39;
        sub_22BAC1514(v8, type metadata accessor for FragmentCollator.PendingRemoteDetails);
        v40 = v11;
        v29 = *(v11 + 16);
        v28 = *(v11 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_22BAC8968((v28 > 1), v29 + 1, 1);
          v11 = v40;
        }

        *(v11 + 16) = v29 + 1;
        v30 = v11 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v22 += v37;
        --v21;
      }

      while (v21);
    }

    v38 = 0;
    v39 = 0xE000000000000000;
    sub_22BB1FB7C();

    v32 = 0x800000022BB26FC0;
    v33 = 0xD00000000000001ALL;
LABEL_20:
    v38 = v33;
    v39 = v32;
    v34 = MEMORY[0x23189D210](v11, MEMORY[0x277D837D0]);
    v36 = v35;

    MEMORY[0x23189D130](v34, v36);
    goto LABEL_21;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_22BB1FB7C();

  v38 = 0xD00000000000001ALL;
  v39 = 0x800000022BB26FE0;
  type metadata accessor for ConnectionID();
  sub_22BAC36FC(qword_281424A20, type metadata accessor for ConnectionID);
  v9 = sub_22BB1F85C();
  MEMORY[0x23189D130](v9);
LABEL_21:

  MEMORY[0x23189D130](41, 0xE100000000000000);
  return v38;
}

uint64_t sub_22BAE2F28()
{
  v1 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_startTime;
  v2 = sub_22BB1F5BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timeoutTimer);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncTasksByClient);

  v5 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_timedOutAsyncProviderTasks);

  v6 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);

  v7 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_pendingClients);

  sub_22BAC1514(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_parameters, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v8 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
  v9 = sub_22BB1F11C();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler + 8);
  sub_22BAD162C(*(v0 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_completionHandler));
  return v0;
}

uint64_t sub_22BAE3050()
{
  v0 = *sub_22BAE2F28();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22BAE30A4()
{
  v1 = v0;
  type metadata accessor for IntelligenceSupportAgentXPCListener();
  swift_allocObject();
  *(v0 + 16) = sub_22BADE8F0();
  v2 = sub_22BAF6848(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF0F8, &qword_22BB212B8);
  v3 = swift_allocObject();
  *(v3 + 40) = 0;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v1 + 24) = v3;
  sub_22BB097DC();
  *(*(v1 + 16) + 24) = &off_283F6B498;
  swift_unknownObjectWeakAssign();
  v4 = *(v1 + 16);

  sub_22BADE198();

  v5 = *(v1 + 24);

  os_unfair_lock_lock((v5 + 40));
  sub_22BB1E5DC();
  v6 = sub_22BB1E5CC();
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  os_unfair_lock_unlock((v5 + 40));

  return v1;
}

uint64_t sub_22BAE31B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionID();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1EADC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BABE90C(a1, v8, type metadata accessor for ConnectionID);
  (*(v10 + 32))(v13, &v8[*(v5 + 28)], v9);
  if (sub_22BAC50E4(v13, v2[5]) & 1) != 0 || (v14 = sub_22BB1EA9C(), v15) && (v16 = sub_22BAC52FC(v14, v15, v2[6]), , (v16) || (v17 = v2[3]) != 0 && (sub_22BAC50E4(v13, v17) & 1) == 0)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v18 = v2[4];
    if (!v18 || (v19 = sub_22BB1EA9C(), !v20))
    {
      (*(v10 + 8))(v13, v9);
      return 1;
    }

    v21 = sub_22BAC52FC(v19, v20, v18);

    (*(v10 + 8))(v13, v9);
    if (v21)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22BAE33C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_22BB1F51C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BAE3434@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x277D85168];
  v3 = sub_22BB1F51C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22BAE34AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    MEMORY[0x28223BE20](result);
    os_unfair_lock_lock((v1 + 40));
    sub_22BAEEDA8((v1 + 16));
    os_unfair_lock_unlock((v1 + 40));
  }

  return result;
}

uint64_t sub_22BAE3564()
{
  sub_22BB1F52C();
  sub_22BAC36FC(&qword_281424180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFC8, &qword_22BB211D0);
  sub_22BAC8324(&qword_281424150, &qword_27D8DEFC8, &qword_22BB211D0);
  return sub_22BB1FA8C();
}

uint64_t sub_22BAE3650(void *a1, uint64_t a2)
{
  v4 = sub_22BB1F2EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = sub_22BB1F45C();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  v54 = a1;
  v19 = *a1;
  if (*(v19 + 16) && (v20 = sub_22BACB688(a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);

    v23 = a2;
    v24 = sub_22BACB200(1);
    sub_22BB1F43C();
    v25 = *(v5 + 16);
    v52 = v23;
    v25(v11, v23, v4);

    v26 = sub_22BB1F44C();
    v27 = sub_22BB1F8BC();
    v53 = v24;

    v51 = v27;
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v50 = v22;
      v29 = v28;
      v30 = swift_slowAlloc();
      v57 = v30;
      *v29 = 136446466;
      v31 = v26;
      v32 = sub_22BB1F2BC();
      v55 = v12;
      v34 = v33;
      (*(v5 + 8))(v11, v4);
      v35 = sub_22BABDC4C(v32, v34, &v57);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2082;
      v36 = v53;
      v37 = MEMORY[0x23189D210](v53, &type metadata for IntelligenceSupportAgent.ActiveRequest.CompletionActivity);
      v39 = sub_22BABDC4C(v37, v38, &v57);

      *(v29 + 14) = v39;
      _os_log_impl(&dword_22BABB000, v31, v51, "timed out %{public}s because %{public}s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v30, -1, -1);
      MEMORY[0x23189DF20](v29, -1, -1);

      (*(v56 + 8))(v18, v55);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
      (*(v56 + 8))(v18, v12);
      v36 = v53;
    }

    sub_22BACFB24(v52, v36);
  }

  else
  {
    v55 = v12;
    sub_22BB1F43C();
    (*(v5 + 16))(v8, a2, v4);
    v40 = sub_22BB1F44C();
    v41 = sub_22BB1F8BC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v54 = v4;
      v43 = v42;
      v44 = swift_slowAlloc();
      v57 = v44;
      *v43 = 136446210;
      v45 = sub_22BB1F2BC();
      v47 = v46;
      (*(v5 + 8))(v8, v54);
      v48 = sub_22BABDC4C(v45, v47, &v57);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_22BABB000, v40, v41, "timed out invalid %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x23189DF20](v44, -1, -1);
      MEMORY[0x23189DF20](v43, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    return (*(v56 + 8))(v15, v55);
  }
}

void sub_22BAE3B70(uint64_t *a1)
{
  v60 = sub_22BB1F2EC();
  v57 = *(v60 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = v49 - v12;
  v13 = sub_22BB1F45C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[1] & 1) == 0)
  {
    v49[0] = v1;
    *(a1 + 8) = 1;
    sub_22BB1F43C();
    v18 = sub_22BB1F44C();
    v19 = sub_22BB1F8CC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22BABB000, v18, v19, "Launch completed", v20, 2u);
      MEMORY[0x23189DF20](v20, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    if (a1[2])
    {
      sub_22BB1F4BC();
    }

    a1[2] = 0;
    v21 = *a1;
    v23 = (*a1 + 64);
    v22 = *v23;
    v49[1] = a1;
    v50 = v23;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & v22;
    v27 = (v24 + 63) >> 6;
    v51 = v57 + 16;
    v58 = (v57 + 8);
    v59 = (v57 + 32);
    v53 = v21;

    v28 = 0;
    v52 = v5;
    v29 = v55;
    v30 = v56;
    if (!v26)
    {
      goto LABEL_12;
    }

    do
    {
      while (1)
      {
        v31 = v28;
LABEL_19:
        v34 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v35 = v34 | (v31 << 6);
        v37 = v53;
        v36 = v54;
        v38 = v57;
        v39 = v60;
        (*(v57 + 16))(v54, *(v53 + 48) + *(v57 + 72) * v35, v60);
        v40 = *(*(v37 + 56) + 8 * v35);
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        v42 = *(v41 + 48);
        v43 = *(v38 + 32);
        v30 = v56;
        v43(v56, v36, v39);
        *(v30 + v42) = v40;
        (*(*(v41 - 8) + 56))(v30, 0, 1, v41);

        v33 = v31;
        v5 = v52;
        v29 = v55;
LABEL_20:
        sub_22BAD7044(v30, v29, &qword_27D8DF080, &qword_22BB21260);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        if ((*(*(v44 - 8) + 48))(v29, 1, v44) == 1)
        {

          return;
        }

        v45 = *(v29 + *(v44 + 48));
        v46 = v60;
        (*v59)(v5, v29, v60);
        *(v45 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_doneAddingPendingClients) = 1;
        v47 = *(sub_22BACB200(0) + 2);

        if (!v47)
        {
          break;
        }

        (*v58)(v5, v46);

        v28 = v33;
        if (!v26)
        {
          goto LABEL_12;
        }
      }

      sub_22BACFB24(v5, 0);

      (*v58)(v5, v46);
      v28 = v33;
    }

    while (v26);
LABEL_12:
    if (v27 <= v28 + 1)
    {
      v32 = v28 + 1;
    }

    else
    {
      v32 = v27;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
        (*(*(v48 - 8) + 56))(v30, 1, 1, v48);
        v26 = 0;
        goto LABEL_20;
      }

      v26 = v50[v31];
      ++v28;
      if (v26)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

uint64_t IntelligenceSupportAgent.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_22BAE4198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v60 = a4;
  v61 = type metadata accessor for ConnectionID();
  v64 = *(v61 - 8);
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  v11 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v55[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22BB1F2EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22BB1F45C();
  v62 = *(v21 - 8);
  v63 = v21;
  v22 = *(v62 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v55[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = a2;
  if (sub_22BAE31B0(a3))
  {
    v59 = a5;
    sub_22BB1F43C();
    (*(v17 + 16))(v20, a1, v16);
    v58 = a3;
    sub_22BABE90C(a3, v15, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
    v25 = sub_22BB1F44C();
    v26 = sub_22BB1F8CC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v56 = v26;
      v28 = v27;
      v57 = swift_slowAlloc();
      v68 = v57;
      *v28 = 136446722;
      if (v60)
      {
        v29 = 0x6F6320796C77656ELL;
      }

      else
      {
        v29 = 0x772D68636E75616CLL;
      }

      if (v60)
      {
        v30 = 0xEF64657463656E6ELL;
      }

      else
      {
        v30 = 0xEB00000000746961;
      }

      v31 = sub_22BABDC4C(v29, v30, &v68);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      v32 = sub_22BB1F2BC();
      v34 = v33;
      (*(v17 + 8))(v20, v16);
      v35 = sub_22BABDC4C(v32, v34, &v68);

      *(v28 + 14) = v35;
      *(v28 + 22) = 2080;
      sub_22BABE90C(v15, v11, type metadata accessor for ConnectionID);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v67, "ConnectionID(");
      HIWORD(v67[1]) = -4864;
      v66 = *v11;
      v36 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v36);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      v37 = *(v61 + 20);
      sub_22BB1EADC();
      sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
      v38 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v38);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v39 = v67[0];
      v40 = v67[1];
      sub_22BAC1514(v11, type metadata accessor for ConnectionID);
      sub_22BAC1514(v15, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      v41 = sub_22BABDC4C(v39, v40, &v68);

      *(v28 + 24) = v41;
      _os_log_impl(&dword_22BABB000, v25, v56, "notifying %{public}s client for %{public}s: %s", v28, 0x20u);
      v42 = v57;
      swift_arrayDestroy();
      MEMORY[0x23189DF20](v42, -1, -1);
      MEMORY[0x23189DF20](v28, -1, -1);
    }

    else
    {

      sub_22BAC1514(v15, type metadata accessor for IntelligenceSupportAgentXPCListener.ConnectedClient);
      (*(v17 + 8))(v20, v16);
    }

    (*(v62 + 8))(v24, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF110, &unk_22BB212D0);
    v46 = *(v64 + 72);
    v47 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_22BB20A70;
    sub_22BABE90C(v58, v48 + v47, type metadata accessor for ConnectionID);
    v49 = v65;
    sub_22BACAF88(v48);
    swift_setDeallocating();
    sub_22BAC1514(v48 + v47, type metadata accessor for ConnectionID);
    swift_deallocClassInstance();
    v50 = OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_request;
    v51 = sub_22BB1F11C();
    v52 = *(v51 - 8);
    v53 = v49 + v50;
    v54 = v59;
    (*(v52 + 16))(v59, v53, v51);
    return (*(v52 + 56))(v54, 0, 1, v51);
  }

  else
  {
    v43 = sub_22BB1F11C();
    v44 = *(*(v43 - 8) + 56);

    return v44(a5, 1, 1, v43);
  }
}

uint64_t sub_22BAE48DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v7 = type metadata accessor for ConnectionID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v44 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v45 = &v42 - v12;
  v13 = sub_22BB1F45C();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = *(v46 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF030, &qword_22BB21228);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v42 - v19;
  swift_beginAccess();
  v48 = a2;
  sub_22BAECF9C(a3, v20);
  swift_endAccess();
  v21 = (*(v8 + 48))(v20, 1, v7);
  sub_22BAC81E8(v20, &unk_27D8DF030, &qword_22BB21228);
  if (v21 == 1)
  {
    v22 = sub_22BB1F2EC();
    return (*(*(v22 - 8) + 56))(a4, 1, 1, v22);
  }

  else
  {
    v42 = a4;
    v24 = v16;
    sub_22BB1F43C();
    v25 = v45;
    sub_22BABE90C(a3, v45, type metadata accessor for ConnectionID);
    v26 = sub_22BB1F44C();
    v27 = sub_22BB1F8CC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v50 = v29;
      *v28 = 136446210;
      v30 = v44;
      sub_22BABE90C(v25, v44, type metadata accessor for ConnectionID);
      v51[0] = 0;
      v51[1] = 0xE000000000000000;
      sub_22BB1FB7C();

      strcpy(v51, "ConnectionID(");
      HIWORD(v51[1]) = -4864;
      v49 = *v30;
      v31 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v31);

      MEMORY[0x23189D130](8236, 0xE200000000000000);
      v32 = *(v7 + 20);
      sub_22BB1EADC();
      sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
      v33 = sub_22BB1FD7C();
      MEMORY[0x23189D130](v33);

      MEMORY[0x23189D130](41, 0xE100000000000000);
      v34 = v51[0];
      v35 = v51[1];
      sub_22BAC1514(v30, type metadata accessor for ConnectionID);
      sub_22BAC1514(v25, type metadata accessor for ConnectionID);
      v36 = sub_22BABDC4C(v34, v35, &v50);

      *(v28 + 4) = v36;
      _os_log_impl(&dword_22BABB000, v26, v27, "client unexpectedly disconnected while pending: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23189DF20](v29, -1, -1);
      MEMORY[0x23189DF20](v28, -1, -1);
    }

    else
    {

      sub_22BAC1514(v25, type metadata accessor for ConnectionID);
    }

    (*(v46 + 8))(v24, v47);
    v37 = v42;
    v38 = *(sub_22BACB200(0) + 2);

    v39 = sub_22BB1F2EC();
    v40 = *(v39 - 8);
    v41 = v40;
    if (v38)
    {
      return (*(v40 + 56))(v37, 1, 1, v39);
    }

    else
    {
      (*(v40 + 16))(v37, v43, v39);
      return (*(v41 + 56))(v37, 0, 1, v39);
    }
  }
}

uint64_t sub_22BAE4E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v43 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v47 = sub_22BB1F2EC();
  v11 = *(v47 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v47);
  v54 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22BB1EA5C();
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  v42 = a2;
  if (v20)
  {
    v22 = *(v16 + 16);
    v21 = v16 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v52 = *(v21 + 56);
    v53 = v22;
    v49 = (v11 + 48);
    v45 = v11;
    v50 = (v11 + 32);
    v51 = (v21 - 8);
    v24 = MEMORY[0x277D84F90];
    v25 = v47;
    v46 = v7;
    v44 = v14;
    v48 = v21;
    v22(v19, v23, v14, v17);
    while (1)
    {
      sub_22BB1EA2C();
      sub_22BAD7044(v7, v10, &qword_27D8DEFD8, &qword_22BB211E0);
      (*v51)(v19, v14);
      if ((*v49)(v10, 1, v25) == 1)
      {
        sub_22BAC81E8(v10, &qword_27D8DEFD8, &qword_22BB211E0);
      }

      else
      {
        v27 = *v50;
        (*v50)(v54, v10, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_22BAF604C(0, v24[2] + 1, 1, v24);
        }

        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          v24 = sub_22BAF604C(v28 > 1, v29 + 1, 1, v24);
        }

        v24[2] = v29 + 1;
        v30 = v24 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v29;
        v25 = v47;
        v27(v30, v54, v47);
        v7 = v46;
        v14 = v44;
      }

      v23 += v52;
      if (!--v20)
      {
        break;
      }

      v53(v19, v23, v14, v26);
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v31 = sub_22BB1DB2C(v24);

  v32 = sub_22BADEC04(v31);

  v55 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAC8324(&qword_281424148, &unk_27D8DF070, &qword_22BB21258);
  v33 = sub_22BB1F63C();
  v35 = v34;

  v37 = *(v40[1] + 24);
  MEMORY[0x28223BE20](v36);
  v38 = v42;
  v40[-6] = v41;
  v40[-5] = v38;
  v40[-4] = v33;
  v40[-3] = v35;
  v40[-2] = v43;
  os_unfair_lock_lock((v37 + 40));
  sub_22BAEEE48((v37 + 16));
  os_unfair_lock_unlock((v37 + 40));
}

_BYTE *sub_22BAE52FC(uint64_t *a1, uint64_t *a2, uint64_t a3, void (**a4)(_BYTE *, _BYTE *, uint64_t), unint64_t a5, uint64_t a6)
{
  v221 = a6;
  v230 = a4;
  v217 = a2;
  v225 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF030, &qword_22BB21228);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v198 = &v196[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v223 = &v196[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v216 = &v196[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v214 = &v196[-v19];
  v227 = sub_22BB1EA5C();
  v215 = *(v227 - 8);
  v20 = *(v215 + 64);
  MEMORY[0x28223BE20](v227);
  v226 = &v196[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v233 = sub_22BB1F2EC();
  v229 = *(v233 - 8);
  v22 = *(v229 + 64);
  MEMORY[0x28223BE20](v233 - 8);
  v222 = &v196[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v203 = &v196[-v25];
  MEMORY[0x28223BE20](v26);
  v218 = &v196[-v27];
  MEMORY[0x28223BE20](v28);
  v220 = &v196[-v29];
  MEMORY[0x28223BE20](v30);
  v228 = &v196[-v31];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF120, &qword_22BB212E0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v219 = &v196[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35);
  v224 = &v196[-v36];
  v37 = type metadata accessor for ConnectionID();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v202 = &v196[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40);
  v211 = &v196[-v41];
  MEMORY[0x28223BE20](v42);
  v44 = &v196[-v43];
  MEMORY[0x28223BE20](v45);
  v47 = &v196[-v46];
  v48 = sub_22BB1F45C();
  v49 = *(v48 - 8);
  isa = v49[8].isa;
  MEMORY[0x28223BE20](v48);
  v209 = &v196[-((v51 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v52);
  v210 = &v196[-v53];
  MEMORY[0x28223BE20](v54);
  v56 = &v196[-v55];
  sub_22BB1F43C();
  sub_22BABE90C(a2, v47, type metadata accessor for ConnectionID);
  swift_bridgeObjectRetain_n();

  v232 = v56;
  v57 = sub_22BB1F44C();
  v58 = sub_22BB1F8CC();
  v231 = a5;

  v59 = os_log_type_enabled(v57, v58);
  v205 = v44;
  v208 = v48;
  v206 = v37;
  v201 = a3;
  v204 = v49;
  if (v59)
  {
    v60 = swift_slowAlloc();
    v213 = swift_slowAlloc();
    v236 = v213;
    *v60 = 136446978;
    sub_22BABE90C(v47, v44, type metadata accessor for ConnectionID);
    v234[0] = 0;
    v234[1] = 0xE000000000000000;
    v212 = v57;
    sub_22BB1FB7C();

    strcpy(v234, "ConnectionID(");
    HIWORD(v234[1]) = -4864;
    v235 = *v44;
    v61 = sub_22BB1FD7C();
    v62 = v47;
    MEMORY[0x23189D130](v61);

    MEMORY[0x23189D130](8236, 0xE200000000000000);
    v63 = *(v37 + 20);
    sub_22BB1EADC();
    sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
    v64 = sub_22BB1FD7C();
    MEMORY[0x23189D130](v64);

    MEMORY[0x23189D130](41, 0xE100000000000000);
    v65 = v234[0];
    v66 = v234[1];
    v67 = v58;
    sub_22BAC1514(v44, type metadata accessor for ConnectionID);
    sub_22BAC1514(v62, type metadata accessor for ConnectionID);
    v68 = sub_22BABDC4C(v65, v66, &v236);

    *(v60 + 4) = v68;
    *(v60 + 12) = 2050;
    v69 = *(a3 + 16);

    *(v60 + 14) = v69;

    *(v60 + 22) = 2082;
    if (v69 == 1)
    {
      v70 = 0;
    }

    else
    {
      v70 = 115;
    }

    if (v69 == 1)
    {
      v71 = 0xE000000000000000;
    }

    else
    {
      v71 = 0xE100000000000000;
    }

    v72 = sub_22BABDC4C(v70, v71, &v236);

    *(v60 + 24) = v72;
    *(v60 + 32) = 2082;
    *(v60 + 34) = sub_22BABDC4C(v230, v231, &v236);
    v73 = v212;
    _os_log_impl(&dword_22BABB000, v212, v67, "client %{public}s provided %{public}ld fragment%{public}s for [%{public}s]", v60, 0x2Au);
    v74 = v213;
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v74, -1, -1);
    MEMORY[0x23189DF20](v60, -1, -1);

    v213 = v204[1].isa;
    (v213)(v232, v48);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_22BAC1514(v47, type metadata accessor for ConnectionID);
    v213 = v49[1].isa;
    (v213)(v232, v48);
  }

  v75 = *(v221 + 64);
  v212 = (v221 + 64);
  v76 = 1 << *(v221 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & v75;
  v207 = ((v76 + 63) >> 6);
  v230 = (v229 + 16);
  v79 = (v229 + 32);
  v232 = (v229 + 8);

  v81 = 0;
  v231 = v79;
  v83 = v219;
  v82 = v220;
  while (v78)
  {
    v84 = v81;
LABEL_24:
    v87 = __clz(__rbit64(v78));
    v78 &= v78 - 1;
    v88 = v87 | (v84 << 6);
    v89 = v221;
    v90 = v228;
    v91 = v229;
    v92 = v233;
    (*(v229 + 16))(v228, *(v221 + 48) + *(v229 + 72) * v88, v233);
    v93 = *(*(v89 + 56) + 8 * v88);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
    v95 = *(v94 + 48);
    v96 = *(v91 + 32);
    v83 = v219;
    v97 = v90;
    v79 = v231;
    v96(v219, v97, v92);
    *(v83 + v95) = v93;
    (*(*(v94 - 8) + 56))(v83, 0, 1, v94);

    v86 = v84;
    v82 = v220;
LABEL_25:
    v98 = v224;
    sub_22BAD7044(v83, v224, &qword_27D8DF120, &qword_22BB212E0);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
    if ((*(*(v99 - 8) + 48))(v98, 1, v99) == 1)
    {

      result = sub_22BAF6848(MEMORY[0x277D84F90]);
      v224 = result;
      v109 = *(v201 + 16);
      v110 = v233;
      if (v109)
      {
        v111 = *(v215 + 16);
        v112 = v201 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
        v220 = (v215 + 8);
        v221 = v229 + 48;
        v215 += 16;
        v219 = *(v215 + 56);
        v212 = v204 + 1;
        *&v108 = 136446210;
        v199 = v108;
        *&v108 = 136446466;
        v197 = v108;
        v113 = v214;
        v114 = v218;
        v115 = v208;
        v204 = v111;
        (v111)(v226, v112, v227);
        while (1)
        {
          sub_22BB1EA2C();
          if ((*v221)(v113, 1, v110) == 1)
          {
            sub_22BAC81E8(v113, &qword_27D8DEFD8, &qword_22BB211E0);
            v117 = v210;
            sub_22BB1F43C();
            v118 = v211;
            sub_22BABE90C(v217, v211, type metadata accessor for ConnectionID);
            v119 = sub_22BB1F44C();
            v120 = sub_22BB1F8BC();
            if (os_log_type_enabled(v119, v120))
            {
              v121 = v118;
              v122 = swift_slowAlloc();
              v207 = swift_slowAlloc();
              v236 = v207;
              *v122 = v199;
              v123 = v205;
              sub_22BABE90C(v121, v205, type metadata accessor for ConnectionID);
              v234[0] = 0;
              v234[1] = 0xE000000000000000;
              sub_22BB1FB7C();

              strcpy(v234, "ConnectionID(");
              HIWORD(v234[1]) = -4864;
              v235 = *v123;
              v124 = sub_22BB1FD7C();
              MEMORY[0x23189D130](v124);

              MEMORY[0x23189D130](8236, 0xE200000000000000);
              v125 = *(v206 + 20);
              sub_22BB1EADC();
              sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
              v126 = sub_22BB1FD7C();
              MEMORY[0x23189D130](v126);

              MEMORY[0x23189D130](41, 0xE100000000000000);
              v127 = v234[0];
              v128 = v234[1];
              v129 = v123;
              v115 = v208;
              sub_22BAC1514(v129, type metadata accessor for ConnectionID);
              v79 = v231;
              sub_22BAC1514(v211, type metadata accessor for ConnectionID);
              v130 = sub_22BABDC4C(v127, v128, &v236);
              v111 = v204;

              *(v122 + 4) = v130;
              _os_log_impl(&dword_22BABB000, v119, v120, "received fragment from client %{public}s with missing requestID", v122, 0xCu);
              v131 = v207;
              __swift_destroy_boxed_opaque_existential_0(v207);
              MEMORY[0x23189DF20](v131, -1, -1);
              MEMORY[0x23189DF20](v122, -1, -1);

              v116 = v210;
            }

            else
            {

              sub_22BAC1514(v118, type metadata accessor for ConnectionID);
              v116 = v117;
            }

            (v213)(v116, v115);
            result = (*v220)(v226, v227);
            v110 = v233;
            v114 = v218;
          }

          else
          {
            (*v79)(v114, v113, v110);
            v132 = *v225;
            if (*(*v225 + 16) && (v133 = sub_22BACB688(v114), (v134 & 1) != 0))
            {
              v135 = *(*(v132 + 56) + 8 * v133);
              swift_beginAccess();

              v136 = v198;
              sub_22BAECF9C(v217, v198);
              swift_endAccess();
              sub_22BAC81E8(v136, &unk_27D8DF030, &qword_22BB21228);
              v137 = *(v135 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);
              v138 = v226;
              sub_22BB0A000(v226);

              v139 = v224;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v234[0] = v139;
              sub_22BB0ED68(v135, v218, isUniquelyReferenced_nonNull_native);

              (*v232)(v218, v110);
              v141 = v138;
              v114 = v218;
              result = (*v220)(v141, v227);
              v224 = v234[0];
            }

            else
            {
              sub_22BB1F43C();
              v142 = v202;
              sub_22BABE90C(v217, v202, type metadata accessor for ConnectionID);
              v143 = v203;
              (*v230)(v203, v114, v110);
              v144 = sub_22BB1F44C();
              v145 = sub_22BB1F8BC();
              v146 = v145;
              if (os_log_type_enabled(v144, v145))
              {
                v147 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                v236 = v207;
                *v147 = v197;
                LODWORD(v201) = v146;
                v148 = v205;
                sub_22BABE90C(v142, v205, type metadata accessor for ConnectionID);
                v234[0] = 0;
                v234[1] = 0xE000000000000000;
                v200 = v144;
                sub_22BB1FB7C();

                strcpy(v234, "ConnectionID(");
                HIWORD(v234[1]) = -4864;
                v235 = *v148;
                v149 = sub_22BB1FD7C();
                MEMORY[0x23189D130](v149);

                MEMORY[0x23189D130](8236, 0xE200000000000000);
                v150 = *(v206 + 20);
                sub_22BB1EADC();
                sub_22BAC36FC(&unk_2814250C0, MEMORY[0x277D74708]);
                v151 = sub_22BB1FD7C();
                MEMORY[0x23189D130](v151);

                MEMORY[0x23189D130](41, 0xE100000000000000);
                v152 = v234[0];
                v153 = v234[1];
                sub_22BAC1514(v148, type metadata accessor for ConnectionID);
                v110 = v233;
                sub_22BAC1514(v142, type metadata accessor for ConnectionID);
                v154 = sub_22BABDC4C(v152, v153, &v236);

                *(v147 + 4) = v154;
                *(v147 + 12) = 2082;
                v155 = sub_22BB1F2BC();
                v157 = v156;
                v158 = *v232;
                (*v232)(v143, v110);
                v159 = sub_22BABDC4C(v155, v157, &v236);
                v111 = v204;

                *(v147 + 14) = v159;
                v160 = v200;
                _os_log_impl(&dword_22BABB000, v200, v201, "received fragment from client %{public}s for invalid or expired request %{public}s", v147, 0x16u);
                v161 = v207;
                swift_arrayDestroy();
                MEMORY[0x23189DF20](v161, -1, -1);
                v162 = v147;
                v79 = v231;
                MEMORY[0x23189DF20](v162, -1, -1);

                v163 = v208;
                (v213)(v209, v208);
                v164 = v218;
                v158(v218, v110);
                v115 = v163;
              }

              else
              {

                v165 = *v232;
                (*v232)(v143, v110);
                sub_22BAC1514(v142, type metadata accessor for ConnectionID);
                v115 = v208;
                (v213)(v209, v208);
                v164 = v218;
                v165(v218, v110);
              }

              result = (*v220)(v226, v227);
              v114 = v164;
            }
          }

          v112 += v219;
          --v109;
          v113 = v214;
          if (!v109)
          {
            break;
          }

          (v111)(v226, v112, v227);
        }
      }

      v166 = 0;
      v167 = *(v224 + 8);
      v227 = (v224 + 64);
      v168 = 1 << v224[32];
      v169 = -1;
      if (v168 < 64)
      {
        v169 = ~(-1 << v168);
      }

      v170 = v169 & v167;
      v171 = (v168 + 63) >> 6;
      v172 = v216;
      if ((v169 & v167) == 0)
      {
        goto LABEL_53;
      }

      do
      {
        while (1)
        {
          v173 = v166;
LABEL_60:
          v176 = __clz(__rbit64(v170));
          v170 &= v170 - 1;
          v177 = v176 | (v173 << 6);
          v178 = v224;
          v180 = v228;
          v179 = v229;
          v181 = v233;
          (*(v229 + 16))(v228, *(v224 + 6) + *(v229 + 72) * v177, v233);
          v182 = *(*(v178 + 7) + 8 * v177);
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          v184 = *(v183 + 48);
          v185 = *(v179 + 32);
          v186 = v223;
          v187 = v180;
          v79 = v231;
          v185(v223, v187, v181);
          *&v186[v184] = v182;
          (*(*(v183 - 8) + 56))(v186, 0, 1, v183);

          v175 = v173;
          v188 = v186;
          v172 = v216;
LABEL_61:
          sub_22BAD7044(v188, v172, &qword_27D8DF080, &qword_22BB21260);
          v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          if ((*(*(v189 - 8) + 48))(v172, 1, v189) == 1)
          {
          }

          v190 = *(v172 + *(v189 + 48));
          v191 = v222;
          v192 = v233;
          (*v79)(v222, v172, v233);
          v193 = *(sub_22BACB200(0) + 2);

          if (!v193)
          {
            break;
          }

          (*v232)(v191, v192);

          v166 = v175;
          if (!v170)
          {
            goto LABEL_53;
          }
        }

        sub_22BACFB24(v191, 0);

        result = (*v232)(v191, v192);
        v166 = v175;
      }

      while (v170);
LABEL_53:
      if (v171 <= v166 + 1)
      {
        v174 = v166 + 1;
      }

      else
      {
        v174 = v171;
      }

      v175 = v174 - 1;
      while (1)
      {
        v173 = v166 + 1;
        if (__OFADD__(v166, 1))
        {
          goto LABEL_68;
        }

        if (v173 >= v171)
        {
          v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
          v195 = v223;
          (*(*(v194 - 8) + 56))(v223, 1, 1, v194);
          v188 = v195;
          v170 = 0;
          goto LABEL_61;
        }

        v170 = *(v227 + 8 * v173);
        ++v166;
        if (v170)
        {
          goto LABEL_60;
        }
      }
    }

    v100 = *&v98[*(v99 + 48)];
    v101 = v98;
    v102 = v233;
    (*v79)(v82, v101, v233);
    if (*(v100 + 16) && (v103 = *v225, *(*v225 + 16)) && (v104 = sub_22BACB688(v82), (v105 & 1) != 0))
    {
      v106 = *(*(v103 + 56) + 8 * v104);

      sub_22BAE1B54(v100, v217);

      result = (*v232)(v82, v102);
    }

    else
    {
      (*v232)(v82, v102);
    }

    v81 = v86;
  }

  if (v207 <= v81 + 1)
  {
    v85 = (v81 + 1);
  }

  else
  {
    v85 = v207;
  }

  v86 = v85 - 1;
  while (1)
  {
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v84 >= v207)
    {
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF128, &qword_22BB212E8);
      (*(*(v107 - 8) + 56))(v83, 1, 1, v107);
      v78 = 0;
      goto LABEL_25;
    }

    v78 = v212[v84].isa;
    ++v81;
    if (v78)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t static IntelligenceSupportAgent.fetchScreenSnapshots(for:parameters:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = type metadata accessor for IntelligenceSupportAgent.RequestParameters();
  *(v4 + 88) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 120) = *a2;

  return MEMORY[0x2822009F8](sub_22BAE6BE4, 0, 0);
}

uint64_t sub_22BAE6BE4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  sub_22BABE90C(*(v0 + 72), v3, type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v5 = *(v3 + 24);

  *(v3 + 24) = MEMORY[0x277D84FA0];
  v6 = *(v2 + 112);
  v7 = sub_22BB1EC7C();
  v8 = *(v7 - 8);
  (*(v8 + 8))(v3 + v6, v7);
  (*(v8 + 104))(v3 + v6, *MEMORY[0x277D74848], v7);
  v9 = swift_task_alloc();
  *(v0 + 104) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_22BAE6D9C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000026, 0x800000022BB26BA0, sub_22BAEEF68, v9, &type metadata for IntelligenceSupportAgent.ElementHierarchy);
}

uint64_t sub_22BAE6D9C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22BAE6EB4, 0, 0);
}

uint64_t sub_22BAE6EB4()
{
  v1 = *(v0 + 64);
  sub_22BAC1514(*(v0 + 96), type metadata accessor for IntelligenceSupportAgent.RequestParameters);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  *v1 = *(v0 + 16);
  v1[1] = v2;
  v1[2] = v3;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22BAE6F48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v47 = &v36 - v7;
  v8 = sub_22BB1F2EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22BB1EA5C();
  v12 = *(*(v48 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v48);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v37 = a1;
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v45 = *(v18 + 56);
    v46 = v19;
    v42 = (v9 + 48);
    v38 = v9;
    v43 = (v9 + 32);
    v44 = (v18 - 8);
    v21 = MEMORY[0x277D84F90];
    v39 = v8;
    v40 = v5;
    v41 = v18;
    do
    {
      v22 = v48;
      v46(v16, v20, v48, v14);
      sub_22BB1EA2C();
      v23 = v47;
      sub_22BAD7044(v5, v47, &qword_27D8DEFD8, &qword_22BB211E0);
      (*v44)(v16, v22);
      if ((*v42)(v23, 1, v8) == 1)
      {
        sub_22BAC81E8(v23, &qword_27D8DEFD8, &qword_22BB211E0);
      }

      else
      {
        v24 = *v43;
        (*v43)(v49, v23, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_22BAF604C(0, v21[2] + 1, 1, v21);
        }

        v26 = v21[2];
        v25 = v21[3];
        if (v26 >= v25 >> 1)
        {
          v21 = sub_22BAF604C(v25 > 1, v26 + 1, 1, v21);
        }

        v21[2] = v26 + 1;
        v27 = v21 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26;
        v8 = v39;
        v24(v27, v49, v39);
        v5 = v40;
      }

      v20 += v45;
      --v17;
    }

    while (v17);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v28 = sub_22BB1DB2C(v21);

  v29 = sub_22BADEC04(v28);

  v50 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF070, &qword_22BB21258);
  sub_22BAC8324(&qword_281424148, &unk_27D8DF070, &qword_22BB21258);
  v30 = sub_22BB1F63C();
  v32 = v31;

  v34 = *(v36 + 24);
  MEMORY[0x28223BE20](v33);
  *(&v36 - 4) = v37;
  *(&v36 - 3) = v30;
  *(&v36 - 2) = v32;
  os_unfair_lock_lock((v34 + 40));
  sub_22BAEEDC4((v34 + 16));
  os_unfair_lock_unlock((v34 + 40));
}

uint64_t sub_22BAE73CC(uint64_t *a1, uint64_t a2, unsigned int (**a3)(_BYTE *, uint64_t, uint64_t), void (*a4)(char *, uint64_t, uint64_t))
{
  v150 = a3;
  v151 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF080, &qword_22BB21260);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v161 = &v131[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v157 = &v131[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD8, &qword_22BB211E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v159 = &v131[-v13];
  v14 = sub_22BB1F2EC();
  v155 = *(v14 - 8);
  v15 = *(v155 + 64);
  MEMORY[0x28223BE20](v14);
  v156 = &v131[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v154 = &v131[-v18];
  MEMORY[0x28223BE20](v19);
  v21 = &v131[-v20];
  MEMORY[0x28223BE20](v22);
  v136 = &v131[-v23];
  MEMORY[0x28223BE20](v24);
  v26 = &v131[-v25];
  v141 = sub_22BB1EA5C();
  v153 = *(v141 - 8);
  v27 = *(v153 + 64);
  MEMORY[0x28223BE20](v141);
  v29 = &v131[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_22BB1F45C();
  v158 = *(v147 - 8);
  v30 = *(v158 + 64);
  MEMORY[0x28223BE20](v147);
  v140 = &v131[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v32);
  v139 = &v131[-v33];
  MEMORY[0x28223BE20](v34);
  v36 = &v131[-v35];
  sub_22BB1F43C();
  v37 = a2;

  v38 = sub_22BB1F44C();
  v39 = sub_22BB1F8CC();
  v152 = a4;

  v40 = os_log_type_enabled(v38, v39);
  v160 = v14;
  v146 = v21;
  v135 = v26;
  v143 = v29;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v162 = v42;
    *v41 = 134349570;
    v43 = *(v37 + 16);
    *(v41 + 4) = v43;

    *(v41 + 12) = 2082;
    if (v43 == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = 115;
    }

    if (v43 == 1)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE100000000000000;
    }

    v46 = sub_22BABDC4C(v44, v45, &v162);
    v14 = v160;

    *(v41 + 14) = v46;
    v29 = v143;
    *(v41 + 22) = 2082;
    v47 = v135;
    *(v41 + 24) = sub_22BABDC4C(v150, v152, &v162);
    _os_log_impl(&dword_22BABB000, v38, v39, "    Provider returned %{public}ld fragment%{public}s \n    for [%{public}s]", v41, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23189DF20](v42, -1, -1);
    MEMORY[0x23189DF20](v41, -1, -1);
  }

  else
  {
    v47 = v26;
  }

  v48 = v158;
  v145 = *(v158 + 8);
  v145(v36, v147);
  v49 = v48;
  v158 = sub_22BAF6848(MEMORY[0x277D84F90]);
  v51 = *(v37 + 16);
  v52 = v141;
  if (v51)
  {
    v152 = *(v153 + 16);
    v53 = v37 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v150 = (v155 + 48);
    v138 = (v155 + 32);
    v142 = (v155 + 16);
    v137 = (v155 + 8);
    v144 = v49 + 8;
    v153 += 16;
    v148 = *(v153 + 56);
    v149 = (v153 - 8);
    *&v50 = 136446210;
    v132 = v50;
    v152(v29, v53, v141);
    while (1)
    {
      v54 = v159;
      sub_22BB1EA2C();
      if ((*v150)(v54, 1, v14) == 1)
      {
        v55 = v47;
        sub_22BAC81E8(v159, &qword_27D8DEFD8, &qword_22BB211E0);
        v56 = v139;
        sub_22BB1F43C();
        v57 = sub_22BB1F44C();
        v58 = sub_22BB1F8BC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_22BABB000, v57, v58, "received fragment from provider with missing requestID", v59, 2u);
          v60 = v59;
          v29 = v143;
          MEMORY[0x23189DF20](v60, -1, -1);
        }

        v145(v56, v147);
        (*v149)(v29, v52);
        v14 = v160;
        v47 = v55;
      }

      else
      {
        (*v138)(v47, v159, v14);
        v61 = *v151;
        if (*(*v151 + 16) && (v62 = sub_22BACB688(v47), (v63 & 1) != 0))
        {
          v64 = *(*(v61 + 56) + 8 * v62);
          v65 = *(v64 + OBJC_IVAR____TtCC26UIIntelligenceSupportAgent24IntelligenceSupportAgentP33_F6EEC212C1562732DDB5A4B69A480AD213ActiveRequest_collator);

          sub_22BB0A000(v29);
          v66 = *v142;
          v67 = v136;
          (*v142)(v136, v47, v14);

          v68 = v158;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v162 = v68;
          v71 = sub_22BACB688(v67);
          v72 = *(v68 + 16);
          v73 = (v70 & 1) == 0;
          v74 = v72 + v73;
          if (__OFADD__(v72, v73))
          {
            goto LABEL_56;
          }

          v75 = v70;
          if (*(v68 + 24) >= v74)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_22BAEC3A0();
            }
          }

          else
          {
            sub_22BAE9F74(v74, isUniquelyReferenced_nonNull_native);
            v76 = sub_22BACB688(v136);
            if ((v75 & 1) != (v77 & 1))
            {
              goto LABEL_58;
            }

            v71 = v76;
          }

          v47 = v135;
          v158 = v162;
          if (v75)
          {
            v92 = v162[7];
            v93 = *(v92 + 8 * v71);
            *(v92 + 8 * v71) = v64;
          }

          else
          {
            v162[(v71 >> 6) + 8] |= 1 << v71;
            v66(*(v158 + 48) + *(v155 + 72) * v71, v136, v160);
            v94 = v158;
            *(*(v158 + 56) + 8 * v71) = v64;
            v95 = *(v94 + 16);
            v96 = __OFADD__(v95, 1);
            v97 = v95 + 1;
            if (v96)
            {
              goto LABEL_57;
            }

            *(v94 + 16) = v97;
          }

          v98 = *v137;
          v99 = v160;
          (*v137)(v136, v160);
          v98(v47, v99);
          v14 = v99;
          v29 = v143;
          v52 = v141;
          (*v149)(v143, v141);
        }

        else
        {
          v78 = v140;
          sub_22BB1F43C();
          (*v142)(v146, v47, v14);
          v79 = sub_22BB1F44C();
          v80 = v14;
          v81 = sub_22BB1F8BC();
          if (os_log_type_enabled(v79, v81))
          {
            v82 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v162 = v133;
            *v82 = v132;
            v83 = sub_22BB1F2BC();
            v85 = v84;
            v134 = *v137;
            v134(v146, v80);
            v86 = sub_22BABDC4C(v83, v85, &v162);

            *(v82 + 4) = v86;
            _os_log_impl(&dword_22BABB000, v79, v81, "received fragment from provider for invalid or expired request %{public}s", v82, 0xCu);
            v87 = v133;
            __swift_destroy_boxed_opaque_existential_0(v133);
            v88 = v87;
            v89 = v135;
            MEMORY[0x23189DF20](v88, -1, -1);
            v90 = v82;
            v29 = v143;
            MEMORY[0x23189DF20](v90, -1, -1);

            v145(v140, v147);
            v47 = v89;
            v134(v89, v80);
          }

          else
          {

            v91 = *v137;
            (*v137)(v146, v80);
            v145(v78, v147);
            v91(v47, v80);
          }

          v52 = v141;
          (*v149)(v29, v141);
          v14 = v80;
        }
      }

      v53 += v148;
      if (!--v51)
      {
        break;
      }

      v152(v29, v53, v52);
    }
  }

  v100 = 0;
  v102 = v158 + 64;
  v101 = *(v158 + 64);
  v103 = 1 << *(v158 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & v101;
  v106 = (v103 + 63) >> 6;
  v107 = (v155 + 32);
  v159 = (v155 + 8);
  v152 = (v155 + 32);
  v153 = v155 + 16;
  if ((v104 & v101) == 0)
  {
    goto LABEL_41;
  }

  do
  {
    while (1)
    {
      v108 = v100;
LABEL_48:
      v111 = __clz(__rbit64(v105));
      v105 &= v105 - 1;
      v112 = v111 | (v108 << 6);
      v113 = v158;
      v115 = v154;
      v114 = v155;
      (*(v155 + 16))(v154, *(v158 + 48) + *(v155 + 72) * v112, v14);
      v116 = *(*(v113 + 56) + 8 * v112);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      v118 = v14;
      v119 = *(v117 + 48);
      v120 = *(v114 + 32);
      v121 = v161;
      v122 = v115;
      v107 = v152;
      v120(v161, v122, v118);
      *&v121[v119] = v116;
      (*(*(v117 - 8) + 56))(v121, 0, 1, v117);

      v110 = v108;
LABEL_49:
      v123 = v157;
      sub_22BAD7044(v161, v157, &qword_27D8DF080, &qword_22BB21260);
      v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      if ((*(*(v124 - 8) + 48))(v123, 1, v124) == 1)
      {
      }

      v125 = *&v123[*(v124 + 48)];
      v126 = v156;
      v127 = v123;
      v14 = v160;
      (*v107)(v156, v127, v160);
      v128 = *(sub_22BACB200(0) + 2);

      if (!v128)
      {
        break;
      }

      (*v159)(v126, v14);

      v100 = v110;
      if (!v105)
      {
        goto LABEL_41;
      }
    }

    sub_22BACFB24(v126, 0);

    (*v159)(v126, v14);
    v100 = v110;
  }

  while (v105);
LABEL_41:
  if (v106 <= v100 + 1)
  {
    v109 = v100 + 1;
  }

  else
  {
    v109 = v106;
  }

  v110 = v109 - 1;
  while (1)
  {
    v108 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if (v108 >= v106)
    {
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFE0, &qword_22BB211E8);
      (*(*(v129 - 8) + 56))(v161, 1, 1, v129);
      v105 = 0;
      goto LABEL_49;
    }

    v105 = *(v102 + 8 * v108);
    ++v100;
    if (v105)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_22BB1FDBC();
  __break(1u);
  return result;
}

unint64_t IntelligenceSupportAgent.Client.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E7528;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7053;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105747;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_22BAE827C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E7528;
  v3 = 0xD000000000000013;
  v4 = 0x6867696C746F7053;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1769105747;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22BAE8320(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_22BAE8330@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22BAE83EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_22BABDC4C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_22BAE8448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DEFD0, &qword_22BB211D8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_22BAE853C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_22BAE854C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_22BAE856C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionID();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20]();
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF118, &unk_22BB22070);
  v44 = a2;
  result = sub_22BB1FC1C();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v42 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v44)
      {
        sub_22BAC3614(v28, v9, type metadata accessor for ConnectionID);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      else
      {
        sub_22BABE90C(v28, v9, type metadata accessor for ConnectionID);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v9);
      v30 = *(v43 + 20);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v13 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v13 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_22BAC3614(v9, *(v14 + 48) + v27 * v22, type metadata accessor for ConnectionID);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v13 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22BAE8950(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = _s17AsyncProviderTaskVMa();
  v46 = *(v6 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF050, &qword_22BB21240);
  v47 = a2;
  result = sub_22BB1FC1C();
  v13 = result;
  if (*(v10 + 16))
  {
    v43 = v3;
    v44 = v9;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    v45 = v10;
    while (v18)
    {
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v27 = v24 | (v14 << 6);
      v28 = *(v46 + 72);
      v29 = *(v10 + 48) + v28 * v27;
      if (v47)
      {
        sub_22BAC3614(v29, v9, _s17AsyncProviderTaskVMa);
        v30 = *(v10 + 56);
        v31 = v9;
        v32 = *(v30 + 8 * v27);
      }

      else
      {
        sub_22BABE90C(v29, v9, _s17AsyncProviderTaskVMa);
        v33 = *(v10 + 56);
        v31 = v9;
        v32 = *(v33 + 8 * v27);
        swift_unknownObjectRetain();
      }

      v34 = *(v13 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v31);
      result = sub_22BB1FE0C();
      v35 = -1 << *(v13 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v20 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v10 = v45;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v20 + 8 * v37);
          if (v41 != -1)
          {
            v21 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v36) & ~*(v20 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v10 = v45;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = *(v13 + 48) + v28 * v21;
      v23 = v44;
      result = sub_22BAC3614(v44, v22, _s17AsyncProviderTaskVMa);
      *(*(v13 + 56) + 8 * v21) = v32;
      v9 = v23;
      ++*(v13 + 16);
    }

    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v15[v14];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v18 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v15, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_22BAE8CEC(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_22BB1EA5C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22BB1E9DC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF090, &qword_22BB21270);
  v52 = a2;
  result = sub_22BB1FC1C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_22BAC36FC(&qword_281425100, MEMORY[0x277D746D8]);
      result = sub_22BB1F61C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_22BAE9194(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionID();
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF130, &qword_22BB212F0);
  v44 = a2;
  result = sub_22BB1FC1C();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v41 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v42 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v44)
      {
        sub_22BAC3614(v28, v9, type metadata accessor for ConnectionID);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      else
      {
        sub_22BABE90C(v28, v9, type metadata accessor for ConnectionID);
        v45 = *(*(v13 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_22BB1FDDC();
      MEMORY[0x23189D810](*v9);
      v30 = *(v43 + 20);
      sub_22BB1EADC();
      sub_22BAC36FC(&qword_2814250E0, MEMORY[0x277D74708]);
      sub_22BB1F62C();
      result = sub_22BB1FE0C();
      v31 = -1 << *(v14 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v13 = v41;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v13 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_22BAC3614(v9, *(v14 + 48) + v27 * v22, type metadata accessor for ConnectionID);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v13 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v16, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_22BAE9578(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8DF018, &qword_22BB21218);
  v38 = a2;
  result = sub_22BB1FC1C();
  v8 = result;
  if (*(v5 + 16))
  {
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22BAE9818(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_22BB1E55C();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8DF008, &unk_22BB21F90);
  v46 = a2;
  result = sub_22BB1FC1C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_22BB1FDDC();
      sub_22BB1F6EC();
      result = sub_22BB1FE0C();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}