uint64_t sub_1D8D9A35C(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D8D9A43C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v58 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  v6 = 8 * v5;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_48;
  }

  v7 = sub_1D8D461A0(a2, v57);
  while (2)
  {
    v47 = &v45;
    MEMORY[0x1EEE9AC00](v7);
    v49 = &v45 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v6);
    v8 = 0;
    v5 = v3 + 56;
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
    v50 = 0;
    v51 = (v9 + 63) >> 6;
    v52 = v3;
    v53 = v2;
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v15 = v12 | (v8 << 6);
      v16 = *(v3 + 48);
      v54 = v15;
      v17 = *(v16 + 8 * v15);
      v6 = [v17 entity];
      v18 = [v6 name];

      if (!v18)
      {
        goto LABEL_27;
      }

      v19 = v17;
      v56 = v11;
      v20 = v2[1];
      v6 = sub_1D917820C();
      v22 = v21;

      if (*(v20 + 16))
      {
        v23 = *(v20 + 40);
        sub_1D9179DBC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v24 = sub_1D9179E1C();
        v25 = -1 << *(v20 + 32);
        v26 = v24 & ~v25;
        if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
LABEL_24:

          goto LABEL_37;
        }

        v27 = ~v25;
        while (1)
        {
          v28 = (*(v20 + 48) + 16 * v26);
          v29 = *v28 == v6 && v28[1] == v22;
          if (v29 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v3 = v52;
        v2 = v53;
        v11 = v56;
        v17 = v19;
LABEL_27:
        v30 = v2;
        v31 = *v2;
        if (v31)
        {
          v32 = [v17 objectID];
          if ((v31 & 0xC000000000000001) != 0)
          {
            v33 = v32;
            v6 = sub_1D917939C();

            v2 = v30;
            if (v6)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v6 = v32;
            v46 = v17;
            if (*(v31 + 16))
            {
              v56 = v11;
              v55 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
              v34 = *(v31 + 40);
              v17 = v6;
              v35 = sub_1D917913C();
              v36 = -1 << *(v31 + 32);
              v6 = v35 & ~v36;
              if ((*(v31 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
              {
                v37 = ~v36;
                while (1)
                {
                  v38 = *(*(v31 + 48) + 8 * v6);
                  v39 = sub_1D917914C();

                  if (v39)
                  {
                    break;
                  }

                  v6 = (v6 + 1) & v37;
                  if (((*(v31 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
                  {
                    goto LABEL_36;
                  }
                }

                v3 = v52;
                v2 = v53;
                v11 = v56;
                goto LABEL_41;
              }

LABEL_36:

LABEL_37:
              v3 = v52;
              v2 = v53;
              v11 = v56;
            }

            else
            {

              v2 = v30;
            }
          }
        }

        else
        {
          v2 = v30;
LABEL_41:

LABEL_42:
          *&v49[(v54 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v54;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
LABEL_45:
            v41 = sub_1D8D9ADFC(v49, v48, v50, v3);
            goto LABEL_46;
          }
        }
      }

      else
      {

        v11 = v56;
      }
    }

    v13 = v8;
    while (1)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v8 >= v51)
      {
        goto LABEL_45;
      }

      v14 = *(v5 + 8 * v8);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_48:
    sub_1D8D461A0(v2, v57);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v44 = swift_slowAlloc();
  sub_1D8D461A0(v2, v57);
  v41 = sub_1D8F3CAF8(v44, v5, v3, v2);

  MEMORY[0x1DA72CB90](v44, -1, -1);
LABEL_46:
  sub_1D8D9AE34(v2);
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

id sub_1D8D9A97C()
{
  result = [objc_allocWithZone(type metadata accessor for AnalyticsIdentifierManager()) init];
  qword_1EDCD2A80 = result;
  return result;
}

uint64_t sub_1D8D9A9AC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D8D9A43C(a1, a2);
  }

  v3 = MEMORY[0x1E69E7CD0];
  v49 = MEMORY[0x1E69E7CD0];
  sub_1D8D461A0(a2, v47);
  sub_1D917931C();
  v4 = sub_1D917938C();
  if (v4)
  {
    v46 = v2;
    v5 = v4;
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v6 = v5;
    v2 = v46;
    do
    {
      v47[0] = v6;
      swift_dynamicCast();
      v7 = v48;
      v8 = [v48 entity];
      v9 = [v8 name];

      if (v9)
      {
        v10 = v2[1];
        v11 = sub_1D917820C();
        v13 = v12;

        if (!*(v10 + 16) || (v14 = *(v10 + 40), sub_1D9179DBC(), _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0(), v15 = sub_1D9179E1C(), v16 = -1 << *(v10 + 32), v17 = v15 & ~v16, ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0))
        {
LABEL_4:

          goto LABEL_5;
        }

        v18 = ~v16;
        while (1)
        {
          v19 = (*(v10 + 48) + 16 * v17);
          v20 = *v19 == v11 && v19[1] == v13;
          if (v20 || (sub_1D9179ACC() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      v21 = *v2;
      if (!*v2)
      {
        goto LABEL_22;
      }

      v22 = [v7 objectID];
      v23 = v22;
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = v22;
        v25 = sub_1D917939C();

        if (v25)
        {
          goto LABEL_22;
        }
      }

      else if (*(v21 + 16))
      {
        sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
        v35 = *(v21 + 40);
        v36 = sub_1D917913C();
        v37 = -1 << *(v21 + 32);
        v38 = v36 & ~v37;
        if ((*(v21 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
        {
          v39 = ~v37;
          while (1)
          {
            v40 = *(*(v21 + 48) + 8 * v38);
            v41 = sub_1D917914C();

            if (v41)
            {
              break;
            }

            v38 = (v38 + 1) & v39;
            if (((*(v21 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v2 = v46;
LABEL_22:
          v26 = v48;
          v27 = *(v3 + 16);
          if (*(v3 + 24) <= v27)
          {
            sub_1D8EFCB04(v27 + 1);
          }

          v3 = v49;
          v28 = *(v49 + 40);
          result = sub_1D917913C();
          v30 = v3 + 56;
          v31 = -1 << *(v3 + 32);
          v32 = result & ~v31;
          v33 = v32 >> 6;
          if (((-1 << v32) & ~*(v3 + 56 + 8 * (v32 >> 6))) != 0)
          {
            v34 = __clz(__rbit64((-1 << v32) & ~*(v3 + 56 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v42 = 0;
            v43 = (63 - v31) >> 6;
            do
            {
              if (++v33 == v43 && (v42 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v44 = v33 == v43;
              if (v33 == v43)
              {
                v33 = 0;
              }

              v42 |= v44;
              v45 = *(v30 + 8 * v33);
            }

            while (v45 == -1);
            v34 = __clz(__rbit64(~v45)) + (v33 << 6);
          }

          *(v30 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
          *(*(v3 + 48) + 8 * v34) = v26;
          ++*(v3 + 16);
          goto LABEL_6;
        }

LABEL_31:

        v2 = v46;
      }

      else
      {
      }

LABEL_5:

LABEL_6:
      v6 = sub_1D917938C();
    }

    while (v6);
  }

  sub_1D8D9AE34(v2);
  return v3;
}

id sub_1D8D9AE64()
{
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store] = 0;
  v1 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore;
  *&v0[v1] = [objc_opt_self() ams_sharedAccountStore];
  v2 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x1E698CA58]) init];
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v0[v3] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for AnalyticsIdentifierManager();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1D8DB2F50();

  return v5;
}

char *sub_1D8D9AF48(char *a1, int64_t a2, char a3)
{
  result = sub_1D8D9AF68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D8D9AF68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F8, &qword_1D918A118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

os_log_t _MTLogCategoryDownload()
{
  v0 = os_log_create("com.apple.podcasts", "Downloads");

  return v0;
}

id PendingDownloadRemovals.init(episodesPendingDeletion:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v1[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1D8D9B144(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t PendingDownloadRemovals.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA0, &qword_1D918DE38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D91FCC();
  sub_1D9179F1C();
  v11[1] = *(v2 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA8, &qword_1D918DE40);
  sub_1D8D9395C(&qword_1ECAB0EE0);
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D8D9B2F8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1D8D9B3EC(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1D8D9B3EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46F8, &qword_1D918A118);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t OSAllocatedUnfairLock<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSAllocatedUnfairLock.current.getter(v9, v8);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1D9179BBC();
  (*(v5 + 8))(v8, a3);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

void sub_1D8D9B6E0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8D9BB54();
}

uint64_t NSUserDefaults.setCodable<A>(value:forKey:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = sub_1D91769EC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  v10 = sub_1D91769CC();
  v12 = v11;
  v13 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 setValue:v13 forKey:v14];

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F88);

  v16 = sub_1D917741C();
  v17 = sub_1D9178CEC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(a2, a3, &v21);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Stored value for key '%s'", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
    sub_1D8D7567C(v10, v12);
  }

  else
  {
    sub_1D8D7567C(v10, v12);
  }
}

uint64_t sub_1D8D9BB54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v6 - v2;
  memset(&v6[1], 0, 41);
  *&v6[0] = MEMORY[0x1E69E7CD0];
  *(&v6[0] + 1) = MEMORY[0x1E69E7CD0];
  sub_1D8D9BDC0(v6);
  sub_1D8D32494();
  v4 = sub_1D917734C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return sub_1D8D9BE38(v3);
}

uint64_t NSUserDefaults.observeChanges(for:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB360, &qword_1D91BC170);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v12 = a1;
  v13 = a2;
  v14 = v2;
  (*(v9 + 104))(&v11[-v8], *MEMORY[0x1E69E8650], v7);
  return sub_1D91788FC();
}

unint64_t sub_1D8D9BD5C()
{
  result = qword_1ECAAFE88;
  if (!qword_1ECAAFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4550, &qword_1D91BC180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAFE88);
  }

  return result;
}

uint64_t sub_1D8D9BDC0(_OWORD *a1)
{
  v3 = v1 + qword_1ECAB8650;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v11;
  *(v3 + 32) = a1[2];
  v12 = *(v3 + 56);
  *(v3 + 41) = *(a1 + 41);
  return sub_1D8D4F5BC(v4);
}

uint64_t sub_1D8D9BE38(uint64_t a1)
{
  v3 = qword_1EDCD15F8;
  swift_beginAccess();
  sub_1D8D25E44(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D8D9BE98()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8D9BF94, 0, 0);
}

uint64_t sub_1D8D9BF94()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = sub_1D917737C();
  sub_1D91773DC();
  v5 = sub_1D9178F4C();
  result = sub_1D917918C();
  if (result)
  {
    v7 = *(v0 + 48);
    if ((*(v0 + 168) & 1) == 0)
    {
      if (v7)
      {
LABEL_9:
        v8 = *(v0 + 136);
        v10 = *(v0 + 80);
        v9 = *(v0 + 88);
        v11 = *(v0 + 72);

        sub_1D917740C();

        if ((*(v10 + 88))(v9, v11) == *MEMORY[0x1E69E93E8])
        {
          v12 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
          v12 = "SUCCESS";
        }

        v13 = *(v0 + 112);
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
        v7 = (v0 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_13:
  v17 = *(v0 + 144);
  v16 = *(v0 + 152);
  v19 = *(v0 + 128);
  v18 = *(v0 + 136);
  v21 = *(v0 + 112);
  v20 = *(v0 + 120);
  v23 = *(v0 + 88);
  v22 = *(v0 + 96);

  v17(v21, v22);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D8D9C194(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8668, &qword_1D91A2218);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v28 - v17;
  v19 = a3;
  swift_unknownObjectRetain();
  v20 = a1;
  v21 = a5;
  v22 = a7;
  sub_1D917928C();
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_1D917704C();

    v23 = sub_1D917705C();
    (*(*(v23 - 8) + 56))(v18, 0, 1, v23);
  }

  else
  {
    v24 = sub_1D917705C();
    (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  }

  if (v22)
  {
    sub_1D917704C();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_1D917705C();
  (*(*(v26 - 8) + 56))(v15, v25, 1, v26);
  sub_1D8D9C3D8(v28, v18, a6);

  sub_1D8D08A50(v15, &qword_1ECAB8668, &qword_1D91A2218);
  sub_1D8D08A50(v18, &qword_1ECAB8668, &qword_1D91A2218);
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

void sub_1D8D9C3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  sub_1D8CFAD1C(a1, v12);
  v7 = *((v6 & v5) + 0x60);
  swift_dynamicCast();
  v8 = [v11 objectID];

  if ((a3 - 3) < 2)
  {
    v9 = sub_1D8D9C618();
    if (*v10)
    {
      v8 = v8;
      sub_1D8D418D4(&v11, v8);
    }

    (v9)(v12, 0);
    goto LABEL_7;
  }

  if (a3 == 1 || a3 == 2)
  {
LABEL_7:

    return;
  }

  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8D9C520()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D8D9C678()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v40 - v6;
  v8 = sub_1D917734C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v40 - v12;
  v14 = swift_allocObject();
  v15 = v0 + qword_1ECAB8650;
  swift_beginAccess();
  v16 = *(v15 + 1);
  v51[0] = *v15;
  v17 = *(v15 + 2);
  v51[1] = v16;
  v52[0] = v17;
  *(v52 + 9) = *(v15 + 41);
  if (!*&v51[0])
  {
    return swift_deallocUninitializedObject();
  }

  v46 = v1;
  *(v14 + 16) = *&v51[0];
  *(v14 + 24) = *(v15 + 8);
  *(v14 + 40) = *(v15 + 24);
  *(v14 + 56) = *(v15 + 40);
  *(v14 + 72) = v15[56];
  v18 = qword_1EDCD15F8;
  swift_beginAccess();
  sub_1D8D088B4(v0 + v18, v7, &qword_1ECAB6DE0, &qword_1D9195250);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1D8D08A50(v7, &qword_1ECAB6DE0, &qword_1D9195250);
  }

  else
  {
    v20 = v9;
    v43 = v9;
    v42 = *(v9 + 32);
    v45 = v13;
    v42(v13, v7, v8);
    v44 = *(v0 + qword_1ECAB8608);
    v41 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *(v9 + 16);
    v22 = v47;
    v21(v47, v13, v8);
    v23 = (*(v20 + 80) + 64) & ~*(v20 + 80);
    v24 = swift_allocObject();
    v40[1] = v50;
    v25 = v46;
    v26 = v46[10];
    v24[2] = v26;
    v27 = v8;
    v28 = v25[11];
    v24[3] = v28;
    v29 = v25[12];
    v24[4] = v29;
    v30 = v25[13];
    v31 = v41;
    v24[5] = v30;
    v24[6] = v31;
    v24[7] = v14;
    v32 = v22;
    v33 = v27;
    (v42)(v24 + v23, v32);
    v50[2] = sub_1D8FBD79C;
    v50[3] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v50[0] = sub_1D8CF5F60;
    v50[1] = &block_descriptor_80_1;
    v34 = _Block_copy(aBlock);
    *&v35 = v26;
    *(&v35 + 1) = v28;
    *&v36 = v29;
    *(&v36 + 1) = v30;
    v53 = v35;
    v54 = v36;
    type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher.Update();
    v37 = sub_1D91791BC();
    (*(*(v37 - 8) + 16))(&v53, v51, v37);

    [v44 performBlock_];
    _Block_release(v34);
    v54 = 0u;
    memset(v55, 0, sizeof(v55));
    v53 = 0u;
    sub_1D8D9BDC0(&v53);
    v38 = v43;
    v39 = v48;
    (*(v43 + 56))(v48, 1, 1, v33);
    sub_1D8D9BE38(v39);
    (*(v38 + 8))(v45, v33);
  }
}

uint64_t sub_1D8D9CC20()
{
  v1 = sub_1D917734C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D8D9CCEC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8D9CE64, 0, 0);
}

void sub_1D8D9CE04(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D8D9C678();
}

uint64_t sub_1D8D9CE64()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8D9CEE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D8D9CF28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D9CF7C()
{
  v1 = v0;
  result = sub_1D917669C();
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695D328];
    v37 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v5 = sub_1D8D6550C(v40), (v6 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v5, v41);
      sub_1D8D9A308(v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v7 = v0[4];
        v8 = v0[5];
        v9 = v0[2];
        v10 = v0[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v37, 0);
        v12 = v11;
        v14 = v13;

        if (*(v12 + 16))
        {
          sub_1D8E7496C(v12, v7, v8, 0);
        }

        if (*(v14 + 16))
        {
          sub_1D8E7496C(v14, v9, v10, 0);
        }
      }
    }

    else
    {
      sub_1D8D9A308(v40);
    }

    v15 = *MEMORY[0x1E695D4D0];
    v38 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v16 = sub_1D8D6550C(v40), (v17 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v16, v41);
      sub_1D8D9A308(v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v18 = v1[4];
        v19 = v1[5];
        v20 = v1[2];
        v21 = v1[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v38, 1);
        v23 = v22;
        v25 = v24;

        if (*(v23 + 16))
        {
          sub_1D8E7496C(v23, v18, v19, 1u);
        }

        if (*(v25 + 16))
        {
          sub_1D8E7496C(v25, v20, v21, 1u);
        }
      }
    }

    else
    {
      sub_1D8D9A308(v40);
    }

    v26 = *MEMORY[0x1E695D2F8];
    v39 = sub_1D917820C();
    sub_1D91793EC();
    if (*(v3 + 16) && (v27 = sub_1D8D6550C(v40), (v28 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v27, v41);
      sub_1D8D9A308(v40);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v1[4];
        v30 = v1[5];
        v31 = v1[2];
        v32 = v1[3];
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        sub_1D8D9D4E8(v39, 1);
        v34 = v33;
        v36 = v35;

        if (*(v34 + 16))
        {
          sub_1D8E7496C(v34, v29, v30, 2u);
        }

        if (*(v36 + 16))
        {
          sub_1D8E7496C(v36, v31, v32, 2u);
        }
      }
    }

    else
    {

      return sub_1D8D9A308(v40);
    }
  }

  return result;
}

void sub_1D8D9D4E8(uint64_t a1, char a2)
{
  v2 = a1;
  v37[2] = MEMORY[0x1E69E7CD0];
  v37[3] = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    sub_1D8E74DF0();
    sub_1D9178B3C();
    v2 = v37[4];
    v3 = v37[5];
    v4 = v37[6];
    v5 = v37[7];
    v6 = v37[8];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  if (!sub_1D917938C() || (sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620), swift_dynamicCast(), v15 = v37[0], v13 = v5, v14 = v6, !v37[0]))
  {
LABEL_37:
    sub_1D8D1B144();
    return;
  }

  while (1)
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = [v17 uuid];
      if (v19)
      {
        v20 = v19;
        v35 = sub_1D917820C();
        v22 = v21;

        if (a2)
        {
          swift_beginAccess();
          v23 = *(v34 + 48);
        }

        else
        {
          v23 = 0;
        }

        v24 = sub_1D8D9D894(v17, v23);

        if (v24)
        {
          sub_1D8D19AFC(v37, v35, v22);

LABEL_10:
          v5 = v13;
          v6 = v14;
          if (v2 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25 || (v26 = v25, (v27 = [v25 uuid]) == 0))
    {

      goto LABEL_10;
    }

    v6 = v14;
    v28 = v27;
    v29 = sub_1D917820C();
    v31 = v30;

    if (a2)
    {
      swift_beginAccess();
      v32 = *(v34 + 48);
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_1D8D9D894(v26, v32);

    if (v33)
    {
      sub_1D8D19AFC(v37, v29, v31);
    }

    v5 = v13;
    if (v2 < 0)
    {
      goto LABEL_17;
    }

LABEL_11:
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_15:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_37;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_37;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D9D894(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [a1 changedValues];
    v5 = sub_1D917805C();

    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v11 = 0;
    v23 = a2;
    if (v8)
    {
      while (1)
      {
        v12 = v11;
LABEL_9:
        v13 = (*(v5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
        v2 = *v13;
        v4 = v13[1];
        v24[0] = *v13;
        v24[1] = v4;
        MEMORY[0x1EEE9AC00](v10);
        v22[2] = v24;

        if (sub_1D8D9DF90(sub_1D8D9E220, v22, v23))
        {
          break;
        }

        v8 &= v8 - 1;

        v11 = v12;
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      swift_bridgeObjectRelease_n();
      v15 = qword_1EDCD0F80;

      if (v15 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          swift_bridgeObjectRelease_n();
          return 0;
        }

        v8 = *(v5 + 64 + 8 * v12);
        ++v11;
        if (v8)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_14:
    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F88);

    v17 = sub_1D917741C();
    v18 = sub_1D9178CDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v24[0] = v20;
      *v19 = 136315138;
      v21 = sub_1D8CFA924(v2, v4, v24);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_1D8CEC000, v17, v18, "Found requested key in notification: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  return 1;
}

uint64_t ArtworkRequest.resized(to:displayScale:)@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *(v5 + 9);
  v55 = *(v5 + 8);
  v56 = v9;
  v57 = *(v5 + 10);
  v10 = *(v5 + 5);
  v51 = *(v5 + 4);
  v52 = v10;
  v11 = *(v5 + 7);
  v53 = *(v5 + 6);
  v54 = v11;
  v12 = *(v5 + 1);
  v47 = *v5;
  v48 = v12;
  v13 = *(v5 + 3);
  v49 = *(v5 + 2);
  v50 = v13;
  if (a2)
  {
    v14 = v5[24];
  }

  else
  {
    v14 = a1;
  }

  v43 = *(v5 + 201);
  v44 = *(v5 + 200);
  v15 = *(v5 + 202);
  v16 = *(v5 + 26);
  v17 = *(v5 + 216);
  v18 = *(v5 + 203);
  sub_1D8D728EC((v5 + 28), v46);
  *(a3 + 224) = 0u;
  *(a3 + 201) = 16;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0;
  sub_1D8D36E5C(&v47, v45);

  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v14);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a4);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a5);
  v19 = *(&v49 + 1);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, *(&v49 + 1));
  v20 = *&v50;
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, *&v50);
  v59.width = 0.0;
  v59.height = 0.0;
  v58.width = a4;
  v58.height = a5;
  if (CGSizeEqualToSize(v58, v59))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD5E28);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v18;
      v25 = v17;
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v26, 2u);
      v27 = v26;
      v17 = v25;
      v18 = v24;
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }
  }

  if (v19 == 0.0 || v20 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917744C();
    __swift_project_value_buffer(v28, qword_1EDCD5E28);
    v29 = sub_1D917741C();
    v30 = sub_1D9178CFC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v18;
      v32 = v16;
      v33 = v15;
      v34 = v17;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v29, v30, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v35, 2u);
      v36 = v35;
      v17 = v34;
      v15 = v33;
      v16 = v32;
      v18 = v31;
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }
  }

  v37 = v56;
  *(a3 + 128) = v55;
  *(a3 + 144) = v37;
  *(a3 + 160) = v57;
  v38 = v52;
  *(a3 + 64) = v51;
  *(a3 + 80) = v38;
  v39 = v54;
  *(a3 + 96) = v53;
  *(a3 + 112) = v39;
  v40 = v48;
  *a3 = v47;
  *(a3 + 16) = v40;
  v41 = v50;
  *(a3 + 32) = v49;
  *(a3 + 48) = v41;
  *(a3 + 176) = a4;
  *(a3 + 184) = a5;
  *(a3 + 192) = v14;
  *(a3 + 200) = v44;
  *(a3 + 201) = v43;
  *(a3 + 202) = v15;
  *(a3 + 203) = v18;
  *(a3 + 208) = v16;
  *(a3 + 216) = v17;
  return sub_1D8D412B0(v46, a3 + 224);
}

uint64_t sub_1D8D9DF90(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t objectdestroy_11Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v2 = sub_1D917877C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t ArtworkRequest.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1D8D36E5C(v18, &v17);
}

uint64_t sub_1D8D9E220(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t sub_1D8D9E288(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC() & 1;
  }
}

uint64_t ArtworkRequest.withoutEffects.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D8D41388(v1, a1);
  v3 = *(a1 + 208);

  *(a1 + 208) = MEMORY[0x1E69E7CC0];
  return result;
}

void *ArtworkRequest.with(format:)@<X0>(unsigned __int8 a1@<W0>, void *a2@<X8>)
{
  if (*(v2 + 152) == a1)
  {

    return sub_1D8D41388(v2, a2);
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 144);
    v64 = *(v2 + 128);
    v65 = v6;
    v7 = *(v2 + 144);
    v66 = *(v2 + 160);
    v8 = *(v2 + 48);
    v9 = *(v2 + 80);
    v60 = *(v2 + 64);
    v61 = v9;
    v10 = *(v2 + 80);
    v11 = *(v2 + 112);
    v62 = *(v2 + 96);
    v63 = v11;
    v12 = *(v2 + 16);
    v57[0] = *v2;
    v57[1] = v12;
    v13 = *(v2 + 48);
    v15 = *v2;
    v14 = *(v2 + 16);
    v58 = *(v2 + 32);
    v59 = v13;
    *&__src[128] = v64;
    *&__src[144] = v7;
    *&__src[160] = *(v2 + 160);
    *&__src[64] = v60;
    *&__src[80] = v10;
    *&__src[96] = v62;
    *&__src[112] = v5;
    *__src = v15;
    *&__src[16] = v14;
    *&__src[32] = v58;
    *&__src[48] = v8;
    ArtworkModel.with(format:)(a1, v45);
    v67[8] = *&__src[128];
    v67[9] = *&__src[144];
    v67[10] = *&__src[160];
    v67[4] = *&__src[64];
    v67[5] = *&__src[80];
    v67[6] = *&__src[96];
    v67[7] = *&__src[112];
    v67[0] = *__src;
    v67[1] = *&__src[16];
    v67[2] = *&__src[32];
    v67[3] = *&__src[48];
    sub_1D8D36E5C(v57, &v37);
    sub_1D8DB15B0(v67);
    v68 = v45[0];
    v69 = v45[1];
    v70 = v46;
    v16 = v47;
    v17 = v48;
    v41 = v53;
    v42 = v54;
    v43 = v55;
    v44 = v56;
    v37 = v49;
    v38 = v50;
    v39 = v51;
    v40 = v52;
    v18 = *(v2 + 176);
    v19 = *(v2 + 184);
    v20 = *(v2 + 192);
    v21 = *(v2 + 201);
    v22 = *(v2 + 202);
    v23 = *(v2 + 208);
    v33 = *(v2 + 200);
    v34 = *(v2 + 216);
    v24 = *(v2 + 203);
    sub_1D8D728EC(v2 + 224, v36);
    __src[201] = 16;
    memset(&__src[224], 0, 40);

    sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v20);
    sub_1D8D410BC(0x6874646977, 0xE500000000000000, v18);
    sub_1D8D410BC(0x746867696568, 0xE600000000000000, v19);
    sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v16);
    sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v17);
    v73.width = 0.0;
    v73.height = 0.0;
    v72.width = v18;
    v72.height = v19;
    if (CGSizeEqualToSize(v72, v73))
    {
      if (qword_1EDCD5E20 != -1)
      {
        swift_once();
      }

      v25 = sub_1D917744C();
      __swift_project_value_buffer(v25, qword_1EDCD5E28);
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v28, 2u);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }
    }

    if (v16 == 0.0 || v17 == 0.0)
    {
      if (qword_1EDCD5E20 != -1)
      {
        swift_once();
      }

      v29 = sub_1D917744C();
      __swift_project_value_buffer(v29, qword_1EDCD5E28);
      v30 = sub_1D917741C();
      v31 = sub_1D9178CFC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1D8CEC000, v30, v31, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v32, 2u);
        MEMORY[0x1DA72CB90](v32, -1, -1);
      }
    }

    *__src = v68;
    *&__src[16] = v69;
    *&__src[32] = v70;
    *&__src[40] = v16;
    *&__src[48] = v17;
    *&__src[120] = v41;
    *&__src[136] = v42;
    *&__src[152] = v43;
    *&__src[168] = v44;
    *&__src[56] = v37;
    *&__src[72] = v38;
    *&__src[88] = v39;
    *&__src[104] = v40;
    *&__src[176] = v18;
    *&__src[184] = v19;
    *&__src[192] = v20;
    __src[200] = v33;
    __src[201] = v21;
    __src[202] = v22;
    __src[203] = v24;
    *&__src[208] = v23;
    __src[216] = v34;
    sub_1D8D412B0(v36, &__src[224]);
    return memcpy(a2, __src, 0x108uLL);
  }
}

uint64_t AssetMetadata.fetch<A>(source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2, v15);
  (*(v8 + 16))(v11, a1, a3);
  return sub_1D8D9E96C(v17, v11, a2, a3, a4);
}

uint64_t sub_1D8D9E96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v8 = type metadata accessor for AssetSourceStep();
  return (*(*(a4 - 8) + 32))(a5 + *(v8 + 52), a2, a4);
}

uint64_t AssetProcessingStep.fallback<A>(to:rethrow:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, v17);
  (*(v10 + 16))(v13, a1, a4);
  return FallbackProcessingStep.init(upstream:fallback:rethrow:)(v19, v13, a2, a3, a4, a5);
}

uint64_t FallbackProcessingStep.init(upstream:fallback:rethrow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for FallbackProcessingStep();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  *(a6 + *(v10 + 56)) = a3;
  return result;
}

uint64_t AssetProcessingStep.fallback<A>(source:rethrow:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a1;
  v24 = a4;
  v25 = a6;
  v29 = a2;
  v28 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  v12 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v23 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = AssociatedTypeWitness;
  v31 = a4;
  v32 = AssociatedConformanceWitness;
  v33 = a6;
  v16 = type metadata accessor for AssetSourceStep();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v23 - v20;
  (*(a5 + 40))(a3, a5, v19);
  AssetMetadata.fetch<A>(source:)(v27, AssociatedTypeWitness, v24, v21);
  (*(v26 + 8))(v14, AssociatedTypeWitness);
  swift_getWitnessTable();
  AssetProcessingStep.fallback<A>(to:rethrow:)(v21, v29, a3, v16, v28);
  return (*(v17 + 8))(v21, v16);
}

id AssetProcessingStep.receiveAndSubscribe(on:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v15 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v3, a2, v8);
  v11 = type metadata accessor for ReceiveAndSubscribeOnAssetProcessingStep();
  (*(v6 + 32))(&a3[*(v11 + 36)], v10, a2);
  v12 = v15;
  *a3 = v15;

  return v12;
}

uint64_t ArtworkRequest.replacingEffects(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8D41388(v2, a2);
  v5 = *(a2 + 208);

  *(a2 + 208) = a1;
  return result;
}

uint64_t CacheDomain.disk.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  v5 = type metadata accessor for CacheDomain.DiskCaches();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t AssetProcessingStep<>.cache<A>(_:format:overwrite:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v51 = a7;
  v52 = a8;
  v47 = a3;
  v48 = a9;
  v49 = a1;
  v50 = a10;
  v44 = a11;
  v45 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = sub_1D91791BC();
  v40 = *(v41 - 8);
  v17 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v19 = &v39 - v18;
  v43 = *(AssociatedTypeWitness - 8);
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  v24 = *(a5 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(*(a4 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v39 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33, v12, a4, v31);
  (*(v24 + 16))(v28, v49, a5);
  v54 = a4;
  v55 = a5;
  v49 = a5;
  v46 = a6;
  v56 = a6;
  v57 = v51;
  v58 = v52;
  v59 = v50;
  v60 = v44;
  v61 = v12;
  v42 = v12;
  swift_getAssociatedTypeWitness();
  sub_1D91791BC();
  sub_1D8D349E4(sub_1D8E5A928, v53, MEMORY[0x1E69E73E0], AssociatedTypeWitness, v35, v19);
  v36 = v43;
  v37 = *(v43 + 48);
  if (v37(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v46 + 40))(a4, v46);
    if (v37(v19, 1, AssociatedTypeWitness) != 1)
    {
      (*(v40 + 8))(v19, v41);
    }
  }

  else
  {
    (*(v36 + 32))(v23, v19, AssociatedTypeWitness);
  }

  return sub_1D8DA0154(v33, v28, v47 & 1, v23, AssociatedTypeWitness, a4, v49, v48);
}

uint64_t sub_1D8D9F804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8D9FA34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
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

void _s18PodcastsFoundation14RSSFeedUpdaterC24didDownloadFeedWithError_4data4task12requestedUrl18useBackgroundFetchys0I0_pSg_0B04DataVSgSo16NSURLSessionTaskCSgAK3URLVSgSbtF_0(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v50 = a1;
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v48 = sub_1D9177E0C();
  v54 = *(v48 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v57 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D9177E9C();
  v56 = *(v58 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_1D9176C2C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  sub_1D8D088B4(a5, v13, &unk_1ECAB5910, &qword_1D9188C90);
  v21 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD1070);
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Tried to perform an RSS feed update without a URL.", v25, 2u);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }
  }

  else
  {
    v26 = *(v15 + 32);
    v47 = v20;
    v26(v20, v13, v14);
    v27 = v15;
    v46 = v15;
    v28 = v49;
    v45 = *&v49[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue];
    (*(v27 + 16))(v17, v20, v21);
    v29 = (*(v27 + 80) + 24) & ~*(v27 + 80);
    v30 = (v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 16) = v28;
    v26((v32 + v29), v17, v21);
    v34 = v50;
    v33 = v51;
    *(v32 + v30) = v50;
    v35 = (v32 + v31);
    v37 = v52;
    v36 = v53;
    *v35 = v33;
    v35[1] = v37;
    *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = v36;
    aBlock[4] = sub_1D8DA04C8;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_84;
    v38 = _Block_copy(aBlock);
    v39 = v28;
    v40 = v34;
    sub_1D8DA04B0(v33, v37);
    v41 = v36;
    v42 = v55;
    sub_1D9177E4C();
    v59 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v43 = v57;
    v44 = v48;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v42, v43, v38);
    _Block_release(v38);
    (*(v54 + 8))(v43, v44);
    (*(v56 + 8))(v42, v58);
    (*(v46 + 8))(v47, v21);
  }
}

uint64_t sub_1D8DA0040()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v5 + 8);
  if (v6 >> 60 != 15)
  {
    sub_1D8D7567C(*(v0 + v5), v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DA0154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v14 = type metadata accessor for CacheAssetProcessingStep();
  (*(*(a5 - 8) + 32))(a8 + v14[20], a4, a5);
  result = (*(*(a7 - 8) + 32))(a8 + v14[19], a2, a7);
  *(a8 + v14[21]) = a3;
  return result;
}

uint64_t AssetProcessingStep<>.uniquePipeline(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(*(a2 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v4, a2, v10);

  return UniquePipeline.init(upstream:sharedCache:)(v12, a1, a2, a3, a4);
}

uint64_t UniquePipeline.init(upstream:sharedCache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UniquePipeline();
  *(a5 + *(v10 + 48)) = a2;
  v13 = *(a3 - 8);
  (*(v13 + 16))(a5 + *(v10 + 44), a1, a3);
  (*(a4 + 40))(a3, a4);
  v11 = *(v13 + 8);

  return v11(a1, a3);
}

uint64_t sub_1D8DA04B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8D752C4(a1, a2);
  }

  return a1;
}

void sub_1D8DA04C8()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8DA05F0(v6, v0 + v2, v5, v7, v8, v9);
}

uint64_t UniquePipeline.metadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 16);

  return v7(a2, v2, AssociatedTypeWitness);
}

void sub_1D8DA05F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v30 = a6;
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue);
  v17 = sub_1D9176ACC();
  v19 = sub_1D8DA0CBC(v17, v18);

  if (v19)
  {
    sub_1D8DA1170(a3, a4, a5, v30);
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD1070);
    v21 = v15;
    (*(v12 + 16))(v15, a2, v11);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 141558275;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2081;
      v26 = sub_1D9176ACC();
      v28 = v27;
      (*(v12 + 8))(v21, v11);
      v29 = sub_1D8CFA924(v26, v28, &v31);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Got a feed downloaded completion but the job does not exist in the queue for feedUrl: %{private,mask.hash}s. Cannot continue.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }
  }
}

uint64_t CacheAssetProcessingStep.publisher.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = *(a1 + 32);
  v32 = v4;
  v37 = *(v4 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 56);
  v9 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v31 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = *(a1 + 64);
  v42[0] = AssociatedTypeWitness;
  v42[1] = v4;
  v42[2] = AssociatedConformanceWitness;
  v42[3] = v15;
  v35 = type metadata accessor for Publishers.CachedAssetPublisher();
  v38 = *(v35 - 8);
  v16 = *(v38 + 64);
  v17 = MEMORY[0x1EEE9AC00](v35);
  v19 = &v31 - v18;
  (*(v8 + 48))(v9, v8, v17);
  v20 = *(a1 + 76);
  v33 = *(a1 + 80);
  v21 = v32;
  Publisher.cache<A>(location:cache:overwrite:alwaysAttemptRefresh:)(v2 + v33, v2 + v20, *(v2 + *(a1 + 84)), 0, AssociatedTypeWitness, v32, AssociatedConformanceWitness, v19);
  (*(v34 + 8))(v13, AssociatedTypeWitness);
  WitnessTable = swift_getWitnessTable();
  v23 = AssetProcessingStep.metadataTrace.getter(a1, WitnessTable, v42);
  (*(v37 + 16))(v36, v2 + v20, v21, v23);
  v40 = sub_1D917826C();
  v41 = v24;
  MEMORY[0x1DA7298F0](545005609, 0xE400000000000000);
  v25 = (*(*(a1 + 40) + 16))(*(a1 + 16));
  MEMORY[0x1DA7298F0](v25);

  v26 = v40;
  v27 = v41;
  v28 = v35;
  swift_getWitnessTable();
  v29 = j___s18PodcastsFoundation13EmitLifecycleV16defaultVerbositySbvgZ();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(v42, "Cache", 5, 2, 0, v26, v27, v29 & 1, v39, v28);

  sub_1D8D7621C(v42);
  return (*(v38 + 8))(v19, v28);
}

uint64_t sub_1D8DA0C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = UniquePipeline.publisher.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8DA0CBC(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D9177F1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 96);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1D9177F4C();
  (*(v6 + 8))(v10, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v13 = *(v2 + 112);
  if (*(v13 + 16))
  {

    v14 = sub_1D8D33C70(a1, a2);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      return v16;
    }
  }

  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1EDCD1070);

  v19 = sub_1D917741C();
  v20 = sub_1D9178CFC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    *(v21 + 14) = sub_1D8CFA924(a1, a2, &v23);
    _os_log_impl(&dword_1D8CEC000, v19, v20, "Job does not exist in the queue: %{private,mask.hash}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1DA72CB90](v22, -1, -1);
    MEMORY[0x1DA72CB90](v21, -1, -1);
  }

  return 0;
}

uint64_t UniquePipeline.publisher.getter(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v16[-v10];
  v12 = v1 + *(a1 + 44);
  (*(v4 + 48))(v5, v4, v9);
  v13 = *(v2 + *(a1 + 48));
  v17 = v5;
  v18 = v4;
  v19 = *(a1 + 32);
  v20 = v2;
  v21 = v11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917781C();
  sub_1D91780DC();
  sub_1D8D056BC(sub_1D8DA3B10, v16, v13);
  v14 = v22;
  (*(v7 + 8))(v11, AssociatedTypeWitness);
  return v14;
}

void sub_1D8DA1170(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    v8 = a1;
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD1070);
    v10 = a1;

    v11 = sub_1D917741C();
    v12 = sub_1D9178CFC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 141558531;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = v4 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
      v16 = v15 + *(type metadata accessor for FeedUpdateRequest() + 20);
      v17 = sub_1D9176ACC();
      v19 = sub_1D8CFA924(v17, v18, &aBlock);

      *(v13 + 14) = v19;
      *(v13 + 22) = 2080;
      swift_getErrorValue();
      v20 = sub_1D9179D2C();
      v22 = sub_1D8CFA924(v20, v21, &aBlock);

      *(v13 + 24) = v22;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "Job %{private,mask.hash}s: Error downloading feed: %s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    aBlock = a1;
    v41 = a4;
    v42 = 0;
    v43 = 0;
    LOBYTE(v44) = 96;
    sub_1D8DA168C(&aBlock);
  }

  else if (a3 >> 60 == 15)
  {
    sub_1D8D77098();
    v23 = swift_allocError();
    *v24 = 9;
    aBlock = v23;
    v41 = a4;
    v42 = 0;
    v43 = 0;
    LOBYTE(v44) = 96;
    sub_1D8DA168C(&aBlock);
  }

  else
  {
    sub_1D8D752C4(a2, a3);
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD1070);

    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = v4 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
      v33 = v32 + *(type metadata accessor for FeedUpdateRequest() + 20);
      v34 = sub_1D9176ACC();
      v36 = sub_1D8CFA924(v34, v35, &aBlock);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Job %{private,mask.hash}s: Successfully downloaded feed.", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    v37 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
    v38 = swift_allocObject();
    v38[2] = v5;
    v38[3] = a2;
    v38[4] = a3;
    v44 = sub_1D8F60934;
    v45 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1D8CF5F60;
    v43 = &block_descriptor_41;
    v39 = _Block_copy(&aBlock);

    sub_1D8DA04B0(a2, a3);

    [v37 performBlock_];
    _Block_release(v39);
    sub_1D8D75668(a2, a3);
  }
}

uint64_t sub_1D8DA164C()
{
  v1 = v0[2];

  sub_1D8D7567C(v0[3], v0[4]);

  return swift_deallocObject();
}

uint64_t sub_1D8DA168C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue);
  v13 = swift_allocObject();
  v14 = *(a1 + 16);
  *(v13 + 24) = *a1;
  *(v13 + 16) = v2;
  *(v13 + 40) = v14;
  *(v13 + 56) = *(a1 + 32);
  aBlock[4] = sub_1D8DA1F8C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_32;
  v15 = _Block_copy(aBlock);

  sub_1D8DA19F4(a1, v19);
  sub_1D9177E4C();
  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1D8DA1F0C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v8, v15);
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_1D8DA1988()
{
  v1 = *(v0 + 16);

  sub_1D8D7DD58(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation17RSSFeedUpdaterJobC5State33_40D298AD9317E87CF0B27FB222FDB0F4LLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t ReceiveAndSubscribeOnAssetProcessingStep.publisher.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v41 - v4;
  v5 = a1;
  v6 = *(a1 + 24);
  v7 = *(v5 + 16);
  v8 = v5;
  v42 = v5;
  v43 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v41 - v11;
  v13 = sub_1D8CFD888();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = AssociatedConformanceWitness;
  v15 = sub_1D8D02DF0();
  v52 = AssociatedTypeWitness;
  v53 = v13;
  v44 = v13;
  v54 = AssociatedConformanceWitness;
  v55 = v15;
  v16 = sub_1D91775DC();
  WitnessTable = swift_getWitnessTable();
  v52 = v16;
  v53 = v13;
  v54 = WitnessTable;
  v55 = v15;
  v18 = sub_1D917777C();
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  swift_getWitnessTable();
  v46 = type metadata accessor for EmitLifecycle();
  v48 = *(v46 - 8);
  v22 = *(v48 + 64);
  v23 = MEMORY[0x1EEE9AC00](v46);
  v25 = &v41 - v24;
  v26 = *(v8 + 36);
  v27 = v51;
  (*(v6 + 48))(v43, v6, v23);
  v52 = *v27;
  v28 = v52;
  v29 = sub_1D9178DBC();
  v30 = v47;
  (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
  v31 = v28;
  Publisher.receiveAndSubscribe<A>(on:options:)(AssociatedTypeWitness, v44, v45, v15, v21);
  sub_1D8D08A50(v30, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v49 + 8))(v12, AssociatedTypeWitness);
  v32 = v42;
  v33 = swift_getWitnessTable();
  AssetProcessingStep.metadataTrace.getter(v32, v33, &v52);
  v34 = sub_1D9178E5C();
  v36 = v35;
  v37 = static EmitLifecycle.defaultVerbosity.getter();
  Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)(&v52, "QueueHop", 8, 2, 0, v34, v36, v37 & 1, v25, v18);

  sub_1D8D08A50(&v52, &qword_1ECAB4928, &qword_1D918B380);
  (*(v50 + 8))(v21, v18);
  v38 = v46;
  swift_getWitnessTable();
  v39 = sub_1D9177B1C();
  (*(v48 + 8))(v25, v38);
  return v39;
}

uint64_t sub_1D8DA1F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8DA1F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ReceiveAndSubscribeOnAssetProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

void sub_1D8DA1F8C()
{
  v1 = v0 + 24;
  v2 = *(v0 + 16);
  sub_1D8D7DE2C(v1);
}

uint64_t sub_1D8DA1FB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FallbackProcessingStep.publisher.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8DA2014()
{
  v1 = *(v0 + 32);
  v2 = v1 >> 5;
  if (v1 >> 5 > 2)
  {
    if (v2 == 3)
    {
      return 0x64656C696146;
    }

    else
    {
      v5 = *v0;
      v6 = *(v0 + 8);
      v7 = *(v0 + 16);
      v8 = *(v0 + 24);
      if (v2 == 4)
      {
        v10 = *v0;
        v11 = *(v0 + 8);
        v12 = *(v0 + 16);
        v13 = *(v0 + 24);
        sub_1D8F5DD6C(v5, v6, v7, v8, v1 & 1);
        v9 = sub_1D917826C();
        MEMORY[0x1DA7298F0](v9);

        return 0x64656873696E6946;
      }

      else if ((v6 | v5 | v7 | v8) == 0 && v1 == 160)
      {
        return 0x206C616974696E49;
      }

      else
      {
        return 0x64616F6C6E776F44;
      }
    }
  }

  else
  {
    v3 = 0x20737365636F7250;
    if (v2 != 1)
    {
      v3 = 0xD000000000000014;
    }

    if (v2)
    {
      return v3;
    }

    else
    {
      return 0x6546206573726150;
    }
  }
}

uint64_t AssetSourceStep.publisher.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v2 + 16))(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 24) = v8;
  *(v6 + 40) = *(a1 + 40);
  (*(v2 + 32))(v6 + v5, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for EmitLifecycle();
  swift_getWitnessTable();
  return sub_1D9177A7C();
}

uint64_t sub_1D8DA2374()
{
  v1 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v2 = (type metadata accessor for AssetSourceStep() - 8);
  v3 = (*(*v2 + 80) + 48) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v3, v1);
  (*(*(v6 - 8) + 8))(v0 + v3 + v2[15]);
  return swift_deallocObject();
}

uint64_t sub_1D8DA24D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8DA2548(a1, a2);
  }

  return result;
}

uint64_t sub_1D8DA2548(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177F1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3[12];
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1D9177F4C();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    v15 = a1 + *(type metadata accessor for FeedUpdateRequest() + 20);
    v16 = sub_1D9176ACC();
    v18 = v17;
    swift_beginAccess();
    sub_1D8DA2840(0, v16, v18);
    swift_endAccess();
    v19 = v3[15];
    if (v19)
    {
      v20 = v3[16];

      v19(a1, a2);
      sub_1D8D15664(v19);
    }

    return sub_1D8D801B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Publisher.emitLifecycle(for:name:definesInterval:context:verbose:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a8;
  v25 = a6;
  v17 = *(*(a10 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](a1);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22, a10, v18);
  sub_1D8D088B4(a1, v27, &qword_1ECAB4928, &qword_1D918B380);

  return EmitLifecycle.init(upstream:trace:name:verbose:context:definesInterval:)(v20, v27, a2, a3, a4, v26, v25, a7, a9, a5, a10);
}

uint64_t sub_1D8DA2840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1D8D7A5B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1D8D33C70(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1D8F85824(&qword_1ECAB7AC8, &qword_1D9199720);
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1D8DA2AFC(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t EmitLifecycle.init(upstream:trace:name:verbose:context:definesInterval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v17 = *(a11 - 8);
  (*(v17 + 16))(a9);
  v18 = type metadata accessor for EmitLifecycle();
  sub_1D8D088B4(a2, a9 + v18[9], &qword_1ECAB4928, &qword_1D918B380);
  v19 = a9 + v18[10];
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = a5;
  *(a9 + v18[12]) = a10;
  if (a8)
  {

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);

    v20 = a7;
    v21 = a8;
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  sub_1D8D08A50(a2, &qword_1ECAB4928, &qword_1D918B380);
  result = (*(v17 + 8))(a1, a11);
  v23 = (a9 + v18[11]);
  *v23 = v20;
  v23[1] = v21;
  *(a9 + v18[13]) = a6 & 1;
  return result;
}

uint64_t sub_1D8DA2AFC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D91792EC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1D9179DBC();

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      v13 = sub_1D9179E1C();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t Publisher.cache<A>(location:cache:overwrite:alwaysAttemptRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v34 = a7;
  v32 = a3;
  v33 = a4;
  v29 = a1;
  v30 = a2;
  v31 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v28 - v19;
  v21 = *(*(a5 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v9, a5, v23);
  (*(v17 + 16))(v20, v29, AssociatedTypeWitness);
  (*(v12 + 16))(v15, v30, a6);
  return Publishers.CachedAssetPublisher.init(upstream:location:cache:overwrite:alwaysAttemptRefresh:)(v25, v20, v15, v32, v33, a5, a6, v31);
}

void sub_1D8DA2EFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D8DA30C0(a1, a2);
  }
}

uint64_t Publishers.CachedAssetPublisher.init(upstream:location:cache:overwrite:alwaysAttemptRefresh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  v14 = type metadata accessor for Publishers.CachedAssetPublisher();
  v15 = v14[13];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8 + v15, a2, AssociatedTypeWitness);
  result = (*(*(a7 - 8) + 32))(a8 + v14[14], a3, a7);
  *(a8 + v14[15]) = a4;
  *(a8 + v14[16]) = a5;
  return result;
}

uint64_t sub_1D8DA30C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  updated = type metadata accessor for FeedUpdateRequest();
  v7 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - v11;
  v13 = sub_1D9177F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1D9177F4C();
  (*(v14 + 8))(v18, v13);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = *a2;
  if (*(a2 + 32))
  {
    if (qword_1EDCD1068 == -1)
    {
LABEL_4:
      v21 = sub_1D917744C();
      __swift_project_value_buffer(v21, qword_1EDCD1070);
      sub_1D8D7A3C4(a1, v9);
      v22 = sub_1D917741C();
      v23 = sub_1D9178D1C();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v65 = v13;
        v66 = v25;
        v26 = v25;
        *v24 = 141558275;
        *(v24 + 4) = 1752392040;
        *(v24 + 12) = 2081;
        v27 = &v9[*(updated + 20)];
        v28 = sub_1D9176ACC();
        v30 = v29;
        sub_1D8D7A55C(v9);
        v31 = sub_1D8CFA924(v28, v30, &v66);

        *(v24 + 14) = v31;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "Update %{private,mask.hash}s failed", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        v32 = v26;
        v13 = v65;
        MEMORY[0x1DA72CB90](v32, -1, -1);
        MEMORY[0x1DA72CB90](v24, -1, -1);
      }

      else
      {

        sub_1D8D7A55C(v9);
      }

      v52 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
      v53 = a1 + *(updated + 20);
      v54 = sub_1D9176ACC();
      v56 = v13;
      v57 = 1;
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v33 = *(a2 + 8);
  v34 = *(a2 + 16);
  v65 = *(a2 + 24);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v35 = sub_1D917744C();
  __swift_project_value_buffer(v35, qword_1EDCD1070);
  sub_1D8D7A3C4(a1, v12);
  v36 = sub_1D917741C();
  v37 = sub_1D9178D1C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v63 = v33;
    v39 = v38;
    v40 = swift_slowAlloc();
    v62 = v34;
    v41 = v40;
    v66 = v40;
    *v39 = 141558275;
    *(v39 + 4) = 1752392040;
    *(v39 + 12) = 2081;
    v42 = &v12[*(updated + 20)];
    v43 = sub_1D9176ACC();
    v64 = updated;
    v44 = a1;
    v45 = v3;
    v46 = v13;
    v48 = v47;
    sub_1D8D7A55C(v12);
    v49 = sub_1D8CFA924(v43, v48, &v66);
    v13 = v46;
    v3 = v45;
    a1 = v44;
    updated = v64;

    *(v39 + 14) = v49;
    _os_log_impl(&dword_1D8CEC000, v36, v37, "Update %{private,mask.hash}s completed", v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v50 = v41;
    v34 = v62;
    MEMORY[0x1DA72CB90](v50, -1, -1);
    v51 = v39;
    v33 = v63;
    MEMORY[0x1DA72CB90](v51, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v12);
  }

  sub_1D8F59A6C(v13, v33, v34, v65, a1);
  v58 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
  v59 = a1 + *(updated + 20);
  v54 = sub_1D9176ACC();
  v56 = 0;
  v57 = 0;
LABEL_14:
  sub_1D8DA37C4(v54, v55, v56, v57);
}

uint64_t DiskAssetCache.description.getter()
{
  v1 = *v0;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x657373416B736944, 0xEF3C656863614374);
  v2 = *(v1 + 80);
  v3 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  v4 = *(v1 + 88);
  v5 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v5);

  MEMORY[0x1DA7298F0](10302, 0xE200000000000000);
  if (*(v0 + qword_1EDCDE888 + 4))
  {
    goto LABEL_2;
  }

  v7 = *(v0 + qword_1EDCDE888);
  if (v7 > 2047)
  {
    if (v7 == 2048 || v7 == 0x8000)
    {
      goto LABEL_2;
    }
  }

  else if (v7 == 512 || v7 == 1024)
  {
LABEL_2:
    sub_1D917964C();
    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return 0;
  }

  result = sub_1D91796DC();
  __break(1u);
  return result;
}

uint64_t sub_1D8DA37C4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v9 = sub_1D9177E0C();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = a1;
  v32[1] = a2;
  v17 = *(v4 + 32);
  v29 = v4;
  v30 = v32;
  v26 = sub_1D8DA40D8;
  v27 = &v28;
  os_unfair_lock_lock(v17 + 4);
  sub_1D8DA3B34(aBlock);
  os_unfair_lock_unlock(v17 + 4);
  v18 = aBlock[0];
  sub_1D8CFD888();
  v19 = sub_1D9178E1C();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = a3;
  v21 = a4 & 1;
  *(v20 + 32) = a4 & 1;
  aBlock[4] = sub_1D8F67698;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_1;
  v22 = _Block_copy(aBlock);
  sub_1D8DA4A44(a3, v21);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v22);
  _Block_release(v22);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

uint64_t ArtworkRequest.hash(into:)()
{
  v17 = *(v0 + 8);
  v18 = *(v0 + 9);
  v19 = *(v0 + 10);
  v13 = *(v0 + 4);
  v14 = *(v0 + 5);
  v15 = *(v0 + 6);
  v16 = *(v0 + 7);
  v9 = *v0;
  v10 = *(v0 + 1);
  v11 = *(v0 + 2);
  v12 = *(v0 + 3);
  ArtworkModel.hash(into:)();
  v1 = v0[22];
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v1);
  v2 = v0[23];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v2);
  v3 = v0[24];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA72B3C0](*&v3);
  v4 = *(v0 + 200);
  sub_1D9179DDC();
  if (*(v0 + 201) == 16)
  {
    sub_1D9179DDC();
  }

  else
  {
    sub_1D9179DDC();
    CropCode.rawValue.getter();
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  *(v0 + 202);
  *(v0 + 202);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v5 = *(v0 + 26);
  MEMORY[0x1DA72B390](*(v5 + 16));
  for (i = *(v5 + 16); i; --i)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v7 = *(v0 + 216);
  if (v7 == 3)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  return MEMORY[0x1DA72B390](qword_1D91A0E10[v7]);
}

BOOL _s18PodcastsFoundation14ArtworkRequestV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[7];
  v5 = a1[9];
  v71 = a1[8];
  v72 = v5;
  v6 = a1[9];
  v73 = a1[10];
  v7 = a1[3];
  v8 = a1[5];
  v67 = a1[4];
  v68 = v8;
  v9 = a1[5];
  v10 = a1[7];
  v69 = a1[6];
  v70 = v10;
  v11 = a1[1];
  v64[0] = *a1;
  v64[1] = v11;
  v12 = a1[3];
  v14 = *a1;
  v13 = a1[1];
  v65 = a1[2];
  v66 = v12;
  v61 = v71;
  v62 = v6;
  v63 = a1[10];
  v57 = v67;
  v58 = v9;
  v59 = v69;
  v60 = v4;
  v53 = v14;
  v54 = v13;
  v55 = v65;
  v56 = v7;
  v15 = a2[7];
  v16 = a2[9];
  v81 = a2[8];
  v82 = v16;
  v17 = a2[9];
  v83 = a2[10];
  v18 = a2[3];
  v19 = a2[5];
  v77 = a2[4];
  v78 = v19;
  v20 = a2[5];
  v21 = a2[7];
  v79 = a2[6];
  v80 = v21;
  v22 = a2[1];
  v74[0] = *a2;
  v74[1] = v22;
  v23 = a2[3];
  v25 = *a2;
  v24 = a2[1];
  v75 = a2[2];
  v76 = v23;
  v50 = v81;
  v51 = v17;
  v52 = a2[10];
  v46 = v77;
  v47 = v20;
  v48 = v79;
  v49 = v15;
  v42 = v25;
  v43 = v24;
  v44 = v75;
  v45 = v18;
  sub_1D8D36E5C(v64, v85);
  sub_1D8D36E5C(v74, v85);
  v26 = _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(&v53, &v42);
  v84[8] = v50;
  v84[9] = v51;
  v84[10] = v52;
  v84[4] = v46;
  v84[5] = v47;
  v84[6] = v48;
  v84[7] = v49;
  v84[0] = v42;
  v84[1] = v43;
  v84[2] = v44;
  v84[3] = v45;
  sub_1D8DB15B0(v84);
  v85[8] = v61;
  v85[9] = v62;
  v85[10] = v63;
  v85[4] = v57;
  v85[5] = v58;
  v85[6] = v59;
  v85[7] = v60;
  v85[0] = v53;
  v85[1] = v54;
  v85[2] = v55;
  v85[3] = v56;
  sub_1D8DB15B0(v85);
  result = 0;
  if (!v26 || *(a1 + 22) != *(a2 + 22) || *(a1 + 23) != *(a2 + 23))
  {
    return result;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 200) != *(a2 + 200))
  {
    return 0;
  }

  v28 = *(a2 + 201);
  if (*(a1 + 201) == 16)
  {
    if (v28 != 16)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 16)
    {
      return 0;
    }

    LOBYTE(v53) = *(a1 + 201);
    LOBYTE(v42) = v28;
    v29 = CropCode.rawValue.getter();
    v31 = v30;
    if (v29 == CropCode.rawValue.getter() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_1D9179ACC();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v34 = *(a2 + 202);
  if (*(a1 + 202))
  {
    v35 = 0x6669636570736E75;
  }

  else
  {
    v35 = 0x79616C70736964;
  }

  if (*(a1 + 202))
  {
    v36 = 0xEB00000000646569;
  }

  else
  {
    v36 = 0xE700000000000000;
  }

  if (*(a2 + 202))
  {
    v37 = 0x6669636570736E75;
  }

  else
  {
    v37 = 0x79616C70736964;
  }

  if (*(a2 + 202))
  {
    v38 = 0xEB00000000646569;
  }

  else
  {
    v38 = 0xE700000000000000;
  }

  if (v35 == v37 && v36 == v38)
  {

    goto LABEL_32;
  }

  v39 = sub_1D9179ACC();

  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  if (!sub_1D8DB2AA4(*(a1 + 26), *(a2 + 26)))
  {
    return 0;
  }

  v40 = *(a1 + 216);
  v41 = *(a2 + 216);
  result = v41 == 3 && v40 == 3;
  if (v40 != 3 && *(a2 + 216) != 3)
  {
    return qword_1D91A0E10[v40] == qword_1D91A0E10[v41];
  }

  return result;
}

void *sub_1D8DA40F4@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL _s18PodcastsFoundation12ArtworkModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 129);
  v8 = *(a1 + 130);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v14 = *(a2 + 129);
  v15 = *(a2 + 130);
  v28 = *(a2 + 131);
  v29 = *(a1 + 131);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  if (v4 == 255)
  {
    result = 0;
    if (v11 != 255)
    {
      return result;
    }

LABEL_6:
    if (v6 != v13)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v11 == 255)
  {
    return 0;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      if (v11 != 2)
      {
        return 0;
      }

      result = 0;
      if (v2 == v9)
      {
        goto LABEL_6;
      }

      return result;
    }

    if (v11 != 1)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v2 == v9 && v3 == v10)
  {
    result = 0;
    if (v6 == v13)
    {
LABEL_7:
      if (v5 != v12)
      {
        return result;
      }

      if (v7 == 4)
      {
        if (v14 != 4)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == 4)
        {
          return 0;
        }

        v17 = 0xEB00000000746365;
        v18 = 0x526465646E756F72;
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            v20 = 0xE400000000000000;
            v19 = 1819044208;
          }

          else
          {
            v19 = 0xD000000000000012;
            v20 = 0x80000001D91C7EF0;
          }
        }

        else
        {
          v19 = 0x526465646E756F72;
          v20 = 0xEB00000000746365;
          if (v7)
          {
            v20 = 0xE500000000000000;
            v19 = 0x646E756F72;
          }
        }

        if (v14 > 1)
        {
          if (v14 == 2)
          {
            v17 = 0xE400000000000000;
            v18 = 1819044208;
          }

          else
          {
            v18 = 0xD000000000000012;
            v17 = 0x80000001D91C7EF0;
          }
        }

        else if (v14)
        {
          v17 = 0xE500000000000000;
          v18 = 0x646E756F72;
        }

        if (v19 == v18 && v20 == v17)
        {
        }

        else
        {
          v22 = sub_1D9179ACC();

          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }
      }

      v23 = CropCode.rawValue.getter();
      v25 = v24;
      if (v23 == CropCode.rawValue.getter() && v25 == v26)
      {

        return v29 == v28;
      }

      v27 = sub_1D9179ACC();

      if (v27)
      {
        return v29 == v28;
      }

      return 0;
    }
  }

  else
  {
    v21 = sub_1D9179ACC();
    result = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t (*sub_1D8DA4450(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_1D8DA482C;
}

uint64_t sub_1D8DA4570()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8DA45F0@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_beginAccess();
  v5 = sub_1D8DA46BC(v3, v4);
  swift_endAccess();
  result = sub_1D8D7D28C(sub_1D8D7D560, &unk_1F5471340, sub_1D8D7D6AC, &block_descriptor_78_1);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = v5;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1D8DA46BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1D8D33C70(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D8F84E04(&qword_1ECAB7AD0, &unk_1D91A6BA0);
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1D8DA2AFC(v7, v10);
  *v3 = v10;
  return v12;
}

Swift::Bool __swiftcall AssetCache.containsAny(of:)(Swift::OpaquePointer of)
{
  sub_1D8DA4450(v3, v1, v2);
  swift_getAssociatedTypeWitness();
  sub_1D91786FC();
  swift_getWitnessTable();
  v4 = sub_1D91784CC();

  return v4 & 1;
}

id DiskAssetCache<>.containsAsset(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  FileBasedAssetLocation.fileURL(in:)(v2 + qword_1EDCDE890, *(v4 + 80), a2, v9);
  v10 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v12 = [v10 fileExistsAtPath_];

  (*(v6 + 8))(v9, v5);
  return v12;
}

id sub_1D8DA4A44(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1D8DA4C5C(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1D917939C();
  }

  else if (*(a2 + 16) && (sub_1D8D6B2FC(), v5 = *(a2 + 40), v6 = sub_1D917913C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_1D917914C();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D8DA4D64()
{
  sub_1D8D7DD58(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D7A55C(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);

  v1 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion + 8);

  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID + 8);

  v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash + 8);

  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider));

  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval + 8);

  return v0;
}

uint64_t sub_1D8DA4E2C()
{
  sub_1D8DA4D64();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8DA50E8(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v9;
  v10 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(*(TupleTypeMetadata2 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = &v29 - v14;
  v16 = *(v13 + 56);
  v17 = *(v10 - 8);
  v18 = *(v17 + 16);
  v18(&v29 - v14, a1, v10);
  v18(&v15[v16], v32, v10);
  v19 = *(v5 + 48);
  LODWORD(v18) = v19(v15, 1, v4);
  v20 = v19(&v15[v16], 1, v4);
  if (v18 == 1)
  {
    if (v20 == 1)
    {
      v21 = 0;
    }

    else
    {
      (*(v17 + 8))(&v15[v16], v10);
      v21 = 1;
    }
  }

  else if (v20 == 1)
  {
    (*(v5 + 8))(v15, v4);
    v21 = 1;
  }

  else
  {
    v22 = *(v5 + 32);
    v23 = v30;
    v22(v30, v15, v4);
    v24 = v31;
    v22(v31, &v15[v16], v4);
    v25 = *(v2 + qword_1ECAB8620);
    v26 = *(v2 + qword_1ECAB8620 + 8);
    v21 = v25(v23, v24);
    v27 = *(v5 + 8);
    v27(v24, v4);
    v27(v23, v4);
  }

  return v21 & 1;
}

uint64_t sub_1D8DA53E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v16 = *(a2 + 56);
  v17 = *(a1 + 56);
  v14 = *(a2 + 64);
  v15 = *(a1 + 64);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D9179ACC() & 1) == 0)
  {
    return 1;
  }

  if (v3)
  {
    if (!v8)
    {
      return 1;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 1;
    }
  }

  switch(v6)
  {
    case 0:
      return v11 != 0;
    case 1:
      return v11 != 1;
    case 2:
      return v11 != 2;
  }

  return v11 < 3 || ((v10 ^ v5) & 1) != 0 || (v4 != v9 || v6 != v11) && (sub_1D9179ACC() & 1) == 0 || ((v17 ^ v16) & 1) != 0 || v15 != v14;
}

uint64_t sub_1D8DA552C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  return static FRPSectionInfo<>.== infix(_:_:)(a1, a2);
}

uint64_t static FRPSectionInfo<>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D91781BC() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for FRPSectionInfo() + 44);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1D917870C();
}

uint64_t sub_1D8DA55EC(void *a1)
{
  v2 = sub_1D917744C();
  length = v2[-1].length;
  v4 = *(length + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v90 - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = [a1 contextName];
  v12 = [v10 contextForName_];

  if (!v12)
  {
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
    swift_beginAccess();
    (*(length + 16))(v6, v32, v2);
    v33 = a1;
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "History transaction with not contextName. We won't be able to fetch the objects corresponding to this change. Transaction: %@", v36, 0xCu);
      sub_1D8D08A50(v37, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    (*(length + 8))(v6, v2);
    return 0;
  }

  v13 = [a1 changes];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v92 = sub_1D8CF2154(0, &qword_1EDCD0940, 0x1E695D690);
  v15 = sub_1D91785FC();

  v100 = MEMORY[0x1E69E7CC0];
  v94 = v9;
  if (v15 >> 62)
  {
    goto LABEL_69;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v17 = MEMORY[0x1E69E7CC0];
  v95 = v12;
  v93 = v2;
  if (v16)
  {
    v91 = length;
    length = 0;
    v96 = v15 & 0xC000000000000001;
    v12 = v15 & 0xFFFFFFFFFFFFFF8;
    v2 = @"MTEpisode";
    while (1)
    {
      if (v96)
      {
        v18 = MEMORY[0x1DA72AA90](length, v15);
      }

      else
      {
        if (length >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v18 = *(v15 + 8 * length + 32);
      }

      v19 = v18;
      v20 = length + 1;
      if (__OFADD__(length, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        v16 = sub_1D917935C();
        goto LABEL_5;
      }

      v21 = [v18 changedObjectID];
      v22 = [v21 entity];

      v23 = [v22 name];
      if (!v23)
      {
        break;
      }

      v24 = sub_1D917820C();
      v26 = v25;

      v27 = sub_1D917820C();
      if (!v26)
      {
        goto LABEL_8;
      }

      if (v24 == v27 && v26 == v28)
      {

LABEL_24:
        sub_1D917959C();
        v31 = *(v100 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        goto LABEL_10;
      }

      v30 = sub_1D9179ACC();

      if (v30)
      {
        goto LABEL_24;
      }

LABEL_9:

LABEL_10:
      ++length;
      if (v20 == v16)
      {
        v39 = v100;
        v12 = v95;
        v17 = MEMORY[0x1E69E7CC0];
        v2 = v93;
        length = v91;
        goto LABEL_35;
      }
    }

    sub_1D917820C();
LABEL_8:

    goto LABEL_9;
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_35:

  v40 = v39 < 0 || (v39 & 0x4000000000000000) != 0;
  if (v40)
  {
    v15 = sub_1D917935C();
    if (v15)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v15 = *(v39 + 16);
    if (v15)
    {
LABEL_40:
      LODWORD(v96) = v40;
      if (qword_1ECAAFC40 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
      swift_beginAccess();
      v42 = v94;
      (*(length + 16))(v94, v41, v2);

      v43 = sub_1D917741C();
      v44 = sub_1D9178CEC();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = v44;
        v47 = swift_slowAlloc();
        v99 = v47;
        *v45 = 136315138;
        v48 = MEMORY[0x1DA729BD0](v39, v92);
        v50 = sub_1D8CFA924(v48, v49, &v99);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_1D8CEC000, v43, v46, "processing transaction with episode changes: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x1DA72CB90](v47, -1, -1);
        MEMORY[0x1DA72CB90](v45, -1, -1);

        v51 = *(length + 8);
        length += 8;
        v51(v94, v93);
      }

      else
      {

        v52 = *(length + 8);
        length += 8;
        v52(v42, v2);
      }

      v12 = 0;
      v99 = v17;
      v2 = (v39 & 0xC000000000000001);
      v53 = &selRef_setParent_;
      do
      {
        if (v2)
        {
          v54 = MEMORY[0x1DA72AA90](v12, v39);
        }

        else
        {
          if (v12 >= *(v39 + 16))
          {
            goto LABEL_68;
          }

          v54 = *(v39 + 8 * v12 + 32);
        }

        v55 = v54;
        v56 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_67;
        }

        if ([v54 v53[230]])
        {
        }

        else
        {
          v43 = &v99;
          sub_1D917959C();
          v57 = *(v99 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          v53 = &selRef_setParent_;
        }

        ++v12;
      }

      while (v56 != v15);
      v58 = v99;
      if (v99 < 0 || (v99 & 0x4000000000000000) != 0)
      {
        v59 = sub_1D917935C();
        if (v59)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v59 = *(v99 + 16);
        if (v59)
        {
LABEL_58:
          v99 = MEMORY[0x1E69E7CC0];
          sub_1D91795CC();
          if (v59 < 0)
          {
            __break(1u);

            __break(1u);
            return result;
          }

          v60 = 0;
          do
          {
            if ((v58 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x1DA72AA90](v60, v58);
            }

            else
            {
              v61 = *(v58 + 8 * v60 + 32);
            }

            v62 = v61;
            ++v60;
            v63 = [v61 changedObjectID];

            v43 = &v99;
            sub_1D917959C();
            v64 = *(v99 + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
          }

          while (v59 != v60);

          v53 = &selRef_setParent_;
          goto LABEL_74;
        }
      }

LABEL_74:
      v65 = 0;
      v99 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v2)
        {
          v66 = MEMORY[0x1DA72AA90](v65, v39);
        }

        else
        {
          if (v65 >= *(v39 + 16))
          {
            goto LABEL_96;
          }

          v66 = *(v39 + 8 * v65 + 32);
        }

        v67 = v66;
        v68 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        if ([v66 v53[230]] == 1)
        {
          v43 = &v99;
          sub_1D917959C();
          v69 = *(v99 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          sub_1D91795AC();
          v53 = &selRef_setParent_;
        }

        else
        {
        }

        ++v65;
      }

      while (v68 != v15);
      v43 = v99;
      v99 = MEMORY[0x1E69E7CC8];
      if (v43 < 0 || (v43 & 0x4000000000000000) != 0)
      {
        goto LABEL_99;
      }

      for (i = *(v43 + 16); i; i = sub_1D917935C())
      {
        v71 = 0;
        while (1)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v72 = MEMORY[0x1DA72AA90](v71, v43);
          }

          else
          {
            if (v71 >= *(v43 + 16))
            {
              goto LABEL_98;
            }

            v72 = *(v43 + 8 * v71 + 32);
          }

          v73 = v72;
          v74 = v71 + 1;
          if (__OFADD__(v71, 1))
          {
            break;
          }

          v98 = v72;
          sub_1D9107A50(&v99, &v98);

          ++v71;
          if (v74 == i)
          {
            v75 = v99;
            goto LABEL_101;
          }
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        ;
      }

      v75 = MEMORY[0x1E69E7CC8];
LABEL_101:
      v94 = v75;

      v99 = MEMORY[0x1E69E7CC0];
      if (v96)
      {
        v76 = sub_1D917935C();
      }

      else
      {
        v76 = *(v39 + 16);
      }

      v77 = &selRef_setParent_;
      v78 = MEMORY[0x1E69E7CC0];
      if (v76)
      {
        v79 = 0;
        do
        {
          if (v2)
          {
            v80 = MEMORY[0x1DA72AA90](v79, v39);
          }

          else
          {
            if (v79 >= *(v39 + 16))
            {
              goto LABEL_129;
            }

            v80 = *(v39 + 8 * v79 + 32);
          }

          v81 = v80;
          v82 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if ([v80 v77[230]] == 2)
          {
            sub_1D917959C();
            v83 = *(v99 + 16);
            sub_1D91795DC();
            sub_1D91795EC();
            sub_1D91795AC();
            v77 = &selRef_setParent_;
          }

          else
          {
          }

          ++v79;
        }

        while (v82 != v76);
        v76 = v99;
        v78 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v76 = MEMORY[0x1E69E7CC0];
      }

      v99 = v78;
      if (v76 < 0 || (v76 & 0x4000000000000000) != 0)
      {
        goto LABEL_132;
      }

      for (j = *(v76 + 16); j; j = sub_1D917935C())
      {
        v85 = 0;
        while (1)
        {
          if ((v76 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x1DA72AA90](v85, v76);
          }

          else
          {
            if (v85 >= *(v76 + 16))
            {
              goto LABEL_131;
            }

            v86 = *(v76 + 8 * v85 + 32);
          }

          v87 = v86;
          v88 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            break;
          }

          v98 = v86;
          sub_1D9107DD4(&v98, &v97);

          sub_1D8E303B0(v97);
          ++v85;
          if (v88 == j)
          {
            goto LABEL_133;
          }
        }

LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        ;
      }

LABEL_133:

      return v95;
    }
  }

  sub_1D8DA6194(v17);
  return v12;
}

unint64_t sub_1D8DA6194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4240, &qword_1D9188D88);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D8D698BC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1D8DA628C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t __IMInitializeLogCategories_block_invoke()
{
  IMLogCategoryDefault = os_log_create("com.apple.podcasts", "iTunesMobile");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1D8DA6318(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D8DA636C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = a2;
    if (qword_1EDCD41E0 != -1)
    {
      swift_once();
    }

    v16 = xmmword_1EDCD41E8;
    v17 = qword_1EDCD41F8;
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v3;
    v9[4] = v4;
    v9[5] = v6;
    v9[6] = v5;
    v9[7] = v3;
    v9[8] = &v16;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1D9108F04;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1D8D24508;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8D24488;
    aBlock[3] = &block_descriptor_17_8;
    v11 = _Block_copy(aBlock);
    v12 = v3;

    [v12 performBlockAndWait_];
    _Block_release(v11);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }

    else
    {
      v13 = v17;
      *v14 = v16;
      v14[2] = v13;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_1D8DA65F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return swift_deallocObject();
}

char *sub_1D8DA6664(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA72AA90](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v29 = v6;
      sub_1D9108464(&v29, a2, &v24);

      if (v24)
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 11) = *(v28 + 11);
        v19 = v24;
        v20 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D8ECDF14(0, *(v5 + 2) + 1, 1, v5);
        }

        v10 = *(v5 + 2);
        v9 = *(v5 + 3);
        if (v10 >= v9 >> 1)
        {
          v5 = sub_1D8ECDF14((v9 > 1), v10 + 1, 1, v5);
        }

        v16 = v21;
        v17 = v22;
        *v18 = v23[0];
        *&v18[11] = *(v23 + 11);
        v11 = v19;
        v15 = v20;
        *(v5 + 2) = v10 + 1;
        v12 = &v5[96 * v10];
        *(v12 + 3) = v15;
        *(v12 + 107) = *&v18[11];
        *(v12 + 5) = v17;
        *(v12 + 6) = *v18;
        *(v12 + 4) = v16;
        *(v12 + 2) = v11;
      }

      else
      {
        v21 = v26;
        v22 = v27;
        v23[0] = v28[0];
        *(v23 + 11) = *(v28 + 11);
        v19 = v24;
        v20 = v25;
        sub_1D8D08A50(&v19, qword_1ECAB7300, &unk_1D91B9190);
      }

      ++v4;
      if (v8 == i)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8DA6894(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (v10 << 9) | (8 * v13);
    v15 = *(*(a1 + 56) + v14);
    v48 = *(*(a1 + 48) + v14);
    v16 = v48;

    sub_1D9108800(&v48, a2, a3, &v43);
    v49[0] = v43;
    v49[2] = v45;
    v49[3] = v46;
    v50[0] = v47[0];
    *(v50 + 11) = *(v47 + 11);
    v49[1] = v44;
    if (v43)
    {
      v38 = v45;
      v39 = v46;
      v40[0] = v47[0];
      *(v40 + 11) = *(v47 + 11);
      v36 = v43;
      v37 = v44;
      v41[2] = v45;
      v41[3] = v46;
      v42[0] = v47[0];
      *(v42 + 11) = *(v47 + 11);
      v41[0] = v43;
      v41[1] = v44;

      sub_1D8D088B4(v49, &v31, qword_1ECAB7300, &unk_1D91B9190);
      sub_1D8F4B778(v41);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D8ECE030(0, v11[2] + 1, 1, v11);
      }

      v18 = v11[2];
      v17 = v11[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v26 = sub_1D8ECE030((v17 > 1), v18 + 1, 1, v11);
        v19 = v18 + 1;
        v11 = v26;
      }

      v33 = v38;
      v34 = v39;
      *v35 = v40[0];
      *&v35[11] = *(v40 + 11);
      v20 = v36;
      v31 = v36;
      v32 = v37;
      v11[2] = v19;
      v21 = &v11[13 * v18];
      v23 = *v35;
      v22 = *&v35[16];
      v24 = v34;
      *(v21 + 4) = v33;
      *(v21 + 5) = v24;
      *(v21 + 6) = v23;
      *(v21 + 7) = v22;
      v25 = v32;
      *(v21 + 2) = v20;
      *(v21 + 3) = v25;
      v21[16] = v15;
    }

    else
    {
      v33 = v45;
      v34 = v46;
      *v35 = v47[0];
      *&v35[11] = *(v47 + 11);
      v31 = v43;
      v32 = v44;
      sub_1D8F4B778(&v31);
    }
  }

  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  if (v11[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
    v27 = sub_1D91797AC();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  *&v31 = v27;

  sub_1D8DA6C0C(v28, 1, &v31);

  return v31;
}

void sub_1D8DA6C0C(uint64_t a1, char a2, void *a3)
{
  v48 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v48 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1D9179CFC();
      __break(1u);
      goto LABEL_24;
    }

    v6 = *(v48 + v5 + 80);
    *v42 = *(v48 + v5 + 64);
    *&v42[16] = v6;
    v7 = *(v48 + v5 + 48);
    v40 = *(v48 + v5 + 32);
    v41 = v7;
    v8 = *(v48 + v5);
    v39 = *(v48 + v5 + 16);
    __src = v8;
    v9 = *(v48 + v5 + 96);
    v43 = v9;
    v11 = *&v42[16];
    v10 = *&v42[24];
    v12 = *v42;
    v13 = *&v42[8];
    v33 = v40;
    v34 = v7;
    v32 = v39;
    v35 = v8;
    sub_1D8D088B4(&__src, v36, &qword_1ECAB4238, &qword_1D9188D80);
    if (!v35)
    {
      goto LABEL_18;
    }

    __src = v35;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    *v42 = v12;
    *&v42[8] = v13;
    *&v42[16] = v11;
    *&v42[24] = v10;
    v42[26] = BYTE2(v10);
    v14 = *a3;
    v46[3] = v34;
    *v47 = *v42;
    v46[1] = v32;
    v46[2] = v33;
    v46[0] = v35;
    *&v47[11] = *&v42[11];
    v16 = sub_1D8F071DC(v46);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D8F85AE8();
      if (v20)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v24 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    memmove((v24[6] + 96 * v16), &__src, 0x5BuLL);
    *(v24[7] + 8 * v16) = v9;
    v25 = v24[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_22;
    }

    ++v4;
    v24[2] = v27;
    v5 += 104;
    a2 = 1;
    if (v30 == v4)
    {
      goto LABEL_18;
    }
  }

  sub_1D900A2FC(v19, a2 & 1);
  v21 = *a3;
  v44[2] = v40;
  v44[3] = v41;
  v45[0] = *v42;
  *(v45 + 11) = *&v42[11];
  v44[0] = __src;
  v44[1] = v39;
  v22 = sub_1D8F071DC(v44);
  if ((v20 & 1) != (v23 & 1))
  {
    goto LABEL_23;
  }

  v16 = v22;
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v36[2] = v40;
    v36[3] = v41;
    v37[0] = *v42;
    *(v37 + 11) = *&v42[11];
    v36[0] = __src;
    v36[1] = v39;
    sub_1D8F0C970(v36);

    return;
  }

LABEL_24:
  *&v36[0] = 0;
  *(&v36[0] + 1) = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91CDBE0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](39, 0xE100000000000000);
  sub_1D91796DC();
  __break(1u);
}

uint64_t sub_1D8DA6FD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_1D8DA7030@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  result = sub_1D8DA70A8(v4, sub_1D9105224);
  *a2 = v3;
  a2[1] = result;
  a2[2] = v5;
  return result;
}

uint64_t sub_1D8DA70A8(uint64_t a1, uint64_t (*a2)(__int128 *, uint64_t))
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D8DA7228(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1D9106704(v11, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8DA7228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, uint64_t))
{
  v29 = 0;
  v28 = result;
  v4 = 0;
  v41 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(v41 + 56);
    v15 = (*(v41 + 48) + 96 * v13);
    v16 = v15[1];
    v37[0] = *v15;
    v37[1] = v16;
    v18 = v15[3];
    v17 = v15[4];
    v19 = v15[2];
    *(v38 + 11) = *(v15 + 75);
    v37[3] = v18;
    v38[0] = v17;
    v37[2] = v19;
    v20 = v15[1];
    v32 = *v15;
    v33 = v20;
    v21 = v15[2];
    v22 = v15[3];
    v23 = v15[4];
    *(v36 + 11) = *(v15 + 75);
    v35 = v22;
    v36[0] = v23;
    v34 = v21;
    v24 = *(v14 + 8 * v13);
    sub_1D8F0C914(v37, v31);

    v25 = a4(&v32, v24);

    v39[2] = v34;
    v39[3] = v35;
    v40[0] = v36[0];
    *(v40 + 11) = *(v36 + 11);
    v39[0] = v32;
    v39[1] = v33;
    result = sub_1D8F0C970(v39);
    if (v25)
    {
      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
        return sub_1D8DA7404(v28, a2, v29, v41);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_1D8DA7404(v28, a2, v29, v41);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8DA7404(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4230, &unk_1D91946B0);
  result = sub_1D91797AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v33 = result + 64;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + 96 * v15);
    v18 = v17[1];
    v37 = *v17;
    v38 = v18;
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    *(v41 + 11) = *(v17 + 75);
    v40 = v20;
    v41[0] = v21;
    v39 = v19;
    v22 = *(v16 + 8 * v15);
    v23 = *(v9 + 40);
    v24 = v17[3];
    *&v35[13] = v17[2];
    *&v35[15] = v24;
    v36[0] = v17[4];
    *(v36 + 11) = *(v17 + 75);
    v25 = v17[1];
    *&v35[9] = *v17;
    *&v35[11] = v25;
    sub_1D9179DBC();
    sub_1D8F0C914(&v37, v34);

    EpisodeStateModel.hash(into:)(v35);
    sub_1D9179E1C();
    v26 = -1 << *(v9 + 32);
    result = sub_1D91792FC();
    *(v33 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v27 = (*(v9 + 48) + 96 * result);
    v28 = v38;
    *v27 = v37;
    v27[1] = v28;
    v29 = v39;
    v30 = v40;
    v31 = v41[0];
    *(v27 + 75) = *(v41 + 11);
    v27[3] = v30;
    v27[4] = v31;
    v27[2] = v29;
    *(*(v9 + 56) + 8 * result) = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

BOOL sub_1D8DA7630(void *a1)
{
  if (*(*a1 + 16))
  {
    return 1;
  }

  if (*(a1[1] + 16))
  {
    return 1;
  }

  return *(a1[2] + 16) != 0;
}

uint64_t sub_1D8DA7674@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1D8DA76F0();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  return result;
}

unint64_t sub_1D8DA76F0()
{
  v76 = *MEMORY[0x1E69E9840];
  v1 = sub_1D917744C();
  v2 = *(v1 - 1);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v68 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v68 - v10;
  v11 = sub_1D9177F1C();
  v70 = *(v11 - 8);
  v12 = v70[8];
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = [objc_opt_self() fetchHistoryAfterToken_];
  v16 = v0[4];
  *&v75[0] = 0;
  v17 = [v16 executeRequest:v15 error:v75];
  v18 = *&v75[0];
  if (!v17)
  {
    v23 = *&v75[0];
    v24 = sub_1D9176A6C();

    swift_willThrow();
LABEL_7:
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    (v2[2])(v5, v26, v1);
    v27 = v15;
    v28 = sub_1D917741C();
    v29 = sub_1D9178CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Cannot execute fetchHistoryRequest: %@", v30, 0xCu);
      sub_1D8D08A50(v31, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    (v2[1])(v5, v1);
    goto LABEL_32;
  }

  v19 = v17;
  v71 = v15;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v25 = v18;

    v15 = v71;
    goto LABEL_7;
  }

  v21 = v20;
  v22 = v18;
  if ([v21 result])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  v75[0] = v73;
  v75[1] = v74;
  if (!*(&v74 + 1))
  {
    sub_1D8D08A50(v75, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v44 = v2;
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    (v2[2])(v8, v45, v1);
    v27 = v19;
    v46 = sub_1D917741C();
    v47 = sub_1D9178CFC();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412546;
      *(v48 + 4) = v21;
      *v49 = v21;
      *(v48 + 12) = 2048;
      *(v48 + 14) = [v21 resultType];
      _os_log_impl(&dword_1D8CEC000, v46, v47, "NSPersistentHistoryResult.result does not contain an array of transactions: HistoryResult: %@; resultType %ld", v48, 0x16u);
      sub_1D8D08A50(v49, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v49, -1, -1);
      MEMORY[0x1DA72CB90](v48, -1, -1);
    }

    else
    {
    }

    (v44[1])(v8, v1);
    goto LABEL_31;
  }

  v33 = v72;
  if (!(v72 >> 62))
  {
    v34 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_17;
    }

LABEL_35:
    if (qword_1ECAAFC40 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v34 = sub_1D917935C();
  if (!v34)
  {
    goto LABEL_35;
  }

LABEL_17:
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
    goto LABEL_40;
  }

  v21 = v71;
  if ((v33 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v37 = MEMORY[0x1DA72AA90](v36, v33);
    goto LABEL_22;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
LABEL_36:
    v52 = __swift_project_value_buffer(v1, qword_1ECAAFC48);
    swift_beginAccess();
    v53 = v2;
    v54 = v2[2];
    v55 = v69;
    v54(v69, v52, v1);

    v27 = v19;
    v56 = sub_1D917741C();
    v57 = sub_1D9178CFC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v73 = v70;
      *v58 = 136315394;
      v59 = sub_1D8CF2154(0, &qword_1EDCD0930, 0x1E695D6B0);
      v60 = MEMORY[0x1DA729BD0](v33, v59);
      v61 = v53;
      v63 = v62;

      v64 = sub_1D8CFA924(v60, v63, &v73);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v21;
      v65 = v68;
      *v68 = v21;
      v66 = v27;
      _os_log_impl(&dword_1D8CEC000, v56, v57, "NSPersistentHistoryResult.result contains an empty list of transactions: historyTransactions: %s; historyResult: %@", v58, 0x16u);
      sub_1D8D08A50(v65, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v65, -1, -1);
      v67 = v70;
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x1DA72CB90](v67, -1, -1);
      MEMORY[0x1DA72CB90](v58, -1, -1);

      (v61[1])(v69, v1);
    }

    else
    {

      (v53[1])(v55, v1);
    }

LABEL_31:

LABEL_32:
    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v37 = *(v33 + 8 * v36 + 32);
LABEL_22:
  v1 = v37;
  v38 = v0[3];
  *v14 = v38;
  v39 = v70;
  (v70[13])(v14, *MEMORY[0x1E69E8020], v11);
  v40 = v38;
  LOBYTE(v38) = sub_1D9177F4C();
  v41 = v39[1];
  v2 = v39 + 1;
  v41(v14, v11);
  if ((v38 & 1) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = [v1 token];
  v43 = v0[5];
  v0[5] = v42;
  v27 = v42;

  sub_1D8D2545C();
LABEL_33:

  v50 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t MTPodcastHidesPlayedEpisodesAppWideSetting()
{
  v0 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v1 = [v0 BOOLForKey:@"MTHidePlayedEpisodes"];

  return v1;
}

uint64_t MTPodcastHidesPlayedEpisodesResolved(int a1)
{
  if (a1)
  {
    return a1 == 2;
  }

  else
  {
    return MTPodcastHidesPlayedEpisodesAppWideSetting();
  }
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1D8DA8428()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D90F680C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

void sub_1D8DA8564(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

uint64_t sub_1D8DA8588()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1D90F67A8;
  }

  else
  {
    v3 = sub_1D8DA869C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8DA869C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8DA8700()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1D90F9D48;
  }

  else
  {
    v3 = sub_1D8DA8840;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8DA8840()
{
  v1 = *(v0 + 112);
  (*(v0 + 104))(0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D8DA88B4(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD1098);
    sub_1D8D35688(a2, v35);
    v8 = a1;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();

    if (os_log_type_enabled(v9, v10))
    {
      v33 = a3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v11 = 141558531;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v14 = *(v36 + 24);
      if (v14)
      {
        v15 = [v14 description];
        v16 = sub_1D917820C();
        v18 = v17;
      }

      else
      {
        v16 = 0x6974636120726F66;
        v18 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v35);
      v29 = sub_1D8CFA924(v16, v18, &v34);

      *(v11 + 14) = v29;
      *(v11 + 22) = 2112;
      v30 = sub_1D9176A5C();
      *(v11 + 24) = v30;
      *v12 = v30;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "Account %{private,mask.hash}s: Could not fetch and donate podcasts and stations with error: %@", v11, 0x20u);
      sub_1D8E262AC(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);

      a3 = v33;
    }

    else
    {

      sub_1D8D330B0(v35);
    }

    v31 = a1;
    a3(a1);
  }

  else
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD1098);
    sub_1D8D35688(a2, v35);
    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v24 = *(v36 + 24);
      if (v24)
      {
        v25 = [v24 description];
        v26 = sub_1D917820C();
        v28 = v27;
      }

      else
      {
        v26 = 0x6974636120726F66;
        v28 = 0xEF72657375206576;
      }

      sub_1D8D330B0(v35);
      v32 = sub_1D8CFA924(v26, v28, &v34);

      *(v22 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Account %{private,mask.hash}s: Finished siri donation.", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    else
    {

      sub_1D8D330B0(v35);
    }

    a3(0);
  }
}

void sub_1D8DA8CE8(uint64_t *a1, _BYTE *a2, uint64_t a3, NSObject *a4)
{
  if (a1)
  {
    v53 = a1;
    v8 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    if ((swift_dynamicCast() & 1) != 0 && (v55 & 1) == 0)
    {
      v35 = v54;
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1EDCD1098);
      sub_1D8D35688(a2, &v54);
      v11 = sub_1D917741C();
      v37 = sub_1D9178CFC();
      if (os_log_type_enabled(v11, v37))
      {
        v52 = v35;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v53 = v39;
        *v38 = 141558531;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;
        v40 = *(v55 + 24);
        if (v40)
        {
          v41 = [v40 description];
          v42 = sub_1D917820C();
          v44 = v43;
        }

        else
        {
          v42 = 0x6974636120726F66;
          v44 = 0xEF72657375206576;
        }

        sub_1D8D330B0(&v54);
        v48 = sub_1D8CFA924(v42, v44, &v53);

        *(v38 + 14) = v48;
        *(v38 + 22) = 2048;
        *(v38 + 24) = v52;
        _os_log_impl(&dword_1D8CEC000, v11, v37, "Donation Job completed for account: %{private,mask.hash}s with errors for %ld userId's.", v38, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1DA72CB90](v39, -1, -1);
        MEMORY[0x1DA72CB90](v38, -1, -1);

        goto LABEL_27;
      }
    }

    else
    {
      if (qword_1EDCD1090 != -1)
      {
        swift_once();
      }

      v9 = sub_1D917744C();
      __swift_project_value_buffer(v9, qword_1EDCD1098);
      sub_1D8D35688(a2, &v54);
      v10 = a1;
      v11 = sub_1D917741C();
      v12 = sub_1D9178CFC();

      if (os_log_type_enabled(v11, v12))
      {
        v51 = a4;
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v53 = v15;
        *v13 = 141558531;
        *(v13 + 4) = 1752392040;
        *(v13 + 12) = 2081;
        v16 = *(v55 + 24);
        if (v16)
        {
          v50 = v12;
          v17 = v14;
          v18 = v15;
          v19 = a2;
          v20 = a3;
          v21 = [v16 description];
          v22 = sub_1D917820C();
          v24 = v23;

          a3 = v20;
          a2 = v19;
          v15 = v18;
          v14 = v17;
          v12 = v50;
        }

        else
        {
          v22 = 0x6974636120726F66;
          v24 = 0xEF72657375206576;
        }

        sub_1D8D330B0(&v54);
        v45 = sub_1D8CFA924(v22, v24, &v53);

        *(v13 + 14) = v45;
        *(v13 + 22) = 2112;
        v46 = sub_1D9176A5C();
        *(v13 + 24) = v46;
        *v14 = v46;
        _os_log_impl(&dword_1D8CEC000, v11, v12, "Donation Job Failed for account: %{private,mask.hash}s with error: %@", v13, 0x20u);
        sub_1D8E262AC(v14);
        MEMORY[0x1DA72CB90](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1DA72CB90](v15, -1, -1);
        MEMORY[0x1DA72CB90](v13, -1, -1);

        a4 = v51;
        goto LABEL_27;
      }
    }

    sub_1D8D330B0(&v54);
LABEL_27:
    v49 = *a2 == 1;
    swift_beginAccess();
    *(a3 + 16) = v49;
    goto LABEL_28;
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD1098);
  sub_1D8D35688(a2, &v54);
  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v53 = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v30 = *(v55 + 24);
    if (v30)
    {
      v31 = [v30 description];
      v32 = sub_1D917820C();
      v34 = v33;
    }

    else
    {
      v32 = 0x6974636120726F66;
      v34 = 0xEF72657375206576;
    }

    sub_1D8D330B0(&v54);
    v47 = sub_1D8CFA924(v32, v34, &v53);

    *(v28 + 14) = v47;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Donation Job completed for account: %{private,mask.hash}s with no errors.", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  else
  {

    sub_1D8D330B0(&v54);
  }

LABEL_28:
  dispatch_group_leave(a4);
}

uint64_t sub_1D8DA9384()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue);
  aBlock[4] = sub_1D8F6092C;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_35_0;
  v10 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8DA1F0C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);

  sub_1D8CFEACC(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80));
  sub_1D8D85E5C(*v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40));
  v4 = *(v3 + 48);

  v5 = *(v3 + 56);

  v6 = *(v3 + 64);

  v7 = *(v3 + 72);

  v8 = *(v3 + 80);

  v9 = *(v3 + 88);

  v10 = *(v3 + 96);

  v11 = *(v3 + 104);

  v12 = *(v3 + 112);

  v13 = *(v3 + 120);

  v14 = *(v3 + 128);

  v15 = *(v3 + 136);

  v16 = *(v3 + 144);

  v17 = *(v3 + 176);

  v18 = *(v3 + 184);

  v19 = v1[28];
  v20 = sub_1D9176C2C();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v3 + v19, 1, v20))
  {
    (*(v21 + 8))(v3 + v19, v20);
  }

  v22 = *(v3 + v1[29] + 8);

  v23 = *(v3 + v1[31] + 8);

  v24 = *(v3 + v1[32]);

  v25 = *(v3 + v1[33] + 8);

  v26 = *(v3 + v1[35] + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  v4 = *(v0 + 112);

  v5 = *(v0 + 120);

  v6 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1D8DA9904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = v4 + 1;
  while (--v6)
  {
    v7 = v5 + 80;
    sub_1D8D35688(v5, v23);
    v8 = v23[0];
    sub_1D8D330B0(v23);
    v5 = v7;
    if (v8 == 1)
    {
      swift_beginAccess();
      if (*(a3 + 16))
      {
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v9 = sub_1D917744C();
        __swift_project_value_buffer(v9, qword_1EDCD1098);
        v10 = sub_1D917741C();
        v11 = sub_1D9178CFC();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          v13 = "Encountered more than one failure for secondary user donation. Cannot set user defaults key for last date all secondary user data was donated.";
LABEL_13:
          _os_log_impl(&dword_1D8CEC000, v10, v11, v13, v12, 2u);
          MEMORY[0x1DA72CB90](v12, -1, -1);
          goto LABEL_19;
        }
      }

      else
      {
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
          _os_log_impl(&dword_1D8CEC000, v16, v17, "There were secondary user donations that were made, and all of them were successful. Setting the current date in User Defaults.", v18, 2u);
          MEMORY[0x1DA72CB90](v18, -1, -1);
        }

        v19 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
        sub_1D9176CDC();
        v21 = v20;
        v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
        [v19 setDouble:v10 forKey:v21];
      }

      goto LABEL_19;
    }
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD1098);
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "No secondary user donations were made.";
    goto LABEL_13;
  }

LABEL_19:

  return sub_1D8DA9C30();
}

uint64_t sub_1D8DA9C30()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator__donationInProgress;
  swift_beginAccess();
  v11 = *&v0[v10];
  os_unfair_lock_lock((v11 + 20));
  *(v11 + 16) = 0;
  os_unfair_lock_unlock((v11 + 20));
  swift_endAccess();
  v16[1] = *&v0[OBJC_IVAR____TtC18PodcastsFoundation11SiriDonator_workQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1D8DAA074;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_26_4;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD768(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v9, v5, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v17);
}

uint64_t sub_1D8DA9FB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v1 = *(v0 + 88);
  sub_1D8D4F5BC(*(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8DAA00C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for CachingImageContentProvider();
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1D8DAC03C(v6, a3, type metadata accessor for CachingImageContentProvider);
}

uint64_t sub_1D8DAA090()
{
  v0 = sub_1D9176C2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v26[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v26[-1] - v6);
  v8 = type metadata accessor for CachingImageContentProvider();
  __swift_allocate_value_buffer(v8, qword_1EDCD60C0);
  v9 = __swift_project_value_buffer(v8, qword_1EDCD60C0);
  v10 = [objc_opt_self() artworkAssetURL];
  sub_1D9176B9C();

  v11 = [objc_opt_self() defaultCenter];
  sub_1D8DAA3BC(v3, 0, v11, v7);
  *(swift_allocObject() + 16) = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB49B8, &unk_1D9191140);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_1D9177A5C();
  v26[3] = &type metadata for CGImageResizer;
  v26[4] = &protocol witness table for CGImageResizer;
  if (qword_1EDCD5B20 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDCD5B28;
  sub_1D8D088B4(v7, v9, &qword_1ECAB4908, &qword_1D918AFB0);
  v17 = (v9 + v8[5]);
  *v17 = sub_1D8E5149C;
  v17[1] = v15;
  sub_1D8CFD9D8(v26, v9 + v8[6]);
  *(v9 + v8[7]) = v16;
  v18 = v16;
  v19 = MEMORY[0x1E69E7CC0];
  v20 = sub_1D8DABF0C(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4910, &qword_1D918AFB8);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  *(v9 + v8[8]) = v21;
  v22 = sub_1D8DABF0C(v19);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;

  sub_1D8D08A50(v7, &qword_1ECAB4908, &qword_1D918AFB0);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  *(v23 + 16) = v22;

  *(v9 + v8[9]) = v23;
  return result;
}

void sub_1D8DAA3BC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9178FBC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 * 0.1;
  if (v17 == INFINITY)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v17 <= -1.0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = a2 - v17;
  if (a2 >= v17)
  {
    sub_1D9178FCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65E8, &qword_1D91928A8);
    swift_allocObject();
    *a4 = sub_1D8DAA5E0(v19, v16);
    (*(v9 + 16))(v12, a1, v8);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
    sub_1D8DAB230(v12, v18, a4 + *(v20 + 60));

    (*(v9 + 8))(a1, v8);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D8DAA5E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8DAA7D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F0, &qword_1D91928B0);
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
  sub_1D8DAAEC4(v10);
  os_unfair_lock_unlock(v9);

  v11 = sub_1D9178FBC();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

void sub_1D8DAA704()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      sub_1D8F8779C();
    }

    else
    {
      sub_1D8DAA8CC();
      sub_1D8DAAEA4();
    }
  }
}

unint64_t sub_1D8DAA7D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43B8, &qword_1D9188F20);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1D8F068B0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

void sub_1D8DAA8CC()
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ECAB1900 != -1)
  {
    swift_once();
  }

  v8 = qword_1ECAB1908;
  *v7 = qword_1ECAB1908;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  v10 = sub_1D9177F4C();
  (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  v11 = objc_opt_self();
  v12 = [v11 _applePodcastsFoundationSharedUserDefaults];
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v0 = [v12 stringForKey_];

  if (v0)
  {
    v2 = sub_1D917820C();
    v1 = v14;
  }

  else
  {
    v2 = 0;
    v1 = 0;
  }

  v15 = [v11 _applePodcastsFoundationSharedUserDefaults];
  v34 = "kMTDeviceIdentifierKey";
  v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v15 stringForKey_];

  if (v7)
  {
    v17 = sub_1D917820C();
    v10 = v18;
    if (!v1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v17 = 0;
    v10 = 0;
    if (!v1)
    {
      goto LABEL_18;
    }
  }

  v19 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v19 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v32 = v17;
    v33 = v11;
    sub_1D9178D1C();
    if (qword_1EDCD0700 == -1)
    {
LABEL_15:
      swift_beginAccess();
      v20 = qword_1EDCD0708;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D9189080;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1D8D34978();
      *(v21 + 32) = v2;
      *(v21 + 40) = v1;
      v22 = v20;
      sub_1D91772DC();

      v23 = sub_1D8F87480();
      if (qword_1EDCD2A88 != -1)
      {
        swift_once();
      }

      [v23 setIdentifier:v0 forKey:qword_1EDCD2A90];

      v11 = v33;
      v24 = [v33 _applePodcastsFoundationSharedUserDefaults];
      v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v24 setURL:0 forKey:v0];

      v17 = v32;
LABEL_18:

      if (!v10)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

LABEL_32:
    swift_once();
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_19:
  v25 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v25 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v26 = qword_1EDCD0708;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D9189080;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D8D34978();
    *(v27 + 32) = v17;
    *(v27 + 40) = v10;
    v28 = v26;
    sub_1D91772DC();

    v29 = sub_1D8F87480();
    if (qword_1EDCD2AA0 != -1)
    {
      swift_once();
    }

    [v29 setIdentifier:v7 forKey:qword_1EDCD2AA8];

    v30 = [v11 _applePodcastsFoundationSharedUserDefaults];
    v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v30 setURL:0 forKey:v7];
  }

  else
  {
  }

LABEL_30:
}

uint64_t sub_1D8DAAEC4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D61C18(a1);
}

uint64_t sub_1D8DAAF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9177E0C();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB1900 != -1)
  {
    swift_once();
  }

  v15 = qword_1ECAB1908;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBD60(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v13);
  _Block_release(v13);
  (*(v17 + 8))(v7, v4);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1D8DAB1F8()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

id sub_1D8DAB230@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
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
  v64 = "disk.TTMLRequest";
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65E8, &qword_1D91928A8);
  swift_allocObject();
  v22 = sub_1D8DAB978(v69, v21);
  v68 = v22;
  v24 = v66;
  v23 = v67;
  v73(v67, v66, v5);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6430, &qword_1D91926C0);
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
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
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

uint64_t sub_1D8DAB978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8DAA7D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F0, &qword_1D91928B0);
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
  sub_1D8DABAA8(v10);
  os_unfair_lock_unlock(v9);

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  (*(*(v11 - 8) + 8))(a2, v11);
  return v3;
}

uint64_t sub_1D8DABAA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8D62708(a1);
}

uint64_t sub_1D8DABAEC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1D9178D1C();
    if (qword_1EDCD0700 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = qword_1EDCD0708;
    sub_1D91772DC();

    v3 = sub_1D8F87480();
    v4 = [objc_opt_self() ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];

    [v3 setAccount_];
    v6 = [*&v1[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_accountStore] ams_activeiTunesAccount];
    v7 = v6;
    if (v6)
    {
      if ([v6 ams:*MEMORY[0x1E698C4B0] accountFlagValueForAccountFlag:?])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8D64450(&v14);
      }

      if ([v7 ams:*MEMORY[0x1E698C4B8] accountFlagValueForAccountFlag:v12])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1D8D64450(&v14);
      }

      if ([v7 ams:*MEMORY[0x1E698C4A8] accountFlagValueForAccountFlag:v12])
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        v8 = swift_dynamicCast();
LABEL_24:
        v9 = *&v1[OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_promiseLock];
        MEMORY[0x1EEE9AC00](v8);
        MEMORY[0x1EEE9AC00](v10);

        os_unfair_lock_lock(v9 + 4);
        sub_1D8D04F5C(v11);
        os_unfair_lock_unlock(v9 + 4);
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
      sub_1D8D64450(&v14);
      v14 = 0u;
      v15 = 0u;
      sub_1D8D64450(&v14);
      v14 = 0u;
      v15 = 0u;
    }

    v8 = sub_1D8D64450(&v14);
    goto LABEL_24;
  }

  return result;
}

unint64_t sub_1D8DABF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43C0, &qword_1D9188F28);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, v11, &qword_1ECAB43C8, &unk_1D9188F30);
      result = sub_1D8F06844(v11);
      if (v6)
      {
        break;
      }

      v7 = result;
      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      result = memcpy((v3[6] + 264 * result), v11, 0x108uLL);
      *(v3[7] + 8 * v7) = v12;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 272;
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

uint64_t sub_1D8DAC03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8DAC108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ImageContentProvider.url(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[38] = a4;
  v5[39] = v4;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v7 = sub_1D9176C2C();
  v5[40] = v7;
  v8 = *(v7 - 8);
  v5[41] = v8;
  v9 = *(v8 + 64) + 15;
  v5[42] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0) - 8) + 64) + 15;
  v5[43] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0);
  v5[44] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[45] = swift_task_alloc();
  v13 = type metadata accessor for ArtworkContent();
  v5[46] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[47] = swift_task_alloc();
  v15 = *(a3 - 8);
  v5[48] = v15;
  v5[49] = *(v15 + 64);
  v5[50] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v5[51] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DAC380, 0, 0);
}

uint64_t sub_1D8DAC380()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  v3 = *(v0 + 384);
  v4 = *(v0 + 392);
  v5 = *(v0 + 312);
  v6 = *(v0 + 288);
  v7 = sub_1D917886C();
  v18 = *(v0 + 296);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  (*(v3 + 16))(v1, v5, v18);
  sub_1D8D41388(v6, v0 + 16);
  v8 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v18;
  (*(v3 + 32))(v9 + v8, v1, v18);
  memcpy((v9 + ((v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), (v0 + 16), 0x108uLL);
  v10 = sub_1D8E56860(0, 0, v2, &unk_1D918B678, v9);
  *(v0 + 416) = v10;
  v11 = *(MEMORY[0x1E69E86A8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 424) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  *v12 = v0;
  v12[1] = sub_1D8DADC8C;
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v14, v10, v15, v13, v16);
}

uint64_t sub_1D8DAC57C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = *(v0 + v4 + 32);
  if (v8 != 255)
  {
    sub_1D8DADC60(*(v6 + 16), *(v6 + 24), v8);
  }

  v9 = *(v6 + 64);
  if (v9 != 255)
  {
    sub_1D8DADC78(*(v6 + 56), v9);
  }

  v10 = *(v6 + 80);
  if (v10 != 255)
  {
    sub_1D8DADC78(*(v6 + 72), v10);
  }

  v11 = *(v6 + 96);
  if (v11 != 255)
  {
    sub_1D8DADC78(*(v6 + 88), v11);
  }

  v12 = *(v6 + 112);
  if (v12 != 255)
  {
    sub_1D8DADC78(*(v6 + 104), v12);
  }

  v13 = *(v6 + 128);
  if (v13 != 255)
  {
    sub_1D8DADC78(*(v6 + 120), v13);
  }

  v14 = *(v6 + 144);

  v15 = *(v6 + 168);

  v16 = *(v6 + 208);

  if (*(v6 + 248))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 224));
  }

  return swift_deallocObject();
}

uint64_t sub_1D8DAC6F0(uint64_t a1, char a2, char a3, char a4)
{
  v8 = sub_1D8F87480();
  if (qword_1EDCD2A88 != -1)
  {
    swift_once();
  }

  v9 = [v8 identifierForKey_];

  v10 = sub_1D917820C();
  v12 = v11;

  v13 = qword_1EDCD2AA0;
  v14 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager____lazy_storage___store);
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = [v14 identifierForKey_];

  v16 = sub_1D917820C();
  v18 = v17;

  v19 = type metadata accessor for AnalyticsUserIdentifier();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_clientId];
  *v21 = v10;
  v21[1] = v12;
  v22 = &v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userId];
  *v22 = v16;
  v22[1] = v18;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userAllowsPersonalization] = a2 & 1;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userUnder13YearsOld] = a3 & 1;
  v20[OBJC_IVAR____TtC18PodcastsFoundation23AnalyticsUserIdentifier_userIsManagedAccount] = a4 & 1;
  v31.receiver = v20;
  v31.super_class = v19;

  v23 = objc_msgSendSuper2(&v31, sel_init);
  v24 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  [*(a1 + v24) finishWithResult_];
  sub_1D9178D1C();
  if (qword_1EDCD0700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_1EDCD0708;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D918A530;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D8D34978();
  *(v26 + 32) = v16;
  *(v26 + 40) = v18;
  *(v26 + 96) = v27;
  *(v26 + 104) = v28;
  *(v26 + 64) = v28;
  *(v26 + 72) = v10;
  *(v26 + 80) = v12;
  v29 = v25;
  sub_1D91772DC();
}

uint64_t sub_1D8DAC9D8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = (*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D5FF18;

  return sub_1D8DACB00(a1, v8, v9, v1 + v6, v1 + v7, v4, v5);
}

uint64_t sub_1D8DACB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a7 + 16);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1D8D5FF18;

  return v16(a1, a5, a6, a7);
}

uint64_t sub_1D8DACC3C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return CachingImageContentProvider.content(for:)(a1, a2);
}

uint64_t CachingImageContentProvider.content(for:)(uint64_t a1, uint64_t a2)
{
  v3[2198] = v2;
  v3[2197] = a2;
  v3[2196] = a1;
  v4 = type metadata accessor for ArtworkContent();
  v3[2199] = v4;
  v5 = *(v4 - 8);
  v3[2200] = v5;
  v6 = *(v5 + 64) + 15;
  v3[2201] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4918, &qword_1D918AFC8);
  v3[2202] = v7;
  v8 = *(v7 - 8);
  v3[2203] = v8;
  v9 = *(v8 + 64) + 15;
  v3[2204] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4920, &unk_1D918AFD0) - 8) + 64) + 15;
  v3[2205] = swift_task_alloc();
  v3[2206] = swift_task_alloc();
  v11 = sub_1D9176AAC();
  v3[2207] = v11;
  v12 = *(v11 - 8);
  v3[2208] = v12;
  v13 = *(v12 + 64) + 15;
  v3[2209] = swift_task_alloc();
  v14 = sub_1D9176C2C();
  v3[2210] = v14;
  v15 = *(v14 - 8);
  v3[2211] = v15;
  v16 = *(v15 + 64) + 15;
  v3[2212] = swift_task_alloc();
  v3[2213] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8DACF1C, 0, 0);
}

uint64_t sub_1D8DACF1C()
{
  v1 = *(v0 + 17576);
  v73.size.width = *(v1 + 176);
  v73.size.height = *(v1 + 184);
  v73.origin.x = 0.0;
  v73.origin.y = 0.0;
  v72 = AVMakeRectWithAspectRatioInsideRect(*(v1 + 40), v73);
  ArtworkRequest.resized(to:displayScale:)(0.0, 1, v0 + 16768, v72.size.width, v72.size.height);
  sub_1D8D088B4(v0 + 16992, v0 + 17432, &qword_1ECAB4928, &qword_1D918B380);
  if (*(v0 + 17456))
  {
    sub_1D8D6BCE0((v0 + 17432), v0 + 17392);
  }

  else
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    v3 = __swift_project_value_buffer(v2, qword_1EDCD5E28);
    v4 = sub_1D9178CEC();
    SignpostAndLogTrace(domain:level:)(v3, v4, (v0 + 17392));
    if (*(v0 + 17456))
    {
      sub_1D8D08A50(v0 + 17432, &qword_1ECAB4928, &qword_1D918B380);
    }
  }

  v69 = (v0 + 4584);
  v68 = v0 + 8600;
  v67 = v0 + 10328;
  v65 = (v0 + 13112);
  v64 = (v0 + 15352);
  v62 = v0 + 16192;
  v5 = *(v0 + 17576);
  sub_1D8D412B0(v0 + 17392, v0 + 16992);
  v70 = v5;
  sub_1D8D088B4(v5 + 224, v0 + 17472, &qword_1ECAB4928, &qword_1D918B380);
  v6 = *(v0 + 17496);
  if (v6)
  {
    v7 = *(v0 + 17576);
    v8 = *(v0 + 17504);
    __swift_project_boxed_opaque_existential_1((v0 + 17472), *(v0 + 17496));
    (*(v8 + 16))("Processing ArtworkContent Request", 33, 2, *v7, v7[1], v6, v8);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 17472));
  }

  else
  {
    sub_1D8D08A50(v0 + 17472, &qword_1ECAB4928, &qword_1D918B380);
  }

  v9 = *(v0 + 17696);
  v10 = *(v0 + 17672);
  v11 = *(v0 + 17664);
  v12 = *(v0 + 17656);
  v13 = *(v0 + 17584);
  v14 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4908, &qword_1D918AFB0) + 60);
  *(v0 + 17552) = ArtworkRequest.fileName.getter();
  *(v0 + 17560) = v15;
  (*(v11 + 104))(v10, *MEMORY[0x1E6968F70], v12);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v11 + 8))(v10, v12);

  *(v0 + 16920);
  v16 = *(v0 + 17704);
  v17 = *(v0 + 17696);
  v18 = *(v0 + 17688);
  v19 = *(v0 + 17680);
  sub_1D9176B4C();

  v20 = *(v18 + 8);
  *(v0 + 17712) = v20;
  *(v0 + 17720) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v17, v19);
  v21 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v22 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  LOBYTE(v17) = [v21 fileExistsAtPath_];

  if (v17)
  {
    v23 = *(v0 + 17592);
    (*(*(v0 + 17688) + 32))(*(v0 + 17568), *(v0 + 17704), *(v0 + 17680));
    swift_storeEnumTagMultiPayload();
    v24 = *(v0 + 17704);
    v25 = *(v0 + 17696);
    v26 = *(v0 + 17672);
    v27 = *(v0 + 17648);
    v28 = *(v0 + 17640);
    v29 = *(v0 + 17632);
    v30 = *(v0 + 17608);
    sub_1D8D58578(v0 + 16768);

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v33 = *(v0 + 16800) + 1;
    v34 = *(v0 + 16960);
    v60 = qword_1D918B1E8[v33];
    ArtworkRequest.resized(to:displayScale:)(v34, 0, v0 + 17032, *(v0 + 16808), *(v0 + 16816));
    if (*(*(v0 + 16976) + 16))
    {
      v35 = sub_1D8E50394;
      v36 = 0;
    }

    else
    {
      v37 = *(v0 + 17584);
      v38 = v37 + *(type metadata accessor for CachingImageContentProvider() + 20);
      v35 = *v38;
      v36 = *(v38 + 8);
    }

    v66 = v14;
    *(v0 + 17728) = v36;
    if (qword_1EDCD7890 != -1)
    {
      swift_once();
    }

    v58 = 8 * v33;
    v39 = *(v0 + 17584);
    v40 = byte_1EDCD7898;
    ArtworkRequest.with(format:)(byte_1EDCD7898, (v0 + 16200));
    *(v0 + 16464) = v35;
    *(v0 + 16472) = v36;
    sub_1D8D41388(v0 + 17032, v0 + 16480);
    *(v0 + 16744) = v35;
    *(v0 + 16752) = v36;
    *(v0 + 16760) = 0;
    v61 = type metadata accessor for CachingImageContentProvider();
    v41 = *(v39 + v61[7]);
    *(v0 + 16192) = v41;
    sub_1D8D088B4(v62, v0 + 15616, &qword_1ECAB4930, &unk_1D918AFE0);
    swift_retain_n();
    v59 = v41;
    ArtworkRequest.with(format:)(v40, v64);
    sub_1D8D08A50(v62, &qword_1ECAB4930, &unk_1D918AFE0);
    *(v0 + 16185) = v40;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0);
    v63 = *(v0 + 17632);
    v43 = *(v0 + 17584);
    v44 = *(v14 + *(v42 + ((0xC04u >> v58) & 0xC) + 60));
    sub_1D8D088B4(v64, v65, &qword_1ECAB4940, &qword_1D918AFF0);
    sub_1D8D41388(v64, v0 + 13960);
    *(v0 + 13952) = v44;
    *(v0 + 14224) = 1;

    sub_1D8D08A50(v64, &qword_1ECAB4940, &qword_1D918AFF0);
    v45 = *(v43 + v61[8]);
    memcpy((v0 + 14232), v65, 0x459uLL);
    *(v0 + 11712) = v45;
    sub_1D8D088B4(v0 + 14232, v0 + 10592, &qword_1ECAB4948, &qword_1D918AFF8);
    sub_1D8D41388(v0 + 15080, v67);

    sub_1D8D08A50(v0 + 14232, &qword_1ECAB4948, &qword_1D918AFF8);
    v46 = *(v0 + 16944);
    v47 = *(v0 + 16952);
    v48 = *(v0 + 16984);
    sub_1D8CFD9D8(v43 + v61[6], v0 + 10288);
    sub_1D8D088B4(v67, v0 + 11720, &qword_1ECAB4950, &unk_1D918B000);
    sub_1D8D088B4(v0 + 11720, v0 + 8864, &qword_1ECAB4950, &unk_1D918B000);
    ArtworkRequest.resized(to:displayScale:)(v34, 0, v68, v46, v47);
    sub_1D8D08A50(v0 + 11720, &qword_1ECAB4950, &unk_1D918B000);
    sub_1D8D08A50(v67, &qword_1ECAB4950, &unk_1D918B000);
    *(v0 + 10256) = v46;
    *(v0 + 10264) = v47;
    *(v0 + 10272) = v34;
    *(v0 + 10280) = v48;
    v49 = *(v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4938, &qword_1D918B9A0) + v60));
    sub_1D8D088B4(v68, v69, &qword_1ECAB4958, &unk_1D91926E0);
    sub_1D8D41388(v68, v0 + 6320);
    *(v0 + 6312) = v49;
    *(v0 + 6584) = 0;

    sub_1D8D08A50(v68, &qword_1ECAB4958, &unk_1D91926E0);
    v50 = *(v43 + v61[9]);
    memcpy((v0 + 6592), v69, 0x7D1uLL);
    *(v0 + 4576) = v50;
    sub_1D8D088B4(v0 + 6592, v0 + 2568, &qword_1ECAB4960, &qword_1D918B010);
    sub_1D8D41388(v0 + 8328, v0 + 2304);

    sub_1D8D08A50(v0 + 6592, &qword_1ECAB4960, &qword_1D918B010);
    memcpy((v0 + 24), (v0 + 2304), 0x8E8uLL);
    *(v0 + 16) = v59;
    v51 = v59;
    v52 = sub_1D8E45D30();
    sub_1D8D08A50(v0 + 16, &qword_1ECAB4968, &qword_1D918B018);
    sub_1D8D088B4(v70 + 224, v0 + 17512, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17296) = v52;
    sub_1D8D088B4(v0 + 17512, v0 + 17304, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17344) = "LoadArtworkContent";
    *(v0 + 17352) = 18;
    *(v0 + 17360) = 2;
    *(v0 + 17384) = 1;
    sub_1D8D08A50(v0 + 17512, &qword_1ECAB4928, &qword_1D918B380);
    *(v0 + 17368) = 0;
    *(v0 + 17376) = 0xE000000000000000;
    *(v0 + 17385) = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4970, &qword_1D918B020);
    v54 = sub_1D8CF48EC(&qword_1ECAB27A8, &qword_1ECAB4970, &qword_1D918B020);
    MEMORY[0x1DA729240](v53, v54);
    sub_1D8D08A50(v0 + 17296, &qword_1ECAB4970, &qword_1D918B020);
    v55 = swift_task_alloc();
    *(v0 + 17736) = v55;
    *v55 = v0;
    v55[1] = sub_1D8E454A4;
    v56 = *(v0 + 17648);
    v57 = *(v0 + 17632);

    return (sub_1D8E46900)(v56);
  }
}

uint64_t sub_1D8DADA18@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v2 = sub_1D9176AAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[2] = ArtworkRequest.fileName.getter();
  v14[3] = v12;
  (*(v3 + 104))(v6, *MEMORY[0x1E6968F70], v2);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v3 + 8))(v6, v2);

  *(v1 + 152);
  sub_1D9176B4C();

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8DADC60(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1D8DADC78(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1D8DADC8C()
{
  v2 = *v1;
  v3 = (*v1)[53];
  v4 = *v1;
  v2[54] = v0;

  v5 = v2[52];
  if (v0)
  {

    v6 = sub_1D8E56BD4;
  }

  else
  {
    sub_1D8DADDD4(v2[47]);

    v6 = sub_1D8DADE30;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D8DADDD4(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8DADE30()
{
  v12 = v0[51];
  v13 = v0[50];
  v14 = v0[47];
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[35];
  (*(v0[38] + 8))(v0[37]);
  sub_1D8D088B4(v1 + *(v2 + 60), v4, &qword_1ECAB4938, &qword_1D918B9A0);
  sub_1D8D08A50(v1, &qword_1ECAB4908, &qword_1D918AFB0);
  (*(v5 + 16))(v3, v4, v6);
  sub_1D8D08A50(v4, &qword_1ECAB4938, &qword_1D918B9A0);
  sub_1D8DADA18(v9);
  (*(v5 + 8))(v3, v6);

  v10 = v0[1];

  return v10();
}

void sub_1D8DADFEC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = sub_1D9178B6C();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [a2 setValue:v4 forKey:v5];
}

uint64_t ArtworkFormat.cgIdentifier.getter(unsigned __int8 a1)
{
  v2 = sub_1D91772BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 - 1 >= 2)
  {
    if (a1)
    {
      sub_1D917726C();
    }

    else
    {
      sub_1D917723C();
    }
  }

  else
  {
    sub_1D917727C();
  }

  sub_1D917721C();
  (*(v3 + 8))(v6, v2);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v7;
}

unint64_t sub_1D8DAE1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, &v11, &qword_1ECAB43B0, &qword_1D9188F18);
      v5 = v11;
      result = sub_1D8DAE2CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D8D65618(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D8DAE2CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1D9179DBC();
  type metadata accessor for CFString(0);
  sub_1D8F0CA8C(&unk_1EDCD5BB8, type metadata accessor for CFString);
  sub_1D917712C();
  v4 = sub_1D9179E1C();

  return sub_1D8DAE45C(a1, v4);
}

uint64_t sub_1D8DAE410()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1D917713C();
}

unint64_t sub_1D8DAE45C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1D8F0CA8C(&unk_1EDCD5BB8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1D917711C();

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

uint64_t sub_1D8DAE57C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

_OWORD *sub_1D8DAE5B8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1D8DAE2CC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1D8F822A8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1D8DAE744(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1D8DAE2CC(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);

    return sub_1D8D65618(a1, v20);
  }

  else
  {
    sub_1D8DAEA7C(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1D8DAE744(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43A8, &qword_1D9188F10);
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1D8D65618(v22, v34);
      }

      else
      {
        sub_1D8CFAD1C(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1D9179DBC();
      type metadata accessor for CFString(0);
      sub_1D8D111F4(&unk_1EDCD5BB8, type metadata accessor for CFString);
      sub_1D917712C();
      result = sub_1D9179E1C();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1D8D65618(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1D8DAEA7C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1D8D65618(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

os_log_t _MTLogCategoryPrivacy()
{
  v0 = os_log_create("com.apple.podcasts", "Privacy");

  return v0;
}

uint64_t sub_1D8DAEBD4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8DAEC48()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0D70);
  __swift_project_value_buffer(v0, qword_1ECAB0D70);
  return sub_1D917742C();
}

uint64_t sub_1D8DAECC8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1D8F41170;
  }

  else
  {
    v3 = sub_1D8F41078;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5ColorOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5ColorO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:priority:trace:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v11 = a7;
  v19 = a1[1];
  v61 = *a1;
  v62 = v19;
  v63 = *(a1 + 4);
  v20 = *(a1 + 5);
  v21 = *(a1 + 6);
  v22 = *(a1 + 136);
  v57 = *(a1 + 120);
  v58 = v22;
  v59 = *(a1 + 152);
  v60 = *(a1 + 21);
  v23 = *(a1 + 72);
  v53 = *(a1 + 56);
  v54 = v23;
  v24 = *(a1 + 104);
  v55 = *(a1 + 88);
  v56 = v24;
  v51 = *a3;
  v25 = *a6;
  sub_1D8D728EC(a7, v52);
  *(a8 + 224) = 0u;
  *(a8 + 201) = 16;
  *(a8 + 240) = 0u;
  *(a8 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, a11);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a9);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a10);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v20);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v21);
  v65.width = 0.0;
  v65.height = 0.0;
  v64.width = a9;
  v64.height = a10;
  if (CGSizeEqualToSize(v64, v65))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD5E28);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v11;
      v30 = v25;
      v31 = a2;
      v32 = a4;
      v33 = a5;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v34, 2u);
      v35 = v34;
      a5 = v33;
      a4 = v32;
      a2 = v31;
      v25 = v30;
      v11 = v29;
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }
  }

  if (v20 == 0.0 || v21 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v36 = sub_1D917744C();
    __swift_project_value_buffer(v36, qword_1EDCD5E28);
    v37 = sub_1D917741C();
    v38 = sub_1D9178CFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v11;
      v40 = v25;
      v41 = a2;
      v42 = a4;
      v43 = a5;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1D8CEC000, v37, v38, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v44, 2u);
      v45 = v44;
      a5 = v43;
      a4 = v42;
      a2 = v41;
      v25 = v40;
      v11 = v39;
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }
  }

  sub_1D8D7621C(v11);
  v46 = v62;
  *a8 = v61;
  *(a8 + 16) = v46;
  *(a8 + 32) = v63;
  *(a8 + 40) = v20;
  *(a8 + 48) = v21;
  v47 = v58;
  *(a8 + 120) = v57;
  *(a8 + 136) = v47;
  *(a8 + 152) = v59;
  *(a8 + 168) = v60;
  v48 = v54;
  *(a8 + 56) = v53;
  *(a8 + 72) = v48;
  v49 = v56;
  *(a8 + 88) = v55;
  *(a8 + 104) = v49;
  *(a8 + 176) = a9;
  *(a8 + 184) = a10;
  *(a8 + 192) = a11;
  *(a8 + 200) = a2 & 1;
  *(a8 + 201) = v51;
  *(a8 + 202) = a4 & 1;
  *(a8 + 203) = v25;
  *(a8 + 208) = a5;
  *(a8 + 216) = 3;
  return sub_1D8D412B0(v52, a8 + 224);
}

double ArtworkRequest.targetSize.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

CGSize __swiftcall UniformBucketingStrategy.bucketedSize(for:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = *(v5 + 16);
  v7 = (v5 + 32);
  while (v6)
  {
    v8 = *v7++;
    v9 = v8;
    --v6;
    if (v8 >= width)
    {
      v10 = width;
      v11 = height;
      if (v9 > 0.0)
      {
        v11 = ceil(v9 * height / width);
        v10 = v9;
      }

      goto LABEL_8;
    }
  }

  v10 = width;
  v11 = height;
  if (v4 > 0.0)
  {
    v11 = ceil(v4 * height / width);
    v10 = *v1;
  }

LABEL_8:
  if (qword_1EDCD5E20 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD5E28);
  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136315394;
    v17 = sub_1D91790DC();
    v19 = sub_1D8CFA924(v17, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_1D91790DC();
    v22 = sub_1D8CFA924(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Performed uniform size bucketing: %s -> %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v23 = v10;
  v24 = v11;
  result.height = v24;
  result.width = v23;
  return result;
}

uint64_t sub_1D8DAF458(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0;
  }

  sub_1D8DAF598(&v2, a1);
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  v2 = 0;
  v3 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x74616F6C464743, 0xE700000000000000);
  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CD6D0);
  MEMORY[0x1DA7298F0](7630409, 0xE300000000000000);
  MEMORY[0x1DA7298F0](0xD00000000000002ELL, 0x80000001D91CD6F0);
  result = sub_1D91796DC();
  __break(1u);
  return result;
}

unint64_t sub_1D8DAF598(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v5)
  {
    LOBYTE(v4) = 0;
    v3 = 1;
    goto LABEL_30;
  }

  if (v3 == 2047)
  {
    goto LABEL_42;
  }

  if (v3)
  {
    if (v3 > 0x43E)
    {
      goto LABEL_42;
    }

    v5 = v3 - 1023;
    v6 = __clz(__rbit64(v4));
    if (v4)
    {
      v7 = 52 - v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = __clz(v4);
    v5 = -1011 - v8;
    v6 = __clz(__rbit64(v4));
    v7 = (v8 ^ 0x3F) - v6;
  }

  v3 = v5 >= v7;
  v9 = v7 + v6;
  v2 = v5 - v9;
  if (v9 > 63)
  {
    if (v2 < -64 || v2 > 64)
    {
      goto LABEL_16;
    }
  }

  else if (v2 < -64 || v2 > 64)
  {
    goto LABEL_16;
  }

  if (v2 < 0)
  {
    goto LABEL_37;
  }

  if (v2 != 64)
  {
    v4 <<= v2;
    if (v5 != 63)
    {
      goto LABEL_22;
    }

LABEL_39:
    if (a2 < 0.0 && !v4)
    {
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_16:
  if (v5 == 63)
  {
    if (a2 < 0.0)
    {
      LOBYTE(v4) = 0;
      v5 = 0x8000000000000000;
      goto LABEL_30;
    }

LABEL_42:
    v5 = 0;
    v3 = 0;
    LOBYTE(v4) = 1;
    goto LABEL_30;
  }

  v2 = 0;
  v4 = 0;
  if (v5 < 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v2 = 1 << v5;
LABEL_25:
  while (1)
  {
    v5 = v4 | v2;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      LOBYTE(v4) = 0;
      v5 = -v5;
      goto LABEL_30;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (v2 == -64)
    {
      goto LABEL_16;
    }

    v4 >>= -v2;
    if (v5 == 63)
    {
      goto LABEL_39;
    }

LABEL_22:
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }

    v2 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  LOBYTE(v4) = 0;
LABEL_30:
  *a1 = v5;
  *(a1 + 8) = v4;
  return v3;
}

uint64_t Traceable.traced(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  sub_1D8CFD9D8(a1, v9);
  return (*(a3 + 16))(v9, a2, a3);
}

uint64_t sub_1D8DAF7F8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D8DAF834@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *(a2 + 24) = result;
  *a2 = v3;
  return result;
}

void *sub_1D8DAF86C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

void sub_1D8DAF8AC(void *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v4 integerForKey_];

  *a1 = v7;
}

void *sub_1D8DAF904@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

void sub_1D8DAF944(_BYTE *a1@<X8>)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(v4) = [v4 BOOLForKey_];

  *a1 = v4;
}

uint64_t sub_1D8DAF99C(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *v2 + 32;
    do
    {
      sub_1D8CFD9D8(v6, v9);
      v7 = v10;
      v8 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      (*(v8 + 8))(v5, a2, v7, v8);
      result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Void __swiftcall SignpostTrace.Interval.end(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_1D91773AC();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39[-v9];
  v43 = sub_1D917734C();
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39[-v16];
  if (object)
  {
    v41 = countAndFlagsBits;
    v18 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
    v19 = *(v1 + 24);
    v20 = *v1;
    v21 = v1[1];

    v14 = sub_1D917737C();
    sub_1D91773DC();
    v40 = sub_1D9178F4C();
    if (sub_1D917918C())
    {
      if (v19)
      {
        if (!(v21 >> 32))
        {
          v22 = v42;
          if ((v21 & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v21 >> 16 <= 0x10)
          {

            v21 = &v44;
            goto LABEL_15;
          }

          goto LABEL_32;
        }
      }

      else
      {

        if (v21)
        {
          v22 = v42;
LABEL_15:

          sub_1D917740C();

          if ((*(v22 + 88))(v10, v4) == *MEMORY[0x1E69E93E8])
          {
            v29 = 0;
            v30 = 0;
            v31 = "[Error] Interval already ended";
          }

          else
          {
            (*(v22 + 8))(v10, v4);
            v31 = "%s";
            v30 = 2;
            v29 = 1;
          }

          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v44 = v33;
          *v32 = v30;
          *(v32 + 1) = v29;
          *(v32 + 2) = 2080;
          *(v32 + 4) = sub_1D8CFA924(v41, object, &v44);
          v34 = sub_1D917732C();
          _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v14, v40, v34, v21, v31, v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v33);
          MEMORY[0x1DA72CB90](v33, -1, -1);
          MEMORY[0x1DA72CB90](v32, -1, -1);

          goto LABEL_19;
        }

        __break(1u);
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_10:

LABEL_19:
    (*(v11 + 8))(v17, v43);
    return;
  }

  v23 = type metadata accessor for SignpostTrace.Interval(0);
  v24 = *(v1 + 24);
  v26 = *v1;
  v25 = v1[1];
  v27 = v1 + *(v23 + 24);
  v28 = sub_1D917737C();
  sub_1D91773DC();
  v17 = sub_1D9178F4C();
  if (sub_1D917918C())
  {
    if (v24)
    {
      if (v25 >> 32)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((v25 & 0xFFFFF800) == 0xD800)
      {
LABEL_36:
        __break(1u);
        return;
      }

      if (v25 >> 16 > 0x10)
      {
        goto LABEL_34;
      }

      v25 = &v45;
    }

    else if (!v25)
    {
      __break(1u);
      goto LABEL_10;
    }

    sub_1D917740C();

    v35 = v42;
    if ((*(v42 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v7, v4);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v28, v17, v38, v25, v36, v37, 2u);
    MEMORY[0x1DA72CB90](v37, -1, -1);
  }

  (*(v11 + 8))(v14, v43);
}

void sub_1D8DAFF38()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 9);
  sub_1D8DB01BC(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

uint64_t ArtworkModel.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 65);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x1DA72B3C0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1DA72B3C0](*&v10);
  ArtworkCrop.cropCodeString.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (v5 == 255)
  {
    return sub_1D9179DDC();
  }

  sub_1D9179DDC();
  if (v5)
  {
    if (v5 != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](v3);
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1DA72B390](v12);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

void sub_1D8DB00D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 16) & 1) == 0)
  {
    v10 = *a1;
    v6 = a2[3];
    v7 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v6);
    (*(v7 + 16))("ACTIVITY_END", 12, 2, a3, a4, v6, v7);
    os_activity_scope_leave(&v10);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8DB01E0(uint64_t a1)
{
  v2 = type metadata accessor for LoggerTrace(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8DB0240(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24[-v11];
  v13 = v1[2];
  os_unfair_lock_lock(v13 + 4);
  v14 = *(*v2 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v2 + v14, v24);
  v15 = v25;
  sub_1D8D740C4(v24);
  os_unfair_lock_unlock(v13 + 4);
  if (v15 < 2)
  {
    return sub_1D91777EC();
  }

  v17 = *v2;
  v18 = *v2;
  if (*(v2 + *(*v2 + 144)))
  {
    goto LABEL_6;
  }

  v19 = v2 + *(v18 + 192);
  (*(v4[14] + 24))(v2 + *(v18 + 184), v4[11]);
  LODWORD(v19) = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness);
  (*(v9 + 8))(v12, v8);
  if (v19 == 1)
  {
    v17 = *v2;
LABEL_6:
    v20 = *(v17 + 192);
    (*(v4[14] + 32))(a1, v2 + *(v17 + 184), v4[11]);
  }

  v21 = v4[12];
  v22 = v4[15];
  v23 = v2 + *(*v2 + 136);
  return sub_1D91777AC();
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation18SubscriptionStatusO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t InMemoryAssetCache.store(asset:at:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a2;
  v5 = *v3;
  v6 = *v3;
  v7 = sub_1D9176E3C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v5[11];
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  v17 = v5[10];
  *&v19 = v17;
  *(&v19 + 1) = v11;
  v36 = v5[14];
  v18 = v36;
  v29 = *(v6 + 6);
  v35 = v29;
  v34 = v19;
  v20 = type metadata accessor for InMemoryAssetCache.Record();
  (*(v12 + 16))(v16, a1, v11);
  v21 = (*(*(&v29 + 1) + 8))(v11);
  sub_1D9176E0C();
  v22 = *(v20 + 48);
  v23 = *(v20 + 52);
  swift_allocObject();
  v24 = sub_1D8DB07EC(v16, v21, v10);
  v25 = v3[2];
  v31 = v28;
  v32 = v3;
  v33 = v24;
  *&v34 = v17;
  *(&v34 + 1) = v11;
  v35 = v29;
  v36 = v18;
  type metadata accessor for InMemoryAssetCache.SizedStore();
  sub_1D8D056BC(sub_1D8DB08E0, v30, v25);
}

uint64_t sub_1D8DB07EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(*v3 + 88) - 8) + 32))(v3 + *(*v3 + 120), a1);
  *(v3 + *(*v3 + 128)) = a2;
  v6 = *(*v3 + 136);
  v7 = sub_1D9176E3C();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  return v3;
}

uint64_t sub_1D8DB0900(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v35 = a4;
  v36 = a1;
  v5 = *a3;
  v6 = *(*a3 + 96);
  v7 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v30 - v12;
  v31 = *(v6 + 16);
  v32 = a2;
  v31(v7, v6, v11);
  v14 = *(v5 + 88);
  *&v15 = v7;
  v33 = *(v5 + 104);
  v34 = v14;
  *(&v15 + 1) = v14;
  *&v16 = v6;
  *(&v16 + 1) = v33;
  v17 = v5;
  v18 = v36;
  v19 = *(v17 + 112);
  v38 = v16;
  v37 = v15;
  v39 = v19;
  type metadata accessor for InMemoryAssetCache.Record();
  v30[1] = sub_1D91780DC();
  sub_1D917807C();
  (*(v9 + 8))(v13, AssociatedTypeWitness);
  if (v40)
  {
    v20 = *(v40 + *(*v40 + 128));

    v22 = v18[1];
    v23 = v22 >= v20;
    v24 = v22 - v20;
    if (!v23)
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return result;
    }

    v18[1] = v24;
  }

  v25 = v35;
  v26 = *(*v35 + 128);
  result = sub_1D8DB0D00(*(v35 + v26), v18, v7, v34, v6, v33, v19);
  if (result)
  {
    v27 = *(v25 + v26);
    v28 = v18[1];
    v23 = __CFADD__(v28, v27);
    v29 = v28 + v27;
    if (v23)
    {
      goto LABEL_9;
    }

    v18[1] = v29;
    (v31)(v7, v6);
    *&v37 = v25;

    return sub_1D917810C();
  }

  return result;
}