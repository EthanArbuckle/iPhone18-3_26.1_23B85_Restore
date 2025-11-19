unint64_t sub_230461054(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54190, &qword_2304A7548);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54198, &qword_2304A7550);
    v8 = sub_2304A62A4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_230464B24(v10, v6, &qword_27DB54190, &qword_2304A7548);
      v12 = *v6;
      v13 = v6[1];
      result = sub_230469C40(*v6, v13);
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
      v19 = sub_2304A5294();
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

uint64_t sub_230461240(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16) && !*(a2 + 16))
  {
    return 1;
  }

  v3 = *(v2 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);
  v4 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v4);

  os_unfair_lock_lock(v3 + 4);
  sub_2304618BC(&v7);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v7;

  return v5;
}

void sub_230461334(uint64_t a1)
{
  v2 = sub_2304A4B14();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2304A4AB4();
  v9 = v7;
  if (v8 == 0xD000000000000011 && 0x80000002304A7280 == v7 || (sub_2304A62F4() & 1) != 0)
  {

    sub_230437458(a1);
    return;
  }

  if (v8 == 0x7463617265746E69 && v9 == 0xEB000000006E6F69 || (sub_2304A62F4() & 1) != 0 || v8 == 0x7265766F63736964 && v9 == 0xE900000000000079 || (sub_2304A62F4() & 1) != 0 || v8 == 7037793 && v9 == 0xE300000000000000 || (sub_2304A62F4() & 1) != 0 || v8 == 0x73656E656C617473 && v9 == 0xEA00000000007373)
  {

LABEL_19:

    sub_230437DF0(a1);
    return;
  }

  v10 = sub_2304A62F4();

  if (v10)
  {
    goto LABEL_19;
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v11 = sub_2304A5B74();
  __swift_project_value_buffer(v11, qword_28149B008);
  (*(v3 + 16))(v6, a1, v2);
  v12 = sub_2304A5B54();
  v13 = sub_2304A5E74();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136446210;
    v16 = sub_2304A4AB4();
    v18 = v17;
    (*(v3 + 8))(v6, v2);
    v19 = sub_23046A5C8(v16, v18, &v21);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_230430000, v12, v13, "Unexpected message type: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x23191A000](v15, -1, -1);
    MEMORY[0x23191A000](v14, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2304617C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_230461854(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_230461898(unint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  sub_23043645C(v1[2], a1);
}

uint64_t sub_2304618F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = *(*(a3 + 56) + 8 * v14);

    if (sub_2304A4954() == a4 && v17 == a5)
    {

LABEL_18:
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_23045F7B0(v22, a2, v23, a3);
      }
    }

    else
    {
      v19 = sub_2304A62F4();

      if (v19)
      {
        goto LABEL_18;
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

    if (v5 >= v10)
    {
      return sub_23045F7B0(v22, a2, v23, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_230461A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_23045DF34(v15, v9, a1, a2, a3);
      MEMORY[0x23191A000](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_2304618F4(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_230461C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x277D84F98];
    v27 = MEMORY[0x277D84F98];
    sub_2304A61A4();

    v6 = sub_2304A6234();
    if (v6)
    {
      v7 = v6;
      sub_2304A4984();
      v8 = v7;
      while (1)
      {
        v25 = v8;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        if (!v26)
        {
          goto LABEL_26;
        }

        if (sub_2304A4954() == a2 && v16 == a3)
        {
          break;
        }

        v18 = sub_2304A62F4();

        if (v18)
        {
          goto LABEL_16;
        }

LABEL_7:
        v8 = sub_2304A6234();
        if (!v8)
        {
          goto LABEL_26;
        }
      }

LABEL_16:
      v19 = *(v5 + 16);
      if (*(v5 + 24) <= v19)
      {
        sub_23046E490(v19 + 1, 1);
      }

      v5 = v27;
      v9 = *(v27 + 40);
      sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
      result = sub_2304A5CF4();
      v11 = v27 + 64;
      v12 = -1 << *(v27 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v27 + 64 + 8 * (v13 >> 6))) != 0)
      {
        v15 = __clz(__rbit64((-1 << v13) & ~*(v27 + 64 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        do
        {
          if (++v14 == v21 && (v20 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
        }

        while (v23 == -1);
        v15 = __clz(__rbit64(~v23)) + (v14 << 6);
      }

      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v27 + 48) + 8 * v15) = v26;
      *(*(v27 + 56) + 8 * v15) = v25;
      ++*(v27 + 16);
      goto LABEL_7;
    }

LABEL_26:
    sub_230433B3C();
  }

  else
  {

    v5 = sub_230461A94(a1, a2, a3);
  }

  return v5;
}

uint64_t sub_230461F90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = result;
  v30 = 0;
  v5 = 0;
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
  v35 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v34 = (v9 - 1) & v9;
LABEL_13:
    v14 = v11 | (v5 << 6);
    v31 = v14;
    v15 = *(*(a3 + 56) + 8 * v14);
    v33 = *(*(a3 + 48) + 8 * v14);

    v16 = sub_2304A5284();
    v18 = v17;
    if (*(a4 + 16) && (v19 = v16, v20 = *(a4 + 40), sub_2304A6394(), sub_2304A5D54(), v21 = sub_2304A63B4(), v22 = -1 << *(a4 + 32), v23 = v21 & ~v22, ((*(v35 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
    {
      v24 = ~v22;
      while (1)
      {
        v25 = (*(a4 + 48) + 16 * v23);
        v26 = *v25 == v19 && v25[1] == v18;
        if (v26 || (sub_2304A62F4() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v35 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      v27 = __OFADD__(v30++, 1);
      v9 = v34;
      if (v27)
      {
        __break(1u);
        return sub_23045F7B0(v29, a2, v30, a3);
      }
    }

    else
    {
LABEL_5:

      v9 = v34;
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
      return sub_23045F7B0(v29, a2, v30, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v34 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2304621E8(uint64_t a1, uint64_t a2)
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

      v10 = sub_23045DFD8(v13, v7, a1, a2);
      MEMORY[0x23191A000](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_230461F90(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_2304623A8(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v35 = MEMORY[0x277D84F98];
    sub_2304A61A4();

    v4 = sub_2304A6234();
    if (v4)
    {
      v5 = v4;
      sub_2304A4984();
      v6 = v5;
      v7 = a2 + 56;
      do
      {
        v34 = v6;
        swift_dynamicCast();
        type metadata accessor for ClientDataSource();
        swift_dynamicCast();
        if (!v33)
        {
          break;
        }

        v8 = sub_2304A5284();
        v10 = v9;
        if (!*(a2 + 16))
        {
          goto LABEL_4;
        }

        v11 = v8;
        v12 = *(a2 + 40);
        sub_2304A6394();
        sub_2304A5D54();
        v13 = sub_2304A63B4();
        v14 = -1 << *(a2 + 32);
        v15 = v13 & ~v14;
        if ((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v15);
            v18 = *v17 == v11 && v17[1] == v10;
            if (v18 || (sub_2304A62F4() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v7 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v19 = *(v3 + 16);
          if (*(v3 + 24) <= v19)
          {
            sub_23046E490(v19 + 1, 1);
          }

          v3 = v35;
          v20 = *(v35 + 40);
          sub_230464B8C(&qword_281499FD0, MEMORY[0x277D464B8]);
          result = sub_2304A5CF4();
          v22 = v35 + 64;
          v23 = -1 << *(v35 + 32);
          v24 = result & ~v23;
          v25 = v24 >> 6;
          if (((-1 << v24) & ~*(v35 + 64 + 8 * (v24 >> 6))) != 0)
          {
            v26 = __clz(__rbit64((-1 << v24) & ~*(v35 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v27 = 0;
            v28 = (63 - v23) >> 6;
            do
            {
              if (++v25 == v28 && (v27 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v29 = v25 == v28;
              if (v25 == v28)
              {
                v25 = 0;
              }

              v27 |= v29;
              v30 = *(v22 + 8 * v25);
            }

            while (v30 == -1);
            v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          }

          *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
          *(*(v35 + 48) + 8 * v26) = v33;
          *(*(v35 + 56) + 8 * v26) = v34;
          ++*(v35 + 16);
        }

        else
        {
LABEL_4:
        }

        v6 = sub_2304A6234();
      }

      while (v6);
    }

    sub_230433B3C();

    return v3;
  }

  else
  {

    v32 = sub_2304621E8(a1, a2);

    return v32;
  }
}

uint64_t sub_230462768()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock);

  os_unfair_lock_lock(v1 + 4);
  sub_230462810(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

unint64_t sub_230462828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
    v3 = sub_2304A62A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_230464B24(v4, &v13, &qword_27DB53F50, &unk_2304A73B0);
      v5 = v13;
      v6 = v14;
      result = sub_230469C40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230462958(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

_OWORD *sub_230462958(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_230462988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54178, &qword_2304A7530);
    v3 = sub_2304A62A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_230464B24(v4, &v13, &qword_27DB54180, &qword_2304A7538);
      v5 = v13;
      v6 = v14;
      result = sub_230469C40(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_230464AA4(v15, (v3[7] + 48 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 64;
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

uint64_t sub_230462ABC(uint64_t a1, uint64_t a2, void (**a3)(const void *, void *, void *))
{
  v155 = a1;
  v5 = sub_2304A53C4();
  v151 = *(v5 - 8);
  v152 = v5;
  v6 = *(v151 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A53E4();
  v153 = *(v9 - 8);
  v154 = v9;
  v10 = *(v153 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v148 = v129 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v142 = v129 - v17;
  MEMORY[0x28223BE20](v16);
  v137 = v129 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FC8, &qword_2304A7420);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v129 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v149 = v129 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v150 = v129 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v143 = v129 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v144 = v129 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v136 = v129 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v138 = v129 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v133 = v129 - v40;
  MEMORY[0x28223BE20](v39);
  v134 = v129 - v41;
  v131 = sub_2304A4084();
  v130 = *(v131 - 8);
  v42 = *(v130 + 64);
  MEMORY[0x28223BE20](v131);
  v129[1] = v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2304A57B4();
  v140 = *(v44 - 8);
  v141 = v44;
  v45 = *(v140 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v132 = v129 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = v129 - v47;
  v139 = sub_2304A5124();
  v135 = *(v139 - 8);
  v49 = *(v135 + 64);
  v50 = MEMORY[0x28223BE20](v139);
  v129[0] = v129 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v53 = (v129 - v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FD0, &qword_2304A7428);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = v129 - v56;
  v156 = swift_allocObject();
  *(v156 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v145 = v8;
    v147 = Strong;
    v59 = *(a2 + OBJC_IVAR____TtC14ReplicatorCoreP33_0666CD86C1D3D7360744851506CB0C776Client_lock);
    v60 = MEMORY[0x28223BE20](Strong);
    v61 = v155;
    v129[-2] = a2;
    v129[-1] = v61;
    MEMORY[0x28223BE20](v60);
    v129[-2] = sub_2304640D8;
    v129[-1] = v62;
    v146 = a3;
    _Block_copy(a3);
    os_unfair_lock_lock(v59 + 4);
    sub_230431F50();
    os_unfair_lock_unlock(v59 + 4);
    v63 = sub_2304A5294();
    if ((*(*(v63 - 8) + 48))(v57, 1, v63) == 1)
    {
      v64 = v145;
      if (qword_281499E38 != -1)
      {
        swift_once();
      }

      v65 = sub_2304A5B74();
      __swift_project_value_buffer(v65, qword_28149B008);
      v66 = sub_2304A5B54();
      v67 = sub_2304A5E74();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v150;
      if (v68)
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_230430000, v66, v67, "Cannot send a message for an unknown client descriptor", v70, 2u);
        MEMORY[0x23191A000](v70, -1, -1);
      }

      v71 = sub_2304A55C4();
      v72 = *(v71 - 8);
      (*(v72 + 56))(v69, 1, 1, v71);
      (*(v151 + 104))(v64, *MEMORY[0x277D468C0], v152);
      v73 = v148;
      sub_2304A53D4();
      sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
      v74 = v154;
      v75 = swift_allocError();
      (*(v153 + 32))(v76, v73, v74);
      v77 = sub_2304A3F14();
      v78 = v149;
      sub_230464B24(v69, v149, &qword_27DB53FC8, &qword_2304A7420);
      v79 = 0;
      if ((*(v72 + 48))(v78, 1, v71) != 1)
      {
        sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988]);
        v79 = sub_2304A5454();
        (*(v72 + 8))(v78, v71);
      }

      v146[2](v146, v79, v77);
      swift_unknownObjectRelease();

      v80 = v69;
    }

    else
    {
      v99 = v155;
      sub_2304A57A4();
      if (v100)
      {
        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v101 = sub_2304A5B74();
        __swift_project_value_buffer(v101, qword_28149B008);
        v102 = sub_2304A5B54();
        v103 = sub_2304A5E74();
        v104 = os_log_type_enabled(v102, v103);
        v106 = v143;
        v105 = v144;
        if (v104)
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_230430000, v102, v103, "Cannot send a message expecting a response without a timeout value", v107, 2u);
          MEMORY[0x23191A000](v107, -1, -1);
        }

        v108 = sub_2304A55C4();
        v109 = *(v108 - 8);
        (*(v109 + 56))(v105, 1, 1, v108);
        (*(v151 + 104))(v145, *MEMORY[0x277D468D0], v152);
        v110 = v142;
      }

      else
      {
        v111 = sub_2304A5794();
        if ((v112 & 1) == 0)
        {
          v153 = v111;
          v154 = v57;
          sub_2304A5784();
          v123 = v140;
          v124 = v141;
          v152 = *(v140 + 16);
          v152(v48, v99, v141);
          v125 = (*(v123 + 80) + 32) & ~*(v123 + 80);
          v126 = swift_allocObject();
          v127 = v156;
          *(v126 + 16) = sub_2304640D0;
          *(v126 + 24) = v127;
          (*(v123 + 32))(v126 + v125, v48, v124);

          sub_230450084(v53, v153, a2, sub_230464108, v126);
          v128 = (v135 + 8);

          swift_unknownObjectRelease();
          (*v128)(v53, v139);
          sub_230464970(v154, &qword_27DB53FD0, &qword_2304A7428);
        }

        if (qword_281499E38 != -1)
        {
          swift_once();
        }

        v113 = sub_2304A5B74();
        __swift_project_value_buffer(v113, qword_28149B008);
        v114 = sub_2304A5B54();
        v115 = sub_2304A5E74();
        v116 = os_log_type_enabled(v114, v115);
        v105 = v138;
        v106 = v136;
        if (v116)
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&dword_230430000, v114, v115, "Cannot send a message expecting a response without a timeout value", v117, 2u);
          MEMORY[0x23191A000](v117, -1, -1);
        }

        v108 = sub_2304A55C4();
        v109 = *(v108 - 8);
        (*(v109 + 56))(v105, 1, 1, v108);
        (*(v151 + 104))(v145, *MEMORY[0x277D468D0], v152);
        v110 = v137;
      }

      sub_2304A53D4();
      sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
      v118 = v154;
      v75 = swift_allocError();
      (*(v153 + 32))(v119, v110, v118);
      v120 = sub_2304A3F14();
      sub_230464B24(v105, v106, &qword_27DB53FC8, &qword_2304A7420);
      v121 = 0;
      if ((*(v109 + 48))(v106, 1, v108) != 1)
      {
        sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988]);
        v121 = sub_2304A5454();
        (*(v109 + 8))(v106, v108);
      }

      v146[2](v146, v121, v120);
      swift_unknownObjectRelease();

      v80 = v105;
    }

    sub_230464970(v80, &qword_27DB53FC8, &qword_2304A7420);
    sub_230464970(v57, &qword_27DB53FD0, &qword_2304A7428);
    v98 = v75;
  }

  else
  {
    v81 = v13;
    v82 = a3;
    _Block_copy(a3);
    if (qword_281499E38 != -1)
    {
      swift_once();
    }

    v83 = sub_2304A5B74();
    __swift_project_value_buffer(v83, qword_28149B008);
    v84 = sub_2304A5B54();
    v85 = sub_2304A5E74();
    v86 = v26;
    v87 = v81;
    if (os_log_type_enabled(v84, v85))
    {
      v88 = v8;
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_230430000, v84, v85, "Cannot send a message as delegate is not set", v89, 2u);
      v90 = v89;
      v8 = v88;
      MEMORY[0x23191A000](v90, -1, -1);
    }

    v91 = sub_2304A55C4();
    v92 = *(v91 - 8);
    (*(v92 + 56))(v86, 1, 1, v91);
    (*(v151 + 104))(v8, *MEMORY[0x277D468D8], v152);
    sub_2304A53D4();
    sub_230464B8C(&unk_281499F28, MEMORY[0x277D468E0]);
    v93 = v154;
    v94 = swift_allocError();
    (*(v153 + 32))(v95, v87, v93);
    v96 = sub_2304A3F14();
    sub_230464B24(v86, v23, &qword_27DB53FC8, &qword_2304A7420);
    v97 = 0;
    if ((*(v92 + 48))(v23, 1, v91) != 1)
    {
      sub_230464B8C(&qword_27DB53FD8, MEMORY[0x277D46988]);
      v97 = sub_2304A5454();
      (*(v92 + 8))(v23, v91);
    }

    v82[2](v82, v97, v96);

    sub_230464970(v86, &qword_27DB53FC8, &qword_2304A7420);
    v98 = v94;
  }
}

uint64_t sub_230464108(uint64_t a1)
{
  v3 = *(sub_2304A57B4() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23045870C(a1, v4, v5, v6);
}

uint64_t sub_23046417C(uint64_t a1)
{
  v3 = *(sub_2304A46C4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_2304A5124() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_230450EF4(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2304643E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_230464448(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2304644B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_23046453C@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

unint64_t sub_2304645C4()
{
  result = qword_281499DD8;
  if (!qword_281499DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281499DD8);
  }

  return result;
}

unint64_t sub_230464618()
{
  result = qword_27DB54060;
  if (!qword_27DB54060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54060);
  }

  return result;
}

uint64_t sub_230464708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2304548E0();
}

uint64_t sub_2304647C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB540A0, &qword_2304A7490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_230464834(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_230464898@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_23045E478(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void *sub_23046492C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_230464970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2304649EC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_230464AA4(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_230464ABC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_230464B24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_230464B8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_230464BFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_230434DEC();
}

uint64_t getEnumTagSinglePayload for ReplicationServer.ReplicationServerError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ReplicationServer.ReplicationServerError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_230464D94()
{
  result = qword_27DB54228;
  if (!qword_27DB54228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB54228);
  }

  return result;
}

uint64_t sub_230464F00(uint64_t a1)
{
  result = MEMORY[0x231919370](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

    sub_23046ADBC(&v13, v11, v12);
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

uint64_t sub_23046501C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_2304A4924() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t Daemon.__allocating_init(workloop:)(void *a1)
{
  v2 = swift_allocObject();
  Daemon.init(workloop:)(a1);
  return v2;
}

void *Daemon.init(workloop:)(void *a1)
{
  v478 = a1;
  v549[5] = *MEMORY[0x277D85DE8];
  v2 = v1;
  v511 = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FE0, &qword_2304A7430);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v449 = &v444 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54358, &qword_2304A7670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v473 = &v444 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54360, &qword_2304A7678);
  v475 = *(v9 - 8);
  v476 = v9;
  v10 = *(v475 + 64);
  MEMORY[0x28223BE20](v9);
  v474 = &v444 - v11;
  v12 = sub_2304A52F4();
  v471 = *(v12 - 8);
  v472 = v12;
  v13 = *(v471 + 64);
  MEMORY[0x28223BE20](v12);
  v470 = &v444 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54110, &unk_2304A74E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v485 = (&v444 - v17);
  v18 = sub_2304A47E4();
  v454 = *(v18 - 8);
  v455 = v18;
  v19 = *(v454 + 64);
  MEMORY[0x28223BE20](v18);
  v483 = &v444 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v487 = sub_2304A3F34();
  v497 = *(v487 - 8);
  v21 = *(v497 + 64);
  MEMORY[0x28223BE20](v487);
  v488 = &v444 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v489 = sub_2304A3FC4();
  v499 = *(v489 - 8);
  v23 = *(v499 + 64);
  v24 = MEMORY[0x28223BE20](v489);
  v448 = &v444 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v453 = &v444 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v446 = &v444 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v451 = &v444 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v452 = &v444 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v477 = &v444 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v445 = &v444 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v457 = &v444 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v447 = &v444 - v41;
  MEMORY[0x28223BE20](v40);
  v496 = &v444 - v42;
  v520 = sub_2304A4924();
  v518 = *(v520 - 1);
  v43 = *(v518 + 64);
  v44 = MEMORY[0x28223BE20](v520);
  v458 = &v444 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  OpaqueTypeConformance2 = &v444 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v513 = (&v444 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v506 = &v444 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v516 = &v444 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v515 = (&v444 - v55);
  v56 = MEMORY[0x28223BE20](v54);
  v512 = &v444 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v517 = &v444 - v59;
  MEMORY[0x28223BE20](v58);
  v519 = &v444 - v60;
  v61 = sub_2304A47A4();
  v481 = *(v61 - 8);
  v482 = v61;
  v62 = *(v481 + 64);
  MEMORY[0x28223BE20](v61);
  v494 = &v444 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2304A4894();
  v479 = *(v64 - 8);
  v480 = v64;
  v65 = *(v479 + 64);
  MEMORY[0x28223BE20](v64);
  v493 = &v444 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2304A4114();
  v68 = *(v67 - 8);
  v500 = v67;
  v501 = v68;
  v69 = *(v68 + 64);
  v70 = MEMORY[0x28223BE20](v67);
  v459 = &v444 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v491 = &v444 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v502 = (&v444 - v75);
  MEMORY[0x28223BE20](v74);
  v510 = &v444 - v76;
  v486 = sub_2304A5ED4();
  v77 = *(v486 - 1);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v486);
  v80 = &v444 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2304A5EA4();
  v82 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v444 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2304A5C64();
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85 - 8);
  v88 = &v444 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[9] = 0;
  v495 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v509 = "sponseGetRecords24@0:8^@16";
  sub_2304A5C44();
  v526 = MEMORY[0x277D84F90];
  v89 = sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230]);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  v462 = sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  v463 = v90;
  v466 = v81;
  v464 = v89;
  sub_2304A5FA4();
  v91 = *(v77 + 104);
  v461 = *MEMORY[0x277D85268];
  v468 = v77 + 104;
  v460 = v91;
  v91(v80);
  v465 = v88;
  v467 = v84;
  v469 = v80;
  v498[10] = sub_2304A5F04();
  LockStateProvider = type metadata accessor for MobileKeybagFirstLockStateProvider();
  swift_allocObject();
  v93 = sub_23047B93C();
  v549[3] = LockStateProvider;
  v549[4] = sub_230469BF8(&unk_28149A250, type metadata accessor for MobileKeybagFirstLockStateProvider);
  v549[0] = v93;
  if (qword_281499E70 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v94 = qword_28149B068;
    swift_retain_n();
    v95 = v510;
    sub_230468CF0(v510);
    v96 = type metadata accessor for DataMigrator(0);
    v97 = *(v96 + 48);
    v98 = *(v96 + 52);
    v99 = swift_allocObject();
    v492 = v94;
    *(v99 + 16) = v94;
    (*(v501 + 32))(v99 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_deviceType, v95, v500);
    *(v99 + OBJC_IVAR____TtC14ReplicatorCore12DataMigrator_stages) = MEMORY[0x277D84F90];
    v450 = v99;
    sub_230495C68();
    v100 = v520;
    v456 = 0;
    sub_23048BA74(v492);
    v101 = sub_2304A53B4();

    v102 = sub_2304A53A4();
    v528 = v101;
    v529 = sub_230469BF8(&unk_281499F38, MEMORY[0x277D468B8]);
    v526 = v102;
    v103 = sub_2304A5544();

    v104 = sub_2304A5534();
    v523 = v103;
    v524 = sub_230469BF8(&qword_281499F20, MEMORY[0x277D46958]);
    v522[0] = v104;
    v105 = sub_2304A42F4();
    v106 = *(v105 + 48);
    v107 = *(v105 + 52);
    v484 = v105;
    swift_allocObject();
    v490 = sub_2304A42E4();
    sub_2304A4884();
    sub_2304A4794();
    sub_2304A4784();
    sub_2304A4774();
    sub_230468CF0(v502);
    v108 = sub_2304A4914();
    v109 = MEMORY[0x277D46490];
    v511 = *(v108 + 16);
    if (!v511)
    {
      break;
    }

    v110 = 0;
    v510 = v518 + 88;
    LODWORD(v509) = *MEMORY[0x277D46488];
    LODWORD(v505) = *MEMORY[0x277D46490];
    v508 = (v518 + 8);
    v503 = 0x80000002304A8780;
    v504 = 0x80000002304A8740;
    v111 = MEMORY[0x277D84F98];
    v507 = v108;
    while (v110 < *(v108 + 16))
    {
      v117 = v111;
      v118 = v518;
      v119 = *(v518 + 72);
      v120 = *(v518 + 16);
      v121 = v519;
      v120(v519, v108 + ((*(v518 + 80) + 32) & ~*(v518 + 80)) + v119 * v110, v100);
      v122 = v512;
      v120(v512, v121, v100);
      v123 = (*(v118 + 88))(v122, v100);
      if (v123 == v509)
      {
        v124 = v515;
        v120(v515, v121, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v526 = v117;
        v126 = sub_23046A018(v124);
        v128 = v117[2];
        v129 = (v127 & 1) == 0;
        v130 = __OFADD__(v128, v129);
        v131 = v128 + v129;
        if (v130)
        {
          goto LABEL_101;
        }

        v132 = v127;
        if (v117[3] >= v131)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v166 = v126;
            sub_230471D40();
            v126 = v166;
          }
        }

        else
        {
          sub_23046F728(v131, isUniquelyReferenced_nonNull_native);
          v126 = sub_23046A018(v515);
          if ((v132 & 1) != (v133 & 1))
          {
            goto LABEL_111;
          }
        }

        v100 = v520;
        v153 = v526;
        if (v132)
        {
          v112 = (*(v526 + 56) + 16 * v126);
          v113 = v112[1];
          v114 = v503;
          *v112 = 0xD000000000000023;
          v112[1] = v114;
          v115 = v153;

          v116 = *v508;
          (*v508)(v515, v100);
LABEL_5:
          v116(v519, v100);
          v111 = v115;
          goto LABEL_6;
        }

        v154 = v526;
        *(v526 + 8 * (v126 >> 6) + 64) |= 1 << v126;
        v155 = v126;
        v156 = v154[6] + v126 * v119;
        v157 = v515;
        v120(v156, v515, v100);
        v158 = (v154[7] + 16 * v155);
        v159 = v503;
        *v158 = 0xD000000000000023;
        v158[1] = v159;
        v160 = *v508;
        (*v508)(v157, v100);
        v160(v519, v100);
        v161 = v154[2];
        v130 = __OFADD__(v161, 1);
        v162 = v161 + 1;
        if (v130)
        {
          goto LABEL_105;
        }

        v111 = v154;
        v154[2] = v162;
      }

      else
      {
        v132 = 0xD00000000000001FLL;
        if (v123 != v505)
        {
          goto LABEL_112;
        }

        v134 = v516;
        v120(v516, v519, v100);
        v135 = swift_isUniquelyReferenced_nonNull_native();
        v526 = v117;
        v132 = sub_23046A018(v134);
        v137 = v117[2];
        v138 = (v136 & 1) == 0;
        v139 = v137 + v138;
        if (__OFADD__(v137, v138))
        {
          goto LABEL_102;
        }

        v140 = v136;
        if (v117[3] >= v139)
        {
          if (v135)
          {
            v143 = v526;
            if (v136)
            {
              goto LABEL_27;
            }
          }

          else
          {
            sub_230471D40();
            v143 = v526;
            if (v140)
            {
              goto LABEL_27;
            }
          }
        }

        else
        {
          sub_23046F728(v139, v135);
          v141 = sub_23046A018(v516);
          if ((v140 & 1) != (v142 & 1))
          {
LABEL_111:
            sub_2304A6314();
            __break(1u);
LABEL_112:
            v526 = 0;
            v527 = 0xE000000000000000;
            sub_2304A6104();

            v526 = v132;
            v527 = 0x80000002304A8720;
            sub_230469BF8(&qword_27DB54378, MEMORY[0x277D46498]);
            v436 = sub_2304A62D4();
            v412 = v437;
            MEMORY[0x2319192E0](v436);

            LODWORD(v443) = 0;
            i = 62;
            goto LABEL_114;
          }

          v132 = v141;
          v143 = v526;
          if (v140)
          {
LABEL_27:
            v163 = (*(v143 + 56) + 16 * v132);
            v164 = v163[1];
            v165 = v504;
            *v163 = 0xD000000000000031;
            v163[1] = v165;
            v115 = v143;

            v116 = *v508;
            v100 = v520;
            (*v508)(v516, v520);
            goto LABEL_5;
          }
        }

        v144 = v143;
        *(v143 + 8 * (v132 >> 6) + 64) |= 1 << v132;
        v145 = *(v143 + 48) + v132 * v119;
        v146 = v516;
        v147 = v520;
        v120(v145, v516, v520);
        v148 = (*(v144 + 56) + 16 * v132);
        v149 = v504;
        *v148 = 0xD000000000000031;
        v148[1] = v149;
        v150 = *v508;
        (*v508)(v146, v147);
        v150(v519, v147);
        v151 = *(v144 + 16);
        v130 = __OFADD__(v151, 1);
        v152 = v151 + 1;
        if (v130)
        {
          goto LABEL_106;
        }

        v111 = v144;
        *(v144 + 16) = v152;
        v100 = v520;
      }

LABEL_6:
      v109 = MEMORY[0x277D46490];
      v108 = v507;
      if (v511 == ++v110)
      {
        goto LABEL_31;
      }
    }

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
    swift_once();
  }

  v111 = MEMORY[0x277D84F98];
LABEL_31:
  v505 = v111;

  v167 = sub_2304A4914();
  v168 = MEMORY[0x277D84F98];
  v519 = *(v167 + 16);
  if (v519)
  {
    v169 = 0;
    v516 = (v518 + 88);
    LODWORD(v515) = *MEMORY[0x277D46488];
    LODWORD(v510) = *v109;
    v509 = 0x80000002304A87B0;
    v512 = (v518 + 8);
    v508 = 0x80000002304A87E0;
    v122 = v517;
    v511 = v167;
    do
    {
      if (v169 >= *(v167 + 16))
      {
        goto LABEL_100;
      }

      v175 = v518;
      v132 = *(v518 + 72);
      v176 = *(v518 + 16);
      v177 = v520;
      v176(v122, v167 + ((*(v518 + 80) + 32) & ~*(v518 + 80)) + v132 * v169, v520);
      v178 = v506;
      v176(v506, v122, v177);
      v179 = (*(v175 + 88))(v178, v177);
      if (v179 != v515)
      {
        if (v179 != v510)
        {
          v526 = 0;
          v527 = 0xE000000000000000;
          sub_2304A6104();

          v526 = 0xD00000000000001FLL;
          v527 = 0x80000002304A8720;
          sub_230469BF8(&qword_27DB54378, MEMORY[0x277D46498]);
          v439 = sub_2304A62D4();
          v412 = v440;
          MEMORY[0x2319192E0](v439);

          LODWORD(v443) = 0;
          for (i = 74; ; i = 206)
          {
LABEL_114:
            v442 = i;
            sub_2304A6254();
            __break(1u);
LABEL_115:
            v526 = 0;
            v527 = 0xE000000000000000;
            sub_2304A6104();
            MEMORY[0x2319192E0](v122 + 4, 0x80000002304A8880);
            v522[0] = v412;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB543B0, &qword_2304A76A0);
            sub_2304A6184();
            LODWORD(v443) = 0;
          }
        }

        v190 = OpaqueTypeConformance2;
        v176(OpaqueTypeConformance2, v517, v520);
        v191 = v168;
        v192 = swift_isUniquelyReferenced_nonNull_native();
        v526 = v191;
        v193 = sub_23046A018(v190);
        v195 = v191[2];
        v196 = (v194 & 1) == 0;
        v130 = __OFADD__(v195, v196);
        v197 = v195 + v196;
        if (v130)
        {
          goto LABEL_104;
        }

        v198 = v194;
        if (v191[3] < v197)
        {
          sub_23046F728(v197, v192);
          v193 = sub_23046A018(OpaqueTypeConformance2);
          if ((v198 & 1) != (v199 & 1))
          {
            goto LABEL_111;
          }

          goto LABEL_53;
        }

        if (v192)
        {
LABEL_53:
          v168 = v526;
          if ((v198 & 1) == 0)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v212 = v193;
          sub_230471D40();
          v193 = v212;
          v168 = v526;
          if ((v198 & 1) == 0)
          {
LABEL_58:
            v168[(v193 >> 6) + 8] |= 1 << v193;
            v213 = v193;
            v214 = OpaqueTypeConformance2;
            v215 = v520;
            v176(v168[6] + v193 * v132, OpaqueTypeConformance2, v520);
            v216 = (v168[7] + 16 * v213);
            v217 = v509;
            *v216 = 0xD000000000000022;
            v216[1] = v217;
            v218 = *v512;
            (*v512)(v214, v215);
            v122 = v517;
            v218(v517, v215);
            v219 = v168[2];
            v130 = __OFADD__(v219, 1);
            v207 = v219 + 1;
            if (v130)
            {
              goto LABEL_108;
            }

            goto LABEL_59;
          }
        }

        v208 = (v168[7] + 16 * v193);
        v209 = v208[1];
        v210 = v509;
        *v208 = 0xD000000000000022;
        v208[1] = v210;

        v172 = *v512;
        v173 = OpaqueTypeConformance2;
        goto LABEL_34;
      }

      v180 = v513;
      v176(v513, v122, v177);
      v181 = v168;
      v182 = swift_isUniquelyReferenced_nonNull_native();
      v526 = v181;
      v183 = sub_23046A018(v180);
      v185 = v181[2];
      v186 = (v184 & 1) == 0;
      v130 = __OFADD__(v185, v186);
      v187 = v185 + v186;
      if (v130)
      {
        goto LABEL_103;
      }

      v188 = v184;
      if (v181[3] >= v187)
      {
        if ((v182 & 1) == 0)
        {
          v211 = v183;
          sub_230471D40();
          v183 = v211;
          v168 = v526;
          if ((v188 & 1) == 0)
          {
LABEL_49:
            v168[(v183 >> 6) + 8] |= 1 << v183;
            v200 = v183;
            v201 = v168[6] + v183 * v132;
            v202 = v513;
            v203 = v520;
            v176(v201, v513, v520);
            v204 = (v168[7] + 16 * v200);
            *v204 = 0xD00000000000001FLL;
            v204[1] = v508;
            v205 = *v512;
            (*v512)(v202, v203);
            v122 = v517;
            v205(v517, v203);
            v206 = v168[2];
            v130 = __OFADD__(v206, 1);
            v207 = v206 + 1;
            if (v130)
            {
              goto LABEL_107;
            }

LABEL_59:
            v168[2] = v207;
            goto LABEL_35;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_23046F728(v187, v182);
        v183 = sub_23046A018(v513);
        if ((v188 & 1) != (v189 & 1))
        {
          goto LABEL_111;
        }
      }

      v168 = v526;
      if ((v188 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_33:
      v170 = (v168[7] + 16 * v183);
      v171 = v170[1];
      *v170 = 0xD00000000000001FLL;
      v170[1] = v508;

      v172 = *v512;
      v173 = v513;
LABEL_34:
      v174 = v520;
      v172(v173, v520);
      v122 = v517;
      v172(v517, v174);
LABEL_35:
      v167 = v511;
      ++v169;
    }

    while (v519 != v169);
  }

  v513 = v168;

  v221 = v456;
  v220 = v457;
  sub_23048BD04(v457);
  if (v221)
  {
    v222 = *MEMORY[0x277CC91D8];
    v519 = v221;
    v516 = 0;
    v223 = v489;
    v224 = v499;
    v226 = v496;
    v225 = v497;
    v227 = v487;
LABEL_73:
    v264 = NSTemporaryDirectory();
    sub_2304A5D24();

    (*(v224 + 56))(v449, 1, 1, v223);
    (*(v225 + 104))(v488, v222, v227);
    sub_2304A3FA4();
    if (qword_281499E28 != -1)
    {
      swift_once();
    }

    v265 = sub_2304A5B74();
    __swift_project_value_buffer(v265, &unk_28149AFF0);
    v247 = *(v499 + 16);
    v509 = ((v499 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v266 = v448;
    v247(v448, v226, v223);
    v267 = v519;
    v268 = v519;
    v269 = sub_2304A5B54();
    v270 = sub_2304A5E74();

    v234 = v223;
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v517 = swift_slowAlloc();
      v526 = swift_slowAlloc();
      v507 = v247;
      v272 = v526;
      *v271 = 136446466;
      sub_230469BF8(&qword_28149AC60, MEMORY[0x277CC9260]);
      v273 = sub_2304A62D4();
      v274 = v267;
      v276 = v275;
      (*(v499 + 8))(v266, v234);
      v277 = sub_23046A5C8(v273, v276, &v526);

      *(v271 + 4) = v277;
      *(v271 + 12) = 2114;
      v278 = v274;
      v279 = _swift_stdlib_bridgeErrorToNSError();
      *(v271 + 14) = v279;
      v280 = v517;
      *v517 = v279;
      _os_log_impl(&dword_230430000, v269, v270, "Failed to create group container tmp directory; falling back to %{public}s: %{public}@", v271, 0x16u);
      sub_230464970(v280, &qword_27DB53F30, &qword_2304A7390);
      MEMORY[0x23191A000](v280, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v272);
      v281 = v272;
      v247 = v507;
      MEMORY[0x23191A000](v281, -1, -1);
      MEMORY[0x23191A000](v271, -1, -1);
    }

    else
    {

      (*(v499 + 8))(v266, v223);
    }

    goto LABEL_78;
  }

  v516 = 0;
  v526 = 7368052;
  v527 = 0xE300000000000000;
  v228 = v497;
  v229 = *(v497 + 104);
  v230 = v487;
  v231 = v488;
  LODWORD(v515) = *MEMORY[0x277CC91D8];
  v229(v488);
  sub_2304645C4();
  v232 = v447;
  sub_2304A3FB4();
  (*(v228 + 8))(v231, v230);
  v233 = (v499 + 8);
  v234 = v489;
  v517 = *(v499 + 8);
  (v517)(v220, v489);
  v235 = objc_opt_self();
  v236 = [v235 defaultManager];
  sub_2304A3F84();
  v237 = sub_2304A5D14();

  v238 = [v236 fileExistsAtPath_];

  v226 = v496;
  if (v238)
  {
    v239 = [v235 defaultManager];
    v240 = sub_2304A3F54();
    v526 = 0;
    v241 = [v239 removeItemAtURL:v240 error:&v526];

    if (!v241)
    {
      v262 = v526;
      v263 = sub_2304A3F24();

      v519 = v263;
      swift_willThrow();
      (v517)(v232, v234);
      v516 = 0;
      v227 = v487;
      v226 = v496;
      v225 = v497;
      goto LABEL_72;
    }

    v242 = v526;
    v226 = v496;
  }

  v243 = [v235 defaultManager];
  v244 = sub_2304A3F54();
  v526 = 0;
  v245 = [v243 createDirectoryAtURL:v244 withIntermediateDirectories:1 attributes:0 error:&v526];

  v246 = v526;
  if (!v245)
  {
    v260 = v526;
    v261 = sub_2304A3F24();

    v519 = v261;
    swift_willThrow();
    (v517)(v232, v234);
    v516 = 0;
    v227 = v487;
    v225 = v497;
LABEL_72:
    v223 = v234;
    v222 = v515;
    v224 = v499;
    goto LABEL_73;
  }

  v519 = v233;
  v247 = *(v499 + 16);
  v509 = ((v499 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  v247(v226, v232, v234);
  v248 = qword_281499E28;
  v249 = v246;
  if (v248 != -1)
  {
    swift_once();
  }

  v250 = sub_2304A5B74();
  __swift_project_value_buffer(v250, &unk_28149AFF0);
  v251 = v445;
  v247(v445, v226, v234);
  v252 = sub_2304A5B54();
  v253 = sub_2304A5E94();
  if (os_log_type_enabled(v252, v253))
  {
    v254 = swift_slowAlloc();
    v515 = swift_slowAlloc();
    v526 = v515;
    *v254 = 136446210;
    sub_230469BF8(&qword_28149AC60, MEMORY[0x277CC9260]);
    v255 = sub_2304A62D4();
    v257 = v256;
    (v517)(v251, v234);
    v258 = sub_23046A5C8(v255, v257, &v526);

    *(v254 + 4) = v258;
    _os_log_impl(&dword_230430000, v252, v253, "Cleared group container tmp directory at %{public}s", v254, 0xCu);
    v259 = v515;
    __swift_destroy_boxed_opaque_existential_0Tm(v515);
    MEMORY[0x23191A000](v259, -1, -1);
    MEMORY[0x23191A000](v254, -1, -1);

    (v517)(v232, v234);
  }

  else
  {

    v435 = v517;
    (v517)(v251, v234);
    v435(v232, v234);
  }

LABEL_78:
  v282 = v500;
  v517 = *(v501 + 16);
  (v517)(v491, v502, v500);
  v507 = v247;
  v247(v477, v496, v234);
  v529 = MEMORY[0x277D46380];
  v528 = v484;
  v283 = v490;
  v526 = v490;

  v284 = v513;

  sub_2304A47D4();
  v519 = sub_2304A4634();
  sub_230464834(v549, &v526);
  v285 = sub_2304A4734();
  v286 = *(v285 + 48);
  v287 = *(v285 + 52);
  v515 = v285;
  swift_allocObject();
  v512 = sub_2304A4724();
  v288 = v518;
  v289 = v458;
  v290 = v520;
  (*(v518 + 104))(v458, *MEMORY[0x277D46488], v520);
  if (*(v284 + 16))
  {
    v291 = sub_23046A018(v289);
    if (v292)
    {
      v293 = (*(v284 + 56) + 16 * v291);
      v294 = v293[1];
      v457 = *v293;
      v295 = *(v288 + 8);

      v295(v289, v520);
      goto LABEL_84;
    }

    (*(v288 + 8))(v289, v520);
  }

  else
  {
    (*(v288 + 8))(v289, v290);
  }

  v457 = 0;
  v294 = 0;
LABEL_84:
  v548 = 0;
  memset(v547, 0, sizeof(v547));
  sub_230464834(v549, &v526);
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54380, &qword_2304A7680);
  v297 = *(v296 + 48);
  v298 = *(v296 + 52);
  swift_allocObject();
  v299 = sub_2304A4604();
  v546[3] = v296;
  v546[4] = sub_230474FF4(&unk_281499FE8, &unk_27DB54380, &qword_2304A7680);
  v546[0] = v299;
  v300 = qword_281499E38;

  v301 = v459;
  if (v300 != -1)
  {
    swift_once();
  }

  v302 = sub_2304A5B74();
  v303 = __swift_project_value_buffer(v302, qword_28149B008);
  (v517)(v301, v502, v282);
  v304 = sub_2304A5B54();
  v305 = sub_2304A5E94();
  v306 = os_log_type_enabled(v304, v305);
  v511 = v294;
  v458 = v303;
  if (v306)
  {
    v307 = swift_slowAlloc();
    v308 = swift_slowAlloc();
    v526 = v308;
    *v307 = 136446210;
    sub_230469BF8(qword_281499FF8, MEMORY[0x277D46338]);
    v309 = sub_2304A62D4();
    v311 = v310;
    (*(v501 + 8))(v301, v500);
    v312 = sub_23046A5C8(v309, v311, &v526);

    *(v307 + 4) = v312;
    _os_log_impl(&dword_230430000, v304, v305, "Creating zone advertisers for device type %{public}s", v307, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v308);
    v282 = v500;
    MEMORY[0x23191A000](v308, -1, -1);
    MEMORY[0x23191A000](v307, -1, -1);
  }

  else
  {

    (*(v501 + 8))(v301, v282);
  }

  v313 = v516;
  v314 = sub_2304A4914();
  MEMORY[0x28223BE20](v314);
  v442 = v549;
  v443 = v502;
  v315 = sub_23046501C(MEMORY[0x277D84F90], sub_230474040, v441, v314);

  v316 = *(v315 + 16);
  v503 = v313;
  if (v316 == 1)
  {
    sub_230464834(v315 + 32, v545);
  }

  else
  {
    v317 = sub_2304A4714();
    v318 = *(v317 + 48);
    v319 = *(v317 + 52);
    swift_allocObject();
    v320 = sub_2304A4704();
    v545[3] = v317;
    v545[4] = MEMORY[0x277D46440];

    v545[0] = v320;
  }

  v321 = v515;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_unknownObjectRetain();
  sub_2304A40E4();
  sub_2304A40D4();
  v322 = sub_2304A48B4();
  v323 = *(v322 + 48);
  v324 = *(v322 + 52);
  swift_allocObject();
  v325 = sub_2304A48A4();
  v529 = MEMORY[0x277D46378];
  v528 = v484;
  v526 = v283;
  v326 = v480;
  v523 = v480;
  v524 = MEMORY[0x277D46478];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v522);
  (*(v479 + 16))(boxed_opaque_existential_1, v493, v326);
  v328 = v482;
  v543 = v482;
  v544 = MEMORY[0x277D46468];
  v329 = __swift_allocate_boxed_opaque_existential_1(v542);
  (*(v481 + 16))(v329, v494, v328);
  (v517)(v491, v502, v282);

  swift_unknownObjectRetain();
  v330 = v325;

  sub_2304A4504();
  sub_230464834(v545, v541);
  sub_230464834(v546, v540);
  v539 = MEMORY[0x277D46448];
  v538 = v321;
  v537[0] = v512;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54390, &qword_2304A7688);
  v331 = v501;
  v332 = *(v501 + 72);
  v333 = (*(v501 + 80) + 32) & ~*(v501 + 80);
  v334 = swift_allocObject();
  *(v334 + 16) = xmmword_2304A7660;
  v335 = *(v331 + 104);
  v335(v334 + v333, *MEMORY[0x277D46310], v282);
  v335(v334 + v333 + v332, *MEMORY[0x277D46328], v282);
  sub_23047405C(v547, v536);
  memset(v535, 0, sizeof(v535));
  v534[4] = MEMORY[0x277D46480];
  v534[3] = v322;
  v504 = v330;
  v534[0] = v330;
  v336 = sub_2304A40F4();
  v337 = *(v336 + 48);
  v338 = *(v336 + 52);
  v339 = v336;
  v515 = v336;
  swift_allocObject();

  v441[0] = 0;
  v441[1] = 0;
  v442 = v535;
  v443 = v534;
  v340 = sub_2304A40A4();
  sub_23047405C(v547, v522);
  v529 = MEMORY[0x277D462C8];
  v530 = MEMORY[0x277D462B0];
  v528 = v339;
  v526 = v340;
  v520 = v340;
  v341 = sub_2304A45D4();
  v342 = *(v341 + 48);
  v343 = *(v341 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();

  v508 = sub_2304A45B4();
  type metadata accessor for NotifydNotificationPoster();
  v344 = swift_allocObject();
  v506 = type metadata accessor for DebouncingNotificationPoster();
  v345 = swift_allocObject();
  v517 = sub_2304739F8(v344, v345);
  v346 = sub_2304A5474();

  v518 = sub_2304A5464();
  v347 = sub_2304A5904();

  v348 = sub_2304A58F4();
  v516 = v348;
  v349 = sub_2304A56A4();

  v350 = sub_2304A5694();
  v351 = type metadata accessor for AllowedClientVerifier();
  v352 = swift_allocObject();
  v353 = sub_23048A900();
  v354 = sub_230473E0C(v353);

  *(v352 + 16) = v354;
  v529 = MEMORY[0x277D462B8];
  v530 = MEMORY[0x277D462C0];
  v531 = MEMORY[0x277D462C8];
  v532 = MEMORY[0x277D462D0];
  v533 = MEMORY[0x277D462B0];
  v528 = v515;
  v526 = v520;
  v544 = MEMORY[0x277D46910];
  v485 = v346;
  v543 = v346;
  v542[0] = v518;
  v541[4] = MEMORY[0x277D46AB8];
  v541[3] = v347;
  v541[0] = v348;
  v540[4] = MEMORY[0x277D469E0];
  v540[3] = v349;
  v540[0] = v350;
  v539 = &protocol witness table for AllowedClientVerifier;
  v538 = v351;
  v537[0] = v352;
  v355 = v352;
  v536[4] = &off_28451C1E8;
  v536[3] = v506;
  v536[0] = v517;
  v356 = type metadata accessor for ReplicationServer();
  v357 = objc_allocWithZone(v356);
  v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled] = 0;
  v358 = OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54210, &qword_2304A7570);
  v359 = swift_allocObject();
  *(v359 + 16) = 0;
  *&v357[v358] = v359;
  v360 = MEMORY[0x277D84FA0];
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_clients] = MEMORY[0x277D84FA0];
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_devices] = 0;
  v361 = MEMORY[0x277D84F98];
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_dataSources] = MEMORY[0x277D84F98];
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_subscriptions] = v360;
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_predefinedClientDescriptorIDs] = v360;
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_lock_incomingMessages] = v361;
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener] = 0;
  sub_230474F80(&v526, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator]);
  v362 = &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService];
  v363 = OpaqueTypeConformance2;
  *v362 = v519;
  v362[1] = v363;
  sub_230464834(v542, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_recordDataStore]);
  sub_230464834(v541, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientDescriptorStore]);
  sub_230464834(v540, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_clientSettingsStore]);
  sub_230464834(v537, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_allowedClientVerifier]);
  sub_230464834(v536, &v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_notificationPoster]);
  v364 = v478;
  swift_unknownObjectRetain();

  v365 = v364;

  v510 = v350;

  v491 = v355;

  sub_2304A5C44();
  v522[0] = MEMORY[0x277D84F90];
  sub_2304A5FA4();
  v460(v469, v461, v486);
  OpaqueTypeConformance2 = v365;
  *&v357[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue] = sub_2304A5F04();
  v521.receiver = v357;
  v521.super_class = v356;
  v366 = objc_msgSendSuper2(&v521, sel_init);
  v367 = v470;
  sub_2304A5564();
  sub_2304A52E4();
  (*(v471 + 8))(v367, v472);
  sub_2304A5554();
  v368 = sub_2304A5D14();

  v369 = sub_2304A5D14();

  v370 = [objc_opt_self() configurationWithDomain:v368 service:v369];

  v371 = swift_allocObject();
  *(v371 + 16) = v366;
  v524 = sub_2304740CC;
  v525 = v371;
  v522[0] = MEMORY[0x277D85DD0];
  v522[1] = 1107296256;
  v522[2] = sub_2304318E8;
  v523 = &block_descriptor_0;
  v372 = _Block_copy(v522);
  v373 = objc_opt_self();
  v374 = v366;
  v375 = [v373 listenerWithConfiguration:v370 handler:v372];
  _Block_release(v372);

  v376 = *&v374[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener];
  *&v374[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener] = v375;
  v506 = v375;

  v522[0] = sub_2304A48E4();
  v535[0] = *&v374[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_queue];
  v377 = v535[0];
  v378 = sub_2304A5EC4();
  v379 = v473;
  (*(*(v378 - 8) + 56))(v473, 1, 1, v378);
  v380 = v377;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB543A8, &qword_2304A7698);
  sub_230474FF4(&unk_281499E00, &qword_27DB543A8, &qword_2304A7698);
  sub_2304740D4();
  v381 = v474;
  sub_2304A5BD4();
  sub_230464970(v379, &qword_27DB54358, &qword_2304A7670);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_230474FF4(&qword_281499E20, &unk_27DB54360, &qword_2304A7678);
  v382 = v476;
  sub_2304A5BE4();

  v383 = v381;
  v384 = OpaqueTypeConformance2;
  (*(v475 + 8))(v383, v382);
  swift_beginAccess();
  sub_2304A5B94();
  swift_endAccess();

  v385 = *&v374[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService];
  v386 = *&v374[OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_syncService + 8];
  swift_getObjectType();
  sub_230469BF8(&qword_28149A868, type metadata accessor for ReplicationServer);
  swift_unknownObjectRetain();
  sub_2304A4324();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v536);
  __swift_destroy_boxed_opaque_existential_0Tm(v537);
  __swift_destroy_boxed_opaque_existential_0Tm(v540);
  __swift_destroy_boxed_opaque_existential_0Tm(v541);
  __swift_destroy_boxed_opaque_existential_0Tm(v542);
  __swift_destroy_boxed_opaque_existential_0Tm(&v526);
  v387 = v520;
  if (v511)
  {

    v388 = v510;

    v389 = v517;

    v390 = sub_2304A5D14();
  }

  else
  {

    v388 = v510;

    v389 = v517;

    v390 = 0;
  }

  v391 = [objc_allocWithZone(MEMORY[0x277D18778]) initWithService_];

  if (!v391)
  {
    __break(1u);
  }

  v392 = objc_allocWithZone(type metadata accessor for ReplicatorControlServer());
  v393 = v384;
  v394 = v478;
  v395 = sub_230474144(v387, v389, v388, v391, v478, v392);

  v515 = v393;
  v396 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v397 = sub_230476D94();
  v529 = &off_28451C130;
  v528 = v396;
  v526 = v397;
  v398 = objc_allocWithZone(type metadata accessor for StateCaptureServer());
  v399 = v528;
  v400 = __swift_mutable_project_boxed_opaque_existential_1(&v526, v528);
  v401 = *(*(v399 - 1) + 64);
  MEMORY[0x28223BE20](v400);
  v403 = (&v444 - ((v402 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v404 + 16))(v403);
  v405 = *v403;

  v406 = sub_230472D48(v405, v394, v398);
  __swift_destroy_boxed_opaque_existential_0Tm(&v526);

  sub_23047323C(v407);
  sub_23047323C(v387);
  sub_23047323C(v387);
  sub_23047323C(v387);

  v408 = v374;
  OpaqueTypeConformance2 = v397;
  sub_230473360(v408);

  v122 = 0xD00000000000001FLL;
  v409 = v498;
  v498[8] = v492;
  v410 = v508;
  v409[2] = v387;
  v409[3] = v410;
  v409[4] = v408;
  v409[5] = v406;
  v409[6] = v395;

  v492 = v408;

  v495 = v406;
  v506 = v395;
  v411 = v451;
  v412 = v503;
  sub_23048BD04(v451);
  if (v412)
  {
    goto LABEL_115;
  }

  v526 = 0x7364726F636572;
  v527 = 0xE700000000000000;
  v413 = v497;
  v414 = *(v497 + 104);
  v415 = v487;
  v416 = v488;
  LODWORD(v511) = *MEMORY[0x277CC91D8];
  v513 = (v497 + 104);
  v505 = v414;
  v414(v488);
  v417 = sub_2304645C4();
  v418 = v452;
  v503 = v417;
  sub_2304A3FB4();
  v419 = *(v413 + 8);
  v497 = v413 + 8;
  v486 = v419;
  v419(v416, v415);
  v420 = *(v499 + 8);
  v421 = v489;
  v420(v411, v489);
  v422 = v477;
  v507(v477, v418, v421);
  v423 = v490;

  v424 = v518;

  v425 = v516;

  v426 = sub_230473480(v423, v424, v425, v422);
  v427 = v418;
  v428 = v420;
  v420(v427, v421);
  v498[7] = v426;
  v429 = v453;
  sub_23048BD04(v453);
  v526 = 0x7364726F636572;
  v527 = 0xE700000000000000;
  v430 = v487;
  v431 = v488;
  v505(v488, v511, v487);
  v432 = v446;
  sub_2304A3FB4();
  v486(v431, v430);
  v428(v429, v421);
  v529 = MEMORY[0x277D46910];
  v528 = v485;
  v526 = v518;

  sub_2304A5304();

  swift_unknownObjectRelease();

  v428(v432, v421);
  sub_230464970(v547, &unk_27DB54398, &qword_2304A7690);
  (*(v454 + 8))(v483, v455);
  v428(v496, v421);
  (*(v481 + 8))(v494, v482);
  (*(v479 + 8))(v493, v480);
  __swift_destroy_boxed_opaque_existential_0Tm(v545);
  __swift_destroy_boxed_opaque_existential_0Tm(v546);
  (*(v501 + 8))(v502, v500);
  __swift_destroy_boxed_opaque_existential_0Tm(v549);
  __swift_destroy_boxed_opaque_existential_0Tm(&v526);
  result = v498;
  v434 = *MEMORY[0x277D85DE8];
  return result;
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

id sub_230468CF0@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result deviceClass];

    v5 = sub_2304A4114();
    v6 = *(*(v5 - 8) + 104);
    if (v4 > 4)
    {
      v7 = MEMORY[0x277D46330];
    }

    else
    {
      v7 = qword_2788C0D40[v4];
    }

    v8 = *v7;

    return v6(a1, v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_230468DC0()
{
  v1 = v0;
  v2 = *v0;
  v37 = sub_2304A52F4();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2304A4114();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0[5] + OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener);
  if (!v12)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v12 activate];
  v13 = v0[10];
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230469604;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v13, v14);
  _Block_release(v14);
  sub_230469664();
  sub_230468CF0(v11);
  v15 = (*(v8 + 88))(v11, v7);
  v16 = v15 == *MEMORY[0x277D46320] || v15 == *MEMORY[0x277D46328];
  v17 = v16;
  if (!v16)
  {
    (*(v8 + 8))(v11, v7);
  }

  if (qword_281499E38 != -1)
  {
    swift_once();
  }

  v18 = sub_2304A5B74();
  __swift_project_value_buffer(v18, qword_28149B008);
  v19 = sub_2304A5B54();
  v20 = sub_2304A5E94();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    if (v17)
    {
      v23 = 0x64656C62616E65;
    }

    else
    {
      v23 = 0x64656C6261736964;
    }

    if (v17)
    {
      v24 = 0xE700000000000000;
    }

    else
    {
      v24 = 0xE900000000000029;
    }

    v25 = sub_23046A5C8(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_230430000, v19, v20, "Replicator is %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x23191A000](v22, -1, -1);
    MEMORY[0x23191A000](v21, -1, -1);
  }

  if (v17)
  {
    sub_2304692B0();
    v26 = v1[3];
    sub_2304A45C4();
    v27 = v1[4];
    v28 = 1;
    *(v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled) = 1;
    v29 = *(v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 64);
    __swift_project_boxed_opaque_existential_5Tm((v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator), *(v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_replicator + 24));
    sub_2304A4274();
    sub_230435144();
  }

  else
  {
    v28 = 0;
    v27 = v1[4];
    *(v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_isEnabled) = 0;
  }

  v30 = *(v27 + OBJC_IVAR____TtC14ReplicatorCore17ReplicationServer_listener);
  if (!v30)
  {
    goto LABEL_27;
  }

  [v30 activate];
  v31 = v1[6];
  *(v31 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_isXPCServerEnabled) = v28;
  v32 = *(v31 + OBJC_IVAR____TtC14ReplicatorCore23ReplicatorControlServer_listener);
  if (v32)
  {
    [v32 activate];
    v33 = objc_opt_self();
    sub_2304A52D4();
    sub_2304A52E4();
    (*(v3 + 8))(v6, v37);
    v34 = sub_2304A5D14();

    v35 = [v33 activateManualDomain_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_2304692B0()
{
  v1 = *(v0 + 64);
  sub_2304A5A94();
  v2 = sub_2304A5AC4();

  if ((v2 & 1) == 0)
  {
    v4 = *(v0 + 56);
    v5 = *&v4[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_230474EF8;
    *(v7 + 24) = v6;
    aBlock[4] = sub_230474F00;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_230478D34;
    aBlock[3] = &block_descriptor_20;
    v8 = _Block_copy(aBlock);
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      return sub_2304A5B34();
    }
  }

  return result;
}

uint64_t sub_2304695BC()
{
  sub_2304A5A94();
  sub_2304A5B14();
}

uint64_t sub_230469604(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_230469664()
{
  v1 = v0;
  v24 = sub_2304A5C04();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2304A5C64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2304A5C14();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2304A5B84();
  signal(15, v16);
  sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  (*(v12 + 104))(v15, *MEMORY[0x277D851C8], v11);
  v17 = sub_2304A5F14();
  (*(v12 + 8))(v15, v11);
  sub_230474F08(0, &unk_281499D70, 0x277D85CA0);
  v18 = v17;
  v19 = sub_2304A5F24();

  v20 = *(v1 + 72);
  *(v1 + 72) = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  aBlock[4] = j__xpc_transaction_exit_clean;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304699EC;
  aBlock[3] = &block_descriptor_23;
  v21 = _Block_copy(aBlock);
  sub_2304A5C34();
  sub_230469A30();
  sub_2304A5F34();
  _Block_release(v21);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v5, v24);
  (*(v7 + 8))(v10, v6);
  if (*(v1 + 72))
  {
    v22 = *(v1 + 72);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2304A5F44();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_2304699EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_230469A30()
{
  sub_2304A5C04();
  sub_230469BF8(&qword_281499DE8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544D0, &qword_2304A7788);
  sub_230474FF4(&qword_281499DC8, &unk_27DB544D0, &qword_2304A7788);
  return sub_2304A5FA4();
}

uint64_t Daemon.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_230469BF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_230469C40(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2304A6394();
  sub_2304A5D54();
  v6 = sub_2304A63B4();

  return sub_23046A214(a1, a2, v6);
}

unint64_t sub_230469CB8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2304A4984();
  v4 = MEMORY[0x277D464B8];
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
  v5 = sub_2304A5CF4();
  return sub_23046A4D8(a1, v5, MEMORY[0x277D464B8], &unk_281499FC0, v4);
}

unint64_t sub_230469D9C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2304A4FF4();
  v5 = MEMORY[0x277D46790];
  sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790]);
  v6 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v6, MEMORY[0x277D46790], &qword_281499F80, v5, MEMORY[0x277D467B8]);
}

unint64_t sub_230469E70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2304A4084();
  v5 = MEMORY[0x277CC95F0];
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
  v6 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v6, MEMORY[0x277CC95F0], &unk_27DB54450, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_230469F44(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2304A41D4();
  v5 = MEMORY[0x277D46350];
  sub_230469BF8(&qword_27DB54480, MEMORY[0x277D46350]);
  v6 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v6, MEMORY[0x277D46350], &qword_27DB54488, v5, MEMORY[0x277D46360]);
}

unint64_t sub_23046A018(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2304A4924();
  v5 = MEMORY[0x277D46498];
  sub_230469BF8(&qword_281499FE0, MEMORY[0x277D46498]);
  v6 = sub_2304A5CF4();
  return sub_23046A2CC(a1, v6, MEMORY[0x277D46498], &qword_281499FD8, v5, MEMORY[0x277D464A8]);
}

unint64_t sub_23046A0EC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2304A6384();

  return sub_23046A46C(a1, v4);
}

unint64_t sub_23046A130(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2304A4A04();
  v4 = MEMORY[0x277D464E8];
  sub_230469BF8(&qword_281499FB8, MEMORY[0x277D464E8]);
  v5 = sub_2304A5CF4();
  return sub_23046A4D8(a1, v5, MEMORY[0x277D464E8], &qword_281499FB0, v4);
}

unint64_t sub_23046A214(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2304A62F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23046A2CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
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
      sub_230469BF8(v24, v25);
      v20 = sub_2304A5D04();
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

unint64_t sub_23046A46C(uint64_t a1, uint64_t a2)
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

unint64_t sub_23046A4D8(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v6 = -1 << *(v5 + 32);
  v7 = a2 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v10 = ~v6;
    a3(0);
    sub_230469BF8(a4, a5);
    do
    {
      v12 = *(*(v5 + 48) + 8 * v7);
      if (sub_2304A5D04())
      {
        break;
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

uint64_t sub_23046A5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23046A694(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_230474E9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_23046A694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23046A7A0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2304A6124();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23046A7A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23046A7EC(a1, a2);
  sub_23046A91C(&unk_28451BAD0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23046A7EC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23046AA08(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2304A6124();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2304A5D84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23046AA08(v10, 0);
        result = sub_2304A60E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23046A91C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23046AA7C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23046AA08(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E0, &qword_2304A7790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23046AA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544E0, &qword_2304A7790);
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

uint64_t sub_23046AB70(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_2304A6054();

    if (v9)
    {

      type metadata accessor for Client();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_23045A440(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_23046BFE4(v22 + 1, &qword_27DB54500, &qword_2304A7568);
    }

    v20 = v8;
    sub_230464EC4();

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for Client();
  v11 = *(v6 + 40);
  v12 = sub_2304A5F64();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_230432278(v20, v14, isUniquelyReferenced_nonNull_native, &qword_27DB54500, &qword_2304A7568, type metadata accessor for Client);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_2304A5F74();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_23046ADBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2304A6394();
  sub_2304A5D54();
  v9 = sub_2304A63B4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2304A62F4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_23046C560(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_23046AF0C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2304A6054();

    if (v8)
    {

      sub_2304A4984();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = sub_2304A6044();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = sub_23045A47C(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      sub_23046B9E0(v19 + 1);
    }

    sub_23045A8DC(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  sub_2304A4984();
  v10 = *(v6 + 40);
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
  v11 = sub_2304A5CF4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;

    sub_23046C6E0(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  sub_230469BF8(&unk_281499FC0, MEMORY[0x277D464B8]);
  while (1)
  {
    v22 = *(*(v6 + 48) + 8 * v13);
    if (sub_2304A5D04())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_23046B1AC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2304A5294();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850]);
  v36 = a2;
  v13 = sub_2304A5CF4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_230469BF8(&unk_281499F50, MEMORY[0x277D46850]);
      v23 = sub_2304A5D04();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23046C8C8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23046B48C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2304A4084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_2304A5CF4();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_230469BF8(&unk_27DB54450, MEMORY[0x277CC95F0]);
      v23 = sub_2304A5D04();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23046CB90(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23046B780(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  result = sub_2304A60B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23046B9E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  result = sub_2304A60B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
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
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
      result = sub_2304A5CF4();
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
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
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
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23046BC74(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2304A5294();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  result = sub_2304A60B4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850]);
      result = sub_2304A5CF4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23046BFE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2304A60B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_2304A5F64();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_23046C204(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2304A4084();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  result = sub_2304A60B4();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
      result = sub_2304A5CF4();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23046C560(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_23046B780(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_23046CE6C();
      goto LABEL_16;
    }

    sub_23046D4CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2304A6394();
  sub_2304A5D54();
  result = sub_2304A63B4();
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

      result = sub_2304A62F4();
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
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046C6E0(uint64_t result, unint64_t a2, char a3)
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
    sub_23046B9E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23046CFC8();
      goto LABEL_12;
    }

    sub_23046D704(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2304A4984();
  sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
  result = sub_2304A5CF4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_230469BF8(&unk_281499FC0, MEMORY[0x277D464B8]);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = sub_2304A5D04();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046C8C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2304A5294();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23046BC74(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23046D294(MEMORY[0x277D46850], &qword_27DB544A8, &unk_2304A7BB0);
      goto LABEL_12;
    }

    sub_23046D97C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850]);
  v15 = sub_2304A5CF4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_230469BF8(&unk_281499F50, MEMORY[0x277D46850]);
      v23 = sub_2304A5D04();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

uint64_t sub_23046CB90(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2304A4084();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23046C204(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23046D294(MEMORY[0x277CC95F0], &unk_27DB545E0, &unk_2304A7B60);
      goto LABEL_12;
    }

    sub_23046DEA4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
  v15 = sub_2304A5CF4();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_230469BF8(&unk_27DB54450, MEMORY[0x277CC95F0]);
      v23 = sub_2304A5D04();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2304A6304();
  __break(1u);
  return result;
}

void *sub_23046CE6C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  v2 = *v0;
  v3 = sub_2304A60A4();
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

void *sub_23046CFC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  v2 = *v0;
  v3 = sub_2304A60A4();
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

id sub_23046D154(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2304A60A4();
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
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

void *sub_23046D294(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_2304A60A4();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_23046D4CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54440, &qword_2304A7740);
  result = sub_2304A60B4();
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
      sub_2304A6394();

      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_23046D704(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B0, &unk_2304A74C0);
  result = sub_2304A60B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);

      result = sub_2304A5CF4();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
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

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_23046D97C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2304A5294();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A8, &unk_2304A7BB0);
  v10 = sub_2304A60B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_230469BF8(&qword_281499F60, MEMORY[0x277D46850]);
      result = sub_2304A5CF4();
      v25 = -1 << *(v10 + 32);
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
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23046DC98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2304A60B4();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_2304A5F64();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_23046DEA4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_2304A4084();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB545E0, &unk_2304A7B60);
  v10 = sub_2304A60B4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
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
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
      result = sub_2304A5CF4();
      v25 = -1 << *(v10 + 32);
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
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
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

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23046E1E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54420, &qword_2304A7728);
  v38 = a2;
  result = sub_2304A6284();
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
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_23046E490(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  v34 = a2;
  result = sub_2304A6284();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
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
      v35 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
      result = sub_2304A5CF4();
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
      v5 = v33;
      v13 = v35;
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
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23046E774(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A0, &qword_2304A7770);
  v34 = a2;
  result = sub_2304A6284();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v33 = v5;
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
      v35 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_2304A4984();
      sub_230469BF8(&qword_281499FD0, MEMORY[0x277D464B8]);
      result = sub_2304A5CF4();
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
      v5 = v33;
      v13 = v35;
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
        v35 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero(v10, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23046EA58(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2304A4FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54498, &qword_2304A7768);
  v43 = a2;
  result = sub_2304A6284();
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
      sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790]);
      result = sub_2304A5CF4();
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

uint64_t sub_23046EE34(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2304A4FF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v43 - v11;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54490, &qword_2304A7760);
  v49 = a2;
  result = sub_2304A6284();
  v54 = result;
  if (*(v12 + 16))
  {
    v44 = v3;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v12;
    v47 = v7;
    v50 = (v7 + 32);
    v21 = v54 + 64;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v52 = (v19 - 1) & v19;
LABEL_17:
      v29 = *(v12 + 48);
      v51 = *(v47 + 72);
      v30 = v51 * (v26 | (v15 << 6));
      if (v49)
      {
        v31 = *v50;
        v32 = v48;
        (*v50)(v48, v29 + v30, v6);
      }

      else
      {
        v31 = *v45;
        v32 = v48;
        (*v45)(v48, v29 + v30, v6);
      }

      v31(v53, *(v12 + 56) + v30, v6);
      v33 = v54;
      v34 = *(v54 + 40);
      sub_230469BF8(&qword_281499F88, MEMORY[0x277D46790]);
      result = sub_2304A5CF4();
      v35 = -1 << *(v33 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = v54;
      v24 = v51 * v22;
      v25 = *v50;
      (*v50)((*(v54 + 48) + v51 * v22), v32, v6);
      result = (v25)(*(v23 + 56) + v24, v53, v6);
      ++*(v23 + 16);
      v12 = v46;
      v19 = v52;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v52 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v12 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v54;
  return result;
}

uint64_t sub_23046F280(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = sub_2304A4F74();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A4084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B8, &qword_2304A7778);
  v52 = a2;
  result = sub_2304A6284();
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
      sub_230469BF8(&qword_28149AC58, MEMORY[0x277CC95F0]);
      result = sub_2304A5CF4();
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

uint64_t sub_23046F728(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_2304A4924();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54508, &qword_2304A77A8);
  v48 = a2;
  result = sub_2304A6284();
  v14 = result;
  if (*(v11 + 16))
  {
    v53 = v10;
    v44 = v3;
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
    v45 = (v7 + 16);
    v46 = v11;
    v47 = v7;
    v49 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v28 = v25 | (v15 << 6);
      v29 = *(v11 + 48);
      v52 = *(v47 + 72);
      v30 = v29 + v52 * v28;
      if (v48)
      {
        (*v49)(v53, v30, v6);
        v31 = (*(v11 + 56) + 16 * v28);
        v32 = *v31;
        v50 = v31[1];
        v51 = v32;
      }

      else
      {
        (*v45)(v53, v30, v6);
        v33 = (*(v11 + 56) + 16 * v28);
        v34 = *v33;
        v50 = v33[1];
        v51 = v34;
      }

      v35 = *(v14 + 40);
      sub_230469BF8(&qword_281499FE0, MEMORY[0x277D46498]);
      result = sub_2304A5CF4();
      v36 = -1 << *(v14 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v21 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v21 + 8 * v38);
          if (v42 != -1)
          {
            v22 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v37) & ~*(v21 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v49)(*(v14 + 48) + v52 * v22, v53, v6);
      v23 = (*(v14 + 56) + 16 * v22);
      v24 = v50;
      *v23 = v51;
      v23[1] = v24;
      ++*(v14 + 16);
      v11 = v46;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v19 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v11 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v16, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v43;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_23046FB10(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54470, &qword_2304A7758);
  result = sub_2304A6284();
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
      result = sub_2304A6384();
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

uint64_t sub_23046FD80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54468, &qword_2304A7750);
  v38 = a2;
  result = sub_2304A6284();
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
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_230470050(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_2304A6284();
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
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

uint64_t sub_2304703D4(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_2304A5054();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544C0, &qword_2304A7780);
  v41 = a2;
  result = sub_2304A6284();
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
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_2304A6384();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_230470720(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
  v36 = a2;
  result = sub_2304A6284();
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
        sub_230462958(v25, v37);
      }

      else
      {
        sub_230474E9C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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
      result = sub_230462958(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_2304709D8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_2304A4A64();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54430, &qword_2304A7738);
  v41 = a2;
  result = sub_2304A6284();
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
    v37 = v3;
    v38 = (v6 + 16);
    v39 = v9;
    v40 = v6;
    v42 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(v9 + 56);
      v26 = *(*(v9 + 48) + 8 * v24);
      v46 = v26;
      v43 = *(v40 + 72);
      v27 = v25 + v43 * v24;
      if (v41)
      {
        (*v42)(v44, v27, v45);
      }

      else
      {
        (*v38)(v44, v27, v45);
      }

      v28 = *(v12 + 40);
      sub_2304A4A04();
      sub_230469BF8(&qword_281499FB8, MEMORY[0x277D464E8]);
      result = sub_2304A5CF4();
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
      *(*(v12 + 48) + 8 * v20) = v26;
      result = (*v42)(*(v12 + 56) + v43 * v20, v44, v45);
      ++*(v12 + 16);
      v9 = v39;
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

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v14, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_230470D94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54428, &qword_2304A7730);
  v36 = a2;
  result = sub_2304A6284();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_230474E48(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_2304A6394();
      sub_2304A5D54();
      result = sub_2304A63B4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_230471078()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54420, &qword_2304A7728);
  v2 = *v0;
  v3 = sub_2304A6274();
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

void *sub_2304711E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53FB8, &unk_2304A7A50);
  v2 = *v0;
  v3 = sub_2304A6274();
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

void *sub_23047134C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544A0, &qword_2304A7770);
  v2 = *v0;
  v3 = sub_2304A6274();
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

char *sub_2304714B0()
{
  v1 = v0;
  v32 = sub_2304A4FF4();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54498, &qword_2304A7768);
  v4 = *v0;
  v5 = sub_2304A6274();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
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

char *sub_230471724()
{
  v1 = v0;
  v35 = sub_2304A4FF4();
  v39 = *(v35 - 8);
  v2 = v39[8];
  v3 = MEMORY[0x28223BE20](v35);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54490, &qword_2304A7760);
  v6 = *v0;
  v7 = sub_2304A6274();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
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

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
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

char *sub_2304719EC()
{
  v1 = v0;
  v43 = sub_2304A4F74();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2304A4084();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB544B8, &qword_2304A7778);
  v6 = *v0;
  v7 = sub_2304A6274();
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

char *sub_230471D40()
{
  v1 = v0;
  v36 = sub_2304A4924();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54508, &qword_2304A77A8);
  v4 = *v0;
  v5 = sub_2304A6274();
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
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
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

void *sub_230471FCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54470, &qword_2304A7758);
  v2 = *v0;
  v3 = sub_2304A6274();
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

void *sub_230472128()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54468, &qword_2304A7750);
  v2 = *v0;
  v3 = sub_2304A6274();
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

void *sub_2304722C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_2304A6274();
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

void *sub_230472548()
{
  v1 = v0;
  v30 = sub_2304A5054();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB544C0, &qword_2304A7780);
  v4 = *v0;
  v5 = sub_2304A6274();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
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

void *sub_2304727B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB53F58, &unk_2304A7970);
  v2 = *v0;
  v3 = sub_2304A6274();
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
        sub_230474E9C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_230462958(v25, (*(v4 + 56) + v22));
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

void *sub_230472954()
{
  v1 = v0;
  v30 = sub_2304A4A64();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB54430, &qword_2304A7738);
  v4 = *v0;
  v5 = sub_2304A6274();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v27 = v32 + 32;
    for (i = v32 + 16; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
      (*(v20 + 32))(*(v24 + 56) + v21, v23, v22);
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

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
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

void *sub_230472BC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54428, &qword_2304A7730);
  v2 = *v0;
  v3 = sub_2304A6274();
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

        result = sub_230474E48(v22, *(&v22 + 1));
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

char *sub_230472D48(uint64_t a1, void *a2, char *a3)
{
  v31 = a2;
  v5 = sub_2304A52F4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2304A5ED4();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v30);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2304A5EA4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_2304A5C64();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v37[3] = type metadata accessor for StateCaptureService();
  v37[4] = &off_28451C130;
  v37[0] = a1;
  *&a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener] = 0;
  v16 = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  v29[1] = "ator.xpc.MigrationClient";
  v29[2] = v16;
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v8 + 104))(v11, *MEMORY[0x277D85268], v30);
  v17 = v31;
  *&a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_requestProcessingQueue] = sub_2304A5F04();
  sub_230464834(v37, &a3[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_stateCaptureManager]);
  v18 = type metadata accessor for StateCaptureServer();
  v36.receiver = a3;
  v36.super_class = v18;
  v19 = objc_msgSendSuper2(&v36, sel_init);
  v20 = v32;
  sub_2304A56C4();
  sub_2304A52E4();
  (*(v33 + 8))(v20, v34);
  sub_2304A56B4();
  v21 = sub_2304A5D14();

  v22 = sub_2304A5D14();

  v23 = [objc_opt_self() configurationWithDomain:v21 service:v22];

  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  aBlock[4] = sub_230474F78;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2304318E8;
  aBlock[3] = &block_descriptor_41;
  v25 = _Block_copy(aBlock);
  v26 = [objc_opt_self() listenerWithConfiguration:v23 handler:v25];

  _Block_release(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);

  v27 = *&v19[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener];
  *&v19[OBJC_IVAR____TtC14ReplicatorCore18StateCaptureServer_listener] = v26;

  return v19;
}

uint64_t sub_23047323C(uint64_t a1)
{
  v8[3] = sub_2304A40F4();
  v8[4] = &off_28451BF18;
  v8[0] = a1;
  v2 = qword_28149A870;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_28149A878;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_230475088(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_230473360(void *a1)
{
  v8[3] = type metadata accessor for ReplicationServer();
  v8[4] = &off_28451BB78;
  v8[0] = a1;
  v2 = qword_28149A870;
  v3 = a1;
  if (v2 != -1)
  {
    v3 = swift_once();
  }

  v4 = qword_28149A878;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  os_unfair_lock_lock(v4 + 4);
  sub_230431F78(v6);
  os_unfair_lock_unlock(v4 + 4);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t sub_230473480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v33 = sub_2304A5ED4();
  v32 = *(v33 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v33);
  v31 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2304A5EA4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_2304A5C64();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v39[3] = sub_2304A42F4();
  v39[4] = MEMORY[0x277D46378];
  v39[0] = a1;
  v38[3] = sub_2304A5474();
  v38[4] = MEMORY[0x277D46910];
  v38[0] = a2;
  v37[3] = sub_2304A5904();
  v37[4] = MEMORY[0x277D46AB8];
  v37[0] = a3;
  v30 = type metadata accessor for MigrationClient();
  v13 = objc_allocWithZone(v30);
  v14 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection;
  *&v13[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_connection] = 0;
  v29 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue;
  v28[1] = sub_230474F08(0, &qword_281499D80, 0x277D85C78);
  sub_2304A5C44();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_230469BF8(&qword_281499D98, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB54370, &qword_2304A7980);
  sub_230474FF4(&qword_281499DB8, &qword_27DB54370, &qword_2304A7980);
  sub_2304A5FA4();
  (*(v32 + 104))(v31, *MEMORY[0x277D85268], v33);
  *&v13[v29] = sub_2304A5F04();
  sub_230464834(v39, &v13[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordMetadataStore]);
  sub_230464834(v38, &v13[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_recordStore]);
  sub_230464834(v37, &v13[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_clientDescriptorStore]);
  v15 = OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_url;
  v16 = sub_2304A3FC4();
  v17 = *(v16 - 8);
  v18 = v34;
  (*(v17 + 16))(&v13[v15], v34, v16);
  v19 = *&v13[v14];
  *&v13[v14] = 0;

  v36.receiver = v13;
  v36.super_class = v30;
  v20 = objc_msgSendSuper2(&v36, sel_init);
  v21 = *&v20[OBJC_IVAR____TtC14ReplicatorCore15MigrationClient_queue];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_230474F50;
  *(v23 + 24) = v22;
  aBlock[4] = sub_23047506C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230478D34;
  aBlock[3] = &block_descriptor_33;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  v26 = v21;

  dispatch_sync(v26, v24);
  _Block_release(v24);

  (*(v17 + 8))(v18, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    return v25;
  }

  __break(1u);
  return result;
}