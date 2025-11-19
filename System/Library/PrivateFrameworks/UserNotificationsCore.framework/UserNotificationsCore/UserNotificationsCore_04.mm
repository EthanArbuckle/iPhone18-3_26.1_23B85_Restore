uint64_t sub_1DA859A10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DA862D8C(*(a1 + 56) + 40 * v13, v42);
    v40 = v16;
    v41 = v15;
    v37 = v42[0];
    v38 = v42[1];
    v39 = v43;
    v27 = v16;
    v28 = v15;

    swift_dynamicCast();
    v25[0] = v37;
    v25[1] = v38;
    v26 = v39;
    swift_dynamicCast();
    v33 = v29;
    v34 = v30;
    v35 = v31;
    sub_1DA848FE8(&v32, v36);
    v29 = v33;
    v30 = v34;
    v31 = v35;
    sub_1DA848FE8(v36, v25);
    v17 = *(v2 + 40);
    result = sub_1DA9412C4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v29;
    *(v11 + 16) = v30;
    *(v11 + 32) = v31;
    result = sub_1DA848FE8(v25, (*(v2 + 56) + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_1DA859CFC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
    v2 = sub_1DA9414E4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1DA7AD270(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1DA848FE8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1DA848FE8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1DA848FE8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1DA9412C4();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1DA848FE8(v33, (*(v2 + 56) + 32 * v10));
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

    v5 = *(a1 + 64 + 8 * v12);
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

uint64_t sub_1DA859FC4(uint64_t a1)
{
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58E0, &unk_1DA95C1E8);
  v2 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5468, &qword_1DA95B0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45 = &v38 - v6;
  v7 = type metadata accessor for NotificationSource();
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58F0, &qword_1DA95C1F8);
  v10 = *(*(v42 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v38 - v13;
  v48 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
    v14 = sub_1DA9414E4();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v15 = v48 + 64;
  v16 = 1 << *(v48 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v48 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  v39 = v14;
  for (i = v41; v18; result = sub_1DA85FA80(v37, v35, v39))
  {
    v23 = v21;
LABEL_12:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v23 << 6);
    v26 = v48;
    v27 = v40;
    sub_1DA862E7C(*(v48 + 48) + *(v44 + 72) * v25, v40, type metadata accessor for NotificationSource);
    v28 = *(*(v26 + 56) + 8 * v25);
    v29 = v42;
    *(v27 + *(v42 + 48)) = v28;
    sub_1DA862F4C(v27, i);
    v30 = *(v29 + 48);
    v31 = v46;
    v32 = *(v47 + 48);
    sub_1DA862EE4(i, v46, type metadata accessor for NotificationSource);
    v49 = *(i + v30);
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5900, &qword_1DA95C200);
    swift_dynamicCast();
    v34 = v45;
    sub_1DA862EE4(v31, v45, type metadata accessor for NotificationSource);
    v35 = *(v31 + v32);
    v36 = v43;
    sub_1DA862EE4(v34, v43, type metadata accessor for NotificationSource);
    v37 = v36;
    v14 = v39;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return v14;
    }

    v18 = *(v15 + 8 * v23);
    ++v21;
    if (v18)
    {
      v21 = v23;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA85A3E0()
{
  v0 = sub_1DA940A04();
  v1 = MGGetSInt32Answer();

  dword_1EE110C50 = v1;
}

uint64_t sub_1DA85A434()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110EC8);
  __swift_project_value_buffer(v0, qword_1EE110EC8);
  return sub_1DA940594();
}

unint64_t sub_1DA85A4CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DA93FEC4();
  v5 = MEMORY[0x1E69DF0D0];
  sub_1DA86302C(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
  v6 = sub_1DA9409A4();
  return sub_1DA85AA04(a1, v6, MEMORY[0x1E69DF0D0], &qword_1ECBD5948, v5, MEMORY[0x1E69DF0E8]);
}

unint64_t sub_1DA85A5A0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1DA941754();
  return sub_1DA85AE1C(a1, v4);
}

unint64_t sub_1DA85A5DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DA93FB24();
  v5 = MEMORY[0x1E69695A8];
  sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8]);
  v6 = sub_1DA9409A4();
  return sub_1DA85AA04(a1, v6, MEMORY[0x1E69695A8], &qword_1EE114C68, v5, MEMORY[0x1E69695C8]);
}

unint64_t sub_1DA85A6B0(char a1)
{
  v3 = *(v1 + 40);
  sub_1DA941764();
  sub_1DA940AB4();

  v4 = sub_1DA941794();

  return sub_1DA85ABA4(a1, v4);
}

unint64_t sub_1DA85A788(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DA9412C4();

  return sub_1DA85AD54(a1, v5);
}

unint64_t sub_1DA85A7CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DA941104();

  return sub_1DA85AE88(a1, v5);
}

uint64_t sub_1DA85A810(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1DA941764();
  sub_1DA940AB4();
  v7 = sub_1DA941794();

  return a3(a1, a2, v7);
}

unint64_t sub_1DA85A894(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DA941764();
  if (*(a1 + 8))
  {
    v4 = *a1;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_1DA940AB4();
  v7 = *(a1 + 48);
  sub_1DA941784();
  v8 = sub_1DA941794();

  return sub_1DA85AF4C(a1, v8);
}

unint64_t sub_1DA85A94C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1DA941684())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DA85AA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_1DA86302C(v24, v25);
      v20 = sub_1DA9409F4();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1DA85ABA4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v6 = 0xD000000000000014;
          v7 = 0x80000001DA9502F0;
        }

        else
        {
          v6 = 0xD000000000000012;
          v7 = 0x80000001DA950310;
        }
      }

      else
      {
        v6 = 0x656E696665646E75;
        v7 = 0xE900000000000064;
      }

      if (a1)
      {
        if (a1 == 1)
        {
          v8 = 0xD000000000000014;
        }

        else
        {
          v8 = 0xD000000000000012;
        }

        if (a1 == 1)
        {
          v9 = 0x80000001DA9502F0;
        }

        else
        {
          v9 = 0x80000001DA950310;
        }

        if (v6 != v8)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = 0xE900000000000064;
        if (v6 != 0x656E696665646E75)
        {
          goto LABEL_19;
        }
      }

      if (v7 == v9)
      {

        return v4;
      }

LABEL_19:
      v10 = sub_1DA941684();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DA85AD54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DA862D8C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12723B0](v9, a1);
      sub_1DA862DE8(v9);
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

unint64_t sub_1DA85AE1C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DA85AE88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for NotificationServiceConnection();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DA941114();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DA85AF4C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for NotificationSource();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = a1[1];
    v22 = *a1;
    v14 = *(v7 + 72);
    do
    {
      sub_1DA862E7C(*(v2 + 48) + v14 * v11, v9, type metadata accessor for NotificationSource);
      v15 = *(v9 + 1);
      if (v15)
      {
        if (!v13 || (*v9 == v22 ? (v16 = v15 == v13) : (v16 = 0), !v16 && (sub_1DA941684() & 1) == 0))
        {
LABEL_4:
          sub_1DA82A7FC(v9);
          goto LABEL_5;
        }
      }

      else if (v13)
      {
        goto LABEL_4;
      }

      v17 = *(v9 + 2) == a1[2] && *(v9 + 3) == a1[3];
      if (!v17 && (sub_1DA941684() & 1) == 0)
      {
        goto LABEL_4;
      }

      v18 = v9[48];
      v19 = *(a1 + 48);
      sub_1DA82A7FC(v9);
      if (v18 == v19)
      {
        return v11;
      }

LABEL_5:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1DA85B10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5908, &qword_1DA95C208);
  v33 = a2;
  result = sub_1DA9414D4();
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
      sub_1DA941764();
      MEMORY[0x1E1272850](v21);
      result = sub_1DA941794();
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

uint64_t sub_1DA85B39C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_1DA93FAF4();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA93FEC4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
  v52 = a2;
  result = sub_1DA9414D4();
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
      sub_1DA86302C(&qword_1ECBD5940, MEMORY[0x1E69DF0D0]);
      result = sub_1DA9409A4();
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

uint64_t sub_1DA85B844(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
  v38 = a2;
  result = sub_1DA9414D4();
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

        sub_1DA8304A0(v25);
      }

      v27 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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

uint64_t sub_1DA85BB84(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v62 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - v14;
  v15 = sub_1DA93FB24();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v57 = a2;
  result = sub_1DA9414D4();
  v22 = result;
  if (*(v19 + 16))
  {
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v16;
    v28 = v26 & *(v19 + 64);
    v29 = (v25 + 63) >> 6;
    v53 = (v27 + 16);
    v54 = v27;
    v51 = v9;
    v52 = v12 + 16;
    v55 = v19;
    v56 = v12;
    v58 = (v12 + 32);
    v59 = (v27 + 32);
    v30 = result + 64;
    while (v28)
    {
      v32 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v60 = *(v27 + 72);
      v37 = v36 + v60 * v35;
      if (v57)
      {
        (*v59)(v63, v37, v15);
        v38 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 32))(v61, v38 + v39 * v35, v62);
      }

      else
      {
        (*v53)(v63, v37, v15);
        v40 = *(v19 + 56);
        v39 = *(v56 + 72);
        (*(v56 + 16))(v61, v40 + v39 * v35, v62);
      }

      v41 = *(v22 + 40);
      sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8]);
      result = sub_1DA9409A4();
      v42 = -1 << *(v22 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v30 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v30 + 8 * v44);
          if (v48 != -1)
          {
            v31 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v43) & ~*(v30 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v30 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      (*v59)((*(v22 + 48) + v60 * v31), v63, v15);
      result = (*v58)(*(v22 + 56) + v39 * v31, v61, v62);
      ++*(v22 + 16);
      v27 = v54;
      v19 = v55;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v23 >= v29)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v28 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v57 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v49 = 1 << *(v19 + 32);
    v9 = v51;
    if (v49 >= 64)
    {
      bzero(v24, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v49;
    }

    *(v19 + 16) = 0;
  }

LABEL_36:
  *v9 = v22;
  return result;
}

uint64_t sub_1DA85C028(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  result = sub_1DA9414D4();
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
        sub_1DA848FE8((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1DA862D8C(v24, &v38);
        sub_1DA7AD270(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1DA9412C4();
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
      result = sub_1DA848FE8(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1DA85C31C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
  v46 = a2;
  result = sub_1DA9414D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
      v51 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = sub_1DA93FBD4();
      v50 = &v44;
      v23 = *(*(v22 - 8) + 64);
      MEMORY[0x1EEE9AC00](v22);
      v26 = *(v5 + 56);
      v27 = *(*(v5 + 48) + 8 * v21);
      v47 = *(v28 + 72);
      v48 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v29;
      v49 = v24;
      if (v46)
      {
        (*(v24 + 32))();
      }

      else
      {
        (*(v24 + 16))();
      }

      v30 = v8;
      v31 = *(v8 + 40);
      sub_1DA941764();
      MEMORY[0x1E1272850](*(v27 + 16));
      v32 = *(v27 + 16);
      if (v32)
      {
        v33 = (v27 + 40);
        do
        {
          v34 = *(v33 - 1);
          v35 = *v33;

          sub_1DA940AB4();

          v33 += 2;
          --v32;
        }

        while (v32);
      }

      result = sub_1DA941794();
      v8 = v30;
      v36 = -1 << *(v30 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v17 = v52;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v17 = v52;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v30 + 48) + 8 * v16) = v27;
      result = (*(v49 + 32))(*(v30 + 56) + v47 * v16, v48, v17);
      ++*(v30 + 16);
      v13 = v51;
      v5 = v45;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
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
        v51 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_39;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v8;
  return result;
}

uint64_t sub_1DA85C6F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5958, &unk_1DA95C240);
  v38 = a2;
  result = sub_1DA9414D4();
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_1DA85C9FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  result = sub_1DA9414D4();
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
      result = sub_1DA941754();
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

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DA85CC70(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
  v36 = a2;
  result = sub_1DA9414D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1DA848FE8(v25, v37);
      }

      else
      {
        sub_1DA7AD270(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1DA848FE8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DA85CF3C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_1DA9414D4();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DA85D1D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58C8, &qword_1DA95C1D0);
  result = sub_1DA9414D4();
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
      result = sub_1DA941754();
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

uint64_t sub_1DA85D470(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
  v41 = a2;
  result = sub_1DA9414D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1DA862FBC(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DA85D754(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DA9414D4();
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
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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

uint64_t sub_1DA85D9F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
  result = sub_1DA9414D4();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1DA941104();
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

uint64_t sub_1DA85DC64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
  v38 = a2;
  result = sub_1DA9414D4();
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

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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

uint64_t sub_1DA85DF48(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NotificationSource();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
  v45 = a2;
  result = sub_1DA9414D4();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
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
      v26 = *(v10 + 48);
      v47 = *(v44 + 72);
      v27 = v26 + v47 * v25;
      if (v45)
      {
        sub_1DA862EE4(v27, v9, type metadata accessor for NotificationSource);
        v46 = *(*(v10 + 56) + 8 * v25);
      }

      else
      {
        sub_1DA862E7C(v27, v9, type metadata accessor for NotificationSource);
        v46 = *(*(v10 + 56) + 8 * v25);
      }

      v28 = *(v13 + 40);
      sub_1DA941764();
      if (*(v9 + 1))
      {
        v29 = *v9;
        sub_1DA941784();
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      v30 = *(v9 + 2);
      v31 = *(v9 + 3);
      sub_1DA940AB4();
      v32 = v9[48];
      sub_1DA941784();
      result = sub_1DA941794();
      v33 = -1 << *(v13 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      v10 = v43;
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
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = sub_1DA862EE4(v9, *(v13 + 48) + v47 * v21, type metadata accessor for NotificationSource);
      *(*(v13 + 56) + 8 * v21) = v46;
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_41;
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

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_39;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_1DA85E308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NotificationSource();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
  v13 = sub_1DA9414D4();
  v14 = v13;
  if (*(v11 + 16))
  {
    v49 = v3;
    v15 = 0;
    v16 = *(v11 + 64);
    v50 = (v11 + 64);
    v51 = v7;
    v17 = 1 << *(v11 + 32);
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
    v21 = v13 + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v28 = v23 | (v15 << 6);
      v29 = *(v11 + 48);
      v53 = *(v7 + 72);
      v54 = v24;
      v30 = v29 + v53 * v28;
      if (a2)
      {
        sub_1DA862EE4(v30, v10, type metadata accessor for NotificationSource);
        v52 = *(*(v11 + 56) + 8 * v28);
      }

      else
      {
        sub_1DA862E7C(v30, v10, type metadata accessor for NotificationSource);
        v52 = *(*(v11 + 56) + 8 * v28);
        v31 = v52;
      }

      v32 = *(v14 + 40);
      sub_1DA941764();
      if (*(v10 + 1))
      {
        v33 = v14;
        v34 = a2;
        v35 = v11;
        v36 = *v10;
        sub_1DA941784();
        v11 = v35;
        a2 = v34;
        v14 = v33;
        v7 = v51;
        sub_1DA940AB4();
      }

      else
      {
        sub_1DA941784();
      }

      v37 = *(v10 + 2);
      v38 = *(v10 + 3);
      sub_1DA940AB4();
      v39 = v10[48];
      sub_1DA941784();
      result = sub_1DA941794();
      v40 = -1 << *(v14 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v21 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v21 + 8 * v42);
          if (v46 != -1)
          {
            v22 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v41) & ~*(v21 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_1DA862EE4(v10, *(v14 + 48) + v53 * v22, type metadata accessor for NotificationSource);
      *(*(v14 + 56) + 8 * v22) = v52;
      ++*(v14 + 16);
      v19 = v54;
    }

    v25 = v15;
    result = v50;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v50[v15];
      ++v25;
      if (v27)
      {
        v23 = __clz(__rbit64(v27));
        v24 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v49;
      goto LABEL_39;
    }

    v47 = 1 << *(v11 + 32);
    v3 = v49;
    if (v47 >= 64)
    {
      bzero(v50, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v50 = -1 << v47;
    }

    *(v11 + 16) = 0;
  }

LABEL_39:
  *v3 = v14;
  return result;
}

uint64_t sub_1DA85E6EC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1DA9414D4();
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
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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

uint64_t sub_1DA85E9C8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_1DA9414D4();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_1DA862EE4(v37, v52, v53);
      }

      else
      {
        sub_1DA862E7C(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_1DA862EE4(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_1DA85ED44(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DA93FB24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5868, &qword_1DA95C138);
  v43 = a2;
  result = sub_1DA9414D4();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1DA86302C(&qword_1EE115A40, MEMORY[0x1E69695A8]);
      result = sub_1DA9409A4();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1DA85F120(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58B8, &qword_1DA95C1C0);
  v41 = a2;
  result = sub_1DA9414D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1DA862D8C(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DA85F418(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_1DA9414D4();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_1DA85F7D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
  v38 = a2;
  result = sub_1DA9414D4();
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
      sub_1DA941764();
      sub_1DA940AB4();
      result = sub_1DA941794();
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

uint64_t sub_1DA85FA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_1DA941764();
  if (*(a1 + 8))
  {
    v7 = *a1;
    sub_1DA941784();
    sub_1DA940AB4();
  }

  else
  {
    sub_1DA941784();
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  sub_1DA940AB4();
  v10 = *(a1 + 48);
  sub_1DA941784();
  sub_1DA941794();
  v11 = -1 << *(a3 + 32);
  v12 = sub_1DA941204();
  *(a3 + 64 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  v13 = *(a3 + 48);
  v14 = type metadata accessor for NotificationSource();
  result = sub_1DA862EE4(a1, v13 + *(*(v14 - 8) + 72) * v12, type metadata accessor for NotificationSource);
  *(*(a3 + 56) + 8 * v12) = a2;
  ++*(a3 + 16);
  return result;
}

void *sub_1DA85FBB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5908, &qword_1DA95C208);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

char *sub_1DA85FD14()
{
  v1 = v0;
  v43 = sub_1DA93FAF4();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DA93FEC4();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5950, &qword_1DA95B200);
  v6 = *v0;
  v7 = sub_1DA9414C4();
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

void *sub_1DA860068()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5500, &qword_1DA95B190);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

        result = sub_1DA8304A0(v20);
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

char *sub_1DA860270(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v38 - v9;
  v47 = sub_1DA93FB24();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_1DA9414C4();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

void *sub_1DA8605BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5440, &qword_1DA95C130);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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
        sub_1DA862D8C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1DA7AD270(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1DA848FE8(v22, (*(v4 + 56) + v17));
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

void *sub_1DA86079C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5970, &qword_1DA95B258);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v32 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v33 = v2;
    v34 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
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
        v19 = v16 | (v9 << 6);
        v20 = v33;
        v21 = *(*(v33 + 48) + 8 * v19);
        v22 = sub_1DA93FBD4();
        v35 = &v32;
        v23 = *(v22 - 8);
        v24 = *(v23 + 64);
        MEMORY[0x1EEE9AC00](v22);
        v26 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        v28 = v27;
        v29 = *(v20 + 56);
        v30 = *(v28 + 72) * v19;
        (*(v23 + 16))(v26, v29 + v30, v22);
        v31 = v34;
        *(*(v34 + 48) + 8 * v19) = v21;
        (*(v23 + 32))(*(v31 + 56) + v30, v26, v22);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v32;
        v4 = v34;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1DA860A08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5958, &unk_1DA95C240);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

uint64_t sub_1DA860B78()
{
  result = sub_1DA93FBB4();
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

void *sub_1DA860D68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5980, &qword_1DA95B268);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

void *sub_1DA860ECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD54B0, &qword_1DA95C1A0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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
        sub_1DA7AD270(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1DA848FE8(v25, (*(v4 + 56) + v22));
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

id sub_1DA861084(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

        result = v22;
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

void *sub_1DA8611E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58C8, &qword_1DA95C1D0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

void *sub_1DA861364()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5530, &unk_1DA95B1C0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1DA862FBC(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_1DA86152C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

void *sub_1DA86168C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5498, &unk_1DA95B120);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void *sub_1DA8617F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5548, &unk_1DA95B1E0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

id sub_1DA86199C()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5480, &unk_1DA95C160);
  v5 = *v0;
  v6 = sub_1DA9414C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1DA862E7C(*(v5 + 48) + v22, v28, type metadata accessor for NotificationSource);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_1DA862EE4(v21, *(v30 + 48) + v22, type metadata accessor for NotificationSource);
        *(*(v24 + 56) + 8 * v20) = v23;
        result = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

id sub_1DA861BE4()
{
  v1 = v0;
  v2 = type metadata accessor for NotificationSource();
  v29 = *(v2 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5470, &qword_1DA95B0F8);
  v5 = *v0;
  v6 = sub_1DA9414C4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v27 = v5 + 64;
    v10 = 0;
    v11 = *(v5 + 16);
    v30 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_1DA862E7C(*(v5 + 48) + v22, v28, type metadata accessor for NotificationSource);
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = v30;
        sub_1DA862EE4(v21, *(v30 + 48) + v22, type metadata accessor for NotificationSource);
        *(*(v24 + 56) + 8 * v20) = v23;
        result = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v26;
        v7 = v30;
        goto LABEL_18;
      }

      v19 = *(v27 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_1DA861E40(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DA9414C4();
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

void *sub_1DA861FDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_1DA9414C4();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_1DA862E7C(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_1DA862EE4(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

char *sub_1DA86226C()
{
  v1 = v0;
  v34 = sub_1DA93FB24();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5868, &qword_1DA95C138);
  v4 = *v0;
  v5 = sub_1DA9414C4();
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

void *sub_1DA8624EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD58B8, &qword_1DA95C1C0);
  v2 = *v0;
  v3 = sub_1DA9414C4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1DA862D8C(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void *sub_1DA8626C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_1DA9414C4();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1DA86298C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5910, &unk_1DA95C210);
  v2 = *v0;
  v3 = sub_1DA9414C4();
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

uint64_t sub_1DA862AFC()
{
  v7 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (qword_1EE110EC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DA9405A4();
  __swift_project_value_buffer(v1, qword_1EE110EC8);
  v2 = sub_1DA940584();
  v3 = sub_1DA940F14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = domain_answer;
    _os_log_impl(&dword_1DA7A9000, v2, v3, "os_eligibility failed: %{public}d", v4, 8u);
    MEMORY[0x1E12739F0](v4, -1, -1);
  }

  result = 0;
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DA862D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s12AvailabilityC16DeviceManagementCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1DA862E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA862EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA862F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD58F0, &qword_1DA95C1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA862FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA86302C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA863074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5918, &qword_1DA95EF00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA863110()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  sub_1DA86349C(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA86317C(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  if (qword_1ECBD47B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBE3DA0);
  sub_1DA848A24(&v27, &v23);

  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  sub_1DA84A040(&v27);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136315394;
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DA848A24(&v27, v19);
    v10 = sub_1DA940A74();
    v12 = sub_1DA7AE6E8(v10, v11, v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_beginAccess();
    sub_1DA86342C(v2 + 32, &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
    v13 = sub_1DA940A74();
    v15 = sub_1DA7AE6E8(v13, v14, v22);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "NotificationActionRouter perform(action): %s sending to: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1DA7BABAC(v2 + 32, v19);
    v17 = v20;
    v18 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    (*(v18 + 8))(&v23, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_1DA86342C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA86349C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5990, &qword_1DA95C2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA863504(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "ionActionRecord8";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = "OptOutOfCoordinationForwardOnly";
    }

    else
    {
      v5 = "DenyListedCategories";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD00000000000001FLL;
    }

    else
    {
      v4 = 0xD000000000000014;
    }

    if (v3)
    {
      v5 = "OptOutOfCoordination";
    }

    else
    {
      v5 = "ionActionRecord8";
    }
  }

  if (a2 > 1u)
  {
    v2 = "OptOutOfCoordinationForwardOnly";
    v6 = "DenyListedCategories";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000014;
    }

    else
    {
      v8 = 0xD000000000000015;
    }
  }

  else
  {
    v6 = "OptOutOfCoordination";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD00000000000001FLL;
    }

    else
    {
      v8 = 0xD000000000000014;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1DA941684();
  }

  return v10 & 1;
}

uint64_t sub_1DA863608(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6172656E6567;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x696B726F7774656ELL;
    v3 = 0xEA0000000000676ELL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x72616C756C6C6563;
  }

  else
  {
    v4 = 0x69746E6568747561;
    v3 = 0xEE006E6F69746163;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6C6172656E6567;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x696B726F7774656ELL;
    v5 = 0xEA0000000000676ELL;
    v6 = 0xE800000000000000;
    v7 = 0x72616C756C6C6563;
    if (a2 != 3)
    {
      v7 = 0x69746E6568747561;
      v6 = 0xEE006E6F69746163;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DA941684();
  }

  return v11 & 1;
}

uint64_t sub_1DA8637A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  if (a1 > 1u)
  {
    v3 = 0x80000001DA9506B0;
    v4 = 0x80000001DA9506D0;
    v5 = a1 == 2;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 0xD000000000000012;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x80000001DA950690;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = 1701869940;
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

  v8 = 0x80000001DA9506B0;
  v9 = 0xD000000000000012;
  if (a2 == 2)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v8 = 0x80000001DA9506D0;
  }

  if (a2)
  {
    v10 = 0x80000001DA950690;
  }

  else
  {
    v2 = 1701869940;
    v10 = 0xE400000000000000;
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
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DA941684();
  }

  return v13 & 1;
}

uint64_t sub_1DA8638BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF657079546E6F69;
  v3 = 0x746361736E617274;
  v4 = a1;
  v5 = 0x73657461647075;
  v6 = 0xE800000000000000;
  v7 = 0x73676E6974746573;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001DA950380;
  }

  if (a1 == 3)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x80000001DA950340;
  if (a1 != 1)
  {
    v8 = 0x79726F6765746163;
    v9 = 0xEE0064726F636552;
  }

  if (!a1)
  {
    v8 = 0x746361736E617274;
    v9 = 0xEF657079546E6F69;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x73657461647075)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x73676E6974746573)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x80000001DA950380;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001DA950340;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v3 = 0x79726F6765746163;
      v2 = 0xEE0064726F636552;
    }

    if (v10 != v3)
    {
LABEL_32:
      v12 = sub_1DA941684();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v11 != v2)
  {
    goto LABEL_32;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_1DA863AAC()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA863BD4()
{
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t UserNotificationsVendorTransaction.bundleIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t UserNotificationsVendorTransaction.categoryRecords.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 24));
}

uint64_t UserNotificationsVendorTransaction.updates.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 28));
}

void *UserNotificationsVendorTransaction.settings.getter()
{
  v1 = *(v0 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 32));
  v2 = v1;
  return v1;
}

uint64_t UserNotificationsVendorTransaction.sourceDeviceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserNotificationsVendorTransaction(0) + 36);

  return sub_1DA863E8C(v3, a1);
}

uint64_t sub_1DA863E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA863F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA863F94(uint64_t a1)
{
  v2 = sub_1DA8648EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA863FD0(uint64_t a1)
{
  v2 = sub_1DA8648EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA86400C()
{
  v1 = 0x657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616974696E69;
  }
}

uint64_t sub_1DA864060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA867484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA864088(uint64_t a1)
{
  v2 = sub_1DA864898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8640C4(uint64_t a1)
{
  v2 = sub_1DA864898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA864114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DA941684();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DA864198(uint64_t a1)
{
  v2 = sub_1DA8649E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8641D4(uint64_t a1)
{
  v2 = sub_1DA8649E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA864210(uint64_t a1)
{
  v2 = sub_1DA864994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA86424C(uint64_t a1)
{
  v2 = sub_1DA864994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UserNotificationsVendorTransaction.TransactionType.encode(to:)(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59A0, &qword_1DA95C318);
  v42 = *(v43 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59A8, &qword_1DA95C320);
  v37 = *(v38 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59B0, &qword_1DA95C328);
  v35 = *(v40 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = sub_1DA93FB24();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59B8, &qword_1DA95C330);
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA864898();
  sub_1DA941834();
  sub_1DA81AACC(v44, v16, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v23 = v16[1];
      v51 = *v16;
      v52 = v23;
      v24 = v16[3];
      v53 = v16[2];
      v54 = v24;
      LOBYTE(v47) = 2;
      sub_1DA8648EC();
      v25 = v41;
      v26 = v46;
      sub_1DA9415A4();
      v47 = v51;
      v48 = v52;
      v49 = v53;
      v50 = v54;
      sub_1DA864940();
      v27 = v43;
      sub_1DA941604();
      (*(v42 + 8))(v25, v27);
      (*(v45 + 8))(v20, v26);
      return sub_1DA84A040(&v51);
    }

    else
    {
      LOBYTE(v51) = 1;
      sub_1DA864994();
      v33 = v36;
      v34 = v46;
      sub_1DA9415A4();
      (*(v37 + 8))(v33, v38);
      return (*(v45 + 8))(v20, v34);
    }
  }

  else
  {
    v29 = v35;
    v30 = v39;
    (*(v39 + 32))(v12, v16, v9);
    LOBYTE(v51) = 0;
    sub_1DA8649E8();
    v31 = v46;
    sub_1DA9415A4();
    sub_1DA865308(&qword_1EE114C70, MEMORY[0x1E69695A8]);
    v32 = v40;
    sub_1DA941604();
    (*(v29 + 8))(v8, v32);
    (*(v30 + 8))(v12, v9);
    return (*(v45 + 8))(v20, v31);
  }
}

unint64_t sub_1DA864898()
{
  result = qword_1EE115958[0];
  if (!qword_1EE115958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115958);
  }

  return result;
}

unint64_t sub_1DA8648EC()
{
  result = qword_1ECBD59C0;
  if (!qword_1ECBD59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59C0);
  }

  return result;
}

unint64_t sub_1DA864940()
{
  result = qword_1ECBD59C8;
  if (!qword_1ECBD59C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59C8);
  }

  return result;
}

unint64_t sub_1DA864994()
{
  result = qword_1EE115930;
  if (!qword_1EE115930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115930);
  }

  return result;
}

unint64_t sub_1DA8649E8()
{
  result = qword_1ECBD59D0;
  if (!qword_1ECBD59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59D0);
  }

  return result;
}

uint64_t UserNotificationsVendorTransaction.TransactionType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59D8, &qword_1DA95C338);
  v65 = *(v63 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v68 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59E0, &qword_1DA95C340);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v55 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59E8, &qword_1DA95C348);
  v62 = *(v64 - 8);
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD59F0, &unk_1DA95C350);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - v12;
  v14 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v55 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1DA864898();
  v26 = v71;
  sub_1DA941804();
  if (!v26)
  {
    v57 = v21;
    v56 = v18;
    v27 = v66;
    v28 = v67;
    v29 = v68;
    v59 = 0;
    v58 = v23;
    v71 = v14;
    v30 = v69;
    v31 = sub_1DA941594();
    v32 = v31;
    v33 = *(v31 + 16);
    if (!v33 || ((v34 = *(v31 + 32), v33 == 1) ? (v35 = v34 == 3) : (v35 = 1), v35))
    {
      v36 = sub_1DA9413B4();
      swift_allocError();
      v38 = v37;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5108, &qword_1DA959C20) + 48);
      *v38 = v71;
      sub_1DA941514();
      sub_1DA9413A4();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v70 + 8))(v13, v10);
    }

    else
    {
      if (*(v31 + 32))
      {
        if (v34 == 1)
        {
          LOBYTE(v72) = 1;
          sub_1DA864994();
          v41 = v59;
          sub_1DA941504();
          v42 = v30;
          if (v41)
          {
            (*(v70 + 8))(v13, v10);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v76);
          }

          (*(v60 + 8))(v28, v61);
          (*(v70 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v46 = v58;
          swift_storeEnumTagMultiPayload();
LABEL_21:
          sub_1DA8652A4(v46, v42);
          return __swift_destroy_boxed_opaque_existential_1(v76);
        }

        LOBYTE(v72) = 2;
        sub_1DA8648EC();
        v47 = v59;
        sub_1DA941504();
        if (!v47)
        {
          v42 = v30;
          v67 = v32;
          v48 = v10;
          sub_1DA865250();
          v49 = v63;
          sub_1DA941584();
          v50 = v70;
          (*(v65 + 8))(v29, v49);
          (*(v50 + 8))(v13, v48);
          swift_unknownObjectRelease();
          v51 = v73;
          v52 = v56;
          *v56 = v72;
          v52[1] = v51;
          v53 = v75;
          v52[2] = v74;
          v52[3] = v53;
          swift_storeEnumTagMultiPayload();
          v54 = v52;
          v46 = v58;
          sub_1DA8652A4(v54, v58);
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v72) = 0;
        sub_1DA8649E8();
        v43 = v59;
        sub_1DA941504();
        if (!v43)
        {
          sub_1DA93FB24();
          sub_1DA865308(&unk_1EE114C58, MEMORY[0x1E69695A8]);
          v44 = v57;
          v45 = v64;
          sub_1DA941584();
          (*(v62 + 8))(v27, v45);
          (*(v70 + 8))(v13, v10);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v58;
          sub_1DA8652A4(v44, v58);
          v42 = v30;
          goto LABEL_21;
        }
      }

      (*(v70 + 8))(v13, v10);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

uint64_t sub_1DA86521C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DA865250()
{
  result = qword_1ECBD59F8;
  if (!qword_1ECBD59F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD59F8);
  }

  return result;
}

uint64_t sub_1DA8652A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA865308(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DA865350()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA865384()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8653B8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA8653EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DA865464()
{
  *v0;
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA86557C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA867594();
  *a2 = result;
  return result;
}

void sub_1DA8655AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF657079546E6F69;
  v4 = 0x746361736E617274;
  v5 = 0xE700000000000000;
  v6 = 0x73657461647075;
  v7 = 0xE800000000000000;
  v8 = 0x73676E6974746573;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001DA950380;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001DA950340;
  v10 = 0xD000000000000010;
  if (v2 != 1)
  {
    v10 = 0x79726F6765746163;
    v9 = 0xEE0064726F636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1DA86568C()
{
  v1 = *v0;
  v2 = 0x746361736E617274;
  v3 = 0x73657461647075;
  v4 = 0x73676E6974746573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x79726F6765746163;
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

uint64_t sub_1DA865768@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA867594();
  *a1 = result;
  return result;
}

uint64_t sub_1DA86579C(uint64_t a1)
{
  v2 = sub_1DA86623C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA8657D8(uint64_t a1)
{
  v2 = sub_1DA86623C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void UserNotificationsVendorTransaction.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v50 - v5;
  v61 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v7 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A00, &qword_1DA95C360);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA86623C();
  v18 = v63;
  sub_1DA941804();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v57 = v6;
  v58 = v13;
  v19 = v60;
  v63 = a1;
  LOBYTE(v64) = 0;
  sub_1DA865308(&qword_1EE114210, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v20 = v62;
  sub_1DA941584();
  sub_1DA8652A4(v20, v16);
  LOBYTE(v64) = 1;
  v21 = sub_1DA941554();
  v22 = v9;
  v23 = v19;
  v24 = &v16[v58[5]];
  *v24 = v21;
  v24[1] = v25;
  LOBYTE(v67) = 3;
  v26 = sub_1DA83E640();
  sub_1DA941584();
  v55 = v26;
  v56 = v12;
  v27 = v64;
  v61 = v22;
  v62 = v65;
  v28 = sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A08, &qword_1DA95C368);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DA958370;
  *(v29 + 32) = sub_1DA7AF3EC(0, &qword_1EE110B80, 0x1E695DEC8);
  *(v29 + 40) = sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  sub_1DA940F54();
  v52 = v28;
  v53 = v27;

  v32 = v58;
  if (!v66)
  {
    sub_1DA7BA120(&v64, &unk_1ECBD7730, &qword_1DA95C370);
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A18, &qword_1DA95C378);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v33 = v62;
    v34 = v63;
    v35 = v53;
    sub_1DA866290();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    sub_1DA828324(v35, v33);
    (*(v23 + 8))(v56, v61);
    v37 = 0;
    goto LABEL_4;
  }

  *&v16[v32[7]] = v67;
  LOBYTE(v67) = 2;
  sub_1DA941584();
  v38 = v64;
  v39 = v65;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1DA95C300;
  *(v40 + 32) = sub_1DA7AF3EC(0, &qword_1EE110C58, 0x1E695DF20);
  *(v40 + 40) = sub_1DA7AF3EC(0, &qword_1EE110B68, 0x1E696AEC0);
  *(v40 + 48) = sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v51 = v38;
  v54 = v39;
  sub_1DA940F54();

  if (v66)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A20, &qword_1DA95C380);
    if (swift_dynamicCast())
    {
      *&v16[v32[6]] = v67;
      LOBYTE(v67) = 4;
      sub_1DA941584();
      v44 = v64;
      v45 = v65;
      sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
      v47 = sub_1DA940F44();
      sub_1DA828324(v44, v45);
      v48 = v58[8];
      if (v47)
      {
        *&v16[v48] = v47;
      }

      else
      {
        *&v16[v48] = 0;
      }

      LOBYTE(v64) = 5;
      sub_1DA941524();
      if (v46)
      {

        sub_1DA93FE84();
        sub_1DA828324(v53, v62);
        sub_1DA828324(v51, v54);

        (*(v19 + 8))(v56, v61);
      }

      else
      {
        sub_1DA828324(v53, v62);
        sub_1DA828324(v51, v54);
        (*(v19 + 8))(v56, v61);
        v49 = sub_1DA93FE74();
        (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      }

      sub_1DA8662E4(v57, &v16[v58[9]]);
      sub_1DA81AACC(v16, v59, type metadata accessor for UserNotificationsVendorTransaction);
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_1DA866354(v16, type metadata accessor for UserNotificationsVendorTransaction);
      return;
    }
  }

  else
  {
    sub_1DA7BA120(&v64, &unk_1ECBD7730, &qword_1DA95C370);
  }

  v41 = v62;
  v34 = v63;
  v42 = v53;
  sub_1DA866290();
  swift_allocError();
  v37 = 1;
  *v43 = 1;
  swift_willThrow();
  sub_1DA828324(v42, v41);
  sub_1DA828324(v51, v54);
  (*(v23 + 8))(v56, v61);
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_1DA866354(v16, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v30 = *&v16[v32[5] + 8];

  if (v37)
  {
    v31 = *&v16[v32[7]];
  }
}

unint64_t sub_1DA86623C()
{
  result = qword_1EE115888[0];
  if (!qword_1EE115888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE115888);
  }

  return result;
}

unint64_t sub_1DA866290()
{
  result = qword_1ECBD5A10;
  if (!qword_1ECBD5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A10);
  }

  return result;
}

uint64_t sub_1DA8662E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA866354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t UserNotificationsVendorTransaction.encode(to:)(void *a1)
{
  v3 = v1;
  v56 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A28, &qword_1DA95C388);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v50 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA86623C();
  sub_1DA941834();
  LOBYTE(v54) = 0;
  type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  sub_1DA865308(qword_1EE114218, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  sub_1DA941604();
  if (v2)
  {
    goto LABEL_6;
  }

  v15 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v16 = (v3 + v15[5]);
  v17 = *v16;
  v18 = v16[1];
  LOBYTE(v54) = 1;
  sub_1DA9415D4();
  v52 = v8;
  v19 = objc_opt_self();
  v20 = *(v3 + v15[6]);
  sub_1DA7AF3EC(0, &qword_1EE114D80, off_1E85D5C60);
  v21 = sub_1DA940964();
  v54 = 0;
  v22 = [v19 archivedDataWithRootObject:v21 requiringSecureCoding:1 error:&v54];

  v23 = v54;
  if (!v22)
  {
    v28 = v23;
    sub_1DA93F8C4();

LABEL_5:
    swift_willThrow();
    goto LABEL_6;
  }

  v51 = v19;
  v24 = sub_1DA93F9A4();
  v26 = v25;

  v54 = v24;
  v55 = v26;
  v53 = 2;
  v27 = sub_1DA83E88C();
  sub_1DA941604();
  v50[1] = v27;
  sub_1DA828324(v54, v55);
  v31 = *(v3 + v15[7]);
  sub_1DA7AF3EC(0, &unk_1EE114D90, off_1E85D5C78);
  v32 = sub_1DA940BD4();
  v54 = 0;
  v33 = [v51 archivedDataWithRootObject:v32 requiringSecureCoding:1 error:&v54];

  v34 = v54;
  if (!v33)
  {
    v45 = v34;
    sub_1DA93F8C4();

    goto LABEL_5;
  }

  v35 = sub_1DA93F9A4();
  v37 = v36;

  v54 = v35;
  v55 = v37;
  v53 = 3;
  sub_1DA941604();
  sub_1DA828324(v54, v55);
  v38 = *(v3 + v15[8]);
  if (v38)
  {
    v54 = 0;
    v39 = v38;
    v40 = [v51 archivedDataWithRootObject:v39 requiringSecureCoding:1 error:&v54];
    v41 = v54;
    if (v40)
    {
      v51 = v39;
      v42 = sub_1DA93F9A4();
      v44 = v43;

      v54 = v42;
      v55 = v44;
      v53 = 4;
      sub_1DA941604();
      sub_1DA828324(v54, v55);

      goto LABEL_14;
    }

    v46 = v41;
    sub_1DA93F8C4();

    swift_willThrow();
LABEL_6:
    result = (*(v10 + 8))(v13, v9);
    goto LABEL_7;
  }

LABEL_14:
  v47 = v52;
  sub_1DA863E8C(v3 + v15[9], v52);
  v48 = sub_1DA93FE74();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_1DA7BA120(v47, &qword_1ECBD4E80, &qword_1DA958C00);
  }

  else
  {
    sub_1DA93FE24();
    (*(v49 + 8))(v47, v48);
  }

  LOBYTE(v54) = 5;
  sub_1DA9415B4();
  (*(v10 + 8))(v13, v9);

LABEL_7:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA866A1C()
{
  type metadata accessor for UserNotificationsVendorTransaction.TransactionType(319);
  if (v0 <= 0x3F)
  {
    sub_1DA866B48();
    if (v1 <= 0x3F)
    {
      sub_1DA866BC0(319, &qword_1EE110C88, &unk_1EE114D90, off_1E85D5C78, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1DA866BC0(319, &qword_1EE110BC0, &unk_1EE114DA0, 0x1E69832B0, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DA866C28();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DA866B48()
{
  if (!qword_1EE110CE8)
  {
    sub_1DA7AF3EC(255, &qword_1EE114D80, off_1E85D5C60);
    v0 = sub_1DA940994();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE110CE8);
    }
  }
}

void sub_1DA866BC0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DA7AF3EC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DA866C28()
{
  if (!qword_1EE114E78)
  {
    sub_1DA93FE74();
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114E78);
    }
  }
}

void sub_1DA866CD0()
{
  sub_1DA866D44();
  if (v0 <= 0x3F)
  {
    sub_1DA866D8C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DA866D44()
{
  if (!qword_1EE114C78)
  {
    v0 = sub_1DA93FB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114C78);
    }
  }
}

ValueMetadata *sub_1DA866D8C()
{
  result = qword_1EE111DB8[0];
  if (!qword_1EE111DB8[0])
  {
    result = &type metadata for NotificationActionSelector;
    atomic_store(&type metadata for NotificationActionSelector, qword_1EE111DB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserNotificationsVendorTransaction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserNotificationsVendorTransaction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA866F60()
{
  result = qword_1ECBD5A30;
  if (!qword_1ECBD5A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A30);
  }

  return result;
}

unint64_t sub_1DA866FB8()
{
  result = qword_1ECBD5A38;
  if (!qword_1ECBD5A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A38);
  }

  return result;
}

unint64_t sub_1DA867010()
{
  result = qword_1ECBD5A40;
  if (!qword_1ECBD5A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A40);
  }

  return result;
}

unint64_t sub_1DA867068()
{
  result = qword_1ECBD5A48;
  if (!qword_1ECBD5A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A48);
  }

  return result;
}

unint64_t sub_1DA8670C0()
{
  result = qword_1ECBD5A50;
  if (!qword_1ECBD5A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD5A50);
  }

  return result;
}

unint64_t sub_1DA867118()
{
  result = qword_1EE115878;
  if (!qword_1EE115878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115878);
  }

  return result;
}

unint64_t sub_1DA867170()
{
  result = qword_1EE115880;
  if (!qword_1EE115880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115880);
  }

  return result;
}

unint64_t sub_1DA8671C8()
{
  result = qword_1EE115910;
  if (!qword_1EE115910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115910);
  }

  return result;
}

unint64_t sub_1DA867220()
{
  result = qword_1EE115918;
  if (!qword_1EE115918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115918);
  }

  return result;
}

unint64_t sub_1DA867278()
{
  result = qword_1EE115920;
  if (!qword_1EE115920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115920);
  }

  return result;
}

unint64_t sub_1DA8672D0()
{
  result = qword_1EE115928;
  if (!qword_1EE115928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115928);
  }

  return result;
}

unint64_t sub_1DA867328()
{
  result = qword_1EE115938;
  if (!qword_1EE115938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115938);
  }

  return result;
}

unint64_t sub_1DA867380()
{
  result = qword_1EE115940;
  if (!qword_1EE115940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115940);
  }

  return result;
}

unint64_t sub_1DA8673D8()
{
  result = qword_1EE115948;
  if (!qword_1EE115948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115948);
  }

  return result;
}

unint64_t sub_1DA867430()
{
  result = qword_1EE115950;
  if (!qword_1EE115950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE115950);
  }

  return result;
}

uint64_t sub_1DA867484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616974696E69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA941684() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_1DA941684() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DA941684();

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

uint64_t sub_1DA867594()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

void *sub_1DA8675EC()
{
  v0 = type metadata accessor for NotificationGroupService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = NotificationGroupService.init()();
  qword_1ECBD5A58 = v3;
  return result;
}

uint64_t NotificationGroupService.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NotificationGroupService.init()();
  return v3;
}

uint64_t static NotificationGroupService.shared.getter()
{
  if (qword_1ECBD4748 != -1)
  {
    swift_once();
  }
}

uint64_t NotificationGroupService.settingsProvider.getter()
{
  v1 = *(*(v0 + 40) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  return sub_1DA940FE4();
}

uint64_t sub_1DA867734(uint64_t a1)
{
  v1 = *(*(*a1 + 40) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  return sub_1DA940FE4();
}

uint64_t sub_1DA8677AC(uint64_t a1, uint64_t a2)
{
  sub_1DA7BABAC(a1, v6);
  v3 = *(*a2 + 40);
  sub_1DA7BABAC(v6, v5);
  sub_1DA93A1DC(v5);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t NotificationGroupService.settingsProvider.setter(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1DA7BABAC(a1, v5);
  sub_1DA93A1DC(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*NotificationGroupService.settingsProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 120) = v4;
  v5 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5A60, &unk_1DA95CB00);
  sub_1DA940FE4();
  return sub_1DA867900;
}

void sub_1DA867900(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  if (a2)
  {
    sub_1DA7BABAC(*a1, (v2 + 5));
    sub_1DA7BABAC((v2 + 5), (v2 + 10));
    sub_1DA93A1DC(v2 + 10);
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  else
  {
    sub_1DA7BABAC(*a1, (v2 + 5));
    sub_1DA93A1DC(v2 + 5);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);

  free(v2);
}

void *NotificationGroupService.init()()
{
  v1 = v0;
  v2 = sub_1DA9407F4();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA940FC4();
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DA940F74();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DA940854();
  v37 = *(v12 - 8);
  v38 = v12;
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[0] = sub_1DA7AF3EC(0, &qword_1EE115A50, 0x1E69E9610);
  v36[3] = "sitory";
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v36[2] = sub_1DA7ACFF0(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD11C(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  v16 = *MEMORY[0x1E69E8090];
  v17 = *(v43 + 104);
  v43 += 104;
  v17(v9, v16, v42);
  v0[6] = sub_1DA941004();
  sub_1DA940824();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DA9411D4();
  v17(v9, v16, v42);
  v0[7] = sub_1DA941004();
  type metadata accessor for WeakObserverArray();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  v0[8] = v18;
  sub_1DA9401F4();
  v20 = MEMORY[0x1E69DF180];
  sub_1DA7ACFF0(&qword_1ECBD5A70, MEMORY[0x1E69DF180]);
  sub_1DA7ACFF0(&qword_1ECBD5A78, v20);
  sub_1DA7ACFF0(&qword_1ECBD5A80, v20);
  v21 = v19;
  sub_1DA940444();
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler) = 0;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer) = 0;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions) = 1;
  v22 = type metadata accessor for NotificationMigrationScheduler();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_1DA8230D4();
  v0[2] = v25;
  type metadata accessor for NotificationGroupPersistenceManager();
  swift_allocObject();
  v26 = swift_retain_n();
  v0[3] = sub_1DA92ACDC(v26);
  if (qword_1EE1134B0 != -1)
  {
    swift_once();
  }

  v0[4] = qword_1EE1134B8;
  v27 = qword_1EE111B28;

  if (v27 != -1)
  {
    swift_once();
  }

  v1[5] = qword_1EE11AE98;

  sub_1DA8680E8();

  sub_1DA87B80C(v28, v25);

  v29 = v1[3];

  sub_1DA92A494();

  v30 = v1[7];
  aBlock[4] = sub_1DA87BAF4;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_8;
  v31 = _Block_copy(aBlock);

  v32 = v15;
  sub_1DA940824();
  v44 = v21;
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v33 = v39;
  v34 = v41;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v32, v33, v31);
  _Block_release(v31);

  (*(v40 + 8))(v33, v34);
  (*(v37 + 8))(v32, v38);

  return v1;
}

void sub_1DA8680E8()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DA9405A4();
  __swift_project_value_buffer(v2, qword_1ECBE3DD0);
  v3 = sub_1DA940584();
  v4 = sub_1DA940F34();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DA7A9000, v3, v4, "Started streaming summaries", v5, 2u);
    MEMORY[0x1E12739F0](v5, -1, -1);
  }
}

void sub_1DA8681EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  if (qword_1ECBD47C8 != -1)
  {
    swift_once();
  }

  v5 = sub_1DA9405A4();
  __swift_project_value_buffer(v5, qword_1ECBE3DD0);
  v6 = sub_1DA940584();
  v7 = sub_1DA940F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1DA7A9000, v6, v7, "Starting resume timer", v8, 2u);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  v9 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v10 = sub_1DA940A04();
  v11 = [v9 initWithIdentifier_];

  v12 = *(v1 + 56);
  v13 = swift_allocObject();
  swift_weakInit();
  v16[4] = sub_1DA87F784;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DA7B00D0;
  v16[3] = &block_descriptor_131;
  v14 = _Block_copy(v16);

  [v11 scheduleWithFireInterval:v12 leewayInterval:v14 queue:3.0 handler:0.1];
  _Block_release(v14);
  v15 = *(v1 + v2);
  *(v1 + v2) = v11;
}

uint64_t NotificationGroupService.deinit()
{
  v1 = v0;
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  v5 = *(v1 + 32);

  v6 = *(v1 + 40);

  v7 = *(v1 + 64);

  v8 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  (*(*(v9 - 8) + 8))(v1 + v8, v9);
  v10 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler);

  return v1;
}

uint64_t NotificationGroupService.__deallocating_deinit()
{
  NotificationGroupService.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DA8685BC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
  v3 = *(a1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
  if (v3)
  {
    [v3 invalidate];
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

uint64_t sub_1DA868630(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DA9407F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DA940854();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 56);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1DA940824();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1DA8688D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v17 - v5;
  v7 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions;
  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions) == 1)
  {
    if (qword_1ECBD47C8 != -1)
    {
      swift_once();
    }

    v8 = sub_1DA9405A4();
    __swift_project_value_buffer(v8, qword_1ECBE3DD0);
    v9 = sub_1DA940584();
    v10 = sub_1DA940F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DA7A9000, v9, v10, "Resuming emissions", v11, 2u);
      MEMORY[0x1E12739F0](v11, -1, -1);
    }

    *(v1 + v7) = 0;
    v12 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer;
    v13 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_resumeTimer);
    if (v13)
    {
      [v13 invalidate];
      v14 = *(v1 + v12);
    }

    else
    {
      v14 = 0;
    }

    *(v1 + v12) = 0;

    sub_1DA86A66C();
    v15 = sub_1DA940D34();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;

    sub_1DA84FB24(0, 0, v6, &unk_1DA95CD28, v16);
  }

  return result;
}

Swift::Void __swiftcall NotificationGroupService.addOrModify(notifications:publisherDestinations:)(Swift::OpaquePointer notifications, UserNotificationsCore::NotificationPublisherDestinations publisherDestinations)
{
  v3 = v2;
  v6 = sub_1DA9407F4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DA940854();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *publisherDestinations.rawValue;
  v15 = v3[7];
  v16 = swift_allocObject();
  v16[2]._rawValue = v3;
  v16[3]._rawValue = notifications._rawValue;
  v16[4]._rawValue = v14;
  aBlock[4] = sub_1DA87BB74;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_10;
  v17 = _Block_copy(aBlock);

  sub_1DA940824();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v13, v9, v17);
  _Block_release(v17);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_1DA868DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = 0;
    v7 = *(sub_1DA9401F4() - 8);
    v8 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = 0;
    while (v9 < v3)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_14;
      }

      v11 = (v8 + *(v7 + 72) * v9);
      v12 = a3;
      if (sub_1DA86EB28(v11, &v12))
      {
        v6 = 1;
        if (v10 == v3)
        {
          goto LABEL_11;
        }

        ++v9;
      }

      else
      {
        ++v9;
        if (v10 == v3)
        {
          if ((v6 & 1) == 0)
          {
            return;
          }

LABEL_11:
          sub_1DA86A66C();
          return;
        }
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1DA868EF0(uint64_t a1)
{
  v3 = sub_1DA93FEC4();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1DA9408C4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = v1;
  v12 = *(v1 + 56);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  v14 = sub_1DA9408F4();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_1ECBD47C8 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v15 = sub_1DA9405A4();
    __swift_project_value_buffer(v15, qword_1ECBE3DD0);

    v16 = sub_1DA940584();
    v17 = sub_1DA940F34();

    v18 = os_log_type_enabled(v16, v17);
    v31 = v3;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315138;
      v21 = MEMORY[0x1E1271CD0](a1, v3);
      v23 = sub_1DA7AE6E8(v21, v22, &v34);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1DA7A9000, v16, v17, "Removing notifications: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12739F0](v20, -1, -1);
      MEMORY[0x1E12739F0](v19, -1, -1);
    }

    v24 = *(a1 + 16);
    if (!v24)
    {
      break;
    }

    v30 = 0;
    v25 = 0;
    v3 = a1 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v26 = (v33 + 8);
    while (v25 < v24)
    {
      a1 = v31;
      (*(v33 + 16))(v6, v3 + *(v33 + 72) * v25, v31);
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_18;
      }

      swift_beginAccess();
      v28 = sub_1DA870C38(v6, 0);
      swift_endAccess();
      (*v26)(v6, a1);
      if (v28)
      {
        v30 = 1;
        ++v25;
        if (v27 == v24)
        {
          goto LABEL_15;
        }
      }

      else
      {
        ++v25;
        if (v27 == v24)
        {
          if ((v30 & 1) == 0)
          {
            return;
          }

LABEL_15:
          sub_1DA86A66C();
          return;
        }
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }
}

uint64_t sub_1DA8692D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DA9407F4();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DA940854();
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  v11 = *(v38 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v42 = sub_1DA9402B4();
  v15 = *(v42 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v42);
  v18 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v38 - v19;
  v20 = a1;
  v21 = *(a1 + 64);
  v52 = 0;
  swift_unknownObjectWeakInit();
  v40 = a3;
  v41 = a2;
  v52 = a3;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v22 = *(v21 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v21 + 16) = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1DA886068(0, v22[2] + 1, 1, v22);
    *(v21 + 16) = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1DA886068((v24 > 1), v25 + 1, 1, v22);
  }

  v22[2] = v25 + 1;
  sub_1DA87F49C(v51, &v22[2 * v25 + 4]);
  *(v21 + 16) = v22;
  swift_endAccess();
  v26 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_list;
  v27 = v20;
  swift_beginAccess();
  (*(v11 + 16))(v14, v20 + v26, v38);
  v28 = v39;
  sub_1DA9402A4();
  v38 = *(v27 + 48);
  v29 = v42;
  (*(v15 + 16))(v18, v28, v42);
  v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v31 = swift_allocObject();
  v32 = v40;
  *(v31 + 16) = v41;
  *(v31 + 24) = v32;
  (*(v15 + 32))(v31 + v30, v18, v29);
  aBlock[4] = sub_1DA87F598;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_113;
  v33 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v34 = v43;
  sub_1DA940824();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  v35 = v45;
  v36 = v48;
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v34, v35, v33);
  _Block_release(v33);
  (*(v47 + 8))(v35, v36);
  (*(v44 + 8))(v34, v46);
  (*(v15 + 8))(v28, v29);
}

uint64_t sub_1DA869888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v7 = v5;
  v10 = sub_1DA9407F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DA940854();
  v15 = *(v23 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v7 + 56);
  v19 = swift_allocObject();
  v19[2] = v7;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = v22[0];
  v20 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1DA940824();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v18, v14, v20);
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v23);
}

uint64_t sub_1DA869B60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v4 = sub_1DA87C648((v3 + 16), a2);
  result = swift_unknownObjectRelease();
  v6 = *(*(v3 + 16) + 16);
  if (v6 < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1DA884C28(v4, v6);
    return swift_endAccess();
  }

  return result;
}

void sub_1DA869C1C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 16);
  swift_beginAccess();
  v3 = sub_1DA869C98(v1, v2);
  swift_endAccess();
  if (v3)
  {
    sub_1DA86A66C();
  }
}

uint64_t sub_1DA869C98(void (**a1)(char *, uint64_t), uint64_t a2)
{
  v66 = a2;
  v83 = a1;
  v67 = sub_1DA93FAF4();
  v65 = *(v67 - 8);
  v2 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1DA93FEC4();
  v72 = *(v70 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1DA9400B4();
  v69 = *(v78 - 8);
  v6 = *(v69 + 64);
  v7 = MEMORY[0x1EEE9AC00](v78);
  v80 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v61 - v9;
  v10 = sub_1DA9401F4();
  v82 = *(v10 - 8);
  v11 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AC0, &qword_1DA95CC48);
  v63 = *(v71 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v62 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AE0, &unk_1DA9656A0);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v76 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v61 - v23;
  v25 = v16[13];
  v25(&v61 - v23, *MEMORY[0x1E69DF238], v15);
  v26 = *MEMORY[0x1E69DF248];
  v25(v22, v26, v15);
  v27 = v77;
  v75 = sub_1DA8730F0(v24, v22, v83, v77, sub_1DA87979C, sub_1DA880680);
  v28 = v16[1];
  (v28)(v22, v15);
  (v28)(v24, v15);
  v25(v24, v26, v15);
  v25(v22, *MEMORY[0x1E69DF240], v15);
  LODWORD(v74) = sub_1DA8730F0(v24, v22, v83, v27, sub_1DA8791BC, sub_1DA880680);
  (v28)(v22, v15);
  v83 = v28;
  v73 = (v16 + 1);
  (v28)(v24, v15);
  v29 = v76;
  v25(v76, v26, v15);
  v30 = sub_1DA8779F8(v29);
  if (v31)
  {
    v32 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v33 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5AA0, &qword_1DA95CB10);
  result = sub_1DA940464();
  if ((v33 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v33 < *(result + 16))
  {
    v35 = v63;
    v36 = result + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v33;
    v37 = v62;
    v38 = v71;
    (*(v63 + 16))(v62, v36, v71);

    v32 = sub_1DA878030();
    (*(v35 + 8))(v37, v38);
LABEL_6:
    v39 = v74 | v75;
    (v83)(v29, v15);
    v40 = *(v32 + 16);
    v41 = v68;
    if (v40)
    {
      LODWORD(v71) = v39;
      v42 = *(v82 + 16);
      v43 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v63 = v32;
      v44 = v32 + v43;
      v45 = *(v82 + 72);
      v83 = (v82 + 8);
      v75 = *MEMORY[0x1E69DF160];
      v73 = (v69 + 8);
      v74 = (v69 + 104);
      v46 = MEMORY[0x1E69E7CC0];
      v69 = v72 + 32;
      v82 += 16;
      v76 = v45;
      v77 = v42;
      v42(v68, v32 + v43, v10);
      while (1)
      {
        v47 = sub_1DA93FF84();
        v48 = [v47 request];

        v49 = [v48 content];
        v50 = [v49 interruptionLevel];

        if (v50 == 2)
        {
          v51 = v46;
          v52 = v10;
          v53 = v79;
          sub_1DA9400C4();
          v54 = v80;
          v55 = v41;
          v56 = v78;
          (*v74)(v80, v75, v78);
          sub_1DA7ACFF0(&qword_1ECBD5B90, MEMORY[0x1E69DF168]);
          sub_1DA940B74();
          sub_1DA940B74();
          v57 = *v73;
          (*v73)(v54, v56);
          v57(v53, v56);
          if (v85 == v84)
          {
            sub_1DA940124();
            v46 = v51;
            v10 = v52;
            v41 = v55;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = sub_1DA885D20(0, v51[2] + 1, 1, v51);
            }

            v45 = v76;
            v42 = v77;
            v59 = v46[2];
            v58 = v46[3];
            if (v59 >= v58 >> 1)
            {
              v46 = sub_1DA885D20(v58 > 1, v59 + 1, 1, v46);
            }

            (*v83)(v41, v52);
            v46[2] = v59 + 1;
            (*(v72 + 32))(v46 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v59, v81, v70);
            LODWORD(v71) = 1;
          }

          else
          {
            v10 = v52;
            (*v83)(v55, v52);
            v41 = v55;
            v46 = v51;
            v45 = v76;
            v42 = v77;
          }
        }

        else
        {
          (*v83)(v41, v10);
        }

        v44 += v45;
        if (!--v40)
        {
          break;
        }

        v42(v41, v44, v10);
      }

      LOBYTE(v39) = v71;
      if (v46[2])
      {
        goto LABEL_20;
      }
    }

    else
    {

      v46 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_20:
        v60 = v64;
        sub_1DA93FA74();
        sub_1DA8236E4(v46, v60);

        (*(v65 + 8))(v60, v67);
        return v39 & 1;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

void sub_1DA86A66C()
{
  v1 = sub_1DA9408C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 56);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
  v7 = v6;
  v8 = sub_1DA9408F4();
  (*(v2 + 8))(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_holdingOffEmissions))
  {
    if (qword_1ECBD47C8 == -1)
    {
LABEL_4:
      v9 = sub_1DA9405A4();
      __swift_project_value_buffer(v9, qword_1ECBE3DD0);
      v10 = sub_1DA940584();
      v11 = sub_1DA940F34();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1DA7A9000, v10, v11, "Holding off emissions during launch", v12, 2u);
        MEMORY[0x1E12739F0](v12, -1, -1);
      }

      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v13 = OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler;
  if (*(v0 + OBJC_IVAR____TtC21UserNotificationsCore24NotificationGroupService_queue_throttler))
  {
    goto LABEL_9;
  }

  v14 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5B58, &unk_1DA95CCB0);
  swift_allocObject();
  v15 = sub_1DA87AEC4(v7, sub_1DA87E010, v14, 0.1);
  v16 = *(v0 + v13);
  *(v0 + v13) = v15;

  if (*(v0 + v13))
  {
LABEL_9:

    sub_1DA8722E0();
  }
}

uint64_t sub_1DA86A944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = sub_1DA9407F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DA940854();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v7 + 56);
  v18 = swift_allocObject();
  *(v18 + 16) = v7;
  *(v18 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = a4;
  v19 = _Block_copy(aBlock);

  sub_1DA940824();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DA7ACFF0(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD11C(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v17, v13, v19);
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v22);
}