uint64_t sub_1D8D5276C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

void *sub_1D8D527C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(a1 >> 62))
  {
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_23:
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v5 = sub_1D917935C();
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  v6 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA72AA90](i, a1);
      }

      else
      {
        if (i >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v10 = [v8 objectID];
      sub_1D8D418D4(&v21, v10);

      v11 = sub_1D8D69334(&v21, a2, v10, a3, v9);
      if (v11 != 2 && v22 != 1)
      {
        break;
      }

      if (v6 == v5)
      {
        return v19;
      }
    }

    v12 = v11;
    v18 = v21;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1D8D6A248(0, v19[2] + 1, 1, v19);
    }

    v15 = v19[2];
    v14 = v19[3];
    if (v15 >= v14 >> 1)
    {
      v19 = sub_1D8D6A248((v14 > 1), v15 + 1, 1, v19);
    }

    v19[2] = v15 + 1;
    v16 = &v19[3 * v15];
    *(v16 + 32) = v12 & 1;
    v16[5] = v18;
    v16[6] = v10;
  }

  while (v6 != v5);
  return v19;
}

uint64_t sub_1D8D529E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1D917935C();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1D8D52AD8(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1D917935C() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1D917935C();
  v2 = sub_1D8EFC150(v5, v6);
LABEL_10:

  return sub_1D8D6AC64(a1, v2);
}

void sub_1D8D52AD8(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    if (!sub_1D917935C())
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    sub_1D9110A64();
    sub_1D9178B3C();
    a1 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_18:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_24:
      sub_1D8D1B144();
      return;
    }

    while (1)
    {
      v18 = sub_1D910EC20(v17);

      v7 = v15;
      v8 = v16;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      if (sub_1D917938C())
      {
        sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
        swift_dynamicCast();
        v17 = v19;
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_24;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_1D8D52CF8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F88);
  sub_1D8D088B4(v2, v13, &unk_1ECAB8698, &qword_1D91A2240);

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136316674;
    *(v9 + 4) = sub_1D8CFA924(a1, a2, v13);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(v3 + 56) & 1;
    v11 = *(v3 + 8);
    *(v9 + 20) = *(v3 + 16);
    *(v9 + 30) = *(v3 + 24);
    *(v9 + 40) = *(v3 + 40);
    *(v9 + 18) = 2048;
    *(v9 + 28) = 2048;
    *(v9 + 38) = 2048;
    *(v9 + 48) = 2048;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = sub_1D917935C();
    }

    else
    {
      v12 = *(v11 + 16);
    }

    *(v9 + 50) = v12;
    *(v9 + 58) = 2048;
    *(v9 + 60) = *(v3 + 48);
    sub_1D8D08A50(v3, &unk_1ECAB8698, &qword_1D91A2240);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "FetchedResultsPublisher (%s):\nUpdate Stats\n    Update pushed: %{BOOL}d\n    Added to cache: %ld\n    Items updated: %ld\n    Items removed: %ld\n    Total paged items: %ld\n    Total items in DB: %ld", v9, 0x44u);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
    sub_1D8D08A50(v3, &unk_1ECAB8698, &qword_1D91A2240);
  }
}

BOOL sub_1D8D52F10()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForSubscribedChannel];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &unk_1EDCD0798, off_1E8567588);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has channels with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

BOOL sub_1D8D53120()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has shows with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

BOOL sub_1D8D53330()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v2 = [objc_opt_self() predicateForPreviouslyPlayedHidingFutureTimestamps];
  [v1 setPredicate_];

  [v1 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v3 = sub_1D917907C();
  if (v0)
  {
    if (qword_1ECAB0BF0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB0BF8);
    v5 = v0;
    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = sub_1D9176A5C();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Could not determine if user has episodes with error: %@", v8, 0xCu);
      sub_1D8E262AC(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v12 = v3;

    return v12 > 0;
  }

  return v11;
}

uint64_t Optional<A>.isEmpty.getter(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v7, v1, v4);
  v8 = *(v1 + 16);
  v9 = *(v8 - 8);
  v10 = 1;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1D9178BAC();
    v2 = v9;
    v1 = v8;
  }

  (*(v2 + 8))(v6, v1);
  return v10 & 1;
}

uint64_t NSUserDefaults.queryPublisher<A>(_:)(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v70 = a1;
  v71 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55 - v7;
  v9 = sub_1D9178FBC();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6EB8, &qword_1D9196340);
  v68 = *(v63 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v55 - v14;
  v64 = sub_1D8CF48EC(&qword_1EDCD0BC8, &qword_1ECAB6EB8, &qword_1D9196340);
  v16 = sub_1D917768C();
  v69 = *(v16 - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v58 = &v55 - v18;
  v19 = sub_1D91786FC();
  WitnessTable = swift_getWitnessTable();
  v72 = v19;
  v73 = MEMORY[0x1E69E73E0];
  v74 = WitnessTable;
  v75 = MEMORY[0x1E69E7410];
  v21 = sub_1D917774C();
  v22 = swift_getWitnessTable();
  v62 = v16;
  v61 = swift_getWitnessTable();
  v72 = v21;
  v73 = v16;
  v74 = v22;
  v75 = v61;
  v23 = sub_1D91775CC();
  v65 = *(v23 - 8);
  v24 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v56 = &v55 - v25;
  v57 = swift_getWitnessTable();
  v26 = sub_1D917765C();
  v27 = *(v26 - 8);
  v59 = v26;
  v60 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v55 = &v55 - v29;
  v30 = [objc_opt_self() defaultCenter];
  v31 = *MEMORY[0x1E696AA70];
  sub_1D9178FCC();

  sub_1D8CFD888();
  v32 = sub_1D9178E1C();
  v72 = v32;
  v33 = sub_1D9178DBC();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  sub_1D8D11A5C(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  sub_1D8D11A5C(&qword_1EDCD0980, sub_1D8CFD888);
  sub_1D9177CEC();
  sub_1D8D2210C(v8);

  (*(v66 + 8))(v12, v9);
  v34 = swift_allocObject();
  v35 = v67;
  v34[2] = a3;
  v34[3] = v35;
  v36 = v70;
  v37 = v71;
  v34[4] = v70;
  v34[5] = v37;

  v38 = v58;
  v39 = v63;
  sub_1D9177B9C();

  (*(v68 + 8))(v15, v39);
  v40 = sub_1D8D53E90(a3, a3);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = *(*(a3 - 8) + 72);
  v44 = *(*(a3 - 8) + 80);
  swift_allocObject();
  v45 = sub_1D917861C();
  v36();
  sub_1D8D4D228(v45);
  v46 = v56;
  v47 = v62;
  sub_1D9177CCC();

  (*(v69 + 8))(v38, v47);
  v48 = v55;
  sub_1D9177D6C();
  (*(v65 + 8))(v46, v23);
  v49 = v59;
  v50 = swift_getWitnessTable();
  v51 = v48;
  v52 = Publisher.bufferedMulticast()(v49, v50);
  (*(v60 + 8))(v51, v49);
  v72 = v52;
  sub_1D917781C();
  swift_getWitnessTable();
  v53 = sub_1D9177B1C();

  return v53;
}

uint64_t sub_1D8D53E58()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8D53E90(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_1D8D541E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D8D54200(a1, a2);
}

uint64_t sub_1D8D54200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  (*(v7 + 16))(a2, a1, AssociatedTypeWitness);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, AssociatedTypeWitness);
}

void *sub_1D8D542D8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D8D54350(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  if (qword_1ECAB0078 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB0080[0];
  v9 = qword_1ECAB0088[0];

  result = MEMORY[0x1DA7298F0](a2, 0xEA00000000006465);
  *a3 = v8;
  *a4 = v9;
  return result;
}

uint64_t sub_1D8D5440C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1DA7298F0](a2, 0xE700000000000000);
  *a3 = 0xD00000000000001ALL;
  *a4 = 0x80000001D91D8020;
  return result;
}

void RepublishingValueSubject.send(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  if (*(v1 + 24) == 1)
  {
    v5 = v1 + *(*v1 + 128);
    swift_beginAccess();
    v6 = *v5;
    v7 = *(*v1 + 136);
    LOBYTE(v5) = *(v5 + 8);
    swift_beginAccess();
    sub_1D8D546A0(v6, v5);
    (*(*(v3[10] - 8) + 24))(v1 + v7, a1, v3[10]);
    swift_endAccess();
    os_unfair_lock_unlock(v4 + 4);
    MEMORY[0x1EEE9AC00](v8);
    v11[2] = a1;
    v9 = v3[11];
    v10 = v3[12];
    sub_1D8D546BC(sub_1D8D5480C, v11, v6, v5);
    sub_1D8D54860(v6, v5);
  }

  else
  {

    os_unfair_lock_unlock(v4 + 4);
  }
}

uint64_t sub_1D8D546A0(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t (*sub_1D8D546BC(uint64_t (*result)(uint64_t), uint64_t a2, uint64_t a3, char a4))(uint64_t)
{
  if (!a4)
  {
    return result(a3);
  }

  if (a4 == 1)
  {
    MEMORY[0x1EEE9AC00](result);
    type metadata accessor for ConduitBase();
    swift_getWitnessTable();
    sub_1D9178B4C();
    swift_getWitnessTable();
    return sub_1D91784BC();
  }

  return result;
}

uint64_t sub_1D8D547E0(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return v2(*a1);
}

uint64_t sub_1D8D54860(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_1D8D5487C()
{
  sub_1D9179DBC();
  v1 = *v0;
  sub_1D8D561C0();
  return sub_1D9179E1C();
}

void MTEpisode.listenNowReason.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v2 listenNowEpisode])
  {
    goto LABEL_28;
  }

  v10 = [v2 podcast];
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  if ([v2 isVisuallyPlayed])
  {

    *a1 = 1;
    *(a1 + 8) = 1;
    return;
  }

  if (([v2 isPartiallyPlayed] & 1) == 0 && (objc_msgSend(v2, sel_isPartiallyPlayedBackCatalogItem) & 1) == 0 && !objc_msgSend(v2, sel_isPlayheadPartiallyPlayed))
  {
    sub_1D9176E2C();
    sub_1D9176CCC();
    v14 = v13;
    (*(v5 + 8))(v9, v4);
    if (([v11 subscribed] & 1) == 0)
    {
      if ([v2 isBookmarked])
      {
        [v2 lastBookmarkedDate];
        v16 = v15;
        [v11 lastDatePlayed];
        if (v17 < v16)
        {
          goto LABEL_19;
        }
      }
    }

    [v11 lastDatePlayed];
    if (v18 > 0.0)
    {
      if ([v2 episodeLevel])
      {
      }

      else
      {
        [v2 pubDate];
        v25 = v24;

        if (v14 < v25 + 5184000.0)
        {
          v21 = 2;
LABEL_26:
          *a1 = v21;
          v12 = 1;
          goto LABEL_29;
        }
      }

      v21 = 3;
      goto LABEL_26;
    }

    if ([v11 subscribed])
    {
      [v11 addedDate];
      v20 = v19;

      if (v14 >= v20 + 5184000.0)
      {
        v21 = 5;
      }

      else
      {
        v21 = 4;
      }

      goto LABEL_26;
    }

    if ([v2 isBookmarked])
    {
LABEL_19:
      [v2 lastBookmarkedDate];
      v23 = v22;

      if (v14 >= v23 + 5184000.0)
      {
        v21 = 7;
      }

      else
      {
        v21 = 6;
      }

      goto LABEL_26;
    }

LABEL_28:
    *a1 = 0;
    v12 = 256;
    goto LABEL_29;
  }

  *a1 = 0;
  v12 = 1;
LABEL_29:
  *(a1 + 8) = v12;
}

void sub_1D8D54D38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v4 = sub_1D8D54E74(&qword_1EDCD09C8, &qword_1EDCD09D0, 0x1E695D630);
  v5 = 0;
  v12[1] = MEMORY[0x1DA72A0A0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1D8D418D4(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D54E74(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D8CF2154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t _s18PodcastsFoundation14EyebrowBuilderC21listenNowReasonString6reason5style17isPlayingOrPlayed16showTypeIsSerialSSSgAA013EpisodeListenfG0O_AC5StyleOS2btFZ_0(uint64_t a1, unsigned __int8 *a2, char a3, char a4)
{
  v4 = *a1;
  if (*(a1 + 8) != 1)
  {
    v6 = *a1;
    v7 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v7);

    return 0xD000000000000016;
  }

  v5 = *a2;
  if (v4 > 3)
  {
    if (v4 > 5)
    {
      if (v4 == 6)
      {
        if (v5 == 1)
        {
        }

        else
        {
          v10 = sub_1D9179ACC();

          if ((v10 & 1) == 0)
          {
            if (qword_1EDCD5F00 == -1)
            {
              return sub_1D917693C();
            }

            goto LABEL_40;
          }
        }
      }

      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }

    if (v4 == 4)
    {
      if (v5 == 1)
      {
      }

      else
      {
        v9 = sub_1D9179ACC();

        if ((v9 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_40;
  }

  if (v4 < 2)
  {
    if ((a3 & 1) == 0)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }

    return 0;
  }

  if (v4 == 2)
  {
    if ((a4 & 1) == 0)
    {
      if (qword_1EDCD5F00 == -1)
      {
        return sub_1D917693C();
      }

      goto LABEL_40;
    }
  }

  else if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (v5 == 1)
  {

    goto LABEL_36;
  }

  v11 = sub_1D9179ACC();

  if (v11)
  {
LABEL_36:
    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

    goto LABEL_40;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_40:
    swift_once();
  }

  return sub_1D917693C();
}

uint64_t sub_1D8D553A8(uint64_t a1)
{
  v2 = v1;
  v78 = *v2;
  v77 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v4 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - v8;
  v10 = *a1;
  LODWORD(v11) = *(a1 + 8);
  v12 = v2[24];
  v13 = v2[25];
  __swift_project_boxed_opaque_existential_1(v2 + 21, v12);
  if ((*(v13 + 72))(v12, v13))
  {
    swift_beginAccess();
    v14 = v2[15];
    v76 = v11;
    if (v14)
    {
      v11 = v10;
      v15 = v2[14];

      v16 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1D8D4241C((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v14;
      v10 = v11;
      LOBYTE(v11) = v76;
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    if (v10 < 4)
    {
      v20 = v11;
    }

    else
    {
      v20 = 0;
    }

    if ((v20 & 1) == 0)
    {
      goto LABEL_33;
    }

    v72 = v10;
    v75 = v6;
    sub_1D8CFD9D8((v2 + 21), v79);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v21 = v2[19];
    v74 = v2[18];
    v73 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
    v22 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
    v23 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
    v24 = *(v78 + 48);
    v25 = *(v78 + 52);
    v26 = swift_allocObject();
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    *(v26 + 128) = 0u;
    *(v26 + 159) = 0;
    *(v26 + 16) = 0u;
    *(v26 + 144) = 0u;
    sub_1D8CFD9D8(v79, v26 + 168);
    sub_1D8D423B4(v9, v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 1;
    swift_beginAccess();
    *(v26 + 144) = v74;
    *(v26 + 152) = v21;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = v73;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = v22;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = v23;

    v27 = sub_1D8D2EF54();
    v28 = sub_1D8D3C1DC(v27);
    v30 = v29;
    sub_1D8D41C00(v9, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    swift_beginAccess();
    v31 = *(v26 + 24);
    *(v26 + 16) = v28;
    *(v26 + 24) = v30;

    swift_beginAccess();
    if (*(v26 + 160) == 1)
    {
      v6 = v75;
      if (v30)
      {
        swift_beginAccess();
        *(v2 + 160) = 1;
        swift_beginAccess();
        v32 = *(v26 + 161);
        swift_beginAccess();
        *(v2 + 161) = v32;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8D4241C(0, *(v16 + 2) + 1, 1, v16);
        }

        v34 = *(v16 + 2);
        v33 = *(v16 + 3);
        if (v34 >= v33 >> 1)
        {
          v16 = sub_1D8D4241C((v33 > 1), v34 + 1, 1, v16);
        }

        *(v16 + 2) = v34 + 1;
        v35 = &v16[16 * v34];
        *(v35 + 4) = v28;
        *(v35 + 5) = v30;
LABEL_46:
        v51 = sub_1D8D42528(v16);

        swift_setDeallocating();
        EyebrowBuilder.deinit();
        v69 = *(*v26 + 48);
        v70 = *(*v26 + 52);
        swift_deallocClassInstance();
        return v51;
      }

      swift_setDeallocating();
      EyebrowBuilder.deinit();
      v38 = *(*v26 + 48);
      v39 = *(*v26 + 52);
      swift_deallocClassInstance();
    }

    else
    {

      swift_setDeallocating();
      EyebrowBuilder.deinit();
      v36 = *(*v26 + 48);
      v37 = *(*v26 + 52);
      swift_deallocClassInstance();
      v6 = v75;
    }

    v10 = v72;
    LOBYTE(v11) = v76;
  }

  swift_beginAccess();
  v40 = v2[15];
  if (v40)
  {
    v41 = v10;
    v42 = v2[14];
    v43 = v2[15];

    v16 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v45 = *(v16 + 2);
    v44 = *(v16 + 3);
    if (v45 >= v44 >> 1)
    {
      v16 = sub_1D8D4241C((v44 > 1), v45 + 1, 1, v16);
    }

    *(v16 + 2) = v45 + 1;
    v46 = &v16[16 * v45];
    *(v46 + 4) = v42;
    *(v46 + 5) = v40;
    v10 = v41;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v10 < 4)
  {
    v47 = v11;
  }

  else
  {
    v47 = 0;
  }

  if (v47)
  {
    if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) && *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) == 1)
    {
    }

    else
    {
      v50 = sub_1D9179ACC();

      if ((v50 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    if (*(v16 + 2))
    {
      goto LABEL_37;
    }

LABEL_39:
    sub_1D8CFD9D8((v2 + 21), v79);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v77 = v2[18];
    v52 = v6;
    v53 = v2[19];
    v76 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
    v54 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
    v55 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
    v56 = *(v78 + 48);
    v57 = *(v78 + 52);
    v26 = swift_allocObject();
    *(v26 + 32) = 0u;
    *(v26 + 48) = 0u;
    *(v26 + 64) = 0u;
    *(v26 + 80) = 0u;
    *(v26 + 96) = 0u;
    *(v26 + 112) = 0u;
    *(v26 + 128) = 0u;
    *(v26 + 159) = 0;
    *(v26 + 16) = 0u;
    *(v26 + 144) = 0u;
    sub_1D8CFD9D8(v79, v26 + 168);
    sub_1D8D423B4(v52, v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, type metadata accessor for EyebrowBuilder.ListContext);
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 1;
    swift_beginAccess();
    *(v26 + 144) = v77;
    *(v26 + 152) = v53;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge) = v76;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace) = v54;
    *(v26 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate) = v55;

    v58 = sub_1D8D2EF54();
    v59 = sub_1D8D3C1DC(v58);
    v61 = v60;
    sub_1D8D41C00(v52, type metadata accessor for EyebrowBuilder.ListContext);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    swift_beginAccess();
    v62 = *(v26 + 24);
    *(v26 + 16) = v59;
    *(v26 + 24) = v61;

    if (v61)
    {
      swift_beginAccess();
      v63 = *(v26 + 160);
      swift_beginAccess();
      *(v2 + 160) = v63;
      swift_beginAccess();
      v64 = *(v26 + 161);
      swift_beginAccess();
      *(v2 + 161) = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D8D4241C(0, *(v16 + 2) + 1, 1, v16);
      }

      v66 = *(v16 + 2);
      v65 = *(v16 + 3);
      if (v66 >= v65 >> 1)
      {
        v16 = sub_1D8D4241C((v65 > 1), v66 + 1, 1, v16);
      }

      *(v16 + 2) = v66 + 1;
      v67 = &v16[16 * v66];
      *(v67 + 4) = v59;
      *(v67 + 5) = v61;
    }

    swift_beginAccess();
    v68 = *(v26 + 162);
    swift_beginAccess();
    *(v2 + 162) = v68;
    goto LABEL_46;
  }

LABEL_33:
  if (*(v16 + 2))
  {
LABEL_37:
    v48 = *(v16 + 4);
    v49 = *(v16 + 5);

    goto LABEL_38;
  }

  v48 = 0;
  v49 = 0;
LABEL_38:

  v51 = sub_1D8D3CF24(v48, v49);

  return v51;
}

Swift::String __swiftcall EpisodeListenNowReason.stringDescriptionForPrototypeUpNext()()
{
  if (v0[1])
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    v3 = *v0;
    v4 = sub_1D9178A4C();
    MEMORY[0x1DA7298F0](v4);

    v1 = 0xD000000000000016;
    v2 = 0x80000001D91D0770;
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D8D55D60(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 192);
  v7 = *(v2 + 200);
  __swift_project_boxed_opaque_existential_1((v2 + 168), v6);
  v8 = (*(v7 + 88))(v6, v7);
  result = 0;
  if ((v10 & 1) == 0 && v8 >= 1)
  {
    v11 = *(v2 + 192);
    v12 = *(v2 + 200);
    __swift_project_boxed_opaque_existential_1((v2 + 168), v11);
    v13 = (*(v12 + 96))(v11, v12);
    result = 0;
    if ((v14 & 1) == 0 && v13 >= 1)
    {
      swift_beginAccess();
      *(v2 + 161) = 1;
      swift_beginAccess();
      *(v2 + 160) = 1;
      v15 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style;
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) - 1 <= 1)
      {
        MEMORY[0x1DA7298F0](0x54524F48535FLL, 0xE600000000000000);
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v16 = swift_allocObject();
      v17 = MEMORY[0x1E69E7360];
      *(v16 + 16) = xmmword_1D9189080;
      v18 = MEMORY[0x1E69E73D8];
      *(v16 + 56) = v17;
      *(v16 + 64) = v18;
      *(v16 + 32) = v8;
      v19 = sub_1D91781DC();
      v21 = v20;

      v22 = sub_1D8D3A0AC(a1 & 1);
      if (!v23)
      {
        return v19;
      }

      v24 = v22;
      v25 = v23;
      if (a2)
      {
        goto LABEL_19;
      }

      if (*(v3 + v15))
      {
        v26 = sub_1D9179ACC();

        if ((v26 & 1) == 0)
        {
LABEL_19:
          sub_1D917693C();
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1D918A530;
          v29 = MEMORY[0x1E69E6158];
          *(v28 + 56) = MEMORY[0x1E69E6158];
          v30 = sub_1D8D34978();
          *(v28 + 32) = v19;
          *(v28 + 40) = v21;
          *(v28 + 96) = v29;
          *(v28 + 104) = v30;
          *(v28 + 64) = v30;
          *(v28 + 72) = v24;
          *(v28 + 80) = v25;
          v27 = sub_1D91781DC();

          return v27;
        }
      }

      else
      {
      }

      v27 = sub_1D8D41CB8(v24, v25, v19);

      return v27;
    }
  }

  return result;
}

uint64_t sub_1D8D56178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

void RepublishingValueSubject.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  os_unfair_lock_lock((*(v1 + 2) + 16));
  v4 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v4]);
  os_unfair_lock_unlock((*(v1 + 2) + 16));
}

void sub_1D8D562B0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 176);
  v171 = *(*v1 + 184);
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D91777CC();
  v184 = *(v6 - 8);
  v7 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v164 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v150 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v150 - v13;
  v180 = *(*(v3 + 160) - 8);
  v14 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v150 - v16;
  v178 = v17;
  v18 = sub_1D91791BC();
  v176 = *(v18 - 8);
  v19 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v175 = &v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v179 = &v150 - v22;
  v183 = v6;
  v23 = sub_1D91791BC();
  v24 = *(v23 - 8);
  v181 = v23;
  v182 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v167 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v150 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v160 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v162 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v163 = &v150 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v170 = &v150 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v165 = &v150 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v150 - v41;
  v186 = sub_1D91791BC();
  v43 = *(v186 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v169 = &v150 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v150 - v47;
  v187 = v5;
  v49 = *(v5 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v185 = &v150 - v52;
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
    goto LABEL_76;
  }

LABEL_4:
  v173 = v29;
  v159 = v11;
  v177 = v18;
  v53 = *&v1[*(*v1 + 216)];
  os_unfair_lock_lock(v53 + 4);
  v54 = *(*v1 + 200);
  swift_beginAccess();
  v55 = *(v43 + 16);
  v168 = v54;
  v56 = v186;
  v55(v48, &v1[v54], v186);
  v57 = *(v49 + 48);
  v58 = v49;
  v59 = v187;
  if (v57(v48, 1, v187) == 1)
  {
    (*(v43 + 8))(v48, v56);
    os_unfair_lock_unlock(v53 + 4);
    return;
  }

  v172 = v53;
  v166 = v58;
  (*(v58 + 32))(v185, v48, v59);
  v1[*(*v1 + 240)] = 1;
  v60 = *(*v1 + 248);
  swift_beginAccess();
  v61 = v181;
  v62 = v182;
  v63 = *(v182 + 16);
  v157 = v182 + 16;
  v156 = v63;
  v63(v42, &v1[v60], v181);
  v64 = v184 + 48;
  v154 = *(v184 + 48);
  v158 = v154(v42, 1, v183);
  v66 = *(v62 + 8);
  v65 = v62 + 8;
  v66(v42, v61);
  v67 = *v1;
  v68 = *(*v1 + 232);
  v69 = v1[v68];
  v155 = v66;
  if ((v69 & 1) == 0)
  {
    sub_1D91777FC();
    v77 = sub_1D91777DC();
    v152 = v65;
    if (v77)
    {
      v78 = sub_1D91777FC();
      v79 = v180;
LABEL_16:
      v80 = *(*v1 + 208);
      swift_beginAccess();
      v81 = *&v1[v80];
      sub_1D91777FC();
      if ((sub_1D91777DC() & 1) == 0)
      {
        sub_1D91777FC();
        v82 = sub_1D91777DC();
        v83 = sub_1D91777FC();
        if (v82)
        {
          v79 = v180;
        }

        else
        {
          v85 = sub_1D91777DC();
          v79 = v180;
          if (v85)
          {
            goto LABEL_28;
          }

          if ((v81 | v78) < 0)
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }

          v83 = v81 + v78;
          if (__OFADD__(v81, v78))
          {
LABEL_28:
            v83 = sub_1D91777FC();
          }

          else if (v83 < 0)
          {
LABEL_82:
            __break(1u);
            goto LABEL_83;
          }
        }

        *&v1[v80] = v83;
      }

      swift_endAccess();
      v101 = 1;
      v1[v68] = 1;
      v102 = *(v1 + 2);
      v151 = v60;
      if (v102)
      {

        v103 = v179;
        RepublishingValueSubject.value.getter(v179);

        v101 = 0;
      }

      else
      {
        v103 = v179;
      }

      v104 = v178;
      (*(v79 + 56))(v103, v101, 1, v178);
      os_unfair_lock_unlock(v172 + 4);
      v106 = v176;
      v105 = v177;
      v107 = v175;
      (*(v176 + 16))(v175, v103, v177);
      if ((*(v79 + 48))(v107, 1, v104) == 1)
      {
        v108 = *(v106 + 8);
        v108(v103, v105);
        (*(v166 + 8))(v185, v187);
        v108(v107, v105);
        return;
      }

      v153 = v64;
      (*(v79 + 32))(v174, v107, v104);
      v109 = *&v1[*(*v1 + 224)];
      os_unfair_recursive_lock_lock_with_options();
      v110 = v187;
      v111 = sub_1D91777AC();
      os_unfair_recursive_lock_unlock();
      sub_1D91777FC();
      v112 = v106;
      if (sub_1D91777DC())
      {
        goto LABEL_48;
      }

      if ((v111 & 0x8000000000000000) == 0)
      {
        if (!v111)
        {
          v117 = v172;
          os_unfair_lock_lock(v172 + 4);
          if (v158 == 1)
          {
            v118 = v117 + 4;
LABEL_66:
            os_unfair_lock_unlock(v118);
            (*(v79 + 8))(v174, v178);
            (*(v112 + 8))(v179, v177);
            (*(v166 + 8))(v185, v110);
            return;
          }

          v119 = v166;
          v120 = v169;
          (*(v166 + 56))(v169, 1, 1, v110);
          v121 = v168;
          swift_beginAccess();
          (*(v43 + 40))(&v1[v121], v120, v186);
          swift_endAccess();
          v122 = *(v1 + 2);
          *(v1 + 2) = 0;
          v123 = v151;
          v124 = v181;
          v156(v162, &v1[v151], v181);
          v125 = v183;
          v126 = v170;
          (*(v184 + 56))(v170, 1, 1, v183);
          swift_beginAccess();
          (*(v182 + 40))(&v1[v123], v126, v124);
          swift_endAccess();
          os_unfair_lock_unlock(v117 + 4);
          v127 = v179;
          if (v122)
          {

            sub_1D8DB34BC(v1);
          }

          v128 = v160;
          v129 = v162;
          v156(v160, v162, v124);
          if (v154(v128, 1, v125) != 1)
          {
            v146 = v184;
            v147 = v159;
            (*(v184 + 32))(v159, v128, v125);
            os_unfair_recursive_lock_lock_with_options();
            v148 = v185;
            v149 = v187;
            sub_1D917778C();
            os_unfair_recursive_lock_unlock();

            (*(v146 + 8))(v147, v125);
            v155(v162, v124);
            (*(v180 + 8))(v174, v178);
            (*(v112 + 8))(v179, v177);
            (*(v119 + 8))(v148, v149);
            return;
          }

          v130 = v155;
          v155(v129, v124);
          (*(v180 + 8))(v174, v178);
          (*(v112 + 8))(v127, v177);
          (*(v119 + 8))(v185, v187);
          v131 = v128;
LABEL_71:
          v130(v131, v124);
          return;
        }

LABEL_48:
        os_unfair_lock_lock(v172 + 4);
        swift_beginAccess();
        v113 = *&v1[v80];
        sub_1D91777FC();
        if ((sub_1D91777DC() & 1) == 0)
        {
          sub_1D91777FC();
          v114 = sub_1D91777DC();
          v115 = sub_1D91777FC();
          if (v114)
          {
            v79 = v180;
          }

          else
          {
            v116 = sub_1D91777DC();
            v79 = v180;
            if (v116)
            {
              goto LABEL_55;
            }

            if ((v113 | v111) < 0)
            {
LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

            v115 = v113 + v111;
            if (__OFADD__(v113, v111))
            {
LABEL_55:
              v115 = sub_1D91777FC();
            }

            else if (v115 < 0)
            {
LABEL_84:
              __break(1u);
              return;
            }
          }

          *&v1[v80] = v115;
        }

        swift_endAccess();
        if (v158 == 1)
        {
          v118 = v172 + 4;
          goto LABEL_66;
        }

        v132 = v166;
        v133 = v169;
        (*(v166 + 56))(v169, 1, 1, v110);
        v134 = v168;
        swift_beginAccess();
        (*(v43 + 40))(&v1[v134], v133, v186);
        swift_endAccess();
        v135 = *(v1 + 2);
        *(v1 + 2) = 0;
        v136 = v151;
        v137 = v165;
        v124 = v181;
        v156(v165, &v1[v151], v181);
        v138 = v183;
        v139 = v170;
        (*(v184 + 56))(v170, 1, 1, v183);
        swift_beginAccess();
        (*(v182 + 40))(&v1[v136], v139, v124);
        swift_endAccess();
        os_unfair_lock_unlock(v172 + 4);
        v140 = v179;
        if (v135)
        {

          sub_1D8DB34BC(v1);
        }

        v141 = v163;
        v156(v163, v137, v124);
        if (v154(v141, 1, v138) != 1)
        {
          v142 = v184;
          v143 = v161;
          (*(v184 + 32))(v161, v141, v138);
          os_unfair_recursive_lock_lock_with_options();
          v144 = v185;
          v145 = v187;
          sub_1D917778C();
          os_unfair_recursive_lock_unlock();

          (*(v142 + 8))(v143, v138);
          v155(v165, v124);
          (*(v180 + 8))(v174, v178);
          (*(v112 + 8))(v179, v177);
          (*(v132 + 8))(v144, v145);
          return;
        }

        v130 = v155;
        v155(v137, v124);
        (*(v180 + 8))(v174, v178);
        (*(v112 + 8))(v140, v177);
        (*(v132 + 8))(v185, v187);
        v131 = v141;
        goto LABEL_71;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v79 = v180;
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v78 = a1 - 1;
        goto LABEL_16;
      }

LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v153 = v64;
  v70 = *(v67 + 208);
  swift_beginAccess();
  v71 = *&v1[v70];
  sub_1D91777FC();
  v72 = sub_1D91777DC();
  v73 = v166;
  v74 = v186;
  if (v72)
  {
    goto LABEL_31;
  }

  sub_1D91777FC();
  v75 = sub_1D91777DC();
  v76 = sub_1D91777FC();
  if ((v75 & 1) == 0)
  {
    v84 = sub_1D91777DC();
    v74 = v186;
    if (v84)
    {
      goto LABEL_23;
    }

    if (((v71 | a1) & 0x8000000000000000) == 0)
    {
      v76 = v71 + a1;
      if (!__OFADD__(v71, a1))
      {
        if ((v76 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_81;
      }

LABEL_23:
      v76 = sub_1D91777FC();
      goto LABEL_30;
    }

    goto LABEL_79;
  }

  v74 = v186;
LABEL_30:
  *&v1[v70] = v76;
LABEL_31:
  swift_endAccess();
  if (v158 == 1)
  {
    os_unfair_lock_unlock(v172 + 4);
    (*(v73 + 8))(v185, v187);
  }

  else
  {
    v86 = *(v73 + 56);
    v87 = v169;
    v88 = v187;
    v86(v169, 1, 1, v187);
    v89 = v168;
    swift_beginAccess();
    (*(v43 + 40))(&v1[v89], v87, v74);
    swift_endAccess();
    v90 = *(v1 + 2);
    *(v1 + 2) = 0;
    v91 = v156;
    v156(v173, &v1[v60], v61);
    v92 = v183;
    v93 = v170;
    (*(v184 + 56))(v170, 1, 1, v183);
    swift_beginAccess();
    (*(v182 + 40))(&v1[v60], v93, v61);
    swift_endAccess();
    os_unfair_lock_unlock(v172 + 4);
    if (v90)
    {

      sub_1D8DB34BC(v1);
      v61 = v181;
    }

    v94 = v167;
    v95 = v173;
    v91(v167, v173, v61);
    if (v154(v94, 1, v92) == 1)
    {

      v96 = v155;
      v155(v95, v61);
      (*(v166 + 8))(v185, v88);
      v96(v94, v61);
    }

    else
    {
      v97 = v184;
      v98 = v164;
      (*(v184 + 32))(v164, v94, v92);
      v99 = *&v1[*(*v1 + 224)];
      os_unfair_recursive_lock_lock_with_options();
      v100 = v185;
      sub_1D917778C();
      os_unfair_recursive_lock_unlock();

      (*(v97 + 8))(v98, v92);
      v155(v95, v61);
      (*(v166 + 8))(v100, v88);
    }
  }
}

uint64_t PerformanceLoadable.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Loadable();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t Loadable.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 2, v8))
  {
    (*(v9 + 56))(a2, 1, 1, v8);
    return (*(v4 + 8))(v7, a1);
  }

  else
  {
    (*(v9 + 32))(a2, v7, v8);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }
}

uint64_t Loadable.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18);
  v19 = (*(v8 + 48))(v16, 2, v7);
  if (!v19)
  {
    (*(v8 + 32))(v12, v16, v7);
    a1(v12);
    (*(v8 + 8))(v12, v7);
  }

  return (*(*(a3 - 8) + 56))(a4, v19, 2, a3);
}

BOOL Loadable.notLoaded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 2);
  if (v6 != 1)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 == 1;
}

uint64_t sub_1D8D5810C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  sub_1D9177AAC();
  return swift_endAccess();
}

Swift::Void __swiftcall PageContextTracker.push(_:)(PodcastsFoundation::MetricsPageContext a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 6);
  sub_1D8D5828C(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_1D8D58208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_1D8D582AC(0, 0, a2, a3);

  v8 = *(*a1 + 16);
  v9 = *(a4 + 24);
  result = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
  }

  else if (result >= 1)
  {
    return sub_1D8F90464(result);
  }

  return result;
}

unint64_t sub_1D8D582AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_1D8D58388(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1D8D58494(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

char *sub_1D8D58388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6120, &qword_1D9192128);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1D8D58494(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D8D585CC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_1D8F4D954;
  }

  else
  {
    v3 = sub_1D8D586E0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8D586E0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 64);
  v4 = sub_1D917737C();
  sub_1D91773DC();
  v5 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v7 = *(v0 + 72);
    if ((*(v0 + 240) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 216);
        v9 = *(v0 + 160);
        v11 = *(v0 + 128);
        v10 = *(v0 + 136);

        sub_1D917740C();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
          v12 = "SUCCESS";
        }

        v13 = *(v0 + 200);
        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v4, v5, v15, v7, v12, v14, 2u);
        MEMORY[0x1DA72CB90](v14, -1, -1);
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v7 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v7 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v7 >> 16 <= 0x10)
      {
        v7 = (v0 + 40);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v19 = *(v0 + 192);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v21 = *(v0 + 184);
  v23 = *(v0 + 160);
  v22 = *(v0 + 168);
  v24 = *(v0 + 152);
  v26 = *(v0 + 144);
  v27 = *(v0 + 120);

  (*(v20 + 8))(v18, v22);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D8D58924()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D8D58A18()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1D8F4D8DC;
  }

  else
  {
    v4 = sub_1D8D58B48;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8D58B48()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8D58BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D58C7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D8D58D9C(uint64_t a1)
{
  result = sub_1D8CFD888();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D58EB8(void *a1)
{
  v2 = a1[3];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[4];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[2];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8D58F80(void *a1)
{
  v3 = a1[2];
  v2 = a1[3];
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedTypeWitness();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
      sub_1D917781C();
      v7 = a1[4];
      sub_1D91780DC();
      result = sub_1D91773BC();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8D591F0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_1D8D59284(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[5];
    v6 = a1[3];
    result = swift_getAssociatedTypeWitness();
    if (v7 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D8D59354(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D8CF3CAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8D59400(void *a1, int a2, id a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1D8D59428(a1, a2, a3);
}

uint64_t sub_1D8D59408(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

void sub_1D8D59428(void *a1, int a2, id a3)
{
  if (a1)
  {
    if (!a3)
    {
      v4 = objc_opt_self();
      v5 = a1;
      v6 = [v4 _applePodcastsFoundationSharedUserDefaults];
      v7 = v5;
      v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v6 setObject:v7 forKey:v12];

      return;
    }
  }

  else if (!a3)
  {
    return;
  }

  v8 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  type metadata accessor for AMSError(0);
  if (swift_dynamicCast())
  {
    sub_1D8D5C8BC();
    v9 = sub_1D9176A4C();
    if (v9 == 204 || v9 == 202)
    {
      v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
      v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v10 removeObjectForKey_];
    }

    else
    {
    }
  }
}

void sub_1D8D5960C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1D8D596B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D8D5970C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[5];
  v4 = a1[6];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publishers.CachedAssetPublisher();
  swift_getWitnessTable();
  type metadata accessor for EmitLifecycle();
  return swift_getWitnessTable();
}

unint64_t sub_1D8D597F4()
{
  result = qword_1ECAB0390;
  if (!qword_1ECAB0390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB49F8, &qword_1D918B520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0390);
  }

  return result;
}

uint64_t sub_1D8D59858(void *a1, char a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C0, &qword_1D91972B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v13 - v8);
  if (a2)
  {
    *v9 = a1;
    swift_storeEnumTagMultiPayload();
    v10 = a1;
  }

  else
  {

    sub_1D8D5BC38(v11, v9);
    swift_storeEnumTagMultiPayload();
  }

  a3(v9);
  return sub_1D8D08A50(v9, &qword_1ECAB73C0, &qword_1D91972B0);
}

uint64_t FallbackProcessingStep.publisher.getter(uint64_t a1)
{
  v68 = *(a1 - 8);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v67 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v3 + 24);
  v64 = *(v4 - 8);
  v66 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 32);
  v70 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v9 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v51 - v10;
  swift_getAssociatedConformanceWitness();
  v71 = type metadata accessor for EmitLifecycle();
  v65 = *(v71 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v51 - v13;
  v60 = *(a1 + 40);
  v54 = v4;
  v14 = swift_getAssociatedTypeWitness();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v73 = v14;
  v74 = v15;
  v75 = AssociatedConformanceWitness;
  v76 = MEMORY[0x1E69E7288];
  sub_1D917772C();
  swift_getWitnessTable();
  v17 = type metadata accessor for EmitLifecycle();
  v18 = v71;
  WitnessTable = swift_getWitnessTable();
  v56 = WitnessTable;
  v57 = v17;
  v55 = swift_getWitnessTable();
  v73 = v18;
  v74 = v17;
  v75 = WitnessTable;
  v76 = v55;
  v20 = sub_1D91776AC();
  v21 = *(v20 - 8);
  v58 = v20;
  v59 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v53 = &v51 - v24;
  v52 = v7;
  v25 = v61;
  (*(v7 + 48))(v70, v7, v23);
  v26 = swift_getWitnessTable();
  v27 = v25;
  AssetProcessingStep.metadataTrace.getter(a1, v26, &v73);
  v28 = sub_1D9179FEC();
  v30 = v29;
  v31 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v73, "FallbackPreferredSource", 23, 2, 0, v28, v30, v31 & 1, v72, AssociatedTypeWitness);

  sub_1D8D7621C(&v73);
  (*(v62 + 8))(v11, AssociatedTypeWitness);
  v32 = *(a1 + 52);
  LODWORD(v62) = *(v27 + *(a1 + 56));
  v33 = v63;
  v34 = v64;
  v35 = v54;
  (*(v64 + 16))(v63, v27 + v32, v54);
  v36 = v67;
  v37 = v68;
  (*(v68 + 16))(v67, v27, a1);
  v38 = v34;
  v39 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v40 = v39 + v66;
  v41 = (*(v37 + 80) + v39 + v66 + 1) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *&v43 = v70;
  *(&v43 + 1) = v35;
  *&v44 = v52;
  *(&v44 + 1) = v60;
  *(v42 + 16) = v43;
  *(v42 + 32) = v44;
  (*(v38 + 32))(v42 + v39, v33, v35);
  *(v42 + v40) = v62;
  (*(v37 + 32))(v42 + v41, v36, a1);
  v45 = v53;
  v46 = v71;
  v47 = v72;
  sub_1D9177BDC();

  (*(v65 + 8))(v47, v46);
  v48 = v58;
  swift_getWitnessTable();
  v49 = sub_1D9177B1C();
  (*(v59 + 8))(v45, v48);
  return v49;
}

uint64_t sub_1D8D59FEC()
{
  v1 = *(v0 + 3);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v10 = *(v0 + 2);
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v11 = *(v0 + 5);
  v5 = (type metadata accessor for FallbackProcessingStep() - 8);
  v6 = (v3 + *(*v5 + 80) + v4 + 1) & ~*(*v5 + 80);
  v9 = *(*v5 + 64);
  v7 = *(v2 + 8);
  v7(&v0[v4], v1);
  (*(*(v10 - 8) + 8))(&v0[v6], v10);
  v7(&v0[v6 + v5[15]], v1);
  return swift_deallocObject();
}

uint64_t sub_1D8D5A18C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D8D5A1D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmitLifecycle();
  swift_getWitnessTable();
  sub_1D9177A8C();

  return swift_getWitnessTable();
}

void sub_1D8D5A2C4(void *a1, id a2, void (*a3)(uint64_t, uint64_t))
{
  if (a1)
  {
    type metadata accessor for LocalSnapshotBag();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = a1;
    a3(v5, 0);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v7 = AMSError();

      a2 = 0;
    }

    v9 = a2;
    v10 = v7;
    a3(v7, 1);
  }
}

double AssetProcessingStep.metadataTrace.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(a2 + 40))(a1, a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  if (swift_dynamicCast())
  {
    v9 = *(&v13 + 1);
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D8D5B734(&v12);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t type metadata accessor for FeedManagerBagConfiguration()
{
  result = qword_1EDCD28F0;
  if (!qword_1EDCD28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D5A588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v97 = a6;
  v91 = a3;
  v99 = a2;
  v98 = a1;
  v95 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = sub_1D91791BC();
  v77 = *(v78 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v92 = &v74 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = v12;
  v86 = AssociatedConformanceWitness;
  v14 = sub_1D91775FC();
  v89 = *(v14 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v74 - v16;
  v111 = a5;
  v94 = a4;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D91791BC();
  WitnessTable = swift_getWitnessTable();
  v90 = v14;
  v85 = WitnessTable;
  v18 = sub_1D917768C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v19 = type metadata accessor for RepublishingValueSubject();
  v20 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v105[0] = v18;
  v105[1] = v19;
  v105[2] = v20;
  v106 = v21;
  sub_1D917776C();
  swift_getWitnessTable();
  sub_1D91775BC();
  swift_getWitnessTable();
  v22 = sub_1D91775AC();
  v84 = *(v22 - 8);
  v23 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v74 - v24;
  v79 = swift_getWitnessTable();
  v83 = type metadata accessor for EmitLifecycle();
  v82 = *(v83 - 8);
  v25 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v80 = &v74 - v26;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  v32 = *v98;
  v33 = v99;
  v34 = AssociatedTypeWitness;
  v96 = sub_1D917781C();
  v35 = v97;
  sub_1D91780FC();
  v93 = v105[0];
  if (v105[0])
  {
    v36 = v35;
    v37 = type metadata accessor for UniquePipeline();
    v98 = swift_getWitnessTable();
    AssetProcessingStep.metadataTrace.getter(v37, v98, &v108);
    if (!v109)
    {
      sub_1D8D08A50(&v108, &qword_1ECAB4928, &qword_1D918B380);
      v40 = v96;
LABEL_14:
      *&v102 = v93;
      AssetProcessingStep.metadataTrace.getter(v37, v98, &v108);
      swift_getWitnessTable();
      v72 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
      Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v108, "FromUniquePipeline", 18, 2, 0, 0, 0, v72 & 1, v105, v40);
      sub_1D8D08A50(&v108, &qword_1ECAB4928, &qword_1D918B380);
      v73 = type metadata accessor for EmitLifecycle();
      swift_getWitnessTable();
      v62 = sub_1D9177B1C();

      result = (*(*(v73 - 8) + 8))(v105, v73);
      goto LABEL_15;
    }

    v91 = v37;
    sub_1D8D6BCE0(&v108, v105);
    v38 = v96;
    *&v100 = nullsub_1(v32, AssociatedTypeWitness, v96, v36);
    v39 = (*(v27 + 16))(v31, v33, AssociatedTypeWitness);
    v90 = &v74;
    MEMORY[0x1EEE9AC00](v39);
    v40 = v38;
    sub_1D917809C();

    swift_getWitnessTable();
    v41 = v92;
    sub_1D917847C();

    (*(v27 + 8))(v31, AssociatedTypeWitness);
    if ((*(v27 + 48))(v41, 1, AssociatedTypeWitness) == 1)
    {
      (*(v77 + 8))(v41, v78);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
      if (swift_dynamicCast())
      {
        v37 = v91;
        if (*(&v103 + 1))
        {
          sub_1D8D6BCE0(&v102, &v108);
          v64 = v109;
          v65 = v110;
          __swift_project_boxed_opaque_existential_1(&v108, v109);
          (*(v65 + 8))(&v100, v64, v65);
          if (v101)
          {
            sub_1D8D6BCE0(&v100, &v102);
            v66 = v106;
            v67 = v107;
            __swift_project_boxed_opaque_existential_1(v105, v106);
            v68 = *(&v103 + 1);
            v69 = v104;
            __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
            v40 = v96;
            v70 = (*(v69 + 8))(v68, v69);
            v37 = v91;
            (*(v67 + 16))("SwitchingToUniquePipelineTrace", 30, 2, v70, v71, v66, v67);

            __swift_destroy_boxed_opaque_existential_1Tm(&v102);
          }

          else
          {
            sub_1D8D08A50(&v100, &qword_1ECAB4928, &qword_1D918B380);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v108);
          goto LABEL_13;
        }

LABEL_12:
        sub_1D8D08A50(&v102, &qword_1ECAB4B20, &unk_1D918BE00);
LABEL_13:
        __swift_destroy_boxed_opaque_existential_1Tm(v105);
        goto LABEL_14;
      }
    }

    v104 = 0;
    v103 = 0u;
    v102 = 0u;
    v37 = v91;
    goto LABEL_12;
  }

  v42 = v94;
  v78 = v22;
  v43 = v35;
  v77 = type metadata accessor for UniquePipeline();
  v75 = *(v33 + *(v77 + 48));
  v44 = *(v27 + 16);
  v92 = (v27 + 16);
  v93 = v44;
  v45 = v31;
  v46 = v31;
  v76 = v31;
  v47 = v34;
  v44(v46, v33, v34);
  v48 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v49 = swift_allocObject();
  v50 = v111;
  *(v49 + 2) = v42;
  *(v49 + 3) = v50;
  *(v49 + 4) = v43;
  *(v49 + 5) = v75;
  (*(v27 + 32))(&v49[v48], v45, v47);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1D8DB26F4;
  *(v51 + 24) = v49;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1D8DB26F4;
  *(v52 + 24) = v49;
  swift_retain_n();

  v53 = v88;
  sub_1D9177B3C();

  v54 = v81;
  v55 = v90;
  Publisher.replayingBufferedMulticast()(v90, v85, v81);
  (*(v89 + 8))(v53, v55);
  v56 = v77;
  v57 = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v56, v57, v105);
  v58 = v78;
  v59 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  v60 = v80;
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v105, "UniquePipeline", 14, 2, 0, 0, 0, v59 & 1, v80, v58);
  sub_1D8D08A50(v105, &qword_1ECAB4928, &qword_1D918B380);
  (*(v84 + 8))(v54, v58);
  v61 = v83;
  swift_getWitnessTable();
  v62 = sub_1D9177B1C();
  (*(v82 + 8))(v60, v61);
  v93(v76, v33, v47);
  v105[0] = v62;
  sub_1D91780DC();

  sub_1D917810C();

LABEL_15:
  *v95 = v62;
  return result;
}

uint64_t sub_1D8D5B3D0()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v0 + 5);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D8D5B4A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1D8D5B4E4()
{
  sub_1D8CF307C();
  if (v0 <= 0x3F)
  {
    sub_1D8D5BBE8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D8D5B714(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = *(a2 + 16);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8D5B734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B20, &unk_1D918BE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

os_log_t _MTLogCategoryBag()
{
  v0 = os_log_create("com.apple.podcasts", "Bag");

  return v0;
}

uint64_t ArtworkRequest.stableFilePrefix.getter()
{
  v1 = v0;
  v2 = sub_1D9177FCC();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177FDC();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D917825C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  v16 = *(v0 + 32);
  if (v16 != 255)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    v17 = 0xE400000000000000;
    v18 = 2003789907;
    if (v16 != 1)
    {
      v18 = 0x6C656E6E616843;
      v17 = 0xE700000000000000;
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0x65646F73697045;
    }

    if (v16)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0xE700000000000000;
    }

    MEMORY[0x1DA7298F0](v19, v20, v13);

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);

    MEMORY[0x1DA7298F0](v34, v35);
  }

  v21 = *v0;
  v22 = v1[1];
  sub_1D917824C();
  v23 = sub_1D917821C();
  v25 = v24;
  (*(v11 + 8))(v15, v10);
  if (v25 >> 60 != 15)
  {
    sub_1D8D5C0D4(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
    sub_1D9177F9C();
    sub_1D8D752C4(v23, v25);
    sub_1D8D75318(v23, v25);
    sub_1D8D75668(v23, v25);
    sub_1D9177F8C();
    (*(v33 + 8))(v5, v2);
    v26 = sub_1D8D5C1D0(v9);
    (*(v31 + 8))(v9, v32);
    v34 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v27 = sub_1D917817C();
    v29 = v28;

    MEMORY[0x1DA7298F0](v27, v29);

    sub_1D8D75668(v23, v25);
  }

  return v36;
}

void sub_1D8D5BBE8()
{
  if (!qword_1ECAAFEE0)
  {
    v0 = sub_1D91786FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAAFEE0);
    }
  }
}

uint64_t sub_1D8D5BC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FeedManagerBagConfiguration();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD2900 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1EDCDE830);
  sub_1D8D5C578(v15, v14);
  if (qword_1EDCD07D0 != -1)
  {
    swift_once();
  }

  sub_1D8D5C66C(qword_1EDCD07D8, v7);
  v16 = sub_1D9176C2C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v7, 1, v16) == 1)
  {
    sub_1D8D088B4(v14, v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (v18(v7, 1, v16) != 1)
    {
      sub_1D8D08A50(v7, &unk_1ECAB5910, &qword_1D9188C90);
    }
  }

  else
  {
    (*(v17 + 32))(v10, v7, v16);
    (*(v17 + 56))(v10, 0, 1, v16);
  }

  if (qword_1EDCD07A8 != -1)
  {
    swift_once();
  }

  v19 = [*(a1 + 16) BOOLForKey_];
  v20 = [v19 unsafeSnapshotSyncValue];

  if (v20)
  {
    v21 = [v20 BOOLValue];
  }

  else
  {
    v21 = v14[v11[5]];
  }

  if (qword_1EDCD07C0 != -1)
  {
    swift_once();
  }

  v22 = [*(a1 + 16) BOOLForKey_];
  v23 = [v22 unsafeSnapshotSyncValue];

  if (v23)
  {
    v24 = [v23 BOOLValue];
  }

  else
  {
    v24 = v14[v11[6]];
  }

  if (qword_1EDCD07E8 != -1)
  {
    swift_once();
  }

  v25 = [*(a1 + 16) arrayForKey_];
  v26 = [v25 unsafeSnapshotSyncValue];

  if (!v26)
  {

    goto LABEL_25;
  }

  v30 = 0;
  sub_1D91785EC();

  v27 = v30;

  if (!v27)
  {
LABEL_25:
    v27 = *&v14[v11[7]];

    sub_1D8D5DE24(v14);

    goto LABEL_26;
  }

  sub_1D8D5DE24(v14);
LABEL_26:
  result = sub_1D8D5DE80(v10, a2);
  *(a2 + v11[5]) = v21;
  *(a2 + v11[6]) = v24;
  *(a2 + v11[7]) = v27;
  return result;
}

uint64_t sub_1D8D5C0D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D5C11C()
{
  v0 = type metadata accessor for FeedManagerBagConfiguration();
  __swift_allocate_value_buffer(v0, qword_1EDCDE830);
  v1 = __swift_project_value_buffer(v0, qword_1EDCDE830);
  v2 = sub_1D9176C2C();
  result = (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v1 + v0[5]) = 1;
  *(v1 + v0[6]) = 1;
  *(v1 + v0[7]) = &unk_1F545E078;
  return result;
}

uint64_t sub_1D8D5C1D0(uint64_t a1)
{
  v2 = sub_1D9177FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D5C0D4(&qword_1EDCD5C50, MEMORY[0x1E69666B0]);
  v7 = sub_1D917840C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_1D91783FC();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_1D9189080;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x1E69E7508];
        *(v14 + 64) = MEMORY[0x1E69E7558];
        *(v14 + 32) = v13;
        result = sub_1D917823C();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_1D9189080;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x1E69E7508];
        *(v23 + 64) = MEMORY[0x1E69E7558];
        *(v23 + 32) = v22;
        result = sub_1D917823C();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_1D8D41BE0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D5C578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedManagerBagConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5C5DC()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07D8 = result;
  return result;
}

uint64_t sub_1D8D5C614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D5C66C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v19 - v8;
  v10 = [*(v2 + 16) URLForKey_];
  v11 = [v10 unsafeSnapshotSyncValue];

  v12 = sub_1D9176C2C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  if (v11)
  {
    v15 = *(v12 - 8);
    v19[0] = *(v13 + 56);
    v19[1] = v13 + 56;
    v14(v9, 1, 1, v12);
    sub_1D8D5D764();
    sub_1D91797EC();

    if ((*(v15 + 48))(v9, 1, v12) == 1)
    {
      v16 = a2;
      v17 = 1;
    }

    else
    {
      (*(v15 + 32))(a2, v9, v12);
      v16 = a2;
      v17 = 0;
    }

    return (v19[0])(v16, v17, 1, v12);
  }

  else
  {

    return (v14)(a2, 1, 1, v12);
  }
}

uint64_t sub_1D8D5C85C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

unint64_t sub_1D8D5C8BC()
{
  result = qword_1ECAB01B8;
  if (!qword_1ECAB01B8)
  {
    type metadata accessor for AMSError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01B8);
  }

  return result;
}

uint64_t sub_1D8D5C938@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_1D8D6906C(a2, v4);
}

uint64_t sub_1D8D5CA28@<X0>(void *a1@<X8>)
{
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v3 = __swift_project_value_buffer(v2, qword_1ECAB1480);
  v4 = (v3 + *(v2 + 20));
  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620) + 72)];
  v7 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570) + 72)];
  v9 = *v3;
  v10 = *v4;
  v11 = qword_1ECAB14A0;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = _s11DownloadersVMa(0);
  v13 = __swift_project_value_buffer(v12, qword_1ECAB14A8);
  v14 = *v13;
  v15 = *(v13 + *(v12 + 28));
  v16 = qword_1EDCD5B20;

  if (v16 != -1)
  {
    swift_once();
  }

  v29[3] = &type metadata for MAPITranscriptTimeBombedURLProvider;
  v29[4] = &protocol witness table for MAPITranscriptTimeBombedURLProvider;
  v17 = qword_1EDCD5B28;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1D8D6866C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5F20, &qword_1D91919A0);
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = v19;
  v29[0] = v17;
  v29[1] = v20;
  *a1 = sub_1D8EED4E8;
  a1[1] = v6;
  a1[2] = sub_1D8EED4EC;
  a1[3] = v6;
  a1[4] = sub_1D8EED67C;
  a1[5] = v6;
  a1[6] = sub_1D8EED6BC;
  a1[7] = v6;
  a1[8] = sub_1D8EED724;
  a1[9] = v8;
  a1[10] = sub_1D8EED74C;
  a1[11] = v8;
  a1[12] = sub_1D8EED754;
  a1[13] = v8;
  a1[14] = sub_1D8EED794;
  a1[15] = v8;
  a1[16] = sub_1D8EED7FC;
  a1[17] = v9;
  a1[18] = sub_1D8EED824;
  a1[19] = v9;
  a1[20] = sub_1D8EED860;
  a1[21] = v9;
  a1[22] = sub_1D8EED88C;
  a1[23] = v9;
  a1[24] = sub_1D8EED8B4;
  a1[25] = v10;
  a1[26] = sub_1D8EED8DC;
  a1[27] = v10;
  a1[28] = sub_1D8EED8E4;
  a1[29] = v10;
  a1[30] = sub_1D8EED910;
  a1[31] = v10;
  a1[32] = sub_1D8EEDB4C;
  a1[33] = v14;
  a1[34] = sub_1D8EEDBA0;
  a1[35] = v15;
  sub_1D8CFD9D8(v29, (a1 + 36));
  a1[41] = v17;
  v21 = v17;
  v22 = sub_1D8D688C4(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A0, &qword_1D91921E0);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = v22;
  a1[42] = v23;
  v24 = sub_1D8D68C58(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB61A8, &unk_1D91921E8);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = v24;
  a1[43] = v25;
  v26 = sub_1D8D68E84(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5E38, &qword_1D9191840);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  *(v27 + 16) = v26;

  a1[44] = v27;
  return result;
}

void sub_1D8D5CF10()
{
  v0 = sub_1D9176C2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  __swift_allocate_value_buffer(v4, qword_1ECAB1480);
  v5 = __swift_project_value_buffer(v4, qword_1ECAB1480);
  v6 = objc_opt_self();
  v7 = [v6 ttmlAssetURL];
  sub_1D9176B9C();

  v8 = objc_opt_self();
  sub_1D8EDD000(v3, 0x4C4B40uLL, [v8 defaultCenter], v5);
  v9 = [v6 shazamSignatureAssetURL];
  sub_1D9176B9C();

  sub_1D8EDD21C(v3, 0x4C4B40uLL, [v8 defaultCenter], (v5 + *(v4 + 20)));
}

void sub_1D8D5D078()
{
  if (!qword_1ECAB2AE0)
  {
    type metadata accessor for TTMLRequest();
    v0 = type metadata accessor for CacheDomain();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2AE0);
    }
  }
}

void sub_1D8D5D14C()
{
  sub_1D8D5D078();
  if (v0 <= 0x3F)
  {
    sub_1D8D5D1D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8D5D1D0()
{
  if (!qword_1ECAB2AD8)
  {
    type metadata accessor for ShazamSignatureRequest();
    v0 = type metadata accessor for CacheDomain();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB2AD8);
    }
  }
}

uint64_t sub_1D8D5D340(int a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D917662C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (*(a3 + 16))(a2, a3, v9);
  if (!v13)
  {
    return 0;
  }

  v14 = v12;
  v15 = v13;
  v37 = a1;
  v16 = *(a3 + 8);

  v17 = v16(a2, a3);
  if (v18)
  {
    if (v14 == v17 && v15 == v18)
    {
      swift_bridgeObjectRelease_n();
LABEL_26:

      return 0;
    }

    v20 = sub_1D9179ACC();

    if (v20)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v38 = v14;
  v39 = v15;
  sub_1D91765DC();
  sub_1D8D447DC();
  v21 = sub_1D91791EC();
  result = (*(v7 + 8))(v11, v6);
  v23 = 0;
  v24 = *(v21 + 16);
  v25 = v21 + 40;
  v26 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v27 = (v25 + 16 * v23);
  while (v24 != v23)
  {
    if (v23 >= *(v21 + 16))
    {
      __break(1u);
      return result;
    }

    ++v23;
    v28 = *(v27 - 1);
    v29 = *v27;
    v27 += 2;
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v26;
      v36 = v25;
      if ((result & 1) == 0)
      {
        result = sub_1D8D41BE0(0, *(v26 + 16) + 1, 1);
        v26 = v38;
      }

      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_1D8D41BE0((v31 > 1), v32 + 1, 1);
        v26 = v38;
      }

      *(v26 + 16) = v32 + 1;
      v33 = v26 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v29;
      v25 = v36;
      goto LABEL_11;
    }
  }

  v34 = *(v26 + 16);

  if (v34 > 2 || sub_1D91782EC() >= 17)
  {
    goto LABEL_26;
  }

  if (v37)
  {
    v35 = sub_1D91782EC();

    if (v35 > 11)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1D8D5D644(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8D5D764()
{
  result = qword_1ECAB2C90;
  if (!qword_1ECAB2C90)
  {
    sub_1D9176C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C90);
  }

  return result;
}

uint64_t sub_1D8D5D7BC@<X0>(void (*a1)(_BYTE *, double)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D9179EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v15[-v12];
  a1(v7, v11);
  swift_storeEnumTagMultiPayload();
  return (*(v9 + 32))(a3, v13, v8);
}

uint64_t sub_1D8D5D970()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07B0 = result;
  return result;
}

uint64_t sub_1D8D5D9A8()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07C8 = result;
  return result;
}

uint64_t sub_1D8D5D9E0()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1EDCD07F0 = result;
  return result;
}

uint64_t sub_1D8D5DA18(uint64_t *a1, uint64_t a2)
{
  v4 = *v2;
  v26 = *a1;
  v27 = a2;
  v5 = v4[22];
  v28 = sub_1D91791BC();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v28);
  v10 = &v24 - v9;
  *(v2 + 2) = 0;
  v11 = v4[25];
  v12 = *(v5 - 8);
  v25 = *(v12 + 56);
  v25(&v2[v11], 1, 1, v5, v8);
  v13 = *(*v2 + 208);
  *&v2[v13] = sub_1D91777EC();
  v14 = *(*v2 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *&v2[v14] = v15;
  v16 = *(*v2 + 224);
  v17 = swift_slowAlloc();
  *&v2[v16] = v17;
  *v17 = 0;
  v2[*(*v2 + 232)] = 0;
  v2[*(*v2 + 240)] = 0;
  v18 = *(*v2 + 248);
  v19 = v4[21];
  v20 = *(v26 + 96);
  v21 = sub_1D91777CC();
  (*(*(v21 - 8) + 56))(&v2[v18], 1, 1, v21);
  v22 = *(v2 + 2);
  *(v2 + 2) = a1;

  (*(v12 + 32))(v10, v27, v5);
  (v25)(v10, 0, 1, v5);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v11], v10, v28);
  swift_endAccess();
  return sub_1D8D698B4();
}

uint64_t sub_1D8D5DD7C()
{
  sub_1D917946C();

  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D7FA0);
  result = MEMORY[0x1DA7298F0](0xD000000000000019, 0x80000001D91D7FC0);
  qword_1ECAB0100 = 0x5F6775626544;
  unk_1ECAB0108 = 0xE600000000000000;
  return result;
}

uint64_t sub_1D8D5DE24(uint64_t a1)
{
  v2 = type metadata accessor for FeedManagerBagConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D5DE80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5DEFC(uint64_t a1, void (*a2)(char *))
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C0, &qword_1D91972B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v19 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB73C8, &qword_1D91972B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FeedManagerBagConfiguration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(a1, v6, &qword_1ECAB73C0, &qword_1D91972B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v6;
    v16 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_willThrowTypedImpl();

    (*(v12 + 56))(v10, 1, 1, v11);
    if (qword_1EDCD2900 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v11, qword_1EDCDE830);
    sub_1D8D5C578(v17, v15);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_1D8D08A50(v10, &qword_1ECAB73C8, &qword_1D91972B8);
    }
  }

  else
  {
    sub_1D8D5E1D0(v6, v10);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_1D8D5E1D0(v10, v15);
  }

  v19(v15);
  return sub_1D8D5DE24(v15);
}

uint64_t sub_1D8D5E1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedManagerBagConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D5E248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for FeedUpdateRequest()
{
  result = qword_1EDCD49B8;
  if (!qword_1EDCD49B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LocalSnapshotBag.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D8D5E3BC()
{
  sub_1D8D5E56C(319, &qword_1ECAB2C70, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    sub_1D9176C2C();
    if (v1 <= 0x3F)
    {
      sub_1D8D5E56C(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1D8CF4344();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MTFeedUpdateSource(319);
          if (v4 <= 0x3F)
          {
            sub_1D8D5E5D4(319, &qword_1ECAAFB90, &qword_1ECAB45D0, &qword_1D918A040, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D8D5E5D4(319, &unk_1ECAB0EE8, &qword_1ECAB7428, &unk_1D9197420, MEMORY[0x1E69E93F8]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D8D5E56C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D91791BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8D5E5D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *StoreFeedUpdater.init(bagConfiguration:ctx:ingesterProvider:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v65 = a1;
  v61 = a2;
  v63 = type metadata accessor for FeedManagerBagConfiguration();
  v5 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D9177E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D9178E0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D8CFD888();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8098], v11);
  sub_1D9177E4C();
  v66[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v3[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76C0, &qword_1D9197CD0);
  swift_allocObject();
  v3[4] = sub_1D8D5F1D8();
  v16 = MEMORY[0x1E69E7CC8];
  v3[7] = MEMORY[0x1E69E7CC8];
  v3[8] = v16;
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v17 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v17 = &qword_1EDCD23F0;
  }

  v18 = *v17;
  v19 = v62;
  sub_1D8D5F1EC(v65, v62, type metadata accessor for FeedManagerBagConfiguration);
  sub_1D8CFD9D8(v64, v66);
  v20 = v3[2];
  v21 = type metadata accessor for StoreFeedUpdater.Queue(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue) = MEMORY[0x1E69E7CC0];
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue) = v25;
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs) = v16;
  v26 = (v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  *v26 = 0;
  v26[1] = 0;
  v24[2] = 0x65755161746C6544;
  v24[3] = 0xEA00000000006575;
  v24[4] = 3;
  sub_1D8D5F1EC(v19, v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  v27 = v61;
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx) = v61;
  sub_1D8CFD9D8(v66, v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider);
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue) = v20;
  v60 = type metadata accessor for MediaRequestController();
  v28 = objc_allocWithZone(v60);
  v29 = v27;
  v30 = v20;
  v61 = v18;
  v31 = [v28 init];
  *(v24 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController) = v31;
  v32 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  *&v31[v32] = 1;
  [v31 setPersonalizeRequests_];
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  sub_1D8D5FDB8(v19, type metadata accessor for FeedManagerBagConfiguration);
  v3[5] = v24;
  sub_1D8D5F1EC(v65, v19, type metadata accessor for FeedManagerBagConfiguration);
  v33 = v64;
  sub_1D8CFD9D8(v64, v66);
  v34 = v3[2];
  v35 = *(v21 + 48);
  v36 = *(v21 + 52);
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E7CC0];
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue) = MEMORY[0x1E69E7CC0];
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue) = v38;
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs) = MEMORY[0x1E69E7CC8];
  v39 = (v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  *v39 = 0;
  v39[1] = 0;
  strcpy((v37 + 16), "BootstrapQueue");
  *(v37 + 31) = -18;
  *(v37 + 32) = 2;
  sub_1D8D5F1EC(v19, v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx) = v29;
  sub_1D8CFD9D8(v66, v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider);
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue) = v34;
  v40 = objc_allocWithZone(v60);
  v41 = v29;
  v42 = v34;
  v43 = [v40 init];
  *(v37 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController) = v43;
  v44 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
  swift_beginAccess();
  *&v43[v44] = 1;
  [v43 setPersonalizeRequests_];

  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  sub_1D8D5FDB8(v19, type metadata accessor for FeedManagerBagConfiguration);
  v4[6] = v37;
  v45 = v63;
  v46 = v65;
  *(v4 + 72) = *(v65 + *(v63 + 20));
  v47 = *(v46 + *(v45 + 28));

  sub_1D8D5FDB8(v46, type metadata accessor for FeedManagerBagConfiguration);
  v4[10] = v47;
  v4[3] = v41;
  v48 = v4[5];
  v49 = swift_allocObject();
  swift_weakInit();
  v50 = (v48 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v51 = *(v48 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v52 = *(v48 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);
  *v50 = sub_1D8F676A0;
  v50[1] = v49;

  sub_1D8D15664(v51);

  v53 = v4[6];
  v54 = swift_allocObject();
  swift_weakInit();

  v55 = (v53 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v56 = *(v53 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback);
  v57 = *(v53 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_completionCallback + 8);
  *v55 = sub_1D8F66408;
  v55[1] = v54;
  swift_retain_n();
  sub_1D8D15664(v56);

  return v4;
}

uint64_t sub_1D8D5EE50()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_1D8D5EF08(uint64_t *a1, uint64_t *a2)
{
  v19 = sub_1D9178D8C();
  v5 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E7CD0];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v2[3] = sub_1D917795C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v2[4] = v16;
  v2[5] = v17;
  sub_1D8CFD888();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8098], v8);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  v2[6] = sub_1D9178E4C();
  v2[2] = v2[3];

  return v2;
}

uint64_t sub_1D8D5F1EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D5F274()
{
  result = type metadata accessor for FeedManagerBagConfiguration();
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

void *sub_1D8D5F354(uint64_t a1, void *a2, char a3, void *a4)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v8 = a4;
    v9 = a4;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    v10 = *(*(*result + 64) + 40);
    *v10 = a2;
    *(v10 + 8) = a3;
    v11 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D5F440()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D8D5F550;
  }

  else
  {
    v3 = sub_1D9170454;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8D5F550()
{
  v24 = v0;
  v1 = v0[22];
  swift_willThrow();
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v3 = v0[20];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0E30);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D917741C();
  v8 = sub_1D9178CFC();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[21];
  v10 = v0[22];
  if (v9)
  {
    v12 = v0[20];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v13 = 136315394;
    v16 = sub_1D917820C();
    v18 = sub_1D8CFA924(v16, v17, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    sub_1D8E262AC(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t sub_1D8D5F774(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8D5F890, 0, 0);
}

uint64_t sub_1D8D5F890()
{
  v37 = v0;
  if (*(v0 + 168))
  {
    v1 = 2;
  }

  else
  {
    v1 = sub_1D8D2AFA0();
  }

  v2 = *(v0 + 144);
  v3 = sub_1D917741C();
  v4 = sub_1D9178CEC();
  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_16;
  }

  v5 = 0xD000000000000026;
  v6 = swift_slowAlloc();
  v7 = swift_slowAlloc();
  v36 = v7;
  *v6 = 136315138;
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v8 = "licit content isn’t allowed.";
      v5 = 0xD000000000000044;
      goto LABEL_15;
    }

    if (v1 == 3)
    {
      v8 = "podcasts-unttsd-enabled";
      v5 = 0x100000000000002ELL;
      goto LABEL_15;
    }

LABEL_12:
    *(v0 + 80) = v1;
    goto LABEL_26;
  }

  if (!v1)
  {
    v8 = "e user may enable it.";
    goto LABEL_15;
  }

  if (v1 != 1)
  {
    goto LABEL_12;
  }

  v8 = "d by the storefront.";
  v5 = 0x1000000000000055;
LABEL_15:
  v9 = sub_1D8CFA924(v5, v8 | 0x8000000000000000, &v36);

  *(v6 + 4) = v9;
  _os_log_impl(&dword_1D8CEC000, v3, v4, "Fetched setting: %s", v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  MEMORY[0x1DA72CB90](v7, -1, -1);
  MEMORY[0x1DA72CB90](v6, -1, -1);
LABEL_16:

  v10 = *(*(v0 + 88) + OBJC_IVAR___PFRestrictionsController__state);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 24));
  if (v1 == v11)
  {
LABEL_33:
    v31 = *(v0 + 136);
    v32 = *(v0 + 112);

    v33 = *(v0 + 8);

    return v33(v1);
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 88);
  os_unfair_lock_lock((v10 + 24));
  *(v10 + 16) = v1;
  os_unfair_lock_unlock((v10 + 24));
  v14 = v13;
  v15 = sub_1D917741C();
  v16 = sub_1D9178CDC();

  v35 = v1;
  if (!os_log_type_enabled(v15, v16))
  {
LABEL_32:

    v25 = *(v0 + 128);
    v24 = *(v0 + 136);
    v26 = *(v0 + 112);
    v34 = *(v0 + 120);
    v28 = *(v0 + 96);
    v27 = *(v0 + 104);
    sub_1D8CFD888();
    v29 = sub_1D9178E1C();
    *(v0 + 48) = sub_1D9170028;
    *(v0 + 56) = 0;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1D8CF5F60;
    *(v0 + 40) = &block_descriptor_31_4;
    v30 = _Block_copy((v0 + 16));
    sub_1D9177E4C();
    *(v0 + 64) = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v24, v26, v30);
    _Block_release(v30);

    (*(v27 + 8))(v26, v28);
    (*(v25 + 8))(v24, v34);
    v1 = v35;
    goto LABEL_33;
  }

  v17 = 0xD000000000000026;
  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v36 = v19;
  *v18 = 136315138;
  os_unfair_lock_lock((v10 + 24));
  v20 = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 24));
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = "licit content isn’t allowed.";
      v17 = 0xD000000000000044;
      goto LABEL_31;
    }

    if (v20 == 3)
    {
      v21 = "podcasts-unttsd-enabled";
      v17 = 0x100000000000002ELL;
      goto LABEL_31;
    }
  }

  else
  {
    if (!v20)
    {
      v21 = "e user may enable it.";
      goto LABEL_31;
    }

    if (v20 == 1)
    {
      v21 = "d by the storefront.";
      v17 = 0x1000000000000055;
LABEL_31:
      v23 = sub_1D8CFA924(v17, v21 | 0x8000000000000000, &v36);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Setting did change: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      goto LABEL_32;
    }
  }

  *(v0 + 72) = v20;
LABEL_26:

  return sub_1D9179C9C();
}

uint64_t sub_1D8D5FDB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D5FE18(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8D5FF1C, 0, 0);
}

uint64_t sub_1D8D5FF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

Swift::Void __swiftcall RestrictionsController.reload()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_1D917886C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_1D8E91528(0, 0, v4, &unk_1D91BEC00, v6);
}

uint64_t static AbbreviatedTimeIntervalFormatter.string(from:relativeTo:currentYearReferenceDate:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a1, v10);
  v12 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration();
  v11(&v9[*(v12 + 20)], a2, v10);
  v9[*(v12 + 24)] = 6;
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = static AbbreviatedTimeIntervalFormatter.string(from:configuration:)(v9, a3);
  sub_1D8D60B78(v9);
  return v13;
}

uint64_t sub_1D8D60340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *RSSFeedUpdater.init(ctx:ingesterProvider:externalFeedDownloader:)(void *a1, uint64_t *a2, void *a3)
{
  v4 = v3;
  v58 = a3;
  v59 = a2;
  v55 = a1;
  v5 = sub_1D9178D8C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = sub_1D9178E0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue;
  v16 = sub_1D8CFD888();
  v17 = *(v12 + 104);
  v49 = *MEMORY[0x1E69E8098];
  v53 = v11;
  v50 = v12 + 104;
  v48 = v17;
  v17(v15);
  sub_1D9177E4C();
  *&aBlock = MEMORY[0x1E69E7CC0];
  v18 = sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  v51 = v19;
  v52 = v18;
  v57 = v5;
  v20 = v47;
  sub_1D91792CC();
  v56 = v8;
  v54 = v16;
  *&v4[v20] = sub_1D9178E4C();
  v21 = OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7480, &unk_1D9197878);
  swift_allocObject();
  *&v4[v21] = sub_1D8D5EF08(&qword_1ECAB7548, &qword_1D91979F8);
  if ([objc_opt_self() isRunningOnHomepod])
  {
    if (qword_1ECAB34D0 != -1)
    {
      swift_once();
    }

    v22 = &qword_1ECAB73D0;
  }

  else
  {
    if (qword_1EDCD23E8 != -1)
    {
      swift_once();
    }

    v22 = &qword_1EDCD23F0;
  }

  v23 = *v22;
  v24 = v59;
  sub_1D8CFD9D8(v59, &aBlock);
  v25 = *&v4[v20];
  type metadata accessor for RSSFeedUpdater.Queue();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E7CC8];
  v26[13] = MEMORY[0x1E69E7CC0];
  v26[14] = v27;
  v26[15] = 0;
  v26[16] = 0;
  v26[2] = 0x7565755164656546;
  v26[3] = 0xE900000000000065;
  v28 = v55;
  v26[4] = 3;
  v26[5] = v28;
  sub_1D8D6BCE0(&aBlock, (v26 + 6));
  v29 = v58;
  v26[11] = v58;
  v26[12] = v25;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue] = v26;
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_ctx] = v28;
  sub_1D8CFD9D8(v24, &v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_ingesterProvider]);
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_externalFeedDownloader] = v29;
  v48(v15, v49, v53);
  v30 = v28;
  swift_unknownObjectRetain_n();
  v31 = v25;
  v55 = v30;
  v32 = v23;
  sub_1D9177E4C();
  *&aBlock = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  *&v4[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue] = sub_1D9178E4C();
  v33 = type metadata accessor for RSSFeedUpdater();
  v65.receiver = v4;
  v65.super_class = v33;
  v34 = objc_msgSendSuper2(&v65, sel_init);
  [v29 setDelegate_];
  dispatch_suspend(*&v34[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue]);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v35 = sub_1D917744C();
  __swift_project_value_buffer(v35, qword_1EDCD1070);
  v36 = sub_1D917741C();
  v37 = sub_1D9178D1C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D8CEC000, v36, v37, "Restoring background download tasks.", v38, 2u);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = sub_1D8D78F5C;
  v64 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v61 = sub_1D8CF5F60;
  v62 = &block_descriptor_43;
  v40 = _Block_copy(&aBlock);
  v41 = v34;

  [v58 restoreBackgroundDownloadTasksWithCompletion_];
  _Block_release(v40);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  v42 = *&v41[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue];

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = *(v42 + 120);
  v45 = *(v42 + 128);
  *(v42 + 120) = sub_1D8DA2EF4;
  *(v42 + 128) = v43;
  swift_retain_n();
  sub_1D8D15664(v44);

  return v41;
}

uint64_t sub_1D8D60AE0()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D60B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACF0, &qword_1D91BA268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D60CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABB378, &qword_1D91BC1D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  v11[0] = a2;
  v11[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0);
  sub_1D91788AC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D8D60DE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8D60E3C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D8F41224;
  }

  else
  {
    v3 = sub_1D8D60F4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8D60F4C()
{
  v1 = v0[3];
  v0[16] = v1;
  if (!v1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    goto LABEL_5;
  }

  v0[4] = v0[2];
  v0[5] = v1;
  if (sub_1D917894C())
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];

    (*(v3 + 8))(v2, v4);
LABEL_5:
    v5 = v0[14];
    v6 = v0[11];

    v7 = v0[1];

    return v7();
  }

  v12 = (v0[7] + *v0[7]);
  v9 = *(v0[7] + 4);
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_1D8F412E0;
  v11 = v0[8];

  return v12(v0 + 4);
}

uint64_t MTPodcast.adamId.getter()
{
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  v2 = [v0 storeCollectionId];
  return v2 & ~(v2 >> 63);
}

uint64_t sub_1D8D61178(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D58924;

  return sub_1D8D61288(a1, v5);
}

uint64_t sub_1D8D61288(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v8 = (a2 + *a2);
  v5 = a2[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D58924;

  return v8(v3, v4);
}

id ArtworkModel.with(backgroundColor:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v9 = v3[3];
  v10 = *(v3 + 11);
  v25[0] = *(v3 + 9);
  v25[1] = v10;
  v26[0] = *(v3 + 13);
  *(v26 + 9) = *(v3 + 113);
  v11 = *(v3 + 129);
  v12 = *(v3 + 131);
  v13 = v3[17];
  v14 = v3[18];
  v15 = *(v3 + 152);
  v16 = *(v3 + 153);
  v17 = *(v3 + 154);
  v18 = *(v3 + 32);
  *&v24[7] = *(v3 + 9);
  *&v24[23] = *(v3 + 11);
  *&v24[39] = *(v3 + 13);
  *&v24[48] = *(v3 + 113);
  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v18;
  *(a3 + 40) = *(v3 + 5);
  *(a3 + 56) = a1;
  *(a3 + 64) = a2;
  v19 = *v24;
  v20 = *&v24[16];
  v21 = *&v24[32];
  *(a3 + 113) = *&v24[48];
  *(a3 + 97) = v21;
  *(a3 + 81) = v20;
  *(a3 + 65) = v19;
  *(a3 + 129) = v11;
  *(a3 + 131) = v12;
  *(a3 + 136) = v13;
  *(a3 + 144) = v14;
  *(a3 + 152) = v15;
  *(a3 + 153) = v16;
  *(a3 + 154) = v17;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;

  sub_1D8D614C4(v8, v9, v18);
  sub_1D8D614F0(v25, &v23);

  return sub_1D8D6154C(a1, a2);
}

uint64_t sub_1D8D614C4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8D614D8(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D8D614D8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

id sub_1D8D6154C(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8D61560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MTDisplayTypeFromPersistentString(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MTDisplayTypeToPersistentStringMap_inverted(1);
  v3 = [v2 objectForKey:v1];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    if (![v1 length])
    {
      v5 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v1;
        _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Invalid MTPodcastDisplayType encountered (%@)", &v8, 0xCu);
      }
    }

    v4 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

id MTDisplayTypeToPersistentStringMap_inverted(int a1)
{
  if (MTDisplayTypeToPersistentStringMap_inverted_onceToken != -1)
  {
    MTDisplayTypeToPersistentStringMap_inverted_cold_1();
  }

  v2 = &MTDisplayTypeToPersistentStringMap_inverted_invertedMap;
  if (!a1)
  {
    v2 = &MTDisplayTypeToPersistentStringMap_inverted_map;
  }

  v3 = *v2;

  return v3;
}

uint64_t sub_1D8D618BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D619E0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C0, &qword_1D9192888);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D61BDC(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

unint64_t sub_1D8D61A08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D8D33C70(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_1D8D61BDC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D61C18(a1);
}

uint64_t sub_1D8D61C18(uint64_t *a1)
{
  v2 = *a1;

  swift_allocObject();
  swift_weakInit();
  sub_1D9178FBC();
  sub_1D8CFBCD0(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);

  v3 = sub_1D9177D9C();

  *a1 = v3;
  return result;
}

id sub_1D8D61D00@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v66 = a1;
  v72 = a3;
  v5 = sub_1D9176C2C();
  v74 = *(v5 - 8);
  v6 = v74;
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v62 - v11;
  v70 = sub_1D9178E0C();
  v65 = *(v70 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9178D8C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1D9177E9C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = *(v6 + 16);
  v71 = v6 + 16;
  v73 = v20;
  (v20)(a3, a1, v5, v19);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v64 = "disk.ShazamSignatureRequest";
  sub_1D9177E7C();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v65 + 104))(v14, *MEMORY[0x1E69E8090], v70);
  v70 = sub_1D9178E4C();
  v21 = v68;
  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B0, &qword_1D9192878);
  swift_allocObject();
  v22 = sub_1D8D6259C(v69, v21);
  v68 = v22;
  v24 = v66;
  v23 = v67;
  v73(v67, v66, v5);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65B8, &qword_1D9192880);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = v74 + 32;
  v65 = *(v74 + 32);
  v63 = v5;
  (v65)(v28 + qword_1EDCDE890, v23, v5);
  v74 = v29;
  v30 = v28 + qword_1EDCDE888;
  *v30 = 0;
  *(v30 + 4) = 1;
  *(v28 + qword_1EDCD6AC0) = v70;
  *(v28 + qword_1EDCD6AC8) = v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v32 = v72;
  v31 = v73;
  *(v72 + v69[15]) = v28;
  v31(v23, v24, v5);
  v33 = *(v25 + 48);
  v34 = *(v25 + 52);
  v35 = swift_allocObject();
  v36 = v65;
  (v65)(v35 + qword_1EDCDE890, v23, v5);
  v37 = v35 + qword_1EDCDE888;
  *v37 = 512;
  *(v37 + 4) = 0;
  v38 = v70;
  *(v35 + qword_1EDCD6AC0) = v70;
  v39 = v68;
  *(v35 + qword_1EDCD6AC8) = v68;
  *(v32 + v69[16]) = v35;
  v40 = v63;
  v31(v23, v24, v63);
  v41 = *(v25 + 48);
  v42 = *(v25 + 52);
  v43 = swift_allocObject();
  v36(v43 + qword_1EDCDE890, v23, v40);
  v44 = v36;
  v45 = v43 + qword_1EDCDE888;
  *v45 = 1024;
  *(v45 + 4) = 0;
  *(v43 + qword_1EDCD6AC0) = v38;
  *(v43 + qword_1EDCD6AC8) = v39;
  v46 = v69;
  v48 = v72;
  v47 = v73;
  *(v72 + v69[17]) = v43;
  v47(v23, v24, v40);
  v49 = *(v25 + 48);
  v50 = *(v25 + 52);
  v51 = swift_allocObject();
  v52 = v23;
  v53 = v44;
  v44(v51 + qword_1EDCDE890, v52, v40);
  v54 = v51 + qword_1EDCDE888;
  *v54 = 2048;
  *(v54 + 4) = 0;
  *(v51 + qword_1EDCD6AC0) = v38;
  v55 = v68;
  *(v51 + qword_1EDCD6AC8) = v68;
  *(v48 + v46[18]) = v51;
  v56 = *(v25 + 48);
  v57 = *(v25 + 52);
  v58 = swift_allocObject();
  v53(v58 + qword_1EDCDE890, v24, v40);
  v59 = v58 + qword_1EDCDE888;
  *v59 = 0x8000;
  *(v59 + 4) = 0;
  *(v58 + qword_1EDCD6AC0) = v38;
  *(v58 + qword_1EDCD6AC8) = v55;
  *(v48 + v46[19]) = v58;
  swift_retain_n();
  v60 = v38;

  return v60;
}

void sub_1D8D62584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1D8D6259C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D619E0(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65C0, &qword_1D9192888);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D626CC(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D626CC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D62708(a1);
}

uint64_t sub_1D8D62708(uint64_t *a1)
{
  v2 = *a1;

  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  sub_1D8CF48EC(qword_1EDCD5C70, &qword_1ECAB4C60, &unk_1D918CD70);
  v3 = sub_1D9177D9C();

  *a1 = v3;
  return result;
}

uint64_t sub_1D8D627FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v8);
  v11 = sub_1D8D629AC(a3, a4);
  (*(v6 + 8))(v10, a3);
  return v11;
}

uint64_t sub_1D8D628F0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D62708(a1);
}

uint64_t sub_1D8D62928()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t static EyebrowBuilder.concatenate(captionElements:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1D8D627FC(v4, v1, v2, v3);
}

uint64_t sub_1D8D629AC(uint64_t a1, uint64_t a2)
{
  v5 = *(*(a1 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v6);
  v9 = *(a2 + 8);
  v10 = sub_1D917848C();
  v11 = v10;
  v12 = v10[2];
  if (v12 < 2)
  {
    if (!v12)
    {

      return 0;
    }

    v16 = v10[4];
    v29 = v10[5];

LABEL_35:

    return v16;
  }

  result = sub_1D9178BDC();
  v14 = 0;
  v16 = v48;
  v15 = v49;
  v17 = v12 - 3;
  v41 = v11;
  v42 = v12;
  v18 = v11 + 7;
  v19 = -2;
  v20 = 1;
  while (v15)
  {
    v21 = *(v18 - 1);
    v22 = *v18;
    v46 = v16;
    v47 = v15;
    v43 = v17;
    v44 = 0x8480E2B7C28480E2;
    v45 = 0xA800000000000000;
    sub_1D8D447DC();
    swift_bridgeObjectRetain_n();
    v23 = sub_1D91791FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D8D4241C(0, *(v23 + 16) + 1, 1, v23);
    }

    v25 = *(v23 + 16);
    v24 = *(v23 + 24);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D8D4241C((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 16) = v25 + 1;
    v26 = v23 + 16 * v25;
    *(v26 + 32) = v21;
    *(v26 + 40) = v22;
    v46 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v16 = sub_1D917817C();
    v28 = v27;

    v12 = v42;
    v17 = v43 - 1;
    --v19;
    --v14;
    v18 += 2;
    ++v20;
    v15 = v28;
    if (v42 + v14 == 1)
    {
      goto LABEL_35;
    }
  }

  if (v12 + v14 == 2)
  {
    goto LABEL_35;
  }

  v30 = v12 + v14 - 3;
  v31 = 1 - v14;
  if (v12 <= v20)
  {
    v32 = v20;
  }

  else
  {
    v32 = v12;
  }

  v33 = v32 + v14 - 2;
  if (v30 < v33)
  {
    v33 = v12 + v14 - 3;
  }

  if (v33 + 1 >= 3)
  {
    if (v12 <= v20)
    {
      v35 = v20;
    }

    else
    {
      v35 = v12;
    }

    v36 = v35 + v19;
    if (v17 < v35 + v19)
    {
      v36 = v17;
    }

    v34 = (v36 & 0xFFFFFFFFFFFFFFFELL) - v14 + 2;
    v37 = v35 + v14 - 2;
    if (v30 >= v37)
    {
      v30 = v37;
    }

    v38 = v30 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v38 -= 2;
    }

    while (v38);
  }

  else
  {
    v34 = 2 - v14;
  }

  v39 = v12 - v34;
  if (v12 > v31)
  {
    v31 = v12;
  }

  v40 = v31 - v34;
  while (v40)
  {
    --v40;
    if (!--v39)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D8D62DA8(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_1D8D62DC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D62EEC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A8, &qword_1D9192870);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D62F78(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t static ArtworkFormat.preferredFormat.getter()
{
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  return byte_1EDCD7898;
}

uint64_t sub_1D8D62F78(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D61C18(a1);
}

id sub_1D8D62FB4@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v66 = a1;
  v72 = a3;
  v5 = sub_1D9176C2C();
  v74 = *(v5 - 8);
  v6 = v74;
  v7 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v62 - v11;
  v70 = sub_1D9178E0C();
  v65 = *(v70 - 8);
  v12 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9178D8C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1D9177E9C();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = *(v6 + 16);
  v71 = v6 + 16;
  v73 = v20;
  (v20)(a3, a1, v5, v19);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v64 = "ShazamSignatures";
  sub_1D9177E7C();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v65 + 104))(v14, *MEMORY[0x1E69E8090], v70);
  v70 = sub_1D9178E4C();
  v21 = v68;
  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6598, &qword_1D9192860);
  swift_allocObject();
  v22 = sub_1D8D63758(v69, v21);
  v68 = v22;
  v24 = v66;
  v23 = v67;
  v73(v67, v66, v5);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A0, &qword_1D9192868);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = v74 + 32;
  v65 = *(v74 + 32);
  v63 = v5;
  (v65)(v28 + qword_1EDCDE890, v23, v5);
  v74 = v29;
  v30 = v28 + qword_1EDCDE888;
  *v30 = 0;
  *(v30 + 4) = 1;
  *(v28 + qword_1EDCD6AC0) = v70;
  *(v28 + qword_1EDCD6AC8) = v22;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v32 = v72;
  v31 = v73;
  *(v72 + v69[15]) = v28;
  v31(v23, v24, v5);
  v33 = *(v25 + 48);
  v34 = *(v25 + 52);
  v35 = swift_allocObject();
  v36 = v65;
  (v65)(v35 + qword_1EDCDE890, v23, v5);
  v37 = v35 + qword_1EDCDE888;
  *v37 = 512;
  *(v37 + 4) = 0;
  v38 = v70;
  *(v35 + qword_1EDCD6AC0) = v70;
  v39 = v68;
  *(v35 + qword_1EDCD6AC8) = v68;
  *(v32 + v69[16]) = v35;
  v40 = v63;
  v31(v23, v24, v63);
  v41 = *(v25 + 48);
  v42 = *(v25 + 52);
  v43 = swift_allocObject();
  v36(v43 + qword_1EDCDE890, v23, v40);
  v44 = v36;
  v45 = v43 + qword_1EDCDE888;
  *v45 = 1024;
  *(v45 + 4) = 0;
  *(v43 + qword_1EDCD6AC0) = v38;
  *(v43 + qword_1EDCD6AC8) = v39;
  v46 = v69;
  v48 = v72;
  v47 = v73;
  *(v72 + v69[17]) = v43;
  v47(v23, v24, v40);
  v49 = *(v25 + 48);
  v50 = *(v25 + 52);
  v51 = swift_allocObject();
  v52 = v23;
  v53 = v44;
  v44(v51 + qword_1EDCDE890, v52, v40);
  v54 = v51 + qword_1EDCDE888;
  *v54 = 2048;
  *(v54 + 4) = 0;
  *(v51 + qword_1EDCD6AC0) = v38;
  v55 = v68;
  *(v51 + qword_1EDCD6AC8) = v68;
  *(v48 + v46[18]) = v51;
  v56 = *(v25 + 48);
  v57 = *(v25 + 52);
  v58 = swift_allocObject();
  v53(v58 + qword_1EDCDE890, v24, v40);
  v59 = v58 + qword_1EDCDE888;
  *v59 = 0x8000;
  *(v59 + 4) = 0;
  *(v58 + qword_1EDCD6AC0) = v38;
  *(v58 + qword_1EDCD6AC8) = v55;
  *(v48 + v46[19]) = v58;
  swift_retain_n();
  v60 = v38;

  return v60;
}

void *sub_1D8D636F0@<X0>(void *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*result != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    result = swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  v4 = *a3;
  *a4 = *a2;
  a4[1] = v4;
  return result;
}

uint64_t sub_1D8D63758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D62EEC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65A8, &qword_1D9192870);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D63AA8(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t ArtworkModel.init(template:width:height:libraryEntity:backgroundColor:textColors:style:crop:accessibilityTitle:format:isCustomSymbol:isMulticolorSymbol:imageStoreIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12, char *a13, uint64_t a14, uint64_t a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  v20 = *a13;
  v21 = a13[1];
  if (*(a8 + 8) == 254)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v27 = -1;
    v28 = -1;
    v29 = -1;
  }

  else
  {
    v29 = *(a8 + 56);
    v25 = a8[6];
    v28 = *(a8 + 40);
    v24 = a8[4];
    v27 = *(a8 + 24);
    v23 = a8[2];
    v26 = *(a8 + 8);
    v22 = *a8;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = v22;
  *(a9 + 80) = v26;
  *(a9 + 88) = v23;
  *(a9 + 96) = v27;
  *(a9 + 104) = v24;
  *(a9 + 112) = v28;
  *(a9 + 120) = v25;
  *(a9 + 128) = v29;
  *(a9 + 129) = a12;
  *(a9 + 130) = v20;
  *(a9 + 131) = v21;
  *(a9 + 136) = a14;
  *(a9 + 144) = a15;
  *(a9 + 152) = a16;
  *(a9 + 153) = a17 & 1;
  *(a9 + 154) = a18 & 1;
  *(a9 + 160) = a19;
  *(a9 + 168) = a20;
  return result;
}

double PodcastStateModel.init(podcast:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v3 = a1;
  v4 = [v3 uuid];
  if (!v4)
  {
LABEL_9:

LABEL_10:
    result = 0.0;
    *(a2 + 27) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v5 = v4;
  v6 = sub_1D917820C();
  v8 = v7;

  v9 = MTPodcast.identifier.getter();
  if (v11 == 0xFF)
  {

    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = [v3 hidden];
  if ([v3 subscribed])
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v15;
  v18 = [v3 isImplicitlyFollowed];

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 42) = v18 != 0;
  *(a2 + 40) = v17;
  return result;
}

uint64_t sub_1D8D63AA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D62708(a1);
}

uint64_t MTPodcast.identifier.getter()
{
  v1 = [v0 uuid];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();

    if ([objc_opt_self() isEmpty_])
    {
      return v3;
    }

    v4 = [v0 storeCollectionId];
    if ((v4 & 0x8000000000000000) != 0 || !v4 || v4 == 1000000000000)
    {
      return v3;
    }

    else
    {
      v25 = v4;

      return v25;
    }
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F88);
    v7 = v0;
    v8 = sub_1D917741C();
    v9 = sub_1D9178CFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 0x3E7974706D653CLL;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = v12;
      *v11 = 136381187;
      v13 = [v7 title];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1D917820C();
        v17 = v16;
      }

      else
      {
        v17 = 0xE700000000000000;
        v15 = 0x3E7974706D653CLL;
      }

      v18 = sub_1D8CFA924(v15, v17, &v26);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2049;
      v19 = [v7 storeCollectionId];

      *(v11 + 14) = v19;
      *(v11 + 22) = 2081;
      v20 = [v7 feedURL];
      if (v20)
      {
        v21 = v20;
        v10 = sub_1D917820C();
        v23 = v22;
      }

      else
      {
        v23 = 0xE700000000000000;
      }

      v24 = sub_1D8CFA924(v10, v23, &v26);

      *(v11 + 24) = v24;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "MTPodcast with nil UUID, this doesn't make much sense. Podcast title %{private}s, adamID %{private}lld, feedURL %{private}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_1D8D63E1C()
{
  v0 = _s11DownloadersVMa(0);
  __swift_allocate_value_buffer(v0, qword_1ECAB14A8);
  v1 = __swift_project_value_buffer(v0, qword_1ECAB14A8);
  return sub_1D8D64A00(v1);
}

uint64_t sub_1D8D63E68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void sub_1D8D63EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1D8D63F28()
{
  sub_1D8D63EBC(319, qword_1ECAB1BE0, type metadata accessor for TTMLRequest, &protocol witness table for TTMLRequest, type metadata accessor for ForegroundSessionSource);
  if (v0 <= 0x3F)
  {
    sub_1D8D6413C();
    if (v1 <= 0x3F)
    {
      sub_1D8D63EBC(319, qword_1ECAB1EE8, type metadata accessor for TTMLRequest, &protocol witness table for TTMLRequest, type metadata accessor for URLTaskAssetSource);
      if (v2 <= 0x3F)
      {
        sub_1D8D63EBC(319, &qword_1ECAB1BD8, type metadata accessor for ShazamSignatureRequest, &protocol witness table for ShazamSignatureRequest, type metadata accessor for ForegroundSessionSource);
        if (v3 <= 0x3F)
        {
          sub_1D8D63EBC(319, &qword_1ECAB1EE0, type metadata accessor for ShazamSignatureRequest, &protocol witness table for ShazamSignatureRequest, type metadata accessor for URLTaskAssetSource);
          if (v4 <= 0x3F)
          {
            sub_1D8D647E8();
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

uint64_t sub_1D8D640EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8D6413C()
{
  if (!qword_1ECAB1CF8)
  {
    type metadata accessor for TranscriptsBackgroundSessionDescriptor();
    sub_1D8CFBCD0(&qword_1ECAB1250, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
    v0 = type metadata accessor for AssetBackgroundSession();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB1CF8);
    }
  }
}

PodcastsFoundation::PodcastStateModel::SanitizedState __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PodcastStateModel.sanitizedState()()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[42];
  if (v2 == 1)
  {
    if ((v3 & 1) == 0 && (v1 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    if (v1)
    {
LABEL_7:
      sub_1D90CDA5C();
      swift_allocError();
      *v5 = v2;
      v5[1] = v3;
      v5[2] = v1;
      return swift_willThrow();
    }

    return 2;
  }

  else if (v1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t type metadata accessor for TranscriptsBackgroundSessionDescriptor()
{
  result = qword_1ECAB1240;
  if (!qword_1ECAB1240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MTPodcast.episodeUserFilter.getter()
{
  v1 = v0;
  [v0 willAccessValueForKey_];
  if ([v0 primitiveValueForKey_])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_1D8D64450(v11);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v2 = sub_1D917656C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D917655C();
  sub_1D8F9C734();
  sub_1D917654C();
  sub_1D8D7567C(v7, v8);

  v6 = *&v11[0];
LABEL_9:
  [v1 didAccessValueForKey_];
  return v6;
}

uint64_t sub_1D8D64450(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8D644B8()
{
  sub_1D8D5D078();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D8D64524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D6456C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MTPodcast.episodeSortType.getter()
{
  if (![v0 isSerialShowTypeInFeed])
  {
    return [v0 sortAscending];
  }

  v1 = [v0 showTypeSetting];
  if (v1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x504040604uLL >> (8 * v1));
  }
}

void sub_1D8D647E8()
{
  if (!qword_1ECAB1CF0)
  {
    type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
    sub_1D8CFBCD0(&qword_1ECAB1198, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
    v0 = type metadata accessor for AssetBackgroundSession();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB1CF0);
    }
  }
}

uint64_t type metadata accessor for ShazamSignatureBackgroundSessionDescriptor()
{
  result = qword_1ECAB1188;
  if (!qword_1ECAB1188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D648D0()
{
  sub_1D8D5D1D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D8D6493C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShazamSignatureRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D64A00@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v60 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  v61 = *(v4 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = v6;
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v53 - v8;
  v9 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  v55 = *(v13 - 8);
  v14 = *(v55 + 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = sub_1D9176C2C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v53 - v25;
  v27 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  sub_1D9176B2C();
  v28 = *(v20 + 8);
  v58 = v20 + 8;
  v59 = v19;
  v56 = v28;
  v28(v23, v19);
  if (qword_1ECAB1478 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for TimeBombedTranscriptProvider.Caches(0);
  v29 = __swift_project_value_buffer(v54, qword_1ECAB1480);
  sub_1D8D088B4(v29, v12, &qword_1ECAB5D38, &qword_1D9191600);
  sub_1D9176B2C();
  sub_1D8D65628(v12, v23, v18);
  v30 = _s11DownloadersVMa(0);
  v31 = v57;
  v32 = v57 + v30[5];
  v53 = v26;
  sub_1D8D088B4(v18, v32, &qword_1ECAB64C0, &qword_1D9192768);
  sub_1D8D088B4(v18, v15, &qword_1ECAB64C0, &qword_1D9192768);
  v33 = v55[80];
  v55 = v18;
  v34 = v31;
  v35 = (v33 + 16) & ~v33;
  v36 = swift_allocObject();
  sub_1D8D6734C(v15, v36 + v35, &qword_1ECAB64C0, &qword_1D9192768);
  v37 = (v34 + v30[6]);
  *v37 = sub_1D8EEE590;
  v37[1] = v36;
  *(swift_allocObject() + 16) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *v34 = sub_1D9177A5C();
  v41 = v29 + *(v54 + 20);
  v42 = v60;
  sub_1D8D088B4(v41, v60, &qword_1ECAB5D08, &unk_1D9191530);
  v43 = v53;
  sub_1D9176B2C();
  v44 = v64;
  sub_1D8D673B4(v42, v23, v64);
  sub_1D8D088B4(v44, v34 + v30[9], &qword_1ECAB64B8, &qword_1D9192760);
  v45 = v63;
  sub_1D8D088B4(v44, v63, &qword_1ECAB64B8, &qword_1D9192760);
  v46 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v47 = swift_allocObject();
  sub_1D8D6734C(v45, v47 + v46, &qword_1ECAB64B8, &qword_1D9192760);
  v48 = (v34 + v30[8]);
  *v48 = sub_1D8EEE5C0;
  v48[1] = v47;
  *(swift_allocObject() + 16) = 1;
  v49 = *(v38 + 48);
  v50 = *(v38 + 52);
  swift_allocObject();
  v51 = sub_1D9177A5C();
  sub_1D8D08A50(v44, &qword_1ECAB64B8, &qword_1D9192760);
  sub_1D8D08A50(v55, &qword_1ECAB64C0, &qword_1D9192768);
  result = v56(v43, v59);
  *(v34 + v30[7]) = v51;
  return result;
}

uint64_t sub_1D8D65078()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v8 = *&v5[v7[15]];

  v9 = *&v5[v7[16]];

  v10 = *&v5[v7[17]];

  v11 = *&v5[v7[18]];

  v12 = *&v5[v7[19]];

  v13 = *(v3 + v1[14]);

  v14 = *(v3 + v1[15]);

  return swift_deallocObject();
}

uint64_t sub_1D8D65214()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760) - 8);
  v2 = *(*v1 + 64);
  v3 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  v4 = *v3;

  v5 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v8 = *&v5[v7[15]];

  v9 = *&v5[v7[16]];

  v10 = *&v5[v7[17]];

  v11 = *&v5[v7[18]];

  v12 = *&v5[v7[19]];

  v13 = *(v3 + v1[14]);

  v14 = *(v3 + v1[15]);

  return swift_deallocObject();
}

unint64_t sub_1D8D653BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v13, &unk_1ECAB6C80, &unk_1D91949C0);
      result = sub_1D8D6550C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1D8D65618(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1D8D6550C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D91793CC();

  return sub_1D8D65550(a1, v5);
}

unint64_t sub_1D8D65550(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D8D9A2A4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA72A9A0](v9, a1);
      sub_1D8D9A308(v9);
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

_OWORD *sub_1D8D65618(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D8D65628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  sub_1D8D65C38(a1, a3, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v9 = sub_1D8D65CA0();
  sub_1D8D65C38(a1, v8, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v32 = v10 + v7;
  v11 = swift_allocObject();
  v33 = type metadata accessor for TranscriptsBackgroundSessionDescriptor;
  sub_1D8D66338(v8, v11 + v10, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6548, &qword_1D9192810));
  v35 = v9;

  v14 = sub_1D8D66420(v13, sub_1D8EEEF74, v11, sub_1D8D665D4);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64C0, &qword_1D9192768);
  *(a3 + v15[11]) = v14;
  v16 = objc_opt_self();
  v37 = v5;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6550, &qword_1D9192818);
  sub_1D917826C();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v16 backgroundSessionConfigurationWithIdentifier_];

  sub_1D8D65C38(a1, v8, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v20 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v21 + v10;
  v23 = v33;
  sub_1D8D66338(v8, v22, v33);
  *(v21 + v20) = v19;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5838, &qword_1D9190AB0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1D9177A5C();
  v28 = sub_1D9176C2C();
  (*(*(v28 - 8) + 8))(v36, v28);
  result = sub_1D8D67208(a1, v23);
  v30 = v34;
  v31 = v35;
  *(v34 + v15[12]) = v27;
  *(v30 + v15[13]) = v31;
  return result;
}

uint64_t sub_1D8D65974()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v8 = *(v5 + v7[15]);

  v9 = *(v5 + v7[16]);

  v10 = *(v5 + v7[17]);

  v11 = *(v5 + v7[18]);

  v12 = *(v5 + v7[19]);

  return swift_deallocObject();
}

uint64_t sub_1D8D65AC4()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v9 = *(v6 + v8[15]);

  v10 = *(v6 + v8[16]);

  v11 = *(v6 + v8[17]);

  v12 = *(v6 + v8[18]);

  v13 = *(v6 + v8[19]);

  return swift_deallocObject();
}

uint64_t sub_1D8D65C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D65CA0()
{
  v0 = sub_1D9178E0C();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v26 = sub_1D9176C2C();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6550, &qword_1D9192818);
  sub_1D917826C();
  sub_1D9176B2C();

  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6578, &qword_1D9192840);
  swift_allocObject();
  v24 = sub_1D8D6613C(5000000, v11);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E7C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  v16 = sub_1D9178E4C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6540, &qword_1D9192808);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + qword_1EDCDE890, v15, v26);
  v21 = v20 + qword_1EDCDE888;
  *v21 = 2048;
  *(v21 + 4) = 0;
  *(v20 + qword_1EDCD6AC0) = v16;
  *(v20 + qword_1EDCD6AC8) = v24;
  return v20;
}

uint64_t sub_1D8D6613C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D66280(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6580, &qword_1D9192848);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D66294(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D66294(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D62708(a1);
}

uint64_t sub_1D8D662D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D66338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1D8D66420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x1E69E7D40];
  v11 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x88));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + *((*v10 & *v4) + 0x80));
  *v12 = a2;
  v12[1] = a3;
  *(v4 + *((*v10 & *v4) + 0x90)) = a1;
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + *((*v10 & *v4) + 0x98)) = a4(MEMORY[0x1E69E7CC0]);

  *(v4 + *((*v10 & *v4) + 0xA0)) = sub_1D8D043B0(v13);
  *(v4 + *((*v10 & *v4) + 0xA8)) = sub_1D8D04598(v13);
  *(v4 + *((*v10 & *v4) + 0xB0)) = sub_1D8D04774(v13);
  *(v4 + *((*v10 & *v4) + 0xB8)) = dispatch_group_create();
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

unint64_t sub_1D8D665E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D91797AC();
  v6 = *(a1 + 32);
  v16 = *(a1 + 40);
  result = sub_1D8D490F4(v6);
  v8 = v16;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = (a1 + 64);
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v6;
    *(v5[7] + 16 * result) = v8;
    v11 = v5[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v5[2] = v13;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v14 = (v10 + 24);
    v6 = *(v10 - 1);
    v17 = *v10;

    result = sub_1D8D490F4(v6);
    v10 = v14;
    v8 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D66774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v8, v10, v11);
}

uint64_t sub_1D8D66BDC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34 = a4;
  v35 = a5;
  v8 = sub_1D9177E0C();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TranscriptsBackgroundSessionDescriptor();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = qword_1EDCD5B50;

  if (v21 != -1)
  {
    swift_once();
  }

  v33[1] = qword_1EDCD5B58;
  sub_1D8D65C38(a3, v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1D8D66338(v19, v25 + v22, type metadata accessor for TranscriptsBackgroundSessionDescriptor);
  v26 = v34;
  *(v25 + v23) = v34;
  v27 = v35;
  *(v25 + v24) = v35;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_1D8D49C40;
  v28[1] = v20;
  aBlock[4] = sub_1D8D717BC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_195;
  v29 = _Block_copy(aBlock);
  v30 = v26;
  v31 = v27;
  sub_1D9177E4C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v29);
  _Block_release(v29);
  (*(v38 + 8))(v11, v8);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_1D8D67010()
{
  v1 = *(type metadata accessor for TranscriptsBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D38, &qword_1D9191600) + 60);
  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D58, &unk_1D9191620);
  v10 = *(v7 + v9[15]);

  v11 = *(v7 + v9[16]);

  v12 = *(v7 + v9[17]);

  v13 = *(v7 + v9[18]);

  v14 = *(v7 + v9[19]);

  v15 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8D671A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D67208(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8D6734C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D8D673B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v5 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  sub_1D8D65C38(a1, a3, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v9 = sub_1D8D67A60();
  sub_1D8D65C38(a1, v8, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v32 = v10 + v7;
  v11 = swift_allocObject();
  v33 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor;
  sub_1D8D66338(v8, v11 + v10, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v12 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E8, &qword_1D91927B0));
  v35 = v9;

  v14 = sub_1D8D66420(v13, sub_1D8EEE7F0, v11, sub_1D8D68018);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64B8, &qword_1D9192760);
  *(a3 + v15[11]) = v14;
  v16 = objc_opt_self();
  v37 = v5;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F0, &qword_1D91927B8);
  sub_1D917826C();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v16 backgroundSessionConfigurationWithIdentifier_];

  sub_1D8D65C38(a1, v8, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v20 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v21 + v10;
  v23 = v33;
  sub_1D8D66338(v8, v22, v33);
  *(v21 + v20) = v19;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5838, &qword_1D9190AB0);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1D9177A5C();
  v28 = sub_1D9176C2C();
  (*(*(v28 - 8) + 8))(v36, v28);
  result = sub_1D8D67208(a1, v23);
  v30 = v34;
  v31 = v35;
  *(v34 + v15[12]) = v27;
  *(v30 + v15[13]) = v31;
  return result;
}

uint64_t sub_1D8D67700()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + v2);

  v5 = v0 + v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v6 = sub_1D9176C2C();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v8 = *(v5 + v7[15]);

  v9 = *(v5 + v7[16]);

  v10 = *(v5 + v7[17]);

  v11 = *(v5 + v7[18]);

  v12 = *(v5 + v7[19]);

  return swift_deallocObject();
}

uint64_t sub_1D8D67850()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = *(v0 + v2);

  v6 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v7 = sub_1D9176C2C();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v9 = *(v6 + v8[15]);

  v10 = *(v6 + v8[16]);

  v11 = *(v6 + v8[17]);

  v12 = *(v6 + v8[18]);

  v13 = *(v6 + v8[19]);

  return swift_deallocObject();
}

void appendTextFromNodeRecursively(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    if (*(a1 + 8) == 3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a1 + 80)];
      [v6 appendString:v4];

      v3 = v6;
    }

    for (i = *(a1 + 24); i; i = *(i + 48))
    {
      appendTextFromNodeRecursively(i, v6);
      v3 = v6;
    }
  }
}

uint64_t sub_1D8D67A60()
{
  v0 = sub_1D9178E0C();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v26 = sub_1D9176C2C();
  v12 = *(v26 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64F0, &qword_1D91927B8);
  sub_1D917826C();
  sub_1D9176B2C();

  sub_1D9177A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6518, &qword_1D91927E0);
  swift_allocObject();
  v24 = sub_1D8D67ED4(5000000, v11);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E7C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v28 + 104))(v27, *MEMORY[0x1E69E8090], v29);
  v16 = sub_1D9178E4C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB64E0, &qword_1D91927A8);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  (*(v12 + 32))(v20 + qword_1EDCDE890, v15, v26);
  v21 = v20 + qword_1EDCDE888;
  *v21 = 2048;
  *(v21 + 4) = 0;
  *(v20 + qword_1EDCD6AC0) = v16;
  *(v20 + qword_1EDCD6AC8) = v24;
  return v20;
}

uint64_t sub_1D8D67ED4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8D68004(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6520, &qword_1D91927E8);
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = 0;
  *(v7 + 32) = v6;
  *(v3 + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  v9 = (v8 + 24);
  *(v8 + 16) = 0;
  v10 = (v8 + 16);
  *(v3 + 24) = v8;

  os_unfair_lock_lock(v9);
  sub_1D8D628F0(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8D68068(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34 = a4;
  v35 = a5;
  v8 = sub_1D9177E0C();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ShazamSignatureBackgroundSessionDescriptor();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = qword_1EDCD5B50;

  if (v21 != -1)
  {
    swift_once();
  }

  v33[1] = qword_1EDCD5B58;
  sub_1D8D65C38(a3, v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = (v18 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_1D8D66338(v19, v25 + v22, type metadata accessor for ShazamSignatureBackgroundSessionDescriptor);
  v26 = v34;
  *(v25 + v23) = v34;
  v27 = v35;
  *(v25 + v24) = v35;
  v28 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_1D8D49C40;
  v28[1] = v20;
  aBlock[4] = sub_1D8DA4A5C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_132;
  v29 = _Block_copy(aBlock);
  v30 = v26;
  v31 = v27;
  sub_1D9177E4C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBCD0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v29);
  _Block_release(v29);
  (*(v38 + 8))(v11, v8);
  (*(v36 + 8))(v15, v37);
}

uint64_t sub_1D8D6849C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D684D4()
{
  v1 = *(type metadata accessor for ShazamSignatureBackgroundSessionDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;
  v6 = *(v0 + v2);

  v7 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D08, &unk_1D9191530) + 60);
  v8 = sub_1D9176C2C();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5D30, &unk_1D9191570);
  v10 = *(v7 + v9[15]);

  v11 = *(v7 + v9[16]);

  v12 = *(v7 + v9[17]);

  v13 = *(v7 + v9[18]);

  v14 = *(v7 + v9[19]);

  v15 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

unint64_t sub_1D8D6866C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4370, &qword_1D9188ED0);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v14, &qword_1ECAB4378, &qword_1D9188ED8);
      result = sub_1D8F06AAC(v14);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 72 * result;
      *v7 = v14[0];
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[3];
      *(v7 + 64) = v15;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      *(v7 + 16) = v8;
      *(v3[7] + 8 * result) = v16;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 80;
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

uint64_t type metadata accessor for TranscriptData.TimeBombedURLs()
{
  result = qword_1ECAB2488;
  if (!qword_1ECAB2488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8D68800()
{
  sub_1D8CF307C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D8D68870()
{
  result = qword_1ECAB2070;
  if (!qword_1ECAB2070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2070);
  }

  return result;
}

unint64_t sub_1D8D688C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4360, &unk_1D9188EC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4368, &unk_1D91A6C70);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4360, &unk_1D9188EC0);
      result = sub_1D8F06B6C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for TTMLRequest();
      result = sub_1D8D662D0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for TTMLRequest);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D8D68AF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D68B38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D68B80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D68BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D68C10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8D68C58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4350, &qword_1D9188EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4358, &qword_1D9188EB8);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4350, &qword_1D9188EB0);
      result = sub_1D8F06B18(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ShazamSignatureRequest();
      result = sub_1D8D662D0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ShazamSignatureRequest);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8D68E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4380, &unk_1D9188EE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4388, &unk_1D91A6C80);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4380, &unk_1D9188EE0);
      result = sub_1D8D93AB0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D9176EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t Publisher.nonNilValues<A>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1D9177B2C();
}

uint64_t sub_1D8D691E4(void *a1)
{
  v2 = a1[22];
  result = sub_1D91791BC();
  if (v4 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = a1[21];
    v6 = a1[23];
    swift_getAssociatedConformanceWitness();
    sub_1D91777CC();
    result = sub_1D91791BC();
    if (v7 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8D69334(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = qword_1EDCD1628;
  result = swift_beginAccess();
  v12 = *(a2 + v10);
  if (!*(v12 + 16))
  {
    goto LABEL_12;
  }

  v13 = *(a2 + v10);

  v14 = sub_1D8D698BC(a3);
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

  v16 = *(*(v12 + 56) + v14);

  v17 = qword_1EDCD1600;
  result = swift_beginAccess();
  v18 = *(a2 + v17);
  if (!*(v18 + 16))
  {
LABEL_12:
    v33 = *(a4 + 16);
    v27 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v27)
    {
      *(a4 + 16) = v34;
      v35 = *(a2 + qword_1ECAB8618 + 8);
      (*(a2 + qword_1ECAB8618))(v59, a5);
      v30 = LOBYTE(v59[0]);
      if (LOBYTE(v59[0]) == 2)
      {
        v36 = 0;
      }

      else
      {
        v37 = *(a2 + qword_1ECAB8628);
        v38 = *(a2 + qword_1ECAB8628 + 8);
        LOBYTE(v57) = v59[0] & 1;
        v37(v58, &v57);
        v36 = v58[0];
      }

      swift_beginAccess();
      v39 = *(a2 + v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(a2 + v10);
      *(a2 + v10) = 0x8000000000000000;
      sub_1D8D6976C(v30, a3, isUniquelyReferenced_nonNull_native);
      *(a2 + v10) = v57;
      swift_endAccess();
      v41 = qword_1EDCD1600;
      swift_beginAccess();
      v42 = *(a2 + v41);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(a2 + v41);
      *(a2 + v41) = 0x8000000000000000;
      sub_1D8D69D6C(v36, v30 == 2, a3, v43);
      *(a2 + v41) = v57;
      swift_endAccess();
      *a1 = v36;
      *(a1 + 8) = v30 == 2;
      return v30;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v19 = *(a2 + v17);

  v20 = sub_1D8D698BC(a3);
  if ((v21 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v56 = v16;
  v22 = *(v18 + 56) + 16 * v20;
  v55 = *v22;
  v23 = *(v22 + 8);

  v24 = *a4;

  v25 = sub_1D8DA4C5C(a3, v24);

  if ((v25 & 1) == 0)
  {
    *a1 = v55;
    *(a1 + 8) = v23;
    return v56;
  }

  v26 = *(a4 + 24);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    goto LABEL_31;
  }

  *(a4 + 24) = v28;
  v29 = *(a2 + qword_1ECAB8618 + 8);
  result = (*(a2 + qword_1ECAB8618))(v59, a5);
  v30 = LOBYTE(v59[0]);
  if (LOBYTE(v59[0]) == 2)
  {
    if (v56 == 2)
    {
      v31 = 0;
      v32 = 0;
      if (v23)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v31 = 0;
    }

LABEL_23:
    *(a4 + 56) = 1;
    v32 = v31;
LABEL_24:
    swift_beginAccess();
    v47 = *(a2 + v10);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a2 + v10);
    *(a2 + v10) = 0x8000000000000000;
    sub_1D8D6976C(v30, a3, v48);
    *(a2 + v10) = v57;
    swift_endAccess();
    swift_beginAccess();
    v49 = *(a2 + v17);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a2 + v17);
    *(a2 + v17) = 0x8000000000000000;
    sub_1D8D69D6C(v32, v30 == 2, a3, v50);
    *(a2 + v17) = v57;
    swift_endAccess();
    *a1 = v32;
    *(a1 + 8) = v30 == 2;
    return v30;
  }

  v44 = *(a2 + qword_1ECAB8628);
  v45 = *(a2 + qword_1ECAB8628 + 8);
  LOBYTE(v57) = v59[0] & 1;
  v44(v58, &v57);
  v31 = v58[0];
  if (v56 == 2)
  {
    goto LABEL_23;
  }

  v54 = v58[0];
  LOBYTE(v58[0]) = v56 & 1;
  LOBYTE(v57) = v30 & 1;
  v46 = *(a2 + qword_1ECAB8620 + 8);
  result = (*(a2 + qword_1ECAB8620))(v58, &v57);
  if (result)
  {
    v31 = v54;
    goto LABEL_23;
  }

  v32 = v55;
  v31 = v54;
  v51 = v23;
  if (v54 != v55)
  {
    v51 = 1;
  }

  if (v51)
  {
    goto LABEL_23;
  }

LABEL_28:
  v52 = *(a4 + 32);
  v27 = __OFADD__(v52, 1);
  v53 = v52 + 1;
  if (!v27)
  {
    *(a4 + 32) = v53;
    goto LABEL_24;
  }

LABEL_32:
  __break(1u);
  return result;
}

_BYTE *sub_1D8D6976C(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1D8D698BC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_1D8F83760();
      result = v16;
      goto LABEL_8;
    }

    sub_1D8D69948(v13, a3 & 1);
    v17 = *v4;
    result = sub_1D8D698BC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    result[v19[7]] = a1;
  }

  else
  {
    sub_1D8D69CB0(result, a2, a1, v19);

    return a2;
  }

  return result;
}

unint64_t sub_1D8D698BC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1D917913C();
  return sub_1D8D69BC8(a1, v5, &qword_1EDCD09D0, 0x1E695D630);
}

uint64_t sub_1D8D6990C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8D69948(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B28, &unk_1D91A6C40);
  result = sub_1D917978C();
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
      v22 = *(*(v5 + 56) + v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_1D917913C();
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
      *(*(v8 + 56) + v16) = v22;
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
      v32 = 1 << *(v5 + 32);
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

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1D8D69BC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D8CF2154(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D917914C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D8D69CB0(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_1D8D69CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

unint64_t sub_1D8D69D6C(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_1D8D698BC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = result;
      sub_1D8F835F0();
      result = v18;
      goto LABEL_8;
    }

    sub_1D8D69EB0(v15, a4 & 1);
    v19 = *v5;
    result = sub_1D8D698BC(a3);
    if ((v16 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v16)
  {
    v22 = v21[7] + 16 * result;
    *v22 = a1;
    *(v22 + 8) = a2 & 1;
  }

  else
  {
    sub_1D8D6A1F8(result, a3, a1, a2 & 1, v21);

    return a3;
  }

  return result;
}

uint64_t sub_1D8D69EB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7B30, &qword_1D9199748);
  v37 = a2;
  result = sub_1D917978C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      if ((v37 & 1) == 0)
      {
        v26 = v22;
      }

      v27 = *(v8 + 40);
      result = sub_1D917913C();
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
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 16 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      ++*(v8 + 16);
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

    if (v37)
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

uint64_t sub_1D8D6A16C(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  swift_beginAccess();
  sub_1D9071830(a1, v1 + v3, &unk_1ECAB9920, &unk_1D91AD170);
  return swift_endAccess();
}

unint64_t sub_1D8D6A1F8(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4 & 1;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_1D8D6A248(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60E8, &qword_1D91920F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60F0, &qword_1D91920F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D8D6A390(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB60F8, &qword_1D9192100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6100, &qword_1D9192108);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D8D6A4DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D8D6AA38(0, v1, 0);
    v4 = (a1 + 40);
    v2 = v13;
    do
    {
      v9 = *(v4 - 1);
      v10 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6100, &qword_1D9192108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46C8, &qword_1D918A0F8);
      swift_dynamicCast();
      v6 = *(v13 + 16);
      v5 = *(v13 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D8D6AA38((v5 > 1), v6 + 1, 1);
      }

      *(v13 + 16) = v6 + 1;
      v7 = v13 + 16 * v6;
      *(v7 + 32) = v11;
      *(v7 + 40) = v12;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t NSUserDefaults.subscript.getter@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v16 = a1;
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  NSUserDefaults.value<A>(for:)(a2, a3, &v15 - v10);
  v12 = *(a2 - 8);
  v13 = *(v12 + 48);
  if (v13(v11, 1, a2) != 1)
  {
    return (*(v12 + 32))(a4, v11, a2);
  }

  v16();
  result = (v13)(v11, 1, a2);
  if (result != 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t NSUserDefaults.value<A>(for:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v4 objectForKey_];

  if (v9)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    swift_getAssociatedTypeWitness();
    if (swift_dynamicCast())
    {
      return (*(a2 + 16))(v11, a1, a2);
    }
  }

  else
  {
    sub_1D8D64450(v14);
  }

  return (*(*(a1 - 8) + 56))(a3, 1, 1, a1);
}

void *sub_1D8D6A904(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1D8D6AA38(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46C0, &qword_1D918A0F0, &qword_1ECAB46C8, &qword_1D918A0F8);
  *v3 = result;
  return result;
}

void *sub_1D8D6AA78(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46B0, &qword_1D918A0E0, &qword_1ECAB46B8, &qword_1D918A0E8);
  *v3 = result;
  return result;
}

void *sub_1D8D6AAFC(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D6A904(a1, a2, a3, *v3, &qword_1ECAB46A0, &qword_1D918A0D0, &qword_1ECAB46A8, &qword_1D918A0D8);
  *v3 = result;
  return result;
}

char *sub_1D8D6AB50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4698, &qword_1D918A0C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D8D6AC44(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D6AB50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1D8D6AC64(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v85 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v4 = MEMORY[0x1E69E7CD0];
    goto LABEL_63;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8D6B2FC();
    sub_1D8D08C08(&qword_1EDCD09C8, sub_1D8D6B2FC);
    sub_1D9178B3C();
    v5 = v80;
    v7 = v81;
    v8 = v82;
    v9 = v83;
    v10 = v84;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v75 = v5;
  v76 = v7;
  v77 = v8;
  v78 = v9;
  v66 = v8;
  v14 = (v8 + 64) >> 6;
  v72 = (v4 + 56);
  v79 = v10;
  v69 = v5;
  v70 = v14;
  v68 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = sub_1D917938C();
      if (!v22)
      {
        goto LABEL_62;
      }

      v73 = v22;
      sub_1D8D6B2FC();
      swift_dynamicCast();
      v20 = v74;
      v18 = v9;
      v2 = v10;
      if (!v74)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        v17 = v14 <= v9 + 1 ? v9 + 1 : v14;
        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_66;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v75 = v5;
      v76 = v7;
      v77 = v66;
      v78 = v18;
      v79 = v2;
      if (!v20)
      {
        goto LABEL_62;
      }
    }

    v23 = *(v4 + 40);
    v24 = v20;
    v25 = sub_1D917913C();
    v26 = -1 << *(v4 + 32);
    v7 = v25 & ~v26;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v68;
    v5 = v69;
    v14 = v70;
  }

  v3 = ~v26;
  v27 = sub_1D8D6B2FC();
  v28 = *(*(v4 + 48) + 8 * v7);
  v71 = v27;
  while (1)
  {
    v29 = sub_1D917914C();

    if (v29)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v72[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v28 = *(*(v4 + 48) + 8 * v7);
  }

  v31 = *(v4 + 32);
  v63 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v63;
  v3 = v70;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v64 = &v62;
    MEMORY[0x1EEE9AC00](v30);
    v33 = &v62 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v72, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = *(v4 + 16);
    v65 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v68;
    v36 = v69;
LABEL_33:
    v67 = v5;
    while (v36 < 0)
    {
      v38 = sub_1D917938C();
      if (!v38)
      {
        goto LABEL_61;
      }

      v73 = v38;
      swift_dynamicCast();
      v39 = v74;
      if (!v74)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = *(v4 + 40);
      v45 = sub_1D917913C();
      v46 = v4;
      v47 = -1 << *(v4 + 32);
      v7 = v45 & ~v47;
      v48 = v7 >> 6;
      v49 = 1 << v7;
      if (((1 << v7) & v72[v7 >> 6]) != 0)
      {
        v50 = ~v47;
        while (1)
        {
          v51 = *(*(v46 + 48) + 8 * v7);
          v52 = sub_1D917914C();

          if (v52)
          {
            break;
          }

          v7 = (v7 + 1) & v50;
          v48 = v7 >> 6;
          v49 = 1 << v7;
          if (((1 << v7) & v72[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v70;

        v53 = v65[v48];
        v65[v48] = v53 & ~v49;
        v54 = (v53 & v49) == 0;
        v4 = v46;
        v37 = v68;
        v36 = v69;
        v5 = v67;
        if (!v54)
        {
          v5 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            v4 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v46;
        v37 = v68;
        v36 = v69;
        v3 = v70;
        v5 = v67;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v75 = v36;
      v76 = v37;
      v77 = v66;
      v78 = v41;
      v18 = v41;
      v79 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_1D90A7EE8(v65, v63, v5, v4, &unk_1ECAB6740, &qword_1D91936F0);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v57 = v6;

    v58 = v57;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v72, v58);
  sub_1D90A6A58(v59, v63, v4, v7, &v75);
  v61 = v60;

  MEMORY[0x1DA72CB90](v59, -1, -1);
  v4 = v61;
LABEL_62:
  sub_1D8D1B144();
LABEL_63:
  v55 = *MEMORY[0x1E69E9840];
  return v4;
}

unint64_t sub_1D8D6B2FC()
{
  result = qword_1EDCD09D0;
  if (!qword_1EDCD09D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD09D0);
  }

  return result;
}

os_log_t _MTLogCategoryBackgroundFetching()
{
  v0 = os_log_create("com.apple.podcasts", "BackgroundFetching");

  return v0;
}

Swift::Void __swiftcall RestrictionsController.startListening()()
{
  v1 = OBJC_IVAR___PFRestrictionsController_observation;
  if (!*(v0 + OBJC_IVAR___PFRestrictionsController_observation))
  {
    v2 = type metadata accessor for RestrictionsControllerDelegate();
    v3 = objc_allocWithZone(v2);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v6.receiver = v3;
    v6.super_class = v2;
    v4 = objc_msgSendSuper2(&v6, sel_init);
    if (qword_1ECAB1120 != -1)
    {
      swift_once();
    }

    [qword_1ECAB1130 registerObserver_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
  }
}

void __swiftcall MTPlaylist.unsafePredicateForAllEpisodesMatchingSettings()(NSPredicate_optional *__return_ptr retstr)
{
  if (sub_1D8D6B7B0())
  {
    v1 = sub_1D8D6C08C();
  }

  else
  {
    sub_1D8FD69F0();
  }

  v2 = v1;
  v3 = sub_1D8D6CD58();
  v4 = [v2 AND_];

  v5 = v4;
  v6 = sub_1D8D6D430();
  v7 = [v5 AND_];
}

id sub_1D8D6B7B0()
{
  v1 = v0;
  v2 = sub_1D9176A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 settings];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = MEMORY[0x1E69E7CC0];
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D9178C9C();
  sub_1D8D6BB7C();
  sub_1D91791DC();
  if (v30)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v25 = v3;
    do
    {
      while (1)
      {
        sub_1D8D65618(&v29, &v27);
        sub_1D8CF2154(0, &qword_1ECAB8830, off_1E8567650);
        if ((swift_dynamicCast() & 1) == 0 || !v28)
        {
          break;
        }

        MEMORY[0x1DA729B90]();
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v26 = v1;
          sub_1D917863C();
          v1 = v26;
        }

        sub_1D917869C();
        v26 = v31;
        sub_1D91791DC();
        v3 = v25;
        if (!v30)
        {
          goto LABEL_13;
        }
      }

      sub_1D91791DC();
    }

    while (v30);
    v3 = v25;
  }

  else
  {
    v26 = v10;
  }

LABEL_13:

  (*(v3 + 8))(v7, v2);
  v11 = [v1 defaultSettings];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  v13 = [v1 includesAllPodcasts];
  v14 = v26;
  if ((v13 & 1) == 0)
  {

    return 0;
  }

  *&v29 = MEMORY[0x1E69E7CC0];
  if (v26 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v18 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v20 = MEMORY[0x1DA72AA90](v16, v14);
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_31;
        }

        v20 = *(v14 + 8 * v16 + 32);
      }

      v21 = v20;
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v23 = [v20 integerForEpisodesToShow];
      if (v23 == [v12 integerForEpisodesToShow])
      {
      }

      else
      {
        sub_1D917959C();
        v19 = *(v29 + 16);
        sub_1D91795DC();
        v14 = v26;
        sub_1D91795EC();
        sub_1D91795AC();
      }

      ++v16;
      if (v22 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:

  if ((v29 & 0x8000000000000000) != 0 || (v29 & 0x4000000000000000) != 0)
  {
    v24 = sub_1D917935C();
  }

  else
  {
    v24 = *(v29 + 16);
  }

  return (v24 == 0);
}