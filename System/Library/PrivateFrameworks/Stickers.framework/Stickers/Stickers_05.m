uint64_t sub_1B8A0CA0C(uint64_t a1)
{
  if (qword_1EBA91218 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91220);
  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24244();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B89A7000, v3, v4, "Deferred reindexing complete", v5, 2u);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(a1 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();
  v7 = *(a1 + 32);
  *(a1 + 32) = MEMORY[0x1E69E7CD0];

  v8 = *(a1 + 24);

  os_unfair_lock_unlock(v8 + 4);
}

void *sub_1B8A0CB50()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  MEMORY[0x1B8CC5240](v0 + 2);
  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_1B89A8A78(v0 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer, &unk_1EBA921D8, &qword_1B8A29000);
  v5 = *(v0 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B8A0CBF8()
{
  sub_1B8A0CB50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpotlightFailedIndexingManager()
{
  result = qword_1EBA91288;
  if (!qword_1EBA91288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A0CCA4()
{
  sub_1B8A0CE20();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B8A0CD64(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  os_unfair_lock_lock(v4 + 4);

  v5 = [a1 objectID];
  swift_beginAccess();
  sub_1B8A0E214(&v8, v5);
  swift_endAccess();

  v6 = *(v2 + 24);

  os_unfair_lock_unlock(v6 + 4);
}

void sub_1B8A0CE20()
{
  if (!qword_1EBA91358)
  {
    type metadata accessor for ActivityDebouncer();
    v0 = sub_1B8A24444();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA91358);
    }
  }
}

uint64_t sub_1B8A0CE78(uint64_t a1, uint64_t a2, double a3)
{
  v18 = a1;
  v19 = a2;
  v17 = sub_1B8A242C4();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8A24284();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1B8A23D24();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1B89AB538(0, &qword_1EBA91140, 0x1E69E9610);
  v16[0] = "v16@?0@NSNotification8";
  v16[1] = v13;
  sub_1B8A23D14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1B8A10538(&qword_1EBA91158, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921B0, &qword_1B8A29980);
  sub_1B8A10588(&qword_1EBA91198, &unk_1EBA921B0, &qword_1B8A29980);
  sub_1B8A244C4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v17);
  *(v3 + 16) = sub_1B8A242E4();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = a3;
  v14 = v19;
  *(v3 + 48) = v18;
  *(v3 + 56) = v14;
  return v3;
}

uint64_t sub_1B8A0D0FC()
{
  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B8A24324();
    swift_unknownObjectRelease();
  }

  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);
  sub_1B8A10800(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A0D1A8()
{
  v1 = sub_1B8A23CF4();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1B8A23D24();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8A23CD4();
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v43 - v10);
  v59 = sub_1B8A23D44();
  v46 = *(v59 - 8);
  v12 = *(v46 + 64);
  v13 = MEMORY[0x1EEE9AC00](v59);
  v56 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - v15;
  v16 = sub_1B8A242F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B8A24324();
    swift_unknownObjectRelease();
    v21 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
  swift_unknownObjectRelease();
  *(v0 + 32) = 0;
  v58 = sub_1B89AB538(0, &qword_1EBA91128, 0x1E69E9630);
  v22 = *(v0 + 16);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8A10538(&unk_1EBA91130, MEMORY[0x1E69E80B0]);
  v23 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921E8, &qword_1B8A29018);
  sub_1B8A10588(&qword_1EBA91190, &qword_1EBA921E8, &qword_1B8A29018);
  sub_1B8A244C4();
  v24 = sub_1B8A24304();
  (*(v17 + 8))(v20, v16);
  ObjectType = swift_getObjectType();
  v26 = v56;
  result = sub_1B8A23D34();
  v28 = *(v23 + 40);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v28 < 9.22337204e18)
  {
    *v11 = v28;
    v29 = *MEMORY[0x1E69E7F38];
    v44 = v23;
    v31 = v48;
    v30 = v49;
    v57 = ObjectType;
    v58 = v24;
    v32 = *(v48 + 104);
    v32(v11, v29, v49);
    v33 = v45;
    MEMORY[0x1B8CC3C00](v26, v11);
    v34 = *(v31 + 8);
    v34(v11, v30);
    v48 = *(v46 + 8);
    (v48)(v26, v59);
    v32(v11, *MEMORY[0x1E69E7F40], v30);
    v35 = v47;
    *v47 = 0;
    v32(v35, *MEMORY[0x1E69E7F28], v30);
    MEMORY[0x1B8CC4210](v33, v11, v35, v57);
    v34(v35, v30);
    v34(v11, v30);
    (v48)(v33, v59);
    v36 = swift_allocObject();
    v37 = v44;
    swift_weakInit();
    aBlock[4] = sub_1B8A10580;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B89AEDDC;
    aBlock[3] = &block_descriptor_55;
    v38 = _Block_copy(aBlock);

    v39 = v50;
    sub_1B8A23D14();
    v40 = v52;
    sub_1B8A0DA1C();
    v41 = v58;
    sub_1B8A24314();
    _Block_release(v38);
    (*(v54 + 8))(v40, v55);
    (*(v51 + 8))(v39, v53);

    sub_1B8A24334();
    v42 = *(v37 + 24);
    *(v37 + 24) = v41;
    result = swift_unknownObjectRelease();
    *(v37 + 32) = 1;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B8A0D898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      *(result + 32) = 0;
      if (*(result + 24))
      {
        v5 = result;
        v6 = *(result + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1B8A24324();
        swift_unknownObjectRelease();
        result = v5;
        v7 = *(v5 + 24);
      }

      *(result + 24) = 0;
      v8 = result;
      swift_unknownObjectRelease();
      v9 = sub_1B8A24184();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v8;
      sub_1B8A0B3B4(0, 0, v3, &unk_1B8A29028, v10);
    }
  }

  return result;
}

uint64_t sub_1B8A0DA1C()
{
  sub_1B8A23CF4();
  sub_1B8A10538(&qword_1EBA91418, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B8A10588(&qword_1EBA911A8, &unk_1EBA921F0, &qword_1B8A26460);
  return sub_1B8A244C4();
}

uint64_t sub_1B8A0DB14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 56);

    v2(v4);
    sub_1B8A10800(v2);
  }

  v5 = *(v0 + 8);

  return v5();
}

void *sub_1B8A0DB98(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_1B8A0DC20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for Sticker(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B8A0DD04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for Sticker.Representation();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1B8A0DDE8(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B8A24554();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B8A0DB98(v2, 0);

    v1 = sub_1B8A0FAF0(&v5, v3 + 4, v2, v1);
    sub_1B89F678C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

unint64_t sub_1B8A0DE98(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B8A24A14();
  sub_1B8A23F94();
  v6 = sub_1B8A24A34();

  return sub_1B8A0EE70(a1, a2, v6);
}

unint64_t sub_1B8A0DF10(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B8A23904();
  sub_1B8A10538(&qword_1EBA91460, MEMORY[0x1E69695A8]);
  v5 = sub_1B8A23E94();

  return sub_1B8A0EF28(a1, v5);
}

unint64_t sub_1B8A0DFA8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B8A245B4();

  return sub_1B8A0F0E8(a1, v5);
}

uint64_t sub_1B8A0DFEC(void *a1, void *a2)
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

    v9 = sub_1B8A24564();

    if (v9)
    {

      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1B8A24554();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1B8A0E9DC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1B8A0E7BC(v22 + 1, &qword_1EBA92208, &qword_1B8A29040);
    }

    v20 = v8;
    sub_1B8A0EDEC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  type metadata accessor for ManagedRepresentation();
  v11 = *(v6 + 40);
  v12 = sub_1B8A243F4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1B8A0F1B0(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1B8A24404();

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

uint64_t sub_1B8A0E214(void *a1, void *a2)
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

    v9 = sub_1B8A24564();

    if (v9)
    {

      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1B8A24554();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1B8A0EBDC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1B8A0E7BC(v22 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
    }

    v20 = v8;
    sub_1B8A0EDEC(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
  v11 = *(v6 + 40);
  v12 = sub_1B8A243F4();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1B8A0F340(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1B8A24404();

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

id sub_1B8A0E470(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B8A245E4();
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

uint64_t sub_1B8A0E5B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8A245F4();
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
      result = sub_1B8A243F4();
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

uint64_t sub_1B8A0E7BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8A245F4();
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
      result = sub_1B8A243F4();
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

uint64_t sub_1B8A0E9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92208, &qword_1B8A29040);
    v2 = sub_1B8A24604();
    v16 = v2;
    sub_1B8A24514();
    if (sub_1B8A24584())
    {
      type metadata accessor for ManagedRepresentation();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1B8A0E7BC(v10 + 1, &qword_1EBA92208, &qword_1B8A29040);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1B8A243F4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1B8A24584());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B8A0EBDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921A0, &unk_1B8A28FE0);
    v2 = sub_1B8A24604();
    v16 = v2;
    sub_1B8A24514();
    if (sub_1B8A24584())
    {
      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1B8A0E7BC(v10 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_1B8A243F4();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_1B8A24584());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1B8A0EDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1B8A243F4();
  v5 = -1 << *(a2 + 32);
  result = sub_1B8A244F4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1B8A0EE70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B8A24954())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8A0EF28(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B8A23904();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1B8A10538(&qword_1EBA91640, MEMORY[0x1E69695A8]);
      v16 = sub_1B8A23ED4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B8A0F0E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B8A104DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CC4440](v9, a1);
      sub_1B8A1029C(v9);
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

void sub_1B8A0F1B0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8A0E7BC(v6 + 1, &qword_1EBA92208, &qword_1B8A29040);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B8A0E470(&qword_1EBA92208, &qword_1B8A29040);
      goto LABEL_12;
    }

    sub_1B8A0E5B0(v6 + 1, &qword_1EBA92208, &qword_1B8A29040);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1B8A243F4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ManagedRepresentation();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1B8A24404();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B8A24994();
  __break(1u);
}

void sub_1B8A0F340(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8A0E7BC(v6 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B8A0E470(&unk_1EBA921A0, &unk_1B8A28FE0);
      goto LABEL_12;
    }

    sub_1B8A0E5B0(v6 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1B8A243F4();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1B8A24404();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B8A24994();
  __break(1u);
}

void sub_1B8A0F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 136);
  v8 = __swift_project_boxed_opaque_existential_0((v3 + 112), v7);
  v9 = sub_1B89AA114(v3, v49);
  v10 = *(v3 + 56);
  v11 = *(v3 + 88);
  v53[2] = *(v3 + 72);
  v53[3] = v11;
  v54 = *(v3 + 104);
  v53[0] = *(v3 + 40);
  v53[1] = v10;
  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v47[2] = *(v3 + 72);
  v47[3] = v13;
  v48 = *(v3 + 104);
  v47[0] = *(v3 + 40);
  v47[1] = v12;
  v14 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v8, v7);
  sub_1B89A8FB4(v53, v50);
  sub_1B89B09B0(v49, v47, v16, v7, v50);
  sub_1B89B0BC8(v3);
  if (!a2 || !a3)
  {
LABEL_73:
    v39 = v50[7];
    v40 = v51;
    *(a1 + 128) = v50[8];
    *(a1 + 144) = v40;
    v41 = v50[3];
    v42 = v50[5];
    v43 = v50[6];
    *(a1 + 64) = v50[4];
    *(a1 + 80) = v42;
    *(a1 + 96) = v43;
    *(a1 + 112) = v39;
    v44 = v50[1];
    v45 = v50[2];
    *a1 = v50[0];
    *(a1 + 16) = v44;
    *(a1 + 160) = v52;
    *(a1 + 32) = v45;
    *(a1 + 48) = v41;
    return;
  }

  if (a3 < 0)
  {
    goto LABEL_83;
  }

  v18 = 0;
  v46[1] = a3;
  v19 = a3 - 1;
  do
  {
    v20 = *(&v51 + 1);
    v21 = *(&v51 + 1) >> 62;
    if (*(&v51 + 1) >> 62)
    {
      if (sub_1B8A24554())
      {
        if (!sub_1B8A24554())
        {
          goto LABEL_84;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_85;
        }

        goto LABEL_7;
      }

LABEL_33:
      sub_1B89B0C1C();
      v30 = *(&v51 + 1);
      v31 = *(&v51 + 1) >> 62;
      if (*(&v51 + 1) >> 62)
      {
        if (!sub_1B8A24554())
        {
LABEL_72:
          sub_1B89B44F4(0);
          goto LABEL_73;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_87;
        }

        if (!sub_1B8A24554())
        {
          goto LABEL_88;
        }
      }

      else if (!*((*(&v51 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      if ((v30 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CC44E0](0, v30);
      }

      else
      {
        if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v32 = *(v30 + 32);
      }

      v23 = v32;
      if (v31)
      {
        if (!sub_1B8A24554())
        {
          goto LABEL_81;
        }

        if (sub_1B8A24554() < 1)
        {
          goto LABEL_82;
        }

        v33 = sub_1B8A24554();
      }

      else
      {
        v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v33)
        {
          goto LABEL_81;
        }
      }

      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        goto LABEL_78;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v31)
        {
          v35 = v30 & 0xFFFFFFFFFFFFFF8;
          if (v34 <= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_54;
          }

          goto LABEL_51;
        }
      }

      else if (!v31)
      {
        v35 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_51:
        v36 = *(v35 + 16);
LABEL_53:
        v30 = sub_1B8A24674();
        *(&v51 + 1) = v30;
LABEL_54:
        sub_1B89DD6CC(0, 1, 0);
        *(&v51 + 1) = v30;
        sub_1B89B44F4(v23);
        if (!v23)
        {
          goto LABEL_73;
        }

        goto LABEL_55;
      }

      sub_1B8A24554();
      goto LABEL_53;
    }

    if (!*((*(&v51 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

LABEL_7:
    if ((v20 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x1B8CC44E0](0, v20);
    }

    else
    {
      if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_74;
      }

      v22 = *(v20 + 32);
    }

    v23 = v22;
    if (v21)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_79;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_80;
      }

      v24 = sub_1B8A24554();
    }

    else
    {
      v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_79;
      }
    }

    v25 = v24 - 1;
    if (__OFSUB__(v24, 1))
    {
      goto LABEL_75;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v21)
      {
LABEL_24:
        sub_1B8A24554();
      }

      else
      {
        v26 = v20 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
        v27 = *(v26 + 16);
      }

      v20 = sub_1B8A24674();
      v26 = v20 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_26;
    }

    if (v21)
    {
      goto LABEL_24;
    }

    v26 = v20 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_23;
    }

LABEL_26:

    if (v20 >> 62)
    {
      v37 = sub_1B8A24554();
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_86;
      }

      memmove((v26 + 32), (v26 + 40), 8 * (v37 - 1));
      v38 = sub_1B8A24554();
      v29 = v38 - 1;
      if (__OFSUB__(v38, 1))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v28 = *(v26 + 16);
      memmove((v26 + 32), (v26 + 40), 8 * v28 - 8);
      v29 = v28 - 1;
      if (__OFSUB__(v28, 1))
      {
        goto LABEL_76;
      }
    }

    *(v26 + 16) = v29;
    *(&v51 + 1) = v20;
LABEL_55:
    *(a2 + 8 * v18) = v23;
    if (v19 == v18)
    {
      goto LABEL_73;
    }

    ++v18;
  }

  while (!__OFADD__(v18, 1));
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_1B8A0FA28(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (!a2)
  {
LABEL_17:
    a3 = 0;
    goto LABEL_20;
  }

  if (!a3)
  {
LABEL_20:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = a6;
    *(result + 24) = a7 & 1;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 1;
    v8 = a4;
    while (a7 & 1 | (a6 != 0))
    {
      v9 = a5 - v8;
      if (__OFSUB__(a5, v8))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v9 < 1)
      {
        a3 = v7 - 1;
        a4 = v8;
        goto LABEL_20;
      }

      v10 = a5;
      if ((a7 & 1) == 0)
      {
        v10 = a5;
        if (v9 > a6)
        {
          v10 = v8 + a6;
          if (__OFADD__(v8, a6))
          {
            goto LABEL_23;
          }

          if (v10 < v8)
          {
            goto LABEL_24;
          }

          if (v10 > a5)
          {
            goto LABEL_22;
          }
        }
      }

      *a2 = v8;
      a2[1] = v10;
      if (a3 == v7)
      {
        a4 = v10;
        goto LABEL_20;
      }

      a2 += 2;
      v8 = v10;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_1B8A0FAF0(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1B8A24514();
  sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
  sub_1B8A10234();
  result = sub_1B8A241F4();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1B8A24584())
      {
        goto LABEL_30;
      }

      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1B8A0FD0C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1B8CC43F0](a1, a2, v7);
      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
    if (sub_1B8A24534() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1B8A24544();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_1B8A243F4();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_1B8A24404();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_1B8A0FF30(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1B8A24554())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921A0, &unk_1B8A28FE0);
      v3 = sub_1B8A24614();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1B8A24554();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x1B8CC44E0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_1B8A243F4();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_1B8A24404();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_1B8A243F4();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_1B8A24404();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1B8A10228(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1B8A10234()
{
  result = qword_1EBA921C8;
  if (!qword_1EBA921C8)
  {
    sub_1B89AB538(255, &qword_1EBA91160, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA921C8);
  }

  return result;
}

uint64_t sub_1B8A102F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B89BBE18;

  return sub_1B8A0C4D0(v0);
}

uint64_t sub_1B8A10380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921D8, &qword_1B8A29000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A103F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B8A1041C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityDebouncer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A10480(uint64_t a1)
{
  v2 = type metadata accessor for ActivityDebouncer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A10538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8A10588(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1B8A105DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89C3E20;

  return sub_1B8A0DAF4(a1, v4, v5, v6);
}

uint64_t sub_1B8A10690(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89C3E20;

  return sub_1B8A12C2C(a1, v5);
}

uint64_t sub_1B8A10748(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89BBE18;

  return sub_1B8A12C2C(a1, v5);
}

uint64_t sub_1B8A10800(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t RangeGenerator.init(offset:limit:batchSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a3)
  {
    v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
    *a6 = result;
    *(a6 + 8) = v6;
    *(a6 + 16) = a4;
    *(a6 + 24) = a5 & 1;
    return result;
  }

  v6 = a2 + result;
  if (!__OFADD__(a2, result))
  {
    if (v6 >= result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8A10868()
{
  result = qword_1ED82E298;
  if (!qword_1ED82E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82E298);
  }

  return result;
}

uint64_t sub_1B8A10910(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8A10930(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

id ImageGlyphRecencyObjCFacade.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImageGlyphRecencyObjCFacade.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *&v0[v2] = v3;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ImageGlyphRecencyObjCFacade.didUse(emoji:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A10B10, 0, 0);
}

uint64_t sub_1B8A10B10()
{
  v1 = *(v0[4] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B8A13234;
  v4 = v0[2];
  v3 = v0[3];

  return ImageGlyphRecency.recordEngagement(for:)(v4, v3);
}

uint64_t sub_1B8A10D40(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8A23F24();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A10DCC, 0, 0);
}

uint64_t sub_1B8A10DCC()
{
  v1 = *(v0[2] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8A10E74;
  v4 = v0[4];
  v3 = v0[5];

  return ImageGlyphRecency.recordEngagement(for:)(v4, v3);
}

uint64_t sub_1B8A10E74(double a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A13230, 0, 0);
  }

  else
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 24);

    (*(v7 + 16))(v7, 0, a1);
    _Block_release(*(v5 + 24));
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t ImageGlyphRecencyObjCFacade.didUse(sticker:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A1100C, 0, 0);
}

uint64_t sub_1B8A1100C()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v3 = OBJC_IVAR___STKSticker_identifier;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1B8A110C8;

  return ImageGlyphRecency.recordEngagement(for:)(v1 + v3);
}

uint64_t sub_1B8A110C8(double a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_1B8A11350(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A113DC, 0, 0);
}

uint64_t sub_1B8A113DC()
{
  v1 = v0[2];
  v2 = *(v0[3] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v3 = OBJC_IVAR___STKSticker_identifier;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B8A11498;

  return ImageGlyphRecency.recordEngagement(for:)(v1 + v3);
}

uint64_t sub_1B8A11498(double a1)
{
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(v5 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A1160C, 0, 0);
  }

  else
  {
    v7 = *(v5 + 24);
    v6 = *(v5 + 32);

    (*(v6 + 16))(v6, 0, a1);
    _Block_release(*(v5 + 32));
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1B8A1160C()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = sub_1B8A23664();
  (*(v2 + 16))(v2, v4, 0.0);

  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ImageGlyphRecencyObjCFacade.didUseCharacter(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A116DC, 0, 0);
}

uint64_t sub_1B8A116DC()
{
  v1 = *(v0[4] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B8A11784;
  v4 = v0[2];
  v3 = v0[3];

  return ImageGlyphRecency.recordEngagement(forCharacter:)(v4, v3);
}

uint64_t sub_1B8A11784(double a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5.n128_f64[0] = a1;
  }

  return v6(v5);
}

uint64_t sub_1B8A11A0C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_1B8A23F24();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8A11A98, 0, 0);
}

uint64_t sub_1B8A11A98()
{
  v1 = *(v0[2] + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8A11B40;
  v4 = v0[4];
  v3 = v0[5];

  return ImageGlyphRecency.recordEngagement(forCharacter:)(v4, v3);
}

uint64_t sub_1B8A11B40(double a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8A11CB8, 0, 0);
  }

  else
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 24);

    (*(v7 + 16))(v7, 0, a1);
    _Block_release(*(v5 + 24));
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1B8A11CB8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);

  v4 = sub_1B8A23664();

  (*(v3 + 16))(v3, v4, 0.0);
  _Block_release(*(v0 + 24));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t ImageGlyphRecencyObjCFacade.resetRecents()()
{
  v1[2] = v0;
  v2 = sub_1B8A239C4();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_1B8A23A24();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8A11E84, 0, 0);
}

uint64_t sub_1B8A11E84()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____STKImageGlyphRecencyObjCFacade_recency);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A11EB0, v1, 0);
}

uint64_t sub_1B8A11EB0()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 80) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8A11ED4, v1, 0);
}

uint64_t sub_1B8A11ED4()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D47A0], v0[3]);
  sub_1B8A239E4();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1B8A11FA8;
  v3 = v0[10];
  v4 = v0[8];

  return sub_1B89EAD90(v4);
}

uint64_t sub_1B8A11FA8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(*v1 + 96) = v0;

  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_1B8A120D4;
  }

  else
  {
    v6 = sub_1B89E7198;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B8A120D4()
{
  v1 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1B8A122D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B8A12378;

  return ImageGlyphRecencyObjCFacade.resetRecents()();
}

uint64_t sub_1B8A12378()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1B8A23664();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id ImageGlyphRecencyObjCFacade.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A12568()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B89BBE18;

  return sub_1B8A122D0(v2, v3);
}

uint64_t sub_1B8A12614(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B89C3E20;

  return v7();
}

uint64_t sub_1B8A126FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B89C3E20;

  return sub_1B8A12614(v2, v3, v5);
}

uint64_t sub_1B8A127BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B89BBE18;

  return v8();
}

uint64_t sub_1B8A128A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B89C3E20;

  return sub_1B8A127BC(a1, v4, v5, v7);
}

uint64_t sub_1B8A12970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B89C3D6C(a3, v25 - v11);
  v13 = sub_1B8A24184();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B8A08578(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B8A24174();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B8A24154();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B8A23F64() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1B8A08578(a3);

    return v23;
  }

LABEL_8:
  sub_1B8A08578(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B8A12C2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8A12D24;

  return v7(a1);
}

uint64_t sub_1B8A12D24()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B8A12E1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89C3E20;

  return sub_1B8A12C2C(a1, v5);
}

uint64_t sub_1B8A12ED4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B89BBE18;

  return sub_1B8A12C2C(a1, v5);
}

uint64_t sub_1B8A12F8C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A11A0C(v2, v3, v4);
}

uint64_t sub_1B8A13040()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A11350(v2, v3, v4);
}

uint64_t objectdestroy_33Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B8A1313C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B89C3E20;

  return sub_1B8A10D40(v2, v3, v4);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t StickerSequence.makeIterator()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v2 + 136);
  v5 = __swift_project_boxed_opaque_existential_0((v2 + 112), v4);
  v6 = sub_1B89AA114(v2, v20);
  v7 = *(v2 + 56);
  v8 = *(v2 + 88);
  v21[2] = *(v2 + 72);
  v21[3] = v8;
  v22 = *(v2 + 104);
  v21[0] = *(v2 + 40);
  v21[1] = v7;
  v9 = *(v2 + 56);
  v10 = *(v2 + 88);
  v18[2] = *(v2 + 72);
  v18[3] = v10;
  v19 = *(v2 + 104);
  v18[0] = *(v2 + 40);
  v18[1] = v9;
  v11 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5, v4);
  sub_1B89A8FB4(v21, &v17);
  return sub_1B89B09B0(v20, v18, v13, v4, a1);
}

void StickerSequenceIterator.next()()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + 152);
    }

    if (sub_1B8A24554())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_1B89DCCEC();
    return;
  }

  sub_1B89B0C1C();
  v3 = *(v0 + 152);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v6 = *(v0 + 152);
    }

    if (sub_1B8A24554())
    {
      goto LABEL_9;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_9:
  sub_1B89DCCEC();
  v5 = v4;
LABEL_14:
  sub_1B89B44F4(v5);
}

uint64_t sub_1B8A1343C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v1 + 112), v3);
  v5 = sub_1B89AA114(v1, v19);
  v6 = *(v1 + 56);
  v7 = *(v1 + 88);
  v20[2] = *(v1 + 72);
  v20[3] = v7;
  v21 = *(v1 + 104);
  v20[0] = *(v1 + 40);
  v20[1] = v6;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v17[2] = *(v1 + 72);
  v17[3] = v9;
  v18 = *(v1 + 104);
  v17[0] = *(v1 + 40);
  v17[1] = v8;
  v10 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v4, v3);
  sub_1B89A8FB4(v20, &v16);
  sub_1B89B09B0(v19, v17, v12, v3, a1);
  return sub_1B89B0BC8(v1);
}

uint64_t sub_1B8A135C8()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1ED830390);
  __swift_project_value_buffer(v0, qword_1ED830390);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A1364C()
{
  v0 = sub_1B8A23BC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = type metadata accessor for StickerSignposter();
  __swift_allocate_value_buffer(v8, qword_1ED8303A8);
  __swift_project_value_buffer(v8, qword_1ED8303A8);
  if (qword_1ED82DFB8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1ED830390);
  v10 = *(v1 + 16);
  v10(v7, v9, v0);
  v10(v5, v7, v0);
  sub_1B8A23B24();
  return (*(v1 + 8))(v7, v0);
}

unint64_t sub_1B8A137E8()
{
  result = qword_1EBA91558;
  if (!qword_1EBA91558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91558);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1B8A13870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8A138B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B8A13958(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8A139A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ManagedSticker.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedSticker.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedSticker();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedSticker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSticker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sticker.Representation.__allocating_init(data:uti:size:role:isPreferred:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7, double a8)
{
  v9 = v8;
  HIDWORD(v37) = a6;
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = objc_allocWithZone(v9);
  sub_1B8A238F4();
  (*(v18 + 32))(&v22[OBJC_IVAR___STKStickerRepresentation_identifier], v21, v17);
  v23 = &v22[OBJC_IVAR___STKStickerRepresentation_data];
  *v23 = a1;
  v23[1] = a2;
  v24 = OBJC_IVAR___STKStickerRepresentation_uti;
  v25 = sub_1B8A23AD4();
  v26 = *(v25 - 8);
  result = (*(v26 + 16))(&v22[v24], a3, v25);
  v28 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v29 = 0;
    if (v28 != 2)
    {
      goto LABEL_11;
    }

    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
LABEL_10:
      sub_1B89B4A18(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v29 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  if (v28)
  {
    goto LABEL_8;
  }

  v29 = BYTE6(a2);
LABEL_11:
  *&v22[OBJC_IVAR___STKStickerRepresentation_byteCount] = v29;
  v32 = &v22[OBJC_IVAR___STKStickerRepresentation_size];
  *v32 = a7;
  v32[1] = a8;
  v33 = &v22[OBJC_IVAR___STKStickerRepresentation_role];
  *v33 = a4;
  v33[1] = a5;
  v22[OBJC_IVAR___STKStickerRepresentation_isPreferred] = BYTE4(v37) & 1;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v34 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v35 = *v34;
  if (*(v34 + 8))
  {
    v35 = 1;
  }

  *&v22[OBJC_IVAR___STKStickerRepresentation_version] = v35;
  v38.receiver = v22;
  v38.super_class = v9;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  sub_1B89AFC38(a1, a2);
  (*(v26 + 8))(a3, v25);
  return v36;
}

uint64_t sub_1B8A13F1C()
{
  v1 = v0 + OBJC_IVAR___STKStickerRepresentation_data;
  swift_beginAccess();
  v2 = *v1;
  sub_1B89B4A18(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1B8A13FF4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  result = sub_1B89AFC38(v6, v7);
  v9 = *v5;
  v10 = v5[1];
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = v9 + 16;
    v9 = *(v9 + 16);
    v13 = *(v14 + 8);
    v12 = v13 - v9;
    if (!__OFSUB__(v13, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
LABEL_10:
    v17 = OBJC_IVAR___STKStickerRepresentation_byteCount;
    result = swift_beginAccess();
    *(v2 + v17) = v12;
    return result;
  }

  v15 = __OFSUB__(HIDWORD(v9), v9);
  v16 = HIDWORD(v9) - v9;
  if (!v15)
  {
    v12 = v16;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8A140C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B89B4A18(v4, v5);
}

void (*sub_1B8A14118(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___STKStickerRepresentation_data;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1B8A141A0;
}

void sub_1B8A141A0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    v6 = *v5;
    v7 = v5[1];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        v9 = 0;
        goto LABEL_12;
      }

      v11 = v6 + 16;
      v6 = *(v6 + 16);
      v10 = *(v11 + 8);
      v9 = v10 - v6;
      if (!__OFSUB__(v10, v6))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v8)
    {
      v9 = BYTE6(v7);
LABEL_12:
      v14 = OBJC_IVAR___STKStickerRepresentation_byteCount;
      swift_beginAccess();
      *(v4 + v14) = v9;
      goto LABEL_13;
    }

    v12 = __OFSUB__(HIDWORD(v6), v6);
    v13 = HIDWORD(v6) - v6;
    if (v12)
    {
      __break(1u);
      return;
    }

    v9 = v13;
    goto LABEL_12;
  }

LABEL_13:

  free(v3);
}

id sub_1B8A14298(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

uint64_t sub_1B8A143CC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1B8A1448C()
{
  v1 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  return *(v0 + v1);
}

double Sticker.Representation.size.getter()
{
  result = *(v0 + OBJC_IVAR___STKStickerRepresentation_size);
  v2 = *(v0 + OBJC_IVAR___STKStickerRepresentation_size + 8);
  return result;
}

uint64_t sub_1B8A145C8()
{
  v1 = (v0 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B8A1468C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8A146EC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1B8A14800()
{
  v1 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B8A14920()
{
  v1 = (v0 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  if (*v1 == 0xD000000000000020 && 0x80000001B8A2A290 == v1[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1B8A24954();
  }

  return v3 & 1;
}

uint64_t Sticker.Representation.init(data:uti:size:role:isPreferred:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A238F4();
  (*(v18 + 32))(&v8[OBJC_IVAR___STKStickerRepresentation_identifier], v21, v17);
  v22 = &v8[OBJC_IVAR___STKStickerRepresentation_data];
  *v22 = a1;
  v22[1] = a2;
  v23 = OBJC_IVAR___STKStickerRepresentation_uti;
  v24 = sub_1B8A23AD4();
  v25 = *(v24 - 8);
  result = (*(v25 + 16))(&v8[v23], a3, v24);
  v27 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_11;
    }

    v30 = *(a1 + 16);
    v29 = *(a1 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
LABEL_10:
      sub_1B89B4A18(a1, a2);
      goto LABEL_11;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      return result;
    }

    v28 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  if (v27)
  {
    goto LABEL_8;
  }

  v28 = BYTE6(a2);
LABEL_11:
  *&v8[OBJC_IVAR___STKStickerRepresentation_byteCount] = v28;
  v31 = &v8[OBJC_IVAR___STKStickerRepresentation_size];
  *v31 = a7;
  v31[1] = a8;
  v32 = &v8[OBJC_IVAR___STKStickerRepresentation_role];
  *v32 = a4;
  v32[1] = a5;
  v8[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a6 & 1;
  if (qword_1EBA91590 != -1)
  {
    swift_once();
  }

  v33 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  swift_beginAccess();
  v34 = *v33;
  if (*(v33 + 8))
  {
    v34 = 1;
  }

  *&v8[OBJC_IVAR___STKStickerRepresentation_version] = v34;
  v35 = type metadata accessor for Sticker.Representation();
  v38.receiver = v8;
  v38.super_class = v35;
  v36 = objc_msgSendSuper2(&v38, sel_init);
  sub_1B89AFC38(a1, a2);
  (*(v25 + 8))(a3, v24);
  return v36;
}

uint64_t type metadata accessor for Sticker.Representation()
{
  result = qword_1ED82EB78;
  if (!qword_1ED82EB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Sticker.Representation.__allocating_init(identifier:data:uti:byteCount:size:role:isPreferred:version:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, char a11, uint64_t a12, char a13)
{
  v23 = objc_allocWithZone(v13);
  v24 = OBJC_IVAR___STKStickerRepresentation_identifier;
  v25 = sub_1B8A23904();
  v26 = *(v25 - 8);
  v45 = v25;
  v46 = a1;
  (*(v26 + 16))(&v23[v24], a1);
  v27 = &v23[OBJC_IVAR___STKStickerRepresentation_data];
  *v27 = a2;
  v27[1] = a3;
  v28 = OBJC_IVAR___STKStickerRepresentation_uti;
  v29 = sub_1B8A23AD4();
  v30 = *(v29 - 8);
  v31 = &v23[v28];
  v32 = a4;
  v33 = v29;
  result = (*(v30 + 16))(v31, v32, v29);
  v35 = a5;
  if ((a6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v36 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v36 != 2)
    {
      v35 = 0;
      goto LABEL_12;
    }

    v38 = *(a2 + 16);
    v37 = *(a2 + 24);
    v35 = v37 - v38;
    if (!__OFSUB__(v37, v38))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v36)
  {
    v35 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v35 = HIDWORD(a2) - a2;
LABEL_12:
  *&v23[OBJC_IVAR___STKStickerRepresentation_byteCount] = v35;
  v39 = &v23[OBJC_IVAR___STKStickerRepresentation_size];
  *v39 = a9;
  v39[1] = a10;
  v40 = &v23[OBJC_IVAR___STKStickerRepresentation_role];
  *v40 = a7;
  v40[1] = a8;
  v23[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a11 & 1;
  sub_1B89B4A18(a2, a3);
  if (a13)
  {
    if (qword_1EBA91590 != -1)
    {
      swift_once();
    }

    v41 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
    swift_beginAccess();
    v42 = *v41;
    if (*(v41 + 8))
    {
      v42 = 1;
    }
  }

  else
  {
    v42 = a12;
  }

  *&v23[OBJC_IVAR___STKStickerRepresentation_version] = v42;
  v48.receiver = v23;
  v48.super_class = v44;
  v43 = objc_msgSendSuper2(&v48, sel_init);
  sub_1B89AFC38(a2, a3);
  (*(v30 + 8))(v32, v33);
  (*(v26 + 8))(v46, v45);
  return v43;
}

uint64_t Sticker.Representation.init(identifier:data:uti:byteCount:size:role:isPreferred:version:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, double a9, double a10, char a11, uint64_t a12, char a13)
{
  v23 = OBJC_IVAR___STKStickerRepresentation_identifier;
  v24 = sub_1B8A23904();
  v39 = *(v24 - 8);
  v40 = v24;
  v41 = a1;
  (*(v39 + 16))(&v13[v23], a1);
  v25 = &v13[OBJC_IVAR___STKStickerRepresentation_data];
  *v25 = a2;
  v25[1] = a3;
  v26 = OBJC_IVAR___STKStickerRepresentation_uti;
  v27 = sub_1B8A23AD4();
  v28 = *(v27 - 8);
  result = (*(v28 + 16))(&v13[v26], a4, v27);
  v30 = a5;
  if ((a6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v31 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v31 != 2)
    {
      v30 = 0;
      goto LABEL_12;
    }

    v33 = *(a2 + 16);
    v32 = *(a2 + 24);
    v30 = v32 - v33;
    if (!__OFSUB__(v32, v33))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v30 = BYTE6(a3);
    goto LABEL_12;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    return result;
  }

  v30 = HIDWORD(a2) - a2;
LABEL_12:
  *&v13[OBJC_IVAR___STKStickerRepresentation_byteCount] = v30;
  v34 = &v13[OBJC_IVAR___STKStickerRepresentation_size];
  *v34 = a9;
  v34[1] = a10;
  v35 = &v13[OBJC_IVAR___STKStickerRepresentation_role];
  *v35 = a7;
  v35[1] = a8;
  v13[OBJC_IVAR___STKStickerRepresentation_isPreferred] = a11 & 1;
  sub_1B89B4A18(a2, a3);
  if (a13)
  {
    if (qword_1EBA91590 != -1)
    {
      swift_once();
    }

    v36 = qword_1EBA91598 + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
    swift_beginAccess();
    v37 = *v36;
    if (*(v36 + 8))
    {
      v37 = 1;
    }
  }

  else
  {
    v37 = a12;
  }

  *&v13[OBJC_IVAR___STKStickerRepresentation_version] = v37;
  v43.receiver = v13;
  v43.super_class = type metadata accessor for Sticker.Representation();
  v38 = objc_msgSendSuper2(&v43, sel_init);
  sub_1B89AFC38(a2, a3);
  (*(v28 + 8))(a4, v27);
  (*(v39 + 8))(v41, v40);
  return v38;
}

BOOL sub_1B8A152AC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1B8A23AD4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B8A23904();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B8A1571C(a1, v35);
  if (!v36)
  {
    sub_1B89A8A78(v35, &unk_1EBA91F50, &unk_1B8A26500);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v14 = v34;
  if (*(v2 + OBJC_IVAR___STKStickerRepresentation_version) != *&v34[OBJC_IVAR___STKStickerRepresentation_version])
  {
    goto LABEL_14;
  }

  (*(v10 + 16))(v13, &v34[OBJC_IVAR___STKStickerRepresentation_identifier], v9);
  sub_1B8A17660(&qword_1EBA91640, MEMORY[0x1E69695A8]);
  v15 = sub_1B8A23ED4();
  (*(v10 + 8))(v13, v9);
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];
  v19 = &v14[OBJC_IVAR___STKStickerRepresentation_data];
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  sub_1B89B4A18(v18, v17);
  sub_1B89B4A18(v21, v20);
  v22 = sub_1B8A0495C(v18, v17, v21, v20);
  sub_1B89AFC38(v21, v20);
  sub_1B89AFC38(v18, v17);
  if ((v22 & 1) == 0)
  {
    goto LABEL_14;
  }

  (*(v5 + 16))(v8, &v14[OBJC_IVAR___STKStickerRepresentation_uti], v4);
  sub_1B8A17660(&unk_1EBA91450, MEMORY[0x1E69E8450]);
  v23 = sub_1B8A23ED4();
  (*(v5 + 8))(v8, v4);
  if ((v23 & 1) == 0 || (v24 = OBJC_IVAR___STKStickerRepresentation_byteCount, swift_beginAccess(), v25 = *(v2 + v24), v26 = OBJC_IVAR___STKStickerRepresentation_byteCount, swift_beginAccess(), v25 != *&v14[v26]) || *(v2 + OBJC_IVAR___STKStickerRepresentation_size) != *&v14[OBJC_IVAR___STKStickerRepresentation_size] || *(v2 + OBJC_IVAR___STKStickerRepresentation_size + 8) != *&v14[OBJC_IVAR___STKStickerRepresentation_size + 8])
  {
LABEL_14:

    return 0;
  }

  v27 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  v30 = &v14[OBJC_IVAR___STKStickerRepresentation_role];
  swift_beginAccess();
  if (v28 == *v30 && v29 == *(v30 + 1))
  {

    return 1;
  }

  else
  {
    v32 = sub_1B8A24954();

    return (v32 & 1) != 0;
  }
}

uint64_t sub_1B8A1571C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F50, &unk_1B8A26500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id Sticker.Representation.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v55 - v6;
  v7 = sub_1B8A23AD4();
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - v13;
  v15 = sub_1B8A23904();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v55 - v21;
  sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  v23 = sub_1B8A243B4();
  if (!v23)
  {
    goto LABEL_6;
  }

  v24 = v23;
  (*(v16 + 56))(v14, 1, 1, v15);
  sub_1B8A17660(&qword_1EBA92230, MEMORY[0x1E69695A8]);
  sub_1B8A24784();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_6;
  }

  v25 = *(v16 + 32);
  v25(v20, v14, v15);
  v62 = v25;
  v25(v22, v20, v15);
  sub_1B89AB538(0, &qword_1EBA91F78, 0x1E695DEF0);
  v26 = sub_1B8A243B4();
  if (!v26 || (v67 = xmmword_1B8A26F80, v27 = v26, sub_1B8A237B4(), v27, *(&v67 + 1) >> 60 == 15))
  {
    (*(v16 + 8))(v22, v15);
LABEL_6:

LABEL_7:
    type metadata accessor for Sticker.Representation();
    v28 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v29 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v61 = *(&v67 + 1);
  v31 = v67;
  sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
  v32 = sub_1B8A243B4();
  if (!v32)
  {
    (*(v16 + 8))(v22, v15);
    sub_1B89B4A04(v31, v61);
    goto LABEL_6;
  }

  v60 = v31;
  v67 = 0uLL;
  v33 = v32;
  sub_1B8A23F14();

  if (!*(&v67 + 1))
  {
    sub_1B89B4A04(v60, v61);

LABEL_18:
    (*(v16 + 8))(v22, v15);
    goto LABEL_7;
  }

  v59 = v67;
  v34 = sub_1B8A23EF4();
  v58 = [a1 decodeIntegerForKey_];

  v35 = sub_1B8A23EF4();
  [a1 decodeSizeForKey_];
  v37 = v36;
  v39 = v38;

  v40 = sub_1B8A243B4();
  if (!v40)
  {
    (*(v16 + 8))(v22, v15);
    sub_1B89B4A04(v60, v61);

    goto LABEL_7;
  }

  v67 = 0uLL;
  v41 = v40;
  sub_1B8A23F14();

  if (!*(&v67 + 1))
  {
    sub_1B89B4A04(v60, v61);

    goto LABEL_18;
  }

  v57 = v67;
  v42 = sub_1B8A23EF4();
  v56 = [a1 decodeBoolForKey_];

  v43 = sub_1B8A23EF4();
  v55 = [a1 decodeIntegerForKey_];

  v44 = v65;
  sub_1B8A23AE4();
  v45 = v63;
  v46 = v64;
  if ((*(v63 + 48))(v44, 1, v64) == 1)
  {
    (*(v16 + 8))(v22, v15);
    sub_1B89B4A04(v60, v61);

    sub_1B89A8A78(v44, &qword_1EBA91EB8, &unk_1B8A28100);
    goto LABEL_7;
  }

  v47 = *(v45 + 32);
  v47(v10, v44, v46);
  v62(&v2[OBJC_IVAR___STKStickerRepresentation_identifier], v22, v15);
  v48 = &v2[OBJC_IVAR___STKStickerRepresentation_data];
  v49 = v61;
  *v48 = v60;
  *(v48 + 1) = v49;
  v47(&v2[OBJC_IVAR___STKStickerRepresentation_uti], v10, v46);
  *&v2[OBJC_IVAR___STKStickerRepresentation_byteCount] = v58;
  v50 = &v2[OBJC_IVAR___STKStickerRepresentation_size];
  *v50 = v37;
  *(v50 + 1) = v39;
  v51 = &v2[OBJC_IVAR___STKStickerRepresentation_role];
  v52 = *(&v57 + 1);
  *v51 = v57;
  *(v51 + 1) = v52;
  v2[OBJC_IVAR___STKStickerRepresentation_isPreferred] = v56;
  *&v2[OBJC_IVAR___STKStickerRepresentation_version] = v55;
  v53 = type metadata accessor for Sticker.Representation();
  v66.receiver = v2;
  v66.super_class = v53;
  v54 = objc_msgSendSuper2(&v66, sel_init);

  return v54;
}

void sub_1B8A16060(void *a1)
{
  v2 = v1;
  v4 = sub_1B8A238B4();
  v5 = sub_1B8A23EF4();
  [a1 encodeObject:v4 forKey:v5];

  v6 = (v2 + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  sub_1B89B4A18(v8, v7);
  v9 = sub_1B8A237A4();
  sub_1B89AFC38(v8, v7);
  v10 = sub_1B8A23EF4();
  [a1 encodeObject:v9 forKey:v10];

  sub_1B8A23AB4();
  v11 = sub_1B8A23EF4();

  v12 = sub_1B8A23EF4();
  [a1 encodeObject:v11 forKey:v12];

  v13 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = sub_1B8A23EF4();
  [a1 encodeInteger:v14 forKey:v15];

  v16 = *(v2 + OBJC_IVAR___STKStickerRepresentation_size);
  v17 = *(v2 + OBJC_IVAR___STKStickerRepresentation_size + 8);
  v18 = sub_1B8A23EF4();
  [a1 encodeSize:v18 forKey:{v16, v17}];

  v19 = (v2 + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];

  v22 = sub_1B8A23EF4();

  v23 = sub_1B8A23EF4();
  [a1 encodeObject:v22 forKey:v23];

  v24 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = sub_1B8A23EF4();
  [a1 encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR___STKStickerRepresentation_version);
  v28 = sub_1B8A23EF4();
  [a1 encodeInteger:v27 forKey:v28];
}

uint64_t sub_1B8A1644C()
{
  v1 = v0;
  sub_1B8A24634();

  sub_1B8A23904();
  sub_1B8A17660(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
  v2 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v2);

  MEMORY[0x1B8CC3E20](0x756F436574796220, 0xEC000000223D746ELL);
  v3 = objc_opt_self();
  v4 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  v5 = [v3 stringFromByteCount:*(v1 + v4) countStyle:0];
  v6 = sub_1B8A23F24();
  v8 = v7;

  MEMORY[0x1B8CC3E20](v6, v8);

  MEMORY[0x1B8CC3E20](0x223D657079742022, 0xE800000000000000);
  sub_1B8A23AD4();
  sub_1B8A17660(&qword_1EBA91610, MEMORY[0x1E69E8450]);
  v9 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v9);

  MEMORY[0x1B8CC3E20](0x223D657A69732022, 0xE800000000000000);
  v10 = v1 + OBJC_IVAR___STKStickerRepresentation_size;
  v11 = *(v1 + OBJC_IVAR___STKStickerRepresentation_size);
  v12 = sub_1B8A24194();
  MEMORY[0x1B8CC3E20](v12);

  MEMORY[0x1B8CC3E20](120, 0xE100000000000000);
  v13 = *(v10 + 8);
  v14 = sub_1B8A24194();
  MEMORY[0x1B8CC3E20](v14);

  MEMORY[0x1B8CC3E20](15906, 0xE200000000000000);
  return 60;
}

id Sticker.Representation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B8A167BC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7265666572507369;
  if (v1 != 6)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 1702521203;
  if (v1 != 4)
  {
    v4 = 1701605234;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 6911093;
  if (v1 != 2)
  {
    v5 = 0x6E756F4365747962;
  }

  if (*v0)
  {
    v2 = 1635017060;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8A168A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8A17D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8A168DC(uint64_t a1)
{
  v2 = sub_1B8A1760C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A16918(uint64_t a1)
{
  v2 = sub_1B8A1760C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.Representation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker.Representation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A16A60(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92238, &qword_1B8A29410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A1760C();
  sub_1B8A24A64();
  v27 = 0;
  sub_1B8A23904();
  sub_1B8A17660(&unk_1EBA91650, MEMORY[0x1E69695A8]);
  sub_1B8A248F4();
  if (!v2)
  {
    v11 = (v3 + OBJC_IVAR___STKStickerRepresentation_data);
    swift_beginAccess();
    v12 = v11[1];
    v25 = *v11;
    v26 = v12;
    LOBYTE(v24) = 1;
    sub_1B89B4A18(v25, v12);
    sub_1B89CDFE4();
    sub_1B8A248F4();
    sub_1B89AFC38(v25, v26);
    LOBYTE(v25) = 2;
    sub_1B8A23AD4();
    sub_1B8A17660(&qword_1EBA91618, MEMORY[0x1E69E8450]);
    sub_1B8A248F4();
    v13 = OBJC_IVAR___STKStickerRepresentation_byteCount;
    swift_beginAccess();
    v14 = *(v3 + v13);
    LOBYTE(v24) = 3;
    sub_1B8A248E4();
    v24 = *(v3 + OBJC_IVAR___STKStickerRepresentation_size);
    v23 = 4;
    type metadata accessor for CGSize(0);
    sub_1B8A17660(&qword_1EBA91490, type metadata accessor for CGSize);
    sub_1B8A248F4();
    v16 = (v3 + OBJC_IVAR___STKStickerRepresentation_role);
    swift_beginAccess();
    v17 = *v16;
    v18 = v16[1];
    v23 = 5;

    sub_1B8A248B4();

    v19 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
    swift_beginAccess();
    v20 = *(v3 + v19);
    HIBYTE(v22) = 6;
    sub_1B8A248C4();
    v21 = *(v3 + OBJC_IVAR___STKStickerRepresentation_version);
    HIBYTE(v22) = 7;
    sub_1B8A248E4();
  }

  return (*(v6 + 8))(v9, v5);
}

void *Sticker.Representation.init(from:)(uint64_t *a1)
{
  v2 = sub_1B8A23AD4();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8A23904();
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92248, &qword_1B8A29418);
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v27 - v12;
  v14 = a1[3];
  v15 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v14);
  sub_1B8A1760C();
  v30 = v13;
  v16 = v32;
  sub_1B8A24A54();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v34);
    v26 = v33;
    type metadata accessor for Sticker.Representation();
    v18 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v19 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v10;
    LOBYTE(v36) = 0;
    sub_1B8A17660(&qword_1ED82DE80, MEMORY[0x1E69695A8]);
    sub_1B8A24854();
    v21 = v33;
    (*(v29 + 32))(v33 + OBJC_IVAR___STKStickerRepresentation_identifier, v9, v6);
    v37 = 1;
    sub_1B89ADF2C();
    sub_1B8A24854();
    v27 = v2;
    *&v21[OBJC_IVAR___STKStickerRepresentation_data] = v36;
    LOBYTE(v36) = 2;
    sub_1B8A17660(&qword_1ED82DE70, MEMORY[0x1E69E8450]);
    v32 = 0;
    sub_1B8A24854();
    (*(v28 + 32))(&v21[OBJC_IVAR___STKStickerRepresentation_uti], v5, v2);
    LOBYTE(v36) = 3;
    *&v21[OBJC_IVAR___STKStickerRepresentation_byteCount] = sub_1B8A24844();
    type metadata accessor for CGSize(0);
    v37 = 4;
    sub_1B8A17660(&qword_1ED82DBB8, type metadata accessor for CGSize);
    sub_1B8A24854();
    *&v21[OBJC_IVAR___STKStickerRepresentation_size] = v36;
    LOBYTE(v36) = 5;
    v22 = sub_1B8A24814();
    v23 = &v21[OBJC_IVAR___STKStickerRepresentation_role];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v36) = 6;
    v21[OBJC_IVAR___STKStickerRepresentation_isPreferred] = sub_1B8A24824() & 1;
    LOBYTE(v36) = 7;
    *&v21[OBJC_IVAR___STKStickerRepresentation_version] = sub_1B8A24844();
    v25 = type metadata accessor for Sticker.Representation();
    v35.receiver = v21;
    v35.super_class = v25;
    v26 = objc_msgSendSuper2(&v35, sel_init);
    (*(v17 + 8))(v30, v31);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  return v26;
}

void *sub_1B8A17590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker.Representation());
  result = Sticker.Representation.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8A1760C()
{
  result = qword_1ED82DC50;
  if (!qword_1ED82DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC50);
  }

  return result;
}

uint64_t sub_1B8A17660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8A176B0()
{
  result = sub_1B8A23904();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1B8A23AD4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t _s14RepresentationC10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s14RepresentationC10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8A17C0C()
{
  result = qword_1EBA92258;
  if (!qword_1EBA92258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92258);
  }

  return result;
}

unint64_t sub_1B8A17C64()
{
  result = qword_1ED82DC40;
  if (!qword_1ED82DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC40);
  }

  return result;
}

unint64_t sub_1B8A17CBC()
{
  result = qword_1ED82DC48;
  if (!qword_1ED82DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC48);
  }

  return result;
}

uint64_t sub_1B8A17D10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6911093 && a2 == 0xE300000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074 || (sub_1B8A24954() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7265666572507369 && a2 == 0xEB00000000646572 || (sub_1B8A24954() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B8A17FE0(uint64_t a1, NSObject *a2)
{
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - v8;
  if (qword_1ED82E688 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v58 = v7;
    v10 = sub_1B8A23BC4();
    __swift_project_value_buffer(v10, qword_1ED8303C0);
    v11 = sub_1B8A23BA4();
    v12 = sub_1B8A24214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B89A7000, v11, v12, "BEGIN addSticker(_:)", v13, 2u);
      MEMORY[0x1B8CC5170](v13, -1, -1);
    }

    v14 = a2;
    v15 = sub_1B8A23BA4();
    v16 = sub_1B8A24214();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v61[0] = v18;
      *v17 = 136315138;
      sub_1B8A23904();
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
      v19 = sub_1B8A24934();
      v21 = sub_1B89A907C(v19, v20, v61);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1B89A7000, v15, v16, " - identifier: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CC5170](v18, -1, -1);
      MEMORY[0x1B8CC5170](v17, -1, -1);
    }

    v22 = v14;
    v23 = sub_1B8A23BA4();
    v24 = sub_1B8A24214();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v61[0] = v26;
      *v25 = 136315138;
      v27 = objc_opt_self();
      v28 = OBJC_IVAR___STKSticker_byteCount;
      swift_beginAccess();
      v29 = [v27 stringFromByteCount:*(&v22->isa + v28) countStyle:0];
      v30 = sub_1B8A23F24();
      v32 = v31;

      v33 = sub_1B89A907C(v30, v32, v61);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_1B89A7000, v23, v24, " - byteCount: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8CC5170](v26, -1, -1);
      MEMORY[0x1B8CC5170](v25, -1, -1);
    }

    a2 = v22;
    v34 = sub_1B8A23BA4();
    v35 = sub_1B8A24214();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      v37 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v38 = *(&a2->isa + v37);
      if (v38 >> 62)
      {
        if (v38 < 0)
        {
          v57 = *(&a2->isa + v37);
        }

        v39 = sub_1B8A24554();
      }

      else
      {
        v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v36 + 4) = v39;

      _os_log_impl(&dword_1B89A7000, v34, v35, " - representations (%ld):", v36, 0xCu);
      MEMORY[0x1B8CC5170](v36, -1, -1);
    }

    else
    {

      v34 = a2;
    }

    v40 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v41 = *(&a2->isa + v40);
    if (v41 >> 62)
    {
      if (v41 < 0)
      {
        v56 = *(&a2->isa + v40);
      }

      v42 = sub_1B8A24554();
    }

    else
    {
      v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v42)
    {
      break;
    }

    v43 = 0;
    while (1)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1B8CC44E0](v43, v41);
      }

      else
      {
        if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v7 = *(v41 + 8 * v43 + 32);
      }

      a2 = v7;
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      sub_1B8A1A7B4(v43, v7);

      ++v43;
      if (v44 == v42)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v55 = v7;
    swift_once();
    v7 = v55;
  }

LABEL_24:

  v45 = [objc_opt_self() currentEnvironment];
  v46 = [v45 timeProvider];

  [v46 timestamp];
  swift_unknownObjectRelease();
  v47 = v58;
  isa_low = SLODWORD(v58[6].isa);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v49, qword_1ED8303D8);
  *&v9[isa_low] = sub_1B89A99D4(v9, "add sticker", v50, 2);
  v51 = v59;
  sub_1B89A9E58(v9, v59);
  v52 = *(v51 + SLODWORD(v47[6].isa));
  v53 = sub_1B8A23B14();
  (*(*(v53 - 8) + 32))(v60, v51, v53);
  return v52;
}

uint64_t sub_1B8A18688(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v78 = a1;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v2 = *(*(v76 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v76);
  v77 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v74 - v5;
  v84 = sub_1B8A23904();
  v6 = *(v84 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED82E688 != -1)
  {
LABEL_55:
    swift_once();
  }

  v9 = sub_1B8A23BC4();
  v10 = __swift_project_value_buffer(v9, qword_1ED8303C0);
  v11 = sub_1B8A23BA4();
  v12 = sub_1B8A24214();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B89A7000, v11, v12, "BEGIN addSticker(_:)", v13, 2u);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  v15 = 0;
  v16 = v79 & 0xFFFFFFFFFFFFFF8;
  if (v79 < 0)
  {
    v17 = v79;
  }

  else
  {
    v17 = v79 & 0xFFFFFFFFFFFFFF8;
  }

  v85 = v17;
  v89 = v79 & 0xC000000000000001;
  v87 = v79 + 32;
  v82 = (v6 + 2);
  v81 = (v6 + 1);
  v90 = v79 >> 62;
  *&v14 = 136315138;
  v88 = v14;
  *&v14 = 134217984;
  v80 = v14;
  while (!v90)
  {
    if (v15 == *(v16 + 16))
    {
      goto LABEL_48;
    }

LABEL_13:
    if (v89)
    {
      v18 = MEMORY[0x1B8CC44E0](v15, v79);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_54;
      }

      v18 = *(v87 + 8 * v15);
    }

    v6 = v18;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_53;
    }

    v91 = v15 + 1;
    if (v15)
    {
      v19 = sub_1B8A23BA4();
      v20 = sub_1B8A24214();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1B89A7000, v19, v20, " ----- Next sticker:", v21, 2u);
        MEMORY[0x1B8CC5170](v21, -1, -1);
      }
    }

    v22 = v6;
    v23 = sub_1B8A23BA4();
    v24 = sub_1B8A24214();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v92 = v86;
      *v25 = v88;
      v26 = v83;
      v27 = v84;
      (*v82)(v83, v22 + OBJC_IVAR___STKSticker_identifier, v84);
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
      v28 = v16;
      v29 = v10;
      v30 = sub_1B8A24934();
      v32 = v31;
      (*v81)(v26, v27);
      v33 = v30;
      v10 = v29;
      v16 = v28;
      v34 = sub_1B89A907C(v33, v32, &v92);

      *(v25 + 4) = v34;
      _os_log_impl(&dword_1B89A7000, v23, v24, " - identifier: %s", v25, 0xCu);
      v35 = v86;
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x1B8CC5170](v35, -1, -1);
      MEMORY[0x1B8CC5170](v25, -1, -1);
    }

    v36 = v22;
    v37 = sub_1B8A23BA4();
    v38 = sub_1B8A24214();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v92 = v40;
      *v39 = v88;
      v41 = objc_opt_self();
      v42 = OBJC_IVAR___STKSticker_byteCount;
      swift_beginAccess();
      v43 = [v41 stringFromByteCount:*&v36[v42] countStyle:0];
      v44 = sub_1B8A23F24();
      v46 = v45;

      v47 = sub_1B89A907C(v44, v46, &v92);

      *(v39 + 4) = v47;
      _os_log_impl(&dword_1B89A7000, v37, v38, " - byteCount: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B8CC5170](v40, -1, -1);
      MEMORY[0x1B8CC5170](v39, -1, -1);
    }

    v48 = v36;
    v49 = sub_1B8A23BA4();
    v50 = sub_1B8A24214();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = v80;
      v52 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v53 = *(&v48->isa + v52);
      if (v53 >> 62)
      {
        if (v53 < 0)
        {
          v62 = *(&v48->isa + v52);
        }

        v54 = sub_1B8A24554();
      }

      else
      {
        v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v51 + 4) = v54;

      _os_log_impl(&dword_1B89A7000, v49, v50, " - representations (%ld):", v51, 0xCu);
      MEMORY[0x1B8CC5170](v51, -1, -1);
    }

    else
    {

      v49 = v48;
    }

    v55 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v56 = *(&v48->isa + v55);
    if (v56 >> 62)
    {
      if (v56 < 0)
      {
        v61 = *(&v48->isa + v55);
      }

      v6 = sub_1B8A24554();
    }

    else
    {
      v6 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6)
    {
      v57 = 0;
      while (1)
      {
        if ((v56 & 0xC000000000000001) != 0)
        {
          v58 = MEMORY[0x1B8CC44E0](v57, v56);
        }

        else
        {
          if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v58 = *(v56 + 8 * v57 + 32);
        }

        v59 = v58;
        v60 = (v57 + 1);
        if (__OFADD__(v57, 1))
        {
          break;
        }

        sub_1B8A1A7B4(v57, v58);

        ++v57;
        if (v60 == v6)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

LABEL_8:

    v15 = v91;
  }

  if (v15 != sub_1B8A24554())
  {
    goto LABEL_13;
  }

LABEL_48:
  v63 = [objc_opt_self() currentEnvironment];
  v64 = [v63 timeProvider];

  [v64 timestamp];
  swift_unknownObjectRelease();
  v65 = v76;
  v66 = *(v76 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v67, qword_1ED8303D8);
  v68 = v75;
  *(v68 + v66) = sub_1B89A99D4(v75, "add stickers", v69, 2);
  v70 = v77;
  sub_1B89A9E58(v68, v77);
  v71 = *(v70 + *(v65 + 48));
  v72 = sub_1B8A23B14();
  (*(*(v72 - 8) + 32))(v78, v70, v72);
  return v71;
}

uint64_t sub_1B8A18F94(uint64_t a1, uint64_t a2)
{
  v59 = sub_1B8A23904();
  v4 = *(v59 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v15 = sub_1B8A23BC4();
  v16 = __swift_project_value_buffer(v15, qword_1ED8303C0);

  v58 = v16;
  v17 = sub_1B8A23BA4();
  v18 = sub_1B8A24214();
  v19 = os_log_type_enabled(v17, v18);
  v52 = v12;
  v53 = a1;
  v50 = v14;
  v51 = v8;
  if (v19)
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1B89A7000, v17, v18, "BEGIN removeStickers(identifiers:) (%ld)", v20, 0xCu);
    MEMORY[0x1B8CC5170](v20, -1, -1);
  }

  else
  {
  }

  v22 = *(a2 + 16);
  v23 = v59;
  if (v22)
  {
    v24 = v4 + 16;
    v25 = *(v4 + 16);
    v57 = (v4 + 8);
    v26 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    *&v21 = 136315138;
    v54 = v21;
    v55 = v27;
    v56 = v25;
    v25(v7, v26, v59);
    while (1)
    {
      v37 = sub_1B8A23BA4();
      v38 = sub_1B8A24214();
      if (os_log_type_enabled(v37, v38))
      {
        v28 = swift_slowAlloc();
        v29 = v24;
        v30 = swift_slowAlloc();
        v60 = v30;
        *v28 = v54;
        sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
        v31 = sub_1B8A24934();
        v33 = v32;
        (*v57)(v7, v59);
        v34 = sub_1B89A907C(v31, v33, &v60);
        v23 = v59;

        *(v28 + 4) = v34;
        _os_log_impl(&dword_1B89A7000, v37, v38, " - identifier: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v30);
        v35 = v30;
        v24 = v29;
        v27 = v55;
        MEMORY[0x1B8CC5170](v35, -1, -1);
        v36 = v28;
        v25 = v56;
        MEMORY[0x1B8CC5170](v36, -1, -1);
      }

      else
      {

        (*v57)(v7, v23);
      }

      v26 += v27;
      if (!--v22)
      {
        break;
      }

      v25(v7, v26, v23);
    }
  }

  v39 = [objc_opt_self() currentEnvironment];
  v40 = [v39 timeProvider];

  [v40 timestamp];
  swift_unknownObjectRelease();
  v41 = v51;
  v42 = *(v51 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v43, qword_1ED8303D8);
  v44 = v50;
  *(v44 + v42) = sub_1B89A99D4(v50, "remove stickers", v45, 2);
  v46 = v52;
  sub_1B89A9E58(v44, v52);
  v47 = *(v46 + *(v41 + 48));
  v48 = sub_1B8A23B14();
  (*(*(v48 - 8) + 32))(v53, v46, v48);
  return v47;
}

uint64_t sub_1B8A194B4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v11 = sub_1B8A23BC4();
  __swift_project_value_buffer(v11, qword_1ED8303C0);
  v12 = sub_1B8A23BA4();
  v13 = sub_1B8A24214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B89A7000, v12, v13, "BEGIN updateSticker(_:)", v14, 2u);
    MEMORY[0x1B8CC5170](v14, -1, -1);
  }

  v15 = a2;
  v16 = sub_1B8A23BA4();
  v17 = sub_1B8A24214();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = a1;
    v34 = v19;
    v20 = v19;
    *v18 = 136315138;
    sub_1B8A23904();
    sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
    v21 = sub_1B8A24934();
    v23 = sub_1B89A907C(v21, v22, &v34);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1B89A7000, v16, v17, " - identifier: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    v24 = v20;
    a1 = v33;
    MEMORY[0x1B8CC5170](v24, -1, -1);
    MEMORY[0x1B8CC5170](v18, -1, -1);
  }

  v25 = [objc_opt_self() currentEnvironment];
  v26 = [v25 timeProvider];

  [v26 timestamp];
  swift_unknownObjectRelease();
  v27 = *(v4 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v28, qword_1ED8303D8);
  *&v10[v27] = sub_1B89A99D4(v10, "update sticker", v29, 2);
  sub_1B89A9E58(v10, v8);
  v30 = *&v8[*(v4 + 48)];
  v31 = sub_1B8A23B14();
  (*(*(v31 - 8) + 32))(a1, v8, v31);
  return v30;
}

uint64_t sub_1B8A19874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8A23BC4();
  __swift_project_value_buffer(v13, qword_1ED8303C0);
  v14 = sub_1B8A23BA4();
  v15 = sub_1B8A24214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = a2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a3;
    _os_log_impl(&dword_1B89A7000, v14, v15, "BEGIN moveSticker(at:to:) (%ld --> %ld", v16, 0x16u);
    MEMORY[0x1B8CC5170](v16, -1, -1);
  }

  v17 = [objc_opt_self() currentEnvironment];
  v18 = [v17 timeProvider];

  [v18 timestamp];
  swift_unknownObjectRelease();
  v19 = *(v6 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v20, qword_1ED8303D8);
  *&v12[v19] = sub_1B89A99D4(v12, "move sticker", v21, 2);
  sub_1B89A9E58(v12, v10);
  v22 = *&v10[*(v6 + 48)];
  v23 = sub_1B8A23B14();
  (*(*(v23 - 8) + 32))(a1, v10, v23);
  return v22;
}

uint64_t sub_1B8A19B24(const char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v14 = sub_1B8A23B14();
  (*(*(v14 - 8) + 16))(v13, a4, v14);
  *&v13[*(v10 + 56)] = a5;

  v15 = sub_1B8A23B34();
  v16 = sub_1B8A24364();
  result = sub_1B8A24434();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_9:
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B8A23B04();
      _os_signpost_emit_with_name_impl(&dword_1B89A7000, v15, v16, v19, a1, "", v18, 2u);
      MEMORY[0x1B8CC5170](v18, -1, -1);
LABEL_10:

      return sub_1B89A8A78(v13, &qword_1EBA91A58, &qword_1B8A29640);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_9;
    }

    goto LABEL_12;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_1B8A19CDC(uint64_t a1, unint64_t a2)
{
  v48 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v3 = *(*(v46 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v46);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v45 - v6;
  v55 = sub_1B8A23904();
  v7 = *(v55 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v10 = sub_1B8A23BC4();
  v11 = __swift_project_value_buffer(v10, qword_1ED8303C0);
  v12 = sub_1B8A23BA4();
  v13 = sub_1B8A24214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1B89A7000, v12, v13, "BEGIN touchStickers(_:)", v14, 2u);
    MEMORY[0x1B8CC5170](v14, -1, -1);
  }

  if (a2 >> 62)
  {
    v16 = sub_1B8A24554();
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_17;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return;
  }

  v17 = 0;
  v18 = a2 & 0xC000000000000001;
  v50 = (v7 + 8);
  v51 = (v7 + 16);
  *&v15 = 136315138;
  v49 = v15;
  v52 = v16;
  v53 = a2;
  do
  {
    if (v18)
    {
      v31 = MEMORY[0x1B8CC44E0](v17, a2);
    }

    else
    {
      v31 = *(a2 + 8 * v17 + 32);
    }

    v32 = v31;
    v33 = sub_1B8A23BA4();
    v34 = sub_1B8A24214();

    if (os_log_type_enabled(v33, v34))
    {
      v19 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = v57;
      *v19 = v49;
      v20 = v54;
      v21 = v55;
      (*v51)(v54, &v32[OBJC_IVAR___STKSticker_identifier], v55);
      sub_1B8A1AB7C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
      v22 = sub_1B8A24934();
      v56 = v32;
      v23 = v18;
      v24 = v11;
      v26 = v25;
      v27 = v21;
      v16 = v52;
      (*v50)(v20, v27);
      v28 = sub_1B89A907C(v22, v26, &v58);
      v11 = v24;
      v18 = v23;

      *(v19 + 4) = v28;
      _os_log_impl(&dword_1B89A7000, v33, v34, " - identifier: %s", v19, 0xCu);
      v29 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x1B8CC5170](v29, -1, -1);
      v30 = v19;
      a2 = v53;
      MEMORY[0x1B8CC5170](v30, -1, -1);
    }

    else
    {
    }

    ++v17;
  }

  while (v16 != v17);
LABEL_17:
  v35 = [objc_opt_self() currentEnvironment];
  v36 = [v35 timeProvider];

  [v36 timestamp];
  swift_unknownObjectRelease();
  v37 = v46;
  v38 = *(v46 + 48);
  if (qword_1ED82E690 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v39, qword_1ED8303D8);
  v40 = v45;
  *(v40 + v38) = sub_1B89A99D4(v45, "touch stickers", v41, 2);
  v42 = v47;
  sub_1B89A9E58(v40, v47);
  v43 = *(v42 + *(v37 + 48));
  v44 = sub_1B8A23B14();
  (*(*(v44 - 8) + 32))(v48, v42, v44);
}

uint64_t sub_1B8A1A224()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1ED8303C0);
  __swift_project_value_buffer(v0, qword_1ED8303C0);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A1A2C8(uint64_t a1, uint64_t a2, const char *a3, const char *a4, double a5)
{
  v51 = a4;
  v52 = a3;
  v53 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v51 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v51 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v51 - v23;
  v25 = sub_1B8A23B14();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v24, v53, v25);
  *&v24[*(v15 + 48)] = a2;
  *v14 = a5;
  sub_1B89A9E58(v24, v14 + *(v8 + 56));
  v53 = v14;
  v27 = v14;
  v28 = v22;
  sub_1B89AF268(v27, v12, &qword_1EBA91BD0, qword_1B8A26FF0);
  v29 = *v12;
  v30 = *(v12 + *(v8 + 56) + *(v15 + 48));
  v31 = *(v26 + 32);
  v31(v19);
  v32 = *(v15 + 48);
  (v31)(v28, v19, v25);
  *(v28 + v32) = v30;
  v33 = qword_1ED82E690;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v34, qword_1ED8303D8);
  sub_1B89AF268(v28, v19, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8(v52, v35, 2, v19, *&v19[*(v15 + 48)]);

  (*(v26 + 8))(v19, v25);
  v36 = [objc_opt_self() currentEnvironment];
  v37 = [v36 timeProvider];

  [v37 timestamp];
  v39 = v38;
  swift_unknownObjectRelease();
  v40 = [objc_opt_self() stringForTimeInterval_];
  v41 = sub_1B8A23F24();
  v43 = v42;

  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v44 = sub_1B8A23BC4();
  __swift_project_value_buffer(v44, qword_1ED8303C0);

  v45 = sub_1B8A23BA4();
  v46 = sub_1B8A24214();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136315138;
    v49 = sub_1B89A907C(v41, v43, &v54);

    *(v47 + 4) = v49;
    _os_log_impl(&dword_1B89A7000, v45, v46, v51, v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x1B8CC5170](v48, -1, -1);
    MEMORY[0x1B8CC5170](v47, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v28, &qword_1EBA91A58, &qword_1B8A29640);
  return sub_1B89A8A78(v53, &qword_1EBA91BD0, qword_1B8A26FF0);
}

void sub_1B8A1A7B4(uint64_t a1, void *a2)
{
  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8A23BC4();
  __swift_project_value_buffer(v4, qword_1ED8303C0);
  v22 = a2;
  v5 = sub_1B8A23BA4();
  v6 = sub_1B8A24214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134219010;
    *(v7 + 4) = a1;
    *(v7 + 12) = 2080;
    sub_1B8A23AD4();
    sub_1B8A1AB7C(&qword_1EBA91610, MEMORY[0x1E69E8450]);
    v9 = sub_1B8A24934();
    v11 = sub_1B89A907C(v9, v10, &v23);

    *(v7 + 14) = v11;
    *(v7 + 22) = 2080;
    v12 = objc_opt_self();
    v13 = OBJC_IVAR___STKStickerRepresentation_byteCount;
    swift_beginAccess();
    v14 = [v12 stringFromByteCount:*&v22[v13] countStyle:0];
    v15 = sub_1B8A23F24();
    v17 = v16;

    v18 = sub_1B89A907C(v15, v17, &v23);

    *(v7 + 24) = v18;
    *(v7 + 32) = 2048;
    v19 = &v22[OBJC_IVAR___STKStickerRepresentation_size];
    v20 = *&v22[OBJC_IVAR___STKStickerRepresentation_size];

    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v20 > -9.22337204e18)
    {
      if (v20 < 9.22337204e18)
      {
        *(v7 + 34) = v20;

        *(v7 + 42) = 2048;
        v21 = v19[1];

        if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v21 > -9.22337204e18)
          {
            if (v21 < 9.22337204e18)
            {
              *(v7 + 44) = v21;

              _os_log_impl(&dword_1B89A7000, v5, v6, "   [%ld] %s %s %ldx%ld", v7, 0x34u);
              swift_arrayDestroy();
              MEMORY[0x1B8CC5170](v8, -1, -1);
              MEMORY[0x1B8CC5170](v7, -1, -1);

              return;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1B8A1AB7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8A1ABC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v20 - v9;
  v11 = *(v8 + 48);
  *(v20 + v11 - v9) = sub_1B89A99D4(v20 - v9, "remove stickers", 15, 2);
  v12 = sub_1B8A1AEA8(a1);
  if (v1)
  {
    sub_1B89C4F2C(v10, v7);
    sub_1B89AF7B8("remove stickers", 15, 2, v7, *&v7[*(v3 + 48)]);

    sub_1B89A8A78(v10, &qword_1EBA91A58, &qword_1B8A29640);
    v13 = sub_1B8A23B14();
    return (*(*(v13 - 8) + 8))(v7, v13);
  }

  v15 = v12;
  sub_1B89C4F2C(v10, v7);
  sub_1B8A19B24("stickers fetched", 16, 2, v7, *&v7[*(v3 + 48)]);

  v16 = sub_1B8A23B14();
  v17 = *(v16 - 8);
  v21 = *(v17 + 8);
  v20[1] = v17 + 8;
  v21(v7, v16);
  v18 = v15;
  if (v15 >> 62)
  {
    v19 = sub_1B8A24554();
    v18 = v15;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_7:

    goto LABEL_8;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1B8A1B1A8(v18);

  sub_1B8A1B2B4();
LABEL_8:
  sub_1B89C4F2C(v10, v7);
  sub_1B89AF7B8("remove stickers", 15, 2, v7, *&v7[*(v3 + 48)]);

  sub_1B89A8A78(v10, &qword_1EBA91A58, &qword_1B8A29640);
  return (v21)(v7, v16);
}

NSObject *sub_1B8A1AEA8(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_1B8A23EF4();
  v4 = [v2 initWithEntityName_];

  sub_1B89CDF1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8A26570;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1B89AEE6C();
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  *(v5 + 104) = sub_1B8A1B598();
  *(v5 + 72) = a1;

  v6 = sub_1B8A24204();
  [v4 setPredicate_];

  v22[0] = 0;
  v7 = [v4 execute_];
  v8 = v22[0];
  if (v7)
  {
    v9 = v7;
    type metadata accessor for ManagedSticker();
    v10 = sub_1B8A240F4();
    v11 = v8;
  }

  else
  {
    v12 = v22[0];
    v13 = sub_1B8A23674();

    swift_willThrow();
    v14 = v13;
    v10 = sub_1B8A23BA4();
    v15 = sub_1B8A24234();

    if (os_log_type_enabled(v10, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = v13;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1B89A7000, v10, v15, "Could not fetch stickers to delete: %@", v16, 0xCu);
      sub_1B89A8A78(v17, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v17, -1, -1);
      MEMORY[0x1B8CC5170](v16, -1, -1);
    }

    swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1B8A1B1A8(unint64_t a1)
{
  v3 = *(v1 + 16);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v8 = v3;
    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8CC44E0](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v8 deleteObject_];

      ++v3;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_12:
}

void sub_1B8A1B2B4()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v14[0] = 0;
  if ([v1 save_])
  {
    v2 = v14[0];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = v14[0];
    v5 = sub_1B8A23674();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1B8A23BA4();
    v8 = sub_1B8A24234();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B89A7000, v7, v8, "Could not save after deleting stickers: %@", v9, 0xCu);
      sub_1B89A8A78(v10, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v10, -1, -1);
      MEMORY[0x1B8CC5170](v9, -1, -1);
    }

    else
    {
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

uint64_t sub_1B8A1B48C()
{
  v1 = OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper15ExtractedMethod_logger;
  v2 = sub_1B8A23BC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B89C4E70(v0 + OBJC_IVAR____TtCC8Stickers18CoreDataDataMapper6Remove_signposter);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F373DB19C6RemoveCMa()
{
  result = qword_1EBA913F8;
  if (!qword_1EBA913F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8A1B598()
{
  result = qword_1EBA91AC0;
  if (!qword_1EBA91AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91AB8, &unk_1B8A265F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91AC0);
  }

  return result;
}

id sub_1B8A1B600(__int128 *a1)
{
  v2 = a1[3];
  v18 = a1[2];
  v19 = v2;
  v20 = *(a1 + 64);
  v3 = a1[1];
  v16 = *a1;
  v17 = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v5 = sub_1B8A23EF4();
  v6 = [v4 initWithEntityName_];

  if (*(&v17 + 1))
  {
    v10 = *a1;
    v11 = *(a1 + 2);
    v12 = *(&v17 + 1);
    v7 = a1[3];
    v13 = a1[2];
    v14 = v7;
    v15 = *(a1 + 64);
    sub_1B8A1B6EC(&v16, v9);
    sub_1B89AE6C8(&v10, v6);
    sub_1B8A1B75C(&v16);
  }

  return v6;
}

uint64_t sub_1B8A1B6EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92260, &qword_1B8A29650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A1B75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92260, &qword_1B8A29650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Sticker.AttributionInfo.__allocating_init(adamID:bundleIdentifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v11[OBJC_IVAR___STKStickerAttributionInfo_adamID] = a1;
  swift_beginAccess();
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR___STKStickerAttributionInfo_name];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

void *Sticker.AttributionInfo.adamID.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v2 = v1;
  return v1;
}

uint64_t sub_1B8A1B948()
{
  v1 = (v0 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B8A1BA1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B8A1BA7C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t Sticker.AttributionInfo.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKStickerAttributionInfo_name);
  v2 = *(v0 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);

  return v1;
}

uint64_t sub_1B8A1BBF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000001B8A29B50;
  v5 = 0xE400000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000001B8A29B50;
  }

  else
  {
    v3 = 1701667182;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x44496D616461;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 1701667182;
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x44496D616461;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B8A24954();
  }

  return v11 & 1;
}

uint64_t sub_1B8A1BCDC()
{
  v1 = *v0;
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

uint64_t sub_1B8A1BD78()
{
  *v0;
  *v0;
  sub_1B8A23F94();
}

uint64_t sub_1B8A1BE00()
{
  v1 = *v0;
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

uint64_t sub_1B8A1BE98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B8A1D4DC();
  *a2 = result;
  return result;
}

void sub_1B8A1BEC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x80000001B8A29B50;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 1701667182;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x44496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1B8A1BF20()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 1701667182;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D616461;
  }
}

uint64_t sub_1B8A1BF74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8A1D4DC();
  *a1 = result;
  return result;
}

uint64_t sub_1B8A1BF9C(uint64_t a1)
{
  v2 = sub_1B8A1C9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A1BFD8(uint64_t a1)
{
  v2 = sub_1B8A1C9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.AttributionInfo.init(adamID:bundleIdentifier:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = &v5[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v5[OBJC_IVAR___STKStickerAttributionInfo_adamID] = a1;
  swift_beginAccess();
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = &v5[OBJC_IVAR___STKStickerAttributionInfo_name];
  *v11 = a4;
  *(v11 + 1) = a5;
  v13.receiver = v5;
  v13.super_class = type metadata accessor for Sticker.AttributionInfo();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_1B8A1C0D8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_1B8A1571C(a1, v23);
  if (!v24)
  {
    sub_1B8A0B308(v23);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v5 = *&v22[OBJC_IVAR___STKStickerAttributionInfo_adamID];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_23;
    }

    sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
    v6 = v5;
    v7 = v4;
    v8 = sub_1B8A24404();

    if ((v8 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v5)
  {
    goto LABEL_23;
  }

  v9 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = &v22[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  swift_beginAccess();
  v13 = *(v12 + 1);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v10 == *v12 && v11 == v13;
    if (!v14 && (sub_1B8A24954() & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (v13)
  {
    goto LABEL_23;
  }

  v15 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_name);
  v16 = *(v2 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);
  v17 = *&v22[OBJC_IVAR___STKStickerAttributionInfo_name + 8];
  if (!v16)
  {
    v19 = *&v22[OBJC_IVAR___STKStickerAttributionInfo_name + 8];

    if (v17)
    {

      return 0;
    }

    return 1;
  }

  if (!v17)
  {
LABEL_23:

    return 0;
  }

  if (*v15 == *&v22[OBJC_IVAR___STKStickerAttributionInfo_name] && v16 == v17)
  {

    return 1;
  }

  v20 = *&v22[OBJC_IVAR___STKStickerAttributionInfo_name + 8];
  v21 = sub_1B8A24954();

  result = 0;
  if (v21)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B8A1C37C()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___STKStickerAttributionInfo_adamID))
  {
    v2 = sub_1B8A24424();
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v3 = MEMORY[0x1B8CC3E90](*(v0 + OBJC_IVAR___STKStickerAttributionInfo_name));
  }

  else
  {
    v3 = 0;
  }

  v4 = (v1 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;

    v7 = MEMORY[0x1B8CC3E90](v6, v5);
  }

  else
  {
    v7 = 0;
  }

  return v3 ^ v2 ^ v7;
}

uint64_t Sticker.AttributionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  sub_1B89AB538(0, &qword_1EBA91480, 0x1E696AD98);
  *v4 = 0;
  v4[1] = 0;
  v5 = sub_1B8A243B4();
  if (v5)
  {
    v6 = v5;
    sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
    v7 = sub_1B8A243B4();
    if (v7)
    {
      v11 = 0;
      v12 = 0;
      v8 = v7;
      sub_1B8A23F14();
    }
  }

  else
  {
  }

  v9 = v4[1];

  type metadata accessor for Sticker.AttributionInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

char *Sticker.AttributionInfo.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92290, &qword_1B8A29658);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - v6;
  v8 = v1;
  v9 = &v1[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  v30 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v11);
  sub_1B8A1C9A0();
  sub_1B8A24A54();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);
    v16 = v10[1];

    type metadata accessor for Sticker.AttributionInfo();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v29;
    v32 = 0;
    v14 = sub_1B8A24804();
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    }

    *&v1[OBJC_IVAR___STKStickerAttributionInfo_adamID] = v18;
    v32 = 1;
    v19 = sub_1B8A247C4();
    v21 = v20;
    swift_beginAccess();
    v22 = v10[1];
    *v10 = v19;
    v10[1] = v21;

    v33 = 2;
    v23 = sub_1B8A247C4();
    v25 = v24;
    (*(v13 + 8))(v7, v4);
    v26 = &v8[OBJC_IVAR___STKStickerAttributionInfo_name];
    *v26 = v23;
    v26[1] = v25;
    v27 = type metadata accessor for Sticker.AttributionInfo();
    v31.receiver = v8;
    v31.super_class = v27;
    v8 = objc_msgSendSuper2(&v31, sel_init);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  return v8;
}

unint64_t sub_1B8A1C9A0()
{
  result = qword_1ED82DC28;
  if (!qword_1ED82DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC28);
  }

  return result;
}

void sub_1B8A1C9F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  v4 = sub_1B8A23EF4();
  [a1 encodeObject:v3 forKey:v4];

  v5 = (v1 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;

    v7 = sub_1B8A23EF4();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B8A23EF4();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v9 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v10 = sub_1B8A23EF4();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B8A23EF4();
  [a1 encodeObject:v10 forKey:v11];
  swift_unknownObjectRelease();
}

void sub_1B8A1CBC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922A0, &qword_1B8A29660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A1C9A0();
  sub_1B8A24A64();
  v11 = *(v3 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  if (v11)
  {
    v12 = v11;
    [v12 longLongValue];
    v17 = 0;
    sub_1B8A24904();
    if (v2)
    {
      (*(v6 + 8))(v9, v5);

      return;
    }
  }

  v13 = OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier;
  swift_beginAccess();
  v16 = *(v3 + v13);
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922A8, &qword_1B8A29668);
  sub_1B8A1CDF8();
  sub_1B8A248F4();
  if (!v2)
  {
    v16 = *(v3 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v15 = 2;
    sub_1B8A248F4();
  }

  (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B8A1CDF8()
{
  result = qword_1EBA911C0;
  if (!qword_1EBA911C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922A8, &qword_1B8A29668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA911C0);
  }

  return result;
}

unint64_t sub_1B8A1CEDC()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  sub_1B8A24634();

  v3 = (v0 + OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v4, v5);

  MEMORY[0x1B8CC3E20](0x223D656D616E20, 0xE700000000000000);
  if (*(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8))
  {
    v6 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_name);
    v7 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_name + 8);
  }

  else
  {
    v7 = 0xE500000000000000;
    v6 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1B8CC3E20](v6, v7);

  MEMORY[0x1B8CC3E20](0x496D616461202229, 0xEB00000000223D44);
  v8 = *(v1 + OBJC_IVAR___STKStickerAttributionInfo_adamID);
  if (v8)
  {
    v9 = [v8 description];
    v2 = sub_1B8A23F24();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B8CC3E20](v2, v11);

  MEMORY[0x1B8CC3E20](15906, 0xE200000000000000);
  return 0xD000000000000012;
}

id Sticker.AttributionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Sticker.AttributionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker.AttributionInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1B8A1D1CC@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker.AttributionInfo());
  result = Sticker.AttributionInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B8A1D3D8()
{
  result = qword_1EBA922B0;
  if (!qword_1EBA922B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA922B0);
  }

  return result;
}

unint64_t sub_1B8A1D430()
{
  result = qword_1ED82DC08;
  if (!qword_1ED82DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC08);
  }

  return result;
}

unint64_t sub_1B8A1D488()
{
  result = qword_1ED82DC10[0];
  if (!qword_1ED82DC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED82DC10);
  }

  return result;
}

uint64_t sub_1B8A1D4DC()
{
  v0 = sub_1B8A24794();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B8A1D528()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95ED8);
  __swift_project_value_buffer(v0, qword_1EBA95ED8);
  return sub_1B8A23BB4();
}

id sub_1B8A1D5FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v52 = *(v0 - 1);
  v53 = v0;
  v1 = *(v52 + 64);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v45 - v4;
  v5 = sub_1B8A23784();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - v10;
  v12 = CPSharedResourcesDirectory();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B8A23F34();
    v16 = v15;
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1B8A24634();

    v55 = v14;
    v56 = v16;
    MEMORY[0x1B8CC3E20](0xD00000000000001ELL, 0x80000001B8A2BF60);
    sub_1B8A236C4();

    v17 = OBJC_IVAR___STKStickerUsageManager_serializationLocation;
    v18 = v6[4];
    v19 = v51;
    v18(&v51[OBJC_IVAR___STKStickerUsageManager_serializationLocation], v11, v5);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1B8A24634();

    v55 = v14;
    v56 = v16;
    MEMORY[0x1B8CC3E20](0xD00000000000002CLL, 0x80000001B8A2BF80);
    sub_1B8A236C4();

    v18(&v19[OBJC_IVAR___STKStickerUsageManager_serializationContextLocation], v11, v5);
    v20 = [objc_opt_self() defaultManager];
    v21 = v11;
    v22 = v6[2];
    v22(v21, &v19[v17], v5);
    sub_1B8A23734();
    v23 = v6[1];
    v45 = v21;
    v48 = v23;
    v49 = v6 + 1;
    v23(v21, v5);
    v24 = sub_1B8A23EF4();

    LODWORD(v16) = [v20 fileExistsAtPath_];

    v25 = v19;
    if (v16)
    {
      v26 = v46;
      v22(v46, &v19[v17], v5);
      sub_1B8A23794();
      v48(v26, v5);
      sub_1B8A1F0C0();
      v27 = v47;
      v28 = v53;
      sub_1B8A23E04();
      (*(v52 + 32))(&v19[OBJC_IVAR___STKStickerUsageManager_dictionary], v27, v28);
    }

    else
    {
      v29 = v5;
      sub_1B8A23E54();
      sub_1B8A1F078(&qword_1EBA911D0, MEMORY[0x1E69954A8]);
      v30 = v50;
      sub_1B8A23D94();
      (*(v52 + 32))(&v19[OBJC_IVAR___STKStickerUsageManager_dictionary], v30, v53);
      if (qword_1EBA91318 != -1)
      {
        swift_once();
      }

      v31 = sub_1B8A23BC4();
      __swift_project_value_buffer(v31, qword_1EBA95ED8);
      v32 = v19;
      v33 = sub_1B8A23BA4();
      v34 = sub_1B8A24214();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v55 = v53;
        *v35 = 136315138;
        v36 = &v19[v17];
        v37 = v45;
        v22(v45, v36, v29);
        sub_1B8A1F078(&qword_1EBA91468, MEMORY[0x1E6968FB0]);
        v38 = sub_1B8A24934();
        v40 = v39;
        v48(v37, v29);
        v41 = sub_1B89A907C(v38, v40, &v55);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_1B89A7000, v33, v34, "StickerUsageManager init no file exists at: %s", v35, 0xCu);
        v42 = v53;
        __swift_destroy_boxed_opaque_existential_0(v53);
        MEMORY[0x1B8CC5170](v42, -1, -1);
        MEMORY[0x1B8CC5170](v35, -1, -1);
      }
    }

    v43 = type metadata accessor for StickerUsageManager();
    v54.receiver = v25;
    v54.super_class = v43;
    return objc_msgSendSuper2(&v54, sel_init);
  }

  else
  {
    __break(1u);
    v48(v6, v5);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

id sub_1B8A1DE90()
{
  result = [objc_allocWithZone(type metadata accessor for StickerUsageManager()) init];
  qword_1EBA91348 = result;
  return result;
}

id static StickerUsageManager.sharedManager.getter()
{
  if (qword_1EBA91340 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBA91348;

  return v1;
}

void sub_1B8A1DF20(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v40[0] = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v40 - v17;
  if (qword_1EBA91318 != -1)
  {
    swift_once();
  }

  v19 = sub_1B8A23BC4();
  __swift_project_value_buffer(v19, qword_1EBA95ED8);

  v20 = sub_1B8A23BA4();
  v21 = sub_1B8A24244();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v25 = a1;
    v26 = v24;
    v43[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_1B89A907C(v25, a2, v43);
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_1B89A907C(v41, a4, v43);
    _os_log_impl(&dword_1B89A7000, v20, v21, "StickerUsageManager logSticker %s bundleIdentifier %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC5170](v26, -1, -1);
    v27 = v23;
    a3 = v41;
    MEMORY[0x1B8CC5170](v27, -1, -1);
  }

  v28 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  v29 = v40[1];
  swift_beginAccess();
  (*(v15 + 16))(v18, v29 + v28, v14);
  v43[0] = a3;
  v43[1] = a4;
  sub_1B8A23DC4();
  (*(v15 + 8))(v18, v14);
  v30 = sub_1B8A23E54();
  v31 = *(v30 - 8);
  v41 = v14;
  v32 = a3;
  v33 = v31;
  v34 = *(v31 + 48);
  v35 = v34(v13, 1, v30);
  sub_1B89A8A78(v13, &qword_1EBA922B8, &qword_1B8A29840);
  if (v35 == 1)
  {

    v36 = v40[0];
    sub_1B8A23E64();
    (*(v33 + 56))(v36, 0, 1, v30);
    v42[0] = v32;
    v42[1] = a4;
    swift_beginAccess();
    sub_1B8A23DD4();
    swift_endAccess();
  }

  v37 = sub_1B8A1D59C();
  v42[4] = v32;
  v42[5] = a4;
  v38 = sub_1B8A23DB4();
  if (!v34(v39, 1, v30))
  {
    sub_1B8A23E44();
  }

  v38(v42, 0);

  (v37)(v43, 0);
  sub_1B8A1E78C();
}

uint64_t sub_1B8A1E44C(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = sub_1B8A23E54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  v20 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  swift_beginAccess();
  (*(v16 + 16))(v19, v2 + v20, v15);
  v26 = v24;
  v27 = v25;
  sub_1B8A23DC4();
  (*(v16 + 8))(v19, v15);
  sub_1B8A1EDAC(v14, v12);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    sub_1B89A8A78(v14, &qword_1EBA922B8, &qword_1B8A29840);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v22 = sub_1B8A23E34();
    (*(v4 + 8))(v7, v3);
    sub_1B89A8A78(v14, &qword_1EBA922B8, &qword_1B8A29840);
    result = v22;
    if (v22 < 0)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1B8A1E78C()
{
  v1 = v0;
  v2 = sub_1B8A23DE4();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922C0, &qword_1B8A29848);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_1B8A23784();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8A23E24();
  (*(v15 + 16))(v18, v1 + OBJC_IVAR___STKStickerUsageManager_serializationContextLocation, v14);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  (*(v15 + 56))(v13, 1, 1, v14);
  v19 = sub_1B8A23E14();
  v20 = OBJC_IVAR___STKStickerUsageManager_dictionary;
  swift_beginAccess();
  (*(v27 + 16))(v9, v1 + v20, v6);
  v21 = v26;
  (*(v26 + 104))(v5, *MEMORY[0x1E6995288], v2);
  sub_1B8A1F0C0();
  v22 = sub_1B8A23DF4();
  v24 = v23;
  (*(v21 + 8))(v5, v2);
  (*(v27 + 8))(v9, v6);
  sub_1B8A237D4();
  sub_1B89AFC38(v22, v24);
}

id StickerUsageManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerUsageManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A1EDAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922B8, &qword_1B8A29840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StickerUsageManager()
{
  result = qword_1EBA91308;
  if (!qword_1EBA91308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A1EE70()
{
  sub_1B8A1EFBC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1B8A23784();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B8A1EFBC()
{
  if (!qword_1EBA911D8)
  {
    sub_1B8A23E54();
    sub_1B8A1F078(&qword_1EBA911D0, MEMORY[0x1E69954A8]);
    v0 = sub_1B8A23DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA911D8);
    }
  }
}

uint64_t sub_1B8A1F078(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8A1F0C0()
{
  result = qword_1EBA922C8;
  if (!qword_1EBA922C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922C0, &qword_1B8A29848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA922C8);
  }

  return result;
}

uint64_t sub_1B8A1F124()
{
  type metadata accessor for EmojiRecency();
  v0 = swift_allocObject();
  result = EmojiRecency.init()();
  qword_1ED82DE60 = v0;
  return result;
}

uint64_t EmojiRecency.__allocating_init()()
{
  v0 = swift_allocObject();
  EmojiRecency.init()();
  return v0;
}

uint64_t static EmojiRecency.shared.getter()
{
  if (qword_1ED82DE58 != -1)
  {
    swift_once();
  }
}

uint64_t EmojiRecency.init()()
{
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E699BAF0]) initWithMachName_];
  type metadata accessor for RecencyChangeObservers();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  swift_weakInit();

  sub_1B8A1F5F0(sub_1B8A1F548, v2);

  return v0;
}

uint64_t sub_1B8A1F2D8(uint64_t a1)
{
  [*(v1 + 16) readEmojiDefaults];
  v3 = [*(v1 + 16) recentEmojis];
  sub_1B8A1F6CC();
  v4 = sub_1B8A240F4();

  sub_1B89E042C(a1, v4, sub_1B8A1F3AC, 0, &v8);
  v11[0] = v8;
  v11[1] = v9;
  sub_1B89DE67C(*(&v8 + 1), v9, *(&v9 + 1), v10);
  v6 = v5;
  sub_1B8A1F7D0(v11);

  return v6;
}

void sub_1B8A1F3AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B8A23F24();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_1B8A1F40C()
{
  v1 = sub_1B8A23994();
  if ([*(v0 + 16) respondsToSelector_])
  {
    [*(v0 + 16) performSelector_];
  }

  v2 = *(v0 + 16);

  return [v2 readEmojiDefaults];
}

uint64_t sub_1B8A1F494()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1B8A23994();
    if ([*(v1 + 16) respondsToSelector_])
    {
      [*(v1 + 16) performSelector_];
    }

    [*(v1 + 16) readEmojiDefaults];
  }

  return result;
}

uint64_t EmojiRecency.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t EmojiRecency.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A1F5B8()
{
  result = sub_1B8A23EF4();
  qword_1ED82DD68 = result;
  return result;
}

void sub_1B8A1F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v2[2] = a1;
  v2[3] = a2;

  sub_1B8A10800(v3);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (v5)
  {
    v6 = qword_1ED82DD60;
    v7 = v5;
    v8 = v7;
    if (v6 != -1)
    {
      swift_once();
      v7 = v8;
    }

    CFNotificationCenterAddObserver(v7, v2, sub_1B8A1F718, qword_1ED82DD68, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B8A1F6CC()
{
  result = qword_1EBA91E50;
  if (!qword_1EBA91E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91E50);
  }

  return result;
}

void sub_1B8A1F718(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_1B8A1F8D0(a2, a3);
}

uint64_t sub_1B8A1F798()
{
  v1 = *(v0 + 24);
  sub_1B8A10800(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A1F7D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922D0, &qword_1B8A29890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B8A1F8D0(uint64_t a1, void *a2)
{
  v4 = sub_1B8A23584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    memset(v12, 0, sizeof(v12));
    v9 = a2;
    sub_1B8A23564();
    if (a1)
    {
      v10 = *(a1 + 16);

      if (v10)
      {
        v11 = *(a1 + 24);

        v10(v8);
        sub_1B8A10800(v10);

        (*(v5 + 8))(v8, v4);
      }

      else
      {
        (*(v5 + 8))(v8, v4);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1B8A1FA3C(uint64_t a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B8A23904();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_1B8A23EF4();
  v8 = [v6 initWithEntityName_];

  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8A26570;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B89AEE6C();
  *(v9 + 32) = 0x696669746E656469;
  *(v9 + 40) = 0xEA00000000007265;
  v10 = sub_1B8A238B4();
  *(v9 + 96) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  *(v9 + 104) = sub_1B89CD424();
  *(v9 + 72) = v10;
  v11 = sub_1B8A24204();
  [v8 setPredicate_];

  v42[0] = 0;
  v12 = [v8 execute_];
  v13 = v42[0];
  if (!v12)
  {
    v19 = v42[0];
    v20 = sub_1B8A23674();

    swift_willThrow();
    v21 = v20;
    v22 = sub_1B8A23BA4();
    v2 = sub_1B8A24234();

    if (os_log_type_enabled(v22, v2))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1B89A7000, v22, v2, "Could not fetch sticker: %@", v23, 0xCu);
      sub_1B89CCCE0(v24);
      MEMORY[0x1B8CC5170](v24, -1, -1);
      MEMORY[0x1B8CC5170](v23, -1, -1);
    }

    goto LABEL_16;
  }

  v14 = v12;
  type metadata accessor for ManagedSticker();
  v15 = sub_1B8A240F4();
  v16 = v13;

  if (v15 >> 62)
  {
    v27 = sub_1B8A24554();
    v17 = v41;
    if (v27)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v17 = v41;
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    (*(v17 + 16))(v5, a1, v2);
    v28 = sub_1B8A23BA4();
    v29 = sub_1B8A24234();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v17;
      v32 = swift_slowAlloc();
      v42[0] = v32;
      *v30 = 136315138;
      sub_1B89C4ECC();
      v33 = sub_1B8A24934();
      v35 = v34;
      (*(v31 + 8))(v5, v2);
      v36 = sub_1B89A907C(v33, v35, v42);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_1B89A7000, v28, v29, "Unknown sticker %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1B8CC5170](v32, -1, -1);
      MEMORY[0x1B8CC5170](v30, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v5, v2);
    }

    sub_1B89C353C();
    swift_allocError();
    *v37 = 2;
LABEL_16:
    swift_willThrow();
    goto LABEL_17;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1B8CC44E0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v18 = *(v15 + 32);
  }

  v2 = v18;

LABEL_17:
  v38 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1B8A1FFB4()
{
  v14[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v14[0] = 0;
  if ([v1 save_])
  {
    v2 = v14[0];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v4 = v14[0];
    v5 = sub_1B8A23674();

    swift_willThrow();
    v6 = v5;
    v7 = sub_1B8A23BA4();
    v8 = sub_1B8A24234();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = v5;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B89A7000, v7, v8, "Could not save sticker: %@", v9, 0xCu);
      sub_1B89CCCE0(v10);
      MEMORY[0x1B8CC5170](v10, -1, -1);
      MEMORY[0x1B8CC5170](v9, -1, -1);
    }

    else
    {
    }

    v13 = *MEMORY[0x1E69E9840];
  }
}

uint64_t _s14descr1F373DB19C6UpdateCMa()
{
  result = qword_1EBA915B8;
  if (!qword_1EBA915B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A201C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B89C3D6C(a3, v27 - v11);
  v13 = sub_1B8A24184();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B89A8A78(v12, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B8A24154();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B8A23F64() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1B8A20470()
{
  v1 = v0;
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91240);
  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24224();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B89A7000, v3, v4, "Sending activity signal. Restarting timer.", v5, 2u);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E0, &qword_1B8A29968);
  sub_1B89CCD90(&qword_1EBA91430, &qword_1EBA922E0, &qword_1B8A29968);
  return sub_1B8A23CA4();
}

uint64_t sub_1B8A205A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v47 = a3;
  v48 = a1;
  v43 = a2;
  v41 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E8, &qword_1B8A29970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922F0, &qword_1B8A29978);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v44 = v38 - v10;
  v39 = sub_1B8A242C4();
  v11 = *(v39 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B8A24284();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = sub_1B8A23D24();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v40 = sub_1B8A20DC8();
  v38[1] = "Actor";
  sub_1B8A23D04();
  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1B8A214B8(&qword_1EBA91158, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921B0, &qword_1B8A29980);
  sub_1B89CCD90(&qword_1EBA91198, &unk_1EBA921B0, &qword_1B8A29980);
  sub_1B8A244C4();
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8090], v39);
  v19 = sub_1B8A242E4();
  v20 = v41;
  *v41 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922E0, &qword_1B8A29968);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = v19;
  v25 = sub_1B8A23C84();
  v20[1] = v25;
  v26 = type metadata accessor for ActivityDebouncer();
  *(v20 + 2) = 0u;
  v20[6] = 0;
  *(v20 + 1) = 0u;
  v39 = v20 + 2;
  v27 = *(v26 + 28);
  v28 = sub_1B8A242B4();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v20 + v27, v48, v28);
  type metadata accessor for ActivityDebouncer.DebouncerActor();
  v30 = swift_allocObject();

  v31 = v47;

  swift_defaultActor_initialize();
  *(v30 + 112) = v43;
  *(v30 + 120) = v31;
  v49 = v24;
  v50[0] = v25;
  v32 = sub_1B8A24294();
  v33 = v42;
  (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
  sub_1B89CCD90(&qword_1EBA91428, &qword_1EBA922E0, &qword_1B8A29968);
  sub_1B8A214B8(&unk_1EBA91148, sub_1B8A20DC8);
  v34 = v44;
  sub_1B8A23CB4();
  sub_1B89A8A78(v33, &qword_1EBA922E8, &qword_1B8A29970);

  sub_1B89CCD90(&unk_1EBA91440, &qword_1EBA922F0, &qword_1B8A29978);

  v35 = v45;
  v36 = sub_1B8A23CC4();

  (*(v46 + 8))(v34, v35);
  v50[3] = sub_1B8A23C74();
  v50[4] = MEMORY[0x1E695BF08];

  v50[0] = v36;
  (*(v29 + 8))(v48, v28);
  return sub_1B8A21508(v50, v39);
}

uint64_t sub_1B8A20BC4()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91240);
  __swift_project_value_buffer(v0, qword_1EBA91240);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A20C44()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for ActivityDebouncer()
{
  result = qword_1EBA91360;
  if (!qword_1EBA91360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A20D14()
{
  sub_1B8A20DC8();
  if (v0 <= 0x3F)
  {
    sub_1B8A20E14();
    if (v1 <= 0x3F)
    {
      sub_1B8A20E78();
      if (v2 <= 0x3F)
      {
        sub_1B8A242B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B8A20DC8()
{
  result = qword_1EBA91140;
  if (!qword_1EBA91140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91140);
  }

  return result;
}

void sub_1B8A20E14()
{
  if (!qword_1EBA91420)
  {
    v0 = sub_1B8A23C94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA91420);
    }
  }
}

void sub_1B8A20E78()
{
  if (!qword_1EBA91438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA922D8, "xX");
    v0 = sub_1B8A24444();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA91438);
    }
  }
}

uint64_t sub_1B8A20EDC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v7 = sub_1B8A23BC4();
  __swift_project_value_buffer(v7, qword_1EBA91240);
  v8 = sub_1B8A23BA4();
  v9 = sub_1B8A24224();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B89A7000, v8, v9, "Debounce timer fired", v10, 2u);
    MEMORY[0x1B8CC5170](v10, -1, -1);
  }

  v11 = sub_1B8A24184();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;

  sub_1B8A201C0(0, 0, v6, &unk_1B8A299A0, v12);

  return sub_1B89A8A78(v6, &qword_1EBA92200, &qword_1B8A28000);
}

uint64_t sub_1B8A210DC()
{
  if (qword_1EBA91238 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8A23BC4();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1EBA91240);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Debounce task will execute", v4, 2u);
    MEMORY[0x1B8CC5170](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B8A21200, v5, 0);
}

uint64_t sub_1B8A21200()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  v6 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1B8A212EC;

  return v6();
}

uint64_t sub_1B8A212EC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8A213E8, 0, 0);
}

uint64_t sub_1B8A213E8()
{
  v1 = *(v0 + 24);
  v2 = sub_1B8A23BA4();
  v3 = sub_1B8A24224();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B89A7000, v2, v3, "Debounce task did execute", v4, 2u);
    MEMORY[0x1B8CC5170](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8A214B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8A21508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA922F8, &unk_1B8A29988);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8A21578(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89BBE18;

  return sub_1B8A210BC(a1, v4, v5, v6);
}

void sub_1B8A2162C()
{
  v0 = sub_1B8A23884();
  __swift_allocate_value_buffer(v0, qword_1EBA92300);
  v1 = __swift_project_value_buffer(v0, qword_1EBA92300);
  sub_1B8A21694(v1);
}

void sub_1B8A21694(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_1B8A23884();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v19 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v13 = sub_1B8A23EF4();
  [v12 setDateFormat_];

  v14 = objc_allocWithZone(MEMORY[0x1E695DF58]);
  v15 = sub_1B8A23EF4();
  v16 = [v14 initWithLocaleIdentifier_];

  [v12 setLocale_];
  v17 = sub_1B8A23EF4();
  v18 = [v12 dateFromString_];

  if (v18)
  {

    sub_1B8A23864();

    (*(v2 + 32))(v11, v9, v1);
    (*(v2 + 16))(v6, v11, v1);
    sub_1B8A23804();

    (*(v2 + 8))(v11, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Sticker.kGenmojiFirstBetaReleaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBA916E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23884();
  v3 = __swift_project_value_buffer(v2, qword_1EBA92300);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Sticker.RestrictedDistributionType.predicate.getter()
{
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8A28040;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1B89AEE6C();
  *(v0 + 64) = v2;
  strcpy((v0 + 32), "creationDate");
  *(v0 + 45) = 0;
  *(v0 + 46) = -5120;
  if (qword_1EBA916E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B8A23884();
  __swift_project_value_buffer(v3, qword_1EBA92300);
  v4 = sub_1B8A23834();
  *(v0 + 96) = sub_1B89AB538(0, &qword_1EBA92318, 0x1E695DF00);
  v5 = sub_1B8A21BA4();
  *(v0 + 72) = v4;
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 104) = v5;
  *(v0 + 112) = 0x6554686372616573;
  *(v0 + 120) = 0xEA00000000007478;
  return sub_1B8A24204();
}

unint64_t sub_1B8A21BA4()
{
  result = qword_1EBA92320;
  if (!qword_1EBA92320)
  {
    sub_1B89AB538(255, &qword_1EBA92318, 0x1E695DF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92320);
  }

  return result;
}

uint64_t Sticker.distributionIsRestricted.getter()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    return [v0 canDistribute] ^ 1;
  }

  return result;
}

BOOL Sticker.canDistribute.getter()
{
  if (!os_variant_has_internal_content())
  {
    return 1;
  }

  v0 = *(Sticker.distributionRestrictions.getter() + 2);

  return v0 == 0;
}

char *Sticker.distributionRestrictions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92328, &qword_1B8A299C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8A26260;
  sub_1B8A21E38((inited + 32));
  v1 = *(inited + 32);

  v2 = MEMORY[0x1E69E7CC0];
  if (v1 != 1)
  {
    v2 = sub_1B89DD420(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B89DD420((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
  }

  return v2;
}

uint64_t sub_1B8A21E38@<X0>(BOOL *a1@<X8>)
{
  result = os_variant_has_internal_content();
  if (result && (v4 = (v1 + OBJC_IVAR___STKSticker_searchText), result = swift_beginAccess(), (v5 = v4[1]) != 0) && ((v5 & 0x2000000000000000) != 0 ? (v6 = HIBYTE(v5) & 0xF) : (v6 = *v4 & 0xFFFFFFFFFFFFLL), v6))
  {
    v7 = OBJC_IVAR___STKSticker_creationDate;
    swift_beginAccess();
    v8 = *(v1 + v7);
    if (qword_1EBA916E0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8A23884();
    __swift_project_value_buffer(v9, qword_1EBA92300);
    result = sub_1B8A237F4();
    v11 = v8 >= v10;
  }

  else
  {
    v11 = 1;
  }

  *a1 = v11;
  return result;
}

uint64_t Sticker.distributionRestrictions_ObjC.getter()
{
  v0 = *(Sticker.distributionRestrictions.getter() + 2);
  if (v0)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B8A0394C(0, v0, 0);
    v1 = v5;
    v2 = *(v5 + 16);
    do
    {
      v3 = *(v5 + 24);
      if (v2 >= v3 >> 1)
      {
        sub_1B8A0394C((v3 > 1), v2 + 1, 1);
      }

      *(v5 + 16) = v2 + 1;
      *(v5 + 8 * v2++ + 32) = 0;
      --v0;
    }

    while (v0);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

unint64_t sub_1B8A22088()
{
  result = qword_1EBA92330;
  if (!qword_1EBA92330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92330);
  }

  return result;
}

char *sub_1B8A220FC()
{
  v1 = OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager;
  if (*&v0[OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager];
  }

  else
  {
    v3 = type metadata accessor for SpotlightFailedIndexingManager();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v0;
    v7 = v0;
    v2 = sub_1B8A0BBE8(v0);
    v8 = *&v0[v1];
    *&v7[v1] = v2;
  }

  return v2;
}

void *sub_1B8A22184(void *a1)
{
  type metadata accessor for ManagedRepresentation();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
LABEL_9:
    v12 = a1;
    v13 = sub_1B8A23BA4();
    v14 = sub_1B8A24224();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v45 = v16;
      *v15 = 136315138;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_1B8A23F24();
      v21 = v20;

      v22 = sub_1B89A907C(v19, v21, &v45);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_1B89A7000, v13, v14, "Ignoring indexing of sticker object since it is not a still formatted representation: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CC5170](v16, -1, -1);
      MEMORY[0x1B8CC5170](v15, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  v4 = a1;
  v5 = [v3 role];
  if (!v5)
  {
LABEL_8:

    goto LABEL_9;
  }

  v6 = v5;
  v7 = sub_1B8A23F24();
  v9 = v8;

  if (v7 == 0xD00000000000001DLL && 0x80000001B8A2A270 == v9)
  {
  }

  else
  {
    v11 = sub_1B8A24954();

    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v24 = [v3 sticker];
  if (!v24)
  {
    v39 = v4;
    v40 = sub_1B8A23BA4();
    v41 = sub_1B8A24224();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v3;
      *v43 = v3;
      v44 = v39;
      _os_log_impl(&dword_1B89A7000, v40, v41, "Parent object unavailable; will queue for future reindexing: %@", v42, 0xCu);
      sub_1B89A8A78(v43, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v43, -1, -1);
      MEMORY[0x1B8CC5170](v42, -1, -1);
    }

    sub_1B8A220FC();
    sub_1B8A0CD64(v3);

    return 0;
  }

  v25 = v24;
  v26 = [v3 sticker];
  if (!v26 || (v27 = v26, v28 = [v26 type], v27, v28 != 1))
  {
    v36 = sub_1B8A23BA4();
    v37 = sub_1B8A24224();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1B89A7000, v36, v37, "Item is not a user sticker. Ignoring request for attributes.", v38, 2u);
      MEMORY[0x1B8CC5170](v38, -1, -1);
    }

    return 0;
  }

  v29 = v4;
  v30 = sub_1B8A23BA4();
  v31 = sub_1B8A24224();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v3;
    *v33 = v3;
    v34 = v29;
    _os_log_impl(&dword_1B89A7000, v30, v31, "Will index %@", v32, 0xCu);
    sub_1B89A8A78(v33, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v33, -1, -1);
    MEMORY[0x1B8CC5170](v32, -1, -1);
  }

  v35 = sub_1B8A226A8(v3);
  return v35;
}

void *sub_1B8A226A8(void *a1)
{
  v3 = sub_1B8A23884();
  v97 = *(v3 - 8);
  v4 = v97[8];
  MEMORY[0x1EEE9AC00](v3);
  v6 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8A23904();
  v99 = *(v7 - 8);
  v8 = *(v99 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v98 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v100 = v93 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91EB8, &unk_1B8A28100);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v93 - v14;
  v16 = sub_1B8A23AD4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [a1 uti];
  if (!v21)
  {
    v27 = sub_1B8A23BA4();
    v35 = sub_1B8A24234();
    if (!os_log_type_enabled(v27, v35))
    {
LABEL_18:

      return 0;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B89A7000, v27, v35, ".uti is nil -- this record is probably syncing down for the first time", v36, 2u);
    v34 = v36;
LABEL_7:
    MEMORY[0x1B8CC5170](v34, -1, -1);
    goto LABEL_18;
  }

  v22 = v21;
  v95 = v7;
  v96 = v20;
  v23 = sub_1B8A23F24();
  v25 = v24;

  sub_1B8A23AE4();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1B89A8A78(v15, &qword_1EBA91EB8, &unk_1B8A28100);

    v26 = a1;
    v27 = sub_1B8A23BA4();
    v28 = sub_1B8A24234();

    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_18;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v101 = v31;
    *v29 = 136315394;
    v32 = sub_1B89A907C(v23, v25, &v101);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v26;
    *v30 = v26;
    v33 = v26;
    _os_log_impl(&dword_1B89A7000, v27, v28, "Could not create UTType from %s for %@", v29, 0x16u);
    sub_1B89A8A78(v30, &qword_1EBA919E0, &qword_1B8A262D0);
    MEMORY[0x1B8CC5170](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x1B8CC5170](v31, -1, -1);
    v34 = v29;
    goto LABEL_7;
  }

  v37 = v96;
  (*(v17 + 32))(v96, v15, v16);
  v38 = [a1 identifier];
  if (!v38)
  {
    v77 = a1;
    v78 = sub_1B8A23BA4();
    v79 = sub_1B8A24234();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v17;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      *(v81 + 4) = v77;
      *v82 = v77;
      v83 = v77;
      _os_log_impl(&dword_1B89A7000, v78, v79, ".identifier is nil -- this record is probably syncing down for the first time: %@", v81, 0xCu);
      sub_1B89A8A78(v82, &qword_1EBA919E0, &qword_1B8A262D0);
      MEMORY[0x1B8CC5170](v82, -1, -1);
      v84 = v81;
      v17 = v80;
      v37 = v96;
      MEMORY[0x1B8CC5170](v84, -1, -1);
    }

    goto LABEL_29;
  }

  v39 = v38;
  sub_1B8A238D4();

  v40 = [a1 sticker];
  if (!v40)
  {
    v85 = sub_1B8A23BA4();
    v86 = sub_1B8A24234();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_1B89A7000, v85, v86, ".sticker is nil -- this record is probably syncing down for the first time", v87, 2u);
      MEMORY[0x1B8CC5170](v87, -1, -1);
    }

    goto LABEL_28;
  }

  v41 = v40;
  v42 = [v40 identifier];
  if (!v42)
  {
    v88 = sub_1B8A23BA4();
    v89 = sub_1B8A24234();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_1B89A7000, v88, v89, "sticker.identifier is nil -- this record is probably syncing down for the first time", v90, 2u);
      MEMORY[0x1B8CC5170](v90, -1, -1);
    }

LABEL_28:
    (*(v99 + 8))(v100, v95);
LABEL_29:
    (*(v17 + 8))(v37, v16);
    return 0;
  }

  v93[1] = v1;
  v94 = v17;
  v43 = v42;
  sub_1B8A238D4();

  v44 = objc_allocWithZone(MEMORY[0x1E6964E90]);
  v45 = sub_1B8A23AC4();
  v46 = v41;
  v47 = [v44 initWithContentType_];

  sub_1B8A238A4();
  v48 = sub_1B8A23EF4();

  [v47 setIdentifier_];

  sub_1B8A238A4();
  v49 = sub_1B8A23EF4();

  v50 = sub_1B8A23EF4();
  [v47 setAttribute:v49 forKey:v50];

  [a1 byteCount];
  v51 = sub_1B8A24A04();
  v52 = sub_1B8A23EF4();
  [v47 setAttribute:v51 forKey:v52];

  sub_1B89AEE20();
  v53 = sub_1B8A243D4();
  [v47 setEligibleForPhotosProcessing_];

  [v46 lastUsedDate];
  sub_1B8A237E4();
  v54 = sub_1B8A23834();
  v55 = v97[1];
  v55(v6, v3);
  [v47 setLastUsedDate_];

  [v46 creationDate];
  sub_1B8A237E4();
  v56 = sub_1B8A23834();
  v55(v6, v3);
  [v47 setContentCreationDate_];

  v97 = v46;
  v57 = [v46 searchText];
  if (v57)
  {
    v58 = v57;
    v59 = sub_1B8A23EF4();
    [v47 setAttribute:v58 forKey:v59];
  }

  v60 = [v97 accessibilityName];
  if (v60)
  {
    v61 = v60;
    v62 = sub_1B8A23EF4();
    [v47 setAttribute:v61 forKey:v62];
  }

  v63 = v47;
  v64 = sub_1B8A23BA4();
  v65 = sub_1B8A24224();
  v66 = v63;

  if (os_log_type_enabled(v64, v65))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v101 = v68;
    *v67 = 136315138;
    v93[0] = v66;
    v69 = [v66 attributeDictionary];
    sub_1B8A23E74();

    v70 = sub_1B8A23E84();
    v72 = v71;

    v73 = sub_1B89A907C(v70, v72, &v101);

    *(v67 + 4) = v73;
    _os_log_impl(&dword_1B89A7000, v64, v65, "Attributes: %s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x1B8CC5170](v68, -1, -1);
    MEMORY[0x1B8CC5170](v67, -1, -1);

    v74 = *(v99 + 8);
    v75 = v95;
    v74(v98, v95);
    v74(v100, v75);
    (*(v94 + 8))(v96, v16);
    return v93[0];
  }

  else
  {

    v91 = *(v99 + 8);
    v92 = v95;
    v91(v98, v95);
    v91(v100, v92);
    (*(v94 + 8))(v96, v16);
    return v66;
  }
}

id sub_1B8A2334C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerSpotlightDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StickerSpotlightDelegate()
{
  result = qword_1EBA91548;
  if (!qword_1EBA91548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8A23454()
{
  result = sub_1B8A23BC4();
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