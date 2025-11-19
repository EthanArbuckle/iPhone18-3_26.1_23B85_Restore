unint64_t sub_1D8D1D5B0()
{
  result = qword_1EDCD7B80;
  if (!qword_1EDCD7B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B80);
  }

  return result;
}

id sub_1D8D1D614(uint64_t isUniquelyReferenced_nonNull_native)
{
  v4 = isUniquelyReferenced_nonNull_native;
  v5 = 0;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 40;
  v26 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);

      result = [*(v1 + 104) v3[224]];
      __break(1u);
      return result;
    }

    ++v5;
    v2 = v9 + 2;
    v1 = *(v9 - 1);
    v3 = *v9;
    ObjectType = swift_getObjectType();
    v11 = v3[5];
    swift_unknownObjectRetain();
    (v11)(v30, v4, ObjectType, v3);
    v28 = v30[1];
    v27 = v30[0];
    v12 = v31;
    isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
    v9 = v2;
    if (v28 != 3)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0(0, *(v26 + 16) + 1, 1, v26);
        v26 = isUniquelyReferenced_nonNull_native;
      }

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      v1 = v14 + 1;
      v15 = v27;
      if (v14 >= v13 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1D8D1C4F0((v13 > 1), v14 + 1, 1, v26);
        v15 = v27;
        v26 = isUniquelyReferenced_nonNull_native;
      }

      *(v26 + 16) = v1;
      v16 = v26 + 40 * v14;
      *(v16 + 32) = v15;
      *(v16 + 48) = v28;
      *(v16 + 64) = v12;
      v8 = v6 + 40;
      goto LABEL_2;
    }
  }

  v34 = 0;
  v35 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 2;
  v17 = *(v25 + 48);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  type metadata accessor for PodcastStateMachine();
  v2 = 0;
  sub_1D9178E2C();
  v1 = *&v32[0];
  v18 = *(v26 + 16);
  swift_beginAccess();
  v19 = -1;
  v20 = 32;
  v3 = &selRef_setParent_;
  do
  {
    if (v19 - v18 == -1)
    {
      break;
    }

    if (++v19 >= *(v26 + 16))
    {
      goto LABEL_17;
    }

    v21 = *(v26 + v20);
    v22 = *(v26 + v20 + 16);
    v33 = *(v26 + v20 + 32);
    v32[0] = v21;
    v32[1] = v22;
    v23 = *(v1 + 104);
    sub_1D8D19AA0(v32, v29);
    [v23 lock];
    sub_1D8D1CB88(v1, v32, v29);
    v20 += 40;
    sub_1D8D1A4BC(v32);
    [*(v1 + 104) unlock];
  }

  while ((v29[0] & 1) == 0);
}

void *sub_1D8D1D954(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result + 4;
    do
    {
      v3 = *v2++;
      result = sub_1D8D1D614(v3);
      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1D8D1D994@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1D8D1DA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = swift_beginAccess();
  v7 = *(a1 + 72);
  if (*(v7 + 16) && (result = sub_1D8D1AC44(a2), (v8 & 1) != 0))
  {
    v9 = (*(v7 + 56) + 40 * result);
    v10 = *v9;
    v11 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[4];
    result = sub_1D8D1C3BC(*v9, v11, v13);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v13 = 3;
  }

  *a3 = v10;
  a3[1] = v11;
  a3[2] = v13;
  a3[3] = v12;
  a3[4] = v14;
  return result;
}

double sub_1D8D1DB18@<D0>(void (*a1)(_OWORD *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v7);
  if (!v2)
  {
    v5 = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v5;
  }

  return result;
}

double sub_1D8D1DB64@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1DC70(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

BOOL sub_1D8D1DBEC@<W0>(void *a1@<X8>)
{
  result = sub_1D8D1DC88(*(v1 + 24), *(*(v1 + 16) + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows));
  v4 = 3;
  *a1 = 0;
  a1[1] = 0;
  if (result)
  {
    v4 = 1;
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[2] = v4;
  return result;
}

BOOL sub_1D8D1DC88(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a1);
  v5 = sub_1D9179E1C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1D8D1DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 24);
  if (*(v8 + 16) && (v9 = sub_1D8D1AC44(a2), (v10 & 1) != 0))
  {
    *a4 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v12 = *(a1 + 40);
    type metadata accessor for PodcastStateMachine();
    v13 = swift_allocObject();
    *(v13 + 88) = MEMORY[0x1E69E7CC0];
    v14 = objc_allocWithZone(MEMORY[0x1E696AE68]);

    v15 = [v14 init];
    *(v13 + 16) = a2;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    v16 = *(a3 + 16);
    *(v13 + 48) = *a3;
    *(v13 + 64) = v16;
    *(v13 + 80) = *(a3 + 32);
    *(v13 + 96) = v12;
    *(v13 + 104) = v15;
    swift_beginAccess();
    sub_1D8D19AA0(a3, v19);

    v17 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *(a1 + 24);
    *(a1 + 24) = 0x8000000000000000;
    sub_1D8D1DEE0(v13, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + 24) = v19[0];
    result = swift_endAccess();
    *a4 = v13;
  }

  return result;
}

uint64_t sub_1D8D1DEE0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D1AC44(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8F857FC();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D1E004(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D1AC44(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = *(v20 + 56);
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    return sub_1D8D1E2A0(v9, a2, a1, v20);
  }
}

uint64_t sub_1D8D1E018(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_1D9179DBC();
      MEMORY[0x1DA72B3C0](v23);
      result = sub_1D9179E1C();
      v26 = -1 << *(v10 + 32);
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

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t type metadata accessor for EpisodeStateRepository()
{
  result = qword_1EDCD33C0;
  if (!qword_1EDCD33C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D1E2F4()
{
  sub_1D8CF1DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t static EpisodeStateRepository.shared.getter()
{
  if (qword_1EDCD33D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D1E408()
{
  type metadata accessor for EpisodeStatePersistentHistoryTracker();
  swift_allocObject();
  v0 = EpisodeStatePersistentHistoryTracker.init()();
  v1 = type metadata accessor for EpisodeStateRepository();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 storeContext];

  *(v4 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1D91778DC();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = v10;
  *(v4 + 48) = -1;
  v11 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v12 = sub_1D917734C();
  result = (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
  *(v4 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = v0;
  qword_1EDCD33E0 = v4;
  return result;
}

void *EpisodeStatePersistentHistoryTracker.init()()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v19 = *(v2 - 8);
  v20 = v2;
  v3 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v18 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9178D8C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1D9177E9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8F0, &unk_1D91B90A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  sub_1D9177A1C();
  sub_1D8CF48EC(&qword_1EDCD0B08, &qword_1ECABA8F0, &unk_1D91B90A0);
  v14 = sub_1D9177B1C();
  (*(v10 + 8))(v13, v9);
  v1[2] = v14;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD7B0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v19 + 104))(v18, *MEMORY[0x1E69E8090], v20);
  v1[3] = sub_1D9178E4C();
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 storeContext];

  v1[4] = v16;
  v1[5] = 0;
  return v1;
}

id sub_1D8D1EA3C(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

uint64_t EpisodeStateDataSourceProtocol.eraseToAnyEpisodeStateDataSource()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource();
  (*(v6 + 16))(v9, v3, a1);
  v10 = swift_allocObject();
  sub_1D8D1ED18(v9, a1, a2);
  return v10;
}

unint64_t sub_1D8D1EC30(uint64_t a1)
{
  result = sub_1D8D1EC58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8D1EC58()
{
  result = qword_1EDCD3980;
  if (!qword_1EDCD3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3980);
  }

  return result;
}

uint64_t *sub_1D8D1ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocBox();
  (*(*(a2 - 8) + 32))(v9, a1, a2);
  v10 = swift_allocObject();
  v11 = *(v7 + 80);
  v10[2] = v11;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = v8;
  v3[2] = sub_1D8D25D50;
  v3[3] = v10;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = v8;
  v3[4] = sub_1D90FF140;
  v3[5] = v12;
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v8;
  v3[6] = sub_1D8D1F88C;
  v3[7] = v13;
  v14 = swift_allocObject();
  v14[2] = v11;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v8;
  v3[8] = sub_1D8DB6228;
  v3[9] = v14;
  swift_retain_n();
  return v3;
}

uint64_t sub_1D8D1EE78()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1D8D1EEC4()
{
  result = qword_1EDCD3400[0];
  if (!qword_1EDCD3400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD3400);
  }

  return result;
}

unint64_t sub_1D8D1EF1C()
{
  result = qword_1EDCD33F8;
  if (!qword_1EDCD33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD33F8);
  }

  return result;
}

uint64_t defaultEpisodeDownloadTransitionRules.getter()
{
  if (qword_1EDCD13A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D1EFCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA838, &qword_1D91B7CC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918B210;
  *(inited + 32) = 0x6E776F6E6B6E75;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1D8E3A3FC;
  *(inited + 56) = 0;
  strcpy((inited + 64), "downloadable");
  *(inited + 77) = 0;
  *(inited + 78) = -5120;
  *(inited + 80) = sub_1D8E3A3FC;
  *(inited + 88) = 0;
  *(inited + 96) = 0x64616F6C6E776F64;
  *(inited + 104) = 0xEB00000000676E69;
  *(inited + 112) = sub_1D90FB428;
  *(inited + 120) = 0;
  *(inited + 128) = 0x64616F6C6E776F64;
  *(inited + 136) = 0xEA00000000006465;
  *(inited + 144) = sub_1D90FB444;
  *(inited + 152) = 0;
  v1 = sub_1D8D1F10C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA840, &unk_1D91B7CD0);
  result = swift_arrayDestroy();
  qword_1EDCD13B0 = v1;
  return result;
}

char *sub_1D8D1F120(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v5 = *v2;
  v6 = sub_1D9178E0C();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D9178D8C();
  v9 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v10 = sub_1D9177E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v5[10];
  v13 = v5[11];
  v36 = v5[12];
  type metadata accessor for EpisodeStateMachine();
  sub_1D8D1EEC4();
  *(v3 + 3) = sub_1D9177FEC();
  v30[1] = sub_1D8CFD888();
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91D6660);
  v14 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v14);

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  v15 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v15);

  MEMORY[0x1DA7298F0](0xD000000000000019, 0x80000001D91D6680);
  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v33 + 104))(v32, *MEMORY[0x1E69E8090], v34);
  *(v3 + 5) = sub_1D9178E4C();
  v16 = qword_1EDCD3488;
  v17 = sub_1D917734C();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = &v3[qword_1EDCD3490];
  *v18 = "EpisodeStateController.stateMachine(for:).fault";
  *(v18 + 1) = 47;
  v18[16] = 2;
  *(v3 + 2) = a1;
  v19 = v3;
  *(v3 + 4) = v35;
  v20 = v13;
  swift_getAssociatedConformanceWitness();
  v21 = v12;
  type metadata accessor for AnyEpisodeStateDataSource();

  if (sub_1D91786AC())
  {
    v22 = 4;
    do
    {
      v23 = v22 - 4;
      v24 = sub_1D917868C();
      sub_1D917862C();
      if (v24)
      {
        v25 = *(a1 + 8 * v22);

        v26 = v22 - 3;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D91794BC();
        v26 = v22 - 3;
        if (__OFADD__(v23, 1))
        {
LABEL_9:
          __break(1u);
          return v19;
        }
      }

      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      v28[2] = v21;
      v28[3] = v20;
      v28[4] = v36;
      v28[5] = v27;

      sub_1D8D1F7DC(sub_1D90FEAA4, v28);

      ++v22;
    }

    while (v26 != sub_1D91786AC());
  }

  return v19;
}

uint64_t sub_1D8D1F60C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D1F644()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

char *EpisodeStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D8D1F120(a1, a2);

  return v2;
}

uint64_t sub_1D8D1F6C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8D1F788()
{
  result = qword_1EDCD3978;
  if (!qword_1EDCD3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3978);
  }

  return result;
}

uint64_t sub_1D8D1F7DC(uint64_t a1, uint64_t a2)
{
  sub_1D8D1F840();
  v5 = v4;

  v5(a1, a2);
}

uint64_t sub_1D8D1F840()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];

  return v1;
}

uint64_t sub_1D8D1F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_projectBox();
  swift_beginAccess();
  v10 = *(a6 + 40);
  sub_1D8D1F93C(a1);
  v10(a1, a2, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1D8D1F93C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *InterestObserverProvider.__allocating_init(ctx:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D1F9D4(a1);

  return v2;
}

void *sub_1D8D1F9D4(void *a1)
{
  v109 = sub_1D9178FBC();
  v111 = *(v109 - 8);
  v3 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v1;
  v1[12] = MEMORY[0x1E69E7CD0];
  v110 = v1 + 12;
  v1[2] = a1;
  *&v107 = 0x80000001D91CF280;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  v106 = xmmword_1D9189080;
  *(v5 + 16) = xmmword_1D9189080;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v5 + 64) = v6;
  strcpy((v5 + 32), "interestValue");
  *(v5 + 46) = -4864;
  v7 = a1;
  v8 = sub_1D9178C8C();
  v113 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v9 = sub_1D9178E1C();
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v10 initWithEntityName_];

  [v12 setPredicate_];
  v115 = sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v13 = sub_1D91785DC();
  [v12 setSortDescriptors_];

  [v12 setFetchBatchSize_];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77C0, &qword_1D9198FC0);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;

  v14[14] = v15;
  v14[2] = 0xD000000000000032;
  v14[3] = v107;
  v14[4] = v12;
  v14[5] = v7;
  v14[6] = v9;
  v14[7] = sub_1D8F71B88;
  v14[8] = 0;
  v14[9] = sub_1D8F71B8C;
  v14[10] = 0;
  *&v107 = sub_1D8D38B78;
  v14[11] = sub_1D8D38B78;
  v14[12] = 0;
  v16 = v7;
  v17 = sub_1D8D20B08(v14);

  v18 = v116;
  v116[3] = v17;
  v105 = 0x80000001D91CF110;
  v19 = swift_allocObject();
  *(v19 + 16) = v106;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = v6;
  strcpy((v19 + 32), "interestValue");
  *(v19 + 46) = -4864;
  v20 = sub_1D9178C8C();
  v21 = v16;
  v22 = sub_1D9178E1C();
  v23 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v24 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v25 = [v23 initWithEntityName_];

  [v25 setPredicate_];
  v26 = sub_1D91785DC();
  [v25 setSortDescriptors_];

  [v25 setFetchBatchSize_];
  [v25 setIncludesSubentities_];
  [v25 setIncludesPropertyValues_];
  [v25 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4438, &qword_1D91891A0);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;

  v27[14] = v28;
  v27[2] = 0xD000000000000020;
  v27[3] = v105;
  v27[4] = v25;
  v27[5] = v21;
  v27[6] = v22;
  v27[7] = sub_1D8D23164;
  v27[8] = 0;
  v27[9] = sub_1D8E3B050;
  v27[10] = 0;
  v27[11] = sub_1D8D38B78;
  v27[12] = 0;
  v117 = v27;
  sub_1D8D20F2C();
  v29 = sub_1D9177B1C();

  v18[4] = v29;
  v30 = sub_1D8D20F80();
  v31 = sub_1D9178E1C();
  v32 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v34 = [v32 initWithEntityName_];

  [v34 setPredicate_];
  v35 = sub_1D91785DC();
  [v34 setSortDescriptors_];

  [v34 setFetchBatchSize_];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;

  v36[14] = v37;
  v36[2] = 0xD00000000000003DLL;
  v36[3] = 0x80000001D91CF2C0;
  v36[4] = v34;
  v36[5] = v21;
  v36[6] = v31;
  v36[7] = sub_1D8F71B88;
  v36[8] = 0;
  v36[9] = sub_1D8F71B8C;
  v38 = v107;
  v36[10] = 0;
  v36[11] = v38;
  v36[12] = 0;
  v39 = v21;
  v40 = sub_1D8D20B08(v36);

  v41 = v116;
  v116[5] = v40;
  *&v106 = 0x80000001D91CF300;
  v42 = sub_1D8D20F90();
  v43 = sub_1D9178E1C();
  v44 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v45 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v46 = [v44 initWithEntityName_];

  [v46 setPredicate_];
  v47 = sub_1D91785DC();
  [v46 setSortDescriptors_];

  [v46 setFetchBatchSize_];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;

  v48[14] = v49;
  v50 = v106;
  v48[2] = 0xD00000000000003CLL;
  v48[3] = v50;
  v48[4] = v46;
  v48[5] = v39;
  v48[6] = v43;
  v48[7] = sub_1D8F71B88;
  v48[8] = 0;
  v48[9] = sub_1D8F71B8C;
  v48[10] = 0;
  v48[11] = v38;
  v48[12] = 0;
  v51 = v39;
  v52 = sub_1D8D20B08(v48);

  v41[6] = v52;
  *&v107 = 0x80000001D91CF340;
  v53 = _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0();
  v105 = v51;
  v54 = sub_1D9178E1C();
  v55 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v56 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v57 = [v55 initWithEntityName_];

  [v57 setPredicate_];
  v58 = sub_1D91785DC();
  [v57 setSortDescriptors_];

  [v57 setFetchBatchSize_];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77C8, &unk_1D9198FC8);
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;

  v59[14] = v60;
  v59[2] = 0xD00000000000003BLL;
  v59[3] = v107;
  v59[4] = v57;
  v61 = v105;
  v59[5] = v105;
  v59[6] = v54;
  v59[7] = sub_1D8F71B7C;
  v59[8] = 0;
  v59[9] = sub_1D8F71B78;
  v59[10] = 0;
  v59[11] = sub_1D8E29C9C;
  v59[12] = 0;
  v62 = sub_1D8D21134(v59);

  v41[7] = v62;
  *&v106 = 0x80000001D91CF380;
  v63 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v64 = swift_allocObject();
  v107 = xmmword_1D9189070;
  *(v64 + 16) = xmmword_1D9189070;
  v65 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v66 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v67 = [v65 initWithKey:v66 ascending:0];

  *(v64 + 32) = v67;
  v68 = v61;
  v69 = sub_1D9178E1C();
  v70 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v71 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v72 = [v70 initWithEntityName_];

  [v72 setPredicate_];
  v73 = sub_1D91785DC();

  [v72 setSortDescriptors_];

  [v72 setFetchBatchSize_];
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  *(v75 + 16) = 0;

  v74[14] = v75;
  v74[2] = 0xD00000000000003ALL;
  v74[3] = v106;
  v74[4] = v72;
  v74[5] = v68;
  v74[6] = v69;
  v74[7] = sub_1D8F71B7C;
  v74[8] = 0;
  v74[9] = sub_1D8F71B78;
  v74[10] = 0;
  v74[11] = sub_1D8E29C9C;
  v74[12] = 0;
  v76 = sub_1D8D21134(v74);

  v77 = v116;
  v116[8] = v76;
  v112 = 0x80000001D91CF3C0;
  v78 = _s18PodcastsFoundation10MTInterestC45predicateForDislikedInterestsShowsAndChannelsSo11NSPredicateCyFZ_0();
  v79 = swift_allocObject();
  *(v79 + 16) = v107;
  v80 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v81 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v82 = [v80 initWithKey:v81 ascending:0];

  *(v79 + 32) = v82;
  v83 = v68;
  v84 = sub_1D9178E1C();
  v85 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v86 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v87 = [v85 initWithEntityName_];

  [v87 setPredicate_];
  v88 = sub_1D91785DC();

  [v87 setSortDescriptors_];

  [v87 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB77D0, &unk_1D9198FD8);
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v90 = swift_allocObject();
  *(v90 + 16) = 0;

  v89[14] = v90;
  v91 = v112;
  v89[2] = 0xD000000000000040;
  v89[3] = v91;
  v89[4] = v87;
  v89[5] = v83;
  v89[6] = v84;
  v89[7] = sub_1D8F71420;
  v89[8] = 0;
  v89[9] = sub_1D8F71B78;
  v89[10] = 0;
  v89[11] = sub_1D8E29C9C;
  v89[12] = 0;
  v92 = sub_1D8D21568(v89);

  v77[9] = v92;
  v93 = objc_opt_self();
  v94 = [v93 _applePodcastsFoundationSharedUserDefaults];
  v95 = NSUserDefaults.BOOLPublisher(forKey:)(0xD000000000000027, 0x80000001D91CF080);

  v77[11] = v95;
  v96 = [v93 _applePodcastsFoundationSharedUserDefaults];
  v97 = sub_1D917820C();
  v99 = NSUserDefaults.integerPublisher(forKey:)(v97, v98);

  v77[10] = v99;
  v100 = [objc_opt_self() defaultCenter];
  v101 = v108;
  sub_1D9178FCC();

  swift_allocObject();
  swift_weakInit();
  sub_1D8CFBD18(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  v102 = v109;
  sub_1D9177D9C();

  (*(v111 + 8))(v101, v102);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  return v77;
}

uint64_t sub_1D8D20A00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t type metadata accessor for InterestModel()
{
  result = qword_1ECAB2750;
  if (!qword_1ECAB2750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D20A84()
{
  result = sub_1D9176E3C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D20B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7008, &qword_1D9196470);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7010, &qword_1D9196478);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7018, &qword_1D9196480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7020, &qword_1D9196488);
  sub_1D8CF48EC(&qword_1ECAB1878, &qword_1ECAB7018, &qword_1D9196480);
  sub_1D9177B9C();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7028, &qword_1D9196490);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07F0, &qword_1ECAB7008, &qword_1D9196470);
  sub_1D8CF48EC(&qword_1ECAB0310, &qword_1ECAB7028, &qword_1D9196490);
  v14 = sub_1D9177D2C();

  (*(v3 + 8))(v6, v2);
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7030, &qword_1D9196498);
  sub_1D8CF48EC(&qword_1ECAB0508, &qword_1ECAB7030, &qword_1D9196498);
  v15 = sub_1D917796C();

  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7038, &qword_1D91964A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7040, &qword_1D91964A8);
  sub_1D8CF48EC(&qword_1ECAB0AF8, &qword_1ECAB7038, &qword_1D91964A0);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B60, &qword_1ECAB7010, &qword_1D9196478);
  v16 = v20;
  v17 = sub_1D9177B1C();
  (*(v7 + 8))(v10, v16);
  return v17;
}

unint64_t sub_1D8D20F2C()
{
  result = qword_1ECAB17E8;
  if (!qword_1ECAB17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB17E8);
  }

  return result;
}

id _s18PodcastsFoundation10MTInterestC38predicateForFavoritedInterestsChannelsSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D8D34978();
  *(v0 + 64) = v2;
  *(v0 + 32) = 0x6C656E6E616863;
  *(v0 + 40) = 0xE700000000000000;
  v3 = sub_1D9178C8C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  *(v4 + 56) = v1;
  *(v4 + 64) = v2;
  strcpy((v4 + 32), "interestValue");
  *(v4 + 46) = -4864;
  v5 = sub_1D9178C8C();
  v6 = [v5 AND_];

  return v6;
}

uint64_t sub_1D8D21134(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FC8, &qword_1D9196430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FD0, &qword_1D9196438);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FD8, &qword_1D9196440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FE0, &qword_1D9196448);
  sub_1D8CF48EC(&qword_1ECAB1868, &qword_1ECAB6FD8, &qword_1D9196440);
  sub_1D9177B9C();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FE8, &qword_1D9196450);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07E0, &qword_1ECAB6FC8, &qword_1D9196430);
  sub_1D8CF48EC(&qword_1ECAB0300, &qword_1ECAB6FE8, &qword_1D9196450);
  v14 = sub_1D9177D2C();

  (*(v3 + 8))(v6, v2);
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FF0, &qword_1D9196458);
  sub_1D8CF48EC(&qword_1ECAB04F8, &qword_1ECAB6FF0, &qword_1D9196458);
  v15 = sub_1D917796C();

  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FF8, &qword_1D9196460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7000, &qword_1D9196468);
  sub_1D8CF48EC(&qword_1ECAB0AE8, &qword_1ECAB6FF8, &qword_1D9196460);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B50, &qword_1ECAB6FD0, &qword_1D9196438);
  v16 = v20;
  v17 = sub_1D9177B1C();
  (*(v7 + 8))(v10, v16);
  return v17;
}

uint64_t sub_1D8D21568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F88, &qword_1D91963F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F90, &qword_1D91963F8);
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v19 - v9;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F98, &qword_1D9196400);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FA0, &qword_1D9196408);
  sub_1D8CF48EC(&qword_1ECAB1870, &qword_1ECAB6F98, &qword_1D9196400);
  sub_1D9177B9C();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FA8, &qword_1D9196410);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07E8, &qword_1ECAB6F88, &qword_1D91963F0);
  sub_1D8CF48EC(&qword_1ECAB0308, &qword_1ECAB6FA8, &qword_1D9196410);
  v14 = sub_1D9177D2C();

  (*(v3 + 8))(v6, v2);
  v21 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FB0, &qword_1D9196418);
  sub_1D8CF48EC(&qword_1ECAB0500, &qword_1ECAB6FB0, &qword_1D9196418);
  v15 = sub_1D917796C();

  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FB8, &qword_1D9196420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6FC0, &qword_1D9196428);
  sub_1D8CF48EC(&qword_1ECAB0AF0, &qword_1ECAB6FB8, &qword_1D9196420);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B58, &qword_1ECAB6F90, &qword_1D91963F8);
  v16 = v20;
  v17 = sub_1D9177B1C();
  (*(v7 + 8))(v10, v16);
  return v17;
}

uint64_t NSUserDefaults.BOOLPublisher(forKey:)(void *a1, void *a2)
{
  v42[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v42 - v7;
  v9 = sub_1D9178FBC();
  v43 = *(v9 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v14 = *(v13 - 8);
  v45 = v13;
  v46 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v42 - v16;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EC0, &qword_1D9196348);
  v51 = *(v48 - 8);
  v18 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v20 = v42 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EC8, &qword_1D9196350);
  v52 = *(v50 - 8);
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v44 = v42 - v22;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED0, &qword_1D9196358);
  v47 = *(v49 - 8);
  v23 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v25 = v42 - v24;
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = a1;
  v42[1] = a2;
  v26[4] = a2;
  v27 = objc_opt_self();

  v42[0] = v2;
  v28 = [v27 defaultCenter];
  v29 = *MEMORY[0x1E696AA70];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v30 = sub_1D9178E1C();
  v53 = v30;
  v31 = sub_1D9178DBC();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177CEC();
  sub_1D8D2210C(v8);

  (*(v43 + 8))(v12, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D8DAF944;
  *(v32 + 24) = v26;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340);

  v33 = v45;
  sub_1D9177B9C();

  (*(v46 + 8))(v17, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4698, &qword_1D918A0C8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9189080;
  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(v33) = [v42[0] BOOLForKey_];

  *(v34 + 32) = v33;
  sub_1D8CF48EC(&qword_1EDCD0CA8, &qword_1ECAB6EC0, &qword_1D9196348);
  v36 = v44;
  v37 = v48;
  sub_1D9177CCC();

  (*(v51 + 8))(v20, v37);
  sub_1D8CF48EC(&qword_1EDCD0E90, &qword_1ECAB6EC8, &qword_1D9196350);
  v38 = v50;
  sub_1D9177D6C();
  (*(v52 + 8))(v36, v38);
  v39 = sub_1D8D22174();
  (*(v47 + 8))(v25, v49);
  v53 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED8, &qword_1D9196360);
  sub_1D8CF48EC(&qword_1EDCD0B80, &qword_1ECAB6ED8, &qword_1D9196360);
  v40 = sub_1D9177B1C();

  return v40;
}

uint64_t sub_1D8D220CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D2210C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D22174()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70F8, &qword_1D9196530);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7100, &qword_1D9196538);
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6ED0, &qword_1D9196358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7108, &unk_1D919CD70);
  sub_1D8CF48EC(&qword_1EDCD0E80, &qword_1ECAB6ED0, &qword_1D9196358);
  sub_1D9177B9C();
  LOBYTE(v18) = 2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7110, &qword_1D9196540);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1EDCD0CC0, &qword_1ECAB70F8, &qword_1D9196530);
  sub_1D8CF48EC(&qword_1EDCD0B30, &qword_1ECAB7110, &qword_1D9196540);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v18 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7118, &qword_1D9196548);
  sub_1D8CF48EC(&unk_1EDCD0BD8, &qword_1ECAB7118, &qword_1D9196548);
  v13 = sub_1D917796C();

  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7120, &qword_1D9196550);
  sub_1D8CF48EC(&qword_1EDCD0EA8, &qword_1ECAB7120, &qword_1D9196550);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1EDCD0EC0, &qword_1ECAB7100, &qword_1D9196538);
  v14 = v17;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t NSUserDefaults.integerPublisher(forKey:)(void *a1, void *a2)
{
  v43[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v43 - v7;
  v9 = sub_1D9178FBC();
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v43 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EE0, &qword_1D9196368);
  v52 = *(v49 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v20 = v43 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EE8, &qword_1D9196370);
  v53 = *(v51 - 8);
  v21 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v45 = v43 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF0, &qword_1D9196378);
  v48 = *(v50 - 8);
  v23 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v25 = v43 - v24;
  v26 = swift_allocObject();
  v26[2] = v2;
  v26[3] = a1;
  v43[1] = a2;
  v26[4] = a2;
  v27 = objc_opt_self();

  v43[0] = v2;
  v28 = [v27 defaultCenter];
  v29 = *MEMORY[0x1E696AA70];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v30 = sub_1D9178E1C();
  v54 = v30;
  v31 = sub_1D9178DBC();
  (*(*(v31 - 8) + 56))(v8, 1, 1, v31);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177CEC();
  sub_1D8D2210C(v8);

  (*(v44 + 8))(v12, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1D8DAF8AC;
  *(v32 + 24) = v26;
  sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340);

  v33 = v46;
  sub_1D9177B9C();

  (*(v47 + 8))(v17, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8680, &qword_1D9191FB0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D9189080;
  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v36 = [v43[0] integerForKey_];

  *(v34 + 32) = v36;
  sub_1D8CF48EC(&qword_1EDCD0CA0, &qword_1ECAB6EE0, &qword_1D9196368);
  v37 = v45;
  v38 = v49;
  sub_1D9177CCC();

  (*(v52 + 8))(v20, v38);
  sub_1D8CF48EC(&qword_1EDCD0E88, &qword_1ECAB6EE8, &qword_1D9196370);
  v39 = v51;
  sub_1D9177D6C();
  (*(v53 + 8))(v37, v39);
  v40 = sub_1D8D22CBC();
  (*(v48 + 8))(v25, v50);
  v54 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8);
  v41 = sub_1D9177B1C();

  return v41;
}

uint64_t sub_1D8D22CBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70D0, &qword_1D9196508);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70D8, &qword_1D9196510);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EF0, &qword_1D9196378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47F8, &qword_1D918A528);
  sub_1D8CF48EC(&qword_1EDCD0E78, &qword_1ECAB6EF0, &qword_1D9196378);
  sub_1D9177B9C();
  v19 = 0;
  v20 = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E0, &qword_1D9196518);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1EDCD0CB8, &qword_1ECAB70D0, &qword_1D9196508);
  sub_1D8CF48EC(&qword_1EDCD0B28, &qword_1ECAB70E0, &qword_1D9196518);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70E8, &qword_1D9196520);
  sub_1D8CF48EC(&qword_1EDCD0BD0, &qword_1ECAB70E8, &qword_1D9196520);
  v13 = sub_1D917796C();

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB70F0, &qword_1D9196528);
  sub_1D8CF48EC(&qword_1EDCD0EA0, &qword_1ECAB70F0, &qword_1D9196528);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1EDCD0EB8, &qword_1ECAB70D8, &qword_1D9196510);
  v14 = v18;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t sub_1D8D230C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D2310C(uint64_t a1)
{
  result = sub_1D8D230C4(&qword_1EDCD5120, type metadata accessor for EpisodePlayState);
  *(a1 + 8) = result;
  return result;
}

uint64_t defaultEpisodePlayTransitionRules.getter()
{
  if (qword_1EDCD17C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D23260()
{
  v0 = type metadata accessor for EpisodePlayState();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v57 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v57 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v57 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v57 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA878, &qword_1D91B8018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9195F30;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v27, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v27);
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v30 = v3;
      if (EnumCaseMultiPayload == 1)
      {
        v31 = 0xE700000000000000;
        v32 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v24);
        v31 = 0xE600000000000000;
        v32 = 0x646579616C70;
      }

      goto LABEL_13;
    }

    v31 = 0xE700000000000000;
    v33 = 1684956528;
LABEL_10:
    v32 = v33 | 0x676E6900000000;
    v30 = v3;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v31 = 0xE700000000000000;
    v33 = 2036427888;
    goto LABEL_10;
  }

  v30 = v3;
  if (EnumCaseMultiPayload == 4)
  {
    v31 = 0xE800000000000000;
    v32 = 0x646579616C706E75;
  }

  else
  {
    v31 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
  }

LABEL_13:
  v34 = v58;
  v35 = v57;
  *(inited + 32) = v32;
  *(inited + 40) = v31;
  *(inited + 48) = sub_1D90FE3FC;
  *(inited + 56) = 0;
  *v21 = 0;
  v21[1] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v21, v18);
  v36 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v21);
  if (v36 <= 2)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        v37 = 0xE700000000000000;
        v38 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v18);
        v37 = 0xE600000000000000;
        v38 = 0x646579616C70;
      }

      goto LABEL_25;
    }

    v37 = 0xE700000000000000;
    v39 = 1684956528;
LABEL_22:
    v38 = v39 | 0x676E6900000000;
    goto LABEL_25;
  }

  if (v36 == 3)
  {
    v37 = 0xE700000000000000;
    v39 = 2036427888;
    goto LABEL_22;
  }

  if (v36 == 4)
  {
    v37 = 0xE800000000000000;
    v38 = 0x646579616C706E75;
  }

  else
  {
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
  }

LABEL_25:
  *(inited + 64) = v38;
  *(inited + 72) = v37;
  *(inited + 80) = sub_1D90FE400;
  *(inited + 88) = 0;
  v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
  v41 = sub_1D9176E3C();
  (*(*(v41 - 8) + 56))(v15, 1, 1, v41);
  v15[v40] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v15, v35);
  v42 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v15);
  if (v42 <= 2)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        v43 = 0xE700000000000000;
        v44 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v35);
        v43 = 0xE600000000000000;
        v44 = 0x646579616C70;
      }

      goto LABEL_37;
    }

    v43 = 0xE700000000000000;
    v45 = 1684956528;
LABEL_34:
    v44 = v45 | 0x676E6900000000;
    goto LABEL_37;
  }

  if (v42 == 3)
  {
    v43 = 0xE700000000000000;
    v45 = 2036427888;
    goto LABEL_34;
  }

  if (v42 == 4)
  {
    v43 = 0xE800000000000000;
    v44 = 0x646579616C706E75;
  }

  else
  {
    v43 = 0xE700000000000000;
    v44 = 0x6E776F6E6B6E75;
  }

LABEL_37:
  *(inited + 96) = v44;
  *(inited + 104) = v43;
  *(inited + 112) = sub_1D90FE404;
  *(inited + 120) = 0;
  *v10 = 0;
  *(v10 + 1) = 0;
  *(v10 + 15) = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v10, v34);
  v46 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v10);
  if (v46 <= 2)
  {
    if (v46)
    {
      if (v46 == 1)
      {
        v47 = 0xE700000000000000;
        v48 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v34);
        v47 = 0xE600000000000000;
        v48 = 0x646579616C70;
      }

      goto LABEL_49;
    }

    v47 = 0xE700000000000000;
    v49 = 1684956528;
LABEL_46:
    v48 = v49 | 0x676E6900000000;
    goto LABEL_49;
  }

  if (v46 == 3)
  {
    v47 = 0xE700000000000000;
    v49 = 2036427888;
    goto LABEL_46;
  }

  if (v46 == 4)
  {
    v47 = 0xE800000000000000;
    v48 = 0x646579616C706E75;
  }

  else
  {
    v47 = 0xE700000000000000;
    v48 = 0x6E776F6E6B6E75;
  }

LABEL_49:
  *(inited + 128) = v48;
  *(inited + 136) = v47;
  *(inited + 144) = sub_1D90FE408;
  *(inited + 152) = 0;
  v50 = v59;
  swift_storeEnumTagMultiPayload();
  sub_1D8D239FC(v50, v30);
  v51 = swift_getEnumCaseMultiPayload();
  sub_1D8D23A60(v50);
  if (v51 <= 2)
  {
    if (v51)
    {
      if (v51 == 1)
      {
        v52 = 0xE700000000000000;
        v53 = 0x6C616974726170;
      }

      else
      {
        sub_1D8CF5EF8(v30);
        v52 = 0xE600000000000000;
        v53 = 0x646579616C70;
      }

      goto LABEL_61;
    }

    v52 = 0xE700000000000000;
    v54 = 1684956528;
LABEL_58:
    v53 = v54 | 0x676E6900000000;
    goto LABEL_61;
  }

  if (v51 == 3)
  {
    v52 = 0xE700000000000000;
    v54 = 2036427888;
    goto LABEL_58;
  }

  if (v51 == 4)
  {
    v52 = 0xE800000000000000;
    v53 = 0x646579616C706E75;
  }

  else
  {
    v52 = 0xE700000000000000;
    v53 = 0x6E776F6E6B6E75;
  }

LABEL_61:
  *(inited + 160) = v53;
  *(inited + 168) = v52;
  *(inited + 176) = sub_1D8E3B050;
  *(inited + 184) = 0;
  v55 = sub_1D8D23ABC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA880, qword_1D91B8028);
  result = swift_arrayDestroy();
  qword_1EDCD17C8 = v55;
  return result;
}

uint64_t sub_1D8D239FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D23A60(uint64_t a1)
{
  v2 = type metadata accessor for EpisodePlayState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8D23AD8()
{
  result = qword_1EDCD5118;
  if (!qword_1EDCD5118)
  {
    type metadata accessor for EpisodePlayState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5118);
  }

  return result;
}

unint64_t sub_1D8D23B30(uint64_t a1)
{
  result = sub_1D8D23B58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D8D23B58()
{
  result = qword_1EDCD3990;
  if (!qword_1EDCD3990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3990);
  }

  return result;
}

uint64_t sub_1D8D23BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA808, &qword_1D91B79C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  strcpy((inited + 32), "notBookmarked");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_1D90FA600;
  *(inited + 56) = 0;
  *(inited + 64) = 0x6B72616D6B6F6F62;
  *(inited + 72) = 0xEA00000000006465;
  *(inited + 80) = sub_1D90FA60C;
  *(inited + 88) = 0;
  v1 = sub_1D8D23D18(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA810, qword_1D91B79C8);
  result = swift_arrayDestroy();
  qword_1EDCD13C8 = v1;
  return result;
}

uint64_t defaultEpisodeBookmarkTransitionRules.getter()
{
  if (qword_1EDCD13C0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D8D23D30()
{
  result = qword_1EDCD3988;
  if (!qword_1EDCD3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD3988);
  }

  return result;
}

id sub_1D8D23E3C()
{
  v0 = type metadata accessor for FeedManagerLocalConfiguration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_timeoutIntervalForResource] = 0x4072C00000000000;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__workQueueConcurrent] = 1;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_useBackgroundFetchForFeedDownloads] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_keepsFeedFileInTempDirAfterDownload] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration__supportsBatchInsertion] = 0;
  v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_usesCleanEpisodeTitles] = 1;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentDeltaUpdateLimit] = 3;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentBootstrapUpdateLimit] = 2;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_concurrentRSSUpdateLimit] = 3;
  v2 = &v1[OBJC_IVAR____TtC18PodcastsFoundation29FeedManagerLocalConfiguration_deltaNumberOfEpisodesToRequestPerPage];
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = v1;
  v4.super_class = v0;
  result = objc_msgSendSuper2(&v4, sel_init);
  qword_1EDCD23F0 = result;
  return result;
}

os_log_t _MTLogCategoryFeedUpdate()
{
  v0 = os_log_create("com.apple.podcasts", "FeedUpdate");

  return v0;
}

id PodcastFeedDownloader.init()()
{
  v0 = type metadata accessor for MediaRequestController();
  v1 = [objc_allocWithZone(v0) init];
  v12[3] = v0;
  v12[4] = &protocol witness table for MediaRequestController;
  v12[0] = v1;
  v2 = type metadata accessor for PodcastFeedDownloader();
  v3 = objc_allocWithZone(v2);
  v4 = v3 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController;
  sub_1D8CFD9D8(v12, v3 + OBJC_IVAR____TtC18PodcastsFoundation21PodcastFeedDownloader_mediaRequestController);
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v7 = *(v6 + 16);
  v8 = v1;
  v7(1, v5, v6);
  swift_endAccess();
  v11.receiver = v3;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_1D8D24100(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_1D8D24154(uint64_t a1)
{
  sub_1D8D241C8(a1);

  return swift_unknownObjectRelease();
}

id sub_1D8D241C8(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1D8D2424C();
}

id sub_1D8D2424C()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0));
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x98);
  swift_beginAccess();
  return [v1 setDownloadManager_];
}

Swift::Void __swiftcall EpisodeStateRepository.startObservingChanges()()
{
  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker);
  v2 = *(v1 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1D8D244B0;
  *(v3 + 24) = v1;
  v5[4] = sub_1D8D24508;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D8D24488;
  v5[3] = &block_descriptor_91;
  v4 = _Block_copy(v5);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

uint64_t sub_1D8D244E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8D24510(void *a1)
{
  v122 = a1;
  v1 = sub_1D917744C();
  v2 = *(v1 - 8);
  v120 = v1;
  v121 = v2;
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v119 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v118 = &v97 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8F8, &unk_1D91B9128);
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v113 = &v97 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v111 = &v97 - v12;
  v112 = sub_1D9178FBC();
  v110 = *(v112 - 8);
  v13 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v109 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA900, &qword_1D91B9138);
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v97 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA908, &qword_1D91B9140);
  v117 = *(v19 - 8);
  v20 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v97 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA910, &qword_1D91B9148);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v97 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA918, &unk_1D91B9150);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v97 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F60, &qword_1D91963C8);
  v34 = *(*(v33 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v33);
  if (v122[5])
  {
    v39 = v122;
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v40 = v120;
    v41 = __swift_project_value_buffer(v120, qword_1ECAAFC48);
    swift_beginAccess();
    v42 = v121;
    v43 = v119;
    (v121)[2](v119, v41, v40);

    v44 = sub_1D917741C();
    v45 = sub_1D9178CEC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 136315138;
      v123 = v39[5];
      v124[0] = v47;
      v48 = v123;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
      v49 = sub_1D917826C();
      v51 = sub_1D8CFA924(v49, v50, v124);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_1D8CEC000, v44, v45, "Skipping startTrackingChanges(): Already tracking changes with current token: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x1DA72CB90](v47, -1, -1);
      MEMORY[0x1DA72CB90](v46, -1, -1);
    }

    return (v42[1])(v43, v40);
  }

  else
  {
    v97 = v18;
    v98 = v15;
    v99 = v22;
    v100 = v19;
    v101 = &v97 - v36;
    v102 = v27;
    v103 = v32;
    v104 = v37;
    v105 = v24;
    v106 = v23;
    v107 = v29;
    v108 = v28;
    v119 = v35;
    v53 = v122[4];
    v54 = v122;
    v55 = [v53 persistentStoreCoordinator];
    if (v55 && (v56 = v55, v57 = [v55 currentPersistentHistoryTokenFromStores_], v56, v57))
    {
      v58 = v54[5];
      v54[5] = v57;
      v59 = v57;
      v121 = v59;

      sub_1D8D2545C();
      v60 = [objc_opt_self() defaultCenter];
      v61 = *MEMORY[0x1E695D420];
      v62 = v109;
      sub_1D9178FCC();

      v63 = v54[3];
      v64 = sub_1D9178DBC();
      v65 = v111;
      (*(*(v64 - 8) + 56))(v111, 1, 1, v64);
      v124[1] = v63;
      sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
      sub_1D8CFD7B0(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
      sub_1D8CF3274(&qword_1EDCD0980, &qword_1EDCD7B70, 0x1E69E9610);
      v67 = v112;
      v66 = v113;
      sub_1D9177D3C();
      sub_1D8CF48EC(&qword_1ECAB0988, &qword_1ECABA8F8, &unk_1D91B9128);
      v68 = v97;
      v69 = v115;
      sub_1D9177CEC();
      (*(v114 + 8))(v66, v69);
      sub_1D8D08A50(v65, &qword_1ECAB4D70, &unk_1D918BCE0);
      (*(v110 + 8))(v62, v67);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
      sub_1D8CF48EC(&qword_1ECAB03A8, &qword_1ECABA900, &qword_1D91B9138);
      v70 = v99;
      v71 = v98;
      sub_1D9177B9C();

      (*(v116 + 8))(v68, v71);
      sub_1D91777FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA938, &qword_1D91B9178);
      sub_1D8CF48EC(&unk_1ECAB0720, &qword_1ECABA908, &qword_1D91B9140);
      sub_1D8CF48EC(&qword_1EDCD0BF0, &qword_1ECABA938, &qword_1D91B9178);
      v72 = v102;
      v73 = v100;
      sub_1D9177DDC();
      (*(v117 + 8))(v70, v73);
      swift_allocObject();
      swift_weakInit();
      sub_1D8CF48EC(&qword_1ECAB0548, &qword_1ECABA910, &qword_1D91B9148);
      v74 = v103;
      v75 = v106;
      sub_1D9177B2C();

      (*(v105 + 8))(v72, v75);
      swift_allocObject();
      swift_weakInit();
      v76 = v101;
      v77 = v108;
      sub_1D917757C();

      (*(v107 + 8))(v74, v77);
      v78 = sub_1D8D256B8();

      (*(v104 + 8))(v76, v119);
      v79 = v54[2];
      v54[2] = v78;
    }

    else
    {
      if (qword_1ECAAFC40 != -1)
      {
        swift_once();
      }

      v80 = v120;
      v81 = __swift_project_value_buffer(v120, qword_1ECAAFC48);
      swift_beginAccess();
      v82 = v121;
      v83 = v118;
      (v121)[2](v118, v81, v80);

      v84 = sub_1D917741C();
      v85 = sub_1D9178CFC();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v124[0] = v87;
        *v86 = 136315394;
        v123 = [v53 persistentStoreCoordinator];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA920, &qword_1D91B9160);
        v88 = sub_1D917826C();
        v90 = sub_1D8CFA924(v88, v89, v124);

        *(v86 + 4) = v90;
        *(v86 + 12) = 2080;
        v91 = [v53 persistentStoreCoordinator];
        if (v91)
        {
          v92 = v91;
          v93 = [v91 currentPersistentHistoryTokenFromStores_];
        }

        else
        {
          v93 = 0;
        }

        v123 = v93;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
        v94 = sub_1D917826C();
        v96 = sub_1D8CFA924(v94, v95, v124);

        *(v86 + 14) = v96;
        _os_log_impl(&dword_1D8CEC000, v84, v85, "Unable to fetch initial Persistent History Token, we can't monitor changes from EpisodeStateRepository. persistentStoreCoordinator %s, token %s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v87, -1, -1);
        MEMORY[0x1DA72CB90](v86, -1, -1);

        return (v82[1])(v118, v80);
      }

      else
      {

        return (v82[1])(v83, v80);
      }
    }
  }
}

uint64_t sub_1D8D253A0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Synchronized.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1D8D1665C(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1D8D2545C()
{
  v1 = v0;
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);

  v8 = sub_1D917741C();
  v9 = sub_1D9178CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v18 = *(v1 + 40);
    v19 = v11;
    v12 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA928, &qword_1D91B9168);
    v13 = sub_1D917826C();
    v15 = sub_1D8CFA924(v13, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "New persistent history token %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D8D256B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F50, &qword_1D91963B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F58, &qword_1D91963C0);
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v8 = v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F60, &qword_1D91963C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F68, &qword_1D91963D0);
  v17[1] = MEMORY[0x1E695BC80];
  sub_1D8CF48EC(&qword_1ECAB0B80, &qword_1ECAB6F60, &qword_1D91963C8);
  sub_1D9177B9C();
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F70, &qword_1D91963D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1D917795C();
  sub_1D8CF48EC(&qword_1ECAB07B0, &qword_1ECAB6F50, &qword_1D91963B8);
  sub_1D8CF48EC(&qword_1EDCD0B38, &qword_1ECAB6F70, &qword_1D91963D8);
  v12 = sub_1D9177D2C();

  (*(v1 + 8))(v4, v0);
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F78, &qword_1D91963E0);
  sub_1D8CF48EC(&qword_1ECAB04F0, &qword_1ECAB6F78, &qword_1D91963E0);
  v13 = sub_1D917796C();

  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F80, &qword_1D91963E8);
  sub_1D8CF48EC(&qword_1ECAB0AE0, &qword_1ECAB6F80, &qword_1D91963E8);
  sub_1D9177B2C();

  sub_1D8CF48EC(&qword_1ECAB0B38, &qword_1ECAB6F58, &qword_1D91963C0);
  v14 = v18;
  v15 = sub_1D9177B1C();
  (*(v5 + 8))(v8, v14);
  return v15;
}

uint64_t sub_1D8D25AE0()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  swift_getAssociatedConformanceWitness();
  type metadata accessor for AnyEpisodeStateDataSource();

  if (sub_1D91786AC())
  {
    v5 = 4;
    do
    {
      v6 = v5 - 4;
      v7 = sub_1D917868C();
      sub_1D917862C();
      if (v7)
      {
        v8 = *(v1 + 8 * v5);

        v9 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D91794BC();
        v9 = v5 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      sub_1D8D244E0();

      ++v5;
    }

    while (v9 != sub_1D91786AC());
  }
}

uint64_t sub_1D8D25C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_projectBox();
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, a3);
  (*(a4 + 24))(a3, a4);
  return (*(v6 + 8))(v9, a3);
}

uint64_t sub_1D8D25D6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D25DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D25E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t EpisodeStateRepository.publisherForChanges(in:)(unsigned __int8 *a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA960, &qword_1D91B9220);
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v19[-v5];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA968, &qword_1D91B9228);
  v25 = *(v23 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v19[-v8];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA970, &qword_1D91B9230);
  v24 = *(v22 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v19[-v11];
  v20 = *a1;
  v13 = *(*(v1 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) + 16);
  v26 = *(v1 + 24);
  v27 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA978, &qword_1D91B9238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  sub_1D8CF48EC(&qword_1EDCD0BA8, &qword_1ECABA978, &qword_1D91B9238);
  sub_1D8CF48EC(&qword_1EDCD0B58, &qword_1ECABA958, &unk_1D91B9210);
  sub_1D91776BC();
  *(swift_allocObject() + 16) = v20;
  sub_1D8CF48EC(&qword_1EDCD0C90, &qword_1ECABA960, &qword_1D91B9220);
  v14 = v21;
  sub_1D9177B9C();

  (*(v3 + 8))(v6, v14);
  sub_1D8CF48EC(&qword_1EDCD0CB0, &qword_1ECABA968, &qword_1D91B9228);
  v15 = v23;
  sub_1D9177C4C();
  (*(v25 + 8))(v9, v15);
  sub_1D8CF48EC(&qword_1EDCD0C70, &qword_1ECABA970, &qword_1D91B9230);
  v16 = v22;
  v17 = sub_1D9177B1C();
  (*(v24 + 8))(v12, v16);
  return v17;
}

uint64_t sub_1D8D26304(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8D26344(uint64_t *a1, int a2)
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

uint64_t sub_1D8D2638C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;
  return sub_1D8D263A4(v3);
}

uint64_t sub_1D8D263A4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id static SyncKeysRepository.shared.getter()
{
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1F78;

  return v1;
}

uint64_t PodcastsStateCoordinatorPersistentStore.init(syncKeysRepository:)(uint64_t a1)
{
  *(v1 + 16) = [objc_allocWithZone(type metadata accessor for FeedURLComposer()) init];
  *(v1 + 24) = a1;
  return v1;
}

unint64_t sub_1D8D264F8()
{
  result = qword_1EDCD49C8;
  if (!qword_1EDCD49C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD49C8);
  }

  return result;
}

uint64_t sub_1D8D26560(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v9 = *(a3 + 16);
    v10 = *(a3 + 32);
    v11 = *(a3 + 48);
    v8 = type metadata accessor for CacheDomain.DiskCaches();
    return (*(*(v8 - 8) + 48))(&a1[*(a3 + 60)], a2, v8);
  }
}

uint64_t sub_1D8D26634()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1EDCD5B28 = result;
  return result;
}

uint64_t AssetCache.eraseToAnyAssetCache()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  return AnyAssetCache.init<A>(source:)(v10, AssociatedTypeWitness, v13, a1, a2, a3);
}

uint64_t AnyAssetCache.init<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v36 = a5;
  v37 = a1;
  v41 = a6;
  v42 = a3;
  v38 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 16);
  v39 = v12;
  v40 = v14;
  (v14)(v13, v11);
  v15 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  v17 = v42;
  *(v16 + 3) = v42;
  *(v16 + 4) = a4;
  *(v16 + 5) = a5;
  v18 = *(v9 + 32);
  v18(v16 + v15, v13, a4);
  v35 = v18;
  v19 = v40;
  v20 = v41;
  *v41 = sub_1D8E6B16C;
  v20[1] = v16;
  v21 = v37;
  v19(v13, v37, a4);
  v22 = swift_allocObject();
  *(v22 + 2) = v38;
  *(v22 + 3) = v17;
  v23 = v36;
  *(v22 + 4) = a4;
  *(v22 + 5) = v23;
  v18(v22 + v15, v13, a4);
  v24 = v40;
  v25 = v41;
  v41[2] = sub_1D8E6B1D4;
  v25[3] = v22;
  v24(v13, v21, a4);
  v26 = swift_allocObject();
  v27 = v38;
  v28 = v42;
  *(v26 + 2) = v38;
  *(v26 + 3) = v28;
  *(v26 + 4) = a4;
  *(v26 + 5) = v23;
  v29 = v35;
  v35(v26 + v15, v13, a4);
  v30 = v41;
  v41[4] = sub_1D8E6B23C;
  v30[5] = v26;
  v31 = v30;
  v29(v13, v37, a4);
  v32 = swift_allocObject();
  v33 = v42;
  *(v32 + 2) = v27;
  *(v32 + 3) = v33;
  *(v32 + 4) = a4;
  *(v32 + 5) = v23;
  result = (v29)(v32 + v15, v13, a4);
  v31[6] = sub_1D8E6B2A8;
  v31[7] = v32;
  return result;
}

uint64_t sub_1D8D26C78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t static UniformBucketingStrategy.uniform3000MaxStrategy.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB1930 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1ECAB1940;
  *a1 = qword_1ECAB1938;
  a1[1] = v2;
}

uint64_t sub_1D8D26D4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4770, &unk_1D918BAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918B9B0;
  *(v0 + 32) = xmmword_1D918B9C0;
  *(v0 + 48) = xmmword_1D918B9D0;
  *(v0 + 64) = xmmword_1D918B9E0;
  *(v0 + 80) = xmmword_1D918B9F0;
  *(v0 + 96) = xmmword_1D918BA00;
  *(v0 + 112) = 0x4082C00000000000;
  *(v0 + 120) = xmmword_1D918BA10;
  *(v0 + 136) = xmmword_1D918BA20;
  *(v0 + 152) = xmmword_1D918BA30;
  *(v0 + 168) = xmmword_1D918BA40;
  v2 = v0;

  sub_1D8D26E64(&v2);

  qword_1ECAB1938 = 0x40A7700000000000;
  qword_1ECAB1940 = v2;
  return result;
}

uint64_t sub_1D8D26E64(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D2709C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D9179A2C();
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
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
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
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D8E59848(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1D8D26F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4770, &unk_1D918BAD0);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

__n128 EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)@<Q0>(__n128 *a1@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, __n128 *a8@<X8>)
{
  if (a2 != 17)
  {
    goto LABEL_23;
  }

  a2 = a1[4].n128_u8[0];
  if (a2 <= 4)
  {
    if (a1[4].n128_u8[0] > 1u)
    {
      if (a2 == 2)
      {
        LOBYTE(a2) = 9;
        goto LABEL_23;
      }

      goto LABEL_9;
    }

    if (!a1[4].n128_u8[0])
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (a1[4].n128_u8[0] <= 7u)
  {
    if (a2 != 5)
    {
      if (a2 == 6)
      {
        LOBYTE(a2) = 13;
      }

      goto LABEL_23;
    }

LABEL_9:
    LOBYTE(a2) = 2;
    goto LABEL_23;
  }

  if (a2 == 8 || a2 == 9)
  {
    goto LABEL_17;
  }

  v8 = a1->n128_u64[0];
  v9 = a1->n128_i64[1];
  v10 = a1[2].n128_i64[1];
  v11 = a1[3].n128_u64[0] | a1[3].n128_u64[1];
  v12 = a1[2].n128_u64[0] | a1[1].n128_u64[1] | a1[1].n128_u64[0];
  if (!(v11 | a1->n128_u64[0] | v10 | v12 | v9))
  {
    LOBYTE(a2) = 14;
    goto LABEL_23;
  }

  v13 = v11 | v10 | v12 | v9;
  if (v8 == 1 && !v13)
  {
    goto LABEL_15;
  }

  if (v8 == 2 && !v13)
  {
    LOBYTE(a2) = 15;
    goto LABEL_23;
  }

  if (v8 == 3 && !v13)
  {
LABEL_17:
    LOBYTE(a2) = 0;
    goto LABEL_23;
  }

  if (v8 == 4 && !v13)
  {
LABEL_15:
    LOBYTE(a2) = 12;
    goto LABEL_23;
  }

  if (v8 == 5 && !v13)
  {
    goto LABEL_9;
  }

  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v8 == 6;
  }

  if (v16)
  {
    LOBYTE(a2) = 7;
  }

  else
  {
    LOBYTE(a2) = 16;
  }

LABEL_23:
  v14 = a1[3];
  a8[2] = a1[2];
  a8[3] = v14;
  a8[4].n128_u8[0] = a1[4].n128_u8[0];
  result = a1[1];
  *a8 = *a1;
  a8[1] = result;
  a8[4].n128_u8[1] = a2;
  a8[4].n128_u64[1] = a3;
  a8[5].n128_u8[0] = a4 & 1;
  a8[5].n128_u8[1] = a5 & 1;
  a8[5].n128_u8[2] = a6 & 1;
  a8[5].n128_u8[3] = a7 & 1;
  a8[5].n128_u8[4] = 0;
  return result;
}

uint64_t EpisodeListType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[64];
  v6 = (*(v0 + 1) << 8) | ((*(v0 + 5) | (v0[7] << 16)) << 40) | v1;
  if (v5 <= 4)
  {
    if (v0[64] <= 1u)
    {
      if (v0[64])
      {
        return 0xD000000000000011;
      }

      else
      {
        return 0xD000000000000019;
      }
    }

    if (v5 == 2)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1D917946C();

      v12 = 0x80000001D91D0960;
      v13 = 0xD000000000000013;
LABEL_29:
      v20[0] = v13;
      v20[1] = v12;
      goto LABEL_30;
    }

    if (v5 == 3)
    {
      sub_1D917946C();

      strcpy(v20, "allAvailable(");
      HIWORD(v20[1]) = -4864;
LABEL_30:
      MEMORY[0x1DA7298F0](v6, v2);
      goto LABEL_31;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91D0940);
    type metadata accessor for MTEpisodeTypeFilter(0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7108, &unk_1D919CD70);
    v7 = sub_1D917826C();
LABEL_27:
    MEMORY[0x1DA7298F0](v7, v9);

LABEL_31:
    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return v20[0];
  }

  if (v0[64] <= 7u)
  {
    if (v5 != 5)
    {
      if (v5 == 6)
      {
        sub_1D917946C();

        v20[0] = 0xD000000000000010;
        v20[1] = 0x80000001D91D0900;
        if (v1)
        {
          v7 = 1702195828;
        }

        else
        {
          v7 = 0x65736C6166;
        }

        if (v1)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }

        v9 = v8;
        goto LABEL_27;
      }

      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_1D917946C();

      v12 = 0x80000001D91D08E0;
      v13 = 0xD000000000000012;
      goto LABEL_29;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();

    v10 = "stationShowEpisodes(";
    goto LABEL_24;
  }

  if (v5 == 8)
  {
    v20[0] = 0x28776F6873;
    v20[1] = 0xE500000000000000;
    MEMORY[0x1DA7298F0](v6, v2);
    MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
    v7 = EpisodeUserFilter.title.getter(v3, v4);
    goto LABEL_27;
  }

  if (v5 == 9)
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D917946C();

    v10 = "unfollowLibraryShow(";
LABEL_24:
    v12 = (v10 - 32) | 0x8000000000000000;
    v13 = 0xD000000000000014;
    goto LABEL_29;
  }

  v15 = *(v0 + 6);
  v14 = *(v0 + 7);
  v16 = *(v0 + 4);
  v17 = *(v0 + 5);
  v18 = v3 | v2 | v4;
  if (!(v18 | v14 | v15 | v17 | v6 | v16))
  {
    return 0x64616F6C6E776F64;
  }

  v19 = v18 | v14 | v15 | v17 | v16;
  if (v6 == 1 && !v19)
  {
    return 0x796C746E65636572;
  }

  if (v6 == 2 && !v19)
  {
    return 0x7079746F746F7270;
  }

  if (v6 == 3 && !v19)
  {
    return 0x6F7369704577656ELL;
  }

  if (v6 == 4 && !v19)
  {
    return 0x65756E69746E6F63;
  }

  if (v6 == 5 && !v19)
  {
    return 0x704574736574616CLL;
  }

  if (v6 == 6 && v19 == 0)
  {
    return 0x6B72616D6B6F6F62;
  }

  return 0x706F546863746177;
}

id EpisodeListSettings.predicate.getter()
{
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  v1 = *(v0 + 9);
  v2 = *(v0 + 80);
  v3 = *(v0 + 81);
  v4 = *(v0 + 82);
  v5 = *(v0 + 83);
  v22 = *(v0 + 8);
  LOBYTE(v23) = v2;
  BYTE1(v23) = v3;
  BYTE2(v23) = v4;
  BYTE3(v23) = v5;
  BYTE4(v23) = *(v0 + 84);
  v6 = sub_1D8D27A2C();
  if (v1 == 3)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [objc_opt_self() predicateForPubDateLimit_];
    v11 = [v6 AND_];

    v6 = v11;
    if ((v2 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v12 = [objc_opt_self() predicateForVisuallyPlayed_];
  v13 = [v6 AND_];

  v6 = v13;
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v16 = [objc_opt_self() predicateForAudio_];
    v17 = [v6 AND_];

    v6 = v17;
    if (v5)
    {
      goto LABEL_6;
    }

    return v6;
  }

LABEL_9:
  v14 = [objc_opt_self() predicateForEpisodeTypeFilter_];
  v15 = [v6 AND_];

  v6 = v15;
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (v5)
  {
LABEL_6:
    v7 = [objc_opt_self() predicateForEntitledEpisodes];
    v8 = [v6 AND_];

    return v8;
  }

  return v6;
}

id sub_1D8D27A2C()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v84 = *v0;
  v85 = v6;
  v7 = v0[3];
  v86 = v0[2];
  v87 = v7;
  v88 = *(v0 + 64);
  v8 = v84;
  v9 = v85;
  if (v88 <= 4u)
  {
    if (v88 <= 1u)
    {
      if (v88)
      {
        v51 = *(v84 + 16);
        if (v51)
        {
          v83 = MEMORY[0x1E69E7CC0];

          sub_1D8E3151C(0, v51, 0);
          v52 = v83;
          v54 = *(v2 + 16);
          v53 = v2 + 16;
          v55 = v8 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
          v79 = *(v53 + 56);
          v80 = v54;
          do
          {
            v80(v5, v55, v1);
            v56 = sub_1D9176ACC();
            v82 = MEMORY[0x1E69E6158];
            *&v81 = v56;
            *(&v81 + 1) = v57;
            (*(v53 - 8))(v5, v1);
            v83 = v52;
            v59 = *(v52 + 16);
            v58 = *(v52 + 24);
            if (v59 >= v58 >> 1)
            {
              sub_1D8E3151C((v58 > 1), v59 + 1, 1);
              v52 = v83;
            }

            *(v52 + 16) = v59 + 1;
            sub_1D8D65618(&v81, (v52 + 32 * v59 + 32));
            v55 += v79;
            --v51;
          }

          while (v51);
          sub_1D8D0D2AC(&v84);
        }

        v72 = objc_opt_self();
        v73 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        v74 = sub_1D91785DC();

        v68 = [v73 initWithArray_];

        v75 = [objc_opt_self() sharedInstance];
        v70 = [v75 privateQueueContext];

        v71 = [v72 predicateForNewsFromYourShows:v68 ctx:v70];
      }

      else
      {
        v23 = *(v84 + 16);
        if (v23)
        {
          v83 = MEMORY[0x1E69E7CC0];

          sub_1D8E3151C(0, v23, 0);
          v24 = v83;
          v26 = *(v2 + 16);
          v25 = v2 + 16;
          v27 = v8 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
          v79 = *(v25 + 56);
          v80 = v26;
          do
          {
            v80(v5, v27, v1);
            v28 = sub_1D9176ACC();
            v82 = MEMORY[0x1E69E6158];
            *&v81 = v28;
            *(&v81 + 1) = v29;
            (*(v25 - 8))(v5, v1);
            v83 = v24;
            v31 = *(v24 + 16);
            v30 = *(v24 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_1D8E3151C((v30 > 1), v31 + 1, 1);
              v24 = v83;
            }

            *(v24 + 16) = v31 + 1;
            sub_1D8D65618(&v81, (v24 + 32 * v31 + 32));
            v27 += v79;
            --v23;
          }

          while (v23);
          sub_1D8D0D2AC(&v84);
        }

        v65 = objc_opt_self();
        v66 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        v67 = sub_1D91785DC();

        v68 = [v66 initWithArray_];

        v69 = [objc_opt_self() sharedInstance];
        v70 = [v69 privateQueueContext];

        v71 = [v65 predicateForCategoryPageFromYourShows:v68 ctx:v70];
      }

      v22 = v71;

      return v22;
    }

    if (v88 == 2)
    {
      v32 = objc_opt_self();

      v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v84);
      v34 = [v32 predicateForAllEpisodesOnPodcastUuid:v33 includeNonAudioEpisodes:1];

      v35 = EpisodeUserFilter.basePredicate.getter(2, 2);
      v36 = [v34 AND_];
LABEL_36:
      v46 = v36;

      return v46;
    }

    if (v88 != 3)
    {
      v44 = objc_opt_self();

      v45 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v84);
      v46 = [v44 predicateForAllEpisodesOnPodcastUuid:v45 includeNonAudioEpisodes:1];

      if (v9)
      {
        v47 = [v44 predicateForEpisodeTypeFilter_];
        v48 = [v46 AND_];

        v46 = v48;
      }

      if (BYTE8(v9) != 2)
      {
        v49 = [v44 predicateForVisuallyPlayed_];
        v50 = [v46 AND_];

        return v50;
      }

      return v46;
    }

    v18 = objc_opt_self();

    v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D8D0D2AC(&v84);
    v20 = [v18 predicateForAllEpisodesOnPodcastUuid:v19 includeNonAudioEpisodes:1];
LABEL_13:
    v22 = v20;

    return v22;
  }

  if (v88 <= 7u)
  {
    if (v88 != 5)
    {
      if (v88 == 6)
      {
        v10 = objc_opt_self();
        v11 = [v10 predicateForVisuallyPlayed_];
        v12 = [v10 predicateForListenedAfterMarkedAsPlayed];
        v13 = [v12 NOT];

        v14 = [v11 AND_];
        v15 = [v10 predicateForListenNow];
        v16 = [v14 NOT];
        v17 = [v15 AND_];

        return v17;
      }

      v60 = objc_opt_self();

      v61 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      sub_1D8D0D2AC(&v84);
      v34 = [v60 predicateForAllEpisodesOnPodcastUuid:v61 includeNonAudioEpisodes:1];

      v35 = EpisodeUserFilter.basePredicate.getter(3, 2);
      v36 = [v34 AND_];
      goto LABEL_36;
    }

    v37 = objc_opt_self();
    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v22 = [v37 predicateForEpisodesInStationShow_];

    return v22;
  }

  if (v88 == 8)
  {
    v39 = objc_opt_self();

    sub_1D8F95C9C(v9, SBYTE8(v9));
    v40 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v41 = [v39 predicateForAllEpisodesOnPodcastUuid:v40 includeNonAudioEpisodes:1];

    v42 = EpisodeUserFilter.basePredicate.getter(v9, SBYTE8(v9));
    v17 = [v41 AND_];

    sub_1D8F95794(v9, SBYTE8(v9));
    return v17;
  }

  if (v88 == 9)
  {
    v21 = objc_opt_self();

    v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D8D0D2AC(&v84);
    v20 = [v21 predicateForLibraryEpisodesOnPodcastUuid_];
    goto LABEL_13;
  }

  v62 = *(&v86 + 1) | *(&v87 + 1) | v87;
  if (!(v85 | *(&v84 + 1) | v84 | *(&v85 + 1) | v62 | v86))
  {
    v64 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
    goto LABEL_50;
  }

  v63 = v85 | *(&v84 + 1) | *(&v85 + 1) | v62 | v86;
  if (v84 == 1 && !v63)
  {
    v64 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
LABEL_50:

    return v64;
  }

  if (v84 == 2 && !v63)
  {
    v64 = [objc_opt_self() predicateForListenNow];
    goto LABEL_50;
  }

  if (v84 != 3 || v63)
  {
    if (v84 == 4 && !v63)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1D918C190;
      v77 = objc_opt_self();
      *(v76 + 32) = [v77 predicateForPartiallyPlayed];
      *(v76 + 40) = [v77 predicateForPodcastIsNotHidden];
      sub_1D8D4D430();
      v19 = sub_1D91785DC();

      v20 = [objc_opt_self() andPredicateWithSubpredicates_];
      goto LABEL_13;
    }

    if (v84 != 5 || v63)
    {
      if (v84 != 6 || v63)
      {
        v64 = [objc_opt_self() predicateForIsTopLevel];
      }

      else
      {
        v64 = [objc_opt_self() predicateForBookmarkedEpisodes];
      }
    }

    else
    {
      v64 = [objc_opt_self() predicateForListenNowLatestEpisodes];
    }

    goto LABEL_50;
  }

  return _sSo9MTEpisodeC18PodcastsFoundationE35predicateForCurrentNewEpisodesShelfSo11NSPredicateCvgZ_0();
}

uint64_t EpisodeSortType.descriptors.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
      goto LABEL_22;
    case 2:
      v1 = [objc_opt_self() sortDescriptorsForFirstAvailableAscending_];
      goto LABEL_22;
    case 3:
      v1 = [objc_opt_self() sortDescriptorsForFirstAvailableAscending_];
      goto LABEL_22;
    case 4:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 5:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 6:
      v1 = [objc_opt_self() seasonSortDescriptors_];
      goto LABEL_22;
    case 7:
      v1 = [objc_opt_self() sortDescriptorsForLastBookmarkedDateAscending_];
      goto LABEL_22;
    case 8:
      v1 = [objc_opt_self() sortDescriptorsForLastBookmarkedDateAscending_];
      goto LABEL_22;
    case 9:
      v1 = [objc_opt_self() sortDescriptorsForDownloadedDateAscending_];
      goto LABEL_22;
    case 10:
      v1 = [objc_opt_self() sortDescriptorsForDownloadedDateAscending_];
      goto LABEL_22;
    case 11:
      v1 = [objc_opt_self() sortDescriptorsForTitle];
      goto LABEL_22;
    case 12:
      v1 = [objc_opt_self() sortDescriptorsForRecentlyPlayed];
      goto LABEL_22;
    case 13:
      v2 = os_feature_enabled_up_next_with_modified_date_score();
      v3 = objc_opt_self();
      if (v2)
      {
        v1 = [v3 sortDescriptorsForModifiedDateUpNextScore];
      }

      else
      {
        v1 = [v3 sortDescriptorsForListenNow];
      }

      goto LABEL_22;
    case 14:
      return MEMORY[0x1E69E7CC0];
    case 15:
      v1 = [objc_opt_self() sortDescriptorsForUpNextScore];
      goto LABEL_22;
    default:
      v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
LABEL_22:
      v5 = v1;
      sub_1D8D28BC8();
      v6 = sub_1D91785FC();

      return v6;
  }
}

unint64_t sub_1D8D28BC8()
{
  result = qword_1EDCD09F0;
  if (!qword_1EDCD09F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD09F0);
  }

  return result;
}

void sub_1D8D28C14(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = sub_1D8D28E48();
  [v17 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v18 = sub_1D91785DC();

  [v17 setSortDescriptors_];

  [v17 setFetchBatchSize_];
  type metadata accessor for FetchedResultsPublisherImplementation();
  v19 = swift_allocObject();
  *(v19 + 16) = a12;
  *(v19 + 24) = a13;
  swift_allocObject();
  *(&v21 + 1) = sub_1D8D38B78;
  *&v21 = a11;
  v20 = sub_1D8D28EA0(a1, a2, v17, a5, a7, a8, a9, a10, v21, v19);

  *a6 = v20;
}

void FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a4 >= 100)
  {
    a4 = 100;
  }

  sub_1D8D28C14(a1, a2, a3, a4, a5, &v14, a7, a8, a9, a10, a11, a12, a13);
  *a6 = v14;
}

id sub_1D8D28E48()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t sub_1D8D28EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v10 + 112) = v19;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 96) = a10;
  return v10;
}

uint64_t sub_1D8D28F64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t PaginatedPublisher.eraseToAnyPaginatedPublisher()(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyPaginatedPublisherPrivate();
  (*(v3 + 16))(v6, v1, a1);
  return sub_1D8D29178(v6);
}

uint64_t sub_1D8D29094(uint64_t a1)
{
  v1 = *(a1 + 144);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D29178(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 144) - 8) + 32))(v5 + *(*v5 + 160), a1);
  return v5;
}

uint64_t sub_1D8D29250()
{
  v1 = *(*v0 + 144);
  v2 = *(*(*v0 + 152) + 8);
  v3 = v0 + *(*v0 + 160);
  return sub_1D9177AFC();
}

uint64_t sub_1D8D292B8()
{
  (*(*(*(*v0 + 144) - 8) + 8))(v0 + *(*v0 + 160));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8D29364()
{
  sub_1D8D29394();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8D29394()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  MEMORY[0x1DA72CC70](v0 + 104);
  v5 = *(v0 + 112);

  return v0;
}

uint64_t type metadata accessor for WidgetNowPlayingInfo()
{
  result = qword_1EDCD6220;
  if (!qword_1EDCD6220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D29440()
{
  sub_1D8CEFDCC(319, &qword_1EDCD5EC8);
  if (v0 <= 0x3F)
  {
    sub_1D8CF4B30();
    if (v1 <= 0x3F)
    {
      sub_1D8CEFDCC(319, &qword_1EDCD76F8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D8D295C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v57 = a8;
  v55 = a6;
  v54 = a5;
  v52 = a3;
  v53 = a4;
  v60 = a1;
  v58 = sub_1D917739C();
  v49 = *(v58 - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - v13;
  v59 = sub_1D917734C();
  v51 = *(v59 - 8);
  v15 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  v56 = a7;

  sub_1D917737C();
  v20 = v19;
  sub_1D917731C();
  v21 = sub_1D917737C();
  v22 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v23 = v10;
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v22, v25, "Task Enqueued", "", v24, 2u);
    v26 = v24;
    v10 = v23;
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  v46 = v14;
  sub_1D8CF5C74(v60, v14);
  v28 = v49;
  v27 = v50;
  v29 = *(v49 + 16);
  v47 = a2;
  v29(v50, a2, v58);
  v30 = v51;
  v31 = *(v51 + 16);
  v48 = v20;
  v31(v16, v20, v59);
  v32 = (*(v28 + 80) + 40) & ~*(v28 + 80);
  v33 = (v10 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v30 + 80) + v33 + 17) & ~*(v30 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  *(v35 + 4) = v57;
  v36 = v27;
  v37 = v58;
  (*(v28 + 32))(&v35[v32], v36, v58);
  v38 = &v35[v33];
  v39 = v53;
  *v38 = v52;
  *(v38 + 1) = v39;
  v38[16] = v54;
  v40 = v59;
  (*(v30 + 32))(&v35[v34], v16, v59);
  v41 = &v35[(v15 + v34 + 7) & 0xFFFFFFFFFFFFFFF8];
  v42 = v56;
  *v41 = v55;
  *(v41 + 1) = v42;
  v43 = sub_1D8F4D698(0, 0, v46, &unk_1D9197098, v35);
  (*(v28 + 8))(v47, v37);
  sub_1D8CF5CE4(v60);
  (*(v30 + 8))(v48, v40);
  return v43;
}

uint64_t sub_1D8D299C4()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80) + 17) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v10 = *(v0 + v8 + 8);

  return swift_deallocObject();
}

uint64_t _sScT18PodcastsFoundations5Error_pRs_rlE8priority10signposter4name5blockScTyxsAB_pGScPSg_2os12OSSignposterVs12StaticStringVxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = sub_1D8D295C8(a1, a2, a3, a4, a5, a6, a7, a8);

  return v8;
}

uint64_t sub_1D8D29B6C(uint64_t a1)
{
  v3 = v2;
  v20 = v1[4];
  v4 = *(sub_1D917739C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1D917734C() - 8);
  v8 = (v6 + *(v7 + 80) + 17) & ~*(v7 + 80);
  v9 = v1[3];
  v19 = v1[2];
  v10 = v1 + v6;
  v11 = *(v1 + v6);
  v12 = *(v10 + 1);
  v13 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = v10[16];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1D8D58924;

  return sub_1D8D29D3C(a1, v19, v9, v1 + v5, v11, v12, v16, v1 + v8);
}

uint64_t sub_1D8D29D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 88) = v20;
  *(v8 + 96) = v21;
  *(v8 + 240) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a8;
  *(v8 + 56) = a1;
  *(v8 + 64) = a4;
  v9 = sub_1D917878C();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v12 = sub_1D91773AC();
  *(v8 + 128) = v12;
  v13 = *(v12 - 8);
  *(v8 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  v15 = sub_1D917734C();
  *(v8 + 168) = v15;
  v16 = *(v15 - 8);
  *(v8 + 176) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D29F0C, 0, 0);
}

uint64_t sub_1D8D29F0C()
{
  v1 = *(v0 + 64);
  v2 = sub_1D917737C();
  v3 = sub_1D9178F5C();
  result = sub_1D917918C();
  if (result)
  {
    v5 = *(v0 + 72);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = *(v0 + 80);
        v7 = swift_slowAlloc();
        *v7 = 0;
        v8 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v2, v3, v8, v5, "", v7, 2u);
        MEMORY[0x1DA72CB90](v7, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v0 + 48);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v9 = *(v0 + 88);
  (*(*(v0 + 176) + 16))(*(v0 + 208), *(v0 + 80), *(v0 + 168));
  v10 = sub_1D91773FC();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v0 + 216) = sub_1D91773EC();
  v17 = (v9 + *v9);
  v13 = v9[1];
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  *v14 = v0;
  v14[1] = sub_1D8D585CC;
  v15 = *(v0 + 96);
  v16 = *(v0 + 56);

  return v17(v16);
}

uint64_t sub_1D8D2A140()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8D2A198();
  }

  return result;
}

void sub_1D8D2A198()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSharedUserDefaults];
  v2 = kMTUserAppSessionsUserDefaultKey;
  v3 = [v1 integerForKey_];

  if (qword_1ECAB0BF0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0BF8);
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_14:
      __break(1u);
      return;
    }

    *(v7 + 14) = v8;
    v9 = v7;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Increasing user app session count from: %ld to %ld.", v7, 0x16u);
    MEMORY[0x1DA72CB90](v9, -1, -1);

    v10 = 0;
  }

  else
  {

    v8 = v3 + 1;
    v10 = __OFADD__(v3, 1);
  }

  v11 = [v0 _applePodcastsFoundationSharedUserDefaults];
  if (v10)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  [v11 setInteger:v8 forKey:v2];
}

uint64_t _s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaKYAcntYaKs8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 136) = a5;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1D917739C();
  *(v9 + 80) = v10;
  v11 = *(v10 - 8);
  *(v9 + 88) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 96) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  *(v9 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D2A484, 0, 0);
}

uint64_t sub_1D8D2A484()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 136);
  sub_1D8CF5C74(*(v0 + 24), v2);
  (*(v4 + 16))(v1, v5, v3);
  v10 = sub_1D8D295C8(v2, v1, v8, v7, v9, v6, v18, v19);
  *(v0 + 112) = v10;
  v11 = *(MEMORY[0x1E69E86A8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v12 = v0;
  v12[1] = sub_1D8D58A18;
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);
  v16 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v15, v10, v14, v13, v16);
}

uint64_t sub_1D8D2A5E8()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = objc_opt_self();
  aBlock[4] = sub_1D8D2A80C;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_22;
  v3 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v2 perform:v3 error:aBlock];
  _Block_release(v3);
  v4 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v4;
LABEL_3:

    v6 = *MEMORY[0x1E69E9840];
    return result;
  }

  swift_beginAccess();
  if (!*v1)
  {
    sub_1D8E3AFFC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v7 = *v1;

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1D8D2A7BC()
{

  return swift_deallocObject();
}

void sub_1D8D2A814(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(a1 + 16) = v2;
}

uint64_t sub_1D8D2A8CC()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8D2A908(uint64_t a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a1;
  v7[4] = a2;
  aBlock[4] = sub_1D8D2AB54;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_54;
  v8 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v6 perform:v8 error:aBlock];
  _Block_release(v8);
  v9 = aBlock[0];
  if (aBlock[0])
  {
    swift_willThrow();
    v9;
LABEL_3:

    v11 = *MEMORY[0x1E69E9840];
    return result;
  }

  swift_beginAccess();
  if (!*v5)
  {
    sub_1D8E3AFFC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    goto LABEL_3;
  }

  v12 = *v5;

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1D8D2AB04()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1D8D2AB54()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v1();
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = v4;
}

id sub_1D8D2ABB4()
{
  v1 = [*(v0 + 24) importContext];

  return v1;
}

os_log_t _MTLogCategoryCloudSync()
{
  v0 = os_log_create("com.apple.podcasts", "CloudSync");

  return v0;
}

id sub_1D8D2AD4C()
{
  result = [objc_allocWithZone(type metadata accessor for RestrictionsController()) init];
  qword_1ECAB1CD0 = result;
  return result;
}

id sub_1D8D2ADFC()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  *&v0[OBJC_IVAR___PFRestrictionsController_observation] = 0;
  v6 = sub_1D8D2AFA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB920, &qword_1D91BED90);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *&v0[OBJC_IVAR___PFRestrictionsController__state] = v7;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = sub_1D917886C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  v11 = v8;
  sub_1D8E91528(0, 0, v5, &unk_1D91BED98, v10);

  return v11;
}

uint64_t sub_1D8D2AFA0()
{
  if (qword_1ECAB1120 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB1130;
  v1 = [qword_1ECAB1130 isExplicitContentAllowedOutAsk_];
  v2 = [v0 isBoolSettingLockedDownByRestrictions_];
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1ECAB0E30);
  v4 = sub_1D917741C();
  v5 = sub_1D9178CEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v1;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "isExplicitContentAllowed: %{BOOL}d", v6, 8u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v2;
    _os_log_impl(&dword_1D8CEC000, v7, v8, "isSettingLockedDown: %{BOOL}d", v9, 8u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v10 = 3;
  if (!v2)
  {
    v10 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

id sub_1D8D2B18C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    qword_1ECAB1130 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *SiriDonator.init(backgroundTaskManager:)(uint64_t a1)
{
  v2 = v1;
  v49 = a1;
  v45 = sub_1D9178DFC();
  v43 = *(v45 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1D9178FBC();
  v40 = *(v42 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA780, &unk_1D91B7600);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - v9;
  v10 = sub_1D9178D8C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1D9178E0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v48 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue;
  sub_1D8CFD888();
  sub_1D9177E7C();
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8098], v12);
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD768(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  *&v1[v48] = sub_1D9178E4C();
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_podcastsUpdateSubscription] = 0;
  v19 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__throttleInterval;
  v20 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA7A0, qword_1D91B7610);
  v21 = swift_allocObject();
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x80000001D91D62A0;
  v22 = v49;
  v21[4] = 0x4014000000000000;
  v21[5] = v20;
  v21[6] = &type metadata for DoubleTransform;
  v21[7] = &off_1F5485E98;
  *&v2[v19] = v21;
  *&v2[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_backgroundTaskManager] = v22;
  v23 = objc_allocWithZone(type metadata accessor for MediaRequestController());
  swift_unknownObjectRetain();
  v24 = [v23 init];
  *&v2[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_mediaRequestController] = v24;
  v25 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v26 = swift_allocObject();
  *(v26 + 20) = 0;
  *(v26 + 16) = 0;
  *&v2[v25] = v26;
  v27 = type metadata accessor for SiriDonator();
  v51.receiver = v2;
  v51.super_class = v27;
  v28 = objc_msgSendSuper2(&v51, sel_init);
  if ([objc_opt_self() isRunningOnHomepod])
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = [objc_opt_self() defaultCenter];
    v30 = v39;
    sub_1D9178FCC();

    v31 = *&v28[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__throttleInterval];

    sub_1D8D2BAC0();

    v32 = v41;
    sub_1D9178DDC();
    v50 = *&v28[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
    sub_1D8CFD768(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
    sub_1D8CFD768(&qword_1EDCD0980, sub_1D8CFD888);
    v33 = v44;
    v34 = v42;
    sub_1D9177D1C();
    (*(v43 + 8))(v32, v45);
    (*(v40 + 8))(v30, v34);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D8CF48EC(&qword_1EDCD0BE8, &qword_1ECABA780, &unk_1D91B7600);
    v35 = v47;
    v36 = sub_1D9177D9C();
    swift_unknownObjectRelease();

    (*(v46 + 8))(v33, v35);
    v37 = *&v28[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_podcastsUpdateSubscription];
    *&v28[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_podcastsUpdateSubscription] = v36;
  }

  return v28;
}

uint64_t sub_1D8D2B99C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

double sub_1D8D2BAC0()
{
  v1 = v0[6];
  (*(v0[7] + 8))(v5, v0[5], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v2 = swift_dynamicCast();
  if ((v2 & 1) == 0)
  {
    v6 = 0;
  }

  v3 = v0 + 4;
  if (v2)
  {
    v3 = &v6;
  }

  return *v3;
}

uint64_t sub_1D8D2BBC0(uint64_t a1)
{
  v2 = sub_1D9177F1C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_backgroundTaskManager);
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v7 beginBackgroundTask_];

  v9 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue);
  *v6 = v9;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v10 = v9;
  LOBYTE(v8) = sub_1D9177F4C();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    if ([objc_opt_self() isRunningOnHomepod])
    {
      v12 = 0;
    }

    else
    {
      v12 = 2;
    }

    v13 = [objc_opt_self() ams_sharedAccountStore];
    v14 = [v13 ams_activeiTunesAccount];

    v26 = 0;
    v27 = 0;
    v28 = &type metadata for Persona.CurrentUserExecutionStrategy;
    v29 = &off_1F5482BB8;
    v15 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_mediaRequestController);
    v22 = type metadata accessor for MediaRequestController();
    v23 = &protocol witness table for MediaRequestController;
    *&v21 = v15;
    v24[0] = v12;
    v30 = v10;
    _s11DataFetcherCMa();
    v16 = swift_allocObject();
    *(v16 + 80) = 0;
    *(v16 + 88) = 0;
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    sub_1D8D04E9C(&v21, v16 + 32);
    *(v16 + 72) = v10;
    v25 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7F0, &qword_1D91B7700);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D9189080;
    sub_1D8D35688(v24, v17 + 32);
    v18 = v10;
    v19 = v15;
    sub_1D8D2BE64(v17);

    return sub_1D8D330B0(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D2BE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v3 = sub_1D917744C();
    __swift_project_value_buffer(v3, qword_1EDCD1098);

    v4 = sub_1D917741C();
    v5 = sub_1D9178D1C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v1;

      _os_log_impl(&dword_1D8CEC000, v4, v5, "Created %ld donation jobs.", v6, 0xCu);
      MEMORY[0x1DA72CB90](v6, -1, -1);
    }

    else
    {
    }

    return sub_1D8D356E4(a1);
  }

  else
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD1098);
    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "No donation jobs created.", v10, 2u);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    return sub_1D8DA9C30();
  }
}

void sub_1D8D2C044(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v53[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = *(v3 + 9);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_11;
  }

  if ((DonationService.supportsSiriIndexing.getter() & 1) != 0 && (*v3 > 1u || *(*(v3 + 1) + 24)))
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD1098);
    sub_1D8D35688(v3, v54);
    sub_1D8D35688(v3, v53);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v52 = v18;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v19 = *(*(&v54[0] + 1) + 24);
      if (v19)
      {
        v20 = [v19 description];
        v21 = sub_1D917820C();
        v23 = v22;
      }

      else
      {
        v21 = 0x6974636120726F66;
        v23 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v54);
      v42 = sub_1D8CFA924(v21, v23, &v52);

      *(v17 + 14) = v42;
      *(v17 + 22) = 2080;
      v43 = 0xD000000000000011;
      v44 = 0x80000001D91D63B0;
      if (v53[0] != 1)
      {
        v43 = 0xD000000000000013;
        v44 = 0x80000001D91D6390;
      }

      if (v53[0])
      {
        v45 = v43;
      }

      else
      {
        v45 = 0x20646F70656D6F48;
      }

      if (v53[0])
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xEF7972616D697250;
      }

      sub_1D8D330B0(v53);
      v47 = sub_1D8CFA924(v45, v46, &v52);

      *(v17 + 24) = v47;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Account %{private,mask.hash}s: Starting donation job with donation type: %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {

      sub_1D8D330B0(v53);
      sub_1D8D330B0(v54);
    }

    sub_1D8D35688(v3, v54);
    v48 = swift_allocObject();
    v49 = v54[3];
    v50 = v54[4];
    *(v48 + 48) = v54[2];
    *(v48 + 64) = v49;
    *(v48 + 80) = v50;
    v51 = v54[1];
    *(v48 + 16) = v54[0];
    *(v48 + 32) = v51;
    *(v48 + 96) = a1;
    *(v48 + 104) = a2;

    sub_1D8D35C30(sub_1D8DA88A8, v48);

    return;
  }

  if (qword_1EDCD1090 != -1)
  {
    goto LABEL_39;
  }

LABEL_11:
  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD1098);
  sub_1D8D35688(v3, v54);
  sub_1D8D35688(v3, v53);
  v25 = sub_1D917741C();
  v26 = sub_1D9178CFC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v52 = v28;
    *v27 = 141558531;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    v29 = *(*(&v54[0] + 1) + 24);
    if (v29)
    {
      v30 = [v29 description];
      v31 = sub_1D917820C();
      v33 = v32;
    }

    else
    {
      v31 = 0x6974636120726F66;
      v33 = 0xEF72657375206576;
    }

    sub_1D8D330B0(v54);
    v34 = sub_1D8CFA924(v31, v33, &v52);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2080;
    v35 = 0xD000000000000011;
    v36 = 0x80000001D91D63B0;
    if (v53[0] != 1)
    {
      v35 = 0xD000000000000013;
      v36 = 0x80000001D91D6390;
    }

    if (v53[0])
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x20646F70656D6F48;
    }

    if (v53[0])
    {
      v38 = v36;
    }

    else
    {
      v38 = 0xEF7972616D697250;
    }

    sub_1D8D330B0(v53);
    v39 = sub_1D8CFA924(v37, v38, &v52);

    *(v27 + 24) = v39;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "Account %{private,mask.hash}s: Invalid configuration for donationType: %s.", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {

    sub_1D8D330B0(v53);
    sub_1D8D330B0(v54);
  }

  sub_1D90F9BD8();
  v40 = swift_allocError();
  *v41 = 0;
  *(v41 + 8) = 1;
  a1();
}

uint64_t sub_1D8D2C6F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  v3 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1D8D2C79C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_1D8D5FF3C;

  return v6(v2 + 16);
}

uint64_t sub_1D8D2C890()
{
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  v0[18] = __swift_project_value_buffer(v1, qword_1ECAB0E30);
  v2 = sub_1D917741C();
  v3 = sub_1D9178CEC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Reloading setting", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v0[19] = v5;
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_1D8D5F774;

  return sub_1D8D4C3A0(v5);
}

uint64_t sub_1D8D2CA04()
{
  v1 = v0[20];
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 BOOLForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D8D5F440;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D8D5F354;
  v0[13] = &block_descriptor_35_4;
  v0[14] = v4;
  [v3 valueWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t RestrictionsController.state.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void PerformanceLoadable.init(log:signpostName:startMetadata:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for PerformanceLoadable();
  (*(*(a7 - 8) + 56))(a8 + *(v16 + 40), 1, 2, a7);
  *(a8 + 24) = a1;
  *a8 = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  v17 = *(v16 + 36);
  v18 = a1;
  sub_1D917731C();
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  sub_1D8D2CD28(v16);
}

uint64_t sub_1D8D2CD28(uint64_t a1)
{
  v3 = sub_1D917734C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[3];
  sub_1D917731C();
  (*(v4 + 40))(v1 + *(a1 + 36), v7, v3);
  v9 = v1[5];
  if (v9)
  {
    v10 = v1[4];
    v11 = v1[5];

    sub_1D9178F5C();
    v12 = *v1;
    v13 = v1[1];
    v14 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D9189080;
    *(v15 + 56) = MEMORY[0x1E69E6158];
    *(v15 + 64) = sub_1D8D34978();
    *(v15 + 32) = v10;
    *(v15 + 40) = v9;
    sub_1D91772EC();
  }

  else
  {
    sub_1D9178F5C();
    v17 = *v1;
    v18 = v1[1];
    v19 = *(v1 + 16);
    return sub_1D91772FC();
  }
}

id sub_1D8D2CF84()
{
  result = [objc_allocWithZone(type metadata accessor for DeferredLaunchTaskCoordinator()) init];
  qword_1EDCD2410 = result;
  return result;
}

id static DeferredLaunchTaskCoordinator.shared.getter()
{
  if (qword_1EDCD2408 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2410;

  return v1;
}

uint64_t sub_1D8D2D034(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D9177E9C();
  v33 = *(v35 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v32 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue;
  if (!a1)
  {
    goto LABEL_4;
  }

  v15 = a2;
  v16 = *(v3 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  sub_1D8CFD888();
  v17 = v16;
  a2 = v15;
  v18 = v17;
  v19 = a1;
  v20 = sub_1D917914C();

  if (v20)
  {
    __break(1u);
LABEL_4:
    v19 = *(v4 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__workQueue);
  }

  v21 = *(v4 + v14);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v31 = v9;
  v23[4] = v36;
  v23[5] = v19;
  v23[6] = ObjectType;
  aBlock[4] = sub_1D8D3F324;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_9;
  v24 = _Block_copy(aBlock);
  swift_retain_n();
  v25 = a1;
  v26 = v21;

  v30 = v19;
  v27 = v32;
  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v28 = v34;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v27, v28, v24);
  _Block_release(v24);

  (*(v31 + 8))(v28, v8);
  (*(v33 + 8))(v27, v35);
}

uint64_t sub_1D8D2D3F8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D2D430()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

void sub_1D8D2D4B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ((*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled) & 1) == 0)
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1EDCDE818);
      v10 = sub_1D917741C();
      v11 = sub_1D9178CFC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1D8CEC000, v10, v11, "Launch task deferred without deferral timer. The task may never run.", v12, 2u);
        MEMORY[0x1DA72CB90](v12, -1, -1);
      }
    }

    if (v8[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring] == 1)
    {
      v13 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks;
      swift_beginAccess();
      v14 = *&v8[v13];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v13] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_1D8D2D7F8(0, *(v14 + 2) + 1, 1, v14);
        *&v8[v13] = v14;
      }

      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1D8D2D7F8((v16 > 1), v17 + 1, 1, v14);
      }

      *(v14 + 2) = v17 + 1;
      v18 = &v14[24 * v17];
      *(v18 + 4) = a2;
      *(v18 + 5) = a3;
      *(v18 + 6) = a4;
      *&v8[v13] = v14;
      swift_endAccess();

      v19 = a4;
    }

    else
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1EDCDE818);
      v21 = sub_1D917741C();
      v22 = sub_1D9178CDC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "Task deferred after launch tasks have already started. Scheduling it immediately.", v23, 2u);
        MEMORY[0x1DA72CB90](v23, -1, -1);
      }

      sub_1D8DB935C(a2, a3, a4);
    }
  }
}

uint64_t sub_1D8D2D778()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCDE818);
  __swift_project_value_buffer(v0, qword_1EDCDE818);
  return sub_1D917742C();
}

char *sub_1D8D2D7F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6018, &qword_1D9191FB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t FetchedResultsCountPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = a2;
  v18[3] = a3;
  v18[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8560, &qword_1D91A1BF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8568, &qword_1D91A1C00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v18 - v12;
  v14 = *v3;
  v15 = *(*v3 + 112);
  v18[6] = sub_1D8D40CC8;
  v18[7] = v14;
  os_unfair_lock_lock(v15 + 4);
  sub_1D8D40CF8(&v19);
  os_unfair_lock_unlock(v15 + 4);
  v16 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB8570, &qword_1D91A1C08);
  sub_1D8CF48EC(qword_1EDCD1458, qword_1ECAB8570, &qword_1D91A1C08);
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1EDCD0CE0, &qword_1ECAB8560, &qword_1D91A1BF8);
  sub_1D9177D6C();
  (*(v5 + 8))(v8, v4);
  sub_1D917764C();
  return (*(v10 + 8))(v13, v9);
}

char *MTPodcast.standardArtworkRequests.getter()
{
  MTPodcast.artworkModel.getter(v30);
  v38 = v30[7];
  v39 = v30[8];
  v40 = v30[9];
  v41 = v30[10];
  v34 = v30[3];
  v35 = v30[4];
  v36 = v30[5];
  v37 = v30[6];
  v31 = v30[0];
  v32 = v30[1];
  v33 = v30[2];
  if (sub_1D8D2E02C(&v31) == 1)
  {
    v0 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __dst[8] = v39;
    __dst[9] = v40;
    __dst[10] = v41;
    __dst[4] = v35;
    __dst[5] = v36;
    __dst[6] = v37;
    __dst[7] = v38;
    __dst[0] = v31;
    __dst[1] = v32;
    __dst[2] = v33;
    __dst[3] = v34;
    ArtworkModel.baseRequest.getter(__src);
    sub_1D8D41320(v30);
    memcpy(__dst, __src, 0x108uLL);
    sub_1D8D41388(__dst, __src);
    v0 = sub_1D8D40948(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_1D8D40948((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    memcpy(&v0[264 * v2 + 32], __src, 0x108uLL);
    v3 = MTLCreateSystemDefaultDevice();
    if (v3 && (v4 = v3, v5 = [v3 hasUnifiedMemory], v6 = objc_msgSend(v4, sel_supportsFamily_, 1004), swift_unknownObjectRelease(), v5) && v6)
    {
      v7 = MTWidgetBackgroundPreferredArtworkSize();
      ArtworkRequest.resized(to:displayScale:)(1.0, 0, __src, v7, v8);

      *&__src[13] = &unk_1F5460FC0;
      sub_1D8D41388(__src, v15);
      v10 = *(v0 + 2);
      v9 = *(v0 + 3);
      if (v10 >= v9 >> 1)
      {
        v0 = sub_1D8D40948((v9 > 1), v10 + 1, 1, v0);
      }

      sub_1D8D58578(__dst);
      *(v0 + 2) = v10 + 1;
      memcpy(&v0[264 * v10 + 32], v15, 0x108uLL);
      v11 = __src;
    }

    else
    {
      v11 = __dst;
    }

    sub_1D8D58578(v11);
  }

  MTPodcast.uberBackgroundArtworkModel.getter(v16);
  v25 = v16[8];
  v26 = v16[9];
  v27 = v16[10];
  v21 = v16[4];
  v22 = v16[5];
  v23 = v16[6];
  v24 = v16[7];
  v17 = v16[0];
  v18 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  if (sub_1D8D2E02C(&v17) != 1)
  {
    __src[8] = v25;
    __src[9] = v26;
    __src[10] = v27;
    __src[4] = v21;
    __src[5] = v22;
    __src[6] = v23;
    __src[7] = v24;
    __src[0] = v17;
    __src[1] = v18;
    __src[2] = v19;
    __src[3] = v20;
    ArtworkModel.baseRequest.getter(v15);
    sub_1D8D41320(v16);
    memcpy(__src, v15, 0x108uLL);
    sub_1D8D41388(__src, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_1D8D40948(0, *(v0 + 2) + 1, 1, v0);
    }

    v13 = *(v0 + 2);
    v12 = *(v0 + 3);
    if (v13 >= v12 >> 1)
    {
      v0 = sub_1D8D40948((v12 > 1), v13 + 1, 1, v0);
    }

    sub_1D8D58578(__src);
    *(v0 + 2) = v13 + 1;
    memcpy(&v0[264 * v13 + 32], v15, 0x108uLL);
  }

  return v0;
}

uint64_t sub_1D8D2DFC8()
{
  v0 = sub_1D917662C();
  __swift_allocate_value_buffer(v0, qword_1EDCD7730);
  __swift_project_value_buffer(v0, qword_1EDCD7730);
  return sub_1D91765EC();
}

uint64_t sub_1D8D2E02C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ArtworkModel.baseRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v37 = v1[8];
  v38 = v3;
  v39 = v1[10];
  v4 = v1[5];
  v33 = v1[4];
  v34 = v4;
  v5 = v1[7];
  v35 = v1[6];
  v36 = v5;
  v6 = v1[1];
  v29 = *v1;
  v30 = v6;
  v7 = v1[3];
  v31 = v1[2];
  v32 = v7;
  sub_1D8D36E5C(&v29, v28);
  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  v9 = __swift_project_value_buffer(v8, qword_1EDCD5E28);
  v10 = sub_1D9178CDC();
  SignpostAndLogTrace(domain:level:)(v9, v10, v28);
  v11 = qos_class_self();
  if (v11 > 20)
  {
    if (v11 == QOS_CLASS_DEFAULT)
    {
LABEL_10:
      v12 = 1;
      goto LABEL_11;
    }

    if (v11 != QOS_CLASS_USER_INITIATED)
    {
      if (v11 == QOS_CLASS_USER_INTERACTIVE)
      {
        v12 = 3;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = 2;
  }

  else
  {
    if (v11 != QOS_CLASS_BACKGROUND)
    {
      goto LABEL_10;
    }

    v12 = 0;
  }

LABEL_11:
  sub_1D8D728EC(v28, v27);
  *(a1 + 224) = 0u;
  *(a1 + 201) = 16;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, 3.0);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, 600.0);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, 600.0);
  v13 = *(&v31 + 1);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, *(&v31 + 1));
  v14 = *&v32;
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, *&v32);
  v41.width = 0.0;
  v41.height = 0.0;
  v40.width = 600.0;
  v40.height = 600.0;
  if (CGSizeEqualToSize(v40, v41))
  {
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  if (v13 == 0.0 || v14 == 0.0)
  {
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }
  }

  sub_1D8D08A50(v28, &qword_1ECAB4928, &qword_1D918B380);
  v21 = v38;
  *(a1 + 128) = v37;
  *(a1 + 144) = v21;
  *(a1 + 160) = v39;
  v22 = v34;
  *(a1 + 64) = v33;
  *(a1 + 80) = v22;
  v23 = v36;
  *(a1 + 96) = v35;
  *(a1 + 112) = v23;
  v24 = v30;
  *a1 = v29;
  *(a1 + 16) = v24;
  v25 = v32;
  *(a1 + 32) = v31;
  *(a1 + 48) = v25;
  *(a1 + 176) = 0x4082C00000000000;
  *(a1 + 184) = 0x4082C00000000000;
  *(a1 + 192) = 0x4008000000000000;
  *(a1 + 200) = 4096;
  *(a1 + 202) = 0;
  *(a1 + 203) = v12;
  *(a1 + 208) = MEMORY[0x1E69E7CC0];
  *(a1 + 216) = 3;
  return sub_1D8D412B0(v27, a1 + 224);
}

uint64_t SignpostAndLogTrace(domain:level:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v46 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v39 - v6;
  v7 = sub_1D917734C();
  v43 = *(v7 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D917744C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D917739C();
  v41 = *(v16 - 8);
  v42 = v16;
  v17 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - v21;
  v23 = *(v12 + 16);
  v23(v15, a1, v11, v20);
  sub_1D917736C();
  sub_1D917737C();
  v39 = v10;
  sub_1D917731C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE8, &unk_1D9195258);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D918A530;
  (v23)(v15, a1, v11);
  v47 = 0;
  v48 = 0xE000000000000000;
  v25 = v7;
  sub_1D917964C();
  v26 = v47;
  v27 = v48;
  v28 = type metadata accessor for LoggerTrace(0);
  *(v24 + 56) = v28;
  *(v24 + 64) = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v24 + 32));
  *boxed_opaque_existential_0 = v26;
  boxed_opaque_existential_0[1] = v27;
  (*(v12 + 32))(boxed_opaque_existential_0 + *(v28 + 20), v15, v11);
  *(boxed_opaque_existential_0 + *(v28 + 24)) = v45;
  v31 = v40;
  v30 = v41;
  v32 = v42;
  (*(v41 + 16))(v40, v22, v42);
  v34 = v43;
  v33 = v44;
  v35 = v39;
  (*(v43 + 16))(v44, v39, v25);
  (*(v34 + 56))(v33, 0, 1, v25);
  *(v24 + 96) = type metadata accessor for SignpostTrace(0);
  *(v24 + 104) = &protocol witness table for SignpostTrace;
  v36 = __swift_allocate_boxed_opaque_existential_0((v24 + 72));
  SignpostTrace.init(domain:identifier:)(v31, v33, v36);
  (*(v34 + 8))(v35, v25);
  result = (*(v30 + 8))(v22, v32);
  v38 = v46;
  v46[3] = &type metadata for CombinedTrace;
  v38[4] = &protocol witness table for CombinedTrace;
  *v38 = v24;
  return result;
}

uint64_t sub_1D8D2E820(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v14 = a1;
  v15 = a2;

  if (sub_1D917839C())
  {
    v7 = sub_1D91782EC();
    sub_1D8FAF2F4(v7);
    a1 = v14;
    a2 = v15;
  }

  if (qword_1EDCD7728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDCD7730);
  (*(v5 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  v11 = sub_1D8D37264(a1, a2, sub_1D8D37400);

  if ((v11 & 1) == 0)
  {

    return 0;
  }

  return a1;
}

uint64_t sub_1D8D2EA08()
{
  v1 = sub_1D917662C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

id sub_1D8D2EA90@<X0>(SEL *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, SEL *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = [v5 *a1];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D917820C();
    v14 = v13;

    v15 = sub_1D8D3707C(v12, v14);
    v17 = v16;
    v43 = v15;
  }

  else
  {
    v43 = 0;
    v17 = -1;
  }

  v18 = [v8 *a2];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D917820C();
    v22 = v21;

    v23 = sub_1D8D3707C(v20, v22);
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = -1;
  }

  v26 = [v8 *a3];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1D917820C();
    v30 = v29;

    v31 = sub_1D8D3707C(v28, v30);
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = -1;
  }

  result = [v8 *a4];
  if (result)
  {
    v35 = result;
    v36 = sub_1D917820C();
    v38 = v37;

    v39 = sub_1D8D3707C(v36, v38);
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = -1;
  }

  *a5 = v43;
  *(a5 + 8) = v17;
  *(a5 + 16) = v23;
  *(a5 + 24) = v25;
  *(a5 + 32) = v31;
  *(a5 + 40) = v33;
  *(a5 + 48) = v39;
  *(a5 + 56) = v41;
  return result;
}

uint64_t sub_1D8D2EF54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v165 = &v163 - v4;
  v168 = sub_1D9176E3C();
  v170 = *(v168 - 8);
  v5 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v164 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v166 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v167 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v163 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v163 - v20;
  v175 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v22 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v171 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v163 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v163 - v27;
  v172 = sub_1D917734C();
  v174 = *(v172 - 8);
  v29 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v31 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v163 - v33;
  if (qword_1EDCD5E90 != -1)
  {
    swift_once();
  }

  v35 = sub_1D917739C();
  __swift_project_value_buffer(v35, qword_1EDCD5E98);
  sub_1D917737C();
  sub_1D917731C();
  v36 = sub_1D917737C();
  v37 = sub_1D9178F5C();
  v38 = sub_1D917918C();
  v173 = v34;
  if (v38)
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v36, v37, v40, "resolveEyebrowElements", "", v39, 2u);
    v41 = v39;
    v34 = v173;
    MEMORY[0x1DA72CB90](v41, -1, -1);
  }

  v42 = v172;
  (*(v174 + 16))(v31, v34, v172);
  v43 = sub_1D91773FC();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  swift_allocObject();
  v46 = sub_1D91773EC();
  v47 = sub_1D8D3A0AC(1);
  v49 = v48;
  swift_beginAccess();
  v50 = v1[9];
  v1[8] = v47;
  v1[9] = v49;

  v51 = sub_1D8D3A558();
  v53 = v52;
  swift_beginAccess();
  v54 = v1[11];
  v1[10] = v51;
  v1[11] = v53;

  v55 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  sub_1D8D423B4(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v28, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v61 = v1[24];
    v62 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v61);
    v63 = COERCE_DOUBLE((*(v62 + 112))(v61, v62));
    if (v64)
    {
      v65 = v1[24];
      v66 = v1[25];
      __swift_project_boxed_opaque_existential_1(v1 + 21, v65);
      v67 = COERCE_DOUBLE((*(v66 + 80))(v65, v66));
      if (v68)
      {
LABEL_28:
        sub_1D8D41C00(v28, type metadata accessor for EyebrowBuilder.ListContext);
        goto LABEL_39;
      }

      if (v67 <= 0.0)
      {
        goto LABEL_26;
      }

      v69 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v67];
      if (!v69)
      {
        goto LABEL_26;
      }
    }

    else if (v63 <= 0.0 || (v69 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v63]) == 0)
    {
LABEL_26:
      v87 = MEMORY[0x1E69E7CC0];
LABEL_27:
      v91 = sub_1D8D42528(v87);
      v93 = v92;

      swift_beginAccess();
      v94 = v1[17];
      v1[16] = v91;
      v1[17] = v93;

      goto LABEL_28;
    }

    v83 = v69;
    v84 = sub_1D917820C();
    v86 = v85;

    v87 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v89 = *(v87 + 2);
    v88 = *(v87 + 3);
    if (v89 >= v88 >> 1)
    {
      v87 = sub_1D8D4241C((v88 > 1), v89 + 1, 1, v87);
    }

    *(v87 + 2) = v89 + 1;
    v90 = &v87[16 * v89];
    *(v90 + 4) = v84;
    *(v90 + 5) = v86;
    v42 = v172;
    goto LABEL_27;
  }

  sub_1D911C7A0(v28, v21);
  sub_1D9117A4C(v21, v18);
  v56 = type metadata accessor for EpisodePlayState();
  if ((*(*(v56 - 8) + 48))(v18, 1, v56) == 1)
  {
LABEL_7:
    v57 = v1[24];
    v58 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v57);
    v59 = COERCE_DOUBLE((*(v58 + 80))(v57, v58));
    if (v60)
    {
      sub_1D8D08A50(v21, &qword_1ECAB7AE0, &qword_1D91B7E20);
    }

    else
    {
      if (v59 > 0.0 && (v95 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v59]) != 0)
      {
        v96 = v95;
        v97 = sub_1D917820C();
        v99 = v98;

        v100 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v102 = *(v100 + 2);
        v101 = *(v100 + 3);
        if (v102 >= v101 >> 1)
        {
          v100 = sub_1D8D4241C((v101 > 1), v102 + 1, 1, v100);
        }

        *(v100 + 2) = v102 + 1;
        v103 = &v100[16 * v102];
        *(v103 + 4) = v97;
        *(v103 + 5) = v99;
      }

      else
      {
        v100 = MEMORY[0x1E69E7CC0];
      }

      v108 = sub_1D8D42528(v100);
      v110 = v109;

      sub_1D8D08A50(v21, &qword_1ECAB7AE0, &qword_1D91B7E20);
      swift_beginAccess();
      v111 = v1[17];
      v1[16] = v108;
      v1[17] = v110;

      v42 = v172;
    }

    sub_1D8D08A50(v18, &qword_1ECAB7AE0, &qword_1D91B7E20);
    goto LABEL_39;
  }

  sub_1D9117A4C(v18, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3 || EnumCaseMultiPayload == 2)
  {
    sub_1D8D41C00(v15, type metadata accessor for EpisodePlayState);
    goto LABEL_7;
  }

  v72 = *v15;
  v71 = v15[1];
  sub_1D8D08A50(v18, &qword_1ECAB7AE0, &qword_1D91B7E20);
  v73 = v71 - v72;
  if (v73 > 0.0 && (v74 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v73]) != 0)
  {
    v75 = v74;
    v76 = sub_1D917820C();
    v78 = v77;

    v79 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_1D8D4241C((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[16 * v81];
    *(v82 + 4) = v76;
    *(v82 + 5) = v78;
  }

  else
  {
    v79 = MEMORY[0x1E69E7CC0];
  }

  v104 = sub_1D8D42528(v79);
  v106 = v105;

  sub_1D8D08A50(v21, &qword_1ECAB7AE0, &qword_1D91B7E20);
  swift_beginAccess();
  v107 = v1[17];
  v1[16] = v104;
  v1[17] = v106;

  v42 = v172;
LABEL_39:
  v112 = v1[24];
  v113 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v112);
  (*(v113 + 40))(&v183, v112, v113);
  v180 = v183;
  v181 = v184;
  v182 = v185;
  v114 = sub_1D8D3A958(v1 + 21, &v180);
  v116 = v115;
  swift_beginAccess();
  v117 = v1[5];
  v1[4] = v114;
  v1[5] = v116;

  if ((*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) & 1) == 0)
  {
    sub_1D8D423B4(v1 + v55, v169, type metadata accessor for EyebrowBuilder.ListContext);
    v118 = swift_getEnumCaseMultiPayload();
    v119 = v1[24];
    v120 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v119);
    v121 = *(v120 + 104);
    v122 = (v170 + 48);
    if (v118 == 2)
    {
      v123 = v167;
      v121(v119, v120);
      v124 = v168;
      if ((*v122)(v123, 1, v168) == 1)
      {
        sub_1D8D08A50(v123, &qword_1ECAB75C0, &unk_1D9188A50);
        v125 = 0;
        v126 = 0;
      }

      else
      {
        v130 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        v131 = [v130 lessVerboseDisplayStringWithoutTimeAndCurrentYear];

        v125 = sub_1D917820C();
        v126 = v132;

        (*(v170 + 8))(v123, v124);
      }

      swift_beginAccess();
      v133 = v1[13];
      v1[12] = v125;
      v1[13] = v126;
    }

    else
    {
      v127 = v119;
      v128 = v166;
      v121(v127, v120);
      v129 = v168;
      if ((*v122)(v128, 1, v168) == 1)
      {
        sub_1D8D08A50(v128, &qword_1ECAB75C0, &unk_1D9188A50);
      }

      else
      {
        v134 = v170;
        v135 = v164;
        (*(v170 + 32))(v164, v128, v129);
        sub_1D9176CCC();
        v137 = v136;
        v138 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration();
        v139 = v165;
        (*(*(v138 - 8) + 56))(v165, 1, 1, v138);
        v140 = static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(v139, v137);
        v142 = v141;
        sub_1D8D08A50(v139, &qword_1ECABACF0, &qword_1D91BA268);
        (*(v134 + 8))(v135, v129);
        swift_beginAccess();
        v143 = v1[13];
        v1[12] = v140;
        v1[13] = v142;
      }

      sub_1D8D41C00(v169, type metadata accessor for EyebrowBuilder.ListContext);
    }
  }

  v144 = v1[24];
  v145 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v144);
  v146 = sub_1D8D3BB98(*(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace), v144, v145);
  v148 = v147;
  swift_beginAccess();
  v149 = v1[7];
  v1[6] = v146;
  v1[7] = v148;

  v150 = v171;
  sub_1D8D423B4(v1 + v55, v171, type metadata accessor for EyebrowBuilder.ListContext);
  v151 = swift_getEnumCaseMultiPayload();
  if (v151 == 4 || v151 == 1)
  {
    v152 = *v150;
    v153 = v1[24];
    v154 = v1[25];
    __swift_project_boxed_opaque_existential_1(v1 + 21, v153);
    (*(v154 + 40))(&v176, v153, v154);
    if ((v178 & 1) == 0)
    {
      v177 &= 1u;
      v179 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style);
      v155 = v1[24];
      v156 = v1[25];
      __swift_project_boxed_opaque_existential_1(v1 + 21, v155);
      v157 = (*(v156 + 72))(v155, v156);
      IsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0 = _s18PodcastsFoundation14EyebrowBuilderC21listenNowReasonString6reason5style17isPlayingOrPlayed16showTypeIsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0(&v176, &v179, v152, v157 & 1);
      v160 = v159;
      swift_beginAccess();
      v161 = v1[15];
      v1[14] = IsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0;
      v1[15] = v160;
    }
  }

  else
  {
    sub_1D8D41C00(v150, type metadata accessor for EyebrowBuilder.ListContext);
  }

  sub_1D8D42B20(v46, "resolveEyebrowElements");

  return (*(v174 + 8))(v173, v42);
}

uint64_t type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration()
{
  result = qword_1EDCD5FD8;
  if (!qword_1EDCD5FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D2FF34()
{
  if (!qword_1EDCD5EF8)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5EF8);
    }
  }
}

id sub_1D8D2FFB0()
{
  type metadata accessor for PodcastsFoundationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDCD5F08 = result;
  return result;
}

void sub_1D8D30028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v5 setLocalizedDateFormatFromTemplate_];

  *a4 = v5;
}

uint64_t sub_1D8D300A0()
{
  v0 = sub_1D8D30184(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB868, &unk_1D91BEBE8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1ECAB2B70 = result;
  return result;
}

uint64_t static PodcastsBagFeatureFlags.isEnabled(_:)()
{
  if (qword_1ECAB2B68 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECAB2B70;
  os_unfair_lock_lock((qword_1ECAB2B70 + 24));
  sub_1D8D381FC((v0 + 16), &v2);
  os_unfair_lock_unlock((v0 + 24));
  return v2;
}

unint64_t sub_1D8D30184(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D8D33C70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D8D30280(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1D8D33C70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_1D8F86B88();
      result = v19;
      goto LABEL_8;
    }

    sub_1D8D303B4(v16, a4 & 1);
    v20 = *v5;
    result = sub_1D8D33C70(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
  }

  else
  {
    sub_1D8D38330(result, a2, a3, a1 & 1, v22);
  }

  return result;
}

uint64_t sub_1D8D303B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4208, &unk_1D9188D50);
  v38 = a2;
  result = sub_1D917978C();
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
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
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

uint64_t AssetURLSessionProtocol.eraseToAnySession()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return AnyAssetBackgroundSession.init<A>(session:)(v9, AssociatedTypeWitness, a1, a2, a3);
}

uint64_t sub_1D8D307EC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D9177E0C();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_1EDCD5B50;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = sub_1D8D49C44;
  v16[4] = v14;
  aBlock[4] = sub_1D8D41950;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_68_0;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v17);
  _Block_release(v17);
  (*(v22 + 8))(v9, v6);
  (*(v10 + 8))(v13, v21);
}

uint64_t sub_1D8D30AFC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D30B34()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t AssetSource.eraseToAnyAssetSource()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  return AnyAssetSource.init<A>(source:)(v10, AssociatedTypeWitness, v13, a1, a2, a3);
}

uint64_t sub_1D8D30C9C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D917739C();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  (*(v8 + 16))(v11, v13, v7);
  return sub_1D917736C();
}

uint64_t DefaultPodcastStateDataSource.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_1D8D30E1C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(v4 + 40);
  sub_1D9179DBC();
  a3(v12, a1, a2);
  v9 = sub_1D9179E1C();

  return a4(a1, a2, v9);
}

uint64_t sub_1D8D30EB0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
  return swift_unknownObjectRelease();
}

char *sub_1D8D30F88(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = qword_1ECAB8638;
  v16 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x50);
  v17 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x58);
  v48 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x60);
  v18 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x68);
  memset(v58, 0, 24);
  aBlock = v16;
  v52 = v17;
  v53 = v48;
  v54 = v18;
  v47 = v18;
  v19 = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Paging();
  *&v11[v15] = sub_1D8D048F0(v58, v19);
  v20 = qword_1ECAB8640;
  sub_1D9176EAC();
  type metadata accessor for FRPSectionInfo();
  sub_1D91786FC();
  type metadata accessor for FRPOutput();
  swift_getFunctionTypeMetadata1();
  sub_1D8CFBDA8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  *&v11[v20] = sub_1D9177FEC();
  v21 = &v11[qword_1ECAB8648];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v22 = &v11[qword_1ECAB8650];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 2) = 0u;
  *(v22 + 41) = 0u;
  v23 = qword_1EDCD15F8;
  v24 = sub_1D917734C();
  (*(*(v24 - 8) + 56))(&v11[v23], 1, 1, v24);
  *&v11[qword_1EDCD1620] = 0;
  v25 = qword_1EDCD1628;
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  sub_1D91791BC();
  sub_1D8D05854(&qword_1EDCD09C8);
  *&v11[v25] = sub_1D9177FEC();
  v26 = qword_1EDCD1600;
  sub_1D91791BC();
  *&v11[v26] = sub_1D9177FEC();
  v11[qword_1EDCD1638] = 0;
  *&v11[qword_1EDCD1610] = 0;
  v27 = &v11[qword_1ECAB85F8];
  *v27 = a1;
  *(v27 + 1) = a2;

  v28 = [a3 fetchBatchSize];
  *&v11[qword_1ECAB8600] = v28;
  *&v11[qword_1ECAB8608] = a4;
  *&v11[qword_1ECAB8610] = a5;
  v29 = &v11[qword_1ECAB8618];
  *v29 = a6;
  *(v29 + 1) = a7;
  v30 = &v11[qword_1ECAB8620];
  *v30 = a8;
  *(v30 + 1) = a9;
  v31 = &v11[qword_1ECAB8628];
  *v31 = a10;
  *(v31 + 1) = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8660, &unk_1D91A2208);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = a4;
  v46 = a5;

  v34 = a3;
  v35 = [objc_allocWithZone(ObjCClassFromMetadata) initWithFetchRequest:v34 managedObjectContext:v33 sectionNameKeyPath:0 cacheName:0];

  *&v11[qword_1ECAB8630] = v35;
  aBlock = v16;
  v52 = v17;
  v53 = v48;
  v54 = v47;
  v57.receiver = v11;
  v57.super_class = type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  v36 = objc_msgSendSuper2(&v57, sel_init);
  v37 = *&v36[qword_1ECAB8630];
  v38 = v36;
  [v37 setDelegate_];
  v39 = swift_allocObject();
  v39[2] = a1;
  v39[3] = a2;
  v39[4] = v38;
  v55 = sub_1D8FBD70C;
  v56 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = sub_1D8CF5F60;
  v54 = &block_descriptor_60_1;
  v40 = _Block_copy(&aBlock);

  [v33 performBlock_];
  _Block_release(v40);

  return v38;
}

uint64_t sub_1D8D314C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return PFProducer.receive<A>(subscriber:)(a1, a4, a2, WitnessTable, a3);
}

uint64_t PFProducer.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for ProducerInner();
  v11 = sub_1D8D05B28(v5, a2, a3, a4, a5);
  v13 = v12;
  v14 = sub_1D8D05C64(v5, a2, a3, a4, a5);
  v16 = v15;
  v17 = sub_1D8D3405C(v5, a2, a3, a4, a5);
  v19 = v18;
  v20 = *(v10 + 48);
  v21 = *(v10 + 52);
  swift_allocObject();
  v22 = sub_1D8D1313C(a1, v11, v13, v14, v16, v17, v19);
  v25[3] = v10;
  v25[4] = swift_getWitnessTable();
  v25[0] = v22;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

void sub_1D8D316AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v106 = *(v4 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v105 = &v84 - v6;
  v7 = sub_1D91791BC();
  v108 = *(v7 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v84 - v9;
  v11 = *(v3 + 80);
  v12 = *(v3 + 96);
  v13 = type metadata accessor for ProducerInner.State();
  v110 = *(v13 - 8);
  v14 = *(v110 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v104 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v109 = v4;
  active = type metadata accessor for ProducerInner.ActiveState();
  v111 = *(active - 8);
  v112 = active;
  v23 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](active);
  v25 = &v84 - v24;
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_4:
  v95 = a1;
  v103 = v10;
  v101 = v17;
  v107 = v7;
  v26 = *(v1 + 2);
  os_unfair_lock_lock(v26 + 4);
  v27 = *(*v1 + 112);
  swift_beginAccess();
  v28 = v110;
  v29 = v27;
  v99 = *(v110 + 16);
  v100 = v110 + 16;
  v99(v21, &v1[v27], v13);
  v30 = v111;
  v31 = v112;
  v32 = *(v111 + 48);
  v98 = v111 + 48;
  v97 = v32;
  if (v32(v21, 1, v112) == 1)
  {
    (*(v28 + 8))(v21, v13);
    os_unfair_lock_unlock(v26 + 4);
    return;
  }

  v102 = v26;
  v96 = v13;
  (*(v30 + 32))(v25, v21, v31);
  v33 = *(v31 + 60);
  v34 = *&v25[v33];
  sub_1D91777FC();
  v35 = sub_1D91777DC();
  v36 = v29;
  v37 = v103;
  v38 = v109;
  if (v35)
  {
    goto LABEL_16;
  }

  sub_1D91777FC();
  v39 = sub_1D91777DC();
  v40 = sub_1D91777FC();
  if ((v39 & 1) == 0)
  {
    v41 = v95;
    v42 = sub_1D91777DC();
    v38 = v109;
    if (v42)
    {
      goto LABEL_13;
    }

    if (((v34 | v41) & 0x8000000000000000) == 0)
    {
      v40 = v34 + v41;
      if (!__OFADD__(v34, v41))
      {
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_13:
      v40 = sub_1D91777FC();
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v38 = v109;
LABEL_15:
  *&v25[v33] = v40;
LABEL_16:
  v43 = v112;
  v44 = v108;
  v45 = *(v108 + 16);
  v95 = *(v112 + 44);
  v46 = v107;
  v45(v37, &v25[v95], v107);
  v47 = v106;
  v48 = (*(v106 + 48))(v37, 1, v38);
  v50 = *(v44 + 8);
  v49 = v44 + 8;
  v90 = v50;
  v50(v37, v46);
  v51 = v111;
  v52 = *(v111 + 16);
  v53 = v104;
  v103 = (v111 + 16);
  v94 = v52;
  v52(v104, v25, v43);
  v54 = v51;
  v55 = v53;
  v56 = *(v54 + 56);
  v93 = v54 + 56;
  v56(v55, 0, 1, v43);
  swift_beginAccess();
  v57 = *(v110 + 40);
  v92 = v110 + 40;
  v91 = v57;
  v57(&v1[v36], v55, v96);
  swift_endAccess();
  os_unfair_lock_unlock(v102 + 4);
  if (v48 == 1)
  {
    v58 = v112;
    v59 = &v25[*(v112 + 48)];
    v60 = *(v59 + 1);
    v61 = v36;
    v62 = v105;
    v63 = v1;
    (*v59)();
    v64 = v95;
    v108 = v49;
    v90(&v25[v95], v107);
    v65 = *(v47 + 16);
    v66 = v62;
    v67 = v109;
    v88 = v47 + 16;
    v86 = v65;
    v65(&v25[v64], v66, v109);
    v68 = *(v47 + 56);
    v69 = v67;
    v70 = v61;
    v71 = v58;
    v87 = v47 + 56;
    v85 = v68;
    v68(&v25[v64], 0, 1, v69);
    v72 = v102;
    os_unfair_lock_lock(v102 + 4);
    v94(v55, v25, v58);
    v89 = v56;
    v56(v55, 0, 1, v58);
    swift_beginAccess();
    v73 = v96;
    v91(&v63[v61], v55, v96);
    swift_endAccess();
    v74 = v72;
    os_unfair_lock_unlock(v72 + 4);
    v75 = &v25[*(v71 + 52)];
    v77 = *v75;
    v76 = *(v75 + 1);
    swift_retain_n();
    v78 = v55;
    v79 = v105;
    v77(v105, sub_1D8D4DFB4, v63, sub_1D8F25D84, v63);

    os_unfair_lock_lock(v74 + 4);
    v80 = v101;
    v99(v101, &v63[v70], v73);
    LODWORD(v76) = v97(v80, 1, v71);
    (*(v110 + 8))(v80, v73);
    if (v76 != 1)
    {
      v81 = v95;
      v90(&v25[v95], v107);
      v82 = v109;
      v86(&v25[v81], v79, v109);
      v85(&v25[v81], 0, 1, v82);
      v83 = v112;
      v94(v78, v25, v112);
      v89(v78, 0, 1, v83);
      swift_beginAccess();
      v91(&v63[v70], v78, v73);
      swift_endAccess();
    }

    os_unfair_lock_unlock(v102 + 4);
    (*(v106 + 8))(v79, v109);
  }

  (*(v111 + 8))(v25, v112);
}

uint64_t sub_1D8D31FFC(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v8 + 80);
  v13 = *(*(*(a3 + 24) - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v12;
  v15 = v13 + 7;
  if (v11 < a2)
  {
    v16 = ((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v17 = a2 - v11;
    v18 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v19 = 2;
    }

    else
    {
      v19 = v17 + 1;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v16);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v16);
      if (v22)
      {
LABEL_27:
        v23 = v22 - 1;
        if (v18)
        {
          v23 = 0;
          v24 = *a1;
        }

        else
        {
          v24 = 0;
        }

        return v11 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v11)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }

  v27 = (a1 + v14) & ~v12;
  if (v10 == v11)
  {
    if (v9 >= 2)
    {
      v29 = (*(v8 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *((v15 + v27) & 0xFFFFFFFFFFFFFFF8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

unint64_t sub_1D8D32440()
{
  result = qword_1EDCD5C38;
  if (!qword_1EDCD5C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5C38);
  }

  return result;
}

uint64_t sub_1D8D32494()
{
  if (qword_1EDCD06D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = qword_1EDCD06D8;
  v2 = v0;
  sub_1D917730C();
  sub_1D9178F5C();
  v3 = qword_1EDCD06D8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189080;
  v6 = *&v2[qword_1ECAB85F8];
  v5 = *&v2[qword_1ECAB85F8 + 8];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  v7 = v3;

  sub_1D91772EC();
}

uint64_t sub_1D8D32638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1D8CF2AC4();
  result = sub_1D917919C();
  *a4 = result;
  return result;
}

uint64_t sub_1D8D326CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8D3271C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = objc_opt_self();

    v10 = [v9 isEmpty_];
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v16 = [a1 storeCollectionId];
      v11 = v16 & ~(v16 >> 63);
    }

    v19 = v10;
    v17 = [a1 isPastAutodownloadOrEpisodeLimitDark];
    v14 = [a1 episodeLimit];
    v18 = [a1 subscribed];

    v12 = v18;
    v15 = v19;
    v13 = v17;
  }

  else
  {

    v8 = 0;
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v15;
  a2[4] = v12;
  a2[5] = v6;
  a2[6] = v8;
  a2[7] = v13;
  a2[8] = v14;
}

void sub_1D8D32880()
{
  v1 = v0;
  v2 = sub_1D9177E0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  v13 = *&v1[v12];

  os_unfair_lock_lock((v13 + 20));
  if (*(v13 + 16))
  {
    os_unfair_lock_unlock((v13 + 20));

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD1098);
    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Donation already in progress. Not starting new donation.", v17, 2u);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  else
  {
    v27 = v3;
    *(v13 + 16) = 1;
    os_unfair_lock_unlock((v13 + 20));

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v26 = v7;
    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD1098);
    v19 = sub_1D917741C();
    v20 = sub_1D9178D1C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Starting donation to Siri (Cascade).", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }

    v22 = *&v1[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    aBlock[4] = sub_1D8D2BBB8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_85;
    v24 = _Block_copy(aBlock);
    v25 = v1;
    sub_1D9177E4C();
    v28 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v11, v6, v24);
    _Block_release(v24);
    (*(v27 + 8))(v6, v2);
    (*(v8 + 8))(v11, v26);
  }
}

uint64_t sub_1D8D32D28()
{

  return swift_deallocObject();
}

uint64_t DonationService.supportsSiriIndexing.getter()
{
  v0 = sub_1D8D40B5C(&unk_1F5462298);
  sub_1D8D3F2D0(&unk_1F54622B8);
  if (!MSVDeviceIsWatch())
  {
    goto LABEL_8;
  }

  result = MSVGetDeviceHardwarePlatform();
  if (result)
  {
    v2 = result;
    v3 = sub_1D917820C();
    v5 = v4;

    LOBYTE(v2) = sub_1D8EF0850(v3, v5, v0);

    if (v2)
    {
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1EDCD1098);

      v7 = sub_1D917741C();
      v8 = sub_1D9178D1C();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v19 = v10;
        *v9 = 136315138;
        v11 = sub_1D9178AAC();
        v13 = v12;

        v14 = sub_1D8CFA924(v11, v13, &v19);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_1D8CEC000, v7, v8, "Unsupported watch device %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        MEMORY[0x1DA72CB90](v9, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_8:

    if (AFDeviceSupportsSiriUOD() & 1) != 0 || (AFShouldRunAsrOnServerForUOD() & 1) != 0 || (AFOfflineDictationCapable())
    {
      return 1;
    }

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD1098);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Siri understanding on device or ASR is not supported", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1D8D33104(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 72);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 privateQueueContext];

    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = v14;
    v16[4] = a1;
    v16[5] = a2;
    aBlock[4] = sub_1D90F9B24;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_86;
    v17 = _Block_copy(aBlock);
    v18 = v14;

    [v18 performBlock_];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8D33340()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D33378()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8D333C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D8D5FE18;

  return sub_1D8D4DE18();
}

uint64_t sub_1D8D33460()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void Synchronized.modify(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_1D8D056BC(sub_1D8D33504, v4, a3);
}

uint64_t sub_1D8D334F4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1D8D33534(a1, v1[6], v1[7]);
}

uint64_t sub_1D8D33504()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1D8D33534(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(a2 + 8);
    }

    v7 = *(a2 + 8);

    v8 = sub_1D917935C();
  }

  else
  {
    v8 = *(v5 + 16);
  }

  *v4 = v8;
  v4[2] = a3;
  return result;
}

uint64_t sub_1D8D335AC()
{
  v0 = sub_1D91773AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D917737C();
  sub_1D91773DC();
  v11 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, v11, v14, "FRP", v12, v13, 2u);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_1D8D337F4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 16);
      swift_unknownObjectRetain();

      v7(v8, &protocol witness table for PodcastStateController, ObjectType, v5);
      (*(v5 + 32))(ObjectType, v5);
      swift_unknownObjectRelease();
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D8D338CC()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1EDCD5B58 = result;
  return result;
}

uint64_t ForegroundSessionSource.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(swift_allocObject() + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1D9177A5C();
  *a2 = result;
  return result;
}

uint64_t sub_1D8D33BAC()
{

  return swift_deallocObject();
}

uint64_t Synchronized.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8D048F0();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

void *PodcastStateController.init(dataSources:transitionRules:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v17 = a2;
  v15 = sub_1D9178E0C();
  v3 = *(v15 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D9177E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = MEMORY[0x1E69E7CC8];
  v2[3] = MEMORY[0x1E69E7CC8];
  v2[4] = v11;
  sub_1D8CFD888();
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v15);
  v12 = sub_1D9178E4C();
  v13 = v17;
  v2[2] = v16;
  v2[5] = v13;
  v2[6] = v12;
  sub_1D8D337F4();
  return v2;
}

uint64_t (*sub_1D8D3405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a2);
  return sub_1D8F25D88;
}

_DWORD *sub_1D8D34190(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  if (v10)
  {
    v13 = v10 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v16 = v12 + 7;
  v17 = ((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v14 < a3)
  {
    v18 = a3 - v14;
    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v5 = v20;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v14)
  {
    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = a2 - v14;
    }

    else
    {
      v21 = 1;
    }

    if (((((((((v16 + (v15 & ~v11)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = ~v14 + a2;
      v23 = result;
      bzero(result, ((((((((v16 + (v15 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v23;
      *v23 = v22;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v8 == v14)
  {
    v24 = *(v7 + 56);

    return v24();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v13 == v14)
    {
      v25 = *(v9 + 56);
      v26 = a2 + 1;

      return v25(result, v26, v10);
    }

    else
    {
      v27 = ((result + v16) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v27 = a2 & 0x7FFFFFFF;
        v27[1] = 0;
      }

      else
      {
        *v27 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D8D34454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void sub_1D8D344B4()
{
  if (!qword_1EDCD5C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB4F30, &qword_1D918DA90);
    v0 = sub_1D9177AEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5C68);
    }
  }
}

id sub_1D8D34518(uint64_t a1, uint64_t a2, char *a3)
{
  v20 = a1;
  v21 = a2;
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue;
  v18[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8098], v8);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  *&a3[v19] = sub_1D9178E4C();
  sub_1D9176CEC();
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_syncSession] = 0;
  v13 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentKey];
  *v13 = 0x746E656D676573;
  *(v13 + 1) = 0xE700000000000000;
  v14 = &a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_appleMusicSegmentValue];
  *v14 = 0x636973754DLL;
  *(v14 + 1) = 0xE500000000000000;
  v15 = v21;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_bag] = v20;
  *&a3[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] = v15;
  v16 = type metadata accessor for MusicSubscriptionInfoSyncUtil();
  v22.receiver = a3;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1D8D34864(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x58);
  v7 = *((v4 & v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v8 = sub_1D91791BC();
  (*(*(v8 - 8) + 40))(&v1[v5], a1, v8);
  return swift_endAccess();
}

unint64_t sub_1D8D34978()
{
  result = qword_1EDCD5C40;
  if (!qword_1EDCD5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5C40);
  }

  return result;
}

uint64_t sub_1D8D349E4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_1D8D34C8C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v22 = a4;
  v5 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x50);
  v6 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x58);
  sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_1D8D166F4(*a1, v21, &v21 - v11);
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v12, 1, TupleTypeMetadata3) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v13 = swift_getTupleTypeMetadata3();
    return (*(*(v13 - 8) + 56))(v22, 1, 1, v13);
  }

  else
  {
    v15 = *(TupleTypeMetadata3 + 48);
    v16 = *&v12[*(TupleTypeMetadata3 + 64)];
    v17 = swift_getTupleTypeMetadata3();
    v18 = *(v17 + 48);
    v19 = *(v17 + 64);
    v20 = v22;
    (*(*(v5 - 8) + 32))(v22, v12, v5);
    (*(*(v6 - 8) + 32))(v20 + v18, &v12[v15], v6);
    *(v20 + v19) = v16;
    return (*(*(v17 - 8) + 56))(v20, 0, 1, v17);
  }
}

void sub_1D8D350C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D8D350E4(void *a1@<X0>, void *a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a1 doubleForKey_];
  v6 = v5;

  a2[3] = MEMORY[0x1E69E63B0];
  *a2 = v6;
}

uint64_t sub_1D8D35608()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1008);
  __swift_project_value_buffer(v0, qword_1EDCD1008);
  return sub_1D917742C();
}

uint64_t sub_1D8D356E4(uint64_t a1)
{
  v36 = sub_1D9177E0C();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177F1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v1;
  v17 = *&v1[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1D9177F4C();
  result = (*(v12 + 8))(v16, v11);
  if (v19)
  {
    v34[1] = v18;
    v35 = v3;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = dispatch_group_create();
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = a1 + 32;
      do
      {
        dispatch_group_enter(v22);
        sub_1D8D35688(v24, &aBlock);
        v25 = swift_allocObject();
        v26 = v44;
        *(v25 + 48) = v43;
        *(v25 + 64) = v26;
        *(v25 + 80) = v45;
        v27 = v42;
        *(v25 + 16) = aBlock;
        *(v25 + 32) = v27;
        *(v25 + 96) = v21;
        *(v25 + 104) = v22;

        v28 = v22;
        sub_1D8D2C044(sub_1D8DA8CDC, v25);

        v24 += 80;
        --v23;
      }

      while (v23);
    }

    v29 = swift_allocObject();
    v30 = v37;
    v29[2] = a1;
    v29[3] = v30;
    v29[4] = v21;
    *&v43 = sub_1D8DA9C24;
    *(&v43 + 1) = v29;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v42 = sub_1D8CF5F60;
    *(&v42 + 1) = &block_descriptor_38_2;
    v31 = _Block_copy(&aBlock);

    v32 = v30;
    sub_1D9177E4C();
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v33 = v36;
    sub_1D91792CC();
    sub_1D9178D7C();
    _Block_release(v31);

    (*(v35 + 8))(v6, v33);
    (*(v38 + 8))(v10, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D35B88()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  v3 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1D8D35BE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8D35C30(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - v6;
  v8 = sub_1D9177F1C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 72);
  *v13 = v14;
  v15 = *MEMORY[0x1E69E8020];
  v16 = v9[13];
  v16(v13, v15, v8, v11);
  v17 = v14;
  LOBYTE(v14) = sub_1D9177F4C();
  v40 = v9[1];
  result = v40(v13, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v39 = v7;
  v19 = *(v2 + 8);
  sub_1D8D35688(v2, v44);
  sub_1D8D35688(v44, v43);
  v20 = swift_allocObject();
  v38 = a1;
  *(v20 + 16) = a1;
  v21 = v41;
  *(v20 + 24) = v41;
  v22 = v44[3];
  *(v20 + 64) = v44[2];
  *(v20 + 80) = v22;
  *(v20 + 96) = v44[4];
  v23 = v44[1];
  *(v20 + 32) = v44[0];
  *(v20 + 48) = v23;
  v24 = *(v19 + 72);
  *v13 = v24;
  (v16)(v13, v15, v8);

  v25 = v24;
  LOBYTE(v24) = sub_1D9177F4C();
  result = v40(v13, v8);
  if ((v24 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v26 = *(v19 + 80);
  if (v26)
  {
    v27 = *(v19 + 88);
    v28 = sub_1D917886C();
    v29 = v39;
    (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
    sub_1D8D35688(v43, v42);
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v31 = v42[3];
    *(v30 + 64) = v42[2];
    *(v30 + 80) = v31;
    *(v30 + 96) = v42[4];
    v32 = v42[1];
    *(v30 + 32) = v42[0];
    *(v30 + 48) = v32;
    *(v30 + 112) = v26;
    *(v30 + 120) = v27;
    *(v30 + 128) = v38;
    *(v30 + 136) = v21;

    sub_1D90FA0CC(v26);

    sub_1D8E91268(0, 0, v29, &unk_1D91B77D0, v30);

    sub_1D8D4F5BC(v26);

    return sub_1D8D330B0(v43);
  }

  else
  {
    v33 = *(v19 + 16);
    if ([objc_opt_self() isRunningOnHomepod])
    {
      v34 = v33 == 2;
    }

    else
    {
      v34 = v33 != 1;
    }

    v35 = swift_allocObject();
    swift_weakInit();
    v36 = swift_allocObject();
    v36[2] = v35;
    v36[3] = sub_1D8D4F780;
    v36[4] = v20;

    if (v34)
    {
      sub_1D8D33104(sub_1D8D4F1F4, v36);
    }

    else
    {
      sub_1D90F7804(sub_1D90F9FE4, v36);
    }

    sub_1D8D330B0(v43);
  }
}

uint64_t sub_1D8D360F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D8D36148()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D3618C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D5FF18;

  return sub_1D8D333C0(a1);
}

id DeferredLaunchTaskCoordinator.init()()
{
  v18 = sub_1D9178E0C();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v20 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue;
  v17[1] = sub_1D8CFD888();
  v19 = "ks";
  sub_1D9177E7C();
  v23 = MEMORY[0x1E69E7CC0];
  v17[4] = sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v8 = *MEMORY[0x1E69E8090];
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v17[2] = v9;
  v11 = v18;
  v10(v3, v8, v18);
  *&v21[v20] = sub_1D9178E4C();
  v20 = OBJC_IVAR___PFDeferredLaunchTaskCoordinator__workQueue;
  sub_1D9177E7C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v10(v3, v8, v11);
  v12 = sub_1D9178E4C();
  v13 = v21;
  *&v21[v20] = v12;
  *&v13[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__tasks] = MEMORY[0x1E69E7CC0];
  v13[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring] = 1;
  v13[OBJC_IVAR___PFDeferredLaunchTaskCoordinator__timeoutScheduled] = 0;
  v14 = v13;
  v15 = type metadata accessor for DeferredLaunchTaskCoordinator();
  v22.receiver = v14;
  v22.super_class = v15;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1D8D36720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Publisher.emitSignpostEvent(log:name:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D91775FC();
  v22 = *(v12 - 8);
  v13 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a1;
  *(v17 + 40) = a2;
  *(v17 + 48) = a3;
  *(v17 + 56) = a4;
  v18 = a1;
  sub_1D9177B3C();

  swift_getWitnessTable();
  v19 = sub_1D9177B1C();
  (*(v22 + 8))(v15, v12);
  return v19;
}

uint64_t sub_1D8D36978()
{

  return swift_deallocObject();
}

void MTPodcast.artworkModel.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = [v2 artworkTemplateURL];
    if (v9 || (v9 = [v2 imageURL]) != 0)
    {
      v10 = v9;
      v11 = sub_1D917820C();
      v46 = v12;
      v48 = v11;

      v13 = [v2 artworkPrimaryColor];
    }

    else
    {
      sub_1D917946C();

      MEMORY[0x1DA7298F0](v6, v8);
      v13 = [v2 artworkPrimaryColor];
    }

    v14 = v13;
    if (v14)
    {
      v15 = v14;
      v16 = sub_1D917820C();
      v18 = v17;

      v28 = sub_1D8D3707C(v16, v18);
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = -1;
    }

    MTPodcast.artworkTextColors.getter(v58);
    v31 = [v2 title];
    if (v31)
    {
      v35 = v31;
      v36 = sub_1D917820C();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    if (qword_1EDCD78A0 != -1)
    {
      swift_once();
    }

    v39 = word_1EDCD78A8;
    v40 = HIBYTE(word_1EDCD78A8);
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    *&v50[39] = v59[0];
    *&v50[23] = v58[1];
    *&v50[7] = v58[0];
    *&v51 = v49;
    *(&v51 + 1) = v47;
    *&v52 = v6;
    *(&v52 + 1) = v8;
    LOBYTE(v53) = 1;
    *(&v53 + 1) = 0x4082C00000000000;
    *&v54 = 0x4082C00000000000;
    *(&v54 + 1) = v28;
    v55[0] = v30;
    *&v55[1] = *v50;
    *&v55[17] = *&v50[16];
    *&v55[33] = *&v50[32];
    *&v55[49] = *(v59 + 9);
    v55[65] = 0;
    v55[66] = v39;
    v55[67] = v40;
    *&v55[72] = v36;
    *&v56 = v38;
    BYTE8(v56) = byte_1EDCD7898;
    *(&v56 + 9) = 0;
    *&v57 = v6;
    *(&v57 + 1) = v8;
    nullsub_1(&v51, v32, v33, v34);
    v41 = v56;
    a1[8] = *&v55[64];
    a1[9] = v41;
    a1[10] = v57;
    v42 = *&v55[16];
    a1[4] = *v55;
    a1[5] = v42;
    v43 = *&v55[48];
    a1[6] = *&v55[32];
    a1[7] = v43;
    v44 = v52;
    *a1 = v51;
    a1[1] = v44;
    v45 = v54;
    a1[2] = v53;
    a1[3] = v45;
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F88);
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Critical issue: Show with nil UUID", v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    sub_1D8D39E08(&v51);
    v23 = v56;
    a1[8] = *&v55[64];
    a1[9] = v23;
    a1[10] = v57;
    v24 = *&v55[16];
    a1[4] = *v55;
    a1[5] = v24;
    v25 = *&v55[48];
    a1[6] = *&v55[32];
    a1[7] = v25;
    v26 = v52;
    *a1 = v51;
    a1[1] = v26;
    v27 = v54;
    a1[2] = v53;
    a1[3] = v27;
  }
}

void sub_1D8D36DE8()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = *MEMORY[0x1E69874A0];
  v2 = [(__CFArray *)v0 containsObject:v1];

  if (v2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  byte_1EDCD7898 = v3;
}

uint64_t sub_1D8D3707C(uint64_t a1, unint64_t a2)
{
  v5 = a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0DF0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0DD0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D0DB0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else
  {
    result = sub_1D8D3E514(a1, a2);
    if (!v2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1D8D37264(uint64_t a1, unint64_t a2, unsigned int (*a3)(uint64_t))
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v8 = 0;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = sub_1D917945C();
        v15 = v14;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = a1;
          v18[1] = v9;
          v12 = v18 + v8;
        }

        else
        {
          v11 = v10;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_1D917957C();
          }

          v12 = (v11 + v8);
        }

        v13 = *v12;
        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v17 = (__clz(v13 ^ 0xFF) - 24);
        if (v17 > 2)
        {
          if (v17 == 3)
          {
            v13 = ((v13 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
            v15 = 3;
          }

          else
          {
            v13 = ((v13 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v15 = 4;
          }

          goto LABEL_15;
        }

        if (v17 == 1)
        {
LABEL_14:
          v15 = 1;
        }

        else
        {
          v13 = v12[1] & 0x3F | ((v13 & 0x1F) << 6);
          v15 = 2;
        }
      }

LABEL_15:
      result = (v3 == 0) & a3(v13);
      if (result == 1)
      {
        v8 += v15;
        if (v8 < v4)
        {
          continue;
        }
      }

      return result;
    }
  }

  return 1;
}

uint64_t sub_1D8D37400()
{
  v1 = *(sub_1D917662C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1D917660C() & 1;
}

void MTPodcast.uberBackgroundArtworkModel.getter(_OWORD *a1@<X8>)
{
  v3 = [v1 uuid];
  if (!v3)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F88);
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_16;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "Critical issue: Show with nil UUID", v20, 2u);
    v21 = v20;
    goto LABEL_14;
  }

  v4 = v3;
  v5 = sub_1D917820C();
  v7 = v6;

  v8 = [v1 uberBackgroundImageURL];
  if (!v8)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD5E28);

    v18 = sub_1D917741C();
    v23 = sub_1D9178CEC();

    if (!os_log_type_enabled(v18, v23))
    {

      goto LABEL_16;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v53 = v25;
    *v24 = 136315138;
    v26 = sub_1D8CFA924(v5, v7, &v53);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1D8CEC000, v18, v23, "Unable to construct artwork model, show (%s) does not have required uber background image url", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1DA72CB90](v25, -1, -1);
    v21 = v24;
LABEL_14:
    MEMORY[0x1DA72CB90](v21, -1, -1);
LABEL_16:

    sub_1D8D39E08(&v53);
    v27 = v58;
    a1[8] = *&v57[64];
    a1[9] = v27;
    a1[10] = v59;
    v28 = *&v57[16];
    a1[4] = *v57;
    a1[5] = v28;
    v29 = *&v57[48];
    a1[6] = *&v57[32];
    a1[7] = v29;
    v30 = v54;
    *a1 = v53;
    a1[1] = v30;
    v31 = v56;
    a1[2] = v55;
    a1[3] = v31;
    return;
  }

  v51 = v5;
  v9 = v8;
  v50 = sub_1D917820C();
  v11 = v10;

  v12 = [v1 uberBackgroundJoeColor];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D917820C();
    v16 = v15;

    v32 = sub_1D8D3707C(v14, v16);
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = -1;
  }

  MTPodcast.uberBackgroundTextColors.getter(v60);
  v35 = [v1 title];
  if (v35)
  {
    v39 = v35;
    v40 = sub_1D917820C();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v43 = word_1EDCD78A8;
  v44 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v52[39] = v61[0];
  *&v52[23] = v60[1];
  *&v52[7] = v60[0];
  *&v53 = v50;
  *(&v53 + 1) = v11;
  *&v54 = v51;
  *(&v54 + 1) = v7;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = 0x40A0000000000000;
  *&v56 = 0x40A5580000000000;
  *(&v56 + 1) = v32;
  v57[0] = v34;
  *&v57[1] = *v52;
  *&v57[17] = *&v52[16];
  *&v57[33] = *&v52[32];
  *&v57[49] = *(v61 + 9);
  v57[65] = 4;
  v57[66] = v43;
  v57[67] = v44;
  *&v57[72] = v40;
  *&v58 = v42;
  BYTE8(v58) = byte_1EDCD7898;
  *(&v58 + 9) = 0;
  *&v59 = v50;
  *(&v59 + 1) = v11;
  nullsub_1(&v53, v36, v37, v38);
  v45 = v58;
  a1[8] = *&v57[64];
  a1[9] = v45;
  a1[10] = v59;
  v46 = *&v57[16];
  a1[4] = *v57;
  a1[5] = v46;
  v47 = *&v57[48];
  a1[6] = *&v57[32];
  a1[7] = v47;
  v48 = v54;
  *a1 = v53;
  a1[1] = v48;
  v49 = v56;
  a1[2] = v55;
  a1[3] = v49;
}

void MTEpisode.artworkModel.getter(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 uuid];
  if (!v4)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F88);
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "Critical issue: Show with nil UUID", v25, 2u);
    v26 = v25;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = [v2 artworkTemplateURL];
  if (!v9)
  {
LABEL_12:
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD5E28);

    v23 = sub_1D917741C();
    v28 = sub_1D9178CEC();

    if (!os_log_type_enabled(v23, v28))
    {

      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v91 = v30;
    *v29 = 136315138;
    v31 = sub_1D8CFA924(v6, v8, &v91);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1D8CEC000, v23, v28, "Unable to construct artwork model, episode (%s) does not have an artworkTemplateURL or invalid size", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1DA72CB90](v30, -1, -1);
    v26 = v29;
LABEL_16:
    MEMORY[0x1DA72CB90](v26, -1, -1);
LABEL_18:

    sub_1D8D39E08(&v91);
    v32 = v100;
    a1[8] = v99;
    a1[9] = v32;
    a1[10] = v101;
    v33 = v96;
    a1[4] = v95;
    a1[5] = v33;
    v34 = v98;
    a1[6] = v97;
    a1[7] = v34;
    v35 = v92;
    *a1 = v91;
    a1[1] = v35;
    v36 = v94;
    a1[2] = v93;
    a1[3] = v36;
    return;
  }

  v10 = v9;
  v11 = sub_1D917820C();
  v13 = v12;

  [v2 artworkWidth];
  if (v14 <= 10.0 || ([v2 artworkHeight], v15 <= 10.0))
  {

    goto LABEL_12;
  }

  v90 = v11;
  v16 = [v2 artworkBackgroundColor];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1D917820C();
    v20 = v19;

    v21 = sub_1D8D3707C(v18, v20);
    v88 = v37;
    v89 = v21;
  }

  else
  {
    v89 = 0;
    v88 = -1;
  }

  v38 = [v2 artworkTextPrimaryColor];
  if (v38)
  {
    v39 = v38;
    v40 = sub_1D917820C();
    v42 = v41;

    v43 = sub_1D8D3707C(v40, v42);
    v86 = v44;
    v87 = v43;
  }

  else
  {
    v87 = 0;
    v86 = -1;
  }

  v45 = [v2 artworkTextSecondaryColor];
  if (v45)
  {
    v46 = v45;
    v47 = sub_1D917820C();
    v49 = v48;

    v50 = sub_1D8D3707C(v47, v49);
    v84 = v51;
    v85 = v50;
  }

  else
  {
    v85 = 0;
    v84 = -1;
  }

  v52 = [v2 artworkTextTertiaryColor];
  if (v52)
  {
    v53 = v52;
    v54 = sub_1D917820C();
    v56 = v55;

    v57 = sub_1D8D3707C(v54, v56);
    v82 = v58;
    v83 = v57;
  }

  else
  {
    v83 = 0;
    v82 = -1;
  }

  v59 = [v2 artworkTextQuaternaryColor];
  if (v59)
  {
    v60 = v59;
    v61 = sub_1D917820C();
    v63 = v62;

    v64 = sub_1D8D3707C(v61, v63);
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = -1;
  }

  v67 = [v2 title];
  if (v67)
  {
    v71 = v67;
    v72 = sub_1D917820C();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 0;
  }

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v75 = word_1EDCD78A8;
  v76 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  *&v91 = v90;
  *(&v91 + 1) = v13;
  *&v92 = v6;
  *(&v92 + 1) = v8;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = 0x4082C00000000000;
  *&v94 = 0x4082C00000000000;
  *(&v94 + 1) = v89;
  LOBYTE(v95) = v88;
  *(&v95 + 1) = v87;
  LOBYTE(v96) = v86;
  *(&v96 + 1) = v85;
  LOBYTE(v97) = v84;
  *(&v97 + 1) = v83;
  LOBYTE(v98) = v82;
  *(&v98 + 1) = v64;
  LOWORD(v99) = v66;
  BYTE2(v99) = v75;
  BYTE3(v99) = v76;
  *(&v99 + 1) = v72;
  *&v100 = v74;
  BYTE8(v100) = byte_1EDCD7898;
  *(&v100 + 9) = 0;
  *&v101 = v6;
  *(&v101 + 1) = v8;
  nullsub_1(&v91, v68, v69, v70);
  v77 = v100;
  a1[8] = v99;
  a1[9] = v77;
  a1[10] = v101;
  v78 = v96;
  a1[4] = v95;
  a1[5] = v78;
  v79 = v98;
  a1[6] = v97;
  a1[7] = v79;
  v80 = v92;
  *a1 = v91;
  a1[1] = v80;
  v81 = v94;
  a1[2] = v93;
  a1[3] = v81;
}

uint64_t sub_1D8D38088()
{
  result = type metadata accessor for EyebrowBuilder.ListContext(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D8D38158()
{
  sub_1D9176E3C();
  if (v0 <= 0x3F)
  {
    sub_1D8D2FF34();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D8D381FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (result = sub_1D8D33C70(0xD000000000000017, 0x80000001D91C7E80), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + result);
  }

  else
  {
    sub_1D8D3EA04(0xD000000000000017, 0x80000001D91C7E80, 0xD000000000000027, 0x80000001D91D9E60);
    v8 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v7 = [v8 BOOLForKey_];

    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    result = sub_1D8D30280(v7, 0xD000000000000017, 0x80000001D91C7E80, isUniquelyReferenced_nonNull_native);
    *a1 = v12;
  }

  *a2 = v7;
  return result;
}