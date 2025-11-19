uint64_t sub_1A3FFCF14(unint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1A524E2B4();
    sub_1A524E554();
    v2 = sub_1A524E2B4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1A524E554();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1A59097F0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1A524E514();
        sub_1A524E564();
        sub_1A524E574();
        sub_1A524E524();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_1A3FFD088()
{
  swift_getKeyPath();
  v1 = (*v0 + 504);
  v2 = *v1;
  (*v1)();

  swift_getKeyPath();
  sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource);
  sub_1A52415F4();

  v3 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1A52415E4();

  swift_getKeyPath();
  v2();

  swift_getKeyPath();
  sub_1A52415F4();

  v0[7] = v3;

  swift_getKeyPath();
  sub_1A52415E4();

  if (v0[6])
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v0 + 512))(v6);
  }

  else
  {
    v0[5] = 0;
    v0[6] = 0;
  }

  return result;
}

uint64_t sub_1A3FFD30C()
{
  (*(*v0 + 448))();
  KeyPath = swift_getKeyPath();
  (*(*v0 + 504))(KeyPath);

  swift_getKeyPath();
  sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource);
  sub_1A52415F4();

  *(v0 + 24) = MEMORY[0x1E69E7CC0];

  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v0 + 16))
  {
    v3 = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](v3);
    (*(*v0 + 512))(v4);
  }

  return result;
}

void sub_1A3FFD520(uint64_t a1)
{
  sub_1A3E7CAB0();
  v3 = v2;
  v31[1] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v31[2] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C563A4(0, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  sub_1A3C563A4(0, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion, v5);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v31 - v13;
  v15 = type metadata accessor for GenerativeStoryEventSuggestion();
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v39 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[3] = a1;
  v31[4] = v3;
  v17 = sub_1A5241F14();
  if (v17 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v17 = v30)
  {
    v19 = 0;
    v37 = v17 & 0xFFFFFFFFFFFFFF8;
    v38 = v17 & 0xC000000000000001;
    v33 = (v32 + 48);
    v34 = (v32 + 56);
    v40 = MEMORY[0x1E69E7CC0];
    v35 = v17;
    v36 = v15;
    while (1)
    {
      if (v38)
      {
        v17 = MEMORY[0x1A59097F0](v19, v17);
      }

      else
      {
        if (v19 >= *(v37 + 16))
        {
          goto LABEL_21;
        }

        v17 = *(v17 + 8 * v19 + 32);
      }

      v20 = v17;
      v15 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_1A52430E4();
      sub_1A3C34400(0, &qword_1EB124F40);
      v21 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
      v22 = swift_dynamicCast();
      v23 = *(v21 - 8);
      (*(v23 + 56))(v11, v22 ^ 1u, 1, v21);
      sub_1A4000E4C(v11, v8, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
      if ((*(v23 + 48))(v8, 1, v21) == 1)
      {

        sub_1A4000A3C(v8, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
        v24 = v36;
        (*v34)(v14, 1, 1, v36);
      }

      else
      {
        sub_1A4965628(v41);

        sub_1A40009DC(v8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
        sub_1A3DB7F50();
        v24 = v36;
        v25 = swift_dynamicCast();
        (*v34)(v14, v25 ^ 1u, 1, v24);
      }

      sub_1A4000A3C(v11, &qword_1EB12D660, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
      if ((*v33)(v14, 1, v24) == 1)
      {
        sub_1A4000A3C(v14, &qword_1EB12D668, type metadata accessor for GenerativeStoryEventSuggestion);
      }

      else
      {
        sub_1A4000AAC(v14, v39, type metadata accessor for GenerativeStoryEventSuggestion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_1A3E870AC(0, v40[2] + 1, 1, v40);
        }

        v27 = v40[2];
        v26 = v40[3];
        if (v27 >= v26 >> 1)
        {
          v40 = sub_1A3E870AC(v26 > 1, v27 + 1, 1, v40);
        }

        v28 = v39;
        v29 = v40;
        v40[2] = v27 + 1;
        sub_1A4000AAC(v28, v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v27, type metadata accessor for GenerativeStoryEventSuggestion);
      }

      ++v19;
      v17 = v35;
      if (v15 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v30 = v17;
    i = sub_1A524E2B4();
  }

  v40 = MEMORY[0x1E69E7CC0];
LABEL_24:

  sub_1A3FFA2AC();
}

void sub_1A3FFDC44()
{
  v1 = (*(*v0 + 312))();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = (*(*v0 + 360))();
    v6 = (*(*v0 + 264))();
    KeyPath = swift_getKeyPath();
    (*(*v0 + 504))(KeyPath);

    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = v0[8];
    v0[8] = 0x8000000000000000;
    sub_1A40005CC(v5, v6, v3, v4, isUniquelyReferenced_nonNull_native);

    v0[8] = v12;
    swift_endAccess();
    swift_getKeyPath();
    sub_1A52415E4();
  }

  else
  {
    oslog = sub_1A5246F04();
    v9 = sub_1A524D244();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1A3C1C000, oslog, v9, "No current ambiguity when trying to persist event selection", v10, 2u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }
  }
}

uint64_t sub_1A3FFDF1C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69C0EC8];
  sub_1A3C563A4(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1A52444C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000E4C(a1, v7, &qword_1EB130318, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A4000A3C(v7, &qword_1EB130318, MEMORY[0x1E69C0EC8]);
    KeyPath = swift_getKeyPath();
    (*(*v2 + 504))(KeyPath);

    v20 = v2;
    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    v2[8] = MEMORY[0x1E69E7CC8];

    v19 = v2;
    swift_getKeyPath();
    sub_1A52415E4();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v14 = sub_1A5244464();
    v16 = v15;
    v17 = swift_getKeyPath();
    (*(*v2 + 504))(v17);

    v20 = v2;
    swift_getKeyPath();
    sub_1A3FFF23C(&qword_1EB1250F0, type metadata accessor for GenerativeStoryEventAmbiguityDataSource);
    sub_1A52415F4();

    swift_beginAccess();
    v18 = sub_1A400051C(v14, v16);
    swift_endAccess();
    sub_1A3FFF170(v18);

    v20 = v2;
    swift_getKeyPath();
    sub_1A52415E4();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1A3FFE358()
{
  v1 = (*(*v0 + 312))();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    if (*((*(*v0 + 408))() + 16))
    {
      sub_1A3C5DCA4(v4, v3);
      v6 = v5;

      if (v6)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    else
    {
    }

    v11 = sub_1A3FFF170(0);
    (*(*v0 + 264))(v11);

    v10 = 1;
  }

  else
  {
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A3C1C000, v7, v8, "No current ambiguity when trying to check if event selection has changed", v9, 2u);
      MEMORY[0x1A590EEC0](v9, -1, -1);
    }

    v10 = 0;
  }

  return v10 & 1;
}

void sub_1A3FFE560()
{
  v0 = type metadata accessor for GenerativeStoryEventSuggestion();
  v4 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v2 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem() - 8;
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for LemonadeFeedBodyStyle(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A5245EC4();
}

uint64_t GenerativeStoryEventAmbiguityDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryEventAmbiguityDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3FFECB0()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 56) = v1;
  *(v0 + 64) = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICore39GenerativeStoryEventAmbiguityDataSource_logger;
  v4 = sub_1A3C4A780();
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 16))(v0 + v3, v4, v5);
  sub_1A5241604();
  return v0;
}

uint64_t sub_1A3FFED68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryEventSuggestion();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A4000C68(v13, v10, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A4000C68(v14, v6, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A3FFF23C(&qword_1EB130388, type metadata accessor for GenerativeStoryEventSuggestion);
        v16 = sub_1A524C594();
        sub_1A40009DC(v6, type metadata accessor for GenerativeStoryEventSuggestion);
        sub_1A40009DC(v10, type metadata accessor for GenerativeStoryEventSuggestion);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A3FFF068()
{
  v2 = *(type metadata accessor for GenerativeStoryAmbiguityData(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A3D60150;

  return sub_1A3FFB180(v6, v7, v8, v4, v0 + v3, v5);
}

uint64_t sub_1A3FFF170(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for GenerativeStoryEventAmbiguityDataSource()
{
  result = qword_1EB15E2D0;
  if (!qword_1EB15E2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3FFF1FC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 40) = v0[3];
  *(v1 + 48) = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3FFF23C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A3FFF284(uint64_t a1, char a2, void *a3)
{
  v59 = sub_1A5244794();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000974();
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = *(v9 + 48);
  v13 = *(v56 + 80);
  v55 = a1;
  v14 = (v57 + 32);
  v52 = a1 + ((v13 + 32) & ~v13);
  sub_1A4000C68(v52, v11, sub_1A4000974);
  v15 = v11[1];
  v62 = *v11;
  v16 = v62;
  v63 = v15;
  v17 = *v14;
  v53 = v12;
  v51 = v17;
  v17(v58, v11 + v12, v59);
  v18 = *a3;
  v20 = sub_1A3C5DCA4(v16, v15);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v24 = v19;
  if (v18[3] >= v23)
  {
    if (a2)
    {
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1A3FFFA88();
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1A3FFFEB4(v23, a2 & 1);
  v25 = sub_1A3C5DCA4(v16, v15);
  if ((v24 & 1) == (v26 & 1))
  {
    v20 = v25;
    if ((v24 & 1) == 0)
    {
LABEL_14:
      v29 = *a3;
      *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v30 = (v29[6] + 16 * v20);
      *v30 = v16;
      v30[1] = v15;
      v51((v29[7] + *(v57 + 72) * v20), v58, v59);
      v31 = v29[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v29[2] = v33;
      if (v54 != 1)
      {
        v34 = 1;
        while (v34 < *(v55 + 16))
        {
          sub_1A4000C68(v52 + *(v56 + 72) * v34, v11, sub_1A4000974);
          v35 = v11[1];
          v62 = *v11;
          v36 = v62;
          v63 = v35;
          v37 = *v14;
          (*v14)(v58, v11 + v53, v59);
          v38 = *a3;
          v39 = sub_1A3C5DCA4(v36, v35);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v32 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v32)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1A3FFFEB4(v43, 1);
            v39 = sub_1A3C5DCA4(v36, v35);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = (v46[6] + 16 * v39);
          *v47 = v36;
          v47[1] = v35;
          v37((v46[7] + *(v57 + 72) * v39), v58, v59);
          v48 = v46[2];
          v32 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v32)
          {
            goto LABEL_27;
          }

          ++v34;
          v46[2] = v49;
          if (v54 == v34)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v27 = swift_allocError();
    swift_willThrow();
    v64 = v27;
    v28 = v27;
    sub_1A3C34400(0, &qword_1EB126160);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v57 + 8))(v58, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1A524EB84();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000001BLL, 0x80000001A53C2450);
  sub_1A524E624();
  MEMORY[0x1A5907B60](39, 0xE100000000000000);
  sub_1A524E6E4();
  __break(1u);
}

size_t sub_1A3FFF7F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3FFF894(a1, a2, a3, *v3, &qword_1EB130360, sub_1A4000974, sub_1A4000974);
  *v3 = result;
  return result;
}

size_t sub_1A3FFF844(size_t a1, int64_t a2, char a3)
{
  result = sub_1A3FFF894(a1, a2, a3, *v3, &qword_1EB130368, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
  *v3 = result;
  return result;
}

size_t sub_1A3FFF894(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A3C563A4(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A3FFFA88()
{
  v1 = v0;
  v35 = sub_1A5244794();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
      goto LABEL_14;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_17;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_17:
    *v1 = v5;
  }

  return result;
}

void *sub_1A3FFFD18()
{
  v1 = v0;
  sub_1A4000CD0(0, &qword_1EB130370, sub_1A4000D34);
  v2 = *v0;
  v3 = sub_1A524E764();
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

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(v2 + 56) + v16);
        v21 = (*(v4 + 48) + v16);
        *v21 = v19;
        v21[1] = v18;
        *(*(v4 + 56) + v16) = v20;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A3FFFEB4(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1A5244794();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A4000CD0(0, &qword_1EB130348, MEMORY[0x1E69C0FC8]);
  v42 = a2;
  result = sub_1A524E774();
  v9 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if ((v42 & 1) == 0)
      {
        (*v39)(v44, v28, v45);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v43)(v44, v28, v45);
      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1A4000248(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A4000CD0(0, &qword_1EB130370, sub_1A4000D34);
  v33 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A400051C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1A3C5DCA4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A3FFFD18();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_1A3DAD688(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1A40005CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A4000248(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1A3FFFD18();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v26 = (v23[6] + 16 * v13);
    *v26 = a3;
    v26[1] = a4;
    v27 = (v23[7] + 16 * v13);
    *v27 = a1;
    v27[1] = a2;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = (v23[7] + 16 * v13);
  *v24 = a1;
  v24[1] = a2;
}

void sub_1A400075C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem();
    v7 = sub_1A3FFF23C(&qword_1EB130328, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A40007FC()
{
  result = qword_1EB130338;
  if (!qword_1EB130338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130338);
  }

  return result;
}

uint64_t sub_1A4000858()
{
  result = sub_1A5246F24();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1A4000974()
{
  if (!qword_1EB130340)
  {
    sub_1A5244794();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130340);
    }
  }
}

uint64_t sub_1A40009DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4000A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C563A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4000AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4000B14()
{
  result = qword_1EB126AF0;
  if (!qword_1EB126AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126AF0);
  }

  return result;
}

void sub_1A4000B60()
{
  if (!qword_1EB130350)
  {
    sub_1A4000DFC(255, &qword_1EB130358, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130350);
    }
  }
}

unint64_t sub_1A4000BE0()
{
  result = qword_1EB120C90;
  if (!qword_1EB120C90)
  {
    sub_1A3C563A4(255, &qword_1EB120C98, MEMORY[0x1E69C1878], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120C90);
  }

  return result;
}

uint64_t sub_1A4000C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4000CD0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524E7A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4000D34()
{
  if (!qword_1EB130378)
  {
    sub_1A4000DFC(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A3C563A4(255, &qword_1EB130380, type metadata accessor for GenerativeStoryEventSuggestion, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130378);
    }
  }
}

void sub_1A4000DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4000E4C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C563A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A4000F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for PersonSuggestionBanner(0);
  v15 = (a7 + v14[5]);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  result = sub_1A40014D4(a4, a7 + v14[6], type metadata accessor for PersonSuggestionBanner.Style);
  v17 = (a7 + v14[7]);
  *v17 = a5;
  v17[1] = a6;
  return result;
}

uint64_t sub_1A400101C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1A5247E04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40014A0(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BBF4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PersonSuggestionBanner.Style(0);
  sub_1A4001438(v1 + *(v14 + 24), v9, sub_1A40014A0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A4006F74(v9, sub_1A40014A0);
    (*(v4 + 104))(v6, *MEMORY[0x1E697DBB8], v3);
    v15 = sub_1A5247DF4();
    (*(v4 + 8))(v6, v3);
    if (v15)
    {
      result = sub_1A524B2E4();
    }

    else
    {
      result = sub_1A524B2A4();
    }

    v20 = MEMORY[0x1E6981568];
    a1[3] = MEMORY[0x1E69815C0];
    a1[4] = v20;
    *a1 = result;
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v13, v9, v10);
    v18 = MEMORY[0x1E6981AD0];
    a1[3] = v10;
    a1[4] = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (v17)(boxed_opaque_existential_1, v13, v10);
  }

  return result;
}

uint64_t sub_1A40012C8()
{
  sub_1A40014A0(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PersonSuggestionBanner.Style(0);
  __swift_allocate_value_buffer(v3, qword_1EB1EBA68);
  v4 = __swift_project_value_buffer(v3, qword_1EB1EBA68);
  sub_1A524A0E4();
  v5 = sub_1A524A104();

  v6 = sub_1A524A254();
  sub_1A524BBD4();
  v7 = sub_1A524BBF4();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  *v4 = v5;
  v4[1] = v6;
  return sub_1A40014D4(v2, v4 + *(v3 + 24), sub_1A40014A0);
}

uint64_t sub_1A4001438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40014D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4001560()
{
  v0 = type metadata accessor for PersonSuggestionBanner.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBA80);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBA80);
  sub_1A524A214();
  v2 = sub_1A524A104();

  v3 = sub_1A524A0E4();
  v4 = *(v0 + 24);
  v5 = sub_1A524BBF4();
  result = (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *v1 = v2;
  *(v1 + 1) = v3;
  return result;
}

uint64_t sub_1A400163C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for PersonSuggestionBanner.Style(0);

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1A4001690@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1A4001438(v6, a3, type metadata accessor for PersonSuggestionBanner.Style);
}

void sub_1A40016F8(uint64_t a1@<X8>)
{
  v12 = a1;
  v2 = sub_1A5247E04();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A40055EC(0, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  sub_1A4002644();
  v7 = *(v6 - 8);
  v10 = v6;
  v11 = v7;
  MEMORY[0x1EEE9AC00](v6);
  *v5 = sub_1A5249314();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_1A4005E4C(0, &qword_1EB130470, sub_1A4001D78);
  sub_1A40029B0(v1, &v5[*(v8 + 44)]);
}

void sub_1A4001C2C()
{
  if (!qword_1EB1303A0)
  {
    sub_1A4001F60(255, &qword_1EB1303A8, sub_1A4001CE4);
    sub_1A40025F0(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1303A0);
    }
  }
}

void sub_1A4001CE4()
{
  if (!qword_1EB1303B0)
  {
    sub_1A4001D78(255);
    sub_1A40064D4(&qword_1EB130440, sub_1A4001D78);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1303B0);
    }
  }
}

void sub_1A4001DAC()
{
  if (!qword_1EB1303C0)
  {
    sub_1A4001E48(255);
    sub_1A40021EC();
    sub_1A400233C();
    sub_1A4002464();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1303C0);
    }
  }
}

void sub_1A4001E7C()
{
  if (!qword_1EB1303D0)
  {
    sub_1A40055EC(255, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    sub_1A4001FC4();
    v0 = type metadata accessor for Avatar();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1303D0);
    }
  }
}

void sub_1A4001F60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4001FC4()
{
  result = qword_1EB1303F0;
  if (!qword_1EB1303F0)
  {
    sub_1A40055EC(255, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    sub_1A40020A4();
    sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1303F0);
  }

  return result;
}

unint64_t sub_1A40020A4()
{
  result = qword_1EB1303F8;
  if (!qword_1EB1303F8)
  {
    sub_1A4001F10(255);
    sub_1A4002124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1303F8);
  }

  return result;
}

unint64_t sub_1A4002124()
{
  result = qword_1EB130400;
  if (!qword_1EB130400)
  {
    sub_1A4001F38(255);
    sub_1A40064D4(&qword_1EB125BC8, type metadata accessor for PersonFaceView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130400);
  }

  return result;
}

void sub_1A40021EC()
{
  if (!qword_1EB130408)
  {
    sub_1A4002280(255);
    sub_1A40064D4(&qword_1EB130420, sub_1A4002280);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130408);
    }
  }
}

void sub_1A40022B4()
{
  if (!qword_1EB130418)
  {
    sub_1A4005370(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130418);
    }
  }
}

void sub_1A400233C()
{
  if (!qword_1EB130428)
  {
    v0 = MEMORY[0x1E6981148];
    v1 = MEMORY[0x1E6981138];
    sub_1A40025F0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A5243B44();
    sub_1A400258C(&qword_1EB127490, &qword_1EB127480, v0, v1);
    sub_1A40064D4(&qword_1EB130430, MEMORY[0x1E69C27F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130428);
    }
  }
}

void sub_1A4002464()
{
  if (!qword_1EB130438)
  {
    v0 = MEMORY[0x1E6981748];
    v1 = MEMORY[0x1E6981710];
    sub_1A40025F0(255, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
    sub_1A5243954();
    sub_1A400258C(&qword_1EB127458, &qword_1EB127450, v0, v1);
    sub_1A40064D4(&qword_1EB136900, MEMORY[0x1E69C26C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130438);
    }
  }
}

uint64_t sub_1A400258C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40025F0(255, a2, a3, a4, MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40025F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A4002644()
{
  if (!qword_1EB130448)
  {
    sub_1A40055EC(255, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
    sub_1A40026F8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130448);
    }
  }
}

unint64_t sub_1A40026F8()
{
  result = qword_1EB130450;
  if (!qword_1EB130450)
  {
    sub_1A40055EC(255, &qword_1EB130398, sub_1A4001C2C, sub_1A3E42C88);
    sub_1A40027D8();
    sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130450);
  }

  return result;
}

unint64_t sub_1A40027D8()
{
  result = qword_1EB130458;
  if (!qword_1EB130458)
  {
    sub_1A4001C2C();
    sub_1A4002858();
    sub_1A400292C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130458);
  }

  return result;
}

unint64_t sub_1A4002858()
{
  result = qword_1EB130460;
  if (!qword_1EB130460)
  {
    sub_1A4001F60(255, &qword_1EB1303A8, sub_1A4001CE4);
    sub_1A40064D4(&qword_1EB130468, sub_1A4001CE4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130460);
  }

  return result;
}

unint64_t sub_1A400292C()
{
  result = qword_1EB1454B0;
  if (!qword_1EB1454B0)
  {
    sub_1A40025F0(255, &qword_1EB145460, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1454B0);
  }

  return result;
}

void sub_1A40029B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57[20] = a2;
  v3 = sub_1A5243954();
  v57[16] = *(v3 - 8);
  v57[17] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57[15] = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697D670];
  sub_1A40025F0(0, &qword_1EB127450, MEMORY[0x1E6981748], MEMORY[0x1E6981710], MEMORY[0x1E697D670]);
  v57[14] = v6;
  v57[12] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57[10] = v57 - v7;
  sub_1A4002464();
  v57[18] = *(v8 - 8);
  v57[19] = v8;
  MEMORY[0x1EEE9AC00](v8);
  v64 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = v57 - v11;
  v12 = sub_1A5243B44();
  v57[8] = *(v12 - 8);
  v57[9] = v12;
  MEMORY[0x1EEE9AC00](v12);
  v57[5] = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PersonSuggestionBanner(0);
  v57[25] = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v57[6] = v15;
  v57[7] = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40025F0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v5);
  v57[3] = *(v16 - 8);
  v57[4] = v16;
  MEMORY[0x1EEE9AC00](v16);
  v57[2] = v57 - v17;
  sub_1A400233C();
  v57[13] = v18;
  v57[11] = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v68 = v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v67 = v57 - v21;
  v60 = sub_1A5243624();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v23 = v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4001E7C();
  v61 = v24;
  v65 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4001E48(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v62 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v57 - v30;
  v59 = v14;
  v32 = *(v14 + 20);
  v66 = a1;
  v33 = (a1 + v32);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[2];
  v71 = *v33;
  v72 = v35;
  v73 = v36;
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  v38 = v37;
  v39 = MEMORY[0x1A5906C60](v70);
  v40 = (*(*v70[0] + 304))(v39);

  if (v40)
  {
    v71 = v34;
    v72 = v35;
    v73 = v36;
    MEMORY[0x1A5906C60](v70, v38);
    v41 = *(v70[0] + 64);

    *v26 = v41;
    v42 = v61;
    v43 = &v26[*(v61 + 9)];
    (*(v58 + 104))(v23, *MEMORY[0x1E69C2530], v60);
    swift_unknownObjectRetain();
    v44 = sub_1A3C5A374();
    sub_1A4308C80(v23, 0, v44 & 1, v43);
    sub_1A4001F38(0);
    v46 = v43 + *(v45 + 36);
    *v46 = 0x3FF0000000000000;
    *(v46 + 4) = 0;
    sub_1A524BC74();
    sub_1A52481F4();
    swift_unknownObjectRelease();
    sub_1A4001F10(0);
    v48 = (v43 + *(v47 + 36));
    v49 = v75;
    *v48 = v74;
    v48[1] = v49;
    v48[2] = v76;
    sub_1A40055EC(0, &qword_1EB1303D8, sub_1A4001F10, sub_1A3FA95D4);
    *(v43 + *(v50 + 36)) = 256;
    sub_1A40014D4(v26, v31, sub_1A4001E7C);
    v51 = 0;
    v52 = v42;
  }

  else
  {
    v51 = 1;
    v52 = v61;
  }

  v53 = *(v65 + 56);
  v61 = v31;
  v53(v31, v51, 1, v52);
  v60 = sub_1A5249584();
  v69 = 0;
  v54 = (v66 + *(v59 + 20));
  v55 = v54[1];
  v56 = v54[2];
  v71 = *v54;
  v72 = v55;
  v73 = v56;
  MEMORY[0x1A5906C60](v70, v38);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4003A68(uint64_t a1)
{
  v2 = type metadata accessor for PersonSuggestionBanner(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524CCB4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1A4001438(a1, v5, type metadata accessor for PersonSuggestionBanner);
  sub_1A524CC54();
  v10 = sub_1A524CC44();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1A40014D4(v5, v12 + v11, type metadata accessor for PersonSuggestionBanner);
  sub_1A3D4D930(0, 0, v8, &unk_1A53116C0, v12);
}

uint64_t sub_1A4003C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4003CD8, v6, v5);
}

uint64_t sub_1A4003CD8()
{
  v1 = *(v0 + 48);
  v2 = v1 + *(type metadata accessor for PersonSuggestionBanner(0) + 20);
  v3 = *(v2 + 8);
  *(v0 + 16) = *v2;
  *(v0 + 24) = v3;
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60]();
  v4 = *(v0 + 40);
  *(v0 + 80) = v4;
  v7 = (*(*v4 + 376) + **(*v4 + 376));
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_1A4003E6C;

  return v7();
}

uint64_t sub_1A4003E6C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A4003F88;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1A3E8D568;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4003F88()
{

  if (qword_1EB1A0B90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1A5246F24();
  __swift_project_value_buffer(v2, qword_1EB1A0B98);
  v3 = v1;
  v4 = sub_1A5246F04();
  v5 = sub_1A524D244();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1A3C1C000, v4, v5, "Person suggestion primary action failed %@", v8, 0xCu);
    sub_1A4006F74(v9, sub_1A3D3F118);
    MEMORY[0x1A590EEC0](v9, -1, -1);
    MEMORY[0x1A590EEC0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A4004144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A524B544();
  *a1 = result;
  return result;
}

uint64_t sub_1A4004180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v4 = sub_1A5248A14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42C88();
  v7 = sub_1A5248804();
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v72 - v11;
  sub_1A3FA95D4();
  v12 = sub_1A5248804();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v72 - v16;
  v79 = v17;
  v18 = sub_1A5249754();
  v77 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  v80 = v21;
  v83 = v7;
  v78 = sub_1A5249754();
  v82 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v72 - v22;
  v23 = MEMORY[0x1E6981E60];
  if (*v2)
  {
    if (*v2 == 1)
    {
      v24 = *(a1 + 24);
      sub_1A3FA9580();
      sub_1A524B194();
      v75 = MEMORY[0x1E697DDB0];
      v25 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
      v95 = v24;
      v96 = v25;
      v74 = MEMORY[0x1E697E858];
      v26 = v79;
      WitnessTable = swift_getWitnessTable();
      v28 = v73;
      v29 = *(v73 + 16);
      v30 = v76;
      v29(v76, v14, v26);
      v31 = *(v28 + 8);
      v31(v14, v26);
      v29(v14, v30, v26);
      v32 = MEMORY[0x1E6981E60];
      sub_1A3DF4890(v14, MEMORY[0x1E6981E70], v26);
      v93 = v32;
      v94 = WitnessTable;
      v33 = v80;
      swift_getWitnessTable();
      v34 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
      v91 = v24;
      v92 = v34;
      swift_getWitnessTable();
      v35 = v81;
      sub_1A3DF4798(v20, v33);
      (*(v77 + 8))(v20, v33);
      v31(v14, v26);
      v31(v76, v26);
      v36 = v35;
      v37 = MEMORY[0x1E6981E60];
    }

    else
    {
      v42 = *(v4 + 20);
      v43 = *MEMORY[0x1E697F468];
      v44 = sub_1A52494A4();
      (*(*(v44 - 8) + 104))(&v6[v42], v43, v44);
      __asm { FMOV            V0.2D, #5.0 }

      *v6 = _Q0;
      v50 = *(a1 + 24);
      sub_1A40064D4(&qword_1EB128080, MEMORY[0x1E697EAF0]);
      sub_1A524B194();
      sub_1A4006F74(v6, MEMORY[0x1E697EAF0]);
      v51 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
      v109 = v50;
      v110 = v51;
      v52 = v83;
      v77 = swift_getWitnessTable();
      v53 = v75;
      v54 = *(v75 + 16);
      v55 = v74;
      v54(v74, v9, v52);
      v56 = *(v53 + 8);
      v56(v9, v52);
      v54(v9, v55, v52);
      v57 = v52;
      v58 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
      v59 = v50;
      v107 = v50;
      v108 = v58;
      v37 = MEMORY[0x1E6981E60];
      v60 = swift_getWitnessTable();
      v105 = v37;
      v106 = v60;
      v61 = v80;
      swift_getWitnessTable();
      v62 = v81;
      sub_1A3DF4890(v9, v61, v57);
      v63 = v9;
      v36 = v62;
      v56(v63, v57);
      v56(v55, v57);
      v24 = v59;
    }
  }

  else
  {
    v24 = *(a1 + 24);
    v38 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
    v89 = v24;
    v90 = v38;
    v39 = swift_getWitnessTable();
    sub_1A3DF4798(v39, MEMORY[0x1E6981E70]);
    v87 = v23;
    v88 = v39;
    v40 = v80;
    swift_getWitnessTable();
    v41 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
    v85 = v24;
    v86 = v41;
    swift_getWitnessTable();
    v36 = v81;
    sub_1A3DF4798(v20, v40);
    v37 = v23;
    (*(v77 + 8))(v20, v40);
  }

  v64 = sub_1A40064D4(&qword_1EB1245F8, sub_1A3FA95D4);
  v103 = v24;
  v104 = v64;
  v65 = swift_getWitnessTable();
  v101 = v37;
  v102 = v65;
  v66 = swift_getWitnessTable();
  v67 = sub_1A40064D4(&qword_1EB128A00, sub_1A3E42C88);
  v99 = v24;
  v100 = v67;
  v68 = swift_getWitnessTable();
  v97 = v66;
  v98 = v68;
  v69 = v78;
  swift_getWitnessTable();
  v70 = v82;
  (*(v82 + 16))(v84, v36, v69);
  return (*(v70 + 8))(v36, v69);
}

void sub_1A4004BF0(uint64_t a1@<X8>)
{
  v12[8] = a1;
  sub_1A40051FC(0);
  v12[6] = v1 - 8;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v12[7] = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A40055B8(0);
  MEMORY[0x1EEE9AC00](v4);
  v12[5] = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v12[4] = v12 - v7;
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  type metadata accessor for PersonSuggestionBanner(0);
  sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
  sub_1A3F96E7C();
}

uint64_t sub_1A4005108(uint64_t a1)
{
  v2 = sub_1A40069DC();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4005154(uint64_t a1)
{
  v2 = sub_1A40069DC();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A40051A0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A0B98);
  __swift_project_value_buffer(v0, qword_1EB1A0B98);
  v1 = *sub_1A4843F98();
  return sub_1A5246F34();
}

void sub_1A4005230()
{
  if (!qword_1EB130488)
  {
    sub_1A4005294();
    sub_1A400547C();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130488);
    }
  }
}

void sub_1A4005294()
{
  if (!qword_1EB130490)
  {
    sub_1A4005370(255, &qword_1EB130498, &type metadata for PersonBannerAvatarStyle, MEMORY[0x1E69E62F8]);
    type metadata accessor for PersonSuggestionBanner(255);
    sub_1A40053C0(&qword_1EB1304A0);
    sub_1A4005428();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130490);
    }
  }
}

void sub_1A4005370(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A40053C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A4005370(255, &qword_1EB130498, &type metadata for PersonBannerAvatarStyle, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4005428()
{
  result = qword_1EB1304A8;
  if (!qword_1EB1304A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304A8);
  }

  return result;
}

unint64_t sub_1A400547C()
{
  result = qword_1EB1304B0;
  if (!qword_1EB1304B0)
  {
    sub_1A4005294();
    sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304B0);
  }

  return result;
}

void sub_1A4005524()
{
  if (!qword_1EB1446F0)
  {
    sub_1A5249D94();
    sub_1A40064D4(&qword_1EB1304B8, MEMORY[0x1E697CA50]);
    v0 = sub_1A52499B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1446F0);
    }
  }
}

void sub_1A40055EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4005660()
{
  if (!qword_1EB1304C8)
  {
    type metadata accessor for PersonSuggestionBanner(255);
    sub_1A40064D4(&qword_1EB12F5A0, type metadata accessor for PersonSuggestionBanner);
    v0 = type metadata accessor for PersonBannerPreview();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1304C8);
    }
  }
}

uint64_t sub_1A40056F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 1, 0xD000000000000014, 0x80000001A53C2530, 0xD000000000000017, 0x80000001A53C24E0, 7562585, 0xE300000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t sub_1A400596C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 2, 0xD000000000000025, 0x80000001A53C2500, 0, 0, 0x776569766552, 0xE600000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;
}

uint64_t sub_1A4005BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v6 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v7 = sub_1A3F29DC8(v6, 0, 0xD000000000000011, 0x80000001A53C24C0, 0xD000000000000017, 0x80000001A53C24E0, 7562585, 0xE300000000000000, 0);
  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v14 = __swift_project_value_buffer(v13, qword_1EB1EBA68);
  v15 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v14, a3 + v15[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a3 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v15[5];
  *v16 = v19;
  *(v16 + 8) = v20;
  v17 = (a3 + v15[7]);
  *v17 = a1;
  v17[1] = a2;
}

void sub_1A4005E4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1A4005EB8@<Q0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MockPersonSuggestionBannerModel(0);
  type metadata accessor for SyntheticPerson();
  v4 = SyntheticPerson.__allocating_init(name:)(0, 0);
  v5 = sub_1A3F29DC8(v4, v3, 0xD000000000000010, 0x80000001A53C24A0, 0x755320796D6D7544, 0xEE00656C74697462, 0x6D7269666E6F43, 0xE700000000000000, 0);
  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  sub_1A524B944();
  if (qword_1EB1A0B80 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PersonSuggestionBanner.Style(0);
  v12 = __swift_project_value_buffer(v11, qword_1EB1EBA68);
  v13 = type metadata accessor for PersonSuggestionBanner(0);
  sub_1A4001438(v12, a2 + v13[6], type metadata accessor for PersonSuggestionBanner.Style);

  *a2 = swift_getKeyPath();
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v13[5];
  *v14 = v17;
  result = v18;
  *(v14 + 8) = v18;
  v16 = (a2 + v13[7]);
  *v16 = PXDisplayCollectionDetailedCountsMake;
  v16[1] = 0;
  return result;
}

void sub_1A4006138()
{
  if (!qword_1EB1304D8)
  {
    sub_1A40055B8(255);
    sub_1A40051FC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1304D8);
    }
  }
}

unint64_t sub_1A40061BC()
{
  result = qword_1EB1304E0;
  if (!qword_1EB1304E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304E0);
  }

  return result;
}

unint64_t sub_1A4006264()
{
  result = qword_1EB1304F0;
  if (!qword_1EB1304F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1304F0);
  }

  return result;
}

void sub_1A400630C()
{
  sub_1A4006FD4(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A4006FD4(319, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for PersonSuggestionBanner.Style(319);
      if (v2 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A4006448()
{
  sub_1A40014A0(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A40064D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4006550()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A40065D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1A4006754(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 2;
  }
}

unint64_t sub_1A40069DC()
{
  result = qword_1EB130508;
  if (!qword_1EB130508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130508);
  }

  return result;
}

uint64_t sub_1A4006A3C()
{
  v1 = *(type metadata accessor for PersonSuggestionBanner(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4003A68(v2);
}

void sub_1A4006A9C()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(type metadata accessor for PersonSuggestionBanner(0) + 20);
  v3[1] = *v2;
  v4 = *(v2 + 8);
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t objectdestroy_54Tm_0()
{
  v1 = type metadata accessor for PersonSuggestionBanner(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A4006FD4(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5247E04();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = v0 + v2 + *(v1 + 24);

  v5 = *(type metadata accessor for PersonSuggestionBanner.Style(0) + 24);
  v6 = sub_1A524BBF4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v4 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1A4006D84()
{
  v1 = type metadata accessor for PersonSuggestionBanner(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (v3 + *(v1 + 20));
  v9 = *v4;
  v10 = *(v4 + 1);
  sub_1A4006FD4(0, &qword_1EB130478, type metadata accessor for LegacyPersonSuggestionBannerModel, MEMORY[0x1E6981948]);
  v5 = MEMORY[0x1A5906C60](&v8);
  (*(*v8 + 384))(v5);

  v6 = *(v3 + *(v2 + 36));
  LOBYTE(v9) = 0;
  return v6(&v9);
}

uint64_t sub_1A4006EAC()
{
  v2 = *(type metadata accessor for PersonSuggestionBanner(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A4003C40(v4, v5, v6, v0 + v3);
}

uint64_t sub_1A4006F74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4006FD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t ConcatenatingAssetsDataSource.Mode.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1A40070CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id ConcatenatingAssetsDataSource.init(underlyingDataSources:mode:)(unint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections];
  *v3 = 0;
  v3[8] = 1;
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = a2;
    v7 = sub_1A524E2B4();
    a2 = v6;
    v8 = v7;
    a1 = v5;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *&v2[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources] = a1;
    *&v2[OBJC_IVAR___PXConcatenatingAssetsDataSource_mode] = a2;
    v9.receiver = v2;
    v9.super_class = type metadata accessor for ConcatenatingAssetsDataSource();
    return objc_msgSendSuper2(&v9, sel_init);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A40072A4(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v3 == 1)
  {
    v4 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      goto LABEL_40;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  if (v3)
  {
    result = sub_1A524EB44();
    __break(1u);
    return result;
  }

  v4 = *(v1 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
  if (v4 >> 62)
  {
    v13 = sub_1A524E2B4();
  }

  else
  {
    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v5 = 0;
  while (1)
  {
    if (v13 == v14)
    {
      return 0;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v15 = MEMORY[0x1A59097F0](v14, v4);
    if (__OFADD__(v14, 1))
    {
LABEL_29:
      __break(1u);
      return 0;
    }

LABEL_22:
    if (__OFSUB__(a1, v5))
    {
      goto LABEL_38;
    }

    v16 = v15;
    if (a1 - v5 < [v16 numberOfSections])
    {

      v19 = [v16 numberOfItemsInSection_];
      return v19;
    }

    v17 = [v16 numberOfSections];

    ++v14;
    v12 = __OFADD__(v5, v17);
    v5 += v17;
    if (v12)
    {
      goto LABEL_39;
    }
  }

  if (v14 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v4 + 8 * v14 + 32);
    if (__OFADD__(v14, 1))
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  v6 = sub_1A524E2B4();
LABEL_4:
  v7 = 0;
  v8 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1A59097F0](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_35;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = [v9 numberOfItemsInSection_];

    ++v7;
    v12 = __OFADD__(v8, v11);
    v8 += v11;
    if (v12)
    {
      goto LABEL_36;
    }
  }

  return v8;
}

unint64_t sub_1A4007564()
{
  v1 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:
    LODWORD(v11) = 0;
    v10 = 61;
    result = sub_1A524E6E4();
    __break(1u);
    goto LABEL_14;
  }

  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = __OFSUB__(v2, 1);
  result = v2 - 1;
  if (v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v5 = MEMORY[0x1A59097F0](result, v1);
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 8 * result + 32);
LABEL_8:
  v6 = v5;
  v7 = [v5 startingAssetReference];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1A4008C04(v7);
  }

  else
  {

    return 0;
  }

  return v9;
}

uint64_t sub_1A4007A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40087BC(a2, a3, &v7);
  if (v7)
  {
    v6[0] = v8;
    v6[1] = v9;
    v3 = [v7 assetReferenceAtItemIndexPath_];
    v4 = sub_1A4008C04(v3);
    sub_1A4009068(&v7);

    return v4;
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
    type metadata accessor for PXSimpleIndexPath(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void *sub_1A4007BD8(void *a1)
{
  v2 = a1;
  [a1 indexPath];
  if (v13 == [v1 identifier])
  {
    v3 = v2;
  }

  else
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
    {
      for (j = 0; ; ++j)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1A59097F0](j, v4);
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v10 = [v7 assetReferenceForAssetReference_];
        if (v10)
        {
          v11 = v10;
          v2 = sub_1A4008C04(v10);

          return v2;
        }

        if (v9 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1A4007D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char **a5)
{
  sub_1A40087BC(a2, a3, &v10);
  if (v10)
  {
    v6 = *a5;
    v9[0] = v11;
    v9[1] = v12;
    v7 = [v10 v6];
    sub_1A4009068(&v10);
    return v7;
  }

  else
  {
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
    type metadata accessor for PXSimpleIndexPath(0);
    sub_1A524E624();
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A4007ED8(void *a1, uint64_t a2, uint64_t *a3, const char **a4)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a1;
  v10 = sub_1A4007D9C(v5, v6, v7, v8, a4);

  return v10;
}

uint64_t sub_1A4007F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40087BC(a2, a3, &v7);
  if (v7)
  {
    v6[0] = v8;
    v6[1] = v9;
    v3 = [v7 assetAtItemIndexPath_];
    sub_1A4009068(&v7);
    return v3;
  }

  else
  {
    sub_1A524E404();

    v5 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v5);

    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A400807C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v7 == 1)
  {
    *&v20[0] = MEMORY[0x1E69E7CC0];
    v8 = *(v4 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v8 >> 62)
    {
      v9 = sub_1A524E2B4();
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = (v8 & 0xFFFFFFFFFFFFFF8);
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    if (v9 >= 1)
    {
      v10 = 0;
      v17 = v9;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1A59097F0](v10, v8);
        }

        else
        {
          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        if ([v11 numberOfSections] <= a2)
        {
        }

        else
        {
          v21 = a1;
          *&v22 = a2;
          *(&v22 + 1) = a3;
          *&v23 = a4;
          v13 = [v12 assetsInSectionIndexPath_];
          v14 = swift_unknownObjectRetain();
          MEMORY[0x1A5907D70](v14);
          if (*((*&v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
          swift_unknownObjectRelease();

          v9 = v17;
        }

        ++v10;
      }

      while (v9 != v10);
LABEL_19:
      sub_1A40091D8();
      sub_1A524CA14();

      PXDisplayAssetFetchResultFromFetchResults();
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7)
  {
LABEL_21:
    v21 = v7;
    sub_1A524EB44();
    __break(1u);
    goto LABEL_22;
  }

  sub_1A40087BC(a2, a3, &v21);
  if (v21)
  {
    v20[0] = v22;
    v20[1] = v23;
    v15 = [v21 assetsInSectionIndexPath_];
    sub_1A4009068(&v21);
    return v15;
  }

LABEL_22:
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53C2610);
  type metadata accessor for PXSimpleIndexPath(0);
  sub_1A524E624();
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A40083A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a1;
  v10 = a4(v5, v6, v7, v8);

  return v10;
}

uint64_t sub_1A4008420()
{
  v1 = (v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections);
  if (*(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource____lazy_storage___numberOfUnderlyingSections + 8) != 1)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v2 == 1)
  {
    v3 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v3 >> 62)
    {
      v4 = sub_1A524E2B4();
      if (v4)
      {
LABEL_5:
        v38 = v1;
        v40 = MEMORY[0x1E69E7CC0];
        sub_1A3FD1D1C(0, v4 & ~(v4 >> 63), 0);
        if ((v4 & 0x8000000000000000) == 0)
        {
          v5 = 0;
          v6 = v40;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v7 = MEMORY[0x1A59097F0](v5, v3);
            }

            else
            {
              v7 = *(v3 + 8 * v5 + 32);
            }

            v8 = v7;
            v9 = [v7 numberOfSections];

            v11 = *(v40 + 16);
            v10 = *(v40 + 24);
            v12 = v11 + 1;
            if (v11 >= v10 >> 1)
            {
              sub_1A3FD1D1C((v10 > 1), v11 + 1, 1);
            }

            ++v5;
            *(v40 + 16) = v12;
            *(v40 + 8 * v11 + 32) = v9;
          }

          while (v4 != v5);
          v1 = v38;
LABEL_29:
          v13 = *(v6 + 32);
          v24 = v12 - 1;
          if (v12 != 1)
          {
            if (v12 < 5)
            {
              v25 = 1;
              goto LABEL_35;
            }

            v25 = v24 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v26 = vdupq_n_s64(v13);
            v27 = (v6 + 56);
            v28 = v24 & 0xFFFFFFFFFFFFFFFCLL;
            v29 = v26;
            do
            {
              v26 = vbslq_s8(vcgtq_s64(v26, v27[-1]), v26, v27[-1]);
              v29 = vbslq_s8(vcgtq_s64(v29, *v27), v29, *v27);
              v27 += 2;
              v28 -= 4;
            }

            while (v28);
            v30 = vbslq_s8(vcgtq_s64(v26, v29), v26, v29);
            v31 = vextq_s8(v30, v30, 8uLL).u64[0];
            v13 = vbsl_s8(vcgtd_s64(v30.i64[0], v31), *v30.i8, v31);
            if (v24 != (v24 & 0xFFFFFFFFFFFFFFFCLL))
            {
LABEL_35:
              v32 = v12 - v25;
              v33 = 8 * v25 + 32;
              do
              {
                if (v13 <= *(v6 + v33))
                {
                  v13 = *(v6 + v33);
                }

                v33 += 8;
                --v32;
              }

              while (v32);
            }
          }

LABEL_47:

          *v1 = v13;
          v1[8] = 0;
          return v13;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_5;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v12)
    {
      goto LABEL_29;
    }

LABEL_46:
    v13 = 0;
    goto LABEL_47;
  }

  if (!v2)
  {
    v14 = *(v0 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    if (v14 >> 62)
    {
      v15 = sub_1A524E2B4();
      if (v15)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_18:
        v39 = v1;
        v41 = MEMORY[0x1E69E7CC0];
        sub_1A3FD1D1C(0, v15 & ~(v15 >> 63), 0);
        if (v15 < 0)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v16 = 0;
        v17 = v41;
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1A59097F0](v16, v14);
          }

          else
          {
            v18 = *(v14 + 8 * v16 + 32);
          }

          v19 = v18;
          v20 = [v18 numberOfSections];

          v22 = *(v41 + 16);
          v21 = *(v41 + 24);
          v23 = v22 + 1;
          if (v22 >= v21 >> 1)
          {
            sub_1A3FD1D1C((v21 > 1), v22 + 1, 1);
          }

          ++v16;
          *(v41 + 16) = v23;
          *(v41 + 8 * v22 + 32) = v20;
        }

        while (v15 != v16);
        v1 = v39;
        goto LABEL_42;
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
    v23 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v23)
    {
      goto LABEL_46;
    }

LABEL_42:
    v13 = 0;
    v34 = 32;
    while (1)
    {
      v35 = *(v17 + v34);
      v36 = __OFADD__(v13, v35);
      v13 += v35;
      if (v36)
      {
        break;
      }

      v34 += 8;
      if (!--v23)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_52:
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

void sub_1A40087BC(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSource_mode);
  if (v7 == 1)
  {
    v9 = sub_1A52403B4();
    v10 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v11 = v10 >> 62;
    if (v9 == a2)
    {
      if (v11)
      {
        v12 = sub_1A524E2B4();
        if (v12)
        {
LABEL_5:
          v13 = 0;
          v3 = v10 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1A59097F0](v13, v10);
              v4 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
LABEL_14:
                __break(1u);
                goto LABEL_15;
              }
            }

            else
            {
              if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

              v14 = *(v10 + 8 * v13 + 32);
              v4 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                goto LABEL_14;
              }
            }

            v15 = v14;
            if ([v15 numberOfSections] > a1)
            {
              break;
            }

            ++v13;
            if (v4 == v12)
            {
              goto LABEL_60;
            }
          }

          v28 = a2;
LABEL_50:
          v27 = [v15 identifier];

          v29 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_61;
        }
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_5;
        }
      }

LABEL_60:
      v15 = 0;
      v27 = 0;
      a1 = 0;
      v28 = 0;
      v29 = 0;
LABEL_61:
      *a3 = v15;
      *(a3 + 1) = v27;
      *(a3 + 2) = a1;
      *(a3 + 3) = v28;
      *(a3 + 4) = v29;
      return;
    }

LABEL_31:
    v30 = a3;
    v4 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v11)
    {
      v21 = sub_1A524E2B4();
    }

    else
    {
      v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    v23 = 0;
    while (v21 != v22)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1A59097F0](v22, v10);
        if (__OFADD__(v22, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v22 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v24 = *(v10 + 8 * v22 + 32);
        if (__OFADD__(v22, 1))
        {
LABEL_45:
          __break(1u);
          break;
        }
      }

      v15 = v24;
      v25 = [v15 numberOfItemsInSection_];
      if (__OFSUB__(a2, v23))
      {
        goto LABEL_55;
      }

      v26 = v25;
      if (a2 - v23 < v25)
      {
        v28 = a2 - v23;
        goto LABEL_50;
      }

      ++v22;
      v20 = __OFADD__(v23, v26);
      v23 += v26;
      if (v20)
      {
        goto LABEL_56;
      }
    }

LABEL_46:
    v15 = 0;
    v27 = 0;
    a1 = 0;
    v28 = 0;
    v29 = 0;
    a3 = v30;
    goto LABEL_61;
  }

LABEL_15:
  if (!v7)
  {
    v10 = *(v3 + OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources);
    v30 = a3;
    v4 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
LABEL_58:
      v16 = sub_1A524E2B4();
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    a3 = 0;
    while (v16 != v17)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1A59097F0](v17, v10);
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        if (v17 >= *(v4 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v18 = *(v10 + 8 * v17 + 32);
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      if (__OFSUB__(a1, a3))
      {
        goto LABEL_52;
      }

      v15 = v18;
      if (a1 - a3 < [v15 numberOfSections])
      {
        a1 -= a3;
        a3 = v30;
        v28 = a2;
        goto LABEL_50;
      }

      v19 = [v15 numberOfSections];

      ++v17;
      v20 = __OFADD__(a3, v19);
      a3 = &v19[a3];
      if (v20)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_46;
  }

  sub_1A524EB44();
  __break(1u);
}

id ConcatenatingAssetsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConcatenatingAssetsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcatenatingAssetsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A4008C04(void *a1)
{
  [a1 indexPath];
  v34 = v36;
  [a1 indexPath];
  v3 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_mode];
  if (v3 == 1)
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_40:
      v6 = sub_1A524E2B4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    v8 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_36;
        }

        v9 = *(v4 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      [a1 indexPath];
      if (v35 == [v10 identifier])
      {
        v20 = [v1 identifier];
        v21 = v37 + v8;
        if (!__OFADD__(v37, v8))
        {
          v22 = v20;

          goto LABEL_33;
        }

        __break(1u);
        goto LABEL_43;
      }

      v11 = [v10 numberOfItemsInSection_];

      ++v7;
      v12 = __OFADD__(v8, v11);
      v8 += v11;
      if (v12)
      {
        goto LABEL_38;
      }
    }

LABEL_44:
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD00000000000003ALL, 0x80000001A53C27D0);
    v30 = [a1 description];
    v31 = sub_1A524C674();
    v33 = v32;

    MEMORY[0x1A5907B60](v31, v33);

    sub_1A524E6E4();
    __break(1u);
    goto LABEL_45;
  }

  if (!v3)
  {
    v4 = *&v1[OBJC_IVAR___PXConcatenatingAssetsDataSource_underlyingDataSources];
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v13 = sub_1A524E2B4();
    }

    else
    {
      v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = 0;
    v15 = 0;
    while (v13 != v14)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1A59097F0](v14, v4);
      }

      else
      {
        if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 8 * v14 + 32);
      }

      v17 = v16;
      if (__OFADD__(v14, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      [a1 indexPath];
      v18 = v17;
      if (v35 == [v18 identifier])
      {

        v23 = [v1 identifier];
        v34 = v36 + v15;
        if (__OFADD__(v36, v15))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v22 = v23;

        v21 = v37;
LABEL_33:
        v24 = [a1 sectionObject];
        v25 = [a1 itemObject];
        v26 = [a1 subitemObject];
        v27 = objc_allocWithZone(off_1E7721490);
        v35 = v22;
        v36 = v34;
        v37 = v21;
        v38 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = [v27 initWithSectionObject:v24 itemObject:v25 subitemObject:v26 indexPath:&v35];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v28;
      }

      v19 = [v18 numberOfSections];

      ++v14;
      v12 = __OFADD__(v15, v19);
      v15 += v19;
      if (v12)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_44;
  }

LABEL_45:
  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A4009068(uint64_t a1)
{
  sub_1A40090C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A40090C4()
{
  if (!qword_1EB130528)
  {
    sub_1A400911C();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB130528);
    }
  }
}

void sub_1A400911C()
{
  if (!qword_1EB130530)
  {
    sub_1A400918C();
    type metadata accessor for PXSimpleIndexPath(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130530);
    }
  }
}

unint64_t sub_1A400918C()
{
  result = qword_1EB126A20;
  if (!qword_1EB126A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126A20);
  }

  return result;
}

unint64_t sub_1A40091D8()
{
  result = qword_1EB120750;
  if (!qword_1EB120750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120750);
  }

  return result;
}

unint64_t sub_1A4009240()
{
  result = qword_1EB130538;
  if (!qword_1EB130538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130538);
  }

  return result;
}

void sub_1A40092D0()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B668);
  __swift_project_value_buffer(v0, qword_1EB15B668);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4009358()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB170778);
  __swift_project_value_buffer(v4, qword_1EB170778);
  if (qword_1EB15B660 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB15B668);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

id sub_1A4009494(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  result = 0;
  if (!*(a2 + 24))
  {
    v41 = v5;
    v42 = v4;
    v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
    v20 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];

    v43 = v20;
    [v20 setIdentifier_];
    if (qword_1EB170770 != -1)
    {
      swift_once();
    }

    v21 = sub_1A5246E94();
    __swift_project_value_buffer(v21, qword_1EB170778);
    sub_1A5246E44();
    v22 = sub_1A5246E84();
    v23 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v24 = swift_slowAlloc();
      v40 = v7;
      v25 = v9;
      v26 = v24;
      *v24 = 0;
      v27 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, v23, v27, "SearchCollectionsSectionFetch", "", v26, 2u);
      v28 = v26;
      v9 = v25;
      v7 = v40;
      MEMORY[0x1A590EEC0](v28, -1, -1);
    }

    (*(v9 + 16))(v14, v17, v8);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v31 = *(v9 + 8);
    v29 = (v9 + 8);
    v30 = v31;
    v31(v17, v8);
    v32 = [objc_opt_self() transientAssetCollectionWithOptions_];
    v33 = sub_1A5246E84();
    sub_1A5246EB4();
    v34 = sub_1A524D644();
    if (sub_1A524DEC4())
    {
      v40 = v29;

      sub_1A5246EE4();

      v36 = v41;
      v35 = v42;
      if ((*(v41 + 88))(v7, v42) == *MEMORY[0x1E69E93E8])
      {
        v37 = "[Error] Interval already ended";
      }

      else
      {
        (*(v36 + 8))(v7, v35);
        v37 = "";
      }

      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v33, v34, v39, "SearchCollectionsSectionFetch", v37, v38, 2u);
      MEMORY[0x1A590EEC0](v38, -1, -1);
    }

    v30(v11, v8);
    return v32;
  }

  return result;
}

id sub_1A4009928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5246EA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  result = 0;
  if (!*(a2 + 24))
  {
    v45 = v7;
    v46 = v5;
    v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
    v20 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithFetchOptions_];

    sub_1A3C38BD4();
    v21 = sub_1A524C634();

    [v20 setTitle_];

    v47 = v20;
    [v20 setIdentifier_];
    if (qword_1EB170770 != -1)
    {
      swift_once();
    }

    v22 = sub_1A5246E94();
    v23 = __swift_project_value_buffer(v22, qword_1EB170778);
    sub_1A5246E44();
    v24 = sub_1A5246E84();
    v25 = sub_1A524D654();
    if (sub_1A524DEC4())
    {
      v26 = swift_slowAlloc();
      v44 = v23;
      v27 = v11;
      v28 = v4;
      v29 = v9;
      v30 = v26;
      *v26 = 0;
      v31 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v24, v25, v31, "SearchTopResultsSectionFetch", "", v30, 2u);
      v32 = v30;
      v9 = v29;
      v4 = v28;
      v11 = v27;
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    (*(v9 + 16))(v14, v17, v8);
    sub_1A5246ED4();
    swift_allocObject();
    sub_1A5246EC4();
    v35 = *(v9 + 8);
    v33 = v9 + 8;
    v34 = v35;
    v35(v17, v8);
    v36 = [objc_opt_self() transientAssetCollectionWithOptions_];
    v37 = sub_1A5246E84();
    sub_1A5246EB4();
    v38 = sub_1A524D644();
    if (sub_1A524DEC4())
    {
      v44 = v33;

      v39 = v45;
      sub_1A5246EE4();

      v40 = v46;
      if ((*(v46 + 88))(v39, v4) == *MEMORY[0x1E69E93E8])
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v40 + 8))(v39, v4);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = sub_1A5246E34();
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v37, v38, v43, "SearchTopResultsSectionFetch", v41, v42, 2u);
      MEMORY[0x1A590EEC0](v42, -1, -1);
    }

    v34(v11, v8);
    return v36;
  }

  return result;
}

id sub_1A4009E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A5246EA4();
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246E54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v61 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v61 - v16;
  sub_1A3C451FC(a2, &v71);
  if (v73)
  {
    sub_1A3C34400(0, &qword_1EB129AD0);
    sub_1A3C52C70(0, &qword_1EB126AC0);
    if (swift_dynamicCast())
    {
      return v70;
    }
  }

  else
  {
    sub_1A3C2CE9C(&v71);
  }

  v19 = [objc_opt_self() px:a1 searchAssetFetchOptionsForPhotoLibrary:?];
  sub_1A3C451FC(a2, &v71);
  v20 = v73;
  v67 = v19;
  v68 = v11;
  v63 = v6;
  if (v73)
  {
    v21 = v74;
    __swift_project_boxed_opaque_existential_1(&v71, v73);
    v22 = (*(v21 + 48))(v19, v20, v21);
    __swift_destroy_boxed_opaque_existential_0(&v71);
    v23 = v22;
  }

  else
  {
    sub_1A3C2CE9C(&v71);
    if (a3)
    {

      sub_1A4949A2C(&v71);
      v46 = v71;
      if (v72)
      {
        v66 = v71;
        v47 = [objc_opt_self() fetchAssetsWithOptions_];
        v48 = qword_1EB15B660;
        v24 = v47;
        if (v48 != -1)
        {
          swift_once();
        }

        v49 = sub_1A5246F24();
        __swift_project_value_buffer(v49, qword_1EB15B668);
        v50 = v66;
        v51 = v66;
        v52 = sub_1A5246F04();
        v53 = sub_1A524D244();
        sub_1A400B3A8(v50);
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v69 = v50;
          v70 = v62;
          *v54 = 136315138;
          v55 = v50;
          sub_1A3C34400(0, &qword_1EB126160);
          sub_1A524C714();
          v61[3] = v53;
          sub_1A3C2EF94();
        }

        sub_1A400B3A8(v50);
        goto LABEL_8;
      }

      v23 = v46;
    }

    else
    {
      v23 = [objc_opt_self() fetchAssetsWithOptions_];
    }
  }

  v24 = v23;
LABEL_8:
  v25 = [objc_allocWithZone(MEMORY[0x1E6978AF8]) initWithAssetFetchResult_];
  v66 = v24;

  v26 = sub_1A524C634();
  v27 = PXLocalizedString(v26);

  if (!v27)
  {
    sub_1A524C674();
    v27 = sub_1A524C634();
  }

  [v25 setTitle_];

  [v25 setIdentifier_];
  if (qword_1EB170770 != -1)
  {
    swift_once();
  }

  v28 = sub_1A5246E94();
  __swift_project_value_buffer(v28, qword_1EB170778);
  sub_1A5246E44();
  v29 = sub_1A5246E84();
  v30 = sub_1A524D654();
  if (sub_1A524DEC4())
  {
    v31 = v8;
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v29, v30, v33, "SearchAllResultsSectionFetch", "", v32, 2u);
    v34 = v32;
    v8 = v31;
    MEMORY[0x1A590EEC0](v34, -1, -1);
  }

  (*(v9 + 16))(v14, v17, v8);
  sub_1A5246ED4();
  swift_allocObject();
  sub_1A5246EC4();
  v37 = *(v9 + 8);
  v36 = v9 + 8;
  v35 = v37;
  v37(v17, v8);
  v18 = [objc_opt_self() transientAssetCollectionWithOptions_];
  v38 = sub_1A5246E84();
  v39 = v68;
  sub_1A5246EB4();
  v40 = sub_1A524D644();
  if (sub_1A524DEC4())
  {
    v62 = v36;

    v41 = v64;
    sub_1A5246EE4();

    v42 = v65;
    v43 = v63;
    if ((*(v65 + 88))(v41, v63) == *MEMORY[0x1E69E93E8])
    {
      v44 = v8;
      v45 = "[Error] Interval already ended";
    }

    else
    {
      v56 = v41;
      v44 = v8;
      (*(v42 + 8))(v56, v43);
      v45 = "";
    }

    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = v68;
    v59 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v38, v40, v59, "SearchAllResultsSectionFetch", v45, v57, 2u);
    MEMORY[0x1A590EEC0](v57, -1, -1);

    v35(v58, v44);
  }

  else
  {

    v35(v39, v8);
  }

  return v18;
}

id sub_1A400A650(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v51[4] = a3;
  v51[5] = a4;
  v51[6] = a5;
  v13 = MEMORY[0x1E69E7CC0];
  v48[0] = MEMORY[0x1E69E7CC0];
  v14 = a4;
  v15 = a5;
  result = a3;
  v17 = 0;
  v46 = a6;
LABEL_2:
  if (v17 <= 3)
  {
    v18 = 3;
  }

  else
  {
    v18 = v17;
  }

  while (v17 != 3)
  {
    if (v18 == v17)
    {
      __break(1u);
      return result;
    }

    v19 = v51[v17++ + 4];
    if (v19)
    {
      v20 = v19;
      MEMORY[0x1A5907D70]();
      if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v13 = v48[0];
      goto LABEL_2;
    }
  }

  v21 = a7;
  sub_1A3C2947C(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, sub_1A3C52C70);
  swift_arrayDestroy();
  sub_1A3EC9890(v13);

  v22 = *MEMORY[0x1E6978DA0];
  v23 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v24 = v22;
  v25 = sub_1A524CA14();

  v26 = sub_1A524C634();
  v27 = [v23 initWithObjects:v25 photoLibrary:a1 fetchType:v24 fetchPropertySets:0 identifier:v26 registerIfNeeded:0];

  sub_1A3C451FC(a2, v48);
  if (v49)
  {
    sub_1A3C34400(0, &qword_1EB129AD0);
    sub_1A3C52C70(0, &qword_1EB126CD0);
    if (swift_dynamicCast())
    {
      v28 = v47;
      goto LABEL_16;
    }
  }

  else
  {
    sub_1A3C2CE9C(v48);
  }

  v28 = v15;
LABEL_16:
  v29 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithCollectionListFetchResult:v27 containerCollection:v28 options:8392705];
  sub_1A3C451FC(a2, v48);
  v30 = v49;
  if (v49)
  {
    v31 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    LOBYTE(v31) = (*(v31 + 24))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v48);
    if (v31)
    {
      v32 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1A3C2CE9C(v48);
  }

  sub_1A3C6998C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A52F9790;
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1A524C634();
  v36 = [v34 initWithKey:v35 ascending:1];

  *(v33 + 32) = v36;
  sub_1A3C52C70(0, &qword_1EB126B60);
  v32 = sub_1A524CA14();

LABEL_21:
  [v29 setSortDescriptors_];

  sub_1A3C451FC(a2, v48);
  v37 = v49;
  if (v49)
  {
    v38 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    LOBYTE(v38) = (*(v38 + 24))(v37, v38);
    __swift_destroy_boxed_opaque_existential_0(v48);
    if (v38)
    {
      v39 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1A3C2CE9C(v48);
  }

  v39 = 1;
LABEL_26:
  [v29 setReverseSortOrder_];
  v40 = [objc_opt_self() defaultFilterStateForContainerCollection:v28 photoLibrary:a1];
  v41 = [v40 predicateForUseCase_];
  [v29 setFilterPredicate_];

  v42 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
  if (*(v46 + 16) || *(v21 + 16))
  {
    sub_1A3C52C70(0, &qword_1EB126AC0);
    sub_1A3ECE164(0, &qword_1EB120B48, MEMORY[0x1E69E64E8]);
    sub_1A3D8E4B0();
    v43 = sub_1A524C3D4();
    sub_1A3C6998C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v44 = sub_1A524C3D4();
    v45 = sub_1A524CA14();
    [v42 setAllowedUUIDs:v43 manualOrderUUIDs:v44 forAssetCollections:v45];
  }

  [v42 startBackgroundFetchIfNeeded];

  return v42;
}

void sub_1A400AC78(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1A400B3B4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = a3;
  v5 = a3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A400AF80(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A400B674(a1, a2, isUniquelyReferenced_nonNull_native, sub_1A3ECE0BC);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1A3CBBC40(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1A400B7FC(sub_1A3ECE0BC);
        v10 = v13;
      }

      sub_1A3FB731C(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1A400B0AC()
{
  v0 = MEMORY[0x1E69E7CC0];
  sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE0BC);
  sub_1A3ECDB40(v0, sub_1A3ECE00C);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A400B130(unint64_t a1)
{
  v2 = sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE0BC);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_26:
    sub_1A3ECDB40(MEMORY[0x1E69E7CC0], sub_1A3ECE00C);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1A59097F0](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(a1 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v3 = sub_1A524E2B4();
      if (!v3)
      {
        goto LABEL_26;
      }

      goto LABEL_3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_1A3CBBC40(v6);
    v11 = v2[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_23;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v19 = v9;
    sub_1A400B7FC(sub_1A3ECE0BC);
    v9 = v19;
    if (v15)
    {
LABEL_4:
      *(v2[7] + 8 * v9) = MEMORY[0x1E69E7CD0];

      goto LABEL_5;
    }

LABEL_16:
    v2[(v9 >> 6) + 8] |= 1 << v9;
    *(v2[6] + 8 * v9) = v6;
    *(v2[7] + 8 * v9) = MEMORY[0x1E69E7CD0];
    v17 = v2[2];
    v13 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v13)
    {
      goto LABEL_24;
    }

    v2[2] = v18;
LABEL_5:
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_26;
    }
  }

  sub_1A400B40C(v14, isUniquelyReferenced_nonNull_native, sub_1A3ECE0BC);
  v9 = sub_1A3CBBC40(v6);
  if ((v15 & 1) == (v16 & 1))
  {
LABEL_15:
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  sub_1A3C52C70(0, &qword_1EB126AC0);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

void sub_1A400B3B4()
{
  if (!qword_1EB12E1C0)
  {
    sub_1A3ECDA00();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E1C0);
    }
  }
}

uint64_t sub_1A400B40C(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  result = sub_1A524E774();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      result = sub_1A524DBE4();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
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
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v6 + 32);
    v4 = v32;
    if (v31 >= 64)
    {
      bzero((v6 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

id sub_1A400B674(uint64_t a1, void *a2, char a3, void (*a4)(void))
{
  v6 = v4;
  v9 = *v4;
  v10 = sub_1A3CBBC40(a2);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a3 & 1) == 0)
  {
    if (v17 < v15 || (a3 & 1) != 0)
    {
      sub_1A400B40C(v15, a3 & 1, a4);
      v10 = sub_1A3CBBC40(a2);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_1A3C52C70(0, &qword_1EB126AC0);
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_1A400B7FC(a4);
      v10 = v18;
    }
  }

  v20 = *v6;
  if (v16)
  {
    *(v20[7] + 8 * v10) = a1;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a2;
  *(v20[7] + 8 * v10) = a1;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v23;

  return a2;
}

void *sub_1A400B7FC(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      v14 = __clz(__rbit64(v12 & v11));
      goto LABEL_17;
    }

    v15 = 0;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_18;
      }

      v16 = *(v3 + 64 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
LABEL_17:
        v17 = v14 | (v9 << 6);
        v18 = *(*(v3 + 48) + 8 * v17);
        v19 = *(*(v3 + 56) + 8 * v17);
        *(*(v5 + 48) + 8 * v17) = v18;
        *(*(v5 + 56) + 8 * v17) = v19;
        v20 = v18;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A400B95C(uint64_t a1)
{
  sub_1A3ECDA00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void PhotosSearchHomeCoordinator.__allocating_init(photoLibrary:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v10, v16);
}

uint64_t PhotosSearchHomeCoordinator.__allocating_init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  PhotosSearchHomeCoordinator.init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v17;
}

char *PhotosSearchHomeCoordinator.init(searchQueryManager:suggestedQueryFetcher:searchBarPosition:closeAction:initialContainer:initialSearchText:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *v10;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = a1;
  *(v10 + 6) = a2;
  (*(*(*(v16 + 80) - 8) + 32))(&v10[*(v16 + 136)], a3);
  v17 = &v10[*(*v10 + 144)];
  *v17 = a4;
  *(v17 + 1) = a5;
  v18 = &v10[*(*v10 + 152)];
  v19 = *(a6 + 16);
  *v18 = *a6;
  *(v18 + 1) = v19;
  *(v18 + 4) = *(a6 + 32);
  v20 = &v10[*(*v10 + 160)];
  *v20 = a7;
  *(v20 + 1) = a8;
  v21 = &v10[*(*v10 + 168)];
  *v21 = a9;
  *(v21 + 1) = a10;
  return v10;
}

uint64_t sub_1A400BD80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

void sub_1A400BDF8(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_1A400BE04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result;
  return result;
}

uint64_t sub_1A400BE8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

id *PhotosSearchHomeCoordinator.deinit()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 17));

  sub_1A3C2CE9C(v0 + *(*v0 + 19));

  sub_1A3C33378(*(v0 + *(*v0 + 21)));
  return v0;
}

uint64_t PhotosSearchHomeCoordinator.__deallocating_deinit()
{
  PhotosSearchHomeCoordinator.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhotosSearchHomeCoordinator<>.init(searchQueryManager:suggestedQueryFetcher:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22[0] = *a3;
  sub_1A400C1D8();
  v16 = swift_allocObject();
  *(v16 + 16) = a7;
  *(v16 + 24) = a8;

  v17 = sub_1A524DC64();
  PhotosSearchBarPosition.SystemBar.init(placement:closeAction:)(&v25, v22, v17);
  v23[0] = v25;
  v24 = v26;
  sub_1A3C451FC(a4, v22);
  v18 = (*(v10 + 176))(a1, a2, v23, a7, a8, v22, a5, a6, a9, a10, 0, sub_1A3DDBE10, v16);
  sub_1A3C2CE9C(a4);
  return v18;
}

unint64_t sub_1A400C1D8()
{
  result = qword_1EB126590;
  if (!qword_1EB126590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB126590);
  }

  return result;
}

void PhotosSearchHomeCoordinator<>.init(photoLibrary:placement:initialContainer:initialSearchText:closeAction:customAssetSelectionHandler:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[0] = *a2;
  sub_1A400C1D8();
  v11 = swift_allocObject();
  *(v11 + 16) = a6;
  *(v11 + 24) = a7;

  v12 = sub_1A524DC64();
  PhotosSearchBarPosition.SystemBar.init(placement:closeAction:)(&v21, v20, v12);
  v13 = v21;
  v14 = v22;
  sub_1A3C451FC(a3, v20);
  v18 = v13;
  v19 = v14;
  v15 = [objc_allocWithZone(MEMORY[0x1E6978A68]) initWithPhotoLibrary_];
  type metadata accessor for LemonadeSuggestedSearchQueryFetcher(0);
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  LemonadeSuggestedSearchQueryFetcher.__allocating_init(searchQueryManager:container:)(v15, v16);
}

uint64_t sub_1A400C434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = sub_1A52492A4();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - v5;
  v6 = sub_1A5246E54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a1;
  v13 = sub_1A400CA50();
  MEMORY[0x1A5905890](&type metadata for LemonadeNavigationBarTitleView, v13);
  v14 = sub_1A5246E94();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_1A400F2F4(v12, sub_1A3E73E5C);
  }

  else
  {

    sub_1A5246E44();
    v16 = sub_1A5246E84();
    LODWORD(v46) = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v17 = swift_slowAlloc();
      v45 = v7;
      v18 = v17;
      v19 = swift_slowAlloc();
      v44 = v6;
      v52 = a1;
      v53 = v19;
      *v18 = 136446210;
      sub_1A524A694();
      sub_1A3C2EF94();
    }

    (*(v7 + 8))(v9, v6);
    (*(v15 + 8))(v12, v14);
  }

  sub_1A3C7E8B0();
  v20 = [swift_getObjCClassFromMetadata() sharedInstance];

  v54 = sub_1A46DF518();
  v55 = v21;
  sub_1A3D5F9DC();
  v22 = sub_1A524A464();
  v24 = v23;
  v26 = v25;
  sub_1A524A0D4();
  sub_1A524A104();

  v46 = sub_1A524A3C4();
  v45 = v27;
  v29 = v28;
  v44 = v30;

  sub_1A3E04DF4(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  v33 = v29 & 1;
  LOBYTE(v54) = v29 & 1;
  LOBYTE(v53) = 0;
  v34 = v48;
  sub_1A5249294();
  v35 = v49;
  v36 = v50;
  (*(v49 + 16))(v47, v34, v50);
  sub_1A400F63C(&qword_1EB128030, MEMORY[0x1E697F260]);
  v37 = sub_1A5248264();
  (*(v35 + 8))(v34, v36);
  v38 = MEMORY[0x1A5907080]([v20 navigationBarAnimationDuration]);
  v39 = sub_1A46DF518();
  v41 = v40;
  if (sub_1A46E0344())
  {
    v42 = 1.0;
  }

  else
  {
    v42 = 0.0;
  }

  v54 = v46;
  v55 = v45;
  v56 = v33;
  v57 = v44;
  v58 = KeyPath;
  v59 = 0x3FE0000000000000;
  v60 = a1;
  v61 = v32;
  v62 = 0;
  v63 = v37;
  v64 = v38;
  v65 = v39;
  v66 = v41;
  v67 = v42;
  sub_1A400CAA4(v51);

  return sub_1A400F2F4(&v54, sub_1A400F354);
}

unint64_t sub_1A400CA50()
{
  result = qword_1EB1297A8;
  if (!qword_1EB1297A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1297A8);
  }

  return result;
}

uint64_t sub_1A400CAA4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  sub_1A3EC2854();
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  sub_1A3EC1A14();
  v48 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40106F8(0);
  v53 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v50 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4010668(0, &qword_1EB121E90, sub_1A40106F8, sub_1A4010DE4);
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v46 - v20;
  v21 = sub_1A524B434();
  v22 = v1[5];
  v74 = v1[4];
  v75 = v22;
  v76 = v1[6];
  v23 = v1[1];
  v71[0] = *v1;
  v71[1] = v23;
  v24 = v1[3];
  v72 = v1[2];
  v73 = v24;
  v63 = v71[0];
  v64 = v23;
  v68 = v22;
  v69 = v76;
  v65 = v72;
  v66 = v24;
  v67 = v74;
  v70 = v21;
  KeyPath = swift_getKeyPath();
  v59[1] = v67;
  v60 = v68;
  v61 = v69;
  v58[0] = v63;
  v58[1] = v64;
  v58[2] = v65;
  v59[0] = v66;
  *&v62[0] = v70;
  *(&v62[0] + 1) = KeyPath;
  *&v62[1] = 1;
  BYTE8(v62[1]) = 0;
  v77 = v21;
  sub_1A4011450(v1, v78, sub_1A400F354);
  sub_1A4011450(&v63, v78, sub_1A40108F0);
  sub_1A400F2F4(v71, sub_1A40108F0);
  v26 = v9[13];
  v26(v14, *MEMORY[0x1E697E718], v8);
  v26(v11, *MEMORY[0x1E697E720], v8);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v28 = v9[4];
    v28(v7, v14, v8);
    v29 = v47;
    v28(&v7[*(v47 + 48)], v11, v8);
    sub_1A4011450(v7, v4, sub_1A3EC2854);
    v30 = *(v29 + 48);
    v28(v55, v4, v8);
    v31 = v9[1];
    v31(&v4[v30], v8);
    sub_1A40114B8(v7, v4);
    v32 = *(v29 + 48);
    v33 = v55;
    v28(&v55[*(v48 + 36)], &v4[v32], v8);
    v31(v4, v8);
    sub_1A401084C(0);
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    v34 = v50;
    sub_1A524AB84();
    sub_1A400F2F4(v33, sub_1A3EC1A14);
    v78[6] = v61;
    v79[0] = v62[0];
    *(v79 + 9) = *(v62 + 9);
    v78[2] = v58[2];
    v78[3] = v59[0];
    v78[4] = v59[1];
    v78[5] = v60;
    v78[0] = v58[0];
    v78[1] = v58[1];
    sub_1A400F2F4(v78, sub_1A401084C);
    v35 = v53;
    *(v34 + *(v53 + 36)) = 0;
    sub_1A3C7E8B0();
    v36 = [swift_getObjCClassFromMetadata() sharedInstance];
    v37 = [v36 enableNavigationBarBlur];
    v38 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v37)
    {
      v38 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v36 *v38];
    v40 = v39;

    v41 = v40;
    *v58 = v41 + 1.0;
    *(v58 + 12) = 0;
    *(v58 + 4) = 0;
    DWORD1(v58[1]) = 0;
    *(&v58[1] + 2) = v41 + 1.0;
    *(&v58[2] + 4) = 0;
    *(&v58[1] + 12) = 0;
    HIDWORD(v58[2]) = 0;
    *v59 = v41 + 1.0;
    *(v59 + 12) = 0;
    *(v59 + 4) = 0;
    DWORD1(v59[1]) = 0;
    *(&v59[1] + 1) = 1065353216;
    v42 = sub_1A4010DE4();
    v43 = v49;
    sub_1A524AA24();
    sub_1A401151C(v34, sub_1A40106F8);
    v56 = v35;
    v57 = v42;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v45 = v52;
    sub_1A47ED780(v52, OpaqueTypeConformance2);
    return (*(v51 + 8))(v43, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A400D1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  sub_1A3EC2854();
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v47 - v11;
  v12 = sub_1A52486A4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  sub_1A3EC1A14();
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400FE78(0);
  v58 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v54 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400FE44(0);
  v59 = *(v23 - 8);
  v60 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  *v64 = a1;
  *&v64[8] = a2;
  *&v64[16] = a3;
  *v65 = v25;
  v50 = v25;
  v49 = KeyPath;
  *&v65[8] = KeyPath;
  *&v65[16] = 0;
  LOBYTE(v66) = 1;
  v27 = v13[13];
  v27(v18, *MEMORY[0x1E697E718], v12);
  v27(v15, *MEMORY[0x1E697E720], v12);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  v56 = a1;

  v55 = a2;

  v53 = a3;

  result = sub_1A524C544();
  if (result)
  {
    v29 = v13[4];
    v30 = v47;
    v29(v47, v18, v12);
    v31 = v51;
    v29((v30 + *(v51 + 48)), v15, v12);
    sub_1A4011450(v30, v9, sub_1A3EC2854);
    v32 = *(v31 + 48);
    v33 = v48;
    v29(v48, v9, v12);
    v34 = v13[1];
    v34(&v9[v32], v12);
    sub_1A40114B8(v30, v9);
    v29((v33 + *(v52 + 36)), &v9[*(v31 + 48)], v12);
    v34(v9, v12);
    sub_1A400FFCC();
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    v35 = v54;
    sub_1A524AB84();
    sub_1A400F2F4(v33, sub_1A3EC1A14);

    v36 = v58;
    *(v35 + *(v58 + 36)) = 0;
    sub_1A3C7E8B0();
    v37 = [swift_getObjCClassFromMetadata() sharedInstance];
    v38 = [v37 enableNavigationBarBlur];
    v39 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v38)
    {
      v39 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v37 *v39];
    v41 = v40;

    v42 = v41;
    *v64 = v42 + 1.0;
    memset(&v64[4], 0, 20);
    *v65 = v42 + 1.0;
    memset(&v65[4], 0, 20);
    v66 = v42 + 1.0;
    v68 = 0;
    v67 = 0;
    v69 = 0;
    v70 = 1065353216;
    v43 = sub_1A40102E8();
    v44 = v57;
    sub_1A524AA24();
    sub_1A401151C(v35, sub_1A400FE78);
    v62 = v36;
    v63 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v60;
    sub_1A47ED780(v60, OpaqueTypeConformance2);
    return (*(v59 + 8))(v44, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A400D8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  sub_1A3EC2854();
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - v6;
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  sub_1A3EC1A14();
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400F71C(0);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A400F6E8(0);
  v54 = *(v20 - 8);
  v55 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A524B434();
  v23 = v2[3];
  v69 = v2[2];
  v70 = v23;
  v71 = v2[4];
  v24 = v2[1];
  v68[0] = *v2;
  v68[1] = v24;
  v64 = v69;
  v65 = v23;
  v66 = v71;
  v62 = v68[0];
  v63 = v24;
  v67 = v22;
  KeyPath = swift_getKeyPath();
  v59[2] = v64;
  v60[0] = v65;
  v60[1] = v66;
  v59[0] = v62;
  v59[1] = v63;
  *&v61[0] = v67;
  *(&v61[0] + 1) = KeyPath;
  *&v61[1] = 0;
  BYTE8(v61[1]) = 1;
  v72 = v22;
  sub_1A4011450(v2, v73, sub_1A400F8B0);
  sub_1A4011450(&v62, v73, sub_1A400F890);
  sub_1A400F2F4(v68, sub_1A400F890);
  v26 = v9[13];
  v26(v14, *MEMORY[0x1E697E718], v8);
  v26(v11, *MEMORY[0x1E697E720], v8);
  sub_1A400F63C(&qword_1EB1288D0, MEMORY[0x1E697E730]);
  result = sub_1A524C544();
  if (result)
  {
    v28 = v9[4];
    v28(v7, v14, v8);
    v29 = v17;
    v47 = v17;
    v31 = v48;
    v30 = v49;
    v28(&v7[*(v49 + 48)], v11, v8);
    sub_1A4011450(v7, v31, sub_1A3EC2854);
    v32 = *(v30 + 48);
    v28(v29, v31, v8);
    v33 = v9[1];
    v33(v31 + v32, v8);
    sub_1A40114B8(v7, v31);
    v34 = v47;
    v28(&v47[*(v50 + 36)], (v31 + *(v30 + 48)), v8);
    v33(v31, v8);
    sub_1A400F870(0);
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    v35 = v51;
    sub_1A524AB84();
    sub_1A400F2F4(v34, sub_1A3EC1A14);
    v73[4] = v60[1];
    v74[0] = v61[0];
    *(v74 + 9) = *(v61 + 9);
    v73[0] = v59[0];
    v73[1] = v59[1];
    v73[2] = v59[2];
    v73[3] = v60[0];
    sub_1A400F2F4(v73, sub_1A400F870);
    v36 = v53;
    *(v35 + *(v53 + 36)) = 0;
    sub_1A3C7E8B0();
    v37 = [swift_getObjCClassFromMetadata() sharedInstance];
    v38 = [v37 enableNavigationBarBlur];
    v39 = &selRef_navigationBarBlurLegibilityEDRBoost;
    if (!v38)
    {
      v39 = &selRef_navigationBarLegibilityEDRBoost;
    }

    [v37 *v39];
    v41 = v40;

    v42 = v41;
    *v59 = v42 + 1.0;
    *(v59 + 12) = 0;
    *(v59 + 4) = 0;
    DWORD1(v59[1]) = 0;
    *(&v59[1] + 2) = v42 + 1.0;
    *(&v59[2] + 4) = 0;
    *(&v59[1] + 12) = 0;
    HIDWORD(v59[2]) = 0;
    *v60 = v42 + 1.0;
    *(v60 + 12) = 0;
    *(v60 + 4) = 0;
    DWORD1(v60[1]) = 0;
    *(&v60[1] + 1) = 1065353216;
    v43 = sub_1A400FC30();
    v44 = v52;
    sub_1A524AA24();
    sub_1A401151C(v35, sub_1A400F71C);
    v57 = v36;
    v58 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v55;
    sub_1A47ED780(v55, OpaqueTypeConformance2);
    return (*(v54 + 8))(v44, v46);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__CFString *sub_1A400DFC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5246E54();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeNavigationBarSubtitleView();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A400F63C(&unk_1EB129658, type metadata accessor for LemonadeNavigationBarSubtitleView);
  MEMORY[0x1A5905890](v6, v12);
  v13 = sub_1A5246E94();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_1A400F2F4(v11, sub_1A3E73E5C);
  }

  else
  {
    v23 = a1;
    sub_1A4011450(v1, v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
    sub_1A5246E44();
    v15 = sub_1A5246E84();
    v22 = sub_1A524D664();
    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      v20[1] = v16;
      v21 = swift_slowAlloc();
      v26 = v21;
      *v16 = 136446210;
      sub_1A524A694();
      sub_1A400F2F4(v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
      sub_1A3C2EF94();
    }

    (*(v24 + 8))(v5, v25);
    sub_1A400F2F4(v8, type metadata accessor for LemonadeNavigationBarSubtitleView);
    (*(v14 + 8))(v11, v13);
    a1 = v23;
  }

  sub_1A400F684(0, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
  v17 = sub_1A5247C84();
  v18 = (*(*v26 + 152))(v17);

  return sub_1A400E418(v18, a1);
}

__CFString *sub_1A400E418@<X0>(_BOOL8 a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A400FD74(0, &qword_1EB127638, sub_1A400F6E8, sub_1A400F71C, sub_1A400FC30);
  v6 = v5;
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A401044C(0, &qword_1EB127F10, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - v8;
  sub_1A400FD74(0, &qword_1EB127630, sub_1A400FE44, sub_1A400FE78, sub_1A40102E8);
  v42 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v39 - v12;
  sub_1A401042C(0);
  v15 = v14;
  v43 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v41 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  if (sub_1A46DFB40(v16) & 1) != 0 && (sub_1A46E014C())
  {
    if (a1)
    {
      v39[2] = v9;
      v39[3] = v6;
      v39[4] = a2;
      v19 = PXLibraryFilterItemTagFromViewMode(a1);
      result = PXLibraryFilterMenuImageNameForItemTagFilled(v19, 1);
      if (result)
      {
        v21 = result;
        sub_1A524C674();

        v39[1] = sub_1A5249314();
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
    }

    else
    {

      sub_1A524A0E4();
      v23 = sub_1A524A104();

      KeyPath = swift_getKeyPath();
      sub_1A400D1EC(v18, KeyPath, v23, v13);

      (*(v11 + 16))(v9, v13, v42);
      swift_storeEnumTagMultiPayload();
      sub_1A400FE44(255);
      v26 = v25;
      sub_1A400FE78(255);
      v28 = v27;
      v29 = sub_1A40102E8();
      v44 = v28;
      v45 = v29;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v44 = v26;
      v45 = OpaqueTypeConformance2;
      v40 = swift_getOpaqueTypeConformance2();
      sub_1A400F6E8(255);
      v32 = v31;
      sub_1A400F71C(255);
      v34 = v33;
      v35 = sub_1A400FC30();
      v44 = v34;
      v45 = v35;
      v36 = swift_getOpaqueTypeConformance2();
      v44 = v32;
      v45 = v36;
      swift_getOpaqueTypeConformance2();
      v37 = v41;
      v38 = v42;
      sub_1A5249744();
      (*(v11 + 8))(v13, v38);
      sub_1A3CD417C(v37, a2);
      return (*(v43 + 56))(a2, 0, 1, v15);
    }
  }

  else
  {
    v22 = *(v43 + 56);

    return v22(a2, 1, 1, v15);
  }

  return result;
}

uint64_t sub_1A400EB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E73E5C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v11 = sub_1A4010294();
  MEMORY[0x1A5905890](&type metadata for LemonadeNavigationBarSubtitleView.SubtitleText, v11);
  v12 = sub_1A5246E94();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    v14 = sub_1A400F2F4(v10, sub_1A3E73E5C);
  }

  else
  {
    v28 = v5;

    sub_1A5246E44();
    v15 = sub_1A5246E84();
    v27 = sub_1A524D664();

    if (sub_1A524DEC4())
    {
      v16 = swift_slowAlloc();
      v26[1] = v4;
      v17 = v16;
      v26[0] = swift_slowAlloc();
      v29 = a1;
      v30 = v26[0];
      *v17 = 136446210;
      sub_1A524A694();
      sub_1A3C2EF94();
    }

    (*(v28 + 8))(v7, v4);
    v14 = (*(v13 + 8))(v10, v12);
  }

  v18 = sub_1A3CA7CB0(v14);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
  }

  v31 = v20;
  v32 = v21;
  sub_1A3D5F9DC();
  result = sub_1A524A464();
  *a2 = result;
  *(a2 + 8) = v23;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v25;
  return result;
}

void sub_1A400EE6C(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(a1, 0);
    (*(v7 + 8))(v9, v6);
    if (v25 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = sub_1A46DF518();
    v24 = v11;
    sub_1A3D5F9DC();
    v12 = sub_1A524A464();
    v14 = v13;
    v16 = v15;
    v17 = sub_1A3CA7CB0(v12);
    if (v18)
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v18)
    {
      v20 = v18;
    }

    v23 = v19;
    v24 = v20;
    sub_1A524A464();
    v22[8] = v16 & 1;
    LOBYTE(v23) = v16 & 1;
    v22[16] = v21 & 1;
    sub_1A3E75E68(v12, v14, v16 & 1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v25 = a1 & 1;
  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  a3[5] = 0;
  a3[6] = 0;
  a3[7] = 0;
}

uint64_t sub_1A400F0EC()
{
  sub_1A40110EC();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *v0;
  v5 = v0[1];
  v6 = *(v0 + 16);
  sub_1A46DF5C8();
  sub_1A4011154();
  sub_1A400F63C(&qword_1EB127BE0, sub_1A4011154);
  sub_1A524AA94();

  v9 = v4;
  v10 = v5;
  v11 = v6;
  sub_1A40111BC();
  sub_1A4011284();
  sub_1A4011364(&qword_1EB1270C0, sub_1A40111BC, sub_1A40113E0);
  sub_1A524AC64();
  return sub_1A400F2F4(v3, sub_1A40110EC);
}

uint64_t sub_1A400F2A0@<X0>(void *a1@<X8>)
{
  result = sub_1A5249084();
  *a1 = v3;
  return result;
}

uint64_t sub_1A400F2F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A400F390()
{
  if (!qword_1EB1231F0)
  {
    sub_1A400F424();
    sub_1A400FA74(255, &qword_1EB122E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1231F0);
    }
  }
}

void sub_1A400F424()
{
  if (!qword_1EB123428)
  {
    sub_1A400F4C4(255, &qword_1EB1283D8, sub_1A400F530, &type metadata for LemonadeNavigtationTitleAccessibilityModifier, MEMORY[0x1E697E830]);
    sub_1A400F5B4(255);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123428);
    }
  }
}

void sub_1A400F4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A400F530()
{
  if (!qword_1EB128700)
  {
    sub_1A3FAACE8(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128700);
    }
  }
}

uint64_t type metadata accessor for LemonadeNavigationBarSubtitleView()
{
  result = qword_1EB17B770;
  if (!qword_1EB17B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A400F63C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A400F684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A400F758()
{
  if (!qword_1EB1275B0)
  {
    sub_1A400F870(255);
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275B0);
    }
  }
}

void sub_1A400F8B0()
{
  if (!qword_1EB1284F8)
  {
    sub_1A400F930();
    sub_1A3FA8984(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1284F8);
    }
  }
}

void sub_1A400F930()
{
  if (!qword_1EB1273C0)
  {
    sub_1A400F9AC(255, &qword_1EB1270E8, &qword_1EB127688);
    sub_1A400FA04();
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273C0);
    }
  }
}

void sub_1A400F9AC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1A401122C(255, a3);
    v4 = sub_1A524BE24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A400FA04()
{
  result = qword_1EB1270F0;
  if (!qword_1EB1270F0)
  {
    sub_1A400F9AC(255, &qword_1EB1270E8, &qword_1EB127688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1270F0);
  }

  return result;
}

void sub_1A400FA74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A400FB10()
{
  result = qword_1EB128500;
  if (!qword_1EB128500)
  {
    sub_1A400F8B0();
    sub_1A400F63C(&qword_1EB1273C8, sub_1A400F930);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128500);
  }

  return result;
}

unint64_t sub_1A400FBC0()
{
  result = qword_1EB1277A0;
  if (!qword_1EB1277A0)
  {
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1277A0);
  }

  return result;
}

unint64_t sub_1A400FC30()
{
  result = qword_1EB128660;
  if (!qword_1EB128660)
  {
    sub_1A400F71C(255);
    sub_1A400F870(255);
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB1281A8, sub_1A400F870, sub_1A400FAC8, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128660);
  }

  return result;
}

void sub_1A400FD74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v9)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A400FEB4()
{
  if (!qword_1EB1275C8)
  {
    sub_1A400FFCC();
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275C8);
    }
  }
}

void sub_1A400FFCC()
{
  if (!qword_1EB128270)
  {
    sub_1A4010068(255, &qword_1EB128458, sub_1A4010100);
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128270);
    }
  }
}

void sub_1A4010068(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A400FA74(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A4010100()
{
  if (!qword_1EB128800)
  {
    sub_1A3FA8984(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128800);
    }
  }
}

unint64_t sub_1A4010178()
{
  result = qword_1EB128460;
  if (!qword_1EB128460)
  {
    sub_1A4010068(255, &qword_1EB128458, sub_1A4010100);
    sub_1A4010214();
    sub_1A3F33024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128460);
  }

  return result;
}

unint64_t sub_1A4010214()
{
  result = qword_1EB128808;
  if (!qword_1EB128808)
  {
    sub_1A4010100();
    sub_1A4010294();
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128808);
  }

  return result;
}

unint64_t sub_1A4010294()
{
  result = qword_1EB17B800[0];
  if (!qword_1EB17B800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17B800);
  }

  return result;
}

unint64_t sub_1A40102E8()
{
  result = qword_1EB128670;
  if (!qword_1EB128670)
  {
    sub_1A400FE78(255);
    sub_1A400FFCC();
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB128278, sub_1A400FFCC, sub_1A4010178, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128670);
  }

  return result;
}

void sub_1A401044C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A400FD74(255, &qword_1EB127630, sub_1A400FE44, sub_1A400FE78, sub_1A40102E8);
    v7 = v6;
    sub_1A400FD74(255, &qword_1EB127638, sub_1A400F6E8, sub_1A400F71C, sub_1A400FC30);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A40105B4()
{
  type metadata accessor for LemonadeCuratedLibraryViewModel();
  if (v0 <= 0x3F)
  {
    sub_1A400F684(319, &qword_1EB130550, type metadata accessor for LemonadeSharedLibraryViewModeIndicatorModel, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4010668(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A4010734()
{
  if (!qword_1EB121E40)
  {
    sub_1A401084C(255);
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E40);
    }
  }
}

void sub_1A401086C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3FA8984(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4010958()
{
  result = qword_1EB1230D8;
  if (!qword_1EB1230D8)
  {
    sub_1A400F354(255);
    sub_1A4010A1C(&qword_1EB1231F8, sub_1A400F390, sub_1A4010AA8, sub_1A4010D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1230D8);
  }

  return result;
}

uint64_t sub_1A4010A1C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4010AA8()
{
  result = qword_1EB123430;
  if (!qword_1EB123430)
  {
    sub_1A400F424();
    sub_1A4010B58();
    sub_1A400F63C(&qword_1EB127C68, sub_1A400F5B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123430);
  }

  return result;
}

unint64_t sub_1A4010B58()
{
  result = qword_1EB1283E0;
  if (!qword_1EB1283E0)
  {
    sub_1A400F4C4(255, &qword_1EB1283D8, sub_1A400F530, &type metadata for LemonadeNavigtationTitleAccessibilityModifier, MEMORY[0x1E697E830]);
    sub_1A4010C10();
    sub_1A4010D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1283E0);
  }

  return result;
}

unint64_t sub_1A4010C10()
{
  result = qword_1EB128708;
  if (!qword_1EB128708)
  {
    sub_1A400F530();
    sub_1A4010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128708);
  }

  return result;
}

unint64_t sub_1A4010C90()
{
  result = qword_1EB1279B0;
  if (!qword_1EB1279B0)
  {
    sub_1A3FAACE8(255, &qword_1EB1279A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279B0);
  }

  return result;
}

unint64_t sub_1A4010D0C()
{
  result = qword_1EB176E90[0];
  if (!qword_1EB176E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB176E90);
  }

  return result;
}

unint64_t sub_1A4010D60()
{
  result = qword_1EB122E28;
  if (!qword_1EB122E28)
  {
    sub_1A400FA74(255, &qword_1EB122E20, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180], MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E28);
  }

  return result;
}

unint64_t sub_1A4010DE4()
{
  result = qword_1EB123EB0;
  if (!qword_1EB123EB0)
  {
    sub_1A40106F8(255);
    sub_1A401084C(255);
    sub_1A3EC1A14();
    sub_1A4010A1C(&qword_1EB122FE8, sub_1A401084C, sub_1A4010910, sub_1A400FBC0);
    sub_1A400F63C(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123EB0);
  }

  return result;
}

unint64_t sub_1A4010F5C()
{
  result = qword_1EB127D38;
  if (!qword_1EB127D38)
  {
    sub_1A401042C(255);
    sub_1A400FE44(255);
    sub_1A400FE78(255);
    sub_1A40102E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A400F6E8(255);
    sub_1A400F71C(255);
    sub_1A400FC30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D38);
  }

  return result;
}

void sub_1A40110EC()
{
  if (!qword_1EB1287B0)
  {
    sub_1A4011154();
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1287B0);
    }
  }
}

void sub_1A4011154()
{
  if (!qword_1EB127BD8)
  {
    sub_1A4010D0C();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127BD8);
    }
  }
}

void sub_1A40111BC()
{
  if (!qword_1EB1270C8)
  {
    sub_1A400F9AC(255, &unk_1EB1270D0, &qword_1EB127680);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1270C8);
    }
  }
}

void sub_1A401122C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A4011284()
{
  result = qword_1EB1287B8;
  if (!qword_1EB1287B8)
  {
    sub_1A40110EC();
    sub_1A400F63C(&qword_1EB127BE0, sub_1A4011154);
    sub_1A400F63C(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287B8);
  }

  return result;
}

uint64_t sub_1A4011364(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40113E0()
{
  result = qword_1EB1270E0;
  if (!qword_1EB1270E0)
  {
    sub_1A400F9AC(255, &unk_1EB1270D0, &qword_1EB127680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1270E0);
  }

  return result;
}

uint64_t sub_1A4011450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40114B8(uint64_t a1, uint64_t a2)
{
  sub_1A3EC2854();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A401151C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.CardVisibilityState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4011674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A52453A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 696))(KeyPath);

  v9 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v7, v2 + v9, v4);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0]);
  LOBYTE(v9) = sub_1A524C594();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if ((v9 & 1) == 0)
  {
    v10(v7, a1, v4);
    sub_1A4011BA4(v7);
  }

  return (v11)(a1, v4);
}

uint64_t sub_1A4011868(uint64_t a1)
{
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  (*(v3 + 16))(v11 - v5, a1, v2);

  v7 = sub_1A5246F04();
  v8 = sub_1A524D224();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = v13;
    *v9 = 136315394;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0]);
    v12 = v7;
    sub_1A524EA44();
    v11[1] = v8;
    (*(v3 + 8))(v6, v2);
    sub_1A3C2EF94();
  }

  (*(v3 + 8))(v6, v2);
  return sub_1A3C4A7E4();
}

uint64_t sub_1A4011BE0()
{
  v1 = v0;
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v19 = *(*v0 + 696);
  (v19)(KeyPath);

  v7 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v0 + v7, v2);
  v9 = sub_1A5245394();
  v10 = *(v3 + 8);
  result = v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    v17 = v10;

    v12 = sub_1A5246F04();
    v13 = sub_1A524D264();

    v18 = v13;
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v14 = 136315138;
      swift_getKeyPath();
      v15[1] = v12;
      v19();

      v8(v5, v1 + v7, v2);
      sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0]);
      sub_1A524EA44();
      v17(v5, v2);
      sub_1A3C2EF94();
    }

    return sub_1A401448C();
  }

  return result;
}

uint64_t sub_1A4011F1C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  (*(*v2 + 696))();

  v5 = *a1;
  swift_beginAccess();
  v6 = sub_1A52453A4();
  return (*(*(v6 - 8) + 16))(a2, v2 + v5, v6);
}

uint64_t sub_1A4011FF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  (*(*v5 + 696))();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1A52453A4();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_1A40120D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1A52453A4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t sub_1A40121E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(char *))
{
  v24 = a4;
  v25 = a5;
  v23 = a3;
  v7 = v5;
  v9 = sub_1A52453A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v10 + 16);
  v17(v15, v7 + v16, v9);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0]);
  v27 = a1;
  LOBYTE(a1) = sub_1A524C594();
  v26 = *(v10 + 8);
  v26(v15, v9);
  if (a1)
  {
    v17(v15, v27, v9);
    v17(v13, v7 + v16, v9);
    swift_beginAccess();
    (*(v10 + 24))(v7 + v16, v15, v9);
    swift_endAccess();
    v25(v13);
    v18 = v26;
    v26(v13, v9);
    v18(v15, v9);
    return (v18)(v27, v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v21 = MEMORY[0x1EEE9AC00](KeyPath);
    v22 = v27;
    *(&v23 - 2) = v7;
    *(&v23 - 1) = v22;
    (*(*v7 + 704))(v21, v24);

    return (v26)(v27, v9);
  }
}

uint64_t sub_1A40124E8(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(_BYTE *))
{
  v8 = sub_1A52453A4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19[-v13];
  v15 = *(v9 + 16);
  v15(&v19[-v13], a2, v8);
  v16 = *a3;
  swift_beginAccess();
  v15(v12, a1 + v16, v8);
  swift_beginAccess();
  (*(v9 + 24))(a1 + v16, v14, v8);
  swift_endAccess();
  a4(v12);
  v17 = *(v9 + 8);
  v17(v12, v8);
  return (v17)(v14, v8);
}

void *sub_1A4012698@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 312))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4012734@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___cardVisibilityState);
  return result;
}

unsigned __int8 *sub_1A40127EC(unsigned __int8 *result)
{
  v2 = *result;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___cardVisibilityState) != v2)
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    v5 = v1;
    v6 = v2;
    (*(*v1 + 704))(v4);
  }

  return result;
}

uint64_t sub_1A40128D4()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling);
}

uint64_t sub_1A4012940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling);
  return result;
}

uint64_t sub_1A40129E8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 704))(v3);
  }

  return result;
}

uint64_t sub_1A4012B34()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4012BC0@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _OWORD *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  (*(*v5 + 696))();

  *a3 = *(v5 + *a2);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A4012C70(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v12[2] = v9;
  v12[3] = v7;
  v12[4] = v8;
  (*(*v9 + 704))(KeyPath, a6, v12, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A4012D1C()
{
  swift_getKeyPath();
  (*(*v0 + 696))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
}

uint64_t sub_1A4012D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1A4012E50(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode);
  v7 = *(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8);
  if (v7)
  {
    if ((a2 & 1) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      v10 = MEMORY[0x1EEE9AC00](KeyPath);
      v11 = v2;
      v12 = a1;
      v13 = a2 & 1;
      (*(*v2 + 704))(v10);
    }
  }

  else if ((a2 & 1) != 0 || v6 != a1)
  {
    goto LABEL_9;
  }

  *v5 = a1;
  *(v5 + 8) = a2 & 1;

  return sub_1A3C69584(v6, v7);
}

uint64_t sub_1A4012F94()
{
  swift_getKeyPath();
  (*(*v0 + 696))();
}

uint64_t sub_1A4013010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 696))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
}

uint64_t sub_1A40130A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 704))(KeyPath, sub_1A401667C, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1A4013150()
{
  v1[9] = v0;
  v2 = sub_1A52453A4();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A401321C, 0, 0);
}

uint64_t sub_1A401321C()
{
  swift_weakInit();
  *(v0 + 112) = sub_1A524CC54();
  *(v0 + 120) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40132C0, v2, v1);
}

uint64_t sub_1A40132C0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 632))(Strong);
  }

  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1A4013388, 0, 0);
}

uint64_t sub_1A4013388()
{
  v1 = v0[9];
  swift_getKeyPath();
  v2 = (*v1 + 696);
  v3 = *v2;
  v0[16] = *v2;
  v0[17] = v2 & 0xFFFFFFFFFFFFLL | 0x6D5B000000000000;
  v3();

  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
  v0[18] = v4;
  if (v4)
  {
    v19 = (*MEMORY[0x1E69C14E8] + MEMORY[0x1E69C14E8]);

    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_1A4013660;

    return v19();
  }

  else
  {
    v7 = v0[16];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];
    swift_getKeyPath();
    v7();

    v13 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
    swift_beginAccess();
    (*(v11 + 16))(v8, v12 + v13, v10);
    (*(v11 + 104))(v9, *MEMORY[0x1E69C1488], v10);
    LOBYTE(v12) = sub_1A5245394();
    v14 = *(v11 + 8);
    v14(v9, v10);
    v14(v8, v10);
    if (v12)
    {
      v15 = sub_1A5246F04();
      v16 = sub_1A524D244();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1A3C1C000, v15, v16, "Expected to initialize availability state at this stage", v17, 2u);
        MEMORY[0x1A590EEC0](v17, -1, -1);
      }
    }

    sub_1A401448C();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1A4013660()
{

  if (v0)
  {

    v1 = sub_1A4016624;
  }

  else
  {
    v1 = sub_1A4013778;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A4013778()
{
  *(v0 + 160) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4013804, v2, v1);
}

uint64_t sub_1A4013804()
{

  sub_1A5245624();

  return MEMORY[0x1EEE6DFA0](sub_1A401387C, 0, 0);
}

uint64_t sub_1A401387C()
{
  sub_1A40121AC(v0[13]);

  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  swift_getKeyPath();
  v1();

  v7 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  (*(v5 + 16))(v2, v6 + v7, v4);
  (*(v5 + 104))(v3, *MEMORY[0x1E69C1488], v4);
  LOBYTE(v6) = sub_1A5245394();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  if (v6)
  {
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Expected to initialize availability state at this stage", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }
  }

  sub_1A401448C();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A4013A6C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1A4013CB4;
  }

  else
  {
    v2 = sub_1A4013B80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4013B80()
{
  v1 = *(v0 + 64);
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) == 1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__didStartPolling) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 1;
    (*(*v1 + 704))(KeyPath, sub_1A401660C, v3, MEMORY[0x1E69E7CA8] + 8);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1A4013CB4()
{
  v1 = v0[10];
  v2 = v1;
  v3 = sub_1A5246F04();
  v4 = sub_1A524D244();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    swift_slowAlloc();
    *v6 = 136315138;
    v0[5] = v5;
    v7 = v5;
    sub_1A3DBD9A0();
    sub_1A524C714();
    sub_1A3C2EF94();
  }

  v8 = v0[10];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A4013E68()
{
  sub_1A3C68294(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A524CCB4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v5 = sub_1A524CC44();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_1A3D4D930(0, 0, v2, &unk_1A5311F58, v6);
}

uint64_t sub_1A4013FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1A3C68294(0, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  v4[6] = v5;
  v4[7] = swift_task_alloc();
  v6 = sub_1A52453A4();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  sub_1A524CC54();
  v4[12] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4014144, v8, v7);
}

uint64_t sub_1A4014144()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_getKeyPath();
    (*(*v2 + 696))();

    v3 = v0[11];
    if (*(v2 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor))
    {
      v5 = v0[9];
      v4 = v0[10];
      v6 = v0[8];

      sub_1A5245624();

      (*(v5 + 32))(v3, v4, v6);
    }

    else
    {
      (*(v0[9] + 104))(v0[11], *MEMORY[0x1E69C1488], v0[8]);
    }

    v7 = v0[7];
    sub_1A40121AC(v0[11]);
    sub_1A52415B4();

    sub_1A3C6904C(v7, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1A4014330()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [*(result + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_sharedLibraryFilterState) viewMode];
    v3 = v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
    if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8) & 1) != 0 || *v3 != v2)
    {
      v4 = v2;
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x1EEE9AC00](KeyPath);
      v7 = v1;
      v8 = v4;
      v9 = 0;
      (*(*v1 + 704))(v6, sub_1A4016664);
    }

    else
    {
      *v3 = v2;
      *(v3 + 8) = 0;
      sub_1A3C69584(v2, 0);
    }
  }

  return result;
}

uint64_t sub_1A401448C()
{
  v1 = v0;
  v2 = sub_1A52453A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v18[-v7];
  KeyPath = swift_getKeyPath();
  v9 = (*v0 + 696);
  v10 = *v9;
  (*v9)(KeyPath);
  v20 = v10;
  v21 = v9;

  v11 = *&v0[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode];
  v19 = v0[OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode + 8];
  swift_getKeyPath();
  v10();

  v12 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState;
  swift_beginAccess();
  v13 = *(v3 + 16);
  v13(v6, &v1[v12], v2);
  v14 = v22;
  static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)(v11, v19, v6, v22);
  v15 = *(v3 + 8);
  v15(v6, v2);
  swift_getKeyPath();
  v20();

  v16 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  swift_beginAccess();
  v13(v6, &v1[v16], v2);
  sub_1A3C3AD58(&qword_1EB124BF0, MEMORY[0x1E69C14A0]);
  LOBYTE(v16) = sub_1A524C594();
  v15(v6, v2);
  if ((v16 & 1) == 0)
  {
    v13(v6, v14, v2);
    sub_1A4011BA4(v6);
  }

  return v15(v14, v2);
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A5245364();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52453A4();
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = &v26 - v15;
  if (a2)
  {
    v17 = *(v13 + 16);

    return v17(a4, a3, v12);
  }

  v19 = *(v13 + 16);
  if (a1)
  {
    v28 = v13 + 16;
    v29 = v13;
    v27 = v19;
    v19(&v26 - v15, a3, v12);
    v20 = (*(v29 + 88))(v16, v12);
    if (v20 == *MEMORY[0x1E69C1478])
    {
      (*(v29 + 96))(v16, v12);
      v21 = sub_1A52452D4();
LABEL_8:
      (*(*(v21 - 8) + 8))(v16, v21);
      return v27(a4, a3, v12);
    }

    v22 = *MEMORY[0x1E69C1480];
    if (v20 == v22)
    {
      v23 = v20;
      (*(v29 + 96))(v16, v12);
      (*(v9 + 32))(v11, v16, v8);
      sub_1A5245354();
      (*(v9 + 8))(v11, v8);
      return (*(v29 + 104))(a4, v23, v12);
    }

    if (v20 == *MEMORY[0x1E69C1490])
    {
      (*(v29 + 96))(v16, v12);
      v21 = sub_1A5245384();
      goto LABEL_8;
    }

    if (v20 == *MEMORY[0x1E69C1488])
    {
      return v27(a4, a3, v12);
    }

    v24 = *MEMORY[0x1E69C1498];
    v25 = v20;
    sub_1A5245304();
    result = (*(v29 + 104))(a4, v22, v12);
    if (v25 != v24)
    {
      return (*(v29 + 8))(v16, v12);
    }
  }

  else
  {

    return v19(a4, a3, v12);
  }

  return result;
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[6] = a1;
  v6 = sub_1A5246F24();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_1A52453A4();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[19] = v8;
  sub_1A5245574();
  v9 = swift_task_alloc();
  v4[20] = v9;
  *v9 = v4;
  v9[1] = sub_1A4014D34;

  return MEMORY[0x1EEE2A4D8](v8, a2);
}

uint64_t sub_1A4014D34(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[21] = v1;

  if (v1)
  {
    v4 = sub_1A4015608;
  }

  else
  {
    v4 = sub_1A4014E50;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A4014E50()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  v6 = v0[9];
  v7 = v0[10];
  v8 = sub_1A3C4A780();
  v63 = *(v7 + 16);
  v63(v5, v8, v6);
  v59 = *(v3 + 16);
  v59(v2, v1, v4);
  v9 = sub_1A5246F04();
  v61 = sub_1A524D264();
  v10 = os_log_type_enabled(v9, v61);
  v11 = v0[18];
  v13 = v0[15];
  v12 = v0[16];
  v14 = v0[14];
  v15 = v0[10];
  v65 = v0[9];
  v60 = v8;
  if (v10)
  {
    v16 = swift_slowAlloc();
    swift_slowAlloc();
    *v16 = 136315138;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0]);
    sub_1A524EA44();
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94();
  }

  v64 = *(v12 + 8);
  v64(v11, v13);
  v17 = v65;
  v66 = *(v15 + 8);
  v66(v14, v17);
  v18 = v0[13];
  v19 = v0[9];
  v20 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v62 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
  v21 = v63;
  v63(v18, v8, v19);
  v22 = v20;
  v23 = sub_1A5246F04();
  v24 = sub_1A524D264();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = [v22 hasSharedLibraryOrPreview];

    _os_log_impl(&dword_1A3C1C000, v23, v24, "generateFeatureAvailabilityState() - hasSharedLibraryOrPreview: %{BOOL}d", v25, 8u);
    MEMORY[0x1A590EEC0](v25, -1, -1);
  }

  else
  {

    v23 = v22;
  }

  v26 = v0[13];
  v27 = v0[9];

  v66(v26, v27);
  v58 = v22;
  v28 = [v22 hasSharedLibraryOrPreview];
  v29 = v28;
  if (v28)
  {
    v30 = v0[12];
    v31 = v0[9];
    v57 = [v62 viewMode];
    v63(v30, v8, v31);
    v32 = v62;
    v33 = sub_1A5246F04();
    v34 = sub_1A524D264();

    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[12];
    v37 = v0[9];
    if (v35)
    {
      v38 = swift_slowAlloc();
      swift_slowAlloc();
      *v38 = 136315138;
      v0[5] = [v32 &selRef_videoScrubberController_desiredSeekTime_];
      sub_1A524EA44();
      sub_1A3C2EF94();
    }

    v66(v36, v37);
    v39 = v57;
    v8 = v60;
    v21 = v63;
  }

  else
  {
    v39 = 0;
  }

  v40 = v0[17];
  v41 = v0[15];
  v42 = v0[11];
  v43 = v0[9];
  v44 = v0[6];
  static LemonadeMemoriesCreationAvailabilityManager.computeFeatureAvailability(sharedLibraryViewMode:featureAvailabilityMonitorState:)(v39, v29 ^ 1, v0[19], v44);
  v21(v42, v8, v43);
  v59(v40, v44, v41);
  v45 = sub_1A5246F04();
  v46 = sub_1A524D264();
  v47 = os_log_type_enabled(v45, v46);
  v48 = v0[19];
  v49 = v0[17];
  v50 = v0[15];
  v51 = v0[11];
  v52 = v0[9];
  if (v47)
  {
    v53 = swift_slowAlloc();
    swift_slowAlloc();
    *v53 = 136315138;
    sub_1A3C3AD58(&qword_1EB124BE8, MEMORY[0x1E69C14A0]);
    sub_1A524EA44();
    v64(v49, v50);
    sub_1A3C2EF94();
  }

  v64(v49, v50);
  v66(v51, v52);
  v64(v48, v50);
  v54 = v0[3];

  v55 = v0[1];

  return v55(v54);
}

uint64_t sub_1A4015608()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A40156B8(uint64_t a1)
{
  v1 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
  v2 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];
  [v2 setViewMode_];
}

uint64_t static LemonadeMemoriesCreationAvailabilityManager.canProceedWithMemoryCreation(in:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A52453A4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A401583C, 0, 0);
}

uint64_t sub_1A401583C()
{
  sub_1A3C52C70(0, &qword_1EB126860);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 shouldUseAvailabilityMonitor];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69789D0]) initWithPhotoLibrary_];
    v0[9] = v3;
    v4 = v3;
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_1A40159B4;
    v6 = v0[7];
    v7 = v0[2];

    return static LemonadeMemoriesCreationAvailabilityManager.generateFeatureAvailabilityState(using:photoLibrary:)(v6, v3, v7);
  }

  else
  {

    v9 = v0[1];

    return v9(1);
  }
}

uint64_t sub_1A40159B4(void *a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1A4015D30;
  }

  else
  {

    v5 = sub_1A4015AE0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A4015AE0()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);

  v6 = *(v5 + 32);
  v6(v1, v2, v4);
  v6(v3, v1, v4);
  v7 = (*(v5 + 88))(v3, v4);
  if (v7 == *MEMORY[0x1E69C1478])
  {
    v8 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v8, *(v0 + 32));
    v9 = sub_1A52452D4();
    (*(*(v9 - 8) + 8))(v8, v9);
LABEL_3:
    v10 = 0;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x1E69C1480])
  {
    v11 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v11, *(v0 + 32));
    v12 = sub_1A5245364();
LABEL_8:
    (*(*(v12 - 8) + 8))(v11, v12);
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x1E69C1490])
  {
    v11 = *(v0 + 48);
    (*(*(v0 + 40) + 96))(v11, *(v0 + 32));
    v12 = sub_1A5245384();
    goto LABEL_8;
  }

  if (v7 == *MEMORY[0x1E69C1488])
  {
    goto LABEL_3;
  }

  if (v7 != *MEMORY[0x1E69C1498])
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    goto LABEL_3;
  }

LABEL_9:
  v10 = 1;
LABEL_10:

  v13 = *(v0 + 8);

  return v13(v10);
}

uint64_t sub_1A4015D30()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___availabilityState;
  v2 = sub_1A52453A4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitorState, v2);
  v4 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_logger;
  v5 = sub_1A5246F24();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager_id;
  v7 = sub_1A52411C4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v8 = OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager___observationRegistrar;
  v9 = sub_1A5241614();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t LemonadeMemoriesCreationAvailabilityManager.__deallocating_deinit()
{
  LemonadeMemoriesCreationAvailabilityManager.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall LemonadeMemoriesCreationAvailabilityManager.preferencesDidChange()()
{
  sub_1A3C68294(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 696))(KeyPath);

  v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__featureAvailabilityMonitor);
  if (v5)
  {
    v6 = sub_1A524CCB4();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;

    sub_1A3DCC930(0, 0, v3, &unk_1A5311D00, v7);
  }
}

uint64_t sub_1A401615C()
{
  v3 = (*MEMORY[0x1E69C14E8] + MEMORY[0x1E69C14E8]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return v3();
}

uint64_t sub_1A401623C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A401615C();
}

unint64_t sub_1A40162D4()
{
  result = qword_1EB130558;
  if (!qword_1EB130558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130558);
  }

  return result;
}

void sub_1A40163C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4016460()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A3C69118();
  }

  return result;
}

uint64_t sub_1A40164BC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore43LemonadeMemoriesCreationAvailabilityManager__sharedLibraryViewMode;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  return sub_1A3C69584(v3, v4);
}

uint64_t sub_1A4016514()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4013FF8(v3, v4, v5, v2);
}

void sub_1A4016694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_1A4020054(a1, v7, &qword_1EB128C80, &qword_1EB128C90, off_1E77211B8, sub_1A3E792C4);
  type metadata accessor for CombinedTitleOverlayModel(0);
  swift_allocObject();
  sub_1A401DC40(v7, a2, a3);
}

void sub_1A40167C4(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  *(v2 + 16) = a1;
  if (v3 != a1)
  {
    v4 = sub_1A4018384();
    [v4 setNeedsUpdateOf_];

    v5 = *(v2 + 192);

    [v5 setNeedsUpdateOf_];
  }
}

id sub_1A401684C(id result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *(v2 + 24) = result;
  if (v3 != (result & 1))
  {
    v4 = sub_1A4018384();
    [v4 setNeedsUpdateOf_];

    v5 = *(v2 + 192);

    return [v5 setNeedsUpdateOf_];
  }

  return result;
}

void sub_1A40168D8(float64x2_t a1, double a2, float64x2_t a3, double a4)
{
  v5 = *(v4 + 16);
  v6 = *(v5 + 32);
  v7 = *(v5 + 48);
  *(v5 + 32) = a1.f64[0];
  *(v5 + 40) = a2;
  *(v5 + 48) = a3.f64[0];
  *(v5 + 56) = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    v8 = sub_1A4018384();
    [v8 setNeedsUpdateOf_];

    v9 = *(v5 + 192);

    [v9 setNeedsUpdateOf_];
  }
}

void sub_1A4016980(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  if (v4 != a1 || v5 != a2)
  {
    v7 = sub_1A4018384();
    [v7 setNeedsUpdateOf_];
  }
}

void sub_1A40169FC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1A4018400(Strong);
}

void sub_1A4016A60(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *(v2 + 96);
  *(v2 + 96) = a1;
  v3 = a1;
  sub_1A4018B70(v4);
}

void sub_1A4016ABC(void (*a1)(void))
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 176);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v2 + 176) = v5;
  a1();
  v6 = *(v2 + 176);
  v4 = __OFSUB__(v6, 1);
  v7 = v6 - 1;
  if (v4)
  {
LABEL_8:
    __break(1u);
    return;
  }

  *(v2 + 176) = v7;
  if (!v7)
  {
    v8 = sub_1A4018384();
    [v8 updateIfNeeded];
  }
}

uint64_t sub_1A4016B68@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1A5248714();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v28 - v7;
  sub_1A401ED44();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A401F358(0);
  MEMORY[0x1EEE9AC00](v12);
  v33 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = sub_1A524BC74();
  v11[1] = v14;
  sub_1A401F378();
  sub_1A4016EE0(v1, v11 + *(v15 + 44));
  v29 = sub_1A524A094();
  v32 = *(type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0) + 24);
  sub_1A401DA00(v8);
  v31 = *MEMORY[0x1E697E7D0];
  v30 = *(v3 + 104);
  v30(v5);
  sub_1A5248704();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v16(v8, v2);
  v28[1] = *v1;
  sub_1A5247BC4();
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = 0;
  v21 = v33;
  sub_1A5249B34();
  sub_1A401F9E0(v11, v21, sub_1A401ED44);
  sub_1A524A0B4();
  sub_1A401DA00(v8);
  (v30)(v5, v31, v2);
  sub_1A5248704();
  v16(v5, v2);
  v16(v8, v2);
  sub_1A5247BC4();
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v38 = v25;
  v39 = 0;
  sub_1A401F410(0, &qword_1EB1305E0, sub_1A401F358);
  v26 = v34;
  sub_1A5249B34();
  return sub_1A401F9E0(v21, v26, sub_1A401F358);
}

uint64_t sub_1A4016EE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  sub_1A401F220();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = v42 - v6;
  v7 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = v9;
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A401E6E0(0, &qword_1EB129018, MEMORY[0x1E69C27F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v42 - v13;
  sub_1A401EE48();
  v50 = v15;
  v56 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v49 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = v42 - v18;
  v48 = *a1;
  v42[2] = *(v48 + 104);
  sub_1A401F47C(a1, v10);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v46 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView;
  sub_1A401F9E0(v10, v20 + v19, type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView);
  sub_1A3C52C70(0, &qword_1EB126A10);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = ObjCClassFromMetadata;

  v22 = [ObjCClassFromMetadata sharedInstance];
  [v22 dynamicHeaderDebugOverlay];

  sub_1A5243B74();
  v23 = sub_1A5243B84();
  v24 = *(v23 - 8);
  v43 = *(v24 + 56);
  v44 = v24 + 56;
  v43(v14, 0, 1, v23);
  v58 = a1;
  sub_1A401E6E0(0, &qword_1EB130588, sub_1A401EF34, v11);
  type metadata accessor for IndividualTitleOverlayModel(0);
  sub_1A401EFF4();
  v42[1] = sub_1A401EAB0(&qword_1EB181268, type metadata accessor for IndividualTitleOverlayModel);
  v25 = v55;
  sub_1A52430B4();
  sub_1A401F47C(a1, v10);
  v26 = swift_allocObject();
  sub_1A401F9E0(v10, v26 + v19, v46);

  v27 = [v45 sharedInstance];
  [v27 dynamicHeaderDebugOverlay];

  sub_1A5243B74();
  v43(v14, 0, 1, v23);
  v28 = v57;
  sub_1A52430B4();
  v29 = *(v56 + 16);
  v30 = v49;
  v31 = v50;
  v29(v49, v25, v50);
  v32 = v51;
  v33 = v52;
  v34 = *(v52 + 16);
  v35 = v28;
  v36 = v53;
  v34(v51, v35, v53);
  v37 = v54;
  v29(v54, v30, v31);
  sub_1A401EDD8();
  v34(&v37[*(v38 + 48)], v32, v36);
  v39 = *(v33 + 8);
  v39(v57, v36);
  v40 = *(v56 + 8);
  v40(v55, v31);
  v39(v32, v36);
  return (v40)(v30, v31);
}

uint64_t sub_1A4017560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A401EF34();
  v9 = v8;
  v23[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB126A10);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 enableSolariumDetailsView];

  if (v13)
  {
    sub_1A401F47C(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    sub_1A401F9E0(v7, v15 + v14, type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView);
    sub_1A401EF94();
    v17 = v11 + *(v16 + 36);
    sub_1A524BBE4();
    sub_1A3EC1940();
    *&v17[*(v18 + 56)] = 256;
    *v11 = sub_1A401F8D0;
    v11[1] = v15;
    v19 = *(*a1 + 120);
    swift_getKeyPath();
    v23[1] = v19;
    sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel);

    sub_1A52415D4();

    v20 = *(v19 + 16);

    *(v11 + *(v9 + 36)) = v20;
    sub_1A401F9E0(v11, a2, sub_1A401EF34);
    return (*(v23[0] + 56))(a2, 0, 1, v9);
  }

  else
  {
    v22 = *(v23[0] + 56);

    return v22(a2, 1, 1, v9);
  }
}

double sub_1A40178CC()
{
  swift_getKeyPath();
  sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel);
  sub_1A52415D4();

  return *(v0 + 16);
}

uint64_t sub_1A401796C()
{
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
  sub_1A52415D4();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action);
  sub_1A3C66EE8(v1);
  return v1;
}

uint64_t sub_1A4017E44()
{

  MEMORY[0x1A590F020](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4017E84@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);
  swift_weakInit();
  v3 = *(type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0) + 24);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A401E6E0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
}

void *sub_1A4017F38(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_1A524DCC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524DE34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1A524DE14();
  v14 = sub_1A524C634();
  v15 = [objc_opt_self() systemImageNamed_];

  sub_1A524DDD4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  sub_1A524DCD4();
  v16 = [objc_opt_self() configurationWithPointSize:4 weight:17.0];
  sub_1A524DC74();
  sub_1A3C52C70(0, &qword_1EB126570);
  (*(v8 + 16))(v10, v13, v7);
  sub_1A3C52C70(0, &qword_1EB126590);
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = a2;

  sub_1A524DC64();
  v18 = sub_1A524DE44();
  v19 = [objc_opt_self() clearColor];
  [v18 setTintColor_];

  (*(v8 + 8))(v13, v7);
  return v18;
}

uint64_t sub_1A4018294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40203B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A40182F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40203B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A401835C()
{
  sub_1A40203B8();
  sub_1A52496F4();
  __break(1u);
}

id sub_1A4018384()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = [objc_allocWithZone(off_1E7721940) initWithTarget:v0 needsUpdateSelector:sel_setNeedsUpdate];
    v4 = *(v0 + 192);
    *(v0 + 192) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1A4018400(void *a1)
{
  v2 = v1;
  sub_1A401E6E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      sub_1A3C52C70(0, &unk_1EB126A90);
      v9 = a1;
      v10 = sub_1A524DBF4();

      if (v10)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_allocObject();
    swift_weakInit();

    sub_1A524D1A4();
  }

  v11 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_photosViewModelObservation);
  *v11 = 0;
  v11[1] = 0;
  swift_unknownObjectRelease();
  sub_1A4018660();
  v12 = sub_1A4018384();
  [v12 setNeedsUpdateOf_];

  v13 = sub_1A524CCB4();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v2;

  sub_1A3D4D930(0, 0, v6, &unk_1A5312460, v14);
}

void sub_1A4018660()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong isInSelectMode];

    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode);
    *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode) = v3;
    if (v3 == v4)
    {
      return;
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode);
    *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode) = 0;
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = sub_1A4018384();
  [v6 setNeedsUpdateOf_];
}

uint64_t sub_1A4018740()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40187D4, v2, v1);
}

uint64_t sub_1A40187D4()
{

  sub_1A4018838();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4018838()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    PXPhotosViewModel.bannerModel.getter(v17);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    PXPhotosViewModel.bannerProvider.getter(v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_1A4020054(v15, &v10, &unk_1EB12AC28, &unk_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
  if (v11)
  {
    sub_1A3C34460(&v10, &v12);
    v4 = *(&v13 + 1);
    v5 = v14;
    v6 = __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1A401BED0(v6, v17, v4, v5);
    sub_1A401FFF4(v15, &unk_1EB12AC28, &unk_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    sub_1A401FFF4(v17, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel, sub_1A3E792C4);
    return __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    sub_1A401FFF4(&v10, &unk_1EB12AC28, &unk_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v8 = MEMORY[0x1E69C2688];
    sub_1A4020054(&v12, &v10, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
    sub_1A52415C4();

    sub_1A401FFF4(&v12, &qword_1EB124D38, &qword_1EB124D50, v8, sub_1A3E792C4);
    sub_1A401FFF4(v15, &unk_1EB12AC28, &unk_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    sub_1A401FFF4(v17, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel, sub_1A3E792C4);
    return sub_1A401FFF4(&v10, &qword_1EB124D38, &qword_1EB124D50, v8, sub_1A3E792C4);
  }
}

void sub_1A4018B70(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 96);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  sub_1A3C52C70(0, &qword_1EB126B30);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    v4 = *(v2 + 96);
    if (v4)
    {
LABEL_5:
      swift_allocObject();
      swift_weakInit();
      v4;

      sub_1A524D1A4();
    }

LABEL_7:
    v8 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyViewModelObservation);
    *v8 = 0;
    v8[1] = 0;
    swift_unknownObjectRelease();
    v9 = sub_1A4018384();
    [v9 setNeedsUpdateOf_];

    v10 = *(v2 + 192);

    [v10 setNeedsUpdateOf_];
  }
}

void sub_1A4018CF0()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 176))
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v9 = sub_1A524D474();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A401FC6C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_87_1;
    v11 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A402036C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A401E6E0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v11);
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1A4018FFC(double a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
    sub_1A52415C4();
  }
}

void sub_1A4019114(double a1)
{
  v2 = *(v1 + 200);
  *(v1 + 200) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + 104);
    if (*(v3 + 56) == a1)
    {
      *(v3 + 56) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
      sub_1A52415C4();
    }
  }
}

uint64_t sub_1A4019240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5243754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__style;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A402036C(&unk_1EB129060, MEMORY[0x1E69C2628]);
  v9 = sub_1A524C594();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
    sub_1A52415C4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1A40194C0(char *a1)
{
  v2 = v1;
  v4 = sub_1A5243754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_photosTitleStyle;
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  v13 = v5[3];
  v17 = a1;
  v13(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1A402036C(&unk_1EB129060, MEMORY[0x1E69C2628]);
  LOBYTE(a1) = sub_1A524C594();
  v14 = v5[1];
  v14(v7, v4);
  if ((a1 & 1) == 0)
  {
    v12(v7, v2 + v11, v4);
    sub_1A4019240(v7);
  }

  v14(v17, v4);
  return (v14)(v10, v4);
}

void sub_1A40196F0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_movieTitleOpacity);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_movieTitleOpacity) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + 112);
    if (*(v3 + 56) == a1)
    {
      *(v3 + 56) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
      sub_1A52415C4();
    }
  }
}

void *sub_1A4019824(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A401A118@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__banner;
  swift_beginAccess();
  return sub_1A4020054(v5 + v3, a1, &qword_1EB124D38, &unk_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
}

void sub_1A401A20C(uint64_t a1, uint64_t a2)
{
  v33 = sub_1A524BEE4();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A524BFC4();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1A401E6E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  if ((a1 & 0x10000000000000) != 0)
  {
    v19 = sub_1A524CCB4();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a2;

    sub_1A3D4D930(0, 0, v18, &unk_1A5312478, v20);
  }

  if ((a1 & 4) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v6;
    v32 = v4;
    if (Strong)
    {
      v22 = Strong;
      [Strong isInSelectMode];
    }

    sub_1A3C52C70(0, &qword_1EB12B180);
    v29 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v30 = *(v10 + 8);
    v30(v12, v36);
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A40200C8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_109;
    v24 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A402036C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A401E6E0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v25 = v31;
    v26 = v33;
    sub_1A524E224();
    v27 = v29;
    MEMORY[0x1A5908790](v15, v9, v25, v24);
    _Block_release(v24);

    (*(v32 + 8))(v25, v26);
    (*(v34 + 8))(v9, v35);
    v30(v15, v36);
  }

  if ((a1 & 0x2000800200400024) != 0)
  {
    v28 = sub_1A4018384();
    [v28 setNeedsUpdateOf_];
  }
}

uint64_t sub_1A401A7A8()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40204B0, v2, v1);
}

void sub_1A401A83C()
{
  v0 = sub_1A5243754();
  MEMORY[0x1EEE9AC00](v0);
  v5[10] = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5[7] = v5 - v3;
  sub_1A401E6E0(0, &unk_1EB124B28, off_1E7721040, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A5245C34();
}

void sub_1A401B728(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel);
    sub_1A52415C4();
  }
}