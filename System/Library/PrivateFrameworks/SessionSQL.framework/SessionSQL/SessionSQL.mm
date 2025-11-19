void SQLDatabase.inTransaction(reason:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t a4)
{
  v6 = v4;
  v56[0] = a1;
  v56[1] = a2;
  v58 = 32;
  v59 = 0xE100000000000000;
  sub_2657A88F8();
  if (sub_2657B1F64())
  {
    __break(1u);
    goto LABEL_27;
  }

  v11 = *(v4 + 24);
  v12 = *(v11 + 16);
  os_unfair_lock_lock(v12);
  v13 = *(v6 + 48);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(v6 + 48) = v15;
  os_unfair_lock_assert_owner(*(v11 + 16));
  v16 = *(v6 + 40);
  v17 = *(v6 + 48);
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v54 = a3;
  v60 = v11;
  os_unfair_lock_unlock(v12);
  sub_2657B1F94();

  strcpy(v56, "transaction_");
  BYTE5(v56[1]) = 0;
  HIWORD(v56[1]) = -5120;
  MEMORY[0x26675F630](a1, a2);
  MEMORY[0x26675F630](95, 0xE100000000000000);
  v58 = v18;
  v19 = sub_2657B2004();
  MEMORY[0x26675F630](v19);

  v20 = v56[0];
  a4 = v56[1];
  v55 = sub_2657A894C();
  v57 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](10);
  MEMORY[0x26675F630](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x26675F630](v56[0], v56[1]);
  v56[0] = v57;
  v56[1] = 0;
  v57 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v56);
  if (!v5)
  {
    v51 = v20;
    v52 = a1;
    v53 = a2;

    if (qword_281445F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v21 = v60;
  v22 = *(v60 + 16);
  os_unfair_lock_lock(v22);
  v23 = *(v6 + 48);
  v14 = __OFSUB__(v23, 1);
  v24 = v23 - 1;
  if (!v14)
  {
    *(v6 + 48) = v24;
    os_unfair_lock_assert_owner(*(v21 + 16));
    os_unfair_lock_unlock(v22);
    swift_willThrow();
LABEL_17:
    [v55 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_8:
  v25 = sub_2657B1E74();
  v26 = __swift_project_value_buffer(v25, qword_281445F08);

  v27 = sub_2657B1E64();
  v28 = sub_2657B1F24();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v50 = v26;
    v30 = swift_slowAlloc();
    v56[0] = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_2657B0598(v52, v53, v56);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_2657B0598(v51, a4, v56);
    _os_log_impl(&dword_2657A7000, v27, v28, "Beginning db savepoint [%{public}s]: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675FC30](v30, -1, -1);
    MEMORY[0x26675FC30](v29, -1, -1);
  }

  v31 = v60;
  v32 = *(v60 + 16);
  os_unfair_lock_lock(v32);
  v33 = *(v6 + 48);
  v14 = __OFSUB__(v33, 1);
  v34 = v33 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_32;
  }

  v35 = *(v6 + 40);
  *(v6 + 48) = v34;
  os_unfair_lock_assert_owner(*(v31 + 16));
  v36 = *(v6 + 40);
  v14 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v14)
  {
LABEL_32:
    __break(1u);
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v6 + 40) = v37;
  os_unfair_lock_assert_owner(*(v31 + 16));
  os_unfair_lock_unlock(v32);
  v38 = v54();
  if (v5)
  {
    sub_2657AFDC8(v52, v53, v51, a4);

    swift_willThrow();
    v39 = *(v31 + 16);
    os_unfair_lock_lock(v39);
    v40 = *(v6 + 40);
    v14 = __OFSUB__(v40, 1);
    v41 = v40 - 1;
    if (!v14)
    {
      *(v6 + 40) = v41;
      os_unfair_lock_assert_owner(*(v31 + 16));
      os_unfair_lock_unlock(v39);
      goto LABEL_17;
    }

    goto LABEL_33;
  }

  if (v38)
  {
    sub_2657A9FC8(v52, v53, v51, a4, v6);
  }

  else
  {
    sub_2657AFDC8(v52, v53, v51, a4);
  }

  if (v35)
  {

    v42 = sub_2657B1E64();
    v43 = sub_2657B1F24();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      v45 = *(v31 + 16);
      os_unfair_lock_lock(v45);
      v46 = *(v6 + 40);
      os_unfair_lock_unlock(v45);
      *(v44 + 4) = v46;

      _os_log_impl(&dword_2657A7000, v42, v43, "Outstanding transactions remaining: %{public}ld", v44, 0xCu);
      MEMORY[0x26675FC30](v44, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2657AA218(v6, v52, v53);
  }

  v47 = *(v31 + 16);
  os_unfair_lock_lock(v47);
  v48 = *(v6 + 40);
  v14 = __OFSUB__(v48, 1);
  v49 = v48 - 1;
  if (!v14)
  {
    *(v6 + 40) = v49;
    os_unfair_lock_assert_owner(*(v31 + 16));
    os_unfair_lock_unlock(v47);
    [v55 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_34:
  __break(1u);
}

unint64_t sub_2657A88F8()
{
  result = qword_281445EF8;
  if (!qword_281445EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445EF8);
  }

  return result;
}

uint64_t sub_2657A894C()
{
  v1 = *(*(v0 + 24) + 16);
  os_unfair_lock_lock(v1);
  result = *(v0 + 56);
  if (result == -1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = result + 1;
    sub_2657A8AA4(result);
    os_unfair_lock_unlock(v1);
    v3 = objc_allocWithZone(MEMORY[0x277CF0CE8]);

    v4 = sub_2657B1EA4();
    v5 = sub_2657B1EA4();
    v8[4] = sub_2657AB8F4;
    v8[5] = v0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_2657AA51C;
    v8[3] = &block_descriptor_19;
    v6 = _Block_copy(v8);
    v7 = [v3 initWithIdentifier:v4 forReason:v5 invalidationBlock:v6];

    _Block_release(v6);

    return v7;
  }

  return result;
}

void sub_2657A8AA4(uint64_t a1)
{
  os_unfair_lock_assert_owner(*(*(v1 + 24) + 16));
  if (a1 == 1)
  {
    if (*(v1 + 56))
    {
      return;
    }

    v6 = sub_2657A8C10(MEMORY[0x277D84F90]);
    MEMORY[0x26675F610](18);
    MEMORY[0x26675F630](0xD000000000000012, 0x80000002657B3110);
    v3 = sub_2657B2004();
    MEMORY[0x26675F630](v3);

    v4 = v6;
    v5 = 0;
    v6 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (!a1 && *(v1 + 56) == 1)
  {
    v4 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v5 = 0xD000000000000016;
    v6 = 0x80000002657B3130;
LABEL_7:
    SQLDatabase.perform(_:)(&v4);
  }
}

unint64_t sub_2657A8C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E18, "8\v");
    v3 = sub_2657B1FF4();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_2657A9984(v7, v8, v9);
      result = sub_2657A9B50(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

id SQLDatabase.perform(_:)(uint64_t *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(v1 + 32);
  v6 = sub_2657B1EA4();
  v7 = [v5 prepareStatement_];

  if (v7)
  {
    v46 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E28, &qword_2657B2CE8);
    v8 = sub_2657B1FD4();
    v9 = v8;
    v10 = 0;
    v11 = v3 + 64;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v47 = v3;
    v48 = v8 + 64;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_6:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        while (2)
        {
          v19 = v16 | (v10 << 6);
          v20 = (*(v3 + 48) + 16 * v19);
          v21 = *v20;
          v22 = v20[1];
          v23 = *(v3 + 56) + 24 * v19;
          v24 = *v23;
          v25 = *(v23 + 16);
          if (v25 <= 1)
          {
            if (*(v23 + 16))
            {
              v52 = &protocol witness table for Double;
              v30 = MEMORY[0x277D839F8];
            }

            else
            {
              v52 = &protocol witness table for Int64;
              v30 = MEMORY[0x277D84A28];
            }

            v51 = v30;
            *&aBlock = v24;
          }

          else
          {
            v26 = *(v23 + 8);
            if (v25 == 2)
            {
              v51 = MEMORY[0x277D837D0];
              v52 = &protocol witness table for String;
              *&aBlock = v24;
              *(&aBlock + 1) = v26;

              v27 = v24;
              v28 = v26;
              v29 = 2;
LABEL_18:
              sub_2657A9984(v27, v28, v29);
            }

            else
            {
              if (v25 == 3)
              {
                v51 = MEMORY[0x277CC9318];
                v52 = &protocol witness table for Data;
                *&aBlock = v24;
                *(&aBlock + 1) = v26;

                v27 = v24;
                v28 = v26;
                v29 = 3;
                goto LABEL_18;
              }

              v31 = objc_allocWithZone(MEMORY[0x277CBEB68]);

              v32 = [v31 init];
              v51 = sub_2657AEB48();
              v52 = &protocol witness table for NSNull;
              *&aBlock = v32;
            }

            v3 = v47;
          }

          *(v48 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          v33 = (v9[6] + 16 * v19);
          *v33 = v21;
          v33[1] = v22;
          sub_2657A9F84(&aBlock, v9[7] + 40 * v19);
          v34 = v9[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (!v35)
          {
            v9[2] = v36;
            if (!v14)
            {
              goto LABEL_6;
            }

LABEL_5:
            v16 = __clz(__rbit64(v14));
            v14 &= v14 - 1;
            continue;
          }

          break;
        }

LABEL_32:
        __break(1u);
      }
    }

    v37 = swift_allocObject();
    *(v37 + 16) = MEMORY[0x277D84F90];
    sub_2657A9220(v9);

    v38 = sub_2657B1E84();

    v52 = sub_2657AA514;
    v53 = v37;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v50 = sub_2657AA51C;
    v51 = &block_descriptor;
    v39 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v40 = [v46 executeWithBindings:v38 resultRowHandler:v39 error:&aBlock];
    _Block_release(v39);

    v7 = aBlock;
    if (v40)
    {
      v41 = aBlock;

      swift_beginAccess();
      v7 = *(v37 + 16);
    }

    else
    {
      v43 = aBlock;
      sub_2657B1E04();

      swift_willThrow();
    }
  }

  else
  {
    sub_2657AEAF4();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();
  }

  v44 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_2657A91E8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2657A9220(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280022E50, &qword_2657B2E48);
    v2 = sub_2657B1FF4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2657A978C(*(a1 + 56) + 40 * v15, v32);
        *&v31 = v17;
        *(&v31 + 1) = v18;
        v28[2] = v31;
        v29[0] = v32[0];
        v29[1] = v32[1];
        v30 = v33;
        v19 = v31;
        sub_2657A9F84(v29, v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DF0, &qword_2657B28D0);
        swift_dynamicCast();
        sub_2657A9F9C(&v25, v27);
        sub_2657A9F9C(v27, v28);
        sub_2657A9F9C(v28, &v26);
        result = sub_2657A9B50(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_2657A9F9C(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2657A9F9C(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

SessionSQL::SQLStatement::StringInterpolation __swiftcall SQLStatement.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[2] = sub_2657A8C10(MEMORY[0x277D84F90]);
  v4 = MEMORY[0x26675F610](literalCapacity);
  result.bindings._rawValue = v6;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(bind:)(uint64_t a1)
{
  sub_2657A978C(a1, &v2);
  SQLValue.init(_:)(&v2, &v4);
  v2 = v4;
  v3 = v5;
  sub_2657A9884(&v2);
  return sub_2657A9F60(v2, *(&v2 + 1), v3);
}

uint64_t SQLValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2657A978C(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DF0, &qword_2657B28D0);
  sub_2657A97F0(0, &qword_281445EE0, 0x277CBEB68);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);

    v4 = 0;
    v5 = 0;
    v6 = 4;
LABEL_11:
    result = __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    return result;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v5 = 0;
    v6 = 0;
    v4 = v8;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v5 = 0;
    v4 = v8;
    v6 = 1;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v4 = v8;
    v5 = v9;
    v6 = 2;
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v4 = v8;
    v5 = v9;
    v6 = 3;
    goto LABEL_11;
  }

  result = sub_2657B1FC4();
  __break(1u);
  return result;
}

{
  sub_2657AAA00(a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DF0, &qword_2657B28D0);
  if (!swift_dynamicCast())
  {
    sub_2657A97F0(0, &qword_281445ED8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v5 = v17[0];
      v6 = sub_2657AB2C4();

      if (v6)
      {
        [v5 doubleValue];
        v23 = MEMORY[0x277D839F8];
        v24 = &protocol witness table for Double;
        *&v22 = v7;
        goto LABEL_11;
      }

      if (sub_2657AB6DC())
      {
        v8 = [v5 longLongValue];
        v23 = MEMORY[0x277D84A28];
        v24 = &protocol witness table for Int64;
        *&v22 = v8;
        goto LABEL_11;
      }
    }

    sub_2657A97F0(0, &qword_281445ED0, 0x277CCACA8);
    if (!swift_dynamicCast())
    {
      sub_2657A97F0(0, &qword_281445EE8, 0x277CBEA90);
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(a1);
        result = __swift_destroy_boxed_opaque_existential_0(v25);
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = -1;
        return result;
      }

      v12 = v17[0];
      v13 = sub_2657B1E34();
      v15 = v14;

      v23 = MEMORY[0x277CC9318];
      v24 = &protocol witness table for Data;
      *&v22 = v13;
      *(&v22 + 1) = v15;
      SQLValue.init(_:)(&v22, &v20);

      goto LABEL_12;
    }

    v5 = v17[0];
    v9 = sub_2657B1EB4();
    v23 = MEMORY[0x277D837D0];
    v24 = &protocol witness table for String;
    *&v22 = v9;
    *(&v22 + 1) = v10;
LABEL_11:
    SQLValue.init(_:)(&v22, &v20);

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v16 = v20;
    v4 = v21;
    goto LABEL_13;
  }

  sub_2657A9F84(&v22, &v20);
  sub_2657A978C(&v20, v17);
  SQLValue.init(_:)(v17, &v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(&v20);
  v16 = v18;
  v4 = v19;
LABEL_13:
  result = __swift_destroy_boxed_opaque_existential_0(v25);
  *a2 = v16;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_2657A978C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2657A97F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2657A9884(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v9 = *(*(v1 + 16) + 16) + 1;
  v5 = sub_2657B2004();
  MEMORY[0x26675F630](v5);

  MEMORY[0x26675F630](0x676E69646E696240, 0xE800000000000000);
  sub_2657A9984(v2, v3, v4);
  v6 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 16);
  sub_2657A99A8(v2, v3, v4, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native);

  *(v1 + 16) = v10;
  return result;
}

uint64_t sub_2657A9984(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_2657AC644(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2657A99A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_2657A9B50(a4, a5);
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
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_2657A9BC8(v20, a6 & 1);
      v24 = *v7;
      v15 = sub_2657A9B50(a4, a5);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_2657B2024();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_2657AE438();
      v15 = v23;
    }
  }

  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 24 * v15;
    v28 = *v27;
    v29 = *(v27 + 8);
    *v27 = a1;
    *(v27 + 8) = a2;
    v30 = *(v27 + 16);
    *(v27 + 16) = a3;

    return sub_2657A9F60(v28, v29, v30);
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v32 = (v26[6] + 16 * v15);
  *v32 = a4;
  v32[1] = a5;
  v33 = v26[7] + 24 * v15;
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  v34 = v26[2];
  v19 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v35;
}

unint64_t sub_2657A9B50(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2657B2084();
  sub_2657B1ED4();
  v6 = sub_2657B20A4();

  return sub_2657A9EA8(a1, a2, v6);
}

uint64_t sub_2657A9BC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E18, "8\v");
  v40 = a2;
  result = sub_2657B1FE4();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v42 = *v23;
      v25 = *(v5 + 56) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      if ((v40 & 1) == 0)
      {

        sub_2657A9984(v26, v27, v28);
      }

      v29 = *(v8 + 40);
      sub_2657B2084();
      sub_2657B1ED4();
      result = sub_2657B20A4();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 16) = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
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
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
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

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_2657A9EA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2657B2014())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2657A9F60(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return sub_2657AC698(result, a2);
  }

  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_2657A9F84(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_2657A9F9C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10SessionSQL8SQLValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_2657A9FC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_281445F00 != -1)
  {
    swift_once();
  }

  v12 = sub_2657B1E74();
  __swift_project_value_buffer(v12, qword_281445F08);

  v13 = sub_2657B1E64();
  v14 = sub_2657B1F24();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a5;
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_2657B0598(a1, a2, &v21);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_2657B0598(a3, a4, &v21);
    _os_log_impl(&dword_2657A7000, v13, v14, "Committing transaction savepoint [%{public}s]: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v17 = v16;
    v6 = v5;
    MEMORY[0x26675FC30](v17, -1, -1);
    MEMORY[0x26675FC30](v15, -1, -1);
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  v23 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](18);
  MEMORY[0x26675F630](0xD000000000000012, 0x80000002657B30B0);
  MEMORY[0x26675F630](a3, a4);
  v18 = v21;
  v19 = v22;
  v21 = v23;
  v22 = v18;
  v23 = v19;
  SQLDatabase.perform(_:)(&v21);

  if (!v6)
  {
  }

  return result;
}

void sub_2657AA218(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v16[0] = sub_2657A8C10(MEMORY[0x277D84F90]);
  v16[1] = 0xD00000000000001BLL;
  v16[2] = 0x80000002657B2FE0;
  SQLDatabase.perform(_:)(v16);
  if (v3)
  {

    if (qword_281445F00 != -1)
    {
      swift_once();
    }

    v6 = sub_2657B1E74();
    __swift_project_value_buffer(v6, qword_281445F08);

    v7 = sub_2657B1E64();
    v8 = sub_2657B1F24();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2657B0598(a2, a3, v16);
      _os_log_impl(&dword_2657A7000, v7, v8, "Unable to execute wal_checkpoint(FULL, privacy: .public) for: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x26675FC30](v10, -1, -1);
      MEMORY[0x26675FC30](v9, -1, -1);
    }
  }

  else
  {

    if (qword_281445F00 != -1)
    {
      swift_once();
    }

    v11 = sub_2657B1E74();
    __swift_project_value_buffer(v11, qword_281445F08);

    v12 = sub_2657B1E64();
    v13 = sub_2657B1F24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16[0] = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_2657B0598(a2, a3, v16);
      _os_log_impl(&dword_2657A7000, v12, v13, "Successfully executed wal_checkpoint(FULL, privacy: .public) for: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26675FC30](v15, -1, -1);
      MEMORY[0x26675FC30](v14, -1, -1);
    }
  }
}

void sub_2657AA524(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2657AA58C(void *a1, uint64_t a2)
{
  sub_2657AA668(a1, &v9);
  v3 = v9;
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_2657AB78C(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_2657AB78C((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = v3;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

void sub_2657AA668(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [a1 count];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2657B1F94();
    MEMORY[0x26675F630](0xD000000000000035, 0x80000002657B2E90);
    *&v24 = v2;
    v19 = sub_2657B2004();
    MEMORY[0x26675F630](v19);

    goto LABEL_17;
  }

  v6 = v5;
  v21 = a2;
  if (v5)
  {
    v2 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = [a1 keyAtIndex_];
      if (!v8)
      {
        goto LABEL_15;
      }

      v9 = v8;
      v10 = sub_2657B1EB4();
      v12 = v11;
      v13 = [a1 objectForKey_];

      if (!v13)
      {
        break;
      }

      sub_2657B1F74();
      swift_unknownObjectRelease();
      sub_2657A9F9C(&v26, v28);
      *&v26 = v10;
      *(&v26 + 1) = v12;
      sub_2657AAA00(v28, &v27);
      sub_2657AAA5C(&v26, &v24, &qword_280022DB0, &qword_2657B27C0);
      v22 = v24;
      sub_2657A9F9C(&v25, v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2657AAAC4(0, v7[2] + 1, 1, v7);
      }

      v15 = v7[2];
      v14 = v7[3];
      if (v15 >= v14 >> 1)
      {
        v7 = sub_2657AAAC4((v14 > 1), v15 + 1, 1, v7);
      }

      ++v2;
      sub_2657AAC0C(&v26, &qword_280022DB0, &qword_2657B27C0);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v7[2] = v15 + 1;
      v16 = &v7[6 * v15];
      v17 = v23[1];
      v16[3] = v23[0];
      v16[4] = v17;
      v16[2] = v22;
      if (v6 == v2)
      {
        goto LABEL_13;
      }
    }

    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    sub_2657B1F94();
    MEMORY[0x26675F630](0xD000000000000031, 0x80000002657B2ED0);
    MEMORY[0x26675F630](v10, v12);
    while (1)
    {
LABEL_17:
      sub_2657B1FC4();
      __break(1u);
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      sub_2657B1F94();

      *&v26 = 0xD000000000000027;
      *(&v26 + 1) = 0x80000002657B2F10;
      swift_getErrorValue();
      v20 = sub_2657B2034();
      MEMORY[0x26675F630](v20);
    }
  }

  v7 = MEMORY[0x277D84F90];
LABEL_13:
  v18 = sub_2657AAC70(v7);

  *v21 = v18;
}

uint64_t sub_2657AAA00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2657AAA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_2657AAAC4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E48, &qword_2657B2E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DB8, &qword_2657B27C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2657AAC0C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2657AAC70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2657AB000(0, v1, 0);
    v2 = v20;
    for (i = a1 + 32; ; i += 48)
    {
      sub_2657AAA5C(i, v19, &qword_280022DB8, &qword_2657B27C8);
      sub_2657AAA5C(v19, &v15, &qword_280022DB8, &qword_2657B27C8);

      SQLValue.init(_:)(v16, &v17);
      v5 = v18;
      if (v18 == 255)
      {
        break;
      }

      v14 = v17;
      v15 = v19[0];
      v16[0] = v19[1];
      v16[1] = v19[2];
      v6 = v19[0];
      __swift_destroy_boxed_opaque_existential_0(v16);
      v20 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2657AB000((v7 > 1), v8 + 1, 1);
        v2 = v20;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 40 * v8;
      *(v9 + 32) = v6;
      *(v9 + 48) = v14;
      *(v9 + 64) = v5;
      if (!--v1)
      {
        return v2;
      }
    }

    sub_2657AAA5C(v19, &v15, &qword_280022DB8, &qword_2657B27C8);

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    sub_2657B1F94();

    *&v17 = 0xD00000000000002ELL;
    *(&v17 + 1) = 0x80000002657B2F40;
    v10 = sub_2657B20B4();
    MEMORY[0x26675F630](v10);

    v11 = v17;
    __swift_destroy_boxed_opaque_existential_0(v16);
    sub_2657ACE30();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    sub_2657AAC0C(v19, &qword_280022DB8, &qword_2657B27C8);
  }

  return v2;
}

void *sub_2657AAEBC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DC8, &qword_2657B27D0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DD0, &qword_2657B27D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2657AB000(void *a1, int64_t a2, char a3)
{
  result = sub_2657AAEBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2657AB2C4()
{
  [v0 objCType];
  v1 = sub_2657B1EF4();
  v3 = sub_2657AB424(v1, v2);

  v17 = MEMORY[0x277D84F90];
  sub_2657AB5C8(0, 2, 0);
  v4 = v17;
  v6 = *(v17 + 16);
  v5 = *(v17 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_2657AB5C8((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v5 = *(v17 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 102;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    sub_2657AB5C8((v5 > 1), v9, 1);
    v4 = v17;
  }

  *(v4 + 16) = v9;
  v10 = (v4 + 32);
  *(v4 + 32 + v8) = 100;
  if (*(v3 + 16) == 1)
  {
    v11 = *(v3 + 32);

    v12 = *(v4 + 16);
    do
    {
      v13 = v12-- != 0;
      v14 = v13;
      if (!v13)
      {
        break;
      }

      v15 = *v10++;
    }

    while (v15 != v11);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

uint64_t sub_2657AB424(uint64_t a1, unint64_t a2)
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

  v6 = sub_2657AB554(v5, 0);
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

  result = sub_2657B1FB4();
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
        v10 = sub_2657B1F04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2657AB554(v10, 0);
        result = sub_2657B1F84();
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

void *sub_2657AB554(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DE0, &qword_2657B27E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2657AB5C8(char *a1, int64_t a2, char a3)
{
  result = sub_2657AB5E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2657AB5E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DE0, &qword_2657B27E8);
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

BOOL sub_2657AB6DC()
{
  [v0 objCType];
  v1 = sub_2657B1EF4();
  v3 = sub_2657AB424(v1, v2);

  if (*(v3 + 16) != 1)
  {

    return 1;
  }

  v4 = *(v3 + 32);

  if (v4 != 81)
  {
    return 1;
  }

  v5 = [v0 longLongValue];
  v6 = [v0 unsignedLongLongValue];
  return v5 >= 0 && v5 == v6;
}

char *sub_2657AB78C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E40, &qword_2657B2E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2657AB898(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 24) + 16);
  os_unfair_lock_lock(v3);
  v4 = *(a2 + 56);
  if (v4)
  {
    *(a2 + 56) = v4 - 1;
    sub_2657A8AA4(v4);

    os_unfair_lock_unlock(v3);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2657AB91C@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = sub_2657A8C10(MEMORY[0x277D84F90]);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  return result;
}

uint64_t sub_2657AB95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2657B1E24();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2657AB9C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2657B1E24();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2657ABA38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2657ABA70()
{
  MEMORY[0x26675FC30](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2657ABAF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2657ABB18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_2657ABB54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t SQLResult.allColumns.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];
    sub_2657AC624(0, v2, 0);
    v3 = v14;
    v4 = (v1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;

      sub_2657A9984(v7, v8, v9);
      sub_2657A9F60(v7, v8, v9);
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2657AC624((v10 > 1), v11 + 1, 1);
      }

      v4 += 40;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 16 * v11;
      *(v12 + 32) = v6;
      *(v12 + 40) = v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t SQLResult.allValues.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2657AC6EC(0, v2, 0);
    v3 = v13;
    v4 = (v1 + 64);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;

      sub_2657A9984(v5, v7, v8);

      v10 = *(v13 + 16);
      v9 = *(v13 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2657AC6EC((v9 > 1), v10 + 1, 1);
      }

      v4 += 40;
      *(v13 + 16) = v10 + 1;
      v11 = v13 + 24 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v7;
      *(v11 + 48) = v8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

Swift::Int __swiftcall SQLResult.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t SQLResult.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(*v2 + 16) <= result)
  {
    __break(1u);
  }

  else
  {
    v4 = *v2 + 40 * result;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);

    sub_2657A9984(v6, v7, v8);

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = *(*v3 + 16);
  v8 = (*v3 + 64);
  v9 = v7 + 1;
  while (--v9)
  {
    v10 = *(v8 - 2);
    v11 = *(v8 - 1);
    v12 = *v8;
    if (*(v8 - 4) != v5 || *(v8 - 3) != a2)
    {
      v8 += 40;
      result = sub_2657B2014();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    sub_2657A9984(v10, v11, v12);

    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    return result;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  return result;
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_2657B1FA4();
  SQLResult.subscript.getter(v4, v5, a1);
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *v4;
  SQLResult.subscript.getter(a1, a2, &v11);
  if (v12 == 255)
  {
    v8 = *(*(a3 - 8) + 56);

    return v8(a4, 1, 1, a3);
  }

  else
  {
    v9 = v11;
    v10 = v12;
    SQLValue.unbox<A>()(a3, a4);

    return sub_2657A9F60(v9, *(&v9 + 1), v10);
  }
}

uint64_t SQLResult.subscript.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = sub_2657B1FA4();
  SQLResult.subscript.getter(v6, v7, &v12);

  if (v13 == 255)
  {
    v9 = *(*(a1 - 8) + 56);

    return v9(a2, 1, 1, a1);
  }

  else
  {
    v10 = v12;
    v11 = v13;
    SQLValue.unbox<A>()(a1, a2);

    return sub_2657A9F60(v10, *(&v10 + 1), v11);
  }
}

void (*sub_2657AC16C(uint64_t *a1, unint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_2657AC22C(v4, *a2);
  return sub_2657AC1E4;
}

void sub_2657AC1E4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_2657AC22C(uint64_t (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  if (*(*v2 + 16) <= a2)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = *v2 + 40 * a2;
    v5 = *(v4 + 40);
    v6 = *(v4 + 48);
    v7 = *(v4 + 56);
    v8 = *(v4 + 64);

    sub_2657A9984(v6, v7, v8);

    *v3 = v6;
    *(v3 + 1) = v7;
    *(v3 + 16) = v8;
    return sub_2657AC2C8;
  }

  return result;
}

uint64_t *sub_2657AC2D8@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

uint64_t sub_2657AC304@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = *(v2 + 16);
}

uint64_t *sub_2657AC32C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2657AC35C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2657ACD60(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2657AC394(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_2657AC3D4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_2657AC3F0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_2657AC40C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_2657AC428@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2657AC440(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_2657AC46C()
{
  v1 = sub_2657ACB94(*v0);

  return v1;
}

uint64_t sub_2657AC4D8()
{
  sub_2657B2084();
  MEMORY[0x26675F7E0](0);
  return sub_2657B20A4();
}

uint64_t sub_2657AC544()
{
  sub_2657B2084();
  MEMORY[0x26675F7E0](0);
  return sub_2657B20A4();
}

void *sub_2657AC594(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DA8, &qword_2657B27B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

char *sub_2657AC624(char *a1, int64_t a2, char a3)
{
  result = sub_2657AC96C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2657AC644(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2657AC698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

char *sub_2657AC6EC(char *a1, int64_t a2, char a3)
{
  result = sub_2657ACA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2657AC710()
{
  result = qword_280022D70;
  if (!qword_280022D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022D70);
  }

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

uint64_t sub_2657AC884(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2657AC8D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_2657AC920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_2657AC96C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DD8, &qword_2657B27E0);
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

char *sub_2657ACA78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DA8, &qword_2657B27B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2657ACB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_2657AC594(*(a1 + 16), 0);

  v4 = sub_2657ACC1C(&v6, (v3 + 4), v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void *sub_2657ACC1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v14 = a3;
      v15 = result;
      v7 = 0;
      v8 = (a4 + 64);
      v9 = a3 - 1;
      while (v7 < *(a4 + 16))
      {
        v10 = *(v8 - 3);
        v11 = *(v8 - 2);
        v12 = *(v8 - 1);
        v13 = *v8;

        sub_2657A9984(v11, v12, v13);

        *v6 = v11;
        *(v6 + 8) = v12;
        *(v6 + 16) = v13;
        if (v9 == v7)
        {
          a3 = v14;
          result = v15;
          goto LABEL_13;
        }

        v6 += 24;
        ++v7;
        v8 += 40;
        if (v5 == v7)
        {
          a3 = v5;
          result = v15;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
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

uint64_t sub_2657ACD60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2657ACE30()
{
  result = qword_280022DC0;
  if (!qword_280022DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022DC0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2657ACE90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2657ACED8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLResultError.Code(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SQLResultError.Code(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2657AD014()
{
  result = qword_280022DE8;
  if (!qword_280022DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022DE8);
  }

  return result;
}

uint64_t SQLValue.unbox<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2657B1F54();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v21[-v8];
  v10 = *v2;
  v11 = *(v2 + 16);
  if (v11 <= 1)
  {
    if (*(v2 + 16))
    {
      v13 = MEMORY[0x277D839F8];
      v14 = &protocol witness table for Double;
    }

    else
    {
      v13 = MEMORY[0x277D84A28];
      v14 = &protocol witness table for Int64;
    }

    v23 = v13;
    v24 = v14;
    *&v22 = v10;
  }

  else
  {
    v12 = *(v2 + 8);
    if (v11 == 2)
    {
      v23 = MEMORY[0x277D837D0];
      v24 = &protocol witness table for String;
      *&v22 = v10;
      *(&v22 + 1) = v12;
    }

    else if (v11 == 3)
    {
      v23 = MEMORY[0x277CC9318];
      v24 = &protocol witness table for Data;
      *&v22 = v10;
      *(&v22 + 1) = v12;
      sub_2657AC644(v10, v12);
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v23 = sub_2657A97F0(0, &qword_281445EE0, 0x277CBEB68);
      v24 = &protocol witness table for NSNull;
      *&v22 = v15;
    }
  }

  sub_2657A9F84(&v22, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DF0, &qword_2657B28D0);
  v16 = swift_dynamicCast();
  v17 = *(*(a1 - 8) + 56);
  if (v16)
  {
    v18 = *(a1 - 8);
    v17(v9, 0, 1, a1);
    (*(v18 + 32))(a2, v9, a1);
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v17(v9, 1, 1, a1);
    (*(v6 + 8))(v9, v5);
  }

  return v17(a2, v19, 1, a1);
}

uint64_t SQLValue.unboxedValue()@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (*(v1 + 16))
    {
      v5 = MEMORY[0x277D839F8];
      v6 = &protocol witness table for Double;
    }

    else
    {
      v5 = MEMORY[0x277D84A28];
      v6 = &protocol witness table for Int64;
    }

    a1[3] = v5;
    a1[4] = v6;
    *a1 = result;
  }

  else
  {
    v4 = *(v1 + 8);
    if (v3 == 2)
    {
      a1[3] = MEMORY[0x277D837D0];
      a1[4] = &protocol witness table for String;
      *a1 = result;
      a1[1] = v4;
    }

    else if (v3 == 3)
    {
      a1[3] = MEMORY[0x277CC9318];
      a1[4] = &protocol witness table for Data;
      *a1 = result;
      a1[1] = v4;

      return sub_2657AC644(result, v4);
    }

    else
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      result = sub_2657A97F0(0, &qword_281445EE0, 0x277CBEB68);
      a1[3] = result;
      a1[4] = &protocol witness table for NSNull;
      *a1 = v8;
    }
  }

  return result;
}

uint64_t SQLValue.contains<A>(_:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v62 = a1;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  (MEMORY[0x28223BE20])();
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2657B1F54();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (MEMORY[0x28223BE20])();
  v16 = &v53 - v15;
  v17 = v11;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v14);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v53 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = *v5;
  v27 = *(v5 + 16);
  v63 = v28;
  v57 = a4;
  v59 = v30;
  v60 = v29;
  if (v27 <= 1)
  {
    if (v27)
    {
      v32 = MEMORY[0x277D839F8];
      v33 = &protocol witness table for Double;
    }

    else
    {
      v32 = MEMORY[0x277D84A28];
      v33 = &protocol witness table for Int64;
    }

    v66 = v32;
    v67 = v33;
    v64 = v26;
  }

  else
  {
    v31 = *(v5 + 8);
    if (v27 == 2)
    {
      v66 = MEMORY[0x277D837D0];
      v67 = &protocol witness table for String;
      v64 = v26;
      v65 = v31;
    }

    else if (v27 == 3)
    {
      v66 = MEMORY[0x277CC9318];
      v67 = &protocol witness table for Data;
      v64 = v26;
      v65 = v31;
      sub_2657AC644(v26, v31);
    }

    else
    {
      v34 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
      v66 = sub_2657A97F0(0, &qword_281445EE0, 0x277CBEB68);
      v67 = &protocol witness table for NSNull;
      v64 = v34;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DF0, &qword_2657B28D0);
  v35 = swift_dynamicCast();
  v36 = *(v8 + 56);
  v36(v25, v35 ^ 1u, 1, a2);
  (*(v8 + 16))(v23, v62, a2);
  v36(v23, 0, 1, a2);
  v61 = TupleTypeMetadata2;
  v62 = v25;
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v8;
  v39 = a2;
  v40 = v18;
  v41 = *(v18 + 16);
  v41(v16, v25, v17);
  v41(&v16[v37], v23, v17);
  v58 = v38;
  v42 = *(v38 + 48);
  if (v42(v16, 1, v39) == 1)
  {
    v43 = *(v40 + 8);
    v43(v23, v17);
    if (v42(&v16[v37], 1, v39) == 1)
    {
      v43(v16, v17);
      v44 = 1;
LABEL_18:
      v47 = v62;
      goto LABEL_19;
    }
  }

  else
  {
    v54 = v23;
    v55 = v40;
    v45 = v59;
    v41(v59, v16, v17);
    v46 = v39;
    if (v42(&v16[v37], 1, v39) != 1)
    {
      v48 = v58;
      v49 = v45;
      v50 = v56;
      (*(v58 + 32))(v56, &v16[v37], v46);
      v44 = sub_2657B1E94();
      v51 = *(v48 + 8);
      v51(v50, v46);
      v43 = *(v55 + 8);
      v43(v54, v17);
      v51(v49, v46);
      v43(v16, v17);
      goto LABEL_18;
    }

    v43 = *(v55 + 8);
    v43(v54, v17);
    (*(v58 + 8))(v45, v39);
  }

  v47 = v62;
  (*(v60 + 8))(v16, v61);
  v44 = 0;
LABEL_19:
  v43(v47, v17);
  return v44 & 1;
}

uint64_t sub_2657AD9E8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_2657B1DC4();
    if (v10)
    {
      v11 = sub_2657B1DE4();
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
      result = sub_2657B1DD4();
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
  v10 = sub_2657B1DC4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2657B1DE4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2657B1DD4();
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

uint64_t sub_2657ADC18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_2657ADDA8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2657AC698(a3, a4);
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
  sub_2657AD9E8(v14, a3, a4, &v13);
  v10 = v4;
  sub_2657AC698(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_2657ADDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2657B1DC4();
  v11 = result;
  if (result)
  {
    result = sub_2657B1DE4();
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

  sub_2657B1DD4();
  sub_2657AD9E8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_2657ADE60(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2657AC644(a3, a4);
          return sub_2657ADC18(v13, a2, a3, a4) & 1;
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

uint64_t _s10SessionSQL8SQLValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (*(a1 + 16))
    {
      if (v7 == 1)
      {
        v19 = *a2;
        sub_2657A9F60(*a1, v3, 1);
        sub_2657A9F60(v5, v6, 1);
        return *&v2 == *&v5;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_2657A9F60(*a1, v3, 0);
      sub_2657A9F60(v5, v6, 0);
      return v2 == v5;
    }

    goto LABEL_26;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      v20 = *(a1 + 8);

      goto LABEL_26;
    }

    v13 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v8 = sub_2657B2014();
      sub_2657A9984(v5, v6, 2);
      sub_2657A9984(v2, v3, 2);
      sub_2657A9F60(v2, v3, 2);
      v9 = v5;
      v10 = v6;
      v11 = 2;
      goto LABEL_15;
    }

    sub_2657A9984(v13, v3, 2);
    sub_2657A9984(v2, v3, 2);
    sub_2657A9F60(v2, v3, 2);
    v16 = v2;
    v17 = v3;
    v18 = 2;
  }

  else
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        sub_2657A9984(*a2, *(a2 + 8), 3);
        sub_2657A9984(v2, v3, 3);
        v8 = sub_2657ADE60(v2, v3, v5, v6);
        sub_2657A9F60(v2, v3, 3);
        v9 = v5;
        v10 = v6;
        v11 = 3;
LABEL_15:
        sub_2657A9F60(v9, v10, v11);
        return v8 & 1;
      }

      sub_2657AC644(*a1, v3);
      goto LABEL_26;
    }

    if (v7 != 4 || (v6 | v5) != 0)
    {
LABEL_26:
      sub_2657A9984(v5, v6, v7);
      sub_2657A9F60(v2, v3, v4);
      sub_2657A9F60(v5, v6, v7);
      return 0;
    }

    sub_2657A9F60(*a1, v3, 4);
    v16 = 0;
    v17 = 0;
    v18 = 4;
  }

  sub_2657A9F60(v16, v17, v18);
  return 1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657AE258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2657AE2A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_2657AE2E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

SessionSQL::SQLStatement __swiftcall SQLStatement.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  v5 = sub_2657A8C10(MEMORY[0x277D84F90]);
  *v4 = v5;
  v4[1] = countAndFlagsBits;
  v4[2] = object;
  result.parameterizedStatement._object = v7;
  result.parameterizedStatement._countAndFlagsBits = v6;
  result.bindings._rawValue = v5;
  return result;
}

SessionSQL::SQLStatement __swiftcall SQLStatement.init(stringInterpolation:)(SessionSQL::SQLStatement stringInterpolation)
{
  v2 = *stringInterpolation.bindings._rawValue;
  v3 = *(stringInterpolation.bindings._rawValue + 1);
  *v1 = *(stringInterpolation.bindings._rawValue + 2);
  v1[1] = v2;
  v1[2] = v3;
  return stringInterpolation;
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(_:)()
{
  v0 = sub_2657B1FA4();
  MEMORY[0x26675F630](v0);
}

uint64_t SQLStatement.StringInterpolation.appendInterpolation(_:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return sub_2657A9884(&v3);
}

uint64_t sub_2657AE3D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = sub_2657A8C10(MEMORY[0x277D84F90]);
  return MEMORY[0x26675F610](a1);
}

void sub_2657AE418(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  JUMPOUT(0x26675F630);
}

uint64_t *sub_2657AE424@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

void *sub_2657AE438()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E18, "8\v");
  v2 = *v0;
  v3 = sub_2657B1FD4();
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

        result = sub_2657A9984(v23, v24, v26);
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

unint64_t sub_2657AE5E0()
{
  result = qword_280022DF8;
  if (!qword_280022DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022DF8);
  }

  return result;
}

unint64_t sub_2657AE638()
{
  result = qword_280022E00;
  if (!qword_280022E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022E00);
  }

  return result;
}

unint64_t sub_2657AE690()
{
  result = qword_280022E08;
  if (!qword_280022E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022E08);
  }

  return result;
}

unint64_t sub_2657AE6E8()
{
  result = qword_280022E10;
  if (!qword_280022E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022E10);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2657AE768(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2657AE7B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2657AE800(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2657AE848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SQLSchemaBuilder.init(majorVersion:schemaRevisions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_2657AE8B8()
{
  v0 = sub_2657B2004();
  MEMORY[0x26675F630](v0);

  MEMORY[0x26675F630](46, 0xE100000000000000);
  v1 = sub_2657B2004();
  MEMORY[0x26675F630](v1);

  return 118;
}

BOOL sub_2657AE970(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return v5;
  }
}

uint64_t SQLiteError.hashValue.getter()
{
  v1 = *v0;
  sub_2657B2084();
  MEMORY[0x26675F7E0](v1);
  return sub_2657B20A4();
}

uint64_t sub_2657AEA3C()
{
  v1 = *v0;
  sub_2657B2084();
  MEMORY[0x26675F7E0](v1);
  return sub_2657B20A4();
}

uint64_t sub_2657AEAB0()
{
  v1 = *v0;
  sub_2657B2084();
  MEMORY[0x26675F7E0](v1);
  return sub_2657B20A4();
}

unint64_t sub_2657AEAF4()
{
  result = qword_280022E20;
  if (!qword_280022E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022E20);
  }

  return result;
}

unint64_t sub_2657AEB48()
{
  result = qword_281445EE0;
  if (!qword_281445EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281445EE0);
  }

  return result;
}

uint64_t sub_2657AEB94(void *a1, uint64_t *a2)
{
  v4 = v2;
  v7 = *a2;
  v6 = a2[1];
  *(v4 + 16) = 10;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  *(v4 + 24) = v8;
  v10 = a1;
  v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
  v38 = 0xD00000000000001BLL;
  v39 = 0x80000002657B3150;
  SQLDatabase.perform(_:)(&v37);
  if (v3)
  {

    [*(v4 + 32) close];
    if (qword_281445F00 != -1)
    {
      swift_once();
    }

    v14 = sub_2657B1E74();
    __swift_project_value_buffer(v14, qword_281445F08);
    v15 = v3;
    v16 = sub_2657B1E64();
    v17 = sub_2657B1F34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = sub_2657B1DF4();
      *(v18 + 4) = v20;
      *v19 = v20;
      _os_log_impl(&dword_2657A7000, v16, v17, "Failed to open database: %{public}@", v18, 0xCu);
      sub_2657B0D8C(v19);
      MEMORY[0x26675FC30](v19, -1, -1);
      MEMORY[0x26675FC30](v18, -1, -1);
    }

    swift_willThrow();
  }

  else
  {

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD000000000000016;
    v39 = 0x80000002657B3170;
    SQLDatabase.perform(_:)(&v37);

    v37 = 0;
    v38 = 0xE000000000000000;
    v39 = sub_2657A8C10(MEMORY[0x277D84F90]);
    MEMORY[0x26675F610](18);
    MEMORY[0x26675F630](0xD000000000000012, 0x80000002657B3110);
    v40 = 10;
    v11 = sub_2657B2004();
    MEMORY[0x26675F630](v11);

    v12 = v37;
    v13 = v38;
    v37 = v39;
    v38 = v12;
    v39 = v13;
    SQLDatabase.perform(_:)(&v37);

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD000000000000017;
    v39 = 0x80000002657B3190;
    SQLDatabase.perform(_:)(&v37);

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD000000000000019;
    v39 = 0x80000002657B31B0;
    SQLDatabase.perform(_:)(&v37);

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD00000000000001ELL;
    v39 = 0x80000002657B31D0;
    SQLDatabase.perform(_:)(&v37);

    if (v6)
    {
      LOWORD(v37) = v7;
      v38 = v6;
      sub_2657AF314(&v37);
    }

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD000000000000015;
    v39 = 0x80000002657B31F0;
    v41.bindings._rawValue = &v37;
    v22 = SQLDatabase.performSimple(_:)(v41);
    v24 = v23;
    if (v23)
    {

      v36 = 0;
    }

    else
    {
      v36 = v22;
    }

    v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
    v38 = 0xD000000000000011;
    v39 = 0x80000002657B3210;
    v42.bindings._rawValue = &v37;
    v25 = SQLDatabase.performSimple(_:)(v42);
    if (v26)
    {

      v27 = 0;
    }

    else
    {
      v27 = v25;
    }

    if (v24 || v26)
    {
      goto LABEL_24;
    }

    if (qword_281445F00 != -1)
    {
      swift_once();
    }

    v28 = fmax(v27 * 0.05, 256.0);
    v29 = sub_2657B1E74();
    __swift_project_value_buffer(v29, qword_281445F08);
    v30 = sub_2657B1E64();
    v31 = sub_2657B1F44();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134349312;
      *(v32 + 4) = v36;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v27;
      _os_log_impl(&dword_2657A7000, v30, v31, "Database has %{public}lld/%{public}lld free pages.", v32, 0x16u);
      MEMORY[0x26675FC30](v32, -1, -1);
    }

    if (v28 > v36)
    {
LABEL_24:
    }

    else
    {
      v33 = sub_2657B1E64();
      v34 = sub_2657B1F44();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2657A7000, v33, v34, "Vacuuming", v35, 2u);
        MEMORY[0x26675FC30](v35, -1, -1);
      }

      v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
      v38 = 0xD000000000000019;
      v39 = 0x80000002657B3230;
      SQLDatabase.perform(_:)(&v37);
    }
  }

  return v4;
}

uint64_t sub_2657AF314(unsigned __int16 *a1)
{
  v2 = v1;
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 1);
  v34 = sub_2657A8C10(MEMORY[0x277D84F90]);
  v35 = 0xD000000000000013;
  v36 = 0x80000002657B3250;
  v38.bindings._rawValue = &v34;
  v5 = SQLDatabase.performSimple(_:)(v38);

  if (v7)
  {
    goto LABEL_26;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = *(v4 + 16);
  if (v8 >> 16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = *(v4 + 16);
  if (v3 != WORD1(v5) || v5 != v9)
  {
    v10 = v3 < WORD1(v5);
    if (v3 == WORD1(v5))
    {
      v10 = v9 < v5;
    }

    if (!v10)
    {
      if (qword_281445F00 != -1)
      {
        swift_once();
      }

      v16 = sub_2657B1E74();
      __swift_project_value_buffer(v16, qword_281445F08);
      v17 = sub_2657B1E64();
      v33 = sub_2657B1F44();
      if (os_log_type_enabled(v17, v33))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37[0] = v32;
        *v31 = 136446466;
        v34 = 118;
        v35 = 0xE100000000000000;
        v18 = sub_2657B2004();
        MEMORY[0x26675F630](v18);

        MEMORY[0x26675F630](46, 0xE100000000000000);
        v19 = sub_2657B2004();
        MEMORY[0x26675F630](v19);

        v20 = sub_2657B0598(v34, v35, v37);

        *(v31 + 4) = v20;
        *(v31 + 12) = 2082;
        v34 = 118;
        v35 = 0xE100000000000000;
        v21 = sub_2657B2004();
        MEMORY[0x26675F630](v21);

        MEMORY[0x26675F630](46, 0xE100000000000000);
        v22 = sub_2657B2004();
        MEMORY[0x26675F630](v22);

        v23 = sub_2657B0598(v34, v35, v37);

        *(v31 + 14) = v23;
        _os_log_impl(&dword_2657A7000, v17, v33, "Migrating database from %{public}s to %{public}s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26675FC30](v32, -1, -1);
        MEMORY[0x26675FC30](v31, -1, -1);
      }

      if (v3 == WORD1(v5))
      {
        v34 = v5;
      }

      else
      {
        v24 = v2[4];
        v37[0] = 0;
        if (![v24 truncateDatabaseAndReturnError_])
        {
          v30 = v37[0];
          sub_2657B1E04();

LABEL_14:
          result = swift_willThrow();
          goto LABEL_26;
        }

        v34 = 0;
        v25 = v37[0];
        v26 = sub_2657B1E64();
        v27 = sub_2657B1F44();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_2657A7000, v26, v27, "Truncated database", v28, 2u);
          MEMORY[0x26675FC30](v28, -1, -1);
        }
      }

      sub_2657B1484(0x6F6974617267694DLL, 0xE90000000000006ELL, v2, v3, v4, &v34, v2, v3 | (v8 << 16));

      goto LABEL_26;
    }

    if (qword_281445F00 == -1)
    {
LABEL_11:
      v11 = sub_2657B1E74();
      __swift_project_value_buffer(v11, qword_281445F08);
      v12 = sub_2657B1E64();
      v13 = sub_2657B1F44();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_2657A7000, v12, v13, "Existing schema version is greater than target schema version", v14, 2u);
        MEMORY[0x26675FC30](v14, -1, -1);
      }

      sub_2657AEAF4();
      swift_allocError();
      *v15 = 2;
      goto LABEL_14;
    }

LABEL_31:
    swift_once();
    goto LABEL_11;
  }

LABEL_26:
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int64 __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.performSimple(_:)(SessionSQL::SQLStatement a1)
{
  v3 = *(a1.bindings._rawValue + 2);
  v11 = *a1.bindings._rawValue;
  v12 = v3;
  v4 = SQLDatabase.perform(_:)(&v11);
  if (!v2)
  {
    if (v4[2] && (v5 = v4[4], , , *(v5 + 16) == 1))
    {
      v6 = *(v5 + 40);
      v1 = *(v5 + 48);
      v7 = *(v5 + 56);
      v8 = *(v5 + 64);

      sub_2657A9984(v1, v7, v8);

      if (!v8)
      {
        return v1;
      }

      sub_2657A9F60(v1, v7, v8);
    }

    else
    {
    }

    sub_2657AEAF4();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
  }

  return v1;
}

id sub_2657AF9DC()
{
  v3[0] = sub_2657A8C10(MEMORY[0x277D84F90]);
  v3[1] = 0xD00000000000001BLL;
  v3[2] = 0x80000002657B2FE0;
  SQLDatabase.perform(_:)(v3);

  v1 = *(v0 + 32);

  return [v1 close];
}

uint64_t SQLDatabase.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t SQLDatabase.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t SQLDatabase.Storage.path.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2657B1E24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SQLDatabase.Storage.init(path:protectionClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2657B1E24();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for SQLDatabase.Storage();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t SQLDatabase.__allocating_init(storage:schema:)(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2657B1E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v9 = a2[1];
  (*(v5 + 16))(v8, a1, v4);
  v11 = *(a1 + *(type metadata accessor for SQLDatabase.Storage() + 20));
  v12 = objc_allocWithZone(MEMORY[0x277CF0CF8]);
  v13 = sub_2657B1E14();
  v14 = [v12 initWithFileURL:v13 dataProtectionClass:v11];

  (*(v5 + 8))(v8, v4);
  v17[0] = v10;
  v17[1] = v9;
  type metadata accessor for SQLDatabase();
  swift_allocObject();
  v15 = sub_2657AEB94(v14, v17);
  sub_2657B0A84(a1);
  return v15;
}

Swift::Bool __swiftcall SQLDatabase.isInTransaction()()
{
  v1 = *(*(v0 + 24) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 40) != 0;
  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_2657AFDC8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_281445F00 != -1)
  {
    swift_once();
  }

  v10 = sub_2657B1E74();
  __swift_project_value_buffer(v10, qword_281445F08);

  v11 = sub_2657B1E64();
  v12 = sub_2657B1F24();

  if (os_log_type_enabled(v11, v12))
  {
    v23 = v4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136446466;
    *(v13 + 4) = sub_2657B0598(a1, a2, &v20);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_2657B0598(a3, a4, &v20);
    _os_log_impl(&dword_2657A7000, v11, v12, "Rollback to transaction savepoint [%{public}s]: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675FC30](v14, -1, -1);
    v5 = v23;
    MEMORY[0x26675FC30](v13, -1, -1);
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  v22 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](22);
  MEMORY[0x26675F630](0xD000000000000016, 0x80000002657B30D0);
  MEMORY[0x26675F630](a3, a4);
  v15 = v20;
  v16 = v21;
  v20 = v22;
  v21 = v15;
  v22 = v16;
  SQLDatabase.perform(_:)(&v20);

  if (!v5)
  {

    v20 = 0;
    v21 = 0xE000000000000000;
    v22 = sub_2657A8C10(MEMORY[0x277D84F90]);
    MEMORY[0x26675F610](18);
    MEMORY[0x26675F630](0xD000000000000012, 0x80000002657B30B0);
    MEMORY[0x26675F630](a3, a4);
    v18 = v20;
    v19 = v21;
    v20 = v22;
    v21 = v18;
    v22 = v19;
    SQLDatabase.perform(_:)(&v20);
  }

  return result;
}

uint64_t sub_2657B00B0(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, unsigned int a5)
{
  v6 = *a3;
  if (v6 < 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = *(a2 + 16);
  v9 = sub_2657B099C(0, 0, v6, v8, 0, a2);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if (v11)
  {
    v13 = v8;
  }

  else
  {
    v13 = v9;
  }

  if (v8 < v13)
  {
    goto LABEL_34;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v13 != v8)
  {

    v31 = v8;
    while (v13 < v8)
    {
      if (__OFADD__(v13, 1))
      {
        goto LABEL_31;
      }

      if (__OFADD__(v12, 1))
      {
        goto LABEL_32;
      }

      v33 = v13 + 1;
      v34 = *(a2 + 16 * v13 + 32);
      v19 = swift_allocObject();
      *(v19 + 16) = v34;
      v20 = qword_281445F00;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = sub_2657B1E74();
      __swift_project_value_buffer(v21, qword_281445F08);
      v22 = sub_2657B1E64();
      v23 = sub_2657B1F44();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = a4;
        v25 = swift_slowAlloc();
        *v25 = 134349312;
        *(v25 + 4) = v12;
        *(v25 + 12) = 2050;
        *(v25 + 14) = v12 + 1;
        _os_log_impl(&dword_2657A7000, v22, v23, "Migrating from minor revision %{public}ld to %{public}ld", v25, 0x16u);
        v26 = v25;
        a4 = v24;
        MEMORY[0x26675FC30](v26, -1, -1);
      }

      sub_2657B1F94();

      strcpy(v36, "MigratingFrom_");
      HIBYTE(v36[1]) = -18;
      v5 = MEMORY[0x277D83B88];
      v27 = sub_2657B2004();
      MEMORY[0x26675F630](v27);

      MEMORY[0x26675F630](1601139807, 0xE400000000000000);
      v38 = v12 + 1;
      v28 = sub_2657B2004();
      MEMORY[0x26675F630](v28);

      sub_2657B0DF4(v36[0], v36[1], a4, sub_2657B1B84, v19, a4);

      if (v35)
      {

        return 1;
      }

      ++v12;
      ++v13;
      v8 = v31;
      if (v33 == v31)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_12:

  v37 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](22);
  MEMORY[0x26675F630](0xD000000000000016, 0x80000002657B3270);
  v5 = __PAIR64__(a5, a5) >> 16;
  LODWORD(v38) = v5;
  v14 = sub_2657B2004();
  MEMORY[0x26675F630](v14);

  v36[0] = v37;
  v36[1] = 0;
  v37 = 0xE000000000000000;
  SQLDatabase.perform(_:)(v36);

  if (!v35)
  {

    if (qword_281445F00 == -1)
    {
LABEL_14:
      v15 = sub_2657B1E74();
      __swift_project_value_buffer(v15, qword_281445F08);
      v16 = sub_2657B1E64();
      v17 = sub_2657B1F44();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67240192;
        *(v18 + 4) = v5;
        _os_log_impl(&dword_2657A7000, v16, v17, "Set revision to %{public}d", v18, 8u);
        MEMORY[0x26675FC30](v18, -1, -1);
      }

      return 1;
    }

LABEL_36:
    swift_once();
    goto LABEL_14;
  }

  return 1;
}

uint64_t sub_2657B0598(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2657B0664(v11, 0, 0, 1, a1, a2);
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
    sub_2657AAA00(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2657B0664(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2657B0770(a5, a6);
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
    result = sub_2657B1FB4();
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

uint64_t sub_2657B0770(uint64_t a1, unint64_t a2)
{
  v4 = sub_2657AB424(a1, a2);
  sub_2657B07BC(&unk_287718350);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2657B07BC(uint64_t result)
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

  result = sub_2657B08A8(result, v12, 1, v3);
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

char *sub_2657B08A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022DE0, &qword_2657B27E8);
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

uint64_t sub_2657B099C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a3 >= 1)
  {
    if (v6 < 0 || v6 >= a3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a3)
  {
    return 0;
  }

LABEL_9:
  v7 = result;
  v8 = __OFADD__(result, a3);
  result += a3;
  if (v8)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t type metadata accessor for SQLDatabase.Storage()
{
  result = qword_281446090;
  if (!qword_281446090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2657B0A84(uint64_t a1)
{
  v2 = type metadata accessor for SQLDatabase.Storage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2657B0AE4()
{
  result = qword_280022E30;
  if (!qword_280022E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280022E30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLiteError(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_2657B0D08()
{
  sub_2657B1E24();
  if (v0 <= 0x3F)
  {
    type metadata accessor for BSSqliteDatabaseConnectionDataProtectionClass(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2657B0D8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280022E38, &qword_2657B2E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2657B0DF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v11 = a2;
  v57[0] = a1;
  v57[1] = a2;
  v59 = 32;
  v60 = 0xE100000000000000;
  sub_2657A88F8();
  if (sub_2657B1F64())
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = a3[3];
  v14 = *(v13 + 16);
  os_unfair_lock_lock(v14);
  v15 = a3[6];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v61 = v6;
  a3[6] = v17;
  os_unfair_lock_assert_owner(*(v13 + 16));
  v18 = a3[5];
  v19 = a3[6];
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v53 = a6;
  v54 = a4;
  v56 = v13;
  os_unfair_lock_unlock(v14);
  sub_2657B1F94();

  strcpy(v57, "transaction_");
  BYTE5(v57[1]) = 0;
  HIWORD(v57[1]) = -5120;
  MEMORY[0x26675F630](a1, v11);
  MEMORY[0x26675F630](95, 0xE100000000000000);
  v59 = v20;
  v21 = sub_2657B2004();
  MEMORY[0x26675F630](v21);

  v22 = v11;
  a4 = v57[0];
  v11 = v57[1];
  v55 = sub_2657A894C();
  v58 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](10);
  MEMORY[0x26675F630](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x26675F630](v57[0], v57[1]);
  v57[0] = v58;
  v57[1] = 0;
  v58 = 0xE000000000000000;
  v23 = v61;
  SQLDatabase.perform(_:)(v57);
  a5 = v23;
  if (!v23)
  {
    v52 = a1;
    v61 = v22;

    if (qword_281445F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

  v24 = *(v56 + 16);
  os_unfair_lock_lock(v24);
  v25 = a3[6];
  v16 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (!v16)
  {
    a3[6] = v26;
    os_unfair_lock_assert_owner(*(v56 + 16));
    os_unfair_lock_unlock(v24);
    swift_willThrow();
LABEL_16:
    [v55 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_8:
  v27 = sub_2657B1E74();
  v28 = __swift_project_value_buffer(v27, qword_281445F08);
  v29 = v61;

  v30 = sub_2657B1E64();
  v31 = sub_2657B1F24();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v51 = v28;
    v33 = swift_slowAlloc();
    v57[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_2657B0598(v52, v29, v57);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_2657B0598(a4, v11, v57);
    _os_log_impl(&dword_2657A7000, v30, v31, "Beginning db savepoint [%{public}s]: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675FC30](v33, -1, -1);
    MEMORY[0x26675FC30](v32, -1, -1);
  }

  v34 = *(v56 + 16);
  os_unfair_lock_lock(v34);
  v36 = a3[5];
  v35 = a3[6];
  v16 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_30;
  }

  a3[6] = v37;
  os_unfair_lock_assert_owner(*(v56 + 16));
  v38 = a3[5];
  v16 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v16)
  {
LABEL_30:
    __break(1u);
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  a3[5] = v39;
  os_unfair_lock_assert_owner(*(v56 + 16));
  os_unfair_lock_unlock(v34);
  v54(v53);
  if (a5)
  {
    sub_2657AFDC8(v52, v61, a4, v11);

    swift_willThrow();
    v40 = *(v56 + 16);
    os_unfair_lock_lock(v40);
    v41 = a3[5];
    v16 = __OFSUB__(v41, 1);
    v42 = v41 - 1;
    if (!v16)
    {
      a3[5] = v42;
      os_unfair_lock_assert_owner(*(v56 + 16));
      os_unfair_lock_unlock(v40);
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  sub_2657A9FC8(v52, v61, a4, v11, a3);

  if (v36)
  {

    v43 = sub_2657B1E64();
    v44 = sub_2657B1F24();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      v46 = *(v56 + 16);
      os_unfair_lock_lock(v46);
      v47 = a3[5];
      os_unfair_lock_unlock(v46);
      *(v45 + 4) = v47;

      _os_log_impl(&dword_2657A7000, v43, v44, "Outstanding transactions remaining: %{public}ld", v45, 0xCu);
      MEMORY[0x26675FC30](v45, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_2657AA218(a3, v52, v61);
  }

  v48 = *(v56 + 16);
  os_unfair_lock_lock(v48);
  v49 = a3[5];
  v16 = __OFSUB__(v49, 1);
  v50 = v49 - 1;
  if (!v16)
  {
    a3[5] = v50;
    os_unfair_lock_assert_owner(*(v56 + 16));
    os_unfair_lock_unlock(v48);
    [v55 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_32:
  __break(1u);
}

void sub_2657B1484(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8)
{
  v63[0] = a1;
  v63[1] = a2;
  v65 = 32;
  v66 = 0xE100000000000000;
  sub_2657A88F8();
  if (sub_2657B1F64())
  {
    __break(1u);
    goto LABEL_28;
  }

  v61 = a4;
  v16 = a3[3];
  v17 = *(v16 + 16);
  os_unfair_lock_lock(v17);
  v18 = a3[6];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v60 = a5;
  a3[6] = v20;
  os_unfair_lock_assert_owner(*(v16 + 16));
  v21 = a3[5];
  v22 = a3[6];
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v57 = a6;
  v58 = a7;
  v59 = a8;
  os_unfair_lock_unlock(v17);
  sub_2657B1F94();

  strcpy(v63, "transaction_");
  BYTE5(v63[1]) = 0;
  HIWORD(v63[1]) = -5120;
  MEMORY[0x26675F630](a1, a2);
  MEMORY[0x26675F630](95, 0xE100000000000000);
  v65 = v23;
  v24 = sub_2657B2004();
  MEMORY[0x26675F630](v24);

  a6 = v63[0];
  a8 = v63[1];
  v62 = sub_2657A894C();
  v64 = sub_2657A8C10(MEMORY[0x277D84F90]);
  MEMORY[0x26675F610](10);
  MEMORY[0x26675F630](0x4E494F5045564153, 0xEA00000000002054);
  MEMORY[0x26675F630](v63[0], v63[1]);
  v63[0] = v64;
  v63[1] = 0;
  v64 = 0xE000000000000000;
  v25 = v67;
  SQLDatabase.perform(_:)(v63);
  v67 = v25;
  if (!v25)
  {
    v54 = a1;
    v55 = a2;
    v56 = v16;

    if (qword_281445F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v26 = *(v16 + 16);
  os_unfair_lock_lock(v26);
  v27 = a3[6];
  v19 = __OFSUB__(v27, 1);
  v28 = v27 - 1;
  if (!v19)
  {
    a3[6] = v28;
    os_unfair_lock_assert_owner(*(v16 + 16));
    os_unfair_lock_unlock(v26);
    swift_willThrow();
LABEL_21:
    [v62 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  swift_once();
LABEL_8:
  v29 = sub_2657B1E74();
  __swift_project_value_buffer(v29, qword_281445F08);

  v30 = sub_2657B1E64();
  v31 = sub_2657B1F24();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v63[0] = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_2657B0598(v54, v55, v63);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_2657B0598(a6, a8, v63);
    _os_log_impl(&dword_2657A7000, v30, v31, "Beginning db savepoint [%{public}s]: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675FC30](v33, -1, -1);
    MEMORY[0x26675FC30](v32, -1, -1);
  }

  v34 = *(v56 + 16);
  os_unfair_lock_lock(v34);
  v35 = a3[6];
  v19 = __OFSUB__(v35, 1);
  v36 = v35 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_33;
  }

  v37 = a3[5];
  a3[6] = v36;
  os_unfair_lock_assert_owner(*(v56 + 16));
  v38 = a3[5];
  v19 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (v19)
  {
LABEL_33:
    __break(1u);
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  a3[5] = v39;
  os_unfair_lock_assert_owner(*(v56 + 16));
  os_unfair_lock_unlock(v34);
  v40 = v67;
  v41 = sub_2657B00B0(v61, v60, v57, v58, v59);
  if (v40)
  {
    sub_2657AFDC8(v54, v55, a6, a8);

    swift_willThrow();
    v48 = *(v56 + 16);
    os_unfair_lock_lock(v48);
    v49 = a3[5];
    v19 = __OFSUB__(v49, 1);
    v50 = v49 - 1;
    if (!v19)
    {
      a3[5] = v50;
      os_unfair_lock_assert_owner(*(v56 + 16));
      os_unfair_lock_unlock(v48);
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if (v41)
  {
    sub_2657A9FC8(v54, v55, a6, a8, a3);
  }

  else
  {
    sub_2657AFDC8(v54, v55, a6, a8);
  }

  if (v37)
  {

    v42 = sub_2657B1E64();
    v43 = sub_2657B1F24();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      v45 = v56;
      v46 = *(v56 + 16);
      os_unfair_lock_lock(v46);
      v47 = a3[5];
      os_unfair_lock_unlock(v46);
      *(v44 + 4) = v47;

      _os_log_impl(&dword_2657A7000, v42, v43, "Outstanding transactions remaining: %{public}ld", v44, 0xCu);
      MEMORY[0x26675FC30](v44, -1, -1);

      goto LABEL_25;
    }
  }

  else
  {
    sub_2657AA218(a3, v54, v55);
  }

  v45 = v56;
LABEL_25:
  v51 = *(v45 + 16);
  os_unfair_lock_lock(v51);
  v52 = a3[5];
  v19 = __OFSUB__(v52, 1);
  v53 = v52 - 1;
  if (!v19)
  {
    a3[5] = v53;
    os_unfair_lock_assert_owner(*(v45 + 16));
    os_unfair_lock_unlock(v51);
    [v62 invalidate];
    swift_unknownObjectRelease();
    return;
  }

LABEL_35:
  __break(1u);
  __break(1u);
}

uint64_t sub_2657B1B84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_2657B1BB4()
{
  v0 = sub_2657B1E44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2657B1E74();
  __swift_allocate_value_buffer(v5, qword_281445F08);
  __swift_project_value_buffer(v5, qword_281445F08);
  (*(v1 + 104))(v4, *MEMORY[0x277CB9768], v0);
  return sub_2657B1E54();
}

uint64_t static Logger.database.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281445F00 != -1)
  {
    swift_once();
  }

  v2 = sub_2657B1E74();
  v3 = __swift_project_value_buffer(v2, qword_281445F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
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