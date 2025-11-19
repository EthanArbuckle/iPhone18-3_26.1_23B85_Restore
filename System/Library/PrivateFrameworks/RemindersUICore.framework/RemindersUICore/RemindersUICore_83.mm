void *sub_21D8B240C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400);
  v2 = *v0;
  v3 = sub_21DBFBE8C();
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

void *sub_21D8B2588(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_21DBFBE8C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 56);
    for (i = (v10 + 63) >> 6; v12; *(*(v5 + 48) + v15) = *(*(v3 + 48) + v15))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_17:
      ;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= i)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_21D8B271C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v9 = *v2;
  v10 = sub_21DBFBE8C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_21D8B2954()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63450);
  result = sub_21DBFBE9C();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_17:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21D8B2D80()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE619F8);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_21D8B77B0(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.ItemID.hash(into:)();
      result = sub_21DBFC82C();
      v19 = -1 << *(v7 + 32);
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_21D8B7748(v4, *(v7 + 48) + v14 * v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_21D8B3058()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59288);
  result = sub_21DBFBE9C();
  v4 = result;
  if (*(v2 + 16))
  {
    v28 = v2;
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v2 + 48) + 24 * (v14 | (v5 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v18);
      MEMORY[0x223D44FA0](v19);
      MEMORY[0x223D44FA0](v20);
      result = sub_21DBFC82C();
      v21 = -1 << *(v4 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v4 + 48) + 24 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      *(v13 + 16) = v20;
      ++*(v4 + 16);
      v2 = v28;
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v16 = *(v6 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_21D8B32D8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59280);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      result = sub_21DBFC82C();
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

uint64_t sub_21D8B3524()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633F8);
  result = sub_21DBFBE9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v28 + 72);
      sub_21D8B77B0(*(v5 + 48) + v18 * (v15 | (v8 << 6)), v4, type metadata accessor for TTRRemindersListViewModel.SectionID);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.SectionID.hash(into:)();
      result = sub_21DBFC82C();
      v19 = -1 << *(v7 + 32);
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = sub_21D8B7748(v4, *(v7 + 48) + v14 * v18, type metadata accessor for TTRRemindersListViewModel.SectionID);
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v1 = v7;
  }

  return result;
}

uint64_t sub_21D8B37FC()
{
  v1 = v0;
  v46 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63478);
  result = sub_21DBFBE9C();
  v13 = result;
  if (*(v11 + 16))
  {
    v41 = v1;
    v42 = v10;
    v14 = 0;
    v15 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    v44 = (v2 + 48);
    v45 = result;
    v20 = result + 56;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v48 = (v18 - 1) & v18;
LABEL_15:
      v25 = *(v11 + 48);
      v47 = *(v8 + 72);
      sub_21D8B77B0(v25 + v47 * (v22 | (v14 << 6)), v10, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(&v10[*(v7 + 20)], v6, &unk_27CE5CD70);
      if ((*v44)(v6, 1, v46) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v26 = v6;
        v27 = v11;
        v28 = v8;
        v29 = v7;
        v30 = v6;
        v31 = v43;
        sub_21D8B7748(v26, v43, type metadata accessor for TTRRemindersListViewModel.SectionID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.SectionID.hash(into:)();
        v32 = v31;
        v6 = v30;
        v7 = v29;
        v8 = v28;
        v11 = v27;
        v10 = v42;
        sub_21D8791E0(v32, type metadata accessor for TTRRemindersListViewModel.SectionID);
      }

      result = sub_21DBFC82C();
      v13 = v45;
      v33 = -1 << *(v45 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
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
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_21D8B7748(v10, *(v13 + 48) + v21 * v47, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      ++*(v13 + 16);
      v18 = v48;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v41;
        goto LABEL_29;
      }

      v24 = *(v15 + 8 * v14);
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
    *v1 = v13;
  }

  return result;
}

uint64_t sub_21D8B3C94()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A08);
  result = sub_21DBFBE9C();
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
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v17);
      MEMORY[0x223D44FA0](v18);
      result = sub_21DBFC82C();
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

uint64_t sub_21D8B3EE0()
{
  v1 = v0;
  v38 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63460);
  result = sub_21DBFBE9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v33 = v0;
    v34 = result;
    v13 = 0;
    v14 = 1 << *(v10 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v10 + 56);
    v17 = (v14 + 63) >> 6;
    v36 = (v2 + 48);
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v40 = (v16 - 1) & v16;
LABEL_15:
      v23 = *(v10 + 48);
      v39 = *(v37 + 72);
      sub_21D0D3954(v23 + v39 * (v20 | (v13 << 6)), v9, &qword_27CE5FB90);
      sub_21DBFC7DC();
      sub_21D0D3954(v9, v6, &qword_27CE5FB90);
      if ((*v36)(v6, 1, v38) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v24 = v35;
        sub_21D8B7748(v6, v35, type metadata accessor for TTRRemindersListViewModel.ItemID);
        sub_21DBFC7FC();
        TTRRemindersListViewModel.ItemID.hash(into:)();
        v12 = v34;
        sub_21D8791E0(v24, type metadata accessor for TTRRemindersListViewModel.ItemID);
      }

      result = sub_21DBFC82C();
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
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_21D66A69C(v9, *(v12 + 48) + v19 * v39);
      ++*(v12 + 16);
      v16 = v40;
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

        v1 = v33;
        goto LABEL_29;
      }

      v22 = *(v10 + 56 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v40 = (v22 - 1) & v22;
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
    *v1 = v12;
  }

  return result;
}

uint64_t sub_21D8B4308()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v23 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61A00);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v20 = v0;
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
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v15 = v22;
      v16 = *(v23 + 72);
      sub_21D8B77B0(*(v4 + 48) + v16 * (v12 | (v7 << 6)), v22, type metadata accessor for TTRRecurrenceRuleModel);
      sub_21DBFC7DC();
      TTRRecurrenceRuleModel.hash(into:)();
      sub_21DBFC82C();
      v17 = i;
      v18 = sub_21DBFBCFC();
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_21D8B7748(v15, *(v6 + 48) + v18 * v16, type metadata accessor for TTRRecurrenceRuleModel);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v1 = v20;
        goto LABEL_16;
      }

      v14 = *(v4 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
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

uint64_t sub_21D8B4584()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63468);
  result = sub_21DBFBE9C();
  v4 = result;
  if (!*(v2 + 16))
  {

LABEL_37:
    *v1 = v4;
    return result;
  }

  v31 = v2;
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
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v20 = (*(v2 + 48) + 80 * (v17 | (v5 << 6)));
    v21 = v20[4];
    v22 = v20[1];
    v23 = v20[2];
    v36 = v20[3];
    v37 = v21;
    v35 = v23;
    v33 = *v20;
    v34 = v22;
    sub_21DBFC7DC();
    if (*(&v33 + 1))
    {
      sub_21DBFC7FC();
      sub_21D1D9B34(&v33, v32);
      sub_21DBFA27C();
      if (*(&v34 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_21DBFC7FC();
      sub_21D1D9B34(&v33, v32);
      if (*(&v34 + 1))
      {
LABEL_17:
        sub_21DBFC7FC();
        sub_21DBFA27C();
        if (*(&v35 + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    sub_21DBFC7FC();
    if (*(&v35 + 1))
    {
LABEL_18:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      if (*(&v36 + 1))
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

LABEL_23:
    sub_21DBFC7FC();
    if (*(&v36 + 1))
    {
LABEL_19:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      if (*(&v37 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

LABEL_24:
    sub_21DBFC7FC();
    if (*(&v37 + 1))
    {
LABEL_20:
      sub_21DBFC7FC();
      sub_21DBFA27C();
      goto LABEL_26;
    }

LABEL_25:
    sub_21DBFC7FC();
LABEL_26:
    v2 = v31;
    result = sub_21DBFC82C();
    v24 = -1 << *(v4 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
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
        v30 = *(v11 + 8 * v26);
        if (v30 != -1)
        {
          v12 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v4 + 48) + 80 * v12);
    v14 = v34;
    v15 = v35;
    v16 = v37;
    v13[3] = v36;
    v13[4] = v16;
    v13[1] = v14;
    v13[2] = v15;
    *v13 = v33;
    ++*(v4 + 16);
  }

  v18 = v5;
  while (1)
  {
    v5 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v5 >= v10)
    {

      v1 = v0;
      goto LABEL_37;
    }

    v19 = *(v6 + 8 * v5);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v9 = (v19 - 1) & v19;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_21D8B4930()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63440);
  result = sub_21DBFBE9C();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
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
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
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

uint64_t sub_21D8B4C28()
{
  v1 = v0;
  v32 = sub_21DBF70DC();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63438);
  v6 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_27CE58AC0, MEMORY[0x277D45430]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B4F44()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63430);
  result = sub_21DBFBE9C();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v15);
      result = sub_21DBFC82C();
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

        v1 = v0;
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

uint64_t sub_21D8B5164()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63428);
  result = sub_21DBFBE9C();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21D8B5438()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63420);
  result = sub_21DBFBE9C();
  v10 = result;
  if (*(v8 + 16))
  {
    v31 = v0;
    v32 = v8;
    v11 = 0;
    v12 = v8 + 56;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = *(v8 + 48);
      v23 = *(v33 + 72);
      sub_21D8B77B0(v22 + v23 * (v19 | (v11 << 6)), v7, type metadata accessor for TTRRemindersListViewModel.Item);
      sub_21DBFC7DC();
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v4);
      TTRRemindersListViewModel.ItemID.hash(into:)();
      sub_21D8791E0(v4, type metadata accessor for TTRRemindersListViewModel.ItemID);
      result = sub_21DBFC82C();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_21D8B7748(v7, *(v10 + 48) + v18 * v23, type metadata accessor for TTRRemindersListViewModel.Item);
      ++*(v10 + 16);
      v8 = v32;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v31;
        goto LABEL_26;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v1 = v10;
  }

  return result;
}

uint64_t sub_21D8B5780()
{
  v1 = v0;
  v32 = sub_21DBF686C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63418);
  v6 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&unk_280D0C7E8, MEMORY[0x277D45298]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B5A9C()
{
  v1 = v0;
  v32 = sub_21DBF5D5C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63410);
  v6 = sub_21DBFBE9C();
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
      sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8]);
      result = sub_21DBF9FFC();
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

uint64_t sub_21D8B5DCC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_21DBFB62C();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_21D8B5FD8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633E8);
  result = sub_21DBFBE9C();
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
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_16:
      v18 = *(*(v2 + 48) + (v15 | (v5 << 6)));
      sub_21DBFC7DC();
      sub_21DBFA27C();

      result = sub_21DBFC82C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v10 + 8 * (v12 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v11) >> 6;
        while (++v13 != v20 || (v19 & 1) == 0)
        {
          v21 = v13 == v20;
          if (v13 == v20)
          {
            v13 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v13);
          if (v22 != -1)
          {
            v14 = __clz(__rbit64(~v22)) + (v13 << 6);
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v10 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v4 + 48) + v14) = v18;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_27;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21D8B62AC()
{
  v1 = v0;
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v8 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63408);
  result = sub_21DBFBE9C();
  v14 = result;
  if (*(v12 + 16))
  {
    v36 = v1;
    v15 = 0;
    v16 = *(v12 + 56);
    v37 = v12 + 56;
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v20;
    v43 = (v3 + 48);
    v38 = (v3 + 8);
    v39 = (v3 + 32);
    v21 = result + 56;
    v40 = v11;
    v44 = result;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_15:
      v26 = *(v12 + 48);
      v45 = *(v9 + 72);
      sub_21D8B77B0(v26 + v45 * (v23 | (v15 << 6)), v11, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      sub_21DBFC7DC();
      sub_21D0D3954(v11, v7, &unk_27CE58E70);
      if ((*v43)(v7, 1, v2) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v27 = v41;
        (*v39)(v41, v7, v2);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D17160, MEMORY[0x277CC9AF8]);
        sub_21DBFA00C();
        (*v38)(v27, v2);
      }

      MEMORY[0x223D44FA0](*&v11[*(v8 + 20)]);
      if (*&v11[*(v8 + 24) + 8])
      {
        sub_21DBFC7FC();
        v11 = v40;
        sub_21DBFA27C();
      }

      else
      {
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
      v14 = v44;
      v28 = -1 << *(v44 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v21 + 8 * v30);
          if (v34 != -1)
          {
            v22 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_21D8B7748(v11, *(v14 + 48) + v22 * v45, type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID);
      ++*(v14 + 16);
      v20 = v42;
      v19 = v46;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v36;
        goto LABEL_32;
      }

      v25 = *(v37 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v46 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v1 = v14;
  }

  return result;
}

uint64_t sub_21D8B67DC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63400);
  result = sub_21DBFBE9C();
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
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_21DBFC7DC();
      if (v15 == 2)
      {
        MEMORY[0x223D44FA0](1);
      }

      else
      {
        MEMORY[0x223D44FA0](0);
        sub_21DBFC7FC();
      }

      result = sub_21DBFC82C();
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

        goto LABEL_31;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_21D8B6A30(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      sub_21DBFA16C();
      sub_21DBFC7DC();
      v19 = v18;
      sub_21DBFA27C();
      v20 = sub_21DBFC82C();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_21D8B6CA4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_21DBFBE9C();
  v6 = result;
  if (*(v4 + 16))
  {
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + (v14 | (v7 << 6)));
      sub_21DBFC7DC();
      MEMORY[0x223D44FA0](v17);
      result = sub_21DBFC82C();
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
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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

        v3 = v2;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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
    *v3 = v6;
  }

  return result;
}

uint64_t sub_21D8B6EBC()
{
  v1 = v0;
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest();
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE633D0);
  result = sub_21DBFBE9C();
  v12 = result;
  if (*(v10 + 16))
  {
    v45 = v2;
    v38 = v0;
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
    v44 = v10;
    v39 = (v3 + 8);
    v40 = (v3 + 32);
    v19 = result + 56;
    v41 = v8;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v47 = *(v46 + 72);
      v25 = v48;
      sub_21D8B77B0(v24 + v47 * (v21 | (v13 << 6)), v48, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      sub_21DBFC7DC();
      sub_21DBFB64C();
      sub_21D0D3954(v25 + *(v8 + 20), v7, &qword_27CE5EA20);
      v26 = v45;
      if ((*v43)(v7, 1, v45) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v27 = v7;
        v28 = v42;
        (*v40)(v42, v27, v26);
        sub_21DBFC7FC();
        sub_21D0D8A98(&qword_280D171E0, MEMORY[0x277CC9260]);
        sub_21DBFA00C();
        v29 = v28;
        v7 = v27;
        v8 = v41;
        (*v39)(v29, v26);
      }

      result = sub_21DBFC82C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v10 = v44;
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
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_21D8B7748(v48, *(v12 + 48) + v20 * v47, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
      ++*(v12 + 16);
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

        v1 = v38;
        goto LABEL_29;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v1 = v12;
  }

  return result;
}

unint64_t sub_21D8B7578()
{
  result = qword_280D16988;
  if (!qword_280D16988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D16988);
  }

  return result;
}

unint64_t sub_21D8B75D0()
{
  result = qword_27CE633A0;
  if (!qword_27CE633A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE633A0);
  }

  return result;
}

unint64_t sub_21D8B7628()
{
  result = qword_27CE633A8;
  if (!qword_27CE633A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE633A8);
  }

  return result;
}

unint64_t sub_21D8B7680()
{
  result = qword_27CE633B0;
  if (!qword_27CE633B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE633B0);
  }

  return result;
}

unint64_t sub_21D8B76D8()
{
  result = qword_27CE633B8;
  if (!qword_27CE633B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE633B8);
  }

  return result;
}

uint64_t sub_21D8B7748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8B77B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t REMRepeatType.localizedString.getter(uint64_t a1)
{
  v1 = [objc_opt_self() localizedDescriptionForRepeatType_];
  v2 = sub_21DBFA16C();

  return v2;
}

unint64_t sub_21D8B7888()
{
  result = qword_27CE63480;
  if (!qword_27CE63480)
  {
    type metadata accessor for REMRepeatType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63480);
  }

  return result;
}

void *TTRTimeZoneOverrideMenuPresenterCapability.__allocating_init(userDefaults:defaultTimeZone:currentTimeZone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_21D0DA550(v16, a2, a3, a4, a5, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v18;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.saveRecentlyUsedTimeZone(_:)(unint64_t a1)
{
  v3 = sub_21DBF5C4C();
  v4 = *(v3 - 8);
  v5 = v4;
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68);
  v8 = *(v4 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v31 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  v11 = *(v5 + 16);
  v32 = v3;
  v29 = v11;
  v30 = v5 + 16;
  v11((v10 + v9), a1, v3);
  v12 = sub_21D8B82CC(v10);

  v13 = *(v12 + 16);
  if (v13)
  {
    v28 = v1;
    v33 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v13, 0);
    v14 = v33;
    v27[1] = v12;
    v15 = v12 + v9;
    v16 = (v5 + 8);
    do
    {
      v17 = v32;
      v29(v7, v15, v32);
      v18 = sub_21DBF5BCC();
      v20 = v19;
      (*v16)(v7, v17);
      v33 = v14;
      v22 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21D18E678((v21 > 1), v22 + 1, 1);
        v14 = v33;
      }

      *(v14 + 16) = v22 + 1;
      v23 = v14 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v31;
      --v13;
    }

    while (v13);

    v1 = v28;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v24 = *(v1 + 40);
  v25 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v24);
  (*(v25 + 16))(v14, v24, v25);
  return swift_endAccess();
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverrides(prefix:)(void *a1)
{
  v57 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v2 = sub_21DBF5C4C();
  v58 = *(v2 - 8);
  v3 = v58;
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = *(v1 + 56);

  v15(v16);

  v17 = *(v1 + 72);
  v56 = v1;

  v17(v18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68);
  v19 = *(v3 + 72);
  v20 = v58;
  v21 = v11;
  v22 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v70 = (v22 + v19);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21DC08D00;
  v24 = *(v20 + 16);
  v64 = v22;
  (v24)(v23 + v22, v14, v2);
  v54 = v14;
  v25 = MEMORY[0x223D3E3D0](v21, v14);
  v68 = v20 + 16;
  if ((v25 & 1) == 0)
  {
    (v24)(v8, v21, v2);
    v23 = sub_21D2118F0(1uLL, 2, 1, v23);
    *(v23 + 16) = 2;
    (*(v20 + 32))(v70 + v23, v8, v2);
  }

  v26 = v24;
  v61 = v57[2];
  v55 = v21;
  if (v61)
  {
    v27 = 0;
    v60 = v57 + v64;
    v69 = v2;
    v70 = (v20 + 8);
    v62 = (v20 + 40);
    v63 = (v20 + 24);
    v59 = v19 + v64;
    v67 = v5;
    v71 = v24;
    do
    {
      v66 = v27;
      (v26)(v5, &v60[v27 * v19], v2);
      v31 = *(v23 + 16);
      if (v31)
      {
        v32 = 0;
        v33 = v23 + v64;
        v34 = v23 + v59;
        v65 = v23 + v64;
        while ((MEMORY[0x223D3E3D0](v33, v5) & 1) == 0)
        {
          ++v32;
          v33 += v19;
          v34 += v19;
          if (v31 == v32)
          {
            goto LABEL_13;
          }
        }

        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_51;
        }

        v36 = *(v23 + 16);
        while (v35 != v36)
        {
          if (v35 >= v36)
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          (v71)(v8, v34, v2);
          v37 = MEMORY[0x223D3E3D0](v8, v5);
          (*v70)(v8, v2);
          if ((v37 & 1) == 0)
          {
            if (v35 != v32)
            {
              if (v32 < 0)
              {
                goto LABEL_43;
              }

              v38 = *(v23 + 16);
              if (v32 >= v38)
              {
                goto LABEL_44;
              }

              v39 = v8;
              v40 = v65;
              v41 = v39;
              v42 = v69;
              v71();
              if (v35 >= v38)
              {
                goto LABEL_45;
              }

              (*v63)(v40 + v32 * v19, v34, v42);
              if (v35 >= *(v23 + 16))
              {
                goto LABEL_46;
              }

              v2 = v42;
              v8 = v41;
              (*v62)(v34, v41, v42);
              v5 = v67;
            }

            ++v32;
          }

          ++v35;
          v36 = *(v23 + 16);
          v34 += v19;
        }

        if (v35 < v32)
        {
          goto LABEL_48;
        }

        if (v32 < 0)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
        }
      }

      else
      {
LABEL_13:
        v35 = *(v23 + 16);
        v32 = v35;
      }

      v43 = v32 - v35;
      v44 = v32;
      if (__OFADD__(v35, v32 - v35))
      {
        goto LABEL_47;
      }

      if (v32 > *(v23 + 24) >> 1)
      {
        if (v35 > v32)
        {
          v44 = v35;
        }

        v23 = sub_21D2118F0(1uLL, v44, 1, v23);
      }

      v45 = v23 + v64;
      v46 = v32 * v19;
      v47 = v23 + v64 + v32 * v19;
      v2 = v69;
      swift_arrayDestroy();
      v48 = v35 == v32;
      v26 = v71;
      if (!v48)
      {
        if (v46 < (v35 * v19) || v47 >= v45 + v35 * v19 + (*(v23 + 16) - v35) * v19)
        {
          v2 = v69;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v2 = v69;
          if (v46 != v35 * v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = *(v23 + 16);
        v29 = __OFADD__(v28, v43);
        v30 = v28 + v43;
        if (v29)
        {
          goto LABEL_50;
        }

        *(v23 + 16) = v30;
      }

      v5 = v67;
      v27 = v66 + 1;
      (*v70)(v67, v2);
    }

    while (v27 != v61);
  }

  v72 = v57;
  sub_21DBF8E0C();
  sub_21D563578(v23);
  v50 = sub_21D8B82CC(v72);

  v51 = *(v58 + 8);
  v51(v55, v2);
  v51(v54, v2);
  return v50;
}

uint64_t sub_21D8B82CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v5 = sub_21DBF5C4C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v41 = &v31 - v12;
  swift_beginAccess();
  v13 = v1[5];
  v14 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
  v15 = *(v14 + 8);
  sub_21DBF8E0C();
  v16 = v15(v13, v14);
  result = swift_endAccess();
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v39 = *(v18 + 16);
  if (v39)
  {
    v19 = 0;
    v37 = (v6 + 48);
    v38 = v18 + 32;
    v35 = (v6 + 32);
    v36 = a1;
    v40 = (v6 + 16);
    v20 = v33;
    v31 = v18;
    while (v19 < *(v18 + 16))
    {
      sub_21DBF8E0C();
      sub_21DBF5BBC();

      if ((*v37)(v20, 1, v5) == 1)
      {
        result = sub_21D1E0858(v20);
      }

      else
      {
        v34 = *v35;
        v34(v41, v20, v5);
        v21 = 0;
        v22 = a1;
        v23 = a1[2];
        while (v23 != v21)
        {
          (*(v6 + 16))(v11, v22 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21++, v5);
          v24 = MEMORY[0x223D3E3D0](v11, v41);
          v25 = *(v6 + 8);
          v25(v11, v5);
          if (v24)
          {
            result = (v25)(v41, v5);
            a1 = v22;
            v20 = v33;
            goto LABEL_19;
          }
        }

        (*v40)(v32, v41, v5);
        a1 = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_21D2118F0(0, v36[2] + 1, 1, v36);
        }

        v20 = v33;
        v27 = v36[2];
        v26 = v36[3];
        if (v27 >= v26 >> 1)
        {
          v36 = sub_21D2118F0(v26 > 1, v27 + 1, 1, v36);
        }

        (*(v6 + 8))(v41, v5);
        v28 = v36;
        v36[2] = v27 + 1;
        result = (v34)(v28 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v32, v5);
LABEL_19:
        v18 = v31;
      }

      if (++v19 == v39)
      {

        a1 = v36;
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_22:
    if (a1[2] >= 9uLL)
    {
      sub_21D19885C(a1, a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), 0, 0x11uLL);
      v30 = v29;

      return v30;
    }

    return a1;
  }

  return result;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.recentTimeZoneOverridesWithCurrentTimeZone(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A68);
  v2 = sub_21DBF5C4C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21DC08D00;
  (*(v3 + 16))(v5 + v4, a1, v2);
  v6 = sub_21D8B82CC(v5);

  return v6;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return v0;
}

uint64_t TTRTimeZoneOverrideMenuPresenterCapability.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

id TTRIQuickLookImageAttachmentPreviewItem.__allocating_init(attachmentID:fileURL:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID] = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v4 = sub_21DBF54CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id TTRIQuickLookImageAttachmentPreviewItem.init(attachmentID:fileURL:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID] = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v7 = sub_21DBF54CC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v2[v6], a2, v7);
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_21D0DB414(a1, v7);
  if (!v8)
  {
    sub_21D1A8418(v7);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v4 = 0;
    return v4 & 1;
  }

  sub_21D1B2ABC();
  v2 = *&v6[OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_attachmentID];
  v3 = sub_21DBFB63C();

  if ((v3 & 1) == 0)
  {

    goto LABEL_7;
  }

  v4 = sub_21DBF544C();

  return v4 & 1;
}

id TTRIQuickLookImageAttachmentPreviewItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIQuickLookImageAttachmentPreviewItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.previewItemURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore39TTRIQuickLookImageAttachmentPreviewItem_fileURL;
  v4 = sub_21DBF54CC();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a1, v1 + v3, v4);
  v5 = *(v7 + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t TTRIQuickLookImageAttachmentPreviewItem.previewItemTitle.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem()
{
  result = qword_27CE634A0;
  if (!qword_27CE634A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8B9180()
{
  result = sub_21DBF54CC();
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

uint64_t sub_21D8B924C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63510);
  v1 = __swift_project_value_buffer(v0, qword_27CE63510);
  if (qword_27CE570F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CE8ED00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRUrgentAlarmAuthorizationService.authorizationStatus.getter@<X0>(uint64_t a1@<X8>)
{
  sub_21D0D3954(v1 + 16, &v10, &qword_27CE63528);
  if (v11)
  {
    sub_21D0D0FD0(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_21DBF5E8C();
    v3 = sub_21DBF5E6C();
    (*(*(v3 - 8) + 56))(a1, 0, 1, v3);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    sub_21D0CF7E0(&v10, &qword_27CE63528);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE63510);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_21D0C9000, v6, v7, "TTRUrgentAlarmAuthorizationService: missing alarm manager -- returning nil authorization status", v8, 2u);
      MEMORY[0x223D46520](v8, -1, -1);
    }

    v9 = sub_21DBF5E6C();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

void *TTRUrgentAlarmAuthorizationService.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_21DBF5EAC();
  swift_allocObject();
  v2 = sub_21DBF5E9C();
  v3 = MEMORY[0x277D44D00];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  return v0;
}

void *TTRUrgentAlarmAuthorizationService.init()()
{
  v1 = sub_21DBF5EAC();
  swift_allocObject();
  v0[2] = sub_21DBF5E9C();
  v2 = MEMORY[0x277D44D00];
  v0[5] = v1;
  v0[6] = v2;
  return v0;
}

__n128 TTRUrgentAlarmAuthorizationService.__allocating_init(alarmManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  return result;
}

uint64_t TTRUrgentAlarmAuthorizationService.init(alarmManager:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

uint64_t TTRUrgentAlarmAuthorizationService.checkAndRequestAccessIfNeeded()()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B1A8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D8B96B8, 0, 0);
}

uint64_t sub_21D8B96B8()
{
  sub_21D0D3954(*(v0 + 96) + 16, v0 + 56, &qword_27CE63528);
  if (!*(v0 + 80))
  {
    sub_21D0CF7E0(v0 + 56, &qword_27CE63528);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE63510);
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRUrgentAlarmAuthorizationService: checkAndRequestAccessIfNeeded missing alarm manager", v13, 2u);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    goto LABEL_20;
  }

  v1 = *(v0 + 112);
  sub_21D0D0FD0((v0 + 56), v0 + 16);
  TTRUrgentAlarmAuthorizationService.authorizationStatus.getter(v1);
  v2 = sub_21DBF5E6C();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE63510);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAEBC();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_8;
    }

    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = "TTRUrgentAlarmAuthorizationService: Missing AlarmKit authorization status; will not request for authorization";
LABEL_7:
    _os_log_impl(&dword_21D0C9000, v5, v6, v8, v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
LABEL_8:
    v9 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    sub_21D0CF7E0(v9, &qword_27CE5B1A8);
LABEL_20:

    v20 = *(v0 + 8);

    return v20();
  }

  v14 = *(v0 + 104);
  sub_21D0D3954(*(v0 + 112), v14, &qword_27CE5B1A8);
  v15 = (*(v3 + 88))(v14, v2);
  if (v15 == *MEMORY[0x277D44CD8])
  {
LABEL_15:
    sub_21D0CF7E0(*(v0 + 112), &qword_27CE5B1A8);
    if (qword_27CE56DE8 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE63510);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAEDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21D0C9000, v17, v18, "TTRUrgentAlarmAuthorizationService: AlarmKit authorization status already determined; will not request for authorization", v19, 2u);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
    goto LABEL_20;
  }

  if (v15 != *MEMORY[0x277D44CE0])
  {
    if (v15 != *MEMORY[0x277D44CE8])
    {
      (*(v3 + 8))(*(v0 + 104), v2);
      if (qword_27CE56DE8 != -1)
      {
        swift_once();
      }

      v27 = sub_21DBF84BC();
      __swift_project_value_buffer(v27, qword_27CE63510);
      v5 = sub_21DBF84AC();
      v6 = sub_21DBFAEBC();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      v8 = "TTRUrgentAlarmAuthorizationService: Unknown AlarmKit authorization status; will not request for authorization";
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE63510);
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAEDC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21D0C9000, v23, v24, "TTRUrgentAlarmAuthorizationService: AlarmKit authorization status is not determined. Requesting authorization...", v25, 2u);
    MEMORY[0x223D46520](v25, -1, -1);
  }

  v26 = swift_task_alloc();
  *(v0 + 120) = v26;
  *v26 = v0;
  v26[1] = sub_21D8B9C88;

  return sub_21D8B9F3C(v0 + 16);
}

uint64_t sub_21D8B9C88()
{

  return MEMORY[0x2822009F8](sub_21D8B9D84, 0, 0);
}

uint64_t sub_21D8B9D84()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  sub_21D0CF7E0(v1, &qword_27CE5B1A8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TTRUrgentAlarmAuthorizationService.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + 16, &qword_27CE63528);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8B9EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return TTRUrgentAlarmAuthorizationService.checkAndRequestAccessIfNeeded()();
}

uint64_t sub_21D8B9F3C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_21DBF5E6C();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D8BA008, 0, 0);
}

uint64_t sub_21D8BA008()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_21D8BA0C4;
  v5 = v0[7];

  return MEMORY[0x2821A6558](v5, v2, v3);
}

uint64_t sub_21D8BA0C4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21D8BA418;
  }

  else
  {
    v2 = sub_21D8BA1D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D8BA1D8()
{
  v25 = v0;
  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE63510);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEDC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  v10 = v0[7];
  v12 = v0[4];
  v11 = v0[5];
  if (v8)
  {
    v23 = v0[7];
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v13 = 136315138;
    sub_21D8BA788();
    v14 = sub_21DBFC5BC();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v9, v12);
    v18 = sub_21D0CDFB4(v14, v16, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRUrgentAlarmAuthorizationService: Finished request for AlarmKit authorization {authorizationStatus: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x223D46520](v22, -1, -1);
    MEMORY[0x223D46520](v13, -1, -1);

    v17(v23, v12);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v12);
    v19(v10, v12);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_21D8BA418()
{
  v17 = v0;
  if (qword_27CE56DE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE63510);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    v11 = sub_21DBFA1AC();
    v13 = sub_21D0CDFB4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRUrgentAlarmAuthorizationService: Failed to request AlarmKit authorization {error: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t dispatch thunk of TTRUrgentAlarmAuthorizationServiceType.checkAndRequestAccessIfNeeded()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return v7(a1, a2);
}

unint64_t sub_21D8BA788()
{
  result = qword_27CE63530;
  if (!qword_27CE63530)
  {
    sub_21DBF5E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63530);
  }

  return result;
}

uint64_t TTRTipGroceryRenameSection.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipGroceryRenameSection.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipGroceryRenameSection.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D8BAC58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20);
  __swift_allocate_value_buffer(v0, qword_27CE63538);
  __swift_project_value_buffer(v0, qword_27CE63538);
  return sub_21DBF8EAC();
}

uint64_t static TTRTipGroceryRenameSection.startedEditingSection.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20);
  v3 = __swift_project_value_buffer(v2, qword_27CE63538);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TTRTipGroceryRenameSection.rules.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_21DBF8E7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE63538);
  (*(v1 + 16))(v3, v8, v0);
  sub_21DBF8E1C();
  sub_21D8BB4E4(&qword_27CE63550);
  sub_21D8BB4E4(&qword_27CE63558);
  sub_21DBF8E8C();
  sub_21DBF8DFC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_21DBF8E0C();

  return v9;
}

uint64_t sub_21D8BAFBC@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_21DBF528C();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63570);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63578);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63580);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63588);
  v14 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v16 = &v26 - v15;
  sub_21D0D0F1C(&qword_27CE63590, &qword_27CE63578);
  sub_21DBF52AC();
  swift_getKeyPath();
  sub_21DBF526C();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_21D0D0F1C(&qword_27CE63598, &qword_27CE63580);
  sub_21DBF526C();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v28;
  sub_21DBF529C();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, *MEMORY[0x277CC8FD8], v31);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE635A0);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_21D8BBCE4();
  __swift_allocate_boxed_opaque_existential_0(v22);
  sub_21D0D0F1C(&qword_27CE635D0, &qword_27CE63588);
  sub_21D0D0F1C(&unk_27CE635D8, &qword_27CE63570);
  v23 = v27;
  v24 = v33;
  sub_21DBF527C();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_21D8BB4E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21DBF8E1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D8BB530()
{
  result = qword_27CE63560;
  if (!qword_27CE63560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63560);
  }

  return result;
}

uint64_t sub_21D8BB584()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D8BB65C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D8BB750()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60D20);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  v4 = sub_21DBF8E7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56DF0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE63538);
  (*(v1 + 16))(v3, v8, v0);
  sub_21DBF8E1C();
  sub_21D8BB4E4(&qword_27CE63550);
  sub_21D8BB4E4(&qword_27CE63558);
  sub_21DBF8E8C();
  sub_21DBF8DFC();
  (*(v5 + 8))(v7, v4);
  v9 = sub_21DBF8E0C();

  return v9;
}

uint64_t sub_21D8BB990()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D8BBC40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D8BBC90();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

unint64_t sub_21D8BBC90()
{
  result = qword_27CE63568;
  if (!qword_27CE63568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63568);
  }

  return result;
}

unint64_t sub_21D8BBCE4()
{
  result = qword_27CE635A8;
  if (!qword_27CE635A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE635A0);
    sub_21D8BBD9C();
    sub_21D0D0F1C(&qword_27CE635C8, &qword_27CE63570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE635A8);
  }

  return result;
}

unint64_t sub_21D8BBD9C()
{
  result = qword_27CE635B0;
  if (!qword_27CE635B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63588);
    sub_21D8BBE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE635B0);
  }

  return result;
}

unint64_t sub_21D8BBE20()
{
  result = qword_27CE635B8;
  if (!qword_27CE635B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE63580);
    sub_21D0D0F1C(&qword_27CE635C0, &qword_27CE63578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE635B8);
  }

  return result;
}

BOOL sub_21D8BC074(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2A0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  sub_21D0D3954(a1, v29, &qword_27CE5C690);
  if (!v30)
  {
    v20 = &qword_27CE5C690;
    v21 = v29;
LABEL_11:
    sub_21D0CF7E0(v21, v20);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v2;
  v15 = v5;
  v16 = v28[1];
  v17 = OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL;
  v18 = *(v11 + 48);
  v28[0] = v14;
  sub_21D0D3954(v14 + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL, v13, &qword_27CE5EA20);
  sub_21D0D3954(&v16[v17], &v13[v18], &qword_27CE5EA20);
  v19 = *(v15 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_21D0CF7E0(v13, &qword_27CE5EA20);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5EA20);
  if (v19(&v13[v18], 1, v4) == 1)
  {

    (*(v15 + 8))(v10, v4);
LABEL_10:
    v20 = &unk_27CE5F2A0;
    v21 = v13;
    goto LABEL_11;
  }

  (*(v15 + 32))(v7, &v13[v18], v4);
  sub_21D17A744();
  v23 = sub_21DBFA10C();
  v24 = *(v15 + 8);
  v24(v7, v4);
  v24(v10, v4);
  sub_21D0CF7E0(v13, &qword_27CE5EA20);
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v25 = *(v28[0] + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle + 8);
  v26 = *&v16[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle + 8];
  if (v25)
  {
    if (v26)
    {
      if (*(v28[0] + OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle) == *&v16[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle] && v25 == v26)
      {

        return 1;
      }

      v27 = sub_21DBFC64C();

      return (v27 & 1) != 0;
    }

LABEL_20:

    return 0;
  }

  sub_21DBF8E0C();

  if (!v26)
  {
    return 1;
  }

  return 0;
}

uint64_t type metadata accessor for TTRIQuickLookPreviewItem()
{
  result = qword_27CE635E8;
  if (!qword_27CE635E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D8BC5F8()
{
  sub_21D514D00();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *TTRIQuickLookPreviewController.__allocating_init(ttr_previewItems:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  *&v3[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  [v6 setDataSource_];
  return v6;
}

uint64_t TTRIQuickLookPreviewController.transitionDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate];
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  [v2 setDelegate_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_21D8BC83C(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate;
  swift_beginAccess();
  *(v4 + 8) = v2;
  swift_unknownObjectWeakAssign();
  [v3 setDelegate_];
  return swift_unknownObjectRelease();
}

void (*TTRIQuickLookPreviewController.transitionDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D8BC964;
}

void sub_21D8BC964(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    [v4 setDelegate_];
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *TTRIQuickLookPreviewController.init(ttr_previewItems:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  *&v1[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  [v6 setDataSource_];
  return v6;
}

id TTRIQuickLookPreviewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIQuickLookPreviewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_21DBFC31C();
  __break(1u);
}

id TTRIQuickLookPreviewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TTRIQuickLookPreviewController.__allocating_init(previewItems:)()
{
  v1 = objc_allocWithZone(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A698);
  v2 = sub_21DBFA5DC();

  v3 = [v1 initWithPreviewItems_];

  return v3;
}

char *_s15RemindersUICore30TTRIQuickLookPreviewControllerC15previewItemURLsACSay10Foundation3URLVG_tcfC_0(uint64_t a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v39 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v33 = *(v11 + 56);
    v34 = 0x800000021DC6ADD0;
    v32 = (v11 + 40);
    v30[1] = a1;
    v31 = (v11 - 8);
    do
    {
      v35 = v9;
      v10(v8, v13, v2);
      v10(v5, v8, v2);
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v14 = sub_21DBF516C();
      v16 = v15;
      v17 = type metadata accessor for TTRIQuickLookPreviewItem();
      v18 = objc_allocWithZone(v17);
      v19 = &v18[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemTitle];
      *v19 = v14;
      v19[1] = v16;
      v20 = OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL;
      v10(&v18[OBJC_IVAR____TtC15RemindersUICore24TTRIQuickLookPreviewItem_previewItemURL], v5, v2);
      (*v32)(&v18[v20], 0, 1, v2);
      v38.receiver = v18;
      v38.super_class = v17;
      objc_msgSendSuper2(&v38, sel_init);
      v21 = *v31;
      (*v31)(v5, v2);
      v21(v8, v2);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v13 += v33;
      v9 = v35 - 1;
    }

    while (v35 != 1);

    v22 = v39;
    if (!(v39 >> 62))
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A698);
    v23 = sub_21DBFC33C();

    goto LABEL_8;
  }

  v22 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_21DBF8E0C();
  sub_21DBFC65C();
  v23 = v22;
LABEL_8:

  v24 = type metadata accessor for TTRIQuickLookPreviewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v26 = type metadata accessor for TTRIQuickLookPreviewController.DataSource();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtCC15RemindersUICore30TTRIQuickLookPreviewControllerP33_5E2A18B72E000F5EB686E3810129004A10DataSource_previewItems] = v23;
  v37.receiver = v27;
  v37.super_class = v26;
  *&v25[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_ttrDataSource] = objc_msgSendSuper2(&v37, sel_init);
  v36.receiver = v25;
  v36.super_class = v24;
  v28 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  [v28 setDataSource_];
  return v28;
}

uint64_t TTRReminderCellTitleInteractor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellTitleInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRReminderCellTitleInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRReminderCellTitleInteractor.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t TTRReminderCellTitleInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8BD61C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D8335E8(v3, v4);
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIQuickEntryPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  sub_21D8335E8(v3, v4);
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  v6 = *(a1 + 16);
  *(a1 + 16) = v4;
  sub_21D257D78(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRIQuickEntryPresenterConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v3 = *(a2 + 16);
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D257D78(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIQuickEntryPresenterConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIQuickEntryPresenterConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_21D8BD7C8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (qword_27CE56A20 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (v3 == 2)
  {
    v5 = 1;
    v6 = (byte_27CE5E181 & 1) != 0;
    if (byte_27CE5E181)
    {
      v7 = 0x80;
    }

    else
    {
      v5 = 5;
      v7 = -64;
    }
  }

  else if (byte_27CE5E181 & 1) != 0 && (v3)
  {
    v5 = 0;
    v7 = 0x80;
    v6 = 1;
  }

  else
  {
    v7 = -64;
    v6 = 1;
    v5 = 6;
  }

  *a2 = v6;
  *(a2 + 1) = v3 == 2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  return result;
}

unint64_t sub_21D8BD8CC()
{
  result = qword_27CE63680;
  if (!qword_27CE63680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5BDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63680);
  }

  return result;
}

uint64_t sub_21D8BD930(char a1)
{
  if (!a1)
  {
    return 0x65646F4D65736162;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000018;
}

uint64_t sub_21D8BD990(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000012;
  v3 = *a1;
  v4 = 0x800000021DC43A70;
  if (v3 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (v3 == 1)
  {
    v6 = 0x800000021DC43A70;
  }

  else
  {
    v6 = 0x800000021DC43A90;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65646F4D65736162;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE90000000000006CLL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000018;
    v4 = 0x800000021DC43A90;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x65646F4D65736162;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE90000000000006CLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DBFC64C();
  }

  return v11 & 1;
}

uint64_t sub_21D8BDA70()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D8BDB1C()
{
  sub_21DBFA27C();
}

uint64_t sub_21D8BDBB4()
{
  sub_21DBFC7DC();
  sub_21DBFA27C();

  return sub_21DBFC82C();
}

uint64_t sub_21D8BDC5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21D8BDD5C();
  *a1 = result;
  return result;
}

void sub_21D8BDC8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006CLL;
  v4 = 0xD000000000000012;
  v5 = 0x800000021DC43A70;
  if (v2 != 1)
  {
    v4 = 0xD000000000000018;
    v5 = 0x800000021DC43A90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65646F4D65736162;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21D8BDD08()
{
  result = qword_27CE63688;
  if (!qword_27CE63688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63688);
  }

  return result;
}

uint64_t sub_21D8BDD5C()
{
  v0 = sub_21DBFC45C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void static TTRListColors.color(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v5 = [v4 ckSymbolicColorName];
    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = [v4 daSymbolicColorName];
    v10 = sub_21DBFA16C();
    v12 = v11;

    if (qword_280D1AD80 != -1)
    {
      swift_once();
    }

    v13 = off_280D1AD88;
    if (*(off_280D1AD88 + 2))
    {
      v14 = sub_21D0CEF70(v6, v8);
      v16 = v15;

      if (v16)
      {
        v17 = *(v13[7] + 8 * v14);
        if (qword_280D1BB08 == -1)
        {
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          swift_once();
          if ((v17 & 0x8000000000000000) == 0)
          {
LABEL_8:
            if (v17 < *(off_280D1BB10 + 2))
            {
              v18 = (off_280D1BB10 + 48 * v17);
              v20 = v18[4];
              v19 = v18[5];
              v22 = v18[6];
              v21 = v18[7];
              v24 = v18[8];
              v23 = v18[9];
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              sub_21DBF8E0C();

LABEL_20:

              *a2 = v20;
              *(a2 + 8) = v19;
              *(a2 + 16) = v22;
              *(a2 + 24) = v21;
              *(a2 + 32) = v24;
              *(a2 + 40) = v23;
              *(a2 + 48) = 0;
              return;
            }

            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (v13[2])
    {
      v30 = sub_21D0CEF70(v10, v12);
      v32 = v31;

      if (v32)
      {
        v17 = *(v13[7] + 8 * v30);
        if (qword_280D1BB08 == -1)
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

LABEL_18:
          if (v17 < *(off_280D1BB10 + 2))
          {
            v33 = (off_280D1BB10 + 48 * v17);
            v20 = v33[4];
            v19 = v33[5];
            v22 = v33[6];
            v21 = v33[7];
            v24 = v33[8];
            v23 = v33[9];
            sub_21DBF8E0C();
            sub_21DBF8E0C();
            sub_21DBF8E0C();
            goto LABEL_20;
          }

          goto LABEL_28;
        }

LABEL_26:
        swift_once();
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    *a2 = a1;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    return;
  }

  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = xmmword_280D1BAC8;
  v26 = qword_280D1BAD8;
  v27 = unk_280D1BAE0;
  v28 = xmmword_280D1BAE8;
  v29 = byte_280D1BAF8;
  *a2 = xmmword_280D1BAC8;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  sub_21D0FB960(v25, *(&v25 + 1), v26, v27, v28, *(&v28 + 1), v29);
}

id static TTRListColors.SmartList.siriFoundInApps.getter()
{
  v0 = [objc_opt_self() ttr_systemPurpleColor];

  return v0;
}

uint64_t TTRListColors.Color.localizedDescription.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  if (v0[3])
  {
    v6 = *v0;
    v7 = v0[1];
    v8 = *(v0 + 4);
    LOBYTE(v9) = 1;
    v3 = TTRListColors.Color.nativeColor.getter();
    v4 = [v3 accessibilityName];

    v1 = sub_21DBFA16C();
  }

  else
  {
    sub_21DBF8E0C();
  }

  return v1;
}

uint64_t sub_21D8BE260()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63690);
  v1 = __swift_project_value_buffer(v0, qword_27CE63690);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *static TTRListColors.remColor(for:list:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  if (*(a1 + 48))
  {
    v3 = v2;
  }

  else
  {
    v4 = a2[3];
    v5 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v4);
    v6 = (*(v5 + 72))(v4, v5);
    LOBYTE(v5) = [v6 supportsListAppearance];

    v7 = objc_allocWithZone(MEMORY[0x277D445D0]);
    v8 = sub_21DBFA12C();
    if (v5)
    {
      v9 = [v7 initWithCKSymbolicColorName:v8 hexString:0];
    }

    else
    {
      v9 = [v7 initWithDASymbolicColorName:v8 daHexString:0];
    }

    v2 = v9;
  }

  return v2;
}

unint64_t static TTRListColors.ttrColor(withSymbolicName:)(uint64_t a1, uint64_t a2)
{
  if (qword_280D1AD80 != -1)
  {
    v11 = a1;
    v12 = a2;
    swift_once();
    a1 = v11;
    a2 = v12;
  }

  v2 = off_280D1AD88;
  if (!*(off_280D1AD88 + 2))
  {
    return 0;
  }

  result = sub_21D0CEF70(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2[7] + 8 * result);
  if (qword_280D1BB08 == -1)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = swift_once();
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      if (v5 < *(off_280D1BB10 + 2))
      {
        type metadata accessor for RemindersUICoreBundleLookupObject();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v7 = objc_opt_self();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v8 = [v7 bundleForClass_];
        v9 = sub_21DBFA12C();
        v10 = [objc_opt_self() colorNamed:v9 inBundle:v8 compatibleWithTraitCollection:0];

        return v10;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t TTRListColors.SymbolicColor.name.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRListColors.SymbolicColor.colorAssetName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRListColors.SymbolicColor.localizedDescription.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t static TTRListColors.SymbolicColor.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21DBFC64C() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_21DBFC64C();
}

uint64_t TTRListColors.Color.description.getter()
{
  v1 = *v0;
  if (*(v0 + 48))
  {
    v7 = 0x286D6F74737563;
    v2 = [v1 hexString];
    v3 = sub_21DBFA16C();
    v5 = v4;

    MEMORY[0x223D42AA0](v3, v5);
  }

  else
  {
    v7 = 0x63696C6F626D7973;
    MEMORY[0x223D42AA0](v1, *(v0 + 8));
  }

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return v7;
}

char *static TTRListColors.availableSymbolicColors(for:)(uint64_t a1)
{
  if (qword_280D1BB08 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  MEMORY[0x28223BE20](a1);
  v5[2] = v1;
  return sub_21D4E7974(sub_21D8BF5B4, v5, v2);
}

void sub_21D8BE8CC(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v16 = a1[2];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 72))(v9, v10);
  LOBYTE(v9) = [v11 supportsListAppearance];

  v12 = sub_21DBFA12C();
  if ((v9 & 1) == 0)
  {
    IsSupportedByDA = REMSymbolicColorIsSupportedByDA();

    if ((IsSupportedByDA & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v14 = v16;
    goto LABEL_6;
  }

  IsSupportedByCK = REMSymbolicColorIsSupportedByCK();

  if (IsSupportedByCK)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 0;
  v5 = 0;
  v14 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
LABEL_6:
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v14;
  a3[3] = v6;
  a3[4] = v7;
  a3[5] = v8;
}

uint64_t static TTRListColors.availableColors(for:)(uint64_t a1)
{
  if (qword_280D1BB08 != -1)
  {
    v17 = a1;
    swift_once();
    a1 = v17;
  }

  MEMORY[0x28223BE20](a1);
  v18[2] = v1;
  v3 = sub_21D4E7974(sub_21D8BF5F8, v18, v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21D18F590(0, v4, 0);
    v5 = v21;
    v18[5] = v3;
    v6 = (v3 + 72);
    do
    {
      v8 = *(v6 - 5);
      v7 = *(v6 - 4);
      v9 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *v6;
      v19 = *(v6 - 1);
      v20 = v9;
      v21 = v5;
      v12 = *(v5 + 16);
      v13 = *(v5 + 24);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v12 >= v13 >> 1)
      {
        sub_21D18F590((v13 > 1), v12 + 1, 1);
        v5 = v21;
      }

      v6 += 6;
      *(v5 + 16) = v12 + 1;
      v14 = v5 + 56 * v12;
      *(v14 + 32) = v8;
      *(v14 + 40) = v7;
      v15 = v19;
      *(v14 + 48) = v20;
      *(v14 + 56) = v10;
      *(v14 + 64) = v15;
      *(v14 + 72) = v11;
      *(v14 + 80) = 0;
      --v4;
    }

    while (v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t static TTRListColors.allSymbolicColors.getter()
{
  if (qword_280D1BB08 != -1)
  {
    swift_once();
  }

  return sub_21DBF8E0C();
}

id static TTRListColors.defaultColor.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  *a1 = xmmword_280D1BAC8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

void static TTRListColors.defaultColor.setter(uint64_t a1)
{
  v8 = *a1;
  v9 = *(a1 + 16);
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_280D1BAC8;
  v5 = xmmword_280D1BAD8;
  v6 = xmmword_280D1BAE8;
  v7 = byte_280D1BAF8;
  xmmword_280D1BAC8 = v8;
  xmmword_280D1BAD8 = v9;
  *&xmmword_280D1BAE8 = v1;
  *(&xmmword_280D1BAE8 + 1) = v2;
  byte_280D1BAF8 = v3;
  sub_21D1078C0(v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7);
}

uint64_t (*static TTRListColors.defaultColor.modify())()
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21D8BEDC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = xmmword_280D1BAD8;
  v4 = xmmword_280D1BAE8;
  v5 = byte_280D1BAF8;
  *a1 = xmmword_280D1BAC8;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  return sub_21D0FB960(v2, *(&v2 + 1), v3, *(&v3 + 1), v4, *(&v4 + 1), v5);
}

void sub_21D8BEE58(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_21D0FB960(*a1, v2, v3, v4, v5, v6, v7);
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_280D1BAC8;
  v9 = xmmword_280D1BAD8;
  v10 = xmmword_280D1BAE8;
  v11 = byte_280D1BAF8;
  *&xmmword_280D1BAC8 = v1;
  *(&xmmword_280D1BAC8 + 1) = v2;
  *&xmmword_280D1BAD8 = v3;
  *(&xmmword_280D1BAD8 + 1) = v4;
  *&xmmword_280D1BAE8 = v5;
  *(&xmmword_280D1BAE8 + 1) = v6;
  byte_280D1BAF8 = v7;
  sub_21D1078C0(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11);
}

id static TTRListColors.tagged.getter()
{
  v0 = [objc_opt_self() systemBlueColor];

  return v0;
}

uint64_t UIColor.hexString.getter()
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v13[0] = 0.0;
  v10 = 0;
  v11 = 0.0;
  [v0 getRed:v13 green:&v12 blue:&v11 alpha:&v10];
  v1 = v13[0] * 255.0;
  if (COERCE__INT64(fabs(v13[0] * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v2 = v12 * 255.0;
  if (COERCE__INT64(fabs(v12 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = v11 * 255.0;
  if (COERCE__INT64(fabs(v11 * 255.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v3 >= 9.22337204e18)
  {
    goto LABEL_19;
  }

  v4 = (v2 << 8) | (v1 << 16) | v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83B88];
  *(v5 + 16) = xmmword_21DC08D00;
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v4;
  sub_21DBFA17C();
  v8 = sub_21DBFA01C();

  return v8;
}

BOOL UIColor.adjustsForAccessibilityIncreaseContrast.getter()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = sub_21DBFB24C();

  v5 = [v1 resolvedColorWithTraitCollection_];
  v6 = [v2 currentTraitCollection];
  v7 = sub_21DBFB24C();

  v8 = [v1 resolvedColorWithTraitCollection_];
  sub_21D0D8CF0(0, &qword_280D1B8F0);
  LOBYTE(v6) = sub_21DBFB63C();

  return (v6 & 1) == 0;
}

UIColor __swiftcall UIColor.accessibilityAdjustedForTraitCollection(_:)(UITraitCollection a1)
{
  if ([(objc_class *)a1.super.isa accessibilityContrast]== 1)
  {
    v2 = objc_opt_self();
    v3 = [v2 currentTraitCollection];
    v4 = sub_21DBFB24C();

    v5 = [v14 resolvedColorWithTraitCollection_];
    v6 = [v2 currentTraitCollection];
    v7 = sub_21DBFB24C();

    v8 = [v14 resolvedColorWithTraitCollection_];
    sub_21D0D8CF0(0, &qword_280D1B8F0);
    LOBYTE(v6) = sub_21DBFB63C();

    if (v6)
    {
      v9 = [(objc_class *)a1.super.isa userInterfaceStyle];
      v10 = objc_allocWithZone(MEMORY[0x277D75348]);
      if (v9 == 2)
      {
        v11 = [v10 initWithWhite:1.0 alpha:0.2];
        result.super.isa = [v14 _colorBlendedWithColor_];
        if (!result.super.isa)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        v11 = [v10 initWithWhite:0.0 alpha:0.2];
        result.super.isa = [v14 _colorBlendedWithColor_];
        if (!result.super.isa)
        {
          __break(1u);
          return result;
        }
      }

      isa = result.super.isa;

      return isa;
    }
  }

LABEL_6:

  return v14;
}

void sub_21D8BF610(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_21DBFBD0C();
    }

    else
    {
      v3 = sub_21DBFBCCC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_21D3656F4(v38, v39, v40, v1);
        v12 = v11;
        v13 = [v11 objectIdentifier];
        v14 = sub_21DBFA16C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21D18E678((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
          v6 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_21D15746C(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_21D15746C(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_21D15746C(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_21D8BF978(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_21D18ED90(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    if (v31)
    {
      v4 = sub_21DBFBD0C();
    }

    else
    {
      v4 = sub_21DBFBCCC();
      v5 = *(v1 + 36);
    }

    v34 = v4;
    v35 = v5;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v10 = v34;
        v9 = v35;
        v11 = v36;
        v12 = v1;
        sub_21D3656F4(v34, v35, v36, v1);
        v14 = v13;
        v37 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21D18ED90((v15 > 1), v16 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v16 + 1;
        v17 = v3 + 32 * v16;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = v14;
        *(v17 + 56) = 1;
        v32 = v3;
        if (v31)
        {
          if (!v11)
          {
            goto LABEL_41;
          }

          v1 = v12;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58);
          v7 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v7(v33, 0);
        }

        else
        {
          if (v11)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v18 = 1 << *(v12 + 32);
          if (v10 >= v18)
          {
            goto LABEL_37;
          }

          v19 = v10 >> 6;
          v20 = *(v29 + 8 * (v10 >> 6));
          if (((v20 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_39;
          }

          v21 = v20 & (-2 << (v10 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_21D15746C(v10, v9, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_21D15746C(v10, v9, 0);
          }

LABEL_32:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
        }

        v3 = v32;
        if (v6 == v2)
        {
          sub_21D15746C(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_21D8BFCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CEB98(a1, v10);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_21DBFC64C();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21D8BFD78(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19[-v9];
  v11 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v19);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v11);
    sub_21D19AF08(v10, v14);
    sub_21DAE205C(v7);
    sub_21DAE205C(v4);
    v17 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v7, v4);
    sub_21D8C5E9C(v4, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D8C5E9C(v7, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D8C5E9C(v14, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v16(v10, 1, 1, v11);
    sub_21D0CF7E0(v10, &qword_27CE58A78);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21D8BFFEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-v5];
  v7 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_21D19AF08(v6, v10);
    if ((_s15RemindersUICore29TTRReminderSuggestedAttributeV09AugmentedE4TypeO2eeoiySbAE_AEtFZ_0(a2, v10) & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((sub_21DBF79BC() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_21D0D8CF0(0, &qword_280D17680);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(v7 + 28);
    v14 = (a2 + v13);
    v15 = *(a2 + v13 + 16);
    v16 = &v10[v13];
    if (v15)
    {
      if (!v16[16])
      {
LABEL_16:
        v17 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (v16[16])
      {
        goto LABEL_16;
      }

      if (*v14 != *v16 || v14[1] != *(v16 + 1))
      {
        goto LABEL_16;
      }
    }

    v17 = 1;
LABEL_17:
    sub_21D8C5E9C(v10, type metadata accessor for TTRReminderSuggestedAttribute);
    return v17;
  }

  v12(v6, 1, 1, v7);
  sub_21D0CF7E0(v6, &qword_27CE58A78);
  return 0;
}

void *TTRReminderCellInlineHashtagEditingPresenter.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21D8C4724(a1, v2, ObjectType, a2);
}

uint64_t sub_21D8C028C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F370);
  v1 = __swift_project_value_buffer(v0, qword_280D0F370);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRReminderCellInlineHashtagEditProcessingOutput.hashtagUpdate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

uint64_t TTRReminderCellInlineHashtagEditProcessingOutput.augmentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D24A7C4(v2, v3);
}

uint64_t TTRReminderCellInlineHashtagSuggestionApplicationResult.hashtagUpdate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  return sub_21DBF8E0C();
}

void *TTRReminderCellInlineHashtagEditingPresenter.init(interactor:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21D8C4788(a1, v2, ObjectType, a2);
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.requestHandleBeginEditingText(_:editingSession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v40[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE636A8);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x28223BE20](v8);
  v43 = v40 - v10;
  v11 = sub_21DBF78CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = MEMORY[0x277D84FA0];
  *(v4 + 6) = MEMORY[0x277D84FA0];

  v16 = [a1 string];
  v17 = sub_21DBFA16C();
  v19 = v18;

  v20 = MEMORY[0x223D42B30](v17, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = (v21 + 16);
  v50 = sub_21D24B444;
  v51 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472974;
  v49 = &block_descriptor_109;
  v23 = _Block_copy(aBlock);

  [a1 rem:0 enumerateHashtagInRange:v20 options:0x100000 usingBlock:v23];
  _Block_release(v23);
  swift_beginAccess();
  v24 = *v22;
  sub_21DBF8E0C();

  *(v4 + 5) = v24;

  ObjectType = swift_getObjectType();
  (*(v41 + 32))(aBlock, ObjectType);
  sub_21DBF78BC();
  v26 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  swift_beginAccess();
  (*(v12 + 40))(&v4[v26], v14, v11);
  swift_endAccess();
  v27 = *(v4 + 3);
  v28 = swift_getObjectType();
  v29 = v49;
  v30 = v50;
  __swift_project_boxed_opaque_existential_1(aBlock, v49);
  v31 = (*(v30 + 22))(v29, v30);
  v32 = (*(v27 + 8))(v31, v28, v27);

  v47 = v32;
  v33 = [objc_opt_self() mainRunLoop];
  v46 = v33;
  v34 = sub_21DBFBA0C();
  v35 = v42;
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A110);
  sub_21D0D8CF0(0, &qword_280D17650);
  sub_21D0D0F1C(&qword_280D0C498, &qword_27CE5A110);
  sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
  v36 = v43;
  sub_21DBF936C();
  sub_21D0CF7E0(v35, &qword_27CE5A0F0);

  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C510, &qword_27CE636A8);
  v37 = v44;
  v38 = sub_21DBF92AC();

  (*(v45 + 8))(v36, v37);
  *(v4 + 7) = v38;

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

void sub_21D8C0A64(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F370);
    v3 = v1;
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = v9;

      v11 = sub_21D0CDFB4(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v4, v5, "fetchAllHashtagLabels failed {error: %s}", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D8C0C18()
{
  v0 = sub_21DBF78CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_21DBF6ABC();
    v7 = sub_21DBF6ACC();
    v9 = v6;
    sub_21D5623AC(v7);
    sub_21DBF784C();
    v8 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
    swift_beginAccess();
    (*(v1 + 40))(v5 + v8, v3, v0);
    swift_endAccess();
  }

  return result;
}

void *TTRReminderCellInlineHashtagEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((a3 & 1) != 0 || !*(a2 + 32))
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 8);
  v42 = *a2;
  v43 = result;
  v9 = *(a2 + 24);
  v40 = *(a2 + 16);
  v41 = v8;
  v39 = v9;
  ObjectType = swift_getObjectType();
  v37 = *(a4 + 32);
  v38 = ObjectType;
  v37(&v50, ObjectType, a4);
  v11 = *(&v51 + 1);
  v12 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
  (*(v12 + 216))(&v45, v11, v12);
  if (!*(&v46 + 1))
  {
    sub_21D0CF7E0(&v45, &qword_27CE5A140);
    result = __swift_destroy_boxed_opaque_existential_0(&v50);
LABEL_8:
    *(a5 + 64) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_21D0D15E0(&v45, v49);
  __swift_destroy_boxed_opaque_existential_0(&v50);
  v13 = v43;
  sub_21D5FF13C(v42, v43, v41, v40, &v50);
  v45 = v50;
  v46 = v51;
  v47 = v52;
  v48 = v53;

  v14 = sub_21D602A98(&v45, v5);

  v42 = 0;
  v15 = v45;
  v41 = v45;
  v16 = (v37)(v44, v38, a4);
  MEMORY[0x28223BE20](v16);
  v38 = v5;
  v35[2] = v5;
  v35[3] = v44;
  v35[4] = v49;
  v17 = sub_21D173F24(sub_21D8C4820, v35, v15);
  __swift_destroy_boxed_opaque_existential_0(v44);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v18 = sub_21D47A110(v13, v14, v17);
  v43 = v14;

  v42 = v17;

  v19 = [v18 string];
  v20 = sub_21DBFA16C();
  v39 = v21;
  v40 = v20;

  v22 = *(&v45 + 1);
  v23 = v46;
  v25 = v47;
  v24 = v48;
  sub_21D8C4844(*(&v45 + 1), v46, *(&v46 + 1), v47);

  v37 = *(&v23 + 1);
  sub_21D602690(v22, v23, *(&v23 + 1), v25);
  v41 = v18;
  v26 = [v18 string];
  v36 = sub_21DBFA16C();
  v28 = v27;

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = v22;
    *(inited + 40) = v23;
    *(inited + 48) = 0;
    v30 = sub_21D1D1278(inited);
    swift_setDeallocating();
    sub_21DBF8E0C();
    v31 = sub_21D8C4888(v22, v23, *(&v25 + 1), v24);

    sub_21D602690(v22, v23, v37, v25);
    v32 = v36;
  }

  else
  {

    v32 = 0;
    v28 = 0;
    v30 = 0;
    v31 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v49);
  v33 = v42;
  *a5 = v43;
  *(a5 + 8) = v33;
  v34 = v39;
  *(a5 + 16) = v40;
  *(a5 + 24) = v34;
  *(a5 + 32) = v32;
  *(a5 + 40) = v28;
  *(a5 + 48) = v30;
  *(a5 + 56) = v31;
  *(a5 + 64) = v41;
  return result;
}

double TTRReminderCellInlineHashtagEditingPresenter.request(applySuggestion:currentText:editingSession:)@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v58 = a1[2];
  v59 = a1[3];
  v9 = (a3 + 32);
  ObjectType = swift_getObjectType();
  v56 = *v9;
  (*v9)(&v63, ObjectType, a3);
  v10 = v65;
  v11 = v66;
  __swift_project_boxed_opaque_existential_1(&v63, v65);
  (*(v11 + 216))(&v61, v10, v11);
  if (v62)
  {
    v53 = v4;
    v55 = a4;
    sub_21D0D15E0(&v61, v67);
    __swift_destroy_boxed_opaque_existential_0(&v63);
    v63 = sub_21DBFA23C();
    v64 = v12;
    sub_21DBF8E0C();
    v13 = v8;
    v14 = v8;
    v15 = v7;
    MEMORY[0x223D42AA0](v14, v7);

    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_21DBFA12C();

    v18 = [v16 initWithString_];

    v19 = [v18 string];
    v20 = sub_21DBFA16C();
    v22 = v21;

    v63 = v20;
    v64 = v22;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](32, 0xE100000000000000);

    v23 = v63;
    v24 = v64;
    v56(&v63, ObjectType, a3);
    v25 = v68;
    v26 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v27 = (*(v26 + 8))(v25, v26);
    sub_21D8C3E08(v13, v15, v27, &selRef_name);
    v29 = v28;

    if (!v29)
    {
      swift_beginAccess();
      v30 = *(v53 + 48);
      sub_21DBF8E0C();
      sub_21D8C3E08(v13, v15, v30, &selRef_name);
      v29 = v31;

      if (!v29)
      {
        v29 = sub_21D8C3C9C(&v63);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v63);
    MEMORY[0x223D42B30](v23, v24);
    v63 = sub_21DBFA23C();
    v64 = v32;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v13, v15);

    v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v34 = sub_21DBFA12C();

    v35 = [v33 initWithString_];

    v36 = [v35 string];
    v37 = sub_21DBFA16C();
    v39 = v38;

    v40 = MEMORY[0x223D42B30](v37, v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = v58;
    *(inited + 40) = v59;
    *(inited + 48) = v23;
    *(inited + 56) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828);
    v54 = v23;
    v42 = v24;
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_21DC08D00;
    *(v43 + 32) = v29;
    *(v43 + 40) = v58;
    *(v43 + 48) = v40;
    v44 = v29;
    sub_21DBF8E0C();
    swift_unknownObjectRetain();
    v45 = sub_21D47A110(a2, inited, v43);
    swift_setDeallocating();
    sub_21D873CB4(inited + 32);
    swift_setDeallocating();
    sub_21D8C4E68(v43 + 32);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_21DC08D00;
    *(v46 + 32) = v44;
    *(v46 + 40) = v58;
    *(v46 + 48) = v40;
    swift_unknownObjectRetain();
    v47 = [v45 string];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21DC08D00;
    *(v51 + 32) = v58;
    *(v51 + 40) = v59;
    *(v51 + 48) = v54;
    *(v51 + 56) = v42;
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v67);
    *v55 = v51;
    v55[1] = v46;
    v55[2] = v48;
    v55[3] = v50;
    v55[4] = v45;
  }

  else
  {
    sub_21D0CF7E0(&v61, &qword_27CE5A140);
    __swift_destroy_boxed_opaque_existential_0(&v63);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id TTRReminderCellInlineHashtagEditingPresenter.requestAdoptForeignHashtag(in:currentText:editingSession:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v72 = a1;
  v11 = sub_21DBF4CAC();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = (a5 + 32);
  v16 = *(a5 + 32);
  v67[1] = a4;
  v69 = ObjectType;
  v70 = a5;
  v68 = v16;
  v16(v75, ObjectType, a5);
  v18 = v76;
  v19 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  (*(v19 + 216))(&v73, v18, v19);
  if (!v74)
  {
    sub_21D0CF7E0(&v73, &qword_27CE5A140);
    v32 = v75;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v32);
    return 0;
  }

  v67[0] = v6;
  sub_21D0D15E0(&v73, v78);
  __swift_destroy_boxed_opaque_existential_0(v75);
  v71 = a3;
  result = [a3 string];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v72;
  v23 = [result substringWithRange_];

  v24 = sub_21DBFA16C();
  v26 = v25;

  v27 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v27);
  v67[-2] = v14;
  v28 = sub_21D3F7414(sub_21D24B3BC, &v67[-4], v24, v26);
  if (v29)
  {

    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v33 = sub_21D3F7BA8(v28, v24, v26);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v37;
    v22 = v72;
    v30 = MEMORY[0x223D429B0](v33, v35, v40, v39);
    v31 = v41;
  }

  v42 = v71;
  (*(v12 + 8))(v14, v11);
  v43 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v43 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
    goto LABEL_18;
  }

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v44 = [v42 rem:v22 hashtagAtIndex:0 effectiveRange:?];
  if (!v44)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v78);

    return 0;
  }

  v11 = v44;
  v45 = [v44 objectIdentifier];
  v46 = sub_21DBFA16C();
  v48 = v47;

  v68(v75, v69, v70);
  v17 = sub_21D8C1E18(v46, v48, v30, v31, v75, v78);

  __swift_destroy_boxed_opaque_existential_0(v75);
  if (!v17)
  {
    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v56 = sub_21DBF84BC();
    __swift_project_value_buffer(v56, qword_280D0F370);
    v57 = v11;
    v58 = sub_21DBF84AC();
    v59 = sub_21DBFAEBC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v75[0] = v61;
      *v60 = 136315138;
      v62 = [v57 objectIdentifier];
      v63 = sub_21DBFA16C();
      v65 = v64;

      v66 = sub_21D0CDFB4(v63, v65, v75);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_21D0C9000, v58, v59, "TTRReminderCellInlineHashtagEditingPresenter failed to adopted foreign hashtag {objectIdentifier: %s}", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x223D46520](v61, -1, -1);
      MEMORY[0x223D46520](v60, -1, -1);
    }

    else
    {
    }

    v32 = v78;
    goto LABEL_6;
  }

  v49 = [v17 objectIdentifier];
  a3 = sub_21DBFA16C();
  v31 = v50;

  if (qword_280D0F368 != -1)
  {
LABEL_28:
    swift_once();
  }

  v51 = sub_21DBF84BC();
  __swift_project_value_buffer(v51, qword_280D0F370);
  sub_21DBF8E0C();
  v52 = sub_21DBF84AC();
  v53 = sub_21DBFAEDC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v75[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_21D0CDFB4(a3, v31, v75);
    _os_log_impl(&dword_21D0C9000, v52, v53, "TTRReminderCellInlineHashtagEditingPresenter adopted foreign hashtag {objectID: %s}", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v54, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v78);
  return a3;
}

id sub_21D8C1E18(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v52[0] = a5;
  v52[1] = a3;
  v52[2] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v52 - v12;
  v14 = sub_21DBF56BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a6[3];
  v19 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v18);
  v20 = (*(v19 + 8))(v18, v19);
  sub_21D8C3E08(a1, a2, v20, &selRef_objectIdentifier);
  v22 = v21;

  if (!v22)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = *(v7 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(a1, a2, v24, &selRef_objectIdentifier);
    v22 = v25;

    if (!v22)
    {
      v26 = a1;
      sub_21DBF564C();
      v27 = v15;
      v28 = *(v15 + 48);
      v29 = v14;
      if (v28(v13, 1, v14) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE58370);
        if (qword_280D0F368 != -1)
        {
          swift_once();
        }

        v30 = sub_21DBF84BC();
        __swift_project_value_buffer(v30, qword_280D0F370);
        sub_21DBF8E0C();
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = a2;
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v53[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_21D0CDFB4(v26, v33, v53);
          _os_log_impl(&dword_21D0C9000, v31, v32, "findOrCreateHashtag: the given object identifier is invalid {objectID: %s}", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x223D46520](v35, -1, -1);
          MEMORY[0x223D46520](v34, -1, -1);
        }

        return 0;
      }

      else
      {
        v36 = v23;
        (*(v27 + 32))(v23, v13, v14);
        v37 = objc_opt_self();
        v38 = v27;
        v39 = sub_21DBF566C();
        v40 = [v37 objectIDWithUUID_];

        v41 = v52[0];
        v42 = v52[0][3];
        v43 = v52[0][4];
        __swift_project_boxed_opaque_existential_1(v52[0], v42);
        v44 = (*(v43 + 16))(v42, v43);
        v45 = v41[3];
        v46 = v41[4];
        __swift_project_boxed_opaque_existential_1(v41, v45);
        v47 = (*(v46 + 8))(v45, v46);
        v48 = objc_allocWithZone(MEMORY[0x277D44648]);
        v49 = sub_21DBFA12C();
        v50 = [v48 initWithObjectID:v40 accountID:v44 reminderID:v47 type:1 name:v49];

        swift_beginAccess();
        v22 = v50;
        sub_21D29BA34(&v54, v22);
        swift_endAccess();

        (*(v38 + 8))(v36, v29);
      }
    }
  }

  return v22;
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.requestConvertTextToHashtag(in:currentText:editingSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_21DBF4CAC();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v13 = *(a4 + 32);
  v80 = ObjectType;
  *&v81 = a4;
  v79 = v13;
  v13(&aBlock, ObjectType, a4);
  v14 = v86;
  v15 = v87;
  __swift_project_boxed_opaque_existential_1(&aBlock, v86);
  (*(v15 + 27))(&v89, v14, v15);
  if (!v90)
  {
    sub_21D0CF7E0(&v89, &qword_27CE5A140);
    p_aBlock = &aBlock;
    goto LABEL_5;
  }

  sub_21D0D15E0(&v89, v91);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v87 = sub_21D24BDA4;
  v88 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_21D472974;
  v86 = &block_descriptor_9_3;
  v18 = _Block_copy(&aBlock);
  v82 = a2;

  v19 = v82;

  [a3 rem:a1 enumerateHashtagInRange:v19 options:0x100000 usingBlock:v18];
  _Block_release(v18);
  swift_beginAccess();
  LOBYTE(v17) = *v17;

  if (v17)
  {
    p_aBlock = v91;
LABEL_5:
    result = __swift_destroy_boxed_opaque_existential_0(p_aBlock);
LABEL_6:
    a5[4] = 0;
    *a5 = 0u;
    *(a5 + 1) = 0u;
    return result;
  }

  v74 = a5;
  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v22 = [a3 string];
  v23 = sub_21DBFA16C();
  v24 = v19;
  v26 = v25;

  static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(v23, v26, a1, v24, &aBlock);

  if (aBlock == 2)
  {
    result = __swift_destroy_boxed_opaque_existential_0(v91);
    a5 = v74;
    goto LABEL_6;
  }

  v72 = a3;
  v27 = [a3 string];
  if (!v27)
  {
    sub_21DBFA16C();
    v27 = sub_21DBFA12C();
  }

  v73 = a1;
  v28 = [v27 substringWithRange_];

  v29 = sub_21DBFA16C();
  v31 = v30;

  v32 = v76;
  v33 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v33);
  *(&v71 - 2) = v32;
  v34 = sub_21D3F7414(sub_21D24BE88, (&v71 - 4), v29, v31);
  if (v35)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v38 = sub_21D3F7BA8(v34, v29, v31);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v36 = MEMORY[0x223D429B0](v38, v40, v42, v44);
    v37 = v45;
  }

  (*(v77 + 8))(v32, v78);
  aBlock = sub_21DBFA23C();
  v84 = v46;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v36, v37);

  v78 = aBlock;
  v47 = v84;
  sub_21DBF8E0C();
  v79(&aBlock, v80, v81);
  v48 = v92;
  v49 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v50 = (*(v49 + 8))(v48, v49);
  sub_21D8C3E08(v36, v37, v50, &selRef_name);
  v52 = v51;

  if (!v52)
  {
    v53 = v75;
    swift_beginAccess();
    v54 = *(v53 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(v36, v37, v54, &selRef_name);
    v52 = v55;

    if (!v52)
    {
      v52 = sub_21D8C3C9C(&aBlock);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v56 = v78;
  v57 = MEMORY[0x223D42B30]();
  v79 = v57;

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808);
  inited = swift_initStackObject();
  v81 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  v59 = v73;
  *(inited + 32) = v73;
  *(inited + 40) = v82;
  *(inited + 48) = v56;
  *(inited + 56) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828);
  v60 = swift_initStackObject();
  *(v60 + 16) = v81;
  *(v60 + 32) = v52;
  *(v60 + 40) = v59;
  *(v60 + 48) = v57;
  v61 = v52;
  sub_21DBF8E0C();
  swift_unknownObjectRetain();
  v62 = sub_21D47A110(v72, inited, v60);
  swift_setDeallocating();
  sub_21D873CB4(inited + 32);
  swift_setDeallocating();
  sub_21D8C4E68(v60 + 32);
  v63 = swift_allocObject();
  *(v63 + 16) = v81;
  *(v63 + 32) = v61;
  *(v63 + 40) = v59;
  *(v63 + 48) = v79;
  swift_unknownObjectRetain();
  v64 = [v62 string];
  v65 = sub_21DBFA16C();
  v67 = v66;

  v68 = swift_allocObject();
  *(v68 + 16) = v81;
  v69 = v82;
  *(v68 + 32) = v59;
  *(v68 + 40) = v69;
  *(v68 + 48) = v78;
  *(v68 + 56) = v47;
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v91);
  v70 = v74;
  *v74 = v68;
  v70[1] = v63;
  v70[2] = v65;
  v70[3] = v67;
  v70[4] = v62;
  return result;
}

char *TTRReminderCellInlineHashtagEditingPresenter.commitHashtagChanges(for:on:otherTextProperties:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v128 = a1;
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 32);
  v8(v146, ObjectType, a3);
  v9 = v147;
  v10 = v148;
  __swift_project_boxed_opaque_existential_1(v146, v147);
  (*(v10 + 216))(&aBlock, v9, v10);
  if (!v143)
  {
    sub_21D0CF7E0(&aBlock, &qword_27CE5A140);
    __swift_destroy_boxed_opaque_existential_0(v146);

    return v128;
  }

  v129 = a4;
  v11 = ObjectType;
  v12 = a3;
  sub_21D0D15E0(&aBlock, v149);
  __swift_destroy_boxed_opaque_existential_0(v146);
  sub_21D601C0C(v128, v146);

  v13 = sub_21D602A98(v146, v125);

  v14 = v146[0];
  v121 = v11;
  v122 = a2;
  v123 = v12;
  v15 = v8(&aBlock, v11, v12);
  MEMORY[0x28223BE20](v15);
  v115[0] = v125;
  v115[1] = &aBlock;
  v16 = v125;
  v116 = v149;
  v17 = sub_21D173F24(sub_21D8C5F04, &v114, v14);
  v124 = 0;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v18 = sub_21D47A110(v128, v13, v17);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v19 = [v18 string];
  v20 = sub_21DBFA16C();
  v22 = v21;

  v23 = MEMORY[0x223D42B30](v20, v22);

  v24 = swift_allocObject();
  v25 = MEMORY[0x277D84FA0];
  *(v24 + 16) = MEMORY[0x277D84FA0];
  v26 = (v24 + 16);
  v144 = sub_21D47BA94;
  v145 = v24;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v142 = sub_21D472974;
  v143 = &block_descriptor_16_0;
  v27 = _Block_copy(&aBlock);

  v120 = v18;
  [v18 rem:0 enumerateHashtagInRange:v23 options:0x100000 usingBlock:v27];
  _Block_release(v27);
  swift_beginAccess();
  v28 = *v26;
  sub_21DBF8E0C();

  v29 = *(v16 + 40);
  if (*(v28 + 16) <= *(v29 + 16) >> 3)
  {
    *&aBlock = *(v16 + 40);
    sub_21DBF8E0C();
    sub_21D9F86E8(v28);
    v30 = aBlock;
  }

  else
  {
    sub_21DBF8E0C();
    v30 = sub_21D9F8D40(v28, v29);
  }

  v32 = v129;
  v140 = v30;
  v137[0] = v25;
  if (v129 >> 62)
  {
    goto LABEL_62;
  }

  v33 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_18;
  }

LABEL_10:
  v119 = v28;
  v34 = 0;
  v127 = v32 & 0xFFFFFFFFFFFFFF8;
  v128 = (v32 & 0xC000000000000001);
  v126 = &v142;
  while (1)
  {
    if (v128)
    {
      v35 = MEMORY[0x223D44740](v34, v32);
    }

    else
    {
      if (v34 >= *(v127 + 16))
      {
        goto LABEL_59;
      }

      v35 = *(v32 + 8 * v34 + 32);
    }

    v36 = v35;
    v28 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v37 = [v35 string];
    v38 = sub_21DBFA16C();
    v40 = v39;

    v41 = MEMORY[0x223D42B30](v38, v40);

    v42 = swift_allocObject();
    *(v42 + 16) = MEMORY[0x277D84FA0];
    v43 = (v42 + 16);
    v144 = sub_21D47BA94;
    v145 = v42;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v142 = sub_21D472974;
    v143 = &block_descriptor_21_2;
    v44 = _Block_copy(&aBlock);

    [v36 rem:0 enumerateHashtagInRange:v41 options:0x100000 usingBlock:v44];
    _Block_release(v44);
    swift_beginAccess();
    v25 = *v43;
    sub_21DBF8E0C();

    sub_21D3234F8(v25);

    ++v34;
    v32 = v129;
    if (v28 == v33)
    {
      v25 = v137[0];
      v28 = v119;
      goto LABEL_18;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v112 = v32;
    v113 = sub_21DBFBD7C();
    v32 = v112;
    v33 = v113;
    if (v113)
    {
      goto LABEL_10;
    }

LABEL_18:
    sub_21D9F86E8(v25);

    MEMORY[0x28223BE20](v45);
    v116 = v149;
    v117 = v46;
    v47 = v124;
    v48 = sub_21D4E64B8(sub_21D8C4EBC, v115, v46);
    swift_beginAccess();
    v49 = sub_21DBF8E0C();
    v50 = sub_21D8C54C4(v49, v28);
    v119 = v47;

    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v51 = sub_21DBF84BC();
    __swift_project_value_buffer(v51, qword_280D0F370);

    sub_21DBF8E0C();
    v52 = sub_21DBF84AC();
    v53 = sub_21DBFAEDC();

    v54 = os_log_type_enabled(v52, v53);
    v125 = v48;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&aBlock = v56;
      *v55 = 136315394;
      v57 = sub_21D8C384C(v50);
      v59 = sub_21D0CDFB4(v57, v58, &aBlock);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      v60 = sub_21D8C3974(v48);
      v62 = sub_21D0CDFB4(v60, v61, &aBlock);

      *(v55 + 14) = v62;
      _os_log_impl(&dword_21D0C9000, v52, v53, "TTRReminderCellInlineHashtagEditingPresenter committing inline hashtags {add: %s, remove: %s}", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v56, -1, -1);
      MEMORY[0x223D46520](v55, -1, -1);
    }

    v124 = v50;
    if ((v50 & 0xC000000000000001) != 0)
    {

      sub_21DBFBD1C();
      sub_21D0D8CF0(0, &qword_280D0C348);
      sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348);
      sub_21DBFAB5C();
      v63 = *(&aBlock + 1);
      v50 = aBlock;
      v64 = v142;
      v65 = v143;
      v28 = v144;
    }

    else
    {
      v66 = -1 << *(v50 + 32);
      v63 = v50 + 56;
      v64 = ~v66;
      v67 = -v66;
      v68 = v67 < 64 ? ~(-1 << v67) : -1;
      v28 = v68 & *(v50 + 56);

      v65 = 0;
    }

    v118 = v64;
    v25 = ((v64 + 64) >> 6);
    v127 = " action name";
    v128 = v25;
    v126 = v50;
    if (v50 < 0)
    {
      break;
    }

LABEL_29:
    v69 = v65;
    v70 = v28;
    v71 = v65;
    if (v28)
    {
LABEL_33:
      v72 = (v70 - 1) & v70;
      v73 = *(*(v50 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v70)))));
      if (v73)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }

    while (1)
    {
      v71 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v71 >= v25)
      {
        goto LABEL_43;
      }

      v70 = *(v63 + 8 * v71);
      ++v69;
      if (v70)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v74 = sub_21DBFBDBC();
    if (!v74)
    {
      break;
    }

    v136 = v74;
    sub_21D0D8CF0(0, &qword_280D0C348);
    swift_dynamicCast();
    v73 = v137[0];
    v71 = v65;
    v72 = v28;
    if (!v137[0])
    {
      break;
    }

LABEL_37:
    v129 = v72;
    v75 = v63;
    v130 = 0x6E756F4372616863;
    v131 = 0xE900000000000074;
    v25 = v73;
    v76 = [v73 name];
    sub_21DBFA16C();

    sub_21DBFA28C();

    v132 = sub_21DBFABEC();
    v133 = 1701869940;
    v134 = 0xE400000000000000;
    sub_21D0D8CF0(0, &qword_27CE5A168);
    v135 = sub_21DBFB66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E0);
    v77 = sub_21DBFC40C();

    v28 = v130;
    v78 = v131;
    v79 = v132;
    sub_21DBF8E0C();
    v80 = v79;
    v81 = sub_21D0CEF70(v28, v78);
    if (v32)
    {
      goto LABEL_60;
    }

    *(v77 + ((v81 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v81;
    v82 = (v77[6] + 16 * v81);
    *v82 = v28;
    v82[1] = v78;
    *(v77[7] + 8 * v81) = v80;
    v83 = v77[2];
    v84 = __OFADD__(v83, 1);
    v85 = v83 + 1;
    if (v84)
    {
      goto LABEL_61;
    }

    v77[2] = v85;
    v28 = v133;
    v86 = v134;
    v87 = v135;
    sub_21DBF8E0C();
    v88 = v87;
    v89 = sub_21D0CEF70(v28, v86);
    if (v32)
    {
      goto LABEL_60;
    }

    *(v77 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v89;
    v90 = (v77[6] + 16 * v89);
    *v90 = v28;
    v90[1] = v86;
    *(v77[7] + 8 * v89) = v88;
    v91 = v77[2];
    v84 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v84)
    {
      goto LABEL_61;
    }

    v77[2] = v92;

    sub_21DBF835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220);
    swift_arrayDestroy();
    MEMORY[0x223D40B00](0xD00000000000001DLL, v127 | 0x8000000000000000, v77, 0, 1);

    v65 = v71;
    v25 = v128;
    v28 = v129;
    v63 = v75;
    v50 = v126;
    if ((v126 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_43:
  sub_21D0CFAF8();
  (*(v123 + 72))(v137, v121);
  v93 = v138;
  v94 = v139;
  v95 = __swift_project_boxed_opaque_existential_1(v137, v138);
  sub_21D8BF978(v124);
  v97 = v96;

  if (v125 >> 62)
  {
    v98 = sub_21DBFBD7C();
  }

  else
  {
    v98 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v128 = v95;
  v129 = v94;
  v127 = v97;
  if (!v98)
  {

    v100 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v136 = MEMORY[0x277D84F90];
  result = sub_21D18ED90(0, v98 & ~(v98 >> 63), 0);
  if (v98 < 0)
  {
    __break(1u);
  }

  else
  {
    v126 = v93;
    v99 = 0;
    v100 = v136;
    v101 = v125;
    v102 = v125 & 0xC000000000000001;
    do
    {
      if (v102)
      {
        v103 = MEMORY[0x223D44740](v99, v101);
      }

      else
      {
        v103 = *(v101 + 8 * v99 + 32);
      }

      v104 = v103;
      v136 = v100;
      v106 = *(v100 + 16);
      v105 = *(v100 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_21D18ED90((v105 > 1), v106 + 1, 1);
        v101 = v125;
        v100 = v136;
      }

      *(v100 + 16) = v106 + 1;
      v107 = v100 + 32 * v106;
      *(v107 + 40) = 0;
      *(v107 + 48) = 0;
      ++v99;
      *(v107 + 32) = v104;
      *(v107 + 56) = 1;
    }

    while (v98 != v99);

    v93 = v126;
LABEL_56:
    v108 = v146[1];
    v109 = v146[2];
    v110 = v147;
    v111 = v148;

    sub_21D602690(v108, v109, v110, v111);
    (*(v129 + 96))(v127, v100, v93);

    __swift_destroy_boxed_opaque_existential_0(v137);
    __swift_destroy_boxed_opaque_existential_0(v149);
    return v120;
  }

  return result;
}

uint64_t sub_21D8C37AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  sub_21D8C3E08(v4, v5, v8, &selRef_objectIdentifier);
  v10 = v9;

  *a3 = v10;
  return result;
}

uint64_t sub_21D8C384C(uint64_t a1)
{
  sub_21D8BF610(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v2 = sub_21DBFA07C();
  v4 = v3;

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16) == 1)
    {
      return v2;
    }

    goto LABEL_3;
  }

  if (sub_21DBFBD7C() != 1)
  {
LABEL_3:
    MEMORY[0x223D42AA0](v2, v4);

    MEMORY[0x223D42AA0](93, 0xE100000000000000);
    return 91;
  }

  return v2;
}

uint64_t sub_21D8C3974(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    result = sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 objectIdentifier];
      v9 = sub_21DBFA16C();
      v11 = v10;

      v18 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18E678((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v15 = sub_21DBFA07C();
  v17 = v16;

  if (v2 != 1)
  {
    MEMORY[0x223D42AA0](v15, v17);

    MEMORY[0x223D42AA0](93, 0xE100000000000000);
    return 91;
  }

  return v15;
}

uint64_t sub_21D8C3B78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v19 = a1[1];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a4[3];
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v11);
  v13 = (*(v12 + 8))(v11, v12);
  sub_21D8C3E08(v9, v10, v13, &selRef_name);
  v15 = v14;

  if (!v15)
  {
    swift_beginAccess();
    v17 = *(a2 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(v9, v10, v17, &selRef_name);
    v15 = v18;

    if (!v15)
    {
      result = sub_21D8C3C9C(a3);
      v15 = result;
    }
  }

  *a5 = v15;
  a5[1] = v8;
  a5[2] = v19;
  return result;
}

id sub_21D8C3C9C(void *a1)
{
  v2 = [objc_opt_self() newObjectID];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = objc_allocWithZone(MEMORY[0x277D44648]);
  v10 = sub_21DBFA12C();
  v11 = [v9 initWithObjectID:v2 accountID:v5 reminderID:v8 type:1 name:v10];

  swift_beginAccess();
  v12 = v11;
  sub_21D29BA34(&v14, v12);
  swift_endAccess();

  return v12;
}

void sub_21D8C3E08(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v26 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348);
    sub_21DBFAB5C();
    v4 = v29;
    v26 = v28;
    v5 = v30;
    v6 = v31;
    v7 = v32;
  }

  else
  {
    v8 = -1 << *(a3 + 32);
    v4 = a3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a3 + 56);
    sub_21DBF8E0C();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v26 < 0)
  {
    if (!sub_21DBFBDBC())
    {
      goto LABEL_24;
    }

    sub_21D0D8CF0(0, &qword_280D0C348);
    swift_dynamicCast();
    v16 = v27;
    v14 = v6;
    v15 = v7;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_18:
    if ([v16 type] == 1)
    {
      v17 = [v16 *a4];
      v18 = sub_21DBFA16C();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {

LABEL_24:
        sub_21D0CFAF8();
        return;
      }

      v22 = sub_21DBFC64C();

      if (v22)
      {
        goto LABEL_24;
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v26 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_24;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  v2 = sub_21DBF78CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  v2 = sub_21DBF78CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21D8C4240(id a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *v5;
      sub_21DBF8E0C();
      v9 = sub_21DBFA12C();
      [a1 replaceCharactersInRange:v6 withString:{v7, v9}];

      if (qword_280D177B8 != -1)
      {
        swift_once();
      }

      v10 = qword_280D177C0;
      if ((v8 & 0x1000000000000000) != 0)
      {
        v11 = sub_21DBFA35C();
      }

      else
      {
        v11 = sub_21DBFA36C();
      }

      v12 = v11;

      [a1 removeAttribute:v10 range:{v6, v12}];
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  v13 = *(a3 + 16);
  if (v13)
  {
    [a1 beginEditing];
    v14 = [a1 string];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = MEMORY[0x223D42B30](v15, v17);

    v19 = *MEMORY[0x277D740E8];
    for (i = (a3 + 48); ; i += 3)
    {
      v25 = *(i - 1);
      v26 = v25 + *i;
      if (__OFADD__(v25, *i))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v27 = *(i - 2);
      v22 = v26 >= v18 ? v18 : v25 + *i;
      if ((v25 & 0x8000000000000000) == 0 && v25 < v18)
      {
        break;
      }

      if (v25 <= 0 && v26 > 0)
      {
        v25 = 0;
LABEL_13:
        v23 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v23 != -1)
        {
          swift_once();
        }

        [a1 removeAttribute:qword_280D177C0 range:{v25, v22}];
        [a1 removeAttribute:v19 range:{v25, v22}];
        v24 = [objc_opt_self() attributeFromHashtag_];
        [a1 rem:v24 addHashtag:v25 range:v22];
        swift_unknownObjectRelease();
      }

      if (!--v13)
      {

        [a1 endEditing];
        return;
      }
    }

    v21 = __OFSUB__(v22, v25);
    v22 -= v25;
    if (v21)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.request(applySuggestion:currentText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.requestConvertTextToHashtag(in:currentText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_21D8C45B8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_21D8C45D0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_21DBF8E0C();
    v8 = sub_21D8C4ED8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

id sub_21D8C466C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8 = sub_21DBFA23C();
  v9 = v3;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v1, v2);

  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithString_];

  return v6;
}

void *sub_21D8C4724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return sub_21D8C4788(a1, v7, a3, a4);
}

void *sub_21D8C4788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84FA0];
  a2[5] = MEMORY[0x277D84FA0];
  a2[6] = v7;
  a2[7] = 0;
  sub_21DBF78BC();
  a2[2] = a1;
  a2[3] = a4;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v8 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v8 + 16) = swift_allocObject();
  *(v8 + 24) = 75;
  a2[4] = v8;
  return a2;
}

uint64_t sub_21D8C4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_21DBF8E0C();

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D8C4888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21DBF78CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  sub_21DBF8E0C();
  v14 = sub_21DBF77FC();
  (*(v10 + 8))(v12, v9);
  v15 = *(v14 + 16);
  if (v15)
  {
    v60 = a3;
    v61 = a4;
    *&v62 = MEMORY[0x277D84F90];
    sub_21D18ED50(0, v15, 0);
    v16 = v62;
    v59 = v14;
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v62 = v16;
      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      sub_21DBF8E0C();
      if (v21 >= v20 >> 1)
      {
        sub_21D18ED50((v20 > 1), v21 + 1, 1);
        v16 = v62;
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[32 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      *(v22 + 6) = a1;
      *(v22 + 7) = a2;
      v17 += 2;
      --v15;
    }

    while (v15);

    a3 = v60;
    a4 = v61;
    if (*(v16 + 2))
    {
      goto LABEL_17;
    }
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v23 = MEMORY[0x223D42B30](a3, a4);
  static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(a3, a4, 0, v23, &v62);
  if (v62 != 2 && (v62 & 0x100) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D211EAC(0, *(v16 + 2) + 1, 1, v16);
    }

    v25 = *(v16 + 2);
    v24 = *(v16 + 3);
    if (v25 >= v24 >> 1)
    {
      v16 = sub_21D211EAC((v24 > 1), v25 + 1, 1, v16);
    }

    *(v16 + 2) = v25 + 1;
    v26 = &v16[32 * v25];
    *(v26 + 4) = a3;
    *(v26 + 5) = a4;
    *(v26 + 6) = a1;
    *(v26 + 7) = a2;
    v27 = *(v16 + 2);
    if (!v27)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_17:

  v27 = *(v16 + 2);
  if (!v27)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_18:
  v63 = MEMORY[0x277D84F90];
  sub_21D18EAE4(0, v27, 0);
  v28 = v63;
  v53[1] = v16;
  v29 = v16 + 56;
  do
  {
    v59 = v29;
    v60 = v28;
    v61 = v27;
    v30 = *(v29 - 3);
    v31 = *(v29 - 2);
    v33 = *(v29 - 1);
    v32 = *v29;
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v31;
    v34[4] = v33;
    v34[5] = v32;
    v58 = v34;
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v31;
    v35[4] = v33;
    v35[5] = v32;
    v57 = v35;
    v36 = swift_allocObject();
    v36[2] = v30;
    v36[3] = v31;
    v36[4] = v33;
    v36[5] = v32;
    v56 = v36;
    v37 = swift_allocObject();
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v33;
    v37[5] = v32;
    v55 = v37;
    v38 = swift_allocObject();
    v38[2] = v30;
    v38[3] = v31;
    v38[4] = v33;
    v38[5] = v32;
    v54 = v38;
    v39 = swift_allocObject();
    v39[2] = v30;
    v39[3] = v31;
    v39[4] = v33;
    v39[5] = v32;
    v40 = swift_allocObject();
    v40[2] = v30;
    v40[3] = v31;
    v40[4] = v33;
    v40[5] = v32;
    v41 = swift_allocObject();
    v41[2] = v30;
    v41[3] = v31;
    v41[4] = v33;
    v41[5] = v32;
    v42 = swift_allocObject();
    v42[2] = v30;
    v42[3] = v31;
    v42[4] = v33;
    v42[5] = v32;
    v43 = swift_allocObject();
    v43[2] = v30;
    v43[3] = v31;
    v43[4] = v33;
    v43[5] = v32;
    v44 = swift_allocObject();
    v44[2] = v30;
    v44[3] = v31;
    v44[4] = v33;
    v44[5] = v32;
    v28 = v60;
    v63 = v60;
    v46 = *(v60 + 16);
    v45 = *(v60 + 24);
    swift_bridgeObjectRetain_n();
    if (v46 >= v45 >> 1)
    {
      sub_21D18EAE4((v45 > 1), v46 + 1, 1);
      v28 = v63;
    }

    v47 = v58;
    v48 = v59 + 4;
    *(v28 + 16) = v46 + 1;
    v49 = v28 + 192 * v46;
    *(v49 + 32) = v47;
    *(v49 + 40) = v62;
    *(v49 + 56) = &type metadata for TTRReminderCellHashtagSuggestion;
    *(v49 + 64) = sub_21D35C710;
    v50 = v56;
    *(v49 + 72) = v57;
    *(v49 + 80) = sub_21D24BDBC;
    *(v49 + 88) = v50;
    *(v49 + 96) = sub_21D35C7C4;
    v51 = v54;
    *(v49 + 104) = v55;
    *(v49 + 112) = sub_21D35C7CC;
    *(v49 + 120) = v51;
    *(v49 + 128) = sub_21D3178BC;
    *(v49 + 136) = v39;
    *(v49 + 144) = sub_21D317880;
    *(v49 + 152) = v40;
    *(v49 + 160) = sub_21D111F98;
    *(v49 + 168) = v41;
    *(v49 + 176) = sub_21D8C5E58;
    *(v49 + 184) = v42;
    *(v49 + 192) = sub_21D8C5E70;
    *(v49 + 200) = v43;
    *(v49 + 208) = sub_21D8C5E58;
    *(v49 + 216) = v44;
    v27 = v61 - 1;
    v29 = v48;
  }

  while (v61 != 1);

  return v28;
}

uint64_t sub_21D8C4ED8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v27 = result;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v31 = (v9 - 1) & v9;
LABEL_13:
    v29 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v29);
    v15 = [v14 objectIdentifier];
    v16 = sub_21DBFA16C();
    v18 = v17;

    if (*(a4 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v19 = sub_21DBFC82C(), v20 = -1 << *(a4 + 32), v21 = v19 & ~v20, ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v16 && v23[1] == v18;
        if (v24 || (sub_21DBFC64C() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v25 = __OFADD__(v28++, 1);
      v9 = v31;
      if (v25)
      {
        __break(1u);
LABEL_26:

        return sub_21D7BFC3C(v27, v26, v28, a3);
      }
    }

    else
    {
LABEL_5:

      v9 = v31;
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

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v31 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_21D8C5124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_21DBF8E0C();
  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x28223BE20](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v42 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v40 = v19;
      v21 = *(v20 + 8 * v19);
      v9 = [v21 objectIdentifier];
      v3 = sub_21DBFA16C();
      v23 = v22;

      v24 = a2;
      if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v25 = sub_21DBFC82C(), v26 = -1 << *(a2 + 32), v9 = v25 & ~v26, ((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v27 = ~v26;
        while (1)
        {
          v28 = (*(v24 + 48) + 16 * v9);
          v29 = *v28 == v3 && v28[1] == v23;
          if (v29 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v27;
          if (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        *&v37[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
        v30 = __OFADD__(v38++, 1);
        a2 = v24;
        v5 = v39;
        v14 = v41;
        if (v30)
        {
          __break(1u);
LABEL_27:
          v31 = sub_21D7BFC3C(v37, v36, v38, v5);

          return v31;
        }
      }

      else
      {
LABEL_6:

        a2 = v24;
        v5 = v39;
        v14 = v41;
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  sub_21DBF8E0C();
  v34 = sub_21D8C45D0(v33, v8, v5, a2);

  MEMORY[0x223D46520](v33, -1, -1);

  return v34;
}

uint64_t sub_21D8C54C4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D8C5124(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  sub_21DBF8E0C();
  sub_21DBFBD1C();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348);
    v4 = a2 + 56;
    do
    {
      swift_dynamicCast();
      v5 = [v26 objectIdentifier];
      v6 = sub_21DBFA16C();
      v8 = v7;

      if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v9 = sub_21DBFC82C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (1)
        {
          v13 = (*(a2 + 48) + 16 * v11);
          v14 = *v13 == v6 && v13[1] == v8;
          if (v14 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v15 = *(v3 + 16);
        if (*(v3 + 24) <= v15)
        {
          sub_21D8AD2CC(v15 + 1);
        }

        v3 = v27;
        result = sub_21DBFB62C();
        v17 = v27 + 56;
        v18 = -1 << *(v27 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v17 + 8 * v20);
          }

          while (v25 == -1);
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        }

        *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v27 + 48) + 8 * v21) = v26;
        ++*(v27 + 16);
      }

      else
      {
LABEL_4:
      }
    }

    while (sub_21DBFBDBC());
  }

  return v3;
}

void destroy for TTRReminderCellInlineHashtagEditProcessingOutput(uint64_t a1)
{

  if (*(a1 + 40))
  {
  }

  v2 = *(a1 + 64);
}

void *initializeWithCopy for TTRReminderCellInlineHashtagEditProcessingOutput(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v6)
  {
    a1[4] = a2[4];
    a1[5] = v6;
    v7 = a2[7];
    a1[6] = a2[6];
    a1[7] = v7;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
  }

  v9 = a2[8];
  a1[8] = v9;
  v10 = v9;
  return a1;
}

void *assignWithCopy for TTRReminderCellInlineHashtagEditProcessingOutput(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[5];
  if (a1[5])
  {
    if (v4)
    {
      a1[4] = a2[4];
      a1[5] = a2[5];
      sub_21DBF8E0C();

      a1[6] = a2[6];
      sub_21DBF8E0C();

      a1[7] = a2[7];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0((a1 + 4), &qword_27CE5A640);
      v5 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v5;
    }
  }

  else if (v4)
  {
    a1[4] = a2[4];
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
  }

  v7 = a2[8];
  v8 = a1[8];
  a1[8] = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRReminderCellInlineHashtagEditProcessingOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  if (!*(a1 + 40))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    sub_21D0CF7E0(a1 + 32, &qword_27CE5A640);
LABEL_5:
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
    goto LABEL_6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

LABEL_6:
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

void *initializeWithCopy for TTRReminderCellInlineHashtagSuggestionApplicationResult(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  a1[4] = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRReminderCellInlineHashtagSuggestionApplicationResult(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for TTRReminderCellInlineHashtagSuggestionApplicationResult(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter()
{
  result = qword_280D0E1C0;
  if (!qword_280D0E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8C5D18()
{
  result = sub_21DBF78CC();
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

uint64_t sub_21D8C5E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D8C5F34()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE636B0);
  v1 = __swift_project_value_buffer(v0, qword_27CE636B0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8C604C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D8C60B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.__allocating_init(store:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6 + v7, a2, v8);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = a3;
  v10 = a1;

  sub_21D8C62E0();

  (*(v9 + 8))(a2, v8);

  return v6;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.init(store:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_21D8C8D18(a1, a2, a3);

  return v4;
}

uint64_t sub_21D8C62E0()
{
  v1 = v0;
  v2 = sub_21DBFB11C();
  v90 = *(v2 - 8);
  v91 = v2;
  MEMORY[0x28223BE20](v2);
  v89 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v87);
  v88 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v78 - v8;
  v94 = sub_21DBF70DC();
  v9 = *(v94 - 1);
  MEMORY[0x28223BE20](v94);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v78 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  v83 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v85 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v78 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v23);
  v96 = &v78 - v24;
  v92 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor;
  v25 = v0;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor))
  {
    v26 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v98[0] = 10;
      (*(*(v27 + 8) + 16))(v98, ObjectType);
      swift_unknownObjectRelease();
    }

    v1 = v0;
    if (*(v0 + v92))
    {

      sub_21D737EF8();
    }
  }

  v29 = *(v15 + 48);
  v30 = sub_21DBF72DC();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  v31 = v96;
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v14, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  *(v31 + v29) = 0;
  v32 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v33 = *(v32 + 8), v34 = swift_getObjectType(), v35 = (*(*(v33 + 8) + 8))(v34), v37 = v36, swift_unknownObjectRelease(), (v37 & 1) != 0))
  {
    v35 = 30;
  }

  v38 = *(v25 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
  v39 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v82 = v25;
  swift_beginAccess();
  v40 = v94;
  (*(v9 + 16))(v11, v25 + v39, v94);
  type metadata accessor for TTRShowSiriFoundInAppsMonitorableDataView(0);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  (*(v9 + 32))(v41 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle, v11, v40);
  *(v41 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = v35;
  v95 = v41;
  sub_21D0D3954(v96, v22, &qword_27CE5C2A0);
  v42 = *(v15 + 48);
  v43 = *&v22[v42];
  v44 = sub_21DBF773C();
  (*(*(v44 - 8) + 32))(v19, v22, v44);
  *&v19[v42] = v43;
  v80 = sub_21D0D8CF0(0, &qword_280D1B900);
  v45 = v38;

  v46 = sub_21DBFB12C();
  sub_21DBF60DC();
  v81 = sub_21DBF60BC();
  v47 = sub_21DBF60AC();
  v78 = v47;
  v94 = *MEMORY[0x277D76648];
  v93 = *MEMORY[0x277D76768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63708);
  v48 = swift_allocObject();
  v49 = *(*v48 + 104);
  v50 = *(v83 + 56);
  v50(v48 + v49, 1, 1, v15);
  v51 = (v48 + *(*v48 + 136));
  *v51 = 0;
  v51[1] = 0;
  *(v48 + *(*v48 + 112)) = v46;
  v52 = v46;
  *(v48 + *(*v48 + 120)) = v47;
  sub_21D0D3954(v19, v48 + *(*v48 + 96), &qword_27CE5C2A0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  swift_storeEnumTagMultiPayload();
  v53 = v84;
  sub_21D0D3954(v19, v84, &qword_27CE5C2A0);
  v50(v53, 0, 1, v15);
  swift_beginAccess();
  v54 = v94;
  v55 = v93;
  v79 = v52;
  v78 = v78;
  sub_21D8C92F0(v53, v48 + v49);
  swift_endAccess();
  sub_21DBF9D4C();
  v97 = MEMORY[0x277D84F90];
  sub_21D66282C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
  sub_21DBFBCBC();
  (*(v90 + 104))(v89, *MEMORY[0x277D85260], v91);
  v56 = sub_21DBFB14C();
  v57 = v85;
  sub_21D0D3954(v19, v85, &qword_27CE5C2A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63710);
  v58 = swift_allocObject();
  *(v58 + 72) = 0u;
  *(v58 + 88) = 0u;
  *(v58 + 104) = 0;
  *(v58 + 108) = -1;
  *(v58 + 120) = 0;
  *(v58 + 128) = 1;
  v59 = *(*v58 + 216);
  v60 = swift_slowAlloc();
  *(v58 + v59) = v60;
  *(v58 + *(*v58 + 224)) = 0;
  v61 = v81;
  *(v58 + 16) = v56;
  *(v58 + 24) = v61;
  v62 = v95;
  *(v58 + 32) = v78;
  *(v58 + 40) = v62;
  sub_21D0D3954(v57, v58 + *(*v58 + 208), &qword_27CE5C2A0);
  swift_storeEnumTagMultiPayload();
  *v60 = 0;

  sub_21D0CF7E0(v57, &qword_27CE5C2A0);
  sub_21D0CF7E0(v19, &qword_27CE5C2A0);
  v63 = v93;
  *(v58 + 48) = v94;
  *(v58 + 56) = v63;
  *(v58 + 64) = 1;
  *(v48 + *(*v48 + 128)) = v58;
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v66 = v82;
  swift_weakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  *(v67 + 24) = v65;
  v68 = *(v58 + 72);
  *(v58 + 72) = sub_21D8C9360;
  *(v58 + 80) = v67;

  sub_21D0D0E88(v68);

  v69 = *(v48 + *(*v48 + 128));
  v70 = swift_allocObject();
  swift_weakInit();
  v71 = *(v69 + 88);
  *(v69 + 88) = sub_21D8C9368;
  *(v69 + 96) = v70;

  sub_21D0D0E88(v71);

  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v73;
  v75 = (v48 + *(*v48 + 136));
  v76 = *v75;
  *v75 = sub_21D8C9370;
  v75[1] = v74;

  sub_21D0D0E88(v76);

  *(v66 + v92) = v48;

  sub_21D4013A4(1);

  return sub_21D0CF7E0(v96, &qword_27CE5C2A0);
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.__allocating_init(store:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = a3;
  return v6;
}

uint64_t sub_21D8C7060()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate);
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate);

  return v0;
}