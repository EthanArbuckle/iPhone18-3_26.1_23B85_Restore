unint64_t sub_1D8D6BB7C()
{
  result = qword_1ECAB4440;
  if (!qword_1ECAB4440)
  {
    sub_1D9176A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4440);
  }

  return result;
}

uint64_t sub_1D8D6BCE0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for CategoriesSyncUtil()
{
  result = qword_1ECAB2020;
  if (!qword_1ECAB2020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D6BD44()
{
  result = sub_1D9176E3C();
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

uint64_t CategoriesSyncUtil.init(categoriesSyncThresholdProvider:categoriesProvider:categoryIngester:lastCategoriesSyncDate:queue:ctx:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - v13;
  v15 = sub_1D9176E3C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_syncSession) = 0;
  sub_1D8CFD9D8(a1, v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesSyncThresholdProvider);
  sub_1D8CFD9D8(a2, v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoriesProvider);
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_categoryIngester) = a3;
  sub_1D8CF6B1C(a4, v14);
  v20 = *(v16 + 48);
  if (v20(v14, 1, v15) == 1)
  {
    sub_1D9176CEC();
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v20(v14, 1, v15) != 1)
    {
      sub_1D8D08A50(v14, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    sub_1D8D08A50(a4, &qword_1ECAB75C0, &unk_1D9188A50);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v16 + 32))(v19, v14, v15);
  }

  (*(v16 + 32))(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_lastCategoriesSyncDate, v19, v15);
  v21 = v24;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_workQueue) = v23;
  *(v6 + OBJC_IVAR____TtC18PodcastsFoundation18CategoriesSyncUtil_ctx) = v21;
  return v6;
}

id sub_1D8D6C08C()
{
  if (sub_1D8D6B7B0())
  {
    v1 = [objc_opt_self() predicateForStationEligibleEpisodes];
    v2 = [v0 defaultSettings];
    v3 = MEMORY[0x1E69E6158];
    v4 = MEMORY[0x1E69E6530];
    v5 = MEMORY[0x1E69E65A8];
    if (v2)
    {
      v6 = v2;
      v7 = [v2 integerForEpisodesToShow];

      if (v7 >= 1)
      {
        sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v8 = swift_allocObject();
        *(v8 + 16) = xmmword_1D918A530;
        v9 = sub_1D917820C();
        v11 = v10;
        *(v8 + 56) = v3;
        v12 = sub_1D8D34978();
        *(v8 + 32) = v9;
        *(v8 + 40) = v11;
        *(v8 + 96) = v4;
        *(v8 + 104) = v5;
        *(v8 + 64) = v12;
        *(v8 + 72) = v7;
        v13 = sub_1D9178C8C();
        v14 = [v1 AND_];

        v1 = v14;
      }
    }

    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v15 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);
    os_unfair_lock_unlock((v15 + 24));
    if (v16)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      sub_1D917946C();

      v17 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v17);

      MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91D1AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D918A530;
      v19 = sub_1D917820C();
      v21 = v20;
      *(v18 + 56) = v3;
      v22 = sub_1D8D34978();
      *(v18 + 32) = v19;
      *(v18 + 40) = v21;
      *(v18 + 96) = v4;
      *(v18 + 104) = v5;
      *(v18 + 64) = v22;
      *(v18 + 72) = 256;
      v23 = sub_1D9178C8C();

      return v23;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    v25 = [objc_opt_self() falsePredicate];

    return v25;
  }
}

void sub_1D8D6C624(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*&v4[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_accountStore] ams_activeiTunesAccount];
  if (v19)
  {
    v41 = v13;
    v42 = v9;

    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0FE8);
    v21 = sub_1D917741C();
    v22 = sub_1D9178D1C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = v12;
      v24 = v8;
      v25 = v14;
      v26 = a3;
      v27 = a1;
      v28 = a2;
      v29 = v23;
      *v23 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Starting to sync music subscription information.", v23, 2u);
      v30 = v29;
      a2 = v28;
      a1 = v27;
      a3 = v26;
      v14 = v25;
      v8 = v24;
      v12 = v40;
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    v31 = *&v4[OBJC_IVAR___MTMusicSubscriptionInfoSyncUtil_workQueue];
    v32 = swift_allocObject();
    *(v32 + 16) = v4;
    *(v32 + 24) = a1 & 1;
    *(v32 + 32) = a2;
    *(v32 + 40) = a3;
    *(v32 + 48) = ObjectType;
    aBlock[4] = sub_1D90665EC;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_68;
    v33 = _Block_copy(aBlock);
    v34 = v4;

    sub_1D9177E4C();
    v44 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBDF0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v18, v12, v33);
    _Block_release(v33);
    (*(v42 + 8))(v12, v8);
    (*(v14 + 8))(v18, v41);
  }

  else
  {
    if (qword_1EDCD0FE0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1EDCD0FE8);
    ObjectType = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (os_log_type_enabled(ObjectType, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8CEC000, ObjectType, v36, "Not syncing Music Subscription Info because user is not signed in.", v37, 2u);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    v38 = ObjectType;
  }
}

uint64_t sub_1D8D6CB20()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8D6CB60()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD0FE8);
  __swift_project_value_buffer(v0, qword_1EDCD0FE8);
  return sub_1D917742C();
}

id sub_1D8D6CBE0(void *a1)
{
  v1 = a1;

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1D8D6CCB8()
{
  result = [objc_allocWithZone(type metadata accessor for FairPlayRolloutController()) init];
  qword_1EDCD2AE0 = result;
  return result;
}

id sub_1D8D6CD58()
{
  v1 = [v0 defaultSettings];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 predicateForExternalType_];
    v5 = [v3 predicateForStationEligibleEpisodes];
    v6 = [v4 AND_];

    if (([v2 showPlayedEpisodes] & 1) == 0)
    {
      v7 = [v3 predicateForVisuallyPlayed_];
      v8 = [v6 AND_];

      v6 = v8;
    }

    if (qword_1ECAB1CC0 != -1)
    {
      swift_once();
    }

    v9 = *(qword_1ECAB1CD0 + OBJC_IVAR___PFRestrictionsController__state);
    os_unfair_lock_lock((v9 + 24));
    v10 = *(v9 + 16);
    os_unfair_lock_unlock((v9 + 24));
    if (v10)
    {
      v11 = [v3 predicateForExplicit_];
      v12 = [v6 AND_];

      v6 = v12;
    }

    if ([v2 mediaType])
    {
      v13 = [v2 mediaType];
      v14 = kEpisodeAudio;
      if (v13 != 1)
      {
        v14 = kEpisodeVideo;
      }

      v15 = *v14;
      v16 = sub_1D917820C();
      v18 = v17;
      sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1D9189080;
      *(v19 + 56) = MEMORY[0x1E69E6158];
      *(v19 + 64) = sub_1D8D34978();
      *(v19 + 32) = v16;
      *(v19 + 40) = v18;
      v20 = sub_1D9178C8C();
      v21 = [v6 AND_];

      return v21;
    }

    else
    {

      return v6;
    }
  }

  else
  {
    v23 = [objc_opt_self() falsePredicate];

    return v23;
  }
}

uint64_t _s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0()
{
  v18 = &type metadata for Podcasts;
  v0 = sub_1D8CF0F2C();
  v19 = v0;
  LOBYTE(v17[0]) = 9;
  v1 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  if (v1)
  {
    v18 = &type metadata for Podcasts;
    v19 = v0;
    LOBYTE(v17[0]) = 6;
    v2 = sub_1D917710C();
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = sub_1D8D6D320();
  if (v4 == 2)
  {
    v5 = qword_1ECAB5808;
    v6 = off_1ECAB5810;

    v7 = sub_1D8D6D934(v5, v6, 1);
  }

  else
  {
    v7 = v4;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F68);
  v9 = sub_1D917741C();
  v10 = sub_1D9178CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315906;
    *(v11 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, v17);
    *(v11 + 12) = 2080;
    if (v2 & v7)
    {
      v13 = 0;
    }

    else
    {
      v13 = 542396238;
    }

    if (v2 & v7)
    {
      v14 = 0xE000000000000000;
    }

    else
    {
      v14 = 0xE400000000000000;
    }

    v15 = sub_1D8CFA924(v13, v14, v17);

    *(v11 + 14) = v15;
    *(v11 + 22) = 1024;
    *(v11 + 24) = v2 & 1;
    *(v11 + 28) = 1024;
    *(v11 + 30) = (v7 & 1) == 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "%s FairPlay V2 is %srolled out, local feature enabled %{BOOL}d, rollback enabled %{BOOL}d.", v11, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  return v2 & v7 & 1;
}

uint64_t sub_1D8D6D320()
{
  if (![objc_opt_self() isRunningOnInternalOS])
  {
    return 2;
  }

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1D8D64450(v7);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

id sub_1D8D6D430()
{
  v1 = [v0 deletedEpisodes];
  if (v1 && (v2 = v1, v3 = sub_1D9178A9C(), v2, sub_1D8D6D610(v3), v5 = v4, , v5))
  {
    sub_1D8D6DA20(v5);
    v7 = v6;

    v15 = v7;

    sub_1D8D6DD80(&v15);

    v8 = v15;
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D918A530;
    v10 = sub_1D917820C();
    v12 = v11;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1D8D34978();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    *(v9 + 104) = sub_1D8D6E8B8();
    *(v9 + 72) = v8;
    return sub_1D9178C8C();
  }

  else
  {
    v14 = [objc_opt_self() truePredicate];

    return v14;
  }
}

void sub_1D8D6D610(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8838, &qword_1D91A3BA8);
    v2 = sub_1D917942C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v31[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v28 = v27;
LABEL_31:
      sub_1D8D9A2A4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v28 << 6)), v31);
      v29 = sub_1D91793BC();
      sub_1D8D9A308(v31);
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1D8FD7C64(v30);
      v27 = v28;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v28);
      ++v27;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1D8D9A2A4(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v31);
      v14 = sub_1D91793BC();
      sub_1D8D9A308(v31);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = *(v2 + 40);
      v18 = sub_1D917913C();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D8D6D934(uint64_t a1, uint64_t a2, char a3)
{
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v3 objectForKey_];

  if (v6)
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
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      a3 = v8;
    }
  }

  else
  {
    sub_1D8D64450(v11);
  }

  return a3 & 1;
}

void sub_1D8D6DA20(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D917931C();
    sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D8FD7BFC();
    sub_1D9178B3C();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D917938C() || (sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1D8D1B144();
      return;
    }

LABEL_17:
    v12 = [v11 uuid];
    if (v12)
    {
      v13 = v12;
      v19 = sub_1D917820C();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D8D4241C(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D8D6DD80(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8D6DDEC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D8D6E3C0(v5);
  *a1 = v2;
  return result;
}

id sub_1D8D6DE00(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v31 = a2;
  v32 = a3;
  v30 = a1;
  ObjectType = swift_getObjectType();
  v29 = sub_1D9178E0C();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9178D8C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1D9177E9C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v28 = OBJC_IVAR___PFFairPlayValidationManager_internalQueue;
  v13 = sub_1D8CFD888();
  v27[0] = "ion/FairPlayValidationManager]:";
  v27[1] = v13;
  sub_1D9177E3C();
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8090], v29);
  v14 = sub_1D9178E4C();
  v15 = v28;
  *&a4[v28] = v14;
  v16 = &a4[OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix];
  v17 = type metadata accessor for DispatchingFairPlayKeyLoading();
  *v16 = 0;
  *(v16 + 1) = 0;
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = v30;
  *&v18[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = v14;
  v37.receiver = v18;
  v37.super_class = v17;
  v19 = v14;
  *&a4[OBJC_IVAR___PFFairPlayValidationManager_keyLoader] = objc_msgSendSuper2(&v37, sel_init);
  *&a4[OBJC_IVAR___PFFairPlayValidationManager_episodeRemovalManager] = v31;
  v20 = *&a4[v15];
  v36[3] = type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v36[4] = &off_1F54681B0;
  v36[0] = v32;
  v21 = type metadata accessor for DispatchingFairPlayEpisodeDataFetching();
  v22 = objc_allocWithZone(v21);
  sub_1D8CFD9D8(v36, &v22[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance]);
  *&v22[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue] = v20;
  v35.receiver = v22;
  v35.super_class = v21;
  v23 = v20;
  swift_unknownObjectRetain();

  v24 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);

  v25 = &a4[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher];
  *(v25 + 3) = v21;
  *(v25 + 4) = &off_1F5467218;
  *v25 = v24;
  v34.receiver = a4;
  v34.super_class = ObjectType;
  return objc_msgSendSuper2(&v34, sel_init);
}

char *sub_1D8D6E1C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
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

uint64_t sub_1D8D6E388()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8D6E3C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D9179A2C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D917867C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8F0A3DC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D8F0A30C(0, v2, 1, a1);
  }

  return result;
}

uint64_t FairPlayValidationManager.validateDownloadedEpisodes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D9177E0C();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___PFFairPlayValidationManager_internalQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1D8D6F9C0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_23;
  v16 = _Block_copy(aBlock);

  sub_1D8D1F93C(a1);
  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_1D8D6E7DC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D6E814()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

unint64_t sub_1D8D6E8B8()
{
  result = qword_1ECAB8520;
  if (!qword_1ECAB8520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8520);
  }

  return result;
}

uint64_t sub_1D8D6E9F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1D917744C();
  v6 = __swift_project_value_buffer(v5, a2);
  swift_beginAccess();
  return (*(*(v5 - 8) + 16))(a3, v6, v5);
}

uint64_t sub_1D8D6EBC0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D8D6ECD0, 0, 0);
}

uint64_t sub_1D8D6ECD0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  swift_storeEnumTagMultiPayload();
  v5(v1);
  (*(v2 + 8))(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D8D6EE7C()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1ECAB0EC0);
  __swift_project_value_buffer(v0, qword_1ECAB0EC0);
  return sub_1D917742C();
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));
  a2(*(v2 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

id sub_1D8D6F198(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1D8D6F530();
    v5 = sub_1D917802C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id PFAnalyticsNumberForGlobalEpisodeLimit()
{
  v0 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v1 = [v0 objectForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  v2 = PFAnalyticsNumberFromPodcastEpisodeLimitPolicy(v1);

  return v2;
}

id sub_1D8D6F298()
{
  v0 = PFAnalyticsNumberForGlobalEpisodeLimit();
  if (v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0xD000000000000015;
    v2 = inited + 32;
    *(inited + 40) = 0x80000001D91D8E00;
    *(inited + 48) = v0;
    v0 = sub_1D8D6F4B4(inited);
    swift_setDeallocating();
    sub_1D8D6F4C8(v2);
  }

  return v0;
}

void *PFAnalyticsNumberFromPodcastEpisodeLimitPolicy(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 unsignedLongLongValue];
    v3 = &unk_1F54BDD18;
    if (v2 > 6)
    {
      if (v2 > 4294967294)
      {
        if (v2 == 0x100000001)
        {
          v5 = &unk_1F54BDE38;
        }

        else
        {
          v5 = &unk_1F54BDD18;
        }

        if (v2 == 0x100000000)
        {
          v6 = &unk_1F54BDE20;
        }

        else
        {
          v6 = v5;
        }

        if (v2 == 0xFFFFFFFFLL)
        {
          v3 = &unk_1F54BDE08;
        }

        else
        {
          v3 = v6;
        }
      }

      else
      {
        switch(v2)
        {
          case 7:
            v3 = &unk_1F54BDDC0;
            break;
          case 8:
            v3 = &unk_1F54BDDD8;
            break;
          case 9:
            v3 = &unk_1F54BDDF0;
            break;
        }
      }
    }

    else if (v2 > 3)
    {
      if (v2 == 4)
      {
        v3 = &unk_1F54BDD78;
      }

      else if (v2 == 5)
      {
        v3 = &unk_1F54BDD90;
      }

      else
      {
        v3 = &unk_1F54BDDA8;
      }
    }

    else
    {
      switch(v2)
      {
        case 1:
          v3 = &unk_1F54BDD30;
          break;
        case 2:
          v3 = &unk_1F54BDD48;
          break;
        case 3:
          v3 = &unk_1F54BDD60;
          break;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D8D6F4C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8D6F530()
{
  result = qword_1EDCD07F8;
  if (!qword_1EDCD07F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD07F8);
  }

  return result;
}

uint64_t sub_1D8D6F57C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v37 = a8;
  v36 = a7;
  v34 = a6;
  v33 = a5;
  v32 = a4;
  v35 = a9;
  v13 = *v9;
  v14 = *v9;
  v15 = sub_1D917752C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v13[21];
  v21 = v13[10];
  v22 = v13[13];
  v41[1] = 0;
  v41[2] = 0;
  v40 = v22;
  v41[0] = MEMORY[0x1E69E7CC0];
  v38 = v21;
  v31 = *(v14 + 11);
  v39 = v31;
  v23 = type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  v24 = sub_1D8D07908(v41, v23);

  *(v9 + v20) = v24;
  sub_1D917751C();
  (*(v16 + 32))(v9 + qword_1EDCDE880, v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DF0, &qword_1D91955B8);
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0;
  *(v9 + *(*v9 + 176)) = v25;
  (*(*(v31 - 8) + 16))(v9 + *(*v9 + 120), a1);
  sub_1D8CFD9D8(a2, v9 + *(*v9 + 128));
  v26 = v9 + *(*v9 + 136);
  v27 = v32;
  *v26 = a3;
  *(v26 + 8) = v27;
  *(v26 + 16) = v33;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v28 = (v9 + *(*v9 + 144));
  v29 = v36;
  *v28 = v34;
  v28[1] = v29;
  *(v9 + *(*v9 + 152)) = v37;
  *(v9 + *(*v9 + 160)) = v35;
  return v9;
}

void sub_1D8D6F9CC(uint64_t a1, void (*a2)(id, void *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD0F68);
    v8 = v6;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CDC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v13 = sub_1D8D6FDF8();
      v15 = sub_1D8CFA924(v13, v14, &v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "%s Validating downloaded FairPlay episodes.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v16 = swift_allocObject();
    v16[2] = v8;
    v16[3] = a2;
    v16[4] = a3;
    v17 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
    v18 = swift_allocObject();
    v18[2] = sub_1D8D96718;
    v18[3] = v16;
    v18[4] = v17;
    v18[5] = v8;
    v20 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher + 24];
    v19 = *&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher + 32];
    __swift_project_boxed_opaque_existential_1(&v8[OBJC_IVAR___PFFairPlayValidationManager_episodeFetcher], v20);
    v21 = swift_allocObject();
    v21[2] = sub_1D8EAD99C;
    v21[3] = v18;
    v21[4] = v8;
    v29 = *(v19 + 16);
    v22 = v8;
    sub_1D8D1F93C(a2);

    v23 = v17;

    v29(sub_1D8D96930, v21, v20, v19);
  }

  else if (a2)
  {
    v24 = type metadata accessor for FairPlayValidationManager.Response();
    v25 = objc_allocWithZone(v24);
    v26 = MEMORY[0x1E69E7CC0];
    *&v25[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
    *&v25[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v26;
    *&v25[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v26;
    v31.receiver = v25;
    v31.super_class = v24;
    v27 = objc_msgSendSuper2(&v31, sel_init);
    sub_1D8EAD948();
    v28 = swift_allocError();
    a2(v27, v28);
  }
}

uint64_t sub_1D8D6FD28()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_1D8D6FD70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D6FDB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_1D8D6FDF8()
{
  v1 = (v0 + OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR___PFFairPlayValidationManager____lazy_storage___logPrefix + 8);
  }

  else
  {
    v2 = 0xD00000000000002FLL;
    *v1 = 0xD00000000000002FLL;
    v1[1] = 0x80000001D91CC260;
  }

  return v2;
}

uint64_t sub_1D8D6FE5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 16);

  v10(sub_1D8D8143C, v9, v6, v7);
}

uint64_t sub_1D8D6FF68()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D6FFCC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 privateQueueContext];

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v5;
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = sub_1D8D80B1C;
  v9[4] = v8;
  v9[5] = v5;
  v13[4] = sub_1D8E966AC;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_20_1;
  v10 = _Block_copy(v13);

  v11 = v7;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8D7016C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D701C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1D8D70240(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_1D8D702A0()
{
  v3[3] = &type metadata for Podcasts;
  v3[4] = sub_1D8CF0F2C();
  LOBYTE(v3[0]) = 39;
  v0 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(v3);
  v2 = &unk_1F545D280;
  if (v0)
  {
    v2 = &unk_1F545D248;
  }

  off_1ECAB1FF0 = v2;
  return result;
}

void sub_1D8D7037C(uint64_t a1)
{
  v30 = *v1;
  v2 = v30;
  v31 = a1;
  v3 = *(v30 + 176);
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *(v1 + *(v2 + 216));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 208);
  swift_beginAccess();
  v16 = *(v1 + v15);
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (!v16)
    {
LABEL_6:
      *(v1 + *(*v1 + 232)) = 0;
      os_unfair_lock_unlock(v14 + 4);
      return;
    }
  }

  v17 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v17, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_6;
  }

  v18 = v13;
  (*(v9 + 32))(v13, v8, v3);
  swift_beginAccess();
  v19 = *(v1 + v15);
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      v20 = sub_1D91777FC();
    }

    else
    {
      if (v19 < 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v19)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v20 = v19 - 1;
    }

    *(v1 + v15) = v20;
  }

  swift_endAccess();
  *(v1 + *(*v1 + 232)) = 1;
  os_unfair_lock_unlock(v14 + 4);
  v21 = v1;
  v22 = *(v1 + *(*v1 + 224));
  os_unfair_recursive_lock_lock_with_options();
  v23 = *(v30 + 184);
  v24 = sub_1D91777AC();
  os_unfair_recursive_lock_unlock();
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
LABEL_17:
    os_unfair_lock_lock(v14 + 4);
    v25 = v21;
    swift_beginAccess();
    v26 = *(v21 + v15);
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
LABEL_26:
      swift_endAccess();
      os_unfair_lock_unlock(v14 + 4);
      goto LABEL_27;
    }

    sub_1D91777FC();
    v27 = sub_1D91777DC();
    v28 = sub_1D91777FC();
    if (v27)
    {
LABEL_25:
      *(v25 + v15) = v28;
      goto LABEL_26;
    }

    if (sub_1D91777DC())
    {
LABEL_23:
      v28 = sub_1D91777FC();
      goto LABEL_25;
    }

    if (((v26 | v24) & 0x8000000000000000) == 0)
    {
      v28 = v26 + v24;
      if (!__OFADD__(v26, v24))
      {
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return;
      }

      goto LABEL_23;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v24 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v24)
  {
    goto LABEL_17;
  }

LABEL_27:
  (*(v9 + 8))(v18, v3);
}

uint64_t _s2os12OSSignposterV18PodcastsFoundationE4task8priority4name5blockxScPSg_s12StaticStringVxyYaYAcntYas8SendableRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 128) = a5;
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

  return MEMORY[0x1EEE6DFA0](sub_1D8D708E4, 0, 0);
}

uint64_t sub_1D8D708E4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);
  v9 = *(v0 + 128);
  sub_1D8CF5C74(*(v0 + 24), v2);
  (*(v4 + 16))(v1, v5, v3);
  v10 = _sScT18PodcastsFoundations5NeverORs_rlE8priority10signposter4name5blockScTyxACGScPSg_2os12OSSignposterVs12StaticStringVxyYaYAcntcfC(v2, v1, v8, v7, v9, v6, v16, v17);
  *(v0 + 112) = v10;
  v11 = *(MEMORY[0x1E69E86C0] + 4);
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1D8D9CCEC;
  v13 = *(v0 + 64);
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DA40](v14, v10, v13);
}

uint64_t _sScT18PodcastsFoundations5NeverORs_rlE8priority10signposter4name5blockScTyxACGScPSg_2os12OSSignposterVs12StaticStringVxyYaYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v34 = a7;
  v32 = a5;
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v11 = sub_1D917739C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  sub_1D8CF5C74(a1, &v29 - v17);
  (*(v12 + 16))(v14, a2, v11);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = (v19 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v19 + v13 + 31) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a8;
  (*(v12 + 32))(&v22[v19], v14, v11);
  v23 = &v22[v20];
  v24 = v31;
  *v23 = v30;
  *(v23 + 1) = v24;
  v23[16] = v32;
  v25 = &v22[v21];
  v26 = v34;
  *v25 = v33;
  *(v25 + 1) = v26;
  v27 = sub_1D8F4D428(0, 0, v18, &unk_1D9197070, v22, a8);
  (*(v12 + 8))(a2, v11);
  sub_1D8CF5CE4(v29);
  return v27;
}

uint64_t sub_1D8D70C34()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8D70D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8D5FF18;

  return sub_1D8CF7944(a1, v5);
}

uint64_t sub_1D8D70DD8(uint64_t a1)
{
  v3 = v2;
  v18 = v1[4];
  v4 = *(sub_1D917739C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = (v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = v9[16];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1D8D58924;

  return sub_1D8D70F40(a1, v7, v8, v1 + v5, v10, v11, v15, v13);
}

uint64_t sub_1D8D70F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 56) = a8;
  *(v8 + 64) = v17;
  *(v8 + 168) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 32) = a1;
  v9 = sub_1D91773AC();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  v12 = sub_1D917734C();
  *(v8 + 96) = v12;
  v13 = *(v12 - 8);
  *(v8 + 104) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8D71088, 0, 0);
}

uint64_t sub_1D8D71088()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  sub_1D917737C();
  sub_1D917731C();
  v3 = sub_1D917737C();
  v4 = sub_1D9178F5C();
  result = sub_1D917918C();
  if (result)
  {
    v6 = *(v0 + 48);
    if ((*(v0 + 168) & 1) == 0)
    {
      if (v6)
      {
LABEL_9:
        v7 = *(v0 + 128);
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v3, v4, v9, v6, "", v8, 2u);
        MEMORY[0x1DA72CB90](v8, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v6 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v6 & 0xFFFFF800) == 0xD800)
      {
LABEL_15:
        __break(1u);
        return result;
      }

      if (v6 >> 16 <= 0x10)
      {
        v6 = (v0 + 24);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v13 = *(v0 + 56);
  (*(v12 + 16))(*(v0 + 120), v10, v11);
  v14 = sub_1D91773FC();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v0 + 136) = sub_1D91773EC();
  v17 = *(v12 + 8);
  *(v0 + 144) = v17;
  *(v0 + 152) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v10, v11);
  v22 = (v13 + *v13);
  v18 = v13[1];
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  v19[1] = sub_1D8D9BE98;
  v20 = *(v0 + 64);
  v21 = *(v0 + 32);

  return v22(v21);
}

uint64_t ArtworkRequest.key.getter()
{
  v17 = *v0;
  v18 = v0[1];
  v15 = *(v0 + 130);
  CropCode.rawValue.getter();
  sub_1D8D447DC();

  sub_1D917922C();

  sub_1D8D756D0();
  sub_1D9179A4C();
  sub_1D917922C();

  sub_1D8D75758();
  sub_1D9179A4C();
  sub_1D917922C();

  v1 = 1734701162;
  if (*(v0 + 152) != 2)
  {
    v1 = 1667851624;
  }

  v2 = 6778986;
  if (!*(v0 + 152))
  {
    v2 = 6778480;
  }

  if (*(v0 + 152) <= 1u)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  if (*(v0 + 152) <= 1u)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1DA7298F0](v3, v4);

  sub_1D917922C();

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v5 = v0[22];
  v6 = sub_1D9178A4C();
  MEMORY[0x1DA7298F0](v6);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v7 = v0[23];
  v8 = sub_1D9178A4C();
  MEMORY[0x1DA7298F0](v8);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  sub_1D8DAF458(*(v0 + 24));
  v9 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v9);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  if (*(v0 + 200))
  {
    v10 = 82;
  }

  else
  {
    v10 = 70;
  }

  MEMORY[0x1DA7298F0](v10, 0xE100000000000000);
  if (*(v0 + 201) != 16)
  {
    sub_1D917964C();
    MEMORY[0x1DA7298F0](0, 0xE000000000000000);
  }

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v16 = *(v0 + 202);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](0, 0xE000000000000000);

  v11 = v0[26];
  if (*(v11 + 16))
  {
    v12 = Array<A>.cacheKey.getter(v11);
    MEMORY[0x1DA7298F0](v12);

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  }

  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v13;
}

void sub_1D8D718AC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v4);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  sub_1D8D71950(v1 + v3, v6, *(v1 + v5), *v7);
}

void sub_1D8D71950(int a1, id a2, uint64_t a3, void (*a4)(void))
{
  [a2 setSessionSendsLaunchEvents_];
  [a2 setDiscretionary_];
  [a2 setSharedContainerIdentifier_];
  v7 = [objc_opt_self() sessionWithConfiguration:a2 delegate:a3 delegateQueue:0];
  a4();
}

uint64_t sub_1D8D71A60(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 16;
  v3 = *(a2 + 16);
  v2 = *(v4 + 8);
  return swift_getAssociatedConformanceWitness();
}

uint64_t EmitLifecycle.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8D088B4(v4 + *(a2 + 36), &v23, &qword_1ECAB4928, &qword_1D918B380);
  if (v25)
  {
    sub_1D8D6BCE0(&v23, v26);
    v22 = *(a2 + 24);
    *&v23 = *(a2 + 16);
    *(&v23 + 1) = a3;
    v24 = v22;
    v25 = a4;
    type metadata accessor for EmitLifecycle.LifecycleEmitting();
    sub_1D8CFD9D8(v26, &v23);
    v9 = v4 + *(a2 + 40);
    v10 = *v9;
    v11 = *(v9 + 8);
    v12 = (v4 + *(a2 + 44));
    v13 = *v12;
    v14 = v12[1];
    v15 = *(a2 + 52);
    v16 = *(v4 + *(a2 + 48));
    v17 = *(v4 + v15);
    v18 = *(v9 + 16);

    *&v23 = sub_1D8D71D38(a1, &v23, v10, v11, v18, v13, v14, v16, v17);
    swift_getWitnessTable();
    sub_1D9177AFC();

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    sub_1D8D08A50(&v23, &qword_1ECAB4928, &qword_1D918B380);
    v20 = *(a2 + 16);
    v21 = *(a2 + 24);
    return sub_1D9177AFC();
  }
}

uint64_t sub_1D8D71C34(uint64_t a1)
{
  result = sub_1D917752C();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 88);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1D8D71D38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v22 = *(v9 + 80);
  v23 = *(v9 + 96);
  v18 = type metadata accessor for EmitLifecycle.LifecycleEmitting();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return sub_1D8D6F57C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t Publishers.CachedAssetPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v45 = a4;
  v43 = *(*(a2 + 24) - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 40);
  v12 = v11;
  v39 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = &v38 - v15;
  v16 = *(a2 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 32);
  v46[0] = v16;
  v46[1] = v12;
  v46[2] = v28;
  v47 = v27;
  v29 = v28;
  WitnessTable = v10;
  v49 = v45;
  v30 = _s20CachedAssetPublisherV5InnerCMa();
  (*(v22 + 16))(v26, v44, v29);
  (*(v17 + 16))(v21, v4, v16);
  v31 = v40;
  (*(v13 + 16))(v40, v4 + *(a2 + 52), AssociatedTypeWitness);
  v32 = v42;
  (*(v43 + 16))(v42, v4 + *(a2 + 56), v39);
  LODWORD(v16) = *(v4 + *(a2 + 60));
  v33 = *(v4 + *(a2 + 64));
  v34 = *(v30 + 48);
  v35 = *(v30 + 52);
  swift_allocObject();
  v36 = sub_1D8D72358(v26, v21, v31, v32, v16, v33);
  v47 = v30;
  WitnessTable = swift_getWitnessTable();
  v46[0] = v36;
  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v46);
}

uint64_t sub_1D8D721BC(void *a1)
{
  v2 = a1[12];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v5 = a1[10];
    result = sub_1D91791BC();
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v7 = a1[14];
      v8 = a1[11];
      result = swift_getAssociatedTypeWitness();
      if (v9 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v14 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

char *sub_1D8D72358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v26 = a1;
  v27 = a2;
  v7 = *v6;
  v8 = *(*v6 + 80);
  v28 = sub_1D91791BC();
  v9 = *(v28 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v25 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v6 + 2) = v13;
  v14 = v7[20];
  v15 = *(v8 - 8);
  v16 = *(v15 + 56);
  v16(&v6[v14], 1, 1, v8);
  v17 = &v6[*(*v6 + 168)];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = *(*v6 + 176);
  *&v6[v18] = sub_1D91777EC();
  (*(*(v7[12] - 8) + 32))(&v6[*(*v6 + 136)], v26);
  (*(v15 + 32))(v12, v27, v8);
  v16(v12, 0, 1, v8);
  swift_beginAccess();
  (*(v9 + 40))(&v6[v14], v12, v28);
  swift_endAccess();
  v19 = *(*v6 + 184);
  v20 = v7[14];
  v21 = v7[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v6[v19], v29, AssociatedTypeWitness);
  (*(*(v21 - 8) + 32))(&v6[*(*v6 + 192)], v30, v21);
  v23 = v32;
  v6[*(*v6 + 144)] = v31;
  v6[*(*v6 + 152)] = v23;
  return v6;
}

uint64_t sub_1D8D72714()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v1 + *(*v1 + 168));
  v4 = *(*v0 + 80);
  v12 = v4;
  v5 = v2[11];
  v13 = v5;
  v6 = v2[12];
  v14 = v6;
  v7 = v2[13];
  v15 = v7;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  sub_1D8D056BC(sub_1D8F2B014, v11, v3);
  v8 = *(v1 + *(*v1 + 176));
  os_unfair_lock_lock(v8 + 24);
  sub_1D8F2B02C(&v8[4]);
  os_unfair_lock_unlock(v8 + 24);
  v9 = *(*v0 + 120);
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v19 = type metadata accessor for EmitLifecycle.LifecycleEmitting();
  WitnessTable = swift_getWitnessTable();
  v16 = v1;

  sub_1D917779C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v16);
}

uint64_t sub_1D8D728EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CombinedTrace.identifier.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v3 = v18;
    v4 = v1 + 32;
    do
    {
      sub_1D8CFD9D8(v4, v15);
      v5 = v16;
      v6 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v7 = (*(v6 + 8))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v18 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D8D41BE0((v10 > 1), v11 + 1, 1);
        v3 = v18;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v15[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v13 = sub_1D917817C();

  return v13;
}

uint64_t sub_1D8D72ADC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_1D8D72B0C()
{
  result = qword_1EDCD7708;
  if (!qword_1EDCD7708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7708);
  }

  return result;
}

uint64_t sub_1D8D72B70(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1D8D72BCC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D917752C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + v4[21]);
  v29 = v4[10];
  v30 = v4[11];
  v31 = v4[12];
  v32 = v4[13];
  v33 = a1;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v32;
  type metadata accessor for EmitLifecycle.LifecycleEmitting.Metadata();
  sub_1D8D056BC(sub_1D8F2AFD8, v28, v10);
  v11 = *v2;
  if (*(v2 + *(*v2 + 160)) == 1)
  {
    v12 = (v2 + *(*v2 + 128));
    v13 = v12[3];
    v14 = v12[4];
    v27 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v15 = v2 + *(*v2 + 136);
    v16 = *v15;
    v25 = *(v15 + 1);
    v26 = v16;
    HIDWORD(v24) = v15[16];
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1D917946C();
    v17 = (v2 + *(*v2 + 144));
    v19 = *v17;
    v18 = v17[1];

    v35 = v19;
    v36 = v18;
    MEMORY[0x1DA7298F0](0xD000000000000012, 0x80000001D91CD420);
    sub_1D8DB1938(v9);
    v20 = sub_1D917750C();
    (*(v6 + 8))(v9, v5);
    v34 = v20;
    v21 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v21);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    (*(v14 + 16))(v26, v25, HIDWORD(v24), v35, v36, v13, v14);

    v11 = *v2;
  }

  v22 = *(v2 + *(v11 + 176));
  os_unfair_lock_lock(v22 + 24);
  sub_1D8D088B4(&v22[4], &v35, qword_1ECAB6CD0, &unk_1D9195040);
  os_unfair_lock_unlock(v22 + 24);
  if (!v38)
  {
    return sub_1D8D08A50(&v35, qword_1ECAB6CD0, &unk_1D9195040);
  }

  __swift_project_boxed_opaque_existential_1(&v35, v38);
  sub_1D917782C();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v35);
}

void sub_1D8D72FA8(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v82 = *v1;
  v3 = v82[13];
  v4 = v82[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v75 = AssociatedTypeWitness;
  v74 = sub_1D91777CC();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = v69 - v7;
  v78 = sub_1D91791BC();
  v77 = *(v78 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v69 - v12;
  v79 = *(v4 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v71 = (v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v70 = v69 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v20 = sub_1D91791BC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v69 - v23;
  v81 = v19;
  v83 = *(v19 - 8);
  v25 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v76 = v69 - v27;
  v28 = *(v2 + 2);
  os_unfair_lock_lock(v28 + 4);
  v29 = *(*v2 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(&v2[v29], &v88);
  if (v89 == 1)
  {
    v40 = v28 + 4;
    goto LABEL_7;
  }

  if (v89)
  {
    sub_1D8D6BCE0(&v88, &v84);
    os_unfair_lock_unlock(v28 + 4);
    __swift_project_boxed_opaque_existential_1(&v84, v87);
    sub_1D917782C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v84);
    return;
  }

  v69[0] = v13;
  v69[1] = v3;
  os_unfair_lock_unlock(v28 + 4);
  v30 = v82;
  v31 = v28;
  v32 = &v2[*(*v2 + 192)];
  (*(v82[14] + 24))(&v2[*(*v2 + 184)], v82[11]);
  v33 = v81;
  if ((*(v83 + 48))(v24, 1, v81) == 1)
  {
    (*(v21 + 8))(v24, v20);
    v34 = v31;
    os_unfair_lock_lock(v31 + 4);
    v35 = *(*v2 + 160);
    swift_beginAccess();
    v36 = v77;
    v37 = &v2[v35];
    v38 = v78;
    (*(v77 + 16))(v10, v37, v78);
    v39 = v79;
    if ((*(v79 + 48))(v10, 1, v4) == 1)
    {
      (*(v36 + 8))(v10, v38);
      v84 = 0;
      v85 = 0;
      v86 = 0;
      v87 = xmmword_1D918BEE0;
      swift_beginAccess();
      sub_1D8D74118(&v84, &v2[v29]);
      swift_endAccess();
      v40 = v34 + 4;
LABEL_7:
      os_unfair_lock_unlock(v40);
      return;
    }

    v54 = v71;
    (*(v39 + 32))(v71, v10, v4);
    v55 = *(*v2 + 176);
    swift_beginAccess();
    v56 = *&v2[v55];
    sub_1D91777FC();
    if (sub_1D91777DC())
    {
      goto LABEL_29;
    }

    sub_1D91777FC();
    v57 = sub_1D91777DC();
    v58 = sub_1D91777FC();
    if (v57)
    {
LABEL_28:
      *&v2[v55] = v58;
LABEL_29:
      swift_endAccess();
      os_unfair_lock_unlock(v34 + 4);
      v84 = v2;
      swift_getWitnessTable();
      sub_1D9177D5C();
      (*(v39 + 8))(v54, v4);
      return;
    }

    v59 = v80;
    if (sub_1D91777DC())
    {
LABEL_19:
      v58 = sub_1D91777FC();
      goto LABEL_28;
    }

    if (((v56 | v59) & 0x8000000000000000) == 0)
    {
      v58 = v56 + v59;
      if (!__OFADD__(v56, v59))
      {
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_36;
      }

      goto LABEL_19;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v71 = v31;
  v41 = v76;
  (*(v83 + 32))(v76, v24, v33);
  v42 = *(*v2 + 136);
  v43 = v30[12];
  v44 = v30[15];
  v45 = v33;
  sub_1D91777AC();
  if (v2[*(*v2 + 152)] != 1)
  {
LABEL_12:
    v52 = v71;
    os_unfair_lock_lock(v71 + 4);
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = xmmword_1D918BEE0;
    swift_beginAccess();
    sub_1D8D74118(&v84, &v2[v29]);
    swift_endAccess();
    os_unfair_lock_unlock(v52 + 4);
    v53 = v72;
    (*(*(v75 - 8) + 56))(v72, 1, 1);
    sub_1D917778C();
    (*(v73 + 8))(v53, v74);
    (*(v83 + 8))(v41, v45);
    return;
  }

  v46 = *(*v2 + 160);
  swift_beginAccess();
  v47 = v77;
  v48 = &v2[v46];
  v49 = v69[0];
  v50 = v78;
  (*(v77 + 16))(v69[0], v48, v78);
  v51 = v79;
  if ((*(v79 + 48))(v49, 1, v4) == 1)
  {
    (*(v47 + 8))(v49, v50);
    v45 = v81;
    v41 = v76;
    goto LABEL_12;
  }

  v60 = v70;
  (*(v51 + 32))(v70, v49, v4);
  os_unfair_lock_lock(v71 + 4);
  v61 = *(*v2 + 176);
  swift_beginAccess();
  v62 = *&v2[v61];
  sub_1D91777FC();
  v63 = sub_1D91777DC();
  v64 = v83;
  v65 = v76;
  if ((v63 & 1) == 0)
  {
    sub_1D91777FC();
    v66 = sub_1D91777DC();
    v67 = sub_1D91777FC();
    if ((v66 & 1) == 0)
    {
      v68 = v80;
      if (sub_1D91777DC())
      {
        goto LABEL_26;
      }

      if ((v62 | v68) < 0)
      {
        goto LABEL_35;
      }

      v67 = v62 + v68;
      if (__OFADD__(v62, v68))
      {
LABEL_26:
        v67 = sub_1D91777FC();
      }

      else if (v67 < 0)
      {
LABEL_37:
        __break(1u);
        return;
      }
    }

    *&v2[v61] = v67;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v71 + 4);
  v84 = v2;
  swift_getWitnessTable();
  sub_1D9177D5C();
  (*(v51 + 8))(v60, v4);
  (*(v64 + 8))(v65, v81);
}

void InMemoryAssetCache.asset(at:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5 = *(*v1 + 80);
  v6 = v2[11];
  v7 = v2[12];
  v8 = v2[13];
  v9 = v2[14];
  v10 = a1;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  type metadata accessor for InMemoryAssetCache.SizedStore();
  sub_1D91791BC();
  sub_1D8D056BC(sub_1D8D73F34, &v4, v3);
}

uint64_t sub_1D8D73C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v35 = a7;
  v33 = a3;
  v34 = a5;
  v11 = sub_1D9176E3C();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v30 - v19;
  (*(a4 + 16))(a2, a4, v18);
  v21 = *(a1 + 16);
  v22 = v33;
  v36 = a2;
  v37 = v33;
  v38 = a4;
  v39 = v34;
  v40 = a6;
  type metadata accessor for InMemoryAssetCache.Record();
  sub_1D91780FC();
  (*(v16 + 8))(v20, AssociatedTypeWitness);
  v23 = v41;
  if (v41)
  {
    sub_1D9176E0C();
    v24 = *(*v23 + 136);
    swift_beginAccess();
    (*(v31 + 40))(v23 + v24, v14, v32);
    swift_endAccess();
    v25 = *(v22 - 8);
    v26 = v35;
    (*(v25 + 16))(v35, v23 + *(*v23 + 120), v22);

    v27 = 0;
    v28 = v26;
  }

  else
  {
    v25 = *(v22 - 8);
    v27 = 1;
    v28 = v35;
  }

  return (*(v25 + 56))(v28, v27, 1, v22);
}

uint64_t sub_1D8D73F7C(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  v4 = *(*v1 + 168);
  swift_beginAccess();
  sub_1D8D73ABC(v1 + v4, v12);
  v5 = v13;
  sub_1D8D740C4(v12);
  if (v5)
  {
    os_unfair_lock_unlock(v3 + 4);
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v6 + 8);
    return sub_1D91777BC();
  }

  else
  {
    sub_1D8CFD9D8(a1, v12);
    swift_beginAccess();
    sub_1D8D74118(v12, v1 + v4);
    swift_endAccess();
    v9 = *(*v1 + 176);
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = sub_1D91777EC();
    os_unfair_lock_unlock(v3 + 4);
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_1D917782C();
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation5Trace_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t DiskAssetCache<>.asset(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v100 = a3;
  v7 = *v3;
  v8 = *(v7 + 88);
  v96 = sub_1D91791BC();
  v93 = *(v96 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v90[-v12];
  v14 = *(v7 + 80);
  v99 = *(v14 - 8);
  v15 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v90[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v91 = &v90[-v22];
  v98 = v8;
  v97 = *(v8 - 8);
  v23 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90[-v25];
  v27 = sub_1D9176C2C();
  v101 = *(v27 - 8);
  v102 = v27;
  v28 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v94 = &v90[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90[-v31];
  FileBasedAssetLocation.fileURL(in:)(v4 + qword_1EDCDE890, v14, a2, &v90[-v31]);
  v33 = [objc_opt_self() defaultManager];
  v103 = v32;
  sub_1D9176BCC();
  v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v35 = [v33 contentsAtPath_];

  if (v35)
  {
    v36 = sub_1D9176C8C();
    v38 = v37;

    v39 = a1;
    v40 = v14;
    (*(a2 + 40))(v36, v38, v14, a2);
    v96 = v36;
    v95 = v26;
    v71 = v103;
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v72 = sub_1D917744C();
    __swift_project_value_buffer(v72, qword_1EDCD5E70);
    v73 = v99;
    v74 = v91;
    v75 = v14;
    (*(v99 + 16))(v91, v39, v14);
    v76 = sub_1D917741C();
    v77 = sub_1D9178CEC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v74;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v104 = v80;
      *v79 = 136315138;
      v81 = (*(a2 + 16))(v75, a2);
      v82 = v38;
      v84 = v83;
      (*(v73 + 8))(v78, v75);
      v85 = sub_1D8CFA924(v81, v84, &v104);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_1D8CEC000, v76, v77, "Cache hit for asset at %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x1DA72CB90](v80, -1, -1);
      MEMORY[0x1DA72CB90](v79, -1, -1);
      sub_1D8D7567C(v96, v82);

      (*(v101 + 8))(v103, v102);
    }

    else
    {
      sub_1D8D7567C(v96, v38);

      (*(v73 + 8))(v74, v40);
      (*(v101 + 8))(v71, v102);
    }

    v88 = v97;
    v87 = v98;
    v89 = v100;
    (*(v97 + 32))(v100, v95, v98);
    return (*(v88 + 56))(v89, 0, 1, v87);
  }

  else
  {
    v95 = v20;
    v42 = v92;
    v41 = v93;
    v91 = a2;
    v43 = *(v4 + qword_1EDCD6AC8);
    InMemoryAssetCache.asset(at:)(a1);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v44 = sub_1D917744C();
    __swift_project_value_buffer(v44, qword_1EDCD5E70);
    v45 = v41;
    v46 = *(v41 + 16);
    v47 = v42;
    v48 = v96;
    v46(v42, v13, v96);
    v49 = v99;
    v50 = v95;
    v51 = v14;
    (*(v99 + 16))(v95, a1, v14);
    v52 = sub_1D917741C();
    v53 = sub_1D9178CEC();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v103;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v94 = v13;
      v58 = v57;
      v104 = v57;
      *v56 = 136315394;
      v59 = (*(v97 + 48))(v47, 1, v98);
      v60 = v59 == 1;
      if (v59 == 1)
      {
        v61 = 1936943469;
      }

      else
      {
        v61 = 7629160;
      }

      v62 = v47;
      if (v60)
      {
        v63 = 0xE400000000000000;
      }

      else
      {
        v63 = 0xE300000000000000;
      }

      (*(v45 + 8))(v62, v96);
      v64 = sub_1D8CFA924(v61, v63, &v104);

      *(v56 + 4) = v64;
      *(v56 + 12) = 2080;
      v65 = (*(v91 + 2))(v51);
      v67 = v66;
      (*(v49 + 8))(v50, v51);
      v68 = sub_1D8CFA924(v65, v67, &v104);

      *(v56 + 14) = v68;
      _os_log_impl(&dword_1D8CEC000, v52, v53, "Cache %s for asset at %s", v56, 0x16u);
      swift_arrayDestroy();
      v69 = v58;
      v13 = v94;
      MEMORY[0x1DA72CB90](v69, -1, -1);
      v70 = v56;
      v48 = v96;
      MEMORY[0x1DA72CB90](v70, -1, -1);

      (*(v101 + 8))(v103, v102);
    }

    else
    {

      (*(v49 + 8))(v50, v51);
      (*(v101 + 8))(v55, v102);
      (*(v45 + 8))(v47, v48);
    }

    return (*(v45 + 32))(v100, v13, v48);
  }
}

uint64_t FileBasedAssetLocation.fileURL(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a1;
  v20 = a4;
  v6 = sub_1D9176AAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9176C2C();
  v11 = *(v19 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v19);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = (*(a3 + 16))(a2, a3, v13);
  v21[1] = v16;
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F70], v6);
  sub_1D8D447DC();
  sub_1D9176C1C();
  (*(v7 + 8))(v10, v6);

  (*(a3 + 24))(v21, a2, a3);
  sub_1D9176B4C();

  return (*(v11 + 8))(v15, v19);
}

uint64_t ArtworkRequest.fileName.getter()
{
  v12 = ArtworkRequest.stableFilePrefix.getter();

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  if (*(v0 + 201) == 16)
  {
    v1 = *(v0 + 130);
  }

  sub_1D8D756D0();
  v10 = sub_1D9179A4C();
  v11 = v2;
  MEMORY[0x1DA7298F0](120, 0xE100000000000000);
  sub_1D8D75758();
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);

  v4 = CropCode.rawValue.getter();
  v6 = v5;

  MEMORY[0x1DA7298F0](v4, v6);

  MEMORY[0x1DA7298F0](v10, v11);

  v7 = *(v0 + 208);
  if (*(v7 + 16))
  {
    v8 = Array<A>.cacheKey.getter(v7);
    MEMORY[0x1DA7298F0](v8);

    MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  }

  return v12;
}

uint64_t sub_1D8D752C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D8D75318(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1D9177FCC();
      sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
      result = sub_1D9177F7C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D8D754F8(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8D754F8(uint64_t a1, uint64_t a2)
{
  result = sub_1D917681C();
  if (!result || (result = sub_1D917683C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D917682C();
      sub_1D9177FCC();
      sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
      return sub_1D9177F7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D755D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D75620(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8D75668(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D8D7567C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D8D7567C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D8D756D0()
{
  v1 = v0[5];
  v2 = v0[24];
  if (v0[22] * v2 < v1)
  {
    v1 = v0[22] * v2;
  }

  result = sub_1D8DAF458(v1);
  if (v4)
  {
    if (600.0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (600.0 < 9.22337204e18)
    {
      return 600.0;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D75758()
{
  v1 = sub_1D8D756D0();
  v2 = *(v0 + 184);
  if (v1 >= 1)
  {
    v2 = ceil(v2 * v1 / *(v0 + 176));
  }

  result = sub_1D8DAF458(v2);
  if (v4)
  {
    if (600.0 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (600.0 < 9.22337204e18)
    {
      return 600.0;
    }

    __break(1u);
  }

  return result;
}

uint64_t CropCode.rawValue.getter()
{
  result = 25186;
  switch(*v0)
  {
    case 1:
      result = 29299;
      break;
    case 2:
      result = 29555;
      break;
    case 3:
      result = 28006;
      break;
    case 4:
      result = 28262;
      break;
    case 5:
      result = 28518;
      break;
    case 6:
      result = 24934;
      break;
    case 7:
      result = 30309;
      break;
    case 8:
      result = 30053;
      break;
    case 9:
      result = 29797;
      break;
    case 0xA:
      result = 0x4D7370552E545053;
      break;
    case 0xB:
      result = 0x577370552E545053;
      break;
    case 0xC:
      result = 0x547370552E545053;
      break;
    case 0xD:
      result = 0x3042454C532E4553;
      break;
    case 0xE:
      result = 0x544C424C532E4253;
      break;
    case 0xF:
      result = 0x5452424C532E4253;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FeedUpdateRequest.init(feedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v24 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(a9 + v24) = v25;
  v26 = updated[19];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = 0;
  *(a9 + v26) = v27;
  v28 = updated[20];
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(a9 + v28) = v29;
  sub_1D8D088B4(a12, a9, &qword_1ECAB71E0, &unk_1D9197360);
  v30 = updated[5];
  v31 = sub_1D9176C2C();
  v32 = *(v31 - 8);
  (*(v32 + 16))(a9 + v30, a1, v31);
  sub_1D8D088B4(a2, a9 + updated[6], &unk_1ECAB5910, &qword_1D9188C90);
  *(a9 + updated[7]) = a3;
  v33 = (a9 + updated[8]);
  *v33 = a4;
  v33[1] = a5;
  *(a9 + updated[9]) = a6;
  *(a9 + updated[10]) = a7;
  *(a9 + updated[11]) = a8;
  *(a9 + updated[12]) = a10;
  *(a9 + updated[13]) = a11;
  v34 = (a9 + updated[14]);
  *v34 = a13;
  v34[1] = a14;
  v35 = (a9 + updated[15]);
  *v35 = a15;
  v35[1] = a16;
  v36 = (a9 + updated[16]);
  *v36 = a17;
  v36[1] = a18;
  if (a19)
  {
    v37 = swift_allocObject();
    *(v37 + 16) = a19;
    *(v37 + 24) = a20;
    v38 = (a9 + updated[17]);
    *v38 = sub_1D8F55908;
    v38[1] = v37;
  }

  else
  {
    v39 = (a9 + updated[17]);
    *v39 = 0;
    v39[1] = 0;
  }

  v48 = 23;

  sub_1D8D1F93C(a19);
  v40 = sub_1D8D76684(&v48, &v49);
  MEMORY[0x1EEE9AC00](v40);
  os_unfair_lock_lock((v27 + 32));
  sub_1D8D76FAC((v27 + 16));
  os_unfair_lock_unlock((v27 + 32));

  sub_1D8D15664(a19);
  sub_1D8D08A50(a12, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(a2, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v32 + 8))(a1, v31);
}

uint64_t sub_1D8D76164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D7619C()
{
  v0 = sub_1D917739C();
  __swift_allocate_value_buffer(v0, qword_1ECAB1038);
  __swift_project_value_buffer(v0, qword_1ECAB1038);
  return sub_1D917738C();
}

uint64_t sub_1D8D7621C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4928, &qword_1D918B380);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D76684@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D917734C();
  v63 = *(v6 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v55 - v10;
  v11 = sub_1D917739C();
  v66 = *(v11 - 8);
  v12 = v66[8];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v55 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v65 = &v55 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v55 - v25;
  v27 = *a1;
  sub_1D8D76CE0(v3, &v55 - v25);
  v28 = sub_1D9176EAC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v26, 1, v28) == 1)
  {
    result = sub_1D8D798AC(v26);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v56 = sub_1D9176E5C();
    v58 = v31;
    (*(v29 + 8))(v26, v28);
    v59 = a2;
    v60 = v6;
    v61 = v27;
    if ((v27 - 24) >= 4 && v27 != 8)
    {
      if (qword_1ECAB1030 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (qword_1ECAB1008 != -1)
    {
      swift_once();
    }

    v32 = 1;
    for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
    {
      v34 = __swift_project_value_buffer(v11, i);
      v35 = v66;
      v36 = v66[2];
      v36(v20, v34, v11);
      v37 = v35[4];
      v37(v65, v20, v11);
      v68 = v61;
      v57 = sub_1D8D76D50();
      if (v32)
      {
        if (qword_1ECAB1008 != -1)
        {
          swift_once();
        }

        v38 = qword_1ECAB1010;
      }

      else
      {
        if (qword_1ECAB1030 != -1)
        {
          swift_once();
        }

        v38 = qword_1ECAB1038;
      }

      v39 = v60;
      v40 = __swift_project_value_buffer(v11, v38);
      v36(v14, v40, v11);
      v37(v17, v14, v11);
      sub_1D917737C();
      v41 = v64;
      sub_1D917731C();
      v42 = v66[1];
      ++v66;
      v42(v17, v11);
      v43 = v58;

      v17 = sub_1D917737C();
      v14 = sub_1D9178F5C();
      v20 = sub_1D917918C();

      if ((v20 & 1) == 0)
      {
        break;
      }

      v44 = v59;
      if (v57)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v67 = v46;
        *v45 = 136446210;
        v47 = sub_1D8CFA924(v56, v43, &v67);

        *(v45 + 4) = v47;
        v48 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v14, v48, v57, "[identifier=%{name=identifier,public}s]", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v49 = v46;
        v39 = v60;
        MEMORY[0x1DA72CB90](v49, -1, -1);
        MEMORY[0x1DA72CB90](v45, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      swift_once();
LABEL_21:
      v32 = 0;
    }

    v44 = v59;
LABEL_19:
    v50 = v63;
    (*(v63 + 16))(v62, v41, v39);
    v51 = sub_1D91773FC();
    v52 = *(v51 + 48);
    v53 = *(v51 + 52);
    swift_allocObject();
    v54 = sub_1D91773EC();
    (*(v50 + 8))(v41, v39);
    result = (v42)(v65, v11);
    *v44 = v61;
    v44[1] = v54;
  }

  return result;
}

os_log_t _MTLogCategoryFeedUpdateDiagnostics()
{
  v0 = os_log_create("com.apple.podcasts", "FUDiagnostics");

  return v0;
}

uint64_t sub_1D8D76CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

const char *sub_1D8D76D50()
{
  result = "RSSFeedUpdateJob";
  switch(*v0)
  {
    case 1:
      result = "StoreFeedUpdateJob";
      break;
    case 2:
      result = "StoreFeedUpdateJobBootstrap";
      break;
    case 3:
      result = "SystemCreation";
      break;
    case 4:
      result = "RequestQueue";
      break;
    case 5:
      result = "UpdateCreation";
      break;
    case 6:
      result = "BuildMAPIRequest";
      break;
    case 7:
      result = "EncodeMAPIRequest";
      break;
    case 8:
      result = "EncodeMAPIRequestDiagnostics";
      break;
    case 9:
      result = "MAPIShowMetadataNetwork";
      break;
    case 0xA:
      result = "MAPIParseShowMetadata";
      break;
    case 0xB:
      result = "MAPIEpisodesNetwork";
      break;
    case 0xC:
      result = "MAPIParseEpisodes";
      break;
    case 0xD:
      result = "RequestShowMetadata";
      break;
    case 0xE:
      result = "PrepareForInitialEpisodesRequest";
      break;
    case 0xF:
      result = "RequestInitialEpisodes";
      break;
    case 0x10:
      result = "ProcessShowMetadataAndInitialEpisodes";
      break;
    case 0x11:
      result = "RequestEpisodes";
      break;
    case 0x12:
      result = "ParseEpisodesResponse";
      break;
    case 0x13:
      result = "ProcessEpisodes";
      break;
    case 0x14:
      result = "ProcessingCompleted";
      break;
    case 0x15:
      result = "FailureCleanup";
      break;
    case 0x16:
      result = "Completion";
      break;
    case 0x17:
      result = "TimeToFirstEpisodeInsertion";
      break;
    case 0x18:
      result = "DispatchCongestion";
      break;
    case 0x19:
      result = "DispatchWork";
      break;
    case 0x1A:
      result = "CoreDataCongestion";
      break;
    case 0x1B:
      result = "CoreDataWork";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8D76FE0(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1[1];

  *a1 = v4;
  a1[1] = v3;
}

id sub_1D8D77030(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D8D77098();
  v4 = swift_allocError();
  *v5 = a3;
  v6 = sub_1D9176A5C();

  return v6;
}

unint64_t sub_1D8D77098()
{
  result = qword_1ECAB2250;
  if (!qword_1ECAB2250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2250);
  }

  return result;
}

uint64_t sub_1D8D770F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8D77148();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_1D8D77148()
{
  result = qword_1ECAB2258;
  if (!qword_1ECAB2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2258);
  }

  return result;
}

uint64_t PageContextTracker.value.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (v2[2])
  {
    v3 = v2[4];
    v4 = v2[5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void *sub_1D8D77280(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D77358()
{
  v37 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v3 = sub_1D917744C();
  v4 = __swift_project_value_buffer(v3, qword_1EDCD1098);

  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v36 = v4;
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_1D8CEC000, v5, v6, "DonationService: Begin registering %ld podcast entities.", v9, 0xCu);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 152);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = *(v10 + 16);
    while (1)
    {
      v14 = v12[3];
      v15 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v14);
      v16 = (*(v15 + 8))(v14, v15);
      *(v0 + 80) = 0;
      v17 = [v1 registerItem:v16 error:v0 + 80];
      v18 = *(v0 + 80);
      if (!v17)
      {
        break;
      }

      v19 = v18;

      v12 += 5;
      if (!--v13)
      {
        goto LABEL_10;
      }
    }

    v30 = v18;
    sub_1D9176A6C();

    swift_willThrow();
  }

  else
  {
LABEL_10:
    *(v0 + 80) = 0;
    v20 = [v1 finish_];
    v21 = *(v0 + 80);
    if (v20)
    {
      v22 = *(v0 + 152);

      v23 = v21;
      v24 = sub_1D917741C();
      v25 = sub_1D9178D1C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 152);
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v11;

        _os_log_impl(&dword_1D8CEC000, v24, v25, "DonationService: Finished registering %ld podcast entities.", v28, 0xCu);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }

      else
      {
        v33 = *(v0 + 152);
      }

      v31 = *(v0 + 8);
      v34 = *MEMORY[0x1E69E9840];
      goto LABEL_18;
    }

    v29 = v21;
    sub_1D9176A6C();

    swift_willThrow();
  }

  v31 = *(v0 + 8);
  v32 = *MEMORY[0x1E69E9840];
LABEL_18:

  return v31();
}

uint64_t sub_1D8D776C8()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1D90F6870;
  }

  else
  {
    v3 = sub_1D8D77358;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

id PodcastDonationModel.itemInstance()()
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = objc_allocWithZone(MEMORY[0x1E69AA770]);

  v10 = sub_1D8D77B30(v5, v6, v7, v8);
  if (!v1)
  {
    v11 = v10;
    v29 = v2;
    v12 = objc_allocWithZone(MEMORY[0x1E69AA758]);
    v30[0] = 0;
    v13 = v11;
    v14 = [v12 initWithEntity:v13 entityType:1 error:v30];
    if (v14)
    {
      v15 = v14;
      v16 = v30[0];

      v30[0] = v3;
      v30[1] = v29;
      v31 = v4;
      v32 = v5;
      v33 = v6;
      v34 = v7;
      v35 = v8;
      sub_1D8D77C44();
      if (v17)
      {
        v18 = objc_allocWithZone(MEMORY[0x1E69AA760]);
        v19 = sub_1D8D77D50();
        v20 = objc_allocWithZone(MEMORY[0x1E69939F8]);
        v30[0] = 0;
        v21 = [v20 initWithContent:v15 metaContent:v19 error:v30];
        if (v21)
        {
          v5 = v21;
          v22 = v30[0];

          goto LABEL_13;
        }

        v5 = v30[0];
        sub_1D9176A6C();

        swift_willThrow();
        v13 = v15;
        v15 = v19;
      }

      else
      {
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v24 = sub_1D917744C();
        __swift_project_value_buffer(v24, qword_1EDCD1098);
        v25 = sub_1D917741C();
        v5 = sub_1D9178D0C();
        if (os_log_type_enabled(v25, v5))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          MEMORY[0x1DA72CB90](v26, -1, -1);
        }

        sub_1D90F65A4();
        swift_allocError();
        swift_willThrow();
      }
    }

    else
    {
      v23 = v30[0];
      sub_1D9176A6C();

      swift_willThrow();
      v15 = v13;
    }
  }

LABEL_13:
  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

id sub_1D8D77B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    if (a4)
    {
LABEL_3:
      v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v13[0] = 0;
  v8 = [v4 initWithName:v6 author:v7 error:v13];

  if (v8)
  {
    v9 = v13[0];
  }

  else
  {
    v10 = v13[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t sub_1D8D77C44()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      return 0;
    }

    v4 = v0[1];
    sub_1D917946C();

    v5 = 0xD000000000000022;
    MEMORY[0x1DA7298F0](v1, v4);
  }

  else
  {
    sub_1D917946C();

    v5 = 0xD000000000000020;
    sub_1D8E40A10();
    v3 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v3);
  }

  return v5;
}

id sub_1D8D77D50()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v7[0] = 0;
  v2 = [v0 initWithSourceItemIdentifier:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id StationDonationModel.itemInstance()()
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = objc_allocWithZone(MEMORY[0x1E69AA768]);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v26 = 0;
  v8 = [v6 initWithName:v7 error:&v26];

  v9 = v26;
  if (v8)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69AA758]);
    v26 = 0;
    v11 = v8;
    v12 = v9;
    v13 = [v10 initWithEntity:v11 entityType:2 error:&v26];
    if (v13)
    {
      v14 = v13;
      v15 = v26;

      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1D917946C();

      v26 = 0xD000000000000029;
      v27 = 0x80000001D91D6240;
      MEMORY[0x1DA7298F0](v2, v3);
      v2 = v27;
      v16 = objc_allocWithZone(MEMORY[0x1E69AA760]);
      v17 = sub_1D8D77D50();
      if (v1)
      {
      }

      else
      {
        v22 = v17;
        v23 = objc_allocWithZone(MEMORY[0x1E69939F8]);
        v26 = 0;
        v24 = [v23 initWithContent:v14 metaContent:v22 error:&v26];
        if (v24)
        {
          v2 = v24;
          v25 = v26;
        }

        else
        {
          v2 = v26;
          sub_1D9176A6C();

          swift_willThrow();
        }
      }
    }

    else
    {
      v19 = v26;
      sub_1D9176A6C();

      swift_willThrow();
    }
  }

  else
  {
    v18 = v26;
    sub_1D9176A6C();

    swift_willThrow();
  }

  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_1D8D78090@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for ArtworkContent();
  swift_storeEnumTagMultiPayload();
  return sub_1D8D752C4(a1, a2);
}

uint64_t CombinedTrace.start(interval:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a6;
  v8 = *v6;
  v9 = *(*v6 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1D8D782D8(0, v9, 0);
    v10 = v27;
    v15 = v8 + 32;
    do
    {
      sub_1D8CFD9D8(v15, v23);
      v16 = v24;
      v17 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v17 + 24))(v26, a1, a2, a3, a4, a5, v16, v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v27 = v10;
      v19 = *(v10 + 16);
      v18 = *(v10 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D8D782D8((v18 > 1), v19 + 1, 1);
        v10 = v27;
      }

      *(v10 + 16) = v19 + 1;
      sub_1D8D6BCE0(v26, v10 + 40 * v19 + 32);
      v15 += 40;
      --v9;
    }

    while (v9);
    v7 = a6;
  }

  result = sub_1D8D7B56C(v10);
  v7[3] = &type metadata for CombinedTrace.Interval;
  v7[4] = &off_1F546E5A0;
  *v7 = result;
  return result;
}

void *sub_1D8D782D8(void *a1, int64_t a2, char a3)
{
  result = sub_1D8D50414(a1, a2, a3, *v3, &qword_1ECAB4700, &qword_1D918A120, &qword_1ECAB4708, &qword_1D9192170);
  *v3 = result;
  return result;
}

uint64_t LoggerTrace.start(interval:context:)@<X0>(unint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  *(&v25 + 1) = type metadata accessor for LoggerTrace(0);
  v26 = &protocol witness table for LoggerTrace;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v24);
  sub_1D8D785B8(v5, boxed_opaque_existential_0);
  sub_1D8D7861C(a1, a2, &v24, &v20);
  if (*(&v21 + 1))
  {
    *(&v25 + 1) = &type metadata for LoggerTrace.ActivityInterval;
    v26 = &off_1F546E7E8;
    v12 = swift_allocObject();
    *&v24 = v12;
    v13 = v21;
    *(v12 + 16) = v20;
    *(v12 + 32) = v13;
    *(v12 + 48) = v22;
    *(v12 + 64) = v23;
    sub_1D8D6BCE0(&v24, a5);
  }

  else
  {
    sub_1D8D08A50(&v20, &qword_1ECAB6DF8, &qword_1D91955C0);
    v14 = type metadata accessor for LoggerTrace.LogInterval(0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    a5[3] = v14;
    a5[4] = &off_1F546E7F8;
    v15 = __swift_allocate_boxed_opaque_existential_0(a5);
    sub_1D8D785B8(v5, v15);
    v16 = sub_1D917949C();
    v17 = (v15 + *(v14 + 20));
    *v17 = v16;
    v17[1] = v18;
    if (*(&v25 + 1))
    {
      sub_1D8D08A50(&v24, &unk_1ECAB6E00, &qword_1D91952E0);
    }
  }

  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4708, &qword_1D9192170);
  sub_1D917964C();
  if (a4)
  {
    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    MEMORY[0x1DA7298F0](a3, a4);
  }

  LoggerTrace.emit(event:context:)("START INTERVAL", 14, 2, v20, *(&v20 + 1));
}

uint64_t sub_1D8D7856C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1D8D785B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoggerTrace(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D7861C@<X0>(unint64_t a1@<X0>, char a2@<W2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v16[7] = *MEMORY[0x1E69E9840];
  sub_1D8CFD9D8(a3, v16);
  v9 = sub_1D8D78740(&dword_1D8CEC000, a1, a2, v8);
  if (v9)
  {
    v16[5] = v9;
    v15.opaque[0] = 0;
    v15.opaque[1] = 0;
    os_activity_scope_enter(v9, &v15);
    v10 = v15.opaque[0];
    v11 = v15.opaque[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6E28, &qword_1D9195690);
    v12 = swift_allocObject();
    *(v12 + 36) = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    *(v12 + 32) = 0;
    v16[6] = v12;
    sub_1D8D7AB34(v16, a4);
    result = sub_1D8D7AB6C(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a3);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v16);
    *(a4 + 48) = 0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1D8D78740@<X0>(void *dso@<X3>, unint64_t result@<X0>, char a3@<W2>, unint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      sub_1D8D78858(result, dso, description);
      return *description;
    }

    __break(1u);
    goto LABEL_12;
  }

  a4 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((result & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a4 = result >> 16;
  if (result >> 16 > 0x10)
  {
    goto LABEL_13;
  }

  if (result > 0x7F)
  {
LABEL_14:
    v5 = (result & 0x3F) << 8;
    v6 = (result >> 6) + v5 + 33217;
    v7 = (v5 | (result >> 6) & 0x3F) << 8;
    v8 = (result >> 18) + ((v7 | (result >> 12) & 0x3F) << 8) - 2122219023;
    v9 = (result >> 12) + v7 + 8487393;
    if (a4)
    {
      v4 = v8;
    }

    else
    {
      v4 = v9;
    }

    if (result < 0x800)
    {
      v4 = v6;
    }

    goto LABEL_9;
  }

  v4 = result + 1;
LABEL_9:
  *description = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v4) >> 3))));
  sub_1D8D78858(description, dso, &v10);
  return v10;
}

os_activity_t sub_1D8D78858@<X0>(char *description@<X0>, void *dso@<X2>, os_activity_t *a3@<X8>)
{
  if (dso && description)
  {
    if (qword_1EDCD5750 != -1)
    {
      v10 = dso;
      swift_once();
      dso = v10;
    }

    result = _os_activity_create(dso, description, qword_1EDCD5760, OS_ACTIVITY_FLAG_DEFAULT);
  }

  else
  {
    if (qword_1ECAB34E0 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB77E0);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "FAILED TO CREATE OS_ACTIVITY", v9, 2u);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1D8D789A0()
{
  qword_1EDCD5760 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t sub_1D8D789F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RSSFeedUpdater.didRestoreFeedUrlTask(_:)(uint64_t a1)
{
  v3 = sub_1D9177E0C();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9176C2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v20[1] = *&v1[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue];
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11, v14);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  aBlock[4] = sub_1D8D79090;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_13_1;
  v17 = _Block_copy(aBlock);
  v18 = v1;
  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v6, v17);
  _Block_release(v17);
  (*(v23 + 8))(v6, v3);
  (*(v21 + 8))(v10, v22);
}

uint64_t sub_1D8D78EA8()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_1D8D78F64()
{
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD1070);
  v1 = sub_1D917741C();
  v2 = sub_1D9178D1C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D8CEC000, v1, v2, "Finished restoring background download tasks.", v3, 2u);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue);

    dispatch_resume(v6);
  }
}

uint64_t sub_1D8D79090()
{
  v1 = *(sub_1D9176C2C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8D7911C(v0 + v2, v3);
}

uint64_t sub_1D8D7911C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = v67 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v75 = v67 - v8;
  v72 = sub_1D9176C2C();
  v9 = *(v72 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v77 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest();
  v13 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v67 - v17;
  v19 = sub_1D9176ACC();
  v21 = v20;
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v74 = v18;
  v22 = sub_1D917744C();
  v23 = __swift_project_value_buffer(v22, qword_1EDCD1070);

  v67[1] = v23;
  v24 = sub_1D917741C();
  v25 = sub_1D9178D1C();

  v26 = os_log_type_enabled(v24, v25);
  v70 = v19;
  v71 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v79 = v28;
    *v27 = 141558275;
    *(v27 + 4) = 1752392040;
    *(v27 + 12) = 2081;
    *(v27 + 14) = sub_1D8CFA924(v19, v21, &v79);
    _os_log_impl(&dword_1D8CEC000, v24, v25, "Restored background task for %{private,mask.hash}s.", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  v68 = *(v9 + 16);
  v69 = v9;
  v29 = v72;
  v68(v77, a1, v72);
  (*(v9 + 56))(v75, 1, 1, v29);
  v30 = sub_1D9176EAC();
  v31 = v76;
  (*(*(v30 - 8) + 56))(v76, 1, 1, v30);
  v32 = updated[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7540, &unk_1D9197370);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *&v15[v32] = v33;
  v34 = updated[19];
  v35 = swift_allocObject();
  *(v35 + 24) = 0;
  *(v35 + 16) = 0;
  v36 = (v35 + 16);
  *(v35 + 32) = 0;
  v37 = (v35 + 32);
  *&v15[v34] = v35;
  v38 = updated[20];
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *&v15[v38] = v39;
  sub_1D8D088B4(v31, v15, &qword_1ECAB71E0, &unk_1D9197360);
  v40 = v29;
  v68(&v15[updated[5]], v77, v29);
  v41 = v75;
  sub_1D8D088B4(v75, &v15[updated[6]], &unk_1ECAB5910, &qword_1D9188C90);
  *&v15[updated[7]] = 0;
  v42 = &v15[updated[8]];
  *v42 = 0;
  *(v42 + 1) = 0;
  v15[updated[9]] = 0;
  v15[updated[10]] = 0;
  v15[updated[11]] = 0;
  *&v15[updated[12]] = 0;
  v15[updated[13]] = 0;
  v43 = &v15[updated[14]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v15[updated[15]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v45 = &v15[updated[16]];
  *v45 = 0;
  *(v45 + 1) = 0;
  v46 = &v15[updated[17]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v78 = 23;

  v47 = sub_1D8D76684(&v78, &v79);
  v48 = v80;
  MEMORY[0x1EEE9AC00](v47);
  v67[-2] = v49;
  v67[-1] = v48;
  os_unfair_lock_lock(v37);
  sub_1D8D76FC4(v36);
  os_unfair_lock_unlock(v37);

  sub_1D8D08A50(v76, &qword_1ECAB71E0, &unk_1D9197360);
  sub_1D8D08A50(v41, &unk_1ECAB5910, &qword_1D9188C90);
  (*(v69 + 8))(v77, v40);

  v50 = v74;
  v51 = sub_1D8D79960(v15, v74);
  v52 = v73;
  v53 = *(v73 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
  v55 = v70;
  v54 = v71;
  v79 = v70;
  v80 = v71;
  v56 = *(v53 + 32);
  MEMORY[0x1EEE9AC00](v51);
  v67[-4] = v57;
  v67[-3] = &v79;
  v67[-2] = v50;
  MEMORY[0x1EEE9AC00](v58);
  v67[-2] = sub_1D8D799C4;
  v67[-1] = v59;
  os_unfair_lock_lock(v56 + 4);
  sub_1D8D799DC(&v78);
  os_unfair_lock_unlock(v56 + 4);
  if (v78)
  {

    v60 = *(v52 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue);
    sub_1D8D79FDC(v50);
  }

  else
  {

    v61 = sub_1D917741C();
    v62 = sub_1D9178D1C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v79 = v64;
      *v63 = 141558275;
      *(v63 + 4) = 1752392040;
      *(v63 + 12) = 2081;
      v65 = sub_1D8CFA924(v55, v54, &v79);

      *(v63 + 14) = v65;
      _os_log_impl(&dword_1D8CEC000, v61, v62, "Tried to insert an rss feed update request that was restored from background for %{private,mask.hash}s but there was already one running. Dropping this redundant request.", v63, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x1DA72CB90](v64, -1, -1);
      MEMORY[0x1DA72CB90](v63, -1, -1);
    }

    else
    {
    }
  }

  return sub_1D8D7A55C(v50);
}

uint64_t sub_1D8D798AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D79914(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];

  *a1 = a2;
  a1[1] = a3;
}

uint64_t sub_1D8D79960(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

BOOL sub_1D8D799F4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D8D79A74(*(v1 + 16), **(v1 + 24), *(*(v1 + 24) + 8), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1D8D79A30@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

BOOL sub_1D8D79A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v13 = *(a1 + 40);
  if (*(v13 + 16))
  {
    v14 = *(a1 + 40);

    v15 = sub_1D8D33C70(a2, a3);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D5F1EC(a4, v12, type metadata accessor for FeedUpdateRequest);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D8D7CE14(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D8D7CE14(v18 > 1, v19 + 1, 1, v17);
  }

  v17[2] = v19 + 1;
  sub_1D8D7C424(v12, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, type metadata accessor for FeedUpdateRequest);
  swift_beginAccess();

  v20 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D8D7D24C(v17, a2, a3, isUniquelyReferenced_nonNull_native);

  *(a1 + 40) = v25;
  swift_endAccess();
  sub_1D8D7D28C(sub_1D8D7D560, &unk_1F5471340, sub_1D8D7D6AC, &block_descriptor_78_1);
  v22 = v17[2];

  return v22 == 1;
}

uint64_t sub_1D8D79D3C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_1D917978C();
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
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      result = sub_1D9179E1C();
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

uint64_t sub_1D8D79FDC(uint64_t a1)
{
  v2 = v1;
  v44 = sub_1D9176EAC();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &updated - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest();
  v8 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v10 = &updated - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177F1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&updated - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v2[12];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1D9177F4C();
  result = (*(v12 + 8))(v16, v11);
  if (v19)
  {
    sub_1D8D7A3C4(a1, v10);
    v21 = v2[5];
    sub_1D8CFD9D8((v2 + 6), v46);
    v22 = v2[11];
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = type metadata accessor for RSSFeedUpdaterJob();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
    *(v27 + 48) = -96;
    v28 = (v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
    *v28 = 0;
    v28[1] = 0;
    v29 = (v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
    *v29 = 0;
    v29[1] = 0;
    sub_1D8D7A3C4(v10, v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);
    *(v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx) = v21;
    sub_1D8CFD9D8(v46, v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider);
    *(v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) = v22;
    *(v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue) = v18;
    v30 = (v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
    *v30 = sub_1D8DA24A4;
    v30[1] = v23;
    v31 = (v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
    *v31 = 0u;
    v31[1] = 0u;
    v32 = v21;
    swift_unknownObjectRetain();

    sub_1D9176E9C();
    v33 = sub_1D9176E5C();
    v35 = v34;
    (*(v4 + 8))(v7, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    sub_1D8D7A55C(v10);
    v36 = (v27 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
    *v36 = v33;
    v36[1] = v35;

    v37 = a1 + *(updated + 20);
    v38 = sub_1D9176ACC();
    v40 = v39;
    swift_beginAccess();

    v41 = v2[14];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v2[14];
    v2[14] = 0x8000000000000000;
    sub_1D8D7A5B8(v27, v38, v40, isUniquelyReferenced_nonNull_native);

    v2[14] = v45;
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D7A3C4(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for FeedUpdateRequest();
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t type metadata accessor for RSSFeedUpdaterJob()
{
  result = qword_1ECAB75A8;
  if (!qword_1ECAB75A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D7A474()
{
  result = type metadata accessor for FeedUpdateRequest();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1D8D7A55C(uint64_t a1)
{
  updated = type metadata accessor for FeedUpdateRequest();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t UninitializedCurrentValueSubject.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v20 = a1;
  v7 = a2[2];
  sub_1D91791BC();
  v9 = a2[3];
  v8 = a2[4];
  sub_1D917793C();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D91775AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &WitnessTable - v13;
  v21 = *v4;
  v15 = swift_allocObject();
  v15[2] = v7;
  v15[3] = v9;
  v16 = v19;
  v15[4] = a3;
  v15[5] = v16;

  sub_1D9177B2C();

  sub_1D917759C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1D8D7A804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = sub_1D91791BC();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

uint64_t UninitializedCurrentValueSubject.send(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1D91791BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v11 = *v2;
  v12 = *(v4 - 8);
  (*(v12 + 16))(&v14 - v9, a1, v4, v8);
  (*(v12 + 56))(v10, 0, 1, v4);
  sub_1D917790C();
  return (*(v6 + 8))(v10, v5);
}

void LoggerTrace.emit(event:context:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for LoggerTrace(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v39 - v14);
  v17 = *(v16 + 28);
  v18 = *(v5 + *(v16 + 32));
  if (a5)
  {
    sub_1D8D785B8(v5, v39 - v14);
    v19 = sub_1D917741C();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39[3] = a3;
      v22 = v21;
      *v20 = 136315650;
      v40 = a4;
      v41 = v21;
      v23 = *v15;
      v24 = v15[1];

      sub_1D8DB01E0(v15);
      v25 = sub_1D8CFA924(v23, v24, &v41);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = sub_1D917949C();
      v28 = sub_1D8CFA924(v26, v27, &v41);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_1D8CFA924(v40, a5, &v41);
      _os_log_impl(&dword_1D8CEC000, v19, v18, "[%s] %s - %s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v22, -1, -1);
      v29 = v20;
LABEL_6:
      MEMORY[0x1DA72CB90](v29, -1, -1);

      return;
    }

    v38 = v15;
  }

  else
  {
    sub_1D8D785B8(v5, v12);
    v19 = sub_1D917741C();
    if (os_log_type_enabled(v19, v18))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v41 = v31;
      *v30 = 136315394;
      v32 = *v12;
      v33 = v12[1];

      sub_1D8DB01E0(v12);
      v34 = sub_1D8CFA924(v32, v33, &v41);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_1D917949C();
      v37 = sub_1D8CFA924(v35, v36, &v41);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1D8CEC000, v19, v18, "[%s] %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v31, -1, -1);
      v29 = v30;
      goto LABEL_6;
    }

    v38 = v12;
  }

  sub_1D8DB01E0(v38);
}

uint64_t sub_1D8D7AECC@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v9 = v7;
  v29 = a4;
  v28 = a3;
  v14 = sub_1D917734C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1D917739C();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v27[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v24 + 16))(v23, v9, v21);
  (*(v15 + 16))(v18, v9 + *(a6 + 20), v14);
  a7[3] = type metadata accessor for SignpostTrace.Interval(0);
  a7[4] = &protocol witness table for SignpostTrace.Interval;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);

  return SignpostTrace.Interval.init(starting:domain:identifier:with:)(a1, a2, v28, v23, v18, v29, a5, boxed_opaque_existential_0);
}

uint64_t sub_1D8D7B0C4()
{
  result = sub_1D91773FC();
  if (v1 <= 0x3F)
  {
    result = sub_1D917739C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t SignpostTrace.Interval.init(starting:domain:identifier:with:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v42 = a3;
  v15 = sub_1D917734C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  if (a7)
  {
    v38 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = v15;
    v15 = a5;
    v40 = a2;

    v20 = sub_1D917737C();
    v37 = sub_1D9178F5C();
    result = sub_1D917918C();
    if (result)
    {
      v39 = a4;
      if (v42)
      {
        if (!(a1 >> 32))
        {
          if ((a1 & 0xFFFFF800) == 0xD800)
          {
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (a1 >> 16 <= 0x10)
          {
            v15 = v19;

            v36 = &v43;
            goto LABEL_16;
          }

          goto LABEL_26;
        }
      }

      else
      {

        if (a1)
        {
          v36 = a1;
          v15 = v19;
LABEL_16:
          v19 = v38;
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v43 = v24;
          *v23 = 136315138;
          v25 = sub_1D8CFA924(a6, a7, &v43);

          *(v23 + 4) = v25;
          v26 = sub_1D917732C();
          _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v20, v37, v26, v36, "%s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x1DA72CB90](v24, -1, -1);
          MEMORY[0x1DA72CB90](v23, -1, -1);

LABEL_22:
          a4 = v39;
          a2 = v40;
          goto LABEL_23;
        }

        __break(1u);
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_10;
  }

  v39 = a4;
  a4 = sub_1D917737C();
  v22 = sub_1D9178F5C();
  result = sub_1D917918C();
  if ((result & 1) == 0)
  {

    a4 = v39;
    goto LABEL_23;
  }

  v40 = a2;
  if ((v42 & 1) == 0)
  {
    v20 = v41;
    if (!v41)
    {
      __break(1u);
LABEL_10:
      swift_bridgeObjectRelease_n();

      a2 = v40;
      a5 = v15;
      v15 = v19;
      v19 = v38;
LABEL_23:
      (*(v16 + 16))(v19, a5, v15);
      v29 = sub_1D91773FC();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v32 = sub_1D91773EC();
      (*(v16 + 8))(a5, v15);
      *(a8 + 24) = v42;
      *(a8 + 8) = v41;
      *(a8 + 16) = a2;
      *a8 = v32;
      v33 = *(type metadata accessor for SignpostTrace.Interval(0) + 24);
      v34 = sub_1D917739C();
      return (*(*(v34 - 8) + 32))(a8 + v33, a4, v34);
    }

LABEL_21:
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, a4, v22, v28, v20, "", v27, 2u);
    MEMORY[0x1DA72CB90](v27, -1, -1);

    goto LABEL_22;
  }

  if (v41 >> 32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v41 & 0xFFFFF800) != 0xD800)
  {
    if (v41 >> 16 > 0x10)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v20 = &v44;
    goto LABEL_21;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1D8D7B56C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 40 * v2 - 8;
  for (i = 4; ; i += 5)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v8 = v1[2];
    if (v3 >= v8)
    {
      break;
    }

    result = sub_1D8CFD9D8(&v1[i], v10);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    sub_1D8CFD9D8(v1 + v6, v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D915C338(v1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v1[i]);
    result = sub_1D8D6BCE0(v9, &v1[i]);
    if (v5 >= v1[2])
    {
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6));
    result = sub_1D8D6BCE0(v10, v1 + v6);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 40;
    if (v4 == v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8D7B788()
{
  v2 = *(*v1 + 104);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_1D8F40FA8;
  }

  else
  {
    v3 = sub_1D8D7B898;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D8D7B898()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_4:
    v5 = v0[8];
    (*(v0[11] + 8))(v0[12], v0[10]);

    v6 = v0[1];

    return v6();
  }

  (*(v3 + 32))(v0[8], v1, v2);
  if (sub_1D917894C())
  {
    (*(v0[7] + 8))(v0[8], v0[6]);
    v4 = v0[9];
    goto LABEL_4;
  }

  v12 = (v0[4] + *v0[4]);
  v8 = *(v0[4] + 4);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_1D8DAECC8;
  v10 = v0[8];
  v11 = v0[5];

  return v12(v10);
}

uint64_t sub_1D8D7BA74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D8D7BB1C(a1, v5);
}

uint64_t sub_1D8D7BB1C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return v7(a1);
}

id jsonSerializableValueForValue(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&unk_1F54E01E8])
  {
    v2 = [v1 im_jsonSerializableValue];
  }

  else if (v1)
  {
    v3 = CFGetTypeID(v1);
    v4 = CFCopyTypeIDDescription(v3);
    if ([(__CFString *)v4 length])
    {
      v2 = jsonSerializableValueForCoreFoundationType(v1, v4);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1D8D7BE00(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for FeedUpdateRequest();
  v5 = updated - 8;
  v6 = *(updated - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 5;
  sub_1D8D76684(&v33, &v34);
  v10 = v34;
  v9 = v35;
  v34 = *(a1 + *(v5 + 36));
  v11 = v34;
  v12 = sub_1D9179A4C();
  v14 = v13;
  if (![objc_opt_self() isEmpty_])
  {
    v32 = *(v2 + 24);
    sub_1D8D5F1EC(a1, &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeedUpdateRequest);
    v23 = (*(v6 + 80) + 48) & ~*(v6 + 80);
    v31 = a1;
    v24 = v10;
    v25 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v26[2] = v2;
    v26[3] = v11;
    v26[4] = v12;
    v26[5] = v14;
    sub_1D8D7C424(v8, v26 + v23, type metadata accessor for FeedUpdateRequest);
    v27 = (v26 + v25);
    *v27 = v24;
    v27[1] = v9;

    NSManagedObjectContext.performWithTelemetry(for:_:)(v31, sub_1D8D7FE9C, v26);

LABEL_10:

    return;
  }

  v15 = v12;
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD1050);

  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = sub_1D8CFA924(v15, v14, &v34);
    v22 = v10;
    v10 = v21;

    *(v19 + 14) = v10;
    LOBYTE(v10) = v22;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Update request for %{private,mask.hash}s denied because it's not a valid adamID", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  else
  {
  }

  sub_1D8D77098();
  v28 = swift_allocError();
  *v29 = 0;
  FeedUpdateRequest.failRequest(_:)(v28);

  if (v9)
  {
    LOBYTE(v34) = v10;
    v35 = v9;
    sub_1D8D7FAB4();
    goto LABEL_10;
  }
}

uint64_t sub_1D8D7C18C()
{
  updated = type metadata accessor for FeedUpdateRequest();
  v2 = (*(*(updated - 1) + 80) + 48) & ~*(*(updated - 1) + 80);
  v27 = *(*(updated - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 40);

  v5 = v0 + v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v2, 1, v6))
  {
    (*(v7 + 8))(v0 + v2, v6);
  }

  v8 = updated[5];
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v5 + v8, v9);
  v12 = updated[6];
  if (!(*(v10 + 48))(v5 + v12, 1, v9))
  {
    v11(v5 + v12, v9);
  }

  v13 = *(v5 + updated[8] + 8);

  v14 = (v5 + updated[14]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v5 + updated[15]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = (v5 + updated[16]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = (v5 + updated[17]);
  if (*v20)
  {
    v21 = v20[1];
  }

  v22 = *(v5 + updated[18]);

  v23 = *(v5 + updated[19]);

  v24 = *(v5 + updated[20]);

  v25 = *(v0 + ((v27 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8D7C424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t NSManagedObjectContext.performWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  updated = type metadata accessor for FeedUpdateRequest();
  v9 = *(updated - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v11 = swift_allocObject();
  LOBYTE(aBlock[0]) = 26;
  sub_1D8D76684(aBlock, (v11 + 16));
  sub_1D8D7A3C4(a1, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1D8D79960(aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a2;
  v14[1] = a3;
  aBlock[4] = sub_1D8F564E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);

  [v4 performBlock_];
  _Block_release(v15);
}

uint64_t sub_1D8D7C674()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D7C6B4()
{
  v0 = sub_1D917739C();
  __swift_allocate_value_buffer(v0, qword_1ECAB1010);
  __swift_project_value_buffer(v0, qword_1ECAB1010);
  return sub_1D917738C();
}

uint64_t sub_1D8D7C738(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_1D8D33C70(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v26 = *v11;
    v17 = sub_1D8D33C70(a2, a3);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_1D9179CFC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v11;
  if (v23)
  {
    v29 = *(v28 + 56);
    v30 = *(v29 + 8 * v17);
    *(v29 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v28);
  }
}

uint64_t sub_1D8D7C8B8(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for FeedUpdateRequest();
  v5 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7518, &unk_1D91979D8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v36[-1] - v10;
  v12 = sub_1D9177F1C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v36[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2[12];
  *v17 = v18;
  (*(v13 + 104))(v17, *MEMORY[0x1E69E8020], v12, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9177F4C();
  (*(v13 + 8))(v17, v12);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = swift_beginAccess();
  v21 = v2[13];
  MEMORY[0x1EEE9AC00](v20);
  *(&v35 - 2) = a1;

  v17 = sub_1D8D7CCF8(sub_1D8D7F948, (&v35 - 4), v21);
  v23 = v22;

  if (v23)
  {
    v17 = *(v2[13] + 16);
  }

  swift_beginAccess();
  if (*(v2[13] + 16) < v17)
  {
    goto LABEL_12;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    sub_1D8D7A3C4(a1, v11);
    sub_1D8D7F9A8(v17, v17, v11);
    swift_endAccess();
    if (qword_1EDCD1068 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  swift_once();
LABEL_7:
  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD1070);
  sub_1D8D7A3C4(a1, v7);

  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36[0] = v28;
    *v27 = 136315907;
    *(v27 + 4) = sub_1D8CFA924(v2[2], v2[3], v36);
    *(v27 + 12) = 2160;
    *(v27 + 14) = 1752392040;
    *(v27 + 22) = 2081;
    v29 = &v7[*(updated + 20)];
    v30 = sub_1D9176ACC();
    v32 = v31;
    sub_1D8D7A55C(v7);
    v33 = sub_1D8CFA924(v30, v32, v36);

    *(v27 + 24) = v33;
    *(v27 + 32) = 2048;
    *(v27 + 34) = v17;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "%s: inserting %{private,mask.hash}s at index %ld", v27, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v7);
  }

  return sub_1D8D801B0();
}

uint64_t sub_1D8D7CD24(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void sub_1D8D7CE3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_workQueue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1D9177F4C();
  v13 = *(v5 + 8);
  v12 = v5 + 8;
  v13(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v14 = a1 + *(type metadata accessor for FeedUpdateRequest() + 20);
  v12 = sub_1D9176ACC();
  v4 = v15;
  v16 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_requests);
  v30[0] = v12;
  v30[1] = v15;
  v17 = *(v16 + 32);
  MEMORY[0x1EEE9AC00](v12);
  *&v28[-32] = v18;
  *&v28[-24] = v30;
  *&v28[-16] = a1;
  MEMORY[0x1EEE9AC00](v19);
  *&v28[-16] = sub_1D8D79D24;
  *&v28[-8] = v20;
  os_unfair_lock_lock(v17 + 4);
  sub_1D8D7D230(&v29);
  os_unfair_lock_unlock(v17 + 4);
  if (v29)
  {

    v21 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_feedQueue);
    sub_1D8D7C8B8(a1);
    return;
  }

  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v22 = sub_1D917744C();
  __swift_project_value_buffer(v22, qword_1EDCD1070);

  v23 = sub_1D917741C();
  v24 = sub_1D9178D1C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30[0] = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = sub_1D8CFA924(v12, v4, v30);

    *(v25 + 14) = v27;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "There is already an rss feed update request for %{private,mask.hash}s. Dropping this redundant request.", v25, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v25, -1, -1);
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation13LibraryEntityOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D8D7D188()
{
  v1 = *(type metadata accessor for FeedUpdateRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);
  sub_1D8D7CE3C(v2);
}

void *sub_1D8D7D1EC@<X0>(_BYTE *a1@<X8>)
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

uint64_t sub_1D8D7D28C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v4 + 40);

  v18 = a1(v17);
  v19 = *(v4 + 48);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a4;
  v21 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD6D8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v21);
  _Block_release(v21);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_1D8D7D568(uint64_t a1)
{
  result = MEMORY[0x1DA72A0A0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
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

    sub_1D8D19AFC(&v13, v11, v12);
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

uint64_t sub_1D8D7D6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 24);
  sub_1D917791C();
  LOBYTE(a3) = a3(a1);

  if ((a3 & 1) == 0)
  {
    return sub_1D917790C();
  }

  return result;
}

uint64_t sub_1D8D7D74C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1D9179DBC();

    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    v17 = sub_1D9179E1C();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1D9179ACC() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_59Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1D8D7D954()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx);
  aBlock[4] = sub_1D8F5DD84;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_44;
  v8 = _Block_copy(aBlock);

  [v7 performBlock_];
  _Block_release(v8);
  v9 = v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
  updated = type metadata accessor for FeedUpdateRequest();
  (*(v3 + 16))(v6, v9 + updated[5], v2);
  v11 = objc_allocWithZone(type metadata accessor for DownloadableURLOptions());
  sub_1D9176ACC();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v13 = [v11 init:v12 nonAppInitiated:1];

  (*(v3 + 8))(v6, v2);
  [*(v1 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) startDownloadTaskForFeedURL:v13 userInitiated:*(v9 + updated[9]) useBackgroundFetch:*(v9 + updated[11])];
}

void sub_1D8D7DD58(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a5 >> 5;
  if (v5 <= 1)
  {
    if (a5 >> 5)
    {
      if (v5 != 1)
      {
        return;
      }

LABEL_15:

      return;
    }

    sub_1D8D7567C(a1, a2);
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v6 = a5 & 1;

          sub_1D8F5DD78(a1, a2, a3, a4, v6);
        }

        return;
      }

      a1 = a2;
      goto LABEL_15;
    }
  }
}

void sub_1D8D7DE2C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  v9 = *(v2 + 48);
  *(v2 + 48) = *(a1 + 32);
  sub_1D8DA19F4(a1, &v52);
  sub_1D8D7DD58(v4, v5, v6, v7, v9);
  if (qword_1EDCD1068 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD1070);
  sub_1D8DA19F4(a1, &v52);

  v11 = sub_1D917741C();
  v12 = sub_1D9178D1C();

  sub_1D8DA1FE0(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v52 = v14;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    v15 = v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
    v16 = v15 + *(type metadata accessor for FeedUpdateRequest() + 20);
    v17 = sub_1D9176ACC();
    v19 = sub_1D8CFA924(v17, v18, &v52);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2082;
    v20 = sub_1D8DA2014();
    v22 = sub_1D8CFA924(v20, v21, &v52);

    *(v13 + 24) = v22;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "Job %{private,mask.hash}s: %{public}s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  v24 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 32);
  v26 = v25 >> 5;
  if (v25 >> 5 <= 2)
  {
    v27 = *a1;
    if (v26)
    {
      if (v26 == 1)
      {
        sub_1D8F5A7A8(v27);
      }

      else
      {
        sub_1D8F5A9A0(v27, v23);
      }
    }

    else
    {
      sub_1D8F5A440();
    }

    return;
  }

  if (v26 == 3)
  {
    v30 = *(a1 + 8);

    v31 = v24;
    v32 = sub_1D917741C();
    v33 = sub_1D9178CFC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v52 = v36;
      *v34 = 141558531;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v37 = v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
      v38 = v37 + *(type metadata accessor for FeedUpdateRequest() + 20);
      v39 = sub_1D9176ACC();
      v41 = sub_1D8CFA924(v39, v40, &v52);

      *(v34 + 14) = v41;
      *(v34 + 22) = 2112;
      v42 = sub_1D9176A5C();
      *(v34 + 24) = v42;
      *v35 = v42;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "Job %{private,mask.hash}s: Failed with error %@", v34, 0x20u);
      sub_1D8D08A50(v35, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    v43 = v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request;
    v44 = v43 + *(type metadata accessor for FeedUpdateRequest() + 56);
    if (*v44)
    {
      v45 = *(v44 + 8);
      (*v44)(v24, v30);
    }

    v46 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
    v47 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion + 8);
    v52 = v24;
    v53 = 0;
    v54 = 0uLL;
    v55 = 1;
    v46(v43, &v52);
  }

  else
  {
    v28 = *(a1 + 16);
    if (v26 != 4)
    {
      if (!(v28 | v23 | v24 | *(&v28 + 1)) && v25 == 160)
      {
        __break(1u);
      }

      else
      {
        sub_1D8D7D954();
      }

      return;
    }

    v52 = *a1;
    v53 = v23;
    v54 = v28;
    v55 = v25 & 0x1F;
    v29 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion + 8);
    (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion))(v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request, &v52);
  }

  v48 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
  if (v48[1])
  {
    v50 = *v48;
    v51 = v48[1];

    sub_1D8D92750(0);

    v49 = v48[1];
  }

  *v48 = 0;
  v48[1] = 0;
}

uint64_t sub_1D8D7E374()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD1050);
  __swift_project_value_buffer(v0, qword_1EDCD1050);
  return sub_1D917742C();
}

uint64_t sub_1D8D7E3F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a6;
  v86 = a3;
  updated = type metadata accessor for FeedUpdateRequest();
  v13 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StoreFeedUpdater.Update(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v88 = v19;
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v81 - v22;
  v91 = a1;
  v24 = [*(a1 + 24) podcastForStoreId_];
  if (v24)
  {
    v25 = v24;
    v87 = v17;
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD1050);
    v27 = v25;

    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();

    v30 = os_log_type_enabled(v28, v29);
    v85 = a7;
    if (v30)
    {
      v82 = v29;
      v83 = a5;
      v84 = updated;
      v31 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v92 = v81;
      *v31 = 136315907;
      v32 = [v27 uuid];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1D917820C();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0xE000000000000000;
      }

      v50 = sub_1D8CFA924(v34, v36, &v92);

      *(v31 + 4) = v50;
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      *(v31 + 24) = sub_1D8CFA924(v86, a4, &v92);
      *(v31 + 32) = 2081;
      v51 = [v27 title];
      if (v51)
      {
        v52 = v51;
        v53 = sub_1D917820C();
        v55 = v54;
      }

      else
      {
        v53 = 0;
        v55 = 0xE000000000000000;
      }

      v56 = sub_1D8CFA924(v53, v55, &v92);

      *(v31 + 34) = v56;
      _os_log_impl(&dword_1D8CEC000, v28, v82, "Creating update for MTPodcast %s for %{private,mask.hash}s - %{private}s", v31, 0x2Au);
      v57 = v81;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v57, -1, -1);
      MEMORY[0x1DA72CB90](v31, -1, -1);

      a5 = v83;
      updated = v84;
    }

    else
    {
    }

    if (*(a5 + updated[10]))
    {
      v58 = v27;
      v59 = v15;
      v60 = updated;
      v61 = 1;
    }

    else
    {
      v60 = updated;
      v62 = [v27 nextSyncToken];
      if (v62)
      {
        v86 = v15;
        v63 = v62;
        v64 = sub_1D917820C();
        v66 = v65;

        v58 = v27;
        if (!v66)
        {
          goto LABEL_27;
        }

        v67 = v64 & 0xFFFFFFFFFFFFLL;
        if ((v66 & 0x2000000000000000) != 0)
        {
          v67 = HIBYTE(v66) & 0xF;
        }

        if (v67)
        {
          v59 = v86;
          if (*(a5 + v60[12]) == 23)
          {
            v61 = *(v91 + 72);
          }

          else
          {
            v61 = 0;
          }
        }

        else
        {
LABEL_27:
          v59 = v86;
          v61 = 1;
        }
      }

      else
      {
        v58 = v27;
        v59 = v15;
        v61 = 1;
      }
    }

    sub_1D8D5F1EC(a5, v59, type metadata accessor for FeedUpdateRequest);
    v68 = *(a5 + v60[9]);
    v69 = v58;
    v70 = [v58 feedUpdateNeedsRetry];
    sub_1D8D5F1EC(v59, v23, type metadata accessor for FeedUpdateRequest);
    v23[v16[5]] = v68;
    v23[v16[6]] = v70;
    v23[v16[7]] = v61;
    v92 = *(v59 + v60[7]);
    v47 = sub_1D9179A4C();
    v49 = v71;

    sub_1D8D5FDB8(v59, type metadata accessor for FeedUpdateRequest);
    v17 = v87;
    a7 = v85;
  }

  else
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1EDCD1050);

    v38 = sub_1D917741C();
    v39 = sub_1D9178D1C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v87 = v17;
      v41 = v40;
      v42 = swift_slowAlloc();
      v84 = updated;
      v43 = v42;
      v92 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1D8CFA924(v86, a4, &v92);
      _os_log_impl(&dword_1D8CEC000, v38, v39, "No matching MTPodcast found for storeID %{private,mask.hash}s. Probably a new follow. Creating bootstrap update.", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      v44 = v43;
      updated = v84;
      MEMORY[0x1DA72CB90](v44, -1, -1);
      v45 = v41;
      v17 = v87;
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }

    sub_1D8D5F1EC(a5, v15, type metadata accessor for FeedUpdateRequest);
    v46 = *(a5 + updated[9]);
    sub_1D8D5F1EC(v15, v23, type metadata accessor for FeedUpdateRequest);
    v23[v16[5]] = v46;
    v23[v16[6]] = 1;
    v23[v16[7]] = 1;
    v92 = *&v15[updated[7]];
    v47 = sub_1D9179A4C();
    v49 = v48;
    sub_1D8D5FDB8(v15, type metadata accessor for FeedUpdateRequest);
  }

  v72 = &v23[v16[8]];
  *v72 = v47;
  v72[1] = v49;
  v73 = v91;
  v74 = *(v91 + 16);
  v75 = v89;
  sub_1D8D5F1EC(v23, v89, type metadata accessor for StoreFeedUpdater.Update);
  v76 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v77 = (v88 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 16) = v73;
  sub_1D8D7C424(v75, v78 + v76, type metadata accessor for StoreFeedUpdater.Update);
  v79 = (v78 + v77);
  *v79 = v90;
  v79[1] = a7;

  OS_dispatch_queue.asyncWithTelemetry(for:_:)(a5, sub_1D8D83B24, v78);

  return sub_1D8D5FDB8(v23, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D7EBC0()
{
  v28 = type metadata accessor for StoreFeedUpdater.Update(0);
  v1 = (*(*(v28 - 8) + 80) + 24) & ~*(*(v28 - 8) + 80);
  v27 = *(*(v28 - 8) + 64);
  v2 = *(v0 + 16);

  v3 = v0 + v1;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v1, 1, v4))
  {
    (*(v5 + 8))(v0 + v1, v4);
  }

  updated = type metadata accessor for FeedUpdateRequest();
  v7 = updated[5];
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v3 + v7, v8);
  v11 = updated[6];
  if (!(*(v9 + 48))(v3 + v11, 1, v8))
  {
    v10(v3 + v11, v8);
  }

  v12 = *(v3 + updated[8] + 8);

  v13 = (v3 + updated[14]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v3 + updated[15]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = (v3 + updated[16]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = (v3 + updated[17]);
  if (*v19)
  {
    v20 = v19[1];
  }

  v21 = *(v3 + updated[18]);

  v22 = *(v3 + updated[19]);

  v23 = *(v3 + updated[20]);

  v24 = *(v3 + *(v28 + 32) + 8);

  v25 = *(v0 + ((v27 + v1 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t OS_dispatch_queue.asyncWithTelemetry(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_1D9177E0C();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest();
  v13 = *(updated - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v15 = swift_allocObject();
  LOBYTE(aBlock[0]) = 24;
  sub_1D8D76684(aBlock, (v15 + 16));
  sub_1D8D7A3C4(a1, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  sub_1D8D79960(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (v17 + ((v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v23;
  *v18 = v22;
  v18[1] = v19;
  aBlock[4] = sub_1D8D834C4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19_1;
  v20 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v7, v20);
  _Block_release(v20);
  (*(v25 + 8))(v7, v4);
  (*(v8 + 8))(v11, v24);
}

void sub_1D8D7F1E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest();
  v13 = *(updated - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v16 = a1 + *(v15 + 28);
  v17 = sub_1D9176ACC();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v31[1] = *&v2[OBJC_IVAR____TtC18PodcastsFoundation14RSSFeedUpdater_pendingRestorationQueue];
    sub_1D8D7A3C4(a1, v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    sub_1D8D79960(v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
    aBlock[4] = sub_1D8D7D188;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_7_0;
    v23 = _Block_copy(aBlock);
    v24 = v2;
    sub_1D9177E4C();
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v11, v7, v23);
    _Block_release(v23);
    (*(v34 + 8))(v7, v4);
    (*(v32 + 8))(v11, v33);
  }

  else
  {
    if (qword_1EDCD1068 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD1070);
    v26 = sub_1D917741C();
    v27 = sub_1D9178CFC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "The feedUrl is an empty string. Cannot proceed with feed update.", v28, 2u);
      MEMORY[0x1DA72CB90](v28, -1, -1);
    }

    sub_1D8D77098();
    v29 = swift_allocError();
    *v30 = 7;
    FeedUpdateRequest.failRequest(_:)(v29);
  }
}

uint64_t sub_1D8D7F688()
{
  updated = type metadata accessor for FeedUpdateRequest();
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);
  v24 = *(*(updated - 1) + 64);

  v3 = v0 + v2;
  v4 = sub_1D9176EAC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = updated[5];
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = updated[6];
  if (!(*(v8 + 48))(v3 + v10, 1, v7))
  {
    v9(v3 + v10, v7);
  }

  v11 = *(v3 + updated[8] + 8);

  v12 = (v3 + updated[14]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = (v3 + updated[15]);
  if (*v14)
  {
    v15 = v14[1];
  }

  v16 = (v3 + updated[16]);
  if (*v16)
  {
    v17 = v16[1];
  }

  v18 = (v3 + updated[17]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = *(v3 + updated[18]);

  v21 = *(v3 + updated[19]);

  v22 = *(v3 + updated[20]);

  return swift_deallocObject();
}

uint64_t sub_1D8D7F948(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(type metadata accessor for FeedUpdateRequest() + 36);
  if (*(v3 + v4) == 1)
  {
    v5 = *(a1 + v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D8D7F9A8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D8D7CE14(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D8D7FF34(v7, a2, 1, a3, type metadata accessor for FeedUpdateRequest, type metadata accessor for FeedUpdateRequest, &unk_1ECAB7518, &unk_1D91979D8);
  *v3 = v5;
  return result;
}

uint64_t sub_1D8D7FAB4()
{
  v1 = sub_1D91773AC();
  v28 = *(v1 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1D917734C();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D917739C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26[-v15];
  LODWORD(v17) = *v0;
  v18 = *(v0 + 1);
  if ((v17 - 24) >= 4 && v17 != 8)
  {
    if (qword_1ECAB1030 != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (qword_1ECAB1008 != -1)
  {
    swift_once();
  }

  for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
  {
    v20 = __swift_project_value_buffer(v9, i);
    (*(v10 + 16))(v13, v20, v9);
    (*(v10 + 32))(v16, v13, v9);
    v31 = v17;
    v17 = sub_1D8D76D50();
    v13 = sub_1D917737C();
    sub_1D91773DC();
    v27 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      break;
    }

    if (v17)
    {

      sub_1D917740C();

      v21 = v28;
      if ((*(v28 + 88))(v4, v1) == *MEMORY[0x1E69E93E8])
      {
        v22 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v4, v1);
        v22 = "";
      }

      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v13, v27, v24, v17, v22, v23, 2u);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_14:
    ;
  }

  (*(v29 + 8))(v8, v30);
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_1D8D7FE9C()
{
  v1 = *(type metadata accessor for FeedUpdateRequest() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D8D7E3F4(v3, v4, v5, v6, v0 + v2, v8, v9);
}

unint64_t sub_1D8D7FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

  result = sub_1D8D800E0(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_1D8D08A50(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D8D800E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D80148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8D801B0()
{
  v1 = v0;
  v2 = sub_1D9176EAC();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for FeedUpdateRequest();
  v5 = *(updated - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = sub_1D9177F1C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = v1[12];
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);
  v64 = v21;
  LOBYTE(v21) = sub_1D9177F4C();
  (*(v16 + 8))(v20, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  result = swift_beginAccess();
  if (*(v1[14] + 16) > 2uLL)
  {
    return result;
  }

  result = swift_beginAccess();
  v23 = v1[13];
  if (!*(v23 + 16))
  {
    return result;
  }

  v63 = v2;
  swift_beginAccess();
  sub_1D8D7A3C4(v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v14);
  sub_1D8DA8814(0, 1);
  swift_endAccess();
  if (qword_1EDCD1068 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1EDCD1070);
  sub_1D8D7A3C4(v14, v11);

  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();

  v27 = os_log_type_enabled(v25, v26);
  v28 = updated;
  if (v27)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v69[0] = v30;
    *v29 = 136315651;
    *(v29 + 4) = sub_1D8CFA924(v1[2], v1[3], v69);
    *(v29 + 12) = 2160;
    *(v29 + 14) = 1752392040;
    *(v29 + 22) = 2081;
    v31 = &v11[*(v28 + 20)];
    v32 = sub_1D9176ACC();
    v34 = v33;
    sub_1D8D7A55C(v11);
    v35 = sub_1D8CFA924(v32, v34, v69);
    v28 = updated;

    *(v29 + 24) = v35;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "%s: starting %{private,mask.hash}s", v29, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  else
  {

    sub_1D8D7A55C(v11);
  }

  sub_1D8D7A3C4(v14, v8);
  v36 = v1[5];
  sub_1D8CFD9D8((v1 + 6), v69);
  v37 = v1[11];
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = type metadata accessor for RSSFeedUpdaterJob();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = swift_allocObject();
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = -96;
  v43 = (v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_feedUniquenessHash);
  *v43 = 0;
  v43[1] = 0;
  v44 = (v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_fullJobInterval);
  *v44 = 0;
  v44[1] = 0;
  sub_1D8D7A3C4(v8, v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_request);
  *(v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ctx) = v36;
  sub_1D8CFD9D8(v69, v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_ingesterProvider);
  *(v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_externalFeedDownloader) = v37;
  v45 = v64;
  *(v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_workQueue) = v64;
  v46 = (v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_completion);
  *v46 = sub_1D8DA24C0;
  v46[1] = v38;
  v47 = (v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_metricsData);
  *v47 = 0u;
  v47[1] = 0u;
  v48 = v45;
  v49 = v36;
  swift_unknownObjectRetain();

  v50 = v65;
  sub_1D9176E9C();
  v51 = sub_1D9176E5C();
  v53 = v52;
  (*(v66 + 8))(v50, v63);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  sub_1D8D7A55C(v8);
  v54 = (v42 + OBJC_IVAR____TtC18PodcastsFoundation17RSSFeedUpdaterJob_updaterJobUUID);
  *v54 = v51;
  v54[1] = v53;

  v55 = &v14[*(v28 + 20)];
  v56 = sub_1D9176ACC();
  v58 = v57;
  swift_beginAccess();

  v59 = v1[14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v1[14];
  v1[14] = 0x8000000000000000;
  sub_1D8D7A5B8(v42, v56, v58, isUniquelyReferenced_nonNull_native);

  v1[14] = v68;
  swift_endAccess();
  v61 = sub_1D8DA9384();
  sub_1D8D801B0(v61);

  return sub_1D8D7A55C(v14);
}

uint64_t sub_1D8D80848()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D808E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults);
  result = sub_1D917668C();
  v4 = v16;
  if (v16)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    v8 = MEMORY[0x1EEE9AC00](v5);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v10, v8);
    v11 = sub_1D9179AAC();
    (*(v6 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    result = swift_unknownObjectRelease();
    if (v2 == v11)
    {
      v12 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8);
      v15[0] = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key);
      v15[1] = v12;
      v14[0] = 46;
      v14[1] = 0xE100000000000000;
      sub_1D8D447DC();
      result = sub_1D917926C();
      if (result)
      {
        v13 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify + 8);
        return (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify))();
      }
    }
  }

  return result;
}

uint64_t sub_1D8D80A80()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB370, &qword_1D91BC1D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1D8D60CD8(v0 + v2, v4, v5);
}

uint64_t sub_1D8D80B1C(unint64_t a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1D8D80B2C(a1, a2 & 1, *(v2 + 16));
}

uint64_t sub_1D8D80B2C(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, uint64_t))
{
  if (a2)
  {
    return a3(a1, 1);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_31:
    v5 = sub_1D917935C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA72AA90](v6, a1);
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = sub_1D8E90D80(v8);

    ++v6;
    if (v11)
    {
      MEMORY[0x1DA729B90]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      v7 = v20;
      v6 = v10;
    }
  }

  if (a1 >> 62)
  {
    v13 = sub_1D917935C();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >> 62)
  {
    if (v13 != sub_1D917935C())
    {
      goto LABEL_21;
    }
  }

  else if (v13 != *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD0F68);
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v20 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D8CFA924(0xD000000000000038, 0x80000001D91CBBB0, &v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }
  }

  a3(v7, 0);
}

uint64_t sub_1D8D80E3C(uint64_t a1)
{
  v2 = v1;
  v55 = type metadata accessor for StoreFeedUpdater.Update(0);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D8, &qword_1D9197EE8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v53 - v15;
  v17 = sub_1D9177F1C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v2[2];
  *v22 = v23;
  (*(v18 + 104))(v22, *MEMORY[0x1E69E8020], v17, v20);
  v24 = v23;
  v25 = sub_1D9177F4C();
  v27 = *(v18 + 8);
  v26 = v18 + 8;
  v27(v22, v17);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_5;
  }

  v56 = v13;
  v28 = v2[4];
  updated = type metadata accessor for FeedUpdateRequest();
  v13 = *(a1 + *(updated + 28));
  v58 = v13;
  v30 = *(v28 + 32);
  MEMORY[0x1EEE9AC00](updated);
  v53[-4] = v28;
  v53[-3] = &v58;
  v53[-2] = a1;
  MEMORY[0x1EEE9AC00](v31);
  v53[-2] = sub_1D8D81A74;
  v53[-1] = v32;
  os_unfair_lock_lock(v30 + 4);
  sub_1D8D799DC(v57);
  os_unfair_lock_unlock(v30 + 4);
  swift_beginAccess();
  v33 = v2[8];
  if (!*(v33 + 16) || (v34 = sub_1D8D490F4(v13), (v35 & 1) == 0))
  {
    v50 = type metadata accessor for StoreFeedUpdater.Retry(0);
    (*(*(v50 - 8) + 56))(v16, 1, 1, v50);
    sub_1D8D08A50(v16, &qword_1ECAB76D8, &qword_1D9197EE8);
    return sub_1D8D825A0(a1);
  }

  v36 = v34;
  v37 = *(v33 + 56);
  v26 = type metadata accessor for StoreFeedUpdater.Retry(0);
  v38 = *(v26 - 8);
  sub_1D8D5F1EC(v37 + *(v38 + 72) * v36, v16, type metadata accessor for StoreFeedUpdater.Retry);
  v39 = *(v38 + 56);
  v25 = v38 + 56;
  v54 = v39;
  v39(v16, 0, 1, v26);
  sub_1D8D08A50(v16, &qword_1ECAB76D8, &qword_1D9197EE8);
  if (qword_1EDCD1048 != -1)
  {
    goto LABEL_12;
  }

LABEL_5:
  v40 = sub_1D917744C();
  __swift_project_value_buffer(v40, qword_1EDCD1050);
  sub_1D8D5F1EC(a1, v9, type metadata accessor for StoreFeedUpdater.Update);
  v41 = sub_1D917741C();
  v42 = sub_1D9178D1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v53[1] = v25;
    v45 = v44;
    v57[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_1D8D7C424(v9, v6, type metadata accessor for StoreFeedUpdater.Update);
    v46 = &v6[*(v55 + 32)];
    v55 = v26;
    v48 = *v46;
    v47 = v46[1];

    sub_1D8D5FDB8(v6, type metadata accessor for StoreFeedUpdater.Update);
    v49 = sub_1D8CFA924(v48, v47, v57);
    v26 = v55;

    *(v43 + 14) = v49;
    _os_log_impl(&dword_1D8CEC000, v41, v42, "Update %{private,mask.hash}s: clearing retries because a new request has come in", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1DA72CB90](v45, -1, -1);
    MEMORY[0x1DA72CB90](v43, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v9, type metadata accessor for StoreFeedUpdater.Update);
  }

  v51 = v56;
  v54(v56, 1, 1, v26);
  swift_beginAccess();
  sub_1D8F7D378(v51, v13);
  swift_endAccess();
  return sub_1D8D825A0(a1);
}

uint64_t sub_1D8D814A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t, uint64_t))
{
  v29 = a7;
  v30 = a8;
  v27 = a4;
  v28 = a2;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1D9177E9C();
  v16 = *(v31 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v26 = a9;
    v22 = *(result + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue);

    v23 = swift_allocObject();
    *(v23 + 16) = v27;
    *(v23 + 24) = a5;
    *(v23 + 32) = a1;
    v24 = v28 & 1;
    *(v23 + 40) = v24;
    aBlock[4] = v29;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v30;
    v25 = _Block_copy(aBlock);

    v26(a1, v24);
    sub_1D9177E4C();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v19, v15, v25);
    _Block_release(v25);

    (*(v12 + 8))(v15, v11);
    (*(v16 + 8))(v19, v31);
  }

  return result;
}

BOOL sub_1D8D81798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v7 = *(updated - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](updated - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 40);
  if (*(v11 + 16) && (v12 = sub_1D8D490F4(a2), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D5F1EC(a3, v10, type metadata accessor for FeedUpdateRequest);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D8D7CE14(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D8D7CE14(v15 > 1, v16 + 1, 1, v14);
  }

  v14[2] = v16 + 1;
  sub_1D8D7C424(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for FeedUpdateRequest);
  swift_beginAccess();

  v17 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(a1 + 40);
  *(a1 + 40) = 0x8000000000000000;
  sub_1D8D81A94(v14, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 40) = v22;
  swift_endAccess();
  sub_1D8D7D28C(sub_1D8D81F3C, &unk_1F54712A0, sub_1D8D85B6C, &block_descriptor_63);
  v19 = v14[2];

  return v19 == 1;
}

id sub_1D8D81A00(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

BOOL sub_1D8D81A20@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1D8D81798(*(v1 + 16), **(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8D81A94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D8D490F4(a2);
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
      sub_1D8F83A80();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D81BB8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1D8D490F4(a2);
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

uint64_t sub_1D8D81BCC()
{
  result = type metadata accessor for FeedUpdateRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D81C54(uint64_t a1)
{
  swift_beginAccess();
  [*(a1 + 104) lock];
  sub_1D8D81D40(a1);
  [*(a1 + 104) unlock];
  type metadata accessor for PodcastStateMachine();
  sub_1D8CFBF10(qword_1EDCD3F78, v2, type metadata accessor for PodcastStateMachine);
  sub_1D917788C();
  sub_1D917798C();
}

uint64_t sub_1D8D81D40(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(a1 + 88);

    do
    {
      sub_1D91040E0(v4, v18);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v19(a1);
      }

      sub_1D9104150(v18);
      v4 += 24;
      --v3;
    }

    while (v3);

    v6 = *(a1 + 88);
    v7 = *(v6 + 16);

    if (v7)
    {
      v9 = 0;
      v10 = v6 + 32;
      v11 = MEMORY[0x1E69E7CC0];
      while (v9 < *(v6 + 16))
      {
        sub_1D91040E0(v10, v18);
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D9104118(v18, v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E318EC(0, *(v11 + 16) + 1, 1);
            v11 = v20;
          }

          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1D8E318EC((v13 > 1), v14 + 1, 1);
            v11 = v20;
          }

          *(v11 + 16) = v14 + 1;
          result = sub_1D9104118(v17, v11 + 24 * v14 + 32);
        }

        else
        {
          result = sub_1D9104150(v18);
        }

        ++v9;
        v10 += 24;
        if (v7 == v9)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {
    v15 = *(a1 + 88);
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v16 = *(a1 + 88);
  *(a1 + 88) = v11;
}

uint64_t sub_1D8D81F3C(uint64_t a1)
{
  result = MEMORY[0x1DA72A0A0](*(a1 + 16), MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1D8D82034(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
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

      return v11;
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

uint64_t sub_1D8D82034(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1D9179DAC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1D8D823A4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8D82114()
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
  qword_1EDCD09B0 = result;
  return result;
}

uint64_t sub_1D8D823A4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8EFC678(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D8F0019C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D8F015F8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1D9179DAC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
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
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8D82524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1D9176EAC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1D8D825A0(uint64_t a1)
{
  v2 = v1;
  v123 = a1;
  updated = type metadata accessor for FeedUpdateRequest();
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v125 = (&v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  v114 = *(v116 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = (&v112 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v117 = &v112 - v11;
  v122 = type metadata accessor for StoreFeedUpdater.Update(0);
  v119 = *(v122 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v113 = &v112 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v120 = (&v112 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v121 = &v112 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v112 - v27;
  v29 = sub_1D9177F1C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = (&v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2[2];
  *v34 = v35;
  (*(v30 + 104))(v34, *MEMORY[0x1E69E8020], v29, v32);
  v36 = v35;
  v37 = sub_1D9177F4C();
  (*(v30 + 8))(v34, v29);
  if ((v37 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    swift_once();
    goto LABEL_11;
  }

  sub_1D8D5F1EC(v123, v28, type metadata accessor for StoreFeedUpdater.Update);
  v38 = *&v28[*(updated + 28)];
  v39 = v2[5];
  v40 = updated;
  updated = v28;
  if ((sub_1D8D834CC(v38) & 1) != 0 && v28[*(v122 + 28)] == 1)
  {
    if (qword_1EDCD1048 != -1)
    {
      swift_once();
    }

    v41 = sub_1D917744C();
    __swift_project_value_buffer(v41, qword_1EDCD1050);
    v42 = sub_1D917741C();
    v43 = sub_1D9178D1C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v125 = v2;
      v45 = v44;
      v46 = swift_slowAlloc();
      v127[0] = v46;
      *v45 = 141558275;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2081;
      swift_beginAccess();
      v47 = v28;
      v48 = v121;
      sub_1D8D5F1EC(v47, v121, type metadata accessor for StoreFeedUpdater.Update);
      v49 = v122;
      v50 = (v48 + *(v122 + 32));
      v51 = updated;
      v52 = *v50;
      v53 = v50[1];

      sub_1D8D5FDB8(v48, type metadata accessor for StoreFeedUpdater.Update);
      v54 = sub_1D8CFA924(v52, v53, v127);
      updated = v51;

      *(v45 + 14) = v54;
      _os_log_impl(&dword_1D8CEC000, v42, v43, "There is a running delta update for %{private,mask.hash}s. This is a bootstrap update, holding until the delta is done.", v45, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x1DA72CB90](v46, -1, -1);
      MEMORY[0x1DA72CB90](v45, -1, -1);
    }

    else
    {

      v49 = v122;
    }

    swift_beginAccess();
    v76 = v117;
    sub_1D8D5F1EC(updated, v117, type metadata accessor for StoreFeedUpdater.Update);
    (*(v119 + 56))(v76, 0, 1, v49);
    swift_beginAccess();
    sub_1D8F7D0D8(v76, v38);
    swift_endAccess();
    goto LABEL_18;
  }

  if ((sub_1D8D834CC(v38) & 1) == 0)
  {
    v55 = v2[6];
    if ((sub_1D8D834CC(v38) & 1) == 0)
    {
      v123 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76E0, &qword_1D9197EF0);
      v69 = *(v114 + 72);
      v70 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v114 = swift_allocObject();
      v71 = v114 + v70;
      v117 = v39;
      sub_1D8D83728(v38, v71);
      v112 = v55;
      sub_1D8D83728(v38, v71 + v69);
      v72 = v118;
      sub_1D8D83D98(v71, v118);
      v73 = v115;
      sub_1D8D843E0(v72, v115);
      v74 = *(v119 + 48);
      if (v74(v73, 1, v122) == 1)
      {
        sub_1D8D08A50(v73, &qword_1ECAB76D0, &unk_1D9197ED8);
        v75 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D8D7C424(v73, v120, type metadata accessor for StoreFeedUpdater.Update);
        v77 = MEMORY[0x1E69E7CC0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1D8D86DC8(0, v77[2] + 1, 1, v77);
        }

        v79 = v77[2];
        v78 = v77[3];
        v80 = v77;
        if (v79 >= v78 >> 1)
        {
          v80 = sub_1D8D86DC8(v78 > 1, v79 + 1, 1, v77);
        }

        *(v80 + 16) = v79 + 1;
        v75 = v80;
        sub_1D8D7C424(v120, v80 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v79, type metadata accessor for StoreFeedUpdater.Update);
        v72 = v118;
      }

      sub_1D8D83D98(v71 + v69, v72);
      sub_1D8D843E0(v72, v73);
      if (v74(v73, 1, v122) == 1)
      {
        v81 = updated;
        sub_1D8D08A50(v73, &qword_1ECAB76D0, &unk_1D9197ED8);
      }

      else
      {
        sub_1D8D7C424(v73, v120, type metadata accessor for StoreFeedUpdater.Update);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_1D8D86DC8(0, v75[2] + 1, 1, v75);
        }

        v83 = v75[2];
        v82 = v75[3];
        v84 = v75;
        if (v83 >= v82 >> 1)
        {
          v84 = sub_1D8D86DC8(v82 > 1, v83 + 1, 1, v75);
        }

        v81 = updated;
        *(v84 + 16) = v83 + 1;
        v75 = v84;
        sub_1D8D7C424(v120, v84 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v83, type metadata accessor for StoreFeedUpdater.Update);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v85 = v75[2];
      if (v85)
      {
        v118 = v75;
        v86 = v122;
        if (qword_1EDCD1048 != -1)
        {
          swift_once();
        }

        v87 = sub_1D917744C();
        __swift_project_value_buffer(v87, qword_1EDCD1050);
        v88 = sub_1D917741C();
        v89 = sub_1D9178D1C();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v127[0] = v120;
          *v90 = 141558275;
          *(v90 + 4) = 1752392040;
          *(v90 + 12) = 2081;
          swift_beginAccess();
          v91 = v121;
          sub_1D8D5F1EC(v81, v121, type metadata accessor for StoreFeedUpdater.Update);
          v92 = (v91 + v86[8]);
          v93 = *v92;
          v94 = v92[1];

          sub_1D8D5FDB8(v91, type metadata accessor for StoreFeedUpdater.Update);
          v95 = sub_1D8CFA924(v93, v94, v127);
          v86 = v122;

          *(v90 + 14) = v95;
          _os_log_impl(&dword_1D8CEC000, v88, v89, "There is a pending update for %{private,mask.hash}s. Merging together.", v90, 0x16u);
          v96 = v120;
          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          MEMORY[0x1DA72CB90](v96, -1, -1);
          MEMORY[0x1DA72CB90](v90, -1, -1);
        }

        swift_beginAccess();
        v116 = v81;
        sub_1D8D5F1EC(v81, v19, type metadata accessor for StoreFeedUpdater.Update);
        v97 = v86[5];
        v121 = v86[6];
        v122 = v97;
        v98 = v86[7];
        v99 = v118 + ((*(v119 + 80) + 32) & ~*(v119 + 80));
        v119 = *(v119 + 72);
        v120 = v98;
        v101 = v124;
        v100 = v125;
        do
        {
          sub_1D8D5F1EC(v99, v101, type metadata accessor for StoreFeedUpdater.Update);
          sub_1D8D5F1EC(v19, v100, type metadata accessor for FeedUpdateRequest);
          if (v19[v122])
          {
            v107 = 1;
          }

          else
          {
            v107 = *(v101 + v86[5]);
          }

          if (v19[v121])
          {
            v108 = 1;
          }

          else
          {
            v108 = *(v101 + v86[6]);
          }

          v109 = v86;
          if (*(v120 + v19))
          {
            v102 = 1;
            v101 = v124;
          }

          else
          {
            v101 = v124;
            v102 = v124[v86[7]];
          }

          v100 = v125;
          sub_1D8D5F1EC(v125, v14, type metadata accessor for FeedUpdateRequest);
          v14[v109[5]] = v107;
          v14[v109[6]] = v108;
          v14[v109[7]] = v102;
          v126 = *(v100 + *(v123 + 28));
          v103 = sub_1D9179A4C();
          v105 = v104;
          sub_1D8D5FDB8(v100, type metadata accessor for FeedUpdateRequest);
          sub_1D8D5FDB8(v101, type metadata accessor for StoreFeedUpdater.Update);
          sub_1D8D5FDB8(v19, type metadata accessor for StoreFeedUpdater.Update);
          v106 = &v14[v109[8]];
          *v106 = v103;
          v106[1] = v105;
          sub_1D8D7C424(v14, v19, type metadata accessor for StoreFeedUpdater.Update);
          v99 += v119;
          --v85;
          v86 = v109;
        }

        while (v85);

        v110 = v113;
        sub_1D8D7C424(v19, v113, type metadata accessor for StoreFeedUpdater.Update);
        v81 = v116;
        sub_1D8F67444(v110, v116);
      }

      else
      {

        v86 = v122;
      }

      swift_beginAccess();
      *(v81 + v86[7]);
      sub_1D8D84450(v81);
      v68 = v81;
      return sub_1D8D5FDB8(v68, type metadata accessor for StoreFeedUpdater.Update);
    }
  }

  if (qword_1EDCD1048 != -1)
  {
    goto LABEL_52;
  }

LABEL_11:
  v56 = sub_1D917744C();
  __swift_project_value_buffer(v56, qword_1EDCD1050);
  v57 = sub_1D917741C();
  v58 = sub_1D9178D1C();
  v59 = os_log_type_enabled(v57, v58);
  v60 = v122;
  if (!v59)
  {

LABEL_18:
    v68 = updated;
    return sub_1D8D5FDB8(v68, type metadata accessor for StoreFeedUpdater.Update);
  }

  v61 = swift_slowAlloc();
  v62 = swift_slowAlloc();
  v126 = v62;
  *v61 = 141558275;
  *(v61 + 4) = 1752392040;
  *(v61 + 12) = 2081;
  swift_beginAccess();
  v63 = v121;
  sub_1D8D5F1EC(updated, v121, type metadata accessor for StoreFeedUpdater.Update);
  v64 = (v63 + *(v60 + 32));
  v65 = *v64;
  v66 = v64[1];

  sub_1D8D5FDB8(v63, type metadata accessor for StoreFeedUpdater.Update);
  v67 = sub_1D8CFA924(v65, v66, &v126);

  *(v61 + 14) = v67;
  _os_log_impl(&dword_1D8CEC000, v57, v58, "There is already an update running for %{private,mask.hash}s. Dropping this redundant request.", v61, 0x16u);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  MEMORY[0x1DA72CB90](v62, -1, -1);
  MEMORY[0x1DA72CB90](v61, -1, -1);

  v68 = updated;
  return sub_1D8D5FDB8(v68, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D834CC(uint64_t a1)
{
  v3 = type metadata accessor for StoreFeedUpdater.Update(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177F1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9177F4C();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
    swift_beginAccess();
    v18 = *(v1 + v17);
    v19 = *(v18 + 16);

    v20 = 0;
    while (1)
    {
      v21 = v20;
      if (v19 == v20)
      {
LABEL_6:

        return v19 != v21;
      }

      if (v20 >= *(v18 + 16))
      {
        break;
      }

      sub_1D8D5F1EC(v18 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20++, v7, type metadata accessor for StoreFeedUpdater.Update);
      v22 = *&v7[*(type metadata accessor for FeedUpdateRequest() + 28)];
      result = sub_1D8D5FDB8(v7, type metadata accessor for StoreFeedUpdater.Update);
      if (v22 == a1)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D83728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1D9177F4C();
  result = (*(v10 + 8))(v14, v9);
  if ((v15 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v18 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  swift_beginAccess();
  v19 = *(v2 + v18);
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = 0;
    while (v21 < *(v19 + 16))
    {
      sub_1D8D5F1EC(v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21, v8, type metadata accessor for StoreFeedUpdater.Update);
      v22 = *&v8[*(type metadata accessor for FeedUpdateRequest() + 28)];
      result = sub_1D8D5FDB8(v8, type metadata accessor for StoreFeedUpdater.Update);
      if (v22 == a1)
      {

        swift_beginAccess();
        v25 = v27;
        sub_1D90D52B4(v21, v27);
        swift_endAccess();
        v24 = v25;
        v23 = 0;
        return (*(v5 + 56))(v24, v23, 1, v4);
      }

      if (v20 == ++v21)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_7:

  v23 = 1;
  v24 = v27;
  return (*(v5 + 56))(v24, v23, 1, v4);
}

uint64_t sub_1D8D839F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D8D80E3C(a2);
  if (a4)
  {

    sub_1D8D7FAB4();
  }

  return result;
}

uint64_t sub_1D8D83A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedUpdateRequest();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D8D83B24()
{
  v1 = *(type metadata accessor for StoreFeedUpdater.Update(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1D8D839F0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1D8D83C04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1D9176C2C();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[18]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D8D83D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D83E3C()
{
  result = sub_1D9176EAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8D83ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for FeedUpdateRequest();
  v7 = *(updated - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, updated);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D8D83FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D9176C2C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[18]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

void sub_1D8D8410C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = a3 & 1;
    v9 = (Strong + qword_1ECAB8648);
    v10 = *(Strong + qword_1ECAB8648);
    *v9 = a2;
    v9[1] = v8;
    v9[2] = a4;
    v11 = Strong;

    sub_1D8D841A0();
  }
}

uint64_t sub_1D8D841A0()
{
  v1 = sub_1D9177F1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + qword_1ECAB8610);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1D9177F4C();
  result = (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v0 + qword_1ECAB8648;
  v11 = *(v0 + qword_1ECAB8648);
  if (v11)
  {
    v12 = *(v10 + 16);
    v13 = *(v10 + 8);
    v14 = qword_1ECAB8640;
    swift_beginAccess();
    v15 = *(v0 + v14);
    v16 = 1 << *(v15 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v15 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = v13 & 1;

    for (i = 0; v18; result = )
    {
      v22 = i;
LABEL_11:
      v23 = *(v15 + 56) + ((v22 << 10) | (16 * __clz(__rbit64(v18))));
      v25 = *v23;
      v24 = *(v23 + 8);
      v26 = v11;
      v18 &= v18 - 1;
      v27 = v20;
      v28 = v12;

      v25(&v26);
    }

    while (1)
    {
      v22 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
      }

      v18 = *(v15 + 64 + 8 * v22);
      ++i;
      if (v18)
      {
        i = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1D8D843E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76D0, &unk_1D9197ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D84450(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76C8, &qword_1D9197ED0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v41 - v12;
  v14 = sub_1D9177F1C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v19 = v20;
  (*(v15 + 104))(v19, *MEMORY[0x1E69E8020], v14, v17);
  v21 = v20;
  v22 = sub_1D9177F4C();
  (*(v15 + 8))(v19, v14);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v42 = v4;
  v23 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  v24 = swift_beginAccess();
  v25 = *(v2 + v23);
  MEMORY[0x1EEE9AC00](v24);
  *(&v41 - 2) = a1;

  v22 = sub_1D8D7CD24(sub_1D8F674D8, (&v41 - 4), v25, type metadata accessor for StoreFeedUpdater.Update);
  v27 = v26;

  if (v27)
  {
    v22 = *(*(v2 + v23) + 16);
  }

  updated = type metadata accessor for FeedUpdateRequest();
  v29 = *(a1 + *(updated + 72));
  MEMORY[0x1EEE9AC00](updated);
  *(&v41 - 2) = a1;
  *(&v41 - 1) = v22;
  os_unfair_lock_lock(v29 + 8);
  sub_1D8D850F0(&v29[4]);
  os_unfair_lock_unlock(v29 + 8);
  swift_beginAccess();
  if (*(*(v2 + v23) + 16) < v22)
  {
    goto LABEL_12;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    sub_1D8D5F1EC(a1, v13, type metadata accessor for StoreFeedUpdater.Update);
    sub_1D8D86CBC(v22, v22, v13);
    swift_endAccess();
    if (qword_1EDCD1048 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  swift_once();
LABEL_7:
  v30 = sub_1D917744C();
  __swift_project_value_buffer(v30, qword_1EDCD1050);
  sub_1D8D5F1EC(a1, v9, type metadata accessor for StoreFeedUpdater.Update);

  v31 = sub_1D917741C();
  v32 = sub_1D9178D1C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44[0] = v34;
    *v33 = 136315907;
    *(v33 + 4) = sub_1D8CFA924(*(v2 + 16), *(v2 + 24), v44);
    *(v33 + 12) = 2160;
    *(v33 + 14) = 1752392040;
    *(v33 + 22) = 2081;
    v35 = v43;
    sub_1D8D7C424(v9, v43, type metadata accessor for StoreFeedUpdater.Update);
    v36 = (v35 + *(v42 + 32));
    v37 = *v36;
    v38 = v36[1];

    sub_1D8D5FDB8(v35, type metadata accessor for StoreFeedUpdater.Update);
    v39 = sub_1D8CFA924(v37, v38, v44);

    *(v33 + 24) = v39;
    *(v33 + 32) = 2048;
    *(v33 + 34) = v22;
    _os_log_impl(&dword_1D8CEC000, v31, v32, "%s: inserting %{private,mask.hash}s at index %ld", v33, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v33, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v9, type metadata accessor for StoreFeedUpdater.Update);
  }

  return sub_1D8D86EBC();
}

uint64_t sub_1D8D849A8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v63 = a2;
  v7 = sub_1D917734C();
  v67 = *(v7 - 8);
  v8 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v59 - v11;
  v12 = sub_1D917739C();
  v69 = *(v12 - 8);
  v13 = v69[8];
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v59 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v70 = &v59 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v59 - v26;
  v28 = *a1;
  sub_1D8D76CE0(v4, &v59 - v26);
  v29 = sub_1D9176EAC();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    result = sub_1D8D798AC(v27);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v59 = sub_1D9176E5C();
    v61 = v32;
    (*(v30 + 8))(v27, v29);
    v62 = a3;
    v64 = v7;
    v65 = v28;
    if ((v28 - 24) >= 4 && v28 != 8)
    {
      v33 = v69;
      if (qword_1ECAB1030 != -1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v33 = v69;
    if (qword_1ECAB1008 != -1)
    {
      swift_once();
    }

    v34 = 1;
    for (i = qword_1ECAB1010; ; i = qword_1ECAB1038)
    {
      v36 = __swift_project_value_buffer(v12, i);
      v37 = v33[2];
      v37(v21, v36, v12);
      v38 = v33[4];
      v38(v70, v21, v12);
      v72 = v65;
      v60 = sub_1D8D76D50();
      if (v34)
      {
        if (qword_1ECAB1008 != -1)
        {
          swift_once();
        }

        v39 = qword_1ECAB1010;
      }

      else
      {
        if (qword_1ECAB1030 != -1)
        {
          swift_once();
        }

        v39 = qword_1ECAB1038;
      }

      v40 = v64;
      v41 = __swift_project_value_buffer(v12, v39);
      v37(v15, v41, v12);
      v38(v18, v15, v12);
      sub_1D917737C();
      v42 = v68;
      sub_1D917731C();
      v43 = v18;
      v18 = v69[1];
      (v18)(v43, v12);
      sub_1D8D32440();
      v44 = v61;

      sub_1D8D3852C();
      sub_1D8D15664(v45);
      v21 = sub_1D917737C();
      v15 = sub_1D9178F5C();
      v46 = sub_1D917918C();

      if ((v46 & 1) == 0)
      {
        break;
      }

      v33 = v62;
      if (v60)
      {
        v47 = swift_slowAlloc();
        v69 = v18;
        v48 = v47;
        v49 = swift_slowAlloc();
        v71 = v49;
        *v48 = 136446466;
        v50 = sub_1D8CFA924(v59, v44, &v71);

        *(v48 + 4) = v50;
        *(v48 + 12) = 2050;
        *(v48 + 14) = v63;
        v51 = sub_1D917732C();
        _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v21, v15, v51, v60, "[identifier=%{name=identifier,public}s]\n[position=%{name=position,public}ld]", v48, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v52 = v49;
        v40 = v64;
        MEMORY[0x1DA72CB90](v52, -1, -1);
        v53 = v48;
        v18 = v69;
        MEMORY[0x1DA72CB90](v53, -1, -1);

        goto LABEL_19;
      }

      __break(1u);
LABEL_23:
      swift_once();
LABEL_21:
      v34 = 0;
    }

    v33 = v62;
LABEL_19:
    v54 = v67;
    (*(v67 + 16))(v66, v42, v40);
    v55 = sub_1D91773FC();
    v56 = *(v55 + 48);
    v57 = *(v55 + 52);
    swift_allocObject();
    v58 = sub_1D91773EC();
    (*(v54 + 8))(v42, v40);
    result = (v18)(v70, v12);
    *v33 = v65;
    v33[1] = v58;
  }

  return result;
}

double sub_1D8D85010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);

  v7 = 4;
  sub_1D8D849A8(&v7, a3, &v8);
  result = *&v8;
  *a1 = v8;
  return result;
}

double sub_1D8D85088(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);

  v7 = 4;
  sub_1D8D849A8(&v7, v3, &v8);
  result = *&v8;
  *a1 = v8;
  return result;
}

id sub_1D8D85118(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

id sub_1D8D85180(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8D85284(a1, v4, v5);
}

uint64_t sub_1D8D851F4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t type metadata accessor for MediaRequest.Params()
{
  result = qword_1EDCD7028;
  if (!qword_1EDCD7028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D8D85284(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MediaRequest.Params();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = sub_1D8D85658(a3);
  sub_1D8D85B08(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1D8D85D0C(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D8D86AFC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_109;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  v14 = [v9 thenWithBlock_];
  _Block_release(v12);

  return v14;
}

uint64_t sub_1D8D85440()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = *(*(v1 - 1) + 64);
  v3 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v4 = v0 + v3;
  sub_1D8D85E5C(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40));
  v5 = *(v0 + v3 + 48);

  v6 = *(v0 + v3 + 56);

  v7 = *(v0 + v3 + 64);

  v8 = *(v0 + v3 + 72);

  v9 = *(v0 + v3 + 80);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 96);

  v12 = *(v0 + v3 + 104);

  v13 = *(v0 + v3 + 112);

  v14 = *(v0 + v3 + 120);

  v15 = *(v0 + v3 + 128);

  v16 = *(v0 + v3 + 136);

  v17 = *(v0 + v3 + 144);

  v18 = *(v0 + v3 + 176);

  v19 = *(v0 + v3 + 184);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v3 + v20, 1, v21))
  {
    (*(v22 + 8))(v4 + v20, v21);
  }

  v23 = *(v4 + v1[29] + 8);

  v24 = *(v4 + v1[31] + 8);

  v25 = *(v4 + v1[32]);

  v26 = *(v4 + v1[33] + 8);

  v27 = *(v4 + v1[35] + 8);

  return swift_deallocObject();
}