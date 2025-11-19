void *sub_227ECB1E8(void *a1, int64_t a2, char a3)
{
  result = sub_227ECB208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_227ECB208(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E510, &qword_227F2DE90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E518, &qword_227F2DE98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_227ECB350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E498, &qword_227F2DE38);
  result = sub_227F2BAA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_227F2BD04();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_227ECB5C0(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_227F2B274();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
  v52 = a2;
  result = sub_227F2BAA4();
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
      sub_227ECDAD0(&qword_27D80E488, MEMORY[0x277CC95F0]);
      result = sub_227F2B5F4();
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

uint64_t sub_227ECBA70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
  v39 = a2;
  result = sub_227F2BAA4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_227F2BD14();
      sub_227F2B704();
      result = sub_227F2BD44();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_227ECBD14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_227ECA918(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_227ECB350(v14, a3 & 1);
      v18 = *v4;
      result = sub_227ECA918(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_227F2BCB4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_227ECC2E8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_227ECBE60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_227F2B274();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_227ECA880(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_227ECC444();
      goto LABEL_7;
    }

    sub_227ECB5C0(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_227ECA880(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_227ECC1E8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_227F2BCB4();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_227ECC070(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_227ECA808(a2, a3);
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
      sub_227ECBA70(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_227ECA808(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_227F2BCB4();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_227ECC7A0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_227ECC1E8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_227F2B274();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_227ECC2E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E498, &qword_227F2DE38);
  v2 = *v0;
  v3 = sub_227F2BA94();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

char *sub_227ECC444()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_227F2B274();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
  v6 = *v0;
  v7 = sub_227F2BA94();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

id sub_227ECC7A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
  v2 = *v0;
  v3 = sub_227F2BA94();
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

unint64_t sub_227ECC90C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4D0, &qword_227F2DE58);
    v3 = sub_227F2BAB4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_227ECA808(v5, v6);
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

unint64_t sub_227ECCA20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4E8, &qword_227F2DE70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E480, &qword_227F2DE30);
    v8 = sub_227F2BAB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_227EC2180(v10, v6, &qword_27D80E4E8, &qword_227F2DE70);
      result = sub_227ECA880(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_227F2B274();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
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

unint64_t sub_227ECCC74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_227F2BAB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_227ECA808(v7, v8);
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

void sub_227ECCD70(void *a1)
{
  v1 = a1;
  oslog = sub_227F2B304();
  v2 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = [v1 taskIdentifier];

    _os_log_impl(&dword_227EB2000, oslog, v2, "task created %ld", v3, 0xCu);
    MEMORY[0x22AAAD240](v3, -1, -1);
    v4 = oslog;
  }

  else
  {

    v4 = v1;
  }
}

void sub_227ECCE5C(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 transactionMetrics];
  sub_227EB7BD0(0, &qword_27D80E4B8, 0x277CCAD60);
  v6 = sub_227F2B7A4();

  if (v6 >> 62)
  {
    v7 = sub_227F2BA84();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  v25 = v6 & 0xC000000000000001;
  v24 = a1;
  do
  {
    if (v25)
    {
      v17 = MEMORY[0x22AAAC680](v8, v6);
    }

    else
    {
      v17 = *(v6 + 8 * v8 + 32);
    }

    v18 = v17;
    v14 = a1;
    v19 = v18;
    v20 = sub_227F2B304();
    v21 = sub_227F2B8D4();

    if (os_log_type_enabled(v20, v21))
    {
      v9 = swift_slowAlloc();
      v10 = v7;
      v11 = v6;
      v12 = v3;
      v13 = swift_slowAlloc();
      *v9 = 134218242;
      *(v9 + 4) = [v14 taskIdentifier];

      *(v9 + 12) = 2112;
      *(v9 + 14) = v19;
      *v13 = v19;
      v14 = v19;
      _os_log_impl(&dword_227EB2000, v20, v21, "task %ld metrics %@", v9, 0x16u);
      sub_227EB8430(v13, &qword_27D80E4A0, &qword_227F2DE40);
      v15 = v13;
      v3 = v12;
      v6 = v11;
      v7 = v10;
      MEMORY[0x22AAAD240](v15, -1, -1);
      v16 = v9;
      a1 = v24;
      MEMORY[0x22AAAD240](v16, -1, -1);
    }

    else
    {
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_13:

  v22 = [a1 taskIdentifier];

  sub_227EC8BFC(v22, a2);
}

void sub_227ECD0D4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  oslog = sub_227F2B304();
  v6 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218496;
    *(v7 + 4) = [v5 taskIdentifier];

    *(v7 + 12) = 2048;
    *(v7 + 14) = a2;
    *(v7 + 22) = 2048;
    *(v7 + 24) = a3;
    _os_log_impl(&dword_227EB2000, oslog, v6, "downloadTask %ld didResumeAtOffset %lld expectedTotalBytes %lld", v7, 0x20u);
    MEMORY[0x22AAAD240](v7, -1, -1);
    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

void sub_227ECD1E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  oslog = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218752;
    *(v9 + 4) = [v7 taskIdentifier];

    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    *(v9 + 22) = 2048;
    *(v9 + 24) = a3;
    *(v9 + 32) = 2048;
    *(v9 + 34) = a4;
    _os_log_impl(&dword_227EB2000, oslog, v8, "downloadTask %ld didWriteData %lld totalBytesWritten %lld totalBytesExpectedToWrite %lld", v9, 0x2Au);
    MEMORY[0x22AAAD240](v9, -1, -1);
    v10 = oslog;
  }

  else
  {

    v10 = v7;
  }
}

uint64_t dispatch thunk of URLSessionProtocol.allTasks.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227ECDB20;

  return v9(a1, a2);
}

uint64_t dispatch thunk of URLSessionProtocol.downloadTasks.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227EC3440;

  return v9(a1, a2);
}

uint64_t type metadata accessor for DownloadManager()
{
  result = qword_2813CDB80;
  if (!qword_2813CDB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ECD6D8()
{
  result = sub_227F2B334();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_227F2B114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_227ECD7FC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227ECD80C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ECD87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_227ECD8EC()
{
  result = qword_27D80E4C0;
  if (!qword_27D80E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E4C0);
  }

  return result;
}

uint64_t sub_227ECD940(uint64_t a1)
{
  v2 = type metadata accessor for DownloadResponse();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ECDA1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_227ECDAD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DownloadOutcome.statusCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadOutcome();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v9, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v9, v5);
      v11 = *&v5[*(v2 + 28)];
      sub_227ECE8D8(v5, type metadata accessor for FileInfo);
    }

    else
    {
      return 304;
    }
  }

  else
  {
    v11 = *(v9 + 1);
    v12 = v9[16];
    v13 = *(v9 + 4);
  }

  return v11;
}

uint64_t type metadata accessor for DownloadOutcome()
{
  result = qword_27D80E590;
  if (!qword_27D80E590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ECDCD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ECDD3C()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadOutcome();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v9, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v9, v5);
      v11 = *&v5[*(v2 + 28)];
      sub_227ECE8D8(v5, type metadata accessor for FileInfo);
    }

    else
    {
      v11 = 304;
    }
  }

  else
  {
    v11 = *(v9 + 1);
    v12 = v9[16];
    v13 = *(v9 + 4);

    if (v12)
    {
      return 0x676E697373694DLL;
    }
  }

  v15[1] = v11;
  return sub_227F2BC24();
}

unint64_t DownloadOutcome.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ContainerizableURL(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227F2B114();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FileInfo(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DownloadOutcome();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227ECE39C(v1, v18, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v18, v14);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_227F2B9A4();
      MEMORY[0x22AAAC3E0](0x656C69662077654ELL, 0xEE00206874697720);
      v20 = &v14[*(v11 + 24)];
      if (*(v20 + 1))
      {
        v21 = *v20;
        v34 = 1734440005;
        v35 = 0xE400000000000000;
        MEMORY[0x22AAAC3E0](v21);
        v22 = v34;
        v23 = v35;
      }

      else
      {
        v23 = 0xEC00000067617445;
        v22 = 0x20676E697373696DLL;
      }

      MEMORY[0x22AAAC3E0](v22, v23);

      MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F33DB0);
      sub_227ECE39C(&v14[*(v11 + 20)], v5, type metadata accessor for ContainerizableURL);
      (*(v7 + 32))(v10, v5, v6);
      sub_227ECE404();
      v29 = sub_227F2BC24();
      MEMORY[0x22AAAC3E0](v29);

      (*(v7 + 8))(v10, v6);
      MEMORY[0x22AAAC3E0](0x206D6F726620, 0xE600000000000000);
      v30 = sub_227F2BC24();
      MEMORY[0x22AAAC3E0](v30);

      MEMORY[0x22AAAC3E0](0x737574617473202CLL, 0xEF203A65646F6320);
      v31 = sub_227ECDD3C();
      MEMORY[0x22AAAC3E0](v31);

      v32 = v36;
      sub_227ECE8D8(v14, type metadata accessor for FileInfo);
      return v32;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v24 = *v18;
    v25 = v18[4];
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_227F2B9A4();
    MEMORY[0x22AAAC3E0](0x203A726F727245, 0xE700000000000000);
    swift_getErrorValue();
    sub_227F2BC54();
    MEMORY[0x22AAAC3E0](543584032, 0xE400000000000000);
    swift_getErrorValue();
    swift_getDynamicType();
    v26 = sub_227F2BE44();
    MEMORY[0x22AAAC3E0](v26);

    MEMORY[0x22AAAC3E0](0xD000000000000014, 0x8000000227F33DF0);
    v27 = sub_227ECDD3C();
    MEMORY[0x22AAAC3E0](v27);

    return v36;
  }
}

uint64_t sub_227ECE39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227ECE404()
{
  result = qword_27D80E008;
  if (!qword_27D80E008)
  {
    sub_227F2B114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E008);
  }

  return result;
}

uint64_t _s21RapidResourceDelivery15DownloadOutcomeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileInfo(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadOutcome();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E5A0, &qword_227F2DF28);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v34 - v18;
  v20 = v34 + *(v17 + 56) - v18;
  sub_227ECE39C(a1, v34 - v18, type metadata accessor for DownloadOutcome);
  sub_227ECE39C(a2, v20, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_227ECE39C(v19, v14, type metadata accessor for DownloadOutcome);
    v23 = *v14;
    v24 = *(v14 + 4);
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *(v14 + 3);
      v26 = v14[16];
      v27 = *(v14 + 1);
      v29 = *v20;
      v28 = *(v20 + 1);
      v30 = v20[16];
      v31 = *(v20 + 3);
      v32 = *(v20 + 4);
      v38[0] = v23;
      v38[1] = v27;
      v39 = v26;
      v40 = v25;
      v41 = v24;
      v34[0] = v29;
      v34[1] = v28;
      v35 = v30;
      v36 = v31;
      v37 = v32;
      v22 = _s21RapidResourceDelivery17DownloadErrorInfoV2eeoiySbAC_ACtFZ_0(v38, v34);

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_227ECE39C(v19, v12, type metadata accessor for DownloadOutcome);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_227ECDCD8(v20, v7);
      v22 = static FileInfo.== infix(_:_:)(v12, v7);
      sub_227ECE8D8(v7, type metadata accessor for FileInfo);
      sub_227ECE8D8(v12, type metadata accessor for FileInfo);
LABEL_12:
      sub_227ECE8D8(v19, type metadata accessor for DownloadOutcome);
      return v22 & 1;
    }

    sub_227ECE8D8(v12, type metadata accessor for FileInfo);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_227ECE870(v19);
    v22 = 0;
    return v22 & 1;
  }

  sub_227ECE8D8(v19, type metadata accessor for DownloadOutcome);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_227ECE804()
{
  result = type metadata accessor for FileInfo(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_227ECE870(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E5A0, &qword_227F2DF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ECE8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DownloadResponse.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadResponse() + 20));
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for DownloadResponse()
{
  result = qword_27D80E5A8;
  if (!qword_27D80E5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadResponse.allHeaderFields.getter()
{
  v1 = *(v0 + *(type metadata accessor for DownloadResponse() + 24));
}

void *DownloadResponse.error.getter()
{
  v1 = type metadata accessor for DownloadOutcome();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_227ECE39C(v0, v4, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v6 = EnumCaseMultiPayload;
    result = 0;
    if (v6 == 1)
    {
      sub_227ECEC84(v4, type metadata accessor for DownloadOutcome);
      return 0;
    }
  }

  else
  {
    v8 = *v4;
    v9 = v4[4];
    v10 = v8;

    return v8;
  }

  return result;
}

uint64_t DownloadResponse.statusCode.getter()
{
  v1 = v0;
  v2 = type metadata accessor for FileInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadOutcome();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v1, v9, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v9, v5);
      v11 = *&v5[*(v2 + 28)];
      sub_227ECEC84(v5, type metadata accessor for FileInfo);
    }

    else
    {
      return 304;
    }
  }

  else
  {
    v11 = *(v9 + 1);
    v12 = v9[16];
    v13 = *(v9 + 4);
  }

  return v11;
}

uint64_t sub_227ECEC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DownloadResponse.downloadedFile.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContainerizableURL(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FileInfo(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DownloadOutcome();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECE39C(v2, v15, type metadata accessor for DownloadOutcome);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227ECDCD8(v15, v11);
      sub_227ECE39C(&v11[*(v8 + 20)], v7, type metadata accessor for ContainerizableURL);
      sub_227ECEC84(v11, type metadata accessor for FileInfo);
      v17 = sub_227F2B114();
      v18 = *(v17 - 8);
      (*(v18 + 32))(a1, v7, v17);
      return (*(v18 + 56))(a1, 0, 1, v17);
    }
  }

  else
  {
    sub_227ECEC84(v15, type metadata accessor for DownloadOutcome);
  }

  v20 = sub_227F2B114();
  return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
}

uint64_t DownloadResponse.description.getter()
{
  sub_227F2B9A4();

  strcpy(v10, "    Outcome: ");
  HIWORD(v10[1]) = -4864;
  v1 = DownloadOutcome.description.getter();
  MEMORY[0x22AAAC3E0](v1);

  MEMORY[0x22AAAC3E0](0x74654D202020200ALL, 0xEE00203A73636972);
  v2 = type metadata accessor for DownloadResponse();
  v3 = *(v0 + *(v2 + 20));
  if (v3)
  {
    v4 = 0x657463656C6C6F43;
  }

  else
  {
    v4 = 0x6C6C6F4320746F4ELL;
  }

  if (v3)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v5 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v4, v5);

  MEMORY[0x22AAAC3E0](0x616548202020200ALL, 0xEE00203A73726564);
  v6 = *(v0 + *(v2 + 24));
  if (v6)
  {
    v7 = 0x657463656C6C6F43;
  }

  else
  {
    v7 = 0x6C6C6F4320746F4ELL;
  }

  if (v6)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v7, v8);

  return v10[0];
}

uint64_t sub_227ECF0E4(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_227ECA808(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_227F2BC64();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
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
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21RapidResourceDelivery16DownloadResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static DownloadOutcome.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DownloadResponse();
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_227ECF484();
    v8 = v7;
    v9 = v6;
    v10 = sub_227F2B914();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {

      v14 = sub_227ECF0E4(v12, v13);

      if (v14)
      {
        return 1;
      }
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

void sub_227ECF390()
{
  type metadata accessor for DownloadOutcome();
  if (v0 <= 0x3F)
  {
    sub_227ECF42C();
    if (v1 <= 0x3F)
    {
      sub_227ECF4D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_227ECF42C()
{
  if (!qword_27D80E5B8)
  {
    sub_227ECF484();
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80E5B8);
    }
  }
}

unint64_t sub_227ECF484()
{
  result = qword_27D80E5C0;
  if (!qword_27D80E5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80E5C0);
  }

  return result;
}

void sub_227ECF4D0()
{
  if (!qword_27D80E5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E5D0, &qword_227F2DFB8);
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80E5C8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t DownloadTask.taskIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t DownloadTask.taskState.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t DownloadTask.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void DownloadTask.manager.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DownloadTask.manager.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_227ECF7E8;
}

void sub_227ECF7E8(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_227ECF864(uint64_t a1, uint64_t *a2, void *a3)
{
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v8 = sub_227F2B114();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a1, v8);
  sub_227ECDA1C(a2, v3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  if ((*(v11 + 24))(v10, v11) == 1)
  {
    v12 = a2[3];
    v13 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v12);
    (*(v13 + 128))(v12, v13);

    (*(v9 + 8))(a1, v8);
  }

  else
  {
    (*(v9 + 8))(a1, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t DownloadTask.progress.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t DownloadTask.earliestBeginDate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t DownloadTask.countOfBytesClientExpectsToReceive.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v2 = *(v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t DownloadTask.wait()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for DownloadResponse();
  v2[7] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = sub_227F2B274();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227ECFC1C, 0, 0);
}

uint64_t sub_227ECFC1C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[12] = Strong;
  if (!Strong)
  {
    return sub_227F2BA74();
  }

  v3 = Strong;
  v4 = v0[11];
  v5 = v0[6];
  sub_227F2B264();
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[14] = v7;
  v7[2] = v3;
  v7[3] = v5;
  v7[4] = v4;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_227ECFDD0;
  v11 = v0[7];
  v10 = v0[8];

  return MEMORY[0x282200830](v10, &unk_227F2DFD0, v6, sub_227ED08B4, v7, 0, 0, v11);
}

uint64_t sub_227ECFDD0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_227ECFFA8;
  }

  else
  {
    v6 = *(v2 + 104);
    v5 = *(v2 + 112);

    v4 = sub_227ECFEF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227ECFEF4()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);

  sub_227ED08C0(v4, v5);
  (*(v3 + 8))(v1, v2);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_227ECFFA8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v3, v4);

  v7 = *(v0 + 8);
  v8 = *(v0 + 128);

  return v7();
}

uint64_t sub_227ED0060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_227ED0084, 0, 0);
}

uint64_t sub_227ED0084()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = type metadata accessor for DownloadResponse();
  *v4 = v0;
  v4[1] = sub_227ED0178;
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x292874696177, 0xE600000000000000, sub_227ED0B70, v2, v5);
}

uint64_t sub_227ED0178()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227ED02B4, 0, 0);
  }

  else
  {
    v4 = v3[6];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_227ED02B4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_227ED0318(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227ED03CC;

  return sub_227ED0060(a1, v4, v5, v6);
}

uint64_t sub_227ED03CC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_227ED04C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227F2B274();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v13 = *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v14 = *(a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v13);
  v15 = (*(v14 + 8))(v13, v14);
  v38 = a2;
  sub_227EC712C(a1, v15, a4);
  v16 = v12[3];
  v17 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v16);
  if (((*(v17 + 24))(v16, v17) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (qword_2813CD568 != -1)
    {
      swift_once();
    }

    v18 = sub_227F2B334();
    __swift_project_value_buffer(v18, qword_2813CE040);
    v19 = v37;
    v20 = *(v37 + 16);
    v36 = a4;
    v20(v11, a4, v8);

    v21 = sub_227F2B304();
    v22 = sub_227F2B8D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v23 = 134218242;
      HIDWORD(v34) = v22;
      v25 = v12[3];
      v24 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v25);
      *(v23 + 4) = (*(v24 + 8))(v25, v24);

      *(v23 + 12) = 2080;
      sub_227ED0B7C();
      v26 = sub_227F2BC24();
      v28 = v27;
      (*(v19 + 8))(v11, v8);
      v29 = sub_227ECAC40(v26, v28, &v39);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_227EB2000, v21, BYTE4(v34), "cancelingContinuation early: %ld ticket: %s", v23, 0x16u);
      v30 = v35;
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAAD240](v30, -1, -1);
      MEMORY[0x22AAAD240](v23, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v11, v8);
    }

    v31 = v12[3];
    v32 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v31);
    v33 = (*(v32 + 8))(v31, v32);
    sub_227EC724C(v33, v36);
  }
}

void sub_227ED083C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 24);
  v5 = *(a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask), v4);
  v6 = (*(v5 + 8))(v4, v5);
  sub_227EC724C(v6, a3);
}

uint64_t sub_227ED08C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DownloadTask.deinit()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v2 = sub_227F2B114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask));
  MEMORY[0x22AAAD310](v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager);
  return v0;
}

uint64_t DownloadTask.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_remoteURL;
  v2 = sub_227F2B114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask));
  MEMORY[0x22AAAD310](v0 + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_manager);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for DownloadTask()
{
  result = qword_27D80E5D8;
  if (!qword_27D80E5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ED0AB4()
{
  result = sub_227F2B114();
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

unint64_t sub_227ED0B7C()
{
  result = qword_27D80E5E8;
  if (!qword_27D80E5E8)
  {
    sub_227F2B274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E5E8);
  }

  return result;
}

uint64_t sub_227ED0BD4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_227EB8430(a1, &qword_27D80E620, &unk_227F2E0B0);
    sub_227ED2360(a2, v8);
    v14 = sub_227F2B274();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_227EB8430(v8, &qword_27D80E620, &unk_227F2E0B0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_227ECBE60(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_227F2B274();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_227ED0E08(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = sub_227F2B274();
  v40 = *(v11 - 8);
  v41 = v11;
  v12 = *(v40 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DownloadResponse();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v39 - v21;
  v23 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v2 + v23, v22);
  v24 = type metadata accessor for DownloadOutcome();
  v25 = (*(*(v24 - 8) + 48))(v22, 1, v24);
  sub_227EB8430(v22, &unk_27D80E4A8, &qword_227F2DE48);
  if (v25 != 1)
  {
    sub_227ED19C4(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    sub_227F2B7E4();
    return v25 == 1;
  }

  swift_beginAccess();
  v26 = *(v2 + 16);
  if (*(v26 + 16) && (v27 = *(v2 + 16), v28 = sub_227ECA880(v42), (v29 & 1) != 0))
  {
    v30 = v28;
    v31 = *(v26 + 56);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v33 = *(v32 - 8);
    (*(v33 + 16))(v8, v31 + *(v33 + 72) * v30, v32);
    (*(v33 + 56))(v8, 0, 1, v32);
  }

  else
  {
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
  }

  swift_endAccess();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v36 = *(v35 - 8);
  v37 = (*(v36 + 48))(v8, 1, v35);
  result = sub_227EB8430(v8, &qword_27D80E620, &unk_227F2E0B0);
  if (v37 == 1)
  {
    (*(v40 + 16))(v14, v42, v41);
    (*(v36 + 16))(v10, a1, v35);
    (*(v36 + 56))(v10, 0, 1, v35);
    swift_beginAccess();
    sub_227ED0BD4(v10, v14);
    swift_endAccess();
    return v25 == 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227ED131C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E620, &unk_227F2E0B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  swift_beginAccess();
  sub_227ED2360(a1, v5);
  swift_endAccess();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_227EB8430(v5, &qword_27D80E620, &unk_227F2E0B0);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_227F2B7F4();
  sub_227ED29D8(&qword_27D80E628, MEMORY[0x277D85678]);
  v12 = swift_allocError();
  sub_227F2B5B4();
  v13[1] = v12;
  sub_227F2B7D4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_227ED153C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v42 - v3;
  v4 = type metadata accessor for DownloadOutcome();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v49 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for DownloadResponse();
  v8 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E638, &unk_227F2E0C0);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v52 = &v42 - v11;
  swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  v43 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields;
  v44 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics;
  v51 = v12;
  swift_bridgeObjectRetain_n();
  v53 = v0;
  v45 = v17;
  result = swift_beginAccess();
  v19 = 0;
  v20 = (v14 + 63) >> 6;
  v42 = (v5 + 48);
  v50 = v4;
  while (v16)
  {
LABEL_11:
    v30 = __clz(__rbit64(v16)) | (v19 << 6);
    v31 = v51;
    v32 = *(v51 + 48);
    v33 = sub_227F2B274();
    v34 = v52;
    (*(*(v33 - 8) + 16))(v52, v32 + *(*(v33 - 8) + 72) * v30, v33);
    v35 = *(v31 + 56);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    (*(*(v36 - 8) + 16))(&v34[*(v46 + 48)], v35 + *(*(v36 - 8) + 72) * v30, v36);
    v37 = v54;
    sub_227ED2268(v53 + v45, v54);
    v38 = *v42;
    v39 = v37;
    v40 = v50;
    if ((*v42)(v39, 1, v50) == 1)
    {
      sub_227ED2A20();
      v41 = swift_allocError();
      v21 = v49;
      *v49 = v41;
      v21[1] = 0;
      *(v21 + 16) = 1;
      v21[3] = 0;
      v21[4] = 0;
      swift_storeEnumTagMultiPayload();
      if (v38(v54, 1, v40) != 1)
      {
        sub_227EB8430(v54, &unk_27D80E4A8, &qword_227F2DE48);
      }
    }

    else
    {
      v21 = v49;
      sub_227ED2A74(v54, v49);
    }

    v16 &= v16 - 1;
    v22 = *(v53 + v44);
    v23 = *(v53 + v43);
    v24 = v21;
    v25 = v47;
    sub_227ED2A74(v24, v47);
    v26 = v48;
    *(v25 + *(v48 + 20)) = v22;
    *(v25 + *(v26 + 24)) = v23;

    v27 = v22;
    v28 = v52;
    sub_227F2B7E4();
    result = sub_227EB8430(v28, &qword_27D80E638, &unk_227F2E0C0);
  }

  while (1)
  {
    v29 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v29 >= v20)
    {
    }

    v16 = *(v13 + 8 * v29);
    ++v19;
    if (v16)
    {
      v19 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_227ED19C4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for DownloadOutcome();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v1 + v12, v6);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_227ED2A20();
    *v11 = swift_allocError();
    *(v11 + 1) = 0;
    v11[16] = 1;
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    swift_storeEnumTagMultiPayload();
    if (v13(v6, 1, v7) != 1)
    {
      sub_227EB8430(v6, &unk_27D80E4A8, &qword_227F2DE48);
    }
  }

  else
  {
    sub_227ED2A74(v6, v11);
  }

  v18 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
  v14 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
  sub_227ED2A74(v11, a1);
  v15 = type metadata accessor for DownloadResponse();
  *(a1 + *(v15 + 20)) = v18;
  *(a1 + *(v15 + 24)) = v14;

  v16 = v18;

  return v16;
}

uint64_t sub_227ED1BF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_227F2B9A4();
  v27 = v25;
  v28 = v26;
  MEMORY[0x22AAAC3E0](0xD000000000000014, 0x8000000227F33F40);
  v9 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome;
  swift_beginAccess();
  sub_227ED2268(v0 + v9, v8);
  v10 = type metadata accessor for DownloadOutcome();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_227EB8430(v8, &unk_27D80E4A8, &qword_227F2DE48);
  if (v11 == 1)
  {
    v12 = 20302;
  }

  else
  {
    v12 = 5457241;
  }

  if (v11 == 1)
  {
    v13 = 0xE200000000000000;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  MEMORY[0x22AAAC3E0](v12, v13);

  MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F33F60);
  sub_227F2B114();
  sub_227ED29D8(&qword_27D80E008, MEMORY[0x277CC9260]);
  v14 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v14);

  MEMORY[0x22AAAC3E0](0x74754F202020200ALL, 0xEE00203A656D6F63);
  sub_227ED2268(v1 + v9, v6);
  v15 = sub_227F2B6C4();
  MEMORY[0x22AAAC3E0](v15);

  MEMORY[0x22AAAC3E0](0x74654D202020200ALL, 0xEE00203A73636972);
  v16 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_metrics);
  if (v16)
  {
    v17 = 0x657463656C6C6F43;
  }

  else
  {
    v17 = 0x6C6C6F4320746F4ELL;
  }

  if (v16)
  {
    v18 = 0xE900000000000064;
  }

  else
  {
    v18 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v17, v18);

  MEMORY[0x22AAAC3E0](0x616548202020200ALL, 0xEE00203A73726564);
  v19 = *(v1 + OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields);
  if (v19)
  {
    v20 = 0x657463656C6C6F43;
  }

  else
  {
    v20 = 0x6C6C6F4320746F4ELL;
  }

  if (v19)
  {
    v21 = 0xE900000000000064;
  }

  else
  {
    v21 = 0xED00006465746365;
  }

  MEMORY[0x22AAAC3E0](v20, v21);

  MEMORY[0x22AAAC3E0](0xD000000000000017, 0x8000000227F33F80);
  swift_beginAccess();
  v24[1] = *(*(v1 + 16) + 16);
  v22 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v22);

  MEMORY[0x22AAAC3E0](0x73656D695420, 0xE600000000000000);
  return v27;
}

uint64_t sub_227ED1FCC()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_remoteURL;
  v3 = sub_227F2B114();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  sub_227EB8430(&v0[OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_downloadOutcome], &unk_27D80E4A8, &qword_227F2DE48);
  v4 = *&v0[OBJC_IVAR____TtC21RapidResourceDelivery17DownloadTaskState_allHeaderFields];

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for DownloadTaskState()
{
  result = qword_27D80E608;
  if (!qword_27D80E608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227ED2104()
{
  v0 = sub_227F2B114();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_227ED21EC();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_227ED21EC()
{
  if (!qword_27D80E618)
  {
    type metadata accessor for DownloadOutcome();
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80E618);
    }
  }
}

uint64_t sub_227ED2268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E4A8, &qword_227F2DE48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED22D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_227ECA918(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v13 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_227ECC2E8();
    v9 = v13;
  }

  v10 = v6;
  v11 = *(*(v9 + 56) + 8 * v6);
  sub_227ED2518(v10, v9);
  *v2 = v9;
  return v11;
}

uint64_t sub_227ED2360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_227ECA880(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_227ECC444();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_227F2B274();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_227ED2688(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_227ED2518(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_227F2B974() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_227F2BD04();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_227ED2688(int64_t a1, uint64_t a2)
{
  v4 = sub_227F2B274();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_227F2B974();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_227ED29D8(&qword_27D80E488, MEMORY[0x277CC95F0]);
      v24 = sub_227F2B5F4();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E478, &qword_227F2DE28) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227ED29D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_227ED2A20()
{
  result = qword_27D80E630;
  if (!qword_27D80E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E630);
  }

  return result;
}

uint64_t sub_227ED2A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadOutcome();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_227ED2AEC()
{
  result = qword_27D80E640;
  if (!qword_27D80E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTTPError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t type metadata accessor for Configuration()
{
  result = qword_2813CDCF0;
  if (!qword_2813CDCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227ED2C2C()
{
  result = sub_227F2B114();
  if (v1 <= 0x3F)
  {
    result = sub_227F2B574();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_227ED2CB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B5F63696C627570;
  }

  else
  {
    v4 = 0x74736566696E616DLL;
  }

  if (v3)
  {
    v5 = 0xEC0000006C72755FLL;
  }

  else
  {
    v5 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v6 = 0x6B5F63696C627570;
  }

  else
  {
    v6 = 0x74736566696E616DLL;
  }

  if (*a2)
  {
    v7 = 0xEA00000000007965;
  }

  else
  {
    v7 = 0xEC0000006C72755FLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();
  }

  return v9 & 1;
}

uint64_t sub_227ED2D64()
{
  v1 = *v0;
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED2DF4()
{
  *v0;
  sub_227F2B704();
}

uint64_t sub_227ED2E70()
{
  v1 = *v0;
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED2EFC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_227F2BAD4();

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

void sub_227ED2F5C(uint64_t *a1@<X8>)
{
  v2 = 0x74736566696E616DLL;
  if (*v1)
  {
    v2 = 0x6B5F63696C627570;
  }

  v3 = 0xEC0000006C72755FLL;
  if (*v1)
  {
    v3 = 0xEA00000000007965;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_227ED2FA8()
{
  if (*v0)
  {
    result = 0x6B5F63696C627570;
  }

  else
  {
    result = 0x74736566696E616DLL;
  }

  *v0;
  return result;
}

uint64_t sub_227ED2FF0@<X0>(char *a1@<X8>)
{
  v2 = sub_227F2BAD4();

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

uint64_t sub_227ED3054(uint64_t a1)
{
  v2 = sub_227ED3D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED3090(uint64_t a1)
{
  v2 = sub_227ED3D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED30CC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (!v9)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_227F2BC64();
      }

      return 1;
    }

    return 0;
  }

  if (v6 == 1)
  {
    if (v9 == 1)
    {
      if (v4 != v7 || v5 != v8)
      {
        return sub_227F2BC64();
      }

      return 1;
    }

    return 0;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

uint64_t sub_227ED314C()
{
  sub_227F2B9A4();

  strcpy(v10, "(manifestURL: ");
  HIBYTE(v10[1]) = -18;
  v1 = sub_227F2B004();
  MEMORY[0x22AAAC3E0](v1);

  MEMORY[0x22AAAC3E0](0x63696C627570202CLL, 0xED0000203A79654BLL);
  v2 = v0 + *(type metadata accessor for Configuration() + 20);
  v3 = sub_227F2B554();
  v5 = v4;
  v6 = sub_227F2B154();
  v8 = v7;
  sub_227EC15A8(v3, v5);
  MEMORY[0x22AAAC3E0](v6, v8);

  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return v10[0];
}

uint64_t sub_227ED326C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227F2B0C4();
  if (v7)
  {
    if (v6 == 0x7370747468 && v7 == 0xE500000000000000)
    {

LABEL_6:
      v9 = sub_227F2B114();
      (*(*(v9 - 8) + 32))(a3, a1, v9);
      v10 = *(type metadata accessor for Configuration() + 20);
      v11 = sub_227F2B574();
      return (*(*(v11 - 8) + 32))(a3 + v10, a2, v11);
    }

    v8 = sub_227F2BC64();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v13 = sub_227F2B0C4();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x3E7974706D653CLL;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  sub_227ED3E20();
  swift_allocError();
  *v17 = v15;
  *(v17 + 8) = v16;
  *(v17 + 16) = 1;
  swift_willThrow();
  v18 = sub_227F2B574();
  (*(*(v18 - 8) + 8))(a2, v18);
  v19 = sub_227F2B114();
  return (*(*(v19 - 8) + 8))(a1, v19);
}

uint64_t sub_227ED3454(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E660, &qword_227F2E2D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED3D64();
  sub_227F2BD94();
  sub_227F2B004();
  v16[15] = 0;
  sub_227F2BBD4();
  if (!v2)
  {

    v11 = v3 + *(type metadata accessor for Configuration() + 20);
    v12 = sub_227F2B554();
    v14 = v13;
    sub_227F2B154();
    sub_227EC15A8(v12, v14);
    v16[14] = 1;
    sub_227F2BBD4();
  }

  (*(v6 + 8))(v9, v5);
}

uint64_t sub_227ED364C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_227F2B574();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Configuration();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v51 - v11;
  v13 = sub_227F2B114();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E648, &qword_227F2E2D0);
  v57 = *(v20 - 8);
  v21 = *(v57 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_227ED3D64();
  v26 = v58;
  sub_227F2BD74();
  if (!v26)
  {
    v52 = v17;
    v58 = v19;
    v27 = v56;
    LOBYTE(v59) = 0;
    v28 = sub_227F2BB44();
    v30 = v29;
    v51 = v23;
    v31 = v12;
    sub_227F2B0D4();
    v32 = v27;
    if ((*(v27 + 48))(v31, 1, v13) == 1)
    {
      sub_227ED3DB8(v31);
      sub_227ED3E20();
      swift_allocError();
      *v33 = v28;
      *(v33 + 8) = v30;
      *(v33 + 16) = 0;
      swift_willThrow();
LABEL_17:
      (*(v57 + 8))(v51, v20);
      return __swift_destroy_boxed_opaque_existential_0(v61);
    }

    v34 = v58;
    (*(v27 + 32))(v58, v31, v13);
    v35 = sub_227F2B0C4();
    v37 = v55;
    if (v36)
    {
      if (v35 == 0x7370747468 && v36 == 0xE500000000000000)
      {

        goto LABEL_9;
      }

      v38 = sub_227F2BC64();

      if (v38)
      {
LABEL_9:
        LOBYTE(v59) = 1;
        sub_227F2BB44();
        v45 = sub_227F2B134();
        v47 = v46;

        if (v47 >> 60 != 15)
        {
          (*(v32 + 16))(v52, v34, v13);
          v59 = v45;
          v60 = v47;
          sub_227ED3E74(v45, v47);
          v49 = v54;
          sub_227F2B564();
          v50 = v57;
          sub_227ED326C(v52, v49, v53);
          sub_227EC1650(v45, v47);
          (*(v32 + 8))(v58, v13);
          (*(v50 + 8))(v51, v20);
          sub_227ED3EC8(v53, v37);
          return __swift_destroy_boxed_opaque_existential_0(v61);
        }

        sub_227ED3E20();
        swift_allocError();
        *v48 = 0;
        *(v48 + 8) = 0;
        *(v48 + 16) = 2;
        swift_willThrow();
        (*(v32 + 8))(v34, v13);
        goto LABEL_17;
      }
    }

    v39 = sub_227F2B0C4();
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0x3E7974706D653CLL;
    }

    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = 0xE700000000000000;
    }

    sub_227ED3E20();
    swift_allocError();
    *v43 = v41;
    *(v43 + 8) = v42;
    *(v43 + 16) = 1;
    swift_willThrow();
    (*(v27 + 8))(v34, v13);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_0(v61);
}

uint64_t sub_227ED3CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  v5 = MEMORY[0x22AAAC210]();
  v7 = v6;
  v8 = *(a3 + 20);
  v9 = MEMORY[0x22AAAC210]();
  v11 = v10;
  v12 = sub_227ED43A4(v5, v7, v9, v10);
  sub_227EC15A8(v9, v11);
  sub_227EC15A8(v5, v7);
  return v12 & 1;
}

unint64_t sub_227ED3D64()
{
  result = qword_27D80E650;
  if (!qword_27D80E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E650);
  }

  return result;
}

uint64_t sub_227ED3DB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_227ED3E20()
{
  result = qword_27D80E658;
  if (!qword_27D80E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E658);
  }

  return result;
}

uint64_t sub_227ED3E74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227ED3EC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED3F2C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_227F2AEF4();
    if (v10)
    {
      v11 = sub_227F2AF14();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_227F2AF04();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_227F2AEF4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_227F2AF14();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_227F2AF04();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_227ED415C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_227ED42EC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_227EC15A8(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_227ED3F2C(v14, a3, a4, &v13);
  v10 = v4;
  sub_227EC15A8(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_227ED42EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_227F2AEF4();
  v11 = result;
  if (result)
  {
    result = sub_227F2AF14();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_227F2AF04();
  sub_227ED3F2C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_227ED43A4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_227ED3E74(a3, a4);
          return sub_227ED415C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery13ConfigurationV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for Configuration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227ED468C()
{
  result = qword_27D80E668;
  if (!qword_27D80E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E668);
  }

  return result;
}

unint64_t sub_227ED46E4()
{
  result = qword_27D80E670;
  if (!qword_27D80E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E670);
  }

  return result;
}

unint64_t sub_227ED473C()
{
  result = qword_27D80E678;
  if (!qword_27D80E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E678);
  }

  return result;
}

uint64_t type metadata accessor for Manifest()
{
  result = qword_2813CD740;
  if (!qword_2813CD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227ED4804()
{
  sub_227EC24C4(319, &qword_2813CD550);
  if (v0 <= 0x3F)
  {
    sub_227F2B114();
    if (v1 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_227ED48E0()
{
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED4A28(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v63 = a3;
  v59 = a4;
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6E8, &qword_227F2E868);
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  MEMORY[0x28223BE20](v5);
  v52 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6F0, &qword_227F2E870);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6F8, &qword_227F2E878);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11);
  v46 = &v42 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E700, &qword_227F2E880);
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = *(v44 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v42 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E708, &qword_227F2E888);
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E710, &qword_227F2E890);
  v56 = *(v21 - 8);
  v22 = *(v56 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E718, &qword_227F2E898);
  v55 = *(v25 - 8);
  v26 = *(v55 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v42 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E720, &qword_227F2E8A0);
  v61 = *(v29 - 8);
  v62 = v29;
  v30 = *(v61 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v42 - v31;
  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6EB4();
  sub_227F2BD94();
  if (v59 > 1u)
  {
    if (v59 == 2)
    {
      v66 = 2;
      sub_227ED7058();
      v36 = v62;
      sub_227F2BB84();
      v37 = v58;
      sub_227F2BBD4();
      (*(v57 + 8))(v20, v37);
      return (*(v61 + 8))(v32, v36);
    }

    else
    {
      if (v60 > 1)
      {
        if (v60 ^ 2 | v63)
        {
          v70 = 6;
          sub_227ED6F08();
          v38 = v52;
          v39 = v62;
          sub_227F2BB84();
          v41 = v53;
          v40 = v54;
        }

        else
        {
          v69 = 5;
          sub_227ED6F5C();
          v38 = v49;
          v39 = v62;
          sub_227F2BB84();
          v41 = v50;
          v40 = v51;
        }
      }

      else if (v60 | v63)
      {
        v68 = 4;
        sub_227ED6FB0();
        v38 = v46;
        v39 = v62;
        sub_227F2BB84();
        v41 = v47;
        v40 = v48;
      }

      else
      {
        v67 = 3;
        sub_227ED7004();
        v38 = v43;
        v39 = v62;
        sub_227F2BB84();
        v41 = v44;
        v40 = v45;
      }

      (*(v41 + 8))(v38, v40);
      return (*(v61 + 8))(v32, v39);
    }
  }

  else
  {
    if (v59)
    {
      v65 = 1;
      sub_227ED70AC();
      v34 = v62;
      sub_227F2BB84();
      sub_227F2BBD4();
      (*(v56 + 8))(v24, v21);
    }

    else
    {
      v64 = 0;
      sub_227ED7100();
      v34 = v62;
      sub_227F2BB84();
      sub_227F2BBD4();
      (*(v55 + 8))(v28, v25);
    }

    return (*(v61 + 8))(v32, v34);
  }
}

uint64_t sub_227ED51BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E698, &qword_227F2E5B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6828();
  sub_227F2BD94();
  v11 = *v3;
  v12 = v3[1];
  v27[15] = 0;
  sub_227F2BB94();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v27[14] = 1;
    sub_227F2BBE4();
    v15 = type metadata accessor for Manifest();
    v16 = v15[6];
    v27[13] = 2;
    sub_227F2B114();
    sub_227ED6C84(&qword_27D80E6A0, MEMORY[0x277CC9260]);
    sub_227F2BC14();
    v17 = *(v3 + v15[7]);
    v27[12] = 3;
    sub_227F2BC04();
    v18 = (v3 + v15[8]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v27[11] = 4;
    sub_227F2BBB4();
    v21 = (v3 + v15[9]);
    v22 = *v21;
    v23 = v21[1];
    v27[10] = 5;
    sub_227F2BBD4();
    v24 = (v3 + v15[10]);
    v25 = *v24;
    v26 = v24[1];
    v27[9] = 6;
    sub_227F2BB94();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_227ED547C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x5564696C61766E69;
    if (v1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_227ED556C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227ED7154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227ED5594(uint64_t a1)
{
  v2 = sub_227ED6EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED55D0(uint64_t a1)
{
  v2 = sub_227ED6EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED560C(uint64_t a1)
{
  v2 = sub_227ED6F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5648(uint64_t a1)
{
  v2 = sub_227ED6F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5684(uint64_t a1)
{
  v2 = sub_227ED6FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED56C0(uint64_t a1)
{
  v2 = sub_227ED6FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED56FC(uint64_t a1)
{
  v2 = sub_227ED70AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5738(uint64_t a1)
{
  v2 = sub_227ED70AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5774(uint64_t a1)
{
  v2 = sub_227ED7058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED57B0(uint64_t a1)
{
  v2 = sub_227ED7058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED57EC(uint64_t a1)
{
  v2 = sub_227ED7004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5828(uint64_t a1)
{
  v2 = sub_227ED7004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5864(uint64_t a1)
{
  v2 = sub_227ED7100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED58A0(uint64_t a1)
{
  v2 = sub_227ED7100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED58DC(uint64_t a1)
{
  v2 = sub_227ED6F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5918(uint64_t a1)
{
  v2 = sub_227ED6F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_227ED73AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_227ED59D8()
{
  *v0;
  *v0;
  *v0;
  sub_227F2B704();
}

uint64_t sub_227ED5B14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_227ED7F30();
  *a2 = result;
  return result;
}

void sub_227ED5B44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007461;
  v4 = 0x5F64657461647075;
  v5 = 0xE600000000000000;
  v6 = 0x747365676964;
  if (v2 != 5)
  {
    v6 = 0x727574616E676973;
    v5 = 0xE900000000000065;
  }

  v7 = 0x8000000227F33760;
  v8 = 0xD000000000000014;
  if (v2 != 3)
  {
    v8 = 0x6574616D69747365;
    v7 = 0xEE00657A69735F64;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6574726F70707573;
  v10 = 0xE900000000000064;
  if (v2 != 1)
  {
    v9 = 0x5F73657461647075;
    v10 = 0xEB000000006C7275;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_227ED5C48()
{
  v1 = *v0;
  v2 = 0x5F64657461647075;
  v3 = 0x747365676964;
  if (v1 != 5)
  {
    v3 = 0x727574616E676973;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6574616D69747365;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574726F70707573;
  if (v1 != 1)
  {
    v5 = 0x5F73657461647075;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227ED5D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227ED7F30();
  *a1 = result;
  return result;
}

uint64_t sub_227ED5D70(uint64_t a1)
{
  v2 = sub_227ED6828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED5DAC(uint64_t a1)
{
  v2 = sub_227ED6828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227ED5E00()
{
  v33 = sub_227F2AE64();
  v32[0] = *(v33 - 8);
  v1 = v32[0];
  v2 = *(v32[0] + 64);
  MEMORY[0x28223BE20](v33);
  v32[1] = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Manifest();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  v11 = *(v0 + 16);
  v12 = *(v6 + 24);
  v13 = sub_227F2B114();
  (*(*(v13 - 8) + 16))(&v8[v12], v0 + v12, v13);
  v14 = v4[7];
  v15 = *(v0 + v14);
  v16 = (v0 + v4[8]);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  v18 = (v0 + v4[9]);
  v19 = *v18;
  v20 = v18[1];
  *v8 = v9;
  *(v8 + 1) = v10;
  v8[16] = v11;
  *&v8[v14] = v15;
  v21 = &v8[v4[8]];
  *v21 = v17;
  v21[8] = v16;
  v22 = &v8[v4[9]];
  *v22 = v19;
  *(v22 + 1) = v20;
  v23 = &v8[v4[10]];
  v24 = sub_227F2AEA4();
  *v23 = 0;
  *(v23 + 1) = 0;
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v27 = *(v1 + 72);
  v28 = (*(v32[0] + 80) + 32) & ~*(v32[0] + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_227F2E510;
  sub_227F2AE34();
  sub_227F2AE54();
  v34 = v29;
  sub_227ED6C84(&qword_27D80E6B0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  sub_227ED6C84(&qword_27D80E6C8, type metadata accessor for Manifest);
  v30 = sub_227F2AE84();
  sub_227ED6934(v8);

  return v30;
}

uint64_t sub_227ED613C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = &v65 - v5;
  v73 = sub_227F2B114();
  v75 = *(v73 - 8);
  v6 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E680, &qword_227F2E5B0);
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  v13 = type metadata accessor for Manifest();
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227ED6828();
  v18 = v76;
  sub_227F2BD74();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v76 = v8;
  v21 = v74;
  v20 = v75;
  v83 = 0;
  *v16 = sub_227F2BB04();
  *(v16 + 1) = v22;
  v69 = v22;
  v82 = 1;
  v23 = sub_227F2BB14();
  v16[16] = (v23 == 2) | v23 & 1;
  v81 = 4;
  v24 = sub_227F2BB24();
  v25 = &v16[v13[8]];
  *v25 = v24;
  v25[8] = v26 & 1;
  v80 = 2;
  v27 = sub_227F2BB44();
  v70 = 0;
  v29 = v28;
  v67 = v12;
  v68 = v9;
  v30 = v72;
  v66 = v27;
  sub_227F2B0D4();
  v31 = v73;
  if ((*(v20 + 48))(v30, 1, v73) == 1)
  {
    sub_227ED3DB8(v30);
    sub_227ED687C();
    v32 = swift_allocError();
    *v33 = v66;
    *(v33 + 8) = v29;
    *(v33 + 16) = 1;
    v70 = v32;
    swift_willThrow();
    (*(v21 + 8))(v67, v68);
    v34 = 0;
    v35 = v16;
    goto LABEL_4;
  }

  (*(v20 + 32))(v76, v30, v31);
  v36 = sub_227F2B0C4();
  v35 = v16;
  if (!v37)
  {
    goto LABEL_19;
  }

  if (v36 == 0x7370747468 && v37 == 0xE500000000000000)
  {

    goto LABEL_14;
  }

  v38 = sub_227F2BC64();

  if ((v38 & 1) == 0)
  {
LABEL_19:
    v48 = v76;
    v49 = sub_227F2B0C4();
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0x3E7974706D653CLL;
    }

    if (v50)
    {
      v52 = v50;
    }

    else
    {
      v52 = 0xE700000000000000;
    }

    sub_227ED687C();
    v53 = swift_allocError();
    *v54 = v51;
    *(v54 + 8) = v52;
    *(v54 + 16) = 2;
    v70 = v53;
    swift_willThrow();
    (*(v20 + 8))(v48, v73);
    (*(v21 + 8))(v67, v68);
    v34 = 0;
    goto LABEL_4;
  }

LABEL_14:
  v39 = v76;
  v40 = v73;
  (*(v20 + 16))(&v16[v13[6]], v76, v73);
  v79 = 3;
  v42 = v67;
  v41 = v68;
  v43 = v70;
  v44 = sub_227F2BB24();
  if (v43)
  {
    v70 = v43;
    (*(v20 + 8))(v39, v40);
    (*(v21 + 8))(v42, v41);
    v34 = 1;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(a1);

    if (v34)
    {
      return (*(v20 + 8))(v35 + v13[6], v73);
    }

    return result;
  }

  v46 = 600;
  if ((v45 & 1) == 0)
  {
    v46 = v44;
  }

  *(v35 + v13[7]) = v46;
  v78 = 5;
  v47 = sub_227F2BB44();
  v55 = (v35 + v13[9]);
  *v55 = v47;
  v55[1] = v56;
  v77 = 6;
  v57 = sub_227F2BB04();
  v70 = 0;
  v58 = v39;
  v59 = v57;
  v60 = v58;
  v61 = v40;
  v63 = v62;
  (*(v20 + 8))(v60, v61);
  (*(v21 + 8))(v42, v41);
  v64 = (v35 + v13[10]);
  *v64 = v59;
  v64[1] = v63;
  sub_227ED68D0(v35, v71);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227ED6934(v35);
}

unint64_t sub_227ED6828()
{
  result = qword_27D80E688;
  if (!qword_27D80E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E688);
  }

  return result;
}

unint64_t sub_227ED687C()
{
  result = qword_27D80E690;
  if (!qword_27D80E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E690);
  }

  return result;
}

uint64_t sub_227ED68D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Manifest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227ED6934(uint64_t a1)
{
  v2 = type metadata accessor for Manifest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227ED6990(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (a6 == 2)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return sub_227F2BC64();
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 3 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (a3)
  {
    if (a6 == 1)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_227F2BC64();
    }
  }

  else if (!a6)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_227F2BC64();
  }

  return 0;
}

BOOL sub_227ED6AC8(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_227F2BC64() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v8 = type metadata accessor for Manifest();
  v9 = v8[6];
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0 || *(a1 + v8[7]) != *(a2 + v8[7]))
  {
    return 0;
  }

  v10 = v8[8];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v8[9];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_227F2BC64() & 1) == 0)
  {
    return 0;
  }

  v20 = v8[10];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    return v24 && (*v21 == *v23 && v22 == v24 || (sub_227F2BC64() & 1) != 0);
  }

  return !v24;
}

unint64_t sub_227ED6C20()
{
  result = qword_27D80E6C0;
  if (!qword_27D80E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80E6B8, &qword_227F2E5C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6C0);
  }

  return result;
}

uint64_t sub_227ED6C84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery8ManifestV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_227ED6CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_227ED6D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_227ED6D84(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_227ED6DB0()
{
  result = qword_27D80E6D0;
  if (!qword_27D80E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6D0);
  }

  return result;
}

unint64_t sub_227ED6E08()
{
  result = qword_27D80E6D8;
  if (!qword_27D80E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6D8);
  }

  return result;
}

unint64_t sub_227ED6E60()
{
  result = qword_27D80E6E0;
  if (!qword_27D80E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6E0);
  }

  return result;
}

unint64_t sub_227ED6EB4()
{
  result = qword_27D80E728;
  if (!qword_27D80E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E728);
  }

  return result;
}

unint64_t sub_227ED6F08()
{
  result = qword_27D80E730;
  if (!qword_27D80E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E730);
  }

  return result;
}

unint64_t sub_227ED6F5C()
{
  result = qword_27D80E738;
  if (!qword_27D80E738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E738);
  }

  return result;
}

unint64_t sub_227ED6FB0()
{
  result = qword_27D80E740;
  if (!qword_27D80E740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E740);
  }

  return result;
}

unint64_t sub_227ED7004()
{
  result = qword_27D80E748;
  if (!qword_27D80E748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E748);
  }

  return result;
}

unint64_t sub_227ED7058()
{
  result = qword_27D80E750;
  if (!qword_27D80E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E750);
  }

  return result;
}

unint64_t sub_227ED70AC()
{
  result = qword_27D80E758;
  if (!qword_27D80E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E758);
  }

  return result;
}

unint64_t sub_227ED7100()
{
  result = qword_27D80E760;
  if (!qword_27D80E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E760);
  }

  return result;
}

uint64_t sub_227ED7154(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000227F33FA0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000227F33FC0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000227F33FE0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000227F34000 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000227F34020 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34040 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_227F2BC64();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_227ED73AC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E768, &qword_227F2E8A8);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v56 - v4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E770, &qword_227F2E8B0);
  v67 = *(v60 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v60);
  v74 = &v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E778, &qword_227F2E8B8);
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v56 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E780, &qword_227F2E8C0);
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v73 = &v56 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E788, &qword_227F2E8C8);
  v61 = *(v63 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v72 = &v56 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E790, &qword_227F2E8D0);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v56 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E798, &qword_227F2E8D8);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v56 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E7A0, &unk_227F2E8E0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_227ED6EB4();
  v28 = v76;
  sub_227F2BD74();
  if (v28)
  {
    goto LABEL_10;
  }

  v27 = v20;
  v56 = v17;
  v30 = v73;
  v29 = v74;
  v76 = v22;
  v31 = sub_227F2BB74();
  v32 = (2 * *(v31 + 16)) | 1;
  v77 = v31;
  v78 = v31 + 32;
  v79 = 0;
  v80 = v32;
  v33 = sub_227EBAD8C();
  if (v33 == 7 || v79 != v80 >> 1)
  {
    v37 = sub_227F2B9E4();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0) + 48);
    *v39 = &type metadata for Manifest.Error;
    sub_227F2BAF4();
    sub_227F2B9D4();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v76 + 8))(v25, v21);
    swift_unknownObjectRelease();
LABEL_10:
    v36 = v75;
    goto LABEL_11;
  }

  if (v33 > 2u)
  {
    if (v33 <= 4u)
    {
      v35 = v75;
      v34 = v76;
      if (v33 == 3)
      {
        v81 = 3;
        sub_227ED7004();
        sub_227F2BAE4();
        (*(v62 + 8))(v30, v64);
        (*(v34 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v27 = 0;
      }

      else
      {
        v81 = 4;
        sub_227ED6FB0();
        v51 = v70;
        sub_227F2BAE4();
        (*(v65 + 8))(v51, v66);
        (*(v34 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v27 = 1;
      }

      v36 = v35;
      goto LABEL_11;
    }

    v45 = v76;
    if (v33 == 5)
    {
      v81 = 5;
      sub_227ED6F5C();
      sub_227F2BAE4();
      (*(v67 + 8))(v29, v60);
      (*(v45 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v27 = 2;
    }

    else
    {
      v81 = 6;
      sub_227ED6F08();
      v52 = v71;
      sub_227F2BAE4();
      (*(v68 + 8))(v52, v69);
      (*(v45 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v27 = 3;
    }

LABEL_22:
    v36 = v75;
    goto LABEL_11;
  }

  if (!v33)
  {
    v81 = 0;
    sub_227ED7100();
    v46 = v27;
    sub_227F2BAE4();
    v47 = v56;
    v48 = sub_227F2BB44();
    v49 = v76;
    v27 = v48;
    (*(v57 + 8))(v46, v47);
    (*(v49 + 8))(v25, v21);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if (v33 == 1)
  {
    v81 = 1;
    sub_227ED70AC();
    v42 = v16;
    sub_227F2BAE4();
    v43 = v75;
    v44 = v59;
    v27 = sub_227F2BB44();
    (*(v58 + 8))(v42, v44);
    (*(v76 + 8))(v25, v21);
  }

  else
  {
    v81 = 2;
    sub_227ED7058();
    v50 = v72;
    sub_227F2BAE4();
    v43 = v75;
    v53 = v63;
    v54 = sub_227F2BB44();
    v55 = v76;
    v27 = v54;
    (*(v61 + 8))(v50, v53);
    (*(v55 + 8))(v25, v21);
  }

  swift_unknownObjectRelease();
  v36 = v43;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v27;
}

uint64_t sub_227ED7F30()
{
  v0 = sub_227F2BAD4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for ResourceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ResourceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227ED8140()
{
  result = qword_27D80E7A8;
  if (!qword_27D80E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7A8);
  }

  return result;
}

unint64_t sub_227ED8198()
{
  result = qword_27D80E7B0;
  if (!qword_27D80E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7B0);
  }

  return result;
}

unint64_t sub_227ED81F0()
{
  result = qword_27D80E7B8;
  if (!qword_27D80E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7B8);
  }

  return result;
}

unint64_t sub_227ED8248()
{
  result = qword_27D80E7C0;
  if (!qword_27D80E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7C0);
  }

  return result;
}

unint64_t sub_227ED82A0()
{
  result = qword_27D80E7C8;
  if (!qword_27D80E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7C8);
  }

  return result;
}

unint64_t sub_227ED82F8()
{
  result = qword_27D80E7D0;
  if (!qword_27D80E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7D0);
  }

  return result;
}

unint64_t sub_227ED8350()
{
  result = qword_27D80E7D8;
  if (!qword_27D80E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7D8);
  }

  return result;
}

unint64_t sub_227ED83A8()
{
  result = qword_27D80E7E0;
  if (!qword_27D80E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7E0);
  }

  return result;
}

unint64_t sub_227ED8400()
{
  result = qword_27D80E7E8;
  if (!qword_27D80E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7E8);
  }

  return result;
}

unint64_t sub_227ED8458()
{
  result = qword_27D80E7F0;
  if (!qword_27D80E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7F0);
  }

  return result;
}

unint64_t sub_227ED84B0()
{
  result = qword_27D80E7F8;
  if (!qword_27D80E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E7F8);
  }

  return result;
}

unint64_t sub_227ED8508()
{
  result = qword_27D80E800;
  if (!qword_27D80E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E800);
  }

  return result;
}

unint64_t sub_227ED8560()
{
  result = qword_27D80E808;
  if (!qword_27D80E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E808);
  }

  return result;
}

unint64_t sub_227ED85B8()
{
  result = qword_27D80E810;
  if (!qword_27D80E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E810);
  }

  return result;
}

unint64_t sub_227ED8610()
{
  result = qword_27D80E818;
  if (!qword_27D80E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E818);
  }

  return result;
}

unint64_t sub_227ED8668()
{
  result = qword_27D80E820;
  if (!qword_27D80E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E820);
  }

  return result;
}

unint64_t sub_227ED86C0()
{
  result = qword_27D80E828;
  if (!qword_27D80E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E828);
  }

  return result;
}

unint64_t sub_227ED8718()
{
  result = qword_27D80E830;
  if (!qword_27D80E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E830);
  }

  return result;
}

unint64_t sub_227ED8770()
{
  result = qword_27D80E838;
  if (!qword_27D80E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E838);
  }

  return result;
}

unint64_t sub_227ED87C8()
{
  result = qword_27D80E840;
  if (!qword_27D80E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E840);
  }

  return result;
}

uint64_t sub_227ED8830(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007461;
  v3 = 0x5F64657461647075;
  v4 = a1;
  v5 = 0x747365676964;
  if (a1 == 5)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x727574616E676973;
    v6 = 0xE900000000000065;
  }

  v7 = 0xD000000000000014;
  v8 = 0x8000000227F33760;
  if (a1 != 3)
  {
    v7 = 0x6574616D69747365;
    v8 = 0xEE00657A69735F64;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6574726F70707573;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 0x5F73657461647075;
    v10 = 0xEB000000006C7275;
  }

  if (!a1)
  {
    v9 = 0x5F64657461647075;
    v10 = 0xEA00000000007461;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6574726F70707573)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xEB000000006C7275;
        if (v11 != 0x5F73657461647075)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x747365676964)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x727574616E676973)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x8000000227F33760;
      if (v11 != 0xD000000000000014)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6574616D69747365;
    v2 = 0xEE00657A69735F64;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_227F2BC64();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_227ED8A84(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x726576656ELL;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEE00736574756E69;
    v4 = 0xE500000000000000;
    if (a1 == 2)
    {
      v6 = 0x4D6E656574666966;
    }

    else
    {
      v6 = 0x796C696164;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x737961776C61;
    }

    else
    {
      v6 = 0x726576656ELL;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE500000000000000;
  v9 = 0x4D6E656574666966;
  v10 = 0xEE00736574756E69;
  if (a2 != 2)
  {
    v9 = 0x796C696164;
    v10 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x737961776C61;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_227F2BC64();
  }

  return v13 & 1;
}

RapidResourceDelivery::RefreshPolicy_optional __swiftcall RefreshPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_227F2BAD4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RefreshPolicy.rawValue.getter()
{
  v1 = 0x726576656ELL;
  v2 = 0x4D6E656574666966;
  if (*v0 != 2)
  {
    v2 = 0x796C696164;
  }

  if (*v0)
  {
    v1 = 0x737961776C61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_227ED8CB0()
{
  result = qword_27D80E848;
  if (!qword_27D80E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E848);
  }

  return result;
}

uint64_t sub_227ED8D04()
{
  v1 = *v0;
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

uint64_t sub_227ED8DC8()
{
  *v0;
  *v0;
  *v0;
  sub_227F2B704();
}

uint64_t sub_227ED8E78()
{
  v1 = *v0;
  sub_227F2BD14();
  sub_227F2B704();

  return sub_227F2BD44();
}

void sub_227ED8F44(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x726576656ELL;
  v4 = 0xEE00736574756E69;
  v5 = 0x4D6E656574666966;
  if (*v1 != 2)
  {
    v5 = 0x796C696164;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x737961776C61;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t getEnumTagSinglePayload for RefreshPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RefreshPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227ED91C4()
{
  result = qword_27D80E850;
  if (!qword_27D80E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E850);
  }

  return result;
}

uint64_t FileInfo.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ContainerizableURL(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FileInfo(0);
  sub_227EDAD50(v1 + *(v7 + 20), v6, type metadata accessor for ContainerizableURL);
  v8 = sub_227F2B114();
  return (*(*(v8 - 8) + 32))(a1, v6, v8);
}

uint64_t sub_227ED9330(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FileInfo.init(remoteURL:fileURL:etag:statusCode:digest:lastSuccess:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = sub_227F2B114();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v18 = type metadata accessor for FileInfo(0);
  v17(a9 + v18[5], a2, v16);
  v19 = (a9 + v18[6]);
  *v19 = a3;
  v19[1] = a4;
  *(a9 + v18[7]) = a5;
  v20 = (a9 + v18[8]);
  *v20 = a6;
  v20[1] = a7;
  v21 = a9 + v18[9];

  return sub_227ECD80C(a8, v21);
}

uint64_t sub_227ED9470()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  __swift_allocate_value_buffer(v0, qword_27D81B190);
  v1 = __swift_project_value_buffer(v0, qword_27D81B190);
  return sub_227ED94C8(v1);
}

uint64_t sub_227ED94C8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_227F2B644();
  v4 = [v2 containerURLForSecurityApplicationGroupIdentifier_];

  if (v4)
  {
    sub_227F2B084();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_227F2B114();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t ContainerizableURL.encode(to:)()
{
  sub_227F2B0A4();
  sub_227F2B724();
}

uint64_t ContainerizableURL.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_227F2AFF4();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = sub_227F2B114();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227ECDA1C(a1, v43);
  v19 = v44;
  v20 = sub_227F2B6F4();
  v44 = v19;
  if (v19)
  {
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v34 = v18;
  v35 = v15;
  v39 = v20;
  v40 = v21;
  v36 = v11;
  v37 = v6;
  v38 = a1;
  if (qword_27D80DEF8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v7, qword_27D81B190);
  sub_227EC2180(v23, v13, &qword_27D80E310, &unk_227F2D990);
  v24 = v35;
  v25 = v14;
  v26 = (*(v35 + 48))(v13, 1, v14);
  v27 = v41;
  if (v26 == 1)
  {
    sub_227EB8430(v13, &qword_27D80E310, &unk_227F2D990);
    v29 = v37;
    v28 = v38;
    v30 = v36;
LABEL_9:
    (*(v24 + 56))(v30, 1, 1, v25);
    (*(v27 + 104))(v29, *MEMORY[0x277CC91D8], v3);
    sub_227F2B0E4();
    v22 = v28;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  v31 = v34;
  (*(v24 + 32))(v34, v13, v25);
  v32 = sub_227ED9A48();
  v30 = v36;
  if (v32)
  {
    (*(v24 + 8))(v31, v25);
    v29 = v37;
    v28 = v38;
    goto LABEL_9;
  }

  (*(v24 + 16))(v36, v31, v25);
  (*(v24 + 56))(v30, 0, 1, v25);
  (*(v27 + 104))(v37, *MEMORY[0x277CC91D8], v3);
  sub_227F2B0E4();
  __swift_destroy_boxed_opaque_existential_0(v38);
  return (*(v24 + 8))(v31, v25);
}

uint64_t sub_227ED9A48()
{

  v0 = sub_227F2B734();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_227F2B734();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_227F2BC64();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_227F2B734();
      v3 = v5;
    }

    while (v5);
  }

  sub_227F2B734();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_227ED9BBC()
{
  sub_227F2B0A4();
  sub_227F2B724();
}

uint64_t FileInfo.remoteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227F2B114();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FileInfo.etag.getter()
{
  v1 = (v0 + *(type metadata accessor for FileInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FileInfo.digest.getter()
{
  v1 = (v0 + *(type metadata accessor for FileInfo(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_227ED9D74()
{
  v1 = *v0;
  v2 = 0x525565746F6D6572;
  v3 = 0x6F43737574617473;
  v4 = 0x747365676964;
  if (v1 != 4)
  {
    v4 = 0x636375537473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4C52556C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 1734440037;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227ED9E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EDB240(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227ED9E68(uint64_t a1)
{
  v2 = sub_227EDAC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227ED9EA4(uint64_t a1)
{
  v2 = sub_227EDAC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FileInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E858, &qword_227F2F1C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EDAC50();
  sub_227F2BD94();
  v22[15] = 0;
  sub_227F2B114();
  sub_227EDACA4(&qword_27D80E6A0, MEMORY[0x277CC9260]);
  sub_227F2BC14();
  if (!v2)
  {
    v11 = type metadata accessor for FileInfo(0);
    v12 = v11[5];
    v22[14] = 1;
    type metadata accessor for ContainerizableURL(0);
    sub_227EDACA4(&qword_27D80E868, type metadata accessor for ContainerizableURL);
    sub_227F2BC14();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v22[13] = 2;
    sub_227F2BB94();
    v16 = *(v3 + v11[7]);
    v22[12] = 3;
    sub_227F2BC04();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v22[11] = 4;
    sub_227F2BB94();
    v20 = v11[9];
    v22[10] = 5;
    sub_227F2B234();
    sub_227EDACA4(&qword_27D80E870, MEMORY[0x277CC9578]);
    sub_227F2BBC4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FileInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - v5;
  v35 = type metadata accessor for ContainerizableURL(0);
  v6 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227F2B114();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v38 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E878, &qword_227F2F1C8);
  v37 = *(v40 - 8);
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v14 = &v32 - v13;
  v15 = type metadata accessor for FileInfo(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EDAC50();
  v39 = v14;
  v20 = v41;
  sub_227F2BD74();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v36;
  v47 = 0;
  sub_227EDACA4(&qword_27D80E880, MEMORY[0x277CC9260]);
  sub_227F2BB64();
  (*(v21 + 32))(v18, v38, v9);
  v46 = 1;
  sub_227EDACA4(&qword_27D80E888, type metadata accessor for ContainerizableURL);
  sub_227F2BB64();
  sub_227EDACEC(v8, &v18[v15[5]]);
  v45 = 2;
  v38 = 0;
  v22 = sub_227F2BB04();
  v41 = a1;
  v23 = &v18[v15[6]];
  *v23 = v22;
  v23[1] = v24;
  v44 = 3;
  v25 = v15;
  *&v18[v15[7]] = sub_227F2BB54();
  v43 = 4;
  v26 = sub_227F2BB04();
  v27 = v37;
  v28 = &v18[v25[8]];
  *v28 = v26;
  v28[1] = v29;
  sub_227F2B234();
  v42 = 5;
  sub_227EDACA4(&qword_27D80E890, MEMORY[0x277CC9578]);
  v30 = v34;
  sub_227F2BB34();
  (*(v27 + 8))(v39, v40);
  sub_227ECD80C(v30, &v18[v25[9]]);
  sub_227EDAD50(v18, v33, type metadata accessor for FileInfo);
  __swift_destroy_boxed_opaque_existential_0(v41);
  return sub_227EDADB8(v18, type metadata accessor for FileInfo);
}

uint64_t _s21RapidResourceDelivery8FileInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B234();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8B0, &unk_227F2F420);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for FileInfo(0);
  v18 = v17[5];
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  v20 = (a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23 || (*v20 != *v22 || v21 != v23) && (sub_227F2BC64() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (*(a1 + v17[7]) == *(a2 + v17[7]))
  {
    v24 = v17[8];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_227F2BC64() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v28)
    {
      return 0;
    }

    v29 = v17[9];
    v30 = *(v13 + 48);
    sub_227EC2180(a1 + v29, v16, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC2180(a2 + v29, &v16[v30], &unk_27D80E3B0, &unk_227F2DB00);
    v31 = *(v5 + 48);
    if (v31(v16, 1, v4) == 1)
    {
      if (v31(&v16[v30], 1, v4) == 1)
      {
        sub_227EB8430(v16, &unk_27D80E3B0, &unk_227F2DB00);
        return 1;
      }

      goto LABEL_23;
    }

    sub_227EC2180(v16, v12, &unk_27D80E3B0, &unk_227F2DB00);
    if (v31(&v16[v30], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_23:
      sub_227EB8430(v16, &qword_27D80E8B0, &unk_227F2F420);
      return 0;
    }

    (*(v5 + 32))(v8, &v16[v30], v4);
    sub_227EDACA4(&qword_27D80E8B8, MEMORY[0x277CC9578]);
    v33 = sub_227F2B634();
    v34 = *(v5 + 8);
    v34(v8, v4);
    v34(v12, v4);
    sub_227EB8430(v16, &unk_27D80E3B0, &unk_227F2DB00);
    if (v33)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_227EDAC50()
{
  result = qword_27D80E860;
  if (!qword_27D80E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E860);
  }

  return result;
}

uint64_t sub_227EDACA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227EDACEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerizableURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EDAD50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EDADB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EDAE40()
{
  result = sub_227F2B114();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_227EDAED4()
{
  sub_227F2B114();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContainerizableURL(319);
    if (v1 <= 0x3F)
    {
      sub_227EDAF98();
      if (v2 <= 0x3F)
      {
        sub_227EC246C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_227EDAF98()
{
  if (!qword_2813CD550)
  {
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_2813CD550);
    }
  }
}

uint64_t getEnumTagSinglePayload for FileInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_227EDB13C()
{
  result = qword_27D80E898;
  if (!qword_27D80E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E898);
  }

  return result;
}

unint64_t sub_227EDB194()
{
  result = qword_27D80E8A0;
  if (!qword_27D80E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8A0);
  }

  return result;
}

unint64_t sub_227EDB1EC()
{
  result = qword_27D80E8A8;
  if (!qword_27D80E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8A8);
  }

  return result;
}

uint64_t sub_227EDB240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C52556C61636F6CLL && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365)
  {

    return 5;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
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

uint64_t type metadata accessor for PersistenceState()
{
  result = qword_2813CDAC8;
  if (!qword_2813CDAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227EDB524()
{
  sub_227EC246C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ResourceInfo(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_227EDB5A8@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = sub_227F2B234();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v19 - v14;
  sub_227EC2180(v5, v19 - v14, &unk_27D80E3B0, &unk_227F2DB00);
  v16 = 1;
  if ((*(v8 + 48))(v15, 1, v7) == 1)
  {
    v17 = a3;
    return (*(v8 + 56))(v17, v16, 1, v7);
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = a3;
  v20(v11);
  if (!v4)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
    return (*(v8 + 56))(v17, v16, 1, v7);
  }

  result = (*(v8 + 8))(v11, v7);
  __break(1u);
  return result;
}

unint64_t sub_227EDB7BC()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x4973657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_227EDB82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227EE357C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227EDB854(uint64_t a1)
{
  v2 = sub_227EE3444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EDB890(uint64_t a1)
{
  v2 = sub_227EE3444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EDB8CC()
{
  v0 = type metadata accessor for ResourceInfo(0);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for PersistenceState();
  __swift_allocate_value_buffer(v11, qword_2813CE108);
  v12 = __swift_project_value_buffer(v11, qword_2813CE108);
  v13 = sub_227F2B234();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 1, 1, v13);
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v0, qword_2813CDFF8);
  sub_227EE36A8(v15, v6, type metadata accessor for ResourceInfo);
  sub_227EE36A8(v15, v4, type metadata accessor for ResourceInfo);
  v14(v12, 1, 1, v13);
  sub_227EE3498(v10, v12);
  sub_227EE3790(v6, v12 + *(v11 + 20), type metadata accessor for ResourceInfo);
  return sub_227EE3790(v4, v12 + *(v11 + 24), type metadata accessor for ResourceInfo);
}

uint64_t sub_227EDBB0C()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_27D81B1A8);
  v1 = __swift_project_value_buffer(v0, qword_27D81B1A8);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2813CE088);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_227EDBBD4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v27 - v13;
  v15 = v1 + *(type metadata accessor for PersistenceState() + 20);
  v16 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v15 + *(v16 + 32), v10, &qword_27D80E8F8, &qword_227F2F5E0);
  v17 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_227EB8430(v10, &qword_27D80E8F8, &qword_227F2F5E0);
    v18 = sub_227F2B114();
    v19 = *(v18 - 8);
    v20 = *(v19 + 56);
    v20(v14, 1, 1, v18);
    sub_227EC2180(v15, v6, &qword_27D80E8F0, &unk_227F2F4B0);
    v21 = type metadata accessor for FileInfo(0);
    if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
    {
      sub_227EB8430(v6, &qword_27D80E8F0, &unk_227F2F4B0);
      v22 = 1;
    }

    else
    {
      (*(v19 + 16))(a1, v6, v18);
      sub_227EE3730(v6, type metadata accessor for FileInfo);
      v22 = 0;
    }

    v20(a1, v22, 1, v18);
    result = (*(v19 + 48))(v14, 1, v18);
    if (result != 1)
    {
      return sub_227EB8430(v14, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v23 = sub_227F2B114();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v14, v10, v23);
    sub_227EE3730(v10, type metadata accessor for ResourceInfo.DownloadState);
    v25 = *(v24 + 56);
    v25(v14, 0, 1, v23);
    (*(v24 + 32))(a1, v14, v23);
    return (v25)(a1, 0, 1, v23);
  }

  return result;
}

BOOL sub_227EDBFDC(void *a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = sub_227F2B234();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v31 - v18;
  v20 = v2 + *(type metadata accessor for PersistenceState() + 20);
  sub_227EC2180(v20, v19, &qword_27D80E8F0, &unk_227F2F4B0);
  v21 = type metadata accessor for FileInfo(0);
  v22 = (*(*(v21 - 8) + 48))(v19, 1, v21);
  sub_227EB8430(v19, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v22 == 1)
  {
    return 0;
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 8))(v23, v24);
  v25 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v20 + *(v25 + 20), v8, &unk_27D80E3B0, &unk_227F2DB00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v15, v9);
    sub_227EB8430(v8, &unk_27D80E3B0, &unk_227F2DB00);
    return 0;
  }

  v27 = v32;
  (*(v10 + 32))(v32, v8, v9);
  sub_227F2B194();
  v29 = v28;
  v30 = *(v10 + 8);
  v30(v27, v9);
  v30(v15, v9);
  return v29 <= a2;
}

BOOL sub_227EDC30C(void *a1, double a2, double a3)
{
  v7 = sub_227F2B234();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for ResourceInfo.DownloadState(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v45 - v23;
  if (!sub_227EDBFDC(a1, a2))
  {
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v33 = sub_227F2B334();
    __swift_project_value_buffer(v33, qword_2813CE088);
    v29 = sub_227F2B304();
    v30 = sub_227F2B8E4();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_12;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "Cached manifest is too old.";
    goto LABEL_11;
  }

  v50 = v17;
  v46 = v11;
  v47 = a1;
  v25 = v3 + *(type metadata accessor for PersistenceState() + 24);
  v26 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v25 + *(v26 + 20), v24, &unk_27D80E3B0, &unk_227F2DB00);
  v48 = v8;
  v49 = v7;
  v27 = (*(v8 + 48))(v24, 1, v7);
  sub_227EB8430(v24, &unk_27D80E3B0, &unk_227F2DB00);
  if (v27 == 1)
  {
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v28 = sub_227F2B334();
    __swift_project_value_buffer(v28, qword_2813CE088);
    v29 = sub_227F2B304();
    v30 = sub_227F2B8D4();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_12;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "No cached updates.";
LABEL_11:
    _os_log_impl(&dword_227EB2000, v29, v30, v32, v31, 2u);
    MEMORY[0x22AAAD240](v31, -1, -1);
LABEL_12:

    return 0;
  }

  sub_227EC2180(v25 + *(v26 + 32), v15, &qword_27D80E8F8, &qword_227F2F5E0);
  if ((*(v50 + 48))(v15, 1, v16) == 1)
  {
    sub_227EB8430(v15, &qword_27D80E8F8, &qword_227F2F5E0);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v35 = sub_227F2B334();
    __swift_project_value_buffer(v35, qword_2813CE088);
    v36 = sub_227F2B304();
    v37 = sub_227F2B8D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_227EB2000, v36, v37, "Resources are up to date.", v38, 2u);
      MEMORY[0x22AAAD240](v38, -1, -1);
    }

    return 1;
  }

  else
  {
    sub_227EE3790(v15, v20, type metadata accessor for ResourceInfo.DownloadState);
    v39 = v47[3];
    v40 = v47[4];
    __swift_project_boxed_opaque_existential_1(v47, v39);
    v41 = v46;
    (*(v40 + 8))(v39, v40);
    v42 = *(v16 + 20);
    sub_227F2B194();
    v44 = v43;
    (*(v48 + 8))(v41, v49);
    sub_227EE3730(v20, type metadata accessor for ResourceInfo.DownloadState);
    return v44 <= a3;
  }
}

void *sub_227EDC894(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for PersistenceState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_227F2B114();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v50 = a1;
  v15 = *v14;
  sub_227EEA850(sub_227EE3818);
  if (!v2)
  {
    v16 = v9;
    v47 = v8;
    v48 = v5;
    v17 = v49;
    sub_227F2A3D0(v13);
    v46 = 0;
    (*(v10 + 8))(v13, v16);
    v19 = a2;
    v20 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v21 = [objc_opt_self() defaultManager];
    sub_227F2B0B4();
    v22 = sub_227F2B644();

    LODWORD(v20) = [v21 fileExistsAtPath_];

    if (v20)
    {
      v23 = sub_227F2AE24();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v45 = sub_227F2AE14();
      v26 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);

      v27 = sub_227F2B304();
      v28 = sub_227F2B8D4();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v51 = v30;
        *v29 = 136315138;
        v44 = v28;
        sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
        v31 = sub_227F2BC24();
        v33 = sub_227ECAC40(v31, v32, &v51);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_227EB2000, v27, v44, "Loading the store file %s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        MEMORY[0x22AAAD240](v30, -1, -1);
        MEMORY[0x22AAAD240](v29, -1, -1);
      }

      v34 = v46;
      v35 = v47;
      v36 = sub_227F2B124();
      a2 = v34;
      if (v34)
      {
        v38 = v48;

        v42 = *__swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_227EEA678();
        if (qword_2813CDAE0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v38, qword_2813CE108);
      }

      else
      {
        v40 = v36;
        v41 = v37;
        sub_227EE3820(&qword_27D80E918, type metadata accessor for PersistenceState);
        sub_227F2AE04();
        sub_227EE3730(v17, type metadata accessor for PersistenceState);
        sub_227EC15A8(v40, v41);

        sub_227EE3790(v35, v17, type metadata accessor for PersistenceState);
        return 0;
      }
    }

    else
    {
      sub_227EE3730(v17, type metadata accessor for PersistenceState);
      if (qword_2813CDAE0 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v48, qword_2813CE108);
      sub_227EE36A8(v39, v17, type metadata accessor for PersistenceState);
      return 0;
    }
  }

  return a2;
}

void sub_227EDCE1C(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D80DF08 != -1)
  {
    swift_once();
  }

  v7 = sub_227F2B334();
  __swift_project_value_buffer(v7, qword_27D81B1A8);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_227F2B304();
  v9 = sub_227F2B8D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26[0] = v11;
    *v10 = 136315138;
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
    v12 = sub_227F2BC24();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_227ECAC40(v12, v14, v26);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_227EB2000, v8, v9, "removing cache folder: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAAD240](v11, -1, -1);
    MEMORY[0x22AAAD240](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v16 = [objc_opt_self() defaultManager];
  v17 = sub_227F2B044();
  v26[0] = 0;
  v18 = [v16 removeItemAtURL:v17 error:v26];

  v19 = v26[0];
  if (v18)
  {
    v20 = *MEMORY[0x277D85DE8];

    v21 = v19;
  }

  else
  {
    v25 = v26[0];
    v22 = v26[0];
    v23 = sub_227F2AFC4();

    swift_willThrow();
    v24 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_227EDD188(uint64_t a1)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for ContainerizableURL(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = sub_227F2B114();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v54 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v50 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v50 - v24;
  v58 = type metadata accessor for PersistenceState();
  v59 = a1;
  sub_227EC2180(a1 + *(v58 + 20), v13, &qword_27D80E8F0, &unk_227F2F4B0);
  v26 = type metadata accessor for FileInfo(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  v56 = v27 + 48;
  v57 = v28;
  if (v28(v13, 1, v26) == 1)
  {
    sub_227EB8430(v13, &qword_27D80E8F0, &unk_227F2F4B0);
    v29 = v14;
    v30 = v15;
    v31 = v6;
  }

  else
  {
    v50 = v1;
    sub_227EE36A8(&v13[*(v26 + 20)], v6, type metadata accessor for ContainerizableURL);
    v51 = v6;
    v52 = v15;
    v32 = *(v15 + 32);
    v32(v23, v6, v14);
    sub_227EE3730(v13, type metadata accessor for FileInfo);
    v53 = v14;
    v32(v25, v23, v14);
    v33 = [objc_opt_self() defaultManager];
    v34 = sub_227F2B044();
    v60[0] = 0;
    v35 = [v33 removeItemAtURL:v34 error:v60];

    if (v35)
    {
      v36 = v60[0];
    }

    else
    {
      v37 = v60[0];
      v38 = sub_227F2AFC4();

      swift_willThrow();
    }

    v30 = v52;
    v29 = v53;
    (*(v52 + 8))(v25, v53);
    v31 = v51;
  }

  sub_227EC2180(v59 + *(v58 + 24), v11, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v57(v11, 1, v26) == 1)
  {
    result = sub_227EB8430(v11, &qword_27D80E8F0, &unk_227F2F4B0);
  }

  else
  {
    sub_227EE36A8(&v11[*(v26 + 20)], v31, type metadata accessor for ContainerizableURL);
    v40 = *(v30 + 32);
    v41 = v54;
    v40(v54, v31, v29);
    sub_227EE3730(v11, type metadata accessor for FileInfo);
    v42 = v55;
    v40(v55, v41, v29);
    v43 = [objc_opt_self() defaultManager];
    v44 = sub_227F2B044();
    v60[0] = 0;
    v45 = [v43 removeItemAtURL:v44 error:v60];

    if (v45)
    {
      v46 = *(v30 + 8);
      v47 = v60[0];
      result = v46(v42, v29);
    }

    else
    {
      v48 = v60[0];
      sub_227F2AFC4();

      swift_willThrow();
      result = (*(v30 + 8))(v42, v29);
    }
  }

  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227EDD714@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = sub_227F2AE64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_227EE3508(a4);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v12 = sub_227F2B334();
  __swift_project_value_buffer(v12, qword_2813CE088);
  v13 = sub_227F2B304();
  v14 = sub_227F2B8D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_227EB2000, v13, v14, "Updating state", v15, 2u);
    MEMORY[0x22AAAD240](v15, -1, -1);
  }

  v16 = sub_227F2AEA4();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v19 = *(v10 + 72);
  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState();
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState);
  v21 = sub_227F2AE84();
  if (v30)
  {
  }

  else
  {
    v23 = v21;
    v24 = v22;
    v25 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_227EE3508(a4);

    sub_227ED3E74(v23, v24);
    sub_227EEB77C(v25, v25, v23, v24, a3, a4, a5);
    sub_227ECD7FC(a4);

    sub_227EC15A8(v23, v24);
    sub_227EE36A8(a2, a6, type metadata accessor for PersistenceState);
  }

  sub_227ECD7FC(a4);
  return sub_227ECD7FC(a4);
}

uint64_t sub_227EDDAC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, uint64_t, unint64_t)@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_227F2AE64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v10 = sub_227F2B334();
  __swift_project_value_buffer(v10, qword_2813CE088);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Updating state", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  v14 = sub_227F2AEA4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState();
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState);
  v19 = sub_227F2AE84();
  if (v4)
  {
  }

  v21 = v19;
  v22 = v20;
  v23 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v21, v22);
  a3(v23, v23, v21, v22);
  sub_227EC15A8(v21, v22);

  sub_227EC15A8(v21, v22);
  return sub_227EE36A8(a2, a4, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDDE44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_227F2AE64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v10 = sub_227F2B334();
  __swift_project_value_buffer(v10, qword_2813CE088);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Updating state", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  v14 = sub_227F2AEA4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState();
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState);
  v19 = sub_227F2AE84();
  if (v4)
  {
  }

  v21 = v19;
  v22 = v20;
  v23 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v21, v22);
  sub_227EEBE68(v23, v23, v21, v22, a3);
  sub_227EC15A8(v21, v22);

  sub_227EC15A8(v21, v22);
  return sub_227EE36A8(a2, a4, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDE1BC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = sub_227F2AE64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v10 = sub_227F2B334();
  __swift_project_value_buffer(v10, qword_2813CE088);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Updating state", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  v14 = sub_227F2AEA4();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v17 = *(v8 + 72);
  v18 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_227F2C980;
  sub_227F2AE54();
  sub_227EE3820(&qword_27D80E6B0, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  type metadata accessor for PersistenceState();
  sub_227EE3820(&qword_27D80E900, type metadata accessor for PersistenceState);
  v19 = sub_227F2AE84();
  if (v4)
  {
  }

  v21 = v19;
  v22 = v20;
  v23 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_227ED3E74(v21, v22);
  sub_227EEC19C(v23, v23, a2);
  sub_227EC15A8(v21, v22);

  sub_227EC15A8(v21, v22);
  return sub_227EE36A8(v5, a3, type metadata accessor for PersistenceState);
}

uint64_t sub_227EDE538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8C0, &qword_227F2F498);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v44 - v7;
  v50 = type metadata accessor for ResourceInfo(0);
  v47 = *(v50 - 8);
  v8 = *(v47 + 64);
  v9 = MEMORY[0x28223BE20](v50);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v51 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8C8, &qword_227F2F4A0);
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v53 = type metadata accessor for PersistenceState();
  v21 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_227F2B234();
  v25 = v23;
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v27 = a1[3];
  v26 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_227EE3444();
  v28 = v54;
  sub_227F2BD74();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(v55);
    return sub_227EB8430(v25, &unk_27D80E3B0, &unk_227F2DB00);
  }

  else
  {
    v54 = v13;
    v29 = v50;
    v45 = v11;
    v58 = 0;
    sub_227EE3820(&qword_27D80E890, MEMORY[0x277CC9578]);
    v30 = v51;
    sub_227F2BB34();
    sub_227EE3498(v30, v25);
    v57 = 1;
    sub_227EE3820(&qword_27D80E8D8, type metadata accessor for ResourceInfo);
    v31 = v49;
    v32 = v29;
    sub_227F2BB34();
    v44 = v20;
    v51 = v17;
    v34 = *(v47 + 48);
    if (v34(v31, 1, v29) == 1)
    {
      v35 = v48;
      v36 = v54;
      if (qword_2813CDFF0 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v32, qword_2813CDFF8);
      sub_227EE36A8(v37, v36, type metadata accessor for ResourceInfo);
      v38 = v49;
      if (v34(v49, 1, v32) != 1)
      {
        sub_227EB8430(v38, &qword_27D80E8C0, &qword_227F2F498);
      }
    }

    else
    {
      v36 = v54;
      sub_227EE3790(v31, v54, type metadata accessor for ResourceInfo);
      v35 = v48;
    }

    sub_227EE3790(v36, v25 + *(v53 + 20), type metadata accessor for ResourceInfo);
    v56 = 2;
    sub_227F2BB34();
    v39 = v34(v35, 1, v32);
    v40 = v52;
    if (v39 == 1)
    {
      v42 = v45;
      v41 = v46;
      if (qword_2813CDFF0 != -1)
      {
        swift_once();
      }

      v43 = __swift_project_value_buffer(v32, qword_2813CDFF8);
      sub_227EE36A8(v43, v42, type metadata accessor for ResourceInfo);
      (*(v40 + 8))(v44, v51);
      if (v34(v35, 1, v32) != 1)
      {
        sub_227EB8430(v35, &qword_27D80E8C0, &qword_227F2F498);
      }
    }

    else
    {
      (*(v52 + 8))(v44, v51);
      v42 = v45;
      sub_227EE3790(v35, v45, type metadata accessor for ResourceInfo);
      v41 = v46;
    }

    sub_227EE3790(v42, v25 + *(v53 + 24), type metadata accessor for ResourceInfo);
    sub_227EE36A8(v25, v41, type metadata accessor for PersistenceState);
    __swift_destroy_boxed_opaque_existential_0(v55);
    return sub_227EE3730(v25, type metadata accessor for PersistenceState);
  }
}

uint64_t sub_227EDECAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8E0, &qword_227F2F4A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE3444();
  sub_227F2BD94();
  v19 = 0;
  sub_227F2B234();
  sub_227EE3820(&qword_27D80E870, MEMORY[0x277CC9578]);
  sub_227F2BBC4();
  if (!v2)
  {
    v12 = type metadata accessor for PersistenceState();
    v13 = *(v12 + 20);
    if (qword_2813CDFF0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for ResourceInfo(0);
    v15 = __swift_project_value_buffer(v14, qword_2813CDFF8);
    if (!_s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(v3 + v13, v15))
    {
      v18 = 1;
      sub_227EE3820(&qword_27D80E8E8, type metadata accessor for ResourceInfo);
      sub_227F2BC14();
    }

    if (!_s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(v3 + *(v12 + 24), v15))
    {
      v17 = 2;
      sub_227EE3820(&qword_27D80E8E8, type metadata accessor for ResourceInfo);
      sub_227F2BC14();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_227EDEF80(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v90 = a4;
  v91 = a5;
  v89 = a3;
  v83 = a2;
  v100 = a1;
  v88 = sub_227F2B234();
  v85 = *(v88 - 8);
  v6 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v84 = &v79[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v79[-v10];
  v97 = type metadata accessor for PersistenceState();
  v11 = *(*(v97 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v97);
  v86 = &v79[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v87 = &v79[-v14];
  v15 = sub_227F2B114();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v82 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v81 = &v79[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v79[-v24];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v93 = &v79[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v79[-v31];
  MEMORY[0x28223BE20](v30);
  v34 = &v79[-v33];
  v99 = v5;
  sub_227EDBBD4(&v79[-v33]);
  v94 = *(v16 + 16);
  v95 = v16 + 16;
  v94(v32, v100, v15);
  (*(v16 + 56))(v32, 0, 1, v15);
  v35 = *(v22 + 56);
  sub_227EC2180(v34, v25, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v32, &v25[v35], &qword_27D80E310, &unk_227F2D990);
  v92 = v16;
  v36 = *(v16 + 48);
  if (v36(v25, 1, v15) == 1)
  {
    sub_227EB8430(v32, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v34, &qword_27D80E310, &unk_227F2D990);
    if (v36(&v25[v35], 1, v15) == 1)
    {
      sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
LABEL_12:
      if (qword_27D80DF08 != -1)
      {
        swift_once();
      }

      v69 = sub_227F2B334();
      __swift_project_value_buffer(v69, qword_27D81B1A8);
      v70 = v82;
      v94(v82, v100, v15);
      v71 = sub_227F2B304();
      v72 = sub_227F2B8E4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v101 = v74;
        *v73 = 136315138;
        sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
        v75 = sub_227F2BC24();
        v77 = v76;
        (*(v92 + 8))(v70, v15);
        v78 = sub_227ECAC40(v75, v77, &v101);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_227EB2000, v71, v72, "ensureNewManifest was invoked twice for the same URL: %s", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v74);
        MEMORY[0x22AAAD240](v74, -1, -1);
        MEMORY[0x22AAAD240](v73, -1, -1);
      }

      else
      {

        (*(v92 + 8))(v70, v15);
      }

      return 1;
    }

    goto LABEL_6;
  }

  sub_227EC2180(v25, v93, &qword_27D80E310, &unk_227F2D990);
  if (v36(&v25[v35], 1, v15) == 1)
  {
    sub_227EB8430(v32, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v34, &qword_27D80E310, &unk_227F2D990);
    (*(v92 + 8))(v93, v15);
LABEL_6:
    sub_227EB8430(v25, &qword_27D80E4F8, &qword_227F2DE80);
    v37 = v99;
    goto LABEL_7;
  }

  v65 = v92;
  v66 = v81;
  (*(v92 + 32))(v81, &v25[v35], v15);
  sub_227EE3820(&qword_27D80E508, MEMORY[0x277CC9260]);
  v67 = v93;
  v80 = sub_227F2B634();
  v68 = *(v65 + 8);
  v68(v66, v15);
  sub_227EB8430(v32, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v34, &qword_27D80E310, &unk_227F2D990);
  v68(v67, v15);
  sub_227EB8430(v25, &qword_27D80E310, &unk_227F2D990);
  v37 = v99;
  if (v80)
  {
    goto LABEL_12;
  }

LABEL_7:
  sub_227EC2180(v37, v98, &unk_27D80E3B0, &unk_227F2DB00);
  v38 = v97;
  v39 = v37 + *(v97 + 20);
  v40 = v83[3];
  v41 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v40);
  v42 = v84;
  (*(v41 + 8))(v40, v41);
  v43 = *(v38 + 20);
  v44 = v86;
  v45 = &v86[v43];
  v46 = type metadata accessor for FileInfo(0);
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
  v47 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v39 + v47[5], &v45[v47[5]], &unk_27D80E3B0, &unk_227F2DB00);
  v48 = v47[6];
  v49 = v85;
  v50 = v88;
  (*(v85 + 16))(&v45[v48], v42, v88);
  v93 = *(v49 + 56);
  (v93)(&v45[v48], 0, 1, v50);
  v51 = &v45[v47[8]];
  v52 = v15;
  v53 = v50;
  v94(v51, v100, v52);
  v54 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(v49 + 32))(&v51[*(v54 + 20)], v42, v53);
  (*(*(v54 - 8) + 56))(v51, 0, 1, v54);
  v55 = &v45[v47[7]];
  *v55 = 0;
  v55[8] = 1;
  v56 = &v45[v47[9]];
  *v56 = 0;
  v56[8] = 1;
  v57 = &v45[v47[10]];
  *v57 = 0u;
  *(v57 + 1) = 0u;
  *(v57 + 4) = 1;
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v58 = __swift_project_value_buffer(v47, qword_2813CDFF8);
  sub_227EE36A8(v58, v44 + *(v97 + 24), type metadata accessor for ResourceInfo);
  (v93)(v44, 1, 1, v53);
  sub_227EE3498(v98, v44);
  v60 = v90;
  v59 = v91;
  sub_227EE3508(v90);
  v61 = v87;
  v62 = v99;
  v63 = v96;
  sub_227EDD714(v89, v44, v99, v60, v59, v87);
  result = sub_227EE3730(v44, type metadata accessor for PersistenceState);
  if (!v63)
  {
    sub_227EE3518(v61, v62);
    return 2;
  }

  return result;
}

uint64_t sub_227EDF9FC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v92 = a3;
  v103 = a2;
  v106[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for ContainerizableURL(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v100 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v90 - v12;
  v14 = sub_227F2B114();
  v104 = *(v14 - 8);
  v15 = *(v104 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v94 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v102 = &v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v90 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v90 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v90 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v90 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v90 - v31;
  v98 = type metadata accessor for PersistenceState();
  v99 = a1;
  sub_227EC2180(a1 + *(v98 + 20), v13, &qword_27D80E8F0, &unk_227F2F4B0);
  v33 = type metadata accessor for FileInfo(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v97 = v34 + 48;
  v36 = v35(v13, 1, v33);
  v101 = v7;
  v96 = v33;
  if (v36 == 1)
  {
    sub_227EB8430(v13, &qword_27D80E8F0, &unk_227F2F4B0);
    v37 = v104;
    v38 = v14;
  }

  else
  {
    v91 = v35;
    v95 = v24;
    sub_227EE36A8(&v13[*(v33 + 20)], v7, type metadata accessor for ContainerizableURL);
    v39 = v14;
    v40 = *(v104 + 32);
    v40(v30, v7, v14);
    sub_227EE3730(v13, type metadata accessor for FileInfo);
    v40(v32, v30, v14);
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v41 = sub_227F2B334();
    __swift_project_value_buffer(v41, qword_2813CE088);
    v42 = v104;
    (*(v104 + 16))(v27, v32, v39);
    v43 = sub_227F2B304();
    v44 = sub_227F2B8D4();
    v38 = v39;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v106[0] = v90;
      *v45 = 136315138;
      sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
      v46 = sub_227F2BC24();
      v47 = v42;
      v48 = v32;
      v49 = v38;
      v51 = v50;
      v52 = *(v47 + 8);
      v52(v27, v49);
      v53 = sub_227ECAC40(v46, v51, v106);
      v38 = v49;
      v32 = v48;

      *(v45 + 4) = v53;
      _os_log_impl(&dword_227EB2000, v43, v44, "Deleting old manifest %s", v45, 0xCu);
      v54 = v90;
      __swift_destroy_boxed_opaque_existential_0(v90);
      MEMORY[0x22AAAD240](v54, -1, -1);
      MEMORY[0x22AAAD240](v45, -1, -1);

      v24 = v95;
      v37 = v104;
    }

    else
    {

      v52 = *(v42 + 8);
      v52(v27, v39);
      v24 = v95;
      v37 = v42;
    }

    v55 = [objc_opt_self() defaultManager];
    v56 = sub_227F2B044();
    v106[0] = 0;
    v57 = [v55 removeItemAtURL:v56 error:v106];

    if (!v57)
    {
      v80 = v106[0];
      v81 = sub_227F2AFC4();

      v105 = v81;
      swift_willThrow();
      result = (v52)(v32, v38);
      goto LABEL_23;
    }

    v58 = v106[0];
    v52(v32, v38);
    v35 = v91;
  }

  v59 = v100;
  sub_227EC2180(v99 + *(v98 + 24), v100, &qword_27D80E8F0, &unk_227F2F4B0);
  v60 = v96;
  v61 = v35(v59, 1, v96);
  v63 = v101;
  v62 = v102;
  if (v61 == 1)
  {
    result = sub_227EB8430(v59, &qword_27D80E8F0, &unk_227F2F4B0);
    if (!v103)
    {
      goto LABEL_23;
    }

LABEL_21:
    v86 = v105;
    result = v103(result);
    v105 = v86;
    goto LABEL_23;
  }

  sub_227EE36A8(v59 + *(v60 + 20), v101, type metadata accessor for ContainerizableURL);
  v65 = *(v37 + 32);
  v66 = v93;
  v65(v93, v63, v38);
  sub_227EE3730(v59, type metadata accessor for FileInfo);
  v65(v24, v66, v38);
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v67 = sub_227F2B334();
  __swift_project_value_buffer(v67, qword_2813CE088);
  (*(v37 + 16))(v62, v24, v38);
  v68 = sub_227F2B304();
  v69 = v38;
  v70 = sub_227F2B8D4();
  if (os_log_type_enabled(v68, v70))
  {
    v71 = v62;
    v72 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v106[0] = v101;
    *v72 = 136315138;
    sub_227EE3820(&qword_27D80E008, MEMORY[0x277CC9260]);
    v73 = sub_227F2BC24();
    v95 = v24;
    v75 = v74;
    v76 = v71;
    v77 = *(v37 + 8);
    v77(v76, v69);
    v78 = sub_227ECAC40(v73, v75, v106);
    v24 = v95;

    *(v72 + 4) = v78;
    _os_log_impl(&dword_227EB2000, v68, v70, "Deleting old updates %s", v72, 0xCu);
    v79 = v101;
    __swift_destroy_boxed_opaque_existential_0(v101);
    MEMORY[0x22AAAD240](v79, -1, -1);
    MEMORY[0x22AAAD240](v72, -1, -1);
  }

  else
  {

    v77 = *(v37 + 8);
    v77(v62, v69);
  }

  v82 = [objc_opt_self() defaultManager];
  v83 = v94;
  sub_227F2B064();
  v84 = sub_227F2B044();
  v77(v83, v69);
  v106[0] = 0;
  LODWORD(v83) = [v82 removeItemAtURL:v84 error:v106];

  if (!v83)
  {
    v87 = v106[0];
    v88 = sub_227F2AFC4();

    v105 = v88;
    swift_willThrow();
    result = (v77)(v24, v69);
    goto LABEL_23;
  }

  v85 = v106[0];
  result = (v77)(v24, v69);
  if (v103)
  {
    goto LABEL_21;
  }

LABEL_23:
  v89 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227EE03E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v203 = a4;
  v208 = a2;
  v220 = a1;
  v199 = type metadata accessor for ResourceInfo(0);
  v5 = *(*(v199 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v199);
  v200 = v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v206 = v181 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v209 = v181 - v11;
  v211 = type metadata accessor for PersistenceState();
  v12 = *(*(v211 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v211);
  v202 = v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v201 = v181 - v15;
  v224 = type metadata accessor for FileInfo(0);
  v210 = *(v224 - 8);
  v16 = *(v210 + 64);
  v17 = MEMORY[0x28223BE20](v224);
  v198 = v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v193 = v181 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v194 = v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v207 = (v181 - v24);
  v25 = type metadata accessor for ContainerizableURL(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_227F2B114();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v205 = v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v204 = v181 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = v181 - v36;
  v215 = type metadata accessor for Manifest();
  v38 = *(*(v215 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v215);
  v191 = v181 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v190 = v181 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v214 = v181 - v44;
  MEMORY[0x28223BE20](v43);
  v212 = v181 - v45;
  v219 = sub_227F2B234();
  v222 = *(v219 - 8);
  v46 = *(v222 + 64);
  v47 = MEMORY[0x28223BE20](v219);
  v197 = v181 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = v181 - v49;
  v51 = a3[3];
  v52 = a3[4];
  v53 = __swift_project_boxed_opaque_existential_1(a3, v51);
  v54 = *(v52 + 8);
  v218 = v50;
  v195 = v53;
  v196 = v54;
  v54(v51, v52);
  sub_227EE36A8(v220 + *(v224 + 20), v28, type metadata accessor for ContainerizableURL);
  v223 = v30;
  v55 = v30 + 32;
  v56 = *(v30 + 32);
  v192 = v28;
  v221 = v29;
  v56(v37, v28, v29);
  v57 = sub_227F2AE24();
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  sub_227F2AE14();
  v216 = v37;
  v60 = v217;
  v217 = sub_227F2B124();
  if (v60)
  {

    (*(v223 + 8))(v216, v221);
    return (*(v222 + 8))(v218, v219);
  }

  v62 = v61;
  v184 = v57;
  v185 = v56;
  v186 = v55;
  v187 = v52 + 8;
  v188 = v52;
  v189 = v51;
  v63 = sub_227EE3820(&qword_27D80E910, type metadata accessor for Manifest);
  v64 = v214;
  v65 = v215;
  v66 = v217;
  sub_227F2AE04();
  v68 = *(v223 + 8);
  v69 = v216;
  v70 = v221;
  v216 = (v223 + 8);
  v183 = v68;
  v68(v69, v221);
  sub_227EC15A8(v66, v62);

  v71 = v64;
  v72 = v212;
  sub_227EE3790(v71, v212, type metadata accessor for Manifest);
  v73 = (v72 + *(v65 + 36));
  v75 = *v73;
  v74 = v73[1];
  v214 = v75;
  v217 = v74;
  v76 = v211;
  v77 = v213 + *(v211 + 20);
  v78 = v207;
  sub_227EC2180(v77, v207, &qword_27D80E8F0, &unk_227F2F4B0);
  v79 = v224;
  v182 = *(v210 + 48);
  if (v182(v78, 1, v224) == 1)
  {
    v192 = v77;
    v204 = 0;
    v207 = 0;
    v80 = v205;
  }

  else
  {
    v181[1] = v63;
    v91 = v193;
    sub_227EE3790(v78, v193, type metadata accessor for FileInfo);
    v92 = v192;
    sub_227EE36A8(v91 + *(v79 + 20), v192, type metadata accessor for ContainerizableURL);
    v185(v204, v92, v70);
    v93 = *(v184 + 48);
    v94 = *(v184 + 52);
    swift_allocObject();
    sub_227F2AE14();
    v101 = sub_227F2B124();
    v103 = v102;
    v192 = v77;
    v104 = v191;
    v105 = v215;
    sub_227F2AE04();
    v80 = v205;

    sub_227EC15A8(v101, v103);
    v70 = v221;
    v183(v204, v221);
    sub_227EE3730(v91, type metadata accessor for FileInfo);
    v116 = v190;
    sub_227EE3790(v104, v190, type metadata accessor for Manifest);
    v117 = (v116 + *(v105 + 36));
    v118 = v117[1];
    v204 = *v117;
    v207 = v118;

    sub_227EE3730(v116, type metadata accessor for Manifest);
    v76 = v211;
    v72 = v212;
  }

  v205 = 0;
  v193 = v213 + *(v76 + 24);
  v81 = v194;
  sub_227EC2180(v193, v194, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v182(v81, 1, v224) == 1)
  {
    sub_227EB8430(v81, &qword_27D80E8F0, &unk_227F2F4B0);
    v194 = v72 + *(v215 + 24);
    v82 = sub_227F2B004();
    v84 = v83;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v88 = 1;
    v89 = v220;
    v90 = v217;
  }

  else
  {
    (*(v223 + 16))(v80, v81, v70);
    sub_227EE3730(v81, type metadata accessor for FileInfo);
    v86 = sub_227F2B004();
    v95 = v70;
    v96 = v72;
    v85 = v97;
    v183(v80, v95);
    v194 = v96 + *(v215 + 24);
    v98 = sub_227F2B004();
    v82 = v98;
    v84 = v99;
    v89 = v220;
    v90 = v217;
    if (v85)
    {
      if (v86 == v98 && v85 == v99)
      {
        if (v207)
        {
          if (v214 == v204 && v207 == v217)
          {
            goto LABEL_21;
          }

          v100 = sub_227F2BC64();
          goto LABEL_26;
        }

LABEL_23:

        LODWORD(v215) = 1;
        LODWORD(v216) = 1;
LABEL_43:
        v106 = v209;
        goto LABEL_44;
      }

      v87 = sub_227F2BC64();
      v88 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 1;
    }
  }

  if (!v207)
  {
    if ((v87 & 1) == 0)
    {
      LODWORD(v215) = v207 == 0;
      LODWORD(v191) = 0;
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  LODWORD(v215) = 0;
  if (v214 == v204 && v207 == v90)
  {
    if (v87)
    {
LABEL_21:

      LODWORD(v216) = 1;
      LODWORD(v215) = 1;
      v106 = v209;
      goto LABEL_55;
    }

    LODWORD(v191) = 1;
LABEL_30:
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v107 = sub_227F2B334();
    __swift_project_value_buffer(v107, qword_2813CE088);

    v108 = sub_227F2B304();
    v109 = sub_227F2B8D4();

    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v225 = v111;
      *v110 = 136315394;
      if (v88)
      {
        v112 = 0x3E6C696E3CLL;
      }

      else
      {
        v112 = v86;
      }

      if (v88)
      {
        v85 = 0xE500000000000000;
      }

      v113 = sub_227ECAC40(v112, v85, &v225);

      *(v110 + 4) = v113;
      *(v110 + 12) = 2080;
      v114 = sub_227ECAC40(v82, v84, &v225);

      *(v110 + 14) = v114;
      _os_log_impl(&dword_227EB2000, v108, v109, "updates url changed from %s to %s", v110, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v111, -1, -1);
      v115 = v110;
      v89 = v220;
      MEMORY[0x22AAAD240](v115, -1, -1);
    }

    else
    {
    }

    LODWORD(v216) = 0;
    v106 = v209;
    v90 = v217;
    if (v191)
    {
      goto LABEL_41;
    }

LABEL_44:
    if (qword_2813CD580 != -1)
    {
      swift_once();
    }

    v119 = sub_227F2B334();
    __swift_project_value_buffer(v119, qword_2813CE088);
    v120 = v207;

    v121 = sub_227F2B304();
    v122 = sub_227F2B8D4();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = v90;
      v125 = swift_slowAlloc();
      v225 = v125;
      *v123 = 136315394;
      if (v215)
      {
        v126 = 0x3E6C696E3CLL;
      }

      else
      {
        v126 = v204;
      }

      if (v215)
      {
        v120 = 0xE500000000000000;
      }

      v127 = sub_227ECAC40(v126, v120, &v225);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2080;
      *(v123 + 14) = sub_227ECAC40(v214, v124, &v225);
      _os_log_impl(&dword_227EB2000, v121, v122, "digest changed from %s to %s", v123, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v125, -1, -1);
      v128 = v123;
      v106 = v209;
      MEMORY[0x22AAAD240](v128, -1, -1);
    }

    else
    {
    }

    LODWORD(v215) = 0;
    goto LABEL_55;
  }

  LODWORD(v191) = sub_227F2BC64();
  if ((v87 & 1) == 0)
  {
    goto LABEL_30;
  }

  v100 = v191;
LABEL_26:

  LODWORD(v216) = 1;
  if ((v100 & 1) == 0)
  {
    LODWORD(v215) = 0;
    goto LABEL_43;
  }

  v106 = v209;
LABEL_41:

  LODWORD(v215) = 1;
LABEL_55:
  v217 = *(v222 + 56);
  v129 = v219;
  (v217)(v106, 1, 1, v219);
  v130 = v223 + 16;
  v131 = *(v223 + 16);
  v132 = v198;
  v133 = v221;
  v131(v198, v89, v221);
  v134 = v224;
  v135 = &v132[*(v224 + 20)];
  v223 = v130;
  v214 = v131;
  v131(v135, v208, v133);
  v136 = (v89 + v134[6]);
  v137 = *(v89 + v134[7]);
  v138 = v89;
  v140 = *v136;
  v139 = v136[1];
  v141 = (v138 + v134[8]);
  v142 = v132;
  v144 = *v141;
  v143 = v141[1];
  sub_227EC2180(v138 + v134[9], v142 + v134[9], &unk_27D80E3B0, &unk_227F2DB00);
  v145 = (v142 + v134[6]);
  *v145 = v140;
  v145[1] = v139;
  *(v142 + v134[7]) = v137;
  v146 = (v142 + v134[8]);
  *v146 = v144;
  v146[1] = v143;

  v147 = v197;
  v196(v189, v188);
  v148 = v206;
  sub_227EE36A8(v142, v206, type metadata accessor for FileInfo);
  (*(v210 + 56))(v148, 0, 1, v134);
  v149 = v199;
  v150 = *(v199 + 20);
  v151 = v217;
  (*(v222 + 32))(v148 + v150, v147, v129);
  v152 = v129;
  v153 = v151;
  v151((v148 + v150), 0, 1, v152);
  sub_227EC2180(&v192[v149[6]], v148 + v149[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE3730(v142, type metadata accessor for FileInfo);
  v154 = v149[8];
  v155 = type metadata accessor for ResourceInfo.DownloadState(0);
  v156 = *(v155 - 8);
  v157 = *(v156 + 56);
  v158 = v156 + 56;
  v157(v148 + v154, 1, 1, v155);
  v159 = v148 + v149[7];
  *v159 = v137;
  *(v159 + 8) = 0;
  v160 = v148 + v149[9];
  *v160 = 0;
  *(v160 + 8) = 1;
  v161 = v148 + v149[10];
  *v161 = 0u;
  *(v161 + 16) = 0u;
  *(v161 + 32) = 1;
  if (v216 && (v215 & 1) != 0)
  {
    v162 = v200;
    sub_227EE36A8(v193, v200, type metadata accessor for ResourceInfo);
    v163 = v213;
    v164 = v203;
    v165 = v219;
  }

  else
  {
    v166 = v193;
    v167 = v149;
    v162 = v200;
    sub_227EC2180(v193, v200, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EC2180(v166 + v167[5], v162 + v167[5], &unk_27D80E3B0, &unk_227F2DB00);
    v168 = v167[6];
    v169 = *(v222 + 16);
    v224 = v158;
    v170 = v218;
    v216 = v157;
    v165 = v219;
    v169(v162 + v168, v218, v219);
    (v217)(v162 + v168, 0, 1, v165);
    v171 = v162 + v167[8];
    (v214)(v171, v194, v221);
    v169(v171 + *(v155 + 20), v170, v165);
    v153 = v217;
    v148 = v206;
    v216(v171, 0, 1, v155);
    v172 = v162 + v167[7];
    *v172 = 0;
    *(v172 + 8) = 1;
    v173 = v162 + v167[9];
    *v173 = 0;
    *(v173 + 8) = 1;
    v174 = v162 + v167[10];
    *v174 = 0u;
    *(v174 + 16) = 0u;
    *(v174 + 32) = 1;
    v163 = v213;
    v164 = v203;
  }

  v175 = v202;
  v153(v202, 1, 1, v165);
  sub_227EE3498(v209, v175);
  v176 = v211;
  sub_227EE3790(v148, v175 + *(v211 + 20), type metadata accessor for ResourceInfo);
  v177 = sub_227EE3790(v162, v175 + *(v176 + 24), type metadata accessor for ResourceInfo);
  MEMORY[0x28223BE20](v177);
  v178 = v220;
  v181[-4] = v163;
  v181[-3] = v178;
  v181[-2] = v208;
  v179 = v201;
  v180 = v205;
  sub_227EDE1BC(v164, sub_227EE3710, v201);
  (*(v222 + 8))(v218, v165);
  sub_227EE3730(v175, type metadata accessor for PersistenceState);
  if (v180)
  {
    return sub_227EE3730(v212, type metadata accessor for Manifest);
  }

  sub_227EE3730(v212, type metadata accessor for Manifest);
  return sub_227EE3518(v179, v163);
}