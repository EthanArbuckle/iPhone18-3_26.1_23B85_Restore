uint64_t sub_1B4E7F558(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66674();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7F8B4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F67154();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5730, &qword_1B4F73F28);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7FC10(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F65E04();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E7FF6C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F67A94();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E802C8(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F67124();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E80624(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F679C4();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E80980(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F67244();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5740, &qword_1B4F73F30);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E80CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B4F68E84();
      sub_1B4F64D54();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E80F48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F66E34();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  result = sub_1B4F68974();
  v12 = result;
  if (*(v9 + 16))
  {
    v35 = v2;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v36 + 72);
      sub_1B4E95218(*(v9 + 48) + v24 * (v21 | (v13 << 6)), v8, MEMORY[0x1E69CCB48]);
      v25 = *(v12 + 40);
      sub_1B4F68E84();
      sub_1B4F66E24();
      result = sub_1B4F68EC4();
      v26 = -1 << *(v12 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1B4E95218(v8, *(v12 + 48) + v20 * v24, MEMORY[0x1E69CCB48]);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v9 + 32);
    if (v33 >= 64)
    {
      bzero((v9 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v33;
    }

    v2 = v35;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1B4E81250(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F64F74();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56D0, &qword_1B4F73EF0);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E815AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67184();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  result = sub_1B4F68974();
  v12 = result;
  if (*(v9 + 16))
  {
    v35 = v2;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v36 + 72);
      sub_1B4E95218(*(v9 + 48) + v24 * (v21 | (v13 << 6)), v8, MEMORY[0x1E69CCEF0]);
      v25 = *(v12 + 40);
      sub_1B4F68E84();
      sub_1B4F67174();
      result = sub_1B4F68EC4();
      v26 = -1 << *(v12 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_1B4E95218(v8, *(v12 + 48) + v20 * v24, MEMORY[0x1E69CCEF0]);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v9 + 32);
    if (v33 >= 64)
    {
      bzero((v9 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v33;
    }

    v2 = v35;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_1B4E818B4(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F67004();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56C0, &qword_1B4F73EE8);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_1B4E81C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x1B8C82710](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E81E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1B4F68E84();
      v20 = *(v18 + 24);
      sub_1B4F68774();
      result = sub_1B4F68EC4();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B4E82088(uint64_t a1)
{
  v2 = v1;
  v42 = sub_1B4F66894();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5698, &qword_1B4F73EC8);
  result = sub_1B4F68974();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
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
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710]);
      result = sub_1B4F67F14();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
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

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

unint64_t sub_1B4E823E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B4F68E84();
  v5 = *(a1 + 24);
  sub_1B4F68774();
  sub_1B4F68EC4();
  v6 = -1 << *(a2 + 32);
  result = sub_1B4F688D4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B4E82488(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F64E14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7D26C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB098], &qword_1EB8F5720, &qword_1B4F73F20);
      goto LABEL_12;
    }

    sub_1B4E872AC(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5718, MEMORY[0x1E69CB098]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82750(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B4E7D5C8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B4E863C4();
      goto LABEL_16;
    }

    sub_1B4E875C8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  result = sub_1B4F68EC4();
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

      result = sub_1B4F68D54();
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
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E828D0(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66484();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7D828(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC278], &qword_1EB8F5808, &qword_1B4F73F80);
      goto LABEL_12;
    }

    sub_1B4E87800(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F41C8, MEMORY[0x1E69CC278]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82B98(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7DB84(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4E86520(&qword_1EB8F46E8, &qword_1B4F6D0C0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4E87B1C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v4);
  result = sub_1B4F68EC4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82CF8(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F670C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7DDD4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCDC8], &qword_1EB8F57A0, &qword_1B4F73F50);
      goto LABEL_12;
    }

    sub_1B4E87D3C(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82FC0(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F660C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E130(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CBE40], &qword_1EB8F5780, &unk_1B4F79F50);
      goto LABEL_12;
    }

    sub_1B4E88058(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83288(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F65DE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E48C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB800], &qword_1EB8F5768, &unk_1B4F79F40);
      goto LABEL_12;
    }

    sub_1B4E88374(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83550(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66BA4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E7E8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCAC8], &qword_1EB8F57E0, &qword_1B4F73F60);
      goto LABEL_12;
    }

    sub_1B4E88690(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57D8, MEMORY[0x1E69CCAC8]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83818(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66A54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7EB44(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC938], &qword_1EB8F57C8, &unk_1B4F79F30);
      goto LABEL_12;
    }

    sub_1B4E889AC(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57C0, MEMORY[0x1E69CC938]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83AE0(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F669F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7EEA0(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC830], &qword_1EB8F57B0, &qword_1B4F73F58);
      goto LABEL_12;
    }

    sub_1B4E88CC8(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57A8, MEMORY[0x1E69CC830]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83DA8(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F1FC(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCA00], &qword_1EB8F5790, &qword_1B4F73F48);
      goto LABEL_12;
    }

    sub_1B4E88FE4(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84070(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F65E04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7FC10(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB850], &qword_1EB8F57F0, &qword_1B4F73F68);
      goto LABEL_12;
    }

    sub_1B4E89938(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57E8, MEMORY[0x1E69CB850]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84338(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F558(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC5E8], &qword_1EB8F5758, &unk_1B4F79F60);
      goto LABEL_12;
    }

    sub_1B4E89300(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84600(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F67A94();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7FF6C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD370], &qword_1EB8F56E0, &qword_1B4F73EF8);
      goto LABEL_12;
    }

    sub_1B4E89C54(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E848C8(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F67124();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E802C8(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCE28], &qword_1EB8F56F0, &qword_1B4F73F00);
      goto LABEL_12;
    }

    sub_1B4E89F70(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84B90(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F679C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E80624(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CD2D8], &qword_1EB8F5700, &qword_1B4F73F08);
      goto LABEL_12;
    }

    sub_1B4E8A28C(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E84E58(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F67244();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E80980(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCF40], &qword_1EB8F5740, &qword_1B4F73F30);
      goto LABEL_12;
    }

    sub_1B4E8A5A8(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5738, MEMORY[0x1E69CCF40]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85120(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F67154();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7F8B4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCEC8], &qword_1EB8F5730, &qword_1B4F73F28);
      goto LABEL_12;
    }

    sub_1B4E8961C(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E853E8(uint64_t result, unint64_t a2, char a3)
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
    sub_1B4E80CDC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1B4E86650();
      goto LABEL_16;
    }

    sub_1B4E8A8C4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_1B4F68E84();
  sub_1B4F64D54();
  sub_1B4F67FE4();

  result = sub_1B4F68EC4();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + a2);
      v14 = sub_1B4F64D54();
      v16 = v15;
      if (v14 == sub_1B4F64D54() && v16 == v17)
      {
        goto LABEL_19;
      }

      v19 = sub_1B4F68D54();

      if (v19)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E855C0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4F66E34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v29 = v12;
    sub_1B4E80F48(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_1B4E86790();
      goto LABEL_12;
    }

    v29 = v12;
    sub_1B4E8AB00(v15 + 1);
  }

  v17 = *v4;
  v18 = *(*v4 + 40);
  sub_1B4F68E84();
  sub_1B4F66E24();
  v19 = sub_1B4F68EC4();
  v20 = -1 << *(v17 + 32);
  a2 = v19 & ~v20;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v9 + 72);
    do
    {
      sub_1B4E95150(*(v17 + 48) + v22 * a2, v14, MEMORY[0x1E69CCB48]);
      v23 = MEMORY[0x1B8C806C0](v14, a1);
      sub_1B4E951B8(v14, MEMORY[0x1E69CCB48]);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4E95218(a1, *(v24 + 48) + *(v9 + 72) * a2, MEMORY[0x1E69CCB48]);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85804(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F64F74();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E81250(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB178], &qword_1EB8F56D0, &qword_1B4F73EF0);
      goto LABEL_12;
    }

    sub_1B4E8ADD8(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56C8, MEMORY[0x1E69CB178]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85ACC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B4F67184();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v29 = v12;
    sub_1B4E815AC(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_1B4E8699C();
      goto LABEL_12;
    }

    v29 = v12;
    sub_1B4E8B0F4(v15 + 1);
  }

  v17 = *v4;
  v18 = *(*v4 + 40);
  sub_1B4F68E84();
  sub_1B4F67174();
  v19 = sub_1B4F68EC4();
  v20 = -1 << *(v17 + 32);
  a2 = v19 & ~v20;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v9 + 72);
    do
    {
      sub_1B4E95150(*(v17 + 48) + v22 * a2, v14, MEMORY[0x1E69CCEF0]);
      v23 = MEMORY[0x1B8C80A10](v14, a1);
      sub_1B4E951B8(v14, MEMORY[0x1E69CCEF0]);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1B4E95218(a1, *(v24 + 48) + *(v9 + 72) * a2, MEMORY[0x1E69CCEF0]);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85D10(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F67004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E818B4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCCE0], &qword_1EB8F56C0, &qword_1B4F73EE8);
      goto LABEL_12;
    }

    sub_1B4E8B3CC(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F56B8, MEMORY[0x1E69CCCE0]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E85FD8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E81C10(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4E86BA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4E8B6E8(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1B8C82710](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E860FC(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_1B4F66894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E82088(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC710], &qword_1EB8F5698, &qword_1B4F73EC8);
      goto LABEL_12;
    }

    sub_1B4E8BB04(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710]);
  v17 = sub_1B4F67F14();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5690, MEMORY[0x1E69CC710]);
      v25 = sub_1B4F67F54();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

void *sub_1B4E863C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

void *sub_1B4E86520(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B4F68964();
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

void *sub_1B4E86650()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  v2 = *v0;
  v3 = sub_1B4F68964();
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

void *sub_1B4E86790()
{
  v1 = v0;
  v2 = sub_1B4F66E34();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  v8 = *v0;
  v9 = sub_1B4F68964();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_1B4E95150(*(v8 + 48) + v23, v7, MEMORY[0x1E69CCB48]);
        result = sub_1B4E95218(v7, *(v10 + 48) + v23, MEMORY[0x1E69CCB48]);
      }

      while (v18);
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
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

void *sub_1B4E8699C()
{
  v1 = v0;
  v2 = sub_1B4F67184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  v8 = *v0;
  v9 = sub_1B4F68964();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_14:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_1B4E95150(*(v8 + 48) + v23, v7, MEMORY[0x1E69CCEF0]);
        result = sub_1B4E95218(v7, *(v10 + 48) + v23, MEMORY[0x1E69CCEF0]);
      }

      while (v18);
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
        goto LABEL_16;
      }

      v22 = *(v12 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v10;
  }

  return result;
}

void *sub_1B4E86BA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  v2 = *v0;
  v3 = sub_1B4F68964();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_1B4E86CE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  v2 = *v0;
  v3 = sub_1B4F68964();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1B4E86E38(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v28 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v3;
  v14 = sub_1B4F68964();
  v15 = v14;
  if (*(v13 + 16))
  {
    v29 = v6;
    result = (v14 + 56);
    v17 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v13 || result >= v13 + 56 + 8 * v17)
    {
      result = memmove(result, (v13 + 56), 8 * v17);
    }

    v19 = 0;
    *(v15 + 16) = *(v13 + 16);
    v20 = 1 << *(v13 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v13 + 56);
    v23 = (v20 + 63) >> 6;
    v30 = v8 + 32;
    for (i = v8 + 16; v22; result = (*(v8 + 32))(*(v15 + 48) + v27, v12, v7))
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v27 = *(v8 + 72) * (v24 | (v19 << 6));
      (*(v8 + 16))(v12, *(v13 + 48) + v27, v7);
    }

    v25 = v19;
    while (1)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v19 >= v23)
      {

        v6 = v29;
        goto LABEL_21;
      }

      v26 = *(v13 + 56 + 8 * v19);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v22 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v15;
  }

  return result;
}

uint64_t sub_1B4E87070(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E872AC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F64E14();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5720, &qword_1B4F73F20);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E875C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B4F68E84();

      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E87800(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66484();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5808, &qword_1B4F73F80);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E87B1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v17);
      result = sub_1B4F68EC4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E87D3C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F670C4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E88058(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F660C4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E88374(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F65DE4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E88690(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66BA4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E889AC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66A54();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E88CC8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F669F4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E88FE4(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66AF4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5790, &qword_1B4F73F48);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E89300(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66674();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8961C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F67154();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5730, &qword_1B4F73F28);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E89938(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F65E04();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E89C54(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F67A94();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E89F70(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F67124();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8A28C(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F679C4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8A5A8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F67244();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5740, &qword_1B4F73F30);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8A8C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B4F68E84();
      sub_1B4F64D54();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E8AB00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F66E34();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  result = sub_1B4F68974();
  v12 = result;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v34 + 72);
      sub_1B4E95150(*(v9 + 48) + v23 * (v20 | (v13 << 6)), v8, MEMORY[0x1E69CCB48]);
      v24 = *(v12 + 40);
      sub_1B4F68E84();
      sub_1B4F66E24();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v12 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1B4E95218(v8, *(v12 + 48) + v19 * v23, MEMORY[0x1E69CCB48]);
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v9 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1B4E8ADD8(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F64F74();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56D0, &qword_1B4F73EF0);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8B0F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4F67184();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  result = sub_1B4F68974();
  v12 = result;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v34 + 72);
      sub_1B4E95150(*(v9 + 48) + v23 * (v20 | (v13 << 6)), v8, MEMORY[0x1E69CCEF0]);
      v24 = *(v12 + 40);
      sub_1B4F68E84();
      sub_1B4F67174();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v12 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_1B4E95218(v8, *(v12 + 48) + v19 * v23, MEMORY[0x1E69CCEF0]);
      ++*(v12 + 16);
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v22 = *(v9 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_1B4E8B3CC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F67004();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56C0, &qword_1B4F73EE8);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8B6E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x1B8C82710](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E8B8DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  result = sub_1B4F68974();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_1B4F68E84();
      v19 = *(v17 + 24);

      sub_1B4F68774();
      result = sub_1B4F68EC4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B4E8BB04(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1B4F66894();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5698, &qword_1B4F73EC8);
  v11 = sub_1B4F68974();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710]);
      result = sub_1B4F67F14();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_1B4E8BE20(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B4F68E84();

      sub_1B4F67FE4();
      v13 = sub_1B4F68EC4();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1B4E8BFD0(int64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66484();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v44 = a2;
    v13 = ~v11;
    v14 = sub_1B4F688C4();
    v15 = v13;
    a2 = v44;
    v43 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = v10;
    v42 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v42(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278]);
      v24 = sub_1B4F67F14();
      (*v40)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v43)
      {
        if (v25 >= v43 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v44 + 48) + v19 * a1 >= (*(v44 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v28 = *(v44 + 56);
          v29 = *(*(sub_1B4F666C4() - 8) + 72);
          v30 = v29 * a1;
          v31 = v28 + v29 * a1;
          v32 = v29 * v12;
          v33 = v28 + v29 * v12 + v29;
          if (v30 < v32 || v31 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v41;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v35 = v30 == v32;
            v10 = v41;
            v15 = v21;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v43 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v41;
      a2 = v44;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }
}

uint64_t sub_1B4E8C314(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1B4F68E84();

      sub_1B4F67FE4();
      v15 = sub_1B4F68EC4();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4E8C4D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 2 * v6);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F73F88[v10]);
      result = sub_1B4F68EC4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 2 * v3);
        v14 = (v12 + 2 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B4E8C66C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B4F688C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F74B10[v10]);
      result = sub_1B4F68EC4();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1B4E8C808(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a7;
      v11 = a6;
      v12 = a5;
      v13 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v13;
      a5 = v12;
      a6 = v11;
      a7 = v10;
    }

    sub_1B4E8FC10(result, a2, a3, a4, a5, a6, a7);
    v15 = v14;

    return v15;
  }

  return result;
}

unint64_t *sub_1B4E8C8B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

    sub_1B4E94874(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

void *sub_1B4E8C954(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a7)(uint64_t), uint64_t (*a8)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E945E4(v15, a2, a3, a4, a5, a6, a7, a8);
    v17 = v16;
    swift_bridgeObjectRelease_n();

    return v17;
  }

  return result;
}

void sub_1B4E8CA20(uint64_t a1)
{
  v84 = sub_1B4F670C4();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5590, &qword_1B4F73E10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CCDC8]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F5590, &qword_1B4F73E10);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F5590, &qword_1B4F73E10);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F5590, &qword_1B4F73E10);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F5590, &qword_1B4F73E10);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F5590, &qword_1B4F73E10);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F5590, &qword_1B4F73E10);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F5590, &qword_1B4F73E10);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F5590, &qword_1B4F73E10);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F5590, &qword_1B4F73E10);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_1B4E8D19C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_1B4E8D2F8(uint64_t a1)
{
  v84 = sub_1B4F660C4();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A0, &qword_1B4F73E20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CBE40]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F55A0, &qword_1B4F73E20);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F55A0, &qword_1B4F73E20);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F55A0, &qword_1B4F73E20);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F55A0, &qword_1B4F73E20);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F55A0, &qword_1B4F73E20);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F55A0, &qword_1B4F73E20);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F55A0, &qword_1B4F73E20);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F55A0, &qword_1B4F73E20);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F55A0, &qword_1B4F73E20);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8DA74(uint64_t a1)
{
  v84 = sub_1B4F65DE4();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A8, &qword_1B4F73E28);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CB800]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F55A8, &qword_1B4F73E28);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F55A8, &qword_1B4F73E28);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F55A8, &qword_1B4F73E28);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F55A8, &qword_1B4F73E28);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F55A8, &qword_1B4F73E28);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F55A8, &qword_1B4F73E28);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F55A8, &qword_1B4F73E28);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F55A8, &qword_1B4F73E28);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F55A8, &qword_1B4F73E28);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8E1F0(uint64_t a1)
{
  v84 = sub_1B4F65E04();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F8, &qword_1B4F73F70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CB850]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F57F8, &qword_1B4F73F70);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F57F8, &qword_1B4F73F70);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F57F8, &qword_1B4F73F70);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F57F8, &qword_1B4F73F70);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F57F8, &qword_1B4F73F70);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F57F8, &qword_1B4F73F70);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F57F8, &qword_1B4F73F70);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F57F8, &qword_1B4F73F70);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F57F8, &qword_1B4F73F70);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

void sub_1B4E8E96C(uint64_t a1)
{
  v84 = sub_1B4F67A94();
  v4 = *(v84 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v84, v6);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57D0, &unk_1B4F79EF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v66 - v13;
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v66 - v19;
  v21 = *(a1 + 16);
  v22 = *v1;
  v23 = *(*v1 + 2);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v83 = v17;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = v14;
  if (!isUniquelyReferenced_nonNull_native || (v26 = *(v22 + 3) >> 1, v26 < v24))
  {
    if (v23 <= v24)
    {
      v27 = v23 + v21;
    }

    else
    {
      v27 = v23;
    }

    v22 = sub_1B4E78BC8(isUniquelyReferenced_nonNull_native, v27, 1, v22, &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);
    v26 = *(v22 + 3) >> 1;
  }

  v28 = *(v22 + 2);
  v24 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v23 = *(v4 + 72);
  v29 = v26 - v28;
  v30 = sub_1B4E93A84(&v86, &v22[v24 + v23 * v28], v26 - v28, a1, MEMORY[0x1E69CD370]);
  if (v30 < v21)
  {
    goto LABEL_16;
  }

  if (v30)
  {
    v33 = *(v22 + 2);
    v34 = __OFADD__(v33, v30);
    v35 = v33 + v30;
    if (v34)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v22 + 2) = v35;
  }

  if (v30 != v29)
  {
    sub_1B4E632A0();
LABEL_14:
    *v1 = v22;
    return;
  }

LABEL_17:
  v81 = *(v22 + 2);
  v32 = v87;
  v72 = v86;
  v35 = v89;
  v31 = &v91;
  v67 = v88;
  v36 = v90;
  v70 = v87;
  if (v90)
  {
    v37 = v89;
LABEL_27:
    v79 = (v36 - 1) & v36;
    v41 = v84;
    (*(v2 + 16))(v20, *(v72 + 48) + (__clz(__rbit64(v36)) | (v37 << 6)) * v23, v84, v18);
    v74 = *(v2 + 56);
    v74(v20, 0, 1, v41);
    v40 = v37;
    while (1)
    {
      v42 = v82;
      sub_1B4E21A90(v20, v82, &qword_1EB8F57D0, &unk_1B4F79EF0);
      v43 = *(v2 + 48);
      v2 += 48;
      v78 = v43;
      if (v43(v42, 1, v41) == 1)
      {
        break;
      }

      v45 = (v4 + 32);
      v69 = (v67 + 64) >> 6;
      v73 = v4 + 56;
      v71 = (v4 + 16);
      v68 = (v4 + 8);
      v44 = v82;
      v80 = v45;
      while (1)
      {
        sub_1B4DD2BC4(v44, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v46 = *(v22 + 3);
        v47 = v46 >> 1;
        if ((v46 >> 1) < v81 + 1)
        {
          v22 = sub_1B4E78BC8(v46 > 1, v81 + 1, 1, v22, &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);
          v47 = *(v22 + 3) >> 1;
        }

        v48 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F57D0, &unk_1B4F79EF0);
        if (v78(v48, 1, v84) != 1)
        {
          break;
        }

        v49 = v40;
        v50 = v83;
        v4 = v81;
LABEL_38:
        v40 = v49;
        sub_1B4DD2BC4(v50, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v81 = v4;
LABEL_33:
        *(v22 + 2) = v4;
        v44 = v82;
        sub_1B4E21A90(v20, v82, &qword_1EB8F57D0, &unk_1B4F79EF0);
        if (v78(v44, 1, v84) == 1)
        {
          goto LABEL_30;
        }
      }

      v76 = &v22[v24];
      v4 = v81;
      v51 = *v80;
      if (v81 <= v47)
      {
        v52 = v47;
      }

      else
      {
        v52 = v81;
      }

      v77 = v52;
      v50 = v83;
      v53 = v84;
      v54 = v85;
      v75 = v51;
      while (1)
      {
        v58 = v54;
        v59 = v50;
        v60 = v53;
        v61 = v51;
        v51(v58, v59, v53);
        if (v4 == v77)
        {
          (*v68)(v85, v60);
          v4 = v77;
          v81 = v77;
          goto LABEL_33;
        }

        sub_1B4DD2BC4(v20, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v81 = v4;
        v61(&v76[v4 * v23], v85, v60);
        v62 = v79;
        if (!v79)
        {
          break;
        }

        v63 = v40;
LABEL_55:
        v79 = (v62 - 1) & v62;
        v56 = v84;
        (*v71)(v20, *(v72 + 48) + (__clz(__rbit64(v62)) | (v63 << 6)) * v23, v84);
        v55 = 0;
        v65 = v63;
LABEL_44:
        v4 = v81 + 1;
        v74(v20, v55, 1, v56);
        v50 = v83;
        sub_1B4E21A90(v20, v83, &qword_1EB8F57D0, &unk_1B4F79EF0);
        v57 = v78(v50, 1, v56);
        v53 = v56;
        v40 = v65;
        v49 = v65;
        v54 = v85;
        v51 = v75;
        if (v57 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v69 <= v40 + 1)
      {
        v64 = v40 + 1;
      }

      else
      {
        v64 = v69;
      }

      v65 = v64 - 1;
      while (1)
      {
        v63 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v63 >= v69)
        {
          v79 = 0;
          v55 = 1;
          v56 = v84;
          goto LABEL_44;
        }

        v62 = *(v70 + 8 * v63);
        ++v40;
        if (v62)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v41 = v84;
      v74 = *(v2 + 56);
      v74(v20, 1, 1, v84);
      v79 = 0;
    }

    v44 = v82;
LABEL_30:
    sub_1B4DD2BC4(v20, &qword_1EB8F57D0, &unk_1B4F79EF0);
    sub_1B4E632A0();
    sub_1B4DD2BC4(v44, &qword_1EB8F57D0, &unk_1B4F79EF0);
    goto LABEL_14;
  }

LABEL_20:
  v38 = (*(v31 - 32) + 64) >> 6;
  if (v38 <= v35 + 1)
  {
    v39 = v35 + 1;
  }

  else
  {
    v39 = v38;
  }

  v40 = v39 - 1;
  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v38)
    {
      goto LABEL_57;
    }

    v36 = *(v32 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}