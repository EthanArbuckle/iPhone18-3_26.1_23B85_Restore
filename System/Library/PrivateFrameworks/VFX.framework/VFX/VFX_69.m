void sub_1AF677EF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread;
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);
  if (!v6)
  {
    v10 = OBJC_IVAR____TtC3VFX13EntityManager_presentationLock;
    v11 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_presentationLock);
    if (v11)
    {
      v12 = a2;
      pthread_mutex_lock(v11);
      if (*(a1 + v5))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock);
      v18 = a2;
      [v17 lock];
      if (*(a1 + v5))
      {
LABEL_6:
        v3 = v3;
        v13 = sub_1AF677EF0(a1, v3);
        if (v2)
        {

          v14 = *(a1 + v10);
          if (v14)
          {
LABEL_8:
            pthread_mutex_unlock(v14);
LABEL_15:

            return;
          }
        }

        else
        {
          v19 = v13;

          v20 = v19 & 1;
          v14 = *(a1 + v10);
          if (v14)
          {
            goto LABEL_8;
          }
        }

LABEL_14:
        [*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_syncLock) unlock];
        goto LABEL_15;
      }
    }

    sub_1AF65E3F4();
    sub_1AFCEA338(v3, &v20);
    if (v2)
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AF66DB74(a1);
      v14 = *(a1 + v10);
      if (v14)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_14;
  }

  v7 = *(v6 + 144);
  v8 = a2;

  v9 = pthread_self();
  if (pthread_equal(v7, v9))
  {
    sub_1AF65E3F4();
    sub_1AFCEA338(v8, &v20);
    sub_1AF66DB74(a1);
  }

  else
  {
    v15 = v8;
    v16 = sub_1AF6D1D24(v6, v15);

    if (!v2)
    {
      v20 = v16 & 1;
    }
  }
}

uint64_t sub_1AF678134()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1AF678194()
{
  if (!qword_1ED7230E8)
  {
    sub_1AF6781F0();
    v0 = sub_1AFDFE0A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7230E8);
    }
  }
}

unint64_t sub_1AF6781F0()
{
  result = qword_1ED725CB0;
  if (!qword_1ED725CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725CB0);
  }

  return result;
}

void sub_1AF678244()
{
  if (!qword_1EB63D228)
  {
    v0 = sub_1AFDFE4C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D228);
    }
  }
}

void sub_1AF6782C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1AF678314()
{
  result = qword_1ED726B90;
  if (!qword_1ED726B90)
  {
    sub_1AFDFDAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726B90);
  }

  return result;
}

unint64_t sub_1AF67836C()
{
  result = qword_1ED726C30;
  if (!qword_1ED726C30)
  {
    sub_1AF6723CC(255, &qword_1ED726C38, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED726C30);
  }

  return result;
}

uint64_t sub_1AF6783F4(uint64_t a1, uint64_t a2)
{
  sub_1AF6723CC(0, &qword_1ED72C290, type metadata accessor for EntityManager, type metadata accessor for WeakReference);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF678488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AF6784F0()
{
  if (!qword_1EB63D238)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63D238);
    }
  }
}

uint64_t sub_1AF67856C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF6785E0()
{
  result = qword_1EB63D240;
  if (!qword_1EB63D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D240);
  }

  return result;
}

unint64_t sub_1AF678638()
{
  result = qword_1EB63D248;
  if (!qword_1EB63D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D248);
  }

  return result;
}

uint64_t sub_1AF678728()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_runtimeThread);

  if (!v1)
  {
    return swift_task_getMainExecutor();
  }

  sub_1AF678A4C(&qword_1EB63D258);
  return v1;
}

uint64_t sub_1AF6787C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1AF678A4C(&qword_1EB63D250);

  return a4(a1, v6, v7);
}

uint64_t sub_1AF678950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v5;

  sub_1AF6CC3F8(a5, v9);
}

uint64_t sub_1AF678A4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RuntimeThread();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF678A94()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 16);
  v3 = sub_1AF678A4C(&qword_1EB63D258);

  return MEMORY[0x1EEE6DF18](v2, v1, v3);
}

uint64_t sub_1AF678AF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1AF678B44(unint64_t result)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v2 = (*(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v2[2] == HIDWORD(result))
    {
      v3 = *(v2 + 2);
      v4 = *(*(v1 + 144) + 8 * *v2 + 32);
      thread_worker_index();
      v8 = v4[24];
      if (v8)
      {
        sub_1AF64F228(v3, v5, v6, v7, v8, v4[25], v4[26]);
      }

      return sub_1AF705804(v3);
    }
  }

  return result;
}

void sub_1AF678C34()
{
  v1 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues + 8);
  v66 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  if (v66)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = 0;
    v64 = (v72 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v71 = OBJC_IVAR____TtC3VFX13EntityManager_logger;
    v4 = *(v0 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v65 = &v66[v1];
    do
    {
      v69 = v3;
      v67 = *v4;
      v68 = v4;
      v5 = *(*v4 + 88);
      v6 = 1 << *(v5 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(v5 + 56);
      v9 = (v6 + 63) >> 6;

      v10 = 0;
      while (1)
      {
        v11 = v10;
        if (!v8)
        {
          break;
        }

LABEL_17:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = (*(v5 + 48) + ((v10 << 10) | (16 * v12)));
        v14 = *v13;
        v15 = v13[1];
        v17 = v13[2];
        v16 = v13[3];
        if (v14 == v17 && v15 == v16)
        {
          v19 = *(v72 + v71);
          v73 = 0;
          v74 = 0xE000000000000000;

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF2E890);
          v20 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v20);

          MEMORY[0x1B2718AE0](44, 0xE100000000000000);
          v21 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v21);

          MEMORY[0x1B2718AE0](15965, 0xE200000000000000);
          MEMORY[0x1B2718AE0](0x5B797469746E453CLL, 0xE800000000000000);

          MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF2E8C0);
          v22 = v73;
          v23 = v74;
          v24 = sub_1AFDFDA08();
          v73 = 0;
          (*(*v19 + 88))(v24, &v73, v22, v23);
        }

        else
        {
          v69 = 1;
          if (v17 != -1 || v16 != 0)
          {
            v69 = 1;
            if ((v17 & 0x80000000) == 0 && v64[1] > v17)
            {
              v26 = (*v64 + 12 * v17);
              v69 = 1;
              if (v16 == -1 || v26[2] == v16)
              {
                v28 = *(v26 + 2);
                v29 = *(*(v72 + 144) + 8 * *v26 + 32);
                v30 = thread_worker_index();
                v31 = v66;
                if (*v30 != -1)
                {
                  v31 = &v66[*v30 + 1];
                }

                v32 = *v31;
                v33 = *(v29 + 192);
                if (v33)
                {
                  v34 = *(v29 + 208);
                  *(v33 + 8 * (v28 >> 6)) |= 1 << v28;
                  *(v34 + 8 * (v28 >> 6)) &= ~(1 << v28);
                }

                v69 = 1;
                if (*(*(v29 + 40) + 213) == 1)
                {
                  v35 = *(v29 + 48);
                  v36 = (v35 + 32);
                  v37 = *(v35 + 16) + 1;
                  while (--v37)
                  {
                    v38 = v36 + 5;
                    v39 = *v36;
                    v36 += 5;
                    if (v39 == &type metadata for PropagateDirtiness)
                    {
                      v40 = *(v38 - 2);
                      goto LABEL_44;
                    }
                  }

                  v40 = 0;
LABEL_44:
                  v41 = *(v29 + 128);
                  v42 = *(v29 + 184);

                  if (v42)
                  {
                    sub_1AFDFE518();
                    __break(1u);
                    return;
                  }

                  v44 = *(*(v29 + 168) + 4 * v28);
                  v45 = (v41 + v40 + 8 * v28);
                  v46 = *(*(v43 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v44 + 8);

                  v47 = *v45;
                  v48 = v45[1];
                  v69 = 1;
                  if (v47 != -1 || v48 != 0)
                  {
                    v70 = v44;
                    v63 = v46;
                    v50 = *(v32 + 88);
                    sub_1AFDFF288();
                    v51 = v47;
                    sub_1AFDFF2C8();
                    sub_1AFDFF2C8();
                    v52 = sub_1AFDFF2F8();
                    v53 = -1 << *(v50 + 32);
                    v54 = v52 & ~v53;
                    if ((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
                    {
                      v55 = ~v53;
                      v56 = v70;
                      while (1)
                      {
                        v57 = *(v50 + 48) + 16 * v54;
                        v59 = *(v57 + 8);
                        v58 = *(v57 + 12);
                        if (v59 == v51 && v58 == v48)
                        {
                          break;
                        }

                        v54 = (v54 + 1) & v55;
                        if (((*(v50 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
                        {
                          goto LABEL_58;
                        }
                      }
                    }

                    else
                    {
                      v56 = v70;
LABEL_58:
                      v61 = v56;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v73 = *(v32 + 88);
                      *(v32 + 88) = 0x8000000000000000;
                      sub_1AF711640(v61 | (v63 << 32), v51 | (v48 << 32), v54, isUniquelyReferenced_nonNull_native);
                      *(v32 + 88) = v73;
                    }

                    v69 = 1;
                  }
                }
              }
            }
          }
        }
      }

      while (1)
      {
        v10 = v11 + 1;
        if (v11 + 1 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v11++ + 64);
        if (v8)
        {
          goto LABEL_17;
        }
      }

      if (*(*(v67 + 88) + 16))
      {
        swift_isUniquelyReferenced_nonNull_native();
        v73 = *(v67 + 88);
        *(v67 + 88) = 0x8000000000000000;
        sub_1AF678194();
        sub_1AFDFE098();
        *(v67 + 88) = v73;
      }

      v4 = v66;
      if (v68 + 1 != v65)
      {
        v4 = v68 + 1;
      }

      v3 = (v68 + 1 != v65) & v69;
    }

    while ((v68 + 1 != v65) | v69 & 1);
  }
}

uint64_t sub_1AF67926C(unint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return 0;
  }

  v4 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1;
  if (HIDWORD(a1) != 0xFFFFFFFF && *(v4 + 8) != HIDWORD(a1))
  {
    return 0;
  }

  else
  {
    return a2(*(v4 + 4), 2) & 1;
  }
}

BOOL sub_1AF67930C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = *(a1 + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v11 = a1 == a5;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = (a1 + 32);
    v13 = (a5 + 32);
    while (*v12 == *v13)
    {
      ++v13;
      ++v12;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if (sub_1AFB7B128(a2, a6))
  {
    if (a3)
    {
      if (a7 && (sub_1AFB7BBA4(a3, a7) & 1) != 0)
      {
        return a4 == a8;
      }
    }

    else if (!a7)
    {
      return a4 == a8;
    }
  }

  return 0;
}

uint64_t sub_1AF6793D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  swift_getAtKeyPath();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_1AF6794BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFE318();
  if (swift_dynamicCastClass())
  {
    (*(v6 + 16))(v8, a1, a3);

    swift_getAtPartialKeyPath();

    return (*(v6 + 8))(v8, a3);
  }

  else
  {
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF2E930);
    v10[1] = a2;
    sub_1AFDFE008();
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF679690(void *a1)
{
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    LOBYTE(v7) = v4;
    return swift_setAtWritableKeyPath();
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
LABEL_6:
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    LODWORD(v7) = v4;
    return swift_setAtWritableKeyPath();
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass() || (sub_1AFDFE448(), swift_dynamicCastClass()) || (sub_1AF67C994(255, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]), sub_1AFDFE448(), swift_dynamicCastClass()) || (sub_1AF67C994(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]), sub_1AFDFE448(), swift_dynamicCastClass()))
  {
LABEL_9:
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    *&v7 = v4;
    return swift_setAtWritableKeyPath();
  }

  sub_1AF67C994(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  sub_1AF67C994(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  sub_1AF67C994(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  sub_1AF67C994(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  sub_1AF67C994(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  type metadata accessor for simd_float2x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  type metadata accessor for simd_float2x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_31;
  }

  type metadata accessor for simd_float2x4(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_31;
  }

  type metadata accessor for simd_float3x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    v7 = v4;
    *&v8 = v5;
    return swift_setAtWritableKeyPath();
  }

  type metadata accessor for simd_float3x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_29;
  }

  type metadata accessor for simd_float3x4(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_29;
  }

  type metadata accessor for simd_float4x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
LABEL_31:
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    v7 = v4;
    v8 = v5;
    return swift_setAtWritableKeyPath();
  }

  type metadata accessor for simd_float4x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass() || (type metadata accessor for simd_float4x4(255), sub_1AFDFE448(), swift_dynamicCastClass()))
  {
LABEL_29:
    sub_1AF0D5A54(a1, &v7);
    swift_dynamicCast();
    return swift_setAtWritableKeyPath();
  }

  type metadata accessor for simd_quatf(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  sub_1AF67C9FC(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
LABEL_2:
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    v7 = v4;
    return swift_setAtWritableKeyPath();
  }

  sub_1AF67C9FC(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    v7 = v4;
    LOBYTE(v8) = v5;
    return swift_setAtWritableKeyPath();
  }

  sub_1AF67C9FC(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v6);
    swift_dynamicCast();
    v7 = v4;
    *&v8 = v5;
    BYTE8(v8) = BYTE8(v5);
    return swift_setAtWritableKeyPath();
  }

  sub_1AF67CA50(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  sub_1AF67CA50(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  sub_1AF67CA50(255, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass() || (sub_1AF67CA50(255, &unk_1ED721F60, MEMORY[0x1E69E6878], MEMORY[0x1E69E6720]), sub_1AFDFE448(), swift_dynamicCastClass()))
  {
    *&v6 = *sub_1AF441150(a1, a1[3]);
    return swift_setAtWritableKeyPath();
  }

  v3 = MEMORY[0x1E69E7CA0];
  sub_1AFDFE448();
  if (swift_dynamicCastClass() || (sub_1AF67CA50(255, &qword_1ED726850, v3 + 8, MEMORY[0x1E69E6720]), sub_1AFDFE448(), swift_dynamicCastClass()))
  {
    sub_1AF0D5A54(a1, &v6);
    return swift_setAtWritableKeyPath();
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E910);
  sub_1AFDFE008();
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67A4CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v233.i64[0] = a2;
  v234 = a1;
  v232.i64[0] = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v229 = &v215 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v228 = &v215 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v227 = &v215 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v226 = &v215 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v225 = &v215 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v224 = &v215 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v223 = &v215 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v230 = &v215 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v215 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v215 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v215 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v215 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v215 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v215 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v215 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v215 - v58;
  v235.i64[0] = v60;
  sub_1AFDFE448();
  v231.i64[0] = a3;
  if (swift_dynamicCastClass())
  {
    v61 = v232.i64[0];
    v62 = v235.i64[0];
    (*(v232.i64[0] + 16))(v59, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v61 + 8))(v59, v62);
    v63 = v252;
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    if (*&v63 == *&v256)
    {
      LOBYTE(v64) = 1;
LABEL_8:

      return v64 & 1;
    }

    v69 = sub_1AFDFEE28();
LABEL_7:
    LOBYTE(v64) = v69;
    goto LABEL_8;
  }

  v220 = v47;
  v221 = v51;
  v218 = v39;
  v219 = v43;
  v216 = v31;
  v217 = v35;
  v222 = v55;
  v65 = v232.i64[0];
  v66 = v235.i64[0];
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v67 = v222;
    (*(v65 + 16))(v222, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v67, v66);
    v68 = v252.i8[0];
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    LOBYTE(v64) = v68 ^ v256.i8[0] ^ 1;
    return v64 & 1;
  }

  sub_1AFDFE448();
  v71 = swift_dynamicCastClass();
  v72 = v222;
  if (v71)
  {
    (*(v65 + 16))(v222, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v72, v66);
    LODWORD(v64) = v252.i32[0];
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    LOBYTE(v64) = v64 == v256.i32[0];
    return v64 & 1;
  }

  sub_1AFDFE448();
  if (swift_dynamicCastClass() || (sub_1AFDFE448(), swift_dynamicCastClass()))
  {
    (*(v65 + 16))(v72, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v72, v66);
    v64 = v252.i64[0];
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    LOBYTE(v64) = v64 == v256.i64[0];
    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v73 = v221;
    (*(v65 + 16))(v221, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v73, v66);
    v4 = v252.i64[0];
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v74 = 0;
    v75 = v256.i64[0];
LABEL_120:
    v250 = v4;
    v208 = *(&v250 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v74 & 1)));
    v251 = v75;
    LOBYTE(v64) = v208 == *(&v251 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v74 & 1)));
LABEL_118:
    while (v74 != 1)
    {
      ++v74;
      if (v64)
      {
        goto LABEL_120;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
  sub_1AFDFE448();
  v76 = swift_dynamicCastClass();
  v77 = v234;
  if (v76)
  {
    v78 = v220;
    (*(v65 + 16))(v220, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v78, v66);
    v79 = v252.i64[0];
    sub_1AF0D5A54(v77, &v258);
    swift_dynamicCast();
    v80 = 0;
LABEL_123:
    v248 = v79;
    v209 = *(&v248 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v80 & 1)));
    v249 = v256.i64[0];
    LOBYTE(v64) = v209 == *(&v249 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v80 & 1)));
    while (v80 != 1)
    {
      ++v80;
      if (v64)
      {
        goto LABEL_123;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v81 = v219;
    (*(v65 + 16))(v219, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v81, v66);
    v235 = v252;
    sub_1AF0D5A54(v77, &v258);
    swift_dynamicCast();
    v82 = 0;
LABEL_126:
    v246 = v235;
    v210 = *(&v246 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3)));
    v247 = v256;
    LOBYTE(v64) = v210 == *(&v247 & 0xFFFFFFFFFFFFFFF3 | (4 * (v82 & 3)));
    while (v82 != 2)
    {
      ++v82;
      if (v64)
      {
        goto LABEL_126;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
  sub_1AFDFE448();
  v83 = v65;
  if (swift_dynamicCastClass())
  {
    v84 = *(v65 + 16);
    v85 = v218;
    v84(v218, v233.i64[0], v66);
    swift_getAtKeyPath();
    (*(v83 + 8))(v85, v66);
    v235 = v252;
    sub_1AF0D5A54(v77, &v258);
    swift_dynamicCast();
    v86 = 0;
LABEL_129:
    v244 = v235;
    v211 = *(&v244 & 0xFFFFFFFFFFFFFFF3 | (4 * (v86 & 3)));
    v245 = v256;
    LOBYTE(v64) = v211 == *(&v245 & 0xFFFFFFFFFFFFFFF3 | (4 * (v86 & 3)));
    while (v86 != 3)
    {
      ++v86;
      if (v64)
      {
        goto LABEL_129;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  v87 = v233.i64[0];
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    (*(v65 + 16))(v72, v87, v66);
    swift_getAtKeyPath();
    (*(v65 + 8))(v72, v66);
    v88 = v252.f32[0];
    sub_1AF0D5A54(v77, &v258);
    swift_dynamicCast();
    LOBYTE(v64) = v88 == v256.f32[0];
    return v64 & 1;
  }

  sub_1AF67C994(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v89 = v65;
    v90 = *(v65 + 16);
    v91 = v217;
    v92 = v235.i64[0];
    v90(v217, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v89 + 8))(v91, v92);
    v93 = v252.i64[0];
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v94 = 0;
LABEL_132:
    v242 = v93;
    v212 = *(&v242 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v94 & 1)));
    v243 = v256.i64[0];
    LOBYTE(v64) = v212 == *(&v243 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v94 & 1)));
    while (v94 != 1)
    {
      ++v94;
      if (v64)
      {
        goto LABEL_132;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v95 = v65;
    v96 = *(v65 + 16);
    v97 = v216;
    v98 = v235.i64[0];
    v96(v216, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v95 + 8))(v97, v98);
    v235 = v252;
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v99 = 0;
LABEL_135:
    v240 = v235;
    v213 = *(&v240 & 0xFFFFFFFFFFFFFFF3 | (4 * (v99 & 3)));
    v241 = v256;
    LOBYTE(v64) = v213 == *(&v241 & 0xFFFFFFFFFFFFFFF3 | (4 * (v99 & 3)));
    while (v99 != 2)
    {
      ++v99;
      if (v64)
      {
        goto LABEL_135;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  sub_1AF67C994(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v100 = v65;
    v101 = *(v65 + 16);
    v102 = v230;
    v103 = v235.i64[0];
    v101(v230, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v100 + 8))(v102, v103);
    v235 = v252;
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v104 = 0;
LABEL_138:
    v238 = v235;
    v214 = *(&v238 & 0xFFFFFFFFFFFFFFF3 | (4 * (v104 & 3)));
    v239 = v256;
    LOBYTE(v64) = v214 == *(&v239 & 0xFFFFFFFFFFFFFFF3 | (4 * (v104 & 3)));
    while (v104 != 3)
    {
      ++v104;
      if (v64)
      {
        goto LABEL_138;
      }

      LOBYTE(v64) = 0;
    }

    return v64 & 1;
  }

  type metadata accessor for simd_float2x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v105 = v65;
    v106 = *(v65 + 16);
    v107 = v222;
    v108 = v235.i64[0];
    v106(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v105 + 8))(v107, v108);
    v109 = v252;
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v110 = vand_s8(vceq_f32(*&v109.u32[2], *&v256.u32[2]), vceq_f32(*v109.f32, *v256.f32));
LABEL_40:
    v111 = vpmin_u32(v110, v110).u32[0];
LABEL_47:
    LODWORD(v64) = v111 >> 31;
    return v64 & 1;
  }

  type metadata accessor for simd_float2x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v112 = v65;
    v113 = *(v65 + 16);
    v114 = v222;
    v115 = v235.i64[0];
    v113(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v112 + 8))(v114, v115);
    v235 = v258;
    v233 = v259;
    sub_1AF0D5A54(v234, &v252);
    swift_dynamicCast();
    v116 = vandq_s8(vceqq_f32(v233, v257), vceqq_f32(v235, v256));
LABEL_43:
    v116.i32[3] = v116.i32[2];
LABEL_46:
    v111 = vminvq_u32(v116);
    goto LABEL_47;
  }

  type metadata accessor for simd_float2x4(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v117 = v65;
    v118 = *(v65 + 16);
    v119 = v222;
    v120 = v235.i64[0];
    v118(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v117 + 8))(v119, v120);
    v235 = v258;
    v233 = v259;
    sub_1AF0D5A54(v234, &v252);
    swift_dynamicCast();
    v116 = vandq_s8(vceqq_f32(v233, v257), vceqq_f32(v235, v256));
    goto LABEL_46;
  }

  type metadata accessor for simd_float3x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v121 = v65;
    v122 = *(v65 + 16);
    v123 = v222;
    v124 = v235.i64[0];
    v122(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v121 + 8))(v123, v124);
    v125 = v252;
    v126 = *v253.f32;
    sub_1AF0D5A54(v234, &v258);
    swift_dynamicCast();
    v127 = vand_s8(vceq_f32(*&v125.u32[2], *&v256.u32[2]), vceq_f32(*v125.f32, *v256.f32));
    v128 = vceq_f32(v126, *v257.f32);
LABEL_50:
    v110 = vand_s8(v127, v128);
    goto LABEL_40;
  }

  type metadata accessor for simd_float3x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v129 = v65;
    v130 = *(v65 + 16);
    v131 = v222;
    v132 = v235.i64[0];
    v130(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v129 + 8))(v131, v132);
    v232 = v259;
    v233 = v258;
    v235 = v260;
    sub_1AF0D5A54(v234, &v256);
    swift_dynamicCast();
    v133 = vandq_s8(vceqq_f32(v232, v253), vceqq_f32(v233, v252));
    v134 = vceqq_f32(v235, v254);
LABEL_53:
    v116 = vandq_s8(v133, v134);
    goto LABEL_43;
  }

  type metadata accessor for simd_float3x4(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v135 = v65;
    v136 = *(v65 + 16);
    v137 = v222;
    v138 = v235.i64[0];
    v136(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v135 + 8))(v137, v138);
    v232 = v259;
    v233 = v258;
    v235 = v260;
    sub_1AF0D5A54(v234, &v256);
    swift_dynamicCast();
    v139 = vandq_s8(vceqq_f32(v232, v253), vceqq_f32(v233, v252));
    v140 = vceqq_f32(v235, v254);
LABEL_56:
    v116 = vandq_s8(v139, v140);
    goto LABEL_46;
  }

  type metadata accessor for simd_float4x2(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v141 = v65;
    v142 = *(v65 + 16);
    v143 = v222;
    v144 = v235.i64[0];
    v142(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v141 + 8))(v143, v144);
    v145 = v258;
    v146 = v259;
    sub_1AF0D5A54(v234, &v252);
    swift_dynamicCast();
    v127 = vand_s8(vceq_f32(*&v145.u32[2], *&v256.u32[2]), vceq_f32(*v145.f32, *v256.f32));
    v128 = vand_s8(vceq_f32(*v146.f32, *v257.f32), vceq_f32(*&v146.u32[2], *&v257.u32[2]));
    goto LABEL_50;
  }

  type metadata accessor for simd_float4x3(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v147 = v65;
    v148 = *(v65 + 16);
    v149 = v222;
    v150 = v235.i64[0];
    v148(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v147 + 8))(v149, v150);
    v231 = v259;
    v232 = v258;
    v235 = v260;
    v233 = v261;
    sub_1AF0D5A54(v234, &v256);
    swift_dynamicCast();
    v133 = vandq_s8(vceqq_f32(v231, v253), vceqq_f32(v232, v252));
    v134 = vandq_s8(vceqq_f32(v235, v254), vceqq_f32(v233, v255));
    goto LABEL_53;
  }

  type metadata accessor for simd_float4x4(255);
  sub_1AFDFE448();
  if (swift_dynamicCastClass())
  {
    v151 = v65;
    v152 = *(v65 + 16);
    v153 = v222;
    v154 = v235.i64[0];
    v152(v222, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v151 + 8))(v153, v154);
    v231 = v259;
    v232 = v258;
    v235 = v260;
    v233 = v261;
    sub_1AF0D5A54(v234, &v256);
    swift_dynamicCast();
    v139 = vandq_s8(vceqq_f32(v231, v253), vceqq_f32(v232, v252));
    v140 = vandq_s8(vceqq_f32(v235, v254), vceqq_f32(v233, v255));
    goto LABEL_56;
  }

  type metadata accessor for simd_quatf(255);
  sub_1AFDFE448();
  if (!swift_dynamicCastClass())
  {
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v161 = v224;
      v162 = v235.i64[0];
      (*(v65 + 16))(v224, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v65 + 8))(v161, v162);
      v163 = v252.i32[0];
      v164 = v252.i32[1];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      LOBYTE(v64) = v163 == v256.i32[0] && v164 == v256.i32[1];
      return v64 & 1;
    }

    sub_1AF67C9FC(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v166 = v65;
      v167 = *(v65 + 16);
      v168 = v225;
      v169 = v235.i64[0];
      v167(v225, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v166 + 8))(v168, v169);
      v170 = v252;
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      LOBYTE(v64) = v170.i64[0] == v256.i64[0] && v170.i64[1] == v256.i64[1];
      return v64 & 1;
    }

    sub_1AF67C9FC(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v172 = v65;
      v173 = *(v65 + 16);
      v174 = v226;
      v175 = v235.i64[0];
      v173(v226, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v172 + 8))(v174, v175);
      v176 = v252.i64[0];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      LOBYTE(v64) = *(&v176 + 1) == v256.f32[1] && *&v176 == v256.f32[0];
      return v64 & 1;
    }

    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v178 = v227;
      v179 = v235.i64[0];
      (*(v65 + 16))(v227, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v65 + 8))(v178, v179);
      v180 = v252;
      v181 = v253.u8[0];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      v182 = v256.i64[1];
      v183 = v257.u8[0];
      if ((sub_1AFB7B0BC(v180.i64[0], v256.i64[0]) & 1) != 0 && sub_1AFB7B128(v180.i64[1], v182))
      {

        LOBYTE(v64) = v181 == v183;
        return v64 & 1;
      }

LABEL_96:
      LOBYTE(v64) = 0;
      return v64 & 1;
    }

    sub_1AF67C9FC(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v184 = v65;
      v185 = *(v65 + 16);
      v186 = v222;
      v187 = v235.i64[0];
      v185(v222, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v184 + 8))(v186, v187);
      v188 = v252;
      v189 = v253.i64[0];
      LOBYTE(v186) = v253.i8[8];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      LOBYTE(v64) = sub_1AF67930C(v188.i64[0], v188.i64[1], v189, v186, v256.i64[0], v256.i64[1], v257.i64[0], v257.i8[8]);

      goto LABEL_8;
    }

    sub_1AF67CA50(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v190 = v65;
      v191 = *(v65 + 16);
      v192 = v222;
      v193 = v235.i64[0];
      v191(v222, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v190 + 8))(v192, v193);
      v194 = v252.i64[0];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      v69 = sub_1AFB7B948(v194, v256.i64[0]);
      goto LABEL_7;
    }

    sub_1AF67CA50(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v195 = v65;
      v196 = *(v65 + 16);
      v197 = v222;
      v198 = v235.i64[0];
      v196(v222, v233.i64[0], v235.i64[0]);
      swift_getAtKeyPath();
      (*(v195 + 8))(v197, v198);
      v199 = v252.i64[0];
      sub_1AF0D5A54(v234, &v258);
      swift_dynamicCast();
      v69 = sub_1AFB7B128(v199, v256.i64[0]);
      goto LABEL_7;
    }

    sub_1AF67CA50(255, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
    sub_1AFDFE448();
    if (swift_dynamicCastClass())
    {
      v200 = v65;
      v201 = *(v65 + 16);
      v202 = v228;
    }

    else
    {
      sub_1AF67CA50(255, &unk_1ED721F60, MEMORY[0x1E69E6878], MEMORY[0x1E69E6720]);
      sub_1AFDFE448();
      if (!swift_dynamicCastClass())
      {
        v207 = MEMORY[0x1E69E7CA0];
        sub_1AFDFE448();
        if (!swift_dynamicCastClass())
        {
          sub_1AF67CA50(255, &qword_1ED726850, v207 + 8, MEMORY[0x1E69E6720]);
          sub_1AFDFE448();
          if (!swift_dynamicCastClass())
          {
            v258.i64[0] = 0;
            v258.i64[1] = 0xE000000000000000;
            v64 = &v258;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E910);
            v252.i64[0] = v231.i64[0];
            sub_1AFDFE008();
            sub_1AFDFE458();
            sub_1AFDFE518();
            __break(1u);
            goto LABEL_118;
          }
        }

        goto LABEL_96;
      }

      v200 = v65;
      v201 = *(v65 + 16);
      v202 = v229;
    }

    v203 = v235.i64[0];
    v201(v202, v233.i64[0], v235.i64[0]);
    swift_getAtKeyPath();
    (*(v200 + 8))(v202, v203);
    v204 = v258.i64[0];
    v205 = *sub_1AF441150(v234, v234[3]);
    if (v204)
    {
      if (v205)
      {
        v206 = v204 == v205;
      }

      else
      {
        v206 = 0;
      }

      LOBYTE(v64) = v206;
    }

    else
    {
      LOBYTE(v64) = v205 == 0;
    }

    return v64 & 1;
  }

  v155 = v65;
  v156 = *(v65 + 16);
  v157 = v223;
  v158 = v235.i64[0];
  v156(v223, v233.i64[0], v235.i64[0]);
  swift_getAtKeyPath();
  (*(v155 + 8))(v157, v158);
  v235 = v252;
  sub_1AF0D5A54(v234, &v258);
  swift_dynamicCast();
  v159 = 0;
LABEL_67:
  v236 = v235;
  v160 = *(&v236 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3)));
  v237 = v256;
  LOBYTE(v64) = v160 == *(&v237 & 0xFFFFFFFFFFFFFFF3 | (4 * (v159 & 3)));
  while (v159 != 3)
  {
    ++v159;
    if (v64)
    {
      goto LABEL_67;
    }

    LOBYTE(v64) = 0;
  }

  return v64 & 1;
}

uint64_t sub_1AF67C738(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(*a3 + *MEMORY[0x1E69E6CE8]);
  v6[2] = a4;
  v6[3] = a3;
  v6[4] = a1;
  return sub_1AF67FBFC(v4, a2, sub_1AF67C8C4, v6, v4, a4);
}

uint64_t sub_1AF67C7C0(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  (*(v2 + 16))(&v6 - v3, v4);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_1AF67C8E4@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v10 = sub_1AF6824B0(a2, a3, a1);
  if (v10)
  {
    sub_1AF6793D0(v10, v10, a4, a2);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(*(a5 - 8) + 56);

  return v12(a6, v11, 1, a5);
}

void sub_1AF67C994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF67C9FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF67CA50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

BOOL sub_1AF67CACC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    return 0;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3;
    if (HIDWORD(a3) == 0xFFFFFFFF || *(v6 + 8) == HIDWORD(a3))
    {
      v7 = *(*(*(v3 + 88) + 8 * *(v6 + 6) + 32) + 16);
      v8 = *(v7 + 128);
      v4 = *(v8 + 16);
      if (!v4)
      {
        return v4;
      }

      v10 = sub_1AF449CB8(a1);
      if (v11)
      {
        return *(*(v7 + 24) + 16 * *(*(v8 + 56) + 8 * v10) + 32) == a1;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1AF67CB9C@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1AF6411A4(a2);
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v10[2] == HIDWORD(a1))
    {
      return sub_1AF682A50(*(*(v4 + 144) + 8 * *v10 + 32), a2, a3);
    }
  }

  v8 = *(*(a2 - 8) + 56);

  return v8(a3, 1, 1, a2);
}

uint64_t sub_1AF67CCDC(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v3[2] != HIDWORD(a1) || (result = sub_1AF684EC0(*(*(a2 + 144) + 8 * *v3 + 32)), !v2) && !result)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2EB60);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF67CE70(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v3[2] != HIDWORD(a1) || (result = sub_1AF684F3C(*(*(a2 + 144) + 8 * *v3 + 32)), !v2) && !result)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2EB60);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF67D000(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_10;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_10;
  }

  v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v5[2] != HIDWORD(a1))
  {
    goto LABEL_10;
  }

  sub_1AF684FAC(*(*(a2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104, v9);
  if (v3)
  {
    return;
  }

  if (v11)
  {
LABEL_10:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v8 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v6 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v6;
  *(a3 + 64) = v10;
  v7 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v7;
}

void sub_1AF67D1B4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_10;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_10;
  }

  v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v5[2] != HIDWORD(a1))
  {
    goto LABEL_10;
  }

  sub_1AF685084(*(*(a2 + 144) + 8 * *v5 + 32), *(v5 + 2), 104, v9);
  if (v3)
  {
    return;
  }

  if (v11)
  {
LABEL_10:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v8 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v6 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v6;
  *(a3 + 64) = v10;
  v7 = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = v7;
}

uint64_t sub_1AF67D368(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v3[2] != HIDWORD(a1) || (result = sub_1AF6851A4(*(*(a2 + 144) + 8 * *v3 + 32), *(v3 + 2), 848), !v2) && (v5 & 0xFF00000000) == 0x200000000)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v6 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v6);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF67D524(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_13;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_13;
  }

  v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v3[2] != HIDWORD(a1))
  {
    goto LABEL_13;
  }

  v4 = *(v3 + 2);
  v5 = *(*(a2 + 144) + 8 * *v3 + 32);
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for EmitterRuntime)
    {
      return *(&(*(v9 - 2))[53 * v4 + 6].Description + *(v5 + 128));
    }
  }

  if (v2)
  {
    return 0;
  }

LABEL_13:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67D708(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_13;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_13;
  }

  v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v3[2] != HIDWORD(a1))
  {
    goto LABEL_13;
  }

  v4 = *(v3 + 2);
  v5 = *(*(a2 + 144) + 8 * *v3 + 32);
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for EmitterRuntime)
    {
      return *(&(*(v9 - 2))[53 * v4 + 18].Kind + *(v5 + 128) + 4);
    }
  }

  if (v2)
  {
    return 0;
  }

LABEL_13:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67D8F0(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      LODWORD(v5) = *(v4 + 2);
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for EmitterDescription)
        {
          v5 = *(v10 - 2) + 104 * v5 + *(v6 + 128);
          if ((*(v5 + 57) & 1) == 0)
          {
            goto LABEL_13;
          }

          LOBYTE(v5) = 1;
          return v5 & 1;
        }
      }

      if (v3)
      {
        return v5 & 1;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
LABEL_13:
  LOBYTE(v5) = *(v5 + 56) | (a3 != 0);
  return v5 & 1;
}

uint64_t sub_1AF67DAE0(unint64_t a1, uint64_t a2)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v3[2] == HIDWORD(a1))
    {
      v4 = *(v3 + 2);
      v5 = *(*(a2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
        if (v10 == &type metadata for EmitterDescription)
        {
          if (!v2)
          {
            goto LABEL_13;
          }

          return v4 & 1;
        }
      }

      if (v2)
      {
        return v4 & 1;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v11 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
LABEL_13:
  LOBYTE(v4) = *(&(*(v9 - 2))[3].Description + 104 * v4 + *(v5 + 128) + 5);
  return v4 & 1;
}

unint64_t sub_1AF67DCBC(unint64_t result, uint64_t a2)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v4 = *(v3 + 2);
      v5 = *(*(a2 + 144) + 8 * *v3 + 32);
      v6 = *(v5 + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      do
      {
        if (!--v8)
        {
          v13 = 1;
          if (v2)
          {
            return result;
          }

          goto LABEL_14;
        }

        v9 = v7 + 5;
        v10 = *v7;
        v7 += 5;
      }

      while (v10 != &type metadata for EmitterDescription);
      v11 = *(&(*(v9 - 2))[3].Kind + 104 * v4 + *(v5 + 128));
      if (v11)
      {
        v12 = result;
        sub_1AF688994(v11);
        result = v12;
      }

      v13 = 0;
      if (v2)
      {
        return result;
      }

LABEL_14:
      if ((v13 & 1) == 0)
      {
        return result;
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v14 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA30);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67DEF4(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v3[2] != HIDWORD(a1) || (result = sub_1AF685C5C(*(*(a2 + 144) + 8 * *v3 + 32)), !v2) && !result)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF67E090(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_13;
  }

  if ((a1 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    goto LABEL_13;
  }

  v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v3[2] != HIDWORD(a1))
  {
    goto LABEL_13;
  }

  v4 = *(v3 + 2);
  v5 = *(*(a2 + 144) + 8 * *v3 + 32);
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for NeighborGrid)
    {
      return *(&(*(v9 - 2))[3 * v4].Description + *(v5 + 128));
    }
  }

  if (v2)
  {
    return 0;
  }

LABEL_13:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x726F62686769654ELL, 0xEC00000064697247);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67E270(unint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = sub_1AF67EBF0(a1, a2, a3, a4);
  if (v4 || v5 != 2)
  {
    return v5 & 1;
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v7 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v7);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF67E3AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 == 0xFFFFFFFF || (a3 & 0x80000000) != 0 || a3 >= *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v5 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3), v6 = *(v5 + 2), HIDWORD(a3) != 0xFFFFFFFF) && v5[2] != HIDWORD(a3))
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v8 = *v5;
    v25 = v4;
    v9 = *(*(v4 + 144) + 8 * v8 + 32);
    v10 = *(v9 + 64);
    v11 = *(v9 + 80);
    v33 = *(v9 + 112);
    v13 = *(v9 + 80);
    v12 = *(v9 + 96);
    v32[2] = v11;
    v32[3] = v12;
    v32[0] = *(v9 + 48);
    v32[1] = v10;
    v14 = *(v9 + 96);
    v29 = v13;
    v30 = v14;
    v31 = *(v9 + 112);
    v15 = *(v9 + 64);
    v27 = *(v9 + 48);
    v28 = v15;
    v17 = result;
    v18 = sub_1AF64FB24(result);
    v20 = v19;
    v22 = v21;
    v34[2] = v29;
    v34[3] = v30;
    v35 = v31;
    v34[0] = v27;
    v34[1] = v28;
    sub_1AF5DD36C(v32, v26);
    result = sub_1AF5DD3C8(v34);
    if (v22)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      v23 = *(*(*(v25 + 144) + 8 * v8 + 32) + 128) + v18 + v20 * v6;
      *(a4 + 24) = v17;
      *(a4 + 32) = a2;
      v24 = sub_1AF585714(a4);
      return sub_1AF641154(v23, v17, v24);
    }
  }

  return result;
}

uint64_t sub_1AF67E54C(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (v4 != 0xFFFFFFFF && v5[2] != v4)
    {
      return 0;
    }

    return sub_1AF684734(*(*(a2 + 144) + 8 * *v5 + 32), *(v5 + 2), 48);
  }

  return result;
}

void sub_1AF67E5F4(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v9 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v9[2] != HIDWORD(a1))
  {
    v4 = 1;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
LABEL_3:
    *a3 = v5;
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    *(a3 + 48) = v8;
    *(a3 + 64) = v4;
    return;
  }

  v10 = a3;
  sub_1AF68521C(*(*(a2 + 144) + 8 * *v9 + 32), v11);
  if (!v3)
  {
    v5 = v11[0];
    v6 = v11[1];
    v7 = v11[2];
    v8 = v11[3];
    v4 = v12;
    a3 = v10;
    goto LABEL_3;
  }
}

uint64_t sub_1AF67E6C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0)
  {
    v5 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v6 = HIDWORD(a1);
      v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
      if (v6 == 0xFFFFFFFF || v7[2] == v6)
      {
        v8 = *(v7 + 2);
        v9 = *(*(a2 + 144) + 8 * *v7 + 32);
        v10 = *(v9 + 48);
        v11 = (v10 + 32);
        v12 = *(v10 + 16) + 1;
        while (--v12)
        {
          v13 = v11 + 5;
          v14 = *v11;
          v11 += 5;
          if (v14 == &type metadata for NeighborGrid)
          {
            v15 = &(*(v13 - 2))[3 * v8] + *(v9 + 128);
            *(a3 + 580) = *v15;
            *(a3 + 592) = *(v15 + 16);
            return 1;
          }
        }

        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_1AF67E7D0(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      return sub_1AF685640(*(*(a2 + 144) + 8 * *v5 + 32));
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67E868(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 3;
  }

  result = 3;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 == 0xFFFFFFFF || v6[2] == v5)
      {
        v7 = *(v6 + 2);
        v8 = *(*(a2 + 144) + 8 * *v6 + 32);
        v9 = *(v8 + 48);
        v10 = (v9 + 32);
        v11 = *(v9 + 16) + 1;
        while (--v11)
        {
          v12 = v10 + 5;
          v13 = *v10;
          v10 += 5;
          if (v13 == &type metadata for EmitterDescription)
          {
            v14 = *(v12 - 2) + 104 * v7 + *(v8 + 128);
            if (*(v14 + 72))
            {
              return 0;
            }

            if (*(v14 + 48))
            {
              return 1;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t sub_1AF67E97C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return 0;
  }

  v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v5[2] != HIDWORD(a1))
  {
    return 0;
  }

  else
  {
    return a4(*(*(a2 + 144) + 8 * *v5 + 32), *(v5 + 2));
  }
}

uint64_t sub_1AF67EA08(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 == 0xFFFFFFFF || v6[2] == v5)
      {
        v7 = *(v6 + 2);
        v8 = *(*(a2 + 144) + 8 * *v6 + 32);
        v9 = *(v8 + 48);
        v10 = (v9 + 32);
        v11 = *(v9 + 16) + 1;
        while (--v11)
        {
          v12 = v10 + 5;
          v13 = *v10;
          v10 += 5;
          if (v13 == &type metadata for Material)
          {
            return ((*(&(*(v12 - 2))->Description + 104 * v7 + *(v8 + 128)))[80] >> 5) & 1;
          }
        }

        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_1AF67EAD8(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 != 0xFFFFFFFF && v6[2] != v5)
      {
        return 1;
      }

      v7 = *(v6 + 2);
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      result = 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for EmitterRuntime)
        {
          return *(&(*(v12 - 2))[53 * v7 + 17].Kind + *(v8 + 128));
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF67EBF0(unint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = HIDWORD(a1);
    v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v8 = *(v7 + 2);
    if (v6 == 0xFFFFFFFF || v7[2] == v6)
    {
      v9 = *(*(a2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      do
      {
        if (!--v12)
        {
          return 2;
        }

        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
      }

      while (v14 != &type metadata for EmitterRuntime);
      if ((a3 & 1) == 0)
      {
        v15 = &(*(v13 - 2))[53 * v8] + *(v9 + 128);
        if (a4 != 3)
        {
          return a4 != 2 || *(v15 + 112) > 0;
        }

        if (*(v15 + 528) < 1)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF67ECF0(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 2;
  }

  result = 2;
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
      if (v5 == 0xFFFFFFFF || v6[2] == v5)
      {
        v7 = *(v6 + 2);
        v8 = *(*(a2 + 144) + 8 * *v6 + 32);
        v9 = *(v8 + 48);
        v10 = (v9 + 32);
        v11 = *(v9 + 16) + 1;
        while (--v11)
        {
          v12 = v10 + 5;
          v13 = *v10;
          v10 += 5;
          if (v13 == &type metadata for EmitterRuntime)
          {
            return *(&(*(v12 - 2))[53 * v7 + 7].Description + *(v8 + 128));
          }
        }

        return 2;
      }
    }
  }

  return result;
}

uint64_t sub_1AF67EDB8(unint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = HIDWORD(a1);
    v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v8 = *(v7 + 2);
    if (v6 == 0xFFFFFFFF || v7[2] == v6)
    {
      v9 = *(*(a2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
        if (v14 == &type metadata for EmitterRuntime)
        {
          v15 = &(*(v13 - 2))[53 * v8] + *(v9 + 128);
          if ((*(v15 + 232) & 1) != 0 || (v16 = *(v15 + 208), v17 = a4 >= v16, v18 = a4 - v16, !v17) || *(v15 + 224) <= v18)
          {
            v19 = -1;
          }

          else
          {
            v19 = *(*(v15 + 216) + 8 * v18);
          }

          result = 0;
          *a3 = v19;
          return result;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF67EEB4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = HIDWORD(a1);
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v9 = *(v8 + 2);
    if (v7 == 0xFFFFFFFF || v8[2] == v7)
    {
      v10 = *(*(a2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      do
      {
        if (!--v13)
        {
          return 1;
        }

        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
      }

      while (v15 != &type metadata for EmitterRuntime);
      LODWORD(v18) = vfx_uniform_grid_find_nearest_neighbors((*(&(*(v14 - 2))[53 * v9 + 35].Description + *(v10 + 128)))[2], a3, a4, 1);
      result = 0;
      v18 = v18;
      if (v18 >= a4)
      {
        v18 = a4;
      }

      *a5 = v18;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF67EFEC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Bindings)
        {
          sub_1AF486514(a3, a4, *(&(*(v12 - 2))->Kind + 24 * v7 + *(v8 + 128)), a5);
        }
      }
    }
  }

  *a5 = 0u;
  *(a5 + 16) = 0u;
}

uint64_t sub_1AF67F0F4(unint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Orientation)
        {
          *(&(*(v12 - 2))[v7] + *(v8 + 128)) = a3;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F1B8(unint64_t a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = HIDWORD(a1);
    v9 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v10 = *(v9 + 2);
    if (v8 == 0xFFFFFFFF || v9[2] == v8)
    {
      v11 = *(*(a2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 5;
        v16 = *v13;
        v13 += 5;
        if (v16 == &type metadata for WorldTransform)
        {
          v17 = (&(*(v15 - 2))[4 * v10] + *(v11 + 128));
          *v17 = a3;
          v17[1] = a4;
          v17[2] = a5;
          v17[3] = a6;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F284(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticlePlaneCollider)
        {
          *(&(*(v11 - 2))->Kind + 28 * v6 + *(v7 + 128) + 2) = 0;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F350(unint64_t a1, uint64_t a2, char a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticlePlaneCollider)
        {
          *(&(*(v12 - 2))->Kind + 28 * v7 + *(v8 + 128) + 2) = a3 & 1;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F420(unint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Scale3)
        {
          *(&(*(v12 - 2))[v7] + *(v8 + 128)) = a3;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F4E4(unint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Position)
        {
          a3.n128_u32[3] = 1.0;
          *(&(*(v12 - 2))[v7] + *(v8 + 128)) = a3;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F5B0(unint64_t a1, uint64_t a2, simd_float4x4 *a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for InverseWorldTransform)
        {
          v14 = (&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          *v14 = __invert_f4(*a3);
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF67F6BC(unint64_t a1, uint64_t a2, simd_float4x4 a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for InverseWorldTransform)
        {
          v14 = (&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          *v14 = __invert_f4(a3);
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF67F7C0(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for TextureCPURuntime)
        {
          result = 1;
          *(&(*(v11 - 2))[4 * v6 + 1].Description + *(v7 + 128)) = 1;
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F888(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSpawnState)
        {
          *(&(*(v12 - 2))[8 * v7 + 7].Kind + *(v8 + 128)) = *a3;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF67F954(unint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v8 = a1;
    if (a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v30 = v4;
      v31 = v5;
      v9 = HIDWORD(a1);
      v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v8);
      v11 = *(v10 + 2);
      if (v9 == 0xFFFFFFFF || v10[2] == v9)
      {
        v12 = *(*(a2 + 144) + 8 * *v10 + 32);
        v13 = *(v12 + 48);
        v14 = (v13 + 32);
        v15 = *(v13 + 16) + 1;
        while (--v15)
        {
          v16 = v14 + 5;
          v17 = *v14;
          v14 += 5;
          if (v17 == &type metadata for MaterialRuntimeTable)
          {
            v18 = *(v16 - 2) + *(v12 + 128);
            v19 = *a3;
            v20 = a4[13];
            v29[12] = a4[12];
            v29[13] = v20;
            v29[14] = a4[14];
            v21 = a4[9];
            v29[8] = a4[8];
            v29[9] = v21;
            v22 = a4[11];
            v29[10] = a4[10];
            v29[11] = v22;
            v23 = a4[5];
            v29[4] = a4[4];
            v29[5] = v23;
            v24 = a4[7];
            v29[6] = a4[6];
            v29[7] = v24;
            v25 = a4[1];
            v29[0] = *a4;
            v29[1] = v25;
            v26 = a4[3];
            v29[2] = a4[2];
            v29[3] = v26;
            sub_1AF442498(v29, v28);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28[0] = *&v18[8 * v11];
            sub_1AF858C2C(v29, v19, isUniquelyReferenced_nonNull_native);
            *&v18[8 * v11] = v28[0];
            return 1;
          }
        }

        return 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AF67FADC(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = HIDWORD(a1);
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (v4 == 0xFFFFFFFF || v5[2] == v4)
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for GraphDebuggingComponent)
        {
          v13 = (&(*(v11 - 2))[v6].Kind + *(v7 + 128));

          v14 = MEMORY[0x1E69E7CC8];
          *v13 = MEMORY[0x1E69E7CC8];

          v13[1] = v14;
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF67FBFC(uint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v14 = sub_1AF6411A4(a5);
  if (a2 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v15 = 0;
  if ((a2 & 0x80000000) == 0 && a2 < *(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v17 = (*(v8 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v18 = v17[2];
    if (HIDWORD(a2) != 0xFFFFFFFF && v18 != HIDWORD(a2))
    {
LABEL_2:
      v15 = 0;
      return v15 & 1;
    }

    sub_1AF682BC8(*(*(v8 + 144) + 8 * *v17 + 32), *v17 | (*(v17 + 3) << 48) | (*(v17 + 2) << 32), v18, v14, a3, a4, v8, a2, a5, a6);
    if (!v7)
    {
      v15 = v19;
    }
  }

  return v15 & 1;
}

uint64_t sub_1AF67FD1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v5 = *(v4 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v4[2] != HIDWORD(a1))
  {
LABEL_14:
    v24 = 0;
    *&v25 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v19 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF2EA70);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_15;
  }

  v6 = *(*(a2 + 144) + 32 + 8 * *v4);
  v7 = *(v6 + 48);
  v8 = (v7 + 32);
  v9 = *(v7 + 16) + 1;
  do
  {
    if (!--v9)
    {
      goto LABEL_14;
    }

    v10 = v8 + 5;
    v11 = *v8;
    v8 += 5;
  }

  while (v11 != &type metadata for TextureLoadingOptions);
  v12 = &(*(v10 - 2))[4 * v5] + *(v6 + 128);
  v13 = *v12;
  v20 = *(v12 + 8);
  v21 = *(v12 + 24);
  v22 = *(v12 + 40);
  v23 = *(v12 + 28);
  v14 = sub_1AF65ADEC(a1);
  if ((v15 & 0x100000000) != 0)
  {
    while (1)
    {
LABEL_15:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v25 = v20;
  if ((a3 & ~v13) != 0)
  {
    v16 = a3;
  }

  else
  {
    v16 = 0;
  }

  v17 = v14 << 16 >> 48;
  v24 = v16 | v13;
  v26 = v21;
  v27 = v22;
  v28 = v23;

  sub_1AFC4556C(v17, &v24);
}

unint64_t sub_1AF67FFE4(unint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v11 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v12 = *(v11 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v11[2] == HIDWORD(result))
    {
      v13 = *(*(a2 + 144) + 8 * *v11 + 32);
      v14 = *(v13 + 48);
      v15 = (v14 + 32);
      v16 = *(v14 + 16) + 1;
      while (--v16)
      {
        v17 = v15 + 5;
        v18 = *v15;
        v15 += 5;
        if (v18 == &type metadata for WorldTransform)
        {
          v19 = *(v17 - 2);
          v20 = *(v13 + 128);
          v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, a8.f32[0]), a5, *a8.f32, 1), a6, a8, 2), a7, a8, 3);
          v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, a9.f32[0]), a5, *a9.f32, 1), a6, a9, 2), a7, a9, 3);
          v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, a10.f32[0]), a5, *a10.f32, 1), a6, a10, 2), a7, a10, 3);
          v24 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, a11.f32[0]), a5, *a11.f32, 1), a6, a11, 2), a7, a11, 3);
          *a3 = v21;
          a3[1] = v22;
          a3[2] = v23;
          a3[3] = v24;
          v25 = (v20 + v19 + (v12 << 6));
          *v25 = v21;
          v25[1] = v22;
          v25[2] = v23;
          v25[3] = v24;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v26 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v26);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x617254646C726F57, 0xEE006D726F66736ELL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF680204(unint64_t result, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v7 = *(v6 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v6[2] == HIDWORD(result))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for WorldTransform)
        {
          v14 = (&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          *v14 = a3;
          v14[1] = a4;
          v14[2] = a5;
          v14[3] = a6;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v15 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x617254646C726F57, 0xEE006D726F66736ELL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6803DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v8[2] != HIDWORD(a1))
  {
LABEL_11:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v17 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v17);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF2E9C0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_12;
  }

  v9 = *(*(*(a2 + 144) + 32 + 8 * *v8) + 48);
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      goto LABEL_11;
    }

    v12 = *v10;
    v10 += 5;
  }

  while (v12 != &type metadata for TextureRequireSizeLimit);
  v13 = sub_1AF65ADEC(a1);
  if ((v14 & 0x100000000) != 0)
  {
    while (1)
    {
LABEL_12:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v15 = v13 << 16 >> 48;

  sub_1AFC45A10(v15, a3, a4, a5 & 1);
}

uint64_t sub_1AF680648(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), HIDWORD(a1) != 0xFFFFFFFF) && v10[2] != HIDWORD(a1))
  {
LABEL_11:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v19 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF2E9E0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_12;
  }

  v11 = *(*(*(a2 + 144) + 32 + 8 * *v10) + 48);
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  do
  {
    if (!--v13)
    {
      goto LABEL_11;
    }

    v14 = *v12;
    v12 += 5;
  }

  while (v14 != &type metadata for TextureRequireAnimationRepresentation);
  v15 = sub_1AF65ADEC(a1);
  if ((v16 & 0x100000000) != 0)
  {
    while (1)
    {
LABEL_12:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v17 = v15 << 16 >> 48;

  sub_1AFC46228(v17, a3, a4, a5, a6 & 0xFF01);
}

uint64_t sub_1AF6808C4(unint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for GraphScriptingConfig)
        {
          v14 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v21 = sub_1AF42CD8C(MEMORY[0x1E69E7CC0]);
          sub_1AF681B7C(*(v14 + 8), a3, a4, &v21);
          v15 = v21;

          *(v14 + 8) = v15;
          v16 = *a4;
          v17 = *(v14 + 16);

          v18 = sub_1AF688474(v17, v16);

          *(v14 + 16) = v18;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v20 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v20);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EB40);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF680B34(unint64_t result, uint64_t a2, void *a3)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v3[2] == HIDWORD(result))
    {
      v4 = *(*(*(a2 + 144) + 8 * *v3 + 32) + 48);
      v5 = (v4 + 32);
      v6 = *(v4 + 16) + 1;
      while (--v6)
      {
        v7 = *v5;
        v5 += 5;
        if (v7 == &type metadata for GraphScriptingConfig)
        {
          ++*a3;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v8 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v8);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EB40);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF680CE8(unint64_t a1, uint64_t a2)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v2 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v3 = *(v2 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v2[2] == HIDWORD(a1))
    {
      v4 = *(*(a2 + 144) + 8 * *v2 + 32);
      v5 = *(v4 + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = v6 + 5;
        v9 = *v6;
        v6 += 5;
        if (v9 == &type metadata for EmitterRuntime)
        {
          sub_1AFB8A650(&(*(v8 - 2))[53 * v3] + *(v4 + 128));
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v10 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v10);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AFDFE518();
  __break(1u);
}

unint64_t sub_1AF680EC0(unint64_t result, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v5 = *(v4 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v4[2] == HIDWORD(result))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for EmitterRuntime)
        {
          v12 = &(*(v10 - 2))[53 * v5] + *(v6 + 128);
          v13 = *a4;
          *(v12 + 208) = *a3;
          *(v12 + 216) = v13;
          *(v12 + 232) = 0;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v14 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF6810A8(unint64_t result, uint64_t a2, __n128 a3, __n128 a4)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    v5 = *(v4 + 2);
    if (HIDWORD(result) == 0xFFFFFFFF || v4[2] == HIDWORD(result))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for EmitterRuntime)
        {
          v12 = (&(*(v10 - 2))[53 * v5] + *(v6 + 128));
          v12[11] = a3;
          v12[12] = a4;
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF681280(unint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_1AF67F888(a1, a2, a3);
  if (!v3 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v5 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v5);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF6813A4(unint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4)
{
  result = sub_1AF67F954(a1, a2, a3, a4);
  if (!v4 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v6 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v6);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF2EA50);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF6814C8(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v4 = *(v3 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v3[2] != HIDWORD(a1))
  {
LABEL_11:
    v31 = 0;
    *&v32 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v19 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v19);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF2EAE0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    goto LABEL_12;
  }

  v5 = *(*(a2 + 144) + 8 * *v3 + 32);
  v6 = *(v5 + 48);
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  do
  {
    if (!--v8)
    {
      goto LABEL_11;
    }

    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
  }

  while (v10 != &type metadata for ParticleFlockingSolver);
  v11 = &(*(v9 - 2))[7 * v4] + *(v5 + 128);
  v12 = *(v11 + 56);
  v28 = *(v11 + 40);
  v29 = v12;
  v30[0] = *(v11 + 72);
  *(v30 + 11) = *(v11 + 83);
  v13 = *(v11 + 24);
  v26 = *(v11 + 8);
  v27 = v13;
  type metadata accessor for ParticleFlockingSolverData();
  swift_allocObject();
  v14 = sub_1AFB9C8C4();
  v15 = sub_1AF65ADEC(a1);
  if ((v16 & 0x100000000) != 0)
  {
    while (1)
    {
LABEL_12:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v34 = v28;
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 11) = *(v30 + 11);
  v32 = v26;
  v17 = v15 << 16 >> 48;
  v31 = v14;
  v33 = v27;

  sub_1AFC49B9C(v17, &v31);

  v20 = v14;
  v23 = v28;
  v24 = v29;
  v25[0] = v30[0];
  *(v25 + 11) = *(v30 + 11);
  v21 = v26;
  v22 = v27;
  return sub_1AF597500(&v20);
}

uint64_t sub_1AF6817D4(unint64_t a1, uint64_t a2)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v2 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v2[2] == HIDWORD(a1))
    {
      v3 = *(*(*(a2 + 144) + 8 * *v2 + 32) + 48);
      v4 = (v3 + 32);
      v5 = *(v3 + 16) + 1;
      while (--v5)
      {
        v6 = *v4;
        v4 += 5;
        if (v6 == &type metadata for ParticleFluidSolver2DSolver)
        {
          type metadata accessor for ParticleFluidSolver2DSolverData();
          swift_allocObject();
          sub_1AFBADB20();
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v7 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v7);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2EB00);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF681A48(uint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1AF67FBFC(a1, a2, a3, a4, a5, a6);
  if (!v6 && (result & 1) == 0)
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v8 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v8);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    v9 = sub_1AFDFF4B8();
    MEMORY[0x1B2718AE0](v9);

    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF681B7C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v44 = v8;
  while (v7)
  {
LABEL_10:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(a1 + 48) + v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a1 + 56) + v13;
    v47 = *v17;
    v48 = *(v17 + 4);
    v18 = *(v17 + 8);
    sub_1AF68B0F8();

    v45 = sub_1AFDFDF98();
    v46 = v19;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *a3;
    *a3 = 0x8000000000000000;
    v22 = sub_1AF419914(v15, v16);
    v23 = v21;
    v24 = v53[2] + ((v21 & 1) == 0);
    if (v53[3] >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v27 = v53;
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_1AF849704();
        v27 = v53;
        if (v23)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1AF8357A0(v24, isUniquelyReferenced_nonNull_native);
      v25 = sub_1AF419914(v15, v16);
      if ((v23 & 1) != (v26 & 1))
      {
        goto LABEL_28;
      }

      v22 = v25;
      v27 = v53;
      if (v23)
      {
LABEL_16:
        v28 = (v27[7] + 16 * v22);
        *v28 = v45;
        v28[1] = v46;

        goto LABEL_19;
      }
    }

    v27[(v22 >> 6) + 8] |= 1 << v22;
    v29 = (v27[6] + 16 * v22);
    *v29 = v15;
    v29[1] = v16;
    v30 = (v27[7] + 16 * v22);
    *v30 = v45;
    v30[1] = v46;
    ++v27[2];
LABEL_19:
    *a3 = v27;
    v31 = sub_1AFDFDF98();
    v33 = v32;

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a4;
    *a4 = 0x8000000000000000;
    v35 = sub_1AF419914(v31, v33);
    v37 = v36;
    v38 = v52[2] + ((v36 & 1) == 0);
    if (v52[3] < v38)
    {
      sub_1AF83603C(v38, v34);
      v35 = sub_1AF419914(v31, v33);
      if ((v37 & 1) != (v39 & 1))
      {
LABEL_28:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

LABEL_23:
      v40 = v52;
      if ((v37 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }

    if (v34)
    {
      goto LABEL_23;
    }

    v42 = v35;
    sub_1AF84A37C();
    v35 = v42;
    v40 = v52;
    if ((v37 & 1) == 0)
    {
LABEL_4:
      v40[(v35 >> 6) + 8] |= 1 << v35;
      v10 = (v40[6] + 16 * v35);
      *v10 = v31;
      v10[1] = v33;
      v11 = v40[7] + 16 * v35;
      *v11 = v47;
      *(v11 + 4) = v48;
      *(v11 + 8) = v18;
      ++v40[2];
      goto LABEL_5;
    }

LABEL_24:
    v41 = v40[7] + 16 * v35;
    *v41 = v47;
    *(v41 + 4) = v48;
    *(v41 + 8) = v18;

LABEL_5:
    v8 = v44;
    v7 &= v7 - 1;
    *a4 = v40;
    ++*a2;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (v9 + 1 >= v8)
    {
    }

    v7 = *(a1 + 8 * v9++ + 72);
    if (v7)
    {
      v9 = v12;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF681F68(uint64_t a1, char **a2)
{
  v51 = a2;
  sub_1AF68B14C(0, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v40 - v8;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v42 = a1;
  v43 = v13;
  v41 = v9;
  while (v12)
  {
LABEL_10:
    v47 = v14;
    v48 = v12;
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = *(a1 + 56);
    v18 = *(a1 + 48) + 8 * v16;
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = v17 + *(*(type metadata accessor for GraphScriptingConfig.ScriptInfo() - 8) + 72) * v16;
    v22 = v45;
    sub_1AF687EA0(v21, &v9[*(v45 + 48)], type metadata accessor for GraphScriptingConfig.ScriptInfo);
    *v9 = v19;
    v9[4] = v20;
    v23 = v44;
    sub_1AF68B1BC(v9, v44, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v24 = v23 + *(v22 + 48);
    v25 = *(v24 + 24);

    sub_1AF6880A8(v24, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    if (v25)
    {
      v46 = v25;
      v50 = *(v25 + 16);
      if (v50)
      {
        v26 = 0;
        v49 = v46 + 32;
        do
        {
          v28 = (v49 + 56 * v26);
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[3];
          v54 = v28[2];
          v52 = v28[4];
          v53 = v31;
          v32 = *v51;
          v33 = *(*v51 + 2);
          if (v33)
          {
            v34 = v32 + 40;
            v35 = *(*v51 + 2);
            while (1)
            {
              v36 = *(v34 - 1) == v29 && *v34 == v30;
              if (v36 || (sub_1AFDFEE28() & 1) != 0)
              {
                break;
              }

              v34 += 2;
              if (!--v35)
              {
                goto LABEL_23;
              }
            }
          }

          else
          {
LABEL_23:

            sub_1AF687F90(v54, v53);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1AF420554(0, v33 + 1, 1, v32);
            }

            v38 = *(v32 + 2);
            v37 = *(v32 + 3);
            if (v38 >= v37 >> 1)
            {
              v32 = sub_1AF420554(v37 > 1, v38 + 1, 1, v32);
            }

            *(v32 + 2) = v38 + 1;
            v27 = &v32[16 * v38];
            *(v27 + 4) = v29;
            *(v27 + 5) = v30;
            *v51 = v32;

            sub_1AF687FE4(v54, v53);
          }

          ++v26;
        }

        while (v26 != v50);
      }

      v9 = v41;
      a1 = v42;
    }

    v12 = (v48 - 1) & v48;
    sub_1AF68B230(v9, &qword_1EB63D268, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v13 = v43;
    v14 = v47;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (v14 + 1 >= v13)
    {
    }

    v12 = *(a1 + 8 * v14++ + 72);
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1AF682350(unint64_t a1)
{
  if (a1 == 0xFFFFFFFF)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = MEMORY[0x1E69E7CC0];
  if ((a1 & 0x80000000) == 0)
  {
    v4 = a1;
    if (a1 < *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v5 = HIDWORD(a1);
      v6 = *(v1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4;
      if (v5 == 0xFFFFFFFF || *(v6 + 8) == v5)
      {
      }
    }
  }

  return result;
}

void sub_1AF6823F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2);
    v7 = v6[2];
    if (HIDWORD(a2) == 0xFFFFFFFF || v7 == HIDWORD(a2))
    {
      sub_1AF682B20(*(*(v4 + 144) + 8 * *v6 + 32), *v6 | (*(v6 + 3) << 48) | (*(v6 + 2) << 32), v7, a1, v4, a2, a3, a4);
    }
  }
}

uint64_t sub_1AF6824B0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 == 0xFFFFFFFF)
  {
    return 0;
  }

  v4 = 0;
  if ((a3 & 0x80000000) == 0 && a3 < *(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
    v7 = *(v6 + 2);
    if (HIDWORD(a3) == 0xFFFFFFFF || v6[2] == HIDWORD(a3))
    {
      v8 = *v6;
      v9 = v3;
      v10 = *(*(v3 + 144) + 8 * v8 + 32);
      v11 = *(v10 + 64);
      v12 = *(v10 + 80);
      v29 = *(v10 + 112);
      v14 = *(v10 + 80);
      v13 = *(v10 + 96);
      v28[2] = v12;
      v28[3] = v13;
      v28[0] = *(v10 + 48);
      v28[1] = v11;
      v15 = *(v10 + 96);
      v25 = v14;
      v26 = v15;
      v27 = *(v10 + 112);
      v16 = *(v10 + 64);
      v23 = *(v10 + 48);
      v24 = v16;
      v17 = sub_1AF64FB24(a1);
      v19 = v18;
      v21 = v20;
      v30[2] = v25;
      v30[3] = v26;
      v31 = v27;
      v30[0] = v23;
      v30[1] = v24;
      sub_1AF5DD36C(v28, v22);
      sub_1AF5DD3C8(v30);
      if ((v21 & 1) == 0)
      {
        return *(*(*(v9 + 144) + 8 * v8 + 32) + 128) + v17 + v19 * v7;
      }
    }

    return 0;
  }

  return v4;
}

uint64_t sub_1AF682600(uint64_t result, uint64_t a2, unint64_t a3, void (*a4)(uint64_t))
{
  if (a3 != 0xFFFFFFFF && (a3 & 0x80000000) == 0 && a3 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = result;
    v6 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a3);
    if (HIDWORD(a3) == 0xFFFFFFFF || v6[2] == HIDWORD(a3))
    {
      v8 = *(v6 + 2);
      v9 = *(*(v4 + 144) + 8 * *v6 + 32);
      v10 = *(a2 + 8);

      v11 = sub_1AF64B03C(v5);
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11 + sub_1AF6411A4(v5) * v8;
      }

      if ((*(v10 + 48))(v5, v10))
      {
        v21 = v8;
        v14 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        ecs_stack_allocator_push_snapshot(*(*v14 + 32));
        v15 = *(*v14 + 32);
        v16 = sub_1AF640D40(v5);
        v17 = sub_1AF6411A8(v5);
        v18 = ecs_stack_allocator_allocate(v15, v16, v17);
        sub_1AF641760();
        a4(v13);
        if ((*(v10 + 88))(v18, v13, v5, v10))
        {
          v19 = *(v9 + 192);
          if (v19)
          {
            v20 = *(v9 + 208);
            *(v19 + 8 * (v21 >> 6)) |= 1 << v21;
            *(v20 + 8 * (v21 >> 6)) &= ~(1 << v21);
          }

          sub_1AF705804(v21);
        }

        sub_1AF640BC8();
        ecs_stack_allocator_pop_snapshot(*(*v14 + 32));
      }

      else
      {
        a4(v13);
      }
    }
  }

  return result;
}

uint64_t sub_1AF682880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(*(a2 + 40) + 16);
  v12 = *(v11 + 128);
  if (!*(v12 + 16) || (result = sub_1AF449CB8(a4), (v14 & 1) == 0) || *(*(v11 + 24) + 16 * *(*(v12 + 56) + 8 * result) + 32) != a4)
  {
    v15 = ecs_stack_allocator_allocate(*(a1 + 32), 8, 8);
    *v15 = a3;
    return sub_1AF648EC4(a4, a5, v15, 1, 1, **(a6 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues));
  }

  return result;
}

char *sub_1AF68295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_1AF649C6C(*(a2 + 40), a4, v13);
  if (LOBYTE(v13[0]) == 1)
  {
    v13[0] = a4;
    v13[1] = a5;
    v14 = 1;
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1AF63023C(a6 & 1, a2, sub_1AF6897B4);
    sub_1AF635250(v13);
  }

  return sub_1AF62D29C(a2);
}

uint64_t sub_1AF682A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 += 5;
    if (v8 == a2)
    {
      sub_1AFDFDE68();
      v9 = 0;
      return (*(*(a2 - 8) + 56))(a3, v9, 1, a2);
    }
  }

  v9 = 1;
  return (*(*(a2 - 8) + 56))(a3, v9, 1, a2);
}

void sub_1AF682B20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = HIDWORD(a2);
  os_unfair_lock_lock(*(a1 + 344));
  sub_1AF6847B8(a1, v15, a4, a5, a6, a7, a8);
  if (v8)
  {

    os_unfair_lock_unlock(*(a1 + 344));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(*(a1 + 344));
  }
}

uint64_t sub_1AF682BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(result + 48);
  v23 = *(a10 + 8);
  v24 = (v22 + 32);
  v25 = *(v22 + 16) + 1;
  do
  {
    if (!--v25)
    {
      *v18 = 0;
      return result;
    }

    v26 = v24 + 5;
    v27 = *v24;
    v24 += 5;
  }

  while (v27 != a9);
  v36 = v19;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v28 = *(v26 - 2) + (v14 << 16 >> 48) * v15;
  if ((*(v23 + 48))(a9, v23))
  {
    sub_1AFDFDE68();
    a5(v21);
    if (v10)
    {
      return (*(v36 + 8))(v21, a9);
    }

    v29 = v33;
    v30 = sub_1AF65C98C(v34) << 16 >> 48;
    v31 = **(v29 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

    sub_1AF64AE60(v30, v21, v31, a9, a10);

    result = (*(v36 + 8))(v21, a9);
  }

  else
  {
    result = (a5)(*(a1 + 128) + v28);
    if (v10)
    {
      return result;
    }
  }

  *v35 = 1;
  return result;
}

uint64_t sub_1AF682E04(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) != 0xFFFFFFFF && v6[2] != HIDWORD(a1))
    {
LABEL_2:
      v4 = 0;
      return v4 & 1;
    }

    v8 = *(*(a2 + 144) + 8 * *v6 + 32);
    v9 = *(v8 + 48);
    v10 = (v9 + 32);
    v11 = *(v9 + 16) + 1;
    do
    {
      if (!--v11)
      {
        v4 = 0;
        return v4 & 1;
      }

      v12 = v10 + 5;
      v13 = *v10;
      v10 += 5;
    }

    while (v13 != &type metadata for TextureFileAsset);
    v15 = &(*(v12 - 2))[3 * v7] + *(v8 + 128);
    v16 = *(v15 + 8);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    *&v23 = *v15;
    *(&v23 + 1) = v16;
    *&v24 = v17;
    *(&v24 + 1) = v18;
    v25 = *(v15 + 32);
    v20 = v25;

    v21 = sub_1AFADF438(&v23, a3);
    if (v3)
    {
    }

    else if (v21)
    {
      v22 = sub_1AF65C98C(a1) << 16 >> 48;
      v26[0] = v23;
      v26[1] = v24;
      v28 = v24;
      v29 = v23;
      v26[2] = v25;
      v27 = v25;

      sub_1AFC43204(v22, v26);

      sub_1AF585778(&v29);
      sub_1AF585778(&v28);
      sub_1AF689824(&v27, &qword_1EB632E50, &qword_1EB632E60);
      v4 = 1;
    }

    else
    {

      v4 = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_1AF68305C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = *(a2 + 8);
  result = sub_1AF640D40(a1);
  if (result)
  {
    v53 = a3;
    v51 = a1;
    v52 = a2;
    v14 = sub_1AF585714(v50);
    sub_1AF641154(a4, a1, v14);
    if ((*(v12 + 48))(a1, v12))
    {
      v46 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      ecs_stack_allocator_push_snapshot(*(*v46 + 32));
      v15 = *(*v46 + 32);
      v16 = sub_1AF640D40(a1);
      v17 = sub_1AF6411A8(a1);
      ecs_stack_allocator_allocate(v15, v16, v17);
      sub_1AF641760();
      v18 = a6[3];
      v19 = sub_1AF441150(a6, v18);
      v48 = v18;
      v20 = sub_1AF585714(v47);
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      v21 = v51;
      v22 = v52;
      sub_1AF448018(v50, v51);
      (*(*(v22 + 8) + 104))(v47, v21);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
      v23 = v53;
      v24 = sub_1AF6824B0(a1, a2, v53);
      v25 = v51;
      v26 = v52;
      v27 = sub_1AF441150(v50, v51);
      v48 = v25;
      v49 = *(v26 + 8);
      v28 = sub_1AF585714(v47);
      (*(*(v25 - 8) + 16))(v28, v27, v25);
      sub_1AF6411D8(v47, v24, a1);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
      v29 = sub_1AF65C98C(v23);
      v30 = *(*(a5 + 144) + 8 * v29 + 32);
      v53 = *v46;
      v31 = *(v12 + 88);

      if (v31())
      {
        v32 = *(v30 + 192);
        if (v32)
        {
          v33 = *(v30 + 208);
          v34 = v29 << 16 >> 54;
          v35 = 1 << ((v29 << 16) >> 48);
          *(v32 + 8 * v34) |= v35;
          *(v33 + 8 * v34) &= ~v35;
        }

        sub_1AF705804(v29 << 16 >> 48);
      }

      sub_1AF640BC8();
      ecs_stack_allocator_pop_snapshot(*(*v46 + 32));
    }

    else
    {
      v36 = a6[3];
      v37 = sub_1AF441150(a6, v36);
      v48 = v36;
      v38 = sub_1AF585714(v47);
      (*(*(v36 - 8) + 16))(v38, v37, v36);
      v39 = v51;
      v40 = v52;
      sub_1AF448018(v50, v51);
      (*(*(v40 + 8) + 104))(v47, v39);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
      v41 = sub_1AF6824B0(a1, a2, v53);
      v42 = v51;
      v43 = v52;
      v44 = sub_1AF441150(v50, v51);
      v48 = v42;
      v49 = *(v43 + 8);
      v45 = sub_1AF585714(v47);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      sub_1AF6411D8(v47, v41, a1);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v47);
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);
  }

  return result;
}

uint64_t sub_1AF6834B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 8);
  result = sub_1AF640D40(a1);
  if (result)
  {
    v42 = a1;
    v43 = a2;
    v12 = sub_1AF585714(v41);
    sub_1AF641154(a4, a1, v12);
    if ((*(v10 + 48))(a1, v10))
    {
      v13 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      v44 = v13;
      ecs_stack_allocator_push_snapshot(*(*v13 + 32));
      v14 = *(*v13 + 32);
      v15 = sub_1AF640D40(a1);
      v16 = sub_1AF6411A8(a1);
      ecs_stack_allocator_allocate(v14, v15, v16);
      sub_1AF641760();
      v17 = v42;
      v18 = v43;
      sub_1AF448018(v41, v42);
      (*(*(v18 + 8) + 120))(v17);
      v19 = sub_1AF6824B0(a1, a2, a3);
      v20 = v42;
      v21 = v43;
      v22 = sub_1AF441150(v41, v42);
      v39 = v20;
      v40 = *(v21 + 8);
      v23 = sub_1AF585714(v38);
      (*(*(v20 - 8) + 16))(v23, v22, v20);
      sub_1AF6411D8(v38, v19, a1);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
      v24 = sub_1AF65C98C(a3);
      v25 = *(*(a5 + 144) + 8 * v24 + 32);
      v26 = *(v10 + 88);

      if (v26())
      {
        v27 = *(v25 + 192);
        if (v27)
        {
          v28 = *(v25 + 208);
          v29 = v24 << 16 >> 54;
          v30 = 1 << ((v24 << 16) >> 48);
          *(v27 + 8 * v29) |= v30;
          *(v28 + 8 * v29) &= ~v30;
        }

        sub_1AF705804(v24 << 16 >> 48);
      }

      sub_1AF640BC8();
      ecs_stack_allocator_pop_snapshot(*(*v44 + 32));
    }

    else
    {
      v31 = v42;
      v32 = v43;
      sub_1AF448018(v41, v42);
      (*(*(v32 + 8) + 120))(v31);
      v33 = sub_1AF6824B0(a1, a2, a3);
      v34 = v42;
      v35 = v43;
      v36 = sub_1AF441150(v41, v42);
      v39 = v34;
      v40 = *(v35 + 8);
      v37 = sub_1AF585714(v38);
      (*(*(v34 - 8) + 16))(v37, v36, v34);
      sub_1AF6411D8(v38, v33, a1);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v41);
  }

  return result;
}

uint64_t sub_1AF683850(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void (*a5)(uint64_t *))
{
  v7 = v5;
  v52 = a5;
  v12 = *(a2 + 8);
  result = sub_1AF640D40(a1);
  if (result)
  {
    v50 = a1;
    v51 = a2;
    v14 = sub_1AF585714(v49);
    sub_1AF641154(a4, a1, v14);
    if ((*(v12 + 48))(a1, v12))
    {
      v44 = a3;
      v15 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
      ecs_stack_allocator_push_snapshot(*(*v15 + 32));
      v45 = v15;
      v16 = a4;
      v17 = *(*v15 + 32);
      v43 = v7;
      v18 = sub_1AF640D40(a1);
      v19 = sub_1AF6411A8(a1);
      v20 = v17;
      v21 = v16;
      v22 = ecs_stack_allocator_allocate(v20, v18, v19);
      sub_1AF641760();
      v52(v49);
      if (v6)
      {
        sub_1AF640BC8();
        v23 = *v15;
      }

      else
      {
        v52 = 0;
        v29 = v22;
        v30 = sub_1AF6824B0(a1, a2, v44);
        v31 = v50;
        v32 = v51;
        v42 = v21;
        v33 = sub_1AF441150(v49, v50);
        v47 = v31;
        v48 = *(v32 + 8);
        v34 = sub_1AF585714(v46);
        (*(*(v31 - 8) + 16))(v34, v33, v31);
        sub_1AF6411D8(v46, v30, a1);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
        v35 = sub_1AF65C98C(v44);
        v36 = *(*(v43 + 144) + 8 * v35 + 32);
        v37 = *(v12 + 88);

        if (v37(v29, v42, a1, v12))
        {
          v38 = *(v36 + 192);
          if (v38)
          {
            v39 = *(v36 + 208);
            v40 = v35 << 16 >> 54;
            v41 = 1 << ((v35 << 16) >> 48);
            *(v38 + 8 * v40) |= v41;
            *(v39 + 8 * v40) &= ~v41;
          }

          sub_1AF705804(v35 << 16 >> 48);
        }

        sub_1AF640BC8();
        v23 = *v45;
      }

      ecs_stack_allocator_pop_snapshot(*(v23 + 32));
    }

    else
    {
      v52(v49);
      if (!v6)
      {
        v24 = sub_1AF6824B0(a1, a2, a3);
        v25 = v50;
        v26 = v51;
        v27 = sub_1AF441150(v49, v50);
        v47 = v25;
        v48 = *(v26 + 8);
        v28 = sub_1AF585714(v46);
        (*(*(v25 - 8) + 16))(v28, v27, v25);
        sub_1AF6411D8(v46, v24, a1);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v46);
      }
    }

    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v49);
  }

  return result;
}

uint64_t sub_1AF683C1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1AF6824B0(a1, a2, a3);
  if (v10)
  {
    return sub_1AF68305C(a1, a2, a3, v10, a4, a5);
  }

  sub_1AFDFE218();

  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA10);
  v13 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v13);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF683D58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1AF6824B0(a1, a2, a3);
  if (v8)
  {
    return sub_1AF6834B8(a1, a2, a3, v8, a4);
  }

  sub_1AFDFE218();

  v10 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v10);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA10);
  v11 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v11);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF683E8C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *))
{
  v8 = sub_1AF6824B0(a1, a2, a3);
  if (v8)
  {
    return sub_1AF683850(a1, a2, a3, v8, a4);
  }

  sub_1AFDFE218();

  v10 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v10);

  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EA10);
  v11 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v11);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF683FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *), uint64_t a6)
{
  v29 = a6;
  result = *(*(a2 + 88) + 8 * (SHIDWORD(a3) >> 16) + 32);
  v8 = *(*(result + 16) + 32);
  if (*(v8 + 16))
  {
    v9 = a3 << 16 >> 48;

    v10 = 0;
LABEL_5:
    v11 = *(v8 + 32 + 16 * v10++);
    v12 = *(a1 + 48);
    v14 = *(v12 + 16);
    v13 = v12 + 16;
    v15 = v11;
    v16 = v14 + 1;
    while (--v16)
    {
      v17 = (v13 + 40);
      v18 = *(v13 + 16);
      v13 += 40;
      if (v18 == v11)
      {
        v19 = *(v17 - 1);
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = *(a1 + 128) + *v17 + v19 * v9;
        v28 = v11;
        v21 = sub_1AF585714(v27);
        sub_1AF641154(v20, v15, v21);
        sub_1AF441194(v27, v25);
        sub_1AF4498F4(0, &qword_1ED72FFF0);
        sub_1AF4498F4(0, &qword_1ED724130);
        if (swift_dynamicCast())
        {
          sub_1AF0FBA54(v23, v26);
          a5(v26);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
        }

        else
        {
          v24 = 0;
          memset(v23, 0, sizeof(v23));
          sub_1AF689824(v23, &unk_1ED724120, &qword_1ED724130);
        }

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v27);
        if (v10 == *(v8 + 16))
        {
        }

        goto LABEL_5;
      }
    }

    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF684210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v27 = a7;
  v9 = *(*(*(*(a2 + 88) + 8 * (SHIDWORD(a3) >> 16) + 32) + 16) + 32);
  if (!*(v9 + 16))
  {
  }

  v11 = a3 << 16 >> 48;

  v12 = 0;
LABEL_3:
  v13 = *(v9 + 32 + 16 * v12++);
  v14 = *(a1 + 48);
  v16 = *(v14 + 16);
  v15 = v14 + 16;
  v17 = v13;
  v18 = v16 + 1;
  while (--v18)
  {
    v19 = (v15 + 40);
    v20 = *(v15 + 16);
    v15 += 40;
    if (v20 == v13)
    {
      v21 = *(v19 - 1);
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v22 = *(a1 + 128) + *v19 + v21 * v11;
      v26 = v13;
      v23 = sub_1AF585714(v25);
      sub_1AF641154(v22, v17, v23);
      sub_1AFB91BE8(v25, a5, a6, v27);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v25);
      if (v12 == *(v9 + 16))
      {
      }

      goto LABEL_3;
    }
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6843C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float a6)
{
  v7 = v6;
  v9 = *(a2 + 104);
  v64[0] = *(a2 + 88);
  v64[1] = v9;
  v65 = *(a2 + 120);

  sub_1AF6B06C0(v10, v64, 0x200000000, &v51);

  v46 = v51;
  if (v51)
  {
    v45 = v54;
    v12 = v57;
    v59 = v52;
    v60 = v53;
    if (v58 >= 1 && v55)
    {
      v13 = 0;
      v14 = *(v56 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v68 = *(v57 + 32);
      v41 = vdupq_lane_s32(*&a5, 0);
      v44 = v55;
      v43 = v14;
      do
      {
        v50 = v7;
        v15 = (v45 + 48 * v13);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v15 + 2);
        v19 = *(v15 + 3);
        v20 = *(v15 + 4);
        v21 = *(v15 + 5);
        if (v14)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v68);
        v23 = *(v12 + 64);
        v66[0] = *(v12 + 48);
        v66[1] = v23;
        v67 = *(v12 + 80);
        v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
        *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v24, 8);
        *(v12 + 56) = v24;
        *(v12 + 72) = 0;
        *(v12 + 80) = 0;
        *(v12 + 64) = 0;
        v25 = sub_1AF64B110(a3, a4, v18, v19, v20, v12);
        if (v25)
        {
          if (*&a5 != a6)
          {
            v14 = v43;
            if (v17 != v16)
            {
              v28 = a1[3];
              v29 = a1[4];
              v30 = v16 - v17;
              v31 = (v25 + 4 * v17);
              v32 = a1[1];
              v33 = a1[2];
              do
              {
                v34 = 9 * ((((5 * v33) >> 32) >> 25) | (640 * v33));
                v35 = v32 ^ v28;
                v36 = v33 ^ v29;
                v28 ^= v32 ^ (v33 << 17);
                v33 ^= v35;
                v29 = __ROR8__(v36, 19);
                v32 ^= v36;
                *v31++ = ((a6 - *&a5) * vcvts_n_f32_u64(*&v34 & 0xFFFFFFLL, 0x18uLL)) + *&a5;
                --v30;
              }

              while (v30);
              a1[1] = v32;
              a1[2] = v33;
              a1[3] = v28;
              a1[4] = v29;
            }

            goto LABEL_26;
          }

          v14 = v43;
          if (v17 != v16)
          {
            v26 = v16 - v17;
            if ((v16 - v17) <= 7)
            {
              v27 = v17;
LABEL_24:
              v39 = v16 - v27;
              v40 = (v25 + 4 * v27);
              do
              {
                *v40++ = LODWORD(a5);
                --v39;
              }

              while (v39);
              goto LABEL_26;
            }

            v27 = (v26 & 0xFFFFFFFFFFFFFFF8) + v17;
            v37 = (v25 + 4 * v17 + 16);
            v38 = v26 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v37[-1] = v41;
              *v37 = v41;
              v37 += 2;
              v38 -= 8;
            }

            while (v38);
            if (v26 != (v26 & 0xFFFFFFFFFFFFFFF8))
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v14 = v43;
          if (*&a5 != a6 && v17 != v16)
          {
            result = sub_1AF6C0D50();
            __break(1u);
            return result;
          }
        }

LABEL_26:
        v61 = v46;
        v62 = v59;
        v63 = v60;
        sub_1AF630994(v12, &v61, v66);
        v7 = v50;
        sub_1AF62D29C(v21);
        ecs_stack_allocator_pop_snapshot(v68);
        if (v14)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        ++v13;
      }

      while (v13 != v44);
    }

    return sub_1AF688038(&v51, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  return result;
}

uint64_t sub_1AF684734(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for TextureFileAsset)
    {
      v8 = *(&(*(v6 - 2))->Kind + *(a1 + 128) + a2 * a3);

      return v8;
    }
  }

  return 0;
}

uint64_t sub_1AF6847B8(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  v74 = *MEMORY[0x1E69E9840];
  sub_1AF649C6C(*(a1 + 40), a6, v67);
  if (LOBYTE(v67[0]) == 1)
  {
    return sub_1AF64AE60(a2, a3, **(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues), v9, a7);
  }

  v57 = a5;
  v16 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  ecs_stack_allocator_push_snapshot(*(*v16 + 32));
  v59 = v16;
  v60 = a1;
  v17 = *v16;
  sub_1AF649C6C(*(a1 + 40), v9, v67);
  v58 = v7;
  if (v67[0])
  {
    goto LABEL_40;
  }

  v53 = a3;
  v54 = a4;
  v55 = v9;
  v56 = a7;
  v72[0] = v9;
  v72[1] = a7;
  v73 = 0;
  v18 = *(v17 + 104);
  v51 = a2;
  v52 = (v17 + 104);
  v19 = *(v18 + 16);
  if (!v19)
  {
LABEL_34:
    v35 = v17;
    v36 = *(v60 + 30) - *(v60 + 29);
    v37 = ecs_stack_allocator_allocate(*(v35 + 32), 8 * v36, 8);
    *v37 = v51;
    sub_1AF63515C(v72, v67);
    v69[0] = v37;
    v69[1] = v36;
    v69[2] = 1;
    v38 = *(v35 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + 104) = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      a7 = v56;
      v40 = v52;
    }

    else
    {
      v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
      v40 = v52;
      *v52 = v38;
      a7 = v56;
    }

    v42 = v38[2];
    v41 = v38[3];
    if (v42 >= v41 >> 1)
    {
      v38 = sub_1AF420EA0(v41 > 1, v42 + 1, 1, v38);
    }

    v9 = v55;
    a3 = v53;
    v38[2] = v42 + 1;
    v43 = &v38[9 * v42];
    *(v43 + 2) = v67[0];
    v44 = v67[1];
    v45 = v68;
    v46 = *v69;
    v43[12] = v69[2];
    *(v43 + 4) = v45;
    *(v43 + 5) = v46;
    *(v43 + 3) = v44;
    *v40 = v38;
    goto LABEL_39;
  }

  v20 = 0;
  v21 = v18 + 32;
  v61 = v17;
  while (1)
  {
    sub_1AF68B1BC(v21, v71, qword_1ED729A30, sub_1AF43A570);
    sub_1AF63515C(v71, v67);
    sub_1AF63515C(v72, v69);
    if (BYTE8(v68) > 2u)
    {
      break;
    }

    if (!BYTE8(v68))
    {
      sub_1AF63515C(v67, v66);
      if (v70)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }

    if (BYTE8(v68) == 1)
    {
      sub_1AF63515C(v67, v66);
      if (v70 != 1)
      {
        goto LABEL_7;
      }

LABEL_19:
      v25 = *&v66[0];
      v26 = v69[0];
      sub_1AF635250(v67);
      sub_1AF68B230(v71, qword_1ED729A30, sub_1AF43A570);
      v24 = v25 == v26;
LABEL_20:
      v17 = v61;
      if (v24)
      {
        goto LABEL_31;
      }

      goto LABEL_8;
    }

    sub_1AF63515C(v67, v66);
    if (v70 != 2)
    {
LABEL_6:
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v66);
LABEL_7:
      sub_1AF6880A8(v67, sub_1AF635194);
      sub_1AF68B230(v71, qword_1ED729A30, sub_1AF43A570);
      goto LABEL_8;
    }

LABEL_26:
    sub_1AF0FBA54(v66, v63);
    sub_1AF0FBA54(v69, v62);
    v27 = v64;
    v28 = v65;
    sub_1AF441150(v63, v64);
    v29 = v28;
    v17 = v61;
    LOBYTE(v27) = sub_1AF640C98(v62, v27, v29);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v63);
    sub_1AF635250(v67);
    sub_1AF68B230(v71, qword_1ED729A30, sub_1AF43A570);
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_8:
    ++v20;
    v21 += 72;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

  if (BYTE8(v68) == 3)
  {
    sub_1AF63515C(v67, v66);
    if (v70 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  if (BYTE8(v68) == 4)
  {
    sub_1AF63515C(v67, v66);
    if (v70 != 4)
    {
      goto LABEL_7;
    }

    v22 = LOBYTE(v66[0]);
    v23 = LOBYTE(v69[0]);
    sub_1AF635250(v67);
    sub_1AF68B230(v71, qword_1ED729A30, sub_1AF43A570);
    v24 = v22 == v23;
    goto LABEL_20;
  }

  if (v70 != 5)
  {
    goto LABEL_7;
  }

  v30 = vorrq_s8(*&v69[1], *&v69[3]);
  if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v69[0])
  {
    goto LABEL_7;
  }

  sub_1AF635250(v67);
  sub_1AF68B230(v71, qword_1ED729A30, sub_1AF43A570);
LABEL_31:
  v32 = sub_1AFBFCA08(v67);
  v33 = *(v31 + 48);
  if (v33)
  {
    v34 = *(v31 + 64);
    *(v33 + 8 * v34) = v51;
    *(v31 + 64) = v34 + 1;
  }

  (v32)(v67, 0);
  v9 = v55;
  a7 = v56;
  a3 = v53;
LABEL_39:
  sub_1AF635250(v72);
LABEL_40:
  v47 = v59;
  sub_1AF62D29C(v60);
  v48 = sub_1AF6411A4(v9);
  if (v48 >= 1)
  {
    MEMORY[0x1EEE9AC00](v48, v49);
    v50[2] = v9;
    v50[3] = a7;
    v50[4] = a3;
    sub_1AF681A48(v9, v57, sub_1AF684E0C, v50, v9, a7);
  }

  return ecs_stack_allocator_pop_snapshot(*(*v47 + 32));
}

uint64_t sub_1AF684E0C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v3 - 8);
  (*(v5 + 8))(a1, v3);
  return (*(v5 + 16))(a1, v4, v3);
}

uint64_t sub_1AF684EC0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for TextureGPURuntime)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

uint64_t sub_1AF684F3C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for TextureGPURuntime)
    {
      return swift_unknownObjectRetain();
    }
  }

  return 0;
}

void sub_1AF684FAC(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      v15 = 1;
      v11 = 0uLL;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_9;
    }

    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
  }

  while (v8 != &type metadata for EmitterDescription);
  v9 = *(&(*(v7 - 2))[3].Kind + *(a1 + 128) + a2 * a3);
  if (v9)
  {
    v10 = a4;
    *&v11 = sub_1AF688994(v9);
    a4 = v10;
    LOBYTE(v6) = 0;
  }

  else
  {
    LOBYTE(v6) = 1;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v15 = 0;
LABEL_9:
  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *(a4 + 64) = v6;
  *(a4 + 65) = v15;
}

void sub_1AF685084(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  do
  {
    if (!--v6)
    {
      v17 = 1;
      v15 = 0uLL;
      v16 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_12;
    }

    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
  }

  while (v8 != &type metadata for EmitterDescription);
  v9 = *(&(*(v7 - 2))[3].Kind + *(a1 + 128) + a2 * a3);
  if (v9)
  {
    v10 = a4;
    v11 = v9;
    v12 = sub_1AF1B9B04(v11);
    if (v12)
    {
      v20 = v12[1];
      v21 = *v12;
      v18 = v12[3];
      v19 = v12[2];

      v14 = v18;
      v13 = v19;
      v16 = v20;
      v15 = v21;
      LOBYTE(v6) = 0;
    }

    else
    {

      LOBYTE(v6) = 1;
      v15 = 0uLL;
      v16 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
    }

    a4 = v10;
  }

  else
  {
    LOBYTE(v6) = 1;
    v15 = 0uLL;
    v16 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  v17 = 0;
LABEL_12:
  *a4 = v15;
  *(a4 + 16) = v16;
  *(a4 + 32) = v13;
  *(a4 + 48) = v14;
  *(a4 + 64) = v6;
  *(a4 + 65) = v17;
}

uint64_t sub_1AF6851A4(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for EmitterRuntime)
    {
      return *(&(*(v6 - 2))[6].Description + *(a1 + 128) + a2 * a3);
    }
  }

  return 0;
}

void sub_1AF68521C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 56;
    while (*(v4 - 24) != &type metadata for NodeTransformController)
    {
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v10 = a2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong worldTransform];
      v19 = v14;
      v20 = v13;
      v17 = v16;
      v18 = v15;

      v7 = v19;
      v6 = v20;
      v9 = v17;
      v8 = v18;
    }

    else
    {
      v9 = xmmword_1AFE201A0;
      v8 = xmmword_1AFE20180;
      v7 = xmmword_1AFE20160;
      v6 = xmmword_1AFE20150;
    }

    a2 = v10;
    v5 = 0;
  }

  else
  {
LABEL_5:
    v5 = 1;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v5;
}

uint64_t sub_1AF685318(unint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = HIDWORD(a1);
    v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v11 = *(v10 + 2);
    if (v9 == 0xFFFFFFFF || v10[2] == v9)
    {
      v12 = *(*(a2 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == &type metadata for Children)
        {
          sub_1AF5AF588(*(v16 - 2) + 8 * v11 + *(v12 + 128), a3, a4, a5, a6, a7);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF685400(unint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = HIDWORD(a1);
    v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v8 = *(v7 + 2);
    if (v6 == 0xFFFFFFFF || v7[2] == v6)
    {
      v9 = *(*(a2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
        if (v14 == &type metadata for Children)
        {
          sub_1AF5AFBA8(*(v13 - 2) + 8 * v8 + *(v9 + 128), a3, a4);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL sub_1AF6854EC(uint64_t a1, __int16 a2, uint64_t a3, char **a4)
{
  v4 = *(a1 + 48);
  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for GraphScriptingConfig)
    {
      sub_1AF681F68(*(&(*(v8 - 2))[1].Kind + *(a1 + 128) + a2 * a3), a4);
      return v7 == 0;
    }
  }

  return v7 == 0;
}

uint64_t sub_1AF685564(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  result = 1;
  while (--v3)
  {
    v5 = *v2;
    v2 += 5;
    if (v5 == &type metadata for CodeGenerationComponent)
    {
    }
  }

  return result;
}

uint64_t sub_1AF6855D0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for GraphEntityComponentPropertyReferences)
    {
    }
  }

  return 0;
}

uint64_t sub_1AF685640(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for VertexLayoutCollection)
    {
    }
  }

  return 0;
}

uint64_t sub_1AF6856B0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      return 3;
    }

    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
  }

  while (v7 != &type metadata for EmitterDescription);
  v8 = *(v6 - 2) + *(a1 + 128) + a2 * a3;
  if (v8[72])
  {
    return 0;
  }

  if (*(v8 + 6))
  {
    return 1;
  }

  return 2;
}

unint64_t sub_1AF685724(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for EmitterDescription)
    {
      v8 = *(&(*(v6 - 2))[4].Kind + *(a1 + 128) + a2 * a3 + 4);
      return v8 | ((v5 == 0) << 32);
    }
  }

  v8 = 0;
  return v8 | ((v5 == 0) << 32);
}

uint64_t sub_1AF685798(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for EmitterRuntime)
    {
      return *(&(*(v6 - 2))[19].Kind + *(a1 + 128) + a2 * a3);
    }
  }

  return 0;
}

uint64_t sub_1AF68580C(unint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = HIDWORD(a1);
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v9 = *(v8 + 2);
    if (v7 == 0xFFFFFFFF || v8[2] == v7)
    {
      v10 = *(*(a2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for EmitterRuntime)
        {
          v16 = &(*(v14 - 2))[53 * v9] + *(v10 + 128);
          if (*(v16 + 336) == 1)
          {
            *a3 = 1;
            if (*(v16 + 424))
            {
              return *(v16 + 528);
            }

            else
            {
              return 0;
            }
          }

          else
          {
            result = sub_1AFB946F8();
            if (v18)
            {
              return a5;
            }
          }

          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF685960(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  do
  {
    if (!--v5)
    {
      return 0;
    }

    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
  }

  while (v7 != &type metadata for EmitterRuntime);
  v8 = *(v6 - 2) + *(a1 + 128) + a2 * a3;
  if (v8[336] == 1)
  {
    v9 = *(v8 + 64);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  return (*(v8 + 88) + *(v8 + 92) * v9);
}

uint64_t sub_1AF6859E0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for EmitterRuntime)
    {
      v8 = *(v6 - 2) + *(a1 + 128) + a2 * a3;
      if (*(v8 + 53))
      {
        return *(v8 + 54);
      }

      return 0;
    }
  }

  return 0;
}

uint64_t sub_1AF685A48(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for EmitterDescription)
    {
      return *(&(*(v6 - 2))[4].Description + *(a1 + 128) + a2 * a3 + 2);
    }
  }

  return 2;
}

uint64_t sub_1AF685AA0(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for EmitterRuntime)
    {
    }
  }

  return 0;
}

uint64_t sub_1AF685B10(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for EmitterRuntime)
    {
    }
  }

  return 0;
}

uint64_t sub_1AF685B80(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      return 0;
    }

    v4 = *v2;
    v2 += 5;
  }

  while (v4 != &type metadata for EmitterRuntime);
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (qword_1ED725EC0 != -1)
    {
      swift_once();
    }
  }

  return result;
}

uint64_t sub_1AF685C5C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v2 += 5;
    if (v4 == &type metadata for EmitterRuntime)
    {
    }
  }

  return 0;
}

unint64_t sub_1AF685CCC(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for NeighborGrid)
    {
      v8 = *(&(*(v6 - 2))->Kind + *(a1 + 128) + a2 * a3);
      return v8 | ((v5 == 0) << 32);
    }
  }

  v8 = 0;
  return v8 | ((v5 == 0) << 32);
}

uint64_t sub_1AF685D40(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (v2 + 32);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      return 0;
    }

    v5 = *v3;
    v3 += 5;
  }

  while (v5 != &type metadata for EmitterRuntime);
  result = sub_1AFABF670(&v7);
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1AF685DC0(unint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  result = 1;
  if ((a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = HIDWORD(a1);
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v9 = *(v8 + 2);
    if (v7 == 0xFFFFFFFF || v8[2] == v7)
    {
      v10 = *(*(a2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (1)
      {
        result = --v13 == 0;
        if (!v13)
        {
          break;
        }

        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for EmitterDescription)
        {
          v16 = v13 == 0;
          result = sub_1AFBC1708(*(v14 - 2) + 104 * v9 + *(v10 + 128), a3, a4);
          if (!v4)
          {
            return v16;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF685EC0(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for ParticleRespawn)
    {
      return *(&(*(v6 - 2))->Kind + *(a1 + 128) + a2 * a3);
    }
  }

  return 0;
}

uint64_t sub_1AF685F20(uint64_t a1, __int16 a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for Bindings)
    {
      v8 = *(&(*(v6 - 2))[1].Kind + *(a1 + 128) + a2 * a3);

      v9 = sub_1AFDFDE28();
      v13 = sub_1AF4876E8(v9, v10, v11, v12, v8);

      return v13;
    }
  }

  return 1;
}

uint64_t sub_1AF685FD8(unint64_t a1, uint64_t a2)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 1;
  }

  if ((a1 & 0x80000000) != 0)
  {
    return 1;
  }

  if (a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return 1;
  }

  v3 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  if (HIDWORD(a1) != 0xFFFFFFFF && v3[2] != HIDWORD(a1))
  {
    return 1;
  }

  else
  {
    return sub_1AF685F20(*(*(a2 + 144) + 8 * *v3 + 32), *(v3 + 2), 24);
  }
}

uint64_t sub_1AF68606C(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  result = 1;
  while (--v6)
  {
    v8 = v5 + 5;
    v9 = *v5;
    v5 += 5;
    if (v9 == &type metadata for EmitterRuntime)
    {
      result = *(&(*(v8 - 2))[21].Description + *(a1 + 128) + a2 * a3);
      if (result)
      {
        return swift_unknownObjectRetain();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1AF6860DC(uint64_t a1, __int16 a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  result = 1;
  while (--v6)
  {
    v8 = v5 + 5;
    v9 = *v5;
    v5 += 5;
    if (v9 == &type metadata for EmitterRuntime)
    {
      result = *(&(*(v8 - 2))[26].Description + *(a1 + 128) + a2 * a3);
      if (result)
      {
        return swift_unknownObjectRetain();
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1AF68614C(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v6 = 0;
  if ((a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return v6 & 1;
  }

  v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v9 = *(v8 + 2);
  if (HIDWORD(a1) != 0xFFFFFFFF && v8[2] != HIDWORD(a1))
  {
LABEL_2:
    v6 = 0;
    return v6 & 1;
  }

  v10 = *(*(a2 + 144) + 8 * *v8 + 32);
  v11 = *(v10 + 48);
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  do
  {
    if (!--v13)
    {
      v6 = 0;
      return v6 & 1;
    }

    v14 = v12 + 5;
    v15 = *v12;
    v12 += 5;
  }

  while (v15 != &type metadata for EmitterDescription);
  v17 = *(v14 - 2) + 104 * v9 + *(v10 + 128);
  v19 = *(v17 + 16);
  v18 = *(v17 + 32);
  v48[0] = *v17;
  v48[1] = v19;
  v48[2] = v18;
  v21 = *(v17 + 64);
  v20 = *(v17 + 80);
  v22 = *(v17 + 48);
  v49 = *(v17 + 96);
  v48[4] = v21;
  v48[5] = v20;
  v48[3] = v22;
  v23 = *(v17 + 16);
  v41 = *v17;
  v42 = v23;
  v24 = *(v17 + 32);
  v25 = *(v17 + 48);
  v26 = *(v17 + 64);
  v27 = *(v17 + 80);
  v47 = *(v17 + 96);
  v45 = v26;
  v46 = v27;
  v43 = v24;
  v44 = v25;
  sub_1AF445DA0(v48, &v34);
  sub_1AF700004(&v41, a3, a4, a5);
  if (v5)
  {
    v38 = v45;
    v39 = v46;
    v40 = v47;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    sub_1AF57A684(&v34);
    return v6 & 1;
  }

  v31 = sub_1AF65ADEC(a1);
  if ((v32 & 0x100000000) == 0)
  {
    v33 = v31 << 16 >> 48;
    v50[4] = v45;
    v50[5] = v46;
    v51 = v47;
    v50[0] = v41;
    v50[1] = v42;
    v50[2] = v43;
    v50[3] = v44;

    sub_1AFC437F8(v33, v50);

    v38 = v45;
    v39 = v46;
    v40 = v47;
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    sub_1AF57A684(&v34);
    v6 = 1;
    return v6 & 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF68640C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char **a6)
{
  v7 = v6;
  v30 = a6;
  v8 = *(result + 16);
  if (v8)
  {
    v10 = (result + 80);
    while (1)
    {
      v11 = *(v10 - 5);
      v12 = *(v10 - 4);
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;
      v24[0] = *(v10 - 6);
      v24[1] = v11;
      v25 = v12;
      v26 = v13;
      v27 = v14;
      v28 = v15;
      v29 = v16;

      sub_1AF687F90(v12, v13);
      sub_1AF7C0174(v24, a2, a3, a4, a5 & 0x10101, v30);
      if (v7)
      {
        break;
      }

      v10 += 7;
      v17 = v25;
      v18 = v26;

      result = sub_1AF687FE4(v17, v18);
      if (!--v8)
      {
        return result;
      }
    }

    v19 = v25;
    v20 = v26;

    return sub_1AF687FE4(v19, v20);
  }

  return result;
}

uint64_t sub_1AF686540(unint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, unint64_t a8)
{
  v112 = a8;
  v113 = a6;
  v119 = a7;
  v115 = a5;
  v117 = a2;
  v127 = *MEMORY[0x1E69E9840];
  v118 = a1;
  v11 = HIDWORD(a1);
  v12 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v108 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v110 = (&v101 - v18);
  sub_1AF687D70(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v101 - v21;
  v23 = type metadata accessor for ScriptIndex();
  v109 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v111 = (&v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v30 = (&v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v29)
  {
    v31 = *(v28 + 72);
    if (!v11)
    {
      goto LABEL_3;
    }

LABEL_7:
    v32 = v118;
    goto LABEL_8;
  }

  v31 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_3:
  v32 = v118;
  if (v118 == -1)
  {
    return 0;
  }

LABEL_8:
  result = 0;
  if (v32 < 0 || v32 >= *(v117 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return result;
  }

  v34 = (*(v117 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v32);
  v35 = *(v34 + 2);
  if (v11 != 0xFFFFFFFF && v34[2] != v11)
  {
    return 0;
  }

  v120 = v8;
  v36 = *(*(v117 + 144) + 8 * *v34 + 32);
  v37 = *(v36 + 48);
  v38 = (v37 + 32);
  v39 = *(v37 + 16) + 1;
  do
  {
    if (!--v39)
    {
      return 0;
    }

    v40 = v38 + 5;
    v41 = *v38;
    v38 += 5;
  }

  while (v41 != v26);
  v102 = HIDWORD(v113);
  v42 = *(v36 + 128) + *(v40 - 2) + v31 * v35;
  v116 = v30;
  sub_1AF687EA0(v42, v30, type metadata accessor for GraphScript);
  if (a3[25] == 1)
  {
    *v111 = a4;
  }

  else
  {
    sub_1AF487314(v115 + *(v12 + 40), v22);
    v43 = sub_1AFDFC318();
    v44 = *(v43 - 8);
    (*(v44 + 48))(v22, 1, v43);
    (*(v44 + 32))(v111, v22, v43);
  }

  swift_storeEnumTagMultiPayload();
  v45 = *a3;
  v107 = a3[1];
  v46 = *(a3 + 2);
  v115 = *(a3 + 1);
  v106 = a3[24];
  v105 = a3[25];
  v104 = HIDWORD(v112) & 1;
  v103 = v112;
  v47 = a3[26];
  v48 = sub_1AF419B74(v112 | (v104 << 32));
  v114 = v46;
  sub_1AF687EA0(*(v46 + 56) + *(v108 + 72) * v48, v15, type metadata accessor for GraphScriptingConfig.ScriptInfo);
  v49 = v110;
  sub_1AF687DC4(v15, v110);
  v50 = v116;
  v51 = v116[2];
  if (v49[1])
  {
    v52 = *v49;
    v53 = v49[1];
  }

  else
  {
    v52 = v116[1];

    v53 = v51;
  }

  v50[1] = v52;
  v50[2] = v53;
  sub_1AF68A93C(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v54 = swift_allocObject();
  v55 = v54;
  *(v54 + 16) = xmmword_1AFE431C0;
  if (v45 <= 2)
  {
    v56 = v109;
    if (v45)
    {
      v57 = v116;
      if (v45 == 1)
      {
        v58 = 0xE500000000000000;
        v59 = 0x6E77617053;
      }

      else
      {
        v58 = 0xE400000000000000;
        v59 = 1953066569;
      }
    }

    else
    {
      v58 = 0xE400000000000000;
      v59 = 1852399949;
      v57 = v116;
    }
  }

  else
  {
    v56 = v109;
    if (v45 > 4)
    {
      v57 = v116;
      if (v45 == 5)
      {
        v58 = 0xEE00657461647055;
        goto LABEL_31;
      }

      v58 = 0xE600000000000000;
      v59 = 0x7265646E6552;
    }

    else
    {
      v57 = v116;
      if (v45 == 3)
      {
        v58 = 0xEC00000074696E49;
LABEL_31:
        v59 = 0x656C636974726150;
        goto LABEL_36;
      }

      v58 = 0xE600000000000000;
      v59 = 0x657461647055;
    }
  }

LABEL_36:
  *(v54 + 32) = v59;
  *(v54 + 40) = v58;
  v60 = v57;

  v60[4] = v55;
  *(v60 + 24) = v107;

  *v60 = byte_1F24FE8A0;
  v61 = *(v26 + 44);
  sub_1AF687E28(v60 + v61);
  sub_1AF687EA0(v111, v60 + v61, type metadata accessor for ScriptIndex);
  (*(v56 + 56))(v60 + v61, 0, 1, v23);
  *(v60 + 40) = (v112 & 0x1FFFFFFFFLL) == 0x100000000;
  v62 = v106;
  if (v106)
  {
    v63 = swift_allocObject();
    v64 = v102;
    *(v63 + 16) = v113;
    *(v63 + 20) = v64;
    v65 = v63 | 0x6000000000000000;
    v66 = byte_1F24FE8A0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_1AF420C34(0, 2, 1, byte_1F24FE8A0);
    }

    v68 = *(v66 + 2);
    v67 = *(v66 + 3);
    if (v68 >= v67 >> 1)
    {
      v66 = sub_1AF420C34(v67 > 1, v68 + 1, 1, v66);
    }

    v69 = v116;
    *(v66 + 2) = v68 + 1;
    v70 = &v66[40 * v68];
    *(v70 + 4) = v65;
    v70[40] = 1;
    *(v70 + 3) = xmmword_1AFE4C460;
    v70[64] = 1;
    *v69 = v66;
  }

  v71 = v49[3];
  v72 = *(v71 + 2);

  sub_1AF687F08(v119, v121);
  if (v72)
  {
    LODWORD(v113) = v45 | (v107 << 8);
    if (v105)
    {
      v73 = 256;
    }

    else
    {
      v73 = 0;
    }

    if (v47)
    {
      v74 = 0x10000;
    }

    else
    {
      v74 = 0;
    }

    LODWORD(v112) = v73 | v62 | v74;
    v75 = (v71 + 80);
    v76 = v103 | (v104 << 32);
    while (1)
    {
      v77 = *(v75 - 5);
      v78 = *(v75 - 4);
      v79 = *(v75 - 3);
      v81 = *(v75 - 2);
      v80 = *(v75 - 1);
      v82 = *v75;
      v121[0] = *(v75 - 6);
      v121[1] = v77;
      v122 = v78;
      v123 = v79;
      v124 = v81;
      v125 = v80;
      v126 = v82;

      sub_1AF687F90(v78, v79);
      v83 = v47 & 0xFF000000;
      v47 = v112 | v47 & 0xFF000000;
      v84 = v120;
      sub_1AF7CB27C(v121, v119, v113, v115, v114, v112 | v83, v76, v116);
      v120 = v84;
      if (v84)
      {
        break;
      }

      v75 += 7;
      v85 = v122;
      v86 = v123;

      sub_1AF687FE4(v85, v86);
      if (!--v72)
      {
        v49 = v110;
        v87 = v113;
        v88 = v112;
        goto LABEL_60;
      }
    }

    v99 = v122;
    v100 = v123;

    result = sub_1AF687FE4(v99, v100);
    __break(1u);
  }

  else
  {
    v87 = v45 | (v107 << 8);
    if (v105)
    {
      v89 = 256;
    }

    else
    {
      v89 = 0;
    }

    v90 = v89 | v62;
    if (v47)
    {
      v91 = 0x10000;
    }

    else
    {
      v91 = 0;
    }

    v88 = v90 | v91;
LABEL_60:
    v92 = v114;

    v93 = v115;

    sub_1AF688038(v119, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences);
    v94 = v49[4];

    v95 = v116;
    sub_1AF68640C(v94, v87, v93, v92, v88, v116);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1AF6880A8(v111, type metadata accessor for ScriptIndex);
    sub_1AF6880A8(v49, type metadata accessor for GraphScriptingConfig.ScriptInfo);
    v96 = v117;
    v97 = sub_1AF65C98C(v118) << 16 >> 48;
    v98 = **(v96 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

    sub_1AFC46A28(v97, v95, v98);

    sub_1AF6880A8(v95, type metadata accessor for GraphScript);
    return 1;
  }

  return result;
}

uint64_t sub_1AF686FBC(unint64_t a1, uint64_t a2, uint64_t a3, Swift::Int a4, uint64_t a5)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSpawnState)
        {
          return sub_1AFB7F308(a4, (&(*(v11 - 2))[8 * v6].Kind + *(v7 + 128)), a5);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v15 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a5);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6871AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v8 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v9 = *(v8 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v8[2] == HIDWORD(a1))
    {
      v10 = *(*(a2 + 144) + 8 * *v8 + 32);
      v11 = *(v10 + 48);
      v12 = (v11 + 32);
      v13 = *(v11 + 16) + 1;
      while (--v13)
      {
        v14 = v12 + 5;
        v15 = *v12;
        v12 += 5;
        if (v15 == &type metadata for EmitterRuntime)
        {
          return sub_1AFBD76A8(&(*(v14 - 2))[53 * v9] + *(v10 + 128), a3, a6, a7, a8);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v18 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v18);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a8);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6873DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v5 = *(*(*(a2 + 144) + 8 * *v4 + 32) + 48);
      v6 = (v5 + 32);
      v7 = *(v5 + 16) + 1;
      while (--v7)
      {
        v8 = *v6;
        v6 += 5;
        if (v8 == &type metadata for EmitterRuntime)
        {
          return sub_1AFB7F308(*(a3 + 64), a3, a4);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v11 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v11);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a4);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF6875E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for Children)
        {
          return sub_1AFC95F58((&(*(v10 - 2))->Kind + 8 * v5 + *(v6 + 128)), a3, a4);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6E6572646C696843, 0xE800000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6877B0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for WorldTransform)
        {
          v12 = (&(*(v10 - 2))[4 * v5].Kind + *(v6 + 128));
          *&v13 = sub_1AF5AF890(a4);
          *v12 = v13;
          v12[1] = v14;
          v12[2] = v15;
          v12[3] = v16;
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v17 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v17);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x617254646C726F57, 0xEE006D726F66736ELL);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF6879B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v6 = *(v5 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v5[2] != HIDWORD(a1))
  {
LABEL_11:
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v28 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v28);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x6C6169726574614DLL, 0xE800000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

    goto LABEL_12;
  }

  v7 = *(*(a2 + 144) + 8 * *v5 + 32);
  v8 = *(v7 + 48);
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  do
  {
    if (!--v10)
    {
      goto LABEL_11;
    }

    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
  }

  while (v12 != &type metadata for Material);
  v13 = *(v11 - 2) + 104 * v6 + *(v7 + 128);
  v15 = *(v13 + 16);
  v14 = *(v13 + 32);
  v43[0] = *v13;
  v43[1] = v15;
  v43[2] = v14;
  v17 = *(v13 + 64);
  v16 = *(v13 + 80);
  v18 = *(v13 + 48);
  v44 = *(v13 + 96);
  v43[4] = v17;
  v43[5] = v16;
  v43[3] = v18;
  v19 = *v13;
  v42 = *(v13 + 16);
  v20 = *(v13 + 40);
  v21 = *(v13 + 56);
  v22 = *(v13 + 72);
  v40 = *(v13 + 88);
  v41 = v19;
  v38 = v21;
  v39 = v22;
  v37 = v20;
  v23 = sub_1AF687D18();

  sub_1AF4424F4(v43, &v45);
  swift_unknownObjectRelease();
  v24 = sub_1AF65ADEC(a1);
  if ((v25 & 0x100000000) != 0)
  {
    while (1)
    {

LABEL_12:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v45 = v41;
  v49 = v37;
  v50 = v38;
  v51 = v39;
  v26 = v24 << 16 >> 48;
  v46 = v42;
  v47 = a3;
  v48 = v23;
  v52 = v40;

  sub_1AFC465E8(v26, &v45);

  v29 = v41;
  v30 = v42;
  v31 = a3;
  v32 = v23;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  return sub_1AF584F68(&v29);
}

unint64_t sub_1AF687D18()
{
  result = qword_1EB63D260;
  if (!qword_1EB63D260)
  {
    type metadata accessor for PBRParameters();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63D260);
  }

  return result;
}

void sub_1AF687D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF687DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF687E28(uint64_t a1)
{
  sub_1AF687D70(0, qword_1ED730680, type metadata accessor for ScriptIndex);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF687EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF687F08(uint64_t a1, uint64_t a2)
{
  sub_1AF68A93C(0, &qword_1EB633D20, &type metadata for GraphEntityComponentPropertyReferences, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF687F90(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x3B)
  {
  }

  return result;
}

uint64_t sub_1AF687FE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x3B)
  {
  }

  return result;
}

uint64_t sub_1AF688038(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF68A93C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF6880A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF688108(unint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v12 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v13 = *(v12 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v12[2] != HIDWORD(a1))
  {
LABEL_13:
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v35 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v35);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0x6C6169726574614DLL, 0xE800000000000000);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

    goto LABEL_14;
  }

  v14 = *(*(a2 + 144) + 8 * *v12 + 32);
  v15 = *(v14 + 48);
  v16 = (v15 + 32);
  v17 = *(v15 + 16) + 1;
  do
  {
    if (!--v17)
    {
      goto LABEL_13;
    }

    v18 = v16 + 5;
    v19 = *v16;
    v16 += 5;
  }

  while (v19 != &type metadata for Material);
  v20 = *(v18 - 2) + 104 * v13 + *(v14 + 128);
  v22 = *(v20 + 16);
  v21 = *(v20 + 32);
  v45[0] = *v20;
  v45[1] = v22;
  v45[2] = v21;
  v24 = *(v20 + 64);
  v23 = *(v20 + 80);
  v25 = *(v20 + 48);
  v46 = *(v20 + 96);
  v45[4] = v24;
  v45[5] = v23;
  v45[3] = v25;
  v26 = *(v20 + 16);
  v38 = *v20;
  v39 = v26;
  v27 = *(v20 + 32);
  v28 = *(v20 + 48);
  v29 = *(v20 + 64);
  v30 = *(v20 + 80);
  v44 = *(v20 + 96);
  v42 = v29;
  v43 = v30;
  v40 = v27;
  v41 = v28;
  sub_1AF4424F4(v45, v36);
  sub_1AF88C470(&v38, a3, a4 & 1, a5, a6);
  if (!v6)
  {
    v31 = sub_1AF65ADEC(a1);
    if ((v32 & 0x100000000) != 0)
    {
      while (1)
      {

LABEL_14:
        sub_1AFDFE518();
        __break(1u);
      }
    }

    v33 = v31 << 16 >> 48;
    v47[4] = v42;
    v47[5] = v43;
    v48 = v44;
    v47[0] = v38;
    v47[1] = v39;
    v47[2] = v40;
    v47[3] = v41;

    sub_1AFC465E8(v33, v47);
  }

  v36[4] = v42;
  v36[5] = v43;
  v37 = v44;
  v36[0] = v38;
  v36[1] = v39;
  v36[2] = v40;
  v36[3] = v41;
  return sub_1AF584F68(v36);
}

uint64_t sub_1AF688474(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v40 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v39 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v38 = &v36 - v11;
  sub_1AF68B08C();
  v12 = sub_1AFDFE598();
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v44 = v12;
  v37 = v12 + 64;
  v42 = a1;
  v18 = a1 + 72;
  if (v16)
  {
    do
    {
      v47 = (v16 - 1) & v16;
      v19 = __clz(__rbit64(v16)) | (v13 << 6);
LABEL_9:
      v23 = 8 * v19;
      v24 = *(v42 + 56);
      v25 = *(v42 + 48) + 8 * v19;
      v26 = *v25;
      v45 = *(v25 + 4);
      v46 = v26;
      v27 = *(v41 + 72) * v19;
      v28 = v38;
      sub_1AF687EA0(v24 + v27, v38, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v29 = v40;
      sub_1AF687EA0(v28, v40, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      v30 = v43;

      v31 = v39;
      sub_1AF7C3500(v29, v30, v39);
      sub_1AF6880A8(v28, type metadata accessor for GraphScriptingConfig.ScriptInfo);
      *(v37 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v32 = v44;
      v33 = *(v44 + 48) + v23;
      v34 = v45;
      *v33 = v46;
      *(v33 + 4) = v34;
      sub_1AF687DC4(v31, *(v32 + 56) + v27);
      ++*(v32 + 16);
      v16 = v47;
    }

    while (v47);
  }

  v20 = v13 << 6;
  while (1)
  {
    v21 = v13 + 1;
    if (v13 + 1 >= v17)
    {
      return v44;
    }

    v22 = *(v18 + 8 * v13);
    v20 += 64;
    ++v13;
    if (v22)
    {
      v47 = (v22 - 1) & v22;
      v19 = __clz(__rbit64(v22)) + v20;
      v13 = v21;
      goto LABEL_9;
    }
  }
}

void sub_1AF68873C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for EmitterRuntime)
        {
          sub_1AF9CCD40(&(*(v10 - 2))[53 * v5] + *(v6 + 128), a3, a4);
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  sub_1AFDFE518();
  __break(1u);
}

double sub_1AF688994(uint64_t a1)
{
  v1 = *sub_1AF1B9B04(a1);

  *&result = __invert_f4(v1);
  return result;
}

uint64_t sub_1AF688A14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, float a7)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v8 = *(v7 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v7[2] == HIDWORD(a1))
    {
      v9 = *(*(a2 + 144) + 8 * *v7 + 32);
      v10 = *(v9 + 48);
      v11 = (v10 + 32);
      v12 = *(v10 + 16) + 1;
      while (--v12)
      {
        v13 = v11 + 5;
        v14 = *v11;
        v11 += 5;
        if (v14 == &type metadata for EmitterRuntime)
        {
          return sub_1AF6843C8((&(*(v13 - 2))[53 * v8].Kind + *(v9 + 128)), a3, a4, a5, a6, a7);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v17 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v17);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a3);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF688C38(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
{
  if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v7 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
    if (HIDWORD(result) == 0xFFFFFFFF || v7[2] == HIDWORD(result))
    {
      v8 = *(*(*(a2 + 144) + 8 * *v7 + 32) + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = *v9;
        v9 += 5;
        if (v11 == &type metadata for EmitterRuntime)
        {
          v12 = *(a3 + 8);
          if (*(a3 + 12))
          {
            if (LODWORD(v12) < 2)
            {
              return result;
            }

            v13 = a4;
            result = sub_1AF6C0D50();
            a4 = v13;
            *a6.i32 = vcvts_n_f32_u64(result & 0xFFFFFF, 0x18uLL);
          }

          else
          {
            a7.i64[0] = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
            *a6.i64 = *a7.i64 / v12;
            *a6.i32 = *a6.i64;
            *a7.i32 = *a6.i32 - truncf(*a6.i32);
            v14.i64[0] = 0x8000000080000000;
            v14.i64[1] = 0x8000000080000000;
            a6.i32[0] = vbslq_s8(v14, a7, a6).u32[0];
          }

          *(a4 + 28) = a6.i32[0];
          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v16 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF58CDA0(a3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF688EF4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for EmitterRuntime)
        {
          return a5(&(*(v11 - 2))[53 * v6] + *(v7 + 128), a3, a4);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v15 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6890F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for EmitterRuntime)
        {
          sub_1AF9DD1E8(a5, a6, &(*(v12 - 2))[53 * v7] + *(v8 + 128), a3, a4);
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v15 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  sub_1AFDFE518();
  __break(1u);
}

void sub_1AF689324(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, _DWORD *a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for EmitterRuntime)
        {
          sub_1AF9DEF50((&(*(v12 - 2))[53 * v7].Kind + *(v8 + 128)), a3, a4, a5, a6);
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v15 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v15);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF6895AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t, uint64_t, uint64_t))
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for EmitterRuntime)
        {
          return a6(&(*(v12 - 2))[53 * v7] + *(v8 + 128), a3, a4, a5);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v16 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF6897C4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF4498F4(255, a3);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF689824(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1AF6897C4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF689880(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v4 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v5 = *(v4 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v4[2] == HIDWORD(a1))
    {
      v6 = *(*(a2 + 144) + 8 * *v4 + 32);
      v7 = *(v6 + 48);
      v8 = (v7 + 32);
      v9 = *(v7 + 16) + 1;
      while (--v9)
      {
        v10 = v8 + 5;
        v11 = *v8;
        v8 += 5;
        if (v11 == &type metadata for EmitterRuntime)
        {
          sub_1AFBD4170(&(*(v10 - 2))[53 * v5] + *(v6 + 128), a3, a4);
          return;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v13 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v13);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF689A84(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = a5;
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v11 = *(v10 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v10[2] == HIDWORD(a1))
    {
      v12 = *(*(a2 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == &type metadata for EmitterRuntime)
        {
          v18 = (&(*(v16 - 2))[53 * v11] + *(v12 + 128));
          if (!v18[39].i64[1])
          {
            v20 = *(a4 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
            v21 = v20;
            sub_1AFBB8180(a3, 0, v20);
            v6 = a5;
          }

          v18[32].i64[0] = 1 - v18[32].i64[0];
          v22 = v18[33].i64[0] + v18[7].i64[0];
          v18[33].i64[0] = v22;
          result = swift_weakLoadStrong();
          if (result)
          {
            v36 = a4;

            v25 = sub_1AFB7A4DC(v24);
            v26 = v18[28].i64[0];
            if (v26 < v22)
            {
              v27 = v25;
              v28 = *(v6 + 32);
              sub_1AF3C9078(v28);
              sub_1AFBB9CF4(v36, v28, v27, v18, v22, a3);

              v26 = v18[28].i64[0];
            }

            if (v26 >= 1 && (sub_1AFBBAFA0(v18, a3, a6), v29 = *(v6 + 32), sub_1AFB948D8(), sub_1AFBBB398(v18, a3, v36, v29, v30, v31, v32, v33), sub_1AFBBBA8C(v18), sub_1AFBBBDD8(v18), (v18[3].i8[2] & 1) != 0) && (sub_1AF3CA1CC(v29, &v37), v37))
            {
              v43 = v37;
              v46 = v40;
              v47 = v41;
              v48[0] = v42[0];
              *(v48 + 12) = *(v42 + 12);
              v44 = v38;
              v45 = v39;
              sub_1AFBBC160(v29, &v43, v18, a3, v36, a6);

              return sub_1AF688038(&v37, &unk_1EB634140, &type metadata for EmitterDescription);
            }

            else
            {
            }
          }

          return result;
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v35 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v35);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a5);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF689E94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(a2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for EmitterRuntime)
        {
          return sub_1AFBC2C3C(&(*(v12 - 2))[53 * v7] + *(v8 + 128), a3, a4, a5, a6);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v16 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF68A098(unint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v6 = *(*(*(a2 + 144) + 8 * *v5 + 32) + 48);
      v7 = (v6 + 32);
      v8 = *(v6 + 16) + 1;
      while (--v8)
      {
        v9 = *v7;
        v7 += 5;
        if (v9 == &type metadata for EmitterRuntime)
        {
          return sub_1AFB7F308(a3, a4, a5);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v12 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v12);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x5272657474696D45, 0xEE00656D69746E75);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a5);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF68A298(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v17 = *(v16 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v16[2] == HIDWORD(a1))
    {
      v18 = *(*(a2 + 144) + 8 * *v16 + 32);
      v19 = *(v18 + 48);
      v20 = (v19 + 32);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 5;
        v23 = *v20;
        v20 += 5;
        if (v23 == &type metadata for ParticleSpawnState)
        {
          v24 = &(*(v22 - 2))[8 * v17] + *(v18 + 128);
          sub_1AF68A8E0(a3, &v28);

          if (sub_1AFBC00BC(v24, a3, a9) && !*(v24 + 72) && *v24 <= (*(v24 + 4) + a9))
          {
            v26 = *(a3 + 32);
            sub_1AF68A8E0(a3, &v28);

            sub_1AF6871AC(v26, a4, a5, a6, a7, a8, a4, a3);
            sub_1AF688940(a3);
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          else
          {
          }

          return sub_1AF688940(a3);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v27 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v27);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

unint64_t sub_1AF68A5B4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, float a5, float a6)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v11 = *(v10 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v10[2] == HIDWORD(a1))
    {
      v12 = *(*(a2 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      do
      {
        if (!--v15)
        {
          goto LABEL_22;
        }

        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
      }

      while (v17 != &type metadata for ParticleSpawnState);
      v18 = &(*(v16 - 2))[8 * v11] + *(v12 + 128);
      result = sub_1AFBC00BC(v18, a3, a5);
      if ((result & 1) == 0)
      {
        return result;
      }

      v20 = a3[1];
      result = sub_1AF3CF5A0(v20, v28);
      if (v28[12] << 32 == 0x200000000)
      {
        goto LABEL_11;
      }

      v22 = v28[20];
      result = sub_1AF3D0C8C(v20, v27);
      v23 = *&v27[0];
      if (*&v27[0])
      {

        sub_1AF688038(v27, &qword_1EB631D50, &type metadata for ParticleSubSpawn.State);
        v24 = *(v23 + 16);

        if (v22 != 2)
        {
          if (!v24)
          {
            return result;
          }

LABEL_11:
          v21 = (a5 * a6) + *(v18 + 64);
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 != 2)
        {
          return result;
        }

        v24 = 0;
      }

      v21 = *(v18 + 64) + ((v24 * a6) * a5);
LABEL_19:
      *(v18 + 64) = v21;
      if (v21 >= 1.0)
      {
        v25 = a3[4];
        sub_1AF68A8E0(a3, v27);
        sub_1AF6873DC(v25, a4, v18, a3);
        result = sub_1AF688940(a3);
        *(v18 + 64) = fminf(*(v18 + 64) - floorf(*(v18 + 64)), 1.0);
      }

      return result;
    }
  }

LABEL_22:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v26 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v26);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  sub_1AF688940(a3);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AF68A93C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1AF68A98C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Swift::Int a6, float a7, float a8, float a9)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v9 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v10 = *(v9 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v9[2] == HIDWORD(a1))
    {
      v11 = *(*(a2 + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 5;
        v16 = *v13;
        v13 += 5;
        if (v16 == &type metadata for ParticleSpawnState)
        {
          return sub_1AFBC4090(&(*(v15 - 2))[8 * v10] + *(v11 + 128), a3, a4, a5, a6, a7, a8, a9);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v19 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v19);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF2EB20);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

  sub_1AF688940(a4);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF68AB84(unint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  if (a1 != 0xFFFFFFFF && (a1 & 0x80000000) == 0 && a1 < *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v6 = *(v5 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v5[2] == HIDWORD(a1))
    {
      v7 = *(*(a2 + 144) + 8 * *v5 + 32);
      v8 = *(v7 + 48);
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = v9 + 5;
        v12 = *v9;
        v9 += 5;
        if (v12 == &type metadata for ParticleSubSpawn.State)
        {
          return sub_1AFBC6FA0(&(*(v11 - 2))[4 * v6] + *(v7 + 128), a3, a4, a5);
        }
      }
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
  v14 = sub_1AF656F38();
  MEMORY[0x1B2718AE0](v14);

  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
  MEMORY[0x1B2718AE0](0x6574617453, 0xE500000000000000);
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF68AD4C(unint64_t a1, uint64_t a2, void *a3, id a4, void *a5)
{
  v7 = a3;
  if (a1 == 0xFFFFFFFF || (a1 & 0x80000000) != 0 || a1 >= *(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) || (v9 = (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1), v10 = *(v9 + 2), HIDWORD(a1) != 0xFFFFFFFF) && v9[2] != HIDWORD(a1))
  {
LABEL_11:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
    v24 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v24);

    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
    MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF2A6A0);
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);

    goto LABEL_12;
  }

  v11 = *(*(a2 + 144) + 8 * *v9 + 32);
  v12 = *(v11 + 48);
  v13 = (v12 + 32);
  v14 = *(v12 + 16) + 1;
  do
  {
    if (!--v14)
    {
      goto LABEL_11;
    }

    v15 = v13 + 5;
    v16 = *v13;
    v13 += 5;
  }

  while (v16 != &type metadata for REMeshAssetPointCache);
  v17 = (&(*(v15 - 2))->Kind + 24 * v10 + *(v11 + 128));
  v19 = *v17;
  v18 = v17[1];
  v25 = v17[2];
  v26 = a3;

  sub_1AF8266D8(v7, 0);
  v7 = a4;
  sub_1AF8266D8(a4, 2);
  a4 = a5;
  sub_1AF8266D8(a5, 4);
  v20 = sub_1AF65ADEC(a1);
  if ((v21 & 0x100000000) != 0)
  {
    while (1)
    {

LABEL_12:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  v22 = v20 << 16 >> 48;

  sub_1AFC45248(v22, v19, v18, v25);
}

void sub_1AF68B08C()
{
  if (!qword_1EB633B90)
  {
    type metadata accessor for GraphScriptingConfig.ScriptInfo();
    sub_1AF4499B0();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633B90);
    }
  }
}

unint64_t sub_1AF68B0F8()
{
  result = qword_1EB630E18;
  if (!qword_1EB630E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB630E18);
  }

  return result;
}

void sub_1AF68B14C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AF68B1BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AF68B14C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF68B230(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF68B14C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF68B344(uint64_t a1)
{
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_8:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    sub_1AF70DA24(&v10, *(*(a1 + 56) + ((v7 << 10) | (16 * v8))));
  }

  while (1)
  {
    v7 = v6 + 1;
    if (v6 + 1 >= v5)
    {
    }

    v4 = *(a1 + 8 * v6++ + 72);
    if (v4)
    {
      v6 = v7;
      goto LABEL_8;
    }
  }
}

uint64_t sub_1AF68B420()
{
  v1 = v0;
  v42 = 0;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v54 = qword_1ED73B840;
  v55 = 0;
  v56 = 2;
  v57 = 1;
  v58 = 2;
  v59 = 0;

  sub_1AF702F78(3, v43);

  v52[0] = v43[0];
  v52[1] = v43[1];
  v53 = v44;
  sub_1AF6B06C0(v0, v52, 0x200000000, v45);
  v62 = *&v45[32];
  v63 = v46;
  v64 = v47;
  v65 = v48;
  v60 = *v45;
  v61 = *&v45[16];
  result = sub_1AF692E04(v43, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  if (*v45)
  {
    if (v48 > 0 && (v31 = *(&v46 + 1)) != 0)
    {
      v30 = *&v45[40];
      v3 = *(v47 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v33 = *(*(&v47 + 1) + 32);
      v34 = *(&v47 + 1);
      v49 = *v45;
      v50 = *&v45[8];
      v51 = *&v45[24];
      v41[2] = v62;
      v41[3] = v63;
      v41[4] = v64;
      v41[5] = v65;
      v41[0] = v60;
      v41[1] = v61;
      sub_1AF5DD298(v41, v39);
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      v29 = v3;
      do
      {
        v32 = v4;
        v6 = (v30 + 48 * v4);
        v7 = *v6;
        v35 = v6[1];
        v9 = *(v6 + 2);
        v8 = *(v6 + 3);
        v10 = *(v6 + 4);
        v11 = *(v6 + 5);
        if (v3)
        {
          v12 = *(v11 + 376);

          os_unfair_lock_lock(v12);
          os_unfair_lock_lock(*(v11 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v33);
        v13 = *(v34 + 64);
        v39[0] = *(v34 + 48);
        v39[1] = v13;
        v40 = *(v34 + 80);
        v14 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
        *(v34 + 48) = ecs_stack_allocator_allocate(*(v34 + 32), 48 * v14, 8);
        *(v34 + 56) = v14;
        *(v34 + 72) = 0;
        *(v34 + 80) = 0;
        *(v34 + 64) = 0;
        v15 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v9, v8, v10, v34);
        if (v9)
        {
          if (v10)
          {
            v16 = (v15 + 8);
            do
            {
              v17 = *v9++;
              v38 = v5;

              v18 = sub_1AF6496EC(v17);

              sub_1AF7CFFB0(v18, v1, v1, &v38);

              v20 = sub_1AF692E64(v19, &v38);

              *v16 = v20;

              v37[0] = sub_1AF42CD8C(v5);
              v36 = sub_1AF432980(v5);

              sub_1AF681B7C(v21, &v42, &v36, v37);

              *v16 = v37[0];
              v16 += 8;

              sub_1AF7D0190(v18, v1, v1, &v42, &v36);

              --v10;
            }

            while (v10);
          }
        }

        else if (v7 != v35)
        {
          v22 = (v15 + (v7 << 6) + 8);
          do
          {
            v38 = v5;

            v23 = sub_1AF6496EC(v7);

            sub_1AF7CFFB0(v23, v1, v1, &v38);

            v25 = sub_1AF692E64(v24, &v38);

            *v22 = v25;

            v37[0] = sub_1AF42CD8C(v5);
            v36 = sub_1AF432980(v5);

            sub_1AF681B7C(v26, &v42, &v36, v37);

            *v22 = v37[0];
            v22 += 8;

            sub_1AF7D0190(v23, v1, v1, &v42, &v36);

            ++v7;
          }

          while (v35 != v7);
        }

        sub_1AF630994(v34, &v49, v39);
        sub_1AF62D29C(v11);
        ecs_stack_allocator_pop_snapshot(v33);
        v3 = v29;
        if (v29)
        {
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        v4 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v28 = MEMORY[0x1E69E6720];
      sub_1AF692E04(v45, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      v27 = v28;
    }

    else
    {
      v27 = MEMORY[0x1E69E6720];
    }

    return sub_1AF692E04(v45, &qword_1ED725EA0, &type metadata for QueryResult, v27, sub_1AF69348C);
  }

  return result;
}

uint64_t sub_1AF68BA24()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v56 = qword_1ED73B840;
  v57 = 0;
  v58 = 2;
  v59 = 1;
  v60 = 2;
  v61 = 0;

  sub_1AF826AB8(v48);

  v54[0] = v48[0];
  v54[1] = v48[1];
  v55 = v49;
  sub_1AF6B06C0(v0, v54, 0x200000000, v50);
  sub_1AF692E04(v48, &unk_1EB633CE8, &type metadata for CodeGenerationComponent, &off_1F253BF50, sub_1AF5DD590);
  if (*&v50[0])
  {
    if (v53 >= 1 && v52)
    {
      v1 = v51;
      v2 = v51 + 48 * v52;
      v32 = v2;
      do
      {
        v3 = *(v1 + 40);
        v4 = *(v3 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v4);
        os_unfair_lock_lock(*(v3 + 344));
        v5 = *(v3 + 24);

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        memset(v47, 0, sizeof(v47));
        v6 = sub_1AF65A4B4(v5, 0, 0, &type metadata for CodeGenerationComponent, &off_1F253BF50, &v40, v47);

        sub_1AF693564(v47, sub_1AF5C4448);
        sub_1AF693564(&v40, sub_1AF5C4448);
        if (sub_1AF649CEC())
        {
          sub_1AF649D40(v6);
        }

        else
        {
          v7 = *(v3 + 232);
          v8 = *(v3 + 240);
          v9 = *(v3 + 120);
          v39 = *(v3 + 28);
          v38 = *(v3 + 32);
          v10 = *(v3 + 16);
          v11 = *(v3 + 40);
          v12 = *(v11 + 200);
          v37 = *(*(v10 + 88) + 8 * v6 + 32);

          if ((v12 & 1) != 0 || *(v37 + 200) == 1)
          {
            *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v11 = *(v3 + 40);
          }

          v34 = v9;
          v13 = *(v3 + 256);
          sub_1AF5B4FCC(v11, v7, v8, 0, v3);
          v35 = *(v3 + 256);
          v14 = v35 - v13;
          v36 = v13;
          if (v35 == v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = v13;
          }

          v47[0] = v15;
          v16 = *(*(v3 + 40) + 24);
          v17 = *(v16 + 16);
          if (v17)
          {
            v33 = v1;
            v18 = v16 + 32;

            for (i = 0; i != v17; ++i)
            {
              v20 = v18 + 40 * i;
              if ((*(v20 + 32) & 1) == 0)
              {
                v21 = *(v37 + 24);
                v22 = *(v21 + 16);
                if (v22)
                {
                  v23 = (v21 + 32);
                  while (*v23 != *v20)
                  {
                    v23 += 5;
                    if (!--v22)
                    {
                      goto LABEL_18;
                    }
                  }
                }

                else
                {
LABEL_18:
                  sub_1AF640BC8();
                }
              }
            }

            v1 = v33;
          }

          if (*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v3 + 72) * v14);
          }

          if (*(v3 + 184))
          {
            v24 = 0;
          }

          else
          {
            v24 = *(v3 + 168);
          }

          v46 = 0;

          MEMORY[0x1EEE9AC00](v25, v26);
          v27 = v39;
          v28 = v38;
          DWORD2(v41) = -1;
          v42 = v36;
          v43 = v35;
          v44 = v36;
          v45 = v35;
          *&v40 = v36;
          *(&v40 + 1) = v35;
          *&v41 = v24;
          if (v14 < 1)
          {

            v2 = v32;
          }

          else
          {
            v2 = v32;
            do
            {
              sub_1AF6248A8(v6, v27 | (v28 << 32), v34, v10, &v40, sub_1AF5C5ACC);
              v28 = v38;
              v27 = v39;
            }

            while ((*(&v40 + 1) - v40) > 0);
          }

          v29 = *(v3 + 192);
          if (v29)
          {
            v30 = *(v3 + 208);
            sub_1AF75D364(v36, v35, v29);
            sub_1AF75D364(v36, v35, v30);
          }
        }

        v1 += 48;
        os_unfair_lock_unlock(*(v3 + 344));
        os_unfair_lock_unlock(*(v3 + 376));
      }

      while (v1 != v2);
    }

    sub_1AF692E04(v50, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  }

  sub_1AF68E978();
  sub_1AF68FC74();
  return sub_1AF69132C();
}

uint64_t sub_1AF68C020()
{
  v1 = v0;
  v208 = *MEMORY[0x1E69E9840];
  v145 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v160 = qword_1ED73B840;
  v161 = 0;
  v162 = 2;
  v163 = 1;
  v164 = 2;
  v165 = 0;

  sub_1AF702F78(1, v146);

  v158[0] = v146[0];
  v158[1] = v146[1];
  v159 = v147;
  sub_1AF6B06C0(v0, v158, 0x200000000, v188);
  v204 = *&v188[32];
  v205 = v189;
  v206 = v190;
  v207 = v191;
  v202 = *v188;
  v203 = *&v188[16];
  sub_1AF692E04(v146, &unk_1EB63D270, &type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, sub_1AF5DD590);
  if (*v188)
  {
    if (v191 > 0 && (v140 = *(&v189 + 1)) != 0)
    {
      v134 = v0;
      v138 = *&v188[40];
      v2 = *(&v190 + 1);
      v3 = *(v190 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v142 = *(*(&v190 + 1) + 32);
      v150 = *v188;
      v151 = *&v188[8];
      v152 = *&v188[24];
      *&v192[32] = v204;
      v193 = v205;
      v194 = v206;
      v195 = v207;
      *v192 = v202;
      *&v192[16] = v203;
      sub_1AF5DD298(v192, &v182);
      v4 = 0;
      v136 = v3;
      do
      {
        v5 = (v138 + 48 * v4);
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v5 + 2);
        v9 = *(v5 + 3);
        v10 = *(v5 + 4);
        v11 = *(v5 + 5);
        if (v3)
        {
          v12 = *(v11 + 376);

          os_unfair_lock_lock(v12);
          os_unfair_lock_lock(*(v11 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v142);
        v13 = *(v2 + 64);
        v200[0] = *(v2 + 48);
        v200[1] = v13;
        v201 = *(v2 + 80);
        v14 = *(*(*(*(v11 + 40) + 16) + 32) + 16) + 1;
        *(v2 + 48) = ecs_stack_allocator_allocate(*(v2 + 32), 48 * v14, 8);
        *(v2 + 56) = v14;
        *(v2 + 72) = 0;
        *(v2 + 80) = 0;
        *(v2 + 64) = 0;
        v15 = sub_1AF64B110(&type metadata for GraphEntityComponentPropertyReferences, &off_1F253B5B8, v8, v9, v10, v2);
        if (v8)
        {
          if (v10)
          {
            v16 = v15 + 32;
            do
            {

              sub_1AF68B344(v17);

              sub_1AF68B344(v18);

              v16 += 64;
              --v10;
            }

            while (v10);
          }
        }

        else if (v7 != v6)
        {
          v19 = v15 + (v7 << 6) + 32;
          v20 = v6 - v7;
          do
          {

            sub_1AF68B344(v21);

            sub_1AF68B344(v22);

            v19 += 64;
            --v20;
          }

          while (v20);
        }

        sub_1AF630994(v2, &v150, v200);
        sub_1AF62D29C(v11);
        ecs_stack_allocator_pop_snapshot(v142);
        v3 = v136;
        if (v136)
        {
          os_unfair_lock_unlock(*(v11 + 344));
          os_unfair_lock_unlock(*(v11 + 376));
        }

        ++v4;
      }

      while (v4 != v140);
      v23 = MEMORY[0x1E69E6720];
      sub_1AF692E04(v188, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
      sub_1AF692E04(v188, &qword_1ED725EA0, &type metadata for QueryResult, v23, sub_1AF69348C);
      v1 = v134;
    }

    else
    {
      sub_1AF692E04(v188, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
    }
  }

  sub_1AF826ACC(v148);

  v156[0] = v148[0];
  v156[1] = v148[1];
  v157 = v149;
  sub_1AF6B06C0(v1, v156, 0x200000000, v192);
  v184 = *&v192[32];
  v185 = v193;
  v186 = v194;
  v187 = v195;
  v182 = *v192;
  v183 = *&v192[16];
  sub_1AF692E04(v148, &qword_1EB63F380, &type metadata for DoNotExport, &off_1F253D000, sub_1AF5DD590);
  v133 = *v192;
  if (!*v192)
  {
  }

  v132 = *&v192[40];
  v24 = *(&v193 + 1);
  v137 = *(&v194 + 1);
  v196 = *&v192[8];
  v197 = *&v192[24];
  if (v195 <= 0 || !*(&v193 + 1))
  {
    v124 = MEMORY[0x1E69E6720];
    goto LABEL_143;
  }

  v25 = *(*(&v194 + 1) + 32);
  v26 = *(v194 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v181[2] = v184;
  v181[3] = v185;
  v181[4] = v186;
  v181[5] = v187;
  v181[0] = v182;
  v181[1] = v183;
  sub_1AF5DD298(v181, &v175);
  v27 = 0;
  v130 = v25;
  v131 = v24;
  v129 = v26;
  do
  {
    v28 = (v132 + 48 * v27);
    v30 = *v28;
    v29 = v28[1];
    v31 = *(v28 + 5);
    v141 = *(v28 + 2);
    v143 = *(v28 + 4);
    if (v26)
    {
      v32 = *(v31 + 376);

      os_unfair_lock_lock(v32);
      os_unfair_lock_lock(*(v31 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v25);
    v33 = *(v137 + 64);
    v198[0] = *(v137 + 48);
    v198[1] = v33;
    v199 = *(v137 + 80);
    v34 = *(*(*(*(v31 + 40) + 16) + 32) + 16) + 1;
    *(v137 + 48) = ecs_stack_allocator_allocate(*(v137 + 32), 48 * v34, 8);
    *(v137 + 56) = v34;
    *(v137 + 72) = 0;
    *(v137 + 80) = 0;
    *(v137 + 64) = 0;
    v35 = v141;
    v135 = v27;
    if (v141)
    {
      if (v143)
      {
        v36 = 0;
        v37 = v145 + 56;
        while (1)
        {
          v38 = *(v35 + 8 * v36);

          if (*(v31 + 184))
          {
            goto LABEL_145;
          }

          v40 = *(*(v31 + 168) + 4 * v38);
          v41 = *(*(v39 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v40 + 8);

          if (!*(v145 + 16))
          {
            goto LABEL_36;
          }

          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v42 = sub_1AFDFF2F8();
          v43 = -1 << *(v145 + 32);
          v44 = v42 & ~v43;
          if (((*(v37 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_36;
          }

          v45 = ~v43;
          while (1)
          {
            v46 = (*(v145 + 48) + 8 * v44);
            v48 = *v46;
            v47 = v46[1];
            if (v48 == v40 && v47 == v41)
            {
              break;
            }

            v44 = (v44 + 1) & v45;
            if (((*(v37 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          v50 = *(*(v31 + 40) + 16);
          v51 = *(v50 + 128);
          if (!*(v51 + 16))
          {
            goto LABEL_36;
          }

          v52 = sub_1AF449CB8(&type metadata for DoNotExport);
          if ((v53 & 1) == 0 || *(*(v50 + 24) + 16 * *(*(v51 + 56) + 8 * v52) + 32) != &type metadata for DoNotExport)
          {
            v35 = v141;
            goto LABEL_36;
          }

          v172 = &type metadata for DoNotExport;
          v173 = &off_1F253D000;
          v174 = 1;
          v54 = *(v137 + 104);
          v139 = *(v54 + 16);
          if (!v139)
          {

LABEL_82:
            v69 = *(v31 + 240) - *(v31 + 232);
            v70 = ecs_stack_allocator_allocate(*(v137 + 32), 8 * v69, 8);
            *v70 = v38;
            sub_1AF63515C(&v172, &v175);
            *v178 = v70;
            *&v178[8] = v69;
            *&v178[16] = 1;
            v71 = *(v137 + 104);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v137 + 104) = v71;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v71 = sub_1AF420EA0(0, v71[2] + 1, 1, v71);
              *(v137 + 104) = v71;
            }

            v35 = v141;
            v74 = v71[2];
            v73 = v71[3];
            if (v74 >= v73 >> 1)
            {
              *(v137 + 104) = sub_1AF420EA0(v73 > 1, v74 + 1, 1, v71);
            }

            sub_1AF635250(&v172);
            v75 = *(v137 + 104);
            *(v75 + 16) = v74 + 1;
            v76 = v75 + 72 * v74;
            *(v76 + 32) = v175;
            v78 = v177;
            v77 = *v178;
            v79 = v176;
            *(v76 + 96) = *&v178[16];
            *(v76 + 64) = v78;
            *(v76 + 80) = v77;
            *(v76 + 48) = v79;
            *(v137 + 104) = v75;
            goto LABEL_36;
          }

          v55 = v54 + 32;

          v56 = 0;
          v35 = v141;
          while (1)
          {
            sub_1AF6350F8(v55, v171);
            sub_1AF63515C(v171, &v175);
            sub_1AF63515C(&v172, v178);
            if (BYTE8(v177) > 2u)
            {
              break;
            }

            if (BYTE8(v177))
            {
              if (BYTE8(v177) == 1)
              {
                sub_1AF6934DC(v171);
                sub_1AF63515C(&v175, v170);
                if (v180 != 1)
                {
                  goto LABEL_53;
                }

                v57 = *&v170[0];
                v58 = *v178;
                sub_1AF635250(&v175);
                v59 = v57 == v58;
LABEL_64:
                v35 = v141;
                if (v59)
                {
                  goto LABEL_78;
                }

                goto LABEL_54;
              }

              sub_1AF63515C(&v175, v170);
              if (v180 != 2)
              {
LABEL_52:
                sub_1AF6934DC(v171);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v170);
LABEL_53:
                sub_1AF693564(&v175, sub_1AF635194);
                goto LABEL_54;
              }

              goto LABEL_73;
            }

            sub_1AF6934DC(v171);
            sub_1AF63515C(&v175, v170);
            if (v180)
            {
              goto LABEL_53;
            }

            v127 = *&v170[0];
            v62 = *v178;
            sub_1AF635250(&v175);
            if (v127 == v62)
            {
              goto LABEL_78;
            }

LABEL_54:
            ++v56;
            v55 += 72;
            if (v139 == v56)
            {
              goto LABEL_82;
            }
          }

          if (BYTE8(v177) == 3)
          {
            break;
          }

          if (BYTE8(v177) == 4)
          {
            sub_1AF6934DC(v171);
            sub_1AF63515C(&v175, v170);
            if (v180 != 4)
            {
              goto LABEL_53;
            }

            v60 = LOBYTE(v170[0]);
            v61 = v178[0];
            sub_1AF635250(&v175);
            v59 = v60 == v61;
            goto LABEL_64;
          }

          sub_1AF6934DC(v171);
          if (v180 != 5)
          {
            goto LABEL_53;
          }

          v64 = vorrq_s8(*&v178[8], v179);
          if (*&vorr_s8(*v64.i8, *&vextq_s8(v64, v64, 8uLL)) | *v178)
          {
            goto LABEL_53;
          }

          sub_1AF635250(&v175);
LABEL_78:
          v66 = sub_1AFBFCA08(&v175);
          v67 = *(v65 + 48);
          if (v67)
          {
            v68 = *(v65 + 64);
            *(v67 + 8 * v68) = v38;
            *(v65 + 64) = v68 + 1;
          }

          (v66)(&v175, 0);

          sub_1AF635250(&v172);
LABEL_36:
          if (++v36 == v143)
          {
            goto LABEL_88;
          }
        }

        sub_1AF63515C(&v175, v170);
        if (v180 != 3)
        {
          goto LABEL_52;
        }

LABEL_73:
        sub_1AF0FBA54(v170, v167);
        sub_1AF0FBA54(v178, v166);
        v63 = v168;
        v128 = v169;
        sub_1AF441150(v167, v168);
        LOBYTE(v63) = sub_1AF640C98(v166, v63, v128);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
        sub_1AF6934DC(v171);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v167);
        sub_1AF635250(&v175);
        if (v63)
        {
          goto LABEL_78;
        }

        goto LABEL_54;
      }
    }

    else if (v30 != v29)
    {
      v80 = v145 + 56;
      while (1)
      {

        if (*(v31 + 184))
        {
          break;
        }

        v82 = *(*(v31 + 168) + 4 * v30);
        v83 = *(*(v81 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v82 + 8);

        if (*(v145 + 16))
        {
          sub_1AFDFF288();
          sub_1AFDFF2C8();
          sub_1AFDFF2C8();
          v84 = sub_1AFDFF2F8();
          v85 = -1 << *(v145 + 32);
          v86 = v84 & ~v85;
          if ((*(v80 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
          {
            v87 = ~v85;
            while (1)
            {
              v88 = (*(v145 + 48) + 8 * v86);
              v90 = *v88;
              v89 = v88[1];
              if (v90 == v82 && v89 == v83)
              {
                break;
              }

              v86 = (v86 + 1) & v87;
              if (((*(v80 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
              {
                goto LABEL_92;
              }
            }

            v92 = *(*(v31 + 40) + 16);
            v93 = *(v92 + 128);
            if (*(v93 + 16))
            {
              v94 = sub_1AF449CB8(&type metadata for DoNotExport);
              if ((v95 & 1) != 0 && *(*(v92 + 24) + 16 * *(*(v93 + 56) + 8 * v94) + 32) == &type metadata for DoNotExport)
              {
                v172 = &type metadata for DoNotExport;
                v173 = &off_1F253D000;
                v174 = 1;
                v96 = *(v137 + 104);
                v97 = *(v96 + 16);
                if (!v97)
                {

LABEL_136:
                  v113 = *(v31 + 240) - *(v31 + 232);
                  v114 = ecs_stack_allocator_allocate(*(v137 + 32), 8 * v113, 8);
                  *v114 = v30;
                  sub_1AF63515C(&v172, &v175);
                  *v178 = v114;
                  *&v178[8] = v113;
                  *&v178[16] = 1;
                  v115 = *(v137 + 104);
                  v116 = swift_isUniquelyReferenced_nonNull_native();
                  *(v137 + 104) = v115;
                  if ((v116 & 1) == 0)
                  {
                    v115 = sub_1AF420EA0(0, v115[2] + 1, 1, v115);
                    *(v137 + 104) = v115;
                  }

                  v118 = v115[2];
                  v117 = v115[3];
                  if (v118 >= v117 >> 1)
                  {
                    *(v137 + 104) = sub_1AF420EA0(v117 > 1, v118 + 1, 1, v115);
                  }

                  sub_1AF635250(&v172);
                  v119 = *(v137 + 104);
                  *(v119 + 16) = v118 + 1;
                  v120 = v119 + 72 * v118;
                  *(v120 + 32) = v175;
                  v122 = v177;
                  v121 = *v178;
                  v123 = v176;
                  *(v120 + 96) = *&v178[16];
                  *(v120 + 64) = v122;
                  *(v120 + 80) = v121;
                  *(v120 + 48) = v123;
                  *(v137 + 104) = v119;
                  goto LABEL_92;
                }

                v98 = v96 + 32;

                v99 = 0;
                v144 = v97;
                while (2)
                {
                  sub_1AF6350F8(v98, v171);
                  sub_1AF63515C(v171, &v175);
                  sub_1AF63515C(&v172, v178);
                  if (BYTE8(v177) > 2u)
                  {
                    if (BYTE8(v177) != 3)
                    {
                      if (BYTE8(v177) != 4)
                      {
                        sub_1AF6934DC(v171);
                        if (v180 == 5)
                        {
                          v108 = vorrq_s8(*&v178[8], v179);
                          if (!(*&vorr_s8(*v108.i8, *&vextq_s8(v108, v108, 8uLL)) | *v178))
                          {
                            sub_1AF635250(&v175);
LABEL_133:
                            v110 = sub_1AFBFCA08(&v175);
                            v111 = *(v109 + 48);
                            if (v111)
                            {
                              v112 = *(v109 + 64);
                              *(v111 + 8 * v112) = v30;
                              *(v109 + 64) = v112 + 1;
                            }

                            (v110)(&v175, 0);

                            sub_1AF635250(&v172);
                            goto LABEL_92;
                          }
                        }

                        goto LABEL_109;
                      }

                      sub_1AF6934DC(v171);
                      sub_1AF63515C(&v175, v170);
                      if (v180 != 4)
                      {
                        goto LABEL_109;
                      }

                      v100 = LOBYTE(v170[0]);
                      v101 = v178[0];
                      sub_1AF635250(&v175);
                      v102 = v100 == v101;
LABEL_122:
                      v97 = v144;
                      if (v102)
                      {
                        goto LABEL_133;
                      }

                      goto LABEL_110;
                    }

                    sub_1AF63515C(&v175, v170);
                    if (v180 == 3)
                    {
LABEL_128:
                      sub_1AF0FBA54(v170, v167);
                      sub_1AF0FBA54(v178, v166);
                      v105 = v168;
                      v106 = v169;
                      sub_1AF441150(v167, v168);
                      v107 = v106;
                      v97 = v144;
                      LOBYTE(v105) = sub_1AF640C98(v166, v105, v107);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v166);
                      sub_1AF6934DC(v171);
                      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v167);
                      sub_1AF635250(&v175);
                      if (v105)
                      {
                        goto LABEL_133;
                      }

                      goto LABEL_110;
                    }
                  }

                  else
                  {
                    if (!BYTE8(v177))
                    {
                      sub_1AF6934DC(v171);
                      sub_1AF63515C(&v175, v170);
                      if (!v180)
                      {
                        goto LABEL_121;
                      }

                      goto LABEL_109;
                    }

                    if (BYTE8(v177) == 1)
                    {
                      sub_1AF6934DC(v171);
                      sub_1AF63515C(&v175, v170);
                      if (v180 == 1)
                      {
LABEL_121:
                        v103 = *&v170[0];
                        v104 = *v178;
                        sub_1AF635250(&v175);
                        v102 = v103 == v104;
                        goto LABEL_122;
                      }

LABEL_109:
                      sub_1AF693564(&v175, sub_1AF635194);
LABEL_110:
                      ++v99;
                      v98 += 72;
                      if (v97 == v99)
                      {
                        goto LABEL_136;
                      }

                      continue;
                    }

                    sub_1AF63515C(&v175, v170);
                    if (v180 == 2)
                    {
                      goto LABEL_128;
                    }
                  }

                  break;
                }

                sub_1AF6934DC(v171);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v170);
                goto LABEL_109;
              }
            }
          }
        }

LABEL_92:
        if (++v30 == v29)
        {
          goto LABEL_88;
        }
      }

LABEL_145:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    }

LABEL_88:
    v153 = v133;
    v154 = v196;
    v155 = v197;
    sub_1AF630994(v137, &v153, v198);
    sub_1AF62D29C(v31);
    v25 = v130;
    ecs_stack_allocator_pop_snapshot(v130);
    v26 = v129;
    if (v129)
    {
      os_unfair_lock_unlock(*(v31 + 344));
      os_unfair_lock_unlock(*(v31 + 376));
    }

    v27 = v135 + 1;
  }

  while (v135 + 1 != v131);
  v125 = MEMORY[0x1E69E6720];
  sub_1AF692E04(v192, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF69348C);
  v124 = v125;
LABEL_143:
  sub_1AF692E04(v192, &qword_1ED725EA0, &type metadata for QueryResult, v124, sub_1AF69348C);
}