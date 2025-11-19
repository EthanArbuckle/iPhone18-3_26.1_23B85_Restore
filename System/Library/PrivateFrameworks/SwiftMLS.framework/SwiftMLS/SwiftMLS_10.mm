uint64_t sub_26BEBDA1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = 0;
  v9 = 0;
  v10 = a4 + 56;
  v11 = a3 + 32;
  while (1)
  {
    v13 = *(v11 + 2 * v9);
    v14 = *(a4 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    v15 = sub_26C00B0CC();
    v16 = -1 << *(a4 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    v19 = 1 << v17;
    if (((1 << v17) & *(v10 + 8 * (v17 >> 6))) != 0)
    {
      v20 = *(a4 + 48);
      if (*(v20 + 2 * v17) != v13)
      {
        v21 = ~v16;
        do
        {
          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = 1 << v17;
          if (((1 << v17) & *(v10 + 8 * (v17 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v20 + 2 * v17) != v13);
      }

      v12 = a1[v18];
      a1[v18] = v12 | v19;
      if ((v12 & v19) == 0 && __OFADD__(v8++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v9 == v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v8 = 0;
LABEL_15:

  return sub_26BEBE0AC(a1, a2, v8, a4, a5, a6);
}

uint64_t sub_26BEBDB9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v37 = a4 + 56;

  v32 = 0;
  v33 = v5;
  v12 = 0;
  v35 = v10;
  v36 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v4 + 40);
    sub_26C00B05C();

    sub_26C00A58C();
    v20 = sub_26C00B0CC();
    v21 = -1 << *(v4 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    v24 = 1 << v22;
    if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) != 0)
    {
      v25 = v4;
      v26 = (*(v4 + 48) + 16 * v22);
      if (*v26 != v18 || v26[1] != v17)
      {
        v28 = ~v21;
        while ((sub_26C00AF2C() & 1) == 0)
        {
          v22 = (v22 + 1) & v28;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v37 + 8 * (v22 >> 6))) == 0)
          {
            v4 = v25;
            v5 = v33;
            goto LABEL_23;
          }

          v29 = (*(v25 + 48) + 16 * v22);
          if (*v29 == v18 && v29[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v23];
      a1[v23] = v13 | v24;
      v4 = v25;
      v5 = v33;
      v10 = v35;
      v6 = v36;
      if ((v13 & v24) == 0 && __OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_26BEBE2AC(a1, a2, v32, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v35;
      v6 = v36;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_26BEBDDF4(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    result = a3(&v7, result, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_26BEBDE70(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED70, &qword_26C016128);
  result = sub_26C00ABFC();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_26C00B05C();
    sub_26BE00608(v17, v18);
    sub_26C00911C();
    result = sub_26C00B0CC();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE0AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_26C00ABFC();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 2 * (v15 | (v13 << 6)));
    v19 = *(v11 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 2 * v23) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
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

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE2AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED40, &unk_26C0160F8);
  result = sub_26C00ABFC();
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
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_26C00B05C();

    sub_26C00A58C();
    result = sub_26C00B0CC();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE4D0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _WORD *a4@<X8>)
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
    *a4 = *(*(a3 + 48) + 2 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE524@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
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
    v4 = *(*(a3 + 48) + 16 * result);
    *a4 = v4;
    return sub_26BE00608(v4, *(&v4 + 1));
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_26BEBE580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BEBE5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEBE634(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_26BEBE67C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BEBE70C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_26C00928C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BEBE750()
{
  result = qword_28045ED68;
  if (!qword_28045ED68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28045ED68);
  }

  return result;
}

uint64_t sub_26BEBE7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t MLS.Time.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v39 = sub_26C00950C();
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  v4 = MEMORY[0x28223BE20](v39);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v34 = type metadata accessor for MLS.Time();
  v8 = *(*(v34 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v34);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v36 = &v31 - v11;
  v12 = sub_26C00934C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v31 - v18;
  v20 = a1;
  sub_26C0094EC();
  sub_26C00960C();
  sub_26BEC073C(&qword_28045ED78, MEMORY[0x277D6A8A8]);
  LOBYTE(a1) = sub_26C00A43C();
  v21 = *(v13 + 8);
  v21(v17, v12);
  if (a1)
  {
    v21(v19, v12);
    sub_26C00969C();
    v22 = v38;
    v23 = v20;
    v24 = v39;
    (*(v38 + 16))(v7, v20, v39);
    v26 = v36;
    v25 = v37;
    sub_26C0096EC();
    v27 = v24;
    if (!v25)
    {
      goto LABEL_9;
    }

    return (*(v22 + 8))(v23, v27);
  }

  v28 = v37;
  sub_26C00980C();
  v29 = sub_26C00A43C();
  v21(v17, v12);
  v21(v19, v12);
  if ((v29 & 1) == 0)
  {
    v23 = v20;
    sub_26C0094EC();
    sub_26C00955C();
    sub_26BEC073C(&qword_28045ED80, MEMORY[0x277D6A9C0]);
    swift_allocError();
    sub_26C00954C();
    v21(v17, v12);
    swift_willThrow();
    v27 = v39;
    v22 = v38;
    return (*(v22 + 8))(v23, v27);
  }

  sub_26C00989C();
  v22 = v38;
  v23 = v20;
  v24 = v39;
  (*(v38 + 16))(v33, v20);
  v26 = v32;
  sub_26C0096EC();
  if (v28)
  {
    v27 = v24;
    return (*(v22 + 8))(v23, v27);
  }

LABEL_9:
  (*(v22 + 8))(v23, v24);
  swift_storeEnumTagMultiPayload();
  return sub_26BEBED64(v26, v35);
}

uint64_t type metadata accessor for MLS.Time()
{
  result = qword_28045EDA0;
  if (!qword_28045EDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEBED64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLS.Time.serialize(into:)()
{
  v1 = sub_26C00969C();
  v18 = *(v1 - 8);
  v2 = *(v18 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26C00989C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLS.Time();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v15 = v18;
    (*(v18 + 32))(v4, v13, v1);
    sub_26C00976C();
    return (*(v15 + 8))(v4, v1);
  }

  else if (EnumCaseMultiPayload)
  {
    result = sub_26C00AD6C();
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v9, v13, v5);
    sub_26C00976C();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_26BEBF078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MLS.Time.makeTime(from:)@<X0>(char *a1@<X8>)
{
  v25 = a1;
  v2 = sub_26C00969C();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = sub_26C00989C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  result = sub_26C0091EC();
  v19 = round(v18);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  Int64.utcDateFromTimestamp.getter(v19, &v24);
  if ((v24 - 1950) > 0x63)
  {
    result = sub_26C00963C();
    if (v1)
    {
      return result;
    }

    v21 = *(v23 + 32);
    v21(v8, v6, v2);
    v21(v25, v8, v2);
  }

  else
  {
    result = sub_26C00983C();
    if (v1)
    {
      return result;
    }

    v20 = *(v10 + 32);
    v20(v16, v14, v9);
    v20(v25, v16, v9);
  }

  type metadata accessor for MLS.Time();
  return swift_storeEnumTagMultiPayload();
}

uint64_t Date.utcDate.getter@<X0>(_OWORD *a1@<X8>)
{
  result = sub_26C0091EC();
  v4 = round(v3);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    result = Int64.utcDateFromTimestamp.getter(v4, v7);
    v5 = v7[1];
    v6 = v7[2];
    *a1 = v7[0];
    a1[1] = v5;
    a1[2] = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t MLS.Time.hash(into:)()
{
  v1 = sub_26C00969C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00989C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLS.Time();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(v0, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v14, v1);
    MEMORY[0x26D699B20](1);
    sub_26BEC073C(&qword_28045ED88, MEMORY[0x277D6AA20]);
    sub_26C00A3CC();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    MEMORY[0x26D699B20](0);
    sub_26BEC073C(&qword_28045ED90, MEMORY[0x277D6AA40]);
    sub_26C00A3CC();
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t MLS.Time.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t sub_26BEBF784()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t sub_26BEBF7C8()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t Date.init(fromUTCDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = __OFSUB__(a1, 1900);
  result = a1 - 1900;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v13 & 1);
  v15 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = 86400 * v16;
  if ((v16 * 86400) >> 64 != (86400 * v16) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = 3600 * a4;
  if ((a4 * 3600) >> 64 != (3600 * a4) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = 60 * a5;
  if ((a5 * 60) >> 64 != (60 * a5) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v22, a6))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return sub_26C0091DC();
}

uint64_t Date.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_26C00989C();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_26C00969C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  v18 = type metadata accessor for MLS.Time();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_26BEBF078(a1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 32))(v17, v21, v10);
      (*(v11 + 16))(v15, v17, v10);
      Date.init(_:)(v15);
      sub_26BEC0698(a1);
      return (*(v11 + 8))(v17, v10);
    }

    else
    {
      result = sub_26C00AD6C();
      __break(1u);
    }
  }

  else
  {
    v25 = v28;
    v24 = v29;
    (*(v28 + 32))(v9, v21, v29);
    (*(v25 + 16))(v7, v9, v24);
    Date.init(_:)(v7);
    sub_26BEC0698(v22);
    return (*(v25 + 8))(v9, v24);
  }

  return result;
}

uint64_t Date.init(_:)(uint64_t a1)
{
  v2 = sub_26C00964C();
  v3 = sub_26C00966C();
  v4 = sub_26C00962C();
  v5 = sub_26C00965C();
  v6 = sub_26C00967C();
  v7 = sub_26C00968C();
  result = v2 - 1900;
  if (__OFSUB__(v2, 1900))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v9 & 1);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = 86400 * v12;
  if ((v12 * 86400) >> 64 != (86400 * v12) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = __OFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 3600 * v5;
  if ((v5 * 3600) >> 64 != (3600 * v5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 60 * v6;
  if ((v6 * 60) >> 64 != (60 * v6) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v19, v7))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_26C0091DC();
  v20 = sub_26C00969C();
  v21 = *(*(v20 - 8) + 8);

  return v21(a1, v20);
}

{
  v2 = sub_26C00984C();
  v3 = sub_26C00986C();
  v4 = sub_26C00982C();
  v5 = sub_26C00985C();
  v6 = sub_26C00987C();
  v7 = sub_26C00988C();
  result = v2 - 1900;
  if (__OFSUB__(v2, 1900))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v9 & 1);
  v11 = v10 + result;
  if (__OFADD__(v10, result))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = 86400 * v12;
  if ((v12 * 86400) >> 64 != (86400 * v12) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = __OFADD__(v11, v13);
  v15 = v11 + v13;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = 3600 * v5;
  if ((v5 * 3600) >> 64 != (3600 * v5) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = __OFADD__(v15, v16);
  v17 = v15 + v16;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = 60 * v6;
  if ((v6 * 60) >> 64 != (60 * v6) >> 63)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = __OFADD__(v17, v18);
  v19 = v17 + v18;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (__OFADD__(v19, v7))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  sub_26C0091DC();
  v20 = sub_26C00989C();
  v21 = *(*(v20 - 8) + 8);

  return v21(a1, v20);
}

uint64_t GeneralizedTime.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26C00969C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00989C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MLS.Time();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEBF078(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v20 = a1;
    v21 = v4;
    v22 = a2;
    (*(v10 + 32))(v13, v17, v9);
    sub_26C00984C();
    sub_26C00986C();
    sub_26C00982C();
    sub_26C00985C();
    sub_26C00987C();
    sub_26C00988C();
    sub_26C00963C();
    sub_26BEC0698(v20);
    (*(v10 + 8))(v13, v9);
    v17 = v8;
    v4 = v21;
    a2 = v22;
    return (*(v5 + 32))(a2, v17, v4);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_26BEC0698(a1);
    return (*(v5 + 32))(a2, v17, v4);
  }

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t GeneralizedTime.init(_:)(uint64_t a1)
{
  sub_26C0091EC();
  v3 = round(v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  Int64.utcDateFromTimestamp.getter(v3, &v7);
  sub_26C00963C();
  v4 = sub_26C00921C();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v30 = sub_26C00969C();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00989C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLS.Time();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDB0, &qword_26C016200);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_26BEBF078(v31, &v29 - v21);
  sub_26BEBF078(v32, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26BEBF078(v22, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v30;
      (*(v2 + 32))(v5, &v22[v23], v30);
      v25 = MEMORY[0x26D6980D0](v15, v5);
      v26 = *(v2 + 8);
      v26(v5, v24);
      v26(v15, v24);
LABEL_9:
      sub_26BEC0698(v22);
      return v25 & 1;
    }

    (*(v2 + 8))(v15, v30);
  }

  else
  {
    sub_26BEBF078(v22, v17);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v7 + 32))(v10, &v22[v23], v6);
      v25 = MEMORY[0x26D6982D0](v17, v10);
      v27 = *(v7 + 8);
      v27(v10, v6);
      v27(v17, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v17, v6);
  }

  sub_26BEC07F8(v22);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_26BEC0698(uint64_t a1)
{
  v2 = type metadata accessor for MLS.Time();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEC073C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BEC0784()
{
  result = sub_26C00989C();
  if (v1 <= 0x3F)
  {
    result = sub_26C00969C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BEC07F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDB0, &qword_26C016200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int64 __swiftcall Int64.init(timestampFromUTCDate:)(Swift::tuple_year_Int_month_Int_day_Int_hours_Int_minutes_Int_seconds_Int *timestampFromUTCDate)
{
  v6 = __OFSUB__(timestampFromUTCDate, 1900);
  result = &timestampFromUTCDate[-40].day + 4;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v5;
  v9 = v4;
  v10 = v3;
  v11 = v2;
  v12 = v1;
  v14 = _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(result);
  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(result, v13 & 1);
  v15 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = 86400 * v16;
  if ((v16 * 86400) >> 64 != (86400 * v16) >> 63)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = __OFADD__(v15, v17);
  v18 = v15 + v17;
  if (v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = 3600 * v10;
  if ((v10 * 3600) >> 64 != (3600 * v10) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = 60 * v9;
  if ((v9 * 60) >> 64 != (60 * v9) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = __OFADD__(v20, v21);
  v22 = v20 + v21;
  if (v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v22 + v8;
  if (__OFADD__(v22, v8))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t Int64.utcDateFromTimestamp.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1 - 951868800;
  if (!__OFADD__(a1, -951868800))
  {
    v3 = v2 / 86400;
    v4 = v2 % 86400;
    v5 = v3 + (v4 >> 63);
    v6 = v5 / 146097;
    v7 = v5 % 146097;
    if (v7 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7 + 146097;
    }

    v9 = (__PAIR128__(v8 / 36524, v8 - 146096) - 0x8EAC) >> 64;
    v10 = v8 - 36524 * v9;
    v11 = (__PAIR128__(v10 / 1461, v10 - 36525) - 0x5B5) >> 64;
    v12 = v10 - 1461 * v11;
    v13 = (__PAIR128__(v12 / 365, v12 - 1460) - 0x16D) >> 64;
    v14 = v12 - 365 * v13;
    for (i = -1; ; ++i)
    {
      v17 = i + 1;
      if (i + 1 > 0xB)
      {
        goto LABEL_19;
      }

      if (((1 << v17) & 0x6B4) != 0)
      {
        if (v14 < 31)
        {
          goto LABEL_22;
        }

LABEL_14:
        if (i > 9)
        {
          goto LABEL_31;
        }

        v16 = qword_26C016210[i];
        goto LABEL_7;
      }

      if (((1 << v17) & 0x14A) != 0)
      {
        if (v14 < 30)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }

      if (i == 10)
      {
        if (v14 < 29)
        {
          goto LABEL_22;
        }

        v16 = -29;
      }

      else
      {
LABEL_19:
        if (i != -1)
        {
          goto LABEL_31;
        }

        if (v14 < 31)
        {
LABEL_22:
          v18 = 400 * (v6 + (v7 >> 63));
          result = i - 11;
          if (i + 1 <= 9)
          {
            v20 = i + 1;
          }

          else
          {
            v20 = i - 11;
          }

          v21 = v18 + 100 * v9 + 4 * v11 + v13;
          if (i + 1 > 9)
          {
            ++v21;
          }

          v22 = v21 + 2000;
          v23 = v4 + 86400;
          if (v4 >= 0)
          {
            v23 = v4;
          }

          *a2 = v22;
          a2[1] = v20 + 3;
          a2[2] = v14 + 1;
          a2[3] = v23 / 3600;
          a2[4] = v23 / 60 % 60;
          a2[5] = v23 % 60;
          return result;
        }

        v16 = -31;
      }

LABEL_7:
      v14 += v16;
    }
  }

  __break(1u);
LABEL_31:
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t static Int64.daysInMonth(_:)(unint64_t a1)
{
  if (a1 < 0xC)
  {
    return qword_26C016260[a1];
  }

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t _ss5Int64V8SwiftMLSE13yearToSecondsyAB7seconds_Sb6isLeaptABFZ_0(uint64_t result)
{
  v1 = result - 100;
  if (__OFSUB__(result, 100))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v1 % 400 >= 0)
  {
    v2 = v1 % 400;
  }

  else
  {
    v2 = v1 % 400 + 400;
  }

  if (!v2)
  {
    v4 = 0;
    v5 = 1;
    goto LABEL_15;
  }

  v3 = v2 - 300;
  if (v2 >= 300)
  {
    v4 = 72;
    if (v2 != 300)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = v2 - 200;
    if (v2 >= 200)
    {
      v4 = 48;
      if (v2 != 200)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = v2 - 100;
      if (v2 < 100)
      {
        v4 = 0;
        v3 = v2;
LABEL_12:
        v2 = (v3 + ((v3 >> 29) & 3)) >> 2;
        v5 = (v3 & 3) == 0;
        goto LABEL_15;
      }

      v4 = 24;
      if (v2 != 100)
      {
        goto LABEL_12;
      }
    }
  }

  v5 = 0;
  v2 = 0;
LABEL_15:
  v6 = 31536000 * v1;
  if ((v1 * 31536000) >> 64 != (31536000 * v1) >> 63)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = 97 * (v1 / 400 + ((v1 % 400) >> 63)) - v5 + v2 + v4;
  v8 = 86400 * v7;
  if ((v7 * 86400) >> 64 != (86400 * v7) >> 63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = __OFADD__(v6, v8);
  v10 = v6 + v8;
  if (v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v9 = __OFADD__(v10, 946684800);
  v11 = v10 + 946684800;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  result = v11 + 86400;
  if (__OFADD__(v11, 86400))
  {
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t _ss5Int64V8SwiftMLSE14monthToSeconds_6isLeapA2B_SbtFZ_0(uint64_t a1, char a2)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        v2 = 15638400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else if (a1 == 7)
      {
        v2 = 18316800;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else
      {
        v2 = 20995200;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      goto LABEL_27;
    }

    switch(a1)
    {
      case 9:
        v2 = 23587200;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

LABEL_27:
        if (a1 >= 2)
        {
          v2 += 86400;
        }

        return v2;
      case 10:
        v2 = 26265600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 11:
        v2 = 28857600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v2 = 7776000;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else if (a1 == 4)
      {
        v2 = 10368000;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      else
      {
        v2 = 13046400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }
      }

      goto LABEL_27;
    }

    switch(a1)
    {
      case 0:
        v2 = 0;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 1:
        v2 = 2678400;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
      case 2:
        v2 = 5097600;
        if ((a2 & 1) == 0)
        {
          return v2;
        }

        goto LABEL_27;
    }
  }

  sub_26C00AC1C();

  v4 = sub_26C00AEFC();
  MEMORY[0x26D699090](v4);

  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t sub_26BEC102C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.Validity.notAfter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MLS.Validity() + 20);

  return sub_26BEBF078(v3, a1);
}

uint64_t type metadata accessor for MLS.Validity()
{
  result = qword_28045EDC8;
  if (!qword_28045EDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.Validity.notAfter.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MLS.Validity() + 20);

  return sub_26BEC102C(a1, v3);
}

uint64_t MLS.Validity.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.Validity();
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BEC12B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MLS.Time();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_26BEC1BBC(&qword_28045EDE8, type metadata accessor for MLS.Time);
  result = sub_26C0095EC();
  if (!v1)
  {
    sub_26C0095EC();
    sub_26BEBED64(v9, a1);
    v11 = type metadata accessor for MLS.Validity();
    return sub_26BEBED64(v7, a1 + *(v11 + 20));
  }

  return result;
}

uint64_t sub_26BEC1450()
{
  type metadata accessor for MLS.Time();
  sub_26BEC1BBC(&qword_28045EDE0, type metadata accessor for MLS.Time);
  result = sub_26C00976C();
  if (!v0)
  {
    v2 = *(type metadata accessor for MLS.Validity() + 20);
    return sub_26C00976C();
  }

  return result;
}

uint64_t static MLS.Validity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for MLS.Validity() + 20);

  return _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1 + v4, a2 + v4);
}

uint64_t MLS.Validity.hash(into:)()
{
  MLS.Time.hash(into:)();
  v1 = v0 + *(type metadata accessor for MLS.Validity() + 20);
  return MLS.Time.hash(into:)();
}

uint64_t MLS.Validity.hashValue.getter()
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  v1 = v0 + *(type metadata accessor for MLS.Validity() + 20);
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t sub_26BEC161C(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BEC1730(uint64_t a1)
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  v3 = v1 + *(a1 + 20);
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t sub_26BEC1784(uint64_t a1, uint64_t a2)
{
  MLS.Time.hash(into:)();
  v4 = v2 + *(a2 + 20);
  return MLS.Time.hash(into:)();
}

uint64_t sub_26BEC17C4(uint64_t a1, uint64_t a2)
{
  sub_26C00B05C();
  MLS.Time.hash(into:)();
  v4 = v2 + *(a2 + 20);
  MLS.Time.hash(into:)();
  return sub_26C00B0CC();
}

uint64_t sub_26BEC190C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s8SwiftMLS0B0O4TimeO2eeoiySbAE_AEtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_26BEC1A60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BEC1AE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.Time();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BEC1B50()
{
  result = type metadata accessor for MLS.Time();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BEC1BBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BEC1C1C(uint64_t *a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  if (!v1)
  {
    v12 = result;
    sub_26BE11228(v2, v3);
    v13 = __OFADD__(v12, v8);
    v14 = v12 + v8;
    if (v13)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v15 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_23;
      }

      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      v16 = v17 - v18;
      if (!__OFSUB__(v17, v18))
      {
        goto LABEL_23;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v5);
LABEL_23:
      v19 = sub_26BF30414(v16);
      sub_26BE11228(v4, v5);
      v20 = v19 + v16;
      if (__OFADD__(v19, v16))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v34 = v14 + v20;
      if (__OFADD__(v14, v20))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v38 = xmmword_26C00BBD0;
      v39 = 0;
      v21 = *(v6 + 16);
      v22 = (v6 + 32);
      v23 = 0x1FFFFFFFFFFFFFFFLL;
      if (v21 < 0x1FFFFFFFFFFFFFFFLL)
      {
        v23 = *(v6 + 16);
      }

      v35 = 4 * v23;
      v24 = 0x2000000000000000;
      v25 = MEMORY[0x277D838B0];
      v26 = MEMORY[0x277CC9C18];
      while (v21)
      {
        v27 = *v22++;
        v36 = bswap32(v27);
        v37[3] = v25;
        v37[4] = v26;
        v37[0] = &v36;
        v37[1] = v37;
        v28 = __swift_project_boxed_opaque_existential_1(v37, v25);
        v30 = *v28;
        v29 = v28[1];
        sub_26C00908C();
        __swift_destroy_boxed_opaque_existential_1(v37);
        --v21;
        if (!--v24)
        {
          __break(1u);
          break;
        }
      }

      v32 = sub_26BF30414(v35);
      sub_26BF2A30C(&v38);
      sub_26BE00258(v38, *(&v38 + 1));
      v33 = v32 + v35;
      if (__OFADD__(v32, v35))
      {
LABEL_42:
        __break(1u);
      }

      result = v34 + v33;
      if (!__OFADD__(v34, v33))
      {
        goto LABEL_32;
      }

      __break(1u);
      goto LABEL_37;
    }

    if (__OFSUB__(HIDWORD(v4), v4))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v16 = HIDWORD(v4) - v4;
    goto LABEL_23;
  }

LABEL_32:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.ParentNode.init(encryptionKey:parentHash:unmergedLeaves:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t MLS.ParentNode.unmergedLeaves.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_26BEC1EFC(uint64_t a1)
{
  result = MEMORY[0x26D699320](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_26BF75B2C(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEC2018(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v3 = a1;
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
  v24 = v3;
  v25 = v2;
  if (!v7)
  {
    goto LABEL_6;
  }

  while (2)
  {
    if (!*(v3 + 16))
    {
LABEL_29:

      return 0;
    }

LABEL_12:
    v13 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(v3 + 40);
    sub_26C00B05C();
    sub_26C00B07C();
    if (v14)
    {

      sub_26C00A58C();
    }

    result = sub_26C00B0CC();
    v17 = -1 << *(v3 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {

      return 0;
    }

    v7 &= v7 - 1;
    v19 = ~v17;
    v20 = *(v3 + 48);
    while (1)
    {
      v21 = (v20 + 16 * v18);
      v22 = v21[1];
      if (v22)
      {
        break;
      }

      if (!v14)
      {
        goto LABEL_26;
      }

LABEL_17:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {

        goto LABEL_29;
      }
    }

    if (!v14)
    {
      goto LABEL_17;
    }

    if (*v21 != v15 || v22 != v14)
    {
      result = sub_26C00AF2C();
      if ((result & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_26:
    v3 = v24;
    v2 = v25;
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_6:
  while (2)
  {
    v12 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      if (v12 >= v8)
      {

        return 1;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (!v7)
      {
        continue;
      }

      v11 = v12;
      if (!*(v3 + 16))
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEC2238(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 7) | (2 * __clz(__rbit64(v8)))));
    v13 = *(v3 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v14 = -1 << *(v3 + 32);
    v15 = result & ~v14;
    if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v16 = ~v14;
    while (*(*(v3 + 48) + 2 * v15) != v12)
    {
      v15 = (v15 + 1) & v16;
      if (((*(i + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BEC23AC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 144);
      v10 = *(v7 + 176);
      v59 = *(v7 + 160);
      v60 = v10;
      v11 = *(v7 + 80);
      v12 = *(v7 + 112);
      v55 = *(v7 + 96);
      v56 = v12;
      v13 = *(v7 + 112);
      v14 = *(v7 + 144);
      v57 = *(v7 + 128);
      v58 = v14;
      v15 = *(v7 + 16);
      v16 = *(v7 + 48);
      v51 = *(v7 + 32);
      v52 = v16;
      v17 = *(v7 + 48);
      v18 = *(v7 + 80);
      v53 = *(v7 + 64);
      v54 = v18;
      v19 = *(v7 + 16);
      v50[0] = *v7;
      v50[1] = v19;
      v20 = *(v7 + 176);
      v47 = v59;
      v48 = v20;
      v43 = v55;
      v44 = v13;
      v45 = v57;
      v46 = v9;
      v39 = v51;
      v40 = v17;
      v41 = v53;
      v42 = v11;
      v61 = *(v7 + 192);
      v49 = *(v7 + 192);
      v37 = v50[0];
      v38 = v15;
      sub_26BE5CDE4(v50, &v24);
      v21 = a1(&v37);
      if (v3)
      {
        break;
      }

      v4 = v21;
      v34 = v47;
      v35 = v48;
      v36 = v49;
      v30 = v43;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v26 = v39;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v24 = v37;
      v25 = v38;
      sub_26BE5CD74(&v24);
      v22 = v8-- == 0;
      v7 += 200;
      if ((v4 | v22))
      {
        return v4 & 1;
      }
    }

    v34 = v47;
    v35 = v48;
    v36 = v49;
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v26 = v39;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v24 = v37;
    v25 = v38;
    sub_26BE5CD74(&v24);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_26BEC254C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_26BEC25F8(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_26BE00608(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_26BE00258(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t MLS.GroupState.verifyPathPresentIfRequiredInCommit(proposals:commit:)(uint64_t a1, uint64_t a2)
{
  result = _s8SwiftMLS0B0O6CommitV14isPathRequired9proposalsSbSayAC16ResolvedProposalVG_tFZ_0(a1);
  if (result)
  {
    v4 = *(a2 + 88);
    v5 = *(a2 + 120);
    v9[6] = *(a2 + 104);
    v9[7] = v5;
    v9[8] = *(a2 + 136);
    v6 = *(a2 + 24);
    v7 = *(a2 + 56);
    v9[2] = *(a2 + 40);
    v9[3] = v7;
    v9[4] = *(a2 + 72);
    v9[5] = v4;
    v9[0] = *(a2 + 8);
    v9[1] = v6;
    result = sub_26BE59C80(v9);
    if (result == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v8 = 0;
      v8[112] = 7;
      return swift_willThrow();
    }
  }

  return result;
}

void *MLS.GroupState.validateLeafNode(leafNode:validationContext:)(void *result, uint64_t a2)
{
  v4 = *v2;
  if ((v4 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = result[2];
    v7 = result[3];
    v36 = result[14];
    v8 = *a2;
    v9 = *(a2 + 4);
    LOBYTE(v30) = v4 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v30, v21);
    LOBYTE(v30) = v21[0];
    v32 = *&v21[8];
    v33 = v22;
    v34 = v23;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v35);
    if (v3)
    {
    }

    else
    {

      *v21 = *v5;
      *&v21[16] = v6;
      v22 = v7;
      v10 = v5[5];
      v25 = v5[4];
      v26 = v10;
      v27 = v5[6];
      v11 = v5[3];
      v23 = v5[2];
      v24 = v11;
      v28 = v36;
      v29 = *(v5 + 120);
      v20 = v4;
      v12 = *(v19 + 8);
      v13 = *(v19 + 16);
      v30 = v8;
      v31 = v9;
      sub_26BEC6398(&v20, v12, v13, &v30);
      *v21 = *v5;
      *&v21[16] = v6;
      v22 = v7;
      v14 = v5[5];
      v25 = v5[4];
      v26 = v14;
      v27 = v5[6];
      v15 = v5[3];
      v23 = v5[2];
      v24 = v15;
      v28 = v36;
      v29 = *(v5 + 120);
      if (sub_26BFF3840(v36, 0))
      {
        *v21 = *v5;
        *&v21[16] = v6;
        v22 = v7;
        v16 = v5[5];
        v25 = v5[4];
        v26 = v16;
        v27 = v5[6];
        v17 = v5[3];
        v23 = v5[2];
        v24 = v17;
        v28 = v36;
        v29 = *(v5 + 120);
        v30 = v8;
        v31 = v9;
        MLS.GroupState.validateLeafNodeSource(leafNode:validationContext:)(v21, &v30);
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        *v18 = 22;
        *(v18 + 8) = 0u;
        *(v18 + 24) = 0u;
        *(v18 + 40) = 0u;
        *(v18 + 56) = 0u;
        *(v18 + 72) = 0u;
        *(v18 + 88) = 0u;
        *(v18 + 104) = 0;
        *(v18 + 112) = 23;
        swift_willThrow();
      }

      return __swift_destroy_boxed_opaque_existential_1(v35);
    }
  }

  return result;
}

void MLS.GroupState.validateForNormalCommit(proposals:commitSender:)(uint64_t a1@<X0>, int *a2@<X1>, _BYTE *a3@<X8>)
{
  v8 = type metadata accessor for MLS.GroupState();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 32;
    while (1)
    {
      v15 = *(a1 + v14 + 144);
      v16 = *(a1 + v14 + 176);
      v58 = *(a1 + v14 + 160);
      v59 = v16;
      v17 = *(a1 + v14 + 80);
      v18 = *(a1 + v14 + 112);
      v54 = *(a1 + v14 + 96);
      v55 = v18;
      v19 = *(a1 + v14 + 112);
      v20 = *(a1 + v14 + 144);
      v56 = *(a1 + v14 + 128);
      v57 = v20;
      v21 = *(a1 + v14 + 16);
      v22 = *(a1 + v14 + 48);
      v50 = *(a1 + v14 + 32);
      v51 = v22;
      v23 = *(a1 + v14 + 48);
      v24 = *(a1 + v14 + 80);
      v52 = *(a1 + v14 + 64);
      v53 = v24;
      v25 = *(a1 + v14 + 16);
      v48 = *(a1 + v14);
      v49 = v25;
      v26 = *(a1 + v14 + 176);
      v45 = v58;
      v46 = v26;
      v41[6] = v54;
      v42 = v19;
      v43 = v56;
      v44 = v15;
      v41[2] = v50;
      v41[3] = v23;
      v41[4] = v52;
      v41[5] = v17;
      v60 = *(a1 + v14 + 192);
      v47 = *(a1 + v14 + 192);
      v41[0] = v48;
      v41[1] = v21;
      v61 = v12;
      v62 = 0;
      sub_26BE5CDE4(&v48, v40);
      MLS.GroupState.validateProposal(_:commitSender:)(v41, &v61);
      if (v4)
      {
        break;
      }

      sub_26BE5CD74(&v48);
      v14 += 200;
      if (!--v13)
      {
        goto LABEL_5;
      }
    }

    sub_26BE5CD74(&v48);
    v40[0] = v4;
    v30 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
    if (swift_dynamicCast())
    {
      if (v42 == 20)
      {

        v31 = v41[0];
        v32 = BYTE4(v41[0]);
        v33 = DWORD2(v41[0]);
        v34 = BYTE12(v41[0]);
        MEMORY[0x28223BE20](v35);
        *(&v39 - 2) = v3;
        v36 = sub_26BEC23AC(sub_26BEC8B48, (&v39 - 4), a1);
        sub_26BE01654();
        swift_allocError();
        *v37 = v31;
        *(v37 + 4) = v32;
        *(v37 + 8) = v33;
        *(v37 + 12) = v34;
        *(v37 + 13) = v36 & 1;
        *(v37 + 112) = 20;
        swift_willThrow();
      }

      else
      {
        sub_26BE2DC9C(v41);
      }
    }
  }

  else
  {
LABEL_5:
    LODWORD(v48) = v12;
    sub_26BEC8154(a1, &v48);
    if (!v4)
    {
      LODWORD(v48) = v12;
      sub_26BEC825C(a1, &v48);
      sub_26BEC8344(a1);
      sub_26BEC8570(a1);
      sub_26BEC8754(a1);
      sub_26BEC898C(a1);
      sub_26BEC8A70(a1);
      sub_26BEC5C20(a1);
      sub_26BEC8BB8(v3, v11, type metadata accessor for MLS.GroupState);
      sub_26BE5BDA4(a1);

      v27 = *(v11 + 5);
      v28 = *(v11 + 12);
      v29 = *(v11 + 7);
      LOWORD(v48) = *(v11 + 16);
      *(&v48 + 1) = v27;
      LODWORD(v49) = v28;
      *(&v49 + 1) = v29;
      MEMORY[0x28223BE20](v27);
      *(&v39 - 2) = v11;

      MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BEC8B68);

      sub_26BEC6BA0();
      MLS.GroupState.validateLeafNodeCapabilities()();
      sub_26BEC8C20(v11, type metadata accessor for MLS.GroupState);
      if (!v38)
      {
        *a3 = 0;
      }
    }
  }
}

void MLS.GroupState.validateForExternalCommit(proposals:)(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v112 = a2;
  v2 = *(a1 + 16);
  if (!v2)
  {
    v61 = *(MEMORY[0x277D84F90] + 16);

    if (v61 != 1)
    {
LABEL_32:
      sub_26BE01654();
      swift_allocError();
      v64 = 17;
      goto LABEL_33;
    }

    v35 = MEMORY[0x277D84F90];
LABEL_30:
    v62 = *(v35 + 16);
    if (v62 > 1)
    {

      sub_26BE01654();
      swift_allocError();
      v64 = 18;
LABEL_33:
      *v63 = v64;
      v63[112] = 3;
      swift_willThrow();
      return;
    }

    if (v62)
    {
      v65 = *(v35 + 192);
      v82 = *(v35 + 176);
      v83 = v65;
      v84 = *(v35 + 208);
      v85 = *(v35 + 224);
      v66 = *(v35 + 128);
      v78 = *(v35 + 112);
      v79 = v66;
      v67 = *(v35 + 160);
      v80 = *(v35 + 144);
      v81 = v67;
      v68 = *(v35 + 48);
      v69 = *(v35 + 80);
      v70 = *(v35 + 96);
      v75 = *(v35 + 64);
      v76 = v69;
      v77 = v70;
      v73 = *(v35 + 32);
      v74 = v68;
      sub_26BE5CDE4(&v73, v72);

      v96 = v83;
      v97 = v84;
      v98 = v85;
      v92 = v79;
      v93 = v80;
      v94 = v81;
      v95 = v82;
      v88 = v75;
      v89 = v76;
      v90 = v77;
      v91 = v78;
      v86 = v73;
      v87 = v74;
      nullsub_1(&v86);
      if (v2 == 2)
      {
        sub_26BE5CD74(&v73);
LABEL_38:
        *v112 = 1;
        return;
      }
    }

    else
    {

      sub_26BEC8B80(&v86);
      if (v2 == 1)
      {
        goto LABEL_38;
      }
    }

    v109 = v96;
    v110 = v97;
    v111 = v98;
    v105 = v92;
    v106 = v93;
    v107 = v94;
    v108 = v95;
    v101 = v88;
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v99 = v86;
    v100 = v87;
    sub_26BE01654();
    swift_allocError();
    *v71 = 19;
    v71[112] = 3;
    swift_willThrow();
    sub_26BE2E258(&v99, &qword_28045EDF0, &qword_26C016518);
    return;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v5 + 200 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= v2)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v9 = v7[11];
      v109 = v7[10];
      v110 = v9;
      v111 = *(v7 + 192);
      v10 = v7[7];
      v105 = v7[6];
      v106 = v10;
      v11 = v7[9];
      v107 = v7[8];
      v108 = v11;
      v12 = v7[3];
      v101 = v7[2];
      v102 = v12;
      v13 = v7[5];
      v103 = v7[4];
      v104 = v13;
      v14 = v7[1];
      v99 = *v7;
      v100 = v14;
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_41;
      }

      v15 = v7[9];
      v81 = v7[8];
      v82 = v15;
      v83 = v7[10];
      *&v84 = *(v7 + 22);
      v16 = v7[5];
      v77 = v7[4];
      v78 = v16;
      v17 = v7[7];
      v79 = v7[6];
      v80 = v17;
      v18 = v7[1];
      v73 = *v7;
      v74 = v18;
      v19 = v7[3];
      v75 = v7[2];
      v76 = v19;
      if (sub_26BE5CD48(&v73) == 5)
      {
        break;
      }

      ++v8;
      v7 = (v7 + 200);
      if (v4 == v2)
      {
        goto LABEL_14;
      }
    }

    sub_26BE5CDC8(&v73);
    sub_26BE5CDE4(&v99, &v86);
    v72[0] = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26BECBA94(0, *(v6 + 16) + 1, 1);
      v6 = v72[0];
    }

    v21 = *(v6 + 16);
    v20 = *(v6 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_26BECBA94((v20 > 1), v21 + 1, 1);
      v6 = v72[0];
    }

    *(v6 + 16) = v21 + 1;
    v22 = v6 + 200 * v21;
    *(v22 + 32) = v99;
    v23 = v100;
    v24 = v101;
    v25 = v103;
    *(v22 + 80) = v102;
    *(v22 + 96) = v25;
    *(v22 + 48) = v23;
    *(v22 + 64) = v24;
    v26 = v104;
    v27 = v105;
    v28 = v107;
    *(v22 + 144) = v106;
    *(v22 + 160) = v28;
    *(v22 + 112) = v26;
    *(v22 + 128) = v27;
    v29 = v108;
    v30 = v109;
    v31 = v110;
    *(v22 + 224) = v111;
    *(v22 + 192) = v30;
    *(v22 + 208) = v31;
    *(v22 + 176) = v29;
  }

  while (v4 != v2);
LABEL_14:
  v32 = *(v6 + 16);

  if (v32 != 1)
  {
    goto LABEL_32;
  }

  v33 = 0;
  v34 = a1 + 32;
  v35 = MEMORY[0x277D84F90];
LABEL_16:
  v36 = (v34 + 200 * v33);
  v37 = v33;
  while (v37 < v2)
  {
    v38 = v36[11];
    v109 = v36[10];
    v110 = v38;
    v111 = *(v36 + 192);
    v39 = v36[7];
    v105 = v36[6];
    v106 = v39;
    v40 = v36[9];
    v107 = v36[8];
    v108 = v40;
    v41 = v36[3];
    v101 = v36[2];
    v102 = v41;
    v42 = v36[5];
    v103 = v36[4];
    v104 = v42;
    v43 = v36[1];
    v99 = *v36;
    v100 = v43;
    v33 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_43;
    }

    v44 = v36[9];
    v81 = v36[8];
    v82 = v44;
    v83 = v36[10];
    *&v84 = *(v36 + 22);
    v45 = v36[5];
    v77 = v36[4];
    v78 = v45;
    v46 = v36[7];
    v79 = v36[6];
    v80 = v46;
    v47 = v36[1];
    v73 = *v36;
    v74 = v47;
    v48 = v36[3];
    v75 = v36[2];
    v76 = v48;
    if (sub_26BE5CD48(&v73) == 2)
    {
      sub_26BE5CDC8(&v73);
      sub_26BE5CDE4(&v99, &v86);
      v72[0] = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26BECBA94(0, *(v35 + 16) + 1, 1);
        v35 = v72[0];
      }

      v50 = *(v35 + 16);
      v49 = *(v35 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_26BECBA94((v49 > 1), v50 + 1, 1);
        v35 = v72[0];
      }

      *(v35 + 16) = v50 + 1;
      v51 = v35 + 200 * v50;
      *(v51 + 32) = v99;
      v52 = v100;
      v53 = v101;
      v54 = v103;
      *(v51 + 80) = v102;
      *(v51 + 96) = v54;
      *(v51 + 48) = v52;
      *(v51 + 64) = v53;
      v55 = v104;
      v56 = v105;
      v57 = v107;
      *(v51 + 144) = v106;
      *(v51 + 160) = v57;
      *(v51 + 112) = v55;
      *(v51 + 128) = v56;
      v58 = v108;
      v59 = v109;
      v60 = v110;
      *(v51 + 224) = v111;
      *(v51 + 192) = v59;
      *(v51 + 208) = v60;
      *(v51 + 176) = v58;
      if (v33 != v2)
      {
        goto LABEL_16;
      }

      goto LABEL_30;
    }

    ++v37;
    v36 = (v36 + 200);
    if (v33 == v2)
    {
      goto LABEL_30;
    }
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void MLS.GroupInfo.sign(tree:signer:signaturePrivateKey:)(uint64_t a1, int *a2, void *a3)
{
  v5 = v3;
  v9 = _s12GroupInfoTBSVMa();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOWORD(v11) = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *a2;
  v83 = v11;
  v84 = v13;
  v85 = v14;
  v86 = v15;
  v82 = v16;
  MLS.TreeKEMPublicKey.find(leafIndex:)(&v82, &v87);
  if (!v4)
  {
    v96 = 0;
    v71[6] = v93;
    v71[7] = v94;
    v71[2] = v89;
    v71[3] = v90;
    v71[4] = v91;
    v71[5] = v92;
    v71[0] = v87;
    v71[1] = v88;
    v79 = v93;
    v80 = v94;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v72 = v95;
    v81 = v95;
    v73 = v87;
    v74 = v88;
    if (sub_26BE59C80(&v73) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v17 = 11;
      v17[112] = 0;
      swift_willThrow();
      return;
    }

    v60 = v9;
    v61 = v5;
    v58 = v16;
    v18 = a3[3];
    v19 = a3[4];
    v59 = a3;
    __swift_project_boxed_opaque_existential_1(a3, v18);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v62 = v57;
    v21 = *(AssociatedTypeWitness - 8);
    v22 = *(v21 + 64);
    MEMORY[0x28223BE20](AssociatedTypeWitness);
    v24 = &v57[-v23];
    (*(v19 + 40))(v18, v19);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    v28 = v27;
    (*(v21 + 8))(v24, AssociatedTypeWitness);
    LOBYTE(v24) = sub_26BE02DEC(v26, v28, v74, *(&v74 + 1));
    sub_26BE00258(v26, v28);
    if ((v24 & 1) == 0)
    {
      sub_26BE01654();
      swift_allocError();
      *v41 = 12;
      v41[112] = 0;
      swift_willThrow();
      sub_26BE2E258(v71, &qword_28045E6A0, &unk_26C016520);
      return;
    }

    v29 = v61;
    v30 = v61[3];
    v68 = v61[2];
    v69 = v30;
    v31 = *(v61 + 9);
    v70 = *(v61 + 8);
    v32 = v61[1];
    v66 = *v61;
    v67 = v32;
    v33 = type metadata accessor for MLS.GroupInfo();
    v34 = v60;
    sub_26BEC8BB8(v29 + v33[6], &v12[*(v60 + 24)], type metadata accessor for MLS.Cryptography.MACTag);
    v35 = v33[7];
    v36 = *(v29 + v35);
    v37 = v69;
    *(v12 + 2) = v68;
    *(v12 + 3) = v37;
    v38 = v70;
    v39 = v67;
    *v12 = v66;
    *(v12 + 1) = v39;
    *(v12 + 8) = v38;
    *(v12 + 9) = v31;
    *&v12[*(v34 + 28)] = v36;
    v64 = xmmword_26C00BBD0;
    v65 = 0;
    sub_26BE001A8(&v66, &v63);

    v40 = v96;
    sub_26BDFF8E4(v12);
    if (v40)
    {
      sub_26BEC8C20(v12, _s12GroupInfoTBSVMa);
      sub_26BE2E258(v71, &qword_28045E6A0, &unk_26C016520);
      sub_26BE00258(v64, *(&v64 + 1));
      return;
    }

    v42 = v64;
    v43 = *(&v64 + 1) >> 62;
    v96 = 0;
    if ((*(&v64 + 1) >> 62) > 1)
    {
      if (v43 != 2)
      {
        goto LABEL_17;
      }

      v44 = *(v64 + 24);
    }

    else
    {
      if (!v43)
      {
LABEL_17:
        v45 = sub_26C00909C();
        v47 = v46;
        sub_26BEC8C20(v12, _s12GroupInfoTBSVMa);
        sub_26BE00258(v42, *(&v42 + 1));
        v48 = v61;
        *(v61 + v35) = v58;
        v49 = v59[3];
        v50 = v59[4];
        __swift_project_boxed_opaque_existential_1(v59, v49);
        v51 = v96;
        v52 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x666E4970756F7247, 0xEC0000005342546FLL, v45, v47, v49, v50);
        if (v51)
        {
          sub_26BE00258(v45, v47);
          sub_26BE2E258(v71, &qword_28045E6A0, &unk_26C016520);
        }

        else
        {
          v54 = v52;
          v55 = v53;
          sub_26BE00258(v45, v47);
          sub_26BE2E258(v71, &qword_28045E6A0, &unk_26C016520);
          v56 = v48 + v33[8];
          sub_26BE00258(*v56, *(v56 + 8));
          *v56 = v54;
          *(v56 + 8) = v55;
        }

        return;
      }

      v44 = v64 >> 32;
    }

    if (v44 < 0)
    {
      __break(1u);
    }

    goto LABEL_17;
  }
}

uint64_t sub_26BEC3978(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 144);
  v22[8] = *(v1 + 128);
  v22[9] = v5;
  v22[10] = *(v1 + 160);
  v23 = *(v1 + 176);
  v6 = *(v1 + 80);
  v22[4] = *(v1 + 64);
  v22[5] = v6;
  v7 = *(v1 + 112);
  v22[6] = *(v1 + 96);
  v22[7] = v7;
  v8 = *(v1 + 16);
  v22[0] = *v1;
  v22[1] = v8;
  v9 = *(v1 + 48);
  v22[2] = *(v1 + 32);
  v22[3] = v9;
  v24 = xmmword_26C00BBD0;
  v25 = 0;
  sub_26BF7F22C(v22);
  v10 = v24;
  if (!v2)
  {
    v11 = *(&v24 + 1) >> 62;
    if ((*(&v24 + 1) >> 62) > 1)
    {
      if (v11 != 2)
      {
LABEL_10:
        v13 = sub_26C00909C();
        v15 = v14;
        sub_26BE00258(v10, *(&v10 + 1));
        v16 = a1[3];
        v17 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v16);
        v18 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x616B63615079654BLL, 0xED00005342546567, v13, v15, v16, v17);
        v20 = v19;
        sub_26BE00258(v13, v15);
        result = sub_26BE00258(*(v3 + 168), *(v3 + 176));
        *(v3 + 168) = v18;
        *(v3 + 176) = v20;
        return result;
      }

      v12 = *(v24 + 24);
    }

    else
    {
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = v24 >> 32;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  return sub_26BE00258(v24, *(&v24 + 1));
}

void MLS.GroupInfo.validateSignatureAgainstTree(tree:)(__int16 *a1)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 4);
  v5 = *(a1 + 3);
  v29 = *a1;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  v28 = *(v1 + *(type metadata accessor for MLS.GroupInfo() + 28));
  MLS.TreeKEMPublicKey.find(leafIndex:)(&v28, &v33);
  if (!v2)
  {
    v17[6] = v39;
    v17[7] = v40;
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v17[5] = v38;
    v17[0] = v33;
    v17[1] = v34;
    v25 = v39;
    v26 = v40;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v18 = v41;
    v27 = v41;
    v19 = v33;
    v20 = v34;
    if (sub_26BE59C80(&v19) == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v6 = 15;
      *(v6 + 8) = 0u;
      *(v6 + 24) = 0u;
      *(v6 + 40) = 0u;
      *(v6 + 56) = 0u;
      *(v6 + 72) = 0u;
      *(v6 + 88) = 0u;
      *(v6 + 104) = 0;
      *(v6 + 112) = 23;
      swift_willThrow();
    }

    else
    {
      v7 = *v1;
      if ((v7 - 3) < 0xFFFFFFFE)
      {
        __break(1u);
      }

      else
      {
        v9[0] = v7 != 1;
        MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v9, &v13);
        v9[0] = v13;
        v10 = v14;
        v11 = v15;
        v12 = v16;
        MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v20, *(&v20 + 1), &v13);
        if (MLS.GroupInfo.verifySignature(publicKey:)(&v13))
        {
          __swift_destroy_boxed_opaque_existential_1(&v13);

          sub_26BE2E258(v17, &qword_28045E6A0, &unk_26C016520);
        }

        else
        {
          sub_26BE01654();
          swift_allocError();
          *v8 = 9;
          *(v8 + 8) = 0u;
          *(v8 + 24) = 0u;
          *(v8 + 40) = 0u;
          *(v8 + 56) = 0u;
          *(v8 + 72) = 0u;
          *(v8 + 88) = 0u;
          *(v8 + 104) = 0;
          *(v8 + 112) = 23;
          swift_willThrow();

          sub_26BE2E258(v17, &qword_28045E6A0, &unk_26C016520);
          __swift_destroy_boxed_opaque_existential_1(&v13);
        }
      }
    }
  }
}

uint64_t MLS.KeyPackage.validateSignature(publicKey:)(void *a1)
{
  v4 = *(v1 + 144);
  v26[8] = *(v1 + 128);
  v26[9] = v4;
  v5 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v5;
  v6 = *(v1 + 112);
  v26[6] = *(v1 + 96);
  v26[7] = v6;
  v7 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v7;
  v8 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v8;
  v9 = *(v1 + 160);
  v10 = *(v1 + 168);
  v11 = *(v1 + 176);
  v30 = xmmword_26C00BBD0;
  v31 = 0;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  sub_26BF7F22C(v26);
  v13 = *(&v30 + 1);
  v12 = v30;
  if (v2)
  {
    return sub_26BE00258(v12, v13);
  }

  v14 = *(&v30 + 1) >> 62;
  if ((*(&v30 + 1) >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v15 = *(v30 + 24);
LABEL_8:
    if (v15 < 0)
    {
      __break(1u);
    }

    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v30 >> 32;
    goto LABEL_8;
  }

LABEL_10:
  v16 = v12;
  v17 = v13;
  v18 = sub_26C00909C();
  v20 = v19;
  sub_26BE00258(v16, v17);
  v21 = a1[3];
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v21);
  v23 = MLS.Cryptography.SignaturePublicKey.verifyWithLabel(label:message:signature:)(0x616B63615079654BLL, 0xED00005342546567, v18, v20, v10, v11, v21, v22);
  if ((v23 & 1) == 0)
  {
    sub_26BE01654();
    swift_allocError();
    *v24 = 31;
    *(v24 + 8) = 0u;
    *(v24 + 24) = 0u;
    *(v24 + 40) = 0u;
    *(v24 + 56) = 0u;
    *(v24 + 72) = 0u;
    *(v24 + 88) = 0u;
    *(v24 + 104) = 0;
    *(v24 + 112) = 23;
    swift_willThrow();
  }

  v12 = v18;
  v13 = v20;
  return sub_26BE00258(v12, v13);
}

uint64_t MLS.GroupState.minimalSupportedExtensionTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50384(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.minimalSupportedProposalTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC9138, &type metadata for MLS.ProposalType, sub_26BF750B0);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50778(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.minimalSupportedCredentialTypeSet()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_26BE51800(&v22);
  if (v1)
  {
  }

  else
  {

    v14[6] = v28;
    v14[7] = v29;
    v14[2] = v24;
    v14[3] = v25;
    v14[4] = v26;
    v14[5] = v27;
    v14[0] = v22;
    v14[1] = v23;
    v16[6] = v28;
    v16[7] = v29;
    v16[2] = v24;
    v16[3] = v25;
    v16[4] = v26;
    v16[5] = v27;
    v15 = v30;
    v17 = v30;
    v16[0] = v22;
    v16[1] = v23;
    if (sub_26BE59C80(v16) == 1)
    {
      return MEMORY[0x277D84FA0];
    }

    else
    {

      v8 = sub_26BEC7F8C(v7, sub_26BEC90E4, &type metadata for MLS.CredentialType, sub_26BF75094);

      v12 = v5;
      v13 = v8;
      v9 = v2;
      v10 = v3;
      v11 = v4;

      sub_26BE50E20(&v9, &v13);

      sub_26BE2E258(v14, &qword_28045E6A0, &unk_26C016520);
      return v13;
    }
  }
}

uint64_t MLS.GroupState.validateKeyPackage(_:)(__int128 *a1)
{
  v4 = type metadata accessor for MLS.GroupState();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v89 = &v82 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v82 - v15;
  v17 = a1[9];
  v124[7] = a1[8];
  v124[8] = v17;
  v125 = a1[10];
  v126 = *(a1 + 22);
  v18 = a1[5];
  v124[3] = a1[4];
  v124[4] = v18;
  v19 = a1[7];
  v124[5] = a1[6];
  v124[6] = v19;
  v20 = a1[1];
  v123 = *a1;
  v124[0] = v20;
  v21 = a1[3];
  v124[1] = a1[2];
  v124[2] = v21;
  v22 = v123;
  if (v123 != *v1)
  {
    sub_26BE01654();
    swift_allocError();
    *v27 = 1;
    v27[112] = 4;
    return swift_willThrow();
  }

  v87 = v12;
  v127 = 0;
  v128 = 3;
  sub_26BE00758(v124 + 8, v97);
  sub_26BE00758(v124 + 8, v97);
  v88 = v1;
  MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a1 + 3, &v127);
  if (v2)
  {
    sub_26BE00854(v124 + 8);
    v23 = *(a1 + 104);
    v24 = *(a1 + 136);
    v102 = *(a1 + 120);
    v103 = v24;
    *&v104 = *(a1 + 19);
    v25 = *(a1 + 40);
    v26 = *(a1 + 72);
    v98 = *(a1 + 56);
    v99 = v26;
    v100 = *(a1 + 88);
    v101 = v23;
    v97[0] = *(a1 + 24);
    v97[1] = v25;
    return sub_26BE00854(v97);
  }

  v28 = *(a1 + 104);
  v29 = *(a1 + 136);
  v121[6] = *(a1 + 120);
  v121[7] = v29;
  v122 = *(a1 + 19);
  v30 = *(a1 + 40);
  v31 = *(a1 + 72);
  v121[2] = *(a1 + 56);
  v121[3] = v31;
  v121[4] = *(a1 + 88);
  v121[5] = v28;
  v121[0] = *(a1 + 24);
  v121[1] = v30;
  sub_26BE00854(v121);
  v117 = *(&v124[6] + 8);
  v118 = *(&v124[7] + 8);
  v119 = *(&v124[8] + 1);
  v113 = *(&v124[2] + 8);
  v114 = *(&v124[3] + 8);
  v115 = *(&v124[4] + 8);
  v116 = *(&v124[5] + 8);
  v111 = *(v124 + 8);
  v112 = *(&v124[1] + 8);
  if ((v22 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
    goto LABEL_40;
  }

  v32 = v22 != 1;
  v129 = v22 != 1;
  sub_26BF34320(&v129, v120);
  v109[6] = v117;
  v109[7] = v118;
  v110 = v119;
  v109[2] = v113;
  v109[3] = v114;
  v109[4] = v115;
  v109[5] = v116;
  v109[0] = v111;
  v109[1] = v112;
  sub_26BE00854(v109);
  if ((*&v124[3] & 0x2000000000000000) == 0)
  {
    goto LABEL_7;
  }

  v1 = v88;
  v36 = *(v88 + *(v4 + 76));
  if (!v36)
  {
    if (qword_28045DF80 == -1)
    {
LABEL_12:
      v41 = sub_26C009A5C();
      __swift_project_value_buffer(v41, qword_280478EE8);
      sub_26BEC8BB8(v1, v8, type metadata accessor for MLS.GroupState);
      sub_26BE2DFC0(&v123, v97);
      v42 = sub_26C009A3C();
      v43 = sub_26C00AA0C();
      sub_26BE2E01C(&v123);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *&v97[0] = v45;
        *v44 = 136315394;
        v46 = MLS.GroupState.description.getter();
        v48 = v47;
        sub_26BEC8C20(v8, type metadata accessor for MLS.GroupState);
        v49 = sub_26BE29740(v46, v48, v97);

        *(v44 + 4) = v49;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_26BE29740(0x393035782ELL, 0xE500000000000000, v97);
        _os_log_impl(&dword_26BDFE000, v42, v43, "%s: Client was nil when verifying KeyPackage with credential type %s", v44, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v45, -1, -1);
        MEMORY[0x26D69A4E0](v44, -1, -1);
      }

      else
      {

        sub_26BEC8C20(v8, type metadata accessor for MLS.GroupState);
      }

      sub_26BE01654();
      swift_allocError();
      *v34 = 17;
      *(v34 + 8) = 0u;
      *(v34 + 24) = 0u;
      *(v34 + 40) = 0u;
      *(v34 + 56) = 0u;
      *(v34 + 72) = 0u;
      *(v34 + 88) = 0u;
      *(v34 + 104) = 0;
      v35 = 23;
      goto LABEL_19;
    }

LABEL_40:
    swift_once();
    goto LABEL_12;
  }

  v83 = *&v124[3];
  v84 = *(&v124[2] + 1);
  swift_beginAccess();
  sub_26BE038A8(v36 + 240, v97);
  v37 = v98;
  v85 = *(&v97[1] + 1);
  __swift_project_boxed_opaque_existential_1(v97, *(&v97[1] + 1));
  v38 = sub_26C00921C();
  (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
  v39 = *(v37 + 8);
  v86 = v36;

  v40 = v39(v120, v16, v85, v37);
  v50 = v40;
  v51 = v84;
  v52 = v86;
  sub_26BE2E258(v16, &qword_28045E4A8, &unk_26C00ECB0);
  __swift_destroy_boxed_opaque_existential_1(v97);
  if ((v50 & 1) == 0)
  {
    v54 = v88;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v55 = sub_26C009A5C();
    __swift_project_value_buffer(v55, qword_280478EE8);
    v56 = v89;
    sub_26BEC8BB8(v54, v89, type metadata accessor for MLS.GroupState);
    v57 = sub_26C009A3C();
    v58 = sub_26C00AA0C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v97[0] = v60;
      *v59 = 136315138;
      v61 = MLS.GroupState.description.getter();
      v63 = v62;
      sub_26BEC8C20(v56, type metadata accessor for MLS.GroupState);
      v64 = sub_26BE29740(v61, v63, v97);

      *(v59 + 4) = v64;
      _os_log_impl(&dword_26BDFE000, v57, v58, "%s: Credential was found invalid by isValidMember", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x26D69A4E0](v60, -1, -1);
      v65 = v59;
LABEL_25:
      MEMORY[0x26D69A4E0](v65, -1, -1);

LABEL_35:
      sub_26BE01654();
      swift_allocError();
      *v81 = 18;
      *(v81 + 8) = 0u;
      *(v81 + 24) = 0u;
      *(v81 + 40) = 0u;
      *(v81 + 56) = 0u;
      *(v81 + 72) = 0u;
      *(v81 + 88) = 0u;
      *(v81 + 104) = 0;
      *(v81 + 112) = 23;
      swift_willThrow();

      return sub_26BE2DBC4(v120);
    }

    v80 = v56;
LABEL_34:
    sub_26BEC8C20(v80, type metadata accessor for MLS.GroupState);
    goto LABEL_35;
  }

  sub_26BE295A0(v52 + 40, v97);
  v53 = v108;
  if (v108 == 2)
  {
    v95 = &type metadata for SwiftMLSFeatureFlags;
    v96 = sub_26BE295D8();
    LOBYTE(v94) = 1;
    v53 = sub_26C00929C();
    sub_26BE29710(v97);
    __swift_destroy_boxed_opaque_existential_1(&v94);
  }

  else
  {
    sub_26BE29710(v97);
  }

  if (v53)
  {
    *&v94 = v51;
    *(&v94 + 1) = v83;

    sub_26C006590(&v94, v97);
    v66 = v97[0];
    v94 = v97[0];
    sub_26C006990();
    v68 = v67;
    v70 = v69;
    sub_26BE0489C(v66, *(&v66 + 1));
    if (v70 >> 60 == 15)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v71 = sub_26C009A5C();
      __swift_project_value_buffer(v71, qword_280478EE8);
      v72 = v87;
      sub_26BEC8BB8(v88, v87, type metadata accessor for MLS.GroupState);
      v57 = sub_26C009A3C();
      v73 = sub_26C00AA0C();
      if (os_log_type_enabled(v57, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v97[0] = v75;
        *v74 = 136315138;
        v76 = MLS.GroupState.description.getter();
        v78 = v77;
        sub_26BEC8C20(v72, type metadata accessor for MLS.GroupState);
        v79 = sub_26BE29740(v76, v78, v97);

        *(v74 + 4) = v79;
        _os_log_impl(&dword_26BDFE000, v57, v73, "%s: Failed to parse public key from credential", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x26D69A4E0](v75, -1, -1);
        v65 = v74;
        goto LABEL_25;
      }

      v80 = v72;
      goto LABEL_34;
    }

    v90[0] = v32;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v90, v97);
    v90[0] = v97[0];
    v91 = *(v97 + 8);
    v92 = *(&v97[1] + 1);
    v93 = v98;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v68, v70, &v94);

    v104 = v124[7];
    v105 = v124[8];
    v106 = v125;
    v107 = v126;
    v100 = v124[3];
    v101 = v124[4];
    v102 = v124[5];
    v103 = v124[6];
    v97[0] = v123;
    v97[1] = v124[0];
    v98 = v124[1];
    v99 = v124[2];
    MLS.KeyPackage.validateSignature(publicKey:)(&v94);
    __swift_destroy_boxed_opaque_existential_1(&v94);
    sub_26BE136AC(v68, v70);
  }

LABEL_7:
  if (sub_26BE02DEC(*(&v124[0] + 1), *&v124[1], *(&v123 + 1), *&v124[0]))
  {
    sub_26BE01654();
    swift_allocError();
    *v34 = 3;
    v35 = 4;
LABEL_19:
    *(v34 + 112) = v35;
    swift_willThrow();
  }

  return sub_26BE2DBC4(v120);
}

void MLS.GroupState.validateProposal(_:commitSender:)(__int128 *a1, int *a2)
{
  v5 = type metadata accessor for MLS.GroupState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[9];
  v10 = a1[7];
  v142 = a1[8];
  v143 = v9;
  v11 = a1[9];
  v144 = a1[10];
  v12 = a1[5];
  v13 = a1[3];
  v138 = a1[4];
  v139 = v12;
  v14 = a1[5];
  v15 = a1[7];
  v140 = a1[6];
  v141 = v15;
  v16 = a1[1];
  v134 = *a1;
  v135 = v16;
  v17 = a1[3];
  v19 = *a1;
  v18 = a1[1];
  v136 = a1[2];
  v137 = v17;
  v146[8] = v142;
  v146[9] = v11;
  v146[10] = a1[10];
  v146[4] = v138;
  v146[5] = v14;
  v146[6] = v140;
  v146[7] = v10;
  v146[0] = v19;
  v146[1] = v18;
  v145 = *(a1 + 22);
  v20 = *(a1 + 46);
  v21 = *(a1 + 188);
  v22 = *a2;
  v23 = *(a2 + 4);
  v147 = *(a1 + 22);
  v146[2] = v136;
  v146[3] = v13;
  v24 = sub_26BE5CD48(v146);
  if (v24 > 2)
  {
    switch(v24)
    {
      case 3:
        sub_26BE5CDC8(v146);
        sub_26BE01654();
        swift_allocError();
        *v42 = 0xD000000000000029;
        *(v42 + 8) = 0x800000026C02B3B0;
        v43 = 2;
LABEL_25:
        *(v42 + 112) = v43;
        swift_willThrow();
        return;
      case 5:
        sub_26BE5CDC8(v146);
        sub_26BE01654();
        swift_allocError();
        v44 = 12;
        goto LABEL_24;
      case 6:
        v34 = sub_26BE5CDC8(v146);
        v35 = (*v34 + 32);
        v36 = *(*v34 + 16) + 1;
        v37 = v79;
        while (--v36)
        {
          v38 = v35 + 12;
          v39 = *v35;
          v35 += 12;
          if (v39 == 3)
          {
            LOWORD(v80[0]) = 3;
            *(v80 + 8) = *(v38 - 1);
            sub_26BE6FE6C(&v134, &v122);
            sub_26BFF740C(v80, &v91);
            if (v37)
            {
              sub_26BE718E0(&v134);
              return;
            }

            sub_26BE718E0(&v134);
            v56 = v91;
            if (!v91)
            {
              return;
            }

            v57 = v2;
            v58 = MLS.GroupState.minimalSupportedExtensionTypeSet()();
            v59 = sub_26BFF375C(v56);
            sub_26BEC8C80(v56);

            v61 = sub_26BEC7F8C(v60, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

            v62 = sub_26BEC2238(v58, v61);

            if (v62)
            {
              goto LABEL_28;
            }

            v63 = sub_26BEC7F8C(v59, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

            if (*(v58 + 16) <= *(v63 + 16) >> 3)
            {
              *&v122 = v63;
              sub_26BEC7710(v58);

              v64 = v122;
            }

            else
            {
              v64 = sub_26BEC7818(v58, v63);
            }

            v2 = v57;
            sub_26BEBE83C(&v122, v64);

            v21 = v122;
            LODWORD(v5) = BYTE2(v122);
            if (qword_28045DF80 != -1)
            {
              goto LABEL_44;
            }

            goto LABEL_39;
          }
        }

        return;
    }

LABEL_20:
    sub_26BE01654();
    swift_allocError();
    v44 = 15;
LABEL_24:
    *v42 = v44;
    v43 = 3;
    goto LABEL_25;
  }

  if (!v24)
  {
    v40 = sub_26BE5CDC8(v146);
    v99 = *(v40 + 128);
    v100 = *(v40 + 144);
    v101 = *(v40 + 160);
    v102 = *(v40 + 176);
    v95 = *(v40 + 64);
    v96 = *(v40 + 80);
    v97 = *(v40 + 96);
    v98 = *(v40 + 112);
    v91 = *v40;
    v92 = *(v40 + 16);
    v93 = *(v40 + 32);
    v94 = *(v40 + 48);
    v124 = v136;
    v125 = v137;
    v122 = v134;
    v123 = v135;
    v128 = v140;
    v129 = v141;
    v126 = v138;
    v127 = v139;
    v133 = v145;
    v131 = v143;
    v132 = v144;
    v130 = v142;
    v41 = sub_26BE5CDC8(&v122);
    sub_26BEC8CCC(v41, v80);
    MLS.GroupState.validateKeyPackage(_:)(&v91);
    v87 = v99;
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v83 = v95;
    v84 = v96;
    v85 = v97;
    v86 = v98;
    v80[0] = v91;
    v80[1] = v92;
    v81 = v93;
    v82 = v94;
    sub_26BE2E01C(v80);
    return;
  }

  if (v24 == 1)
  {
    v45 = sub_26BE5CDC8(v146);
    if ((v21 & 1) == 0)
    {
      v46 = v45;
      v47 = *(v2 + 40);
      v48 = *(v2 + 48);
      v49 = *(v2 + 56);
      v118 = *(v2 + 32);
      v119 = v47;
      v120 = v48;
      v121 = v49;
      v149 = v20;

      v50 = v79;
      MLS.TreeKEMPublicKey.find(leafIndex:)(&v149, &v91);
      if (v50)
      {
LABEL_28:

        return;
      }

      v116[6] = v97;
      v116[7] = v98;
      v116[2] = v93;
      v116[3] = v94;
      v116[4] = v95;
      v116[5] = v96;
      v116[0] = v91;
      v116[1] = v92;
      v85 = v97;
      v86 = v98;
      v81 = v93;
      v82 = v94;
      v83 = v95;
      v84 = v96;
      v117 = v99;
      *&v87 = v99;
      v80[0] = v91;
      v80[1] = v92;
      if (sub_26BE59C80(v80) != 1)
      {
        sub_26BE2E258(v116, &qword_28045E6A0, &unk_26C016520);
        v51 = *(v46 + 112);
        v113 = *(v46 + 96);
        v114 = v51;
        v115 = *(v46 + 128);
        v52 = *(v46 + 48);
        v109 = *(v46 + 32);
        v110 = v52;
        v53 = *(v46 + 80);
        v111 = *(v46 + 64);
        v112 = v53;
        v54 = *(v46 + 16);
        v107 = *v46;
        v108 = v54;
        v105 = v20;
        v106 = 0;
        v124 = v136;
        v125 = v137;
        v122 = v134;
        v123 = v135;
        v128 = v140;
        v129 = v141;
        v126 = v138;
        v127 = v139;
        v133 = v145;
        v131 = v143;
        v132 = v144;
        v130 = v142;
        v55 = sub_26BE5CDC8(&v122);
        sub_26BE5CEB0(v55, v103);
        MLS.GroupState.validateLeafNode(leafNode:validationContext:)(&v107, &v105);
        v103[6] = v113;
        v103[7] = v114;
        v104 = v115;
        v103[2] = v109;
        v103[3] = v110;
        v103[4] = v111;
        v103[5] = v112;
        v103[0] = v107;
        v103[1] = v108;
        sub_26BE00854(v103);
        return;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v42 = 2;
    v43 = 7;
    goto LABEL_25;
  }

  if (v24 != 2)
  {
    goto LABEL_20;
  }

  v8 = *sub_26BE5CDC8(v146);
  v25 = *(v2 + 32);
  v26 = *(v2 + 40);
  v27 = *(v2 + 48);
  v78 = v2;
  v28 = *(v2 + 56);
  LOWORD(v122) = v25;
  *(&v122 + 1) = v26;
  v148 = v27;
  LODWORD(v123) = v27;
  *(&v123 + 1) = v28;
  if ((v8 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_39:
    v65 = sub_26C009A5C();
    __swift_project_value_buffer(v65, qword_280478EE8);
    sub_26BEC8BB8(v2, v8, type metadata accessor for MLS.GroupState);
    v66 = sub_26C009A3C();
    v67 = sub_26C00AA0C();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      LODWORD(v79) = v5;
      v69 = v68;
      v70 = swift_slowAlloc();
      *&v122 = v70;
      *v69 = 136315394;
      v71 = MLS.GroupState.description.getter();
      v73 = v72;
      sub_26BEC8C20(v8, type metadata accessor for MLS.GroupState);
      v74 = sub_26BE29740(v71, v73, &v122);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      LOWORD(v91) = v21;
      BYTE2(v91) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EDF8, &unk_26C016530);
      v75 = sub_26C00A4FC();
      v77 = sub_26BE29740(v75, v76, &v122);

      *(v69 + 14) = v77;
      _os_log_impl(&dword_26BDFE000, v66, v67, "%s: A proposal to update the group context extensions contained a required capability, for extension %s, that is not supported by all group members", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v70, -1, -1);
      MEMORY[0x26D69A4E0](v69, -1, -1);
    }

    else
    {

      sub_26BEC8C20(v8, type metadata accessor for MLS.GroupState);
    }

    sub_26BE01654();
    swift_allocError();
    *v42 = 0;
    v43 = 8;
    goto LABEL_25;
  }

  LODWORD(v91) = 2 * v8;
  v29 = v79;
  v30 = MLS.TreeKEMPublicKey.blankAt(index:)(&v91);
  v31 = v29;
  if (v29)
  {
LABEL_9:
    sub_26BE01654();
    swift_allocError();
    *v33 = 10;
    v33[112] = 3;
    swift_willThrow();

    return;
  }

  if ((v8 >= v148) | v30 & 1)
  {
    sub_26BE01654();
    v31 = swift_allocError();
    *v32 = 10;
    v32[112] = 3;
    swift_willThrow();
    goto LABEL_9;
  }

  if (v8 == *(v78 + *(v5 + 52)))
  {
    sub_26BE01654();
    swift_allocError();
    *v42 = v22;
    *(v42 + 4) = v23;
    *(v42 + 8) = v20;
    *(v42 + 12) = v21;
    *(v42 + 13) = 0;
    v43 = 20;
    goto LABEL_25;
  }
}

uint64_t sub_26BEC5C20(uint64_t a1)
{
  result = MLS.GroupState.minimalSupportedProposalTypeSet()();
  if (!v1)
  {
    v4 = result;
    v43 = 0;
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = a1 + 32;
      v8 = result + 56;
      do
      {
        v9 = v7 + 200 * v6;
        v10 = *(v9 + 144);
        v11 = *(v9 + 176);
        v38 = *(v9 + 160);
        v39 = v11;
        v12 = *(v9 + 80);
        v13 = *(v9 + 112);
        v34 = *(v9 + 96);
        v35 = v13;
        v14 = *(v9 + 144);
        v15 = *(v9 + 112);
        v36 = *(v9 + 128);
        v37 = v14;
        v16 = *(v9 + 16);
        v17 = *(v9 + 48);
        v30 = *(v9 + 32);
        v31 = v17;
        v18 = *(v9 + 80);
        v19 = *(v9 + 48);
        v32 = *(v9 + 64);
        v33 = v18;
        v20 = *(v9 + 16);
        v29[0] = *v9;
        v29[1] = v20;
        v41[8] = v36;
        v41[9] = v10;
        v41[10] = v38;
        v41[4] = v32;
        v41[5] = v12;
        v41[6] = v34;
        v41[7] = v15;
        v41[0] = v29[0];
        v41[1] = v16;
        v40 = *(v9 + 192);
        v42 = *(v9 + 176);
        v41[2] = v30;
        v41[3] = v19;
        v21 = sub_26BE5CD48(v41);
        if (v21 <= 4)
        {
          if (v21 == 2)
          {
            sub_26BE5CDC8(v41);
            goto LABEL_15;
          }
        }

        else
        {
          if (v21 > 7)
          {
            if (v21 == 8)
            {
              v22 = 61444;
              goto LABEL_19;
            }

            if (v21 == 9)
            {
              v22 = 61443;
              goto LABEL_19;
            }

            v22 = 0xFFFF;
            if (!*(v4 + 16))
            {
              goto LABEL_26;
            }

LABEL_22:
            v23 = *(v4 + 40);
            sub_26C00B05C();
            sub_26C00B08C();
            v24 = sub_26C00B0CC();
            v25 = -1 << *(v4 + 32);
            v26 = v24 & ~v25;
            if (((*(v8 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
            {
LABEL_26:

              sub_26BE5CD74(v29);
              sub_26BE01654();
              swift_allocError();
              *v28 = 7;
              v28[112] = 3;
              return swift_willThrow();
            }

            v27 = ~v25;
            while (*(*(v4 + 48) + 2 * v26) != v22)
            {
              v26 = (v26 + 1) & v27;
              if (((*(v8 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

LABEL_15:
            sub_26BE5CD74(v29);
            goto LABEL_16;
          }

          if (v21 != 5 && v21 != 6)
          {
            v22 = 61442;
LABEL_19:
            sub_26BE5CDC8(v41);
            if (!*(v4 + 16))
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }
        }

        sub_26BE5CDC8(v41);
LABEL_16:
        ++v6;
      }

      while (v6 != v5);
    }
  }

  return result;
}

uint64_t sub_26BEC5E84(__int128 *a1, unsigned __int16 *a2)
{
  v4 = a1[9];
  v5 = a1[7];
  v50 = a1[8];
  v51 = v4;
  v6 = a1[9];
  v52 = a1[10];
  v7 = a1[5];
  v8 = a1[3];
  v46 = a1[4];
  v47 = v7;
  v9 = a1[5];
  v10 = a1[7];
  v48 = a1[6];
  v49 = v10;
  v11 = a1[1];
  v43[0] = *a1;
  v43[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v44 = a1[2];
  v45 = v12;
  v54[8] = v50;
  v54[9] = v6;
  v54[10] = a1[10];
  v54[4] = v46;
  v54[5] = v9;
  v54[6] = v48;
  v54[7] = v5;
  v54[0] = v14;
  v54[1] = v13;
  v53 = *(a1 + 22);
  v55 = *(a1 + 22);
  v54[2] = v44;
  v54[3] = v8;
  if (sub_26BE5CD48(v54) || (v16 = sub_26BE5CDC8(v54), (v17 = *(a2 + *(type metadata accessor for MLS.GroupState() + 76))) == 0))
  {
    v15 = 0;
    return v15 & 1;
  }

  sub_26BE6FE6C(v43, &v32);

  v15 = v17;
  sub_26BE1C10C();
  if (v2)
  {

    sub_26BE718E0(v43);
    return v15 & 1;
  }

  sub_26BE16490(&v32);
  v27 = *(&v32 + 1);
  v28 = v32;
  v18 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v17 + v18, &v32);
  v19 = *(&v33 + 1);
  v20 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  v26 = *(v20 + 40);
  v42[3] = swift_getAssociatedTypeWitness();
  v42[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v42);
  v26(v19, v20);
  result = __swift_destroy_boxed_opaque_existential_1(&v32);
  v41[0] = v28;
  v41[1] = v27;
  v22 = *(v16 + 120);
  v37 = *(v16 + 104);
  v38 = v22;
  v39 = *(v16 + 136);
  v40 = *(v16 + 152);
  v23 = *(v16 + 56);
  v33 = *(v16 + 40);
  v34 = v23;
  v24 = *(v16 + 88);
  v35 = *(v16 + 72);
  v36 = v24;
  v32 = *(v16 + 24);
  v25 = *a2;
  if ((v25 - 3) >= 0xFFFFFFFE)
  {
    v56 = v25 != 1;
    sub_26BE00758(v16 + 24, v29);
    sub_26BF34320(&v56, v31);
    v29[6] = v38;
    v29[7] = v39;
    v30 = v40;
    v29[2] = v34;
    v29[3] = v35;
    v29[4] = v36;
    v29[5] = v37;
    v29[0] = v32;
    v29[1] = v33;
    sub_26BE00854(v29);
    v15 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(v41, v31);

    sub_26BE718E0(v43);
    sub_26BE2DBC4(v31);
    sub_26BE2DBC4(v41);
    return v15 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.GroupState.validateLeafNodesInExistingTree()()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BEC91E0);

  if (!v1)
  {
    sub_26BEC6BA0();
    MLS.GroupState.validateLeafNodeCapabilities()();
  }
}

_DWORD *sub_26BEC6284@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = *(v1 + 5);
  v10 = *(v1 + 12);
  v11 = *(v1 + 7);
  v31 = v1[16];
  v32 = v9;
  v33 = v10;
  result = sub_26BE592D0();
  if (!v2)
  {
    v14 = result;
    v34 = 0;
    v21 = a1;
    v15 = v13;
    v16 = type metadata accessor for MLS.GroupState();
    v17 = v3 + *(v16 + 36);
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v3 + *(v16 + 40));
    v22 = v5;
    v23 = v6;
    v24 = v7;
    v25 = v8;
    v26 = v14;
    v27 = v15;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    sub_26BE00608(v14, v15);
    sub_26BE00608(v6, v7);
    sub_26BE00608(v18, v19);
    swift_bridgeObjectRetain_n();
    sub_26BE00204(&v22);
    sub_26BE8206C(v20, v21);
  }

  return result;
}

uint64_t sub_26BEC6398(unsigned __int16 *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *a1;
  v8 = *a4;
  v9 = *(v4 + 104);
  if (*(a4 + 4) > 1u)
  {
    if (*(a4 + 4) != 2)
    {
      v6 = 0;
      v8 = 0;
      v5 = 0xF000000000000000;
LABEL_9:
      v10 = v4[5];
      v23 = v4[4];
      v24 = v10;
      v25 = *(v4 + 12);
      v11 = v4[1];
      v19 = *v4;
      v20 = v11;
      v12 = v4[3];
      v21 = v4[2];
      v22 = v12;
      v26 = v9;
      *(v27 + 15) = *(v4 + 120);
      v27[0] = *(v4 + 105);
      v18 = v7;
      v15 = v6;
      v16 = v5;
      v17 = v8;
      sub_26BE2BAE8(v6, v5);
      sub_26BE5B7E0(&v18, &v15);
      sub_26BE132D4(v15, v16);
      return sub_26BE132D4(v6, v5);
    }

    goto LABEL_8;
  }

  if (!*(a4 + 4))
  {
    if (v9 < 2)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 == 1)
  {
LABEL_8:
    sub_26BE00608(a2, a3);
    goto LABEL_9;
  }

LABEL_10:
  sub_26BE01654();
  swift_allocError();
  *v14 = 0;
  v14[112] = 5;
  return swift_willThrow();
}

void MLS.GroupState.validateLeafNodeSource(leafNode:validationContext:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  if (*(a2 + 4) > 1u)
  {
    if (*(a2 + 4) == 2 || v4 == 0)
    {
      return;
    }

LABEL_12:
    sub_26BE01654();
    swift_allocError();
    *v13 = 0;
    v13[112] = 5;
    swift_willThrow();
    return;
  }

  if (*(a2 + 4))
  {
    if (v4 == 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v4 < 2)
  {
    goto LABEL_12;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v33 = *(v2 + 32);
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v32 = v7;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v32, &v37);
  v11 = v3;
  if (v3)
  {
  }

  else
  {

    v21[6] = v43;
    v21[7] = v44;
    v21[2] = v39;
    v21[3] = v40;
    v21[4] = v41;
    v21[5] = v42;
    v21[0] = v37;
    v21[1] = v38;
    v29 = v43;
    v30 = v44;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v28 = v42;
    v22 = v45;
    v31 = v45;
    *v23 = v37;
    v24 = v38;
    if (sub_26BE59C80(v23) == 1)
    {
      sub_26BE01654();
      v14 = swift_allocError();
      *v15 = 1;
      v15[112] = 5;
      v11 = v14;
      swift_willThrow();
    }

    else
    {
      if ((sub_26BE02DEC(v23[0], v23[1], v5, v6) & 1) == 0)
      {
        sub_26BE2E258(v21, &qword_28045E6A0, &unk_26C016520);
        return;
      }

      sub_26BE01654();
      v16 = swift_allocError();
      *v17 = 2;
      v17[112] = 5;
      v11 = v16;
      swift_willThrow();
      sub_26BE2E258(v21, &qword_28045E6A0, &unk_26C016520);
    }
  }

  v23[0] = v11;
  v18 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {
    if (v44 == 23 && v37 == 30 && (v19 = vorrq_s8(vorrq_s8(vorrq_s8(v40, v42), vorrq_s8(v41, v43)), vorrq_s8(v38, v39)), !(*&vorr_s8(*v19.i8, *&vextq_s8(v19, v19, 8uLL)) | *(&v37 + 1))))
    {

      sub_26BE01654();
      swift_allocError();
      *v20 = 1;
      v20[112] = 5;
      swift_willThrow();
    }

    else
    {
      sub_26BE2DC9C(&v37);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLS.GroupState.validateLeafNodeCapabilities()()
{
  sub_26BEC6284(v22);
  if (!v1)
  {
    v2 = v22[0];
    if (v22[0])
    {
      v3 = MLS.GroupState.minimalSupportedExtensionTypeSet()();
      v4 = MLS.GroupState.minimalSupportedProposalTypeSet()();
      v25 = MLS.GroupState.minimalSupportedCredentialTypeSet()();

      v6 = sub_26BEC7F8C(v5, sub_26BEC918C, &type metadata for MLS.Extension.ExtensionType, sub_26BF750CC);

      v7 = sub_26BEC2238(v3, v6);

      if (v7)
      {

        v9 = sub_26BEC7F8C(v8, sub_26BEC9138, &type metadata for MLS.ProposalType, sub_26BF750B0);

        v10 = sub_26BEC2238(v4, v9);

        if (v10)
        {

          v12 = sub_26BEC7F8C(v11, sub_26BEC90E4, &type metadata for MLS.CredentialType, sub_26BF75094);

          sub_26BEC8C80(v2);
          v13 = sub_26BEC2238(v25, v12);

          if (v13)
          {
            goto LABEL_6;
          }

          sub_26BE01654();
          swift_allocError();
          v21 = 2;
        }

        else
        {

          sub_26BEC8C80(v2);
          sub_26BE01654();
          swift_allocError();
          v21 = 1;
        }

        *v20 = v21;
      }

      else
      {

        sub_26BEC8C80(v2);
        sub_26BE01654();
        swift_allocError();
        *v20 = 0;
      }

      v20[112] = 8;
      swift_willThrow();
      return;
    }

LABEL_6:
    v14 = MLS.GroupState.minimalSupportedCredentialTypeSet()();
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    LOWORD(v22[0]) = v15;
    v22[1] = v16;
    LODWORD(v23) = v17;
    v24 = v18;
    v19 = v14;

    sub_26BE51214(v22, v19);
  }
}

uint64_t sub_26BEC6BA0()
{
  v14 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  LOWORD(v11[0]) = *(v0 + 32);
  v11[1] = v2;
  v12 = v3;
  v13 = v4;

  sub_26BE50B6C(v11, &v15, &v14);

  if (!v1)
  {
    v5 = *(v15 + 16);
    v11[0] = v4;
    MLS.RatchetTree.leafCount.getter(&v10);
    if (v5 == v10)
    {
      v6 = *(v14 + 16);
      v11[0] = v4;
      MLS.RatchetTree.leafCount.getter(&v10);
      if (v6 == v10)
      {
        goto LABEL_8;
      }

      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    sub_26BE01654();
    swift_allocError();
    *v8 = v7;
    v8[112] = 5;
    swift_willThrow();
  }

LABEL_8:
}

void *sub_26BEC6CE4(int *a1, void *a2)
{
  v3 = *a1;
  v4 = 2;
  return MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a2, &v3);
}

uint64_t sub_26BEC6D24(uint64_t a1)
{
  if (*(a1 + 36))
  {
    sub_26BE01654();
    swift_allocError();
    *v3 = 8;
    v3[112] = 0;
    return swift_willThrow();
  }

  v5 = *(a1 + 32);
  v6 = v1[16];
  v7 = *(v1 + 5);
  v8 = *(v1 + 12);
  v9 = v1;
  v10 = *(v1 + 7);
  v53 = v6;
  v54 = v7;
  v55 = v8;
  v56 = v10;
  v52 = v5;

  MLS.TreeKEMPublicKey.find(leafIndex:)(&v52, &v57);
  if (v2)
  {
  }

  else
  {

    v41[6] = v63;
    v41[7] = v64;
    v41[2] = v59;
    v41[3] = v60;
    v41[4] = v61;
    v41[5] = v62;
    v41[0] = v57;
    v41[1] = v58;
    v49 = v63;
    v50 = v64;
    v45 = v59;
    v46 = v60;
    v47 = v61;
    v48 = v62;
    v42 = v65;
    v51 = v65;
    v43 = v57;
    v44 = v58;
    result = sub_26BE59C80(&v43);
    if (result == 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v11 = 6;
      v11[112] = 6;
      return swift_willThrow();
    }

    v12 = *v1;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v27[0] = v12 != 1;
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v27, v31);
      v27[0] = v31[0];
      *&v27[8] = *&v31[8];
      *&v27[24] = *&v31[24];
      *&v28 = v32;
      MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v44, *(&v44 + 1), v40);

      v39 = v12;
      v13 = *(v1 + 2);
      v66 = *(v1 + 1);
      v25 = *(v1 + 3);
      v26 = v13;
      v35 = v6;
      v36 = v7;
      v37 = v8;
      v38 = v10;
      v14 = sub_26BE592D0();
      v16 = v15;
      v17 = type metadata accessor for MLS.GroupState();
      v18 = v9;
      v19 = v9 + *(v17 + 36);
      v20 = *(v19 + 1);
      v21 = *(v19 + 2);
      v22 = *(v18 + *(v17 + 40));
      *v31 = v12;
      v23 = v66;
      *&v31[8] = v66;
      *&v31[16] = v26;
      *&v31[24] = v25;
      *&v32 = v14;
      *(&v32 + 1) = v16;
      *&v33 = v20;
      *(&v33 + 1) = v21;
      v34 = v22;
      sub_26BE00608(v14, v16);
      sub_26BE00608(v23, v26);
      sub_26BE00608(v20, v21);

      LOBYTE(v14) = MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(&v39, v40, v31);
      v28 = v32;
      v29 = v33;
      v30 = v34;
      *v27 = *v31;
      *&v27[16] = *&v31[16];
      sub_26BE2E258(v27, &qword_28045E750, &unk_26C011558);
      if (v14)
      {
        __swift_destroy_boxed_opaque_existential_1(v40);
        return sub_26BE2E258(v41, &qword_28045E6A0, &unk_26C016520);
      }

      else
      {
        sub_26BE01654();
        swift_allocError();
        *v24 = 10;
        *(v24 + 8) = 0u;
        *(v24 + 24) = 0u;
        *(v24 + 40) = 0u;
        *(v24 + 56) = 0u;
        *(v24 + 72) = 0u;
        *(v24 + 88) = 0u;
        *(v24 + 104) = 0;
        *(v24 + 112) = 23;
        swift_willThrow();
        sub_26BE2E258(v41, &qword_28045E6A0, &unk_26C016520);
        return __swift_destroy_boxed_opaque_existential_1(v40);
      }
    }
  }

  return result;
}

uint64_t sub_26BEC7148(uint64_t a1)
{
  v3 = *(a1 + 200);
  v75[8] = *(a1 + 184);
  v75[9] = v3;
  v76[0] = *(a1 + 216);
  *(v76 + 9) = *(a1 + 225);
  v4 = *(a1 + 136);
  v75[4] = *(a1 + 120);
  v75[5] = v4;
  v5 = *(a1 + 168);
  v75[6] = *(a1 + 152);
  v75[7] = v5;
  v6 = *(a1 + 72);
  v75[0] = *(a1 + 56);
  v75[1] = v6;
  v7 = *(a1 + 104);
  v75[2] = *(a1 + 88);
  v75[3] = v7;
  v8 = *(a1 + 200);
  v77[8] = *(a1 + 184);
  v77[9] = v8;
  v78[0] = *(a1 + 216);
  *(v78 + 9) = *(a1 + 225);
  v9 = *(a1 + 136);
  v77[4] = *(a1 + 120);
  v77[5] = v9;
  v10 = *(a1 + 168);
  v77[6] = *(a1 + 152);
  v77[7] = v10;
  v11 = *(a1 + 72);
  v77[0] = *(a1 + 56);
  v77[1] = v11;
  v12 = *(a1 + 104);
  v77[2] = *(a1 + 88);
  v77[3] = v12;
  if (sub_26BE6917C(v77) != 2)
  {
    sub_26BE01654();
    swift_allocError();
    *v21 = 12;
    v22 = 6;
    goto LABEL_5;
  }

  v13 = nullsub_1(v77);
  v66 = *(v13 + 8);
  v14 = *(v13 + 40);
  v15 = *(v13 + 56);
  v16 = *(v13 + 72);
  v67 = *(v13 + 24);
  v69 = v15;
  v70 = v16;
  v68 = v14;
  v17 = *(v13 + 104);
  v18 = *(v13 + 136);
  v19 = *(v13 + 88);
  v73 = *(v13 + 120);
  v74 = v18;
  v71 = v19;
  v72 = v17;
  result = sub_26BE59C80(&v66);
  if (result == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v21 = 0;
    v22 = 7;
LABEL_5:
    v21[112] = v22;
    return swift_willThrow();
  }

  v23 = *v1;
  if ((v23 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v24 = v1;
    LOBYTE(v54) = v23 != 1;
    sub_26BE71438(v75, v59);
    sub_26BE7ABF0(v13 + 8, v59);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v54, v50);
    v59[0] = v50[0];
    *&v59[8] = *&v50[8];
    *&v59[24] = *&v50[24];
    *&v60 = v51;
    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v67, *(&v67 + 1), v63);
    if (v2)
    {
      sub_26BE6FD84(v75);
      sub_26BE2E258(v13 + 8, &qword_28045E8B0, &qword_26C012560);
    }

    else
    {

      v58 = v23;
      v26 = *(v1 + 1);
      v25 = *(v1 + 2);
      v27 = *(v1 + 3);
      v28 = *(v1 + 5);
      v29 = *(v1 + 12);
      v30 = *(v1 + 7);
      v54 = v1[16];
      v55 = v28;
      v56 = v29;
      v57 = v30;
      v31 = sub_26BE592D0();
      v79 = v32;
      v33 = type metadata accessor for MLS.GroupState();
      v34 = v24;
      v35 = v24 + *(v33 + 36);
      v36 = v27;
      v37 = *(v35 + 1);
      v38 = *(v35 + 2);
      v39 = *(v34 + *(v33 + 40));
      *v59 = v23;
      *&v59[8] = v26;
      *&v59[16] = v25;
      *&v59[24] = v36;
      *&v60 = v31;
      *(&v60 + 1) = v79;
      *&v61 = v37;
      *(&v61 + 1) = v38;
      v62 = v39;
      sub_26BE00608(v31, v79);
      sub_26BE00608(v26, v25);
      sub_26BE00608(v37, v38);

      LOBYTE(v31) = MLS.AuthenticatedContent.verify(ciphersuiteID:signaturePublicKey:context:)(&v58, v63, v59);
      v51 = v60;
      v52 = v61;
      v53 = v62;
      *v50 = *v59;
      *&v50[16] = *&v59[16];
      sub_26BE2E258(v50, &qword_28045E750, &unk_26C011558);
      if ((v31 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E958, &qword_26C012648);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_26C011280;
        sub_26C00AC1C();

        v42 = v64;
        v41 = v65;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v43 = (*(*(v41 + 8) + 16))(v42);
        v45 = v44;
        sub_26BF87240(v43, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
        sub_26BE3C0F4();
        v46 = sub_26C00A3EC();
        v48 = v47;
        sub_26BE00258(v43, v45);

        MEMORY[0x26D699090](v46, v48);

        *(v40 + 56) = MEMORY[0x277D837D0];
        *(v40 + 32) = 0xD00000000000001FLL;
        *(v40 + 40) = 0x800000026C02C310;
        sub_26C00B03C();

        sub_26BE01654();
        swift_allocError();
        *v49 = 10;
        *(v49 + 8) = 0u;
        *(v49 + 24) = 0u;
        *(v49 + 40) = 0u;
        *(v49 + 56) = 0u;
        *(v49 + 72) = 0u;
        *(v49 + 88) = 0u;
        *(v49 + 104) = 0;
        *(v49 + 112) = 23;
        swift_willThrow();
      }

      sub_26BE2E258(v13 + 8, &qword_28045E8B0, &qword_26C012560);
      sub_26BE6FD84(v75);
      return __swift_destroy_boxed_opaque_existential_1(v63);
    }
  }

  return result;
}

uint64_t sub_26BEC7710(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_26BE2AE90(*(*(v2 + 48) + ((v9 << 7) | (2 * v10))), v11);
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_26BEC7818(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v49 = a1;
    v50 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v49;
          v16 = v50;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v50 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v49;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + ((v50 << 7) | (2 * v18)));
        v19 = *(v6 + 40);
        sub_26C00B05C();
        sub_26C00B08C();
        v20 = sub_26C00B0CC();
        v21 = -1 << *(v6 + 32);
        v2 = v20 & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v22 = *(v6 + 48);
      if (*(v22 + 2 * v2) == v5)
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v21;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (*(v22 + 2 * v2) == v5)
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v53 = v48;
    v54 = v50;
    v55 = v11;
    v52[0] = v49;
    v52[1] = v8;
    v14 = (63 - v21) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v42 = swift_slowAlloc();
      memcpy(v42, (v6 + 56), v5);
      v43 = sub_26BEC7CA0(v42, v14, v6, v2, v52);

      MEMORY[0x26D69A4E0](v42, -1, -1);
      v48 = v53;
      v50 = v54;
      v6 = v43;
      goto LABEL_43;
    }

LABEL_18:
    v45 = v14;
    v46 = &v44;
    MEMORY[0x28223BE20](v23);
    v14 = &v44 - v24;
    memcpy(&v44 - v24, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v49;
LABEL_19:
    v47 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + ((v50 << 7) | (2 * v30)));
      v31 = *(v6 + 40);
      sub_26C00B05C();
      v2 = &v51;
      sub_26C00B08C();
      v32 = sub_26C00B0CC();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = 1 << v34;
      if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) != 0)
      {
        v37 = *(v6 + 48);
        if (*(v37 + 2 * v34) == v5)
        {
LABEL_20:
          v27 = *(v14 + 8 * v35);
          *(v14 + 8 * v35) = v27 & ~v36;
          if ((v27 & v36) != 0)
          {
            v26 = v47 - 1;
            if (__OFSUB__(v47, 1))
            {
              __break(1u);
            }

            if (v47 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_43;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v38 = ~v33;
          while (1)
          {
            v34 = (v34 + 1) & v38;
            v35 = v34 >> 6;
            v36 = 1 << v34;
            if (((1 << v34) & *(v13 + 8 * (v34 >> 6))) == 0)
            {
              break;
            }

            if (*(v37 + 2 * v34) == v5)
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v50;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v50 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v50 + 1)
    {
      v39 = v50 + 1;
    }

    else
    {
      v39 = v12;
    }

    v50 = v39 - 1;
    v6 = sub_26BEBE098(v14, v45, v47, v6);
LABEL_43:
    sub_26BE2DA4C();
  }

  else
  {

    v6 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_26BEC7CA0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 7) | (2 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    v18 = *(a3 + 40);
    sub_26C00B05C();
    sub_26C00B08C();
    result = sub_26C00B0CC();
    v19 = -1 << *(a3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) != 0)
    {
      v23 = *(a3 + 48);
      if (*(v23 + 2 * v20) == v17)
      {
LABEL_2:
        v11 = v7[v21];
        v7[v21] = v11 & ~v22;
        if ((v11 & v22) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v24 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v10 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          if (*(v23 + 2 * v20) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v26 = v12 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return sub_26BEBE098(v7, a2, v9, a3);
}

uint64_t sub_26BEC7E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC9090();
  result = MEMORY[0x26D699320](v2, &type metadata for MLS.Group.PureSwiftGroup.EraEpoch, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      v5 += 2;
      sub_26BF75208(v8, v6, v7);
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_26BEC7F8C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x26D699320](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_26BEC800C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC903C();
  result = MEMORY[0x26D699320](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_26BE00608(v7, *v5);
      sub_26BF7532C(v8, v7, v6);
      sub_26BE00258(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_26BEC80A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
  v4 = sub_26BEC8FC0();
  result = MEMORY[0x26D699320](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_26BF757B4(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_26BEC8154(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    for (i = (result + 220); ; i += 200)
    {
      v5 = *(i - 44);
      v13[8] = *(i - 60);
      v13[9] = v5;
      v13[10] = *(i - 28);
      v14 = *(i - 12);
      v6 = *(i - 108);
      v13[4] = *(i - 124);
      v13[5] = v6;
      v7 = *(i - 76);
      v13[6] = *(i - 92);
      v13[7] = v7;
      v8 = *(i - 172);
      v13[0] = *(i - 188);
      v13[1] = v8;
      v9 = *(i - 140);
      v13[2] = *(i - 156);
      v13[3] = v9;
      v10 = *(i - 1);
      v11 = *i;
      result = sub_26BE5CD48(v13);
      if (result == 1)
      {
        result = sub_26BE5CDC8(v13);
        if ((v11 & 1) == 0 && v10 == v3)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v12 = 0;
    v12[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC825C(uint64_t result, int *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *a2;
    for (i = result + 32; ; i += 200)
    {
      v5 = *(i + 144);
      v11[8] = *(i + 128);
      v11[9] = v5;
      v11[10] = *(i + 160);
      v12 = *(i + 176);
      v6 = *(i + 80);
      v11[4] = *(i + 64);
      v11[5] = v6;
      v7 = *(i + 112);
      v11[6] = *(i + 96);
      v11[7] = v7;
      v8 = *(i + 16);
      v11[0] = *i;
      v11[1] = v8;
      v9 = *(i + 48);
      v11[2] = *(i + 32);
      v11[3] = v9;
      result = sub_26BE5CD48(v11);
      if (result == 2)
      {
        result = sub_26BE5CDC8(v11);
        if (*result == v3)
        {
          break;
        }
      }

      if (!--v2)
      {
        return result;
      }
    }

    sub_26BE01654();
    swift_allocError();
    *v10 = 1;
    v10[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC8344(uint64_t a1)
{
  v41 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (!v1)
  {
  }

  v2 = 0;
  v3 = a1 + 32;
  while (1)
  {
    v4 = v3 + 200 * v2;
    v5 = *(v4 + 144);
    v6 = *(v4 + 176);
    v36 = *(v4 + 160);
    v37 = v6;
    v7 = *(v4 + 80);
    v8 = *(v4 + 112);
    v32 = *(v4 + 96);
    v33 = v8;
    v9 = *(v4 + 144);
    v10 = *(v4 + 112);
    v34 = *(v4 + 128);
    v35 = v9;
    v11 = *(v4 + 16);
    v12 = *(v4 + 48);
    v28 = *(v4 + 32);
    v29 = v12;
    v13 = *(v4 + 80);
    v14 = *(v4 + 48);
    v30 = *(v4 + 64);
    v31 = v13;
    v15 = *(v4 + 16);
    v27[0] = *v4;
    v27[1] = v15;
    v39[8] = v34;
    v39[9] = v5;
    v39[10] = v36;
    v39[4] = v30;
    v39[5] = v7;
    v39[6] = v32;
    v39[7] = v10;
    v39[0] = v27[0];
    v39[1] = v11;
    v38 = *(v4 + 192);
    v40 = *(v4 + 176);
    v39[2] = v28;
    v39[3] = v14;
    v16 = sub_26BE5CD48(v39);
    if (v16 == 2)
    {
      v17 = *sub_26BE5CDC8(v39);
    }

    else
    {
      if (v16 != 1)
      {
        goto LABEL_4;
      }

      sub_26BE5CDC8(v39);
      if (BYTE12(v37))
      {
        goto LABEL_4;
      }

      v17 = DWORD2(v37);
    }

    v18 = v41;
    if (*(v41 + 16))
    {
      v19 = *(v41 + 40);
      sub_26C00B05C();
      sub_26C00B09C();
      v20 = sub_26C00B0CC();
      v21 = -1 << *(v18 + 32);
      v22 = v20 & ~v21;
      if ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        break;
      }
    }

LABEL_3:
    sub_26BF7593C(v26, v17);
LABEL_4:
    if (++v2 == v1)
    {
    }
  }

  v23 = ~v21;
  while (*(*(v18 + 48) + 4 * v22) != v17)
  {
    v22 = (v22 + 1) & v23;
    if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_26BE5CDE4(v27, v26);

  sub_26BE01654();
  swift_allocError();
  *v24 = 2;
  v24[112] = 3;
  swift_willThrow();
  return sub_26BE5CD74(v27);
}

uint64_t sub_26BEC8570(uint64_t a1)
{
  v36 = MEMORY[0x277D84FA0];
  v1 = *(a1 + 16);
  if (!v1)
  {
  }

  v2 = a1 + 32;
  for (i = v1 - 1; ; --i)
  {
    v4 = *(v2 + 144);
    v5 = *(v2 + 176);
    v31 = *(v2 + 160);
    v32 = v5;
    v6 = *(v2 + 80);
    v7 = *(v2 + 112);
    v27 = *(v2 + 96);
    v28 = v7;
    v8 = *(v2 + 144);
    v9 = *(v2 + 112);
    v29 = *(v2 + 128);
    v30 = v8;
    v10 = *(v2 + 16);
    v11 = *(v2 + 48);
    v23 = *(v2 + 32);
    v24 = v11;
    v12 = *(v2 + 80);
    v13 = *(v2 + 48);
    v25 = *(v2 + 64);
    v26 = v12;
    v14 = *(v2 + 16);
    v22[0] = *v2;
    v22[1] = v14;
    v34[8] = v29;
    v34[9] = v4;
    v34[10] = v31;
    v34[4] = v25;
    v34[5] = v6;
    v34[6] = v27;
    v34[7] = v9;
    v34[0] = v22[0];
    v34[1] = v10;
    v33 = *(v2 + 192);
    v35 = *(v2 + 176);
    v34[2] = v23;
    v34[3] = v13;
    if (sub_26BE5CD48(v34))
    {
      goto LABEL_6;
    }

    v15 = sub_26BE5CDC8(v34);
    v16 = *(v15 + 40);
    v17 = *(v15 + 48);
    v18 = v36;
    sub_26BE5CDE4(v22, v21);
    sub_26BE5CDE4(v22, v21);
    sub_26BE00608(v16, v17);
    if (sub_26BF32868(v16, v17, v18))
    {
      break;
    }

    sub_26BE00608(v16, v17);
    sub_26BF7532C(v21, v16, v17);
    sub_26BE5CD74(v22);
    sub_26BE5CD74(v22);
    sub_26BE00258(v16, v17);
    sub_26BE00258(v21[0], v21[1]);
LABEL_6:
    if (!i)
    {
    }

    v2 += 200;
  }

  sub_26BE01654();
  swift_allocError();
  *v20 = 3;
  v20[112] = 3;
  swift_willThrow();
  sub_26BE00258(v16, v17);
  sub_26BE5CD74(v22);
  return sub_26BE5CD74(v22);
}

uint64_t sub_26BEC8754(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3 + 200 * v2;
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

        v7 = *(v5 + 176);
        v43 = *(v5 + 160);
        v44 = v7;
        v45 = *(v5 + 192);
        v8 = *(v5 + 112);
        v39 = *(v5 + 96);
        v40 = v8;
        v9 = *(v5 + 144);
        v41 = *(v5 + 128);
        v42 = v9;
        v10 = *(v5 + 48);
        v35 = *(v5 + 32);
        v36 = v10;
        v11 = *(v5 + 80);
        v37 = *(v5 + 64);
        v38 = v11;
        v12 = *(v5 + 16);
        v33 = *v5;
        v34 = v12;
        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }

        v13 = *(v5 + 144);
        v46[8] = *(v5 + 128);
        v46[9] = v13;
        v46[10] = *(v5 + 160);
        v47 = *(v5 + 176);
        v14 = *(v5 + 80);
        v46[4] = *(v5 + 64);
        v46[5] = v14;
        v15 = *(v5 + 112);
        v46[6] = *(v5 + 96);
        v46[7] = v15;
        v16 = *(v5 + 16);
        v46[0] = *v5;
        v46[1] = v16;
        v17 = *(v5 + 48);
        v46[2] = *(v5 + 32);
        v46[3] = v17;
        result = sub_26BE5CD48(v46);
        if (result == 6)
        {
          break;
        }

        ++v6;
        v5 += 200;
        if (v2 == v1)
        {
          goto LABEL_16;
        }
      }

      sub_26BE5CDC8(v46);
      sub_26BE5CDE4(&v33, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      v48 = v4;
      if ((result & 1) == 0)
      {
        result = sub_26BECBA94(0, *(v4 + 16) + 1, 1);
        v4 = v48;
      }

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_26BECBA94((v18 > 1), v19 + 1, 1);
        v4 = v48;
      }

      *(v4 + 16) = v19 + 1;
      v20 = v4 + 200 * v19;
      *(v20 + 32) = v33;
      v21 = v34;
      v22 = v35;
      v23 = v37;
      *(v20 + 80) = v36;
      *(v20 + 96) = v23;
      *(v20 + 48) = v21;
      *(v20 + 64) = v22;
      v24 = v38;
      v25 = v39;
      v26 = v41;
      *(v20 + 144) = v40;
      *(v20 + 160) = v26;
      *(v20 + 112) = v24;
      *(v20 + 128) = v25;
      v27 = v42;
      v28 = v43;
      v29 = v44;
      *(v20 + 224) = v45;
      *(v20 + 192) = v28;
      *(v20 + 208) = v29;
      *(v20 + 176) = v27;
    }

    while (v2 != v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_16:
  v30 = *(v4 + 16);

  if (v30 > 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v31 = 4;
    v31[112] = 3;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26BEC898C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 32;
    v3 = *(result + 16);
    while (1)
    {
      v4 = *(v2 + 144);
      v10[8] = *(v2 + 128);
      v10[9] = v4;
      v10[10] = *(v2 + 160);
      v11 = *(v2 + 176);
      v5 = *(v2 + 80);
      v10[4] = *(v2 + 64);
      v10[5] = v5;
      v6 = *(v2 + 112);
      v10[6] = *(v2 + 96);
      v10[7] = v6;
      v7 = *(v2 + 16);
      v10[0] = *v2;
      v10[1] = v7;
      v8 = *(v2 + 48);
      v10[2] = *(v2 + 32);
      v10[3] = v8;
      result = sub_26BE5CD48(v10);
      if (result == 4)
      {
        break;
      }

      v2 += 200;
      if (!--v3)
      {
        return result;
      }
    }

    result = sub_26BE5CDC8(v10);
    if (v1 != 1)
    {
      sub_26BE01654();
      swift_allocError();
      *v9 = 5;
      v9[112] = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_26BEC8A70(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 200)
    {
      v3 = *(i + 144);
      v9[8] = *(i + 128);
      v9[9] = v3;
      v9[10] = *(i + 160);
      v10 = *(i + 176);
      v4 = *(i + 80);
      v9[4] = *(i + 64);
      v9[5] = v4;
      v5 = *(i + 112);
      v9[6] = *(i + 96);
      v9[7] = v5;
      v6 = *(i + 16);
      v9[0] = *i;
      v9[1] = v6;
      v7 = *(i + 48);
      v9[2] = *(i + 32);
      v9[3] = v7;
      result = sub_26BE5CD48(v9);
      if (result == 5)
      {
        break;
      }

      if (!--v1)
      {
        return result;
      }
    }

    sub_26BE5CDC8(v9);
    sub_26BE01654();
    swift_allocError();
    *v8 = 6;
    v8[112] = 3;
    return swift_willThrow();
  }

  return result;
}

double sub_26BEC8B80(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0x3000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  result = 1.72723371e-77;
  *(a1 + 176) = xmmword_26C016500;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_26BEC8BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEC8C20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEC8C80(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *sub_26BEC8D28(int *a1, void *a2)
{
  v3 = *(v2 + 16);
  v5 = *a1;
  v6 = 2;
  return MLS.GroupState.validateLeafNode(leafNode:validationContext:)(a2, &v5);
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t _s25LeafNodeValidationContextOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
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

uint64_t _s25LeafNodeValidationContextOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26BEC8E08(uint64_t a1)
{
  if (*(a1 + 4) <= 2u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_26BEC8E20(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_26BEC8E48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26BEC8ED4();
  result = MEMORY[0x26D699320](v2, &type metadata for MLS.Identity.SigningIdentity, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      sub_26BE2DB68(v5, v6);
      sub_26BF76554(v7, v6);
      sub_26BE2DBC4(v7);
      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26BEC8ED4()
{
  result = qword_28045EE00;
  if (!qword_28045EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE00);
  }

  return result;
}

uint64_t sub_26BEC8F28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D699320](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_26BF75B2C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_26BEC8FC0()
{
  result = qword_28045EE10;
  if (!qword_28045EE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045EE08, &qword_26C016570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE10);
  }

  return result;
}

unint64_t sub_26BEC903C()
{
  result = qword_28045EE18;
  if (!qword_28045EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE18);
  }

  return result;
}

unint64_t sub_26BEC9090()
{
  result = qword_28045EE20;
  if (!qword_28045EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE20);
  }

  return result;
}

unint64_t sub_26BEC90E4()
{
  result = qword_28045EE28;
  if (!qword_28045EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE28);
  }

  return result;
}

unint64_t sub_26BEC9138()
{
  result = qword_28045EE30;
  if (!qword_28045EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE30);
  }

  return result;
}

unint64_t sub_26BEC918C()
{
  result = qword_28045EE38;
  if (!qword_28045EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE38);
  }

  return result;
}

uint64_t sub_26BEC91F8@<X0>(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v111 = a2;
  v112 = a4;
  v108 = a1;
  v93 = a5;
  v100 = type metadata accessor for MLS.AlgorithmIdentifier();
  v6 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_26C00959C();
  v95 = *(v97 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x28223BE20](v97);
  v96 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v103 = &v92 - v11;
  v105 = _s18SignatureAlgorithmVMa();
  v12 = *(*(v105 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v105);
  v98 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v92 - v15;
  v109 = sub_26C00978C();
  v107 = *(v109 - 8);
  v16 = *(v107 + 64);
  v17 = MEMORY[0x28223BE20](v109);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v92 - v20;
  MEMORY[0x28223BE20](v19);
  v106 = &v92 - v21;
  v22 = _s9PublicKeyVMa(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = _s25CertificateSigningRequestVMa();
  v26 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v28 = (&v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a3[3];
  v30 = a3[4];
  v123 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v29);
  v31 = *(v30 + 40);
  *(&v119 + 1) = swift_getAssociatedTypeWitness();
  *&v120 = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v118);
  v32 = v30;
  v33 = v25;
  v31(v29, v32);
  v34 = v110;
  sub_26BE103EC(&v118, v25);
  if (v34)
  {

    return __swift_destroy_boxed_opaque_existential_1(v123);
  }

  else
  {
    v36 = v105;
    v37 = type metadata accessor for MLS.CertificationRequestInfo();
    sub_26BEC9F84(v33, v28 + *(v37 + 24), _s9PublicKeyVMa);
    v38 = v111;
    *v28 = v108;
    v28[1] = v38;
    *(v28 + *(v37 + 28)) = v112;
    v39 = v106;
    sub_26C00977C();
    sub_26BEC9EE0(&qword_28045EE40, type metadata accessor for MLS.CertificationRequestInfo);
    sub_26C00976C();
    v40 = (v107 + 8);
    v41 = v28;
    v42 = sub_26C00971C();
    v111 = v40;
    v112 = v42;
    v43 = *v40;
    (*v40)(v39, v109);
    v44 = v123;
    v46 = v123[3];
    v45 = v123[4];
    __swift_project_boxed_opaque_existential_1(v123, v46);
    (*(*(v45 + 8) + 24))(&v118, v46);
    LOBYTE(v45) = v118;

    v92 = v33;
    v110 = v43;
    if (v45)
    {
      if (qword_28045E148 != -1)
      {
        swift_once();
      }

      v47 = qword_280479188;
    }

    else
    {
      if (qword_28045E160 != -1)
      {
        swift_once();
      }

      v47 = qword_2804791D0;
    }

    v48 = __swift_project_value_buffer(v36, v47);
    sub_26BEC9F84(v48, v41 + *(v104 + 20), _s18SignatureAlgorithmVMa);
    v49 = v44[3];
    v50 = v44[4];
    __swift_project_boxed_opaque_existential_1(v44, v49);

    v52 = v41;
    v53 = sub_26BE12418(v51);
    v55 = v54;

    v56 = (*(v50 + 32))(v53, v55, v49, v50);
    v58 = v57;
    sub_26BE00258(v53, v55);
    v59 = v104;
    v60 = *(v104 + 20);
    v61 = v102;
    sub_26BEC9F84(v52 + v60, v102, _s18SignatureAlgorithmVMa);
    sub_26BE00608(v56, v58);
    v62 = (2 * *(sub_26BF2E8B4(v56, v58) + 16)) | 1;
    v63 = v103;
    sub_26C00957C();
    sub_26BFE6910(v61, v63, v116);
    v64 = v52;
    v107 = v56;
    v108 = v58;
    v65 = v52 + v59[6];
    v66 = v116[3];
    *(v65 + 32) = v116[2];
    *(v65 + 48) = v66;
    *(v65 + 64) = v117;
    v67 = v116[1];
    *v65 = v116[0];
    *(v65 + 16) = v67;
    v68 = v112;
    v69 = (2 * *(v112 + 16)) | 1;
    v70 = (v52 + v59[7]);
    *v70 = v112;
    v70[1] = v68 + 32;
    v70[2] = 0;
    v70[3] = v69;
    v71 = v52 + v60;
    v72 = v98;
    sub_26BEC9F84(v71, v98, _s18SignatureAlgorithmVMa);
    v73 = *(v100 + 20);
    v74 = sub_26C0094DC();
    v75 = v101;
    (*(*(v74 - 8) + 56))(&v101[v73], 1, 1, v74);
    sub_26BEC9E14(v75 + v73);
    sub_26BEC9E7C(v72, v75);
    v76 = v99;
    sub_26C00977C();
    sub_26BEC9EE0(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier);
    sub_26C00976C();
    v77 = sub_26C00971C();
    v110(v76, v109);
    sub_26BEC9FEC(v75, type metadata accessor for MLS.AlgorithmIdentifier);
    v78 = (2 * *(v77 + 16)) | 1;
    v79 = (v64 + v59[8]);
    *v79 = v77;
    v79[1] = v77 + 32;
    v79[2] = 0;
    v79[3] = v78;
    v80 = *(v65 + 16);
    v81 = *(v65 + 48);
    v120 = *(v65 + 32);
    v121 = v81;
    v82 = *(v65 + 16);
    v118 = *v65;
    v119 = v82;
    v83 = *(v65 + 48);
    v114[2] = v120;
    v114[3] = v83;
    v122 = *(v65 + 64);
    v115 = *(v65 + 64);
    v114[0] = v118;
    v114[1] = v80;
    sub_26BEC9F28(&v118, &v113);
    v84 = v96;
    sub_26BFE6D24(v114);
    v85 = v94;
    sub_26C00977C();
    v86 = v97;
    sub_26C00976C();
    v87 = (v95 + 8);
    v88 = v107;
    v112 = sub_26C00971C();
    sub_26BE00258(v88, v108);
    v110(v85, v109);
    (*v87)(v84, v86);
    sub_26BEC9FEC(v92, _s9PublicKeyVMa);
    v89 = v112 + 32;
    v90 = (2 * *(v112 + 16)) | 1;
    v91 = (v64 + v59[9]);
    *v91 = v112;
    v91[1] = v89;
    v91[2] = 0;
    v91[3] = v90;
    sub_26BEC9F84(v64, v93, _s25CertificateSigningRequestVMa);
    __swift_destroy_boxed_opaque_existential_1(v123);
    return sub_26BEC9FEC(v64, _s25CertificateSigningRequestVMa);
  }
}

uint64_t sub_26BEC9E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEC9E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEC9EE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BEC9F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEC9FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MLS.RatchetTree.leafCount.getter(_DWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = (v3 + 32 + 136 * v5);
    v8 = v5;
    while (1)
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_19;
      }

      v9 = v7[7];
      v35 = v7[6];
      v36 = v9;
      v37 = *(v7 + 16);
      v10 = v7[3];
      v31 = v7[2];
      v32 = v10;
      v11 = v7[5];
      v33 = v7[4];
      v34 = v11;
      v12 = v7[1];
      v29 = *v7;
      v30 = v12;
      memmove(__dst, v7, 0x88uLL);
      if (sub_26BE58C10(__dst) != 1)
      {
        break;
      }

LABEL_4:
      ++v8;
      v7 = (v7 + 136);
      if (v4 == v8)
      {
        goto LABEL_16;
      }
    }

    v27[6] = __dst[6];
    v27[7] = __dst[7];
    v28 = v39;
    v27[2] = __dst[2];
    v27[3] = __dst[3];
    v27[4] = __dst[4];
    v27[5] = __dst[5];
    v27[0] = __dst[0];
    v27[1] = __dst[1];
    if (sub_26BE592C4(v27) == 1)
    {
      sub_26BE13A3C(v27);
      goto LABEL_4;
    }

    sub_26BE13A3C(v27);
    v25[6] = v35;
    v25[7] = v36;
    v26 = v37;
    v25[2] = v31;
    v25[3] = v32;
    v25[4] = v33;
    v25[5] = v34;
    v25[0] = v29;
    v25[1] = v30;
    sub_26BE59BD8(v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BECB854(0, *(v6 + 16) + 1, 1);
      v6 = v40;
    }

    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_26BECB854((v14 > 1), v15 + 1, 1);
      v6 = v40;
    }

    v5 = v8 + 1;
    *(v6 + 16) = v15 + 1;
    v16 = v6 + 136 * v15;
    *(v16 + 32) = v29;
    v17 = v30;
    v18 = v31;
    v19 = v33;
    *(v16 + 80) = v32;
    *(v16 + 96) = v19;
    *(v16 + 48) = v17;
    *(v16 + 64) = v18;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    *(v16 + 160) = v37;
    *(v16 + 128) = v21;
    *(v16 + 144) = v22;
    *(v16 + 112) = v20;
  }

  while (v4 - 1 != v8);
LABEL_16:
  v23 = *(v6 + 16);

  if (HIDWORD(v23))
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    *a1 = v23;
  }
}

void sub_26BECA280(unsigned int a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = a1 - v3;
  if (v4 >= 1)
  {
    v5 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v1 = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_26BEEB900(0, v3 + 1, 1, v2);
      *v1 = v2;
    }

    sub_26BE2E2B8(v18);
    *v1 = v2;
    v7 = v2[2];
    v8 = 136 * v7 + 32;
    do
    {
      v9 = v2[3];
      v10 = v7 + 1;
      if (v7 >= v9 >> 1)
      {
        v2 = sub_26BEEB900((v9 > 1), v7 + 1, 1, v2);
      }

      v2[2] = v10;
      v11 = v2 + v8;
      *v11 = v18[0];
      v12 = v18[1];
      v13 = v18[2];
      v14 = v18[4];
      *(v11 + 3) = v18[3];
      *(v11 + 4) = v14;
      *(v11 + 1) = v12;
      *(v11 + 2) = v13;
      v15 = v18[5];
      v16 = v18[6];
      v17 = v18[7];
      *(v11 + 16) = v19;
      *(v11 + 6) = v16;
      *(v11 + 7) = v17;
      *(v11 + 5) = v15;
      v8 += 136;
      v7 = v10;
      --v4;
    }

    while (v4);
    *v1 = v2;
  }
}

uint64_t MLS.RatchetTree.hasLeaf(leafData:)(unsigned int *a1, uint64_t a2, unint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (!v6)
  {
    goto LABEL_75;
  }

  v7 = 0;
  v8 = (v5 + 32);
  v59 = a1;
  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3 == 0xC000000000000000;
  }

  v10 = !v9;
  v64 = v10;
  v68 = a3 >> 62;
  v11 = __OFSUB__(HIDWORD(a2), a2);
  v61 = v11;
  v60 = HIDWORD(a2) - a2;
  v63 = BYTE6(a3);
  v12 = v6 - 1;
  v13 = 0xFFFFFFFFLL;
  v66 = v6 - 1;
  v67 = *v3;
  while (1)
  {
    v86 = *v8;
    v14 = v8[1];
    v15 = v8[2];
    v16 = v8[4];
    v89 = v8[3];
    v90 = v16;
    v87 = v14;
    v88 = v15;
    v17 = v8[5];
    v18 = v8[6];
    v19 = v8[7];
    v94 = *(v8 + 16);
    v92 = v18;
    v93 = v19;
    v91 = v17;
    if (!v13)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    memmove(__dst, v8, 0x88uLL);
    if (sub_26BE58C10(__dst) == 1)
    {
      goto LABEL_16;
    }

    v84[6] = v92;
    v84[7] = v93;
    v85 = v94;
    v84[2] = v88;
    v84[3] = v89;
    v84[4] = v90;
    v84[5] = v91;
    v84[0] = v86;
    v84[1] = v87;
    if (sub_26BE592C4(v84) == 1)
    {
      sub_26BE13A3C(v84);
LABEL_16:
      if (v12 == v7)
      {
        goto LABEL_74;
      }

      goto LABEL_17;
    }

    v20 = sub_26BE13A3C(v84);
    v80 = xmmword_26C00BBD0;
    v81 = 0;
    v76 = *(v20 + 80);
    v77 = *(v20 + 96);
    v78 = *(v20 + 112);
    v79 = *(v20 + 128);
    v72 = *(v20 + 16);
    v73 = *(v20 + 32);
    v74 = *(v20 + 48);
    v75 = *(v20 + 64);
    v71 = *v20;
    v82[2] = v88;
    v82[3] = v89;
    v82[0] = v86;
    v82[1] = v87;
    v83 = v94;
    v82[6] = v92;
    v82[7] = v93;
    v82[4] = v90;
    v82[5] = v91;
    sub_26BE59BD8(v82, &v69);
    sub_26BE7EBA4(&v71);
    if (v4)
    {
      goto LABEL_79;
    }

    v22 = *(v20 + 120);
    v21 = *(v20 + 128);
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 != 2)
      {
        LOBYTE(v24) = 0;
LABEL_34:
        LOBYTE(v69) = v24;
        v28 = MEMORY[0x277D838B0];
        *(&v72 + 1) = MEMORY[0x277D838B0];
        *&v73 = MEMORY[0x277CC9C18];
        *&v71 = &v69;
        v29 = &v69 + 1;
        goto LABEL_36;
      }

      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_88;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        break;
      }

      goto LABEL_29;
    }

    if (!v23)
    {
      v24 = BYTE6(v21);
      goto LABEL_29;
    }

    LODWORD(v24) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_87;
    }

    v24 = v24;
    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_29:
    if (v24 <= 0x3F)
    {
      goto LABEL_34;
    }

    if (v24 >> 14)
    {
      if (v24 >> 30)
      {
        break;
      }

      v69 = bswap32(v24 | 0x80000000);
      v28 = MEMORY[0x277D838B0];
      *(&v72 + 1) = MEMORY[0x277D838B0];
      *&v73 = MEMORY[0x277CC9C18];
      *&v71 = &v69;
      v29 = &v70;
    }

    else
    {
      LOWORD(v69) = bswap32(v24 | 0x4000) >> 16;
      v28 = MEMORY[0x277D838B0];
      *(&v72 + 1) = MEMORY[0x277D838B0];
      *&v73 = MEMORY[0x277CC9C18];
      *&v71 = &v69;
      v29 = &v69 + 2;
    }

LABEL_36:
    *(&v71 + 1) = v29;
    v30 = __swift_project_boxed_opaque_existential_1(&v71, v28);
    v32 = *v30;
    v31 = v30[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    *(&v72 + 1) = MEMORY[0x277CC9318];
    *&v73 = MEMORY[0x277CC9300];
    *&v71 = v22;
    *(&v71 + 1) = v21;
    v33 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x277CC9318]);
    v34 = *v33;
    v35 = v33[1];
    sub_26BE00608(v22, v21);
    sub_26BE121A0(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    v36 = v80;
    v37 = *(&v80 + 1) >> 62;
    if ((*(&v80 + 1) >> 62) > 1)
    {
      if (v37 != 2)
      {
        goto LABEL_43;
      }

      v38 = *(v80 + 24);
    }

    else
    {
      if (!v37)
      {
        goto LABEL_43;
      }

      v38 = v80 >> 32;
    }

    if (v38 < 0)
    {
      goto LABEL_86;
    }

LABEL_43:
    v39 = sub_26C00909C();
    v41 = v40;
    sub_26BE00258(v36, *(&v36 + 1));
    v42 = v41 >> 62;
    if (v41 >> 62 == 3)
    {
      v43 = 0;
      if (v39)
      {
        v44 = 0;
      }

      else
      {
        v44 = v41 == 0xC000000000000000;
      }

      v45 = v68;
      v47 = !v44 || v68 < 3;
      if (((v47 | v64) & 1) == 0)
      {
        v41 = 0xC000000000000000;
        goto LABEL_80;
      }

LABEL_61:
      if (v45 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_66;
    }

    v45 = v68;
    if (v42 == 2)
    {
      v49 = *(v39 + 16);
      v48 = *(v39 + 24);
      v43 = v48 - v49;
      if (__OFSUB__(v48, v49))
      {
        goto LABEL_91;
      }

      goto LABEL_61;
    }

    if (v42 == 1)
    {
      if (__OFSUB__(HIDWORD(v39), v39))
      {
        goto LABEL_92;
      }

      v43 = HIDWORD(v39) - v39;
      if (v68 <= 1)
      {
LABEL_62:
        v50 = v63;
        if (v45)
        {
          v50 = v60;
          if (v61)
          {
            goto LABEL_89;
          }
        }

        goto LABEL_68;
      }
    }

    else
    {
      v43 = BYTE6(v41);
      if (v68 <= 1)
      {
        goto LABEL_62;
      }
    }

LABEL_66:
    if (v45 != 2)
    {
      if (!v43)
      {
        goto LABEL_77;
      }

      goto LABEL_73;
    }

    v52 = *(a2 + 16);
    v51 = *(a2 + 24);
    v27 = __OFSUB__(v51, v52);
    v50 = v51 - v52;
    if (v27)
    {
      goto LABEL_90;
    }

LABEL_68:
    if (v43 == v50)
    {
      if (v43 < 1 || (sub_26BE00608(a2, a3), (sub_26BECB6A4(v39, v41, a2, a3) & 1) != 0))
      {
LABEL_77:
        v43 = v39;
LABEL_80:
        v57 = -v13 - 1;
        if (v13)
        {
          if (v57)
          {
            sub_26BE01654();
            swift_allocError();
            *v58 = 0xD000000000000026;
            *(v58 + 8) = 0x800000026C02B600;
            *(v58 + 112) = 15;
            swift_willThrow();
            sub_26BE00258(v43, v41);
            sub_26BE7DCC0(&v86);
          }

          else
          {
            sub_26BE7DCC0(&v86);
            sub_26BE00258(v43, v41);
            *v59 = v57 >> 1;
            v53 = 1;
          }

          goto LABEL_76;
        }

LABEL_93:
        __break(1u);
      }
    }

LABEL_73:
    sub_26BE00258(v39, v41);
    sub_26BE7DCC0(&v86);
    v12 = v66;
    v5 = v67;
    if (v66 == v7)
    {
LABEL_74:
      a1 = v59;
LABEL_75:
      v53 = 0;
      *a1 = 0;
      goto LABEL_76;
    }

LABEL_17:
    ++v7;
    --v13;
    v8 = (v8 + 136);
    if (v7 >= *(v5 + 16))
    {
      goto LABEL_85;
    }
  }

  sub_26BE01600();
  swift_allocError();
  *v56 = 3;
  swift_willThrow();
LABEL_79:
  sub_26BE7DCC0(&v86);
  sub_26BE00258(v80, *(&v80 + 1));
LABEL_76:
  v54 = *MEMORY[0x277D85DE8];
  return v53 & 1;
}

Swift::Void __swiftcall MLS.RatchetTree.clear()()
{
  v1 = *v0;

  *v0 = MEMORY[0x277D84F90];
}

Swift::Void __swiftcall MLS.RatchetTree.halve()()
{
  v1 = *v0;
  v2 = *(*v0 + 16) - (*(*v0 + 16) >> 1);

  v3 = sub_26BE55FBC(v2, v1);
  v4 = *v0;

  *v0 = v3;
}

uint64_t MLS.RatchetTree.rawRepresentation.getter()
{
  v4 = *v0;
  sub_26BE7D80C(&v4);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

void static MLS.credentialsFromRatchetTree(_:ciphersuiteID:)(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = 0;
  v140 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v6 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v6 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  *&v104 = a1;
  *(&v104 + 1) = a2;
  *&v105 = v6;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v104, &__dst);
  if (v3)
  {
    sub_26BE00258(v104, *(&v104 + 1));
    *&v104 = a1;
    *(&v104 + 1) = a2;
    *&v105 = v6;
    goto LABEL_9;
  }

  if (BYTE8(__dst))
  {
    sub_26BE00258(v104, *(&v104 + 1));
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    *&v104 = a1;
    *(&v104 + 1) = a2;
    *&v105 = v6;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
LABEL_14:
    swift_willThrow();
    *&__dst = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v12 = sub_26C00A4FC();
    sub_26BE826C4(v12, v13, a1, a2);

    swift_willThrow();
    sub_26BE00258(v104, *(&v104 + 1));
    goto LABEL_15;
  }

  v15 = __dst;
  sub_26BE00258(a1, a2);
  if (v15 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v16 = 5;
LABEL_9:
    swift_willThrow();
LABEL_10:
    sub_26BE00258(v104, *(&v104 + 1));
    *&v104 = a1;
    *(&v104 + 1) = a2;
    *&v105 = v6;
    goto LABEL_14;
  }

  v17 = sub_26BF2A44C(v15);
  if (v18 >> 60 == 15)
  {
    v9 = *(&v104 + 1);
    v10 = v104;
    goto LABEL_13;
  }

  *&v95 = v17;
  *(&v95 + 1) = v18;
  v20 = MEMORY[0x277D84F90];
  *&v96 = v19;
  while (1)
  {
    v21 = v18 >> 62;
    if ((v18 >> 62) > 1)
    {
      if (v21 == 2)
      {
        v22 = *(v17 + 24);
      }

      else
      {
        v22 = 0;
      }
    }

    else if (v21)
    {
      v22 = v17 >> 32;
    }

    else
    {
      v22 = BYTE6(v18);
    }

    v23 = __OFSUB__(v22, v19);
    v24 = v22 - v19;
    if (v23)
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v24 < 1)
    {
      break;
    }

    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_94;
    }

    if (v21 <= 1)
    {
      if (v21)
      {
        v26 = v17 >> 32;
      }

      else
      {
        v26 = BYTE6(v18);
      }

LABEL_37:
      if (v26 < v25)
      {
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (v21 == 2)
    {
      v26 = *(v17 + 24);
      goto LABEL_37;
    }

    if (v25 > 0)
    {
LABEL_50:
      sub_26BE01600();
      swift_allocError();
      *v37 = 1;
LABEL_89:
      swift_willThrow();

      sub_26BE00258(v95, *(&v95 + 1));
      goto LABEL_10;
    }

LABEL_40:
    *&v122 = v17;
    *(&v122 + 1) = v18;
    if (v25 < v19)
    {
      goto LABEL_95;
    }

    *&v113 = v19;
    *(&v113 + 1) = v19 + 1;
    sub_26BE00608(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v122, *(&v122 + 1));
    *&v96 = v25;
    sub_26BE2E2B8(&v122);
    v137 = v128;
    v138 = v129;
    v139 = v130;
    v133 = v124;
    v134 = v125;
    v135 = v126;
    v136 = v127;
    __dst = v122;
    v132 = v123;
    sub_26BECBB94(&v122, &v113);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_26BEEB900(0, v20[2] + 1, 1, v20);
    }

    v28 = v20[2];
    v27 = v20[3];
    if (v28 >= v27 >> 1)
    {
      v20 = sub_26BEEB900((v27 > 1), v28 + 1, 1, v20);
    }

    v119 = v137;
    v120 = v138;
    v121 = v139;
    v115 = v133;
    v116 = v134;
    v117 = v135;
    v118 = v136;
    v113 = __dst;
    v114 = v132;
    sub_26BE7DCC0(&v113);
    v20[2] = v28 + 1;
    v29 = &v20[17 * v28];
    *(v29 + 2) = v122;
    v30 = v126;
    v32 = v123;
    v31 = v124;
    *(v29 + 5) = v125;
    *(v29 + 6) = v30;
    *(v29 + 3) = v32;
    *(v29 + 4) = v31;
    v34 = v128;
    v33 = v129;
    v35 = v127;
    v29[20] = v130;
    *(v29 + 8) = v34;
    *(v29 + 9) = v33;
    *(v29 + 7) = v35;
    v18 = *(&v95 + 1);
    v17 = v95;
    v19 = v96;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v36 = *(v17 + 24);
    }

    else
    {
      v36 = 0;
    }
  }

  else if (v21)
  {
    v36 = v17 >> 32;
  }

  else
  {
    v36 = BYTE6(v18);
  }

  if (__OFSUB__(v36, v19))
  {
    __break(1u);
LABEL_102:
    __break(1u);
  }

  if (v36 != v19)
  {
    sub_26BE01654();
    swift_allocError();
    *v73 = 0;
    v73[112] = 1;
    goto LABEL_89;
  }

  sub_26BE00258(v17, v18);
  sub_26BE00258(a1, a2);
  sub_26BE00258(v104, *(&v104 + 1));
  LOWORD(v113) = v7;
  *&v122 = v20;
  MLS.TreeKEMPublicKey.init(ciphersuiteID:ratchetTree:)(&v113, &v122, &__dst);
  v38 = *(&__dst + 1);
  v39 = v132;
  v40 = *(&v132 + 1);
  v41 = MEMORY[0x277D84F90];
  if (v132)
  {
    v42 = 0;
    v43 = v132 - 1;
    v44 = 2 * (v132 - 1);
    v90 = *(&v132 + 1);
    v91 = *(&v132 + 1) + 32;
    v82 = 1 - v132;
    v83 = v132;
    v45 = -v132;
    v88 = v44;
    v89 = v132 - 1;
    v84 = v45;
LABEL_59:
    v46 = 0;
    v47 = v42;
    if (v42 <= v39)
    {
      v48 = v39;
    }

    else
    {
      v48 = v42;
    }

    v49 = v42 - v48;
    v50 = 2 * v42;
    v51 = v45 + v47;
    v93 = v47;
    while (v49 + v46)
    {
      if (v47 + v46 < 0)
      {
        goto LABEL_97;
      }

      if (v43 < 0)
      {
        goto LABEL_98;
      }

      if (v50 > v44)
      {
        goto LABEL_91;
      }

      if (*(v40 + 16) > v50)
      {
        v52 = (v91 + 136 * v50);
        memmove(&__dst, v52, 0x88uLL);
        if (sub_26BE58C10(&__dst) != 1)
        {
          v113 = *v52;
          v53 = v52[1];
          v54 = v52[2];
          v55 = v52[4];
          v116 = v52[3];
          v117 = v55;
          v114 = v53;
          v115 = v54;
          v56 = v52[5];
          v57 = v52[6];
          v58 = v52[7];
          v121 = *(v52 + 16);
          v119 = v57;
          v120 = v58;
          v118 = v56;
          memmove(&v122, v52, 0x88uLL);
          if (sub_26BE58C10(&v122) == 1)
          {
            goto LABEL_91;
          }

          v110 = v128;
          v111 = v129;
          v112 = v130;
          v106 = v124;
          v107 = v125;
          v108 = v126;
          v109 = v127;
          v104 = v122;
          v105 = v123;
          v45 = v84;
          if (sub_26BE592C4(&v104) == 1)
          {
            sub_26BE13A3C(&v104);
            v101 = v128;
            v102 = v129;
            v103 = v130;
            v97 = v124;
            v98 = v125;
            v99 = v126;
            v100 = v127;
            v95 = v122;
            v96 = v123;
            v75 = sub_26BE13A3C(&v95);
            v76 = v75[2];
            v77 = v75[3];
            v78 = v75[4];
            sub_26BE00608(*v75, v75[1]);
            sub_26BE00608(v76, v77);

            sub_26BE01654();
            swift_allocError();
            *v79 = 28;
            *(v79 + 8) = 0u;
            *(v79 + 24) = 0u;
            *(v79 + 40) = 0u;
            *(v79 + 56) = 0u;
            *(v79 + 72) = 0u;
            *(v79 + 88) = 0u;
            *(v79 + 104) = 0;
            *(v79 + 112) = 23;
            swift_willThrow();
            sub_26BE7DCC0(&v113);
            goto LABEL_92;
          }

          v59 = sub_26BE13A3C(&v104);
          v61 = *(v59 + 32);
          v60 = *(v59 + 40);
          if ((v60 & 0x2000000000000000) != 0)
          {
            v62 = *(v61 + 16);
            if (v62)
            {
              v80 = v38;
              v94 = MEMORY[0x277D84F90];
              sub_26BECBB94(&v113, &v95);
              v81 = v60;
              sub_26BE04890(v61, v60);
              sub_26C00ACBC();
              v63 = 0;
              v64 = (v61 + 40);
              v85 = v62;
              v86 = v61;
              while (1)
              {
                v92 = v63;
                if (v63 >= *(v61 + 16))
                {
                  goto LABEL_102;
                }

                v65 = *(v64 - 1);
                v66 = *v64;
                sub_26BE00608(v65, *v64);
                v67 = sub_26C0090DC();
                v68 = SecCertificateCreateWithData(0, v67);

                if (!v68)
                {
                  break;
                }

                sub_26BE00258(v65, v66);
                sub_26C00AC8C();
                v69 = *(v94 + 16);
                sub_26C00ACCC();
                sub_26C00ACDC();
                sub_26C00AC9C();
                v63 = v92 + 1;
                v64 += 2;
                v61 = v86;
                if (v85 == v92 + 1)
                {
                  sub_26BE0489C(v86, v81);
                  v61 = v94;
                  v38 = v80;
                  v45 = v84;
                  goto LABEL_82;
                }
              }

              __break(1u);
              return;
            }

            sub_26BECBB94(&v113, &v95);
            v61 = MEMORY[0x277D84F90];
LABEL_82:
            v60 = 0x2000000000000000;
          }

          else
          {
            sub_26BECBB94(&v113, &v95);
            sub_26BE04890(v61, v60);
          }

          v87 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_26BEED8C8(0, *(v41 + 2) + 1, 1, v41);
          }

          v71 = *(v41 + 2);
          v70 = *(v41 + 3);
          if (v71 >= v70 >> 1)
          {
            v41 = sub_26BEED8C8((v70 > 1), v71 + 1, 1, v41);
          }

          v42 = v93 + v46 + 1;
          sub_26BE7DCC0(&v113);
          *(v41 + 2) = v71 + 1;
          v72 = &v41[16 * v71];
          *(v72 + 4) = v87;
          *(v72 + 5) = v60;
          v40 = v90;
          v39 = v83;
          v44 = v88;
          v43 = v89;
          if (v93 + v46 + v82)
          {
            goto LABEL_59;
          }

          goto LABEL_92;
        }

        v40 = v90;
        v44 = v88;
        v43 = v89;
        LODWORD(v47) = v93;
      }

      ++v46;
      v50 += 2;
      if (!(v51 + v46))
      {
        goto LABEL_92;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_91:

    sub_26BE01654();
    swift_allocError();
    *v74 = 30;
    *(v74 + 8) = 0u;
    *(v74 + 24) = 0u;
    *(v74 + 40) = 0u;
    *(v74 + 56) = 0u;
    *(v74 + 72) = 0u;
    *(v74 + 88) = 0u;
    *(v74 + 104) = 0;
    *(v74 + 112) = 23;
    swift_willThrow();
  }

LABEL_92:

LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_26BECB6A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_26BF25B2C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_26BE00258(a3, a4);
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
  sub_26BE567B0(v14, a3, a4, &v13);
  v10 = v4;
  sub_26BE00258(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *sub_26BECB834(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD6374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB854(void *a1, int64_t a2, char a3)
{
  result = sub_26BFD6480(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB874(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD65C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB894(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD66BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB8B4(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD66D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26BECB8D4(size_t a1, int64_t a2, char a3)
{
  result = sub_26BFD6AF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB8F4(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD68EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB914(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD6B18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB934(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD6C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB954(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD67D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB974(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD6D24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECB994(void *a1, int64_t a2, char a3)
{
  result = sub_26BFD6E30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB9B4(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD69F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26BECB9D4(size_t a1, int64_t a2, char a3)
{
  result = sub_26BFD6F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECB9F4(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA14(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA34(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7378(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA54(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD74A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA74(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD75C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBA94(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD76D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBAB4(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7800(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26BECBAD4(void *a1, int64_t a2, char a3)
{
  result = sub_26BFD7920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26BECBAF4(size_t a1, int64_t a2, char a3)
{
  result = sub_26BFD7A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB14(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7C40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB34(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB54(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7E68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26BECBB74(char *a1, int64_t a2, char a3)
{
  result = sub_26BFD7F90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26BECBB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BECBC04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 40) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 40) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26BECBC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *(result + 40) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26BECBCC4()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26C00B05C();
  v5 = (v4 >> 60) & 3;
  if (!v5)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  if (v5 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

uint64_t sub_26BECBD98()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = (v0[2] >> 60) & 3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v0[3];
      MEMORY[0x26D699B20](1);
      sub_26C00B07C();
      sub_26C00911C();
      return MEMORY[0x26D699B60](v4);
    }

    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
  }

  else
  {
    MEMORY[0x26D699B20](0);
  }

  return sub_26C00911C();
}

uint64_t sub_26BECBE70()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26C00B05C();
  v5 = (v4 >> 60) & 3;
  if (!v5)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    return sub_26C00B0CC();
  }

  if (v5 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
  return sub_26C00B0CC();
}

uint64_t sub_26BECBF5C()
{
  sub_26C00B05C();
  v2 = *v0;
  v1 = v0[1];
  v3 = (v0[2] >> 60) & 3;
  if (!v3)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  v4 = v0[3];
  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v4);
LABEL_7:
  v5 = v0[4];
  v6 = v0[5];
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BECC050()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (v0[2] >> 60) & 3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = v0[3];
      MEMORY[0x26D699B20](1);
      sub_26C00B07C();
      sub_26C00911C();
      MEMORY[0x26D699B60](v6);
      goto LABEL_7;
    }

    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
  }

  else
  {
    MEMORY[0x26D699B20](0);
  }

  sub_26C00911C();
LABEL_7:

  return sub_26C00911C();
}

uint64_t sub_26BECC134()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_26C00B05C();
  v7 = (v4 >> 60) & 3;
  if (!v7)
  {
    MEMORY[0x26D699B20](0);
LABEL_6:
    sub_26C00911C();
    goto LABEL_7;
  }

  if (v7 != 1)
  {
    MEMORY[0x26D699B20](2);
    sub_26C00B07C();
    goto LABEL_6;
  }

  MEMORY[0x26D699B20](1);
  sub_26C00B07C();
  sub_26C00911C();
  MEMORY[0x26D699B60](v3);
LABEL_7:
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BECC220(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  if ((sub_26BECC860(*a1, a1[1], a1[2], a1[3], *a2, a2[1], a2[2], a2[3]) & 1) == 0)
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

unint64_t sub_26BECC2A4()
{
  result = qword_28045EE58;
  if (!qword_28045EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045EE58);
  }

  return result;
}

uint64_t sub_26BECC2F8(__int128 *a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a1[1];
  v51 = *a1;
  v52 = v4;
  v5 = (v4 >> 60) & 3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v51;
    }
  }

  else
  {
    v6 = 1;
  }

  v44 = v6;
  v7 = MEMORY[0x277D838B0];
  v8 = MEMORY[0x277CC9C18];
  v49 = MEMORY[0x277D838B0];
  v50 = MEMORY[0x277CC9C18];
  v47 = &v44;
  v48 = &v45;
  v9 = __swift_project_boxed_opaque_existential_1(&v47, MEMORY[0x277D838B0]);
  v10 = *v9;
  v11 = v9[1];
  sub_26BECC978(&v51, &v45);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  v12 = *(&v51 + 1);
  v13 = v51;
  v14 = v52;
  v15 = (v52 >> 60) & 3;
  if (!v15)
  {
    v20 = *(&v51 + 1) >> 62;
    if ((*(&v51 + 1) >> 62) <= 1)
    {
      if (!v20)
      {
        v7 = BYTE14(v51);
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v15 == 1)
  {
    v2 = *(&v52 + 1);
    LOBYTE(v45) = v51;
    v49 = v7;
    v50 = v8;
    v47 = &v45;
    v48 = (&v45 + 1);
    v16 = __swift_project_boxed_opaque_existential_1(&v47, v7);
    v18 = *v16;
    v17 = v16[1];
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v47);
    v19 = v14 >> 62;
    if ((v14 >> 62) <= 1)
    {
      if (!v19)
      {
        v13 = BYTE6(v14);
        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v12 = sub_26BE11228(*(&v51 + 1), v52 & 0xCFFFFFFFFFFFFFFFLL);
    sub_26BECC9B0(&v51);
    v13 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  if (v19 != 2)
  {
    v13 = 0;
    goto LABEL_28;
  }

  v21 = *(v12 + 16);
  v20 = *(v12 + 24);
  v13 = v20 - v21;
  if (__OFSUB__(v20, v21))
  {
    __break(1u);
LABEL_21:
    if (v20 != 2)
    {
      v7 = 0;
      goto LABEL_37;
    }

    v23 = *(v13 + 16);
    v22 = *(v13 + 24);
    v7 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
LABEL_37:
      v31 = sub_26BF30414(v7);
      if (!v1)
      {
        v33 = v31;
        sub_26BE11228(v13, v12);
        sub_26BECC9B0(&v51);
        v34 = v33 + v7;
        if (__OFADD__(v33, v7))
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v13 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_38:
      result = sub_26BECC9B0(&v51);
      goto LABEL_54;
    }

    __break(1u);
LABEL_25:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    v13 = HIDWORD(v12) - v12;
  }

LABEL_28:
  v24 = sub_26BF30414(v13);
  if (v1)
  {
    goto LABEL_38;
  }

  v25 = v14 & 0xCFFFFFFFFFFFFFFFLL;
  v26 = v24;
  sub_26BE11228(v12, v25);
  v27 = v26 + v13;
  if (__OFADD__(v26, v13))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v12 = v27 + 2;
  if (__OFADD__(v27, 2))
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v45 = bswap64(v2);
  v49 = v7;
  v50 = v8;
  v47 = &v45;
  v48 = &v46;
  v28 = __swift_project_boxed_opaque_existential_1(&v47, v7);
  v30 = *v28;
  v29 = v28[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v47);
  sub_26BECC9B0(&v51);
  v13 = v12 + 8;
  if (__OFADD__(v12, 8))
  {
    __break(1u);
LABEL_34:
    if (__OFSUB__(HIDWORD(v13), v13))
    {
      goto LABEL_63;
    }

    v7 = HIDWORD(v13) - v13;
    goto LABEL_37;
  }

LABEL_41:
  v36 = *(a1 + 4);
  v35 = *(a1 + 5);
  v37 = v35 >> 62;
  if ((v35 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v35);
      goto LABEL_51;
    }

LABEL_48:
    if (__OFSUB__(HIDWORD(v36), v36))
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v38 = HIDWORD(v36) - v36;
    goto LABEL_51;
  }

  if (v37 == 2)
  {
    v40 = *(v36 + 16);
    v39 = *(v36 + 24);
    v38 = v39 - v40;
    if (__OFSUB__(v39, v40))
    {
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    v38 = 0;
  }

LABEL_51:
  result = sub_26BF30414(v38);
  if (!v1)
  {
    v41 = result;
    sub_26BE11228(v36, v35);
    v42 = v41 + v38;
    if (__OFADD__(v41, v38))
    {
      __break(1u);
    }

    else
    {
      result = v13 + v42;
      if (!__OFADD__(v13, v42))
      {
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_54:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BECC664@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_26BEE62D4();
  if ((v4 & 0x100) != 0)
  {
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    v15 = 1;
LABEL_9:
    *v14 = v15;
    return swift_willThrow();
  }

  LOBYTE(v5) = v4;
  if (v4 == 1)
  {
    result = sub_26BF2F7B0();
    if (v2)
    {
      return result;
    }

    v5 = result;
    v9 = v16;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    if (v4 == 2)
    {
      v6 = sub_26BEE62D4();
      if ((v6 & 0x100) == 0)
      {
        LOBYTE(v5) = v6;
        result = sub_26BF2F7B0();
        if (v2)
        {
          return result;
        }

        v9 = result;
        v10 = v8;
        v11 = sub_26BEEE594();
        if (v12)
        {
          sub_26BE01600();
          swift_allocError();
          *v13 = 1;
          swift_willThrow();
          return sub_26BE00258(v9, v10);
        }

        v18 = v11;
        v5 = v5;
        v17 = v10 | 0x1000000000000000;
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v19 = *v1;
    v20 = v1[1];
    v21 = v1[2];
    v22 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v24 = *(v19 + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v23 = BYTE6(v20);
      v24 = v19 >> 32;
      if (!v22)
      {
        v24 = v23;
      }
    }

    result = v24 - v21;
    if (__OFSUB__(v24, v21))
    {
      __break(1u);
      return result;
    }

    v25 = sub_26BF2A51C(result);
    if (!v25)
    {
      sub_26BE01600();
      swift_allocError();
      v15 = 5;
      goto LABEL_9;
    }

    v9 = sub_26BE12418(v25);
    v27 = v26;

    v18 = 0;
    v5 = v5;
    v17 = v27 | 0x2000000000000000;
  }

LABEL_23:
  result = sub_26BF2F7B0();
  if (v2)
  {
    return sub_26BECC944(v5, v9, v17);
  }

  *a1 = v5;
  a1[1] = v9;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = result;
  a1[5] = v28;
  return result;
}

uint64_t sub_26BECC860(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a7 & 0x3000000000000000;
  v11 = (a3 >> 60) & 3;
  if (!v11)
  {
    if (v10)
    {
      return 0;
    }

    v14 = a5;
    v13 = a6;

    return sub_26BE02DEC(a1, a2, v14, v13);
  }

  if (v11 != 1)
  {
    result = 0;
    if (v10 != 0x2000000000000000 || v9 != a5)
    {
      return result;
    }

    a1 = a2;
    a2 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v13 = a7 & 0xCFFFFFFFFFFFFFFFLL;
    v14 = a6;

    return sub_26BE02DEC(a1, a2, v14, v13);
  }

  result = 0;
  if (v10 == 0x1000000000000000 && v9 == a5)
  {
    return sub_26BE02DEC(a2, a3 & 0xCFFFFFFFFFFFFFFFLL, a6, a7 & 0xCFFFFFFFFFFFFFFFLL) & (a4 == a8);
  }

  return result;
}

uint64_t sub_26BECC944(uint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v3 != 2)
    {
      return result;
    }
  }

  else if (!v3)
  {
    return sub_26BE00258(result, a2);
  }

  return sub_26BE00258(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
}

uint64_t sub_26BECC9E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 32))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 16) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_26BECCA28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = xmmword_26C016500;
    }
  }

  return result;
}