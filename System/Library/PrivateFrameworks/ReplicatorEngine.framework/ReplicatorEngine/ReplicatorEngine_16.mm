unint64_t sub_1DEF77C10(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DEF8DE28() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + v6);
      sub_1DEF8E7A8();
      sub_1DEF8E7D8();
      result = sub_1DEF8E7F8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v11 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v3);
      v14 = (v12 + v6);
      if (v3 != v6 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for NetworkMessenger.PartialIncomingMessage(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
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

uint64_t sub_1DEF77DE0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v34 = ~v5;
    v35 = a2 + 64;
    v33 = (sub_1DEF8DE28() + 1) & ~v5;
    do
    {
      v9 = *(v2 + 40);
      v10 = v2;
      v11 = *(v2 + 48) + 56 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
      v16 = *(v11 + 32);
      v18 = *(v11 + 40);
      v17 = *(v11 + 48);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      sub_1DEF8E7C8();
      if (v15)
      {
        sub_1DEF8D9B8();
      }

      MEMORY[0x1E12CBF90](v16);
      MEMORY[0x1E12CBF90](v18);
      MEMORY[0x1E12CBF90](v17);
      v19 = sub_1DEF8E7F8();

      v20 = v19 & v34;
      v2 = v10;
      if (v3 >= v33)
      {
        v4 = v35;
        if (v20 < v33)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v35;
        if (v20 >= v33)
        {
          goto LABEL_12;
        }
      }

      if (v3 >= v20)
      {
LABEL_12:
        v21 = *(v2 + 48);
        v22 = v21 + 56 * v3;
        v23 = (v21 + 56 * v6);
        if (v3 != v6 || v22 >= v23 + 56)
        {
          v24 = *v23;
          v25 = v23[1];
          v26 = v23[2];
          *(v22 + 48) = *(v23 + 6);
          *(v22 + 16) = v25;
          *(v22 + 32) = v26;
          *v22 = v24;
        }

        v27 = *(v2 + 56);
        v28 = v27 + 40 * v3;
        v29 = (v27 + 40 * v6);
        if (v3 != v6 || v28 >= v29 + 40)
        {
          v7 = *v29;
          v8 = v29[1];
          *(v28 + 32) = *(v29 + 4);
          *v28 = v7;
          *(v28 + 16) = v8;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v34;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v30 = *(v2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v32;
    ++*(v2 + 36);
  }

  return result;
}

void *sub_1DEF78044(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1DEF7846C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1DEF780D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a1;
  v49 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v37 = v12;
    v43 = v11;
    v44 = v9;
    v48 = v4;
    v39 = &v36;
    MEMORY[0x1EEE9AC00](v9);
    v38 = &v36 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v14 = 0;
    v46 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v40 = 0;
    v41 = v7 + 2;
    v42 = (v7 + 1);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v47 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v46 + 48) + v7[9] * v12;
      v4 = v7;
      v24 = v7[2];
      v25 = v43;
      v26 = v44;
      v24(v43, v23, v44);
      v27 = v48;
      v28 = v45(v25);
      v48 = v27;
      if (v27)
      {
        (*v42)(v25, v26);

        result = swift_willThrow();
        goto LABEL_18;
      }

      v29 = v28;
      v9 = (*v42)(v25, v26);
      v7 = v4;
      v19 = v47;
      if (v29)
      {
        *&v38[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_1DEECCCE8(v38, v37, v40, v46);
          goto LABEL_18;
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_17;
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v33 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v33;
  }

  v34 = swift_slowAlloc();
  v35 = sub_1DEF78044(v34, v12, a3, v45);

  result = MEMORY[0x1E12CCD70](v34, -1, -1);
  if (!v4)
  {
    result = v35;
  }

LABEL_18:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DEF7846C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v36 = a4;
  v30 = a2;
  v31 = a1;
  v39 = sub_1DEF8D3F8();
  v6 = *(*(v39 - 8) + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v39);
  v37 = a3;
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v34 = v7 + 16;
  v35 = v7;
  v32 = 0;
  v33 = (v7 + 8);
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v19 = v18 | (v10 << 6);
    v20 = v39;
    v21 = v38;
LABEL_11:
    (*(v35 + 16))(v21, *(v37 + 48) + *(v35 + 72) * v19, v20, v8);
    v24 = v36(v21);
    v25 = v21;
    if (v4)
    {
      (*v33)(v21, v20);
      return;
    }

    v26 = v24;
    (*v33)(v25, v20);
    if (v26)
    {
      *(v31 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_16:
        v28 = v37;

        sub_1DEECCCE8(v31, v30, v32, v28);
        return;
      }
    }
  }

  v22 = v10;
  v20 = v39;
  v21 = v38;
  while (1)
  {
    v10 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v23 = *(v12 + 8 * v10);
    ++v22;
    if (v23)
    {
      v16 = (v23 - 1) & v23;
      v19 = __clz(__rbit64(v23)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DEF786CC(uint64_t a1, void *a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1DEF1043C(v14, v8, a1, a2);
      MEMORY[0x1E12CCD70](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1DEEA4718(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1DEF7888C(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v15 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();

    v4 = sub_1DEF8E0D8();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for Record.ID(0);
      v6 = v5;
      v3 = MEMORY[0x1E69E7CC8];
      do
      {
        v13 = v6;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        if (!v14)
        {
          break;
        }

        v7 = *(v14 + 32);
        v8 = a2[2] == v7[2] && a2[3] == v7[3];
        if (v8 || (sub_1DEF8E4E8()) && (a2[4] == v7[4] ? (v9 = a2[5] == v7[5]) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
        {
          v10 = *(v3 + 16);
          if (*(v3 + 24) <= v10)
          {
            sub_1DEEB1864(v10 + 1, 1);
          }

          v3 = v15;
          sub_1DEF41EC0(v14, v13);
        }

        else
        {
        }

        v6 = sub_1DEF8E0D8();
      }

      while (v6);
    }

    sub_1DEE2774C();
  }

  else
  {

    v3 = sub_1DEF786CC(a1, a2);
  }

  return v3;
}

uint64_t sub_1DEF78A84(uint64_t a1)
{
  v52 = sub_1DEF8D3F8();
  v46 = *(v52 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PairingRelationship();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = MEMORY[0x1E69E7CC8];
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = v13;
  v14 = v1 + 3;
  v1[4] = 0;
  v1[5] = 0;
  v1[7] = MEMORY[0x1E69E7CD0];
  v15 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v16 = sub_1DEF8D378();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v45 = v1;
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v13;
  v17 = *(a1 + 16);
  if (!v17)
  {
LABEL_15:
    result = v45;
    *(v45 + 24) = 1;
    return result;
  }

  v18 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v19 = *(v7 + 72);
  v49 = (v46 + 8);
  v50 = (v46 + 16);
  while (1)
  {
    sub_1DEE27FC0(v18, v12, type metadata accessor for PairingRelationship);
    v21 = *v50;
    (*v50)(v5, v12, v52);
    swift_beginAccess();
    sub_1DEE13A90(v12, v51, type metadata accessor for PairingRelationship);
    v22 = *v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v14;
    v24 = v53;
    *v14 = 0x8000000000000000;
    v25 = sub_1DEEAF350(v5);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_1DEEB1C0C(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DEEAF350(v5);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v33 = v53;
      if (v31)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v43 = v25;
    sub_1DEEB7B04();
    v25 = v43;
    v33 = v53;
    if (v31)
    {
LABEL_3:
      sub_1DEF78F38(v51, v33[7] + v25 * v19);
      (*v49)(v5, v52);
      goto LABEL_4;
    }

LABEL_11:
    v47 = v18;
    v48 = v17;
    v34 = v14;
    v35 = v12;
    v33[(v25 >> 6) + 8] |= 1 << v25;
    v36 = v5;
    v37 = v46;
    v38 = v25;
    v39 = v52;
    v21((v33[6] + *(v46 + 72) * v25), v36, v52);
    sub_1DEE13A90(v51, v33[7] + v38 * v19, type metadata accessor for PairingRelationship);
    v40 = *(v37 + 8);
    v5 = v36;
    v40(v36, v39);
    v41 = v33[2];
    v29 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    v33[2] = v42;
    v12 = v35;
    v14 = v34;
    v18 = v47;
    v17 = v48;
LABEL_4:
    v20 = *v14;
    *v14 = v33;

    swift_endAccess();
    v18 += v19;
    if (!--v17)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF78EC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF78F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MetadataInMemoryStore()
{
  result = qword_1ECDE57B8;
  if (!qword_1ECDE57B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF79010()
{
  sub_1DEECFC40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MetadataInMemoryStore.__allocating_init(pairingRelationships:)()
{
  return (*(v0 + 352))();
}

{
  return (*(v0 + 360))();
}

uint64_t dispatch thunk of MetadataInMemoryStore.update(_:)()
{
  return (*(*v0 + 384))();
}

{
  return (*(*v0 + 400))();
}

uint64_t dispatch thunk of MetadataInMemoryStore.metadata(for:)()
{
  return (*(*v0 + 464))();
}

{
  return (*(*v0 + 472))();
}

void *CustomizableRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t CustomizableRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t CustomizableRetryTimer.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_1DEF797BC()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF79838()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF798A8()
{
  v1 = *(v0 + 48);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF79918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(v3 + 48);

  os_unfair_lock_assert_owner(v7 + 4);

  v9 = v4[4];
  v10 = v9 - 1;
  if (v9 < 1)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v20 = sub_1DEF8D508();
    __swift_project_value_buffer(v20, qword_1ECDF6028);
    v30 = sub_1DEF8D4D8();
    v21 = sub_1DEF8DC98();
    if (os_log_type_enabled(v30, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DEE0F000, v30, v21, "Exhausted retry attempts; will not try again", v22, 2u);
      MEMORY[0x1E12CCD70](v22, -1, -1);
    }
  }

  else
  {
    v11 = (*(*v4 + 232))(v8);
    v4[4] = v10;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v12 = sub_1DEF8D508();
    __swift_project_value_buffer(v12, qword_1ECDF6028);
    v13 = sub_1DEF8D4D8();
    v14 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134349056;
      *(v15 + 4) = v11;
      _os_log_impl(&dword_1DEE0F000, v13, v14, "Retry timer will fire in %{public}fs", v15, 0xCu);
      MEMORY[0x1E12CCD70](v15, -1, -1);
    }

    v17 = v4[5];
    if (v17)
    {
      v18 = *(v17 + 24);
      MEMORY[0x1EEE9AC00](v16);

      os_unfair_lock_lock(v18 + 4);
      sub_1DEE3DEF0(v19);
      os_unfair_lock_unlock(v18 + 4);
    }

    type metadata accessor for BasicTimer();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v23 + 24) = v24;
    v25 = v4[5];
    v4[5] = v23;

    v26 = swift_allocObject();
    v26[2] = v4;
    v26[3] = a2;
    v26[4] = a3;
    v27 = *(v23 + 24);
    MEMORY[0x1EEE9AC00](v26);
    MEMORY[0x1EEE9AC00](v28);

    os_unfair_lock_lock(v27 + 4);
    sub_1DEE3DEF0(v29);
    os_unfair_lock_unlock(v27 + 4);
  }
}

void sub_1DEF79D3C()
{
  v1 = v0;
  v2 = *(v0 + 48);

  os_unfair_lock_assert_owner(v2 + 4);

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v3 = sub_1DEF8D508();
  __swift_project_value_buffer(v3, qword_1ECDF6028);
  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "Resetting retry timer", v6, 2u);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  *(v1 + 32) = *(v1 + 16);
}

uint64_t sub_1DEF79E3C()
{
  v1 = v0;
  v2 = *(v0 + 48);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 40))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling retry timer", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    v9 = *(v1 + 40);
    if (v9)
    {
      v10 = *(v9 + 24);
      MEMORY[0x1EEE9AC00](v8);

      os_unfair_lock_lock(v10 + 4);
      sub_1DEE3DEF0(v11);
      os_unfair_lock_unlock(v10 + 4);

      v12 = *(v1 + 40);
    }

    *(v1 + 40) = 0;
  }

  return result;
}

uint64_t CustomizableRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

uint64_t CustomizableRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

void sub_1DEF7A0D0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_1DEF79918(v1, v2, v3);
}

uint64_t sub_1DEF7A104(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 48);

  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12170(&v6);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v6;

  return a2(v4);
}

uint64_t sub_1DEF7A19C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

  else if (qword_1ECDE2E58 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = sub_1DEF8D508();
  __swift_project_value_buffer(v6, qword_1ECDF6028);
  v7 = sub_1DEF8D4D8();
  v8 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_1DEE0F000, v7, v8, "Retry timer fired (attempt #%{public}ld)", v9, 0xCu);
    MEMORY[0x1E12CCD70](v9, -1, -1);
  }

  result = sub_1DEF79E3C();
  *a2 = v4 == 0;
  return result;
}

uint64_t CustomizableRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t MessageType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  sub_1DEE266C0();
  return 0;
}

ReplicatorEngine::MessageType::ID __swiftcall MessageType.ID.init(id:clientID:)(Swift::String id, Swift::String clientID)
{
  *v2 = id;
  v2[1] = clientID;
  result.clientID = clientID;
  result.id = id;
  return result;
}

__n128 MessageType.init(id:protocolVersion:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  result = *a2;
  *(a3 + 32) = *a2;
  return result;
}

uint64_t MessageType.ID.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MessageType.ID.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MessageType.ID.clientID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MessageType.ID.clientID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MessageType.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DEF8DF28();

  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x746E65696C63203BLL, 0xEC000000203A4449);
  MEMORY[0x1E12CB180](v3, v4);
  return 540697705;
}

uint64_t static MessageType.ID.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

uint64_t sub_1DEF7A844(uint64_t a1)
{
  v2 = sub_1DEE24D8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7A880(uint64_t a1)
{
  v2 = sub_1DEE24D8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageType.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57C8, &qword_1DEF99A70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24D8C();
  sub_1DEF8E858();
  v16 = 0;
  v12 = v14[3];
  sub_1DEF8E278();
  if (!v12)
  {
    v15 = 1;
    sub_1DEF8E278();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t MessageType.ID.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

uint64_t MessageType.ID.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7AB08()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7AB70()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DEF8D9B8();

  return sub_1DEF8D9B8();
}

uint64_t MessageType.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 MessageType.id.setter(__n128 *a1)
{
  v7 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = v1->n128_u64[1];
  v5 = v1[1].n128_u64[1];

  result = v7;
  *v1 = v7;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

__n128 MessageType.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 MessageType.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

uint64_t sub_1DEF7ACD0(uint64_t a1)
{
  v2 = sub_1DEE25008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7AD0C(uint64_t a1)
{
  v2 = sub_1DEE25008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE57D8, &qword_1DEF99A80);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[5];
  v17 = v1[4];
  v18 = v9;
  v16 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE25008();

  sub_1DEF8E858();
  v21 = v7;
  v22 = v8;
  v23 = v18;
  v24 = v10;
  v25 = 0;
  sub_1DEEBBCE8();
  v13 = v19;
  sub_1DEF8E298();

  if (!v13)
  {
    v21 = v17;
    v22 = v16;
    v25 = 1;
    sub_1DEEBBB54();
    sub_1DEF8E298();
  }

  return (*(v20 + 8))(v6, v3);
}

uint64_t MessageType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v5);
  return MEMORY[0x1E12CBF90](v6);
}

uint64_t MessageType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7B01C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1DEF7B07C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7B110()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v5);
  return MEMORY[0x1E12CBF90](v6);
}

uint64_t sub_1DEF7B174()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  MEMORY[0x1E12CBF90](v5);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine11MessageTypeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DEF8E4E8() & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1DEF8E4E8() & 1) == 0)
  {
    return 0;
  }

  return v4 == v8 && v5 == v9;
}

unint64_t sub_1DEF7B2BC()
{
  result = qword_1ECDE3550;
  if (!qword_1ECDE3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3550);
  }

  return result;
}

unint64_t sub_1DEF7B318()
{
  result = qword_1ECDE57E8;
  if (!qword_1ECDE57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57E8);
  }

  return result;
}

uint64_t sub_1DEF7B36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1DEF7B3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF7B424()
{
  result = qword_1ECDE57F0;
  if (!qword_1ECDE57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57F0);
  }

  return result;
}

unint64_t sub_1DEF7B47C()
{
  result = qword_1ECDE57F8;
  if (!qword_1ECDE57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57F8);
  }

  return result;
}

unint64_t sub_1DEF7B4D4()
{
  result = qword_1ECDE3590;
  if (!qword_1ECDE3590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3590);
  }

  return result;
}

unint64_t sub_1DEF7B52C()
{
  result = qword_1ECDE3598;
  if (!qword_1ECDE3598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3598);
  }

  return result;
}

unint64_t sub_1DEF7B584()
{
  result = qword_1ECDE3578;
  if (!qword_1ECDE3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3578);
  }

  return result;
}

unint64_t sub_1DEF7B5DC()
{
  result = qword_1ECDE3580;
  if (!qword_1ECDE3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3580);
  }

  return result;
}

uint64_t RecordMetadata.copy(replacingID:clientDefinedID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25 - v10;
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v12, v15);
  v18 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v11);
  v19 = *(v4 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v20 = *(v7 + 48);
  v21 = *(v7 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v23 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v23 = swift_allocObject();
    *(v23 + 16) = v26;
    *(v23 + 24) = a3;
  }

  *(v22 + 24) = v23;
  (*(v13 + 32))(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v17, v12);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v18;
  sub_1DEF7D740(v11, v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v19;

  return v22;
}

uint64_t RecordMetadata.clientDefinedID.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t RecordMetadata.__allocating_init(id:clientDefinedID:version:destination:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  v18 = *a5;
  v19 = *a7;
  *(v17 + 16) = a1;
  v20 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
  }

  *(v17 + 24) = v20;
  v21 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v22 = sub_1DEF8D3F8();
  (*(*(v22 - 8) + 32))(v17 + v21, a4, v22);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v18;
  sub_1DEF7D740(a6, v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v19;
  return v17;
}

uint64_t RecordMetadata.copy(replacingDestination:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v16 = v2[2];
  v15 = v2[3];
  if (v15)
  {
    v18 = *(v15 + 16);
    v17 = *(v15 + 24);
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  (*(v10 + 16))(v13, v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v9);
  sub_1DEECF850(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v8);
  v19 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v20 = *(v4 + 48);
  v21 = *(v4 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  v23 = 0;
  if (v17)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    *(v23 + 24) = v17;
  }

  *(v22 + 24) = v23;
  (*(v10 + 32))(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v13, v9);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v14;
  sub_1DEF7D740(v8, v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v19;

  return v22;
}

uint64_t RecordMetadata.copy(replacingVersion:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[2];
  v14 = v2[3];
  if (v14)
  {
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  (*(v10 + 16))(v13, a1, v9);
  v18 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v8);
  v19 = *(v2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v20 = *(v4 + 48);
  v21 = *(v4 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = v15;
  v23 = 0;
  if (v16)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v23 = swift_allocObject();
    *(v23 + 16) = v17;
    *(v23 + 24) = v16;
  }

  *(v22 + 24) = v23;
  (*(v10 + 32))(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v13, v9);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v18;
  sub_1DEF7D740(v8, v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v19;

  return v22;
}

BOOL sub_1DEF7BE2C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1DEF8D3F8() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1DEF7F528(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
  }

  while ((sub_1DEF8D908() & 1) == 0);
  return v4 != v5;
}

BOOL sub_1DEF7BF38(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t RecordMetadata.copy(replacingClientDefinedID:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - v8;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[2];
  (*(v11 + 16))(v15, v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v10, v13);
  v17 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEECF850(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v9);
  v18 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v19 = *(v5 + 48);
  v20 = *(v5 + 52);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v22 = 0;
  if (a2)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a2;
  }

  *(v21 + 24) = v22;
  (*(v11 + 32))(v21 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v15, v10);
  *(v21 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v17;
  sub_1DEF7D740(v9, v21 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v21 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v18;

  return v21;
}

uint64_t RecordMetadata.isRelevantToZoneVersionCalculation(for:)(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    v12 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    v13 = !v12 || sub_1DEF7BE2C(a1, v12);
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    v13 = sub_1DEF8D3A8();
    (*(v4 + 8))(v7, v3);
    v14 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v14)
    {
      sub_1DEF7BE2C(a1, v14);
    }
  }

  return v13 & 1;
}

BOOL RecordMetadata.matches(predicate:)(unsigned __int8 *a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Record.ID.Ownership(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *a1;
  if (v15 != 2 && (v15 & 1) != 0)
  {
    sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, &v27 - v13);
    if ((*(v4 + 48))(v14, 1, v3) != 1)
    {
      sub_1DEF03EA8(v14);
      return 0;
    }
  }

  v16 = a1[1];
  if (v16 != 2 && (v16 & 1) != 0)
  {
    sub_1DEF03DDC(*(v1 + 16) + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v11);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {
      return 0;
    }

    (*(v4 + 32))(v7, v11, v3);
    v17 = *(type metadata accessor for MetadataRecordPredicate() + 32);
    v18 = sub_1DEF8D3A8();
    (*(v4 + 8))(v7, v3);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = a1[2];
  if (v19 != 2)
  {
    v20 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    if (v20)
    {
      v21 = type metadata accessor for MetadataRecordPredicate();
      if ((sub_1DEF7BE2C(&a1[*(v21 + 32)], v20) ^ v19))
      {
        return 0;
      }
    }

    else if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *(a1 + 1);
  if (!v22)
  {
    return 1;
  }

  v23 = *(*(v1 + 16) + 32);

  v25 = sub_1DEF01AD4(v24, v22);

  return (v25 & 1) != 0;
}

uint64_t sub_1DEF7C628()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7C69C()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7C790()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF7C7C8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8();
  }
}

void sub_1DEF7C7F4()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  JUMPOUT(0x1E12CB1B0);
}

uint64_t sub_1DEF7C800()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);
  return sub_1DEF8D9B8();
}

uint64_t sub_1DEF7C80C()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t RecordMetadata.version.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v4 = sub_1DEF8D3F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecordMetadata.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v18 - v4;
  v6 = sub_1DEF8D378();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  v11 = *(v0 + 16);
  v12 = Record.ID.description.getter();
  MEMORY[0x1E12CB180](v12);

  MEMORY[0x1E12CB180](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
  sub_1DEF8D3F8();
  sub_1DEF7F528(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
  v13 = sub_1DEF8E2E8();
  MEMORY[0x1E12CB180](v13);

  MEMORY[0x1E12CB180](0x6E6974736564203BLL, 0xEF203A6E6F697461);
  v18[0] = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  sub_1DEF8E008();
  MEMORY[0x1E12CB180](0x6E6F6974706F203BLL, 0xEB00000000203A73);
  v18[0] = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
  v14 = sub_1DEF8D988();
  MEMORY[0x1E12CB180](v14);

  v15 = v19;
  sub_1DEECF850(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1DEE171B4(v5, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1DEF8DF28();

    strcpy(v18, "; expiration: ");
    HIBYTE(v18[1]) = -18;
    sub_1DEF7F528(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
    v16 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v16);

    MEMORY[0x1E12CB180](59, 0xE100000000000000);
    MEMORY[0x1E12CB180](v18[0], v18[1]);

    (*(v7 + 8))(v10, v6);
    return v19;
  }

  return v15;
}

uint64_t RecordMetadata.hash(into:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v46 - v4;
  v5 = sub_1DEF8D378();
  v49 = *(v5 - 8);
  v50 = v5;
  v6 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D3F8();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = type metadata accessor for Record.ID.Ownership(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);
  v20 = v19[2];
  v21 = v19[3];
  sub_1DEF8D9B8();
  v22 = v19[4];
  v23 = v22[2];
  v24 = v22[3];
  sub_1DEF8D9B8();
  v26 = v22[4];
  v25 = v22[5];

  sub_1DEF8D9B8();

  v27 = v19 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
  v28 = v47;
  sub_1DEF03DDC(v27, v18);
  if ((*(v28 + 48))(v18, 1, v8) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v28 + 32))(v14, v18, v8);
    MEMORY[0x1E12CBF60](1);
    sub_1DEF7F528(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v28 + 8))(v14, v8);
  }

  v29 = v28;
  v30 = *(v1 + 24);
  if (v30)
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    v33 = *(v1 + 24);

    sub_1DEF8D9B8();
  }

  sub_1DEF7F528(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  v51 = v1;
  v34 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (v34)
  {
    MEMORY[0x1E12CBF60](0);
    MEMORY[0x1E12CBF60](*(v34 + 16));
    v35 = *(v34 + 16);
    if (v35)
    {
      v37 = v29 + 16;
      v36 = *(v29 + 16);
      v38 = v34 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v39 = *(v29 + 72);
      do
      {
        v36(v11, v38, v8);
        sub_1DEF8D8C8();
        (*(v37 - 8))(v11, v8);
        v38 += v39;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    MEMORY[0x1E12CBF60](1);
  }

  v40 = v51;
  v41 = v48;
  sub_1DEECF850(v51 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v48);
  v43 = v49;
  v42 = v50;
  if ((*(v49 + 48))(v41, 1, v50) == 1)
  {
    sub_1DEE171B4(v41, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    v44 = v46;
    (*(v43 + 32))(v46, v41, v42);
    sub_1DEF7F528(&qword_1ECDE42F8, MEMORY[0x1E6969530]);
    sub_1DEF8D8C8();
    (*(v43 + 8))(v44, v42);
  }

  return MEMORY[0x1E12CBF90](*(v40 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options));
}

uint64_t RecordMetadata.__allocating_init(id:version:destination:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a3;
  (*(v13 + 16))(v17, a2, v12, v15);
  v19 = sub_1DEF8D378();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  (*(v13 + 8))(a2, v12);
  v20 = *(v4 + 48);
  v21 = *(v4 + 52);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = 0;
  (*(v13 + 32))(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v17, v12);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v18;
  sub_1DEF7D740(v11, v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v22 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = 0;
  return v22;
}

uint64_t RecordMetadata.__allocating_init(id:clientDefinedID:version:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  (*(v17 + 16))(v21, a4, v16, v19);
  v23 = sub_1DEF8D378();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  (*(v17 + 8))(a4, v16);
  v24 = *(v6 + 48);
  v25 = *(v6 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  v27 = 0;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v27 = swift_allocObject();
    *(v27 + 16) = a2;
    *(v27 + 24) = a3;
  }

  *(v26 + 24) = v27;
  (*(v17 + 32))(v26 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v21, v16);
  *(v26 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v22;
  sub_1DEF7D740(v15, v26 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v26 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = 0;
  return v26;
}

uint64_t RecordMetadata.init(id:clientDefinedID:version:destination:expiration:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v10 = *a5;
  v11 = *a7;
  *(v7 + 16) = a1;
  if (a3)
  {
    type metadata accessor for RecordMetadata.ClientDefinedID();
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
  }

  else
  {
    v14 = 0;
  }

  *(v7 + 24) = v14;
  v15 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v16 = sub_1DEF8D3F8();
  (*(*(v16 - 8) + 32))(v7 + v15, a4, v16);
  *(v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v10;
  sub_1DEF7D740(a6, v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
  *(v7 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v11;
  return v7;
}

uint64_t sub_1DEF7D740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RecordMetadata.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  RecordMetadata.init(from:)(a1);
  return v5;
}

void *RecordMetadata.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v42 = v2;
  v43 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v36 - v8;
  v9 = sub_1DEF8D3F8();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5800, &qword_1DEF99F58);
  v40 = *(v13 - 8);
  v14 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF7EDE0();
  v18 = v42;
  sub_1DEF8E848();
  if (v18)
  {
    v30 = *(*v1 + 48);
    v31 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    v32 = a1;
  }

  else
  {
    v38 = v12;
    v20 = v40;
    v19 = v41;
    v42 = a1;
    type metadata accessor for Record.ID(0);
    v46 = 0;
    sub_1DEF7F528(&qword_1ECDE52C8, type metadata accessor for Record.ID);
    sub_1DEF8E1F8();
    v21 = v13;
    v1[2] = v44;
    LOBYTE(v44) = 1;
    v22 = v16;
    v23 = sub_1DEF8E198();
    v25 = v20;
    v37 = v22;
    if (v24)
    {
      v26 = v23;
      v27 = v24;
      type metadata accessor for RecordMetadata.ClientDefinedID();
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v27;
      v25 = v20;
    }

    else
    {
      v28 = 0;
    }

    v3[3] = v28;
    LOBYTE(v44) = 2;
    sub_1DEF7F528(&qword_1ECDE3630, MEMORY[0x1E69695A8]);
    v29 = v38;
    sub_1DEF8E1F8();
    (*(v39 + 32))(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v29, v9);
    v46 = 3;
    sub_1DEF7EE34();
    v41 = 0;
    sub_1DEF8E1F8();
    *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v44;
    sub_1DEF8D378();
    LOBYTE(v44) = 4;
    sub_1DEF7F528(&qword_1ECDE5818, MEMORY[0x1E6969530]);
    sub_1DEF8E1B8();
    sub_1DEF7D740(v19, v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration);
    v46 = 5;
    sub_1DEF7EE88();
    sub_1DEF8E1B8();
    v34 = (v25 + 8);
    if (v45 == 1)
    {
      (*v34)(v37, v21);
      v35 = 0;
    }

    else
    {
      v35 = v44;
      (*v34)(v37, v21);
    }

    v32 = v42;
    *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v35;
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v3;
}

uint64_t RecordMetadata.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v4 = sub_1DEF8D3F8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
  return v0;
}

uint64_t RecordMetadata.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
  v4 = sub_1DEF8D3F8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination];

  sub_1DEE171B4(&v0[OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration], &qword_1ECDE4DC0, &qword_1DEF91640);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t RecordMetadata.hashValue.getter()
{
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7E070()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF7E0D8()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  RecordMetadata.hash(into:)();
  return sub_1DEF8E7F8();
}

ReplicatorEngine::RecordMetadata::CodingKeys_optional __swiftcall RecordMetadata.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DEF8E168();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReplicatorEngine::RecordMetadata::CodingKeys_optional __swiftcall RecordMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = RecordMetadata.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t RecordMetadata.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74616E6974736564;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6544746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_1DEF7E2C0()
{
  *v0;
  *v0;
  *v0;
  sub_1DEF8D9B8();
}

void sub_1DEF7E3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74616E6974736564;
  v7 = 0xEA00000000006E6FLL;
  v8 = 0x6974617269707865;
  if (v2 != 4)
  {
    v8 = 0x736E6F6974706FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF444964656E6966;
  v10 = 0x6544746E65696C63;
  if (v2 != 1)
  {
    v10 = 0x6E6F6973726576;
    v9 = 0xE700000000000000;
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

uint64_t sub_1DEF7E494()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x74616E6974736564;
  v4 = 0x6974617269707865;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6544746E65696C63;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973726576;
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

uint64_t sub_1DEF7E590(uint64_t a1)
{
  v2 = sub_1DEF7EDE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF7E5CC(uint64_t a1)
{
  v2 = sub_1DEF7EDE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecordMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5828, &qword_1DEF99F60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF7EDE0();
  sub_1DEF8E858();
  v16 = *(v3 + 16);
  HIBYTE(v15) = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF7F528(&qword_1ECDE5480, type metadata accessor for Record.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    v12 = *(v3 + 24);
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      LOBYTE(v16) = 1;

      sub_1DEF8E278();
    }

    LOBYTE(v16) = 2;
    sub_1DEF8D3F8();
    sub_1DEF7F528(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
    sub_1DEF8E298();
    v16 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
    HIBYTE(v15) = 3;
    sub_1DEF7EEDC();

    sub_1DEF8E298();

    LOBYTE(v16) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
    sub_1DEF7EF30();
    sub_1DEF8E298();
    v16 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
    HIBYTE(v15) = 5;
    sub_1DEF7EFE4();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

void *sub_1DEF7E974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = RecordMetadata.init(from:)(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

BOOL _s16ReplicatorEngine14RecordMetadataC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D378();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DE8, &unk_1DEF9A500);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28[-v15];
  if ((_s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (v17)
  {
    if (!v18 || (*(v17 + 16) != *(v18 + 16) || *(v17 + 24) != *(v18 + 24)) && (sub_1DEF8E4E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  if ((sub_1DEF8D3A8() & 1) == 0)
  {
    return 0;
  }

  v19 = *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
  if (!*(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination))
  {

    if (v19)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (!v19)
  {

    return 0;
  }

  v20 = *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);

  v29 = sub_1DEE4DFB8(v21, v19);

  if (v29)
  {
LABEL_16:
    v22 = OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration;
    v23 = *(v13 + 48);
    sub_1DEECF850(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v16);
    sub_1DEECF850(a2 + v22, &v16[v23]);
    v24 = *(v5 + 48);
    if (v24(v16, 1, v4) == 1)
    {
      if (v24(&v16[v23], 1, v4) == 1)
      {
        sub_1DEE171B4(v16, &qword_1ECDE4DC0, &qword_1DEF91640);
        return *(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) == *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      }

      goto LABEL_22;
    }

    sub_1DEECF850(v16, v12);
    if (v24(&v16[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_22:
      sub_1DEE171B4(v16, &qword_1ECDE3DE8, &unk_1DEF9A500);
      return 0;
    }

    (*(v5 + 32))(v8, &v16[v23], v4);
    sub_1DEF7F528(&qword_1ECDE3DF0, MEMORY[0x1E6969530]);
    v26 = sub_1DEF8D908();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v12, v4);
    sub_1DEE171B4(v16, &qword_1ECDE4DC0, &qword_1DEF91640);
    if (v26)
    {
      return *(a1 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) == *(a2 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
    }
  }

  return 0;
}

unint64_t sub_1DEF7EDE0()
{
  result = qword_1ECDE5808;
  if (!qword_1ECDE5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5808);
  }

  return result;
}

unint64_t sub_1DEF7EE34()
{
  result = qword_1ECDE5810;
  if (!qword_1ECDE5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5810);
  }

  return result;
}

unint64_t sub_1DEF7EE88()
{
  result = qword_1ECDE5820;
  if (!qword_1ECDE5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5820);
  }

  return result;
}

unint64_t sub_1DEF7EEDC()
{
  result = qword_1ECDE5830;
  if (!qword_1ECDE5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5830);
  }

  return result;
}

unint64_t sub_1DEF7EF30()
{
  result = qword_1ECDE5838;
  if (!qword_1ECDE5838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4DC0, &qword_1DEF91640);
    sub_1DEF7F528(&qword_1ECDE5840, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5838);
  }

  return result;
}

unint64_t sub_1DEF7EFE4()
{
  result = qword_1ECDE5848;
  if (!qword_1ECDE5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5848);
  }

  return result;
}

unint64_t sub_1DEF7F03C()
{
  result = qword_1ECDE5850;
  if (!qword_1ECDE5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5850);
  }

  return result;
}

unint64_t sub_1DEF7F094()
{
  result = qword_1ECDE5858;
  if (!qword_1ECDE5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5858);
  }

  return result;
}

unint64_t sub_1DEF7F0E8()
{
  result = qword_1ECDE34A8;
  if (!qword_1ECDE34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34A8);
  }

  return result;
}

unint64_t sub_1DEF7F140()
{
  result = qword_1ECDE34A0;
  if (!qword_1ECDE34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE34A0);
  }

  return result;
}

uint64_t type metadata accessor for RecordMetadata()
{
  result = qword_1ECDE36F0;
  if (!qword_1ECDE36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DEF7F274()
{
  result = qword_1ECDE5868;
  if (!qword_1ECDE5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5868);
  }

  return result;
}

unint64_t sub_1DEF7F2CC()
{
  result = qword_1ECDE5870;
  if (!qword_1ECDE5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5870);
  }

  return result;
}

unint64_t sub_1DEF7F324()
{
  result = qword_1ECDE5878;
  if (!qword_1ECDE5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5878);
  }

  return result;
}

void sub_1DEF7F380()
{
  v0 = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DEECFC40();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1DEF7F528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEF7F578(uint64_t a1)
{
  v27[5] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DEF80438(a1, &v23[-v4]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5888, &qword_1DEF9A520);
  if (!swift_dynamicCast())
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v5 = sub_1DEE171B4(v25, &qword_1ECDE5890, &unk_1DEF9A528);
    v25[0] = xmmword_1DEF95880;
    MEMORY[0x1EEE9AC00](v5);
    *&v23[-16] = a1;
    v8 = sub_1DEF2B76C(sub_1DEF804A8);
    v10 = v9;
    v11 = v6;
    v12 = *(&v25[0] + 1) >> 62;
    if ((*(&v25[0] + 1) >> 62) > 1)
    {
      if (v12 != 2)
      {
        if (!v7)
        {
          goto LABEL_18;
        }

        v17 = 0;
LABEL_30:
        if (v17 < v7)
        {
          goto LABEL_36;
        }

        sub_1DEF8D248();
LABEL_32:

        goto LABEL_33;
      }

      v14 = *(*&v25[0] + 16);
      v13 = *(*&v25[0] + 24);
      v15 = __OFSUB__(v13, v14);
      v16 = v13 - v14;
      if (v15)
      {
        goto LABEL_37;
      }

      if (v7 != v16)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!v12)
      {
        if (v7 == BYTE14(v25[0]))
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      if (__OFSUB__(DWORD1(v25[0]), v25[0]))
      {
        goto LABEL_38;
      }

      if (v7 != DWORD1(v25[0]) - LODWORD(v25[0]))
      {
LABEL_13:
        if (v12 == 2)
        {
          v17 = *(*&v25[0] + 24);
        }

        else if (v12 == 1)
        {
          v17 = *&v25[0] >> 32;
        }

        else
        {
          v17 = BYTE14(v25[0]);
        }

        goto LABEL_30;
      }
    }

LABEL_18:
    memset(v27, 0, 15);
    if (v6)
    {
      LOBYTE(v18) = 0;
      do
      {
        v19 = v8[2];
        if (v10 == v19)
        {
          break;
        }

        if (v10 >= v19)
        {
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

        *(v27 + v18) = *(v8 + v10 + 32);
        v18 = v18 + 1;
        if ((v18 >> 8))
        {
          goto LABEL_35;
        }

        if (v18 == 14)
        {
          *&v24 = v27[0];
          *(&v24 + 6) = *(v27 + 6);
          sub_1DEF8D258();
          LOBYTE(v18) = 0;
        }

        ++v10;
        --v11;
      }

      while (v11);
      if (v18)
      {
        *&v24 = v27[0];
        *(&v24 + 6) = *(v27 + 6);
        sub_1DEF8D258();
      }
    }

    goto LABEL_32;
  }

  sub_1DEE2F1AC(v25, v27);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DEF8D0A8();
  v25[0] = v24;
  __swift_destroy_boxed_opaque_existential_1(v27);
LABEL_33:
  v20 = v25[0];
  sub_1DEE1BFF4(*&v25[0], *(&v25[0] + 1));
  sub_1DEE171B4(a1, &qword_1ECDE4108, &unk_1DEF95370);
  sub_1DEE1BFA0(v20, *(&v20 + 1));
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t static UniformHasher.hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v26 - v15;
  v17 = type metadata accessor for UniformHasher();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  UniformHasher.combine<A>(_:)(a1, a2, a3);
  if (v4)
  {
    return sub_1DEF8000C(v20);
  }

  sub_1DEF8D7F8();
  *&v12[*(v9 + 36)] = 16;
  v22 = sub_1DEF7F578(v12);
  sub_1DEE3DF08(v22, v23, v16);
  v24 = sub_1DEF8D3F8();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v16, 1, v24);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8000C(v20);
    return (*(v25 + 32))(a4, v16, v24);
  }

  return result;
}

void UniformHasher.combine<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E12CC160]();
  sub_1DEF7FBBC(a1, v3, a2, a3, &v8);
  objc_autoreleasePoolPop(v7);
}

uint64_t sub_1DEF7FBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  v11 = sub_1DEE29274(v16);
  if (v5)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *a5 = v5;
  }

  else
  {
    v12 = sub_1DEE1187C(v11);
    v14 = v13;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1DEE1BFF4(v12, v14);
    sub_1DEF11C10(v12, v14);
    sub_1DEE1BFA0(v12, v14);
    return sub_1DEE1BFA0(v12, v14);
  }

  return result;
}

void UniformHasher.combine<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x1E12CC160]();
  sub_1DEF7FD68(a1, v2, a2, &v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1DEF7FD68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(STRPPropertyListTypeEncoder) init];
  v8 = [v7 encodeRootObject_];

  v9 = sub_1DEE1187C(v8);
  v11 = v10;
  result = swift_unknownObjectRelease();
  if (v4)
  {
    *a4 = v4;
  }

  else
  {
    sub_1DEE1BFF4(v9, v11);
    sub_1DEF11C10(v9, v11);
    sub_1DEE1BFA0(v9, v11);
    return sub_1DEE1BFA0(v9, v11);
  }

  return result;
}

uint64_t UniformHasher.finalize()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v16 - v9;
  sub_1DEF8D7F8();
  *&v6[*(v3 + 44)] = 16;
  v11 = sub_1DEF7F578(v6);
  sub_1DEE3DF08(v11, v12, v10);
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v10, 1, v13);
  if (result != 1)
  {
    return (*(v14 + 32))(a1, v10, v13);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for UniformHasher()
{
  result = qword_1ED786020;
  if (!qword_1ED786020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8000C(uint64_t a1)
{
  v2 = type metadata accessor for UniformHasher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UniformHasher.hash<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for UniformHasher();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  UniformHasher.combine<A>(_:)(a1, a2);
  if (v3)
  {
    return sub_1DEF8000C(v18);
  }

  sub_1DEF8D7F8();
  *&v10[*(v7 + 36)] = 16;
  v20 = sub_1DEF7F578(v10);
  sub_1DEE3DF08(v20, v21, v14);
  v22 = sub_1DEF8D3F8();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v14, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8000C(v18);
    return (*(v23 + 32))(a3, v14, v22);
  }

  return result;
}

uint64_t sub_1DEF80294()
{
  result = sub_1DEF8D818();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DEF80300(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_1DEF8036C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1DEF80438(a3, &v13 - v10);
  v11 = sub_1DEF2D660(&v14, a1, a2);
  result = v15;
  *a4 = v14;
  *(a4 + 8) = result;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1DEF80438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1DEF804A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9[2] = *(v3 + 16);
  result = sub_1DEF80300(sub_1DEF80504, v9, a1, a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

ReplicatorEngine::MessageSendOptions __swiftcall MessageSendOptions.init(timeout:retries:)(Swift::Double timeout, Swift::Int retries)
{
  *v2 = timeout;
  *(v2 + 8) = retries;
  result.timeout = timeout;
  result.retries = retries;
  return result;
}

uint64_t IncomingSyncServiceMessage.init(message:url:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for IncomingSyncServiceMessage();
  v11 = *(v10 + 20);
  v12 = sub_1DEF8D1E8();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  sub_1DEEE9E30(a1, a5);
  result = sub_1DEED4690(a2, a5 + v11);
  v14 = (a5 + *(v10 + 24));
  *v14 = a3;
  v14[1] = a4;
  return result;
}

uint64_t type metadata accessor for IncomingSyncServiceMessage()
{
  result = qword_1ECDE58A0;
  if (!qword_1ECDE58A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8064C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Message();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IncomingSyncServiceMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IncomingSyncServiceMessage() + 20);

  return sub_1DEE2C3D8(v3, a1);
}

uint64_t IncomingSyncServiceMessage.url.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IncomingSyncServiceMessage() + 20);

  return sub_1DEED4690(a1, v3);
}

uint64_t IncomingSyncServiceMessage.deviceID.getter()
{
  v1 = (v0 + *(type metadata accessor for IncomingSyncServiceMessage() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t IncomingSyncServiceMessage.deviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for IncomingSyncServiceMessage() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FileCompressionType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF80900()
{
  result = qword_1ECDE5898;
  if (!qword_1ECDE5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5898);
  }

  return result;
}

void sub_1DEF809CC()
{
  type metadata accessor for Message();
  if (v0 <= 0x3F)
  {
    sub_1DEED9C80();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of MetadataPersisting.metadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 64))();
}

{
  return (*(a3 + 72))();
}

uint64_t dispatch thunk of MutableMetadataPersisting.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))();
}

{
  return (*(a3 + 128))();
}

uint64_t PropertyListTypeEncoder.version.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PropertyListTypeEncoder.__allocating_init(version:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t PropertyListTypeEncoder.init(version:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t sub_1DEF80E2C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = *(*(a2 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v19[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v9);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v12 = v19[0];
  }

  else
  {
    v13 = *(v4 + 24);
    v14 = *(v4 + 32);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = v13;
    *(v15 + 32) = v14;
    v19[3] = v7;
    v19[4] = sub_1DEE2961C(&qword_1ED7863D0);
    v19[0] = v15;

    sub_1DEF8D8A8();
    if (v3)
    {

      return __swift_destroy_boxed_opaque_existential_1(v19);
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
    v12 = *(v15 + 16);
    swift_unknownObjectRetain();
  }

  v17 = *(v4 + 16);
  *(v4 + 16) = v12;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF8102C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v5 = *(v3 + 16);
  *(v3 + 16) = v4;
  v6 = v4;
  swift_unknownObjectRelease();
  v7 = *(v3 + 24);
  LOBYTE(v3) = *(v3 + 32);
  a1[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a1[4] = sub_1DEF815D4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  *(result + 24) = v6;
  *(result + 32) = v7;
  *(result + 40) = v3;
  return result;
}

uint64_t sub_1DEF810D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = a1;
  a2[4] = sub_1DEE2961C(&qword_1ED7863C8);
  *a2 = v4;
}

uint64_t sub_1DEF81134()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81184()
{
  v1 = *v0;
  v2 = sub_1DEF8DB38();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF811C0()
{
  v1 = *v0;
  v2 = sub_1DEF8D918();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF811FC()
{
  v1 = *v0;
  v2 = sub_1DEF8DB98();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81238()
{
  v1 = *v0;
  v2 = sub_1DEF8DBD8();
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF813C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF8142C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *v4;
  v6 = a4();
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF81580()
{
  result = *(*v0 + 24);
  v2 = *(*v0 + 32);
  return result;
}

uint64_t sub_1DEF81590(uint64_t a1)
{
  result = sub_1DEE2961C(&qword_1ED7863D0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DEF815D4()
{
  result = qword_1ED786080;
  if (!qword_1ED786080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786080);
  }

  return result;
}

void sub_1DEF81628(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF81688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DB38();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF816D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1DEF8D918();
  sub_1DEE28720(v6, a3, a4);
}

void sub_1DEF81720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8DB98();
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF8176C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8DBD8();
  sub_1DEE28720(v4, a1, a2);
}

void sub_1DEF817B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DC28();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E6C8();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E748();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF8189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E758();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF818E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E768();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8DDD8();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E788();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF819CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E818();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E828();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1DEF8E838();
  sub_1DEE28720(v5, a2, a3);
}

void sub_1DEF81AB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  sub_1DEE28720(v8, a1, a2);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF907F0;
  v11 = *(a2 + 16);
  *(inited + 56) = v11;
  *(inited + 64) = *(a2 + 24);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, a1, v11);
  v13 = v8;

  sub_1DEE2262C(inited);
  v14 = v9;
  v15 = v4[2];
  LOBYTE(v4) = *(v4 + 24);
  a3[3] = &type metadata for PropertyListTypeEncoder.UnkeyedEncoder;
  a3[4] = sub_1DEF815D4();
  v16 = swift_allocObject();
  *a3 = v16;

  *(v16 + 16) = v14;
  *(v16 + 24) = v13;
  *(v16 + 32) = v15;
  *(v16 + 40) = v4;
}

uint64_t sub_1DEF82188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = *(v8 + 16);
  v12(&v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v10);
  sub_1DEE29204();
  if (swift_dynamicCast())
  {
    v13 = v20[0];
  }

  else
  {
    v14 = *(v3 + 16);
    v21 = v3;
    v15 = *(v3 + 24);
    type metadata accessor for PropertyListTypeEncoder();
    inited = swift_initStackObject();
    *(inited + 16) = v14;
    *(inited + 24) = v15;
    v20[3] = a2;
    v20[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
    (v12)(boxed_opaque_existential_1, a1, a2);
    v13 = sub_1DEE29274(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    if (v4)
    {
      return result;
    }

    v3 = v21;
  }

  [*(v3 + 8) addObject_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1DEF82318()
{
  [v0[1] addObject_];
  v2 = *v0;
  v3 = v0[2];
  v4 = *(v0 + 24);
  type metadata accessor for PropertyListTypeEncoder.KeyedEncoder();

  swift_getWitnessTable();
  return sub_1DEF8E2C8();
}

void sub_1DEF82400()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  [*(v0 + 8) addObject_];
}

void sub_1DEF82458()
{
  v1 = sub_1DEF8DB38();
  [*(v0 + 8) addObject_];
}

void sub_1DEF8249C()
{
  v1 = sub_1DEF8D918();
  [*(v0 + 8) addObject_];
}

void sub_1DEF824E0()
{
  v1 = sub_1DEF8DB98();
  [*(v0 + 8) addObject_];
}

void sub_1DEF82524()
{
  v1 = sub_1DEF8DBD8();
  [*(v0 + 8) addObject_];
}

void sub_1DEF826B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  [*(v4 + 8) addObject_];
}

void sub_1DEF82728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  [*(v4 + 8) addObject_];
}

void sub_1DEF8279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  [*(v4 + 8) addObject_];
}

void sub_1DEF82810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4();
  [*(v4 + 8) addObject_];
}

uint64_t sub_1DEF82BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  [v3[1] addObject_];
  v8 = *v3;
  v9 = v3[2];
  v10 = *(v3 + 24);
  a3[3] = a1;
  a3[4] = a2;
  v11 = swift_allocObject();
  *a3 = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
}

uint64_t sub_1DEF82CC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DEF82D04(uint64_t *a1, int a2)
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

uint64_t sub_1DEF82D4C(uint64_t result, int a2, int a3)
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

uint64_t PairedDevice.PairedDeviceClass.description.getter()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 6513005;
  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6F6870;
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

uint64_t PairedDevice.PairedDeviceClass.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF82EC4()
{
  v1 = *v0;
  v2 = 0x64696C61766E69;
  v3 = 6513005;
  v4 = 0x6863746177;
  if (v1 != 3)
  {
    v4 = 30324;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E6F6870;
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

uint64_t PairedDevice.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PairedDevice.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PairedDevice.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_1DEF8DF28();

  strcpy(v15, "PairedDevice: ");
  HIBYTE(v15[1]) = -18;
  MEMORY[0x1E12CB180](v3, v4);
  MEMORY[0x1E12CB180](0x69746E656469203BLL, 0xEE00203A72656966);
  MEMORY[0x1E12CB180](v1, v2);
  MEMORY[0x1E12CB180](0x656369766564203BLL, 0xEF203A7373616C43);
  v6 = 0xE700000000000000;
  v7 = 0x64696C61766E69;
  v8 = 0xE300000000000000;
  v9 = 6513005;
  v10 = 0xE500000000000000;
  v11 = 0x6863746177;
  if (v5 != 3)
  {
    v11 = 30324;
    v10 = 0xE200000000000000;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (v5)
  {
    v7 = 0x656E6F6870;
    v6 = 0xE500000000000000;
  }

  if (v5 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (v5 <= 1)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x1E12CB180](v12, v13);

  return v15[0];
}

BOOL static PairedDevice.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1DEF8E4E8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEF831D4()
{
  result = qword_1ECDE58C0;
  if (!qword_1ECDE58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE58C0);
  }

  return result;
}

BOOL sub_1DEF83228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (sub_1DEF8E4E8()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t static OPACKCoder.encode(_:version:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  *(inited + 24) = a3 & 1;
  v9 = sub_1DEE29274(a1);
  if (!v3)
  {
    v4 = sub_1DEE1187C(v9);
    swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t static OPACKCoder.decode<A>(_:from:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  result = sub_1DEE115C8(v12);
  if (!v6)
  {
    type metadata accessor for PropertyListTypeDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = a4;
    *(inited + 24) = a5 & 1;
    sub_1DEF5F790(a6, v12);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

id OPACKCoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OPACKCoder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OPACKCoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OPACKCoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OPACKCoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DEF8353C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41[1] = a2;
  v49 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v41 - v15;
  v17 = sub_1DEF8D378();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v41[0] = v41 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v41 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = v41 - v27;
  sub_1DEF8D2C8();
  v29 = *(a5 + 8);
  v44 = a1;
  v45 = a4;
  v43 = a3;
  v46 = v6;
  v47 = a5;
  v29(a1, a3, a4, a5);
  v30 = *(v18 + 48);
  if (v30(v16, 1, v17) == 1)
  {
    sub_1DEF0192C(v16);
  }

  else
  {
    v31 = *(v18 + 32);
    v31(v25, v16, v17);
    if (sub_1DEF8D308() & 1) != 0 && (sub_1DEF8D2F8())
    {
      (*(v18 + 8))(v28, v17);
      v31(v28, v25, v17);
    }

    else
    {
      (*(v18 + 8))(v25, v17);
    }
  }

  v32 = v49;
  v33 = v42;
  (*(v47 + 16))(v44, v43 & 1, v45);
  if (v30(v33, 1, v17) == 1)
  {
    sub_1DEF0192C(v33);
  }

  else
  {
    v34 = *(v18 + 32);
    v35 = v41[0];
    v34(v41[0], v33, v17);
    if (sub_1DEF8D308() & 1) != 0 && (sub_1DEF8D2F8())
    {
      (*(v18 + 8))(v28, v17);
      v34(v28, v35, v17);
    }

    else
    {
      (*(v18 + 8))(v35, v17);
    }
  }

  v36 = v48;
  sub_1DEF8D2C8();
  v37 = sub_1DEF8D308();
  v38 = *(v18 + 8);
  v38(v36, v17);
  if (v37)
  {
    (*(v18 + 32))(v32, v28, v17);
    v39 = 0;
  }

  else
  {
    v38(v28, v17);
    v39 = 1;
  }

  return (*(v18 + 56))(v32, v39, 1, v17);
}

uint64_t LinearRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = 3;
  *(v0 + 24) = 0x4030000000000000;
  *(v0 + 32) = xmmword_1DEF93BB0;
  return v0;
}

void *LinearRetryTimer.init()()
{
  v0[5] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[6] = v1;
  v0[2] = 3;
  v0[3] = 0x4030000000000000;
  v0[4] = 3;
  return v0;
}

uint64_t LinearRetryTimer.__allocating_init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 48) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t LinearRetryTimer.init(maxRetries:intervalUntilRetry:)(uint64_t a1, double a2)
{
  *(v2 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 48) = v5;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  return v2;
}

uint64_t LinearRetryTimer.deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t LinearRetryTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t DuetHandshakeTask.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 56);
}

void DuetHandshakeTask.schedule.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t DuetHandshakeTask.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v4 = sub_1DEF8D378();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DuetHandshakeTask.__allocating_init(handshakeDescriptor:schedule:handler:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_1DEF863C4(a1, a2, a3, a4);

  return v11;
}

uint64_t DuetHandshakeTask.init(handshakeDescriptor:schedule:handler:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DEF863C4(a1, a2, a3, a4);

  return v4;
}

void *DuetHandshakeTask.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v3 = sub_1DEF8D508();
  __swift_project_value_buffer(v3, qword_1ECDF6028);

  v4 = sub_1DEF8D4D8();
  v5 = sub_1DEF8DC78();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;

    v8 = sub_1DEF8D988();
    v10 = sub_1DEE12A5C(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DEE0F000, v4, v5, "%s deinit, canceling", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E12CCD70](v7, -1, -1);
    MEMORY[0x1E12CCD70](v6, -1, -1);
  }

  DuetHandshakeTask.cancel()();
  v11 = v1[3];
  v12 = v1[5];

  v13 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v14 = sub_1DEF8D378();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered);

  v16 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);

  v17 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler + 8);

  v18 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8);

  return v1;
}

Swift::Void __swiftcall DuetHandshakeTask.cancel()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest);
  if (v3)
  {
    v4 = [v3 identifier];
    sub_1DEF8D948();

    v5 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);
    MEMORY[0x1EEE9AC00](v6);

    os_unfair_lock_lock((v5 + 20));
    sub_1DEF86770((v5 + 16));
    os_unfair_lock_unlock((v5 + 20));

    v8 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered);
    MEMORY[0x1EEE9AC00](v7);

    os_unfair_lock_lock((v8 + 20));
    sub_1DEF86790((v8 + 16));
    os_unfair_lock_unlock((v8 + 20));
  }

  else
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v9 = sub_1DEF8D508();
    __swift_project_value_buffer(v9, qword_1ECDF6028);

    v16 = sub_1DEF8D4D8();
    v10 = sub_1DEF8DC98();

    if (os_log_type_enabled(v16, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;

      v13 = sub_1DEF8D988();
      v15 = sub_1DEE12A5C(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DEE0F000, v16, v10, "%s no bgTaskRequest identifier, cannot cancel", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12CCD70](v12, -1, -1);
      MEMORY[0x1E12CCD70](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t DuetHandshakeTask.__deallocating_deinit()
{
  DuetHandshakeTask.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DuetHandshakeTask.start()()
{
  v1 = v0;
  v214 = *MEMORY[0x1E69E9840];
  v201 = *v0;
  v2 = sub_1DEF8D378();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x1EEE9AC00](v2);
  v191 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v190 = &v189 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v197 = &v189 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v196 = &v189 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v189 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v192 = &v189 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v195 = &v189 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v194 = &v189 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v189 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v189 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v189 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v189 - v30;
  v32 = sub_1DEF8D348();
  v33 = *(v0 + 80);
  aBlock = v0[9];
  LOBYTE(v209) = v33;
  sub_1DEF856B8(v32, v34);
  v205 = v31;
  sub_1DEF8D2E8();
  v35 = v3[1];
  v204 = v3 + 1;
  v35(v28, v2);
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v36 = sub_1DEF8D508();
  v37 = __swift_project_value_buffer(v36, qword_1ECDF6028);
  v38 = v3[2];
  v39 = v205;
  v38(v25, v205, v2);
  v200 = v3 + 2;
  v198 = v38;
  v38(v22, v39, v2);

  v199 = v37;
  v40 = sub_1DEF8D4D8();
  v41 = sub_1DEF8DCB8();

  v42 = os_log_type_enabled(v40, v41);
  v202 = v35;
  v203 = v2;
  if (v42)
  {
    v43 = v2;
    v44 = v35;
    v45 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    aBlock = v189;
    *v45 = 136315906;
    v206 = v1;

    v46 = sub_1DEF8D988();
    v48 = sub_1DEE12A5C(v46, v47, &aBlock);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2082;
    sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
    v49 = sub_1DEF8E2E8();
    v51 = v50;
    v44(v25, v43);
    v52 = sub_1DEE12A5C(v49, v51, &aBlock);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2050;
    sub_1DEF8D318();
    v54 = v53;
    v44(v22, v43);
    *(v45 + 24) = v54;
    *(v45 + 32) = 2080;
    *(v45 + 34) = sub_1DEE12A5C(*(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier), *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8), &aBlock);
    _os_log_impl(&dword_1DEE0F000, v40, v41, "%s scheduling Duet handshake task at: %{public}s in %{public}fs: %s", v45, 0x2Au);
    v55 = v189;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v55, -1, -1);
    MEMORY[0x1E12CCD70](v45, -1, -1);
  }

  else
  {

    v35(v22, v2);
    v35(v25, v2);
  }

  v56 = objc_opt_self();
  v57 = [v56 sharedScheduler];
  v58 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier);
  v59 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8);
  v60 = sub_1DEF8D918();
  v61 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_queue);
  v212 = sub_1DEF867B0;
  v213 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v209 = 1107296256;
  v210 = sub_1DEEC4EA0;
  v211 = &block_descriptor_23;
  v62 = _Block_copy(&aBlock);

  LODWORD(v61) = [v57 registerForTaskWithIdentifier:v60 usingQueue:v61 launchHandler:v62];
  _Block_release(v62);

  v63 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered);

  os_unfair_lock_lock((v63 + 20));
  *(v63 + 16) = v61;
  os_unfair_lock_unlock((v63 + 20));

  if (v61)
  {
    v64 = objc_allocWithZone(MEMORY[0x1E698E478]);
    v65 = sub_1DEF8D918();
    v66 = [v64 initWithIdentifier_];

    v67 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest);
    *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest) = v66;
    v68 = v66;

    v69 = v59;
    v70 = v58;
    if (v68)
    {
      if (*(v1 + 80) > 1u)
      {
        v71 = 1;
      }

      else if (v1[9] >= 2)
      {
        v71 = 1;
      }

      else
      {
        v71 = 2;
      }

      v116 = v195;
      v117 = v194;
      v118 = v68;
      v119 = [v118 setPriority_];
      v120 = *(v1 + 80);
      aBlock = v1[9];
      LOBYTE(v209) = v120;
      sub_1DEF856B8(v119, v121);
      v122 = [v118 setScheduleAfter_];
      v123 = *(v1 + 80);
      aBlock = v1[9];
      LOBYTE(v209) = v123;
      sub_1DEF856B8(v122, v124);
      v125 = *(v1 + 80);
      v206 = v1[9];
      v207 = v125;
      [v118 setTrySchedulingBefore_];
      v127 = v1[2];
      v128 = v1[3];
      v129 = sub_1DEF8D918();
      [v118 setRemoteDevice_];

      if (*(v1 + 48) == 4)
      {
        [v118 setTargetDevice_];
        [v118 setRequiresRemoteDeviceWake_];
      }

      else
      {
        [v118 setTargetDevice_];
      }

      [v118 setRequiresExternalPower_];

      v130 = [v56 sharedScheduler];
      aBlock = 0;
      v131 = [v130 submitTaskRequest:v118 error:&aBlock];

      if (v131)
      {
        v132 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);
        v133 = aBlock;

        os_unfair_lock_lock((v132 + 20));
        *(v132 + 16) = 1;
        os_unfair_lock_unlock((v132 + 20));

        v134 = v205;
        v135 = v203;
        v136 = v198;
        v198(v117, v205, v203);
        v136(v116, v134, v135);

        v137 = sub_1DEF8D4D8();
        v138 = sub_1DEF8DC78();

        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          v195 = v69;
          v140 = v139;
          v200 = swift_slowAlloc();
          aBlock = v200;
          *v140 = 136315906;
          v206 = v1;

          v141 = sub_1DEF8D988();
          v143 = sub_1DEE12A5C(v141, v142, &aBlock);

          *(v140 + 4) = v143;
          *(v140 + 12) = 2082;
          sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
          v144 = sub_1DEF8E2E8();
          v146 = v145;
          LODWORD(v201) = v138;
          v147 = v70;
          v148 = v202;
          v202(v117, v135);
          v149 = sub_1DEE12A5C(v144, v146, &aBlock);

          *(v140 + 14) = v149;
          *(v140 + 22) = 2050;
          sub_1DEF8D318();
          v151 = v150;
          v148(v116, v135);
          *(v140 + 24) = v151;
          *(v140 + 32) = 2080;
          *(v140 + 34) = sub_1DEE12A5C(v147, v195, &aBlock);
          _os_log_impl(&dword_1DEE0F000, v137, v201, "%s successful submitTaskRequest: %{public}s in %{public}fs: %s", v140, 0x2Au);
          v152 = v200;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v152, -1, -1);
          MEMORY[0x1E12CCD70](v140, -1, -1);

          v148(v205, v135);
        }

        else
        {

          v186 = v202;
          v202(v116, v135);
          v186(v117, v135);
          v186(v205, v135);
        }
      }

      else
      {
        v195 = v69;
        v153 = v58;
        v154 = aBlock;
        v155 = sub_1DEF8D148();

        swift_willThrow();
        v156 = v190;
        v157 = v205;
        v158 = v203;
        v159 = v198;
        v198(v190, v205, v203);
        v160 = v191;
        v159(v191, v157, v158);

        v161 = v155;
        v162 = sub_1DEF8D4D8();
        v163 = sub_1DEF8DC98();

        if (os_log_type_enabled(v162, v163))
        {
          v164 = swift_slowAlloc();
          v194 = v153;
          v165 = v164;
          v166 = swift_slowAlloc();
          v198 = v166;
          v200 = swift_slowAlloc();
          aBlock = v200;
          *v165 = 136316162;
          v206 = v1;

          v167 = sub_1DEF8D988();
          LODWORD(v201) = v163;
          v169 = sub_1DEE12A5C(v167, v168, &aBlock);
          v199 = v162;
          v170 = v158;
          v171 = v169;

          *(v165 + 4) = v171;
          *(v165 + 12) = 2112;
          v172 = v155;
          v173 = _swift_stdlib_bridgeErrorToNSError();
          *(v165 + 14) = v173;
          *v166 = v173;
          *(v165 + 22) = 2082;
          sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
          v174 = sub_1DEF8E2E8();
          v176 = v175;
          v177 = v156;
          v178 = v202;
          v202(v177, v170);
          v179 = sub_1DEE12A5C(v174, v176, &aBlock);
          v158 = v170;

          *(v165 + 24) = v179;
          *(v165 + 32) = 2050;
          sub_1DEF8D318();
          v181 = v180;
          v178(v160, v170);
          *(v165 + 34) = v181;
          *(v165 + 42) = 2080;
          *(v165 + 44) = sub_1DEE12A5C(v194, v195, &aBlock);
          v182 = v199;
          _os_log_impl(&dword_1DEE0F000, v199, v201, "%s could not submitTaskRequest: %@ %{public}s in %{public}fs: %s", v165, 0x34u);
          v183 = v198;
          sub_1DEEE2A84(v198);
          MEMORY[0x1E12CCD70](v183, -1, -1);
          v184 = v200;
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v184, -1, -1);
          MEMORY[0x1E12CCD70](v165, -1, -1);
        }

        else
        {

          v187 = v156;
          v178 = v202;
          v202(v160, v158);
          v178(v187, v158);
        }

        DuetHandshakeTask.cancel()();

        v178(v205, v158);
      }
    }

    else
    {
      v194 = v58;
      v94 = v192;
      v95 = v205;
      v96 = v203;
      v97 = v198;
      v198(v192, v205, v203);
      v98 = v193;
      v97(v193, v95, v96);

      v99 = sub_1DEF8D4D8();
      v100 = sub_1DEF8DC98();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v195 = v69;
        v102 = v101;
        v204 = swift_slowAlloc();
        aBlock = v204;
        *v102 = 136315906;
        v206 = v1;

        v103 = sub_1DEF8D988();
        v105 = sub_1DEE12A5C(v103, v104, &aBlock);

        *(v102 + 4) = v105;
        *(v102 + 12) = 2082;
        sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
        v106 = sub_1DEF8E2E8();
        v108 = v107;
        v109 = v94;
        v110 = v98;
        v111 = v202;
        v202(v109, v96);
        v112 = sub_1DEE12A5C(v106, v108, &aBlock);

        *(v102 + 14) = v112;
        *(v102 + 22) = 2050;
        sub_1DEF8D318();
        v114 = v113;
        v111(v110, v96);
        *(v102 + 24) = v114;
        *(v102 + 32) = 2080;
        *(v102 + 34) = sub_1DEE12A5C(v194, v195, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v99, v100, "%s could not create bgTaskRequest: %{public}s in %{public}fs: %s", v102, 0x2Au);
        v115 = v204;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v115, -1, -1);
        MEMORY[0x1E12CCD70](v102, -1, -1);
      }

      else
      {

        v185 = v98;
        v111 = v202;
        v202(v185, v96);
        v111(v94, v96);
      }

      DuetHandshakeTask.cancel()();
      v111(v205, v96);
    }
  }

  else
  {
    v194 = v58;
    v195 = v59;
    v72 = v196;
    v73 = v205;
    v74 = v203;
    v75 = v198;
    v198(v196, v205, v203);
    v76 = v197;
    v75(v197, v73, v74);

    v77 = sub_1DEF8D4D8();
    v78 = sub_1DEF8DC98();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = v76;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock = v81;
      *v80 = 136315906;
      v206 = v1;

      v82 = sub_1DEF8D988();
      v84 = sub_1DEE12A5C(v82, v83, &aBlock);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2082;
      sub_1DEE15340(&qword_1ECDE3A30, MEMORY[0x1E6969530]);
      v85 = sub_1DEF8E2E8();
      v87 = v86;
      v88 = v72;
      v89 = v202;
      v202(v88, v74);
      v90 = sub_1DEE12A5C(v85, v87, &aBlock);

      *(v80 + 14) = v90;
      *(v80 + 22) = 2050;
      sub_1DEF8D318();
      v92 = v91;
      v89(v79, v74);
      *(v80 + 24) = v92;
      *(v80 + 32) = 2080;
      *(v80 + 34) = sub_1DEE12A5C(v194, v195, &aBlock);
      _os_log_impl(&dword_1DEE0F000, v77, v78, "%s could not registerForTask: %{public}s in %{public}fs: %s", v80, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v81, -1, -1);
      MEMORY[0x1E12CCD70](v80, -1, -1);

      v89(v205, v74);
    }

    else
    {

      v93 = v202;
      v202(v76, v74);
      v93(v72, v74);
      v93(v205, v74);
    }
  }

  v188 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DEF856B8(uint64_t result, uint64_t a2)
{
  if (*(v2 + 8) <= 1u && *v2 > 1uLL)
  {
    return sub_1DEF856B8(result, a2);
  }

  return result;
}

uint64_t sub_1DEF8572C(void *a1, void *a2)
{
  v4 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AB8, &qword_1DEF90AD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - v7;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v9 = sub_1DEF8D508();
  __swift_project_value_buffer(v9, qword_1ECDF6028);

  v10 = sub_1DEF8D4D8();
  v11 = sub_1DEF8DC78();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = a2;
    v22 = v13;
    *v12 = 136315394;

    v14 = sub_1DEF8D988();
    v16 = sub_1DEE12A5C(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1DEE12A5C(*(a2 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier), *(a2 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier + 8), &v22);
    _os_log_impl(&dword_1DEE0F000, v10, v11, "%s calling handler for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v13, -1, -1);
    MEMORY[0x1E12CCD70](v12, -1, -1);
  }

  v17 = sub_1DEF8DB78();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;

  v19 = a1;
  sub_1DEE45D8C(0, 0, v8, &unk_1DEF9AE78, v18);
}

uint64_t sub_1DEF859E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DEF85A00, 0, 0);
}

uint64_t sub_1DEF85A00()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setTaskCompleted];
  v2 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive);

  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));

  v3 = v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler;
  v4 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler);
  v5 = *(v3 + 8);

  v4(v6);

  v7 = *(v0 + 8);

  return v7();
}

double sub_1DEF85AC0()
{
  if (*(v0 + 8) > 1u)
  {
    return 1800.0;
  }

  result = 0.0;
  if (*v0 >= 2)
  {
    sub_1DEF85AC0(0.0);
  }

  return result;
}

void sub_1DEF85B24(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  if (*a1 == 1)
  {
    v7 = *a4;
    v8 = [objc_opt_self() sharedScheduler];
    v9 = sub_1DEF8D918();
    v36[0] = 0;
    v10 = [v8 cancelTaskRequestWithIdentifier:v9 error:v36];

    if (v10)
    {
      v11 = qword_1ECDE2E58;
      v12 = v36[0];
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = sub_1DEF8D508();
      __swift_project_value_buffer(v13, qword_1ECDF6028);

      v14 = sub_1DEF8D4D8();
      v15 = sub_1DEF8DC78();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36[0] = v17;
        *v16 = 136315394;

        v18 = sub_1DEF8D988();
        v20 = sub_1DEE12A5C(v18, v19, v36);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v16 + 14) = sub_1DEE12A5C(a2, a3, v36);
        _os_log_impl(&dword_1DEE0F000, v14, v15, "%s successful cancelTaskRequest %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v17, -1, -1);
        MEMORY[0x1E12CCD70](v16, -1, -1);
      }
    }

    else
    {
      v21 = v36[0];
      v22 = sub_1DEF8D148();

      swift_willThrow();
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v23 = sub_1DEF8D508();
      __swift_project_value_buffer(v23, qword_1ECDF6028);

      v24 = v22;
      v25 = sub_1DEF8D4D8();
      v26 = sub_1DEF8DC98();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36[0] = v35;
        *v27 = 136315650;

        v28 = sub_1DEF8D988();
        v30 = sub_1DEE12A5C(v28, v29, v36);

        *(v27 + 4) = v30;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_1DEE12A5C(a2, a3, v36);
        *(v27 + 22) = 2112;
        v31 = v22;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 24) = v32;
        *v34 = v32;
        _os_log_impl(&dword_1DEE0F000, v25, v26, "%s could not cancelTaskRequest %s: %@", v27, 0x20u);
        sub_1DEEE2A84(v34);
        MEMORY[0x1E12CCD70](v34, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v35, -1, -1);
        MEMORY[0x1E12CCD70](v27, -1, -1);
      }

      else
      {
      }
    }

    *a1 = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_1DEF85FB8(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*a1 == 1)
  {
    v25[9] = v4;
    v25[10] = v5;
    v10 = [objc_opt_self() sharedScheduler];
    v11 = sub_1DEF8D918();
    v12 = [v10 deregisterTaskWithIdentifier_];

    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v13 = sub_1DEF8D508();
    __swift_project_value_buffer(v13, qword_1ECDF6028);

    v14 = sub_1DEF8D4D8();
    v15 = sub_1DEF8DC78();

    if (os_log_type_enabled(v14, v15))
    {
      v24 = v12;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25[0] = v17;
      *v16 = 136315650;

      v18 = sub_1DEF8D988();
      v20 = sub_1DEE12A5C(v18, v19, v25);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      if (v24)
      {
        v21 = 0x6673736563637573;
      }

      else
      {
        v21 = 0x6F6E20646C756F63;
      }

      if (v24)
      {
        v22 = 0xEA00000000006C75;
      }

      else
      {
        v22 = 0xE900000000000074;
      }

      v23 = sub_1DEE12A5C(v21, v22, v25);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2080;
      *(v16 + 24) = sub_1DEE12A5C(a2, a3, v25);
      _os_log_impl(&dword_1DEE0F000, v14, v15, "%s %s deregisterTask  %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v17, -1, -1);
      MEMORY[0x1E12CCD70](v16, -1, -1);
    }

    *a1 = 0;
  }
}

uint64_t sub_1DEF86274@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_creationDate;
  v5 = sub_1DEF8D378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DEF862F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a2 + 8);
  v15 = *a2;
  v16 = v10;
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  swift_allocObject();
  v13 = sub_1DEF863C4(a1, &v15, a3, a4);

  *a5 = v13;
  return result;
}

uint64_t sub_1DEF863C4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v8 = sub_1DEF8DD08();
  v42 = *(v8 - 8);
  v43 = v8;
  v9 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1DEF8DCD8();
  v11 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D6D8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 32);
  v22 = a1[5];
  v21 = a1[6];
  v34 = *a2;
  v35 = v21;
  LOBYTE(a2) = *(a2 + 8);
  sub_1DEF8D348();
  v23 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgHandlerRegistered;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58D0, &unk_1DEF9AE88);
  v24 = swift_allocObject();
  *(v24 + 20) = 0;
  *(v24 + 16) = 0;
  *(v5 + v23) = v24;
  *(v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequest) = 0;
  v25 = OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_bgTaskRequestActive;
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v5 + v25) = v26;
  *(v26 + 16) = 0;
  *(v5 + 16) = v16;
  *(v5 + 24) = v17;
  *(v5 + 32) = v18;
  *(v5 + 40) = v19;
  *(v5 + 48) = v20;
  v27 = v34;
  v28 = v35;
  *(v5 + 56) = v22;
  *(v5 + 64) = v28;
  *(v5 + 72) = v27;
  *(v5 + 80) = a2;
  v29 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_handler);
  v30 = v37;
  *v29 = v36;
  v29[1] = v30;
  v44 = 0;
  v45 = 0xE000000000000000;

  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0xD000000000000032, 0x80000001DEF9E760);

  MEMORY[0x1E12CB180](v16, v17);

  swift_bridgeObjectRelease_n();
  v31 = v45;
  v32 = (v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_identifier);
  *v32 = v44;
  v32[1] = v31;
  sub_1DEE3C630();

  sub_1DEF8D6A8();
  v44 = MEMORY[0x1E69E7CC0];
  sub_1DEE15340(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE3C6C4();
  sub_1DEF8DE08();
  (*(v42 + 104))(v41, *MEMORY[0x1E69E8098], v43);
  *(v5 + OBJC_IVAR____TtC16ReplicatorEngine17DuetHandshakeTask_queue) = sub_1DEF8DD38();
  return v5;
}

uint64_t type metadata accessor for DuetHandshakeTask()
{
  result = qword_1ECDE3368;
  if (!qword_1ECDE3368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DEF8680C()
{
  result = sub_1DEF8D378();
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

uint64_t sub_1DEF8691C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DEE466B4;

  return sub_1DEF859E0(a1, v4, v5, v7, v6);
}

uint64_t sub_1DEF86A10(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1DEF86AA0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
    sub_1DEEFE21C();
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEF86B38(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEF86AA0();
  return sub_1DEEEA148;
}

uint64_t sub_1DEF86B80@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DEE13AF8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DEE2CB00(v4);
}

uint64_t sub_1DEF86C14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DEF872C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_1DEE2CB00(v3);
  return sub_1DEE3DBD0(v8);
}

uint64_t sub_1DEF86CD0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1DEE2CB00(v1);
  return v1;
}

uint64_t sub_1DEF86D20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1DEE3DBD0(v5);
}

uint64_t CallbackZoneAdvertiser.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_1DEF8D598();
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v4;
  return v0;
}

uint64_t CallbackZoneAdvertiser.init()()
{
  *(v0 + 24) = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A58, &qword_1DEF937F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_1DEF8D598();
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = v4;
  return v0;
}

void *CallbackZoneAdvertiser.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  sub_1DEE3DBD0(v0[5]);
  return v0;
}

uint64_t CallbackZoneAdvertiser.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];
  sub_1DEE3DBD0(v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF86F28()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_1DEF86F68(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 16) = a1;
  return result;
}

uint64_t (*sub_1DEF86FAC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1DEF87000()
{
  v1 = *v0;
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    result = swift_beginAccess();
    v3 = *(v1 + 40);
    if (v3)
    {
      v4 = *(v1 + 48);

      v3(v5);
      return sub_1DEE3DBD0(v3);
    }
  }

  return result;
}

uint64_t CallbackZoneAdvertiser.advertise(_:)()
{
  result = swift_beginAccess();
  if (*(v0 + 16) == 1)
  {
    result = swift_beginAccess();
    v2 = *(v0 + 40);
    if (v2)
    {
      v3 = *(v0 + 48);

      v2(v4);
      return sub_1DEE3DBD0(v2);
    }
  }

  return result;
}

uint64_t sub_1DEF872C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t URL.setExtendedAttribute<A>(named:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a4 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12, v8);
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v20[0];
    v15 = v20[1];
  }

  else
  {
    v16 = sub_1DEF8D118();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1DEF8D108();
    sub_1DEF8D0E8();
    v14 = sub_1DEF8D0F8();
    v15 = v19;

    if (v4)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  v20[-4] = v14;
  v20[-3] = v15;
  v20[-2] = a1;
  v20[-1] = a2;
  sub_1DEF8D198();
  return sub_1DEE1BFA0(v14, v15);
}

uint64_t URL.extendedAttributeNames()()
{
  v0 = sub_1DEF8D978();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D1C8();
  v5 = sub_1DEF8D998();

  v6 = listxattr((v5 + 32), 0, 0, 0);

  if (v6 == -1)
  {
    type metadata accessor for URL.ExtendedAttributeError();
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
    swift_allocError();
    *v20 = 0;
    v20[1] = 0xE000000000000000;
    v20[2] = -1;
    MEMORY[0x1E12CACF0]();
    result = sub_1DEF8D528();
    if ((result & 0x100000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v21 = result;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
    v23 = sub_1DEF8CF78();
    v29 = v21;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
    v15 = v23;
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v15;
  }

  v7 = swift_slowAlloc();
  sub_1DEF8D1C8();
  v8 = sub_1DEF8D998();

  v9 = listxattr((v8 + 32), v7, v6, 0);

  if (v9 != -1)
  {
    sub_1DEF8D958();
    v10 = sub_1DEF8D968();
    (*(v1 + 8))(v4, v0);
    v11 = [objc_allocWithZone(MEMORY[0x1E696AEC0]) initWithBytes:v7 length:v6 encoding:v10];
    if (!v11)
    {
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_13;
    }

    v12 = v11;
    v13 = sub_1DEF8D918();
    v14 = [v12 componentsSeparatedByString_];

    v15 = sub_1DEF8DAD8();
    if (*(v15 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v17 = *(v15 + 16);
        if (v17)
        {
LABEL_7:
          v18 = v17 - 1;
          v19 = *(v15 + 16 * v18 + 40);
          *(v15 + 16) = v18;

LABEL_13:
          MEMORY[0x1E12CCD70](v7, -1, -1);
          return v15;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1DEF88EB4(v15);
    v15 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for URL.ExtendedAttributeError();
  sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
  swift_allocError();
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v24[2] = -1;
  MEMORY[0x1E12CACF0]();
  result = sub_1DEF8D528();
  if ((result & 0x100000000) == 0)
  {
    v25 = result;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
    v27 = sub_1DEF8CF78();
    v30 = v25;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
    v15 = v27;
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    MEMORY[0x1E12CCD70](v7, -1, -1);
    return v15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t URL.extendedAttributeData(named:)()
{
  result = sub_1DEF8D198();
  if (!v0)
  {
    return v2;
  }

  return result;
}

unint64_t URL.ExtendedAttributeError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1DEF8CF78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL.ExtendedAttributeError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF894A8(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v10;
  v12 = *(v10 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v10 + 2);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00);
    (*(v3 + 32))(v6, &v10[*(v15 + 64)], v2);
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1DEF8DF28();
    MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9E7E0);
    MEMORY[0x1E12CB180](v13, v12);

    MEMORY[0x1E12CB180](0xD000000000000022, 0x80000001DEF9E800);
    v19[1] = v14;
    v16 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v16);

    MEMORY[0x1E12CB180](0xD000000000000018, 0x80000001DEF9E830);
    sub_1DEF8E008();
    v17 = v20;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_1DEF8DF28();

    v20 = 0xD000000000000019;
    v21 = 0x80000001DEF9E850;
    MEMORY[0x1E12CB180](v13, v12);

    MEMORY[0x1E12CB180](0x746F6E2073617720, 0xEF2E646E756F6620);
    return v20;
  }

  return v17;
}

uint64_t sub_1DEF87D44(const char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D998();
  v7 = removexattr(a1, (v6 + 32), 0);

  if (v7 < 0)
  {
    MEMORY[0x1E12CACF0](result);
    result = sub_1DEF8D528();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_1DEF8CF68();
      v9 = sub_1DEF8D538();
      result = sub_1DEF8D538();
      if (v9 != result)
      {
        type metadata accessor for URL.ExtendedAttributeError();
        sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
        swift_allocError();
        v11 = v10;
        v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
        *v11 = a2;
        v11[1] = a3;
        v11[2] = v7;
        sub_1DEF8CF78();

        sub_1DEF89350(MEMORY[0x1E69E7CC0]);
        sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
        sub_1DEF8D138();
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }
    }
  }

  return result;
}

uint64_t sub_1DEF87F0C(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  value[2] = *MEMORY[0x1E69E9840];
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v9 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v10 = (sub_1DEF8D998() + 32);
      v11 = value;
      v12 = a1;
LABEL_22:
      v23 = v9;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = sub_1DEF8D018();
    if (v15)
    {
      v16 = sub_1DEF8D048();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_29;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v19 = a2;
    v18 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v15 = sub_1DEF8D018();
      if (!v15)
      {
LABEL_15:
        v21 = sub_1DEF8D038();
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        if (v15)
        {
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }

        v10 = (sub_1DEF8D998() + 32);
        v12 = a1;
        v11 = v15;
        goto LABEL_22;
      }

      v20 = sub_1DEF8D048();
      if (!__OFSUB__(v19, v20))
      {
        v15 += v19 - v20;
        goto LABEL_15;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  memset(value, 0, 14);
  v10 = (sub_1DEF8D998() + 32);
  v11 = value;
  v12 = a1;
  v23 = 0;
LABEL_24:
  v24 = setxattr(v12, v10, v11, v23, 0, 0);

  if ((v24 & 0x80000000) == 0)
  {
LABEL_27:
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  type metadata accessor for URL.ExtendedAttributeError();
  sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
  swift_allocError();
  *v26 = a4;
  v26[1] = a5;
  v26[2] = v24;

  MEMORY[0x1E12CACF0](v27);
  result = sub_1DEF8D528();
  if ((result & 0x100000000) == 0)
  {
    v28 = result;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
    sub_1DEF8CF78();
    LODWORD(value[0]) = v28;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF88250@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1DEF8D998();
  v10 = getxattr(a1, (v9 + 32), 0, 0, 0, 0);

  if (v10 < 1)
  {
    type metadata accessor for URL.ExtendedAttributeError();
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
    swift_allocError();
    *v14 = a2;
    v14[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v15 = sub_1DEE1C048(v10);
    v16 = v11;

    sub_1DEF884C8(&v15, a1, a2, a3, v10);
    result = v15;
    v13 = v16;
    if (v4)
    {
      return sub_1DEE1BFA0(v15, v16);
    }

    else
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return result;
}

uint64_t URL.extendedAttribute<A>(named:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E6969080];
  result = sub_1DEF8D198();
  if (!v3)
  {
    if (a3 == v5)
    {
      return swift_dynamicCast();
    }

    else
    {
      v7 = sub_1DEF8D0D8();
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      swift_allocObject();
      sub_1DEF8D0C8();
      sub_1DEF8D0B8();

      return sub_1DEE1BFA0(v10, v11);
    }
  }

  return result;
}

uint64_t sub_1DEF884C8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v68 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v30 = sub_1DEF8D998();

      v31 = getxattr(a2, (v30 + 32), &value, a5, 0, 0);

      if (v31 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        goto LABEL_33;
      }

      type metadata accessor for URL.ExtendedAttributeError();
      sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
      swift_allocError();
      *v37 = a3;
      v37[1] = a4;
      v37[2] = v31;

      MEMORY[0x1E12CACF0](v38);
      result = sub_1DEF8D528();
      if ((result & 0x100000000) == 0)
      {
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
        sub_1DEF8CF78();
        sub_1DEF89350(MEMORY[0x1E69E7CC0]);
        sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
        sub_1DEF8D138();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        result = swift_bridgeObjectRelease_n();
        goto LABEL_33;
      }

      goto LABEL_42;
    }

    sub_1DEE1BFA0(v9, v8);
    *&value = v9;
    *(&value + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1DEF95880;
    sub_1DEE1BFA0(0, 0xC000000000000000);
    sub_1DEF8D1F8();
    v17 = *(&value + 1);
    v64 = value;
    v18 = *(value + 16);
    v19 = sub_1DEF8D018();
    if (!v19)
    {

      __break(1u);
      goto LABEL_40;
    }

    v20 = v19;
    v21 = sub_1DEF8D048();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      sub_1DEF8D038();
      v23 = sub_1DEF8D998();
      v24 = getxattr(a2, (v23 + 32), (v20 + v22), a5, 0, 0);

      if (v24 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        v25 = *(&value + 1) | 0x8000000000000000;
        *a1 = value;
LABEL_29:
        a1[1] = v25;
        goto LABEL_33;
      }

      v60 = a1;
      type metadata accessor for URL.ExtendedAttributeError();
      sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
      swift_allocError();
      *v40 = a3;
      v40[1] = a4;
      v40[2] = v24;

      MEMORY[0x1E12CACF0](v41);
      result = sub_1DEF8D528();
      if ((result & 0x100000000) != 0)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
      sub_1DEF8CF78();
      sub_1DEF89350(MEMORY[0x1E69E7CC0]);
      sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
      sub_1DEF8D138();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = swift_bridgeObjectRelease_n();
      v43 = v17 | 0x8000000000000000;
      v44 = v60;
      *v60 = v64;
LABEL_32:
      v44[1] = v43;
      goto LABEL_33;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v10)
  {

    sub_1DEE1BFA0(v9, v8);
    *&value = v9;
    WORD4(value) = v8;
    BYTE10(value) = BYTE2(v8);
    BYTE11(value) = BYTE3(v8);
    BYTE12(value) = BYTE4(v8);
    BYTE13(value) = BYTE5(v8);
    BYTE14(value) = BYTE6(v8);
    v11 = sub_1DEF8D998();
    v12 = getxattr(a2, (v11 + 32), &value, a5, 0, 0);

    if (v12 > 0)
    {
      v13 = value;
      v14 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v13;
      a1[1] = v14;
LABEL_33:
      v58 = *MEMORY[0x1E69E9840];
      return result;
    }

    type metadata accessor for URL.ExtendedAttributeError();
    sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
    swift_allocError();
    *v32 = a3;
    v32[1] = a4;
    v32[2] = v12;

    MEMORY[0x1E12CACF0](v33);
    result = sub_1DEF8D528();
    if ((result & 0x100000000) == 0)
    {
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
      sub_1DEF8CF78();
      sub_1DEF89350(MEMORY[0x1E69E7CC0]);
      sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
      sub_1DEF8D138();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v35 = value;
      v36 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v35;
      a1[1] = v36;
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  v26 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1DEE1BFF4(v9, v8);
  sub_1DEE1BFA0(v9, v8);
  *a1 = xmmword_1DEF95880;
  sub_1DEE1BFA0(0, 0xC000000000000000);

  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (sub_1DEF8D018() && __OFSUB__(v9, sub_1DEF8D048()))
    {
LABEL_38:
      __break(1u);
    }

    v45 = sub_1DEF8D068();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v48 = sub_1DEF8CFF8();

    v26 = v48;
  }

  if (v27 < v9)
  {
    goto LABEL_35;
  }

  result = sub_1DEF8D018();
  if (!result)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v49 = result;
  v50 = sub_1DEF8D048();
  v51 = v9 - v50;
  if (__OFSUB__(v9, v50))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_1DEF8D038();
  v52 = sub_1DEF8D998();
  v53 = getxattr(a2, (v52 + 32), (v49 + v51), a5, 0, 0);

  if (v53 >= 1)
  {
    swift_bridgeObjectRelease_n();

    v25 = v26 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_29;
  }

  v61 = a1;
  type metadata accessor for URL.ExtendedAttributeError();
  sub_1DEF89460(&qword_1ECDE58D8, type metadata accessor for URL.ExtendedAttributeError);
  swift_allocError();
  *v54 = a3;
  v54[1] = a4;
  v54[2] = v53;

  MEMORY[0x1E12CACF0](v55);
  result = sub_1DEF8D528();
  if ((result & 0x100000000) == 0)
  {
    v56 = result;
    v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
    sub_1DEF8CF78();
    LODWORD(value) = v56;
    sub_1DEF89350(MEMORY[0x1E69E7CC0]);
    sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
    sub_1DEF8D138();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_bridgeObjectRelease_n();

    v43 = v26 | 0x4000000000000000;
    v44 = v61;
    *v61 = v9;
    goto LABEL_32;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for URL.ExtendedAttributeError()
{
  result = qword_1ECDE58F0;
  if (!qword_1ECDE58F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation3URLV16ReplicatorEngineE22ExtendedAttributeErrorO2eeoiySbAF_AFtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8CF78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for URL.ExtendedAttributeError();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v46 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5908, &unk_1DEF9AFE0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - v20;
  v23 = (&v46 + *(v22 + 56) - v20);
  sub_1DEF894A8(a1, &v46 - v20);
  sub_1DEF894A8(a2, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DEF894A8(v21, v17);
    v35 = *v17;
    v36 = v17[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v35 == *v23 && v36 == v23[1])
      {
        v44 = v23[1];
      }

      else
      {
        v38 = v23[1];
        v39 = sub_1DEF8E4E8();

        if ((v39 & 1) == 0)
        {
LABEL_22:
          sub_1DEF896B8(v21);
          goto LABEL_23;
        }
      }

      sub_1DEF896B8(v21);
      v41 = 1;
      return v41 & 1;
    }

LABEL_17:

    sub_1DEF89650(v21);
LABEL_23:
    v41 = 0;
    return v41 & 1;
  }

  v50 = v10;
  sub_1DEF894A8(v21, v14);
  v24 = *(v14 + 1);
  v49 = *v14;
  v25 = *(v14 + 2);
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE58E0, &qword_1DEF9AF00) + 64);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(&v14[v26], v4);
    goto LABEL_17;
  }

  v28 = *v23;
  v27 = v23[1];
  v46 = v23[2];
  v47 = v25;
  v48 = v5;
  v29 = *(v5 + 32);
  v29(v50, &v14[v26], v4);
  v30 = v23 + v26;
  v31 = v51;
  v29(v51, v30, v4);
  if (v49 == v28 && v24 == v27)
  {
  }

  else
  {
    v33 = sub_1DEF8E4E8();

    if ((v33 & 1) == 0)
    {
      v34 = v48;
LABEL_21:
      v43 = *(v34 + 8);
      v43(v31, v4);
      v43(v50, v4);
      goto LABEL_22;
    }
  }

  v34 = v48;
  if (v47 != v46)
  {
    goto LABEL_21;
  }

  sub_1DEF89460(&qword_1ECDE58E8, MEMORY[0x1E6967EB8]);
  v40 = v50;
  v41 = sub_1DEF8D128();
  v42 = *(v34 + 8);
  v42(v31, v4);
  v42(v40, v4);
  sub_1DEF896B8(v21);
  return v41 & 1;
}

unint64_t sub_1DEF89350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
    v3 = sub_1DEF8E148();
    v4 = a1 + 32;

    while (1)
    {
      sub_1DEF89714(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1DEE13224(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1DEE117C0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1DEF89460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DEF894A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL.ExtendedAttributeError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DEF89570()
{
  sub_1DEF895DC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1DEF895DC()
{
  if (!qword_1ECDE5900)
  {
    sub_1DEF8CF78();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECDE5900);
    }
  }
}

uint64_t sub_1DEF89650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5908, &unk_1DEF9AFE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF896B8(uint64_t a1)
{
  v2 = type metadata accessor for URL.ExtendedAttributeError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF89714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ReplicatorError.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF89840()
{
  result = qword_1ECDE5910;
  if (!qword_1ECDE5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5910);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplicatorError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DEF899E4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v5 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5918, &unk_1DEF9B0F0);
    sub_1DEE1B548(&unk_1ECDE2D30, &qword_1ECDE5918, &unk_1DEF9B0F0);
    v2 = v0;
    v1 = sub_1DEF8D5B8();
    v3 = *(v0 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t (*sub_1DEF89AA8(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1DEF899E4();
  return sub_1DEEF0A20;
}

uint64_t HandshakeScheduler.__allocating_init(firstLockStateProvider:)(uint64_t a1)
{
  v2 = swift_allocObject();
  HandshakeScheduler.init(firstLockStateProvider:)(a1);
  return v2;
}

void *HandshakeScheduler.init(firstLockStateProvider:)(uint64_t a1)
{
  v2 = v1;
  v40 = a1;
  v45 = *v1;
  v44 = v45;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v37 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A68, &unk_1DEF9B100);
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v42 = v37 - v7;
  v8 = sub_1DEF8DD08();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8DCD8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1DEF8D6D8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v1[2] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5918, &unk_1DEF9B0F0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v1[3] = sub_1DEF8D598();
  v19 = sub_1DEE3C630();
  v37[1] = "isAwayFromCompanion";
  v37[2] = v19;
  sub_1DEF8D6C8();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B548(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v38 + 104))(v11, *MEMORY[0x1E69E8098], v39);
  v20 = sub_1DEF8DD38();
  v21 = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CC8];
  v1[4] = v20;
  v1[5] = v21;
  v1[6] = v22;
  v1[7] = v22;
  v1[13] = v21;
  v23 = v40;
  sub_1DEE29594(v40, (v1 + 8));
  v24 = v23[3];
  v25 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v47 = (*(v25 + 8))(v24, v25);
  v26 = v1[4];
  v48 = v26;
  v27 = sub_1DEF8DCF8();
  v28 = v41;
  (*(*(v27 - 8) + 56))(v41, 1, 1, v27);
  v29 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE1B548(&qword_1ECDE2D68, &qword_1ECDE3A70, &unk_1DEF90A40);
  sub_1DEE2BC18(&qword_1ECDE2C08, sub_1DEE3C630);
  v30 = v42;
  sub_1DEF8D5D8();
  sub_1DEF8A180(v28);

  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v34 = v44;
  v33 = v45;
  *(v32 + 16) = *(v44 + 80);
  *(v32 + 32) = *(v33 + 96);
  *(v32 + 40) = *(v34 + 104);
  *(v32 + 56) = *(v33 + 120);
  *(v32 + 64) = v31;
  sub_1DEE1B548(&qword_1ECDE2DD8, &qword_1ECDE3A68, &unk_1DEF9B100);
  v35 = v43;
  sub_1DEF8D5E8();

  (*(v46 + 8))(v30, v35);
  swift_beginAccess();
  sub_1DEF8D568();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v2;
}

uint64_t sub_1DEF8A180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF8A1E8(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1DEF8A264();
    }
  }

  return result;
}

uint64_t sub_1DEF8A250(unsigned __int8 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_1DEF8A1E8(a1);
}

uint64_t sub_1DEF8A264()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 32);
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_17:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF6118);
  v11 = sub_1DEF8D4D8();
  v12 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DEE0F000, v11, v12, "Processing pended handshakes", v13, 2u);
    MEMORY[0x1E12CCD70](v13, -1, -1);
  }

  swift_beginAccess();
  v14 = *(v1 + 56);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = *(v1 + 56);

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_13:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v21 << 6);
      v24 = *(v14 + 48) + 56 * v23;
      v25 = *(v24 + 8);
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v28 = *(v24 + 32);
      v29 = *(v14 + 56) + 16 * v23;
      v30 = *v29;
      LOBYTE(v29) = *(v29 + 8);
      v35[0] = *v24;
      v35[1] = v25;
      v35[2] = v26;
      v35[3] = v27;
      v36 = v28;
      v37 = *(v24 + 40);
      v33 = v30;
      v34 = v29;

      sub_1DEF8AE6C(v35, &v33);

      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 64 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v31 = *(v1 + 56);
  *(v1 + 56) = MEMORY[0x1E69E7CC8];
}

uint64_t HandshakeScheduler.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v6 = *(v0 + 104);

  return v0;
}

uint64_t HandshakeScheduler.__deallocating_deinit()
{
  HandshakeScheduler.deinit();

  return swift_deallocClassInstance();
}

uint64_t HandshakeScheduler.scheduleHandshake(with:schedule:)(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1DEF8D698();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8D6D8();
  v9 = *(v22 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v13;
  v26[2] = *(a1 + 32);
  v27 = *(a1 + 48);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = *(v2 + 32);
  v17 = swift_allocObject();
  v18 = *(a1 + 16);
  *(v17 + 24) = *a1;
  *(v17 + 16) = v2;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(a1 + 32);
  *(v17 + 72) = *(a1 + 48);
  *(v17 + 80) = v14;
  *(v17 + 88) = v15;
  aBlock[4] = sub_1DEF8AA10;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_24;
  v19 = _Block_copy(aBlock);

  sub_1DEEA8BAC(v26, v24);
  sub_1DEF8D6B8();
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v12, v8, v19);
  _Block_release(v19);
  (*(v23 + 8))(v8, v5);
  (*(v9 + 8))(v12, v22);
}

void sub_1DEF8A92C(void *a1, __int128 *a2, uint64_t a3, char a4)
{
  v7 = a1[11];
  v8 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v7);
  if ((*(v8 + 16))(v7, v8))
  {
    v9 = a2[1];
    v13 = *a2;
    v14 = v9;
    v15 = a2[2];
    v16 = *(a2 + 6);
    v11 = a3;
    v12 = a4;
    sub_1DEF8AE6C(&v13, &v11);
  }

  else
  {
    v10 = a2[1];
    v13 = *a2;
    v14 = v10;
    v15 = a2[2];
    v16 = *(a2 + 6);
    v11 = a3;
    v12 = a4;
    sub_1DEF8AA24(&v13, &v11);
  }
}

void sub_1DEF8AA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v11;
  v46[2] = *(a1 + 32);
  v47 = *(a1 + 48);
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(v3 + 32);
  *v10 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v15 = v14;
  LOBYTE(v14) = sub_1DEF8D7B8();
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_1DEF8D508();
  __swift_project_value_buffer(v16, qword_1ECDF6118);
  sub_1DEEA8BAC(v46, &v44);
  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(v46);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1DEE12A5C(*&v46[0], *(&v46[0] + 1), &v42);
    *(v19 + 12) = 2082;
    v44 = v12;
    v45 = v13;
    v21 = ReplicationSchedule.description.getter();
    v23 = sub_1DEE12A5C(v21, v22, &v42);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1DEE0F000, v17, v18, "Pending handshake for %{public}s with schedule %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  swift_beginAccess();
  v24 = *(v3 + 56);
  if (!*(v24 + 16))
  {
    goto LABEL_13;
  }

  v25 = *(v3 + 56);

  v26 = sub_1DEEAF880(v46);
  if ((v27 & 1) == 0)
  {

    goto LABEL_13;
  }

  v28 = *(v24 + 56) + 16 * v26;
  v29 = *v28;
  v30 = *(v28 + 8);

  if (v30)
  {
    if (v30 == 1)
    {
      if (!v13)
      {
        goto LABEL_13;
      }

      if (v13 != 1)
      {
        goto LABEL_18;
      }

LABEL_15:
      if (v12 >= v29)
      {
        goto LABEL_18;
      }

LABEL_13:
      swift_beginAccess();
      v31 = *(v3 + 56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v3 + 56);
      *(v3 + 56) = 0x8000000000000000;
      sub_1DEF3FF18(v12, v13, v46, isUniquelyReferenced_nonNull_native);
      *(v3 + 56) = v41;
      swift_endAccess();
      return;
    }

    if (v13 < 2)
    {
      goto LABEL_13;
    }
  }

  else if (!v13)
  {
    goto LABEL_15;
  }

LABEL_18:
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    v42 = v29;
    *v35 = 136446210;
    v43 = v30;
    v37 = ReplicationSchedule.description.getter();
    v39 = sub_1DEE12A5C(v37, v38, &v41);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1DEE0F000, v33, v34, "Not replacing existing pended handshake with schedule %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12CCD70](v36, -1, -1);
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }
}

uint64_t sub_1DEF8AE6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_1DEF8D788();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v100 = *a1;
  v101 = v12;
  v102 = *(a1 + 32);
  v103 = *(a1 + 48);
  v85 = *a2;
  v86 = *(a2 + 8);
  v13 = v3[4];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v14 = v13;
  LOBYTE(v13) = sub_1DEF8D7B8();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    if (qword_1ECDE3818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = sub_1DEF8D508();
  v16 = __swift_project_value_buffer(v15, qword_1ECDF6118);
  sub_1DEEA8BAC(&v100, &v96);
  v17 = sub_1DEF8D4D8();
  v18 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v100);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v90[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1DEE12A5C(v100, *(&v100 + 1), v90);
    *(v19 + 12) = 2082;
    *&v96 = v85;
    BYTE8(v96) = v86;
    v21 = ReplicationSchedule.description.getter();
    v23 = sub_1DEE12A5C(v21, v22, v90);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1DEE0F000, v17, v18, "Scheduling handshake for %{public}s with schedule %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v20, -1, -1);
    MEMORY[0x1E12CCD70](v19, -1, -1);
  }

  swift_beginAccess();
  v24 = v3[6];
  if (*(v24 + 16))
  {
    v25 = v3[6];

    v26 = sub_1DEEAF880(&v100);
    if (v27)
    {
      sub_1DEE29594(*(v24 + 56) + 40 * v26, &v96);

      sub_1DEE2F1AC(&v96, v90);
      v28 = v91;
      v29 = v92;
      __swift_project_boxed_opaque_existential_1(v90, v91);
      (*(v29 + 16))(&v96, v28, v29);
      if (BYTE8(v96))
      {
        if (BYTE8(v96) != 1)
        {
          if (v86 >= 2)
          {
LABEL_34:
            sub_1DEE29594(v90, &v96);
            v69 = sub_1DEF8D4D8();
            v70 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v69, v70))
            {
              v71 = swift_slowAlloc();
              v72 = swift_slowAlloc();
              v87 = v72;
              *v71 = 136446466;
              v73 = *(&v97 + 1);
              v74 = v98;
              __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
              (*(v74 + 16))(&v93, v73, v74);
              v88 = v93;
              v89 = BYTE8(v93);
              v75 = ReplicationSchedule.description.getter();
              v77 = v76;
              __swift_destroy_boxed_opaque_existential_1(&v96);
              v78 = sub_1DEE12A5C(v75, v77, &v87);

              *(v71 + 4) = v78;
              *(v71 + 12) = 2082;
              *&v93 = v85;
              BYTE8(v93) = v86;
              v79 = ReplicationSchedule.description.getter();
              v81 = sub_1DEE12A5C(v79, v80, &v87);

              *(v71 + 14) = v81;
              _os_log_impl(&dword_1DEE0F000, v69, v70, "Not replacing existing scheduled handshake (%{public}s) with schedule %{public}s", v71, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1E12CCD70](v72, -1, -1);
              MEMORY[0x1E12CCD70](v71, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1(&v96);
            }

            v54 = v90;
            return __swift_destroy_boxed_opaque_existential_1(v54);
          }

          goto LABEL_31;
        }

        if (!v86)
        {
LABEL_31:
          sub_1DEE29594(v90, &v96);
          v56 = sub_1DEF8D4D8();
          v57 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v87 = v84;
            *v58 = 136446466;
            v60 = *(&v97 + 1);
            v59 = v98;
            __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
            (*(v59 + 16))(&v93, v60, v59);
            v88 = v93;
            v89 = BYTE8(v93);
            v61 = ReplicationSchedule.description.getter();
            v63 = v62;
            __swift_destroy_boxed_opaque_existential_1(&v96);
            v64 = sub_1DEE12A5C(v61, v63, &v87);

            *(v58 + 4) = v64;
            *(v58 + 12) = 2082;
            *&v93 = v85;
            BYTE8(v93) = v86;
            v65 = ReplicationSchedule.description.getter();
            v67 = sub_1DEE12A5C(v65, v66, &v87);

            *(v58 + 14) = v67;
            _os_log_impl(&dword_1DEE0F000, v56, v57, "Canceling and replacing existing scheduled handshake (%{public}s) with schedule %{public}s", v58, 0x16u);
            v68 = v84;
            swift_arrayDestroy();
            MEMORY[0x1E12CCD70](v68, -1, -1);
            MEMORY[0x1E12CCD70](v58, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v96);
          }

          v84 = v16;
          v82 = v91;
          v83 = v92;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          (*(v83 + 48))(v82, v83);
          v95 = 0;
          v93 = 0u;
          v94 = 0u;
          swift_beginAccess();
          sub_1DEEA8BAC(&v100, &v96);
          sub_1DEF33FFC(&v93, &v100);
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(v90);
          goto LABEL_14;
        }

        if (v86 != 1)
        {
          goto LABEL_34;
        }
      }

      else if (v86)
      {
        goto LABEL_34;
      }

      if (v85 >= v96)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }
  }

  v84 = v16;
LABEL_14:
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v32 = v6[10];
  *(v31 + 16) = v32;
  v33 = v6[11];
  *(v31 + 24) = v33;
  v34 = v6[12];
  *(v31 + 32) = v34;
  v35 = v6[13];
  *(v31 + 40) = v35;
  v36 = v6[14];
  *(v31 + 48) = v36;
  v37 = v6[15];
  v38 = v101;
  *(v31 + 72) = v100;
  *(v31 + 56) = v37;
  *(v31 + 64) = v30;
  *(v31 + 88) = v38;
  *(v31 + 104) = v102;
  *(v31 + 120) = v103;
  if (v86)
  {
    v96 = v100;
    v97 = v101;
    v98 = v102;
    v99 = v103;
    v88 = v85;
    if (v86 == 1)
    {
      v89 = 1;
      v39 = *(v36 + 32);
      *(&v94 + 1) = v33;
      v95 = v36;
      __swift_allocate_boxed_opaque_existential_1(&v93);
      sub_1DEEA8BAC(&v100, v90);
      sub_1DEEA8BAC(&v100, v90);

      v39(&v96, &v88, sub_1DEF8CC18, v31, v33, v36);
    }

    else
    {
      v89 = 2;
      v41 = *(v37 + 32);
      *(&v94 + 1) = v34;
      v95 = v37;
      __swift_allocate_boxed_opaque_existential_1(&v93);
      sub_1DEEA8BAC(&v100, v90);
      sub_1DEEA8BAC(&v100, v90);

      v41(&v96, &v88, sub_1DEF8CC18, v31, v34, v37);
    }
  }

  else
  {
    v96 = v100;
    v97 = v101;
    v98 = v102;
    v99 = v103;
    v88 = v85;
    v89 = 0;
    v40 = *(v35 + 32);
    *(&v94 + 1) = v32;
    v95 = v35;
    __swift_allocate_boxed_opaque_existential_1(&v93);
    sub_1DEEA8BAC(&v100, v90);
    sub_1DEEA8BAC(&v100, v90);

    v40(&v96, &v88, sub_1DEF8CC18, v31, v32, v35);
  }

  sub_1DEE29594(&v93, v90);
  swift_beginAccess();
  sub_1DEEA8BAC(&v100, &v96);
  sub_1DEF33FFC(v90, &v100);
  swift_endAccess();
  swift_beginAccess();
  v42 = v3[5];

  v43 = sub_1DEF025A0(&v100, v42);

  if (v43)
  {
    sub_1DEEA8BAC(&v100, &v96);
    v44 = sub_1DEF8D4D8();
    v45 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(&v100);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v96 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1DEE12A5C(v100, *(&v100 + 1), &v96);
      _os_log_impl(&dword_1DEE0F000, v44, v45, "Handshake task is already executing; delaying new task for %{public}s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1E12CCD70](v47, -1, -1);
      MEMORY[0x1E12CCD70](v46, -1, -1);
    }
  }

  else
  {
    sub_1DEEA8BAC(&v100, &v96);
    v48 = sub_1DEF8D4D8();
    v49 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(&v100);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v96 = v51;
      *v50 = 136446210;
      *(v50 + 4) = sub_1DEE12A5C(v100, *(&v100 + 1), &v96);
      _os_log_impl(&dword_1DEE0F000, v48, v49, "Starting handshake task for %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1E12CCD70](v51, -1, -1);
      MEMORY[0x1E12CCD70](v50, -1, -1);
    }

    v52 = *(&v94 + 1);
    v53 = v95;
    __swift_project_boxed_opaque_existential_1(&v93, *(&v94 + 1));
    (*(v53 + 40))(v52, v53);
  }

  v54 = &v93;
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t HandshakeScheduler.completeHandshake(with:)(uint64_t a1)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DEF8D6D8();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v12;
  v21[2] = *(a1 + 32);
  v22 = *(a1 + 48);
  v17[1] = *(v1 + 32);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = *(a1 + 48);
  *(v13 + 72) = v1;
  aBlock[4] = sub_1DEF8C170;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_12;
  v15 = _Block_copy(aBlock);
  sub_1DEEA8BAC(v21, v19);

  sub_1DEF8D6B8();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v11, v7, v15);
  _Block_release(v15);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

void sub_1DEF8BDA0(uint64_t a1, uint64_t a2)
{
  if (qword_1ECDE3818 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF6118);
  sub_1DEEA8BAC(a1, &v26);
  v5 = sub_1DEF8D4D8();
  v6 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v26 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1DEE12A5C(*a1, *(a1 + 8), &v26);
    _os_log_impl(&dword_1DEE0F000, v5, v6, "Handshake completed: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E12CCD70](v8, -1, -1);
    MEMORY[0x1E12CCD70](v7, -1, -1);
  }

  swift_beginAccess();
  sub_1DEECB998(a1, &v26);
  swift_endAccess();
  if (*(&v26 + 1))
  {
    sub_1DEE46550(v26, *(&v26 + 1));
    swift_beginAccess();
    v9 = *(a2 + 48);
    if (*(v9 + 16))
    {
      v10 = *(a2 + 48);

      v11 = sub_1DEEAF880(a1);
      if (v12)
      {
        sub_1DEE29594(*(v9 + 56) + 40 * v11, &v26);

        sub_1DEE2F1AC(&v26, v23);
        sub_1DEEA8BAC(a1, &v26);
        v13 = sub_1DEF8D4D8();
        v14 = sub_1DEF8DCB8();
        sub_1DEEA8CAC(a1);
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *&v26 = v16;
          *v15 = 136446210;
          *(v15 + 4) = sub_1DEE12A5C(*a1, *(a1 + 8), &v26);
          _os_log_impl(&dword_1DEE0F000, v13, v14, "Starting next handshake for: %{public}s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x1E12CCD70](v16, -1, -1);
          MEMORY[0x1E12CCD70](v15, -1, -1);
        }

        v17 = v24;
        v18 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v18 + 40))(v17, v18);
        __swift_destroy_boxed_opaque_existential_1(v23);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1DEEA8BAC(a1, &v26);
    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DCB8();
    sub_1DEEA8CAC(a1);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v26 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1DEE12A5C(*a1, *(a1 + 8), &v26);
      _os_log_impl(&dword_1DEE0F000, v19, v20, "No executing handshake found for: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1E12CCD70](v22, -1, -1);
      MEMORY[0x1E12CCD70](v21, -1, -1);
    }
  }
}

uint64_t sub_1DEF8C314(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DEF8D698();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8D6D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19[2] = *(result + 32);
    v14 = result;
    v15 = swift_allocObject();
    v16 = *(a2 + 16);
    *(v15 + 24) = *a2;
    *(v15 + 16) = v14;
    v19[1] = v14;
    *(v15 + 40) = v16;
    *(v15 + 56) = *(a2 + 32);
    *(v15 + 72) = *(a2 + 48);
    aBlock[4] = sub_1DEF8CC84;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_22;
    v17 = v9;
    v18 = _Block_copy(aBlock);

    sub_1DEEA8BAC(a2, v20);
    sub_1DEF8D6B8();
    v20[0] = MEMORY[0x1E69E7CC0];
    sub_1DEE2BC18(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    v19[0] = v8;
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v12, v7, v18);
    _Block_release(v18);
    (*(v4 + 8))(v7, v3);
    (*(v17 + 8))(v12, v19[0]);
  }

  return result;
}

uint64_t sub_1DEF8C64C(uint64_t a1)
{
  v4 = sub_1DEF8D788();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  v54 = *a1;
  v55 = v9;
  v56 = *(a1 + 32);
  v57 = *(a1 + 48);
  v10 = v1[4];
  *v8 = v10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v11 = v10;
  LOBYTE(v10) = sub_1DEF8D7B8();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  swift_beginAccess();
  v12 = v1[5];

  v13 = sub_1DEF025A0(&v54, v12);

  if (v13)
  {
    return result;
  }

  result = swift_beginAccess();
  v15 = v1[6];
  if (!*(v15 + 16))
  {
    return result;
  }

  v2 = v1;
  v16 = v1[6];

  v17 = sub_1DEEAF880(&v54);
  if ((v18 & 1) == 0)
  {
  }

  sub_1DEE29594(*(v15 + 56) + 40 * v17, &v43);

  sub_1DEE2F1AC(&v43, v51);
  if (qword_1ECDE3818 != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6118);
  sub_1DEE29594(v51, v48);
  sub_1DEEA8BAC(&v54, &v43);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v54);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v42[0] = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_1DEE12A5C(v54, *(&v54 + 1), v42);
    *(v22 + 12) = 2082;
    v24 = v49;
    v25 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    (*(v25 + 16))(&v43, v24, v25);
    *&v40[0] = v43;
    BYTE8(v40[0]) = BYTE8(v43);
    v26 = ReplicationSchedule.description.getter();
    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1(v48);
    v29 = sub_1DEE12A5C(v26, v28, v42);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Scheduled handshake task fired for %{public}s; schedule: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v30 = v52;
  v31 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  v32 = *(v31 + 16);
  sub_1DEEA8BAC(&v54, &v43);
  v32(v40, v30, v31);
  v43 = v54;
  v44 = v55;
  v45 = v56;
  *&v46 = v57;
  *(&v46 + 1) = *&v40[0];
  v47 = BYTE8(v40[0]);
  sub_1DEEA8BAC(&v54, v40);
  v33 = sub_1DEF8D4D8();
  v34 = sub_1DEF8DCB8();
  sub_1DEEA8CAC(&v54);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v40[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_1DEE12A5C(v54, *(&v54 + 1), v40);
    _os_log_impl(&dword_1DEE0F000, v33, v34, "Scheduled handshake task fired for %{public}s; canceling", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12CCD70](v36, -1, -1);
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }

  v37 = v52;
  v38 = v53;
  __swift_project_boxed_opaque_existential_1(v51, v52);
  (*(v38 + 48))(v37, v38);
  memset(v42, 0, 40);
  swift_beginAccess();
  sub_1DEEA8BAC(&v54, v40);
  sub_1DEF33FFC(v42, &v54);
  swift_endAccess();
  swift_beginAccess();
  sub_1DEEA8BAC(&v54, v40);
  sub_1DEF39C30(v40, &v54);
  swift_endAccess();

  v39 = v2[3];
  v40[2] = v45;
  v40[3] = v46;
  v41 = v47;
  v40[0] = v43;
  v40[1] = v44;
  sub_1DEF8D588();
  sub_1DEF8CCD4(&v43);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1DEF8CC18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_1DEF8C314(v0[8], (v0 + 9));
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[4];

  v5 = v1[6];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DEF8CC84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  v5 = *(v0 + 72);
  return sub_1DEF8C64C(v4);
}