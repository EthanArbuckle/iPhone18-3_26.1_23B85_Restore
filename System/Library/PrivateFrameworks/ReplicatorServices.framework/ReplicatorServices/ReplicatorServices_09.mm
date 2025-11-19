uint64_t sub_1BABB42EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BABB2878();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BAB1EBDC();
      goto LABEL_12;
    }

    sub_1BABB5A58();
  }

  v8 = *v3;
  sub_1BABE71AC();
  sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);
  result = sub_1BABE74AC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1BAAD6F34(&qword_1EBC121F8, 255, MEMORY[0x1E69C7318]);
    do
    {
      result = sub_1BABE74DC();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

uint64_t sub_1BABB44DC(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BABB2B10();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1BAB1EBF0();
      goto LABEL_12;
    }

    sub_1BABB5CD4();
  }

  v12 = *v3;
  sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
  v13 = sub_1BABE74AC();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1BAAD6F34(&unk_1ED7872A0, 255, MEMORY[0x1E69695A8]);
      v21 = sub_1BABE74DC();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

uint64_t sub_1BABB4788(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BABB2E70();
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1BAB1EE28();
      goto LABEL_12;
    }

    sub_1BABB5FF4();
  }

  v8 = *v3;
  sub_1BABE72FC();
  sub_1BAAD6F34(&qword_1ED787358, 255, MEMORY[0x1E695BF10]);
  result = sub_1BABE74AC();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_1BAAD6F34(&qword_1ED787350, 255, MEMORY[0x1E695BF10]);
    do
    {
      result = sub_1BABE74DC();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
  result = sub_1BABE7EEC();
  __break(1u);
  return result;
}

uint64_t sub_1BABB4978(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_1BABE7AAC();
  v6 = result;
  if (*(v4 + 16))
  {
    v34 = v2;
    v35 = v4;
    v7 = 0;
    v8 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v36 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v37 = (v11 - 1) & v11;
LABEL_15:
      v19 = (*(v4 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v23 = v19[2];
      v22 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      sub_1BABE7F9C();

      sub_1BABE759C();
      sub_1BABE759C();
      MEMORY[0x1BFAFDC40](v25);
      MEMORY[0x1BFAFDC40](v24);
      result = sub_1BABE7FDC();
      v6 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v36 + 48) + 48 * v14);
      *v15 = v20;
      v15[1] = v21;
      v11 = v37;
      v15[2] = v23;
      v15[3] = v22;
      v15[4] = v25;
      v15[5] = v24;
      ++*(v36 + 16);
      v4 = v35;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v33 = v6;

        v3 = v34;
        goto LABEL_26;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v33 = result;

LABEL_26:
    *v3 = v33;
  }

  return result;
}

uint64_t sub_1BABB4C24()
{
  v1 = v0;
  v20 = *(type metadata accessor for ReplicatorDevice(0) - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A68);
  result = sub_1BABE7AAC();
  v6 = result;
  if (*(v4 + 16))
  {
    v19 = v0;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(v20 + 72);
      sub_1BABB71B8(*(v4 + 48) + v16 * (v13 | (v7 << 6)), v3, type metadata accessor for ReplicatorDevice);
      sub_1BABE7F9C();
      ReplicatorDevice.hash(into:)(v21);
      sub_1BABE7FDC();
      v17 = sub_1BABE7A3C();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1BABB7280(v3, *(v6 + 48) + v17 * v16, type metadata accessor for ReplicatorDevice);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v1 = v19;
        goto LABEL_16;
      }

      v15 = *(v4 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BABB4E8C()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID(0);
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A38);
  v11 = sub_1BABE7AAC();
  result = v10;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v43 = (v3 + 48);
    v44 = v2;
    v40 = (v3 + 32);
    v38 = v0;
    v39 = (v3 + 8);
    v19 = v11 + 56;
    v20 = v46;
    v42 = result;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v48 = (v17 - 1) & v17;
LABEL_15:
      v25 = *(result + 48);
      v47 = *(v45 + 72);
      sub_1BABB71B8(v25 + v47 * (v22 | (v13 << 6)), v9, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      sub_1BABE759C();
      sub_1BABE759C();
      sub_1BABE759C();
      v26 = v7;
      sub_1BABB71B8(&v9[*(v7 + 28)], v20, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v27 = v44;
      if ((*v43)(v20, 1, v44) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v28 = v41;
        (*v40)(v41, v46, v27);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v29 = v28;
        v20 = v46;
        (*v39)(v29, v27);
      }

      v7 = v26;
      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1BABB7280(v9, *(v11 + 48) + v21 * v47, type metadata accessor for ReplicatorRecord.ID);
      ++*(v11 + 16);
      result = v42;
      v17 = v48;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v38;
        goto LABEL_29;
      }

      v24 = *(v14 + 8 * v13);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v48 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v11;
  }

  return result;
}

unint64_t sub_1BABB5388()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB0);
  result = sub_1BABE7AAC();
  v4 = result;
  v5 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v22 = v1;
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
    v23 = result + 56;
    v24 = result;
    if (v9)
    {
      do
      {
        v11 = __clz(__rbit64(v9));
        v26 = (v9 - 1) & v9;
LABEL_12:
        v14 = (*(v5 + 48) + 80 * (v11 | (v6 << 6)));
        v15 = v14[4];
        v16 = v14[1];
        v17 = v14[2];
        v32 = v14[3];
        v33 = v15;
        v31 = v17;
        v29 = *v14;
        v30 = v16;
        sub_1BABE7F9C();
        v25 = v33;
        sub_1BAB21C84(&v29, v27);
        sub_1BABE759C();
        sub_1BABE759C();
        sub_1BABE759C();
        v5 = v2;
        sub_1BABE759C();
        sub_1BABE6060(v28, v25);
        sub_1BABE5ED0(v28, *(&v25 + 1));
        sub_1BABE7FDC();
        v4 = v24;
        result = sub_1BABE7A3C();
        *(v23 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
        v18 = (*(v24 + 48) + 80 * result);
        *v18 = v29;
        v19 = v30;
        v20 = v31;
        v21 = v33;
        v18[3] = v32;
        v18[4] = v21;
        v18[1] = v19;
        v18[2] = v20;
        ++*(v24 + 16);
        v9 = v26;
      }

      while (v26);
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v1 = v22;
        goto LABEL_16;
      }

      v13 = *(v2 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v26 = (v13 - 1) & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BABB560C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CC8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1BABE7F9C();

      sub_1BABE759C();
      result = sub_1BABE7FDC();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
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

uint64_t sub_1BABB5844()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CE0);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1BABE797C();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
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

uint64_t sub_1BABB5A58()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12BD8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
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
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BABE71AC();
      sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);

      result = sub_1BABE74AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
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

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
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

uint64_t sub_1BABB5CD4()
{
  v1 = v0;
  v32 = sub_1BABE6CFC();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12CD8);
  v6 = sub_1BABE7AAC();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
      result = sub_1BABE74AC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1BABB5FF4()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AB8);
  result = sub_1BABE7AAC();
  v4 = result;
  if (*(v2 + 16))
  {
    v24 = v2;
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
      v25 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_1BABE72FC();
      sub_1BAAD6F34(&qword_1ED787358, 255, MEMORY[0x1E695BF10]);

      result = sub_1BABE74AC();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v24;
      v9 = v25;
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

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v25 = (v15 - 1) & v15;
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

uint64_t sub_1BABB6300(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_OWORD *, _BYTE *), void (*a5)(_BYTE *, _OWORD *))
{
  v9 = *(a1 + 16);
  v10 = a2();
  result = MEMORY[0x1BFAFD4B0](v9, a3, v10);
  v15 = result;
  if (v9)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = v12[1];
      v16[0] = *v12;
      v16[1] = v13;
      v16[2] = v12[2];
      a4(v16, v14);
      a5(v14, v16);

      v12 += 3;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1BABB63C4(uint64_t a1)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  MEMORY[0x1EEE9AC00](v70);
  v3 = &v56 - v2;
  v74 = sub_1BABE6CFC();
  v4 = *(v74 - 8);
  v5 = MEMORY[0x1EEE9AC00](v74);
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v56 - v7;
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v66 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v56 - v11;
  v13 = type metadata accessor for ReplicatorRecord.ID(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v57 = (&v56 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v56 - v20);
  v22 = *(a1 + 16);
  v23 = sub_1BAAD6F34(&qword_1ED787418, 255, type metadata accessor for ReplicatorRecord.ID);
  v77 = v13;
  v76 = MEMORY[0x1BFAFD4B0](v22, v13, v23);
  v60 = v22;
  if (v22)
  {
    v24 = 0;
    v58 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v80 = *(v14 + 72);
    v73 = (v4 + 48);
    v64 = (v4 + 32);
    v65 = (v4 + 8);
    v25 = v74;
    v26 = v66;
    v59 = v12;
    v69 = v21;
    v61 = v3;
    do
    {
      v63 = v24;
      sub_1BABB71B8(v58 + v80 * v24, v21, type metadata accessor for ReplicatorRecord.ID);
      sub_1BABE7F9C();
      v29 = *v21;
      v82 = v21[1];
      v83 = v29;
      sub_1BABE759C();
      v30 = v21[3];
      v75 = v21[2];
      v81 = v30;
      sub_1BABE759C();
      v31 = v21[4];
      v78 = v21[5];
      v79 = v31;
      sub_1BABE759C();
      v72 = *(v77 + 28);
      sub_1BABB71B8(v21 + v72, v12, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v71 = *v73;
      if (v71(v12, 1, v25) == 1)
      {
        MEMORY[0x1BFAFDC20](0);
      }

      else
      {
        v32 = v56;
        (*v64)(v56, v12, v25);
        MEMORY[0x1BFAFDC20](1);
        sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
        sub_1BABE74BC();
        v26 = v66;
        (*v65)(v32, v25);
      }

      v33 = (v21 + *(v77 + 32));
      v34 = v33[1];
      v68 = *v33;
      v67 = v34;
      sub_1BABE759C();
      v35 = sub_1BABE7FDC();
      v37 = v75;
      v36 = v76;
      v38 = v76 + 56;
      v39 = -1 << *(v76 + 32);
      v40 = v35 & ~v39;
      if (((*(v76 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
      {
LABEL_3:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v57;
        sub_1BABB71B8(v21, v57, type metadata accessor for ReplicatorRecord.ID);
        v84 = v36;
        sub_1BABB36E0(v28, v40, isUniquelyReferenced_nonNull_native);
        v76 = v84;
        goto LABEL_4;
      }

      v41 = ~v39;
      while (1)
      {
        sub_1BABB71B8(*(v36 + 48) + v40 * v80, v17, type metadata accessor for ReplicatorRecord.ID);
        v42 = *v17 == v83 && v17[1] == v82;
        if (!v42 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_13;
        }

        v43 = v17[2] == v37 && v17[3] == v81;
        if (!v43 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_13;
        }

        v44 = v17[4] == v79 && v17[5] == v78;
        if (!v44 && (sub_1BABE7EDC() & 1) == 0)
        {
          goto LABEL_13;
        }

        v45 = *(v70 + 48);
        sub_1BABB71B8(v17 + *(v77 + 28), v3, type metadata accessor for ReplicatorRecord.ID.Ownership);
        sub_1BABB71B8(v21 + v72, &v3[v45], type metadata accessor for ReplicatorRecord.ID.Ownership);
        v46 = v74;
        v47 = v71;
        if (v71(v3, 1, v74) == 1)
        {
          if (v47(&v3[v45], 1, v46) == 1)
          {
            goto LABEL_34;
          }

          goto LABEL_11;
        }

        sub_1BABB71B8(v3, v26, type metadata accessor for ReplicatorRecord.ID.Ownership);
        if (v47(&v3[v45], 1, v46) != 1)
        {
          break;
        }

        (*v65)(v26, v46);
LABEL_11:
        sub_1BAAD2E14(v3, &unk_1EBC12A28);
LABEL_12:
        v21 = v69;
        v37 = v75;
        v36 = v76;
LABEL_13:
        sub_1BABB7220(v17, type metadata accessor for ReplicatorRecord.ID);
        v40 = (v40 + 1) & v41;
        if (((*(v38 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v48 = &v3[v45];
      v49 = v62;
      (*v64)(v62, v48, v46);
      v50 = sub_1BABE6CCC();
      v51 = *v65;
      v52 = v49;
      v3 = v61;
      v26 = v66;
      (*v65)(v52, v46);
      v51(v26, v46);
      if ((v50 & 1) == 0)
      {
        sub_1BABB7220(v3, type metadata accessor for ReplicatorRecord.ID.Ownership);
        goto LABEL_12;
      }

LABEL_34:
      sub_1BABB7220(v3, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v36 = v76;
      v53 = (v17 + *(v77 + 32));
      v54 = *v53 == v68 && v53[1] == v67;
      v21 = v69;
      v37 = v75;
      if (!v54 && (sub_1BABE7EDC() & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_1BABB7220(v17, type metadata accessor for ReplicatorRecord.ID);
LABEL_4:
      sub_1BABB7220(v21, type metadata accessor for ReplicatorRecord.ID);
      v24 = v63 + 1;
      v25 = v74;
      v12 = v59;
    }

    while (v63 + 1 != v60);
  }

  return v76;
}

uint64_t sub_1BABB6CC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFAFD4B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BABB0450(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1BABB6D5C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1BABE7A5C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = sub_1BABE71AC();
  v5 = sub_1BAAD6F34(&qword_1EBC12200, 255, MEMORY[0x1E69C7318]);
  result = MEMORY[0x1BFAFD4B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAFD7A0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1BABB07B8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1BABE7A5C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BABB6ECC(uint64_t a1)
{
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1BAAD6F34(&unk_1ED787C50, 255, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1BFAFD4B0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1BABB0AA4(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1BABB71B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABB7220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BABB7280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BABB72E8()
{
  result = qword_1EBC13F28;
  if (!qword_1EBC13F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F28);
  }

  return result;
}

unint64_t sub_1BABB73EC()
{
  result = qword_1EBC13F30;
  if (!qword_1EBC13F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F30);
  }

  return result;
}

uint64_t sub_1BABB74F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v6 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BABE6BAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6AEC();
  v13 = *(v3 + 16);
  v23 = v3;
  v24 = v12;
  v25 = a1;
  v26 = a2;
  v20 = sub_1BABB8C20;
  v21 = &v22;
  os_unfair_lock_lock(v13 + 4);
  v14 = v27;
  sub_1BABAB93C(v15);
  v16 = (v10 + 8);
  os_unfair_lock_unlock(v13 + 4);
  if (!v14)
  {
    sub_1BABB8C40(v8, v19);
  }

  return (*v16)(v12, v9);
}

uint64_t sub_1BABB7694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v77 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v79 = &v68 - v8;
  v9 = sub_1BABE6CFC();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SQLDatabase.Storage();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v68 - v14;
  v16 = sub_1BABE6BAC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68 - v20;
  swift_beginAccess();
  v22 = *(a1 + 24);
  if (*(v22 + 16) && (v23 = sub_1BABD5E5C(a2), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();

    v26 = v77;
    sub_1BABE6CEC();
    v27 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
    (*(v17 + 16))(v26 + v27[6], a2, v16);
    *(v26 + v27[5]) = v25;
    v28 = (v26 + v27[7]);
    v30 = v75;
    v29 = v76;
    *v28 = v75;
    v28[1] = v29;
    v31 = v78;
    (*(v73 + 16))(v78, v26, v74);
    v32 = v79;
    sub_1BABB8D18(v26, v79, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    (*(*(v27 - 1) + 56))(v32, 0, 1, v27);
    swift_beginAccess();
    sub_1BAADAF5C(v30);
    sub_1BAB30AB4(v32, v31);
    swift_endAccess();
    swift_beginAccess();
    v33 = *(a1 + 32);
    if (*(v33 + 16) && (v34 = sub_1BABD5E5C(a2), (v35 & 1) != 0))
    {
      v36 = *(*(v33 + 56) + 8 * v34);
    }

    else
    {
      v36 = 0;
    }

    result = swift_endAccess();
    v65 = __OFADD__(v36, 1);
    v66 = v36 + 1;
    if (v65)
    {
      __break(1u);
      return result;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a1 + 32);
    *(a1 + 32) = 0x8000000000000000;
    sub_1BAAE7284(v66, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 32) = v83;
  }

  else
  {
    swift_endAccess();
    v37 = a1;
    v71 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v17;
    v39 = *(v17 + 16);
    v81 = v21;
    v39(v21, a2, v16);
    v40 = swift_allocObject();
    v70 = v37;
    swift_weakInit();
    v41 = v71;
    v69 = a2;
    v39(v71, a2, v16);
    v42 = (*(v17 + 80) + 24) & ~*(v17 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v72 = v17;
    v44 = v43 + v42;
    v45 = v43;
    (*(v17 + 32))(v44, v41, v16);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13CA0);
    v47 = *(v46 + 48);
    v71 = v39;
    v68 = v38 + 16;
    v39(v15, v81, v16);
    *&v15[v47] = 1;
    (*(*(v46 - 8) + 56))(v15, 0, 1, v46);
    v48 = v80;
    sub_1BABB8D18(v15, v80, type metadata accessor for SQLDatabase.Storage);
    type metadata accessor for Database();
    swift_allocObject();

    v49 = v82;
    v50 = Database.init(storage:corruptionHandler:)(v48, sub_1BABB8CA4, v45);
    v82 = v49;
    if (v49)
    {
      sub_1BABB8D80(v15, type metadata accessor for SQLDatabase.Storage);
      (*(v72 + 8))(v81, v16);
    }

    v52 = v50;
    sub_1BABB8D80(v15, type metadata accessor for SQLDatabase.Storage);
    (*(v72 + 8))(v81, v16);

    v53 = v77;
    sub_1BABE6CEC();
    v54 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
    v55 = v69;
    (v71)(v53 + v54[6], v69, v16);
    *(v53 + v54[5]) = v52;
    v56 = (v53 + v54[7]);
    v58 = v75;
    v57 = v76;
    *v56 = v75;
    v56[1] = v57;
    v59 = v70;
    swift_beginAccess();

    sub_1BAADAF5C(v58);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v59 + 24);
    *(v59 + 24) = 0x8000000000000000;
    sub_1BAAE70B8(v52, v55, v60);
    *(v59 + 24) = v83;
    swift_endAccess();
    v61 = v78;
    (*(v73 + 16))(v78, v53, v74);
    v62 = v53;
    v63 = v79;
    sub_1BABB8D18(v62, v79, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    (*(*(v54 - 1) + 56))(v63, 0, 1, v54);
    swift_beginAccess();
    sub_1BAB30AB4(v63, v61);
    swift_endAccess();
    swift_beginAccess();
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(v59 + 32);
    *(v59 + 32) = 0x8000000000000000;
    sub_1BAAE7284(1, v55, v64);
    *(v59 + 32) = v83;
  }

  return swift_endAccess();
}

uint64_t sub_1BABB7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v40 = a1;
  v55 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  v51 = *(v55 - 8);
  v3 = MEMORY[0x1EEE9AC00](v55);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v39 - v6;
  v56 = sub_1BABE6CFC();
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v49 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F48);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v39 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = result;
    swift_beginAccess();
    v39[1] = v16;
    v17 = *(v16 + 40);
    v18 = v17 + 64;
    v19 = 1 << *(v17 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v17 + 64);
    v41 = (v19 + 63) >> 6;
    v43 = v7 + 32;
    v44 = v7 + 16;
    v47 = v7;
    v52 = v17;
    v53 = (v7 + 8);

    v22 = 0;
    v48 = v5;
    v45 = v14;
    v46 = v12;
    v42 = v18;
    while (v21)
    {
      v23 = v22;
LABEL_16:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v52;
      v29 = v47;
      v30 = v49;
      v31 = v56;
      (*(v47 + 16))(v49, *(v52 + 48) + *(v47 + 72) * v27, v56);
      v32 = v50;
      sub_1BABB8D18(*(v28 + 56) + *(v51 + 72) * v27, v50, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F50);
      v34 = *(v33 + 48);
      v35 = *(v29 + 32);
      v12 = v46;
      v35(v46, v30, v31);
      sub_1BABB8C40(v32, &v12[v34]);
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v5 = v48;
      v14 = v45;
      v18 = v42;
LABEL_17:
      sub_1BABB8DE0(v12, v14);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F50);
      if ((*(*(v36 - 8) + 48))(v14, 1, v36) == 1)
      {
      }

      sub_1BABB8C40(&v14[*(v36 + 48)], v5);
      if (sub_1BABE6B3C())
      {
        v37 = *&v5[*(v55 + 28)];
        if (v37)
        {

          v37(v40);
          sub_1BAADAFD4(v37);
        }
      }

      sub_1BABB8D80(v5, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      result = (*v53)(v14, v56);
    }

    if (v41 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v41;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v41)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F50);
        (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
        v21 = 0;
        v22 = v25;
        goto LABEL_17;
      }

      v21 = *(v18 + 8 * v23);
      ++v22;
      if (v21)
      {
        v22 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BABB8400(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6BAC();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DC8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a2);
  (*(v8 + 56))(v13, 1, 1, v7);
  swift_beginAccess();
  sub_1BAB30AB4(v13, v16);
  swift_endAccess();
  swift_beginAccess();
  v18 = *(a1 + 32);
  if (*(v18 + 16) && (v19 = *(v7 + 24), v20 = sub_1BABD5E5C(a2 + v19), (v21 & 1) != 0))
  {
    v22 = *(*(v18 + 56) + 8 * v20);
    result = swift_endAccess();
    if (__OFSUB__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      if (v22 == 1)
      {
        v34 = v38;
        v35 = *(v37 + 16);
        v35(v6, a2 + v19, v38);
        swift_beginAccess();
        sub_1BAB30CD4(0, 1, v6);
        swift_endAccess();
        v35(v6, a2 + v19, v34);
        swift_beginAccess();
        sub_1BAB30E88(0, v6);
      }

      else
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *(a1 + 32);
        *(a1 + 32) = 0x8000000000000000;
        sub_1BAAE7284(v22 - 1, a2 + v19, isUniquelyReferenced_nonNull_native);
        *(a1 + 32) = v40;
      }

      return swift_endAccess();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v25 = sub_1BABE72BC();
    __swift_project_value_buffer(v25, qword_1EBC25018);
    sub_1BABB8D18(a2, v10, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    v26 = sub_1BABE729C();
    v27 = sub_1BABE78EC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39[0] = v29;
      *v28 = 136446210;
      sub_1BAAD394C(&qword_1EBC12E10, MEMORY[0x1E6968FB0]);
      v30 = sub_1BABE7EAC();
      v32 = v31;
      sub_1BABB8D80(v10, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
      v33 = sub_1BAAFA460(v30, v32, v39);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1BAACF000, v26, v27, "Bad refcount encountered for URL %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1BFAFE460](v29, -1, -1);
      MEMORY[0x1BFAFE460](v28, -1, -1);
    }

    else
    {

      sub_1BABB8D80(v10, type metadata accessor for MultipleDatabaseManager.ManagedDatabase);
    }

    sub_1BABB8BCC();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BABB8984()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t type metadata accessor for MultipleDatabaseManager.ManagedDatabase()
{
  result = qword_1EBC11F58;
  if (!qword_1EBC11F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BABB8A6C()
{
  sub_1BABE6CFC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Database();
    if (v1 <= 0x3F)
    {
      sub_1BABE6BAC();
      if (v2 <= 0x3F)
      {
        sub_1BABB8B20();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BABB8B20()
{
  if (!qword_1EBC11D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13F38);
    v0 = sub_1BABE799C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC11D40);
    }
  }
}

unint64_t sub_1BABB8BCC()
{
  result = qword_1EBC13F40;
  if (!qword_1EBC13F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F40);
  }

  return result;
}

uint64_t sub_1BABB8C40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipleDatabaseManager.ManagedDatabase();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BABB8CA4(uint64_t a1)
{
  v3 = *(sub_1BABE6BAC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1BABB7EB0(a1, v4, v5);
}

uint64_t sub_1BABB8D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABB8D80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BABB8DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BABB8E64()
{
  result = qword_1EBC13F58;
  if (!qword_1EBC13F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F58);
  }

  return result;
}

uint64_t RecordDataPersistentStore.__allocating_init(database:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t RecordDataPersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

Swift::Bool __swiftcall RecordDataPersistentStore.isKnownFilename(_:)(Swift::String a1)
{

  v1 = sub_1BAAE0194();

  return v1 & 1;
}

uint64_t RecordDataPersistentStore.recordData(recordID:protocolVersion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  sub_1BAADDB38(a1, a2);
}

uint64_t RecordDataPersistentStore.recordData(recordID:compatibleWithZoneProtocolVersion:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  sub_1BAADCCFC(a1, a2);
}

uint64_t sub_1BABB9914(uint64_t a1, uint64_t (*a2)(uint64_t))
{

  v4 = a2(a1);

  return v4;
}

uint64_t RecordDataPersistentStore.zoneIDs()()
{

  v0 = sub_1BAADFB50();

  return v0;
}

uint64_t sub_1BABB9E70()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F60);
    sub_1BABB9F08();
    v1 = sub_1BABE734C();
    *(v0 + 40) = v1;
  }

  return v1;
}

unint64_t sub_1BABB9F08()
{
  result = qword_1EBC11D90;
  if (!qword_1EBC11D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC13F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC11D90);
  }

  return result;
}

uint64_t (*sub_1BABB9F7C(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_1BABB9E70();
  return sub_1BABB9FC4;
}

void *ClientSettingsPersistentStore.__allocating_init(database:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BABBA6F4(a1);

  return v2;
}

void *ClientSettingsPersistentStore.init(database:)(uint64_t a1)
{
  v1 = sub_1BABBA6F4(a1);

  return v1;
}

uint64_t ClientSettingsPersistentStore.deinit()
{

  return v0;
}

uint64_t ClientSettingsPersistentStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void ClientSettingsPersistentStore.clientSettings()()
{
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1BAB8F380(&v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ClientSettingsPersistentStore.update(clientSettings:)(ReplicatorServices::ClientSettings clientSettings)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAB78084(v4);
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {

    sub_1BABE730C();
  }
}

uint64_t sub_1BABBA238(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  Database.update(reason:_:)();
  if (v4)
  {
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1BAAE5DA4(a2, a3, a4 & 0x101, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v11;
  return swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ClientSettingsPersistentStore.remove(clientID:)(Swift::String clientID)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAB7841C(v4);
  os_unfair_lock_unlock(v3 + 4);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    sub_1BABE730C();
  }
}

uint64_t sub_1BABBA3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Database.update(reason:_:)();
  if (v3)
  {
  }

  swift_beginAccess();

  sub_1BAB3C0FC(a2, a3, v7);

  return swift_endAccess();
}

void sub_1BABBA53C(uint64_t a1)
{

  v3 = sub_1BAAFC0B8();
  if (v1)
  {

    if (qword_1EBC12270 != -1)
    {
      swift_once();
    }

    v4 = sub_1BABE72BC();
    __swift_project_value_buffer(v4, qword_1EBC25018);
    v5 = v1;
    v6 = sub_1BABE729C();
    v7 = sub_1BABE78EC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      v10 = v1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1BAACF000, v6, v7, "Could not load client settings from database: %{public}@", v8, 0xCu);
      sub_1BAB2F654(v9);
      MEMORY[0x1BFAFE460](v9, -1, -1);
      MEMORY[0x1BFAFE460](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = v3;

    swift_beginAccess();
    *(a1 + 32) = v12;
  }
}

void *sub_1BABBA6F4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC8];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F60);
  swift_allocObject();
  v1[6] = sub_1BABE731C();
  v1[2] = a1;
  v5 = v1[3];

  os_unfair_lock_lock(v5 + 4);
  sub_1BAB7841C(v6);
  os_unfair_lock_unlock(v5 + 4);
  return v1;
}

uint64_t sub_1BABBA7CC()
{
  if (*(v0 + 41))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1BABBA238(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 | *(v0 + 40));
}

void sub_1BABBA90C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v5 = v3 | v2;
  sub_1BAAFC560(v4);
}

ReplicatorServices::ZonePublicationMethod_optional __swiftcall ZonePublicationMethod.init(rawValue:)(Swift::Int64 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BABBA9A4()
{
  result = qword_1EBC13F68;
  if (!qword_1EBC13F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F68);
  }

  return result;
}

unint64_t sub_1BABBAAB8()
{
  result = qword_1ED787838;
  if (!qword_1ED787838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787838);
  }

  return result;
}

uint64_t sub_1BABBAB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BABE7F9C();
  sub_1BABE759C();
  v6 = sub_1BABE7FDC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BABE7EDC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BABBAC04(uint64_t a1, uint64_t a2)
{
  v33 = 0;
  v34 = 0xE000000000000000;
  v5 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  v35 = v5;
  MEMORY[0x1BFAFD200](37);
  MEMORY[0x1BFAFD240](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v7 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x200A45524548570ALL, 0xEB00000000202020);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](542329120, 0xE400000000000000);
  v31 = MEMORY[0x1E69E6158];
  v32 = &protocol witness table for String;
  v23 = a1;
  v28 = a1;
  v29 = a2;
  sub_1BAAE779C(&v28, &v24);

  SQLValue.init(_:)(&v24, v26);
  v9 = v26[0];
  v10 = v26[1];
  v11 = v27;
  v24 = 0x676E69646E696240;
  v25 = 0xE800000000000000;
  v36 = *(v5 + 16) + 1;
  v12 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v12);

  v14 = v24;
  v13 = v25;
  MEMORY[0x1BFAFD240](v24, v25);
  sub_1BAAE7800(v9, v10, v11);
  v15 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v15;
  sub_1BAAE5904(v9, v10, v11, v14, v13, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v9, v10, v11);
  v35 = v24;
  __swift_destroy_boxed_opaque_existential_1(&v28);
  MEMORY[0x1BFAFD240](59, 0xE100000000000000);
  v17 = v33;
  v18 = v34;
  v19 = v35;
  if (swift_weakLoadStrong())
  {
    v28 = v19;
    v29 = v17;
    v30 = v18;
    v20 = SQLDatabase.perform(_:)(&v28);

    if (!v2)
    {
      v21 = sub_1BABBB32C(v20);

      LOBYTE(a2) = sub_1BABBAB0C(v23, a2, v21);
    }

    return a2 & 1;
  }

  else
  {
    result = sub_1BABE7C9C();
    __break(1u);
  }

  return result;
}

uint64_t Database.RunOnceStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void sub_1BABBAFB0(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v3 = *(Strong + 24);
  MEMORY[0x1EEE9AC00](Strong);
  os_unfair_lock_lock(v3 + 4);
  sub_1BAAF0E90(&v24);
  if (v2)
  {
LABEL_10:
    os_unfair_lock_unlock(v3 + 4);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v3 + 4);
  v7 = v24;

  if (v7 != 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v31 = sub_1BAAE7678(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFAFD200](38);
  MEMORY[0x1BFAFD240](0x4920545245534E49, 0xEC000000204F544ELL);
  v8 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v8);

  MEMORY[0x1BFAFD240](0x202020200A2820, 0xE700000000000000);
  v9 = sub_1BABE7B0C();
  MEMORY[0x1BFAFD240](v9);

  MEMORY[0x1BFAFD240](0xD000000000000010, 0x80000001BABF5800);
  v27 = MEMORY[0x1E69E6158];
  v28 = &protocol witness table for String;
  v24 = a1;
  v25 = a2;
  sub_1BAAE779C(&v24, &v20);

  SQLValue.init(_:)(&v20, v22);
  v10 = v22[0];
  v11 = v22[1];
  v12 = v23;
  v20 = 0x676E69646E696240;
  v21 = 0xE800000000000000;
  v13 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v13);

  v14 = v20;
  v3 = v21;
  MEMORY[0x1BFAFD240](v20, v21);
  sub_1BAAE7800(v10, v11, v12);
  v15 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_1BAAE5904(v10, v11, v12, v14, v3, isUniquelyReferenced_nonNull_native);

  sub_1BAAE7878(v10, v11, v12);
  v31 = v20;
  __swift_destroy_boxed_opaque_existential_1(&v24);
  MEMORY[0x1BFAFD240](3877130, 0xE300000000000000);
  v18 = v29;
  v17 = v30;
  v19 = v31;
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_1BABE7C9C();
    __break(1u);
    goto LABEL_10;
  }

  v24 = v19;
  v25 = v18;
  v26 = v17;
  SQLDatabase.perform(_:)(&v24);
}

uint64_t sub_1BABBB32C(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v20 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    do
    {

      v5 = sub_1BABE7B0C();
      SQLResult.subscript.getter(v5, v6, &v17);

      v7 = v19;
      if (v19 == 255 || (v8 = v17, v9 = v18, v10 = sub_1BAAF9770(v17, v18, v19), v12 = v11, sub_1BAAE8B8C(v8, v9, v7), !v12))
      {
        if (qword_1EBC12270 != -1)
        {
          swift_once();
        }

        v13 = sub_1BABE72BC();
        __swift_project_value_buffer(v13, qword_1EBC25018);
        v14 = sub_1BABE729C();
        v15 = sub_1BABE78EC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1BAACF000, v14, v15, "Encountered malformed completed entry", v16, 2u);
          MEMORY[0x1BFAFE460](v16, -1, -1);
        }
      }

      else
      {
        sub_1BABB0450(&v17, v10, v12);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
    return v20;
  }

  return result;
}

uint64_t ReplicatorRecord.Value.init(data:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(type metadata accessor for ReplicatorRecord.Value(0) + 20);
  v9 = sub_1BABE6BAC();
  (*(*(v9 - 8) + 56))(&a4[v8], 1, 1, v9);
  *a4 = a1;
  *(a4 + 1) = a2;
  return sub_1BAAD7BA0(a3, &a4[v8], &unk_1EBC13D70);
}

uint64_t ReplicatorRecord.init(id:version:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a1;
  v19 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  sub_1BABBBEAC(a1, a4, type metadata accessor for ReplicatorRecord.ID);
  v10 = type metadata accessor for ReplicatorRecord(0);
  v11 = v10[5];
  v12 = sub_1BABE6CFC();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a4 + v11, a2, v12);
  v14 = sub_1BABE6C8C();
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  (*(v13 + 8))(a2, v12);
  sub_1BABBBF34(v18, type metadata accessor for ReplicatorRecord.ID);
  v16 = v10[7];
  v15((a4 + v16), 1, 1, v14);
  *(a4 + v10[6]) = v19;
  result = sub_1BAAD7BA0(v9, a4 + v16, &qword_1EBC132A0);
  *(a4 + v10[8]) = 0;
  return result;
}

uint64_t ReplicatorRecord.ID.init(id:zone:clientID:ownership:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v16 = sub_1BABE6CFC();
  v24[0] = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  v19 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BABBBEAC(a7, a8 + *(v19 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);

  if (sub_1BABE75AC() >= 51)
  {
    v24[2] = a1;
    v24[3] = a2;
    sub_1BABE6E2C();
    a1 = sub_1BABE6CAC();
    v21 = v20;
    (*(v24[0] + 8))(v18, v16);

    a2 = v21;
  }

  result = sub_1BABBBF34(a7, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v23 = (a8 + *(v19 + 32));
  *v23 = a1;
  v23[1] = a2;
  return result;
}

uint64_t ReplicatorRecord.init(id:version:values:expiration:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = type metadata accessor for ReplicatorRecord(0);
  v13 = v12[7];
  v14 = sub_1BABE6C8C();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  sub_1BABC0CBC(a1, a6, type metadata accessor for ReplicatorRecord.ID);
  v15 = v12[5];
  v16 = sub_1BABE6CFC();
  (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  *(a6 + v12[6]) = a3;
  result = sub_1BAAD7BA0(a4, a6 + v13, &qword_1EBC132A0);
  *(a6 + v12[8]) = v11;
  return result;
}

uint64_t ReplicatorRecord.size.getter()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  v1 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v29 - v3);
  v5 = *(v0 + *(type metadata accessor for ReplicatorRecord(0) + 24));
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = v5;

  v12 = 0;
  v13 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v16 >= v10)
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v16);
        ++v12;
        if (v9)
        {
          v12 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_11:
    v17 = __clz(__rbit64(v9)) | (v12 << 6);
    v18 = *(v32 + 56);
    v19 = *(*(v32 + 48) + 8 * v17);
    v20 = v18 + *(*(type metadata accessor for ReplicatorRecord.Value(0) - 8) + 72) * v17;
    v21 = v31;
    sub_1BABBBEAC(v20, v4 + *(v31 + 48), type metadata accessor for ReplicatorRecord.Value);
    *v4 = v19;
    v22 = v30;
    sub_1BAB23414(v4, v30, &unk_1EBC12B50);
    v23 = (v22 + *(v21 + 48));
    v24 = *v23;
    v25 = v23[1];
    sub_1BAAE7824(*v23, v25);
    result = sub_1BABBBF34(v23, type metadata accessor for ReplicatorRecord.Value);
    v26 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      break;
    }

    if (v26)
    {
      result = sub_1BAAD73E4(v24, v25);
      LODWORD(v14) = HIDWORD(v24) - v24;
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_22;
      }

      v14 = v14;
    }

    else
    {
      v14 = BYTE6(v25);
    }

LABEL_5:
    v9 &= v9 - 1;
    v15 = __OFADD__(v13, v14);
    v13 += v14;
    if (v15)
    {
      goto LABEL_21;
    }
  }

  v14 = 0;
  if (v26 != 2)
  {
    goto LABEL_5;
  }

  v28 = *(v24 + 16);
  v27 = *(v24 + 24);
  result = sub_1BAAD73E4(v24, v25);
  v14 = v27 - v28;
  if (!__OFSUB__(v27, v28))
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_19:

  return v13;
}

uint64_t sub_1BABBBEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABBBF34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ReplicatorRecord.ID.Ownership.isLocallyOwned.getter()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  (*(v3 + 56))(&v21 - v14, 1, 1, v2);
  v16 = *(v7 + 56);
  sub_1BABBBEAC(v15, v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
  sub_1BABBBEAC(v1, &v9[v16], type metadata accessor for ReplicatorRecord.ID.Ownership);
  v17 = *(v3 + 48);
  if (v17(v9, 1, v2) != 1)
  {
    sub_1BABBBEAC(v9, v13, type metadata accessor for ReplicatorRecord.ID.Ownership);
    if (v17(&v9[v16], 1, v2) != 1)
    {
      (*(v3 + 32))(v5, &v9[v16], v2);
      v18 = sub_1BABE6CCC();
      v19 = *(v3 + 8);
      v19(v5, v2);
      sub_1BABBBF34(v15, type metadata accessor for ReplicatorRecord.ID.Ownership);
      v19(v13, v2);
      sub_1BABBBF34(v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
      return v18 & 1;
    }

    sub_1BABBBF34(v15, type metadata accessor for ReplicatorRecord.ID.Ownership);
    (*(v3 + 8))(v13, v2);
    goto LABEL_6;
  }

  sub_1BABBBF34(v15, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if (v17(&v9[v16], 1, v2) != 1)
  {
LABEL_6:
    sub_1BAAD2E14(v9, &unk_1EBC12A28);
    v18 = 0;
    return v18 & 1;
  }

  sub_1BABBBF34(v9, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1BABBC310()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_1BABBC344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1BABE7EDC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BABE7EDC();

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

uint64_t sub_1BABBC418(uint64_t a1)
{
  v2 = sub_1BABC0BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABBC454(uint64_t a1)
{
  v2 = sub_1BABC0BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BABBC490(uint64_t a1)
{
  v2 = sub_1BABC0C68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABBC4CC(uint64_t a1)
{
  v2 = sub_1BABC0C68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BABBC508(uint64_t a1)
{
  v2 = sub_1BABC0C14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABBC544(uint64_t a1)
{
  v2 = sub_1BABC0C14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorRecord.ID.Ownership.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F70);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v21 - v3;
  v4 = sub_1BABE6CFC();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F78);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F80);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABC0BC0();
  v16 = v28;
  sub_1BABE800C();
  sub_1BABBBEAC(v29, v11, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v30 = 0;
    sub_1BABC0C68();
    sub_1BABE7DFC();
    (*(v22 + 8))(v8, v23);
  }

  else
  {
    v18 = v24;
    (*(v16 + 32))(v24, v11, v4);
    v31 = 1;
    sub_1BABC0C14();
    v19 = v25;
    sub_1BABE7DFC();
    sub_1BAAD77A8(&qword_1EBC12220, MEMORY[0x1E69695A8]);
    v20 = v27;
    sub_1BABE7E7C();
    (*(v26 + 8))(v19, v20);
    (*(v16 + 8))(v18, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t ReplicatorRecord.ID.Ownership.hash(into:)()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABBBEAC(v0, v7, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x1BFAFDC20](0);
  }

  (*(v2 + 32))(v4, v7, v1);
  MEMORY[0x1BFAFDC20](1);
  sub_1BAAD77A8(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE74BC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t ReplicatorRecord.ID.Ownership.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE7F9C();
  sub_1BABBBEAC(v1, v8, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1BFAFDC20](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1BFAFDC20](1);
    sub_1BAAD77A8(&unk_1ED787C50, MEMORY[0x1E69695A8]);
    sub_1BABE74BC();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1BABE7FDC();
}

uint64_t ReplicatorRecord.ID.Ownership.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F90);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13F98);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13FA0);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1BABC0BC0();
  v20 = v51;
  sub_1BABE7FFC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v16;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1BABE7DEC();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1BAB702D4();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1BABE7B4C();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13918);
    *v32 = v51;
    sub_1BABE7D3C();
    sub_1BABE7B3C();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1BABC0C14();
    v28 = v22;
    sub_1BABE7D2C();
    v29 = v50;
    v35 = v21;
    v36 = sub_1BABE6CFC();
    sub_1BAAD77A8(&qword_1EBC125B0, MEMORY[0x1E69695A8]);
    v37 = v42;
    v38 = v46;
    sub_1BABE7DCC();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1BABC0CBC(v37, v43, type metadata accessor for ReplicatorRecord.ID.Ownership);
  }

  else
  {
    v57 = 0;
    sub_1BABC0C68();
    sub_1BABE7D2C();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = sub_1BABE6CFC();
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1BABC0CBC(v39, v35, type metadata accessor for ReplicatorRecord.ID.Ownership);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1BABBD43C()
{
  v1 = sub_1BABE6CFC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABBBEAC(v0, v7, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return MEMORY[0x1BFAFDC20](0);
  }

  (*(v2 + 32))(v5, v7, v1);
  MEMORY[0x1BFAFDC20](1);
  sub_1BAAD77A8(&unk_1ED787C50, MEMORY[0x1E69695A8]);
  sub_1BABE74BC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1BABBD608()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE7F9C();
  sub_1BABBBEAC(v1, v8, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1BFAFDC20](0);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    MEMORY[0x1BFAFDC20](1);
    sub_1BAAD77A8(&unk_1ED787C50, MEMORY[0x1E69695A8]);
    sub_1BABE74BC();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1BABE7FDC();
}

uint64_t ReplicatorRecord.ID.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReplicatorRecord.ID.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ReplicatorRecord.ID.zone.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ReplicatorRecord.ID.zone.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ReplicatorRecord.ID.clientID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ReplicatorRecord.ID.clientID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ReplicatorRecord.ID.logIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReplicatorRecord.ID(0) + 32));

  return v1;
}

uint64_t ReplicatorRecord.ID.description.getter()
{
  v1 = v0;
  sub_1BABE7AEC();
  MEMORY[0x1BFAFD240](540697705, 0xE400000000000000);
  v2 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1BFAFD240](*(v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 8));
  MEMORY[0x1BFAFD240](0x203A656E6F7A203BLL, 0xE800000000000000);
  MEMORY[0x1BFAFD240](v1[2], v1[3]);
  MEMORY[0x1BFAFD240](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1BFAFD240](v1[4], v1[5]);
  MEMORY[0x1BFAFD240](0x7372656E776F203BLL, 0xED0000203A706968);
  type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  sub_1BABE7BFC();
  return 0;
}

uint64_t sub_1BABBDBEC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4449746E65696C63;
  v4 = 0x69687372656E776FLL;
  if (v1 != 3)
  {
    v4 = 0x746E656449676F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701736314;
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

uint64_t sub_1BABBDC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BABC1820(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BABBDCAC(uint64_t a1)
{
  v2 = sub_1BABC0D24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BABBDCE8(uint64_t a1)
{
  v2 = sub_1BABC0D24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReplicatorRecord.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13FA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABC0D24();
  sub_1BABE800C();
  v8[15] = 0;
  sub_1BABE7E5C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1BABE7E5C();
    v8[13] = 2;
    sub_1BABE7E5C();
    type metadata accessor for ReplicatorRecord.ID(0);
    v8[12] = 3;
    type metadata accessor for ReplicatorRecord.ID.Ownership(0);
    sub_1BAAD77A8(&qword_1ED787170, type metadata accessor for ReplicatorRecord.ID.Ownership);
    sub_1BABE7E7C();
    v8[11] = 4;
    sub_1BABE7E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReplicatorRecord.ID.hash(into:)()
{
  v1 = v0;
  v2 = sub_1BABE6CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE759C();
  sub_1BABE759C();
  sub_1BABE759C();
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  sub_1BABBBEAC(v1 + *(v9 + 28), v8, type metadata accessor for ReplicatorRecord.ID.Ownership);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1BFAFDC20](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1BFAFDC20](1);
    sub_1BAAD77A8(&unk_1ED787C50, MEMORY[0x1E69695A8]);
    sub_1BABE74BC();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1BABE759C();
}

uint64_t ReplicatorRecord.ID.hashValue.getter()
{
  sub_1BABE7F9C();
  ReplicatorRecord.ID.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t ReplicatorRecord.ID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13FB0);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  v9 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BABC0D24();
  v32 = v8;
  v12 = v33;
  sub_1BABE7FFC();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v14 = v30;
  v33 = v9;
  v38 = 0;
  v15 = sub_1BABE7DAC();
  v17 = v16;
  *v11 = v15;
  v11[1] = v16;
  v37 = 1;
  v18 = sub_1BABE7DAC();
  v28[1] = 0;
  v28[2] = v17;
  v11[2] = v18;
  v11[3] = v19;
  v36 = 2;
  v11[4] = sub_1BABE7DAC();
  v11[5] = v20;
  v35 = 3;
  sub_1BAAD77A8(&qword_1ED787168, type metadata accessor for ReplicatorRecord.ID.Ownership);
  sub_1BABE7DCC();
  v21 = v5;
  v22 = v33;
  sub_1BABC0CBC(v21, v11 + *(v33 + 28), type metadata accessor for ReplicatorRecord.ID.Ownership);
  v34 = 4;
  v24 = sub_1BABE7DAC();
  v26 = v25;
  (*(v14 + 8))(v32, v31);
  v27 = (v11 + *(v22 + 32));
  *v27 = v24;
  v27[1] = v26;
  sub_1BABBBEAC(v11, v29, type metadata accessor for ReplicatorRecord.ID);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return sub_1BABBBF34(v11, type metadata accessor for ReplicatorRecord.ID);
}

uint64_t sub_1BABBE688()
{
  sub_1BABE7F9C();
  ReplicatorRecord.ID.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t sub_1BABBE6CC()
{
  sub_1BABE7F9C();
  ReplicatorRecord.ID.hash(into:)();
  return sub_1BABE7FDC();
}

uint64_t ReplicatorRecord.Value.data.getter()
{
  v1 = *v0;
  sub_1BAAE7824(*v0, *(v0 + 8));
  return v1;
}

uint64_t ReplicatorRecord.Value.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1BAAD73E4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t ReplicatorRecord.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReplicatorRecord(0) + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ReplicatorRecord.version.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReplicatorRecord(0) + 20);
  v4 = sub_1BABE6CFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ReplicatorRecord.values.getter()
{
  type metadata accessor for ReplicatorRecord(0);
}

uint64_t ReplicatorRecord.options.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ReplicatorRecord(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ReplicatorRecord.options.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for ReplicatorRecord(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ReplicatorRecord.init(id:version:values:expiration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  sub_1BABBBEAC(a1, a5, type metadata accessor for ReplicatorRecord.ID);
  v12 = type metadata accessor for ReplicatorRecord(0);
  v13 = v12[5];
  v14 = sub_1BABE6CFC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a5 + v13, a2, v14);
  sub_1BAB23414(a4, v11, &qword_1EBC132A0);
  (*(v15 + 8))(a2, v14);
  sub_1BABBBF34(a1, type metadata accessor for ReplicatorRecord.ID);
  v16 = v12[7];
  v17 = sub_1BABE6C8C();
  (*(*(v17 - 8) + 56))(a5 + v16, 1, 1, v17);
  *(a5 + v12[6]) = v20;
  result = sub_1BAAD7BA0(v11, a5 + v16, &qword_1EBC132A0);
  *(a5 + v12[8]) = 0;
  return result;
}

uint64_t ReplicatorRecord.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC132A0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v10 - v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1BABE7AEC();

  v11 = 540697705;
  v12 = 0xE400000000000000;
  v4 = ReplicatorRecord.ID.description.getter();
  MEMORY[0x1BFAFD240](v4);

  MEMORY[0x1BFAFD240](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  v5 = type metadata accessor for ReplicatorRecord(0);
  sub_1BABE6CFC();
  sub_1BAAD77A8(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
  v6 = sub_1BABE7EAC();
  MEMORY[0x1BFAFD240](v6);

  MEMORY[0x1BFAFD240](0x617269707865203BLL, 0xEE00203A6E6F6974);
  sub_1BAAD2DAC(v0 + *(v5 + 28), v3, &qword_1EBC132A0);
  v7 = sub_1BABE755C();
  MEMORY[0x1BFAFD240](v7);

  MEMORY[0x1BFAFD240](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v10[1] = *(v0 + *(v5 + 32));
  v8 = sub_1BABE755C();
  MEMORY[0x1BFAFD240](v8);

  return v11;
}

uint64_t ReplicatorRecord.highestCompatibleValue(for:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *a1;
  v4 = ReplicatorRecord.highestCompatibleValueVersion(for:)(&v20);
  if (v5 & 1) == 0 && (v6 = v4, v7 = *(v2 + *(type metadata accessor for ReplicatorRecord(0) + 24)), *(v7 + 16)) && (v8 = sub_1BABD5D84(v6), (v9))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = type metadata accessor for ReplicatorRecord.Value(0);
    v19 = *(v12 - 8);
    sub_1BABBBEAC(v11 + *(v19 + 72) * v10, a2, type metadata accessor for ReplicatorRecord.Value);
    v13 = *(v19 + 56);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for ReplicatorRecord.Value(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t ReplicatorRecord.highestCompatibleValueVersion(for:)(unint64_t *a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
  v3 = MEMORY[0x1EEE9AC00](v51);
  v50 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1EEE9AC00](v3);
  v49 = (&v43 - v6);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v43 - v7;
  v8 = *a1;
  v43 = a1[1];
  v44 = v8;
  v9 = *(v1 + *(type metadata accessor for ReplicatorRecord(0) + 24));
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1BAAFACB4(0, v10, 0);
    v11 = v55;
    v12 = v9 + 64;
    v13 = sub_1BABE7A0C();
    v14 = 0;
    v45 = v9 + 72;
    v46 = v10;
    v47 = v9 + 64;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v9 + 32))
    {
      v16 = v13 >> 6;
      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_30;
      }

      v17 = *(v9 + 36);
      v52 = v14;
      v53 = v17;
      v54 = v11;
      v18 = v51;
      v19 = *(v51 + 48);
      v20 = *(v9 + 56);
      v21 = *(*(v9 + 48) + 8 * v13);
      v22 = type metadata accessor for ReplicatorRecord.Value(0);
      v23 = v48;
      sub_1BABBBEAC(v20 + *(*(v22 - 8) + 72) * v13, &v48[v19], type metadata accessor for ReplicatorRecord.Value);
      v24 = v49;
      *v49 = v21;
      sub_1BABC0CBC(&v23[v19], v24 + *(v18 + 48), type metadata accessor for ReplicatorRecord.Value);
      v25 = v24;
      v26 = v50;
      sub_1BAB23414(v25, v50, &unk_1EBC12B50);
      v10 = *v26;
      v27 = *(v18 + 48);
      v11 = v54;
      sub_1BABBBF34(v26 + v27, type metadata accessor for ReplicatorRecord.Value);
      v55 = v11;
      v29 = *(v11 + 2);
      v28 = *(v11 + 3);
      if (v29 >= v28 >> 1)
      {
        sub_1BAAFACB4((v28 > 1), v29 + 1, 1);
        v11 = v55;
      }

      *(v11 + 2) = v29 + 1;
      *&v11[8 * v29 + 32] = v10;
      v15 = 1 << *(v9 + 32);
      if (v13 >= v15)
      {
        goto LABEL_31;
      }

      v12 = v47;
      v30 = *(v47 + 8 * v16);
      if ((v30 & (1 << v13)) == 0)
      {
        goto LABEL_32;
      }

      if (v53 != *(v9 + 36))
      {
        goto LABEL_33;
      }

      v31 = v30 & (-2 << (v13 & 0x3F));
      if (v31)
      {
        v15 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v16 << 6;
        v33 = v16 + 1;
        v34 = (v45 + 8 * v16);
        while (v33 < (v15 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            sub_1BAADAEFC(v13, v53, 0);
            v15 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        sub_1BAADAEFC(v13, v53, 0);
      }

LABEL_4:
      v14 = v52 + 1;
      v13 = v15;
      v10 = v46;
      if ((v52 + 1) == v46)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_19:
    v55 = v11;

    sub_1BABBF928(&v55);

    v37 = *(v55 + 2);
    if (v37)
    {
      v38 = v55 + 32;
      while (1)
      {
        v40 = *v38;
        v38 += 8;
        v39 = v40;
        if (v40 >= v43 && v44 >= v39)
        {
          break;
        }

        if (!--v37)
        {
          v39 = 0;
          break;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    return v39;
  }

  return result;
}

uint64_t sub_1BABBF568@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1BABE6A0C();
    if (v10)
    {
      v11 = sub_1BABE6A3C();
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
      result = sub_1BABE6A2C();
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
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
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
  v10 = sub_1BABE6A0C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BABE6A3C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BABE6A2C();
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

uint64_t sub_1BABBF798(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BABC05B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BAAD73E4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BABBF568(v13, a3, a4, &v12);
  v10 = v4;
  sub_1BAAD73E4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BABBF928(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BABC01B0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1BABE7E9C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1BABE770C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1BABBFA5C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1BABBFA5C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1BABC019C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1BABBFFA8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BAAFA228(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1BAAFA228((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1BABBFFA8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1BABBFFA8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t _s18ReplicatorServices0A6RecordV2IDV9OwnershipO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6CFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReplicatorRecord.ID.Ownership(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A28);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1BABBBEAC(a1, &v20 - v13, type metadata accessor for ReplicatorRecord.ID.Ownership);
  sub_1BABBBEAC(a2, &v14[v15], type metadata accessor for ReplicatorRecord.ID.Ownership);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1BABBBEAC(v14, v10, type metadata accessor for ReplicatorRecord.ID.Ownership);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = sub_1BABE6CCC();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1BABBBF34(v14, type metadata accessor for ReplicatorRecord.ID.Ownership);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BAAD2E14(v14, &unk_1EBC12A28);
    v17 = 0;
    return v17 & 1;
  }

  sub_1BABBBF34(v14, type metadata accessor for ReplicatorRecord.ID.Ownership);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s18ReplicatorServices0A6RecordV2IDV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1BABE7EDC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1BABE7EDC() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1BABE7EDC() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  if ((_s18ReplicatorServices0A6RecordV2IDV9OwnershipO2eeoiySbAG_AGtFZ_0(a1 + *(v6 + 28), a2 + *(v6 + 28)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_1BABE7EDC();
}

uint64_t sub_1BABC05B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BABE6A0C();
  v11 = result;
  if (result)
  {
    result = sub_1BABE6A3C();
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

  sub_1BABE6A2C();
  sub_1BABBF568(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BABC0668(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1BAAE7824(a3, a4);
          return sub_1BABBF798(v13, a2, a3, a4) & 1;
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

BOOL _s18ReplicatorServices0A6RecordV5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BABE6BAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13FF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((sub_1BABC0668(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v22 = v7;
  v14 = *(type metadata accessor for ReplicatorRecord.Value(0) + 20);
  v15 = *(v11 + 48);
  sub_1BAAD2DAC(a1 + v14, v13, &unk_1EBC13D70);
  sub_1BAAD2DAC(a2 + v14, &v13[v15], &unk_1EBC13D70);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1BAAD2E14(v13, &unk_1EBC13D70);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1BAAD2DAC(v13, v10, &unk_1EBC13D70);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1BAAD2E14(v13, &qword_1EBC13FF8);
    return 0;
  }

  v18 = v22;
  (*(v5 + 32))(v22, &v13[v15], v4);
  sub_1BAAD77A8(&qword_1EBC13C78, MEMORY[0x1E6968FB0]);
  v19 = sub_1BABE74DC();
  v20 = *(v5 + 8);
  v20(v18, v4);
  v20(v10, v4);
  sub_1BAAD2E14(v13, &unk_1EBC13D70);
  return (v19 & 1) != 0;
}

uint64_t sub_1BABC0B24(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BABE75BC();

    return sub_1BABE760C();
  }

  return result;
}

unint64_t sub_1BABC0BC0()
{
  result = qword_1ED7871B0;
  if (!qword_1ED7871B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871B0);
  }

  return result;
}

unint64_t sub_1BABC0C14()
{
  result = qword_1EBC13F88;
  if (!qword_1EBC13F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13F88);
  }

  return result;
}

unint64_t sub_1BABC0C68()
{
  result = qword_1ED787198;
  if (!qword_1ED787198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787198);
  }

  return result;
}

uint64_t sub_1BABC0CBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BABC0D24()
{
  result = qword_1ED7871C8;
  if (!qword_1ED7871C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871C8);
  }

  return result;
}

uint64_t sub_1BABC0D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BABC0DE4()
{
  result = qword_1EBC13FB8;
  if (!qword_1EBC13FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FB8);
  }

  return result;
}

unint64_t sub_1BABC0E3C()
{
  result = qword_1EBC13FC0;
  if (!qword_1EBC13FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FC0);
  }

  return result;
}

unint64_t sub_1BABC0E94()
{
  result = qword_1EBC13FC8;
  if (!qword_1EBC13FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FC8);
  }

  return result;
}

unint64_t sub_1BABC0EEC()
{
  result = qword_1EBC13FD0;
  if (!qword_1EBC13FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FD0);
  }

  return result;
}

void sub_1BABC1040()
{
  type metadata accessor for ReplicatorRecord.ID(319);
  if (v0 <= 0x3F)
  {
    sub_1BABE6CFC();
    if (v1 <= 0x3F)
    {
      sub_1BABC1118();
      if (v2 <= 0x3F)
      {
        sub_1BABC13C4(319, &qword_1ED7872B0, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BABC1118()
{
  if (!qword_1EBC12440)
  {
    type metadata accessor for ReplicatorRecord.Value(255);
    v0 = sub_1BABE747C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC12440);
    }
  }
}

uint64_t getEnumTagSinglePayload for ReplicatorRecord.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicatorRecord.Options(uint64_t result, int a2, int a3)
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

uint64_t sub_1BABC1200()
{
  result = type metadata accessor for ReplicatorRecord.ID.Ownership(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BABC12AC()
{
  v0 = sub_1BABE6CFC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1BABC132C()
{
  sub_1BABC13C4(319, &unk_1EBC125B8, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BABC13C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BABE799C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BABC145C()
{
  result = qword_1EBC13FE0;
  if (!qword_1EBC13FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FE0);
  }

  return result;
}

unint64_t sub_1BABC14B4()
{
  result = qword_1EBC13FE8;
  if (!qword_1EBC13FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FE8);
  }

  return result;
}

unint64_t sub_1BABC150C()
{
  result = qword_1EBC13FF0;
  if (!qword_1EBC13FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC13FF0);
  }

  return result;
}

unint64_t sub_1BABC1564()
{
  result = qword_1ED7871B8;
  if (!qword_1ED7871B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871B8);
  }

  return result;
}

unint64_t sub_1BABC15BC()
{
  result = qword_1ED7871C0;
  if (!qword_1ED7871C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871C0);
  }

  return result;
}

unint64_t sub_1BABC1614()
{
  result = qword_1ED787188;
  if (!qword_1ED787188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787188);
  }

  return result;
}

unint64_t sub_1BABC166C()
{
  result = qword_1ED787190;
  if (!qword_1ED787190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787190);
  }

  return result;
}

unint64_t sub_1BABC16C4()
{
  result = qword_1ED787178;
  if (!qword_1ED787178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787178);
  }

  return result;
}

unint64_t sub_1BABC171C()
{
  result = qword_1ED787180;
  if (!qword_1ED787180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED787180);
  }

  return result;
}

unint64_t sub_1BABC1774()
{
  result = qword_1ED7871A0;
  if (!qword_1ED7871A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871A0);
  }

  return result;
}

unint64_t sub_1BABC17CC()
{
  result = qword_1ED7871A8;
  if (!qword_1ED7871A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7871A8);
  }

  return result;
}

uint64_t sub_1BABC1820(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69687372656E776FLL && a2 == 0xE900000000000070 || (sub_1BABE7EDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E656449676F6CLL && a2 == 0xED00007265696669)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BABE7EDC();

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

uint64_t sub_1BABC1A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = *(a1 + 128);
    *a2 = v4;
    v5 = *(a1 + 144);
    v6 = *(a1 + 160);
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
    v7 = *(a1 + 176);
    v8 = *(a1 + 192);
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    v12[0] = v4;
    v12[1] = v3;
    v13 = v5;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    result = sub_1BAB21C84(v12, &v11);
  }

  else
  {
    v3 = *(a1 + 24);
    *a2 = *(a1 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0xE000000000000000;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0xE000000000000000;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0xE000000000000000;
    v10 = MEMORY[0x1E69E7CC8];
    *(a2 + 64) = MEMORY[0x1E69E7CC8];
    *(a2 + 72) = v10;
  }

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1BABC1AE0(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14020);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v25 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = *(v5 + 16);
  v26 = v4;
  v14(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  sub_1BABE6CEC();
  v17 = *(a2 + 72);

  os_unfair_lock_lock(v17 + 4);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1BABCE45C;
  *(v18 + 24) = v16;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(a2 + 112);
  *(a2 + 112) = 0x8000000000000000;
  sub_1BAAE75F4(sub_1BAAD7CC4, v18, v13, isUniquelyReferenced_nonNull_native);
  *(a2 + 112) = v28;
  swift_endAccess();
  os_unfair_lock_unlock(v17 + 4);

  v20 = v25;
  (*(v9 + 16))(v25, v13, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  (*(v9 + 32))(v22 + v21, v20, v8);

  sub_1BABE77AC();
  return (*(v9 + 8))(v13, v8);
}

uint64_t sub_1BABC1E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABC1EA4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BABC2144(sub_1BABCE80C, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BABC2144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BABE737C();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE73BC();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v14 = v3[9];

  os_unfair_lock_lock(v14 + 4);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v3[12];
  v3[12] = 0x8000000000000000;
  sub_1BAAD35A8(sub_1BAAD7CC4, v15, a3, isUniquelyReferenced_nonNull_native);
  v3[12] = v29;
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);

  v27 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  v17 = aBlock[0];
  v18 = v4[8];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v17;
  aBlock[4] = sub_1BAB92F0C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_194;
  v20 = _Block_copy(aBlock);

  v21 = v18;
  sub_1BABE739C();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v13, v10, v20);
  _Block_release(v20);

  (*(v26 + 8))(v10, v8);
  (*(v24 + 8))(v13, v25);
}

uint64_t sub_1BABC2534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABC25AC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BABC284C(sub_1BABCF248, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BABC284C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ReplicatorDevice.RelationshipState(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE737C();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1BABE73BC();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReplicatorDevice(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  sub_1BABE6CEC();
  v20 = v4[9];

  os_unfair_lock_lock(v20 + 4);
  v21 = swift_allocObject();
  v45 = a1;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  swift_beginAccess();
  v46 = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v4[13];
  v4[13] = 0x8000000000000000;
  sub_1BAAD35A8(sub_1BAAD7CC4, v21, a3, isUniquelyReferenced_nonNull_native);
  v4[13] = v58;
  swift_endAccess();
  os_unfair_lock_unlock(v20 + 4);

  v44 = v4;
  v56 = v4[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  result = sub_1BABE794C();
  v24 = aBlock[0];
  v25 = *(aBlock[0] + 16);
  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_16:

    v36 = v44[8];
    v37 = swift_allocObject();
    v38 = v46;
    v37[2] = v45;
    v37[3] = v38;
    v37[4] = v26;
    aBlock[4] = sub_1BAB92F0C;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BAAD173C;
    aBlock[3] = &block_descriptor_176;
    v39 = _Block_copy(aBlock);

    v40 = v36;
    v41 = v47;
    sub_1BABE739C();
    v58 = MEMORY[0x1E69E7CC0];
    sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
    sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
    v42 = v49;
    v43 = v52;
    sub_1BABE79FC();
    MEMORY[0x1BFAFD5D0](0, v41, v42, v39);
    _Block_release(v39);

    (*(v51 + 8))(v42, v43);
    (*(v48 + 8))(v41, v50);
  }

  v27 = 0;
  v53 = *(aBlock[0] + 16);
  v54 = v14;
  while (v27 < *(v24 + 16))
  {
    v28 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v29 = *(v15 + 72);
    sub_1BABCE6D4(v24 + v28 + v29 * v27, v19, type metadata accessor for ReplicatorDevice);
    sub_1BABCE6D4(&v19[*(v14 + 48)], v10, type metadata accessor for ReplicatorDevice.RelationshipState);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12A50);
    v31 = (*(*(v30 - 8) + 48))(v10, 4, v30);
    if ((v31 - 2) >= 2)
    {
      if (v31)
      {
        sub_1BABCE73C(v10, type metadata accessor for ReplicatorDevice.RelationshipState);
        goto LABEL_4;
      }

      v32 = sub_1BABE6CFC();
      (*(*(v32 - 8) + 8))(v10, v32);
    }

    if ((v19[*(v14 + 56)] & 1) == 0)
    {
      sub_1BABCE79C(v19, v55, type metadata accessor for ReplicatorDevice);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v26;
      if ((v33 & 1) == 0)
      {
        sub_1BAAFAAE0(0, *(v26 + 16) + 1, 1);
        v26 = aBlock[0];
      }

      v35 = *(v26 + 16);
      v34 = *(v26 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1BAAFAAE0(v34 > 1, v35 + 1, 1);
        v26 = aBlock[0];
      }

      *(v26 + 16) = v35 + 1;
      result = sub_1BABCE79C(v55, v26 + v28 + v35 * v29, type metadata accessor for ReplicatorDevice);
      v25 = v53;
      v14 = v54;
      goto LABEL_5;
    }

LABEL_4:
    result = sub_1BABCE73C(v19, type metadata accessor for ReplicatorDevice);
LABEL_5:
    if (v25 == ++v27)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BABC2F74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABC2FEC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BABC328C(sub_1BABCF244, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BABC328C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BABE737C();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE73BC();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v14 = v3[9];

  os_unfair_lock_lock(v14 + 4);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v3[11];
  v3[11] = 0x8000000000000000;
  sub_1BAAE7078(sub_1BAAD7CC4, v15, a3, isUniquelyReferenced_nonNull_native);
  v3[11] = v32;
  swift_endAccess();
  swift_beginAccess();
  v17 = v3[15];

  os_unfair_lock_unlock(v14 + 4);

  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  v20 = sub_1BAB4C184(v17, v19);

  v21 = v4[8];
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v20;
  aBlock[4] = sub_1BAB92F0C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_157;
  v23 = _Block_copy(aBlock);

  v24 = v21;
  sub_1BABE739C();
  v30 = v18;
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v13, v10, v23);
  _Block_release(v23);

  (*(v29 + 8))(v10, v8);
  (*(v27 + 8))(v13, v28);
}

uint64_t sub_1BABC3674(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABC36EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v22 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = sub_1BABE6CFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  (*(v6 + 16))(v8, a1, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  v18 = v25;
  sub_1BABC3AA0(v23, v24, sub_1BABCE4FC, v17, v15);

  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v10 + 32))(v20 + v19, v13, v9);

  sub_1BABE77AC();
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1BABC3998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  v12[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_1BABE77CC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BABC3AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = sub_1BABE737C();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BABE73BC();
  v32 = *(v15 - 8);
  v33 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;

  sub_1BABE6CEC();
  v19 = v6[9];

  os_unfair_lock_lock(v19 + 4);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1BABCE5EC;
  *(v20 + 24) = v18;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v6[11];
  v6[11] = 0x8000000000000000;
  sub_1BAAE7078(sub_1BABCE5F8, v20, a5, isUniquelyReferenced_nonNull_native);
  v6[11] = v37;
  swift_endAccess();
  swift_beginAccess();
  v22 = v6[15];

  os_unfair_lock_unlock(v19 + 4);

  v23 = MEMORY[0x1E69E7CC0];
  v24 = sub_1BAAE804C(MEMORY[0x1E69E7CC0]);
  v25 = sub_1BAB4C184(v22, v24);

  v26 = v6[8];
  v27 = swift_allocObject();
  v27[2] = sub_1BABCE5EC;
  v27[3] = v18;
  v27[4] = v25;
  aBlock[4] = sub_1BAAD7DFC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_140;
  v28 = _Block_copy(aBlock);

  v29 = v26;
  sub_1BABE739C();
  v35 = v23;
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v17, v14, v28);
  _Block_release(v28);

  (*(v34 + 8))(v14, v12);
  (*(v32 + 8))(v17, v33);
}

uint64_t sub_1BABC3EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

uint64_t sub_1BABC3F54(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = sub_1BABE6CFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  (*(v4 + 16))(v6, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  v16 = v21;
  sub_1BABC42F0(sub_1BABCE214, v15, v13);

  (*(v8 + 16))(v11, v13, v7);
  v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v8 + 32))(v18 + v17, v11, v7);

  sub_1BABE77AC();
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1BABC41F4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C08);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7[-v4];
  v7[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);
  sub_1BABE77CC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BABC42F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1BABE737C();
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BABE73BC();
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BABE6CEC();
  v14 = v3[9];

  os_unfair_lock_lock(v14 + 4);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v3[10];
  v3[10] = 0x8000000000000000;
  sub_1BAAE6E94(sub_1BABCE2C4, v15, a3, isUniquelyReferenced_nonNull_native);
  v3[10] = v27;
  swift_endAccess();
  os_unfair_lock_unlock(v14 + 4);

  v17 = v3[7];

  os_unfair_lock_lock((v17 + 20));
  LOBYTE(v15) = *(v17 + 16);
  os_unfair_lock_unlock((v17 + 20));

  v18 = v4[8];
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = v15;
  aBlock[4] = sub_1BABCE2F0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_89_0;
  v20 = _Block_copy(aBlock);

  v21 = v18;
  sub_1BABE739C();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v13, v10, v20);
  _Block_release(v20);

  (*(v25 + 8))(v10, v8);
  (*(v23 + 8))(v13, v24);
}

uint64_t sub_1BABC46B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void *sub_1BABC472C(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v33[0] = *v2;
  v38 = sub_1BABE793C();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v35 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v34);
  v33[1] = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BABE6F8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v33 - v13;
  v15 = a1[2];
  v16 = a1[4];
  v43 = a1[3];
  v44 = v16;
  v17 = *a1;
  v41 = a1[1];
  v42 = v15;
  v40 = v17;
  v48 = v15;
  v49 = v43;
  v50 = v16;
  v46 = v17;
  v47 = v41;
  sub_1BABE6D0C();
  v18 = sub_1BABE6F6C();
  v19 = *(v9 + 8);
  v19(v14, v8);
  sub_1BABE6D0C();
  v20 = sub_1BABE6F7C();
  v19(v12, v8);
  v3[4] = v18;
  v3[5] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14030);
  v21 = swift_allocObject();
  *(v21 + 20) = 0;
  *(v21 + 16) = 0;
  v3[7] = v21;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v51[0] = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1550(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v36 + 104))(v35, *MEMORY[0x1E69E8090], v38);
  v3[8] = sub_1BABE796C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v23 = MEMORY[0x1E69E7CC8];
  v3[9] = v22;
  v3[10] = v23;
  v3[11] = v23;
  v3[12] = v23;
  v3[13] = v23;
  v3[14] = v23;
  v3[15] = v23;
  v24 = MEMORY[0x1E69E7CD0];
  *(v3 + 208) = 2;
  v3[27] = v24;
  memset(v51, 0, 80);
  v25 = v46;
  v26 = v47;
  v27 = v50;
  *(v3 + 11) = v49;
  *(v3 + 12) = v27;
  v28 = v48;
  *(v3 + 9) = v26;
  *(v3 + 10) = v28;
  *(v3 + 8) = v25;
  sub_1BAB21C84(&v40, v39);
  sub_1BAAD2E14(v51, &qword_1EBC12A88);
  v45 = v40;
  *(v3 + 1) = v40;
  sub_1BAB21C84(&v40, v39);
  sub_1BABCF13C(&v45, v39);
  v29 = sub_1BABCEDD0(v37, &v40);
  sub_1BAB21D34(&v40);
  sub_1BAB21D34(&v40);

  swift_beginAccess();
  v3[15] = v29;

  if (qword_1ED787560 != -1)
  {
    swift_once();
  }

  v30 = qword_1ED78BB98;
  v3[6] = qword_1ED78BB98;
  v31 = v30;
  return v3;
}

uint64_t sub_1BABC4D30(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = v2;
  v30 = a1;
  v4 = sub_1BABE793C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BABE791C();
  MEMORY[0x1EEE9AC00](v6);
  v26[1] = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BABE73BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BABE6F8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v26 - v14;
  sub_1BABE6D0C();
  v16 = sub_1BABE6F6C();
  v17 = *(v10 + 8);
  v17(v15, v9);
  sub_1BABE6D0C();
  v18 = sub_1BABE6F7C();
  v17(v13, v9);
  *(v3 + 32) = v16;
  *(v3 + 40) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14030);
  v19 = swift_allocObject();
  *(v19 + 20) = 0;
  *(v19 + 16) = 0;
  *(v3 + 56) = v19;
  sub_1BAAD14BC();
  sub_1BABE73AC();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787C70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12BA0);
  sub_1BAAD1550(&qword_1ED787C80, &unk_1EBC12BA0);
  sub_1BABE79FC();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  *(v3 + 64) = sub_1BABE796C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13AF0);
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E7CC8];
  *(v20 + 16) = 0;
  *(v3 + 72) = v20;
  *(v3 + 80) = v21;
  *(v3 + 88) = v21;
  *(v3 + 96) = v21;
  *(v3 + 104) = v21;
  *(v3 + 112) = v21;
  *(v3 + 120) = v21;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 2;
  *(v3 + 216) = MEMORY[0x1E69E7CD0];
  v22 = v31;
  *(v3 + 16) = v30;
  *(v3 + 24) = v22;
  if (qword_1ED787560 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED78BB98;
  *(v3 + 48) = qword_1ED78BB98;
  v24 = v23;
  return v3;
}

uint64_t sub_1BABC5174()
{

  sub_1BABCF074(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_1BABC5210()
{
  sub_1BABC5174();

  return MEMORY[0x1EEE6BDC0](v0, 224, 7);
}

uint64_t sub_1BABC5268()
{
  v1 = *(*v0 + 72);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAB78084(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1BABC52E4(char a1)
{
  v3 = v1;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BABE72BC();
  __swift_project_value_buffer(v5, qword_1ED78BBA0);
  v6 = sub_1BABE729C();
  v7 = sub_1BABE790C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67240192;
    *(v8 + 4) = a1 & 1;
    _os_log_impl(&dword_1BAACF000, v6, v7, "Setting client enabled state to %{BOOL,public}d", v8, 8u);
    MEMORY[0x1BFAFE460](v8, -1, -1);
  }

  v9 = *(v3 + 72);
  MEMORY[0x1EEE9AC00](v10);

  os_unfair_lock_lock(v9 + 4);
  sub_1BAB7841C(v11);
  os_unfair_lock_unlock(v9 + 4);
  if (v2)
  {
    __break(1u);
    os_unfair_lock_unlock(v2 + 4);
    __break(1u);
  }

  else
  {

    v17[0] = v17[5];
    v17[1] = v17[6];
    v17[2] = v17[7];
    v17[3] = v17[8];
    v17[4] = v17[9];

    v12 = sub_1BAB21D34(v17);
    MEMORY[0x1EEE9AC00](v12);
    sub_1BABE794C();

    v14 = *(v3 + 72);
    v15 = MEMORY[0x1EEE9AC00](v13);
    MEMORY[0x1EEE9AC00](v15);

    os_unfair_lock_lock(v14 + 4);
    sub_1BAB78084(v16);
    os_unfair_lock_unlock(v14 + 4);
  }
}

uint64_t sub_1BABC5614()
{
  v1 = *(v0 + 72);

  os_unfair_lock_lock(v1 + 4);
  sub_1BAAE7A94(v14);
  os_unfair_lock_unlock(v1 + 4);
  v2 = LOBYTE(v14[0]);

  if (v2 == 2)
  {
    v4 = *(v0 + 72);
    MEMORY[0x1EEE9AC00](v3);

    os_unfair_lock_lock(v4 + 4);
    sub_1BAB7841C(v5);
    os_unfair_lock_unlock(v4 + 4);

    v13[0] = v14[0];
    v13[1] = v14[1];
    v13[2] = v14[2];
    v13[3] = v14[3];
    v13[4] = v14[4];

    v6 = sub_1BAB21D34(v13);
    MEMORY[0x1EEE9AC00](v6);
    sub_1BABE794C();

    LOBYTE(v2) = v12;
    v8 = *(v0 + 72);
    v9 = MEMORY[0x1EEE9AC00](v7);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock(v8 + 4);
    sub_1BAB7841C(v10);
    os_unfair_lock_unlock(v8 + 4);
  }

  return v2 & 1;
}

void sub_1BABC5A00()
{
  v5 = v1;
  v6 = v0;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v7 = sub_1BABE72BC();
  __swift_project_value_buffer(v7, qword_1ED78BBA0);

  v8 = sub_1BABE729C();
  v9 = sub_1BABE790C();

  if (!os_log_type_enabled(v8, v9))
  {

LABEL_7:
    v14 = *(v6 + 72);
    MEMORY[0x1EEE9AC00](v13);
    v63 = sub_1BABCDF34;
    v64 = v6;

    os_unfair_lock_lock(v14 + 4);
    sub_1BAB78084(v15);
    if (v5)
    {
LABEL_16:
      os_unfair_lock_unlock(v14 + 4);
      __break(1u);
      goto LABEL_17;
    }

    os_unfair_lock_unlock(v14 + 4);

    v2 = &qword_1EBC11FA0[12];
    if (*(&v93 + 1))
    {
      v103 = &v65;
    }

    else
    {
      v14 = v62;
      MEMORY[0x1EEE9AC00](v16);
      v58 = v20;
      v59 = v21;
      v60 = v22;
      sub_1BABE794C();
      v80 = v90;
      v81 = v91;
      v78 = v88;
      v79 = v89;
      v85 = v95;
      v86 = v96;
      v87 = v97;
      v84 = v94;
      v82 = v92;
      v83 = v93;
      sub_1BAAD2E14(&v83, &qword_1EBC12A88);
      v95 = v80;
      v96 = v81;
      v97 = v82;
      v93 = v78;
      v94 = v79;
      v37 = *(v6 + 72);

      os_unfair_lock_lock(v37 + 4);
      v38 = *(&v93 + 1);
      if (!*(&v93 + 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v103 = &v65;
      v39 = *(v6 + 176);
      v72[2] = *(v6 + 160);
      v72[3] = v39;
      v72[4] = *(v6 + 192);
      v40 = *(v6 + 144);
      v72[0] = *(v6 + 128);
      v72[1] = v40;
      v41 = v80;
      v42 = v79;
      v43 = v80;
      *(v6 + 144) = v79;
      *(v6 + 160) = v41;
      v44 = v82;
      v45 = v81;
      v46 = v82;
      *(v6 + 176) = v81;
      *(v6 + 192) = v44;
      v47 = v93;
      *(v6 + 128) = v93;
      *(v6 + 136) = v38;
      v73[0] = v47;
      v73[1] = v38;
      v76 = v45;
      v77 = v46;
      v74 = v42;
      v75 = v43;
      sub_1BAB21C84(v73, &v71);
      sub_1BAAD2E14(v72, &qword_1EBC12A88);
      os_unfair_lock_unlock(v37 + 4);
    }

    v17 = *(v6 + 56);

    os_unfair_lock_lock((v17 + 20));
    v14 = *(v6 + 48);
    v88 = v93;
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v92 = v97;
    if (*(&v93 + 1))
    {
      v98[0] = v88;
      v98[1] = *(&v93 + 1);
      v99 = v94;
      v100 = v95;
      v101 = v96;
      v102 = v97;
      v19 = OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue;
      MEMORY[0x1EEE9AC00](v18);
      v60 = v14;
      v61 = v98;
      v85 = v90;
      v86 = v91;
      v87 = v92;
      v83 = v88;
      v84 = v89;
      sub_1BAB21C84(&v83, &v78);
      sub_1BABE794C();
      sub_1BAAD2E14(&v88, &qword_1EBC12A88);
      *(v17 + 16) = 1;
      os_unfair_lock_unlock((v17 + 20));

      v70 = v62;
      v24 = v19;
      v25 = *(v6 + 16);
      v26 = *(v6 + 24);
      MEMORY[0x1EEE9AC00](v23);
      v58 = v14;
      v59 = v25;
      v60 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14000);
      v27 = sub_1BABE794C();
      v66 = v14;
      v67 = v24;
      v68 = v26;
      v69 = v25;
      v28 = v78;
      v29 = *(v6 + 72);
      v30 = MEMORY[0x1EEE9AC00](v27);
      *&v57[-16] = v6;
      *&v57[-8] = v28;
      MEMORY[0x1EEE9AC00](v30);
      *&v57[-16] = sub_1BABCDFDC;
      *&v57[-8] = v31;

      os_unfair_lock_lock(v29 + 4);
      sub_1BAB8F398(&v78);
      os_unfair_lock_unlock(v29 + 4);
      v32 = v78;

      v33 = sub_1BAB4C184(v28, v32);

      sub_1BABC656C(v33);

      v34 = v66;
      *&v78 = sub_1BAAFFCA0();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14008);
      sub_1BAAD1550(&qword_1ED787368, &qword_1EBC14008);
      v70 = sub_1BABE735C();

      MEMORY[0x1EEE9AC00](v35);
      v36 = v68;
      *&v57[-32] = v69;
      *&v57[-24] = v36;
      *&v57[-16] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13558);
      sub_1BABE794C();
      sub_1BABC7554(v78);

      *&v78 = sub_1BAAFFD7C();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14010);
      v68 = MEMORY[0x1E695BED8];
      sub_1BAAD1550(&qword_1ED787360, &qword_1EBC14010);
      v69 = sub_1BABE735C();

      *&v78 = sub_1BAAFFE58();
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13B00);
      sub_1BAAD1550(&qword_1ED787C28, &unk_1EBC13B00);
      v67 = sub_1BABE735C();

      *&v78 = sub_1BAAFFF34();
      swift_allocObject();
      swift_weakInit();
      v48 = sub_1BABE735C();

      v49 = v69;

      v68 = v57;
      v51 = *(v6 + 72);
      v52 = MEMORY[0x1EEE9AC00](v50);
      v53 = v70;
      *&v57[-48] = v6;
      *&v57[-40] = v53;
      v54 = v67;
      *&v57[-32] = v49;
      *&v57[-24] = v54;
      *&v57[-16] = v48;
      MEMORY[0x1EEE9AC00](v52);
      *&v57[-16] = sub_1BABCE0D0;
      *&v57[-8] = v55;

      os_unfair_lock_lock(v51 + 4);
      sub_1BAB7841C(v56);
      os_unfair_lock_unlock(v51 + 4);

      sub_1BABC8314(1);

      v80 = v95;
      v81 = v96;
      v82 = v97;
      v78 = v93;
      v79 = v94;
      sub_1BAAD2E14(&v78, &qword_1EBC12A88);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v103 = &v65;
  *&v83 = v3;
  *v2 = 136446210;
  v4 = *(v0 + 72);
  MEMORY[0x1EEE9AC00](v3);
  v63 = sub_1BABCF24C;
  v64 = v0;

  os_unfair_lock_lock(v4 + 4);
  sub_1BAB7841C(v10);
  if (!v1)
  {
    v5 = 0;
    os_unfair_lock_unlock(v4 + 4);

    v88 = v93;
    v89 = v94;
    v90 = v95;
    v91 = v96;
    v92 = v97;
    v4 = *(&v93 + 1);
    v11 = v93;

    sub_1BAB21D34(&v88);
    v12 = sub_1BAAFA460(v11, v4, &v83);

    *(v2 + 4) = v12;
    _os_log_impl(&dword_1BAACF000, v8, v9, "Registering client %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1BFAFE460](v3, -1, -1);
    MEMORY[0x1BFAFE460](v2, -1, -1);

    goto LABEL_7;
  }

LABEL_17:
  os_unfair_lock_unlock(v4 + 4);
  __break(1u);
  os_unfair_lock_unlock(v2 + 4);
  __break(1u);
  os_unfair_lock_unlock(v3 + 4);
  __break(1u);
}

uint64_t sub_1BABC656C(uint64_t a1)
{
  v3 = sub_1BABE737C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE73BC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[9];

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = v1[11];

  os_unfair_lock_unlock(v9 + 4);

  v11 = v1[8];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BABCF210;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_73_1;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1BABE739C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

void sub_1BABC688C(uint64_t *a1)
{
  v68 = sub_1BABE737C();
  v3 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1BABE73BC();
  v5 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReplicatorRecordVersion();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ReplicatorRecordChange();
  v74 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v70 = *(v13 + 16);
    if (v70)
    {
      v69 = v13 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      swift_beginAccess();
      v16 = 0;
      v63 = &v82;
      v62 = (v3 + 8);
      v61 = (v5 + 8);
      v64 = v12;
      do
      {
        if (v16 >= *(v13 + 16))
        {
          __break(1u);
          os_unfair_lock_unlock(v1 + 4);
          __break(1u);
          return;
        }

        sub_1BABCE6D4(v69 + *(v74 + 72) * v16, v12, type metadata accessor for ReplicatorRecordChange);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v75 = v16;
        if (EnumCaseMultiPayload == 1)
        {
          v37 = v72;
          v38 = sub_1BABCE79C(v12, v72, type metadata accessor for ReplicatorRecord.ID);
          v39 = *(v37 + 32);
          v40 = *(v37 + 40);
          v41 = v15[9];
          MEMORY[0x1EEE9AC00](v38);
          *(&v60 - 2) = sub_1BABCF24C;
          *(&v60 - 1) = v15;

          os_unfair_lock_lock(v41 + 4);
          sub_1BAB7841C(v42);
          os_unfair_lock_unlock(v41 + 4);

          v76 = aBlock;
          v77 = v82;
          v78 = v83;
          v79 = v84;
          v80 = v85;
          v43 = *(&aBlock + 1);
          v1 = aBlock;

          sub_1BAB21D34(&v76);
          if (v39 == v1 && v40 == v43)
          {
          }

          else
          {
            v55 = sub_1BABE7EDC();

            if ((v55 & 1) == 0)
            {
              v53 = type metadata accessor for ReplicatorRecord.ID;
              v54 = &v87;
              goto LABEL_20;
            }
          }

          v56 = v15[9];
          v57 = MEMORY[0x1EEE9AC00](v44);
          v20 = v72;
          *(&v60 - 2) = v15;
          *(&v60 - 1) = v20;
          MEMORY[0x1EEE9AC00](v57);
          *(&v60 - 2) = sub_1BABCE19C;
          *(&v60 - 1) = v58;

          os_unfair_lock_lock(v56 + 4);
          sub_1BAB7841C(v59);
          os_unfair_lock_unlock(v56 + 4);

          v23 = type metadata accessor for ReplicatorRecord.ID;
        }

        else
        {
          v45 = v71;
          v46 = sub_1BABCE79C(v12, v71, type metadata accessor for ReplicatorRecordVersion);
          v47 = *(v45 + 32);
          v48 = *(v45 + 40);
          v49 = v15[9];
          MEMORY[0x1EEE9AC00](v46);
          *(&v60 - 2) = sub_1BABCF24C;
          *(&v60 - 1) = v15;

          os_unfair_lock_lock(v49 + 4);
          sub_1BAB7841C(v50);
          os_unfair_lock_unlock(v49 + 4);

          v76 = aBlock;
          v77 = v82;
          v78 = v83;
          v79 = v84;
          v80 = v85;
          v51 = *(&aBlock + 1);
          v1 = aBlock;

          sub_1BAB21D34(&v76);
          if (v47 == v1 && v48 == v51)
          {
          }

          else
          {
            v52 = sub_1BABE7EDC();

            if ((v52 & 1) == 0)
            {
              v53 = type metadata accessor for ReplicatorRecordVersion;
              v54 = &v86;
LABEL_20:
              sub_1BABCE73C(*(v54 - 32), v53);
              goto LABEL_7;
            }
          }

          v18 = v15[9];
          v19 = MEMORY[0x1EEE9AC00](v17);
          v20 = v71;
          *(&v60 - 2) = v15;
          *(&v60 - 1) = v20;
          MEMORY[0x1EEE9AC00](v19);
          *(&v60 - 2) = sub_1BABCE1F0;
          *(&v60 - 1) = v21;

          os_unfair_lock_lock(v18 + 4);
          sub_1BAB7841C(v22);
          os_unfair_lock_unlock(v18 + 4);

          v23 = type metadata accessor for ReplicatorRecordVersion;
        }

        sub_1BABCE73C(v20, v23);
        v24 = v15[9];

        os_unfair_lock_lock(v24 + 4);
        v25 = v15[11];

        os_unfair_lock_unlock(v24 + 4);

        v26 = v15[8];
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = v13;
        *&v83 = sub_1BABCE1B8;
        *(&v83 + 1) = v27;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v82 = sub_1BAAD173C;
        *(&v82 + 1) = &block_descriptor_60;
        v28 = _Block_copy(&aBlock);
        v29 = v26;

        v30 = v65;
        sub_1BABE739C();
        *&v76 = MEMORY[0x1E69E7CC0];
        v1 = sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
        sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
        v31 = v15;
        v32 = v13;
        v33 = v67;
        v34 = v68;
        sub_1BABE79FC();
        MEMORY[0x1BFAFD5D0](0, v30, v33, v28);
        _Block_release(v28);

        v35 = v33;
        v13 = v32;
        v15 = v31;
        (*v62)(v35, v34);
        (*v61)(v30, v66);

        v12 = v64;
LABEL_7:
        v16 = v75 + 1;
      }

      while (v70 != v75 + 1);
    }
  }
}

uint64_t sub_1BABC724C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BABCE6D4(a2, v8, type metadata accessor for ReplicatorRecord.ID);
  v9 = *(type metadata accessor for ReplicatorRecordVersion() + 20);
  v10 = sub_1BABE6CFC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a2 + v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1BAB2FF40(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1BABC73F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BABCE6D4(a2, v8, type metadata accessor for ReplicatorRecord.ID);
  v9 = sub_1BABE6CFC();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  swift_beginAccess();
  sub_1BAB2FF40(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1BABC7554(uint64_t a1)
{
  v3 = sub_1BABE737C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE73BC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[9];

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = v1[14];

  os_unfair_lock_unlock(v9 + 4);

  v11 = v1[8];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BABCE164;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_48;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1BABE739C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1BABC7874(uint64_t *a1)
{
  v21 = type metadata accessor for ReplicatorMessage();
  v24 = *(v21 - 8);
  v2 = MEMORY[0x1EEE9AC00](v21);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v23 = *(v7 + 16);
    if (v23)
    {
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      v12 = v21;
      v22 = v4;
      while (v10 < *(v7 + 16))
      {
        v13 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v14 = *(v24 + 72);
        sub_1BABCE6D4(v7 + v13 + v14 * v10, v6, type metadata accessor for ReplicatorMessage);
        v15 = &v6[*(v12 + 20)];
        v16 = *v15 == *(v9 + 16) && *(v15 + 1) == *(v9 + 24);
        if (v16 || (sub_1BABE7EDC() & 1) != 0)
        {
          sub_1BABCE79C(v6, v4, type metadata accessor for ReplicatorMessage);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BAAFACD4(0, *(v11 + 16) + 1, 1);
            v12 = v21;
            v11 = v25;
          }

          v19 = *(v11 + 16);
          v18 = *(v11 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1BAAFACD4(v18 > 1, v19 + 1, 1);
            v12 = v21;
            v11 = v25;
          }

          *(v11 + 16) = v19 + 1;
          v20 = v11 + v13 + v19 * v14;
          v4 = v22;
          result = sub_1BABCE79C(v22, v20, type metadata accessor for ReplicatorMessage);
        }

        else
        {
          result = sub_1BABCE73C(v6, type metadata accessor for ReplicatorMessage);
        }

        if (v23 == ++v10)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
LABEL_18:
      sub_1BABC7554(v11);
    }
  }

  return result;
}

uint64_t sub_1BABC7B18(uint64_t a1)
{
  v3 = sub_1BABE737C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE73BC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[9];

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = v1[12];

  os_unfair_lock_unlock(v9 + 4);

  v11 = v1[8];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BABCE12C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_38;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1BABE739C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1BABC7E38(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_1BABC7EAC(uint64_t a1)
{
  v3 = sub_1BABE737C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE73BC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[9];

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = v1[13];

  os_unfair_lock_unlock(v9 + 4);

  v11 = v1[8];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BABCE0F4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);
  v14 = v11;

  sub_1BABE739C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

uint64_t sub_1BABC81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();

  sub_1BABB0D8C(&v10, a2);
  swift_endAccess();

  swift_beginAccess();

  sub_1BABB0D8C(&v10, a3);
  swift_endAccess();

  swift_beginAccess();

  sub_1BABB0D8C(&v10, a4);
  swift_endAccess();

  swift_beginAccess();

  sub_1BABB0D8C(&v10, a5);
  swift_endAccess();
}

uint64_t sub_1BABC8314(char a1)
{
  v3 = sub_1BABE737C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BABE73BC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[9];

  os_unfair_lock_lock(v9 + 4);
  swift_beginAccess();
  v10 = v1[10];

  os_unfair_lock_unlock(v9 + 4);

  v11 = v1[8];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1BABCDEF0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  sub_1BABE739C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v8, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);
}

void sub_1BABC8630()
{
  v3 = v1;
  v4 = v0;
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BABE72BC();
  __swift_project_value_buffer(v5, qword_1ED78BBA0);

  v6 = sub_1BABE729C();
  v7 = sub_1BABE790C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[1] = v18;
    v26 = v9;
    *v8 = 136446210;
    v2 = *(v0 + 72);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock(v2 + 4);
    sub_1BAB7841C(v10);
    if (v1)
    {
      goto LABEL_10;
    }

    v3 = 0;
    os_unfair_lock_unlock(v2 + 4);

    v19[0] = v20;
    v19[1] = v21;
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v2 = *(&v20 + 1);
    v11 = v20;

    sub_1BAB21D34(v19);
    v12 = sub_1BAAFA460(v11, v2, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1BAACF000, v6, v7, "Unregistering client %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAFE460](v9, -1, -1);
    MEMORY[0x1BFAFE460](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v4 + 56);

  os_unfair_lock_lock((v13 + 20));
  *(v13 + 16) = 0;
  os_unfair_lock_unlock((v13 + 20));

  v15 = *(v4 + 72);
  MEMORY[0x1EEE9AC00](v14);

  os_unfair_lock_lock(v15 + 4);
  sub_1BAB7841C(v16);
  if (!v3)
  {
    os_unfair_lock_unlock(v15 + 4);

    v25[2] = v22;
    v25[3] = v23;
    v25[4] = v24;
    v25[0] = v20;
    v25[1] = v21;
    MEMORY[0x1EEE9AC00](v17);
    sub_1BABE794C();
    sub_1BAB21D34(v25);
    sub_1BABC8314(0);
    return;
  }

  os_unfair_lock_unlock(v15 + 4);
  __break(1u);
LABEL_10:
  os_unfair_lock_unlock(v2 + 4);
  __break(1u);
}

uint64_t sub_1BABC899C()
{
  v1 = *(*v0 + 56);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  return v2;
}

uint64_t sub_1BABC89E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AE0);
  MEMORY[0x1EEE9AC00](v0);
  (*(v2 + 104))(&v4 - v1, *MEMORY[0x1E69E8650]);
  return sub_1BABE780C();
}

void sub_1BABC8B30(unint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v4 = v3;
  v115 = type metadata accessor for ReplicatorRecord.ID(0);
  v116 = *(v115 - 8);
  v8 = MEMORY[0x1EEE9AC00](v115);
  v10 = (&v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v111 - v11;
  v12 = type metadata accessor for ReplicatorRecord.Value(0);
  v135 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v134 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12E08);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v111 - v18;
  v19 = type metadata accessor for ReplicatorRecord(0);
  v114 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v129 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v111 - v24;
  v119 = *a2;
  v118 = *a3;
  v141 = MEMORY[0x1E69E7CC0];
  if (qword_1ED7876D0 != -1)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v25 = sub_1BABE72BC();
    v26 = __swift_project_value_buffer(v25, qword_1ED78BBA0);

    v120 = v26;
    v27 = sub_1BABE729C();
    v28 = sub_1BABE78DC();
    v29 = os_log_type_enabled(v27, v28);
    v138 = v17;
    if (v29)
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      *(v30 + 4) = *(a1 + 16);

      _os_log_impl(&dword_1BAACF000, v27, v28, "Beginning batched add with %{public}ld records", v30, 0xCu);
      v31 = v30;
      v17 = v138;
      MEMORY[0x1BFAFE460](v31, -1, -1);
    }

    else
    {
    }

    v112 = v10;
    v126 = v4;
    v33 = *(a1 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (!v33)
    {
      break;
    }

    v34 = 0;
    v4 = 0;
    v125 = 0;
    v35 = *(v19 + 24);
    v122 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v123 = v35;
    v124 = a1 + v122;
    v133 = *(v114 + 72);
    *&v32 = 134349570;
    v113 = v32;
    a1 = v137;
    v19 = v128;
    v121 = v33;
    while (1)
    {
      sub_1BABCE6D4(v124 + v133 * v4, v19, type metadata accessor for ReplicatorRecord);
      v37 = sub_1BABE75AC();
      v38 = __OFADD__(v34, v37);
      v34 += v37;
      if (v38)
      {
        break;
      }

      sub_1BABCE6D4(v19, v129, type metadata accessor for ReplicatorRecord);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v132 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1BAAF9DD0(0, v10[2] + 1, 1, v10);
      }

      v41 = v10[2];
      v40 = v10[3];
      if (v41 >= v40 >> 1)
      {
        v10 = sub_1BAAF9DD0(v40 > 1, v41 + 1, 1, v10);
      }

      ++v132;
      v10[2] = v41 + 1;
      v127 = v10 + v122;
      sub_1BABCE79C(v129, v10 + v122 + v41 * v133, type metadata accessor for ReplicatorRecord);
      v130 = v10;
      v141 = v10;
      swift_endAccess();
      v42 = *(v19 + v123);

      sub_1BABCE73C(v19, type metadata accessor for ReplicatorRecord);
      v4 = 0;
      v44 = v42 + 64;
      v43 = *(v42 + 64);
      v136 = v42;
      v45 = 1 << *(v42 + 32);
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v19 = v46 & v43;
      v10 = ((v45 + 63) >> 6);
      while (1)
      {
        v139 = v34;
        if (!v19)
        {
          if (v10 <= v4 + 1)
          {
            v49 = (v4 + 1);
          }

          else
          {
            v49 = v10;
          }

          v50 = v49 - 1;
          while (1)
          {
            v48 = v4 + 1;
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if (v48 >= v10)
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
              (*(*(v64 - 8) + 56))(v17, 1, 1, v64);
              v19 = 0;
              v4 = v50;
              goto LABEL_31;
            }

            v19 = *(v44 + 8 * v48);
            ++v4;
            if (v19)
            {
              v4 = v48;
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_65;
        }

        v48 = v4;
LABEL_30:
        v51 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v52 = v51 | (v48 << 6);
        v53 = *(*(v136 + 48) + 8 * v52);
        v54 = v134;
        sub_1BABCE6D4(*(v136 + 56) + *(v135 + 72) * v52, v134, type metadata accessor for ReplicatorRecord.Value);
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
        v56 = *(v55 + 48);
        v57 = v138;
        *v138 = v53;
        v17 = v57;
        sub_1BABCE79C(v54, &v57[v56], type metadata accessor for ReplicatorRecord.Value);
        (*(*(v55 - 8) + 56))(v17, 0, 1, v55);
        a1 = v137;
LABEL_31:
        sub_1BAB23414(v17, a1, &qword_1EBC12E08);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12B50);
        if ((*(*(v58 - 8) + 48))(a1, 1, v58) == 1)
        {
          break;
        }

        v59 = (a1 + *(v58 + 48));
        v60 = *v59;
        a1 = v59[1];
        sub_1BAAE7824(*v59, a1);
        sub_1BABCE73C(v59, type metadata accessor for ReplicatorRecord.Value);
        v61 = a1 >> 62;
        v62 = v139;
        if ((a1 >> 62) > 1)
        {
          if (v61 == 2)
          {
            v63 = *(v60 + 16);
            v17 = *(v60 + 24);
            sub_1BAAD73E4(v60, a1);
            v47 = &v17[-v63];
            if (__OFSUB__(v17, v63))
            {
              goto LABEL_76;
            }
          }

          else
          {
            v47 = 0;
          }
        }

        else if (v61)
        {
          v17 = HIDWORD(v60);
          sub_1BAAD73E4(v60, a1);
          LODWORD(v47) = HIDWORD(v60) - v60;
          if (__OFSUB__(HIDWORD(v60), v60))
          {
            goto LABEL_77;
          }

          v47 = v47;
        }

        else
        {
          v47 = BYTE6(a1);
        }

        a1 = v137;
        v17 = v138;
        v38 = __OFADD__(v62, v47);
        v34 = v62 + v47;
        if (v38)
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }
      }

      v34 = v139;
      if (v139 <= 512000)
      {
        v36 = v121;
        v4 = v132;
        v10 = v130;
        v19 = v128;
        if (v132 == v121)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v10 = v130;
        v65 = v131;
        v66 = v130[2];
        v67 = v117;
        if (v66)
        {
          v140 = MEMORY[0x1E69E7CC0];

          sub_1BAAFAB68(0, v66, 0);
          v68 = v140;
          v69 = v116;
          v70 = v127;
          do
          {
            sub_1BABCE6D4(v70, v65, type metadata accessor for ReplicatorRecord);
            sub_1BABCE6D4(v65, v67, type metadata accessor for ReplicatorRecord.ID);
            sub_1BABCE73C(v65, type metadata accessor for ReplicatorRecord);
            v140 = v68;
            v72 = *(v68 + 16);
            v71 = *(v68 + 24);
            if (v72 >= v71 >> 1)
            {
              sub_1BAAFAB68(v71 > 1, v72 + 1, 1);
              v69 = v116;
              v68 = v140;
            }

            *(v68 + 16) = v72 + 1;
            sub_1BABCE79C(v67, v68 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v72, type metadata accessor for ReplicatorRecord.ID);
            v70 += v133;
            --v66;
          }

          while (v66);
          v10 = v130;

          v17 = v138;
        }

        else
        {
          v68 = MEMORY[0x1E69E7CC0];
        }

        v73 = sub_1BABE729C();
        v74 = sub_1BABE790C();

        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v140 = v76;
          *v75 = v113;
          *(v75 + 4) = v34;
          *(v75 + 12) = 2050;
          *(v75 + 14) = v10[2];
          *(v75 + 22) = 2082;
          v77 = MEMORY[0x1BFAFD330](v68, v115);
          v79 = v78;

          v80 = v77;
          v17 = v138;
          v81 = sub_1BAAFA460(v80, v79, &v140);

          *(v75 + 24) = v81;
          _os_log_impl(&dword_1BAACF000, v73, v74, "Adding record batch of size %{public}ld with %{public}ld records: %{public}s", v75, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v76);
          MEMORY[0x1BFAFE460](v76, -1, -1);
          MEMORY[0x1BFAFE460](v75, -1, -1);
        }

        else
        {
        }

        a1 = v137;
        v19 = v128;
        v4 = &v111;
        MEMORY[0x1EEE9AC00](v82);
        *(&v111 - 4) = v83;
        *(&v111 - 3) = v10;
        *(&v111 - 2) = v119;
        *(&v111 - 8) = v118;

        v84 = v126;
        sub_1BABE794C();
        if (v84)
        {
          goto LABEL_70;
        }

        if (__OFADD__(v125, 1))
        {
          goto LABEL_80;
        }

        ++v125;
        v126 = 0;
        v85 = MEMORY[0x1E69E7CC0];
        v141 = MEMORY[0x1E69E7CC0];

        v34 = 0;
        v10 = v85;
        v36 = v121;
        v4 = v132;
        if (v132 == v121)
        {
          goto LABEL_58;
        }
      }

      if (v4 == v36)
      {
        goto LABEL_79;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    swift_once();
  }

  v125 = 0;
  v34 = 0;
LABEL_58:
  v86 = v10;
  v87 = v10[2];
  if (!v87)
  {
    goto LABEL_72;
  }

  v140 = MEMORY[0x1E69E7CC0];

  sub_1BAAFAB68(0, v87, 0);
  v4 = v140;
  v88 = *(v114 + 80);
  v130 = v86;
  v89 = v86 + ((v88 + 32) & ~v88);
  v90 = *(v114 + 72);
  v91 = v116;
  v92 = v112;
  do
  {
    v93 = v131;
    sub_1BABCE6D4(v89, v131, type metadata accessor for ReplicatorRecord);
    sub_1BABCE6D4(v93, v92, type metadata accessor for ReplicatorRecord.ID);
    sub_1BABCE73C(v93, type metadata accessor for ReplicatorRecord);
    v140 = v4;
    v95 = *(v4 + 16);
    v94 = *(v4 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_1BAAFAB68(v94 > 1, v95 + 1, 1);
      v91 = v116;
      v4 = v140;
    }

    *(v4 + 16) = v95 + 1;
    sub_1BABCE79C(v92, v4 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v95, type metadata accessor for ReplicatorRecord.ID);
    v89 += v90;
    --v87;
  }

  while (v87);
LABEL_65:
  v96 = v130;

  v97 = sub_1BABE729C();
  v98 = sub_1BABE790C();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v140 = v100;
    *v99 = 134349570;
    *(v99 + 4) = v34;
    *(v99 + 12) = 2050;
    *(v99 + 14) = v96[2];

    *(v99 + 22) = 2082;
    v101 = MEMORY[0x1BFAFD330](v4, v115);
    v103 = v102;

    v104 = sub_1BAAFA460(v101, v103, &v140);

    *(v99 + 24) = v104;
    _os_log_impl(&dword_1BAACF000, v97, v98, "Adding record batch of size %{public}ld with %{public}ld records: %{public}s", v99, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x1BFAFE460](v100, -1, -1);
    MEMORY[0x1BFAFE460](v99, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v105);
  *(&v111 - 4) = v106;
  *(&v111 - 3) = v96;
  *(&v111 - 2) = v119;
  *(&v111 - 8) = v118;

  v107 = v126;
  sub_1BABE794C();
  if (v107)
  {
LABEL_70:
    swift_bridgeObjectRelease_n();
    return;
  }

  v38 = __OFADD__(v125++, 1);
  if (v38)
  {
    __break(1u);
  }

  else
  {
LABEL_72:
    v108 = sub_1BABE729C();
    v109 = sub_1BABE78DC();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 134349056;
      *(v110 + 4) = v125;
      _os_log_impl(&dword_1BAACF000, v108, v109, "Ended batched add with %{public}ld batches", v110, 0xCu);
      MEMORY[0x1BFAFE460](v110, -1, -1);
    }
  }
}

void sub_1BABC9B34()
{
  v2 = *(v0 + 72);

  os_unfair_lock_lock(v2 + 4);
  sub_1BAB7841C(v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }

  else
  {

    v5[0] = v5[5];
    v5[1] = v5[6];
    v5[2] = v5[7];
    v5[3] = v5[8];
    v5[4] = v5[9];

    v4 = sub_1BAB21D34(v5);
    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14000);
    sub_1BABE794C();
  }
}

uint64_t sub_1BABC9C94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C80);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C88);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

uint64_t sub_1BABC9DB4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  v11 = *v2;
  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C88);
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8650], v5);
  return sub_1BABE780C();
}

void sub_1BABC9F14(unint64_t a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v5 = *a2;
  v4 = v3;
  sub_1BABC8B30(a1, &v5, &v4);
}

void sub_1BABCA008()
{
  if (qword_1ED7876D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BABE72BC();
  __swift_project_value_buffer(v2, qword_1ED78BBA0);

  v3 = sub_1BABE729C();
  v4 = sub_1BABE790C();

  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_7;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v18[0] = v6;
  *v5 = 136315138;
  v7 = *(v0 + 72);
  MEMORY[0x1EEE9AC00](v6);

  os_unfair_lock_lock(v7 + 4);
  sub_1BAB7841C(v8);
  if (!v1)
  {
    os_unfair_lock_unlock(v7 + 4);

    v12[0] = v13;
    v12[1] = v14;
    v12[2] = v15;
    v12[3] = v16;
    v12[4] = v17;
    v9 = v13;

    sub_1BAB21D34(v12);
    v10 = sub_1BAAFA460(v9, *(&v9 + 1), v18);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1BAACF000, v3, v4, "Client %s requesting sync", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1BFAFE460](v6, -1, -1);
    MEMORY[0x1BFAFE460](v5, -1, -1);

LABEL_7:
    MEMORY[0x1EEE9AC00](v11);
    sub_1BABE794C();
    return;
  }

  os_unfair_lock_unlock(v7 + 4);
  __break(1u);
}

uint64_t sub_1BABCA2B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v38 = a5;
  v39 = a4;
  v45 = a2;
  v7 = type metadata accessor for ReplicatorRecordVersion();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReplicatorRecord.ID(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ReplicatorRecordChange();
  v13 = MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v42 = &v38 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v38 - v21;
  v23 = *(a1 + 16);
  if (v23)
  {
    v40 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v24 = a1 + v40;
    v25 = *(v20 + 72);
    v26 = MEMORY[0x1E69E7CC0];
    v41 = a3;
    while (1)
    {
      sub_1BABCE6D4(v24, v22, type metadata accessor for ReplicatorRecordChange);
      sub_1BABCE6D4(v22, v19, type metadata accessor for ReplicatorRecordChange);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BABCE79C(v19, v12, type metadata accessor for ReplicatorRecord.ID);
        v29 = *(v12 + 2) == v45 && *(v12 + 3) == a3;
        if (!v29 && (sub_1BABE7EDC() & 1) == 0)
        {
          sub_1BABCE73C(v22, type metadata accessor for ReplicatorRecordChange);
          v35 = type metadata accessor for ReplicatorRecord.ID;
          v36 = v12;
LABEL_28:
          sub_1BABCE73C(v36, v35);
          goto LABEL_5;
        }

        sub_1BABCE6D4(v22, v42, type metadata accessor for ReplicatorRecordChange);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BAAF9A7C(0, v26[2] + 1, 1, v26);
        }

        v31 = v26[2];
        v30 = v26[3];
        if (v31 >= v30 >> 1)
        {
          v26 = sub_1BAAF9A7C(v30 > 1, v31 + 1, 1, v26);
        }

        sub_1BABCE73C(v22, type metadata accessor for ReplicatorRecordChange);
        v26[2] = v31 + 1;
        sub_1BABCE79C(v42, v26 + v40 + v31 * v25, type metadata accessor for ReplicatorRecordChange);
        v27 = type metadata accessor for ReplicatorRecord.ID;
        v28 = v12;
      }

      else
      {
        sub_1BABCE79C(v19, v9, type metadata accessor for ReplicatorRecordVersion);
        v32 = *(v9 + 2) == v45 && *(v9 + 3) == a3;
        if (!v32 && (sub_1BABE7EDC() & 1) == 0)
        {
          sub_1BABCE73C(v22, type metadata accessor for ReplicatorRecordChange);
          v35 = type metadata accessor for ReplicatorRecordVersion;
          v36 = v9;
          goto LABEL_28;
        }

        sub_1BABCE6D4(v22, v43, type metadata accessor for ReplicatorRecordChange);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1BAAF9A7C(0, v26[2] + 1, 1, v26);
        }

        v34 = v26[2];
        v33 = v26[3];
        if (v34 >= v33 >> 1)
        {
          v26 = sub_1BAAF9A7C(v33 > 1, v34 + 1, 1, v26);
        }

        sub_1BABCE73C(v22, type metadata accessor for ReplicatorRecordChange);
        v26[2] = v34 + 1;
        sub_1BABCE79C(v43, v26 + v40 + v34 * v25, type metadata accessor for ReplicatorRecordChange);
        v27 = type metadata accessor for ReplicatorRecordVersion;
        v28 = v9;
      }

      sub_1BABCE73C(v28, v27);
      a3 = v41;
LABEL_5:
      v24 += v25;
      if (!--v23)
      {
        goto LABEL_30;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_30:
  v39(v26);
}

uint64_t sub_1BABCA7DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB30A88(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BABCA8D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB308E0(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BABCA9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v56 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - v7;
  v8 = sub_1BABE6CFC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v59 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v45 - v16;
  v17 = *(a1 + 64);
  v45 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v49 = v9 + 16;
  v58 = (v9 + 32);
  v61 = (v6 + 48);
  v62 = (v6 + 56);
  v51 = v9;
  v52 = a1;
  v55 = (v9 + 8);

  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_12:
      v28 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v29 = v28 | (v24 << 6);
      v31 = v51;
      v30 = v52;
      v32 = v50;
      (*(v51 + 16))(v50, *(v52 + 48) + *(v51 + 72) * v29, v8);
      v33 = *(v5 + 48);
      v34 = *(v31 + 32);
      v63 = *(*(v30 + 56) + 16 * v29);
      v27 = v60;
      v34(v60, v32, v8);
      *&v27[v33] = v63;
      v35 = *v62;
      (*v62)(v27, 0, 1, v5);

      v26 = v24;
LABEL_13:
      v36 = *v61;
      v37 = 1;
      if ((*v61)(v27, 1, v5) != 1)
      {
        v53 = *(v5 + 48);
        v54 = v35;
        *&v63 = v26;
        v38 = *v58;
        v39 = v60;
        (*v58)(v46, v60, v8);
        v40 = swift_allocObject();
        *(v40 + 16) = *&v39[v53];
        v41 = &v59[*(v5 + 48)];
        v38();
        v35 = v54;
        v26 = v63;
        v37 = 0;
        *v41 = v48;
        *(v41 + 1) = v40;
      }

      v42 = v59;
      v35(v59, v37, 1, v5);
      v43 = v42;
      v44 = v57;
      sub_1BAB23414(v43, v57, &qword_1EBC13C00);
      if (v36(v44, 1, v5) == 1)
      {
      }

      (*(v44 + *(v5 + 48)))(v56);

      result = (*v55)(v44, v8);
      v23 = v26;
      if (!v20)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v21 <= v23 + 1)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    v27 = v60;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v35 = *v62;
        (*v62)(v60, 1, 1, v5);
        v20 = 0;
        goto LABEL_13;
      }

      v20 = *(v45 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BABCAEBC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB308E0(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BABCAFB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB31048(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BABCB0B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BABE6CFC();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a2);
  swift_beginAccess();
  sub_1BAB3090C(0, 0, v5);
  return swift_endAccess();
}

uint64_t sub_1BABCB1B0(uint64_t a1, int a2)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v5;
  v6 = sub_1BABE6CFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C00);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v43 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v43 - v14;
  v15 = *(a1 + 64);
  v43 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v46 = v7 + 16;
  v54 = (v7 + 32);
  v57 = (v4 + 48);
  v58 = (v4 + 56);
  v48 = v7;
  v49 = a1;
  v51 = (v7 + 8);
  v20 = v13;

  v22 = 0;
  v56 = v20;
  v45 = v3;
  if (v18)
  {
    while (1)
    {
      v23 = v22;
LABEL_12:
      v26 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v27 = v26 | (v23 << 6);
      v29 = v48;
      v28 = v49;
      v30 = v47;
      (*(v48 + 16))(v47, *(v49 + 48) + *(v48 + 72) * v27, v6);
      v31 = *(v3 + 48);
      v32 = *(v29 + 32);
      v59 = *(*(v28 + 56) + 16 * v27);
      v20 = v56;
      v32(v56, v30, v6);
      *(v20 + v31) = v59;
      v33 = *v58;
      (*v58)(v20, 0, 1, v3);

      v25 = v23;
LABEL_13:
      v34 = *v57;
      v35 = 1;
      if ((*v57)(v20, 1, v3) != 1)
      {
        *&v59 = v25;
        v36 = *(v3 + 48);
        v50 = v33;
        v37 = *v54;
        (*v54)(v44, v20, v6);
        v38 = swift_allocObject();
        *(v38 + 16) = *(v56 + v36);
        v39 = &v55[*(v3 + 48)];
        v37();
        v33 = v50;
        v35 = 0;
        *v39 = sub_1BABCDEFC;
        v39[1] = v38;
        v25 = v59;
        v20 = v56;
        v3 = v45;
      }

      v40 = v55;
      v33(v55, v35, 1, v3);
      v41 = v40;
      v42 = v53;
      sub_1BAB23414(v41, v53, &qword_1EBC13C00);
      if (v34(v42, 1, v3) == 1)
      {
      }

      (*(v42 + *(v3 + 48)))(v52 & 1);

      result = (*v51)(v42, v6);
      v22 = v25;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v19 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v33 = *v58;
        (*v58)(v20, 1, 1, v3);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v43 + 8 * v23);
      ++v22;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

__n128 sub_1BABCB734@<Q0>(__n128 *a1@<X8>)
{
  result = (*v1)[2];
  *a1 = result;
  return result;
}

uint64_t sub_1BABCB744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  return v1;
}

uint64_t sub_1BABCB7C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

uint64_t sub_1BABCB8E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13AC0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

uint64_t (*sub_1BABCBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5))(uint64_t a1)
{
  v36 = a2;
  v10 = type metadata accessor for ReplicatorMessage();
  v11 = v10 - 8;
  v35 = *(v10 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v5 + 48);
  result = swift_allocObject();
  v15 = result;
  v37 = a4;
  v38 = v5;
  *(result + 2) = v5;
  *(result + 3) = a3;
  *(result + 4) = a4;
  v16 = (a1 + *(v11 + 44));
  v17 = *v16;
  v18 = v16[1] >> 62;
  if (v18 <= 1)
  {
    if (v18)
    {
      v19 = __OFSUB__(HIDWORD(v17), v17);
      LODWORD(v17) = HIDWORD(v17) - v17;
      if (v19)
      {
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v17 = v17;
      goto LABEL_7;
    }

LABEL_9:
    v34 = *&v13[OBJC_IVAR____TtC18ReplicatorServices25ReplicatorClientSingleton_queue];
    v24 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BABCE6D4(a1, v24, type metadata accessor for ReplicatorMessage);
    v25 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v26 = (v12 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
    v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    sub_1BABCE79C(v24, v29 + v25, type metadata accessor for ReplicatorMessage);
    *(v29 + v26) = a5;
    *(v29 + v27) = v36;
    *(v29 + v28) = v13;
    v30 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v30 = sub_1BABCE320;
    v30[1] = v15;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1BABCE32C;
    *(v31 + 24) = v29;
    aBlock[4] = sub_1BAB77ED0;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BABE332C;
    aBlock[3] = &block_descriptor_101;
    v32 = _Block_copy(aBlock);

    v33 = v13;

    dispatch_sync(v34, v32);

    _Block_release(v32);
    LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

    if ((v32 & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v18 != 2)
  {
    goto LABEL_9;
  }

  v22 = v17 + 16;
  v20 = *(v17 + 16);
  v21 = *(v22 + 8);
  v19 = __OFSUB__(v21, v20);
  v17 = v21 - v20;
  if (!v19)
  {
LABEL_7:
    if (v17 > 102400)
    {
      sub_1BAB15A08();
      swift_allocError();
      *v23 = 1;
      *(v23 + 8) = 0;

      swift_willThrow();
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BABCBDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = sub_1BABE737C();
  v27 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BABE73BC();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12AC8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = *(a2 + 64);
  sub_1BAAD2DAC(a1, &v23 - v14, &qword_1EBC12AC8);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v23;
  *(v18 + 24) = a4;
  sub_1BAB23414(v15, v18 + v17, &qword_1EBC12AC8);
  aBlock[4] = sub_1BABCE3E0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAAD173C;
  aBlock[3] = &block_descriptor_107;
  v19 = _Block_copy(aBlock);
  v20 = v16;

  sub_1BABE739C();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1BABCF0F4(&qword_1ED787CB0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC12AA0);
  sub_1BAAD1550(&qword_1ED787C90, &unk_1EBC12AA0);
  v21 = v24;
  sub_1BABE79FC();
  MEMORY[0x1BFAFD5D0](0, v11, v8, v19);
  _Block_release(v19);

  (*(v27 + 8))(v8, v21);
  (*(v25 + 8))(v11, v26);
}

uint64_t sub_1BABCC148()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC14018);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBC13558);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8650], v0);
  return sub_1BABE780C();
}

void sub_1BABCC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v89 = a1;
  v90 = a5;
  v97 = a3;
  v98 = a2;
  v107 = sub_1BABE6CFC();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorDevice(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DB8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v86 - v19;
  v96 = v7;
  v101 = *(v7 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  v94 = a4;
  v100 = a4;
  sub_1BAB9C848(sub_1BABCE8EC, *&v106[0], v20);

  v91 = v20;
  sub_1BAAD2DAC(v20, v18, &qword_1EBC12DB8);
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1BAAD2E14(v18, &qword_1EBC12DB8);
    if (qword_1ED7876D0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v21 = sub_1BABE72BC();
    __swift_project_value_buffer(v21, qword_1ED78BBA0);
    v22 = v99;
    v23 = v95;
    v24 = v107;
    (v99[2])(v95, v94, v107);
    v25 = sub_1BABE729C();
    v26 = sub_1BABE78EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v106[0] = v28;
      *v27 = 136446210;
      sub_1BABCF0F4(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
      v29 = sub_1BABE7EAC();
      v30 = v23;
      v32 = v31;
      (v22[1])(v30, v24);
      v33 = sub_1BAAFA460(v29, v32, v106);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1BAACF000, v25, v26, "Relationship does not exist: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAFE460](v28, -1, -1);
      MEMORY[0x1BFAFE460](v27, -1, -1);
    }

    else
    {

      (v22[1])(v23, v24);
    }

    v71 = v91;
    sub_1BAB15A08();
    swift_allocError();
    *v72 = 0;
    *(v72 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v71, &qword_1EBC12DB8);
    return;
  }

  v107 = v8;
  v34 = sub_1BABCE79C(v18, v14, type metadata accessor for ReplicatorDevice);
  v35 = *(v11 + 44);
  v87 = v14;
  v95 = *&v14[v35];
  v36 = v97;
  v94 = *(v95 + 2);
  if (!v94)
  {
LABEL_22:
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v63 = sub_1BABE72BC();
    __swift_project_value_buffer(v63, qword_1ED78BBA0);

    v64 = sub_1BABE729C();
    v65 = sub_1BABE78EC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v106[0] = v67;
      *v66 = 136446210;
      *(v66 + 4) = sub_1BAAFA460(v98, v36, v106);
      _os_log_impl(&dword_1BAACF000, v64, v65, "Message type does not exist remotely: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1BFAFE460](v67, -1, -1);
      MEMORY[0x1BFAFE460](v66, -1, -1);
    }

    v68 = v91;
    v69 = v87;
    sub_1BAB15A08();
    swift_allocError();
    *v70 = 0;
    *(v70 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v68, &qword_1EBC12DB8);
    sub_1BABCE73C(v69, type metadata accessor for ReplicatorDevice);
    return;
  }

  v37 = 0;
  v38 = (v95 + 72);
  while (1)
  {
    if (v37 >= *(v95 + 2))
    {
      __break(1u);
      goto LABEL_40;
    }

    v99 = &v86;
    v40 = *(v38 - 5);
    v41 = *(v38 - 4);
    v42 = *(v38 - 3);
    v43 = *(v38 - 2);
    v44 = *(v38 - 1);
    v92 = *v38;
    v93 = v44;
    v45 = *(v96 + 72);
    MEMORY[0x1EEE9AC00](v34);
    *(&v86 - 2) = sub_1BABCF24C;
    *(&v86 - 1) = v46;

    os_unfair_lock_lock(v45 + 4);
    v47 = v107;
    sub_1BAB7841C(v48);
    v107 = v47;
    if (v47)
    {
      os_unfair_lock_unlock(v45 + 4);
      __break(1u);
      goto LABEL_42;
    }

    os_unfair_lock_unlock(v45 + 4);

    v105[0] = v106[0];
    v105[1] = v106[1];
    v105[2] = v106[2];
    v105[3] = v106[3];
    v105[4] = v106[4];
    v49 = v106[0];

    sub_1BAB21D34(v105);
    if (__PAIR128__(v43, v42) == v49)
    {
      break;
    }

    v50 = sub_1BABE7EDC();

    v36 = v97;
    if (v50)
    {
      goto LABEL_14;
    }

LABEL_8:

    ++v37;
    v38 += 6;
    if (v94 == v37)
    {
      goto LABEL_22;
    }
  }

  v36 = v97;
LABEL_14:
  if (v40 != v98 || v41 != v36)
  {
    v39 = sub_1BABE7EDC();
    if ((v39 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v42 = *(v96 + 72);
  MEMORY[0x1EEE9AC00](v39);
  *(&v86 - 2) = sub_1BABCF24C;
  *(&v86 - 1) = v51;

  os_unfair_lock_lock(v42 + 4);
  v52 = v107;
  sub_1BAB7841C(v53);
  if (!v52)
  {
    os_unfair_lock_unlock(v42 + 4);

    v103[3] = v103[8];
    v103[4] = v104;
    v103[1] = v103[6];
    v103[2] = v103[7];
    v103[0] = v103[5];
    v54 = *(&v104 + 1);

    sub_1BAB21D34(v103);
    if (*(v54 + 16) && (v55 = sub_1BABD5AB4(v98, v97), (v56 & 1) != 0))
    {
      v57 = *(v54 + 56) + 32 * v55;
      v58 = *(v57 + 16);
      v59 = *(v57 + 24);

      if (v93 >= v59 && v58 >= v92)
      {
        sub_1BABE6D9C();
        v60 = v90;
        v102[3] = v90;
        v102[4] = v88;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v102);
        (*(*(v60 - 8) + 16))(boxed_opaque_existential_2, v89, v60);
        sub_1BABE6D8C();
        v62 = v87;
        sub_1BAAD2E14(v91, &qword_1EBC12DB8);
        sub_1BABCE73C(v62, type metadata accessor for ReplicatorDevice);
        __swift_destroy_boxed_opaque_existential_1(v102);
        return;
      }

      v78 = v87;
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v84 = sub_1BABE72BC();
      __swift_project_value_buffer(v84, qword_1ED78BBA0);
      v85 = v97;

      v75 = sub_1BABE729C();
      v76 = sub_1BABE78EC();

      if (os_log_type_enabled(v75, v76))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v102[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_1BAAFA460(v98, v85, v102);
        v81 = "Protocol version is incompatible: %{public}s";
LABEL_33:
        _os_log_impl(&dword_1BAACF000, v75, v76, v81, v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1BFAFE460](v80, -1, -1);
        MEMORY[0x1BFAFE460](v79, -1, -1);
      }
    }

    else
    {

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v73 = sub_1BABE72BC();
      __swift_project_value_buffer(v73, qword_1ED78BBA0);
      v74 = v97;

      v75 = sub_1BABE729C();
      v76 = sub_1BABE78EC();

      v77 = os_log_type_enabled(v75, v76);
      v78 = v87;
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v102[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_1BAAFA460(v98, v74, v102);
        v81 = "Message type does not exist locally: %{public}s";
        goto LABEL_33;
      }
    }

    v82 = v91;
    sub_1BAB15A08();
    swift_allocError();
    *v83 = 0;
    *(v83 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v82, &qword_1EBC12DB8);
    sub_1BABCE73C(v78, type metadata accessor for ReplicatorDevice);
    return;
  }

LABEL_42:
  os_unfair_lock_unlock(v42 + 4);
  __break(1u);
}

void sub_1BABCD054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v88 = a7;
  v89 = a1;
  v90 = a5;
  v97 = a3;
  v98 = a2;
  v107 = sub_1BABE6CFC();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v95 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorDevice(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12DB8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v86 - v19;
  v96 = v7;
  v101 = *(v7 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC134F0);
  sub_1BABE794C();
  v94 = a4;
  v100 = a4;
  sub_1BAB9C848(sub_1BABCF27C, *&v106[0], v20);

  v91 = v20;
  sub_1BAAD2DAC(v20, v18, &qword_1EBC12DB8);
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1BAAD2E14(v18, &qword_1EBC12DB8);
    if (qword_1ED7876D0 != -1)
    {
LABEL_40:
      swift_once();
    }

    v21 = sub_1BABE72BC();
    __swift_project_value_buffer(v21, qword_1ED78BBA0);
    v22 = v99;
    v23 = v95;
    v24 = v107;
    (v99[2])(v95, v94, v107);
    v25 = sub_1BABE729C();
    v26 = sub_1BABE78EC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v106[0] = v28;
      *v27 = 136446210;
      sub_1BABCF0F4(&qword_1EBC128F8, MEMORY[0x1E69695A8]);
      v29 = sub_1BABE7EAC();
      v30 = v23;
      v32 = v31;
      (v22[1])(v30, v24);
      v33 = sub_1BAAFA460(v29, v32, v106);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_1BAACF000, v25, v26, "Relationship does not exist: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1BFAFE460](v28, -1, -1);
      MEMORY[0x1BFAFE460](v27, -1, -1);
    }

    else
    {

      (v22[1])(v23, v24);
    }

    v71 = v91;
    sub_1BAB15A08();
    swift_allocError();
    *v72 = 0;
    *(v72 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v71, &qword_1EBC12DB8);
    return;
  }

  v107 = v8;
  v34 = sub_1BABCE79C(v18, v14, type metadata accessor for ReplicatorDevice);
  v35 = *(v11 + 40);
  v87 = v14;
  v95 = *&v14[v35];
  v36 = v97;
  v94 = *(v95 + 2);
  if (!v94)
  {
LABEL_22:
    if (qword_1ED7876D0 != -1)
    {
      swift_once();
    }

    v63 = sub_1BABE72BC();
    __swift_project_value_buffer(v63, qword_1ED78BBA0);

    v64 = sub_1BABE729C();
    v65 = sub_1BABE78EC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v106[0] = v67;
      *v66 = 136446210;
      *(v66 + 4) = sub_1BAAFA460(v98, v36, v106);
      _os_log_impl(&dword_1BAACF000, v64, v65, "Zone does not exist remotely: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1BFAFE460](v67, -1, -1);
      MEMORY[0x1BFAFE460](v66, -1, -1);
    }

    v68 = v91;
    v69 = v87;
    sub_1BAB15A08();
    swift_allocError();
    *v70 = 0;
    *(v70 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v68, &qword_1EBC12DB8);
    sub_1BABCE73C(v69, type metadata accessor for ReplicatorDevice);
    return;
  }

  v37 = 0;
  v38 = (v95 + 72);
  while (1)
  {
    if (v37 >= *(v95 + 2))
    {
      __break(1u);
      goto LABEL_40;
    }

    v99 = &v86;
    v40 = *(v38 - 5);
    v41 = *(v38 - 4);
    v43 = *(v38 - 3);
    v42 = *(v38 - 2);
    v44 = *(v38 - 1);
    v92 = *v38;
    v93 = v44;
    v45 = *(v96 + 72);
    MEMORY[0x1EEE9AC00](v34);
    *(&v86 - 2) = sub_1BABCF24C;
    *(&v86 - 1) = v46;

    os_unfair_lock_lock(v45 + 4);
    v47 = v107;
    sub_1BAB7841C(v48);
    v107 = v47;
    if (v47)
    {
      os_unfair_lock_unlock(v45 + 4);
      __break(1u);
      goto LABEL_42;
    }

    os_unfair_lock_unlock(v45 + 4);

    v105[0] = v106[0];
    v105[1] = v106[1];
    v105[2] = v106[2];
    v105[3] = v106[3];
    v105[4] = v106[4];
    v49 = v106[0];

    sub_1BAB21D34(v105);
    if (__PAIR128__(v42, v43) == v49)
    {
      break;
    }

    v50 = sub_1BABE7EDC();

    v36 = v97;
    if (v50)
    {
      goto LABEL_14;
    }

LABEL_8:

    ++v37;
    v38 += 6;
    if (v94 == v37)
    {
      goto LABEL_22;
    }
  }

  v36 = v97;
LABEL_14:
  if (v40 != v98 || v41 != v36)
  {
    v39 = sub_1BABE7EDC();
    if ((v39 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v43 = *(v96 + 72);
  MEMORY[0x1EEE9AC00](v39);
  *(&v86 - 2) = sub_1BABCF24C;
  *(&v86 - 1) = v51;

  os_unfair_lock_lock(v43 + 4);
  v52 = v107;
  sub_1BAB7841C(v53);
  if (!v52)
  {
    os_unfair_lock_unlock(v43 + 4);

    v103[3] = v103[8];
    v103[4] = v104;
    v103[1] = v103[6];
    v103[2] = v103[7];
    v103[0] = v103[5];
    v54 = v104;

    sub_1BAB21D34(v103);
    if (*(v54 + 16) && (v55 = sub_1BABD5AB4(v98, v97), (v56 & 1) != 0))
    {
      v57 = *(v54 + 56) + 48 * v55;
      v58 = *(v57 + 24);
      v59 = *(v57 + 32);

      if (v93 >= v59 && v58 >= v92)
      {
        sub_1BABE6D9C();
        v60 = v90;
        v102[3] = v90;
        v102[4] = v88;
        boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v102);
        (*(*(v60 - 8) + 16))(boxed_opaque_existential_2, v89, v60);
        sub_1BABE6D8C();
        v62 = v87;
        sub_1BAAD2E14(v91, &qword_1EBC12DB8);
        sub_1BABCE73C(v62, type metadata accessor for ReplicatorDevice);
        __swift_destroy_boxed_opaque_existential_1(v102);
        return;
      }

      v78 = v87;
      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v84 = sub_1BABE72BC();
      __swift_project_value_buffer(v84, qword_1ED78BBA0);
      v85 = v97;

      v75 = sub_1BABE729C();
      v76 = sub_1BABE78EC();

      if (os_log_type_enabled(v75, v76))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v102[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_1BAAFA460(v98, v85, v102);
        v81 = "Protocol version is incompatible: %{public}s";
LABEL_33:
        _os_log_impl(&dword_1BAACF000, v75, v76, v81, v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x1BFAFE460](v80, -1, -1);
        MEMORY[0x1BFAFE460](v79, -1, -1);
      }
    }

    else
    {

      if (qword_1ED7876D0 != -1)
      {
        swift_once();
      }

      v73 = sub_1BABE72BC();
      __swift_project_value_buffer(v73, qword_1ED78BBA0);
      v74 = v97;

      v75 = sub_1BABE729C();
      v76 = sub_1BABE78EC();

      v77 = os_log_type_enabled(v75, v76);
      v78 = v87;
      if (v77)
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v102[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_1BAAFA460(v98, v74, v102);
        v81 = "Zone does not exist locally: %{public}s";
        goto LABEL_33;
      }
    }

    v82 = v91;
    sub_1BAB15A08();
    swift_allocError();
    *v83 = 0;
    *(v83 + 8) = 0;

    swift_willThrow();
    sub_1BAAD2E14(v82, &qword_1EBC12DB8);
    sub_1BABCE73C(v78, type metadata accessor for ReplicatorDevice);
    return;
  }

LABEL_42:
  os_unfair_lock_unlock(v43 + 4);
  __break(1u);
}

uint64_t sub_1BABCDD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void))
{
  result = a10();
  if (v10)
  {
    return v12;
  }

  return result;
}

unint64_t *sub_1BABCDE08(unint64_t *result, uint64_t a2, void *a3, void *a4)
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

    sub_1BAB21C84(a4, &v9);
    v8 = sub_1BABCE908(v7, a2, a3, a4);

    sub_1BAB21D34(a4);
    sub_1BAB21D34(a4);
    return v8;
  }

  return result;
}

uint64_t sub_1BABCDEFC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1BABCDF34@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v9 = v1[10];
  v10 = v2;
  v11 = v1[12];
  v3 = v11;
  v4 = v1[9];
  v8[0] = v1[8];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1BAAD2DAC(v8, &v7, &qword_1EBC12A88);
}

uint64_t sub_1BABCDFDC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v5 = *(v4 + 120);
  *(v4 + 120) = v3;
  *a1 = v5;
}

uint64_t sub_1BABCE214(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC13C10);

  return sub_1BABC41F4(a1);
}

uint64_t sub_1BABCE32C()
{
  v1 = *(type metadata accessor for ReplicatorMessage() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1BAB12290(v0 + v2, v7, v6, v8, v10, v11);
}

uint64_t sub_1BABCE6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABCE73C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BABCE79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BABCE848(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1BABE6CFC() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1BABCE908(unint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v45 = a2;
  v55 = a4;
  v46 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC12A10);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v45 - v8;
  v60 = sub_1BABE6CFC();
  v9 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReplicatorRecord.ID(0);
  v53 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v58 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v56 = a3;
  v17 = a3[8];
  v16 = a3 + 8;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v47 = 0;
  v48 = (v18 + 63) >> 6;
  v54 = v9;
  v50 = (v9 + 8);
  v51 = v9 + 16;
  v52 = v7;
  while (v20)
  {
    v25 = __clz(__rbit64(v20));
    v57 = (v20 - 1) & v20;
LABEL_12:
    v28 = v25 | (v14 << 6);
    v29 = v56;
    v30 = v58;
    sub_1BABCE6D4(v56[6] + *(v53 + 72) * v28, v58, type metadata accessor for ReplicatorRecord.ID);
    v31 = v29[7];
    v32 = *(v54 + 72);
    v49 = v28;
    v33 = v31 + v32 * v28;
    v34 = *(v54 + 16);
    v36 = v59;
    v35 = v60;
    v34(v59, v33, v60);
    v37 = v61;
    sub_1BABCE6D4(v30, v61, type metadata accessor for ReplicatorRecord.ID);
    v34((v37 + *(v62 + 48)), v36, v35);
    v38 = v52;
    sub_1BAAD2DAC(v37, v52, &qword_1EBC12A10);
    v40 = *(v38 + 32);
    v39 = *(v38 + 40);

    sub_1BABCE73C(v38, type metadata accessor for ReplicatorRecord.ID);
    if (v40 == *v55 && v39 == v55[1])
    {

      v41 = *(v62 + 48);
      sub_1BAAD2E14(v61, &qword_1EBC12A10);
      v42 = *v50;
      v43 = v60;
      (*v50)(v38 + v41, v60);
      v42(v59, v43);
      result = sub_1BABCE73C(v58, type metadata accessor for ReplicatorRecord.ID);
      v20 = v57;
      goto LABEL_15;
    }

    v21 = sub_1BABE7EDC();

    v22 = *(v62 + 48);
    sub_1BAAD2E14(v61, &qword_1EBC12A10);
    v23 = *v50;
    v24 = v60;
    (*v50)(v38 + v22, v60);
    v23(v59, v24);
    result = sub_1BABCE73C(v58, type metadata accessor for ReplicatorRecord.ID);
    v20 = v57;
    if (v21)
    {
LABEL_15:
      *(v46 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_1BAB4A82C(v46, v45, v47, v56);
      }
    }
  }

  v26 = v14;
  while (1)
  {
    v14 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v14 >= v48)
    {
      return sub_1BAB4A82C(v46, v45, v47, v56);
    }

    v27 = v16[v14];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v57 = (v27 - 1) & v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}