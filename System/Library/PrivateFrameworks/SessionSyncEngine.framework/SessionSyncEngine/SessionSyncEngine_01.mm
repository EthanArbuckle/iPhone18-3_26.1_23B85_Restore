uint64_t sub_2657C7B40(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecordMetadata(0);
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26D4();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v44 = *(v42 + 72);
      sub_2657B881C(v23 + v44 * (v20 | (v12 << 6)), v7);
      v24 = *(v11 + 40);
      sub_2657F28D4();
      v25 = *v7;
      v26 = v7[1];
      v27 = v7[2];
      v28 = v7[3];
      sub_2657F24C4();
      sub_2657F24C4();
      v29 = v43;
      v30 = *(v43 + 20);
      sub_2657F22A4();
      sub_2657B8264(&unk_280023C20);
      sub_2657F2464();
      v31 = *(v7 + *(v29 + 24));
      sub_2657F28F4();
      result = sub_2657F2904();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_2657B881C(v7, *(v11 + 48) + v19 * v44);
      ++*(v11 + 16);
      v8 = v41;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v39 = 1 << *(v8 + 32);
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    v2 = v40;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_2657C7E98(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2657F2684();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_2657F28D4();

        sub_2657F24C4();
        v15 = sub_2657F2904();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2657C805C(unint64_t a1)
{
  v40 = type metadata accessor for RecordMetadata(0);
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v40);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = a1;
    v15 = sub_2657F2684();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v16 = (v15 + 1) & v12;
      v17 = *(v3 + 72);
      v18 = v12;
      v38 = v17;
      v39 = v9;
      do
      {
        v19 = v17 * v11;
        sub_2657B82A8(*(v8 + 48) + v17 * v11, v7);
        v20 = v8;
        v21 = *(v8 + 40);
        sub_2657F28D4();
        v22 = *v7;
        v23 = v7[1];
        v24 = v18;
        v25 = v7[2];
        v26 = v7[3];
        sub_2657F24C4();
        sub_2657F24C4();
        v27 = v16;
        v28 = v40;
        v29 = *(v40 + 20);
        sub_2657F22A4();
        sub_2657B8264(&unk_280023C20);
        sub_2657F2464();
        v30 = *(v28 + 24);
        v16 = v27;
        v31 = *(v7 + v30);
        sub_2657F28F4();
        v32 = sub_2657F2904();
        sub_2657B8880(v7);
        v33 = v32 & v24;
        v18 = v24;
        if (v14 >= v27)
        {
          if (v33 < v27)
          {
            v8 = v20;
            v17 = v38;
            goto LABEL_5;
          }

          v8 = v20;
          v17 = v38;
          if (v14 < v33)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v8 = v20;
          v17 = v38;
          if (v33 < v16 && v14 < v33)
          {
            goto LABEL_5;
          }
        }

        v34 = v17 * v14;
        if (v17 * v14 < v19 || *(v8 + 48) + v17 * v14 >= (*(v8 + 48) + v19 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v14 = v11;
        if (v34 != v19)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v14 = v11;
        }

LABEL_5:
        v11 = (v11 + 1) & v18;
        v9 = v39;
      }

      while (((*(v39 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v14) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_2657C8374(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  v6 = sub_2657F2904();

  return sub_2657C9CC8(a1, a2, v6);
}

unint64_t sub_2657C83EC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2657F2694();

  return sub_2657C9D80(a1, v5);
}

uint64_t sub_2657C8430(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_2657F22A4();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
  v47 = a2;
  result = sub_2657F2794();
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
    v43 = v2;
    v44 = (v6 + 16);
    v48 = (v6 + 32);
    v19 = result + 64;
    v20 = v6;
    v45 = v6;
    v46 = v9;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v49 = (v17 - 1) & v17;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = (*(v9 + 48) + 32 * v26);
      v30 = *v28;
      v29 = v28[1];
      v31 = v28[2];
      v32 = v28[3];
      v50 = *(v20 + 72);
      v33 = v27 + v50 * v26;
      if (v47)
      {
        (*v48)(v51, v33, v52);
      }

      else
      {
        (*v44)(v51, v33, v52);
      }

      v34 = *(v12 + 40);
      sub_2657F28D4();
      sub_2657F24C4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
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

      v21 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v12 + 48) + 32 * v21);
      *v22 = v30;
      v22[1] = v29;
      v22[2] = v31;
      v22[3] = v32;
      result = (*v48)(*(v12 + 56) + v50 * v21, v51, v52);
      ++*(v12 + 16);
      v20 = v45;
      v9 = v46;
      v17 = v49;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v14, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_2657C87EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237E0, &qword_2657F4180);
  result = sub_2657F2794();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2657CC294((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2657CC1E4(v24, &v38);
        sub_2657B8174(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_2657F2694();
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
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2657CC294(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_2657C8AA4(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_2657F22A4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  v46 = a2;
  result = sub_2657F2794();
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
      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C8E24(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2657F2794();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2657C90C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023800, &qword_2657F41B0);
  v38 = a2;
  result = sub_2657F2794();
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
      sub_2657F28D4();
      sub_2657F24C4();
      result = sub_2657F2904();
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

uint64_t sub_2657C936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_2657B830C(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_2657CA0DC();
      goto LABEL_7;
    }

    sub_2657B83AC(v19, a6 & 1);
    v26 = *v7;
    v27 = sub_2657B830C(a2, a3, a4, a5);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if (v20)
  {
LABEL_8:
    v23 = v22[7];
    v24 = v23 + *(*(type metadata accessor for RecordMetadata(0) - 8) + 72) * v16;

    return sub_2657B9770(a1, v24);
  }

LABEL_13:
  sub_2657C9B00(v16, a2, a3, a4, a5, a1, v22);
}

_OWORD *sub_2657C9504(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2657C83EC(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2657CA328();
      goto LABEL_7;
    }

    sub_2657C87EC(v13, a3 & 1);
    v19 = *v4;
    v20 = sub_2657C83EC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2657CC1E4(a2, v22);
      return sub_2657C9B9C(v10, v22, a1, v16);
    }

LABEL_15:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_2657CC294(a1, v17);
}

uint64_t sub_2657C9650(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2657C8374(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2657CA4CC();
      goto LABEL_7;
    }

    sub_2657C8AA4(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2657C8374(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2657F2884();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2657F22A4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_2657C9C18(v12, a2, a3, a1, v18);
}

uint64_t sub_2657C97E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_2657C8374(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_2657C8E24(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_2657C8374(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_2657F2884();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_2657CA760(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_2657C9984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2657C8374(a2, a3);
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
      sub_2657C90C4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2657C8374(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2657F2884();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2657CA8C0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_2657C9B00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a7[6] + 32 * a1);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = a7[7];
  v12 = type metadata accessor for RecordMetadata(0);
  result = sub_2657B881C(a6, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

_OWORD *sub_2657C9B9C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2657CC294(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2657C9C18(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2657F22A4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_2657C9CC8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2657F2864())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2657C9D80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2657CC1E4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667601C0](v9, a1);
      sub_2657CC240(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_2657C9E48()
{
  v1 = v0;
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
  v6 = *v0;
  v7 = sub_2657F2784();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v41 + 32;
    v38 = v41 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v45 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 32 * v21;
        v23 = *(v6 + 56);
        v24 = (*(v6 + 48) + 32 * v21);
        v25 = v24[1];
        v44 = *v24;
        v26 = v24[3];
        v43 = v24[2];
        v27 = v40;
        v28 = v41;
        v29 = *(v41 + 72) * v21;
        v30 = v39;
        (*(v41 + 16))(v39, v23 + v29, v40);
        v31 = v42;
        v32 = (*(v42 + 48) + v22);
        v33 = v43;
        *v32 = v44;
        v32[1] = v25;
        v32[2] = v33;
        v32[3] = v26;
        (*(v28 + 32))(*(v31 + 56) + v29, v30, v27);

        v16 = v45;
      }

      while (v45);
    }

    v19 = v12;
    v8 = v42;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v20 = *(v36 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

char *sub_2657CA0DC()
{
  v1 = v0;
  v33 = *(type metadata accessor for RecordMetadata(0) - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20]();
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  v4 = *v0;
  v5 = sub_2657F2784();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = (*(v4 + 48) + 32 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_2657B82A8(*(v4 + 56) + v27, v32);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        v29[2] = v24;
        v29[3] = v25;
        sub_2657B881C(v26, *(v28 + 56) + v27);

        v14 = v35;
      }

      while (v35);
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

        v1 = v30;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *sub_2657CA328()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237E0, &qword_2657F4180);
  v2 = *v0;
  v3 = sub_2657F2784();
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
        sub_2657CC1E4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2657B8174(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2657CC294(v22, (*(v4 + 56) + v17));
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

char *sub_2657CA4CC()
{
  v1 = v0;
  v36 = sub_2657F22A4();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  v4 = *v0;
  v5 = sub_2657F2784();
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

void *sub_2657CA760(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2657F2784();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2657CA8C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023800, &qword_2657F41B0);
  v2 = *v0;
  v3 = sub_2657F2784();
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

uint64_t sub_2657CAA30(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2657C765C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2657C69E8();
      goto LABEL_16;
    }

    sub_2657C6E94(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  result = sub_2657F2904();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2657F2864();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2657F2874();
  __break(1u);
  return result;
}

uint64_t sub_2657CABB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_2657C78BC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_2657C6B44();
      goto LABEL_22;
    }

    sub_2657C70CC(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_2657F28D4();
  sub_2657F24C4();
  sub_2657F24C4();
  result = sub_2657F2904();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_2657F2864(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_2657F2864();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_2657F2874();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_2657CAD7C(void *a1, unint64_t a2, char a3)
{
  v43 = a1;
  v44 = type metadata accessor for RecordMetadata(0);
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v39 = v6;
  v40 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_2657C7B40(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2657C6CB0();
      goto LABEL_25;
    }

    sub_2657C7330(v10 + 1);
  }

  v12 = *v3;
  v13 = *(*v3 + 40);
  sub_2657F28D4();
  v14 = v43;
  v15 = *v43;
  v16 = v43[1];
  v17 = v43[2];
  v18 = v43[3];
  sub_2657F24C4();
  v45 = v18;
  v46 = v17;
  sub_2657F24C4();
  v19 = v44;
  v20 = *(v44 + 20);
  sub_2657F22A4();
  sub_2657B8264(&unk_280023C20);
  v42 = v20;
  sub_2657F2464();
  v41 = *(v14 + *(v19 + 24));
  sub_2657F28F4();
  v21 = sub_2657F2904();
  v22 = v12 + 56;
  v23 = v12;
  v24 = -1 << *(v12 + 32);
  a2 = v21 & ~v24;
  if ((*(v22 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v25 = ~v24;
    v26 = *(v6 + 72);
    do
    {
      sub_2657B82A8(*(v23 + 48) + v26 * a2, v9);
      v27 = v9[2];
      v28 = v9[3];
      v29 = *v9 == v15 && v9[1] == v16;
      if (v29 || (sub_2657F2864()) && (v27 == v46 ? (v30 = v28 == v45) : (v30 = 0), (v30 || (sub_2657F2864()) && (v31 = v9 + *(v44 + 20), (sub_2657F2274())))
      {
        v32 = *(v9 + *(v44 + 24));
        sub_2657B8880(v9);
        if (v41 == v32)
        {
          sub_2657F2874();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_2657B8880(v9);
      }

      a2 = (a2 + 1) & v25;
    }

    while (((*(v22 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v33 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_2657B881C(v43, *(v33 + 48) + *(v39 + 72) * a2);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

char *sub_2657CB07C(char *a1, int64_t a2, char a3)
{
  result = sub_2657CB0BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2657CB09C(char *a1, int64_t a2, char a3)
{
  result = sub_2657CB1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2657CB0BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
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

char *sub_2657CB1C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
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

unint64_t *sub_2657CB2D4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2657CB440(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_2657CB370(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v14 = a7(v13, a2, a3, a4, a5, a6);
    swift_bridgeObjectRelease_n();

    return v14;
  }

  return result;
}

uint64_t sub_2657CB440(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v6 = type metadata accessor for RecordMetadata(0);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a4;
  v43 = 0;
  v11 = 0;
  v49 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v40 = v13;
  v41 = (a4 + 56);
  v45 = v18;
  v46 = v10;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v50 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v11 << 6);
    v23 = v49[7];
    v24 = (v49[6] + 32 * v22);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v29 = *(v47 + 72);
    v44 = v22;
    sub_2657B82A8(v23 + v29 * v22, v10);
    if (v10[*(v48 + 24)])
    {
LABEL_4:
      v10 = v46;
      result = sub_2657B8880(v46);
      v18 = v45;
      v17 = v50;
    }

    else
    {
      v30 = *(v42 + 16);
      if (v30)
      {
        v31 = v41;
        do
        {
          v33 = *(v31 - 1);
          v32 = *v31;
          v34 = *(v31 - 3) == v25 && *(v31 - 2) == v26;
          if (v34 || (sub_2657F2864() & 1) != 0)
          {
            v35 = v33 == v27 && v32 == v28;
            if (v35 || (sub_2657F2864() & 1) != 0)
            {
              goto LABEL_4;
            }
          }

          v31 += 4;
        }

        while (--v30);
      }

      v10 = v46;
      result = sub_2657B8880(v46);
      *(v39 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v36 = __OFADD__(v43++, 1);
      v18 = v45;
      v17 = v50;
      if (v36)
      {
        __break(1u);
        return sub_2657EC868(v39, v38, v43, v49);
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      return sub_2657EC868(v39, v38, v43, v49);
    }

    v21 = v40[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v50 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657CB6D4(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_2657CB2D4(v13, v7, a1, a2);
      MEMORY[0x266760A30](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_2657CB440((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2657CB894(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v36 = a5;
  v37 = a6;
  v34 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v12 = 0;
  v41 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v43 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = v41[7];
    v25 = (v41[6] + 32 * v23);
    v26 = *v25;
    v27 = v25[1];
    v29 = v25[2];
    v28 = v25[3];
    v30 = *(v39 + 72);
    v38 = v23;
    sub_2657B82A8(v24 + v30 * v23, v11);
    if (v11[*(v40 + 24)] == 1)
    {

      sub_2657B8880(v11);

      v18 = v43;
    }

    else
    {
      v42[0] = v26;
      v42[1] = v27;
      v42[2] = v29;
      v42[3] = v28;

      v31 = sub_2657C0EE0(v42, v36, v37);
      sub_2657B8880(v11);

      v18 = v43;
      if ((v31 & 1) == 0)
      {
        *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
          return sub_2657EC868(v34, v33, v35, v41);
        }
      }
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_2657EC868(v34, v33, v35, v41);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657CBAF4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a2;
  v36 = a5;
  v37 = a6;
  v34 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  v12 = 0;
  v41 = a3;
  v15 = a3[8];
  v14 = a3 + 8;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v43 = (v18 - 1) & v18;
LABEL_12:
    v23 = v20 | (v12 << 6);
    v24 = v41[7];
    v25 = (v41[6] + 32 * v23);
    v26 = *v25;
    v27 = v25[1];
    v29 = v25[2];
    v28 = v25[3];
    v30 = *(v39 + 72);
    v38 = v23;
    sub_2657B82A8(v24 + v30 * v23, v11);
    if (v11[*(v40 + 24)] == 1)
    {
      v42[0] = v26;
      v42[1] = v27;
      v42[2] = v29;
      v42[3] = v28;

      v31 = sub_2657C0EE0(v42, v36, v37);
      sub_2657B8880(v11);

      v18 = v43;
      if ((v31 & 1) == 0)
      {
        *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
          return sub_2657EC868(v34, v33, v35, v41);
        }
      }
    }

    else
    {

      sub_2657B8880(v11);

      v18 = v43;
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      return sub_2657EC868(v34, v33, v35, v41);
    }

    v22 = v14[v12];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_2657CBD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v21[0] = a6;
  v21[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;
  swift_retain_n();
  v16 = swift_bridgeObjectRetain_n();
  if (v13 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v20 = swift_slowAlloc();

      v17 = sub_2657CB370(v20, v14, a1, a2, a3, a4, v21[0]);
      MEMORY[0x266760A30](v20, -1, -1);

      goto LABEL_6;
    }
  }

  v21[0] = v21;
  MEMORY[0x28223BE20](v16);
  bzero(v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v15);

  v17 = a5(v21 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0), v14, a1, a2, a3, a4);

  if (v6)
  {
    swift_willThrow();
  }

LABEL_6:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

unint64_t sub_2657CBFA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023830, &qword_2657F41E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023828, &qword_2657F41D8);
    v8 = sub_2657F27A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2657CC364(v10, v6, &qword_280023830, &qword_2657F41E0);
      result = sub_2657B830C(*v6, v6[1], v6[2], v6[3]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] + 32 * result;
      v16 = v6[2];
      v17 = v6[3];
      *v15 = *v6;
      *(v15 + 16) = v16;
      *(v15 + 24) = v17;
      v18 = v8[7];
      v19 = sub_2657F22A4();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v14, v6 + v9, v19);
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

_OWORD *sub_2657CC294(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2657CC2A8()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023810, &qword_2657F41C0) + 48);
  return sub_2657F2234() & 1;
}

uint64_t sub_2657CC304(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2657CC364(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2657CC3CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2657CC3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023848, &qword_2657F4200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657CC46C()
{
  sub_2657F28D4();
  MEMORY[0x266760400](0);
  return sub_2657F2904();
}

uint64_t sub_2657CC4D8()
{
  sub_2657F28D4();
  MEMORY[0x266760400](0);
  return sub_2657F2904();
}

char *sub_2657CC528(void *a1, uint64_t a2)
{
  v3 = v2;
  v130 = *MEMORY[0x277D85DE8];
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v124) = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v123 = v3;
  v15 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue);
  *v10 = v15;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  (*(v7 + 8))(v10, v6);
  if ((v15 & 1) == 0)
  {
    goto LABEL_65;
  }

  v17 = sub_2657F21E4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_2657F21D4();
  LOBYTE(v126[0]) = v124;
  v126[1] = v11;
  v126[2] = v12;
  v126[3] = v13;
  v126[4] = v14;
  sub_2657D0F8C();
  v31 = sub_2657F21C4();
  v33 = v32;
  *&v128 = 0x6567617373656DLL;
  *(&v128 + 1) = 0xE700000000000000;
  sub_2657F26B4();
  v129 = MEMORY[0x277CC9318];
  *&v128 = v31;
  *(&v128 + 1) = v33;
  sub_2657CC294(&v128, v127);
  sub_2657BB26C(v31, v33);
  v34 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v125 = v34;
  sub_2657C9504(v127, v126, isUniquelyReferenced_nonNull_native);
  sub_2657CC240(v126);
  v36 = v125;
  v117[0] = *(v123 + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService);
  result = [v117[0] devices];
  if (result)
  {
    v38 = result;
    sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
    v39 = sub_2657F2514();

    v124 = v39 & 0xFFFFFFFFFFFFFF8;
    if (v39 >> 62)
    {
      v40 = sub_2657F2774();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v117[1] = v36;
    v118 = v31;
    v119 = v33;
    v121 = v20;
    v120 = v39;
    if (v40)
    {
      v41 = 0;
      v123 = v39 & 0xC000000000000001;
      v42 = v39 + 32;
      v11 = (a2 + 56);
      v122 = MEMORY[0x277D84F90];
      while (1)
      {
        while (1)
        {
          if (v123)
          {
            v43 = MEMORY[0x266760230](v41, v120);
          }

          else
          {
            if (v41 >= *(v124 + 16))
            {
              goto LABEL_64;
            }

            v43 = *(v42 + 8 * v41);
          }

          v44 = v43;
          if (__OFADD__(v41++, 1))
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            swift_once();
            v21 = sub_2657F2344();
            __swift_project_value_buffer(v21, qword_281446410);
            v22 = v11;
            v23 = sub_2657F2334();
            v24 = sub_2657F2574();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v26 = swift_slowAlloc();
              v126[0] = v26;
              *v25 = 136446210;
              *&v128 = v11;
              v27 = v11;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
              v28 = sub_2657F24A4();
              v30 = sub_2657B7F9C(v28, v29, v126);

              *(v25 + 4) = v30;
              _os_log_impl(&dword_2657B5000, v23, v24, "Failed to encode message: %{public}s", v25, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v26);
              MEMORY[0x266760A30](v26, -1, -1);
              MEMORY[0x266760A30](v25, -1, -1);
            }

LABEL_56:

            goto LABEL_57;
          }

          v46 = [v43 uniqueIDOverride];
          if (!v46)
          {
            __break(1u);
          }

          v47 = v46;
          v48 = sub_2657F2484();
          v50 = v49;

          if (*(a2 + 16))
          {
            v51 = *(a2 + 40);
            sub_2657F28D4();
            sub_2657F24C4();
            v52 = sub_2657F2904();
            v53 = -1 << *(a2 + 32);
            v54 = v52 & ~v53;
            if ((*&v11[(v54 >> 3) & 0xFFFFFFFFFFFFFF8] >> v54))
            {
              break;
            }
          }

LABEL_11:

LABEL_12:

          if (v41 == v40)
          {
            goto LABEL_38;
          }
        }

        v55 = ~v53;
        while (1)
        {
          v56 = (*(a2 + 48) + 16 * v54);
          v57 = *v56 == v48 && v56[1] == v50;
          if (v57 || (sub_2657F2864() & 1) != 0)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          if (((*&v11[(v54 >> 3) & 0xFFFFFFFFFFFFFF8] >> v54) & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v58 = IDSCopyIDForDevice();
        if (!v58)
        {
          goto LABEL_12;
        }

        v59 = v58;
        v60 = sub_2657F2484();
        v62 = v61;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_2657CFB70(0, *(v122 + 2) + 1, 1, v122);
        }

        v64 = *(v122 + 2);
        v63 = *(v122 + 3);
        if (v64 >= v63 >> 1)
        {
          v122 = sub_2657CFB70((v63 > 1), v64 + 1, 1, v122);
        }

        v65 = v122;
        *(v122 + 2) = v64 + 1;
        v66 = &v65[16 * v64];
        *(v66 + 4) = v60;
        *(v66 + 5) = v62;
        if (v41 == v40)
        {
          goto LABEL_38;
        }
      }
    }

    v122 = MEMORY[0x277D84F90];
LABEL_38:

    v67 = sub_2657D00E8(v122);

    if (!*(v67 + 16))
    {

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v87 = sub_2657F2344();
      __swift_project_value_buffer(v87, qword_281446410);

      v88 = sub_2657F2334();
      v89 = sub_2657F2574();

      v90 = os_log_type_enabled(v88, v89);
      v91 = v119;
      if (v90)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v126[0] = v93;
        *v92 = 136446210;
        v94 = sub_2657F2554();
        v96 = sub_2657B7F9C(v94, v95, v126);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_2657B5000, v88, v89, "Unable to find matching IDS identifier for destinations: %{public}s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v93);
        MEMORY[0x266760A30](v93, -1, -1);
        MEMORY[0x266760A30](v92, -1, -1);
      }

      sub_2657D0FE0();
      v11 = swift_allocError();
      sub_2657BB314(v118, v91);
      goto LABEL_56;
    }

    v68 = sub_2657F2444();

    sub_2657CD2D0(v67);

    v69 = sub_2657F2544();

    v70 = sub_2657F2444();
    v126[0] = 0;
    *&v128 = 0;
    v71 = [v117[0] sendMessage:v68 toDestinations:v69 priority:300 options:v70 identifier:v126 error:&v128];

    v72 = v126[0];
    if (!v71)
    {
      v97 = v128;
      v98 = v72;
      v11 = sub_2657F21F4();

      swift_willThrow();
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v99 = sub_2657F2344();
      __swift_project_value_buffer(v99, qword_281446410);
      v100 = v11;
      v101 = sub_2657F2334();
      v102 = sub_2657F2574();

      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v126[0] = v104;
        *v103 = 136446210;
        *&v128 = v11;
        v105 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
        v106 = sub_2657F24A4();
        v108 = sub_2657B7F9C(v106, v107, v126);

        *(v103 + 4) = v108;
        _os_log_impl(&dword_2657B5000, v101, v102, "Failed to send message: %{public}s", v103, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v104);
        MEMORY[0x266760A30](v104, -1, -1);
        MEMORY[0x266760A30](v103, -1, -1);
      }

      sub_2657BB314(v118, v119);

      goto LABEL_56;
    }

    v73 = qword_281446408;
    v74 = v128;
    if (!v72)
    {
      if (v73 != -1)
      {
        swift_once();
      }

      v110 = sub_2657F2344();
      __swift_project_value_buffer(v110, qword_281446410);
      v111 = sub_2657F2334();
      v112 = sub_2657F2574();
      v113 = os_log_type_enabled(v111, v112);
      v114 = v119;
      v115 = v118;
      if (v113)
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&dword_2657B5000, v111, v112, "Failed to retrieve identifier for message", v116, 2u);
        MEMORY[0x266760A30](v116, -1, -1);
      }

      sub_2657D0FE0();
      v11 = swift_allocError();
      sub_2657BB314(v115, v114);
      goto LABEL_56;
    }

    v75 = v72;
    if (v73 != -1)
    {
      swift_once();
    }

    v76 = sub_2657F2344();
    __swift_project_value_buffer(v76, qword_281446410);
    v77 = v75;

    v78 = sub_2657F2334();
    v79 = sub_2657F2584();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v126[0] = v82;
      *v80 = 138543618;
      *(v80 + 4) = v77;
      *v81 = v72;
      *(v80 + 12) = 2082;
      v83 = v77;
      v84 = sub_2657F2554();
      v86 = sub_2657B7F9C(v84, v85, v126);

      *(v80 + 14) = v86;
      _os_log_impl(&dword_2657B5000, v78, v79, "Sent message %{public}@ to %{public}s", v80, 0x16u);
      sub_2657D1034(v81);
      MEMORY[0x266760A30](v81, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x266760A30](v82, -1, -1);
      MEMORY[0x266760A30](v80, -1, -1);
    }

    v11 = sub_2657F2494();
    sub_2657BB314(v118, v119);

LABEL_57:
    v109 = *MEMORY[0x277D85DE8];
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657CD2D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023940, &unk_2657F4310);
    v2 = sub_2657F26E4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v22 = *v13;
    v23 = v13[1];

    swift_dynamicCast();
    v14 = *(v2 + 40);
    result = sub_2657F2694();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v26;
    *v11 = v24;
    *(v11 + 16) = v25;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2657CD504(unint64_t a1@<X8>)
{
  if (qword_281446408 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v3 = sub_2657F2344();
    __swift_project_value_buffer(v3, qword_281446410);
    v4 = v1;
    v5 = sub_2657F2334();
    v6 = sub_2657F2584();
    v7 = 0x279B9F000uLL;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39[0] = v9;
      *v8 = 136446210;
      v10 = [*&v4[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] devices];

      if (!v10)
      {
        goto LABEL_42;
      }

      v11 = sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
      v12 = sub_2657F2514();

      v13 = MEMORY[0x266760040](v12, v11);
      v15 = v14;

      v16 = sub_2657B7F9C(v13, v15, v39);

      *(v8 + 4) = v16;
      _os_log_impl(&dword_2657B5000, v5, v6, "Finding active paired device in devices: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x266760A30](v9, -1, -1);
      MEMORY[0x266760A30](v8, -1, -1);

      v7 = 0x279B9F000;
    }

    else
    {
    }

    v17 = [*&v4[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] *(v7 + 3984)];
    if (!v17)
    {
      break;
    }

    v1 = v17;
    v37 = a1;
    sub_2657D0F44(0, &qword_281446368, 0x277D186E0);
    v18 = sub_2657F2514();

    if (v18 >> 62)
    {
      v19 = sub_2657F2774();
      if (!v19)
      {
LABEL_40:

        *v37 = 0;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        return;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    v20 = 0;
    a1 = 0x279B9F000uLL;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x266760230](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v1 = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if ([v21 isLocallyPaired] && (objc_msgSend(v1, sel_isActive) & 1) != 0)
      {
        v23 = [v1 deviceType];
        if ((v23 - 2) < 3)
        {
          [v1 operatingSystemVersion];
          if (v39[0] >= 16)
          {
            goto LABEL_23;
          }
        }

        else if (v23 == 6)
        {
          [v1 operatingSystemVersion];
          if (v39[0] >= 8)
          {
LABEL_23:

            v24 = [v1 uniqueIDOverride];
            if (!v24)
            {
              goto LABEL_43;
            }

            v25 = v24;
            v26 = sub_2657F2484();
            v28 = v27;

            v29 = [v1 deviceType];
            if (v29 >= 7)
            {
              v30 = 0;
            }

            else
            {
              v30 = 0x3000101010200uLL >> (8 * v29);
            }

            v31 = [v1 deviceType];
            if ((v31 - 2) >= 3)
            {
              if (v31 != 6)
              {

                v35 = 0;
                v33 = v30;
                goto LABEL_34;
              }

              [v1 operatingSystemVersion];
              v36 = v39[0];

              v33 = v30;
              if (v36 <= 7)
              {
                goto LABEL_32;
              }

LABEL_29:
              v34 = v38;
              v35 = 256;
            }

            else
            {
              [v1 operatingSystemVersion];
              v32 = v39[0];

              v33 = v30;
              if (v32 >= 16)
              {
                goto LABEL_29;
              }

LABEL_32:
              v35 = 0;
LABEL_34:
              v34 = v38;
            }

            *v34 = v26;
            *(v34 + 8) = v28;
            *(v34 + 16) = v35 | v33;
            return;
          }
        }
      }

      ++v20;
      if (v22 == v19)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

id sub_2657CD9D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSServiceWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2657CDC18()
{
  sub_2657B9700(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2657CDC50(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v14 = *(a3 + 3);
  v13 = *(a3 + 4);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = a5;
    v16 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v19[0] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v14;
    v23 = v13;
    (*(v16 + 8))(a1, a2, v19, a4, v18, ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657CDD10(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = *a3;
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v14 = *(a3 + 3);
  v13 = *(a3 + 4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = a5;
    v15 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v20[0] = v10;
    v21 = v11;
    v22 = v12;
    v23 = v14;
    v24 = v13;
    v17 = (*(v15 + 16))(a1, a2, v20, a4, v19, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2657CDDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a1, a2, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657CDE9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    (*(v10 + 32))(a1, a2, v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

void IDSSyncService.init(service:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v26 = a1;
  v24 = sub_2657F25B4();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v24);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2657F2594();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2657F23E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v23 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue;
  v12 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v22[1] = "dDeviceIdentifiers";
  v22[2] = v12;
  sub_2657F23D4();
  v29 = MEMORY[0x277D84F90];
  sub_2657CEEC0(&qword_281446390, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657CEF08(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v4 + 104))(v7, *MEMORY[0x277D85268], v24);
  v13 = sub_2657F25E4();
  *&v2[v23] = v13;
  *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates] = MEMORY[0x277D84F90];
  v14 = &v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice];
  *(v14 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken] = -1;
  v15 = type metadata accessor for IDSServiceWrapper();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v17 = objc_allocWithZone(MEMORY[0x277D18778]);
  v18 = v13;
  v19 = sub_2657F2474();
  v20 = [v17 initWithService_];

  if (v20)
  {

    *&v16[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService] = v20;
    *&v16[OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue] = v18;
    v28.receiver = v16;
    v28.super_class = v15;
    *&v3[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper] = objc_msgSendSuper2(&v28, sel_init);
    v21 = type metadata accessor for IDSSyncService();
    v27.receiver = v3;
    v27.super_class = v21;
    *(*(objc_msgSendSuper2(&v27, sel_init) + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_delegate + 8) = &off_287719DF8;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
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

id IDSSyncService.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for IDSSyncService();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id IDSSyncService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2657CE5FC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice;
  v4 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice);
  v3 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice + 8);
  v5 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_pairedDevice + 16);
  v6 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper);

  sub_2657CD504(&v38);
  v8 = v38;
  v7 = v39;
  v34 = v40;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v9 = sub_2657F2344();
  __swift_project_value_buffer(v9, qword_281446410);

  v10 = sub_2657F2334();
  v11 = sub_2657F2584();

  if (os_log_type_enabled(v10, v11))
  {
    v31 = v11;
    v12 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v12 = 136446466;
    v38 = v4;
    v39 = v3;
    v40 = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023900, &qword_2657F42F0);
    v13 = sub_2657F24A4();
    v33 = v4;
    v15 = v5;
    v16 = sub_2657B7F9C(v13, v14, v36);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v38 = v8;
    v39 = v7;
    v40 = v34;

    v17 = sub_2657F24A4();
    v19 = sub_2657B7F9C(v17, v18, v36);

    *(v12 + 14) = v19;
    v5 = v15;
    v4 = v33;
    _os_log_impl(&dword_2657B5000, v10, v31, "Updating paired device from %{public}s to %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v32, -1, -1);
    MEMORY[0x266760A30](v12, -1, -1);
  }

  if (!v3)
  {
    if (!v7)
    {
    }

    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_13:

    goto LABEL_14;
  }

  if (v4 == v8 && v3 == v7 || (sub_2657F2864()) && v34 == v5)
  {

    if ((((v34 & 0x100) == 0) ^ ((v5 & 0x100) >> 8)))
    {
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

LABEL_14:
  v20 = *(v2 + 8);
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 16) = v34;

  v21 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v22 = *(*(v1 + v21) + 16);
  if (v22)
  {
    v23 = ( + 40);
    v35 = v7;
    v24 = v1;
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;
      ObjectType = swift_getObjectType();
      v36[0] = v8;
      v36[1] = v35;
      v37 = v34;
      v28 = v8;
      v29 = *(v26 + 32);
      swift_unknownObjectRetain();
      v29(v24, &protocol witness table for IDSSyncService, v36, ObjectType, v26);
      v8 = v28;
      swift_unknownObjectRelease();
      v23 += 2;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_2657CE9D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2657CEAA0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC68] object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC78] object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC48] object:0];

  v5 = [v1 defaultCenter];
  [v5 addObserver:v0 selector:sel_pairedDeviceStateChangedWithNotification_ name:*MEMORY[0x277D2BC50] object:0];

  v6 = *MEMORY[0x277D2BCA0];
  sub_2657F2484();
  v7 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13[4] = sub_2657D1120;
  v13[5] = v8;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_2657CEE08;
  v13[3] = &block_descriptor_59;
  v9 = _Block_copy(v13);

  v10 = sub_2657F24B4();

  v11 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_pairedDeviceNotificationToken;
  swift_beginAccess();
  notify_register_dispatch((v10 + 32), (v0 + v11), v7, v9);
  swift_endAccess();
  _Block_release(v9);
}

void sub_2657CECF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v2 = sub_2657F2344();
    __swift_project_value_buffer(v2, qword_281446410);
    v3 = sub_2657F2334();
    v4 = sub_2657F2584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2657B5000, v3, v4, "Paired watch updated, will check for pairing change", v5, 2u);
      MEMORY[0x266760A30](v5, -1, -1);
    }

    sub_2657CE5FC();
  }
}

uint64_t sub_2657CEE08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657CEEC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2657CEF08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2657CEF5C()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2657F2434();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    [*(*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_idsService) addDelegate:*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) queue:*(*(v0 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper) + OBJC_IVAR____TtC17SessionSyncEngine17IDSServiceWrapper_queue)];
    sub_2657CEAA0();
    return sub_2657CE5FC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IDSSyncService.send(message:destinations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v9;
  v17 = *(a1 + 32);
  sub_2657F2314();
  v10 = *&v4[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v12 = *(a1 + 16);
  *(v11 + 24) = *a1;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a1 + 32);
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;
  v13 = v4;
  sub_2657CF2DC(v16, v15);

  sub_2657BA19C(a3);
  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657CF1C0(void (*a1)(void), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t, void))
{
  v10 = *(a3 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_idsServiceWrapper);

  sub_2657BA19C(a6);

  sub_2657BA19C(a6);
  v11 = sub_2657CC528(a4, a5);
  v13 = v12;
  v15 = v14;
  if (a6)
  {

    a6(v11, v13, v15 & 1);
    sub_2657BA1AC(a6);
  }

  a1();
  sub_2657D1110(v11, v13, v15 & 1);
  sub_2657BA1AC(a6);

  sub_2657BA1AC(a6);
}

uint64_t IDSSyncService.add(delegate:)(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2657CF5C0;
  *(v7 + 24) = v6;
  v12[4] = sub_2657CF5F4;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2657CF61C;
  v12[3] = &block_descriptor_12;
  v8 = _Block_copy(v12);
  v9 = v2;
  swift_unknownObjectRetain();

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657CF4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for IDSSyncService.WeakDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2657CFC7C(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_2657CFC7C((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = v5;
  v11[5] = &off_287719E10;
  *(a1 + v6) = v7;
  return swift_endAccess();
}

uint64_t sub_2657CF5F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2657CF64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v9;
  v17 = *(a1 + 32);
  sub_2657F2314();
  v10 = *&v4[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v12 = *(a1 + 16);
  *(v11 + 24) = *a1;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(a1 + 32);
  *(v11 + 64) = a2;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;
  v13 = v4;
  sub_2657CF2DC(v16, v15);

  sub_2657BA19C(a3);
  sub_2657F2304();
  sub_2657F22F4();
}

void sub_2657CF7E0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = *a1;
  v12 = a1[2];
  v54 = a1[1];
  v13 = a1[4];
  v50 = a1[3];
  v51 = v12;
  v14 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v11 = v14;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v16 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
  swift_beginAccess();
  v17 = *(v3 + v16);
  v49 = *(v17 + 16);
  if (v49)
  {
    v45 = a2;
    v47 = a3;
    v48 = v3;

    v18 = 0;
    v19 = (v17 + 40);
    v20 = &protocol witness table for IDSSyncService;
    v21 = v52;
    v22 = v54;
    v24 = v50;
    v23 = v51;
    v25 = v13;
    v46 = v17;
    while (v18 < *(v17 + 16))
    {
      v55 = v19;
      v56 = v18;
      v28 = *(v19 - 1);
      v29 = *v19;
      ObjectType = swift_getObjectType();
      v57[0] = v21;
      v58 = v22;
      v59 = v23;
      v60 = v24;
      v61 = v25;
      v31 = v25;
      v32 = *(v29 + 16);
      swift_unknownObjectRetain();
      v33 = v48;
      v34 = v20;
      v35 = v45;
      v36 = v20;
      v37 = v31;
      v38 = v47;
      v53 = ObjectType;
      if (v32(v48, v34, v57, v45, v47, ObjectType, v29))
      {
        v26 = v52;
        v57[0] = v52;
        v24 = v50;
        v27 = v51;
        v58 = v54;
        v59 = v51;
        v60 = v50;
        v61 = v37;
        (*(v29 + 8))(v33, v36, v57, v35, v38, v53, v29);
        swift_unknownObjectRelease();
        v21 = v26;
        v22 = v54;
        v23 = v27;
        v25 = v37;
        v17 = v46;
      }

      else
      {
        v53 = v28;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v39 = sub_2657F2344();
        __swift_project_value_buffer(v39, qword_281446410);
        v40 = sub_2657F2334();
        v41 = sub_2657F2584();
        v42 = os_log_type_enabled(v40, v41);
        v21 = v52;
        v25 = v37;
        v17 = v46;
        if (v42)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2657B5000, v40, v41, "Discarding message because delegate rejected it", v43, 2u);
          MEMORY[0x266760A30](v43, -1, -1);
        }

        swift_unknownObjectRelease();

        v22 = v54;
        v24 = v50;
        v23 = v51;
      }

      v20 = v36;
      v18 = v56 + 1;
      v19 = v55 + 2;
      if (v49 == v56 + 1)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

char *sub_2657CFB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
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

void *sub_2657CFC7C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023968, &qword_2657F4338);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023970, &qword_2657F4340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2657CFE00(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_2657CFFDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
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

uint64_t sub_2657D00E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266760080](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2657C5F90(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2657D0180(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  if (a4)
  {
    v7 = a1;
    v8 = sub_2657F2474();
    a1 = v7;
  }

  else
  {
    v8 = 0;
  }

  v43 = [a1 deviceForFromID_];

  if (v43)
  {
    v9 = [v43 uniqueIDOverride];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2657F2484();
      v13 = v12;

      if (swift_unknownObjectWeakLoadStrong())
      {
        if (a2)
        {
          sub_2657F26B4();
          if (*(a2 + 16) && (v14 = sub_2657C83EC(&v44), (v15 & 1) != 0))
          {
            sub_2657B8174(*(a2 + 56) + 32 * v14, v48);
            sub_2657CC240(&v44);
            if (swift_dynamicCast())
            {
              v16 = sub_2657F21B4();
              v17 = *(v16 + 48);
              v18 = *(v16 + 52);
              swift_allocObject();
              sub_2657F21A4();
              sub_2657D0EF0();
              sub_2657F2194();
              v41 = v46;
              v42 = v47;
              sub_2657CF7E0(&v44, v11, v13);

              sub_2657BB314(0x6567617373656DLL, 0xE700000000000000);

              swift_unknownObjectRelease();

              sub_2657BB314(v41, v42);
              return;
            }
          }

          else
          {
            sub_2657CC240(&v44);
          }

          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v34 = sub_2657F2344();
          __swift_project_value_buffer(v34, qword_281446410);
          v27 = sub_2657F2334();
          v35 = sub_2657F2574();
          if (os_log_type_enabled(v27, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_2657B5000, v27, v35, "Message has no payload", v36, 2u);
            MEMORY[0x266760A30](v36, -1, -1);
          }

          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        goto LABEL_39;
      }

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v37 = sub_2657F2344();
      __swift_project_value_buffer(v37, qword_281446410);
      v38 = sub_2657F2334();
      v39 = sub_2657F2574();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_2657B5000, v38, v39, "Delegate is not configured; ignoring incoming message", v40, 2u);
        MEMORY[0x266760A30](v40, -1, -1);
      }
    }

    else
    {
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v26 = sub_2657F2344();
      __swift_project_value_buffer(v26, qword_281446410);

      v27 = sub_2657F2334();
      v28 = sub_2657F2574();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v48[0] = v30;
        *v29 = 136446210;
        v44 = a3;
        v45 = a4;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023908, &qword_2657F42F8);
        v31 = sub_2657F24A4();
        v33 = sub_2657B7F9C(v31, v32, v48);

        *(v29 + 4) = v33;
        _os_log_impl(&dword_2657B5000, v27, v28, "Received message from device with no uniqueIDOverride: %{public}s", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x266760A30](v30, -1, -1);
        MEMORY[0x266760A30](v29, -1, -1);
LABEL_27:

        goto LABEL_28;
      }
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v19 = sub_2657F2344();
    __swift_project_value_buffer(v19, qword_281446410);

    v43 = sub_2657F2334();
    v20 = sub_2657F2574();

    if (os_log_type_enabled(v43, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48[0] = v22;
      *v21 = 136446210;
      v44 = a3;
      v45 = a4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023908, &qword_2657F42F8);
      v23 = sub_2657F24A4();
      v25 = sub_2657B7F9C(v23, v24, v48);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2657B5000, v43, v20, "Received message from unknown device: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x266760A30](v22, -1, -1);
      MEMORY[0x266760A30](v21, -1, -1);
LABEL_28:

      return;
    }
  }
}

uint64_t sub_2657D08E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_2657F2434();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService__queue_delegates;
    swift_beginAccess();
    result = *(v3 + v15);
    v16 = *(result + 16);
    if (v16)
    {

      v27 = a1;
      v17 = (v26 + 40);
      v18 = v3;
      v19 = a3;
      v20 = a2;
      do
      {
        v21 = *(v17 - 1);
        v22 = *v17;
        ObjectType = swift_getObjectType();
        v24 = *(v22 + 24);
        swift_unknownObjectRetain();
        v24(v18, &protocol witness table for IDSSyncService, v27, v20, v19, ObjectType, v22);
        swift_unknownObjectRelease();
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657D0ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (a2)
    {
      sub_2657D08E4(a1, a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);
    oslog = sub_2657F2334();
    v7 = sub_2657F2574();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2657B5000, oslog, v7, "Delegate is not configured; ignoring successful message send", v8, 2u);
      MEMORY[0x266760A30](v8, -1, -1);
    }
  }
}

uint64_t sub_2657D0C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2657F23B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2657F23E4();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR____TtC17SessionSyncEngine14IDSSyncService_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657CE9D4;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_2657F23C4();
  v21 = MEMORY[0x277D84F90];
  sub_2657CEEC0(&qword_2814463D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C60, &qword_2657F4228);
  sub_2657CEF08(&unk_2814463C0, &unk_280023C60, &qword_2657F4228);
  sub_2657F2664();
  MEMORY[0x2667600F0](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

unint64_t sub_2657D0EF0()
{
  result = qword_280023910;
  if (!qword_280023910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023910);
  }

  return result;
}

uint64_t sub_2657D0F44(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_2657D0F8C()
{
  result = qword_280023920;
  if (!qword_280023920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023920);
  }

  return result;
}

unint64_t sub_2657D0FE0()
{
  result = qword_280023930;
  if (!qword_280023930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023930);
  }

  return result;
}

uint64_t sub_2657D1034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023938, &qword_2657F4308);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 40);

  sub_2657BB314(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  if (*(v0 + 72))
  {
    v3 = *(v0 + 80);
  }

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void sub_2657D1110(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2657D1144()
{
  result = qword_280023978;
  if (!qword_280023978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023978);
  }

  return result;
}

uint64_t SyncMessage.AckAction.description.getter()
{
  if (*v0)
  {
    result = 0x6563616C706572;
  }

  else
  {
    result = 0x657461647075;
  }

  *v0;
  return result;
}

uint64_t sub_2657D1208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D12E0(uint64_t a1)
{
  v2 = sub_2657D1704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D131C(uint64_t a1)
{
  v2 = sub_2657D1704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1364(uint64_t a1)
{
  v2 = sub_2657D1758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D13A0(uint64_t a1)
{
  v2 = sub_2657D1758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D13DC(uint64_t a1)
{
  v2 = sub_2657D17AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1418(uint64_t a1)
{
  v2 = sub_2657D17AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.AckAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023980, &qword_2657F4400);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023988, &qword_2657F4408);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023990, &qword_2657F4410);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D1704();
  sub_2657F2924();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2657D1758();
    v18 = v22;
    sub_2657F2814();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2657D17AC();
    sub_2657F2814();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2657D1704()
{
  result = qword_280023998;
  if (!qword_280023998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023998);
  }

  return result;
}

unint64_t sub_2657D1758()
{
  result = qword_2800239A0;
  if (!qword_2800239A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800239A0);
  }

  return result;
}

unint64_t sub_2657D17AC()
{
  result = qword_2800239A8;
  if (!qword_2800239A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800239A8);
  }

  return result;
}

uint64_t SyncMessage.AckAction.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t SyncMessage.AckAction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239B0, &qword_2657F4418);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239B8, &qword_2657F4420);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C0, &qword_2657F4428);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D1704();
  v17 = v37;
  sub_2657F2914();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_2657F2804();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_2657F2734();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C8, &qword_2657F4430) + 48);
    *v25 = &type metadata for SyncMessage.AckAction;
    sub_2657F27C4();
    sub_2657F2724();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_2657D1758();
    sub_2657F27B4();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_2657D17AC();
    sub_2657F27B4();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_2657D1CF8()
{
  if (*v0)
  {
    result = 0x617461646174656DLL;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_2657D1D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D1E08(uint64_t a1)
{
  v2 = sub_2657D2BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1E44(uint64_t a1)
{
  v2 = sub_2657D2BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1E80()
{
  v1 = *v0;
  v2 = 0x657461647075;
  v3 = 7037793;
  v4 = 0x6B636F6C6E75;
  if (v1 != 3)
  {
    v4 = 0x636E79736572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6563616C706572;
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

uint64_t sub_2657D1F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2657D4CF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2657D1F3C(uint64_t a1)
{
  v2 = sub_2657D2AD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1F78(uint64_t a1)
{
  v2 = sub_2657D2AD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D1FB4(uint64_t a1)
{
  v2 = sub_2657D2C7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D1FF0(uint64_t a1)
{
  v2 = sub_2657D2C7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D202C(uint64_t a1)
{
  v2 = sub_2657D2B2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D2068(uint64_t a1)
{
  v2 = sub_2657D2B2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D20A4(uint64_t a1)
{
  v2 = sub_2657D2B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D20E0(uint64_t a1)
{
  v2 = sub_2657D2B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657D211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465696669646F6DLL && a2 == 0xEF7364726F636552;
  if (v6 || (sub_2657F2864() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D646574656C6564 && a2 == 0xEF61746164617465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2657F2864();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2657D2208(uint64_t a1)
{
  v2 = sub_2657D2CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D2244(uint64_t a1)
{
  v2 = sub_2657D2CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.MessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239D0, &qword_2657F4438);
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239D8, &qword_2657F4440);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239E0, &qword_2657F4448);
  v53 = *(v9 - 8);
  v54 = v9;
  v10 = *(v53 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239E8, &qword_2657F4450);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v49 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239F0, &qword_2657F4458);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = *(v47 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239F8, &qword_2657F4460);
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - v21;
  v23 = *v1;
  *&v55 = v1[1];
  *(&v55 + 1) = v23;
  v24 = *(v1 + 16);
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D2AD8();
  v26 = v22;
  sub_2657F2924();
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      LOBYTE(v58) = 2;
      sub_2657D2BD4();
      v29 = v52;
      sub_2657F2814();
      LOBYTE(v58) = BYTE8(v55) & 1;
      v59 = 0;
      sub_2657D2C28();
      v30 = v54;
      v31 = v57;
      sub_2657F2844();
      if (!v31)
      {
        v58 = v55;
        v59 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738);
        sub_2657F2844();
      }

      (*(v53 + 8))(v29, v30);
      return (*(v56 + 8))(v22, v19);
    }

    else
    {
      v36 = (v56 + 8);
      if (v55 == 0)
      {
        LOBYTE(v58) = 3;
        sub_2657D2B80();
        v37 = v41;
        sub_2657F2814();
        v39 = v42;
        v38 = v43;
      }

      else
      {
        LOBYTE(v58) = 4;
        sub_2657D2B2C();
        v37 = v44;
        sub_2657F2814();
        v39 = v45;
        v38 = v46;
      }

      (*(v39 + 8))(v37, v38);
      return (*v36)(v22, v19);
    }
  }

  else
  {
    if (v24)
    {
      LOBYTE(v58) = 1;
      sub_2657D2C7C();
      v33 = v49;
      sub_2657F2814();
      v58 = *(&v55 + 1);
      v59 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
      sub_2657D3998(&qword_280023A48, &qword_280023A50);
      v34 = v51;
      v35 = v57;
      sub_2657F2844();
      if (!v35)
      {
        v58 = v55;
        v59 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738);
        sub_2657F2844();
      }

      (*(v50 + 8))(v33, v34);
    }

    else
    {
      LOBYTE(v58) = 0;
      sub_2657D2CD0();
      sub_2657F2814();
      v58 = *(&v55 + 1);
      v59 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
      sub_2657D3998(&qword_280023A48, &qword_280023A50);
      v27 = v48;
      v28 = v57;
      sub_2657F2844();
      if (!v28)
      {
        v58 = v55;
        v59 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        sub_2657D38FC(&qword_280023A30, &qword_280023738);
        sub_2657F2844();
      }

      (*(v47 + 8))(v18, v27);
    }

    return (*(v56 + 8))(v26, v19);
  }
}

unint64_t sub_2657D2AD8()
{
  result = qword_280023A00;
  if (!qword_280023A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A00);
  }

  return result;
}

unint64_t sub_2657D2B2C()
{
  result = qword_280023A08;
  if (!qword_280023A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A08);
  }

  return result;
}

unint64_t sub_2657D2B80()
{
  result = qword_280023A10;
  if (!qword_280023A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A10);
  }

  return result;
}

unint64_t sub_2657D2BD4()
{
  result = qword_280023A18;
  if (!qword_280023A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A18);
  }

  return result;
}

unint64_t sub_2657D2C28()
{
  result = qword_280023A20;
  if (!qword_280023A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A20);
  }

  return result;
}

unint64_t sub_2657D2C7C()
{
  result = qword_280023A38;
  if (!qword_280023A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A38);
  }

  return result;
}

unint64_t sub_2657D2CD0()
{
  result = qword_280023A58;
  if (!qword_280023A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A58);
  }

  return result;
}

uint64_t SyncMessage.MessageType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A60, &qword_2657F4478);
  v66 = *(v68 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v74 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A68, &qword_2657F4480);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v5);
  v73 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A70, &qword_2657F4488);
  v69 = *(v64 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v64);
  v72 = &v58 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A78, &qword_2657F4490);
  v70 = *(v65 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v65);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A80, &qword_2657F4498);
  v67 = *(v13 - 8);
  v14 = *(v67 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A88, &qword_2657F44A0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2657D2AD8();
  v24 = v75;
  sub_2657F2914();
  if (!v24)
  {
    v59 = v12;
    v60 = 0;
    v25 = v73;
    v26 = v74;
    v58 = v13;
    v27 = v72;
    v75 = v18;
    v61 = v21;
    v28 = sub_2657F2804();
    v29 = *(v28 + 16);
    if (!v29 || ((v30 = *(v28 + 32), v29 == 1) ? (v31 = v30 == 5) : (v31 = 1), v31))
    {
      v32 = sub_2657F2734();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800239C8, &qword_2657F4430) + 48);
      *v34 = &type metadata for SyncMessage.MessageType;
      v36 = v61;
      sub_2657F27C4();
      sub_2657F2724();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      (*(v75 + 8))(v36, v17);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    if (*(v28 + 32) > 1u)
    {
      if (v30 != 2)
      {
        if (v30 == 3)
        {
          LOBYTE(v79) = 3;
          sub_2657D2B80();
          v39 = v60;
          v38 = v61;
          sub_2657F27B4();
          if (!v39)
          {
            (*(v62 + 8))(v25, v63);
            (*(v75 + 8))(v38, v17);
            swift_unknownObjectRelease();
            v40 = 0;
            v41 = 0;
            v42 = 3;
LABEL_28:
            v47 = v71;
            goto LABEL_29;
          }
        }

        else
        {
          LOBYTE(v79) = 4;
          sub_2657D2B2C();
          v51 = v60;
          v38 = v61;
          sub_2657F27B4();
          if (!v51)
          {
            (*(v66 + 8))(v26, v68);
            (*(v75 + 8))(v38, v17);
            swift_unknownObjectRelease();
            v41 = 0;
            v42 = 3;
            v40 = 1;
            goto LABEL_28;
          }
        }

        (*(v75 + 8))(v38, v17);
        goto LABEL_9;
      }

      LOBYTE(v79) = 2;
      sub_2657D2BD4();
      v50 = v60;
      v49 = v61;
      sub_2657F27B4();
      if (v50)
      {
        (*(v75 + 8))(v49, v17);
        goto LABEL_9;
      }

      LOBYTE(v79) = 0;
      sub_2657D38A8();
      v56 = v64;
      sub_2657F27F4();
      v57 = v75;
      v74 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
      v78 = 1;
      sub_2657D38FC(&qword_280023A98, &qword_280023748);
      sub_2657F27F4();
      (*(v69 + 8))(v27, v56);
      (*(v57 + 8))(v49, v17);
      swift_unknownObjectRelease();
      v41 = v79;
      v42 = 2;
      v47 = v71;
      v40 = v74;
LABEL_29:
      *v47 = v40;
      *(v47 + 8) = v41;
      *(v47 + 16) = v42;
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

    v74 = v28;
    v43 = v75;
    if (v30)
    {
      LOBYTE(v79) = 1;
      sub_2657D2C7C();
      v52 = v60;
      v44 = v17;
      v46 = v61;
      sub_2657F27B4();
      v47 = v71;
      if (!v52)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
        LOBYTE(v77) = 0;
        sub_2657D3998(&qword_280023AA0, &qword_280023AA8);
        v53 = v65;
        sub_2657F27F4();
        v54 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        v78 = 1;
        sub_2657D38FC(&qword_280023A98, &qword_280023748);
        v55 = v59;
        sub_2657F27F4();
        (*(v70 + 8))(v55, v53);
        (*(v43 + 8))(v46, v44);
        swift_unknownObjectRelease();
        v41 = v77;
        v42 = 1;
        v40 = v54;
        goto LABEL_29;
      }
    }

    else
    {
      LOBYTE(v79) = 0;
      sub_2657D2CD0();
      v44 = v17;
      v45 = v60;
      v46 = v61;
      sub_2657F27B4();
      v47 = v71;
      if (!v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A40, &qword_2657F4470);
        LOBYTE(v77) = 0;
        sub_2657D3998(&qword_280023AA0, &qword_280023AA8);
        v48 = v58;
        sub_2657F27F4();
        v40 = v79;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023A28, &qword_2657F4468);
        v78 = 1;
        sub_2657D38FC(&qword_280023A98, &qword_280023748);
        sub_2657F27F4();
        (*(v67 + 8))(v16, v48);
        (*(v43 + 8))(v46, v44);
        swift_unknownObjectRelease();
        v42 = 0;
        v41 = v77;
        goto LABEL_29;
      }
    }

    (*(v43 + 8))(v46, v44);
    goto LABEL_9;
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

unint64_t sub_2657D38A8()
{
  result = qword_280023A90;
  if (!qword_280023A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023A90);
  }

  return result;
}

uint64_t sub_2657D38FC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023A28, &qword_2657F4468);
    sub_2657D3A34(a2, type metadata accessor for RecordMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657D3998(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023A40, &qword_2657F4470);
    sub_2657D3A34(a2, type metadata accessor for Record);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2657D3A34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SyncMessage.messageType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_2657D3AC0(v2, v3, v4);
}

uint64_t sub_2657D3AC0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

__n128 SyncMessage.init(messageType:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_2657D3B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2657F2864();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2657D3BD8(uint64_t a1)
{
  v2 = sub_2657D3DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657D3C14(uint64_t a1)
{
  v2 = sub_2657D3DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SyncMessage.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023AB0, &qword_2657F44A8);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = a1[4];
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D3AC0(v7, v8, v10);
  sub_2657D3DC8();
  sub_2657F2924();
  v14 = v7;
  v15 = v8;
  v16 = v10;
  sub_2657D3E1C();
  v11 = v13;
  sub_2657F2844();
  sub_2657D3E70(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_2657D3DC8()
{
  result = qword_280023AB8;
  if (!qword_280023AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AB8);
  }

  return result;
}

unint64_t sub_2657D3E1C()
{
  result = qword_280023AC0;
  if (!qword_280023AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AC0);
  }

  return result;
}

uint64_t sub_2657D3E70(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t SyncMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023AC8, &qword_2657F44B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657D3DC8();
  sub_2657F2914();
  if (!v2)
  {
    sub_2657D4040();
    sub_2657F27F4();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2657D4040()
{
  result = qword_280023AD0;
  if (!qword_280023AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AD0);
  }

  return result;
}

unint64_t sub_2657D4098()
{
  result = qword_280023AD8;
  if (!qword_280023AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SessionSyncEngine0B7MessageV0D4TypeO(uint64_t a1)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657D416C(uint64_t a1, unsigned int a2)
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

uint64_t sub_2657D41B4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2657D41F8(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for SyncMessage.MessageType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SyncMessage.MessageType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2657D4404()
{
  result = qword_280023AE0;
  if (!qword_280023AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AE0);
  }

  return result;
}

unint64_t sub_2657D445C()
{
  result = qword_280023AE8;
  if (!qword_280023AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AE8);
  }

  return result;
}

unint64_t sub_2657D44B4()
{
  result = qword_280023AF0;
  if (!qword_280023AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AF0);
  }

  return result;
}

unint64_t sub_2657D450C()
{
  result = qword_280023AF8;
  if (!qword_280023AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023AF8);
  }

  return result;
}

unint64_t sub_2657D4564()
{
  result = qword_280023B00;
  if (!qword_280023B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B00);
  }

  return result;
}

unint64_t sub_2657D45BC()
{
  result = qword_280023B08;
  if (!qword_280023B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B08);
  }

  return result;
}

unint64_t sub_2657D4614()
{
  result = qword_280023B10;
  if (!qword_280023B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B10);
  }

  return result;
}

unint64_t sub_2657D466C()
{
  result = qword_280023B18;
  if (!qword_280023B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B18);
  }

  return result;
}

unint64_t sub_2657D46C4()
{
  result = qword_280023B20;
  if (!qword_280023B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B20);
  }

  return result;
}

unint64_t sub_2657D471C()
{
  result = qword_280023B28;
  if (!qword_280023B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B28);
  }

  return result;
}

unint64_t sub_2657D4774()
{
  result = qword_280023B30;
  if (!qword_280023B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B30);
  }

  return result;
}

unint64_t sub_2657D47CC()
{
  result = qword_280023B38;
  if (!qword_280023B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B38);
  }

  return result;
}

unint64_t sub_2657D4824()
{
  result = qword_280023B40;
  if (!qword_280023B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B40);
  }

  return result;
}

unint64_t sub_2657D487C()
{
  result = qword_280023B48;
  if (!qword_280023B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B48);
  }

  return result;
}

unint64_t sub_2657D48D4()
{
  result = qword_280023B50;
  if (!qword_280023B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B50);
  }

  return result;
}

unint64_t sub_2657D492C()
{
  result = qword_280023B58;
  if (!qword_280023B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B58);
  }

  return result;
}

unint64_t sub_2657D4984()
{
  result = qword_280023B60;
  if (!qword_280023B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B60);
  }

  return result;
}

unint64_t sub_2657D49DC()
{
  result = qword_280023B68;
  if (!qword_280023B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B68);
  }

  return result;
}

unint64_t sub_2657D4A34()
{
  result = qword_280023B70;
  if (!qword_280023B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B70);
  }

  return result;
}

unint64_t sub_2657D4A8C()
{
  result = qword_280023B78;
  if (!qword_280023B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B78);
  }

  return result;
}

unint64_t sub_2657D4AE4()
{
  result = qword_280023B80;
  if (!qword_280023B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B80);
  }

  return result;
}

unint64_t sub_2657D4B3C()
{
  result = qword_280023B88;
  if (!qword_280023B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B88);
  }

  return result;
}

unint64_t sub_2657D4B94()
{
  result = qword_280023B90;
  if (!qword_280023B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B90);
  }

  return result;
}

unint64_t sub_2657D4BEC()
{
  result = qword_280023B98;
  if (!qword_280023B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023B98);
  }

  return result;
}

unint64_t sub_2657D4C44()
{
  result = qword_280023BA0;
  if (!qword_280023BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023BA0);
  }

  return result;
}

unint64_t sub_2657D4C9C()
{
  result = qword_280023BA8;
  if (!qword_280023BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023BA8);
  }

  return result;
}

uint64_t sub_2657D4CF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2657F2864() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6563616C706572 && a2 == 0xE700000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7037793 && a2 == 0xE300000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B636F6C6E75 && a2 == 0xE600000000000000 || (sub_2657F2864() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E79736572 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_2657F2864();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_2657D4EB0()
{
  v1 = v0;
  v19 = sub_2657F25B4();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2657F2594();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2657F23E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2657D5310();
  v18[1] = "edSinceBoot";
  v18[2] = v10;
  sub_2657F23D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2657D535C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v19);
  *(v0 + 16) = sub_2657F25E4();
  LOBYTE(aBlock[0]) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_2657F2364();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = MKBDeviceUnlockedSinceBoot() == 1;
  v14 = *(v0 + 16);
  v15 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_2657B67E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657B6768;
  aBlock[3] = &block_descriptor_0;
  v16 = _Block_copy(aBlock);

  v17 = MKBEventsRegister();
  _Block_release(v16);
  if (v17)
  {
    *(v1 + 40) = v17;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2657D51EC()
{
  v1 = *(v0 + 40);
  MKBEventsUnregister();

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2657D5280()
{
  v2 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  sub_2657D53B4(&qword_2814463D8, &unk_280023BB0, &qword_2657F5148);
  return sub_2657F2374();
}

unint64_t sub_2657D5310()
{
  result = qword_281446370;
  if (!qword_281446370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281446370);
  }

  return result;
}

unint64_t sub_2657D535C()
{
  result = qword_281446390;
  if (!qword_281446390)
  {
    sub_2657F2594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281446390);
  }

  return result;
}

uint64_t sub_2657D53B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657D5414(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2657C5F90(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657D5518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordMetadata(0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  result = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_2657EF854(v11, type metadata accessor for RecordMetadata))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_2657EF7EC(*(a1 + 48) + *(v22 + 72) * (v21 | (v20 << 6)), v14, type metadata accessor for RecordMetadata);
    sub_2657F03E8(v14, v8, type metadata accessor for RecordMetadata);
    sub_2657C62B8(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncEngine.Role.hashValue.getter()
{
  v1 = *v0;
  sub_2657F28D4();
  MEMORY[0x266760400](v1);
  return sub_2657F2904();
}

uint64_t sub_2657D579C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v8 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v10 = (*(v8 + 8))(a1, v12, ObjectType, v8);
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_2657D584C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 16))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8 & 1;
  }

  return result;
}

uint64_t sub_2657D58C4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v11[0] = v4;
    v11[1] = v5;
    v11[2] = v6;
    v11[3] = v7;
    (*(v9 + 24))(a1, v11, ObjectType, v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657D5958(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_2657D59D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 40))(a1, a2, a3, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = a2 + *(type metadata accessor for Record(0) + 20);
    v9 = *v10;
    sub_2657BB26C(*v10, *(v10 + 8));
  }

  return v9;
}

uint64_t sub_2657D5A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 48))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2657D5B88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F06A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2657BA19C(v3);
  return sub_2657D5D90(v6, v5);
}

uint64_t (*sub_2657D5C18())()
{
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_2657D5D68;
}

uint64_t sub_2657D5CD0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 272);
  v4 = *(a1 + 280);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3);
}

uint64_t sub_2657D5D68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2657D5D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D5F10;
  *(v8 + 24) = v7;
  v11[4] = sub_2657D5F14;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_1;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_2657D5F34(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D6038;
}

void sub_2657D6038(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v3;
    v13[4] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2657F0680;
    *(v14 + 24) = v13;
    v2[4] = sub_2657F06A0;
    v2[5] = v14;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_29;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    sub_2657BA19C(v3);

    dispatch_sync(v4, v15);
    sub_2657BA1AC(v3);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0680;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_18;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  sub_2657BA19C(v3);

  sub_2657BA19C(v3);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[7];
  sub_2657BA1AC(v2[6]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D6314()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 272);
  v5 = *(v2 + 280);
  *(v2 + 272) = v1;
  *(v2 + 280) = v3;
  sub_2657BA19C(v1);

  return sub_2657BA1AC(v4);
}

uint64_t sub_2657D635C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2657BA19C(v3);
  return sub_2657D6540(v6, v5);
}

uint64_t (*sub_2657D63EC())(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC8, &qword_2657F5198);
  sub_2657F25C4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_2657D653C;
}

uint64_t sub_2657D64A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 256);
  v4 = *(a1 + 264);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F05F8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3);
}

uint64_t sub_2657D6540(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D66C0;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_46;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D66C4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC8, &qword_2657F5198);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F069C;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D67C8;
}

void sub_2657D67C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v3;
    v13[4] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2657F0684;
    *(v14 + 24) = v13;
    v2[4] = sub_2657F06A0;
    v2[5] = v14;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_69;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    sub_2657BA19C(v3);

    dispatch_sync(v4, v15);
    sub_2657BA1AC(v3);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0684;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_58;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  sub_2657BA19C(v3);

  sub_2657BA19C(v3);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[7];
  sub_2657BA1AC(v2[6]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D6AA4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 256);
  v5 = *(v2 + 264);
  *(v2 + 256) = v1;
  *(v2 + 264) = v3;
  sub_2657BA19C(v1);

  return sub_2657BA1AC(v4);
}

uint64_t sub_2657D6AEC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F06A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2657BA19C(v3);
  return sub_2657D6CCC(v6, v5);
}

uint64_t (*sub_2657D6B7C())()
{
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_2657F06A4;
}

uint64_t sub_2657D6C34@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 288);
  v4 = *(a1 + 296);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3);
}

uint64_t sub_2657D6CCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D6E4C;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_87;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D6E50(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D6F54;
}

void sub_2657D6F54(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v3;
    v13[4] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2657F0688;
    *(v14 + 24) = v13;
    v2[4] = sub_2657F06A0;
    v2[5] = v14;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_111;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    sub_2657BA19C(v3);

    dispatch_sync(v4, v15);
    sub_2657BA1AC(v3);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0688;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_100;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  sub_2657BA19C(v3);

  sub_2657BA19C(v3);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[7];
  sub_2657BA1AC(v2[6]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D7230()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 288);
  v5 = *(v2 + 296);
  *(v2 + 288) = v1;
  *(v2 + 296) = v3;
  sub_2657BA19C(v1);

  return sub_2657BA1AC(v4);
}

uint64_t sub_2657D7278(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F06A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2657BA19C(v3);
  return sub_2657D7458(v6, v5);
}

uint64_t (*sub_2657D7308())()
{
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_2657F06A4;
}

uint64_t sub_2657D73C0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F07A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3);
}

uint64_t sub_2657D7458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D75D8;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_129;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D75DC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D76E0;
}

void sub_2657D76E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v3;
    v13[4] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2657F068C;
    *(v14 + 24) = v13;
    v2[4] = sub_2657F06A0;
    v2[5] = v14;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_153;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    sub_2657BA19C(v3);

    dispatch_sync(v4, v15);
    sub_2657BA1AC(v3);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F068C;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_142;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  sub_2657BA19C(v3);

  sub_2657BA19C(v3);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[7];
  sub_2657BA1AC(v2[6]);
LABEL_5:

  free(v2);
}

uint64_t sub_2657D79BC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 304);
  v5 = *(v2 + 312);
  *(v2 + 304) = v1;
  *(v2 + 312) = v3;
  sub_2657BA19C(v1);

  return sub_2657BA1AC(v4);
}

double sub_2657D7A04@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, _OWORD *a4@<X8>)
{
  v5 = *(*a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2657F25C4();
  result = *&v7;
  *a4 = v7;
  return result;
}

uint64_t sub_2657D7A6C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657F06A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_2657BA19C(v3);
  return sub_2657D7C4C(v6, v5);
}

uint64_t (*sub_2657D7AFC())()
{
  v1 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  if (!v4)
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  return sub_2657F06A4;
}

uint64_t sub_2657D7BB4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 320);
  v4 = *(a1 + 328);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2657CF5F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;
  return sub_2657BA19C(v3);
}

uint64_t sub_2657D7C4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 120);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657D7DCC;
  *(v8 + 24) = v7;
  v11[4] = sub_2657F06A0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657CF61C;
  v11[3] = &block_descriptor_171;
  v9 = _Block_copy(v11);

  sub_2657BA19C(a1);

  dispatch_sync(v6, v9);
  sub_2657BA1AC(a1);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void (*sub_2657D7DD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BC0, &qword_2657F5190);
  sub_2657F25C4();
  v5 = *v4;
  if (*v4)
  {
    v6 = v4[1];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_2657F06A4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v4[6] = v8;
  v4[7] = v7;
  return sub_2657D7ED4;
}

void sub_2657D7ED4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v13 = swift_allocObject();
    v13[2] = v5;
    v13[3] = v3;
    v13[4] = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_2657F0690;
    *(v14 + 24) = v13;
    v2[4] = sub_2657F06A0;
    v2[5] = v14;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657CF61C;
    v2[3] = &block_descriptor_195;
    v15 = _Block_copy(v2);
    v16 = v2[5];

    sub_2657BA19C(v3);

    dispatch_sync(v4, v15);
    sub_2657BA1AC(v3);
    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2657F0690;
  *(v8 + 24) = v7;
  v2[4] = sub_2657F06A0;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657CF61C;
  v2[3] = &block_descriptor_184;
  v9 = _Block_copy(v2);
  v10 = v2[5];
  sub_2657BA19C(v3);

  sub_2657BA19C(v3);

  dispatch_sync(v4, v9);
  sub_2657BA1AC(v3);
  _Block_release(v9);
  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = v2[7];
  sub_2657BA1AC(v2[6]);
LABEL_5:

  free(v2);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657D81F8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = *(v2 + 320);
  v5 = *(v2 + 328);
  *(v2 + 320) = v1;
  *(v2 + 328) = v3;
  sub_2657BA19C(v1);

  return sub_2657BA1AC(v4);
}

uint64_t sub_2657D8240()
{
  v1 = *(v0 + 120);
  sub_2657F25C4();
  return v3;
}

uint64_t sub_2657D82B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*(*a1 + 216) + 16);

  os_unfair_lock_lock(v4);
  v6 = *(v3 + 224);
  v5 = *(v3 + 232);
  LOWORD(v3) = *(v3 + 240);

  os_unfair_lock_unlock(v4);

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_2657D8324(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(*(*a2 + 216) + 16);

  os_unfair_lock_lock(v6);
  v7 = *(v5 + 232);
  *(v5 + 224) = v3;
  *(v5 + 232) = v2;
  *(v5 + 240) = v4;

  os_unfair_lock_unlock(v6);
}

uint64_t sub_2657D83A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v3);
  v4 = *(v1 + 232);
  v5 = *(v1 + 240);
  *a1 = *(v1 + 224);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;

  os_unfair_lock_unlock(v3);
}

uint64_t SyncEngine.__allocating_init(syncService:metadataStore:keybag:retryTimer:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v50 = a2;
  v51 = a6;
  v58 = a5;
  v54 = a4;
  v55 = a3;
  v49 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = v45 - v14;
  v47 = sub_2657F25B4();
  v46 = *(v47 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v47);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2657F2594();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_2657F23E4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  sub_2657BF854(a3, v64);
  sub_2657BF854(a4, v61);
  type metadata accessor for SyncEngine();
  v22 = swift_allocObject();
  v48 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v45[1] = "ictionary=}12";
  sub_2657F23D4();
  v60 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v46 + 104))(v17, *MEMORY[0x277D85268], v47);
  *(v22 + 120) = sub_2657F25E4();
  v23 = MEMORY[0x277D84F98];
  *(v22 + 144) = MEMORY[0x277D84F98];
  *(v22 + 152) = 0;
  *(v22 + 168) = v23;
  *(v22 + 176) = v23;
  *(v22 + 184) = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  *(v22 + 192) = 0;
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v22 + 224) = 0;
  *(v22 + 232) = 0;
  *(v22 + 216) = v24;
  *(v22 + 240) = 0;
  *(v22 + 256) = 0u;
  *(v22 + 272) = 0u;
  *(v22 + 288) = 0u;
  *(v22 + 304) = 0u;
  *(v22 + 320) = 0u;
  v26 = v50;
  *(v22 + 24) = v49;
  *(v22 + 32) = v26;
  sub_2657BF854(v64, v22 + 40);
  sub_2657BF854(v61, v22 + 80);
  v27 = v51;
  *(v22 + 128) = v58;
  *(v22 + 136) = v27;
  *(v22 + 16) = 0;
  *(v22 + 160) = 86400;
  v28 = *(v22 + 208);
  *(v22 + 200) = 0;
  *(v22 + 208) = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  *(v22 + 248) = 3;
  v29 = v62;
  v30 = v63;
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v31 = (*(v30 + 24))(v29, v30);
  v59 = *(v22 + 120);
  v32 = v59;
  v60 = v31;
  v33 = sub_2657F25A4();
  v34 = v52;
  (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  v35 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8);
  sub_2657EF098();
  v36 = v53;
  sub_2657F2384();
  sub_2657CC304(v34, &qword_280023BD0, &qword_2657F51A0);

  v37 = swift_allocObject();
  *(v37 + 16) = sub_2657EF100;
  *(v37 + 24) = v22;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8);

  v38 = v56;
  v39 = sub_2657F2394();

  (*(v57 + 8))(v36, v38);
  v40 = *(v22 + 192);
  *(v22 + 192) = v39;

  v60 = 3;
  sub_2657EE73C(&v60);
  ObjectType = swift_getObjectType();
  v42 = *(v26 + 8);

  v42(v43, &protocol witness table for SyncEngine, ObjectType, v26);

  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v61);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v22;
}

uint64_t SyncEngine.__allocating_init(syncService:metadataStore:keybag:retryTimer:role:syncState:inflightExpirationTime:localDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v71 = a4;
  v72 = a5;
  v73 = a3;
  v70 = a1;
  v64 = a11;
  v65 = a6;
  v63 = a10;
  v61 = a2;
  v62 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v55 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v17 = *(v16 - 8);
  v68 = v16;
  v69 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - v19;
  v20 = sub_2657F25B4();
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2657F2594();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v26 = sub_2657F23E4();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = swift_allocObject();
  v58 = *a7;
  v60 = *a8;
  v59 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v55 = "ictionary=}12";
  sub_2657F23D4();
  v75 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220);
  sub_2657F2664();
  (*(v56 + 104))(v23, *MEMORY[0x277D85268], v57);
  *(v28 + 120) = sub_2657F25E4();
  v29 = MEMORY[0x277D84F98];
  *(v28 + 144) = MEMORY[0x277D84F98];
  *(v28 + 152) = 0;
  *(v28 + 168) = v29;
  *(v28 + 176) = v29;
  *(v28 + 184) = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  *(v28 + 200) = 0;
  *(v28 + 208) = 0;
  *(v28 + 192) = 0;
  v30 = swift_allocObject();
  v31 = swift_slowAlloc();
  *(v30 + 16) = v31;
  *v31 = 0;
  *(v28 + 224) = 0;
  *(v28 + 232) = 0;
  *(v28 + 216) = v30;
  *(v28 + 240) = 0;
  *(v28 + 256) = 0u;
  *(v28 + 272) = 0u;
  *(v28 + 288) = 0u;
  *(v28 + 304) = 0u;
  *(v28 + 320) = 0u;
  v32 = v61;
  *(v28 + 24) = v70;
  *(v28 + 32) = v32;
  sub_2657BF854(v73, v28 + 40);
  v33 = v71;
  sub_2657BF854(v71, v28 + 80);
  v34 = v65;
  *(v28 + 128) = v72;
  *(v28 + 136) = v34;
  *(v28 + 16) = v58;
  v35 = v63;
  *(v28 + 160) = v62;
  v36 = *(v28 + 208);
  v37 = v64;
  *(v28 + 200) = v35;
  *(v28 + 208) = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v38 = v60;
  *(v28 + 248) = v60;
  v39 = v33[3];
  v40 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v39);
  v41 = (*(v40 + 24))(v39, v40);
  v74 = *(v28 + 120);
  v42 = v74;
  v75 = v41;
  v43 = sub_2657F25A4();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  v45 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8);
  sub_2657EF098();
  v46 = v67;
  sub_2657F2384();
  sub_2657CC304(v44, &qword_280023BD0, &qword_2657F51A0);

  v47 = swift_allocObject();
  *(v47 + 16) = sub_2657F0704;
  *(v47 + 24) = v28;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8);

  v48 = v68;
  v49 = sub_2657F2394();

  (*(v69 + 8))(v46, v48);
  v50 = *(v28 + 192);
  *(v28 + 192) = v49;

  v75 = v38;
  sub_2657EE73C(&v75);
  ObjectType = swift_getObjectType();
  v52 = *(v32 + 8);

  v52(v53, &protocol witness table for SyncEngine, ObjectType, v32);

  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v71);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v28;
}

void *SyncEngine.init(syncService:metadataStore:keybag:retryTimer:role:syncState:inflightExpirationTime:localDeviceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = sub_2657EE9C4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_2657D9254()
{
  v1 = v0[4];
  v2 = v0[3];
  ObjectType = swift_getObjectType();
  (*(v1 + 16))(ObjectType, v1);
  sub_2657F2314();
  v4 = v0[15];

  sub_2657F2304();
  sub_2657F22F4();
}

Swift::Void __swiftcall SyncEngine.validate()()
{
  sub_2657F2314();
  v1 = *(v0 + 120);

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  v2 = *(v0 + 128);
  swift_unknownObjectRelease();
  v3 = *(v0 + 144);

  v4 = *(v0 + 152);
  swift_unknownObjectRelease();
  v5 = *(v0 + 168);

  v6 = *(v0 + 176);

  v7 = *(v0 + 184);

  v8 = *(v0 + 192);

  v9 = *(v0 + 208);

  v10 = *(v0 + 216);

  v11 = *(v0 + 232);

  v12 = *(v0 + 264);
  sub_2657BA1AC(*(v0 + 256));
  v13 = *(v0 + 280);
  sub_2657BA1AC(*(v0 + 272));
  v14 = *(v0 + 296);
  sub_2657BA1AC(*(v0 + 288));
  v15 = *(v0 + 312);
  sub_2657BA1AC(*(v0 + 304));
  v16 = *(v0 + 328);
  sub_2657BA1AC(*(v0 + 320));
  return v0;
}

uint64_t SyncEngine.__deallocating_deinit()
{
  SyncEngine.deinit();

  return MEMORY[0x2821FE8D8](v0, 336, 7);
}

Swift::Void __swiftcall SyncEngine.setHasPaired(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v4 = v1[8];
  v5 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v4);
  (*(v5 + 144))(countAndFlagsBits, object, v4, v5);
}

uint64_t SyncEngine.localDeviceIdentifier.getter()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    v2 = IDSCopyLocalDeviceUniqueID();
    if (v2)
    {
      v3 = v2;
      v1 = sub_2657F2484();
    }

    else
    {
      v1 = 0xD000000000000017;
    }
  }

  return v1;
}

Swift::Void __swiftcall SyncEngine.addRecordIDs(toSave:toDelete:)(Swift::OpaquePointer toSave, Swift::OpaquePointer toDelete)
{
  sub_2657F2314();
  v5 = v2[15];
  v6 = swift_allocObject();
  v6[2]._rawValue = v2;
  v6[3]._rawValue = toSave._rawValue;
  v6[4]._rawValue = toDelete._rawValue;

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t SyncEngine.set(dataSource:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2657F2314();
  v9 = *(v4 + 120);
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;
  v10[6] = a4;
  swift_unknownObjectRetain();

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657D9730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v44 = a3;
  v40 = a2;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 120);
  *v12 = v13;
  v14 = *MEMORY[0x277D85200];
  v42 = v9[13];
  v42(v12, v14, v8);
  v41 = v13;
  LOBYTE(v13) = sub_2657F2434();
  v15 = v9[1];
  result = v15(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!a1)
  {
LABEL_7:
    swift_beginAccess();

    sub_2657C1814(0, v44, a4);
    return swift_endAccess();
  }

  swift_beginAccess();
  v17 = *(v5 + 144);
  v18 = a1;
  v19 = *(v17 + 16);
  v43 = v18;
  swift_unknownObjectRetain();
  if (v19)
  {

    v20 = sub_2657C8374(v44, a4);
    if (v21)
    {
      v22 = *(*(v17 + 56) + 8 * v20);

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        swift_unknownObjectRelease();
        sub_2657F2764();
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  type metadata accessor for SyncEngine.WeakSource();
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v24 + 24) = v40;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  v25 = *(v5 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v5 + 144);
  *(v5 + 144) = 0x8000000000000000;
  sub_2657C9984(v24, v44, a4, isUniquelyReferenced_nonNull_native);

  *(v5 + 144) = v45;
  swift_endAccess();
  v28 = v41;
  v27 = v42;
  *v12 = v41;
  v27(v12, v14, v8);
  v29 = v28;
  LOBYTE(v28) = sub_2657F2434();
  result = v15(v12, v8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_18;
  }

  v30 = *(v5 + 128);
  v31 = *(v5 + 136);
  ObjectType = swift_getObjectType();
  (*(v31 + 24))(ObjectType, v31);
  v33 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v33);
  v34 = *(v5 + 224);
  v35 = *(v5 + 232);

  os_unfair_lock_unlock(v33);

  if (v35)
  {
  }

  else
  {
    v34 = 0;
  }

  v36 = *(*(v5 + 216) + 16);

  os_unfair_lock_lock(v36);
  v37 = *(v5 + 232);
  v38 = *(v5 + 241);

  os_unfair_lock_unlock(v36);

  v39 = v38 & 1;
  if (!v37)
  {
    v39 = 2;
  }

  v46[0] = v39;
  sub_2657B8A48(v34, v35, v46);

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall SyncEngine.set(syncEnabled:)(Swift::Bool syncEnabled)
{
  v2 = v1;
  v4 = *(v1 + 120);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = syncEnabled;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2657EF170;
  *(v6 + 24) = v5;
  v8[4] = sub_2657F06A0;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2657CF61C;
  v8[3] = &block_descriptor_224;
  v7 = _Block_copy(v8);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void sub_2657D9CB0(int a1)
{
  v3 = v1;
  LODWORD(v4) = a1;
  v5 = sub_2657F2414();
  v11 = *(v5 - 8);
  v6 = *(v11 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 120);
  *v8 = v9;
  (*(v11 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_2657F2434();
  v12 = *(v11 + 8);
  LOBYTE(v11) = v11 + 8;
  v12(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_7;
  }

  v13 = *(v3 + 248);
  if (v13)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    LODWORD(v11) = *(v3 + 16);
  }

  v2 = 0x281446000uLL;
  if (v11 != 1)
  {
    goto LABEL_17;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_42;
  }

LABEL_7:
  v14 = sub_2657F2344();
  __swift_project_value_buffer(v14, qword_281446410);

  v15 = sub_2657F2334();
  v16 = sub_2657F2584();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v17 = 136381187;
    if (*(v3 + 208))
    {
      v19 = *(v3 + 200);
      v20 = *(v3 + 208);
    }

    else
    {
      v21 = IDSCopyLocalDeviceUniqueID();
      if (v21)
      {
        HIDWORD(v46) = v4;
        v4 = v21;
        v19 = sub_2657F2484();
        v20 = v22;

        LODWORD(v4) = HIDWORD(v46);
      }

      else
      {
        v19 = 0xD000000000000017;
        v20 = 0x80000002657F8510;
      }
    }

    v23 = sub_2657B7F9C(v19, v20, &v47);

    *(v17 + 4) = v23;
    *(v17 + 12) = 1026;
    *(v17 + 14) = 0;
    *(v17 + 18) = 1026;
    *(v17 + 20) = 1;
    _os_log_impl(&dword_2657B5000, v15, v16, "(%{private}s) Sync engine supported state has changed from %{BOOL,public}d to %{BOOL,public}d", v17, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x266760A30](v18, -1, -1);
    MEMORY[0x266760A30](v17, -1, -1);

    v2 = 0x281446000uLL;
    v13 = *(v3 + 248);
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v13 = *(v3 + 248);
    if ((v13 & 1) == 0)
    {
LABEL_16:
      v13 |= 1uLL;
      *(v3 + 248) = v13;
    }
  }

LABEL_17:
  if (((v13 >> 1) & 1) == (v4 & 1))
  {
    if ((v11 & 1) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

  if (*(v2 + 1032) != -1)
  {
    swift_once();
  }

  v24 = sub_2657F2344();
  __swift_project_value_buffer(v24, qword_281446410);

  v25 = sub_2657F2334();
  v26 = sub_2657F2584();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = v13 & 2;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v47 = v29;
    *v28 = 136381187;
    if (*(v3 + 208))
    {
      v30 = *(v3 + 200);
      v31 = *(v3 + 208);
    }

    else
    {
      v32 = IDSCopyLocalDeviceUniqueID();
      if (v32)
      {
        HIDWORD(v46) = v4;
        v4 = v32;
        v30 = sub_2657F2484();
        v31 = v33;

        LOBYTE(v4) = BYTE4(v46);
      }

      else
      {
        v30 = 0xD000000000000017;
        v31 = 0x80000002657F8510;
      }
    }

    v34 = sub_2657B7F9C(v30, v31, &v47);

    *(v28 + 4) = v34;
    *(v28 + 12) = 1026;
    *(v28 + 14) = v27 >> 1;
    *(v28 + 18) = 1026;
    *(v28 + 20) = v4 & 1;
    _os_log_impl(&dword_2657B5000, v25, v26, "(%{private}s) Sync engine enabled state has changed from %{BOOL,public}d to %{BOOL,public}d", v28, 0x18u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x266760A30](v29, -1, -1);
    MEMORY[0x266760A30](v28, -1, -1);
  }

  v35 = *(v3 + 248);
  if (v4)
  {
    if ((v35 & 2) != 0)
    {
      goto LABEL_35;
    }

    v36 = v35 | 2;
  }

  else
  {
    if ((v35 & 2) == 0)
    {
      goto LABEL_35;
    }

    v36 = v35 & 0xFFFFFFFFFFFFFFFDLL;
  }

  *(v3 + 248) = v36;
LABEL_35:
  sub_2657DA250();
  v37 = *(*(v3 + 216) + 16);

  os_unfair_lock_lock(v37);
  v39 = *(v3 + 224);
  v38 = *(v3 + 232);
  v40 = *(v3 + 240);

  os_unfair_lock_unlock(v37);

  if (v38)
  {
    v41 = HIBYTE(v40) & 1;
    v42 = *(v3 + 64);
    v43 = *(v3 + 72);
    __swift_project_boxed_opaque_existential_1((v3 + 40), v42);
    v44 = *(v43 + 136);

    v45 = v44(v39, v38, v42, v43);

    LOBYTE(v47) = v41;

    if (v45)
    {
      sub_2657B8A48(v39, v38, &v47);
    }

    else
    {
      sub_2657E4628(v39, v38, &v47);
    }

    swift_bridgeObjectRelease_n();
  }
}

void sub_2657DA250()
{
  v1 = v0;
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (&v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 120);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_2657F2434();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  sub_2657E4CAC();
  sub_2657E4F94();
  if ((~*(v1 + 248) & 3) != 0)
  {
    return;
  }

  v14 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v14);
  v15 = *(v1 + 232);

  os_unfair_lock_unlock(v14);

  if (!v15)
  {
    return;
  }

  v16 = *(v1 + 104);
  v17 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v16);
  if (((*(v17 + 16))(v16, v17) & 1) == 0)
  {
    return;
  }

  v18 = *(v1 + 64);
  v19 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v18);
  sub_2657F2284();
  v20 = (*(v19 + 112))(v6, v18, v19);
  (*(v3 + 8))(v6, v2);
  if (v20)
  {
    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_22;
  }

LABEL_7:
  v21 = sub_2657F2344();
  __swift_project_value_buffer(v21, qword_281446410);

  v22 = sub_2657F2334();
  v23 = sub_2657F2584();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136380675;
    if (*(v1 + 208))
    {
      v26 = *(v1 + 200);
      v27 = *(v1 + 208);
    }

    else
    {
      v28 = IDSCopyLocalDeviceUniqueID();
      if (v28)
      {
        v29 = v28;
        v26 = sub_2657F2484();
        v27 = v30;
      }

      else
      {
        v27 = 0x80000002657F8510;
        v26 = 0xD000000000000017;
      }
    }

    v31 = sub_2657B7F9C(v26, v27, &v41);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2657B5000, v22, v23, "(%{private}s) Metadata store is invalid; purging and syncing", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x266760A30](v25, -1, -1);
    MEMORY[0x266760A30](v24, -1, -1);
  }

  v32 = *(v1 + 64);
  v33 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1((v1 + 40), v32);
  (*(v33 + 80))(v32, v33);
  v34 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v34);
  v35 = *(v1 + 224);
  v36 = *(v1 + 232);

  os_unfair_lock_unlock(v34);

  if (v36)
  {
  }

  else
  {
    v35 = 0;
  }

  v37 = *(*(v1 + 216) + 16);

  os_unfair_lock_lock(v37);
  v38 = *(v1 + 232);
  v39 = *(v1 + 241);

  os_unfair_lock_unlock(v37);

  v40 = v39 & 1;
  if (!v38)
  {
    v40 = 2;
  }

  v42 = v40;
  sub_2657B8A48(v35, v36, &v42);
}

Swift::Void __swiftcall SyncEngine.sync()()
{
  sub_2657F2314();
  v1 = *(v0 + 120);

  sub_2657F2304();
  sub_2657F22F4();
}

uint64_t sub_2657DA7BC()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 120);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_2657F2434();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v9);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);

    os_unfair_lock_unlock(v9);

    if (v10)
    {
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v12);
    v13 = *(v0 + 232);
    v14 = *(v0 + 241);

    os_unfair_lock_unlock(v12);

    v15 = v14 & 1;
    if (!v13)
    {
      v15 = 2;
    }

    v17 = v15;
    sub_2657B8A48(v11, v10, &v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}