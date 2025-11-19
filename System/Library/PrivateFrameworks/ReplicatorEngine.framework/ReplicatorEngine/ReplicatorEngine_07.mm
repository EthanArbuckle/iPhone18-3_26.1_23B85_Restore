uint64_t sub_1DEEB6604(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DEF8E128();
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
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
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

uint64_t sub_1DEEB68A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
  v40 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
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
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + v24);
      v26 = *(v39 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v40)
      {
        sub_1DEEBC790(v27, v41, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      }

      else
      {
        sub_1DEEBC728(v27, v41, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      }

      v28 = *(v12 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8E7D8();
      result = sub_1DEF8E7F8();
      v29 = -1 << *(v12 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v19 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v19 + 8 * v31);
          if (v35 != -1)
          {
            v20 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v30) & ~*(v19 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + v20) = v25;
      result = sub_1DEEBC790(v41, *(v12 + 56) + v26 * v20, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB6C00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40C0, &qword_1DEF91BF8);
  v33 = a2;
  result = sub_1DEF8E128();
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
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_1DEF8E7A8();
      MEMORY[0x1E12CBF60](v21);
      result = sub_1DEF8E7F8();
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
      *(*(v8 + 48) + v16) = v21;
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

uint64_t sub_1DEEB6E90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4098, &qword_1DEF91BD0);
  v38 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 56 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v39 = *(v23 + 16);
      v42 = *(v23 + 32);
      v40 = *(v23 + 48);
      v41 = *(v23 + 40);
      v27 = (v22 + 40 * v21);
      if (v38)
      {
        sub_1DEE2F1AC(v27, v43);
      }

      else
      {
        sub_1DEE29594(v27, v43);
      }

      v28 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v26)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v42);
      MEMORY[0x1E12CBF90](v41);
      MEMORY[0x1E12CBF90](v40);
      result = sub_1DEF8E7F8();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 24) = v26;
      *(v17 + 32) = v42;
      *(v17 + 40) = v41;
      *(v17 + 48) = v40;
      result = sub_1DEE2F1AC(v43, *(v8 + 56) + 40 * v16);
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
        goto LABEL_40;
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

      v3 = v2;
      goto LABEL_38;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB71E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A0, &qword_1DEF91BD8);
  v39 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 56 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 24);
      v42 = *(v24 + 16);
      v45 = *(v24 + 32);
      v43 = *(v24 + 48);
      v44 = *(v24 + 40);
      v28 = (v23 + 16 * v22);
      v41 = *v28;
      v40 = *(v28 + 8);
      if ((v39 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v27)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v45);
      MEMORY[0x1E12CBF90](v44);
      MEMORY[0x1E12CBF90](v43);
      result = sub_1DEF8E7F8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 56 * v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v42;
      *(v17 + 24) = v27;
      *(v17 + 32) = v45;
      *(v17 + 40) = v44;
      *(v17 + 48) = v43;
      v18 = *(v8 + 56) + 16 * v16;
      *v18 = v41;
      *(v18 + 8) = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_37;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

void *sub_1DEEB7550()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 48;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = (*(v4 + 48) + v18);
        v30 = *(v24 + 32);
        *v29 = v21;
        v29[1] = v20;
        v29[2] = v22;
        v29[3] = v23;
        v31 = *(v4 + 56) + v17;
        *v31 = v25;
        *(v31 + 8) = v26;
        *(v31 + 16) = v27;
        *(v31 + 24) = v28;
        *(v31 + 32) = v30;
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

void *sub_1DEEB7700()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersionAdvertisement(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4150, &unk_1DEF91C70);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v27, v31, type metadata accessor for ZoneVersionAdvertisement);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DEEBC790(v26, *(v28 + 56) + v27, type metadata accessor for ZoneVersionAdvertisement);
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

void *sub_1DEEB7958()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A8, &unk_1DEF91BE0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v19;
        v21[1] = v20;
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

char *sub_1DEEB7B04()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DEF8D3F8();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  v7 = *v0;
  v8 = sub_1DEF8E118();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1DEEBC728(*(v7 + 56) + v28, v37, type metadata accessor for PairingRelationship);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1DEEBC790(v27, *(v29 + 56) + v28, type metadata accessor for PairingRelationship);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DEEB7E58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        sub_1DEE12F7C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DEE117C0(v25, (*(v4 + 56) + v22));
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

void *sub_1DEEB7FFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4128, &unk_1DEF91C48);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void *sub_1DEEB8178(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1DEF8D3F8();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1DEF8E118();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34[0] = v5;
    result = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v13)
    {
      result = memmove(result, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    v34[1] = v38 + 32;
    v34[2] = v38 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = *(*(v8 + 48) + 8 * v24);
        v26 = v38;
        v27 = *(v38 + 72) * v24;
        v28 = *(v8 + 56) + v27;
        v29 = v35;
        v30 = v8;
        v31 = v36;
        (*(v38 + 16))(v35, v28, v36);
        v32 = v37;
        *(*(v37 + 48) + 8 * v24) = v25;
        v33 = v31;
        v8 = v30;
        (*(v26 + 32))(*(v32 + 56) + v27, v29, v33);

        v19 = v39;
      }

      while (v39);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v34[0];
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1DEEB8404(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8E118();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_1DEEB856C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = sub_1DEF8D3F8();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1DEF8E118();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_1DEEB87E4()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersion();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v27, v31, type metadata accessor for ZoneVersion);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DEEBC790(v26, *(v28 + 56) + v27, type metadata accessor for ZoneVersion);
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

void *sub_1DEEB8A3C()
{
  v1 = v0;
  v2 = type metadata accessor for ZoneVersion();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  v6 = *v0;
  v7 = sub_1DEF8E118();
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
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1DEEBC728(*(v6 + 56) + v23, v5, type metadata accessor for ZoneVersion);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_1DEEBC790(v5, *(v8 + 56) + v23, type metadata accessor for ZoneVersion);
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

void *sub_1DEEB8C78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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

void *sub_1DEEB8DF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F70, &unk_1DEF91B50);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = swift_unknownObjectRetain();
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

char *sub_1DEEB8F5C()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkBrowser.Monitor();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DEF8D3F8();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  v7 = *v0;
  v8 = sub_1DEF8E118();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1DEEBC728(*(v7 + 56) + v28, v37, type metadata accessor for NetworkBrowser.Monitor);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1DEEBC790(v27, *(v29 + 56) + v28, type metadata accessor for NetworkBrowser.Monitor);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_1DEEB9288()
{
  v1 = v0;
  v34 = sub_1DEF8D3F8();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F78, &unk_1DEF91B60);
  v4 = *v0;
  v5 = sub_1DEF8E118();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_1DEEB9508()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE0, &qword_1DEF91B70);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v21;
        v28[1] = v20;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v25;
        v29[3] = v26;
        v29[4] = v27;

        result = swift_unknownObjectRetain();
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

void *sub_1DEEB96B0()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  v6 = *v0;
  v7 = sub_1DEF8E118();
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
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1DEEBC728(*(v6 + 56) + v23, v5, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = sub_1DEEBC790(v5, *(v8 + 56) + v23, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
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

id sub_1DEEB98E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4090, &qword_1DEF91BC8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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

void *sub_1DEEB9A50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        sub_1DEEBC5D0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1DEE12F7C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1DEE117C0(v22, (*(v4 + 56) + v17));
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

char *sub_1DEEB9BF4()
{
  v1 = v0;
  v2 = type metadata accessor for SessionManager.Session();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1DEF8D3F8();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  v7 = *v0;
  v8 = sub_1DEF8E118();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_1DEEBC728(*(v7 + 56) + v28, v37, type metadata accessor for SessionManager.Session);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_1DEEBC790(v27, *(v29 + 56) + v28, type metadata accessor for SessionManager.Session);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1DEEB9F20()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  v5 = *v0;
  v6 = sub_1DEF8E118();
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
        sub_1DEEBC728(*(v5 + 56) + v27, v31, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1DEEBC790(v26, *(v28 + 56) + v27, type metadata accessor for NetworkMessenger.ExpiringConnection);
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

void *sub_1DEEBA178()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE8, &qword_1DEF91B78);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1DEE1BFF4(v22, *(&v22 + 1));
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

void *sub_1DEEBA2FC()
{
  v1 = v0;
  v31 = sub_1DEF8D3F8();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4060, &qword_1DEF91B98);
  v4 = *v0;
  v5 = sub_1DEF8E118();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

void *sub_1DEEBA590(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8E118();
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

void *sub_1DEEBA6F0()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkMessenger.PartialIncomingMessage(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4070, &qword_1DEF91588);
  v6 = *v0;
  v7 = sub_1DEF8E118();
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
        v22 = *(*(v6 + 48) + v21);
        v23 = *(v25 + 72) * v21;
        sub_1DEEBC728(*(v6 + 56) + v23, v5, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
        *(*(v8 + 48) + v21) = v22;
        result = sub_1DEEBC790(v5, *(v8 + 56) + v23, type metadata accessor for NetworkMessenger.PartialIncomingMessage);
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

void *sub_1DEEBA924()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40C0, &qword_1DEF91BF8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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

void *sub_1DEEBAA80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4098, &qword_1DEF91BD0);
  v2 = *v0;
  v3 = sub_1DEF8E118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v28 = v1;
    __src = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, __src, 8 * v6);
    }

    v8 = 0;
    v30 = v2;
    v31 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v33 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 56 * v16;
        v18 = *(v2 + 56);
        v19 = *(v2 + 48) + 56 * v16;
        v20 = *(v19 + 8);
        v32 = *v19;
        v21 = *(v19 + 16);
        v22 = *(v19 + 24);
        v23 = *(v19 + 32);
        v25 = *(v19 + 40);
        v24 = *(v19 + 48);
        v26 = 40 * v16;
        sub_1DEE29594(v18 + 40 * v16, v34);
        v27 = *(v31 + 48) + v17;
        *v27 = v32;
        *(v27 + 8) = v20;
        *(v27 + 16) = v21;
        *(v27 + 24) = v22;
        *(v27 + 32) = v23;
        v2 = v30;
        *(v27 + 40) = v25;
        *(v27 + 48) = v24;
        sub_1DEE2F1AC(v34, *(v31 + 56) + v26);

        v11 = v33;
      }

      while (v33);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v28;
        v4 = v31;
        goto LABEL_21;
      }

      v15 = *(__src + v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
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

void *sub_1DEEBAC70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A0, &qword_1DEF91BD8);
  v2 = *v0;
  v3 = sub_1DEF8E118();
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
        v18 = 56 * v17;
        v19 = *(v2 + 48) + 56 * v17;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        v23 = *(v19 + 32);
        v17 *= 16;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        LOBYTE(v24) = *(v24 + 8);
        v26 = *(v4 + 48) + v18;
        v27 = *(v19 + 40);
        *v26 = *v19;
        *(v26 + 8) = v20;
        *(v26 + 16) = v22;
        *(v26 + 24) = v21;
        *(v26 + 32) = v23;
        *(v26 + 40) = v27;
        v28 = *(v4 + 56) + v17;
        *v28 = v25;
        *(v28 + 8) = v24;
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

uint64_t sub_1DEEBAE10(__int128 *a1, uint64_t a2)
{
  v20 = a2 + 64;
  v2 = 1 << *(a2 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a2 + 64);
  v19 = (v2 + 63) >> 6;

  v25 = 0;
  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_8:
      v8 = __clz(__rbit64(v4)) | (v7 << 6);
      v9 = (*(a2 + 48) + 32 * v8);
      v10 = *v9;
      v11 = v9[1];
      v12 = v9[2];
      v13 = v9[3];
      v14 = (*(a2 + 56) + 48 * v8);
      v16 = *v14;
      v15 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v23 = v14[4];
      v24 = v14[5];

      if (!v11)
      {
        break;
      }

      v4 &= v4 - 1;
      v28 = a1[2];
      v29 = a1[3];
      v30 = *(a1 + 8);
      v26 = *a1;
      v27 = a1[1];

      sub_1DEF8D9B8();

      sub_1DEF8D9B8();
      swift_bridgeObjectRelease_n();

      sub_1DEF8D9B8();
      sub_1DEF8D9B8();

      MEMORY[0x1E12CBF90](v23);
      MEMORY[0x1E12CBF90](v24);

      result = sub_1DEF8E7F8();
      v25 ^= result;
      v6 = v7;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x1E12CBF60](v25);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v19)
      {
        goto LABEL_11;
      }

      v4 = *(v20 + 8 * v7);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEBB038(__int128 *a1, unint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DEF8E038();
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v3 | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a2 + 32);
    v5 = ~v8;
    v4 = a2 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a2 + 64);
    v7 = a2;
  }

  v11 = (v5 + 64) >> 6;

  v13 = 0;
  v14 = 0;
  v33 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v6;
    v16 = v14;
    if (!v6)
    {
      break;
    }

LABEL_14:
    v18 = (v15 - 1) & v15;
    v19 = (v16 << 9) | (8 * __clz(__rbit64(v15)));
    v20 = *(*(v7 + 48) + v19);
    v21 = *(*(v7 + 56) + v19);

    if (!v20)
    {
LABEL_20:
      sub_1DEE2774C();
      return MEMORY[0x1E12CBF60](v13);
    }

    while (1)
    {
      v37 = a1[2];
      v38 = a1[3];
      v39 = *(a1 + 8);
      v35 = *a1;
      v36 = a1[1];
      v23 = v20[2];
      v24 = v20[3];
      sub_1DEF8D9B8();
      v25 = v20[4];
      v26 = v20[5];
      sub_1DEF8D9B8();

      v27 = v21[2];
      v28 = v27[2];
      v29 = v27[3];
      sub_1DEF8D9B8();
      v30 = v27[4];
      v31 = v27[5];
      sub_1DEF8D9B8();
      v32 = v21[4];
      MEMORY[0x1E12CBF90](v21[3]);
      MEMORY[0x1E12CBF90](v32);

      result = sub_1DEF8E7F8();
      v13 ^= result;
      v14 = v16;
      v6 = v18;
      v7 = v33;
      if ((v33 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      v22 = sub_1DEF8E0D8();
      if (v22)
      {
        v34 = v22;
        type metadata accessor for Zone.ID();
        swift_dynamicCast();
        type metadata accessor for Zone();
        swift_dynamicCast();
        v21 = v34;
        v20 = v35;
        v16 = v14;
        v18 = v6;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  v17 = v14;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_20;
    }

    v15 = *(v4 + 8 * v16);
    ++v17;
    if (v15)
    {
      v7 = v33;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL _s16ReplicatorEngine16DeviceDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v35[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40D8, &unk_1DEF91C10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35[-v15];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1DEF8E4E8() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    v18 = *(a2 + 89);
    if (*(a1 + 89))
    {
      goto LABEL_11;
    }

    if (*(a2 + 89))
    {
      return 0;
    }

    result = 0;
    if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
    {
      v18 = *(a2 + 88);
      if (*(a1 + 88))
      {
LABEL_11:
        if ((v18 & 1) == 0)
        {
          return 0;
        }

LABEL_12:
        if ((sub_1DEEDBD80(*(a1 + 96), *(a2 + 96)) & 1) == 0 || (sub_1DEEDBFD4(*(a1 + 104), *(a2 + 104)) & 1) == 0)
        {
          return 0;
        }

        v19 = *(a1 + 112);
        v20 = *(a1 + 120);
        v21 = *(a2 + 120);
        v38 = *(a2 + 112);
        if (v20 >> 60 == 15)
        {
          if (v21 >> 60 == 15)
          {
            v37 = v19;
            sub_1DEEA8818(v19, v20);
            sub_1DEEA8818(v38, v21);
            sub_1DEE2416C(v37, v20);
LABEL_30:
            v24 = *(a1 + 136);
            v25 = *(a2 + 136);
            if (v24)
            {
              if (!v25 || (*(a1 + 128) != *(a2 + 128) || v24 != v25) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v25)
            {
              return 0;
            }

            v26 = *(a1 + 152);
            v27 = *(a2 + 152);
            if (v26)
            {
              if (!v27 || (*(a1 + 144) != *(a2 + 144) || v26 != v27) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v27)
            {
              return 0;
            }

            v28 = *(a1 + 168);
            v29 = *(a2 + 168);
            if (v28)
            {
              if (!v29 || (*(a1 + 160) != *(a2 + 160) || v28 != v29) && (sub_1DEF8E4E8() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v29)
            {
              return 0;
            }

            v30 = *(type metadata accessor for DeviceDescriptor() + 60);
            v31 = *(v13 + 48);
            sub_1DEE205E0(a1 + v30, v16);
            sub_1DEE205E0(a2 + v30, &v16[v31]);
            v32 = *(v5 + 48);
            if (v32(v16, 1, v4) == 1)
            {
              if (v32(&v16[v31], 1, v4) == 1)
              {
                sub_1DEE171B4(v16, &unk_1ECDE3E80, &unk_1DEF90970);
                return 1;
              }
            }

            else
            {
              sub_1DEE205E0(v16, v12);
              if (v32(&v16[v31], 1, v4) != 1)
              {
                (*(v5 + 32))(v8, &v16[v31], v4);
                sub_1DEEBC680(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
                v33 = sub_1DEF8D908();
                v34 = *(v5 + 8);
                v34(v8, v4);
                v34(v12, v4);
                sub_1DEE171B4(v16, &unk_1ECDE3E80, &unk_1DEF90970);
                return (v33 & 1) != 0;
              }

              (*(v5 + 8))(v12, v4);
            }

            sub_1DEE171B4(v16, &qword_1ECDE40D8, &unk_1DEF91C10);
            return 0;
          }
        }

        else if (v21 >> 60 != 15)
        {
          v37 = v19;
          sub_1DEEA8818(v19, v20);
          sub_1DEEA8818(v38, v21);
          v36 = sub_1DEEDFFD4(v37, v20, v38, v21);
          sub_1DEE2416C(v38, v21);
          sub_1DEE2416C(v37, v20);
          if ((v36 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_30;
        }

        v22 = v19;
        sub_1DEEA8818(v19, v20);
        v23 = v38;
        sub_1DEEA8818(v38, v21);
        sub_1DEE2416C(v22, v20);
        sub_1DEE2416C(v23, v21);
        return 0;
      }

      result = 0;
      if ((*(a2 + 88) & 1) == 0 && *(a1 + 80) == *(a2 + 80))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_1DEEBB854()
{
  result = qword_1ECDE3530;
  if (!qword_1ECDE3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3530);
  }

  return result;
}

uint64_t sub_1DEEBB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for Zone.ID.Pool();
  v7 = MEMORY[0x1E69E7CC8];
  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v12 = *i;

    v13 = sub_1DEF4A4A0();
    type metadata accessor for Zone();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a4;
    v14[4] = a5;
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v15 = v7;
      }

      else
      {
        v15 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = sub_1DEF8DE68();
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      v7 = sub_1DEEB0948(v15, v16 + 1, &qword_1ECDE4140, &unk_1DEF91C60, type metadata accessor for Zone);
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_1DEEAF20C(v13);
    v20 = *(v7 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v7 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v18)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DEEB8404(&qword_1ECDE4140, &unk_1DEF91C60);
        if (v23)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DEEB20D4(v22, isUniquelyReferenced_nonNull_native, &qword_1ECDE4140, &unk_1DEF91C60);
      v24 = sub_1DEEAF20C(v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_28;
      }

      v19 = v24;
      if (v23)
      {
LABEL_3:
        v9 = *(v7 + 56);
        v10 = *(v9 + 8 * v19);
        *(v9 + 8 * v19) = v14;

        goto LABEL_4;
      }
    }

    *(v7 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(*(v7 + 48) + 8 * v19) = v13;
    *(*(v7 + 56) + 8 * v19) = v14;

    v26 = *(v7 + 16);
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_27;
    }

    *(v7 + 16) = v28;
LABEL_4:
    if (!--v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:

  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

unint64_t sub_1DEEBBB54()
{
  result = qword_1ECDE3470;
  if (!qword_1ECDE3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3470);
  }

  return result;
}

unint64_t sub_1DEEBBBA8()
{
  result = qword_1ECDE35D8;
  if (!qword_1ECDE35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35D8);
  }

  return result;
}

unint64_t sub_1DEEBBBFC()
{
  result = qword_1ECDE2CB0;
  if (!qword_1ECDE2CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBC680(&qword_1ECDE2EA8, type metadata accessor for Zone.ID);
    sub_1DEEBC680(&qword_1ECDE2E90, type metadata accessor for Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2CB0);
  }

  return result;
}

unint64_t sub_1DEEBBCE8()
{
  result = qword_1ECDE3570;
  if (!qword_1ECDE3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3570);
  }

  return result;
}

unint64_t sub_1DEEBBD3C()
{
  result = qword_1ECDE3538;
  if (!qword_1ECDE3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3538);
  }

  return result;
}

unint64_t sub_1DEEBBD90()
{
  result = qword_1ECDE2C78;
  if (!qword_1ECDE2C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C78);
  }

  return result;
}

unint64_t sub_1DEEBBE0C()
{
  result = qword_1ECDE3610;
  if (!qword_1ECDE3610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBC680(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3610);
  }

  return result;
}

unint64_t sub_1DEEBBEC0()
{
  result = qword_1ECDE3670;
  if (!qword_1ECDE3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3670);
  }

  return result;
}

unint64_t sub_1DEEBBF14()
{
  result = qword_1ECDE33C8;
  if (!qword_1ECDE33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33C8);
  }

  return result;
}

void sub_1DEEBBFE4()
{
  sub_1DEEBC288(319, &unk_1ECDE33B0);
  if (v0 <= 0x3F)
  {
    sub_1DEEBC124();
    if (v1 <= 0x3F)
    {
      sub_1DEEBC1D0();
      if (v2 <= 0x3F)
      {
        sub_1DEEBC288(319, &qword_1ECDE3658);
        if (v3 <= 0x3F)
        {
          sub_1DEEBC288(319, &qword_1ECDE2C80);
          if (v4 <= 0x3F)
          {
            sub_1DEEBC2D4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1DEEBC124()
{
  if (!qword_1ECDE2CB8)
  {
    type metadata accessor for Zone.ID();
    type metadata accessor for Zone();
    sub_1DEEBC680(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
    v0 = sub_1DEF8D888();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2CB8);
    }
  }
}

void sub_1DEEBC1D0()
{
  if (!qword_1ECDE2CE8)
  {
    sub_1DEEBC234();
    v0 = sub_1DEF8D888();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2CE8);
    }
  }
}

unint64_t sub_1DEEBC234()
{
  result = qword_1ECDE3560;
  if (!qword_1ECDE3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3560);
  }

  return result;
}

void sub_1DEEBC288(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DEF8DDC8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DEEBC2D4()
{
  if (!qword_1ECDE3618)
  {
    sub_1DEF8D3F8();
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE3618);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceDescriptor.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceDescriptor.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DEEBC480()
{
  result = qword_1ECDE3EF0;
  if (!qword_1ECDE3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3EF0);
  }

  return result;
}

unint64_t sub_1DEEBC4D8()
{
  result = qword_1ECDE3EF8;
  if (!qword_1ECDE3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3EF8);
  }

  return result;
}

unint64_t sub_1DEEBC530()
{
  result = qword_1ECDE3F00;
  if (!qword_1ECDE3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3F00);
  }

  return result;
}

uint64_t sub_1DEEBC584()
{
  v0 = sub_1DEF8E168();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DEEBC680(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEEBC6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEEBC728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEBC790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEBC7F8(uint64_t a1)
{
  v3 = type metadata accessor for NetworkBrowser.Monitor();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v27 = v1;
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DEEC7E48(0, v6, 0);
  v7 = v35;
  v8 = -1 << *(a1 + 32);
  v34 = a1 + 64;
  result = sub_1DEF8DE18();
  v10 = result;
  v11 = 0;
  v28 = a1 + 72;
  v29 = v6;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v34 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    v32 = *(a1 + 36);
    v14 = v30;
    sub_1DEECF44C(*(a1 + 56) + *(v31 + 72) * v10, v30, type metadata accessor for NetworkBrowser.Monitor);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (!v16)
    {
      v15 = 0;
    }

    v33 = v15;

    result = sub_1DEECF3EC(v14, type metadata accessor for NetworkBrowser.Monitor);
    v35 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1DEEC7E48((v17 > 1), v18 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v18 + 1;
    v19 = v7 + 16 * v18;
    *(v19 + 32) = v33;
    *(v19 + 40) = v16;
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_24;
    }

    v20 = *(v34 + 8 * v13);
    if ((v20 & (1 << v10)) == 0)
    {
      goto LABEL_25;
    }

    if (v32 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v10 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v28 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1DEE2F804(v10, v32, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1DEE2F804(v10, v32, 0);
    }

LABEL_4:
    ++v11;
    v10 = v12;
    if (v11 == v29)
    {
      return v7;
    }
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
  return result;
}

uint64_t sub_1DEEBCAE4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  if (v2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEBCB54()
{
  if (!v0[1])
  {
    return MEMORY[0x1E12CBF60](0);
  }

  v1 = *v0;
  MEMORY[0x1E12CBF60](1);

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEEBCBCC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DEF8E7A8();
  if (v2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEBCC38(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_1DEF8E4E8();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1DEEBCC7C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC8];
  *(v9 + 16) = 0;
  *(v4 + 56) = v10;
  *(v4 + 64) = v10;
  *(v4 + 72) = 0;
  *(v4 + 80) = v10;
  *(v4 + 88) = v10;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  *(v4 + 16) = v9;
  *(v4 + 24) = a3;
  *(v4 + 48) = v8;
  return v4;
}

uint64_t sub_1DEEBCD00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 56);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + 56) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v48 = *(v0 + 56);

  v11 = 0;
  v44 = v9;
  v45 = v4;
  while (v8)
  {
LABEL_11:
    v15 = __clz(__rbit64(v8)) | (v11 << 6);
    v16 = (*(v48 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v48 + 56) + 8 * v15);
    v20 = qword_1ECDE2E50;

    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_1DEF8D508();
    __swift_project_value_buffer(v21, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v22 = sub_1DEF8D4D8();
    v23 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v22, v23))
    {
      buf = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v49 = v47;
      *buf = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v24 = sub_1DEF8D988();
      v26 = v23;
      v27 = v18;
      v28 = v17;
      v29 = v1;
      v30 = sub_1DEE12A5C(v24, v25, &v49);
      v9 = v44;

      *(buf + 4) = v30;
      v1 = v29;
      v17 = v28;
      v18 = v27;
      _os_log_impl(&dword_1DEE0F000, v22, v26, "Canceling persona browser: %{public}s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1E12CCD70](v47, -1, -1);
      v4 = v45;
      MEMORY[0x1E12CCD70](buf, -1, -1);
    }

    nw_browser_set_state_changed_handler(v19, 0);
    nw_browser_cancel(v19);
    swift_beginAccess();
    v31 = *(v1 + 56);
    v32 = sub_1DEEAF684(v18, v17);
    LOBYTE(v31) = v33;

    if (v31)
    {
      v34 = *(v1 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v1 + 56);
      *(v1 + 56) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DEEB8DF0();
      }

      v12 = *(*(v36 + 48) + 16 * v32 + 8);

      v13 = *(*(v36 + 56) + 8 * v32);
      swift_unknownObjectRelease();
      sub_1DEF76E5C(v32, v36);
      *(v1 + 56) = v36;
    }

    v8 &= v8 - 1;
    swift_endAccess();
    result = swift_unknownObjectRelease();
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v9)
    {

      v37 = *(v1 + 16);

      v38 = *(v1 + 40);

      v39 = *(v1 + 56);

      v40 = *(v1 + 64);

      v41 = *(v1 + 72);

      v42 = *(v1 + 80);

      v43 = *(v1 + 88);

      return v1;
    }

    v8 = *(v4 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEBD088()
{
  sub_1DEEBCD00();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkBrowser.Monitor()
{
  result = qword_1ECDE41C8;
  if (!qword_1ECDE41C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEEBD154()
{
  sub_1DEEBD210();
  if (v0 <= 0x3F)
  {
    sub_1DEEBD260();
    if (v1 <= 0x3F)
    {
      sub_1DEF8D378();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEEBD210()
{
  if (!qword_1ECDE2C80)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2C80);
    }
  }
}

unint64_t sub_1DEEBD260()
{
  result = qword_1ECDE41E0;
  if (!qword_1ECDE41E0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECDE41E0);
  }

  return result;
}

uint64_t sub_1DEEBD2B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1DEEBD300(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1DEEBD354(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1DEEBD36C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1DEEBD3A0()
{
  result = qword_1ECDE41F0;
  if (!qword_1ECDE41F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE41F0);
  }

  return result;
}

uint64_t sub_1DEEBD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v95 = a5;
  v93 = a3;
  v96 = a1;
  v84 = sub_1DEF8D698();
  v83 = *(v84 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1DEF8D6D8();
  v80 = *(v82 - 8);
  v13 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v79 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v91 = &v77 - v17;
  v18 = type metadata accessor for NetworkBrowser.Monitor();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DEF8D3F8();
  v22 = *(v88 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v77 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v77 - v28;
  sub_1DEF8D3E8();
  v30 = v18;
  v90 = v18;
  v31 = *(v18 + 32);

  sub_1DEF8D348();
  *v21 = v96;
  *(v21 + 1) = a2;
  v85 = a2;
  *(v21 + 2) = v93;
  *(v21 + 3) = a4;
  *(v21 + 4) = a7;
  *(v21 + 5) = v95;
  *(v21 + 6) = a6;
  v21[*(v30 + 36)] = 0;
  v78 = a6;

  v92 = sub_1DEF8D398();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v22 + 16;
  v89 = *(v22 + 16);
  v34 = v26;
  v87 = v26;
  v35 = v26;
  v36 = v88;
  v89(v35, v29, v88);
  v37 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v32;
  v93 = v22;
  (*(v22 + 32))(v38 + v37, v34, v36);
  v39 = objc_allocWithZone(MEMORY[0x1E698E778]);

  v40 = sub_1DEF8D918();

  v41 = sub_1DEF8D918();
  v103 = sub_1DEEC4E2C;
  v104 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_1DEEC4EA0;
  v102 = &block_descriptor_3;
  v42 = _Block_copy(&aBlock);
  v43 = v39;
  v44 = v36;
  v45 = v90;
  v46 = [v43 initWithIdentifier:v40 forReason:v41 invalidationBlock:v42];

  _Block_release(v42);
  v47 = v29;
  v48 = v97;
  v49 = v21;

  v50 = v87;
  v51 = v44;
  v52 = v44;
  v77 = v33;
  v53 = v89;
  v89(v87, v47, v52);
  v92 = v49;
  v54 = v49;
  v55 = v91;
  sub_1DEECF44C(v54, v91, type metadata accessor for NetworkBrowser.Monitor);
  (*(v94 + 56))(v55, 0, 1, v45);
  swift_beginAccess();
  sub_1DEF33498(v55, v50);
  swift_endAccess();
  sub_1DEEBF570();
  swift_beginAccess();
  v56 = v46;
  v57 = v48[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v105 = v48[10];
  v48[10] = 0x8000000000000000;
  sub_1DEECE724(v56, v47, isUniquelyReferenced_nonNull_native, &v105);
  v48[10] = v105;
  swift_endAccess();
  sub_1DEEBEA48();
  swift_beginAccess();
  v59 = v48[11];
  if (*(v59 + 16) && (v60 = sub_1DEE13224(v96, v85), (v61 & 1) != 0))
  {
    v62 = *(v59 + 56) + 40 * v60;
    v63 = *(v62 + 16);
    v105 = *v62;
    v106 = v63;
    v64 = *(v62 + 32);
    v107 = v105;
    v108 = v63;
    swift_endAccess();
    v96 = v47;
    v53(v86, v47, v51);
    swift_beginAccess();
    sub_1DEECE8F0(&v107, &aBlock);
    sub_1DEECE8F0(&v108, &aBlock);
    swift_unknownObjectRetain();
    v65 = sub_1DEEBFCD8(&aBlock);
    v67 = v66;
    if (!(*(v94 + 48))(v66, 1, v45))
    {
      *(v67 + *(v45 + 36)) = 1;
    }

    (v65)(&aBlock, 0);
    swift_endAccess();
    v94 = *(v93 + 8);
    (v94)(v86, v51);
    v97 = v48[3];
    v68 = swift_allocObject();
    v69 = v78;
    *(v68 + 16) = v95;
    *(v68 + 24) = v69;
    v70 = v106;
    *(v68 + 32) = v105;
    *(v68 + 48) = v70;
    *(v68 + 64) = v64;
    *(v68 + 72) = v56;
    v103 = sub_1DEECE94C;
    v104 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v100 = 1107296256;
    v101 = sub_1DEE3F0C0;
    v102 = &block_descriptor_16;
    v71 = _Block_copy(&aBlock);

    v72 = v56;
    sub_1DEECE8F0(&v107, v98);
    sub_1DEECE8F0(&v108, v98);
    swift_unknownObjectRetain();
    v73 = v79;
    sub_1DEF8D6B8();
    v98[0] = MEMORY[0x1E69E7CC0];
    sub_1DEE1B968(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v74 = v81;
    v75 = v84;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v73, v74, v71);
    _Block_release(v71);
    sub_1DEE46B54(&v107);
    sub_1DEE46B54(&v108);

    swift_unknownObjectRelease();
    (*(v83 + 8))(v74, v75);
    (*(v80 + 8))(v73, v82);
    sub_1DEECF3EC(v92, type metadata accessor for NetworkBrowser.Monitor);
    (v94)(v96, v51);
  }

  else
  {
    swift_endAccess();

    sub_1DEECF3EC(v92, type metadata accessor for NetworkBrowser.Monitor);
    return (*(v93 + 8))(v47, v51);
  }
}

uint64_t sub_1DEEBDE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DEF8D698();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D6D8();
  v25 = *(v9 - 8);
  v26 = v9;
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(result + 24);
    v24[0] = v8;
    v24[1] = v17;
    v18 = result;
    (*(v14 + 16))(v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
    v19 = v4;
    v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v14 + 32))(v21 + v20, v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    aBlock[4] = sub_1DEECF388;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_39;
    v22 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B968(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v23 = v24[0];
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v12, v23, v22);
    _Block_release(v22);
    (*(v5 + 8))(v23, v19);
    (*(v25 + 8))(v12, v26);
  }

  return result;
}

void sub_1DEEBE208(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEEBE26C(a2, a1);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1DEEBE26C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4200, &unk_1DEF91DB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = &v38 - v7;
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v15 = sub_1DEF8D508();
  __swift_project_value_buffer(v15, qword_1ECDF6010);
  v42 = *(v9 + 16);
  v43 = v9 + 16;
  v42(v14, a1, v8);
  v16 = sub_1DEF8D4D8();
  v17 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v40 = a1;
    v19 = v18;
    v39 = swift_slowAlloc();
    v45 = v39;
    *v19 = 136446210;
    sub_1DEE1B968(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v20 = sub_1DEF8E2E8();
    v41 = v2;
    v22 = v21;
    (*(v9 + 8))(v14, v8);
    v23 = sub_1DEE12A5C(v20, v22, &v45);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1DEE0F000, v16, v17, "Invalidating browser monitor: %{public}s", v19, 0xCu);
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    v25 = v19;
    a1 = v40;
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v26 = v46;
  v27 = v42;
  v42(v46, a1, v8);
  v28 = type metadata accessor for NetworkBrowser.Monitor();
  v29 = v44;
  (*(*(v28 - 8) + 56))(v44, 1, 1, v28);
  swift_beginAccess();
  sub_1DEF33498(v29, v26);
  swift_endAccess();
  swift_beginAccess();
  v30 = *(a2 + 80);
  if (*(v30 + 16) && (v31 = sub_1DEEAF350(a1), (v32 & 1) != 0))
  {
    v33 = *(v30 + 56);
    v34 = a1;
    v35 = *(v33 + 8 * v31);
    swift_endAccess();
    v36 = v35;
    a1 = v34;
    [v36 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  v27(v26, a1, v8);
  swift_beginAccess();
  sub_1DEF336B8(0, v26);
  swift_endAccess();
  sub_1DEEBE6B0();
  return sub_1DEEBEA48();
}

uint64_t sub_1DEEBE6B0()
{
  v1 = v0;
  os_unfair_lock_assert_owner((v0[2] + 16));
  result = swift_beginAccess();
  if (!*(v0[8] + 16))
  {
    swift_beginAccess();
    v3 = v0[7];
    v6 = *(v3 + 64);
    v5 = v3 + 64;
    v4 = v6;
    v7 = 1 << *(v0[7] + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4;
    v10 = (v7 + 63) >> 6;
    v42 = v0[7];

    v11 = 0;
    v38 = v10;
    v39 = v5;
    while (v9)
    {
LABEL_12:
      v15 = __clz(__rbit64(v9)) | (v11 << 6);
      v16 = (*(v42 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v42 + 56) + 8 * v15);
      v20 = qword_1ECDE2E50;

      swift_unknownObjectRetain();
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_1DEF8D508();
      __swift_project_value_buffer(v21, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v22 = sub_1DEF8D4D8();
      v23 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v22, v23))
      {
        buf = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v43 = v41;
        *buf = 136446210;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v24 = sub_1DEF8D988();
        v26 = v23;
        v27 = v18;
        v28 = v17;
        v29 = v1;
        v30 = sub_1DEE12A5C(v24, v25, &v43);
        v10 = v38;

        *(buf + 4) = v30;
        v1 = v29;
        v17 = v28;
        v18 = v27;
        _os_log_impl(&dword_1DEE0F000, v22, v26, "Canceling browser: %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x1E12CCD70](v41, -1, -1);
        v5 = v39;
        MEMORY[0x1E12CCD70](buf, -1, -1);
      }

      nw_browser_set_state_changed_handler(v19, 0);
      nw_browser_cancel(v19);
      swift_beginAccess();
      v31 = v1[7];
      v32 = sub_1DEEAF684(v18, v17);
      LOBYTE(v31) = v33;

      if (v31)
      {
        v34 = v1[7];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v1[7];
        v1[7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DEEB8DF0();
        }

        v12 = *(*(v36 + 48) + 16 * v32 + 8);

        v13 = *(*(v36 + 56) + 8 * v32);
        swift_unknownObjectRelease();
        sub_1DEF76E5C(v32, v36);
        v1[7] = v36;
      }

      v9 &= v9 - 1;
      swift_endAccess();
      result = swift_unknownObjectRelease();
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v10)
      {

        swift_beginAccess();
        v37 = v1[11];
        v1[11] = MEMORY[0x1E69E7CC8];
      }

      v9 = *(v5 + 8 * v14);
      ++v11;
      if (v9)
      {
        v11 = v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEBEA48()
{
  v1 = v0;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  v2 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v103 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v112 = &v96 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v96 - v7;
  v114 = sub_1DEF8D378();
  v9 = *(v114 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v114 - 8);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v96 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v100 = &v96 - v27;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  swift_beginAccess();
  v28 = *(v0 + 72);
  v97 = v15;
  v96 = v12;
  v99 = v22;
  if (v28)
  {

    sub_1DEEEB540();

    v29 = *(v1 + 72);
  }

  *(v1 + 72) = 0;

  swift_beginAccess();
  v98 = v1;
  v30 = *(v1 + 64);

  v104 = v25;
  sub_1DEF8D2C8();
  v31 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v30 + 64);
  v35 = (v32 + 63) >> 6;
  v109 = (v9 + 16);
  v105 = (v9 + 8);
  v101 = (v9 + 32);
  v113 = v30;

  v36 = 0;
  v37 = v115;
  v110 = v35;
  v111 = v30 + 64;
  while (v34)
  {
    v38 = v36;
LABEL_13:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v40 = v39 | (v38 << 6);
    v41 = v113;
    v42 = *(v113 + 48);
    v43 = sub_1DEF8D3F8();
    v44 = *(v43 - 8);
    (*(v44 + 16))(v8, v42 + *(v44 + 72) * v40, v43);
    v45 = *(v41 + 56);
    v46 = type metadata accessor for NetworkBrowser.Monitor();
    sub_1DEECF44C(v45 + *(*(v46 - 8) + 72) * v40, &v8[*(v37 + 48)], type metadata accessor for NetworkBrowser.Monitor);
    v1 = v112;
    sub_1DEE17214(v8, v112, &unk_1ECDE4220, &unk_1DEF91DC0);
    v47 = v1 + *(v37 + 48);
    LOBYTE(v45) = *(v47 + *(v46 + 36));
    sub_1DEECF3EC(v47, type metadata accessor for NetworkBrowser.Monitor);
    v48 = *(v44 + 8);
    v48(v1, v43);
    if (v45)
    {
      sub_1DEE171B4(v8, &unk_1ECDE4220, &unk_1DEF91DC0);
      v36 = v38;
    }

    else
    {
      sub_1DEE17214(v8, v1, &unk_1ECDE4220, &unk_1DEF91DC0);
      v49 = v1 + *(v37 + 48);
      v50 = *v109;
      v51 = v49 + *(v46 + 32);
      v52 = v106;
      v108 = v48;
      v107 = v43;
      v53 = v114;
      v50(v106, v51, v114);
      sub_1DEECF3EC(v49, type metadata accessor for NetworkBrowser.Monitor);
      v54 = v103;
      sub_1DEE17214(v8, v103, &unk_1ECDE4220, &unk_1DEF91DC0);
      v55 = v54 + *(v115 + 48);
      v56 = *(v55 + 32);
      sub_1DEECF3EC(v55, type metadata accessor for NetworkBrowser.Monitor);
      v57 = v102;
      sub_1DEF8D2E8();
      v58 = *v105;
      (*v105)(v52, v53);
      v59 = v54;
      v60 = v107;
      v61 = v108;
      v108(v59, v107);
      v61(v1, v60);
      v62 = v104;
      LOBYTE(v61) = sub_1DEF8D308();
      sub_1DEE171B4(v8, &unk_1ECDE4220, &unk_1DEF91DC0);
      if (v61)
      {
        v63 = v114;
        v58(v62, v114);
        (*v101)(v62, v57, v63);
      }

      else
      {
        v58(v57, v114);
      }

      v36 = v38;
      v37 = v115;
    }

    v35 = v110;
    v31 = v111;
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v38 >= v35)
    {
      break;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      goto LABEL_13;
    }
  }

  v1 = v100;
  v8 = v114;
  (*v101)(v100, v104, v114);

  if (qword_1ECDE2E50 == -1)
  {
    goto LABEL_19;
  }

LABEL_31:
  swift_once();
LABEL_19:
  v64 = sub_1DEF8D508();
  __swift_project_value_buffer(v64, qword_1ECDF6010);
  v65 = *v109;
  v66 = v99;
  (*v109)(v99, v1, v8);
  v67 = sub_1DEF8D4D8();
  v68 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v116 = v70;
    *v69 = 136446210;
    sub_1DEE1B968(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
    v71 = sub_1DEF8E2E8();
    v73 = v72;
    v74 = v66;
    v75 = *v105;
    (*v105)(v74, v8);
    v76 = sub_1DEE12A5C(v71, v73, &v116);

    *(v69 + 4) = v76;
    _os_log_impl(&dword_1DEE0F000, v67, v68, "Browser invalidation timer will fire at %{public}s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1E12CCD70](v70, -1, -1);
    v77 = v69;
    v1 = v100;
    MEMORY[0x1E12CCD70](v77, -1, -1);
  }

  else
  {

    v78 = v66;
    v75 = *v105;
    (*v105)(v78, v8);
  }

  v79 = v106;
  sub_1DEF8D2C8();
  v80 = sub_1DEF8D308();
  v75(v79, v8);
  if ((v80 & 1) == 0)
  {
    return (v75)(v1, v8);
  }

  v81 = v97;
  sub_1DEF8D348();
  sub_1DEE1B968(&qword_1ECDE4DE0, MEMORY[0x1E6969530]);
  if (sub_1DEF8D8F8())
  {
    v82 = v1;
  }

  else
  {
    v82 = v81;
  }

  v83 = v96;
  v65(v96, v82, v8);
  sub_1DEF8D2D8();
  v85 = v84;
  v86 = type metadata accessor for BasicTimer();
  v87 = swift_allocObject();
  *(v87 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v87 + 24) = v88;
  v117 = v86;
  v118 = &protocol witness table for BasicTimer;
  *&v116 = v87;
  type metadata accessor for KeepAliveTimer();
  v89 = swift_allocObject();
  *(v89 + 56) = 0;
  sub_1DEE2F1AC(&v116, v89 + 16);
  v90 = v98;
  v91 = *(v98 + 72);
  *(v98 + 72) = v89;

  swift_beginAccess();
  if (*(v90 + 72))
  {
    swift_endAccess();
    v92 = *(v90 + 24);
    v93 = v1;
    v94 = swift_allocObject();
    swift_weakInit();

    sub_1DEEEB2E8(v92, sub_1DEECEA1C, v94, fmax(v85, 1.0));

    v75(v83, v8);
    v75(v81, v8);
    v75(v93, v8);
  }

  else
  {
    v75(v83, v8);
    v75(v81, v8);
    v75(v1, v8);
    return swift_endAccess();
  }
}

uint64_t sub_1DEEBF570()
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
  v1 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v75 - v4;
  os_unfair_lock_assert_owner((*(v0 + 16) + 16));
  swift_beginAccess();
  v75 = v0;
  v5 = *(v0 + 64);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v79 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
LABEL_4:
  if (v9)
  {
    v12 = v11;
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v12 << 6);
      v15 = v79;
      v16 = v79[6];
      v17 = sub_1DEF8D3F8();
      v18 = *(v17 - 8);
      v19 = v76;
      (*(v18 + 16))(v76, &v16[*(v18 + 72) * v14], v17);
      v20 = v15[7];
      v21 = (type metadata accessor for NetworkBrowser.Monitor() - 8);
      v22 = v20 + *(*v21 + 72) * v14;
      v23 = v78;
      sub_1DEECF44C(v22, v19 + *(v78 + 48), type metadata accessor for NetworkBrowser.Monitor);
      v24 = v77;
      sub_1DEE1BA88(v19, v77, &unk_1ECDE4220, &unk_1DEF91DC0);
      v25 = v24 + *(v23 + 48);
      LOBYTE(v23) = *(v25 + v21[11]);
      sub_1DEECF3EC(v25, type metadata accessor for NetworkBrowser.Monitor);
      (*(v18 + 8))(v24, v17);
      if ((v23 & 1) == 0)
      {

        v26 = v75;
        v27 = *(v75 + 64);

        v29 = sub_1DEEBC7F8(v28);

        v30 = sub_1DEEA3F04(v29);

        swift_beginAccess();
        v31 = *(v26 + 56);

        v33 = sub_1DEE4FE4C(v32);
        if (*(v33 + 16) <= *(v30 + 16) >> 3)
        {
          aBlock = v30;
          sub_1DEEC8E90(v33);

          v34 = aBlock;
        }

        else
        {
          v34 = sub_1DEEC9F88(v33, v30);
        }

        v36 = 0;
        v37 = (v34 + 56);
        v38 = 1 << *(v34 + 32);
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v40 = v39 & *(v34 + 56);
        v41 = (v38 + 63) >> 6;
        v79 = &v83;
        v76 = (v34 + 56);
        v77 = v41;
        v78 = v34;
        while (2)
        {
          if (!v40)
          {
            while (1)
            {
              v45 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_40;
              }

              if (v45 >= v41)
              {
              }

              v40 = *&v37[8 * v45];
              ++v36;
              if (v40)
              {
                v36 = v45;
                break;
              }
            }
          }

          v46 = (*(v34 + 48) + ((v36 << 10) | (16 * __clz(__rbit64(v40)))));
          v48 = *v46;
          v47 = v46[1];
          if (v47)
          {
            v49 = *v46;
          }

          else
          {
            v49 = 0;
          }

          v50 = *(v26 + 32);
          v51 = *(v26 + 40);
          LOBYTE(aBlock) = *(v26 + 48);
          swift_bridgeObjectRetain_n();
          v52 = sub_1DEEF5F88(v50, v51, &aBlock);
          v53 = swift_allocObject();
          swift_weakInit();
          v54 = swift_allocObject();
          v54[2] = v53;
          v54[3] = v52;
          v54[4] = v48;
          v54[5] = v47;
          v54[6] = v49;
          v54[7] = v47;
          v85 = sub_1DEECEB94;
          v86 = v54;
          aBlock = MEMORY[0x1E69E9820];
          v82 = 1107296256;
          v83 = sub_1DEEC2E04;
          v84 = &block_descriptor_24;
          v55 = _Block_copy(&aBlock);
          swift_bridgeObjectRetain_n();
          swift_unknownObjectRetain();

          nw_browser_set_state_changed_handler(v52, v55);
          _Block_release(v55);
          v56 = swift_allocObject();
          swift_weakInit();
          v57 = swift_allocObject();
          v57[2] = v56;
          v57[3] = v52;
          v57[4] = v49;
          v57[5] = v47;
          v85 = sub_1DEECEBA4;
          v86 = v57;
          aBlock = MEMORY[0x1E69E9820];
          v82 = 1107296256;
          v83 = sub_1DEEC4D04;
          v84 = &block_descriptor_31;
          v58 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          nw_browser_set_browse_results_changed_handler(v52, v58);
          _Block_release(v58);
          nw_browser_set_queue(v52, *(v26 + 24));
          nw_browser_start(v52);
          swift_beginAccess();
          swift_unknownObjectRetain();
          v59 = *(v26 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = *(v26 + 56);
          v61 = v80;
          *(v26 + 56) = 0x8000000000000000;
          v62 = sub_1DEEAF684(v48, v47);
          v64 = v61[2];
          v65 = (v63 & 1) == 0;
          v66 = __OFADD__(v64, v65);
          v67 = v64 + v65;
          if (v66)
          {
            goto LABEL_41;
          }

          v68 = v63;
          if (v61[3] >= v67)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_33;
            }

            v74 = v62;
            sub_1DEEB8DF0();
            v62 = v74;
            v70 = v80;
            if (v68)
            {
              goto LABEL_18;
            }

LABEL_34:
            v70[(v62 >> 6) + 8] |= 1 << v62;
            v71 = (v70[6] + 16 * v62);
            *v71 = v48;
            v71[1] = v47;
            *(v70[7] + 8 * v62) = v52;
            v72 = v70[2];
            v66 = __OFADD__(v72, 1);
            v73 = v72 + 1;
            if (v66)
            {
              goto LABEL_42;
            }

            v70[2] = v73;
          }

          else
          {
            sub_1DEEB4064(v67, isUniquelyReferenced_nonNull_native);
            v62 = sub_1DEEAF684(v48, v47);
            if ((v68 & 1) != (v69 & 1))
            {
              goto LABEL_43;
            }

LABEL_33:
            v70 = v80;
            if ((v68 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_18:
            v42 = v70[7];
            v43 = *(v42 + 8 * v62);
            *(v42 + 8 * v62) = v52;

            swift_unknownObjectRelease();
          }

          v41 = v77;
          v34 = v78;
          v40 &= v40 - 1;
          v44 = v75;
          v37 = v76;
          *(v75 + 56) = v70;
          v26 = v44;
          swift_endAccess();
          swift_unknownObjectRelease();
          continue;
        }
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

void (*sub_1DEEBFCD8(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1DEF8D3F8();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1DEECDF5C(v4, v9);
  return sub_1DEEBFDF0;
}

void sub_1DEEBFDF0(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_1DEEBFE68(void (*a1)(void **, uint64_t), uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v18 = a3[1];
  v19 = v6;
  v7 = *a3;
  v8 = *(a3 + 3);
  v9 = *(a3 + 4);
  v10 = *(a3 + 2);
  v12 = 0;
  v13 = v7;
  v14 = v10;
  v15 = v8;
  v16 = v9;
  v17 = 0;
  sub_1DEECE8F0(&v19, v11);
  sub_1DEECE8F0(&v18, v11);
  swift_unknownObjectRetain();
  a1(&v12, a4);
  sub_1DEECE9C0(v12, v13, *(&v13 + 1), v14, v15, v16, v17);
}

uint64_t sub_1DEEBFF0C()
{
  v0 = type metadata accessor for NetworkBrowser.Monitor();
  v60 = *(v0 - 8);
  v1 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v51 - v5;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v51 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v65 = v6;
    v72 = MEMORY[0x1E69E7CC8];
    v73 = MEMORY[0x1E69E7CC8];
    v20 = *(result + 16);
    v21 = result;

    os_unfair_lock_lock(v20 + 4);
    v51 = v21;
    sub_1DEEC05D0(v21, &v72, &v73);
    os_unfair_lock_unlock(v20 + 4);

    v22 = *(v72 + 64);
    v66 = v72 + 64;
    v23 = 1 << *(v72 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v52 = (v23 + 63) >> 6;
    v53 = v7 + 16;
    v64 = (v7 + 32);
    v56 = v7;
    v61 = v72;
    v62 = (v7 + 8);

    v26 = 0;
    v57 = v3;
    v55 = v10;
    v54 = v16;
    while (v25)
    {
      v32 = v26;
      v33 = v65;
LABEL_17:
      v36 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
      v37 = v36 | (v32 << 6);
      v38 = v61;
      v39 = v56;
      (*(v56 + 16))(v58, *(v61 + 48) + *(v56 + 72) * v37, v33);
      v40 = v59;
      sub_1DEECF44C(*(v38 + 56) + *(v60 + 72) * v37, v59, type metadata accessor for NetworkBrowser.Monitor);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      v42 = *(v41 + 48);
      v16 = v54;
      (*(v39 + 32))();
      sub_1DEECF4B4(v40, &v16[v42], type metadata accessor for NetworkBrowser.Monitor);
      (*(*(v41 - 8) + 56))(v16, 0, 1, v41);
      v3 = v57;
      v10 = v55;
LABEL_18:
      v43 = v63;
      sub_1DEE1BA88(v16, v63, &qword_1ECDE4240, &qword_1DEF91DD0);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
      {
      }

      sub_1DEECF4B4(v43 + *(v44 + 48), v3, type metadata accessor for NetworkBrowser.Monitor);
      v45 = v65;
      (*v64)(v10, v43, v65);
      v46 = v73;
      if (*(v73 + 16) && (v47 = sub_1DEEAF350(v10), (v48 & 1) != 0))
      {
        v27 = *(*(v46 + 56) + 8 * v47);
        v49 = *v62;
        swift_unknownObjectRetain();
        v49(v10, v45);
      }

      else
      {
        (*v62)(v10, v45);
        v27 = 0;
      }

      v29 = *(v3 + 5);
      v28 = *(v3 + 6);
      sub_1DEECEA24();
      v30 = swift_allocError();
      *v31 = 1;
      v67 = v30;
      v68 = 0u;
      v69 = 0u;
      v70 = 0;
      v71 = 1;
      v29(&v67, v27);
      swift_unknownObjectRelease();
      sub_1DEECE9C0(v67, v68, *(&v68 + 1), v69, *(&v69 + 1), v70, v71);
      result = sub_1DEECF3EC(v3, type metadata accessor for NetworkBrowser.Monitor);
    }

    if (v52 <= v26 + 1)
    {
      v34 = v26 + 1;
    }

    else
    {
      v34 = v52;
    }

    v35 = v34 - 1;
    v33 = v65;
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v52)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        (*(*(v50 - 8) + 56))(v16, 1, 1, v50);
        v25 = 0;
        v26 = v35;
        goto LABEL_18;
      }

      v25 = *(v66 + 8 * v32);
      ++v26;
      if (v25)
      {
        v26 = v32;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEC05D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v126 = a3;
  v132 = a2;
  v4 = type metadata accessor for NetworkBrowser.Monitor();
  v148 = *(v4 - 8);
  v5 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v122[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v122[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v122[-v13];
  v14 = sub_1DEF8D3F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v131 = &v122[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v140 = &v122[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v122[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v122[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122[-v25];
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v122[-v28];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v122[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v122[-v34];
  v139 = sub_1DEF8D378();
  v35 = *(v139 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v134 = &v122[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v138 = &v122[-v39];
  sub_1DEF8D348();
  swift_beginAccess();
  v136 = a1;
  v40 = *(a1 + 64);
  v41 = v40 + 64;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 64);
  v130 = (v42 + 63) >> 6;
  v157 = (v15 + 16);
  v155 = (v15 + 32);
  v137 = (v35 + 8);
  v145 = v15;
  v152 = (v15 + 8);
  v127 = (v148 + 48);
  v144 = v40;

  v45 = v32;
  v46 = v14;
  v47 = 0;
  *&v48 = 136446466;
  v123 = v48;
  v150 = v4;
  v151 = v26;
  v141 = v46;
  v153 = v11;
  v154 = v45;
  v147 = v41;
  if (!v44)
  {
    goto LABEL_6;
  }

  do
  {
    while (1)
    {
      v52 = v47;
LABEL_16:
      v57 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      v58 = v57 | (v52 << 6);
      v59 = v144;
      v60 = v145;
      v54 = v141;
      (*(v145 + 16))(v142, *(v144 + 48) + *(v145 + 72) * v58, v141);
      v61 = v143;
      sub_1DEECF44C(*(v59 + 56) + *(v148 + 72) * v58, v143, type metadata accessor for NetworkBrowser.Monitor);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      v63 = *(v62 + 48);
      v55 = v154;
      (*(v60 + 32))();
      sub_1DEECF4B4(v61, v55 + v63, type metadata accessor for NetworkBrowser.Monitor);
      (*(*(v62 - 8) + 56))(v55, 0, 1, v62);
      v53 = v151;
      v51 = v149;
LABEL_17:
      sub_1DEE1BA88(v55, v51, &qword_1ECDE4240, &qword_1DEF91DD0);
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      if ((*(*(v64 - 8) + 48))(v51, 1, v64) == 1)
      {

        v120 = sub_1DEEBE6B0();
        sub_1DEEBEA48(v120);
        return (*v137)(v138, v139);
      }

      v65 = *(v64 + 48);
      v26 = v53;
      v46 = v54;
      (*v155)(v53, v51, v54);
      v66 = v51 + v65;
      v67 = v153;
      sub_1DEECF4B4(v66, v153, type metadata accessor for NetworkBrowser.Monitor);
      if (*(v67 + *(v150 + 36)))
      {
        sub_1DEECF3EC(v67, type metadata accessor for NetworkBrowser.Monitor);
        (*v152)(v53, v54);
        goto LABEL_43;
      }

      v68 = *(v67 + 32);
      v69 = v67;
      v70 = v67 + *(v150 + 32);
      v71 = v134;
      sub_1DEF8D2E8();
      LOBYTE(v70) = sub_1DEF8D308();
      (*v137)(v71, v139);
      if (v70)
      {
        break;
      }

      sub_1DEECF3EC(v69, type metadata accessor for NetworkBrowser.Monitor);
      v26 = v53;
      (*v152)(v53, v54);
      v41 = v147;
      v45 = v154;
      if (!v44)
      {
        goto LABEL_6;
      }
    }

    v72 = v53;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v73 = sub_1DEF8D508();
    __swift_project_value_buffer(v73, qword_1ECDF6010);
    v74 = *v157;
    v75 = v128;
    (*v157)(v128, v72, v54);
    v76 = v129;
    sub_1DEECF44C(v153, v129, type metadata accessor for NetworkBrowser.Monitor);
    v77 = sub_1DEF8D4D8();
    v78 = sub_1DEF8DC98();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v156 = v125;
      *v79 = v123;
      sub_1DEE1B968(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v124 = v78;
      v80 = sub_1DEF8E2E8();
      v81 = v75;
      v82 = v76;
      v84 = v83;
      v146 = *v152;
      v146(v81, v46);
      v85 = sub_1DEE12A5C(v80, v84, &v156);

      *(v79 + 4) = v85;
      *(v79 + 12) = 2082;
      v86 = *v82;
      v87 = v82[1];

      sub_1DEECF3EC(v82, type metadata accessor for NetworkBrowser.Monitor);
      v88 = sub_1DEE12A5C(v86, v87, &v156);

      *(v79 + 14) = v88;
      _os_log_impl(&dword_1DEE0F000, v77, v124, "Browser monitor %{public}s failed to find device: %{public}s", v79, 0x16u);
      v89 = v125;
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v89, -1, -1);
      v90 = v79;
      v91 = v150;
      v72 = v151;
      MEMORY[0x1E12CCD70](v90, -1, -1);
    }

    else
    {

      sub_1DEECF3EC(v76, type metadata accessor for NetworkBrowser.Monitor);
      v146 = *v152;
      v146(v75, v46);
      v91 = v150;
    }

    v74(v135, v72, v46);
    swift_beginAccess();
    v92 = sub_1DEEBFCD8(&v156);
    v94 = v93;
    if (!(*v127)(v93, 1, v91))
    {
      *(v94 + *(v91 + 36)) = 1;
    }

    (v92)(&v156, 0);
    swift_endAccess();
    v146(v135, v46);
    v95 = v140;
    v74(v140, v72, v46);
    sub_1DEECF44C(v153, v133, type metadata accessor for NetworkBrowser.Monitor);
    v96 = v132;
    v97 = *v132;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = *v96;
    v99 = v156;
    *v96 = 0x8000000000000000;
    v100 = sub_1DEEAF350(v95);
    v102 = *(v99 + 16);
    v103 = (v101 & 1) == 0;
    v104 = __OFADD__(v102, v103);
    v105 = v102 + v103;
    if (v104)
    {
      goto LABEL_47;
    }

    v106 = v101;
    if (*(v99 + 24) >= v105)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v119 = v100;
        sub_1DEEB8F5C();
        v100 = v119;
      }
    }

    else
    {
      sub_1DEEB432C(v105, isUniquelyReferenced_nonNull_native);
      v100 = sub_1DEEAF350(v140);
      if ((v106 & 1) != (v107 & 1))
      {
        goto LABEL_49;
      }
    }

    v26 = v151;
    v108 = v156;
    if (v106)
    {
      sub_1DEECEA78(v133, v156[7] + *(v148 + 72) * v100);
      v146(v140, v46);
    }

    else
    {
      v156[(v100 >> 6) + 8] |= 1 << v100;
      v109 = v100;
      v110 = v140;
      v74((v108[6] + *(v145 + 72) * v100), v140, v46);
      sub_1DEECF4B4(v133, v108[7] + *(v148 + 72) * v109, type metadata accessor for NetworkBrowser.Monitor);
      v146(v110, v46);
      v111 = v108[2];
      v104 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v104)
      {
        goto LABEL_48;
      }

      v108[2] = v112;
      v26 = v151;
    }

    v113 = *v132;
    *v132 = v108;

    v74(v131, v26, v46);
    v114 = v136;
    swift_beginAccess();
    v115 = *(v114 + 80);
    if (*(v115 + 16) && (v116 = sub_1DEEAF350(v26), (v117 & 1) != 0))
    {
      v118 = *(*(v115 + 56) + 8 * v116);
      swift_unknownObjectRetain();
    }

    else
    {
      v118 = 0;
    }

    swift_endAccess();
    sub_1DEF336B8(v118, v131);
    sub_1DEECF3EC(v153, type metadata accessor for NetworkBrowser.Monitor);
    v146(v26, v46);
LABEL_43:
    v41 = v147;
    v45 = v154;
  }

  while (v44);
LABEL_6:
  if (v130 <= v47 + 1)
  {
    v49 = v47 + 1;
  }

  else
  {
    v49 = v130;
  }

  v50 = v49 - 1;
  v51 = v149;
  while (1)
  {
    v52 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v52 >= v130)
    {
      v53 = v26;
      v54 = v46;
      v55 = v45;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
      v44 = 0;
      v47 = v50;
      goto LABEL_17;
    }

    v44 = *(v41 + 8 * v52);
    ++v47;
    if (v44)
    {
      v47 = v52;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

void sub_1DEEC1488(int a1, uint64_t a2, uint64_t a3, NSObject *a4, void (**a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, void *a8)
{
  v116 = a5;
  LODWORD(v12) = a1;
  v13 = type metadata accessor for NetworkBrowser.Monitor();
  v120 = *(v13 - 8);
  v14 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v111 - v17;
  v126 = sub_1DEF8D3F8();
  v122 = *(v126 - 8);
  v18 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v121 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v118 = &v111 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v111 - v27;
  v28 = sub_1DEF8D788();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = (&v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    v34 = *(Strong + 24);
    *v32 = v34;
    (*(v29 + 104))(v32, *MEMORY[0x1E69E8020], v28);
    v35 = v34;
    LOBYTE(v34) = sub_1DEF8D7B8();
    (*(v29 + 8))(v32, v28);
    if ((v34 & 1) == 0)
    {
      goto LABEL_49;
    }

    v115 = a6;
    if (qword_1ECDE2E50 != -1)
    {
      goto LABEL_50;
    }

    while (1)
    {
      v36 = sub_1DEF8D508();
      v37 = __swift_project_value_buffer(v36, qword_1ECDF6010);
      swift_unknownObjectRetain();
      v124 = v37;
      v38 = sub_1DEF8D4D8();
      v39 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      v40 = os_log_type_enabled(v38, v39);
      v117 = v25;
      v25 = a7;
      v41 = a8;
      if (v40)
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v127 = v43;
        *v42 = 136446210;
        v133 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v44 = sub_1DEF8D988();
        v46 = sub_1DEE12A5C(v44, v45, &v127);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_1DEE0F000, v38, v39, "%{public}s; Browser state changed", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1E12CCD70](v43, -1, -1);
        MEMORY[0x1E12CCD70](v42, -1, -1);
      }

      if (v12 > 2)
      {
        break;
      }

      if (v12 == 1)
      {
        swift_unknownObjectRetain();
        v101 = sub_1DEF8D4D8();
        v102 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v127 = v104;
          *v103 = 136446210;
          v133 = a4;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
          v105 = sub_1DEF8D988();
          v107 = sub_1DEE12A5C(v105, v106, &v127);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_1DEE0F000, v101, v102, "%{public}s; Browser state: ready", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x1E12CCD70](v104, -1, -1);
          MEMORY[0x1E12CCD70](v103, -1, -1);
        }

        goto LABEL_41;
      }

      if (v12 != 2)
      {
        goto LABEL_41;
      }

      swift_unknownObjectRetain();
      v47 = sub_1DEF8D4D8();
      v48 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v127 = v50;
        *v49 = 136446210;
        v133 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v51 = sub_1DEF8D988();
        v53 = sub_1DEE12A5C(v51, v52, &v127);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_1DEE0F000, v47, v48, "%{public}s; Browser state: failed", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x1E12CCD70](v50, -1, -1);
        MEMORY[0x1E12CCD70](v49, -1, -1);
      }

      swift_unknownObjectRetain();
      v54 = sub_1DEF8D4D8();
      v55 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v127 = v57;
        *v56 = 136446210;
        v133 = a4;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v58 = sub_1DEF8D988();
        v60 = sub_1DEE12A5C(v58, v59, &v127);

        *(v56 + 4) = v60;
        _os_log_impl(&dword_1DEE0F000, v54, v55, "Canceling browser: %{public}s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        MEMORY[0x1E12CCD70](v57, -1, -1);
        MEMORY[0x1E12CCD70](v56, -1, -1);
      }

      a7 = v117;
      v61 = v115;
      nw_browser_set_state_changed_handler(a4, 0);
      nw_browser_cancel(a4);
      v62 = v112;
      swift_beginAccess();

      sub_1DEF333A0(0, v116, v61);
      swift_endAccess();
      v132 = MEMORY[0x1E69E7CC8];
      v133 = MEMORY[0x1E69E7CC8];
      v63 = *(v62 + 16);

      os_unfair_lock_lock(v63 + 4);
      sub_1DEEC22F0(v62, v25, v41, &v133, &v132);
      os_unfair_lock_unlock(v63 + 4);

      v64 = v132 + 64;
      v65 = 1 << *(v132 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & *(v132 + 64);
      v68 = (v65 + 63) >> 6;
      v114 = v122 + 16;
      v124 = (v122 + 32);
      v116 = (v122 + 8);
      v115 = v132;

      a4 = 0;
      a8 = &unk_1ECDE4220;
      v12 = v121;
      v113 = v64;
      while (v67)
      {
        v74 = a4;
        v75 = v126;
LABEL_28:
        v78 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
        v79 = v78 | (v74 << 6);
        v80 = v115;
        v81 = v122;
        (*(v122 + 16))(v118, *(v115 + 48) + *(v122 + 72) * v79, v75);
        v82 = v119;
        sub_1DEECF44C(*(v80 + 56) + *(v120 + 72) * v79, v119, type metadata accessor for NetworkBrowser.Monitor);
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        v84 = *(v83 + 48);
        a7 = v117;
        (*(v81 + 32))();
        sub_1DEECF4B4(v82, a7 + v84, type metadata accessor for NetworkBrowser.Monitor);
        (*(*(v83 - 8) + 56))(a7, 0, 1, v83);
        v12 = v121;
        v64 = v113;
LABEL_29:
        v85 = v123;
        sub_1DEE1BA88(a7, v123, &qword_1ECDE4240, &qword_1DEF91DD0);
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
        if ((*(*(v86 - 8) + 48))(v85, 1, v86) == 1)
        {

          return;
        }

        sub_1DEECF4B4(v85 + *(v86 + 48), v125, type metadata accessor for NetworkBrowser.Monitor);
        v87 = v126;
        (*v124)(v12, v85, v126);
        v88 = v133;
        if (v133[2].isa && (v89 = sub_1DEEAF350(v12), (v90 & 1) != 0))
        {
          v69 = *(*(v88 + 56) + 8 * v89);
          v91 = *v116;
          swift_unknownObjectRetain();
          v91(v12, v87);
        }

        else
        {
          (*v116)(v12, v87);
          v69 = 0;
        }

        v25 = v125;
        v71 = *(v125 + 40);
        v70 = *(v125 + 48);
        sub_1DEECEA24();
        v72 = swift_allocError();
        *v73 = 0;
        v127 = v72;
        v128 = 0u;
        v129 = 0u;
        v130 = 0;
        v131 = 1;
        v71(&v127, v69);
        swift_unknownObjectRelease();
        sub_1DEECE9C0(v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131);
        sub_1DEECF3EC(v25, type metadata accessor for NetworkBrowser.Monitor);
        a8 = &unk_1ECDE4220;
      }

      if (v68 <= &a4->isa + 1)
      {
        v76 = &a4->isa + 1;
      }

      else
      {
        v76 = v68;
      }

      v77 = (v76 - 1);
      v75 = v126;
      while (1)
      {
        v74 = (&a4->isa + 1);
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v74 >= v68)
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          (*(*(v92 - 8) + 56))(a7, 1, 1, v92);
          v67 = 0;
          a4 = v77;
          goto LABEL_29;
        }

        v67 = *(v64 + 8 * v74);
        a4 = (a4 + 1);
        if (v67)
        {
          a4 = v74;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
    }

    if (v12 == 3)
    {
      swift_unknownObjectRetain();
      v93 = sub_1DEF8D4D8();
      v94 = sub_1DEF8DC98();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v93, v94))
      {
LABEL_45:

        return;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v127 = v96;
      *v95 = 136446210;
      v133 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v108 = sub_1DEF8D988();
      v110 = sub_1DEE12A5C(v108, v109, &v127);

      *(v95 + 4) = v110;
      v100 = "%{public}s; Browser state: cancelled";
    }

    else
    {
      if (v12 != 4)
      {
LABEL_41:

        return;
      }

      swift_unknownObjectRetain();
      v93 = sub_1DEF8D4D8();
      v94 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v93, v94))
      {
        goto LABEL_45;
      }

      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v127 = v96;
      *v95 = 136446210;
      v133 = a4;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
      v97 = sub_1DEF8D988();
      v99 = sub_1DEE12A5C(v97, v98, &v127);

      *(v95 + 4) = v99;
      v100 = "%{public}s; Browser state: waiting";
    }

    _os_log_impl(&dword_1DEE0F000, v93, v94, v100, v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1E12CCD70](v96, -1, -1);
    MEMORY[0x1E12CCD70](v95, -1, -1);
    goto LABEL_45;
  }
}

uint64_t sub_1DEEC22F0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v140 = a2;
  v9 = type metadata accessor for NetworkBrowser.Monitor();
  v133 = *(v9 - 8);
  v10 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v134 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v118 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v120 = &v118 - v15;
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v137 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v118 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v135 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v141 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v118 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v128 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v127 = &v118 - v33;
  v125 = a1;
  swift_beginAccess();
  v34 = *(a1 + 64);

  v36 = v144;
  v37 = sub_1DEECF0F8(v35, v140, a3);
  v118 = v36;

  v38 = 0;
  v40 = v37 + 8;
  v39 = v37[8];
  v121 = v37;
  v41 = *(v37 + 32);
  v42 = v22;
  v43 = 1 << v41;
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v39;
  v46 = (v43 + 63) >> 6;
  v144 = (v17 + 16);
  v132 = (v17 + 32);
  v124 = (v133 + 48);
  v130 = v17;
  v140 = (v17 + 8);
  v126 = a4;
  v131 = v9;
  v136 = v42;
  v123 = v40;
  v122 = v46;
  v129 = a5;
  while (v45)
  {
    v49 = v38;
LABEL_16:
    v53 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v54 = v53 | (v49 << 6);
    v55 = v121;
    v56 = v130;
    v57 = v119;
    (*(v130 + 16))(v119, v121[6] + *(v130 + 72) * v54, v16);
    v58 = v120;
    sub_1DEECF44C(v55[7] + *(v133 + 72) * v54, v120, type metadata accessor for NetworkBrowser.Monitor);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    v60 = *(v59 + 48);
    v61 = *(v56 + 32);
    v62 = v128;
    v61(v128, v57, v16);
    v63 = v58;
    v52 = v62;
    sub_1DEECF4B4(v63, &v62[v60], type metadata accessor for NetworkBrowser.Monitor);
    (*(*(v59 - 8) + 56))(v62, 0, 1, v59);
    v9 = v131;
LABEL_17:
    v64 = v52;
    v65 = v127;
    sub_1DEE1BA88(v64, v127, &qword_1ECDE4240, &qword_1DEF91DD0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {
    }

    v67 = *(v66 + 48);
    v68 = v141;
    (*v132)(v141, v65, v16);
    sub_1DEECF4B4(v65 + v67, v142, type metadata accessor for NetworkBrowser.Monitor);
    v138 = *v144;
    v138(v135, v68, v16);
    v69 = v125;
    swift_beginAccess();
    v70 = sub_1DEEBFCD8(v143);
    v72 = v71;
    if (!(*v124)(v71, 1, v9))
    {
      *(v72 + *(v9 + 36)) = 1;
    }

    (v70)(v143, 0);
    v73 = v126;
    v74 = v129;
    swift_endAccess();
    v139 = *v140;
    v139(v135, v16);
    v75 = v141;
    v76 = v138;
    v138(v136, v141, v16);
    swift_beginAccess();
    v77 = *(v69 + 80);
    v78 = v75;
    if (*(v77 + 16) && (v79 = sub_1DEEAF350(v75), (v80 & 1) != 0))
    {
      v81 = *(*(v77 + 56) + 8 * v79);
      swift_endAccess();
      swift_unknownObjectRetain();
      v82 = *v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v143[0] = *v73;
      ObjectType = swift_getObjectType();
      v85 = v81;
      v86 = v136;
      sub_1DEF41AB8(v85, v136, isUniquelyReferenced_nonNull_native, v143, ObjectType);
      v139(v86, v16);
      *v73 = v143[0];
    }

    else
    {
      swift_endAccess();
      v87 = *v73;
      v88 = v136;
      v89 = sub_1DEEAF350(v136);
      if (v90)
      {
        v91 = v89;
        v92 = *v73;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = *v73;
        v143[0] = *v73;
        if ((v93 & 1) == 0)
        {
          sub_1DEEB9288();
          v94 = v143[0];
        }

        v95 = v139;
        v139((*(v94 + 48) + *(v130 + 72) * v91), v16);
        v96 = *(*(v94 + 56) + 8 * v91);
        swift_unknownObjectRelease();
        sub_1DEF7695C(v91, v94);
        v95(v136, v16);
        *v73 = v94;
        v74 = v129;
      }

      else
      {
        v139(v88, v16);
      }

      v76 = v138;
    }

    v97 = v137;
    v76(v137, v78, v16);
    sub_1DEECF44C(v142, v134, type metadata accessor for NetworkBrowser.Monitor);
    v98 = *v74;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v143[0] = *v74;
    v100 = v143[0];
    v101 = v74;
    *v74 = 0x8000000000000000;
    v103 = sub_1DEEAF350(v97);
    v104 = *(v100 + 16);
    v105 = (v102 & 1) == 0;
    v106 = v104 + v105;
    if (__OFADD__(v104, v105))
    {
      goto LABEL_43;
    }

    v107 = v102;
    if (*(v100 + 24) >= v106)
    {
      if (v99)
      {
        v110 = v143[0];
        if (v102)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DEEB8F5C();
        v110 = v143[0];
        if (v107)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DEEB432C(v106, v99);
      v108 = sub_1DEEAF350(v137);
      if ((v107 & 1) != (v109 & 1))
      {
        goto LABEL_45;
      }

      v103 = v108;
      v110 = v143[0];
      if (v107)
      {
LABEL_4:
        sub_1DEECEA78(v134, v110[7] + *(v133 + 72) * v103);
        v47 = v139;
        v139(v137, v16);
        sub_1DEECF3EC(v142, type metadata accessor for NetworkBrowser.Monitor);
        v47(v141, v16);
        goto LABEL_5;
      }
    }

    v110[(v103 >> 6) + 8] |= 1 << v103;
    v111 = v137;
    v76(v110[6] + *(v130 + 72) * v103, v137, v16);
    sub_1DEECF4B4(v134, v110[7] + *(v133 + 72) * v103, type metadata accessor for NetworkBrowser.Monitor);
    v112 = v139;
    v139(v111, v16);
    sub_1DEECF3EC(v142, type metadata accessor for NetworkBrowser.Monitor);
    v112(v141, v16);
    v113 = v110[2];
    v114 = __OFADD__(v113, 1);
    v115 = v113 + 1;
    if (v114)
    {
      goto LABEL_44;
    }

    v110[2] = v115;
LABEL_5:
    v48 = *v101;
    *v101 = v110;

    v9 = v131;
    v40 = v123;
    v46 = v122;
  }

  if (v46 <= v38 + 1)
  {
    v50 = v38 + 1;
  }

  else
  {
    v50 = v46;
  }

  v51 = v50 - 1;
  v52 = v128;
  while (1)
  {
    v49 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v49 >= v46)
    {
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v116 - 8) + 56))(v52, 1, 1, v116);
      v45 = 0;
      v38 = v51;
      goto LABEL_17;
    }

    v45 = v40[v49];
    ++v38;
    if (v45)
    {
      v38 = v49;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEC2E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DEEC2E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, uint64_t, uint64_t), uint64_t *a6, uint64_t a7)
{
  v145 = a6;
  v159 = a5;
  v10 = type metadata accessor for NetworkBrowser.Monitor();
  v155 = *(v10 - 8);
  v11 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v154 = v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D3F8();
  v156 = *(v13 - 8);
  v14 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v153 = v138 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v158 = v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v157 = v138 - v23;
  v24 = sub_1DEF8D788();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = (v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v30 = result;
  v31 = *(result + 24);
  *v28 = v31;
  (*(v25 + 104))(v28, *MEMORY[0x1E69E8020], v24);
  v32 = v31;
  LOBYTE(v31) = sub_1DEF8D7B8();
  (*(v25 + 8))(v28, v24);
  if ((v31 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (qword_1ECDE2E50 != -1)
  {
LABEL_62:
    swift_once();
  }

  v33 = sub_1DEF8D508();
  __swift_project_value_buffer(v33, qword_1ECDF6010);
  v34 = v159;
  swift_unknownObjectRetain();
  v35 = sub_1DEF8D4D8();
  v36 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v37 = os_log_type_enabled(v35, v36);
  v152 = v13;
  v151 = v16;
  v144 = a7;
  if (v37)
  {
    v38 = a1;
    v39 = swift_slowAlloc();
    v40 = a2;
    v41 = swift_slowAlloc();
    v161 = v41;
    *v39 = 136446210;
    v170[0] = v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v42 = sub_1DEF8D988();
    v44 = sub_1DEE12A5C(v42, v43, &v161);
    v34 = v159;

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1DEE0F000, v35, v36, "%{public}s; Browse results changed", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v45 = v41;
    a2 = v40;
    MEMORY[0x1E12CCD70](v45, -1, -1);
    v46 = v39;
    a1 = v38;
    MEMORY[0x1E12CCD70](v46, -1, -1);
  }

  if (!(a1 | a2))
  {
  }

  swift_unknownObjectRetain();
  v47 = swift_unknownObjectRetain();
  changes = nw_browse_result_get_changes(v47, a2);
  if ((changes & 2) != 0)
  {
    swift_unknownObjectRetain();
    v49 = sub_1DEF8D4D8();
    v58 = sub_1DEF8DCB8();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v49, v58))
    {
      goto LABEL_17;
    }

    v59 = swift_slowAlloc();
    v150 = changes;
    changes = a1;
    v60 = v59;
    v61 = a2;
    v62 = swift_slowAlloc();
    v161 = v62;
    *v60 = 136446210;
    v170[0] = v34;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v63 = sub_1DEF8D988();
    v65 = v30;
    v66 = sub_1DEE12A5C(v63, v64, &v161);

    *(v60 + 4) = v66;
    v30 = v65;
    _os_log_impl(&dword_1DEE0F000, v49, v58, "%{public}s; Browser added device", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    v67 = v62;
    a2 = v61;
    MEMORY[0x1E12CCD70](v67, -1, -1);
    v68 = v60;
    a1 = changes;
    LOBYTE(changes) = v150;
    goto LABEL_16;
  }

  swift_unknownObjectRetain();
  v49 = sub_1DEF8D4D8();
  v50 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v51 = os_log_type_enabled(v49, v50);
  if ((changes & 4) != 0)
  {
    if (!v51)
    {
      goto LABEL_17;
    }

    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v139 = a1;
    v71 = v70;
    v161 = v70;
    *v69 = 136446210;
    v170[0] = v159;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v72 = sub_1DEF8D988();
    v74 = a2;
    v75 = sub_1DEE12A5C(v72, v73, &v161);

    *(v69 + 4) = v75;
    a2 = v74;
    _os_log_impl(&dword_1DEE0F000, v49, v50, "%{public}s; Browser removed device", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    v76 = v71;
    a1 = v139;
    MEMORY[0x1E12CCD70](v76, -1, -1);
    v68 = v69;
LABEL_16:
    MEMORY[0x1E12CCD70](v68, -1, -1);
LABEL_17:

    if (!(a2 | a1))
    {
      v77 = v159;
      swift_unknownObjectRetain();
      v78 = sub_1DEF8D4D8();
      v79 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v161 = v81;
        *v80 = 136446210;
        v170[0] = v77;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
        v82 = sub_1DEF8D988();
        v84 = sub_1DEE12A5C(v82, v83, &v161);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_1DEE0F000, v78, v79, "%{public}s; No usable endpoint found in browser results", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v81);
        MEMORY[0x1E12CCD70](v81, -1, -1);
        MEMORY[0x1E12CCD70](v80, -1, -1);
      }
    }

    if (a2)
    {
      v85 = a2;
    }

    else
    {
      v85 = a1;
    }

    a7 = nw_browse_result_copy_endpoint(v85);
    if (nw_endpoint_get_device_id())
    {
      v86 = sub_1DEF8D9E8();
      v88 = v87;
      if (nw_endpoint_get_device_name())
      {
        v138[1] = a2;
        v89 = changes & 2;
        v90 = sub_1DEF8D9E8();
        v92 = v91;
        v171[0] = v86;
        v171[1] = v88;
        v171[2] = v90;
        v171[3] = v91;
        v171[4] = a7;
        LOBYTE(v170[0]) = v89 == 0;
        v170[1] = v86;
        v170[2] = v88;
        v170[3] = v90;
        v170[4] = v91;
        v170[5] = a7;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_unknownObjectRetain_n();
        v93 = sub_1DEF8D4D8();
        v94 = v86;
        v95 = sub_1DEF8DCB8();

        v96 = os_log_type_enabled(v93, v95);
        v139 = a1;
        v150 = a7;
        v149 = v88;
        v147 = v94;
        v148 = v92;
        v146 = v90;
        if (v96)
        {
          a7 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v159 = v89;
          v98 = v90;
          v99 = v92;
          v100 = v97;
          v161 = v97;
          *a7 = 136446466;
          v101 = sub_1DEE12A5C(v94, v88, &v161);

          *(a7 + 4) = v101;
          *(a7 + 12) = 2082;
          v102 = v98;
          v89 = v159;
          a1 = sub_1DEE12A5C(v102, v99, &v161);

          *(a7 + 14) = a1;
          _os_log_impl(&dword_1DEE0F000, v93, v95, "Browser found device with ID: %{public}s; name: %{public}s", a7, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v100, -1, -1);
          MEMORY[0x1E12CCD70](a7, -1, -1);
        }

        else
        {
        }

        v107 = v144;
        v168 = MEMORY[0x1E69E7CC8];
        v169 = MEMORY[0x1E69E7CC8];
        v108 = *(v30 + 16);

        os_unfair_lock_lock(v108 + 4);
        v138[0] = v30;
        sub_1DEEC3FEC(v170, v30, v171, v145, v107, &v169, &v168);
        os_unfair_lock_unlock(v108 + 4);

        v16 = (v169 + 64);
        v109 = 1 << *(v169 + 32);
        v110 = -1;
        if (v109 < 64)
        {
          v110 = ~(-1 << v109);
        }

        v111 = v110 & *(v169 + 64);
        v140 = (v109 + 63) >> 6;
        v142 = v156 + 16;
        v159 = (v156 + 32);
        v145 = ((v89 >> 1) ^ 1);
        v144 = (v156 + 8);
        v143 = v169;

        v13 = 0;
        a2 = v152;
        v141 = v16;
        while (1)
        {
          if (!v111)
          {
            if (v140 <= v13 + 1)
            {
              v114 = v13 + 1;
            }

            else
            {
              v114 = v140;
            }

            v115 = v114 - 1;
            while (1)
            {
              v113 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                break;
              }

              if (v113 >= v140)
              {
                a1 = a2;
                v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
                v137 = v158;
                (*(*(v136 - 8) + 56))(v158, 1, 1, v136);
                v111 = 0;
                v13 = v115;
                v126 = v137;
                goto LABEL_54;
              }

              v111 = *&v16[8 * v113];
              ++v13;
              if (v111)
              {
                v13 = v113;
                goto LABEL_53;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

          v113 = v13;
LABEL_53:
          v116 = __clz(__rbit64(v111));
          v111 &= v111 - 1;
          v117 = v116 | (v113 << 6);
          v118 = v143;
          v119 = v156;
          v120 = v153;
          (*(v156 + 16))(v153, *(v143 + 48) + *(v156 + 72) * v117, a2);
          v121 = v154;
          sub_1DEECF44C(*(v118 + 56) + *(v155 + 72) * v117, v154, type metadata accessor for NetworkBrowser.Monitor);
          v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          v123 = a2;
          v124 = *(v122 + 48);
          v125 = *(v119 + 32);
          v126 = v158;
          a1 = v123;
          v125(v158, v120);
          sub_1DEECF4B4(v121, &v126[v124], type metadata accessor for NetworkBrowser.Monitor);
          (*(*(v122 - 8) + 56))(v126, 0, 1, v122);
          v16 = v141;
LABEL_54:
          v127 = v126;
          v128 = v157;
          sub_1DEE1BA88(v127, v157, &qword_1ECDE4240, &qword_1DEF91DD0);
          v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
          if ((*(*(v129 - 8) + 48))(v128, 1, v129) == 1)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            sub_1DEE171B4(v170, &qword_1ECDE4258, &unk_1DEF91DE8);
            swift_unknownObjectRelease();
          }

          v130 = v128 + *(v129 + 48);
          v30 = *(v130 + 40);
          v131 = *(v130 + 48);

          sub_1DEECF3EC(v130, type metadata accessor for NetworkBrowser.Monitor);
          v161 = v145;
          v162 = v147;
          v163 = v149;
          v164 = v146;
          v165 = v148;
          v166 = v150;
          v167 = 0;
          a7 = v151;
          (*v159)(v151, v128, a1);
          v132 = v168;
          if (!*(v168 + 16))
          {
            break;
          }

          sub_1DEE17214(v170, v160, &qword_1ECDE4258, &unk_1DEF91DE8);
          v133 = sub_1DEEAF350(a7);
          if ((v134 & 1) == 0)
          {
            goto LABEL_41;
          }

          v112 = *(*(v132 + 56) + 8 * v133);
          v135 = *v144;
          swift_unknownObjectRetain();
          (v135)(a7, a1);
LABEL_42:
          (v30)(&v161, v112);

          swift_unknownObjectRelease();
          sub_1DEECE9C0(v161, v162, v163, v164, v165, v166, v167);
          a2 = v152;
        }

        sub_1DEE17214(v170, v160, &qword_1ECDE4258, &unk_1DEF91DE8);
LABEL_41:
        (*v144)(a7, a1);
        v112 = 0;
        goto LABEL_42;
      }

      v103 = sub_1DEF8D4D8();
      v104 = sub_1DEF8DC98();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        v106 = "Browser found Remote device with no name";
        goto LABEL_34;
      }
    }

    else
    {
      v103 = sub_1DEF8D4D8();
      v104 = sub_1DEF8DC98();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        v106 = "Browser found remote device with no ID";
LABEL_34:
        _os_log_impl(&dword_1DEE0F000, v103, v104, v106, v105, 2u);
        MEMORY[0x1E12CCD70](v105, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  if (v51)
  {
    v52 = v34;
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v161 = v54;
    *v53 = 136446210;
    v170[0] = v52;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE49A0, &qword_1DEF91DD8);
    v55 = sub_1DEF8D988();
    v57 = sub_1DEE12A5C(v55, v56, &v161);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_1DEE0F000, v49, v50, "%{public}s; Browser found an uninteresting change", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x1E12CCD70](v54, -1, -1);
    MEMORY[0x1E12CCD70](v53, -1, -1);
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEEC3FEC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, char *, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v123 = a7;
  v147 = a5;
  v145 = a4;
  v143 = type metadata accessor for NetworkBrowser.Monitor();
  v141 = *(v143 - 8);
  v11 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v143);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v153 = (&v122 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v132 = &v122 - v16;
  v17 = sub_1DEF8D3F8();
  v138 = *(v17 - 8);
  v18 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v134 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v122 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v122 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4240, &qword_1DEF91DD0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v140 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v122 - v33;
  v35 = *a1;
  v36 = *(a1 + 1);
  v37 = *(a1 + 2);
  v125 = a6;
  if (v35)
  {
    v152 = 0;
    memset(v151, 0, sizeof(v151));
    swift_beginAccess();

    sub_1DEF33890(v151, v36, v37);
  }

  else
  {
    v38 = *a3;
    v149 = *(a3 + 16);
    v150 = v38;
    v39 = *(a3 + 32);
    swift_beginAccess();

    sub_1DEECE8F0(&v150, v148);
    sub_1DEECE8F0(&v149, v148);
    swift_unknownObjectRetain();
    v40 = *(a2 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v148[0] = *(a2 + 88);
    *(a2 + 88) = 0x8000000000000000;
    sub_1DEF3F128(a3, v36, v37, isUniquelyReferenced_nonNull_native);

    *(a2 + 88) = v148[0];
  }

  swift_endAccess();
  v42 = a3;
  swift_beginAccess();
  v128 = a2;
  v43 = *(a2 + 64);
  v44 = v147;

  v46 = v146;
  v47 = sub_1DEECF0F8(v45, v145, v44);
  v122 = v46;

  v48 = 0;
  v50 = v47 + 8;
  v49 = v47[8];
  v133 = v47;
  v51 = 1 << *(v47 + 32);
  v52 = -1;
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  v53 = v52 & v49;
  v126 = (v51 + 63) >> 6;
  v146 = (v138 + 32);
  v147 = (v138 + 16);
  v124 = (v141 + 48);
  v144 = (v138 + 8);
  v127 = v42;
  v145 = v17;
  v139 = v26;
  v54 = v140;
  v137 = v34;
  v136 = v50;
  while (v53)
  {
    v55 = v48;
LABEL_19:
    v58 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v59 = v58 | (v55 << 6);
    v60 = v133;
    v61 = v138;
    v62 = v131;
    (*(v138 + 16))(v131, v133[6] + *(v138 + 72) * v59, v17);
    v63 = v17;
    v64 = v132;
    sub_1DEECF44C(v60[7] + *(v141 + 72) * v59, v132, type metadata accessor for NetworkBrowser.Monitor);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    v66 = *(v65 + 48);
    v67 = *(v61 + 32);
    v54 = v140;
    v67(v140, v62, v63);
    sub_1DEECF4B4(v64, v54 + v66, type metadata accessor for NetworkBrowser.Monitor);
    (*(*(v65 - 8) + 56))(v54, 0, 1, v65);
    v26 = v139;
    v34 = v137;
LABEL_20:
    sub_1DEE1BA88(v54, v34, &qword_1ECDE4240, &qword_1DEF91DD0);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
    if ((*(*(v68 - 8) + 48))(v34, 1, v68) == 1)
    {
    }

    v69 = *(v68 + 48);
    v17 = v145;
    (*v146)(v26, v34, v145);
    v70 = &v34[v69];
    v71 = v153;
    sub_1DEECF4B4(v70, v153, type metadata accessor for NetworkBrowser.Monitor);
    if (*(v71 + *(v143 + 36)) & 1) == 0 && (*v153 == *v127 && v153[1] == v127[1] || (sub_1DEF8E4E8()))
    {
      v142 = *v147;
      v142(v130, v26, v17);
      swift_beginAccess();
      v72 = sub_1DEEBFCD8(v148);
      v73 = v143;
      v75 = v74;
      if (!(*v124)(v74, 1, v143))
      {
        *(v75 + *(v73 + 36)) = 1;
      }

      (v72)(v148, 0);
      swift_endAccess();
      v76 = *v144;
      (*v144)(v130, v17);
      v77 = v135;
      v142(v135, v26, v17);
      sub_1DEECF44C(v153, v129, type metadata accessor for NetworkBrowser.Monitor);
      v78 = v125;
      v79 = *v125;
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v148[0] = *v78;
      v81 = v148[0];
      v82 = v78;
      *v78 = 0x8000000000000000;
      v84 = sub_1DEEAF350(v77);
      v85 = *(v81 + 16);
      v86 = (v83 & 1) == 0;
      v87 = v85 + v86;
      if (__OFADD__(v85, v86))
      {
        goto LABEL_50;
      }

      v88 = v83;
      if (*(v81 + 24) >= v87)
      {
        if ((v80 & 1) == 0)
        {
          sub_1DEEB8F5C();
        }
      }

      else
      {
        sub_1DEEB432C(v87, v80);
        v89 = sub_1DEEAF350(v135);
        if ((v88 & 1) != (v90 & 1))
        {
          goto LABEL_52;
        }

        v84 = v89;
      }

      v92 = v145;
      v93 = v148[0];
      if (v88)
      {
        sub_1DEECEA78(v129, *(v148[0] + 56) + *(v141 + 72) * v84);
        v76(v135, v92);
      }

      else
      {
        *(v148[0] + 8 * (v84 >> 6) + 64) |= 1 << v84;
        v94 = v135;
        v142((v93[6] + *(v138 + 72) * v84), v135, v92);
        sub_1DEECF4B4(v129, v93[7] + *(v141 + 72) * v84, type metadata accessor for NetworkBrowser.Monitor);
        v76(v94, v92);
        v95 = v93[2];
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          goto LABEL_51;
        }

        v93[2] = v97;
      }

      v98 = *v82;
      *v82 = v93;

      v26 = v139;
      v142(v134, v139, v92);
      v99 = v128;
      swift_beginAccess();
      v100 = *(v99 + 80);
      v101 = v123;
      if (*(v100 + 16) && (v102 = sub_1DEEAF350(v26), (v103 & 1) != 0))
      {
        v104 = *(*(v100 + 56) + 8 * v102);
        swift_endAccess();
        swift_unknownObjectRetain();
        v105 = *v101;
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v148[0] = *v101;
        ObjectType = swift_getObjectType();
        v108 = v134;
        sub_1DEF41AB8(v104, v134, v106, v148, ObjectType);
        v109 = v108;
        v110 = v145;
        v76(v109, v145);
        *v101 = v148[0];
        v17 = v110;
      }

      else
      {
        swift_endAccess();
        v111 = *v101;
        v112 = v134;
        v113 = sub_1DEEAF350(v134);
        if (v114)
        {
          v115 = v113;
          v116 = *v101;
          v117 = swift_isUniquelyReferenced_nonNull_native();
          v118 = *v101;
          v148[0] = *v101;
          if ((v117 & 1) == 0)
          {
            sub_1DEEB9288();
            v118 = v148[0];
          }

          v119 = v145;
          v76((*(v118 + 48) + *(v138 + 72) * v115), v145);
          v120 = *(*(v118 + 56) + 8 * v115);
          swift_unknownObjectRelease();
          sub_1DEF7695C(v115, v118);
          v76(v134, v119);
          *v101 = v118;
          v17 = v119;
        }

        else
        {
          v17 = v145;
          v76(v112, v145);
        }

        v34 = v137;
      }

      v76(v26, v17);
      v54 = v140;
    }

    else
    {
      (*v144)(v26, v17);
    }

    sub_1DEECF3EC(v153, type metadata accessor for NetworkBrowser.Monitor);
    v50 = v136;
  }

  if (v126 <= v48 + 1)
  {
    v56 = v48 + 1;
  }

  else
  {
    v56 = v126;
  }

  v57 = v56 - 1;
  while (1)
  {
    v55 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v55 >= v126)
    {
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4220, &unk_1DEF91DC0);
      (*(*(v91 - 8) + 56))(v54, 1, 1, v91);
      v53 = 0;
      v48 = v57;
      goto LABEL_20;
    }

    v53 = v50[v55];
    ++v48;
    if (v53)
    {
      v48 = v55;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEC4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_1DEEC4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *(*v7 + 16);
  os_unfair_lock_lock(v15 + 4);
  sub_1DEEBD3F4(a1, a2, a3, a4, a5, a6, a7);

  os_unfair_lock_unlock(v15 + 4);
}

uint64_t sub_1DEEC4E2C(uint64_t a1)
{
  v3 = *(sub_1DEF8D3F8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1DEEBDE68(a1, v4, v5);
}

void sub_1DEEC4EA0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_1DEEC4F08(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DEF8E7A8();
  v5 = a1[2];
  v6 = a1[3];
  sub_1DEF8D9B8();
  v7 = a1[4];
  v8 = a1[5];
  sub_1DEF8D9B8();
  sub_1DEF8E7F8();
  v9 = -1 << *(a2 + 32);
  result = sub_1DEF8DE48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1DEEC4FB8(void *a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 40);
  sub_1DEF8E7A8();
  v14 = a1[2];
  v15 = a1[3];
  sub_1DEF8D9B8();
  v16 = a1[4];
  v17 = v16[2];
  v18 = v16[3];
  sub_1DEF8D9B8();
  v19 = v16[4];
  v20 = v16[5];

  sub_1DEF8D9B8();

  sub_1DEECF44C(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x1E12CBF60](1);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v5 + 8))(v8, v4);
  }

  sub_1DEF8E7F8();
  v21 = -1 << *(a2 + 32);
  result = sub_1DEF8DE48();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1DEEC524C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D3F8();
  sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v5 = type metadata accessor for PairingRelationship();
  v6 = a1 + v5[5];
  DeviceDescriptor.hash(into:)(v17);
  v7 = v5[6];
  sub_1DEF8D378();
  sub_1DEE1B968(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
  sub_1DEF8D8C8();
  v8 = a1 + v5[7];
  sub_1DEF8D8C8();
  v9 = (a1 + v5[8]);
  v10 = v9[1];
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 2;
      goto LABEL_11;
    }

    if (v10 == 3)
    {
      v11 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v10)
    {
      v11 = 0;
      goto LABEL_11;
    }

    if (v10 == 1)
    {
      v11 = 1;
LABEL_11:
      MEMORY[0x1E12CBF60](v11);
      goto LABEL_12;
    }
  }

  v12 = *v9;
  MEMORY[0x1E12CBF60](3);
  sub_1DEF8D9B8();
LABEL_12:
  v13 = a1 + v5[9];
  sub_1DEF8D8C8();
  sub_1DEF8E7F8();
  v14 = -1 << *(a2 + 32);
  v15 = sub_1DEF8DE48();
  *(a2 + 56 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
  result = sub_1DEECF4B4(a1, *(a2 + 48) + *(*(v5 - 1) + 72) * v15, type metadata accessor for PairingRelationship);
  ++*(a2 + 16);
  return result;
}

void *sub_1DEEC54A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4298, &qword_1DEF91E10);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

void *sub_1DEEC5600()
{
  v1 = v0;
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42D0, &qword_1DEF91E48);
  v7 = *v0;
  v8 = sub_1DEF8DED8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_1DEEC584C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4318, &qword_1DEF95E70);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1DEEC59A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DEF8DED8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
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

      v18 = *(v4 + 56 + 8 * v10);
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

void *sub_1DEEC5AE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4250, &qword_1DEF91DE0);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

void *sub_1DEEC5C38()
{
  v1 = v0;
  v2 = type metadata accessor for PairingRelationship();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4300, &qword_1DEF91E70);
  v7 = *v0;
  v8 = sub_1DEF8DED8();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1DEECF44C(*(v7 + 48) + v22, v6, type metadata accessor for PairingRelationship);
        result = sub_1DEECF4B4(v6, *(v9 + 48) + v22, type metadata accessor for PairingRelationship);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_1DEEC5E44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42E8, &unk_1DEF91E60);
  v2 = *v0;
  v3 = sub_1DEF8DED8();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        v24 = *(v18 + 40);
        *v23 = *v18;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = v22;
        *(v23 + 40) = v24;
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

unint64_t *sub_1DEEC5FC4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DEECEBB0(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1DEEC6068(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PairingRelationship();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v46 - v12;
  v57 = sub_1DEF8D3F8();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  v14 = MEMORY[0x1EEE9AC00](v57);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  result = sub_1DEF8E148();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v16;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_1DEECF44C(v33, v50, type metadata accessor for PairingRelationship);
    v35 = *(v30 + 32);
    v16 = v24;
    v35(v24, v31, v23);
    sub_1DEECF4B4(v34, v58, type metadata accessor for PairingRelationship);
    v36 = *(v19 + 40);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    result = sub_1DEF8D8B8();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v16, v57);
    result = sub_1DEECF4B4(v58, *(v19 + 56) + v40 * v53, type metadata accessor for PairingRelationship);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v16;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
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

uint64_t sub_1DEEC64F8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
  result = sub_1DEF8E148();
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
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);

    result = sub_1DEF41EC0(v16, v17, v9);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC663C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  result = sub_1DEF8E148();
  v8 = a2;
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
  v39 = v8;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v41 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 32 * v16);
    v18 = *v17;
    v19 = v17[1];
    v21 = v17[2];
    v20 = v17[3];
    v22 = (*(v4 + 56) + 48 * v16);
    v23 = v22[1];
    v24 = v22[3];
    v44 = v22[2];
    v45 = *v22;
    v42 = v22[5];
    v43 = v22[4];
    v25 = *(v9 + 40);
    v26 = v9;
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v9 = v26;
    v27 = -1 << *(v26 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v12 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v26 + 48) + 32 * v30);
    *v35 = v18;
    v35[1] = v19;
    v35[2] = v21;
    v35[3] = v20;
    v36 = (*(v26 + 56) + 48 * v30);
    *v36 = v45;
    v36[1] = v23;
    v36[2] = v44;
    v36[3] = v24;
    v36[4] = v43;
    v36[5] = v42;
    ++*(v26 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    v10 = v41;
    v8 = v39;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v41 = (v15 - 1) & v15;
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

uint64_t sub_1DEEC6904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4120, &qword_1DEF91C40);
  result = sub_1DEF8E148();
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
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(v17 + 8 * v16);
    v20 = *(v9 + 40);
    sub_1DEF8E7A8();
    v21 = v18[2];
    v22 = v18[3];

    sub_1DEF8D9B8();
    v23 = v18[4];
    v24 = v18[5];
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + 8 * v28) = v18;
    *(*(v9 + 56) + 8 * v28) = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v35;
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
      v35 = (v15 - 1) & v15;
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

uint64_t sub_1DEEC6B58(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v34 = sub_1DEF8D3F8();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v32 = v30 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
  result = sub_1DEF8E148();
  v31 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v30[1] = v8 + 32;
  v30[2] = v8 + 16;
  v16 = v34;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v35 = (v14 - 1) & v14;
LABEL_16:
    v20 = v17 | (v15 << 6);
    v21 = a4;
    v22 = *(a4[6] + 8 * v20);
    v23 = a4[7] + *(v8 + 72) * v20;
    v24 = v32;
    (*(v8 + 16))(v32, v23, v16);
    v25 = v8;
    v26 = *(v8 + 32);
    v27 = v33;
    v26(v33, v24, v16);

    result = sub_1DEF40088(v28, v27, v31);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_21;
    }

    a4 = v21;
    v8 = v25;
    v14 = v35;
    if (!a3)
    {
      return v31;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v31;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DEEC6DAC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ZoneVersion();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v40 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  result = sub_1DEF8E148();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v41;
  v40 = a4;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[7];
    v24 = *(a4[6] + 8 * v22);
    v25 = v42;
    v44 = *(v43 + 72);
    sub_1DEECF44C(v23 + v44 * v22, v42, type metadata accessor for ZoneVersion);
    sub_1DEECF4B4(v25, v18, type metadata accessor for ZoneVersion);
    v26 = *(v14 + 40);
    sub_1DEF8E7A8();
    v27 = v24[2];
    v28 = v24[3];

    sub_1DEF8D9B8();
    v29 = v24[4];
    v30 = v24[5];
    sub_1DEF8D9B8();
    result = sub_1DEF8E7F8();
    v31 = -1 << *(v14 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      v18 = v41;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v17 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    v18 = v41;
LABEL_26:
    *(v17 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v14 + 48) + 8 * v34) = v24;
    result = sub_1DEECF4B4(v18, *(v14 + 56) + v34 * v44, type metadata accessor for ZoneVersion);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v15 = (v21 - 1) & v21;
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

uint64_t sub_1DEEC70F4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for NetworkBrowser.Monitor();
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = v46 - v12;
  v57 = sub_1DEF8D3F8();
  v55 = *(v57 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = v46 - v17;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  result = sub_1DEF8E148();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v46[1] = v55 + 16;
  v47 = a2;
  v56 = v55 + 32;
  v22 = result + 64;
  v48 = a1;
  v46[0] = a4;
  v23 = v57;
  while (v20)
  {
    v24 = v15;
    v25 = __clz(__rbit64(v20));
    v52 = (v20 - 1) & v20;
LABEL_16:
    v28 = v25 | (v21 << 6);
    v29 = a4[6];
    v30 = v55;
    v54 = *(v55 + 72);
    v31 = v49;
    (*(v55 + 16))(v49, v29 + v54 * v28, v23);
    v32 = a4[7];
    v53 = *(v51 + 72);
    v33 = v32 + v53 * v28;
    v34 = v50;
    sub_1DEECF44C(v33, v50, type metadata accessor for NetworkBrowser.Monitor);
    v35 = *(v30 + 32);
    v15 = v24;
    v35(v24, v31, v23);
    sub_1DEECF4B4(v34, v58, type metadata accessor for NetworkBrowser.Monitor);
    v36 = *(v19 + 40);
    sub_1DEE1B968(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    result = sub_1DEF8D8B8();
    v37 = -1 << *(v19 + 32);
    v38 = result & ~v37;
    v39 = v38 >> 6;
    if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v37) >> 6;
      a2 = v47;
      a1 = v48;
      while (++v39 != v42 || (v41 & 1) == 0)
      {
        v43 = v39 == v42;
        if (v39 == v42)
        {
          v39 = 0;
        }

        v41 |= v43;
        v44 = *(v22 + 8 * v39);
        if (v44 != -1)
        {
          v40 = __clz(__rbit64(~v44)) + (v39 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v40 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
    a2 = v47;
    a1 = v48;
LABEL_26:
    *(v22 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
    v35((*(v19 + 48) + v40 * v54), v15, v57);
    result = sub_1DEECF4B4(v58, *(v19 + 56) + v40 * v53, type metadata accessor for NetworkBrowser.Monitor);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v46[0];
    v20 = v52;
    if (!a3)
    {
      return v19;
    }
  }

  v26 = v21;
  while (1)
  {
    v21 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v27 = a1[v21];
    ++v26;
    if (v27)
    {
      v24 = v15;
      v25 = __clz(__rbit64(v27));
      v52 = (v27 - 1) & v27;
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