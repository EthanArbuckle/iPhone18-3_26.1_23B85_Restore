uint64_t sub_25F21B99C(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_25F3044DC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C58, &unk_25F308110);
  v46 = a2;
  result = sub_25F30633C();
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
      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

uint64_t sub_25F21BD1C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C40, &unk_25F30DC30);
  v44 = a2;
  result = sub_25F30633C();
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
        sub_25F1B700C(v31, v45);
      }

      else
      {
        sub_25F21FC08(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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
      result = sub_25F1B700C(v45, *(v12 + 56) + v30 * v20);
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

uint64_t sub_25F21C060(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C30, &qword_25F3080E8);
  v33 = a2;
  result = sub_25F30633C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_25F30671C();
      MEMORY[0x25F8D88E0](v21);
      result = sub_25F30676C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F21C2F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C28, &qword_25F3080E0);
  result = sub_25F30633C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_25F30671C();
      MEMORY[0x25F8D8900](v21);
      result = sub_25F30676C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_25F21C570(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CrashReport.ID(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C18, &qword_25F3080D0);
  v40 = a2;
  result = sub_25F30633C();
  v13 = result;
  if (*(v10 + 16))
  {
    v37 = v3;
    v38 = v10;
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
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v39 + 72);
      v27 = *(v10 + 48) + v26 * v25;
      if (v40)
      {
        sub_25F1B6FA8(v27, v9);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        sub_25F2128DC(v27, v9);
        v41 = *(*(v10 + 56) + 8 * v25);
      }

      v28 = *(v13 + 40);
      sub_25F30671C();
      sub_25F30467C();
      sub_25F21FB54();
      sub_25F304BDC();
      result = sub_25F30676C();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_25F1B6FA8(v9, *(v13 + 48) + v26 * v21);
      *(*(v13 + 56) + 8 * v21) = v41;
      ++*(v13 + 16);
      v10 = v38;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_25F21C8D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C08, &qword_25F3080C0);
  result = sub_25F30633C();
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
      result = sub_25F30670C();
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

uint64_t sub_25F21CB44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF8, &qword_25F3080B0);
  v38 = a2;
  result = sub_25F30633C();
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
      v46 = *(*(v5 + 48) + 16 * v21);
      v22 = *(v5 + 56) + 80 * v21;
      if (v38)
      {
        v39 = *v22;
        v40 = *(v22 + 16);
        v23 = *(v22 + 40);
        v41 = *(v22 + 56);
        v42 = *(v22 + 32);
        v44 = *(v22 + 48);
        v45 = *(v22 + 64);
        v43 = *(v22 + 72);
      }

      else
      {
        v24 = *(v22 + 16);
        v25 = *(v22 + 32);
        v26 = *(v22 + 48);
        *&v49[9] = *(v22 + 57);
        v48[2] = v25;
        *v49 = v26;
        v48[1] = v24;
        v48[0] = *v22;
        v43 = v49[24];
        v44 = v26;
        v45 = *&v49[16];
        v41 = *(&v26 + 1);
        v42 = v25;
        v23 = BYTE8(v25);
        v39 = v48[0];
        v40 = v24;
        sub_25F1DF984(v48, v47);
      }

      v27 = *(v8 + 40);
      sub_25F30671C();
      MEMORY[0x25F8D88E0](v46);
      MEMORY[0x25F8D88E0](*(&v46 + 1));
      result = sub_25F30676C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v48[0]) = v23;
      v47[0] = v43;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v46;
      v17 = *(v8 + 56) + 80 * v16;
      *v17 = v39;
      *(v17 + 16) = v40;
      *(v17 + 32) = v42;
      *(v17 + 40) = v23;
      *(v17 + 48) = v44;
      *(v17 + 56) = v41;
      *(v17 + 64) = v45;
      *(v17 + 72) = v43;
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
        goto LABEL_38;
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
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25F21CEBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF0, &qword_25F30DC00);
  result = sub_25F30633C();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_25F30670C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_25F21D120(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55100, &qword_25F30DC50);
  v39 = a2;
  result = sub_25F30633C();
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
      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

uint64_t sub_25F21D3C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE8, &unk_25F3080A0);
  result = sub_25F30633C();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x25F8D88B0](*(v8 + 40), v22, 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
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

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25F21D638(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE0, &unk_25F30DC60);
  result = sub_25F30633C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_25F30671C();
      MEMORY[0x25F8D8900](v21);
      result = sub_25F30676C();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
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

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_25F21D8C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA0, &qword_25F308158);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;

        result = sub_25F1B708C(v23, v24, v26);
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

void *sub_25F21DA60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25F1B7118(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25F1B707C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25F21DC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55108, &qword_25F30DC58);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

void *sub_25F21DD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CB0, &unk_25F30DC70);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25F1B7118(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25F1B707C(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_25F21DEE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA8, &unk_25F308160);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_25F21E05C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD550D8, &qword_25F30DC08);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_25F1E6D24(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_25F1E6CBC(v19, *(v4 + 56) + 32 * v17);
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

void *sub_25F21E1D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C78, &qword_25F308130);
  v2 = *v0;
  v3 = sub_25F30632C();
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

void *sub_25F21E334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C68, &qword_25F308120);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = 40 * v17;
        sub_25F1BF614(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_25F1B7118(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_25F1B707C(v22, (*(v4 + 56) + v17));
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

void *sub_25F21E4D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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

char *sub_25F21E634()
{
  v1 = v0;
  v36 = sub_25F3044DC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C58, &unk_25F308110);
  v4 = *v0;
  v5 = sub_25F30632C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
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

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25F21E8B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C40, &unk_25F30DC30);
  v5 = *v0;
  v6 = sub_25F30632C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_25F21FC08(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_25F1B700C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_25F21EAEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C30, &qword_25F3080E8);
  v2 = *v0;
  v3 = sub_25F30632C();
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

void *sub_25F21EC48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C28, &qword_25F3080E0);
  v2 = *v0;
  v3 = sub_25F30632C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_25F21ED94()
{
  v1 = v0;
  v2 = type metadata accessor for CrashReport.ID(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C18, &qword_25F3080D0);
  v6 = *v0;
  v7 = sub_25F30632C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_25F2128DC(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_25F1B6FA8(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

void *sub_25F21EFAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C08, &qword_25F3080C0);
  v2 = *v0;
  v3 = sub_25F30632C();
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

void *sub_25F21F108()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF8, &qword_25F3080B0);
  v2 = *v0;
  v3 = sub_25F30632C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_25F1DF984(&v28, &v27))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 80;
      v18 = (*(v2 + 56) + v16);
      v19 = *(*(v2 + 48) + v17);
      v21 = v18[1];
      v20 = v18[2];
      v22 = v18[3];
      *(v31 + 9) = *(v18 + 57);
      v31[0] = v22;
      v28 = *v18;
      v29 = v21;
      v30 = v20;
      *(*(v4 + 48) + v17) = v19;
      v23 = (*(v4 + 56) + v16);
      *v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31[0];
      *(v23 + 57) = *(v31 + 9);
      v23[2] = v25;
      v23[3] = v26;
      v23[1] = v24;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_25F21F2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF0, &qword_25F30DC00);
  v2 = *v0;
  v3 = sub_25F30632C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_25F21F410()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55100, &qword_25F30DC50);
  v2 = *v0;
  v3 = sub_25F30632C();
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

void *sub_25F21F57C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE8, &unk_25F3080A0);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
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

void *sub_25F21F6D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE0, &unk_25F30DC60);
  v2 = *v0;
  v3 = sub_25F30632C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

uint64_t sub_25F21F83C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25F1B7118((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

unint64_t sub_25F21F86C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v43 = a1;
  v44 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v45 = v8;
  v46 = 0;
  v47 = v11 & v9;
  v48 = a2;
  v49 = a3;

  sub_25F2190EC(&v40);
  if (!v42)
  {
    goto LABEL_25;
  }

  v12 = v40;
  sub_25F1B707C(&v41, v39);
  v13 = *a5;
  result = sub_25F2192AC(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_25F21A9F0(v19, a4 & 1);
    v21 = *a5;
    result = sub_25F2192AC(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25F30665C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_25F21DD68();
    result = v25;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = (v23[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_25F1B707C(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_25F1B707C(v39, (v23[7] + 32 * result));
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v23[2] = v27;
LABEL_15:
    sub_25F2190EC(&v40);
    if (v42)
    {
      v20 = 1;
      do
      {
        v12 = v40;
        sub_25F1B707C(&v41, v39);
        v29 = *a5;
        result = sub_25F2192AC(v12);
        v31 = v29[2];
        v32 = (v30 & 1) == 0;
        v18 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v30;
        if (v29[3] < v33)
        {
          sub_25F21A9F0(v33, 1);
          v34 = *a5;
          result = sub_25F2192AC(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = (v36[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_1(v28);
          sub_25F1B707C(v39, v28);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_25F1B707C(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_25F2190EC(&v40);
      }

      while (v42);
    }

LABEL_25:
    sub_25F1BF034();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25F21FB54()
{
  result = qword_27FD550E0;
  if (!qword_27FD550E0)
  {
    sub_25F30467C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD550E0);
  }

  return result;
}

uint64_t sub_25F21FBAC(uint64_t a1)
{
  v2 = type metadata accessor for CrashReport.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F21FC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CrashReportError.MissingPhotoKeyError.init(report:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.MissingPhotoKeyError();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CrashReport(0);
  v10 = a1 + *(v9 + 40);
  v11 = *(v10 + 40);
  v12 = *(v10 + 104);
  v13 = v11 == 1 || v12 == 0;
  if (v13 || !v12[2])
  {
    sub_25F1AF760(a1);
  }

  else
  {
    v14 = v9;
    v16 = v12[4];
    v15 = v12[5];
    v23[2] = v16;
    v23[3] = v15;
    v23[0] = 0xD00000000000001ELL;
    v23[1] = 0x800000025F318840;
    sub_25F1BF118();

    if (sub_25F305D5C())
    {
      v17 = &v8[*(v4 + 24)];
      *v17 = v16;
      *(v17 + 1) = v15;
      v18 = (a1 + *(v14 + 20));
      v19 = *v18;
      v20 = v18[1];
      v21 = &v8[*(v4 + 20)];
      *v21 = v19;
      *(v21 + 1) = v20;
      sub_25F21FFC4(a1, v8, type metadata accessor for CrashReport);
      sub_25F21FFC4(v8, a2, type metadata accessor for CrashReportError.MissingPhotoKeyError);
      (*(v5 + 56))(a2, 0, 1, v4);
    }

    sub_25F1AF760(a1);
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t type metadata accessor for CrashReportError.MissingPhotoKeyError()
{
  result = qword_27FD55110;
  if (!qword_27FD55110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F21FFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CrashReportError.MissingPhotoKeyError.processName.getter()
{
  v1 = (v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CrashReportError.MissingPhotoKeyError.reason.getter()
{
  v1 = (v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CrashReportError.MissingPhotoKeyError.highValueTitle.getter()
{
  sub_25F305FAC();
  v1 = (v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError() + 20));
  v3 = *v1;
  v2 = v1[1];

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F318860);
  return v3;
}

uint64_t sub_25F220184(uint64_t a1)
{
  sub_25F305FAC();

  v3 = (v1 + *(a1 + 20));
  v5 = *v3;
  v6 = v3[1];

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F318860);
  return v5;
}

uint64_t sub_25F220260()
{
  result = type metadata accessor for CrashReport(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2202DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  type metadata accessor for IsolatedInvalidationHandle();
  v12 = swift_allocObject();
  v12[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v12[6] = 0;
  swift_unknownObjectWeakAssign();
  v12[2] = 0;
  v12[3] = 0;
  v13 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v14 = swift_allocObject();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v15 = swift_allocObject();
  *(v15 + 84) = 0;
  *(v15 + 16) = v18;
  *(v15 + 32) = v13;
  *(v15 + 81) = v21;
  *(v14 + 152) = v15;
  *(v14 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentInvalidatableCache.swift";
  *(v14 + 24) = 140;
  *(v14 + 32) = 2;
  *(v14 + 40) = xmmword_25F30DD30;
  *(v14 + 56) = "init(resource:)";
  *(v14 + 64) = 15;
  *(v14 + 72) = 2;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = xmmword_25F3077E0;
  *(v14 + 112) = 2;
  *(v14 + 120) = 0xD00000000000001CLL;
  *(v14 + 128) = 0x800000025F317BC0;
  *(v14 + 136) = 0x6164696C61766E69;
  *(v14 + 144) = 0xEB00000000646574;
  v12[4] = v14;
  *a6 = v12;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  return (*(*(a3 - 8) + 32))(&a6[*(v16 + 52)], a1, a3);
}

uint64_t ConcurrentInvalidatableCache.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ConcurrentInvalidatableCache.init()();
  return v3;
}

char *ConcurrentInvalidatableCache.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v38 - v5;
  v6 = v2[10];
  v49 = v2[11];
  v7 = v2[12];
  v48 = v2[13];
  v50 = v6;
  v51 = v49;
  v8 = v6;
  v52 = v7;
  v53 = v48;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  v9 = sub_25F3054AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_25F3054DC();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v47 = &v38 - v16;
  v45 = sub_25F30552C();
  v17 = *(v45 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - v20;
  swift_defaultActor_initialize();
  v40 = v7;
  v41 = v8;
  v50 = v8;
  v51 = v49;
  v52 = v7;
  v53 = v48;
  v22 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  v50 = v8;
  v51 = v22;
  v52 = v7;
  v53 = &off_2871628A0;
  type metadata accessor for IsolatedInvalidatableCache();
  *(v1 + 14) = IsolatedInvalidatableCache.__allocating_init()();
  v23 = v9;
  (*(v10 + 104))(v13, *MEMORY[0x277D85778], v9);
  v24 = v21;
  v39 = v21;
  v25 = v47;
  sub_25F30547C();
  (*(v10 + 8))(v13, v23);
  v27 = v43;
  v26 = v44;
  (*(v43 + 16))(&v1[*(*v1 + 128)], v25, v44);
  v28 = sub_25F30546C();
  v29 = v46;
  (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
  v30 = v42;
  v31 = v24;
  v32 = v45;
  (*(v17 + 16))(v42, v31, v45);
  v33 = (*(v17 + 80) + 72) & ~*(v17 + 80);
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v35 = v49;
  *(v34 + 4) = v41;
  *(v34 + 5) = v35;
  v36 = v48;
  *(v34 + 6) = v40;
  *(v34 + 7) = v36;
  *(v34 + 8) = v1;
  (*(v17 + 32))(&v34[v33], v30, v32);

  sub_25F1B1524(0, 0, v29, &unk_25F30DD50, v34);

  (*(v27 + 8))(v47, v26);
  (*(v17 + 8))(v39, v32);
  return v1;
}

uint64_t sub_25F220A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_25F1AFDB0;

  return sub_25F22211C(a5);
}

uint64_t sub_25F220AA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 48);
  *(v3 + 16) = *(v1 + 32);
  *(v3 + 32) = v5;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  v6 = *(sub_25F30552C() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v3 + 48) = v11;
  *v11 = v3;
  v11[1] = sub_25F220BC0;

  return sub_25F220A0C(a1, v8, v9, v10, v1 + v7);
}

uint64_t sub_25F220BC0()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F220CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 80) = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  *(v5 + 120) = v7;
  v8 = v6[11];
  *(v5 + 128) = v8;
  v9 = v6[12];
  *(v5 + 136) = v9;
  v10 = v6[13];
  *(v5 + 144) = v10;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v5 + 32) = v12;
  *(v5 + 16) = v11;
  v13 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  *(v5 + 152) = v13;
  v14 = *(v13 - 8);
  *(v5 + 160) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v5 + 176) = v16;
  *v16 = v5;
  v16[1] = sub_25F220E28;

  return sub_25F222874();
}

uint64_t sub_25F220E28()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F220F38, v2, 0);
}

uint64_t sub_25F220F38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v1 + 112);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = *(v0 + 136);
  type metadata accessor for ConcurrentInvalidatableCache();
  WitnessTable = swift_getWitnessTable();
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *(v5 + 16) = *(v0 + 96);
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *v6 = v0;
  v6[1] = sub_25F221068;
  v7 = *(v0 + 168);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);

  return IsolatedInvalidatableCache.resource(on:for:create:)(v7, v8, WitnessTable, v9, &unk_25F30DD70, v5);
}

uint64_t sub_25F221068()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_25F221254;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 112);

    v5 = sub_25F221190;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25F221190()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(*(v0[16] - 8) + 16))(v0[10], v1 + *(v3 + 52));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F221254()
{
  v1 = v0[23];
  v2 = v0[21];

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t sub_25F2212C4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = *(*a4 + 88);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v5[7] = v10;
  v14 = (a2 + *a2);
  v11 = a2[1];
  v12 = swift_task_alloc();
  v5[8] = v12;
  *v12 = v5;
  v12[1] = sub_25F221434;

  return v14(v10);
}

uint64_t sub_25F221434()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_25F1F4CEC;
  }

  else
  {
    v6 = sub_25F221560;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_25F221560()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  sub_25F2219E8(v1, *(v0 + 32), *(v0 + 16));
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F2215F8()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_25F2216B0;

  return sub_25F222874();
}

uint64_t sub_25F2216B0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F2217C0, v2, 0);
}

uint64_t sub_25F2217C0()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 48) + 112);
  IsolatedInvalidatableCache.snapshot.getter();
  v3 = swift_task_alloc();
  v4 = v1[10];
  v3[2] = v4;
  v5 = v1[11];
  v3[3] = v5;
  v6 = v1[12];
  v3[4] = v6;
  v7 = v1[13];
  v3[5] = v7;
  *&v8 = v4;
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  *(v0 + 32) = v9;
  *(v0 + 16) = v8;
  type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  v10 = sub_25F304B2C();

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_25F2218DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v9 = *a9;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v11 = v9;
  return sub_25F221924(&v12, &v11);
}

uint64_t sub_25F221924(__int128 *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = a1[1];
  v12 = *a1;
  v13 = v5;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  v6 = v2[14];
  v11 = *a2;
  v7 = v4;
  sub_25F2DA76C(&v12, &v11);
  v8 = *(*v3 + 128);
  v9 = *(v7 + 96);
  v12 = *(v7 + 80);
  v13 = v9;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  sub_25F3054DC();
  return sub_25F3054CC();
}

uint64_t sub_25F2219E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = *v3;
  v9 = *(*v3 + 88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v23 - v12;
  v14 = *(v10 + 16);
  v14(&v23 - v12, a1, v9);
  v15 = *(v7 + 80);
  *&v16 = v15;
  *(&v16 + 1) = v9;
  v23 = v16;
  v24 = *(v8 + 96);
  sub_25F2202DC(v13, v15, v9, v24, *(&v24 + 1), a3);
  v17 = *a3;
  v26 = v23;
  v27 = v24;
  type metadata accessor for ConcurrentInvalidatableCache();
  WitnessTable = swift_getWitnessTable();
  swift_beginAccess();
  *(v17 + 48) = WitnessTable;
  swift_unknownObjectWeakAssign();
  *&v26 = v15;
  *(&v26 + 1) = v9;
  v27 = v24;
  v19 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  *(&v27 + 1) = v19;
  v28 = &off_2871628A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, a3, v19);
  v25[3] = v9;
  v25[4] = *(&v24 + 1);
  v21 = __swift_allocate_boxed_opaque_existential_1(v25);
  v14(v21, a1, v9);
  sub_25F221C4C(&v26, v25, a2);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return __swift_destroy_boxed_opaque_existential_1(&v26);
}

uint64_t sub_25F221C4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v23 = a3;
  v24 = v6;
  v25 = v6;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v23 - v11;
  v13 = v10[3];
  v14 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v13);
  sub_25F1BF03C(a2, v26);
  v15 = swift_allocObject();
  sub_25F1A42F8(v26, v15 + 16);
  IsolatedInvalidatable.onInvalidation(_:)(sub_25F224BDC, v15, v13, v14);

  v16 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  (*(v8 + 16))(v12, v23, v7);
  v18 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v21 = v24;
  v20 = v25;
  *(v19 + 16) = v7;
  *(v19 + 24) = *(v20 + 88);
  *(v19 + 40) = *(v21 + 104);
  *(v19 + 48) = v4;
  (*(v8 + 32))(v19 + v18, v12, v7);

  ConcurrentInvalidatable.onInvalidation(_:)(sub_25F224BE4, v19, v16, v17);
}

uint64_t sub_25F221E88(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = *(v4 + 8);
  v7 = v2;
  return AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentInvalidatableCache.swift", 140, 2, 82, 34, "bindInvalidation(of:_:for:)", 27, 2, &v7, v3, v6);
}

uint64_t sub_25F221F08(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v21 = a3;
  v4 = *a2;
  v5 = *(*a2 + 96);
  v20 = *(*a2 + 80);
  v22 = v20;
  v23 = v5;
  v6 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = sub_25F30548C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *a1;
  v16 = *(v4 + 128);
  v17 = v20;
  v18 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v17 - 8) + 16))(v9, v21, v17);
  *&v9[v18] = v15;
  swift_storeEnumTagMultiPayload();
  sub_25F3054DC();

  sub_25F3054BC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_25F22211C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8);
  *(v2 + 96) = v4;
  v5 = *(v4 - 8);
  *(v2 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v7 = v3[10];
  *(v2 + 120) = v7;
  v8 = *(v7 - 8);
  *(v2 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v10 = v3[11];
  *(v2 + 144) = v10;
  v11 = v3[12];
  *(v2 + 152) = v11;
  v12 = v3[13];
  *(v2 + 160) = v12;
  *&v13 = v7;
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  *(v2 + 32) = v14;
  *(v2 + 16) = v13;
  v15 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  *(v2 + 168) = v15;
  v16 = *(v15 - 8);
  *(v2 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v2 + 184) = swift_task_alloc();
  v18 = *(*(sub_25F305C1C() - 8) + 64) + 15;
  *(v2 + 192) = swift_task_alloc();
  v19 = sub_25F30550C();
  *(v2 + 200) = v19;
  v20 = *(v19 - 8);
  *(v2 + 208) = v20;
  v21 = *(v20 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2223B8, v1, 0);
}

uint64_t sub_25F2223B8()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  sub_25F30552C();
  v14 = *(v0 + 144);
  sub_25F3054EC();
  *(v0 + 48) = v4;
  *(v0 + 56) = v14;
  *(v0 + 72) = v3;
  type metadata accessor for ConcurrentInvalidatableCache();
  WitnessTable = swift_getWitnessTable();
  *(v0 + 224) = WitnessTable;
  v7 = *(v0 + 88);
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_25F2224D8;
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);

  return MEMORY[0x2822003E8](v11, v7, WitnessTable, v12);
}

uint64_t sub_25F2224D8()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F2225E8, v2, 0);
}

uint64_t sub_25F2225E8()
{
  v28 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[23];
    v5 = v0[17];
    v6 = v0[14];
    (*(v0[26] + 8))(v0[27], v0[25]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v3 + 32))(v0[23], v1, v2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[23];
    if (EnumCaseMultiPayload == 1)
    {
      v12 = v0[13];
      v11 = v0[14];
      v13 = v0[12];
      (*(v12 + 32))(v11, v0[23], v13);
      sub_25F30541C();
      (*(v12 + 8))(v11, v13);
    }

    else
    {
      v15 = v0[16];
      v14 = v0[17];
      v16 = v0[15];
      v17 = v0[11];
      v18 = *(v10 + *(swift_getTupleTypeMetadata2() + 48));
      (*(v15 + 32))(v14, v10, v16);
      v19 = *(v17 + 112);
      v27 = v18;
      sub_25F2DADB4(v14, &v27);
      (*(v15 + 8))(v14, v16);
    }

    v20 = v0[28];
    v21 = v0[11];
    v22 = *(MEMORY[0x277D85798] + 4);
    v23 = swift_task_alloc();
    v0[29] = v23;
    *v23 = v0;
    v23[1] = sub_25F2224D8;
    v24 = v0[27];
    v25 = v0[24];
    v26 = v0[25];

    return MEMORY[0x2822003E8](v25, v21, v20, v26);
  }
}

uint64_t sub_25F222874()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return MEMORY[0x2822009F8](sub_25F2228BC, v0, 0);
}

uint64_t sub_25F2228BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v1 + 96);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  type metadata accessor for ConcurrentInvalidatableCache();
  WitnessTable = swift_getWitnessTable();
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_25F2229D4;
  v7 = *(v0 + 48);
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v6, v2, WitnessTable, 0xD000000000000018, 0x800000025F318A50, sub_25F224C4C, v7, v8);
}

uint64_t sub_25F2229D4()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F222AE4, v2, 0);
}

uint64_t sub_25F222B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1AFDB0;

  return sub_25F2212C4(a1, v4, v5, v7, v6);
}

uint64_t sub_25F222BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 40);
  v5 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  return (*(*(v7 - 8) + 16))(a2, a1 + *(v5 + 52));
}

uint64_t sub_25F222C70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 96);
  v17[0] = *(*a2 + 80);
  v17[1] = v4;
  v5 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = sub_25F30548C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = *(v3 + 128);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8);
  (*(*(v15 - 8) + 16))(v8, a1, v15);
  swift_storeEnumTagMultiPayload();
  sub_25F3054DC();
  sub_25F3054BC();
  return (*(v10 + 8))(v13, v9);
}

char *ConcurrentInvalidatableCache.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(*v0 + 128);
  v6 = *(v1 + 80);
  v7 = *(v1 + 96);
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  v4 = sub_25F3054DC();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConcurrentInvalidatableCache.__deallocating_deinit()
{
  ConcurrentInvalidatableCache.deinit();

  return MEMORY[0x282200960](v0);
}

char *ConcurrentOnDemand.init(create:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ConcurrentInvalidatableCache();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = ConcurrentInvalidatableCache.init()();
  *a3 = v9;
  a3[1] = a1;
  a3[2] = a2;
  return result;
}

uint64_t ConcurrentOnDemand.value.getter(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  *(v2 + 16) = 0;
  v7 = swift_task_alloc();
  *(v2 + 24) = v7;
  *v7 = v2;
  v7[1] = sub_25F2230B0;

  return sub_25F220CB4(a1, v2 + 16, v5, v6);
}

uint64_t sub_25F2230B0()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F2231E4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t ConcurrentOnDemand.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 74) = a8;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 73) = a3;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  v10 = *v8;
  *(v9 + 136) = *v12;
  *(v9 + 144) = v10;
  return MEMORY[0x2822009F8](sub_25F223240, 0, 0);
}

uint64_t sub_25F223240()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 74);
  v4 = *(v0 + 73);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v4;
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  return MEMORY[0x2822009F8](sub_25F223288, v1, 0);
}

uint64_t sub_25F223288()
{
  v1 = *(v0 + 144);
  sub_25F221924((v0 + 16), (v0 + 80));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ConcurrentOnDemand.invalidate(callsite:trace:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v3[3] = a1;
  v3[4] = v5;
  v3[2] = v4;
  return MEMORY[0x2822009F8](sub_25F223318, v5, 0);
}

uint64_t sub_25F223318()
{
  v1 = *(v0 + 32);
  sub_25F221924(*(v0 + 24), (v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t ConcurrentInvalidatableCache<>.anyResource(excluding:createResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *v4;
  v7 = *(*v4 + 88);
  v5[15] = v7;
  v8 = sub_25F1E6B9C();
  v5[16] = v8;
  v9 = *(v6 + 104);
  v5[17] = v9;
  v5[2] = &type metadata for Identifier;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v9;
  v10 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v13 = swift_task_alloc();
  v5[21] = v13;
  *v13 = v5;
  v13[1] = sub_25F2234CC;

  return sub_25F222874();
}

uint64_t sub_25F2234CC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F2235DC, v2, 0);
}

uint64_t sub_25F2235DC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v2 + 112);
  *(v0 + 48) = &type metadata for Identifier;
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v1;
  type metadata accessor for ConcurrentInvalidatableCache();
  WitnessTable = swift_getWitnessTable();
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *(v5 + 16) = *(v0 + 96);
  *(v5 + 32) = v2;
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_25F223708;
  v7 = *(v0 + 160);
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);

  return sub_25F2DB194(v7, v8, WitnessTable, v9, &unk_25F30DDA8, v5);
}

uint64_t sub_25F223708()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v9 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);
    v5 = sub_25F2238F4;
  }

  else
  {
    v6 = *(v2 + 176);
    v7 = *(v2 + 112);

    v5 = sub_25F223830;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25F223830()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(*(v0[15] - 8) + 16))(v0[10], v1 + *(v3 + 52));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F2238F4()
{
  v1 = v0[22];
  v2 = v0[20];

  v3 = v0[1];
  v4 = v0[24];

  return v3();
}

uint64_t sub_25F223964(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a1;
  v9 = *a6;
  v6[14] = *a6;
  v10 = *(v9 + 88);
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *a2;
  v6[17] = v13;
  v6[18] = v14;

  return MEMORY[0x2822009F8](sub_25F223A70, a6, 0);
}

uint64_t sub_25F223A70()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v0[6] = v0[18];
  v0[7] = v3;
  v5 = swift_task_alloc();
  *v5 = v1;
  v6 = *(v2 + 104);
  v5[1] = v6;
  KeyPath = swift_getKeyPath();

  v8 = sub_25F1E6B9C();
  v0[2] = &type metadata for Identifier;
  v0[3] = v1;
  v0[4] = v8;
  v0[5] = v6;
  type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource();
  v9 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25F1C1AC4(sub_25F224C20, KeyPath, v9, v1, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[19] = v12;

  v18 = (v4 + *v4);
  v13 = v4[1];
  v14 = swift_task_alloc();
  v0[20] = v14;
  *v14 = v0;
  v14[1] = sub_25F223C6C;
  v15 = v0[17];
  v16 = v0[12];

  return (v18)(v15, v0 + 6, v12);
}

uint64_t sub_25F223C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_25F223E38;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 104);

    v5 = sub_25F223D94;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_25F223D94()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[9];
  v0[8] = v0[18];
  sub_25F2219E8(v1, (v0 + 8), v5);
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F223E38()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_25F223EA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F1B51E0;

  return sub_25F223964(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_25F223F74(uint64_t a1)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent();
  result = sub_25F3054DC();
  if (v2 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcurrentInvalidatableCache.resource(for:create:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25F1B51E0;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConcurrentInvalidatableCache.snapshot.getter()
{
  v2 = *(*v0 + 152);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25F1EA6F4;

  return v6();
}

uint64_t sub_25F2242E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F224334(uint64_t a1)
{
  result = type metadata accessor for IsolatedInvalidationHandle();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2243BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_25F224540(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_25F224790(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    sub_25F224B78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F224818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8) - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_25F224988(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8) - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_25F224B78()
{
  if (!qword_27FD55328[0])
  {
    v0 = sub_25F30542C();
    if (!v1)
    {
      atomic_store(v0, qword_27FD55328);
    }
  }
}

uint64_t Sequence.concatenating<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2);
  (*(v8 + 16))(v12, a1, a3);
  return sub_25F224DE4(v16, v12, a2, a3, a4);
}

uint64_t sub_25F224DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for ConcatenateSequence();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t ConcatenateSequence.underestimatedCount.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = sub_25F3050EC();
  v6 = *(a1 + 24);
  v7 = *(a1 + 40);
  v8 = v1 + *(a1 + 52);
  v9 = sub_25F3050EC();
  v10 = __OFADD__(v5, v9);
  result = v5 + v9;
  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t ConcatenateSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 16);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, v3, v12);
  (*(v7 + 16))(v11, v3 + *(a1 + 52), v6);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  return sub_25F225080(v15, v11, v12, v6, a2);
}

uint64_t sub_25F225080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for ConcatenateSequence.Iterator();
  *(a5 + v9[14]) = 0;
  v10 = v9[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a5 + v10, 1, 1, AssociatedTypeWitness);
  v12 = v9[16];
  v13 = swift_getAssociatedTypeWitness();
  (*(*(v13 - 8) + 56))(a5 + v12, 1, 1, v13);
  (*(*(a3 - 8) + 32))(a5, a1, a3);
  return (*(*(a4 - 8) + 32))(a5 + v9[13], a2, a4);
}

uint64_t sub_25F22525C(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t sub_25F2252C0()
{
  sub_25F30671C();
  sub_25F225234(v2, *v0);
  return sub_25F30676C();
}

uint64_t ConcatenateSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v51 = *(*(a1 + 24) - 8);
  v5 = *(v51 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v6 + 40);
  v54 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_25F305C1C();
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = &v47 - v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  v60 = swift_getAssociatedTypeWitness();
  v14 = sub_25F305C1C();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v52 = &v47 - v20;
  v21 = *(v13 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_getAssociatedTypeWitness();
  v26 = sub_25F305C1C();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v47 - v29;
  v31 = *(a1 + 56);
  v62 = v3;
  v32 = *(v3 + v31);
  if (v32 > 1)
  {
    if (v32 != 2)
    {
      v42 = v61;
      v43 = *(*(v60 - 8) + 56);

      return v43(v42, 1, 1);
    }

    v35 = v31;
    v36 = *(a1 + 64);
    v37 = AssociatedTypeWitness;
    v38 = *(AssociatedTypeWitness - 8);
    if ((*(v38 + 48))(v62 + v36, 1, AssociatedTypeWitness))
    {
      (*(*(v60 - 8) + 56))(v18, 1, 1);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_25F305CDC();
      if ((*(*(v60 - 8) + 48))(v18, 1) != 1)
      {
        return (*(v58 + 32))(v61, v18, v59);
      }
    }

    v44 = v62;
    (*(v55 + 8))(v62 + v36, v56);
    (*(v38 + 56))(v44 + v36, 1, 1, v37);
    *(v44 + v35) = 3;
    return (*(v58 + 32))(v61, v18, v59);
  }

  v47 = v28;
  v48 = v31;
  if (!v32)
  {
    v33 = v62;
    (*(v21 + 16))(v24, v62, v13);
    sub_25F3050DC();
    (*(*(v25 - 8) + 56))(v30, 0, 1, v25);
    (*(v47 + 40))(v33 + *(a1 + 60), v30, v26);
    *(v33 + v48) = 1;
    return ConcatenateSequence.Iterator.next()(a1);
  }

  v39 = *(a1 + 60);
  v40 = *(v25 - 8);
  if ((*(v40 + 48))(v62 + v39, 1, v25))
  {
    v41 = v52;
    (*(*(v60 - 8) + 56))(v52, 1, 1);
LABEL_16:
    v45 = v62;
    (*(v47 + 8))(v62 + v39, v26);
    (*(v40 + 56))(v45 + v39, 1, 1, v25);
    (*(v51 + 16))(v50, v45 + *(a1 + 52), v54);
    v46 = v49;
    sub_25F3050DC();
    (*(*(AssociatedTypeWitness - 8) + 56))(v46, 0, 1);
    (*(v55 + 40))(v45 + *(a1 + 64), v46, v56);
    *(v45 + v48) = 2;
    ConcatenateSequence.Iterator.next()(a1);
    return (*(v58 + 8))(v41, v59);
  }

  swift_getAssociatedConformanceWitness();
  v41 = v52;
  sub_25F305CDC();
  if ((*(*(v60 - 8) + 48))(v41, 1) == 1)
  {
    goto LABEL_16;
  }

  return (*(v58 + 32))(v61, v41, v59);
}

uint64_t sub_25F225B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ConcatenateSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25F225BA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
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

uint64_t sub_25F225C34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_25F225E10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_25F2260EC(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v10 = a1[4];
      v11 = a1[5];
      result = type metadata accessor for ConcatenateSequence.Iterator.State();
      if (v7 <= 0x3F)
      {
        swift_getAssociatedTypeWitness();
        result = sub_25F305C1C();
        if (v8 <= 0x3F)
        {
          swift_getAssociatedTypeWitness();
          result = sub_25F305C1C();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F226230(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = a3[3];
  v7 = *(v6 - 8);
  v50 = *(v5 + 84);
  v48 = *(v7 + 84);
  if (v48 <= v50)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v49 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v47 = v11;
  if (v8 <= v11)
  {
    v8 = v11;
  }

  v12 = a3[5];
  v13 = v6;
  v14 = *(v9 + 84);
  v15 = *(swift_getAssociatedTypeWitness() - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v8 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v8;
  }

  if (v19 <= 0xFC)
  {
    v20 = 252;
  }

  else
  {
    v20 = v19;
  }

  if (v14)
  {
    v21 = *(v9 + 64);
  }

  else
  {
    v21 = *(v9 + 64) + 1;
  }

  v22 = *(v7 + 80);
  v23 = *(v7 + 64);
  v24 = *(v9 + 80);
  v25 = *(v15 + 80);
  v26 = *(v15 + 64);
  if (v17)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = *(v5 + 64) + v22;
  v29 = v21 + v25;
  v30 = a1;
  if (a2 <= v20)
  {
    goto LABEL_45;
  }

  v31 = v27 + ((v29 + ((v24 + v23 + (v28 & ~v22) + 1) & ~v24)) & ~v25);
  v32 = 8 * v31;
  if (v31 > 3)
  {
    goto LABEL_25;
  }

  v34 = ((a2 - v20 + ~(-1 << v32)) >> v32) + 1;
  if (HIWORD(v34))
  {
    v33 = *(a1 + v31);
    if (v33)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v34 <= 0xFF)
    {
      if (v34 < 2)
      {
        goto LABEL_45;
      }

LABEL_25:
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_45;
      }

LABEL_32:
      v35 = (v33 - 1) << v32;
      if (v31 > 3)
      {
        v35 = 0;
      }

      if (v31)
      {
        if (v31 <= 3)
        {
          v36 = v31;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      return v20 + (v37 | v35) + 1;
    }

    v33 = *(a1 + v31);
    if (*(a1 + v31))
    {
      goto LABEL_32;
    }
  }

LABEL_45:
  if (v50 == v20)
  {
    v38 = v49;
    v39 = *(v5 + 48);
    v40 = v50;

    return v39(v30, v40, v38);
  }

  v30 = ((a1 + v28) & ~v22);
  if (v48 == v20)
  {
    v39 = *(v7 + 48);
    v40 = v48;
    v38 = v13;

    return v39(v30, v40, v38);
  }

  v42 = v30 + v23;
  if (v19 <= 0xFC)
  {
    v43 = *v42;
    if (v43 >= 4)
    {
      return v43 - 3;
    }

    else
    {
      return 0;
    }
  }

  v44 = &v42[v24 + 1] & ~v24;
  if (v47 == v20)
  {
    if (v14 < 2)
    {
      return 0;
    }

    v45 = (*(v9 + 48))(v44, v14, AssociatedTypeWitness);
  }

  else
  {
    v45 = (*(v16 + 48))((v29 + v44) & ~v25);
  }

  if (v45 >= 2)
  {
    return v45 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25F226698(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v45 = v5;
  v6 = *(a4[3] - 8);
  v47 = *(v5 + 84);
  v44 = *(v6 + 84);
  if (v44 <= v47)
  {
    v7 = *(v5 + 84);
  }

  else
  {
    v7 = *(v6 + 84);
  }

  v8 = a4[4];
  v46 = a4[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v43 = v11;
  if (v7 <= v11)
  {
    v7 = v11;
  }

  v12 = a4[5];
  v13 = 0;
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = *(v5 + 64);
  v18 = v16 - 1;
  if (!v16)
  {
    v18 = 0;
  }

  if (v7 > v18)
  {
    v18 = v7;
  }

  v19 = *(v6 + 80);
  v20 = *(v6 + 64);
  v21 = *(v9 + 80);
  v22 = *(v14 + 80);
  v23 = *(v14 + 64);
  if (v18 <= 0xFC)
  {
    v24 = 252;
  }

  else
  {
    v24 = v18;
  }

  if (v10)
  {
    v25 = *(v9 + 64);
  }

  else
  {
    v25 = *(v9 + 64) + 1;
  }

  v26 = v17 + v19;
  v27 = v25 + v22;
  if (v16)
  {
    v28 = v23;
  }

  else
  {
    v28 = v23 + 1;
  }

  v29 = ((v27 + ((v21 + v20 + ((v17 + v19) & ~v19) + 1) & ~v21)) & ~v22) + v28;
  if (a3 > v24)
  {
    if (v29 <= 3)
    {
      v30 = ((a3 - v24 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      if (HIWORD(v30))
      {
        v13 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v13 = v31;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  if (v24 < a2)
  {
    v32 = ~v24 + a2;
    if (v29 < 4)
    {
      v33 = (v32 >> (8 * v29)) + 1;
      if (v29)
      {
        v35 = v32 & ~(-1 << (8 * v29));
        bzero(a1, v29);
        if (v29 != 3)
        {
          if (v29 == 2)
          {
            *a1 = v35;
            if (v13 > 1)
            {
LABEL_64:
              if (v13 == 2)
              {
                *&a1[v29] = v33;
              }

              else
              {
                *&a1[v29] = v33;
              }

              return;
            }
          }

          else
          {
            *a1 = v32;
            if (v13 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v35;
        a1[2] = BYTE2(v35);
      }

      if (v13 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v29);
      *a1 = v32;
      v33 = 1;
      if (v13 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v13)
    {
      a1[v29] = v33;
    }

    return;
  }

  v34 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v29] = 0;
  }

  else if (v13)
  {
    a1[v29] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v47 == v24)
  {
    v36 = *(v45 + 56);
LABEL_52:

    v36(v34);
    return;
  }

  v34 = (&a1[v26] & ~v19);
  if (v44 == v24)
  {
    v36 = *(v6 + 56);
    goto LABEL_52;
  }

  v37 = &v34[v20];
  if (v18 > 0xFC)
  {
    v38 = &v37[v21 + 1] & ~v21;
    if (v43 == v24)
    {
      if (v10 >= 2)
      {
        v39 = *(v9 + 56);

        v39(v38, a2 + 1, v10, AssociatedTypeWitness);
      }
    }

    else
    {
      v40 = *(v15 + 56);
      v41 = (v27 + v38) & ~v22;

      v40(v41, a2 + 1);
    }
  }

  else
  {
    *v37 = a2 + 3;
  }
}

uint64_t sub_25F226BB8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_25F226C48(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F226D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  if (!swift_getEnumCaseMultiPayload())
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
  }

  result = sub_25F30658C();
  __break(1u);
  return result;
}

uint64_t sub_25F226E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_25F30678C();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  sub_25F227FB8(a1, &v10 - v8);
  return sub_25F218B1C(v6, &v11, a2);
}

void PromiseProtocol.cancel<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  sub_25F30543C();
  sub_25F1B4F70();
  v6 = swift_allocError();
  sub_25F304A2C();
  v7 = v6;
  (*(a3 + 48))(v8, &v7, a2, a3);
}

uint64_t sub_25F226F8C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 16))(v7, sub_25F22864C, v6, nullsub_2, 0, a3, a4);
}

uint64_t sub_25F2270A0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a2;
  v7[5] = a3;
  return (*(a5 + 16))(v8, sub_25F228658, v7, sub_25F2281A0, 0, a4, a5) & 1;
}

uint64_t sub_25F227130(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F2271AC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25F2271AC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a2;
  v7[5] = a3;
  return (*(a5 + 16))(v8, sub_25F228678, v7, sub_25F22834C, 0, a4, a5) & 1;
}

uint64_t sub_25F227248(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F226F8C(a1, a2, a3, WitnessTable);
}

uint64_t PromiseProtocol.tryFulfill(callsite:makeResult:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return (*(a5 + 32))(v7) & 1;
}

uint64_t PromiseProtocol.fulfill(callsite:makeResult:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return (*(a5 + 40))(v7) & 1;
}

uint64_t sub_25F2273EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[4] = a2;
  return (*(a4 + 32))(v8, a5, v7, a3, a4) & 1;
}

uint64_t PromiseProtocol.tryFulfill<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v5[2] = a2;
  v5[3] = a3;
  return (*(a3 + 32))(v6, sub_25F227680, v5, a2, a3) & 1;
}

uint64_t PromiseProtocol.tryFulfill<>(callsite:throwing:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 32))(v7, sub_25F22769C, v6, a3) & 1;
}

uint64_t sub_25F227544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v4 = sub_25F30678C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25F227640@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_25F227544(v1[4], a1);
}

uint64_t sub_25F227660@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_25F227740(v1[4], a1);
}

uint64_t sub_25F227680()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_25F2278B8();
}

id sub_25F22769C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_25F2279C4(*(v1 + 32), a1);
}

uint64_t sub_25F2276D4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[4] = a2;
  return (*(a4 + 40))(v8, a5, v7, a3, a4) & 1;
}

uint64_t sub_25F227740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t PromiseProtocol.fulfill<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v5[2] = a2;
  v5[3] = a3;
  return (*(a3 + 40))(v6, sub_25F228688, v5, a2, a3) & 1;
}

uint64_t sub_25F2278B8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return static Result<>.success.getter();
}

uint64_t PromiseProtocol.fulfill<>(callsite:throwing:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 40))(v7, sub_25F228684, v6, a3) & 1;
}

id sub_25F2279C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_25F227AEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F227B68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_25F227C90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F227E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25F30678C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  (*(*(v13 - 8) + 32))(a4, v11);
  type metadata accessor for PromiseFulfillment();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F227FB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v7);
  if (swift_getEnumCaseMultiPayload())
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    v14(a2, v12, v8);
    v15 = *(a1 + 16);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v7, *(a1 + 16));
  }

  v16 = *(a1 + 32);
  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2281A0(uint64_t a1)
{
  v1 = *(a1 + 96);
  (*(a1 + 88))();
  return swift_willThrow();
}

uint64_t sub_25F2281D8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = sub_25F30678C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v15 - v12;
  a1(v11);
  sub_25F227E70(v13, AssociatedTypeWitness, v7, a3);
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_25F22834C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v1;
  v10[0] = *(a1 + 32);
  *(v10 + 9) = *(a1 + 41);
  v2 = *(a1 + 72);
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = *(a1 + 80);
  v11 = *(a1 + 64);
  v12 = v2;
  v13 = v5;
  v6 = sub_25F1D2054(v11, v2, v5);
  v7 = v4(v6);
  sub_25F1D07A0(v9, v7);

  return sub_25F1D2018(v11, v12, v13);
}

uint64_t sub_25F2283E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PromiseFulfillment();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F228564(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F2271AC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25F2285E0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F226F8C(a1, a2, a3, WitnessTable);
}

uint64_t sub_25F228658@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  return sub_25F2281D8(*(v1 + 32), *(v1 + 24), a1);
}

uint64_t sub_25F22868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource();
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  sub_25F1CCBBC(v9, a3, v8, a5);

  return a1;
}

uint64_t sub_25F228730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v57 = *(*(a2 + 24) - 8);
  v6 = *(v57 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v55 = v15;
  v16 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource();
  v17 = sub_25F305C1C();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v53 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(v16 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v21);
  v28 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v50 - v29;
  v31 = *(v4 + 16);
  v54 = v14;
  sub_25F304B8C();
  if ((*(v24 + 48))(v23, 1, v16) == 1)
  {
    (*(v50 + 8))(v23, v51);
    v32 = *(v4 + 8);
    v33 = v56;
    v34 = a1;
    (*v4)(a1);
    v35 = v57;
    v36 = v52;
    v37 = v33;
    v38 = v55;
    (*(v57 + 16))(v52, v37, v55);
    (*(v35 + 32))(v28, v36, v38);
    *&v28[*(type metadata accessor for CountedSharedResourceStore.Storage.CountedResource() + 44)] = 1;
    (*(v58 + 16))(v59, v34, v10);
    v39 = v53;
    (*(v24 + 16))(v53, v28, v16);
    (*(v24 + 56))(v39, 0, 1, v16);
    sub_25F304B4C();
    sub_25F304B9C();
    return (*(v24 + 8))(v28, v16);
  }

  else
  {
    v51 = a1;
    v52 = v28;
    v41 = v58;
    v42 = v59;
    v43 = *(v24 + 32);
    result = v43(v30, v23, v16);
    v44 = *(v16 + 44);
    v45 = *&v30[v44];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      __break(1u);
    }

    else
    {
      *&v30[v44] = v47;
      (*(v41 + 16))(v42, v51, v10);
      v48 = v53;
      (*(v24 + 16))(v53, v30, v16);
      (*(v24 + 56))(v48, 0, 1, v16);
      sub_25F304B4C();
      sub_25F304B9C();
      v49 = v52;
      v43(v52, v30, v16);
      return (*(v57 + 32))(v56, v49, v55);
    }
  }

  return result;
}

uint64_t sub_25F228C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](a1);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  v10 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource();
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v10 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  v22 = &v29 - v21;
  v23 = *(v2 + 16);
  v32 = v2 + 16;
  sub_25F304B8C();
  if ((*(v19 + 48))(v18, 1, v10) == 1)
  {
    (*(v12 + 8))(v18, v11);
    v33[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CountedSharedResourceStore.swift";
    v33[1] = 138;
    v34 = 2;
    *v35 = *v40;
    *&v35[3] = *&v40[3];
    v36 = xmmword_25F30E1A0;
    v37 = "release(key:)";
    v38 = 13;
    v39 = 2;
    return sub_25F213F98(v33);
  }

  else
  {
    (*(v19 + 32))(v22, v18, v10);
    v25 = *(v10 + 44);
    v26 = *&v22[v25];
    if (v26 < 2)
    {
      sub_25F304B4C();
      v28 = v31;
      sub_25F304A8C();
      (*(v12 + 8))(v28, v11);
    }

    else
    {
      *&v22[v25] = v26 - 1;
      (*(v29 + 16))(v30, a1, v4);
      v27 = v31;
      (*(v19 + 16))(v31, v22, v10);
      (*(v19 + 56))(v27, 0, 1, v10);
      sub_25F304B4C();
      sub_25F304B9C();
    }

    return (*(v19 + 8))(v22, v10);
  }
}

void *CountedSharedResourceStore.__allocating_init(resourceConstructor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = sub_25F22868C(a1, a2, *(*v4 + 80), *(*v4 + 88), *(*v4 + 96));
  v4[3] = v5;
  v4[4] = v6;
  return v4;
}

void *CountedSharedResourceStore.init(resourceConstructor:)(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_25F22868C(a1, a2, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  v2[3] = v3;
  v2[4] = v4;
  return v2;
}

uint64_t CountedSharedResourceStore.checkout(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  v9 = type metadata accessor for CountedSharedResourceStore.Storage();
  sub_25F228730(a1, v9, a2);
  return swift_endAccess();
}

uint64_t CountedSharedResourceStore.release(key:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[12];
  v7 = type metadata accessor for CountedSharedResourceStore.Storage();
  sub_25F228C48(a1, v7);
  return swift_endAccess();
}

uint64_t CountedSharedResourceStore.deinit()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  return v0;
}

uint64_t CountedSharedResourceStore.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F229378()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2293CC(uint64_t a1)
{
  v1 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F229444(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_25F229548(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t Future.unpleasantWait()@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = *(*v1 + 80);
  v2 = type metadata accessor for FutureTermination();
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(v2 - 8);
  (*(v11 + 56))(v9, 1, 1, v2);
  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  v13[2] = v18;
  v13[3] = v8;
  v13[4] = v12;
  v18 = v8;

  v14 = v12;
  Future.observeFinish(_:)(sub_25F229A90, v13);

  sub_25F305B1C();
  swift_beginAccess();
  (*(v4 + 16))(v7, v10, v3);
  result = (*(v11 + 48))(v7, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v11 + 32))(v17, v7, v2);
  }

  return result;
}

uint64_t sub_25F229918(uint64_t a1)
{
  v2 = type metadata accessor for FutureTermination();
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  v9 = *(v2 - 8);
  (*(v9 + 16))(v7, a1, v2);
  (*(v9 + 56))(v7, 0, 1, v2);
  swift_beginAccess();
  (*(v4 + 40))(v8, v7, v3);
  return sub_25F305B2C();
}

uint64_t sub_25F229A90(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  return sub_25F229918(a1);
}

uint64_t QueryManager.resolvers.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  return v2;
}

uint64_t sub_25F229B04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a2 = v4;
  return result;
}

uint64_t sub_25F229B64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 40);

  os_unfair_lock_lock((v4 + 32));
  sub_25F22C690((v4 + 16));
  os_unfair_lock_unlock((v4 + 32));
  v5 = *(v3 + 48);
  sub_25F30482C();
}

uint64_t QueryManager.resolvers.setter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  sub_25F229C64((v1 + 16));
  os_unfair_lock_unlock((v1 + 32));
  v2 = *(v0 + 48);
  sub_25F30482C();
}

uint64_t (*QueryManager.resolvers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a1 = v4;
  return sub_25F229CF8;
}

uint64_t sub_25F229CF8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    os_unfair_lock_lock((v5 + 32));
    sub_25F22C690((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
    v6 = *(v4 + 48);
    a1[1] = v3;
    sub_25F30482C();

    v7 = *a1;
  }

  else
  {
    os_unfair_lock_lock((v5 + 32));
    sub_25F22C690((v5 + 16));
    os_unfair_lock_unlock((v5 + 32));
    v8 = *(v4 + 48);
    a1[1] = v3;
    sub_25F30482C();
  }
}

uint64_t QueryManager.delegateQueryManager.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  return v3;
}

uint64_t sub_25F229E2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a2 = v5;
  return result;
}

uint64_t sub_25F229E8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a2 + 40);

  os_unfair_lock_lock(v4 + 8);
  sub_25F22C6A8(&v4[4]);
  os_unfair_lock_unlock(v4 + 8);
  v5 = *(v3 + 56);
  sub_25F30482C();
}

uint64_t QueryManager.delegateQueryManager.setter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock(v1 + 8);
  sub_25F229F8C(&v1[4]);
  os_unfair_lock_unlock(v1 + 8);
  v2 = *(v0 + 56);
  sub_25F30482C();
}

uint64_t (*QueryManager.delegateQueryManager.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a1 = v5;
  return sub_25F22A020;
}

uint64_t sub_25F22A020(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {

    os_unfair_lock_lock(v5 + 8);
    sub_25F22C6A8(&v5[4]);
    os_unfair_lock_unlock(v5 + 8);
    v6 = *(v4 + 56);
    a1[1] = v3;
    sub_25F30482C();

    v7 = *a1;
  }

  else
  {
    os_unfair_lock_lock(v5 + 8);
    sub_25F22C6A8(&v5[4]);
    os_unfair_lock_unlock(v5 + 8);
    v8 = *(v4 + 56);
    a1[1] = v3;
    sub_25F30482C();
  }
}

uint64_t QueryManager.__allocating_init(delegateManager:resolvers:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  QueryManager.init(delegateManager:resolvers:)(a1, a2);
  return v4;
}

uint64_t QueryManager.init(delegateManager:resolvers:)(uint64_t a1, uint64_t a2)
{
  v87 = a2;
  v106 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556B0, &qword_25F30E2B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v88 = &v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556B8, &qword_25F30E2B8);
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v89 = &v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556C0, &qword_25F30E2C0);
  v10 = *(v9 - 8);
  v97 = v9;
  v98 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v90 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556C8, &qword_25F30E2C8);
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v91 = &v81 - v16;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556D0, &qword_25F30E2D0);
  v103 = *(v101 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  v92 = &v81 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556D8, &qword_25F30E2D8);
  v20 = *(v19 - 8);
  v104 = v19;
  v105 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v96 = &v81 - v22;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556E0, &qword_25F30E2E0);
  v102 = *(v95 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x28223BE20](v95);
  v107 = &v81 - v24;
  v85 = sub_25F305A9C();
  v25 = *(v85 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v85);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25F30494C();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_25F305A4C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v84 = sub_25F1F54F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556E8, &qword_25F30E2E8);
  v34 = *(v32 + 72);
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_25F3077D0;
  sub_25F305A3C();
  v109 = v36;
  sub_25F22C350(&qword_27FD556F0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  sub_25F1F72CC(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0);
  sub_25F305E5C();
  sub_25F30492C();
  (*(v25 + 104))(v28, *MEMORY[0x277D85260], v85);
  v37 = sub_25F305ACC();
  v38 = v86;
  *(v86 + 16) = v37;
  *(v38 + 32) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55708, &qword_25F30E2F8);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v85 = v39;
  swift_allocObject();
  *(v38 + 64) = sub_25F30481C();
  *(v38 + 72) = 0u;
  *(v38 + 88) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55710, &qword_25F30E300);
  v42 = swift_allocObject();
  *(v42 + 32) = 0;
  v43 = v87;
  v44 = v106;
  *(v42 + 16) = v87;
  *(v42 + 24) = v44;
  *(v38 + 40) = v42;

  v45 = v43;

  v46 = sub_25F1B6130(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55718, &qword_25F30E308);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  *(v47 + 16) = v46;
  *(v38 + 24) = v47;
  v109 = v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55720, &qword_25F30E310);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  *(v38 + 48) = sub_25F30483C();
  v109 = v44;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55728, &qword_25F30E318);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();

  v54 = sub_25F30483C();
  *(v38 + 56) = v54;
  v109 = v54;

  sub_25F3047FC();
  sub_25F1F72CC(&qword_27FD55730, &qword_27FD55728, &qword_25F30E318);
  sub_25F1F72CC(&qword_27FD55738, &qword_27FD55708, &qword_25F30E2F8);
  sub_25F3048EC();

  v55 = *(v38 + 48);
  v108 = *(v38 + 16);
  v56 = v108;
  v109 = v55;
  v82 = sub_25F305A8C();
  v57 = *(v82 - 8);
  v83 = *(v57 + 56);
  v87 = v57 + 56;
  v58 = v88;
  v83(v88, 1, 1, v82);
  sub_25F1F72CC(&qword_27FD55740, &qword_27FD55720, &qword_25F30E310);
  sub_25F22C350(&qword_27FD55748, sub_25F1F54F4);

  v59 = v56;
  v60 = v89;
  sub_25F3048AC();
  v61 = v58;
  sub_25F1AF698(v58, &qword_27FD556B0, &qword_25F30E2B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55750, &qword_25F30E320);
  sub_25F1F72CC(&qword_27FD55758, &qword_27FD556B8, &qword_25F30E2B8);
  v62 = v90;
  v63 = v93;
  sub_25F30487C();

  (*(v94 + 8))(v60, v63);
  v64 = sub_25F1F72CC(&qword_27FD55760, &qword_27FD556C0, &qword_25F30E2C0);
  v65 = sub_25F1F72CC(&qword_27FD55768, &qword_27FD55750, &qword_25F30E320);
  v66 = v91;
  v67 = v97;
  MEMORY[0x25F8D6A80](v97, v64, v65);
  (*(v98 + 8))(v62, v67);
  v68 = sub_25F305AAC();
  v109 = v68;
  v83(v61, 1, 1, v82);
  sub_25F1F72CC(&qword_27FD55770, &qword_27FD556C8, &qword_25F30E2C8);
  v69 = v92;
  v70 = v61;
  v71 = v99;
  sub_25F30489C();
  sub_25F1AF698(v70, &qword_27FD556B0, &qword_25F30E2B0);

  (*(v100 + 8))(v66, v71);
  sub_25F1F72CC(&qword_27FD55778, &qword_27FD556D0, &qword_25F30E2D0);
  sub_25F1F72CC(&qword_27FD55780, &qword_27FD556E0, &qword_25F30E2E0);
  v73 = v95;
  v72 = v96;
  v74 = v107;
  v75 = v101;
  sub_25F30488C();
  (*(v103 + 8))(v69, v75);
  v76 = *(v38 + 64);
  sub_25F1F72CC(&qword_27FD55788, &qword_27FD556D8, &qword_25F30E2D8);
  sub_25F1F72CC(&qword_27FD55790, &qword_27FD55708, &qword_25F30E2F8);
  v77 = v104;
  v78 = sub_25F3048BC();

  (*(v105 + 8))(v72, v77);
  (*(v102 + 8))(v74, v73);
  v79 = *(v38 + 32);
  *(v38 + 32) = v78;

  return v38;
}

uint64_t sub_25F22AE90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    v3 = *(*a1 + 64);
  }

  else
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55708, &qword_25F30E2F8);
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_25F30481C();
  }

  *a2 = result;
  return result;
}

uint64_t sub_25F22AEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v27 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557D0, &qword_25F30E440);
  v26 = *(v28 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v6 = &v23 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557D8, &qword_25F30E448);
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v23 - v9;
  v11 = *a1;
  v12 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  v13 = *(v11 + 16);
  if (v13)
  {
    v14 = v11 + 32;
    do
    {
      sub_25F1BF03C(v14, v29);
      v15 = v30;
      v16 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v17 = (*(v16 + 16))(v15, v16);
      v18 = __swift_destroy_boxed_opaque_existential_1(v29);
      if (v17)
      {
        MEMORY[0x25F8D73F0](v18);
        if (*(v32 + 16) >= *(v32 + 24) >> 1)
        {
          v19 = *(v32 + 16);
          sub_25F3052AC();
        }

        sub_25F30530C();
        v12 = v32;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  v29[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557E0, &qword_25F30E450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557E8, qword_25F30E458);
  sub_25F1F72CC(&qword_27FD557F0, &qword_27FD557E0, &qword_25F30E450);
  sub_25F1F72CC(&qword_27FD557F8, &qword_27FD557E8, qword_25F30E458);
  sub_25F3047EC();
  v29[0] = *(v24 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55720, &qword_25F30E310);
  sub_25F1F72CC(&qword_27FD55740, &qword_27FD55720, &qword_25F30E310);
  sub_25F30487C();

  sub_25F1F72CC(&qword_27FD55800, &qword_27FD557D8, &qword_25F30E448);
  sub_25F1F72CC(&qword_27FD55808, &qword_27FD557D0, &qword_25F30E440);
  v20 = v28;
  v21 = v25;
  sub_25F30488C();
  (*(v26 + 8))(v6, v20);
  return (*(v7 + 8))(v10, v21);
}

uint64_t QueryManager.allValues<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  os_unfair_lock_unlock((v7 + 32));
  if (v9)
  {

    QueryManager.allValues<A>(for:)(a1, a2, a3);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v10 = sub_25F3052DC();
  }

  MEMORY[0x28223BE20](v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55798, &qword_25F30E328);
  swift_getAssociatedTypeWitness();
  sub_25F1F72CC(&qword_27FD557A0, &qword_27FD55798, &qword_25F30E328);
  sub_25F30511C();

  v11 = sub_25F3052BC();

  return v11;
}

uint64_t sub_25F22B504@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(&v12, v9, v10);
  QueryResolutions.value<A>(for:with:)(a2, a3, a4, a5);
}

uint64_t QueryManager.firstValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v28 = a1;
  v27 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = sub_25F305C1C();
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v26);
  v12 = &v23 - v11;
  *&v25 = v3;
  v13 = *(v3 + 40);
  os_unfair_lock_lock((v13 + 32));
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);

  os_unfair_lock_unlock((v13 + 32));
  if (v14)
  {

    QueryManager.firstValue<A>(for:)(v28, a2, v29);

    v16 = *(AssociatedTypeWitness - 8);
    if ((*(v16 + 48))(v12, 1, AssociatedTypeWitness) != 1)
    {

      v17 = v27;
      (*(v16 + 32))(v27, v12, AssociatedTypeWitness);
      return (*(v16 + 56))(v17, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  }

  (*(v9 + 8))(v12, v26);
  *&v33 = v15;
  v19 = v24;
  (*(v5 + 16))(v24, v28, a2);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  (*(v5 + 32))(v21 + v20, v19, a2);
  *(v21 + ((v6 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557A8, &qword_25F30E330);
  sub_25F1F72CC(&qword_27FD557B0, &qword_27FD557A8, &qword_25F30E330);
  sub_25F30637C();

  v29 = v37;
  v28 = v38;
  v33 = v37;
  v34 = v38;
  v25 = v39;
  v35 = v39;
  v36 = v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD55798, &qword_25F30E328);
  sub_25F1F72CC(&qword_27FD557A0, &qword_27FD55798, &qword_25F30E328);
  sub_25F30617C();
  swift_getWitnessTable();
  sub_25F3062FC();
  swift_getWitnessTable();
  sub_25F30617C();
  v32 = sub_25F1F72CC(&qword_27FD557B8, &qword_27FD55798, &qword_25F30E328);
  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30583C();
}

uint64_t sub_25F22BB84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 8))(&v12, v9, v10);
  QueryResolutions.value<A>(for:with:)(a2, a3, a4, a5);
}

uint64_t QueryManager.cachedValue<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v23[1] = v16;
  v15(v13);
  sub_25F305EBC();
  v32 = *(v6 + 24);
  *&v26 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/QueryManager.swift";
  *(&v26 + 1) = 124;
  v27 = 2;
  v28 = xmmword_25F30E2A0;
  v29 = "cachedValue(for:)";
  v30 = 17;
  v31 = 2;
  v25[2] = a2;
  v25[3] = a3;
  v25[4] = a4;
  v25[5] = a5;
  v25[6] = v34;
  v25[7] = v6;
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = a5;
  v24[6] = sub_25F22C428;
  v24[7] = v25;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557C0, &qword_25F30E338);
  type metadata accessor for Future();
  type metadata accessor for Promise();
  sub_25F305C1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_25F1F72CC(&qword_27FD557C8, &qword_27FD557C0, &qword_25F30E338);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v26, sub_25F22C438, v24, v17, TupleTypeMetadata2, v19);

  v20 = v33[0];
  if (v33[1])
  {
    v21 = *(a4 + 40);

    v21(v33, v6, a2, a4);
    v26 = 0uLL;
    Promise.track(future:on:)(v33[0], &v26);

    sub_25F2033DC(v26);
  }

  sub_25F1BF670(v34);
  return v20;
}

uint64_t sub_25F22BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = 0;
  sub_25F22C144(a2, sub_25F22C5B4, v20);
  type metadata accessor for Future();
  swift_dynamicCast();
  v13 = v22;
  if (v23)
  {
    v14 = *(a3 + 72);
    if (v14)
    {
      v15 = *(a3 + 80);

      v16 = sub_25F1D2078(v14);
      v14(v16);
      sub_25F1AC3AC(v14);
    }

    else
    {
    }

    sub_25F1BF614(a2, v20);
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;
    *(v17 + 32) = a6;
    *(v17 + 40) = a7;
    *(v17 + 48) = a3;
    v18 = v20[1];
    *(v17 + 56) = v20[0];
    *(v17 + 72) = v18;
    *(v17 + 88) = v21;

    Future.observeFinish(_:)(sub_25F22C5D8, v17);
  }

  return v13;
}

uint64_t sub_25F22C084@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Future();
  result = sub_25F1D8E58("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/QueryManager.swift", 124, 2, 126, 35, "cachedValue(for:)", 17, 2, sub_25F22C650);
  a1[3] = v2;
  *a1 = result;
  return result;
}

_OWORD *sub_25F22C144@<X0>(uint64_t a1@<X0>, void *(*a2)(_OWORD *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  v8 = *v3;
  if (*(v8 + 16) && (v9 = sub_25F21935C(a1), (v10 & 1) != 0))
  {
    sub_25F1B7118(*(v8 + 56) + 32 * v9, v13);
    return sub_25F1B707C(v13, a3);
  }

  else
  {
    result = a2(v14);
    if (!v4)
    {
      sub_25F1BF614(a1, v13);
      sub_25F1B7118(v14, v12);
      sub_25F24DD7C(v12, v13);
      return sub_25F1B707C(v14, a3);
    }
  }

  return result;
}

uint64_t sub_25F22C228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1E4A70(a2, v8);
  result = sub_25F1AF698(v8, &qword_27FD53DF8, &unk_25F30A470);
  v5 = *(a3 + 88);
  if (v5)
  {
    v6 = *(a3 + 96);

    v5(v7);
    return sub_25F1AC3AC(v5);
  }

  return result;
}

uint64_t QueryManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);
  sub_25F1AC3AC(*(v0 + 72));
  v8 = *(v0 + 96);
  sub_25F1AC3AC(*(v0 + 88));
  return v0;
}

uint64_t QueryManager.__deallocating_deinit()
{
  QueryManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F22C350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F22C3C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = (*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80);
  return sub_25F22BB84(a1, v2 + v4, *(v2 + ((*(*(*(v2 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + 16), a2);
}

uint64_t sub_25F22C438@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_25F22C51C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(a1 + 8);

  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25F22C568(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_25F22C5B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_25F22C084(a1);
}

void sub_25F22C5D8()
{
  v1 = *(*(v0 + 48) + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_25F22C634(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_25F22C650(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *v2;
  *v2 = a1;
}

void *TimePeriod.init(start:end:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

double TimePeriod.nanoseconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3;
}

double TimePeriod.milliseconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3 / 1000000.0;
}

double TimePeriod.seconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3 / 1000000000.0;
}

double sub_25F22C890()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  mach_timebase_info(v2);
  result = *v2;
  qword_27FD55810 = v2[0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25F22C948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**(*a2 + 16) + 88);

  return v6(sub_25F20EF34, v5);
}

uint64_t (*DelayedInvocation.callback.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(*v3 + 80))();
  a1[1] = v4;
  return sub_25F22CA94;
}

uint64_t sub_25F22CA94(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 88);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v5 = a1[1];

  v4(v3, v2);
}

uint64_t sub_25F22CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = a6();
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

Swift::Void __swiftcall DelayedInvocation.schedule(delay:)(PreviewsFoundationOS::SchedulerInterval delay)
{
  v3 = *(v2 + 16);
  v4 = *v1;
  (*(*v3 + 104))(&v4);
}

uint64_t DelayedInvocation.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DelayedInvocation.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F22CD50()
{
  v1 = *v0;
  v13 = *(v0 + *(*v0 + 160));
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v7 + 1) = 129;
  v8 = 2;
  v9 = xmmword_25F30E4E0;
  v10 = "callback";
  v11 = 8;
  v12 = 2;
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v7, v4, WitnessTable);
  return v14;
}

uint64_t sub_25F22CE44(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v13[2] = *(v2 + *(*v2 + 160));
  v11 = *(v5 + 136);
  v12 = *(v5 + 144);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13[0] = sub_25F22DFC8;
  v13[1] = v7;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v8 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v13, v8, WitnessTable);
}

uint64_t sub_25F22CFAC(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = sub_25F20DB20;
  a2[1] = v5;
  return result;
}

uint64_t sub_25F22D01C(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F30494C();
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v4[18];
  v9 = v4[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = *a1;
  v46 = *(v2 + v4[20]);
  *&v40 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v40 + 1) = 129;
  v41 = 2;
  v42 = xmmword_25F30E4F0;
  v43 = "schedule(delay:)";
  v44 = 16;
  v45 = 2;
  v38 = v9;
  v39 = v8;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v18 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v40, sub_25F22DEFC, v37, v18, &type metadata for Identifier, WitnessTable);

  v31 = v47;
  v32 = *(*v2 + 152);
  (*(v8 + 24))(v9, v8);
  *&v40 = v17;
  v29 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v16;
  (*(AssociatedConformanceWitness + 8))(&v40, AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = *(v36 + 8);
  v36 += 8;
  v30 = v22;
  v22(v14, AssociatedTypeWitness);
  v23 = v33;
  sub_25F30493C();
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = v9;
  v25[3] = v8;
  v26 = v31;
  v25[4] = v24;
  v25[5] = v26;
  v27 = *(v8 + 32);

  v27(v21, v23, sub_25F22DF18, v25, v9, v8);

  (*(v34 + 8))(v23, v35);
  v30(v21, v29);
}

void sub_25F22D468(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v4 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 + 1;
  os_unfair_lock_unlock(v4 + 6);
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *a2 = v5;
}

uint64_t sub_25F22D504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2;
    v5 = 0;
    sub_25F22D56C(&v4);
  }

  return result;
}

uint64_t sub_25F22D56C(uint64_t *a1)
{
  v2 = *v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v19 = *(v1 + *(*v1 + 160));
  *&v13 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v13 + 1) = 129;
  v14 = 2;
  v15 = xmmword_25F30E500;
  v16 = "invoke(expectedSeed:)";
  v17 = 21;
  v18 = 2;
  v11[2] = *(v2 + 136);
  v11[3] = *(v2 + 144);
  v11[4] = v3;
  v12 = v4;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v5 = sub_25F30476C();

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD55918, &qword_25F30E628);
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v13, sub_25F22DEC8, v11, v5, v6, WitnessTable);

  v9 = v20;
  if (v20)
  {

    v9(v10);
    sub_25F1AC3AC(v9);
    return sub_25F1AC3AC(v9);
  }

  return result;
}

uint64_t sub_25F22D6F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (**a4)()@<X8>)
{
  v5 = 0;
  if (*(result + 24))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (a3 & 1 | (*(result + 16) == a2))
    {
      v8 = *result;
      v7 = *(result + 8);
      *(result + 16) = 0;
      *(result + 24) = 1;
      v6 = swift_allocObject();
      *(v6 + 16) = v8;
      *(v6 + 24) = v7;

      v5 = sub_25F212298;
    }
  }

  *a4 = v5;
  a4[1] = v6;
  return result;
}

uint64_t sub_25F22D798()
{
  v1 = *v0;
  v12 = *(v0 + *(*v0 + 160));
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v6 + 1) = 129;
  v7 = 2;
  v8 = xmmword_25F30E510;
  v9 = "cancel()";
  v10 = 8;
  v11 = 2;
  v5[2] = *(v1 + 136);
  v5[3] = *(v1 + 144);
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v2 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v6, sub_25F22DEEC, v5, v2, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_25F22D8CC()
{
  v1 = 0;
  v2 = 1;
  return sub_25F22D56C(&v1);
}

uint64_t sub_25F22D8FC()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));
  v1 = *(v0 + *(*v0 + 160));
}

uint64_t sub_25F22D990()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));
  v1 = *(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_25F22DA1C()
{
  v0 = sub_25F22D990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_25F22DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  (*(*(*(*v3 + 136) - 8) + 16))(v3 + *(*v3 + 152), a1, *(*v3 + 136));
  v7 = *(v6 + 144);
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = 0;
  v12 = 1;
  v8 = type metadata accessor for DelayedInvocation.DelayedInvocationBox.State();
  v9 = sub_25F203E0C(v11, v8);

  *(v3 + *(*v3 + 160)) = v9;
  return v3;
}

uint64_t *sub_25F22DB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_25F22DA70(a1, a2, a3);
}

uint64_t sub_25F22DBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox();
  *(v4 + 16) = sub_25F22DB70(a1, a2, a3);
  return v4;
}

uint64_t sub_25F22DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = type metadata accessor for DelayedInvocation.DelayedInvocationBox();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v6 + 16) = sub_25F22DA70(a1, a2, a3);
  return v6;
}

uint64_t sub_25F22DD30(uint64_t a1)
{
  v1 = *(a1 + 136);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F22DDE8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F22DE24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F22DE6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25F22DEC8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F22D6F4(a1, *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_25F22DEEC(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

void sub_25F22DEFC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_25F22D468(a1, a2);
}

uint64_t sub_25F22DF18()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_25F22D504(v0[4], v0[5]);
}

uint64_t sub_25F22DF24(uint64_t a1, int a2)
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

uint64_t sub_25F22DF44(uint64_t result, int a2, int a3)
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

uint64_t sub_25F22DF74(uint64_t a1)
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

uint64_t sub_25F22DF90(uint64_t result, int a2)
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

uint64_t Optional<A>.resolutions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, a1);
  v11 = *(a1 + 16);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    (*(v6 + 8))(v9, a1);
    v13 = sub_25F1B5A0C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(a2 + 8))(&v17, v11, a2);
    v13 = v17;
    (*(v12 + 8))(v9, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v13;
  v15 = inited + 32;
  static QueryResolutionsBuilder.buildBlock(_:)(inited, a3);
  swift_setDeallocating();
  return sub_25F1B5B28(v15);
}

uint64_t Weak<>.resolutions.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  swift_beginAccess();
  v12[1] = swift_unknownObjectWeakLoadStrong();
  v6 = *(v5 + 80);
  v7 = sub_25F305C1C();
  Optional<A>.resolutions.getter(v7, a1, v12);
  swift_unknownObjectRelease();
  v8 = v12[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v8;
  v10 = inited + 32;
  static QueryResolutionsBuilder.buildBlock(_:)(inited, a2);
  swift_setDeallocating();
  return sub_25F1B5B28(v10);
}

void Identifier.init()(void *a1@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v2 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v3 = *(v2 + 2);
  *(v2 + 2) = v3 + 1;
  os_unfair_lock_unlock(v2 + 6);
  *a1 = v3;
}

uint64_t Identifier.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v30 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, a2);
  v18 = *(*(a3 + 8) + 8);
  if (sub_25F3057EC())
  {
    v29 = *(v14 + 8);
    v29(a1, a2);
    result = (v29)(v17, a2);
    v25 = 0;
    v24 = 1;
    goto LABEL_8;
  }

  v31 = a1;
  v32 = a4;
  v19 = sub_25F305D6C();
  v30 = &v30;
  MEMORY[0x28223BE20](v19);
  *(&v30 - 4) = a2;
  *(&v30 - 3) = a3;
  *(&v30 - 2) = 10;
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559A8, &qword_25F30E710);
  sub_25F3050FC();
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  if ((v35 & 1) == 0)
  {
    v26 = v34;
    v27 = v33;
    v28 = *(v14 + 8);
    v28(v31, a2);
    result = (v28)(v17, a2);
    v36 = v27;
    if ((v26 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v25 = 0;
    v24 = 1;
    goto LABEL_7;
  }

  v21 = sub_25F212A04();
  sub_25F22F41C(v17, 10, a2, MEMORY[0x277D84D38], a3, v21, &v36);
  v22 = *(v14 + 8);
  v22(v31, a2);
  result = (v22)(v17, a2);
  if (v37 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v24 = 0;
  v25 = v36;
LABEL_7:
  a4 = v32;
LABEL_8:
  *a4 = v25;
  *(a4 + 8) = v24;
  return result;
}

uint64_t sub_25F22E748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F30659C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F22E7D8(uint64_t a1)
{
  v2 = sub_25F22F628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F22E814(uint64_t a1)
{
  v2 = sub_25F22F628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Identifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559B0, &qword_25F30E718);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Identifier.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559C0, &qword_25F30E720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067AC();
  if (!v2)
  {
    v11 = sub_25F30644C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F22EBAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559B0, &qword_25F30E718);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_25F22ECE4()
{
  v0 = arc4random_uniform(0x2710u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F0, &qword_25F30E968);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_27FD559A0 = result;
  return result;
}

uint64_t sub_25F22ED3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62 = a4;
  v66 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v61 = v53 - v14;
  v15 = *(a6 + 8);
  v16 = *(*(v15 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = *(*(a5 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v60 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v64 = v53 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v53 - v26;
  MEMORY[0x28223BE20](v25);
  v30 = v53 - v29;
  if (!a2)
  {
    v52 = *(v28 + 56);

    return v52(a7, 1, 1, a5);
  }

  v67 = v28;
  v31 = a3 + 48;
  v32 = a3 + 55;
  v33 = a3 + 87;
  if (a3 <= 10)
  {
    v33 = 97;
  }

  v54 = v33;
  if (a3 <= 10)
  {
    v32 = 65;
  }

  v56 = v32;
  v71 = a3;
  if (a3 > 10)
  {
    v31 = 58;
  }

  v58 = v31;
  v34 = v30;
  sub_25F20FAB8();
  v65 = v34;
  v63 = v15;
  sub_25F305D7C();
  swift_getAssociatedConformanceWitness();
  sub_25F30661C();
  sub_25F30656C();
  v36 = v66;
  if (!v66)
  {
    v41 = *(v67 + 8);
    v49 = v65;
LABEL_27:
    (v41)(v49, a5, v35);
    (*(v67 + 32))(a7, v27, a5);
    return (*(v67 + 56))(a7, 0, 1, a5);
  }

  v55 = a7;
  v35 = v67;
  v37 = (v67 + 8);
  v38 = (v67 + 32);
  v53[1] = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53[2] = a6;
  while (1)
  {
    v39 = *v36;
    if (v39 >= 0x30 && v39 < v58)
    {
      v66 = v36;
      v57 = a2;
      v68 = v39 - 48;
      sub_25F22F7FC();
      goto LABEL_19;
    }

    if (v39 >= 0x41 && v39 < v56)
    {
      v66 = v36;
      v57 = a2;
      v69 = v39 - 55;
      sub_25F22F7FC();
      goto LABEL_19;
    }

    if (v39 < 0x61 || v39 >= v54)
    {
      break;
    }

    v66 = v36;
    v57 = a2;
    v70 = v39 - 87;
    sub_25F22F7FC();
LABEL_19:
    sub_25F305D7C();
    v40 = v60;
    v59 = sub_25F30620C();
    v41 = *v37;
    (*v37)(v27, a5);
    v42 = *v38;
    v43 = v38;
    (*v38)(v27, v40, a5);
    v44 = v61;
    v45 = v64;
    if (v62)
    {
      v46 = sub_25F30621C();
    }

    else
    {
      v46 = sub_25F3061FC();
    }

    v47 = v46;
    v41(v45, a5);
    v41(v27, a5);
    v48 = v44;
    v38 = v43;
    v42(v27, v48, a5);
    if ((v59 | v47))
    {
      v41(v27, a5);
      v41(v65, a5);
      return (*(v67 + 56))(v55, 1, 1, a5);
    }

    v35 = v67;
    v36 = v66 + 1;
    a2 = v57 - 1;
    if (v57 == 1)
    {
      a7 = v55;
      v49 = v65;
      goto LABEL_27;
    }
  }

  v51 = *(v35 + 8);
  v51(v27, a5);
  v51(v65, a5);
  return (*(v67 + 56))(v55, 1, 1, a5);
}