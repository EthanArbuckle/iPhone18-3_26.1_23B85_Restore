void sub_1D8E98220(unint64_t a1, char a2, uint64_t a3, void (*a4)(id *))
{
  if ((a2 & 1) == 0)
  {
    if (a1 >> 62)
    {
      v16 = sub_1D917935C();
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v16; ++i)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA72AA90](i, a1);
          }

          else
          {
            v18 = *(a1 + 8 * i + 32);
          }

          v19 = v18;
        }
      }
    }

    if (!a4)
    {
      return;
    }

    v15 = 0;
    goto LABEL_19;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = a1;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CFC();
  sub_1D8D99898(a1, 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v20);
    *(v10 + 12) = 2082;
    swift_getErrorValue();
    v12 = sub_1D9179D2C();
    v14 = sub_1D8CFA924(v12, v13, &v20);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Unable to remove all FairPlay keys with error %{public}s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  if (a4)
  {
    v15 = a1;
LABEL_19:
    a4(v15);
  }
}

uint64_t FairPlayInvalidationManager.removeKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9177E0C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v3 + OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  v17[6] = ObjectType;
  aBlock[4] = sub_1D8E9984C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_2;
  v18 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_1D8E98858(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 24);
    v11 = *(Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher + 32);
    v12 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher), v10);
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a5;
    v14 = *(v11 + 8);

    v14(a4, sub_1D8E998E8, v13, v10, v11);
  }

  else
  {
    sub_1D8E99894();
    v15 = swift_allocError();
    *v16 = 0;
    a2();
  }
}

void sub_1D8E9899C(char *a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    (a3)(a1);
  }

  else if (*&a1[OBJC_IVAR___PFFairPlayAsset_keyStore] && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    swift_unknownObjectRetain();

    (a3)(0);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD0F68);
    v8 = a1;
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315651;
      *(v11 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v15);
      *(v11 + 12) = 2160;
      *(v11 + 14) = 1752392040;
      *(v11 + 22) = 2049;
      *(v11 + 24) = *&v8[OBJC_IVAR___PFFairPlayAsset_adamID];
      sub_1D8E8A1A8(a1);
      _os_log_impl(&dword_1D8CEC000, v9, v10, "%s Unable to remove key for %{private,mask.hash}lld, no key store found.", v11, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    else
    {
      sub_1D8E8A1A8(a1);
    }

    sub_1D8E99894();
    v13 = swift_allocError();
    *v14 = 1;
    a3();
  }
}

id FairPlayInvalidationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s18PodcastsFoundation27FairPlayInvalidationManagerC010markKeyForE02at12shouldRemovey0B03URLV_SbtF_0(uint64_t a1, char a2)
{
  v3 = sub_1D9176BBC();
  v5 = v4;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);

  v7 = sub_1D917741C();
  v8 = sub_1D9178D1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315651;
    *(v9 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    *(v9 + 24) = sub_1D8CFA924(v3, v5, &v31);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Invalidating FairPlay key at: %{private,mask.hash}s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v11 = objc_opt_self();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  if (a2)
  {
    v13 = objc_allocWithZone(MEMORY[0x1E69E4430]);
    v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v30 = [v13 initWithPath_];

    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v31 = v18;
      *v17 = 136315651;
      *(v17 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
      *(v17 + 12) = 2160;
      *(v17 + 14) = 1752392040;
      *(v17 + 22) = 2081;
      *(v17 + 24) = sub_1D8CFA924(v3, v5, &v31);
      _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Removing key from %{private,mask.hash}s.", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    v19 = [v30 removeAllKeys];
    if (v19)
    {
      v20 = v19;

      v21 = v20;
      v22 = sub_1D917741C();
      v23 = sub_1D9178CFC();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v31 = v25;
        *v24 = 136315907;
        *(v24 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v31);
        *(v24 + 12) = 2160;
        *(v24 + 14) = 1752392040;
        *(v24 + 22) = 2081;
        v26 = sub_1D8CFA924(v3, v5, &v31);

        *(v24 + 24) = v26;
        *(v24 + 32) = 2082;
        swift_getErrorValue();
        v27 = sub_1D9179D2C();
        v29 = sub_1D8CFA924(v27, v28, &v31);

        *(v24 + 34) = v29;
        _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Unable to remove key from %{private,mask.hash}s with error: %{public}s.", v24, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v25, -1, -1);
        MEMORY[0x1DA72CB90](v24, -1, -1);

        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t _s18PodcastsFoundation27FairPlayInvalidationManagerC9removeKey3fors5Error_pSgAA0cD5AssetC_tF_0(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F68);
  v3 = a1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CEC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136315651;
    *(v6 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2049;
    *(v6 + 24) = *&v3[OBJC_IVAR___PFFairPlayAsset_adamID];

    _os_log_impl(&dword_1D8CEC000, v4, v5, "%s Removing FairPlay key for %{private,mask.hash}lld.", v6, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  else
  {
  }

  if (*&v3[OBJC_IVAR___PFFairPlayAsset_keyStore] && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
  {
    v9 = v8;
    swift_unknownObjectRetain();
    v10 = [v9 removeAllKeys];
    if (v10)
    {
      v11 = v10;
      v12 = v3;
      v13 = v11;
      v14 = v11;
      v15 = sub_1D917741C();
      v16 = sub_1D9178CEC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136315907;
        *(v17 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
        *(v17 + 12) = 2160;
        *(v17 + 14) = 1752392040;
        *(v17 + 22) = 2049;
        *(v17 + 24) = *&v12[OBJC_IVAR___PFFairPlayAsset_adamID];

        *(v17 + 32) = 2082;
        swift_getErrorValue();
        v19 = sub_1D9179D2C();
        v21 = sub_1D8CFA924(v19, v20, &v29);

        *(v17 + 34) = v21;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Unable to remove FairPlay key for %{private,mask.hash}lld with error %{public}s.", v17, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v18, -1, -1);
        MEMORY[0x1DA72CB90](v17, -1, -1);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return v13;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else
  {
    v23 = v3;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CEC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29 = v27;
      *v26 = 136315651;
      *(v26 + 4) = sub_1D8CFA924(0xD000000000000031, 0x80000001D91CBC30, &v29);
      *(v26 + 12) = 2160;
      *(v26 + 14) = 1752392040;
      *(v26 + 22) = 2049;
      *(v26 + 24) = *&v23[OBJC_IVAR___PFFairPlayAsset_adamID];

      _os_log_impl(&dword_1D8CEC000, v24, v25, "%s Unable to remove FairPlay key for %{private,mask.hash}lld, no key store found.", v26, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {
    }

    sub_1D8E99894();
    result = swift_allocError();
    *v28 = 1;
  }

  return result;
}

unint64_t sub_1D8E99894()
{
  result = qword_1ECAB5608;
  if (!qword_1ECAB5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5608);
  }

  return result;
}

void sub_1D8E998E8(char *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_1D8E9899C(a1, a2 & 1, *(v2 + 16));
}

void sub_1D8E998F8(unint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  sub_1D8E98220(a1, a2 & 1, *(v2 + 16), *(v2 + 24));
}

uint64_t objectdestroy_47Tm()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return swift_deallocObject();
}

unint64_t sub_1D8E9999C()
{
  result = qword_1ECAB5610;
  if (!qword_1ECAB5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5610);
  }

  return result;
}

uint64_t sub_1D8E99A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D8E3148C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1D91792DC();
  v7 = v25;
  v8 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(*(*(a1 + 48) + 8 * result) + OBJC_IVAR___PFFairPlayAsset_adamID);
    v13 = *(a1 + 36);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1D8E3148C((v14 > 1), v15 + 1, 1);
      v7 = v25;
      v13 = v23;
      result = v24;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v10);
    if ((v16 & v11) == 0)
    {
      goto LABEL_23;
    }

    if (v13 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D8D9B144(result, v13, 0);
          v7 = v25;
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v13, 0);
      v7 = v25;
    }

LABEL_4:
    ++v8;
    result = v9;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D8E99C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for FairPlayAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CFBC88(&qword_1ECAB5520, type metadata accessor for FairPlayAsset);
  v5 = sub_1D917802C();
  if (a2)
  {
    v6 = sub_1D9176A5C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id FairPlayKeyLoader.__allocating_init(sessionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D8E9FEE4(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

id FairPlayKeyLoader.init(sessionProvider:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  v11 = sub_1D8E9FBAC(v9, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

id FairPlayKeyLoader.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for FairPlayKeySessionProvider();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v2 = sub_1D8E9F8A8(v1, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t FairPlayKeyLoader.createSession(asset:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = v16;
  v17[5] = a1;
  aBlock[4] = sub_1D8E9FFC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_20;
  v18 = _Block_copy(aBlock);
  sub_1D8D1F93C(a2);

  v19 = a1;
  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1D8E9A218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
      v9 = v8[3];
      v10 = v8[4];
      __swift_project_boxed_opaque_existential_1(v8, v9);
      v11 = *(v10 + 8);

      v11(a4, v9, v10);
      v14 = swift_unknownObjectRetain();
      v5(v14, 0);
      swift_unknownObjectRelease();

      sub_1D8D15664(v5);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D8E9440C();
      v12 = swift_allocError();
      *v13 = 1;

      v5(0, v12);

      return sub_1D8D15664(v5);
    }
  }

  return result;
}

unint64_t sub_1D8E9A534()
{
  v1 = (v0 + OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix + 8);
  }

  else
  {
    v2 = 0xD000000000000027;
    *v1 = 0xD000000000000027;
    v1[1] = 0x80000001D91CBDF0;
  }

  return v2;
}

uint64_t FairPlayKeyLoader.startKeyRequest(session:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  aBlock[4] = sub_1D8E9FFD4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_10_3;
  v18 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D8D1F93C(a2);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

void sub_1D8E9A984(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8E9A9FC(a2, a3, a4);
  }
}

uint64_t sub_1D8E9A9FC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  v15 = sub_1D9177F4C();
  (*(v8 + 8))(v12, v7);
  if (v15)
  {
    v43 = a3;
    if (qword_1EDCD0F60 == -1)
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
  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F68);
  v17 = v3;
  swift_unknownObjectRetain();
  v18 = sub_1D917741C();
  v19 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = a2;
    v21 = v20;
    v22 = swift_slowAlloc();
    v44 = v22;
    *v21 = 136315651;
    v23 = sub_1D8E9A534();
    v25 = sub_1D8CFA924(v23, v24, &v44);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    v26 = [a1 asset];
    v27 = FairPlayAsset.description.getter();
    v29 = v28;

    v30 = sub_1D8CFA924(v27, v29, &v44);

    *(v21 + 24) = v30;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Sending start request for asset: %{private,mask.hash}s", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v22, -1, -1);
    v31 = v21;
    a2 = v42;
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  v32 = *&v17[OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore];
  sub_1D8E9DCDC(a1);
  [a1 register];
  v33 = [a1 asset];
  v34 = swift_allocObject();
  v34[2] = v17;
  v34[3] = a1;
  v34[4] = v14;
  v34[5] = a2;
  v34[6] = v43;
  v35 = *&v33[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v42 = *&v33[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  v41 = __swift_project_boxed_opaque_existential_1(&v33[OBJC_IVAR___PFFairPlayAsset_avAsset], v35);
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  v37[2] = v36;
  v37[3] = sub_1D8EA01CC;
  v37[4] = v34;
  v38 = v14;
  v39 = v17;
  swift_unknownObjectRetain();
  sub_1D8D1F93C(a2);

  FairPlayAVAsset.fairPlayIdentifier(responseQueue:completion:)(v38, sub_1D8EA01E0, v37, v35, v42);
}

void FairPlayKeyLoader.renewKeyRequest(asset:completion:)(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v43 = sub_1D9177E0C();
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v19 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___PFFairPlayAsset_avAsset], v18);
  v20 = (*(v19 + 8))(v18, v19);
  v21 = [v20 URL];
  sub_1D9176B9C();

  LOBYTE(v21) = sub_1D9176A8C();
  (*(v14 + 8))(v17, v13);
  if (v21)
  {
    v22 = *&v4[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v26 = v47;
    v25 = v48;
    v24[2] = v23;
    v24[3] = v26;
    v24[4] = v25;
    v24[5] = a1;
    aBlock[4] = sub_1D8E9FFE0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_17_3;
    v27 = _Block_copy(aBlock);

    sub_1D8D1F93C(v26);
    v28 = a1;
    sub_1D9177E4C();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v29 = v43;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v12, v8, v27);
    _Block_release(v27);
    (*(v46 + 8))(v8, v29);
    (*(v44 + 8))(v12, v45);
  }

  else
  {
    v30 = v47;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD0F68);
    v32 = v4;
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      v37 = sub_1D8E9A534();
      v39 = sub_1D8CFA924(v37, v38, aBlock);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "%s Unsupported operation, attempting to renew a non-offline asset.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    if (v30)
    {
      sub_1D8E9440C();
      v40 = swift_allocError();
      *v41 = 6;
      v30();
    }
  }
}

void sub_1D8E9B480(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v14 = (*(v11 + 8))(a4, v10, v11);
    [v14 setBypassCache_];
    sub_1D8E9B5E8(v14, a2, a3);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v12 = swift_allocError();
    *v13 = 1;
    a2();
  }
}

uint64_t sub_1D8E9B5E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    if (qword_1EDCD0F60 == -1)
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
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F68);
  v16 = v3;
  swift_unknownObjectRetain();
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = a3;
    v21 = v19;
    v22 = swift_slowAlloc();
    v34 = v22;
    *v21 = 136315651;
    v23 = sub_1D8E9A534();
    v25 = sub_1D8CFA924(v23, v24, &v34);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2160;
    *(v21 + 14) = 1752392040;
    *(v21 + 22) = 2081;
    v26 = [a1 asset];
    v27 = FairPlayAsset.description.getter();
    v29 = v28;

    v30 = sub_1D8CFA924(v27, v29, &v34);

    *(v21 + 24) = v30;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Sending renew request for asset: %{private,mask.hash}s.", v21, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v22, -1, -1);
    v31 = v21;
    a3 = v20;
    a2 = v33;
    MEMORY[0x1DA72CB90](v31, -1, -1);
  }

  return sub_1D8E9A9FC(a1, a2, a3);
}

uint64_t FairPlayKeyLoader.renewKeyRequests(assets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9177E0C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_1D8E9FFEC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_3;
  v18 = _Block_copy(aBlock);

  sub_1D8D1F93C(a2);

  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v18);
  _Block_release(v18);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1D8E9BCCC(uint64_t a1, void (*a2)(void, void), uint64_t a3, unint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v62[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v66 = a2;
    v67 = a3;
    v68 = v13;
    v70 = v12;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v69 = v11;
    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F68);
    v19 = v17;

    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();

    v22 = os_log_type_enabled(v20, v21);
    v23 = a4 >> 62;
    v74 = v19;
    v71 = v8;
    v72 = v7;
    if (!v22)
    {
      goto LABEL_23;
    }

    v24 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    aBlock[0] = v65;
    *v24 = 136315651;
    v25 = sub_1D8E9A534();
    v27 = sub_1D8CFA924(v25, v26, aBlock);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    if (v23)
    {
      goto LABEL_35;
    }

    for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
    {
      v29 = MEMORY[0x1E69E7CC0];
      if (i)
      {
        v75 = MEMORY[0x1E69E7CC0];
        result = sub_1D8E3148C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v63 = v21;
        v64 = v23;
        v29 = v75;
        if ((a4 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            v31 = *(MEMORY[0x1DA72AA90](j, a4) + OBJC_IVAR___PFFairPlayAsset_adamID);
            swift_unknownObjectRelease();
            v75 = v29;
            v33 = *(v29 + 16);
            v32 = *(v29 + 24);
            if (v33 >= v32 >> 1)
            {
              sub_1D8E3148C((v32 > 1), v33 + 1, 1);
              v29 = v75;
            }

            *(v29 + 16) = v33 + 1;
            *(v29 + 8 * v33 + 32) = v31;
          }
        }

        else
        {
          v37 = (a4 + 32);
          v38 = *(v75 + 16);
          do
          {
            v39 = *(*v37 + OBJC_IVAR___PFFairPlayAsset_adamID);
            v75 = v29;
            v40 = *(v29 + 24);
            if (v38 >= v40 >> 1)
            {
              sub_1D8E3148C((v40 > 1), v38 + 1, 1);
              v29 = v75;
            }

            *(v29 + 16) = v38 + 1;
            *(v29 + 8 * v38 + 32) = v39;
            ++v37;
            ++v38;
            --i;
          }

          while (i);
        }

        v23 = v64;
        v21 = v63;
      }

      v41 = MEMORY[0x1DA729BD0](v29, MEMORY[0x1E69E7360]);
      v43 = v42;

      v44 = sub_1D8CFA924(v41, v43, aBlock);

      *(v24 + 24) = v44;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "%s Beginning renewals for adamIDs: %{private,mask.hash}s", v24, 0x20u);
      v45 = v65;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v45, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
LABEL_23:

      v46 = dispatch_group_create();
      v24 = swift_allocObject();
      *(v24 + 16) = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
      if (v23)
      {
        v20 = sub_1D917935C();
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      if (v20 >= 1)
      {
        v47 = 0;
        do
        {
          if ((a4 & 0xC000000000000001) != 0)
          {
            v48 = MEMORY[0x1DA72AA90](v47, a4);
          }

          else
          {
            v48 = *(a4 + 8 * v47 + 32);
          }

          v49 = v48;
          ++v47;
          dispatch_group_enter(v46);
          v50 = swift_allocObject();
          v50[2] = v24;
          v50[3] = v49;
          v50[4] = v46;

          v51 = v49;
          v52 = v46;
          FairPlayKeyLoader.renewKeyRequest(asset:completion:)(v51, sub_1D8EA01B4, v50);
        }

        while (v20 != v47);
LABEL_32:
        v53 = v74;
        v65 = *&v74[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
        v54 = swift_allocObject();
        v54[2] = v53;
        v54[3] = v24;
        v56 = v66;
        v55 = v67;
        v54[4] = v66;
        v54[5] = v55;
        aBlock[4] = sub_1D8EA01C0;
        aBlock[5] = v54;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D8CF5F60;
        aBlock[3] = &block_descriptor_85_0;
        v57 = _Block_copy(aBlock);
        v58 = v53;

        sub_1D8D1F93C(v56);
        v59 = v73;
        sub_1D9177E4C();
        v75 = MEMORY[0x1E69E7CC0];
        sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
        sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
        v60 = v69;
        v61 = v72;
        sub_1D91792CC();
        sub_1D9178D7C();
        _Block_release(v57);

        (*(v71 + 8))(v60, v61);
        (*(v68 + 8))(v59, v70);
      }

      __break(1u);
LABEL_35:
      ;
    }
  }

  if (a2)
  {
    v34 = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
    sub_1D8E9440C();
    v35 = swift_allocError();
    *v36 = 1;
    a2(v34, v35);
  }

  return result;
}

void sub_1D8E9C484(void *a1, int a2, void *a3, dispatch_group_t group)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = a1;
    sub_1D8F7CB98(a1, a3);
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

void sub_1D8E9C504(void *a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F68);
  v7 = a1;

  v8 = sub_1D917741C();
  v9 = sub_1D9178D1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24[0] = v11;
    *v10 = 136315651;
    v12 = sub_1D8E9A534();
    v14 = sub_1D8CFA924(v12, v13, v24);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2160;
    *(v10 + 14) = 1752392040;
    *(v10 + 22) = 2081;
    swift_beginAccess();
    v15 = *(a2 + 16);

    v17 = sub_1D8E99A00(v16);

    v18 = MEMORY[0x1DA729BD0](v17, MEMORY[0x1E69E7360]);
    v20 = v19;

    v21 = sub_1D8CFA924(v18, v20, v24);

    *(v10 + 24) = v21;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Completed renewals with errors for adamIDs: %{private,mask.hash}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  if (a3)
  {
    swift_beginAccess();
    v22 = *(a2 + 16);

    a3(v23, 0);
  }
}

id FairPlayKeyLoader.renewKey(session:)(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD0F68);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_1D917741C();
  v6 = sub_1D9178D1C();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315651;
    v9 = sub_1D8E9A534();
    v11 = sub_1D8CFA924(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5620, &qword_1D9190120);
    v12 = sub_1D917826C();
    v14 = sub_1D8CFA924(v12, v13, &v16);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Renewing keys for session: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  return [a1 renewKey];
}

void FairPlayKeyLoader.stopKeyRequest(asset:completion:)(char *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v47 = a2;
  v48 = a3;
  v43 = sub_1D9177E0C();
  v46 = *(v43 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v44 = *(v9 - 8);
  v45 = v9;
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v19 = *&a1[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___PFFairPlayAsset_avAsset], v18);
  v20 = (*(v19 + 8))(v18, v19);
  v21 = [v20 URL];
  sub_1D9176B9C();

  LOBYTE(v21) = sub_1D9176A8C();
  (*(v14 + 8))(v17, v13);
  if (v21)
  {
    v22 = v47;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD0F68);
    v24 = v4;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = sub_1D8E9A534();
      v31 = sub_1D8CFA924(v29, v30, aBlock);

      *(v27 + 4) = v31;
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    if (v22)
    {
      sub_1D8E9440C();
      v32 = swift_allocError();
      *v33 = 6;
      v22();
    }
  }

  else
  {
    v34 = *&v4[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v38 = v47;
    v37 = v48;
    v36[2] = v35;
    v36[3] = v38;
    v36[4] = v37;
    v36[5] = a1;
    aBlock[4] = sub_1D8EA0048;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_31_0;
    v39 = _Block_copy(aBlock);

    sub_1D8D1F93C(v38);
    v40 = a1;
    sub_1D9177E4C();
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v41 = v43;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v12, v8, v39);
    _Block_release(v39);
    (*(v46 + 8))(v8, v41);
    (*(v44 + 8))(v12, v45);
  }
}

void sub_1D8E9CFFC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (Strong + OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider);
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v12 = (*(v11 + 8))(a4, v10, v11);
    sub_1D8E9D150(v12, a2, a3);
    swift_unknownObjectRelease();
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v13 = swift_allocError();
    *v14 = 1;
    a2();
  }
}

void sub_1D8E9D150(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    if (qword_1EDCD0F60 == -1)
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
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F68);
  v16 = v3;
  swift_unknownObjectRetain();
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315651;
    v22 = sub_1D8E9A534();
    v24 = sub_1D8CFA924(v22, v23, aBlock);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2081;
    v25 = [a1 asset];
    v26 = FairPlayAsset.description.getter();
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, aBlock);

    *(v20 + 24) = v29;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Sending stop request for asset: %{private,mask.hash}s.", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v30 = v20;
    a3 = v35;
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  v31 = swift_allocObject();
  v31[2] = v16;
  v31[3] = a2;
  v31[4] = a3;
  aBlock[4] = sub_1D8EA01A8;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8E8A43C;
  aBlock[3] = &block_descriptor_73;
  v32 = _Block_copy(aBlock);
  v33 = v16;
  sub_1D8D1F93C(a2);

  [a1 stopAndInvalidateKeysWithCompletion_];
  _Block_release(v32);
}

void FairPlayKeyLoader.stopKeyRequest(session:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v49 = a2;
  v50 = a3;
  v6 = sub_1D9177E0C();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 asset];
  v20 = *&v19[OBJC_IVAR___PFFairPlayAsset_avAsset + 24];
  v21 = *&v19[OBJC_IVAR___PFFairPlayAsset_avAsset + 32];
  __swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR___PFFairPlayAsset_avAsset], v20);
  v22 = (*(v21 + 8))(v20, v21);
  v23 = [v22 URL];
  sub_1D9176B9C();

  LOBYTE(v23) = sub_1D9176A8C();
  (*(v14 + 8))(v18, v13);
  if (v23)
  {
    v24 = v49;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD0F68);
    v26 = v4;
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      v31 = sub_1D8E9A534();
      v33 = sub_1D8CFA924(v31, v32, aBlock);

      *(v29 + 4) = v33;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    if (v24)
    {
      sub_1D8E9440C();
      v34 = swift_allocError();
      *v35 = 6;
      v24();
    }
  }

  else
  {
    v36 = *&v4[OBJC_IVAR___PFFairPlayKeyLoader_internalQueue];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v40 = v49;
    v39 = v50;
    v38[2] = v37;
    v38[3] = v40;
    v38[4] = v39;
    v38[5] = a1;
    aBlock[4] = sub_1D8EA00B4;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_38_0;
    v41 = _Block_copy(aBlock);

    sub_1D8D1F93C(v40);
    swift_unknownObjectRetain();
    sub_1D9177E4C();
    v51 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v42 = v44;
    v43 = v48;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v12, v42, v41);
    _Block_release(v41);
    (*(v47 + 8))(v42, v43);
    (*(v45 + 8))(v12, v46);
  }
}

void sub_1D8E9DB58(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1D8E9D150(a4, a2, a3);
  }

  else if (a2)
  {
    sub_1D8E9440C();
    v9 = swift_allocError();
    *v10 = 1;
    a2();
  }
}

uint64_t sub_1D8E9DCDC(uint64_t a1)
{
  v2 = sub_1D9177E0C();
  v17 = *(v2 - 8);
  v3 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8E9F000();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D8EA0274;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_127;
  v12 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  v13 = v15;
  MEMORY[0x1DA72A400](0, v9, v5, v12);
  _Block_release(v12);

  (*(v17 + 8))(v5, v2);
  (*(v6 + 8))(v9, v16);
}

void sub_1D8E9DFD8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v33 = a6;
  v34 = a8;
  v13 = sub_1D9177F1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(a4 + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
  *v18 = v19;
  (*(v14 + 104))(v18, *MEMORY[0x1E69E8020], v13, v16);
  v20 = v19;
  LOBYTE(v19) = sub_1D9177F4C();
  (*(v14 + 8))(v18, v13);
  if (v19)
  {
    if (a3)
    {
      v21 = *(a4 + OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore);
      v22 = [a5 id];
      v23 = sub_1D917820C();
      v25 = v24;

      sub_1D8E9E804(v23, v25);

      if (a7)
      {
        a7(a1);
      }
    }

    else
    {
      v26 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v30 = v33;
      v29 = v34;
      v28[2] = v27;
      v28[3] = v30;
      v28[4] = a7;
      v28[5] = v29;
      v28[6] = a5;
      aBlock[4] = sub_1D8EA01F0;
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_99;
      v31 = _Block_copy(aBlock);
      v32 = v30;
      sub_1D8D1F93C(a7);
      swift_unknownObjectRetain();

      [a5 processKeyWith:v26 completion:v31];
      _Block_release(v31);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8E9E284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a3;
  v10 = sub_1D9177E0C();
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9177E9C();
  v14 = *(v28 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a6;
    v20[4] = a4;
    v20[5] = a5;
    v20[6] = a1;
    v35 = sub_1D8EA0208;
    v36 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1D8CF5F60;
    v34 = &block_descriptor_111;
    v21 = _Block_copy(&aBlock);
    sub_1D8D1F93C(a4);
    v22 = v19;
    swift_unknownObjectRetain();
    v23 = a1;
    sub_1D9177E4C();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v21);
    _Block_release(v21);
  }

  else
  {
    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a5;
    v35 = sub_1D8EA0200;
    v36 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1D8CF5F60;
    v34 = &block_descriptor_105;
    v25 = _Block_copy(&aBlock);
    sub_1D8D1F93C(a4);
    sub_1D9177E4C();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC88(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v25);
    _Block_release(v25);
  }

  (*(v29 + 8))(v13, v10);
  (*(v14 + 8))(v17, v28);
}

void sub_1D8E9E6E8(void (*a1)(void))
{
  if (a1)
  {
    sub_1D8E9440C();
    v2 = swift_allocError();
    *v3 = 1;
    a1();
  }
}

uint64_t sub_1D8E9E760(uint64_t a1, id a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore);
  v8 = [a2 id];
  v9 = sub_1D917820C();
  v11 = v10;

  sub_1D8E9E804(v9, v11);

  if (a3)
  {
    return a3(a5);
  }

  return result;
}

uint64_t sub_1D8E9E804(uint64_t a1, uint64_t a2)
{
  v19 = sub_1D9177E9C();
  v4 = *(v19 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8E9F000();
  sub_1D9177DFC();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1D8EA0268;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_120;
  v16 = _Block_copy(aBlock);

  sub_1D9177E4C();
  MEMORY[0x1DA72A400](0, v7, v12, v16);
  _Block_release(v16);

  (*(v4 + 8))(v7, v19);
  (*(v9 + 8))(v12, v8);
}

void sub_1D8E9EA74(id a1, void *a2, void (*a3)(id))
{
  if (!a1)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F68);
    v21 = a2;
    v10 = sub_1D917741C();
    v22 = sub_1D9178D1C();

    if (os_log_type_enabled(v10, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v25 = sub_1D8E9A534();
      v27 = sub_1D8CFA924(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_1D8CEC000, v10, v22, "%s Session stopped successfully.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

LABEL_10:

    if (!a3)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = a1;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F68);
  v8 = a1;
  v9 = a2;
  v10 = sub_1D917741C();
  v11 = sub_1D9178CFC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315394;
    v14 = sub_1D8E9A534();
    v16 = sub_1D8CFA924(v14, v15, &v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v17 = sub_1D9179D2C();
    v19 = sub_1D8CFA924(v17, v18, &v28);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Failed to stop and/or invalidate with error: %s.", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);

    goto LABEL_10;
  }

  if (!a3)
  {
    return;
  }

LABEL_11:
  a3(a1);
}

void sub_1D8E9ED9C(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR___PFFairPlayKeyLoader_internalQueue);
    *v13 = v16;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
    v17 = v16;
    LOBYTE(v16) = sub_1D9177F4C();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      a5(a1, a2, a3 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D8E9440C();
    v18 = swift_allocError();
    *v19 = 1;
    a5(v18, 0, 1);
  }
}

id FairPlayKeyLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8E9F000()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D9177E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 40);
  if (v11)
  {
    v12 = *(v0 + 40);
  }

  else
  {
    v13 = sub_1D8CFD888();
    v18[1] = "ion/ActiveSessionStore]:";
    v18[2] = v13;
    sub_1D9177E5C();
    v18[3] = MEMORY[0x1E69E7CC0];
    v18[0] = sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D91792CC();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
    v14 = sub_1D9178E4C();
    v15 = *(v0 + 40);
    *(v1 + 40) = v14;
    v12 = v14;

    v11 = 0;
  }

  v16 = v11;
  return v12;
}

uint64_t sub_1D8E9F27C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    swift_unknownObjectRetain();

    v6 = sub_1D917741C();
    v7 = sub_1D9178CEC();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30[0] = v9;
      *v8 = 136315907;
      v10 = sub_1D8E9F578();
      v12 = sub_1D8CFA924(v10, v11, v30);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [a2 id];
      v14 = sub_1D917820C();
      v16 = v15;

      v17 = sub_1D8CFA924(v14, v16, v30);

      *(v8 + 14) = v17;
      *(v8 + 22) = 2160;
      *(v8 + 24) = 1752392040;
      *(v8 + 32) = 2081;
      v18 = [a2 asset];
      v19 = FairPlayAsset.description.getter();
      v21 = v20;

      v22 = sub_1D8CFA924(v19, v21, v30);

      *(v8 + 34) = v22;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Adding session with id: %s, asset: %{private,mask.hash}s", v8, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v23 = [a2 id];
    v24 = sub_1D917820C();
    v26 = v25;

    swift_beginAccess();
    swift_unknownObjectRetain();
    v27 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_1D8F4F46C(a2, v24, v26, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v29;
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1D8E9F578()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v1 = 0xD000000000000028;
    *(v0 + 24) = 0xD000000000000028;
    *(v0 + 32) = 0x80000001D91CBD80;
  }

  return v1;
}

uint64_t sub_1D8E9F5D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F68);

    v7 = sub_1D917741C();
    v8 = sub_1D9178CEC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136315394;
      v11 = sub_1D8E9F578();
      v13 = sub_1D8CFA924(v11, v12, v14);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1D8CFA924(a2, a3, v14);
      _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Removing session with id: %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    swift_beginAccess();
    sub_1D8F7EAA4(a2, a3);
    swift_endAccess();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8E9F7E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

PodcastsFoundation::FairPlayKeyLoadError_optional __swiftcall FairPlayKeyLoadError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D8E9F850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8EA0154();
  v5 = sub_1D8D32440();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1D8E9F8A8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D9178E0C();
  v20 = *(v4 - 8);
  v21 = v4;
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178D8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1D9177E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v25[3] = type metadata accessor for FairPlayKeySessionProvider();
  v25[4] = &protocol witness table for FairPlayKeySessionProvider;
  v25[0] = a1;
  v12 = OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore;
  type metadata accessor for ActiveSessionStore();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  v13[2] = sub_1D8CFD8D4(MEMORY[0x1E69E7CC0]);
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = 0;
  *&a2[v12] = v13;
  v19 = OBJC_IVAR___PFFairPlayKeyLoader_internalQueue;
  v18[1] = sub_1D8CFD888();
  sub_1D9177E5C();
  v24 = v14;
  sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v20 + 104))(v7, *MEMORY[0x1E69E8090], v21);
  *&a2[v19] = sub_1D9178E4C();
  v15 = &a2[OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix];
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_1D8CFD9D8(v25, &a2[OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider]);
  v23.receiver = a2;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  return v16;
}

id sub_1D8E9FBAC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9178E0C();
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9178D8C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1D9177E9C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v30[3] = a3;
  v30[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v30);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, a1, a3);
  v16 = OBJC_IVAR___PFFairPlayKeyLoader_activeSessionStore;
  type metadata accessor for ActiveSessionStore();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v17[2] = sub_1D8CFD8D4(MEMORY[0x1E69E7CC0]);
  v17[3] = 0;
  v17[4] = 0;
  v17[5] = 0;
  *&a2[v16] = v17;
  v23 = OBJC_IVAR___PFFairPlayKeyLoader_internalQueue;
  sub_1D8CFD888();
  sub_1D9177E5C();
  v29 = v18;
  sub_1D8CFBC88(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v25 + 104))(v24, *MEMORY[0x1E69E8090], v26);
  *&a2[v23] = sub_1D9178E4C();
  v19 = &a2[OBJC_IVAR___PFFairPlayKeyLoader____lazy_storage___logPrefix];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_1D8CFD9D8(v30, &a2[OBJC_IVAR___PFFairPlayKeyLoader_sessionProvider]);
  v28.receiver = a2;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v20;
}

id sub_1D8E9FEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v11);
  (*(v7 + 16))(v10, a1, a3);
  return sub_1D8E9FBAC(v10, v12, a3, a4);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_20Tm(void (*a1)(void))
{
  v3 = v1[2];

  if (v1[3])
  {
    v4 = v1[4];
  }

  a1(v1[5]);

  return swift_deallocObject();
}

unint64_t sub_1D8EA00C4()
{
  result = qword_1ECAB5628;
  if (!qword_1ECAB5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5628);
  }

  return result;
}

unint64_t sub_1D8EA0154()
{
  result = qword_1ECAB5648;
  if (!qword_1ECAB5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5648);
  }

  return result;
}

uint64_t objectdestroy_91Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t FairPlayKeySessionProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t FairPlayKeySessionProvider.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

void FairPlayKeySessionProvider.session(for:)(void *a1)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD0F68);

  v4 = a1;
  v5 = sub_1D917741C();
  v6 = sub_1D9178CEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315651;
    v9 = sub_1D8EA04F4();
    v11 = sub_1D8CFA924(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v12 = FairPlayAsset.description.getter();
    v14 = sub_1D8CFA924(v12, v13, &v20);

    *(v7 + 24) = v14;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "%s Creating a session for asset: %{private,mask.hash}s.", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v8, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  sub_1D8EB0130();
  if (!v1)
  {
    v16 = v15;
    v17 = type metadata accessor for ICContentFairPlayKeySession();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1D8EADCD8(v4, v16);
  }
}

unint64_t sub_1D8EA04F4()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v1 = 0xD000000000000030;
    *(v0 + 16) = 0xD000000000000030;
    *(v0 + 24) = 0x80000001D91CBEA0;
  }

  return v1;
}

uint64_t FairPlayKeySessionProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t FairPlayKeySessionProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id static FairPlayMigrationController.shared.getter()
{
  if (qword_1EDCD2910 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2918;

  return v1;
}

void sub_1D8EA0680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    if (qword_1EDCD0F60 == -1)
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
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F68);
  v16 = sub_1D917741C();
  v17 = sub_1D9178CEC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v32 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v32);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "%s Beginning migration from legacy FairPlay to V2.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v20 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 24);
  v21 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher), v20);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = ObjectType;
  v24 = *(v21 + 24);

  v24(sub_1D8EA990C, v23, v20, v21);

  v25 = objc_opt_self();
  v26 = [v25 _applePodcastsFoundationSharedUserDefaults];
  v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v26 setValue:v27 forKey:v28];

  v29 = [v25 _applePodcastsFoundationSharedUserDefaults];
  v30 = [v29 fairPlayMigrationRetryCount];
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    [v29 setFairPlayMigrationRetryCount_];
  }
}

void sub_1D8EA0A68(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD0F68);
  v10 = sub_1D917741C();
  v11 = sub_1D9178CEC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v31);
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Determining rollback status.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v14 = objc_opt_self();
  v15 = [v14 _applePodcastsFoundationSharedUserDefaults];
  NSUserDefaults.fairPlayVersion.getter(&v31);

  v16 = v31;
  v17 = [v14 _applePodcastsFoundationSharedUserDefaults];
  v18 = sub_1D8D6D320();
  if (v18 == 2)
  {
    v19 = qword_1ECAB5808;
    v20 = off_1ECAB5810;

    v21 = 1;
    LOBYTE(v19) = sub_1D8D6D934(v19, v20, 1);

    if (v19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v22 = v18;

    if (v22)
    {
      v21 = 1;
      goto LABEL_15;
    }
  }

  if (v16)
  {

LABEL_14:
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = a3;
    v24[4] = a4;

    sub_1D8EA1178(sub_1D8EA8368, v24);

    return;
  }

  v23 = sub_1D9179ACC();

  v21 = 0;
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_15:
  v25 = sub_1D917741C();
  v26 = sub_1D9178CEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v31);
    *(v27 + 12) = 1026;
    *(v27 + 14) = v21;
    *(v27 + 18) = 2082;
    if (v16)
    {
      v29 = 12918;
    }

    else
    {
      v29 = 12662;
    }

    v30 = sub_1D8CFA924(v29, 0xE200000000000000, &v31);

    *(v27 + 20) = v30;
    _os_log_impl(&dword_1D8CEC000, v25, v26, "%s Rollback unnecessary, isFairPlayV2Enabled: %{BOOL,public}d, fairPlayVersion: %{public}s.", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);
  }

  a2();
}

uint64_t FairPlayVersion.rawValue.getter()
{
  if (*v0)
  {
    return 12918;
  }

  else
  {
    return 12662;
  }
}

uint64_t sub_1D8EA0E88(void *a1, unsigned __int8 a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, const char *a7, const char *a8)
{
  if (a3)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD0F68);
    sub_1D8EA978C(a1, a2);
    v13 = sub_1D917741C();
    v14 = sub_1D9178D1C();
    sub_1D8EA97A0(a1, a2, 1);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v29 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v29);
      *(v15 + 12) = 2080;
      v27 = a1;
      v28 = a2;
      sub_1D8EA9810();
      v17 = sub_1D9179D2C();
      v19 = sub_1D8CFA924(v17, v18, &v29);

      *(v15 + 14) = v19;
      _os_log_impl(&dword_1D8CEC000, v13, v14, a8, v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F68);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v27);
      _os_log_impl(&dword_1D8CEC000, v22, v23, a7, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }
  }

  return a4();
}

uint64_t sub_1D8EA1178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  result = (*(v8 + 8))(v12, v7);
  if (v13)
  {
    v16 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 24);
    v17 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher + 32);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher), v16);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = ObjectType;
    v20 = *(v17 + 16);

    v20(sub_1D8EA839C, v19, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8EA139C(void *a1, char a2, uint64_t a3, void (*a4)(void, void, void), uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v10 = sub_1D9177E0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FairPlayMigrationData(0);
  v77 = *(v17 - 8);
  v18 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v61 - v20);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (a2)
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1EDCD0F68);
      v25 = a1;
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();
      sub_1D8D99898(a1, 1);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315394;
        *(v28 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v28 + 12) = 2082;
        swift_getErrorValue();
        v30 = sub_1D9179D2C();
        v32 = a4;
        v33 = sub_1D8CFA924(v30, v31, aBlock);

        *(v28 + 14) = v33;
        a4 = v32;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "%s Unable to migrate, no migration data found with error %{public}s.", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v29, -1, -1);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }

      a4(a1, 2, 1);
    }

    else
    {
      v61 = v14;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v62 = v11;
      v34 = sub_1D917744C();
      __swift_project_value_buffer(v34, qword_1EDCD0F68);

      v35 = sub_1D917741C();
      v36 = sub_1D9178CEC();
      v37 = os_log_type_enabled(v35, v36);
      v65 = a5;
      v64 = a4;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        aBlock[0] = v39;
        *v38 = 136315394;
        *(v38 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v38 + 12) = 2048;
        *(v38 + 14) = a1[2];
        sub_1D8D99898(a1, 0);
        _os_log_impl(&dword_1D8CEC000, v35, v36, "%s Fetched migration data for %ld episodes.", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x1DA72CB90](v39, -1, -1);
        MEMORY[0x1DA72CB90](v38, -1, -1);
      }

      else
      {
        sub_1D8D99898(a1, 0);
      }

      v63 = v10;
      v40 = swift_allocObject();
      v41 = MEMORY[0x1E69E7CC0];
      v75 = v40;
      *(v40 + 16) = MEMORY[0x1E69E7CC0];
      v74 = swift_allocObject();
      *(v74 + 16) = v41;
      v42 = dispatch_group_create();
      v43 = a1[2];
      v44 = v23;
      v45 = v66;
      if (v43)
      {
        v46 = *(v77 + 80);
        v47 = a1 + ((v46 + 32) & ~v46);
        v72 = *(v77 + 72);
        v73 = v46;
        v71 = (v46 + 48) & ~v46;
        v70 = (v18 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = v70;
        do
        {
          v77 = v43;
          sub_1D8EA9D44(v47, v21, type metadata accessor for FairPlayMigrationData);
          dispatch_group_enter(v42);
          sub_1D8EA9D44(v21, v45, type metadata accessor for FairPlayMigrationData);
          v49 = swift_allocObject();
          v50 = v75;
          v49[2] = v44;
          v49[3] = v50;
          v49[4] = v42;
          v49[5] = v74;
          sub_1D8EA9CDC(v45, v49 + v71, type metadata accessor for FairPlayMigrationData);
          *(v49 + v48) = v76;

          v51 = v44;
          v52 = v42;
          sub_1D8EA2EA0(v21, sub_1D8EA993C, v49);

          sub_1D8EA9E7C(v21, type metadata accessor for FairPlayMigrationData);
          v47 += v72;
          v43 = v77 - 1;
        }

        while (v77 != 1);
      }

      v77 = *&v44[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
      v53 = swift_allocObject();
      v54 = v74;
      v53[2] = v75;
      v53[3] = v54;
      v55 = v65;
      v53[4] = v64;
      v53[5] = v55;
      v53[6] = v76;
      aBlock[4] = sub_1D8EA9A28;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_115;
      v56 = v44;
      v57 = _Block_copy(aBlock);

      v58 = v67;
      sub_1D9177E4C();
      v78 = MEMORY[0x1E69E7CC0];
      sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      v59 = v69;
      v60 = v63;
      sub_1D91792CC();
      sub_1D9178D7C();
      _Block_release(v57);

      (*(v62 + 8))(v59, v60);
      (*(v68 + 8))(v58, v61);
    }
  }

  else
  {
    a4(0, 3, 1);
  }
}

void sub_1D8EA1C7C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v48 = a3;
  v49 = a7;
  v51 = a5;
  v52 = a6;
  v53 = a4;
  v50 = a2;
  v8 = type metadata accessor for FairPlayMigrationData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v48 - v21;
  sub_1D8D088B4(a1, &v48 - v21, &qword_1ECAB5688, &qword_1D91904B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v51;
    v24 = *v22;
    v25 = v22[8];
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD0F68);
    sub_1D8EA9D44(v52, v11, type metadata accessor for FairPlayMigrationData);
    sub_1D8EA978C(v24, v25);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    sub_1D8EA97FC(v24, v25);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v54[0] = v30;
      *v29 = 136315650;
      *(v29 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v54);
      *(v29 + 12) = 2048;
      v31 = *v11;
      sub_1D8EA9E7C(v11, type metadata accessor for FairPlayMigrationData);
      *(v29 + 14) = v31;
      *(v29 + 22) = 2080;
      v54[1] = v24;
      v55 = v25;
      sub_1D8EA9810();
      v32 = sub_1D9179D2C();
      v34 = sub_1D8CFA924(v32, v33, v54);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "%s Failed to migrate %lld with error %s.", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v11, type metadata accessor for FairPlayMigrationData);
    }

    v41 = *v52;
    v42 = v23;
    swift_beginAccess();
    v43 = *(v23 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 16) = v43;
    v45 = v53;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_1D8ECC9FC(0, *(v43 + 2) + 1, 1, v43);
      *(v23 + 16) = v43;
    }

    v47 = *(v43 + 2);
    v46 = *(v43 + 3);
    if (v47 >= v46 >> 1)
    {
      v43 = sub_1D8ECC9FC((v46 > 1), v47 + 1, 1, v43);
    }

    *(v43 + 2) = v47 + 1;
    *&v43[8 * v47 + 32] = v41;
    *(v42 + 16) = v43;
    dispatch_group_leave(v45);
    sub_1D8EA97FC(v24, v25);
  }

  else
  {
    sub_1D8EA9CDC(v22, v18, type metadata accessor for FairPlayMigrationData.ValidatedData);
    sub_1D8EA9D44(v18, v15, type metadata accessor for FairPlayMigrationData.ValidatedData);
    v35 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v38[2] = v48;
    sub_1D8EA9CDC(v15, v38 + v35, type metadata accessor for FairPlayMigrationData.ValidatedData);
    v39 = v53;
    *(v38 + v36) = v53;
    *(v38 + v37) = v51;
    *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v49;

    v40 = v39;

    sub_1D8EA2580(v18, sub_1D8EA9DAC, v38);

    sub_1D8EA9E7C(v18, type metadata accessor for FairPlayMigrationData.ValidatedData);
  }
}

void sub_1D8EA21C0(void *a1, __int16 a2, uint64_t a3, uint64_t *a4, NSObject *a5, uint64_t a6)
{
  v12 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a2 & 0x100) != 0)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F68);
    sub_1D8EA9D44(a4, v15, type metadata accessor for FairPlayMigrationData.ValidatedData);
    sub_1D8EA978C(a1, a2);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    sub_1D8EA9EDC(a1, a2, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v38 = a5;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39[0] = v26;
      *v25 = 136315650;
      *(v25 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v39);
      *(v25 + 12) = 2048;
      v27 = *v15;
      sub_1D8EA9E7C(v15, type metadata accessor for FairPlayMigrationData.ValidatedData);
      *(v25 + 14) = v27;
      *(v25 + 22) = 2080;
      v39[1] = a1;
      v40 = a2;
      sub_1D8EA9810();
      v28 = sub_1D9179D2C();
      v30 = sub_1D8CFA924(v28, v29, v39);

      *(v25 + 24) = v30;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Failed to migrate %lld with error %s.", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v26, -1, -1);
      v31 = v25;
      a5 = v38;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v15, type metadata accessor for FairPlayMigrationData.ValidatedData);
    }

    v32 = *a4;
    swift_beginAccess();
    v33 = *(a6 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a6 + 16) = v33;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1D8ECC9FC(0, *(v33 + 2) + 1, 1, v33);
      *(a6 + 16) = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1D8ECC9FC((v35 > 1), v36 + 1, 1, v33);
    }

    *(v33 + 2) = v36 + 1;
    *&v33[8 * v36 + 32] = v32;
    *(a6 + 16) = v33;
  }

  else
  {
    v16 = *a4;
    swift_beginAccess();
    v17 = *(a3 + 16);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_1D8ECC9FC(0, *(v17 + 2) + 1, 1, v17);
      *(a3 + 16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D8ECC9FC((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    *&v17[8 * v20 + 32] = v16;
    *(a3 + 16) = v17;
  }

  dispatch_group_leave(a5);
}

void sub_1D8EA2580(uint64_t a1, void (*a2)(id, uint64_t), id a3)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v75[-v9];
  v10 = sub_1D9176C2C();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v75[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v75[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75[-v18];
  v20 = sub_1D9176E3C();
  v21 = *(v20 - 8);
  v82 = v20;
  v83 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v75[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1D9177F1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v75[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = v3;
  v30 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v29 = v30;
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v24, v27);
  v31 = v30;
  LOBYTE(v30) = sub_1D9177F4C();
  (*(v25 + 8))(v29, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v84 = a2;
  v85 = a3;
  v32 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  v33 = a1 + v32[7];
  sub_1D9176BBC();
  v34 = objc_allocWithZone(MEMORY[0x1E69E4430]);
  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  a3 = [v34 initWithPath_];

  v36 = (a1 + v32[9]);
  v37 = *v36;
  v38 = v36[1];
  v39 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v87[0] = 0;
  a2 = [a3 loadKeyForIdentifier:v39 error:v87];

  if (a2)
  {
    v40 = v87[0];
    v41 = [a2 keyData];
    if (v41)
    {
      v42 = v41;
      v43 = sub_1D9176C8C();
      v45 = v44;

      v46 = *(a1 + 16);
      v47 = *(a1 + 24);
      if (v45 >> 60 != 15)
      {
        if (v47 >> 60 != 15)
        {
          sub_1D8D752C4(*(a1 + 16), *(a1 + 24));
          sub_1D8D752C4(v46, v47);
          sub_1D8DA04B0(v43, v45);
          v76 = sub_1D8FCC138(v43, v45, v46, v47);
          sub_1D8D75668(v46, v47);
          sub_1D8D7567C(v46, v47);
          sub_1D8D75668(v43, v45);
          sub_1D8D75668(v43, v45);
          if ((v76 & 1) == 0)
          {
LABEL_14:
            v50 = [a2 renewalDate];
            if (v50)
            {
              v51 = v50;
              sub_1D9176DFC();

              v52 = 0;
            }

            else
            {
              v52 = 1;
            }

            v54 = v82;
            v53 = v83;
            (*(v83 + 56))(v16, v52, 1, v82);
            sub_1D8E964A4(v16, v19);
            if ((*(v53 + 48))(v19, 1, v54) == 1)
            {

              sub_1D8D08A50(v19, &qword_1ECAB75C0, &unk_1D9188A50);
              goto LABEL_29;
            }

            (*(v53 + 32))(v81, v19, v54);
            v55 = v32[8];
            if (sub_1D9176D9C())
            {
              sub_1D8EA49BC(*a1, v84, v85);
LABEL_28:

              (*(v53 + 8))(v81, v54);
              goto LABEL_29;
            }

            v16 = &off_1E856D000;
            v56 = [a3 filePath];
            sub_1D917820C();

            v57 = v78;
            sub_1D9176BFC();

            v59 = v79;
            v58 = v80;
            if ((*(v79 + 48))(v57, 1, v80) != 1)
            {
              v71 = v77;
              (*(v59 + 32))(v77, v57, v58);
              v72 = *(v86 + OBJC_IVAR___PFFairPlayMigrationController_invalidationManager);
              v73 = sub_1D9176B1C();
              [v72 markKeyForInvalidationAt:v73 shouldRemove:1];

              (*(v59 + 8))(v71, v58);
LABEL_27:
              sub_1D8EA4CB8(a1, a3, v84, v85);
              v53 = v83;
              goto LABEL_28;
            }

            sub_1D8D08A50(v57, &unk_1ECAB5910, &qword_1D9188C90);
            if (qword_1EDCD0F60 == -1)
            {
LABEL_23:
              v60 = sub_1D917744C();
              __swift_project_value_buffer(v60, qword_1EDCD0F68);
              v61 = a3;
              v62 = sub_1D917741C();
              v63 = sub_1D9178CFC();

              if (os_log_type_enabled(v62, v63))
              {
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v87[0] = v65;
                *v64 = 136315651;
                *(v64 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v87);
                *(v64 + 12) = 2160;
                *(v64 + 14) = 1752392040;
                *(v64 + 22) = 2081;
                v66 = [v61 v16[315]];
                v67 = sub_1D917820C();
                v69 = v68;

                v70 = sub_1D8CFA924(v67, v69, v87);

                *(v64 + 24) = v70;
                _os_log_impl(&dword_1D8CEC000, v62, v63, "%s Unable to invalidate key, invalid key store path %{private,mask.hash}s.", v64, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1DA72CB90](v65, -1, -1);
                MEMORY[0x1DA72CB90](v64, -1, -1);
              }

              v54 = v82;
              goto LABEL_27;
            }

LABEL_31:
            swift_once();
            goto LABEL_23;
          }

          goto LABEL_12;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v43 = 0;
      v46 = *(a1 + 16);
      v47 = *(a1 + 24);
      v45 = 0xF000000000000000;
    }

    if (v47 >> 60 == 15)
    {
      sub_1D8D752C4(v46, v47);
      sub_1D8D75668(v43, v45);
LABEL_12:
      sub_1D8EA4758(*a1);
      v84(0, 0);

      goto LABEL_29;
    }

LABEL_13:
    sub_1D8D752C4(v46, v47);
    sub_1D8D75668(v43, v45);
    sub_1D8D75668(v46, v47);
    goto LABEL_14;
  }

  v48 = v87[0];
  v49 = sub_1D9176A6C();

  swift_willThrow();
  sub_1D8EA4CB8(a1, a3, v84, v85);

LABEL_29:
  v74 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8EA2EA0(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v218 = a3;
  v219 = a2;
  v220 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v190 = v182 - v6;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  v7 = *(*(v216 - 8) + 64);
  MEMORY[0x1EEE9AC00](v216);
  v217 = (v182 - v8);
  v208 = type metadata accessor for FairPlayMigrationData(0);
  v197 = *(v208 - 8);
  v9 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v215 = v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v214 = v182 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v207 = v182 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v203 = v182 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v198 = (v182 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v204 = (v182 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v205 = v182 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v206 = v182 - v24;
  v25 = sub_1D9176E3C();
  v211 = *(v25 - 8);
  v26 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v200 = v182 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v202 = v182 - v29;
  v195 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v209 = v182 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = v182 - v35;
  v37 = sub_1D9176C2C();
  v212 = *(v37 - 8);
  v213 = v37;
  v38 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v199 = v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v201 = v182 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = v182 - v42;
  v44 = sub_1D9177F1C();
  v45 = *(v44 - 8);
  v46 = v45[8];
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = (v182 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = v3;
  v50 = *(v3 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v49 = v50;
  v51 = v45[13];
  v193 = *MEMORY[0x1E69E8020];
  v194 = v45 + 13;
  v192 = v51;
  v51(v49, v47);
  v191 = v50;
  v52 = sub_1D9177F4C();
  v53 = v45[1];
  v196 = v44;
  v53(v49, v44);
  if ((v52 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v52 = v220;
  if (!v220[4])
  {
LABEL_13:
    if (qword_1EDCD0F60 == -1)
    {
LABEL_14:
      v72 = sub_1D917744C();
      __swift_project_value_buffer(v72, qword_1EDCD0F68);
      v73 = v214;
      sub_1D8EA9D44(v52, v214, type metadata accessor for FairPlayMigrationData);
      v74 = v52;
      v75 = v215;
      sub_1D8EA9D44(v74, v215, type metadata accessor for FairPlayMigrationData);
      v76 = sub_1D917741C();
      v77 = sub_1D9178CFC();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v221 = v79;
        *v78 = 136315907;
        *(v78 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v221);
        *(v78 + 12) = 2160;
        *(v78 + 14) = 1752392040;
        *(v78 + 22) = 2049;
        v80 = *v73;
        sub_1D8EA9E7C(v73, type metadata accessor for FairPlayMigrationData);
        *(v78 + 24) = v80;
        *(v78 + 32) = 2082;
        if (*(v75 + 32))
        {
          v81 = *(v75 + 24);
          v82 = *(v75 + 32);
        }

        else
        {
          v82 = 0xE300000000000000;
          v81 = 7104878;
        }

        sub_1D8EA9E7C(v75, type metadata accessor for FairPlayMigrationData);
        v83 = sub_1D8CFA924(v81, v82, &v221);

        *(v78 + 34) = v83;
        _os_log_impl(&dword_1D8CEC000, v76, v77, "%s Unable to migrate %{private,mask.hash}lld, no or invalid asset url (%{public}s) found.", v78, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v79, -1, -1);
        MEMORY[0x1DA72CB90](v78, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v73, type metadata accessor for FairPlayMigrationData);

        sub_1D8EA9E7C(v75, type metadata accessor for FairPlayMigrationData);
      }

      v84 = v217;
      *v217 = 4;
      *(v84 + 8) = 3;
      swift_storeEnumTagMultiPayload();
      v219(v84);
      return sub_1D8D08A50(v84, &qword_1ECAB5688, &qword_1D91904B8);
    }

LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  v188 = v25;
  v210 = v43;
  v54 = v220[3];
  sub_1D9176BFC();
  v55 = v212;
  v56 = v213;
  if ((*(v212 + 48))(v36, 1, v213) == 1)
  {
    sub_1D8D08A50(v36, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_12:
    v52 = v220;
    goto LABEL_13;
  }

  v187 = v53;
  v57 = v55 + 32;
  v58 = *(v55 + 32);
  v59 = v210;
  v58(v210, v36, v56);
  if ((sub_1D9176A8C() & 1) == 0)
  {
    (*(v55 + 8))(v59, v56);
    goto LABEL_12;
  }

  v60 = v220;
  v61 = v220[2];
  if (v61 >> 60 == 15)
  {
    v62 = v212;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v63 = sub_1D917744C();
    __swift_project_value_buffer(v63, qword_1EDCD0F68);
    v64 = v207;
    sub_1D8EA9D44(v60, v207, type metadata accessor for FairPlayMigrationData);
    v65 = sub_1D917741C();
    v66 = sub_1D9178CFC();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v213;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v221 = v70;
      *v69 = 136315651;
      *(v69 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v221);
      *(v69 + 12) = 2160;
      *(v69 + 14) = 1752392040;
      *(v69 + 22) = 2049;
      v71 = *v64;
      sub_1D8EA9E7C(v64, type metadata accessor for FairPlayMigrationData);
      *(v69 + 24) = v71;
      _os_log_impl(&dword_1D8CEC000, v65, v66, "%s Unable to migrate %{private,mask.hash}lld, no legacy key found.", v69, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x1DA72CB90](v70, -1, -1);
      MEMORY[0x1DA72CB90](v69, -1, -1);
    }

    else
    {
      sub_1D8EA9E7C(v64, type metadata accessor for FairPlayMigrationData);
    }

    v104 = v217;
    *v217 = 6;
    *(v104 + 8) = 3;
    swift_storeEnumTagMultiPayload();
    v219(v104);
    sub_1D8D08A50(v104, &qword_1ECAB5688, &qword_1D91904B8);
    return (*(v62 + 8))(v210, v68);
  }

  else
  {
    v214 = v58;
    v215 = v57;
    v86 = v220[1];
    v87 = v206;
    sub_1D8D088B4(v220 + *(v208 + 28), v206, &qword_1ECAB75C0, &unk_1D9188A50);
    v88 = v211;
    v89 = v188;
    if ((*(v211 + 48))(v87, 1, v188) == 1)
    {
      v90 = v61;
      sub_1D8D752C4(v86, v61);
      sub_1D8D08A50(v87, &qword_1ECAB75C0, &unk_1D9188A50);
      v91 = v86;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v92 = sub_1D917744C();
      __swift_project_value_buffer(v92, qword_1EDCD0F68);
      v93 = v203;
      sub_1D8EA9D44(v220, v203, type metadata accessor for FairPlayMigrationData);
      v94 = sub_1D917741C();
      v95 = sub_1D9178CFC();
      v96 = os_log_type_enabled(v94, v95);
      v98 = v212;
      v97 = v213;
      v99 = v210;
      if (v96)
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v221 = v101;
        *v100 = 136315651;
        *(v100 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v221);
        *(v100 + 12) = 2160;
        *(v100 + 14) = 1752392040;
        *(v100 + 22) = 2049;
        v102 = v93;
        v103 = *v93;
        sub_1D8EA9E7C(v102, type metadata accessor for FairPlayMigrationData);
        *(v100 + 24) = v103;
        _os_log_impl(&dword_1D8CEC000, v94, v95, "%s Unable to migrate %{private,mask.hash}lld, no legacy key expiration data found.", v100, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        MEMORY[0x1DA72CB90](v101, -1, -1);
        MEMORY[0x1DA72CB90](v100, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v93, type metadata accessor for FairPlayMigrationData);
      }

      v163 = v217;
      *v217 = 7;
      *(v163 + 8) = 3;
      swift_storeEnumTagMultiPayload();
      v219(v163);
      sub_1D8D75668(v91, v90);
      sub_1D8D08A50(v163, &qword_1ECAB5688, &qword_1D91904B8);
      return (*(v98 + 8))(v99, v97);
    }

    else
    {
      v186 = *(v88 + 32);
      v185 = v88 + 32;
      v186(v209, v87, v89);
      v105 = objc_opt_self();
      v206 = v86;
      v207 = v61;
      sub_1D8D752C4(v86, v61);
      v106 = [v105 ams_sharedAccountStore];
      v107 = [v106 ams_activeiTunesAccount];

      if (v107 && (v108 = [v107 ams_DSID], v107, (v203 = v108) != 0))
      {
        v198 = type metadata accessor for FairPlayMigrationData;
        sub_1D8EA9D44(v220, v205, type metadata accessor for FairPlayMigrationData);
        v110 = v212 + 16;
        v109 = *(v212 + 16);
        v111 = v201;
        v109(v201, v210, v213);
        v113 = v211 + 16;
        v112 = *(v211 + 16);
        v114 = v202;
        v112(v202, v209, v188);
        sub_1D8EA9D44(v205, v204, v198);
        v115 = v111;
        v116 = v213;
        v183 = v109;
        v109(v199, v115, v213);
        v117 = v114;
        v118 = v188;
        v182[0] = v112;
        v112(v200, v117, v188);
        v119 = (*(v197 + 80) + 32) & ~*(v197 + 80);
        v197 = (v9 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
        v120 = (v197 + 15) & 0xFFFFFFFFFFFFFFF8;
        v184 = v110;
        v121 = (*(v110 + 64) + v120 + 16) & ~*(v110 + 64);
        v182[1] = v113;
        v122 = (v38 + *(v113 + 64) + v121) & ~*(v113 + 64);
        v123 = swift_allocObject();
        v124 = v218;
        *(v123 + 16) = v219;
        *(v123 + 24) = v124;
        sub_1D8EA9CDC(v205, v123 + v119, v198);
        *(v123 + v197) = v203;
        v125 = (v123 + v120);
        v126 = v206;
        v127 = v207;
        *v125 = v206;
        v125[1] = v127;
        v128 = v123 + v121;
        v129 = v126;
        (v214)(v128, v201, v116);
        v215 = v123;
        v186((v123 + v122), v202, v118);
        v130 = v191;
        *v49 = v191;
        v131 = v196;
        v192(v49, v193, v196);
        v132 = v130;
        sub_1D8DA04B0(v129, v127);

        v133 = v203;
        LOBYTE(v127) = sub_1D9177F4C();
        result = v187(v49, v131);
        if (v127)
        {
          v214 = v133;
          v134 = (v220 + *(v208 + 32));
          v135 = *v134;
          v136 = v134[1];
          if (v136)
          {
            v137 = *v204;
            v138 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
            v139 = v217;
            v140 = v199;
            v141 = v213;
            v183(v217 + v138[7], v199, v213);
            v142 = v200;
            v143 = v188;
            (v182[0])(v139 + v138[8], v200, v188);
            v144 = v135;
            v145 = v214;
            *v139 = v137;
            v139[1] = v145;
            v146 = v207;
            v139[2] = v129;
            v139[3] = v146;
            v147 = (v139 + v138[9]);
            *v147 = v144;
            v147[1] = v136;
            swift_storeEnumTagMultiPayload();
            sub_1D8DA04B0(v129, v146);
            v148 = v145;

            v219(v139);

            sub_1D8D75668(v129, v146);

            sub_1D8D08A50(v139, &qword_1ECAB5688, &qword_1D91904B8);
            v149 = *(v211 + 8);
            v149(v142, v143);
            v150 = *(v212 + 8);
            v150(v140, v141);
            sub_1D8EA9E7C(v204, type metadata accessor for FairPlayMigrationData);
            v149(v209, v143);
            return (v150)(v210, v141);
          }

          else
          {
            v166 = objc_allocWithZone(MEMORY[0x1E6988168]);
            v167 = sub_1D9176B1C();
            v168 = [v166 initWithURL:v167 options:0];

            v169 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v170 = swift_allocObject();
            v170[2] = v169;
            v170[3] = sub_1D8EA9A5C;
            v170[4] = v215;

            v171 = v190;
            sub_1D917880C();
            v172 = sub_1D917886C();
            (*(*(v172 - 8) + 56))(v171, 0, 1, v172);
            v173 = swift_allocObject();
            v174 = v212;
            v175 = v173;
            v173[2] = 0;
            v173[3] = 0;
            v173[4] = v132;
            v173[5] = sub_1D8EA9BDC;
            v173[6] = v170;
            v173[7] = v168;
            v176 = v132;

            v177 = v168;
            sub_1D8E91268(v135, 0, v171, &unk_1D91904C8, v175);

            sub_1D8D75668(v129, v207);

            v178 = *(v211 + 8);
            v179 = v188;
            v178(v200, v188);
            v180 = *(v174 + 8);
            v181 = v213;
            v180(v199, v213);
            sub_1D8EA9E7C(v204, type metadata accessor for FairPlayMigrationData);
            v178(v209, v179);
            v180(v210, v181);
          }
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v151 = v212;
        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v152 = sub_1D917744C();
        __swift_project_value_buffer(v152, qword_1EDCD0F68);
        v153 = v198;
        sub_1D8EA9D44(v220, v198, type metadata accessor for FairPlayMigrationData);
        v154 = sub_1D917741C();
        v155 = sub_1D9178CFC();
        v156 = os_log_type_enabled(v154, v155);
        v157 = v213;
        v158 = v188;
        v159 = v206;
        if (v156)
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v221 = v161;
          *v160 = 136315651;
          *(v160 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v221);
          *(v160 + 12) = 2160;
          *(v160 + 14) = 1752392040;
          *(v160 + 22) = 2049;
          v162 = *v153;
          sub_1D8EA9E7C(v153, type metadata accessor for FairPlayMigrationData);
          *(v160 + 24) = v162;
          _os_log_impl(&dword_1D8CEC000, v154, v155, "%s Unable to migrate %{private,mask.hash}lld, no DSID found.", v160, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v161);
          MEMORY[0x1DA72CB90](v161, -1, -1);
          MEMORY[0x1DA72CB90](v160, -1, -1);
        }

        else
        {
          sub_1D8EA9E7C(v153, type metadata accessor for FairPlayMigrationData);
        }

        v164 = v210;
        v165 = v217;
        *v217 = 1;
        *(v165 + 8) = 3;
        swift_storeEnumTagMultiPayload();
        v219(v165);
        sub_1D8D75668(v159, v207);
        sub_1D8D08A50(v165, &qword_1ECAB5688, &qword_1D91904B8);
        (*(v211 + 8))(v209, v158);
        return (*(v151 + 8))(v164, v157);
      }
    }
  }

  return result;
}

uint64_t sub_1D8EA454C(void *a1, uint64_t a2, char a3, void (*a4)(void), uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5688, &qword_1D91904B8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  if (a3)
  {
    *v21 = a1;
    v21[8] = a2;
    swift_storeEnumTagMultiPayload();
    sub_1D8EA978C(a1, a2);
  }

  else
  {
    v38 = a7;
    v36 = a11;
    v37 = a9;
    v35 = *a6;
    v22 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
    v23 = a8;
    v24 = a4;
    v25 = v22[7];
    v26 = sub_1D9176C2C();
    (*(*(v26 - 8) + 16))(&v21[v25], a10, v26);
    v27 = v22[8];
    v28 = sub_1D9176E3C();
    v29 = &v21[v27];
    a4 = v24;
    (*(*(v28 - 8) + 16))(v29, v36, v28);
    v30 = v37;
    v31 = v38;
    *v21 = v35;
    *(v21 + 1) = v31;
    *(v21 + 2) = v23;
    *(v21 + 3) = v30;
    v32 = &v21[v22[9]];
    *v32 = a1;
    *(v32 + 1) = a2;
    swift_storeEnumTagMultiPayload();
    sub_1D8EA9CCC(a1, a2, 0);
    v33 = v31;
    sub_1D8D752C4(v23, v30);
  }

  a4(v21);
  return sub_1D8D08A50(v21, &qword_1ECAB5688, &qword_1D91904B8);
}

id sub_1D8EA4758(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177F1C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1D9177F4C();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    if (qword_1EDCD0F60 == -1)
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
  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F68);
  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315651;
    *(v15 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v19);
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2049;
    *(v15 + 24) = a1;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "%s Removing legacy key for %{private,mask.hash}lld", v15, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  return [*(v2 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage) removeKeyDataForStoreTrackID_];
}

uint64_t sub_1D8EA49BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v4 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1D9177F4C();
  (*(v10 + 8))(v14, v9);
  if (v15)
  {
    if (qword_1EDCD0F60 == -1)
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
  v17 = sub_1D917744C();
  __swift_project_value_buffer(v17, qword_1EDCD0F68);
  v18 = sub_1D917741C();
  v19 = sub_1D9178CEC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315651;
    *(v20 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v27);
    *(v20 + 12) = 2160;
    *(v20 + 14) = 1752392040;
    *(v20 + 22) = 2049;
    *(v20 + 24) = a1;
    _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Invalidating legacy key for %{private,mask.hash}lld", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x1DA72CB90](v21, -1, -1);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  v22 = *(v4 + OBJC_IVAR___PFFairPlayMigrationController_legacyDownloadRenewalManager);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = ObjectType;

  sub_1D8F15FFC(a1, sub_1D8EA9738, v24);
}

void sub_1D8EA4CB8(uint64_t *a1, void *a2, void (*a3)(id, uint64_t), id a4)
{
  v62 = a2;
  v8 = type metadata accessor for FairPlayMigrationData.ValidatedData(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v58 = (&v55 - v12);
  v63 = sub_1D9176E3C();
  v61 = *(v63 - 8);
  v13 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177F1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v4;
  v22 = *(v4 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  v24 = sub_1D9177F4C();
  (*(v17 + 8))(v21, v16);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v59 = a4;
  v60 = a3;
  v25 = a1[2];
  v26 = a1[3];
  v27 = (a1 + *(v8 + 36));
  v28 = *v27;
  v29 = v27[1];
  v30 = *a1;
  v31 = *a1 & ~(*a1 >> 63);
  sub_1D9176CEC();
  v32 = a1[1];
  v33 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v36 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  a4 = [v62 saveKey:v33 forIdentifier:v34 adamID:v35 withRenewalDate:v36 accountDSID:v32 keyServerProtocolType:2];

  (*(v61 + 8))(v15, v63);
  if (a4)
  {
    v37 = qword_1EDCD0F60;
    v24 = a4;
    if (v37 == -1)
    {
LABEL_4:
      v38 = sub_1D917744C();
      __swift_project_value_buffer(v38, qword_1EDCD0F68);
      v39 = v58;
      sub_1D8EA9D44(a1, v58, type metadata accessor for FairPlayMigrationData.ValidatedData);
      v40 = sub_1D917741C();
      v41 = sub_1D9178CFC();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v64[0] = v43;
        *v42 = 136315651;
        *(v42 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v64);
        *(v42 + 12) = 2160;
        *(v42 + 14) = 1752392040;
        *(v42 + 22) = 2049;
        v44 = *v39;
        sub_1D8EA9E7C(v39, type metadata accessor for FairPlayMigrationData.ValidatedData);
        *(v42 + 24) = v44;
        _os_log_impl(&dword_1D8CEC000, v40, v41, "%s Unable to migrate %{private,mask.hash}lld, unable to save with error.", v42, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x1DA72CB90](v43, -1, -1);
        MEMORY[0x1DA72CB90](v42, -1, -1);
      }

      else
      {
        sub_1D8EA9E7C(v39, type metadata accessor for FairPlayMigrationData.ValidatedData);
      }

      v54 = v24;
      v60(a4, 257);

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  sub_1D8EA4758(v30);
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v45 = sub_1D917744C();
  __swift_project_value_buffer(v45, qword_1EDCD0F68);
  v46 = v57;
  sub_1D8EA9D44(a1, v57, type metadata accessor for FairPlayMigrationData.ValidatedData);
  v47 = sub_1D917741C();
  v48 = sub_1D9178CEC();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v60;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v64[0] = v52;
    *v51 = 136315651;
    *(v51 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v64);
    *(v51 + 12) = 2160;
    *(v51 + 14) = 1752392040;
    *(v51 + 22) = 2049;
    v53 = *v46;
    sub_1D8EA9E7C(v46, type metadata accessor for FairPlayMigrationData.ValidatedData);
    *(v51 + 24) = v53;
    _os_log_impl(&dword_1D8CEC000, v47, v48, "%s Finished migrating %{private,mask.hash}lld.", v51, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x1DA72CB90](v52, -1, -1);
    MEMORY[0x1DA72CB90](v51, -1, -1);
  }

  else
  {
    sub_1D8EA9E7C(v46, type metadata accessor for FairPlayMigrationData.ValidatedData);
  }

  v50(0, 0);
}

uint64_t sub_1D8EA5328(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a3(0, 259);
  }

  v18 = Strong;
  v30 = v13;
  v31 = v12;
  v32 = v8;
  if (*(a1 + 16))
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F68);
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = a3;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
      _os_log_impl(&dword_1D8CEC000, v20, v21, "%s Unable to invalidate and remove legacy FairPlay key.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1DA72CB90](v24, -1, -1);
      v25 = v23;
      a3 = v22;
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }
  }

  v26 = *&v18[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  aBlock[4] = sub_1D8EA9744;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_66_0;
  v28 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v11, v28);
  _Block_release(v28);
  (*(v32 + 8))(v11, v7);
  (*(v30 + 8))(v16, v31);
}

void sub_1D8EA5758(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t))
{
  v9 = sub_1D9177F1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
    *v13 = v16;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
    v17 = v16;
    LOBYTE(v16) = sub_1D9177F4C();
    (*(v10 + 8))(v13, v9);
    if (v16)
    {
      v18 = a3 & 1;
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = a2;
      }

      sub_1D8E93674(a1, a2, v18);
      a5(a1, v19, v18);

      sub_1D8E93630(a1, a2, v18);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a5(0, 3, 1);
  }
}

void sub_1D8EA590C(unint64_t a1, char a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v76 = a6;
  v82 = a1;
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a4(0, 3, 1);
    return;
  }

  if ((a2 & 1) == 0)
  {
    v68 = v18;
    v69 = v15;
    v70 = v13;
    v71 = v14;
    v74 = a4;
    v78 = dispatch_group_create();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E7CC0];
    v80 = v29;
    *(v29 + 16) = MEMORY[0x1E69E7CC0];
    v31 = swift_allocObject();
    v79 = v31;
    *(v31 + 16) = v30;
    v67 = (v31 + 16);
    v32 = v82;
    v33 = v82 & 0xFFFFFFFFFFFFFF8;
    v75 = a5;
    v73 = v9;
    v72 = v10;
    if (v82 >> 62)
    {
      v34 = sub_1D917935C();
      if (v34)
      {
LABEL_10:
        v35 = 0;
        v77 = v32 & 0xC000000000000001;
        v36 = v80;
        while (1)
        {
          if (v77)
          {
            v37 = MEMORY[0x1DA72AA90](v35, v32);
          }

          else
          {
            if (v35 >= *(v33 + 16))
            {
              goto LABEL_32;
            }

            v37 = *(v32 + 8 * v35 + 32);
          }

          v38 = v37;
          a4 = (v35 + 1);
          if (__OFADD__(v35, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (!*&v37[OBJC_IVAR___PFFairPlayAsset_keyStore])
          {
            break;
          }

          objc_opt_self();
          v39 = swift_dynamicCastObjCClass();
          if (!v39)
          {
            break;
          }

          v40 = v39;
          swift_unknownObjectRetain();
          v41 = v78;
          dispatch_group_enter(v78);

          v42 = v38;
          v43 = v33;
          v44 = v79;

          v45 = v41;
          sub_1D8EA83C0(v40, Strong, v36, v42, v44, v45);
          swift_unknownObjectRelease();

          v32 = v82;
          v33 = v43;

          ++v35;
          if (a4 == v34)
          {
            goto LABEL_30;
          }
        }

        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v46 = sub_1D917744C();
        __swift_project_value_buffer(v46, qword_1EDCD0F68);
        v47 = v38;
        v48 = sub_1D917741C();
        v49 = sub_1D9178CFC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock[0] = v51;
          *v50 = 136315651;
          *(v50 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
          *(v50 + 12) = 2160;
          *(v50 + 14) = 1752392040;
          *(v50 + 22) = 2049;
          *(v50 + 24) = *&v47[OBJC_IVAR___PFFairPlayAsset_adamID];

          _os_log_impl(&dword_1D8CEC000, v48, v49, "%s Unable to migrate %{private,mask.hash}lld, no key store found.", v50, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          MEMORY[0x1DA72CB90](v51, -1, -1);
          MEMORY[0x1DA72CB90](v50, -1, -1);
        }

        else
        {
        }

        v52 = v67;
        v53 = *&v47[OBJC_IVAR___PFFairPlayAsset_adamID];
        swift_beginAccess();
        v54 = *v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v52 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v54 = sub_1D8ECC9FC(0, *(v54 + 2) + 1, 1, v54);
          *v52 = v54;
        }

        v57 = *(v54 + 2);
        v56 = *(v54 + 3);
        if (v57 >= v56 >> 1)
        {
          v54 = sub_1D8ECC9FC((v56 > 1), v57 + 1, 1, v54);
        }

        *(v54 + 2) = v57 + 1;
        *&v54[8 * v57 + 32] = v53;
        *v52 = v54;
      }
    }

    else
    {
      v34 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_10;
      }
    }

LABEL_30:
    v58 = Strong;
    v82 = *&Strong[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
    v59 = swift_allocObject();
    v60 = v79;
    v59[2] = v80;
    v59[3] = v60;
    v61 = v75;
    v59[4] = v74;
    v59[5] = v61;
    v59[6] = v76;
    aBlock[4] = sub_1D8EA83B4;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40_0;
    v62 = _Block_copy(aBlock);

    v63 = v68;
    sub_1D9177E4C();
    v83 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v64 = v70;
    v65 = v73;
    sub_1D91792CC();
    v66 = v78;
    sub_1D9178D7C();
    _Block_release(v62);

    (*(v72 + 8))(v64, v65);
    (*(v69 + 8))(v63, v71);

    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1EDCD0F68);
  v20 = v82;
  v21 = v82;
  v22 = sub_1D917741C();
  v23 = sub_1D9178CFC();
  sub_1D8D99898(v20, 1);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
    *(v24 + 12) = 2082;
    swift_getErrorValue();
    v26 = sub_1D9179D2C();
    v28 = sub_1D8CFA924(v26, v27, aBlock);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Unable to rollback, no episode data found with error %{public}s.", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v25, -1, -1);
    MEMORY[0x1DA72CB90](v24, -1, -1);
  }

  a4(v20, 2, 1);
}

void sub_1D8EA6224(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v7 = *(a4 + OBJC_IVAR___PFFairPlayAsset_adamID);
  if ((a2 & 0x100) != 0)
  {
    swift_beginAccess();
    v14 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_1D8ECC9FC(0, *(v14 + 2) + 1, 1, v14);
      *(a5 + 16) = v14;
    }

    v17 = *(v14 + 2);
    v16 = *(v14 + 3);
    if (v17 >= v16 >> 1)
    {
      v14 = sub_1D8ECC9FC((v16 > 1), v17 + 1, 1, v14);
    }

    *(v14 + 2) = v17 + 1;
    *&v14[8 * v17 + 32] = v7;
    *(a5 + 16) = v14;
  }

  else
  {
    swift_beginAccess();
    v9 = *(a3 + 16);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v9;
    if ((v10 & 1) == 0)
    {
      v9 = sub_1D8ECC9FC(0, *(v9 + 2) + 1, 1, v9);
      *(a3 + 16) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1D8ECC9FC((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    *&v9[8 * v12 + 32] = v7;
    *(a3 + 16) = v9;
  }

  dispatch_group_leave(a6);
}

uint64_t sub_1D8EA639C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, uint64_t a5, char *a6)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F68);

  v11 = sub_1D917741C();
  v12 = sub_1D9178D1C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33[0] = v14;
    *v13 = 136316163;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v33);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    swift_beginAccess();
    v15 = *(a1 + 16);

    v32 = a3;
    v17 = MEMORY[0x1E69E7360];
    format = a6;
    v18 = MEMORY[0x1DA729BD0](v16, MEMORY[0x1E69E7360]);
    v20 = v19;

    v21 = sub_1D8CFA924(v18, v20, v33);

    *(v13 + 24) = v21;
    *(v13 + 32) = 2160;
    *(v13 + 34) = 1752392040;
    *(v13 + 42) = 2081;
    swift_beginAccess();
    v22 = *(a2 + 16);

    v24 = MEMORY[0x1DA729BD0](v23, v17);
    v26 = v25;

    v27 = sub_1D8CFA924(v24, v26, v33);
    a3 = v32;

    *(v13 + 44) = v27;
    _os_log_impl(&dword_1D8CEC000, v11, v12, format, v13, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  swift_beginAccess();
  v28 = *(a1 + 16);
  swift_beginAccess();
  v29 = *(a2 + 16);

  a3(v28, v29, 0);
}

void sub_1D8EA6698(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

void sub_1D8EA66F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t), uint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1D8EA678C(a6, a7, a4, a5);
  }

  else
  {
    a4(0, 259);
  }
}

uint64_t sub_1D8EA678C(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 adamID];
  if (v17)
  {
    v18 = v17;
    v86 = [v17 integerValue];

    v19 = [a1 keyData];
    if (v19)
    {
      v84 = v12;
      v20 = v19;
      v85 = sub_1D9176C8C();
      v22 = v21;

      v23 = [a1 renewalDate];
      if (v23)
      {
        v83 = a4;
        v24 = v23;
        sub_1D9176DFC();

        v25 = [a1 accountDSID];
        if (v25)
        {
          v26 = v25;
          v81 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage);
          v82 = a3;
          v27 = [a1 identifier];
          if (!v27)
          {
            sub_1D917820C();
            v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          v79 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
          v80 = v22;
          v78 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
          v28 = [v26 longLongValue];
          v76 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
          v77 = v28;
          v29 = swift_allocObject();
          v29[2] = a2;
          v29[3] = a1;
          v30 = v86;
          v31 = v82;
          v32 = v83;
          v29[4] = v86;
          v29[5] = v31;
          v29[6] = v32;
          v29[7] = ObjectType;
          aBlock[4] = sub_1D8EA977C;
          aBlock[5] = v29;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D8EA7470;
          aBlock[3] = &block_descriptor_72;
          v33 = _Block_copy(aBlock);
          v34 = a2;
          v35 = a1;

          v36 = v30;
          v38 = v78;
          v37 = v79;
          [v81 saveKeyDataWithKeyIdentifier:v27 storeTrackID:v36 keyData:v79 renewalDate:v78 dsid:v77 responseQueue:v76 completion:v33];
          sub_1D8D7567C(v85, v80);
          _Block_release(v33);
        }

        else
        {
          v68 = v22;
          if (qword_1EDCD0F60 != -1)
          {
            swift_once();
          }

          v69 = sub_1D917744C();
          __swift_project_value_buffer(v69, qword_1EDCD0F68);
          v70 = sub_1D917741C();
          v71 = sub_1D9178CFC();
          if (os_log_type_enabled(v70, v71))
          {
            v72 = a3;
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            aBlock[0] = v74;
            *v73 = 136315651;
            *(v73 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
            *(v73 + 12) = 2160;
            *(v73 + 14) = 1752392040;
            *(v73 + 22) = 2049;
            *(v73 + 24) = v86;
            _os_log_impl(&dword_1D8CEC000, v70, v71, "%s Unable to rollback %{private,mask.hash}ld, no DSID found.", v73, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v74);
            MEMORY[0x1DA72CB90](v74, -1, -1);
            v75 = v73;
            a3 = v72;
            MEMORY[0x1DA72CB90](v75, -1, -1);
          }

          a3(1, 259);
          sub_1D8D7567C(v85, v68);
        }

        return (*(v84 + 8))(v16, v11);
      }

      else
      {
        v59 = v22;
        if (qword_1EDCD0F60 != -1)
        {
          swift_once();
        }

        v60 = sub_1D917744C();
        __swift_project_value_buffer(v60, qword_1EDCD0F68);
        v61 = sub_1D917741C();
        v62 = sub_1D9178CFC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = a3;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          aBlock[0] = v65;
          *v64 = 136315651;
          *(v64 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
          *(v64 + 12) = 2160;
          *(v64 + 14) = 1752392040;
          *(v64 + 22) = 2049;
          *(v64 + 24) = v86;
          _os_log_impl(&dword_1D8CEC000, v61, v62, "%s Unable to rollback %{private,mask.hash}ld, no renewal date found.", v64, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v65);
          MEMORY[0x1DA72CB90](v65, -1, -1);
          v66 = v64;
          a3 = v63;
          MEMORY[0x1DA72CB90](v66, -1, -1);
        }

        a3(5, 259);
        v67 = v85;

        return sub_1D8D7567C(v67, v59);
      }
    }

    else
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v52 = sub_1D917744C();
      __swift_project_value_buffer(v52, qword_1EDCD0F68);
      v53 = sub_1D917741C();
      v54 = sub_1D9178CFC();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = a3;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        aBlock[0] = v57;
        *v56 = 136315651;
        *(v56 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v56 + 12) = 2160;
        *(v56 + 14) = 1752392040;
        *(v56 + 22) = 2049;
        *(v56 + 24) = v86;
        _os_log_impl(&dword_1D8CEC000, v53, v54, "%s Unable to rollback %{private,mask.hash}ld, no key data found.", v56, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x1DA72CB90](v57, -1, -1);
        v58 = v56;
        a3 = v55;
        MEMORY[0x1DA72CB90](v58, -1, -1);
      }

      return (a3)(3, 259);
    }
  }

  else
  {
    v39 = a3;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v40 = sub_1D917744C();
    __swift_project_value_buffer(v40, qword_1EDCD0F68);
    v41 = a1;
    v42 = sub_1D917741C();
    v43 = sub_1D9178CFC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock[0] = v45;
      *v44 = 136315651;
      *(v44 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2081;
      v46 = [v41 identifier];
      v47 = sub_1D917820C();
      v49 = v48;

      v50 = sub_1D8CFA924(v47, v49, aBlock);

      *(v44 + 24) = v50;
      _os_log_impl(&dword_1D8CEC000, v42, v43, "%s Unable to rollback %{private,mask.hash}s, no adam ID found.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v45, -1, -1);
      MEMORY[0x1DA72CB90](v44, -1, -1);
    }

    return v39(2, 259);
  }
}

void sub_1D8EA70B8(char a1, void *a2, id a3, uint64_t a4, void (*a5)(void, uint64_t))
{
  if (a1)
  {
    v8 = [a3 identifier];
    if (!v8)
    {
      sub_1D917820C();
      v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    }

    v9 = [a2 removeKeyForIdentifier_];

    if (v9)
    {
      v10 = qword_1EDCD0F60;
      v11 = v9;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = sub_1D917744C();
      __swift_project_value_buffer(v12, qword_1EDCD0F68);
      v13 = v11;
      v14 = sub_1D917741C();
      v15 = sub_1D9178CFC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v26[0] = v17;
        *v16 = 136315907;
        *(v16 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v26);
        *(v16 + 12) = 2160;
        *(v16 + 14) = 1752392040;
        *(v16 + 22) = 2049;
        *(v16 + 24) = a4;
        *(v16 + 32) = 2082;
        swift_getErrorValue();
        v18 = sub_1D9179D2C();
        v20 = sub_1D8CFA924(v18, v19, v26);

        *(v16 + 34) = v20;
        _os_log_impl(&dword_1D8CEC000, v14, v15, "%s Unable to remove key from key store for %{private,mask.hash}ld with error %{public}s.", v16, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v17, -1, -1);
        MEMORY[0x1DA72CB90](v16, -1, -1);
      }

      else
      {
      }
    }

    a5(0, 0);
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD0F68);
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v24 = 136315651;
      *(v24 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v26);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2049;
      *(v24 + 24) = a4;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "%s Unable to rollback %{private,mask.hash}ld, could not save in the database.", v24, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    a5(0, 257);
  }
}

uint64_t sub_1D8EA7470(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1D8EA74C4(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v29 = sub_1D9177E0C();
  v5 = *(v29 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9177E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v15 = Strong;
  v25 = a2;
  v26 = a3;
  v16 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v17 = sub_1D917907C();
  v27 = v16;
  v28 = v9;
  v18 = v17;
  v24[2] = *&v15[OBJC_IVAR___PFFairPlayMigrationController_internalQueue];
  v19 = swift_allocObject();
  v20 = v26;
  v19[2] = v25;
  v19[3] = v20;
  v19[4] = v18;
  aBlock[4] = sub_1D8EA98A0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_97;
  v21 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  v26 = v15;
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v22 = v29;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v8, v21);
  _Block_release(v21);

  (*(v5 + 8))(v8, v22);
  (*(v10 + 8))(v13, v28);
}

id FairPlayMigrationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

PodcastsFoundation::FairPlayVersion_optional __swiftcall FairPlayVersion.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EA7CA8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 12918;
  }

  else
  {
    v2 = 12662;
  }

  if (*a2)
  {
    v3 = 12918;
  }

  else
  {
    v3 = 12662;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9179ACC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_1D8EA7D1C()
{
  result = qword_1ECAB5658;
  if (!qword_1ECAB5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5658);
  }

  return result;
}

uint64_t sub_1D8EA7D70()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8EA7DD0()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8EA7E14()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8EA7E70@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8EA7ED0(uint64_t *a1@<X8>)
{
  v2 = 12662;
  if (*v1)
  {
    v2 = 12918;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_1D8EA7F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7[3] = a5;
  v7[4] = a6;
  v7[2] = a4;
  v8 = *a7;
  v9 = swift_task_alloc();
  v7[5] = v9;
  *v9 = v7;
  v9[1] = sub_1D8E92DA0;

  return sub_1D8E8D6C4();
}

id sub_1D8EA7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v29 = a1;
  v30 = a2;
  v28 = sub_1D9178E0C();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178D8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1D9177E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = type metadata accessor for FairPlayMigrationController();
  v12 = objc_allocWithZone(v31);
  v27 = OBJC_IVAR___PFFairPlayMigrationController_internalQueue;
  v13 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v26[1] = "legacyDownloadRenewalManager";
  v26[2] = v13;
  sub_1D9177E4C();
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v28);
  v14 = sub_1D9178E4C();
  v15 = v27;
  *&v12[v27] = v14;
  *&v12[OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage] = v29;
  v16 = type metadata accessor for DispatchingFairPlayInvalidationManaging();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = v30;
  *&v17[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = v14;
  v37.receiver = v17;
  v37.super_class = v16;
  v18 = v14;
  *&v12[OBJC_IVAR___PFFairPlayMigrationController_invalidationManager] = objc_msgSendSuper2(&v37, sel_init);
  v19 = *&v12[v15];
  v36[3] = type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v36[4] = &off_1F54681B0;
  v36[0] = v32;
  v20 = type metadata accessor for DispatchingFairPlayEpisodeDataFetching();
  v21 = objc_allocWithZone(v20);
  sub_1D8CFD9D8(v36, &v21[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance]);
  *&v21[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue] = v19;
  v35.receiver = v21;
  v35.super_class = v20;
  v22 = v19;

  v23 = objc_msgSendSuper2(&v35, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);

  v24 = &v12[OBJC_IVAR___PFFairPlayMigrationController_fairPlayEpisodeDataFetcher];
  *(v24 + 3) = v20;
  *(v24 + 4) = &off_1F5467218;
  *v24 = v23;
  *&v12[OBJC_IVAR___PFFairPlayMigrationController_legacyDownloadRenewalManager] = v33;
  v34.receiver = v12;
  v34.super_class = v31;
  return objc_msgSendSuper2(&v34, sel_init);
}

void sub_1D8EA83C0(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v151 = &v146 - v14;
  v153 = sub_1D9176C2C();
  v152 = *(v153 - 8);
  v15 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v150 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v155 = &v146 - v19;
  v159 = sub_1D9176E3C();
  v161 = *(v159 - 8);
  v20 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v154 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v146 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v146 - v25;
  v27 = sub_1D9177F1C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = a5;
  v32[5] = a6;
  v164 = v32;
  v158 = a2;
  v33 = *(a2 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v31 = v33;
  (*(v28 + 104))(v31, *MEMORY[0x1E69E8020], v27);
  v160 = a3;

  v163 = a4;

  v34 = a6;
  v35 = v33;
  v36 = sub_1D9177F4C();
  (*(v28 + 8))(v31, v27);
  if ((v36 & 1) == 0)
  {
    __break(1u);
    goto LABEL_60;
  }

  v162 = v34;
  v168 = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = &v168;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1D8EA96B8;
  *(v36 + 24) = v37;
  aBlock[4] = sub_1D8EA96F4;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8EA6698;
  aBlock[3] = &block_descriptor_52;
  v38 = _Block_copy(aBlock);

  [a1 enumerateKeyEntriesUsingBlock_];
  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v168)
  {
    v39 = v168;
    v40 = [v39 adamID];
    if (!v40)
    {
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v71 = sub_1D917744C();
      __swift_project_value_buffer(v71, qword_1EDCD0F68);
      v72 = v39;
      v73 = sub_1D917741C();
      v74 = sub_1D9178CFC();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        aBlock[0] = v161;
        *v75 = 136315651;
        *(v75 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
        *(v75 + 12) = 2160;
        *(v75 + 14) = 1752392040;
        *(v75 + 22) = 2081;
        v76 = [v72 identifier];
        v77 = sub_1D917820C();
        v79 = v78;

        v80 = sub_1D8CFA924(v77, v79, aBlock);

        *(v75 + 24) = v80;
        _os_log_impl(&dword_1D8CEC000, v73, v74, "%s Unable to rollback %{private,mask.hash}s, no adam ID found.", v75, 0x20u);
        v81 = v161;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v81, -1, -1);
        MEMORY[0x1DA72CB90](v75, -1, -1);
      }

      v82 = *&v163[OBJC_IVAR___PFFairPlayAsset_adamID];
      swift_beginAccess();
      v83 = a5[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a5[2] = v83;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = sub_1D8ECC9FC(0, *(v83 + 2) + 1, 1, v83);
        a5[2] = v83;
      }

      v86 = *(v83 + 2);
      v85 = *(v83 + 3);
      if (v86 >= v85 >> 1)
      {
        v83 = sub_1D8ECC9FC((v85 > 1), v86 + 1, 1, v83);
      }

      *(v83 + 2) = v86 + 1;
      *&v83[8 * v86 + 32] = v82;
      a5[2] = v83;
      dispatch_group_leave(v162);

      goto LABEL_57;
    }

    v149 = a1;
    a3 = v37;
    v41 = v40;
    v42 = [v40 longLongValue];

    v43 = v158;
    a5 = *(v158 + OBJC_IVAR___PFFairPlayMigrationController_secureKeyRequestStorage);
    v157 = v39;
    v44 = [v39 identifier];
    v45 = sub_1D917820C();
    v47 = v46;

    v147 = v42;
    aBlock[0] = v42;
    v48 = sub_1D9179A4C();
    v50 = v49;
    v36 = type metadata accessor for ContentKeyRequest(0);
    v51 = objc_allocWithZone(v36);
    *&v51[OBJC_IVAR___MTContentKeyRequest_requestData] = xmmword_1D9190380;
    v52 = &v51[OBJC_IVAR___MTContentKeyRequest_keyIdentifier];
    *v52 = v45;
    v52[1] = v47;
    v53 = &v51[OBJC_IVAR___MTContentKeyRequest_adamId];
    *v53 = v48;
    v53[1] = v50;
    *&v51[OBJC_IVAR___MTContentKeyRequest_requestType] = 0;
    v51[OBJC_IVAR___MTContentKeyRequest_offlineRequest] = 1;
    *&v51[OBJC_IVAR___MTContentKeyRequest_secureInvalidationDsid] = 0;
    v54 = qword_1ECAB8BC0 + 1;
    if (!__OFADD__(qword_1ECAB8BC0, 1))
    {
      v55 = v51;
      ++qword_1ECAB8BC0;
      *&v51[OBJC_IVAR___MTContentKeyRequest_requestID] = v54;
      sub_1D9176E2C();
      v56 = *(v161 + 32);
      v56(&v55[OBJC_IVAR___MTContentKeyRequest_requestDate], v26, v159);
      v166.receiver = v55;
      v166.super_class = v36;
      v57 = objc_msgSendSuper2(&v166, sel_init);
      v58 = [a5 retrieveKeyDataFor_];

      if (!v58)
      {
        v87 = v157;
        sub_1D8EA678C(v157, v149, sub_1D8EA96A0, v164);

LABEL_57:
        goto LABEL_58;
      }

      v148 = v58;
      v59 = &v58[OBJC_IVAR___MTContentKeyResponse_keyData];
      swift_beginAccess();
      v61 = *v59;
      v60 = v59[1];
      sub_1D8DA04B0(v61, v60);
      v62 = [v157 keyData];
      v63 = v164;
      if (v62)
      {
        v64 = v62;
        v65 = sub_1D9176C8C();
        v67 = v66;

        if (v60 >> 60 == 15)
        {
          if (v67 >> 60 != 15)
          {
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        if (v67 >> 60 != 15)
        {
          sub_1D8DA04B0(v61, v60);
          sub_1D8DA04B0(v65, v67);
          v96 = sub_1D8FCC138(v61, v60, v65, v67);
          sub_1D8D75668(v65, v67);
          sub_1D8D75668(v65, v67);
          sub_1D8D75668(v61, v60);
          sub_1D8D75668(v61, v60);
          if ((v96 & 1) == 0)
          {
LABEL_39:
            v97 = v157;
            v98 = [v157 renewalDate];
            if (v98)
            {
              v99 = v156;
              v100 = v98;
              sub_1D9176DFC();

              v101 = v148;
              v102 = v155;
              sub_1D8D088B4(v148 + OBJC_IVAR___MTContentKeyResponse_renewalDate, v155, &qword_1ECAB75C0, &unk_1D9188A50);
              v103 = v161;
              v104 = v159;
              if ((*(v161 + 48))(v102, 1, v159) == 1)
              {
                (*(v103 + 8))(v99, v104);

                sub_1D8D08A50(v102, &qword_1ECAB75C0, &unk_1D9188A50);
              }

              else
              {
                v105 = v154;
                v56(v154, v102, v104);
                v106 = v105;
                if (sub_1D9176D9C())
                {
                  v107 = [v149 filePath];
                  sub_1D917820C();

                  v108 = v151;
                  sub_1D9176BFC();

                  v109 = v152;
                  v110 = v153;
                  if ((*(v152 + 48))(v108, 1, v153) == 1)
                  {
                    sub_1D8D08A50(v108, &unk_1ECAB5910, &qword_1D9188C90);
                    if (qword_1EDCD0F60 != -1)
                    {
                      swift_once();
                    }

                    v111 = sub_1D917744C();
                    __swift_project_value_buffer(v111, qword_1EDCD0F68);
                    v112 = v149;
                    v113 = sub_1D917741C();
                    v114 = sub_1D9178CFC();

                    if (os_log_type_enabled(v113, v114))
                    {
                      v115 = swift_slowAlloc();
                      v116 = swift_slowAlloc();
                      v165[0] = v116;
                      *v115 = 136315651;
                      *(v115 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, v165);
                      *(v115 + 12) = 2160;
                      *(v115 + 14) = 1752392040;
                      *(v115 + 22) = 2081;
                      v117 = [v112 filePath];
                      v118 = sub_1D917820C();
                      v120 = v119;

                      v121 = sub_1D8CFA924(v118, v120, v165);
                      v104 = v159;

                      *(v115 + 24) = v121;
                      _os_log_impl(&dword_1D8CEC000, v113, v114, "%s Unable to invalidate key, invalid key store path %{private,mask.hash}s.", v115, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x1DA72CB90](v116, -1, -1);
                      MEMORY[0x1DA72CB90](v115, -1, -1);
                    }

                    v122 = v163;
                    v106 = v154;
                  }

                  else
                  {
                    v130 = v150;
                    (*(v109 + 32))(v150, v108, v110);
                    v131 = *(v43 + OBJC_IVAR___PFFairPlayMigrationController_invalidationManager);
                    v132 = sub_1D9176B1C();
                    [v131 markKeyForInvalidationAt:v132 shouldRemove:1];

                    (*(v109 + 8))(v130, v110);
                    v122 = v163;
                  }

                  v133 = v157;
                  v134 = *&v122[OBJC_IVAR___PFFairPlayAsset_adamID];
                  v135 = v160;
                  swift_beginAccess();
                  v136 = *(v135 + 16);
                  v137 = swift_isUniquelyReferenced_nonNull_native();
                  *(v135 + 16) = v136;
                  if ((v137 & 1) == 0)
                  {
                    v136 = sub_1D8ECC9FC(0, *(v136 + 2) + 1, 1, v136);
                    *(v160 + 16) = v136;
                  }

                  v139 = *(v136 + 2);
                  v138 = *(v136 + 3);
                  if (v139 >= v138 >> 1)
                  {
                    v136 = sub_1D8ECC9FC((v138 > 1), v139 + 1, 1, v136);
                  }

                  *(v136 + 2) = v139 + 1;
                  *&v136[8 * v139 + 32] = v134;
                  *(v160 + 16) = v136;
                  dispatch_group_leave(v162);

                  v140 = *(v161 + 8);
                  v140(v106, v104);
                  v140(v156, v104);
                }

                else
                {
                  v123 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v124 = swift_allocObject();
                  v124[2] = v123;
                  v124[3] = sub_1D8EA96A0;
                  v125 = v157;
                  v124[4] = v63;
                  v124[5] = v125;
                  v126 = v149;
                  v124[6] = v149;
                  v127 = v125;
                  v128 = v126;

                  sub_1D8EA49BC(v147, sub_1D8EA971C, v124);

                  v129 = *(v161 + 8);
                  v129(v106, v104);
                  v129(v99, v104);
                }
              }
            }

            else
            {
            }

            goto LABEL_57;
          }

LABEL_27:
          v88 = v157;
          v89 = [v157 identifier];
          if (!v89)
          {
            sub_1D917820C();
            v89 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
          }

          v90 = *&v163[OBJC_IVAR___PFFairPlayAsset_adamID];
          v91 = v160;
          swift_beginAccess();
          v92 = *(v91 + 16);
          v93 = swift_isUniquelyReferenced_nonNull_native();
          *(v91 + 16) = v92;
          if ((v93 & 1) == 0)
          {
            v92 = sub_1D8ECC9FC(0, *(v92 + 2) + 1, 1, v92);
            *(v91 + 16) = v92;
          }

          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            v92 = sub_1D8ECC9FC((v94 > 1), v95 + 1, 1, v92);
          }

          *(v92 + 2) = v95 + 1;
          *&v92[8 * v95 + 32] = v90;
          *(v91 + 16) = v92;
          dispatch_group_leave(v162);

          goto LABEL_57;
        }
      }

      else
      {
        if (v60 >> 60 == 15)
        {
LABEL_26:
          sub_1D8D75668(v61, v60);
          goto LABEL_27;
        }

        v65 = 0;
        v67 = 0xF000000000000000;
      }

LABEL_38:
      sub_1D8D75668(v61, v60);
      sub_1D8D75668(v65, v67);
      goto LABEL_39;
    }

    goto LABEL_61;
  }

  a5 = *&v163[OBJC_IVAR___PFFairPlayAsset_adamID];
  a3 = v160;
  swift_beginAccess();
  v36 = *(a3 + 16);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v36;
  if ((v68 & 1) == 0)
  {
LABEL_62:
    v36 = sub_1D8ECC9FC(0, *(v36 + 16) + 1, 1, v36);
    *(a3 + 16) = v36;
  }

  v70 = *(v36 + 16);
  v69 = *(v36 + 24);
  if (v70 >= v69 >> 1)
  {
    v36 = sub_1D8ECC9FC((v69 > 1), v70 + 1, 1, v36);
  }

  *(v36 + 16) = v70 + 1;
  *(v36 + 8 * v70 + 32) = a5;
  *(a3 + 16) = v36;
  dispatch_group_leave(v162);

LABEL_58:
  v141 = objc_opt_self();
  v142 = [v141 _applePodcastsFoundationSharedUserDefaults];
  v143 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v144 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v142 setValue:v143 forKey:v144];

  v145 = [v141 _applePodcastsFoundationSharedUserDefaults];
  [v145 setFairPlayMigrationRetryCount_];
}

void sub_1D8EA96B8(void *a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *v4;
  *v4 = a1;
  v6 = a1;

  *a2 = 1;
}

uint64_t sub_1D8EA96F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1D8EA9744()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0, 0);
}

void sub_1D8EA977C(char a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  sub_1D8EA70B8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
}

id sub_1D8EA978C(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1D8EA97A0(void *a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {

    sub_1D8EA97FC(a1, a2);
  }

  else
  {
  }
}

void sub_1D8EA97FC(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

unint64_t sub_1D8EA9810()
{
  result = qword_1ECAB5680;
  if (!qword_1ECAB5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5680);
  }

  return result;
}

uint64_t sub_1D8EA9864()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return sub_1D8EA74C4(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

uint64_t sub_1D8EA9874()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(1);
}

void sub_1D8EA993C(uint64_t a1)
{
  v3 = *(type metadata accessor for FairPlayMigrationData(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EA1C7C(a1, v5, v6, v7, v8, (v1 + v4), v9);
}

uint64_t objectdestroy_36Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1D8EA9A5C(void *a1, uint64_t a2, char a3)
{
  v7 = *(type metadata accessor for FairPlayMigrationData(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1D9176C2C() - 8);
  v12 = (v10 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D9176E3C() - 8);
  return sub_1D8EA454C(a1, a2, a3 & 1, *(v3 + 16), *(v3 + 24), (v3 + v8), *(v3 + v9), *(v3 + v10), *(v3 + v10 + 8), v3 + v12, v3 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)));
}

uint64_t sub_1D8EA9BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8EA7F18(a1, v4, v5, v6, v7, v8, v1 + 7);
}

id sub_1D8EA9CCC(void *a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1D8EA978C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1D8EA9CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8EA9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D8EA9DAC(void *a1, __int16 a2)
{
  v5 = *(type metadata accessor for FairPlayMigrationData.ValidatedData(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + 16);
  v11 = *(v2 + v8);
  v12 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EA21C0(a1, a2 & 0x1FF, v10, (v2 + v6), v9, v11);
}

uint64_t sub_1D8EA9E7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8EA9EDC(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    sub_1D8EA97FC(a1, a2);
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22FairPlayMigrationErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D8EA9F18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8EA9F60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8EA9FA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

id FairPlayRolloutController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static FairPlayRolloutController.shared.getter()
{
  if (qword_1EDCD2AD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD2AE0;

  return v1;
}

id FairPlayRolloutController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id FairPlayRolloutController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8EAA118(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t FairPlayService.removeKey(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D8EAA154, 0, 0);
}

uint64_t sub_1D8EAA154()
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1EDCD0F68);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "[FairPlayService]: Begin removing key for adamID=%llu.", v5, 0xCu);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v7 = v0[2];
  v6 = v0[3];

  v8 = sub_1D8EAA4C8();
  v0[4] = v8;
  v9 = swift_task_alloc();
  v0[5] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_1D8EAA320;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v11, 0, 0, 0x654B65766F6D6572, 0xEF293A726F662879, sub_1D8EAAC88, v9, v12);
}

uint64_t sub_1D8EAA320()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1D8EAA45C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1D8EAA444;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D8EAA45C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

id sub_1D8EAA4C8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for FairPlayInvalidationManager()) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1D8EAA534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - v9;
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 16))(v10, a1, v5, v8);
    v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    (*(v6 + 32))(v12 + v11, v10, v5);
    FairPlayInvalidationManager.removeKey(for:completion:)(a3, sub_1D8EAAE24, v12);
  }
}

uint64_t sub_1D8EAA690(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = sub_1D917886C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a3, v6);
  sub_1D91787EC();
  v16 = a1;
  v17 = sub_1D91787DC();
  v18 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 2) = v17;
  *(v19 + 3) = v20;
  *(v19 + 4) = a1;
  *(v19 + 5) = a2;
  (*(v7 + 32))(&v19[v18], v10, v6);
  sub_1D8E91268(0, 0, v14, &unk_1D91906C0, v19);
}

uint64_t sub_1D8EAA8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1D91787EC();
  v6[6] = sub_1D91787DC();
  v8 = sub_1D917874C();

  return MEMORY[0x1EEE6DFA0](sub_1D8EAA940, v8, v7);
}

uint64_t sub_1D8EAA940()
{
  v1 = v0[6];
  v2 = v0[3];

  if (v2)
  {
    v3 = v0[3];
    v4 = v3;
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4];
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v8;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[FairPlayService]: Error removing key for adamID=%llu.", v9, 0xCu);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    v10 = v0[5];

    v0[2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917875C();
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v12 = sub_1D917741C();
    v13 = sub_1D9178D1C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[4];
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v14;
      _os_log_impl(&dword_1D8CEC000, v12, v13, "[FairPlayService]: Finished removing key for adamID=%llu.", v15, 0xCu);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    v16 = v0[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8);
    sub_1D917876C();
  }

  v17 = v0[1];

  return v17();
}

uint64_t FairPlayService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8EAABF0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return FairPlayService.removeKey(for:)(a1);
}

uint64_t sub_1D8EAAC90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of FairPlayServicing.removeKey(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D58924;

  return v11(a1, a2, a3);
}

uint64_t sub_1D8EAAE24(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8EAA690(a1, v4, v5);
}

uint64_t sub_1D8EAAEA4(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5698, &unk_1D91906A8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8EAA8A4(a1, v6, v7, v8, v9, v1 + v5);
}

id FairPlayValidationManager.__allocating_init(episodeRemovalManager:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  swift_getObjectType();
  v5 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v6 = swift_allocObject();
  v7 = sub_1D8D6DE00(v5, a1, v6, objc_allocWithZone(v2));

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v7;
}

id FairPlayValidationManager.init(episodeRemovalManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for FairPlayKeyLoader()) init];
  type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v4 = swift_allocObject();
  v5 = sub_1D8D6DE00(v3, a1, v4, objc_allocWithZone(ObjectType));

  swift_unknownObjectRelease();
  swift_deallocPartialClassInstance();
  return v5;
}

void sub_1D8EAB130(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4, void *a5, unint64_t a6)
{
  if (a2)
  {
    if (a3)
    {
      v8 = type metadata accessor for FairPlayValidationManager.Response();
      v9 = objc_allocWithZone(v8);
      v10 = MEMORY[0x1E69E7CC0];
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v10;
      *&v9[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v10;
      v49.receiver = v9;
      v49.super_class = v8;
      v11 = objc_msgSendSuper2(&v49, sel_init);
      a3(v11, a2);
    }
  }

  else
  {
    v13 = sub_1D8EAB4FC(a6, a1);
    v14 = v13;
    v15 = OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs;
    if (*(*&v13[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] + 16))
    {
      v16 = *&v13[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs];

      sub_1D8EABE48(v17);
    }

    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F68);
    v48 = v14;
    v19 = a5;
    v20 = sub_1D917741C();
    v21 = sub_1D9178D1C();

    if (os_log_type_enabled(v20, v21))
    {
      v46 = v15;
      v22 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v22 = 136316675;
      v45 = v21;
      v23 = sub_1D8D6FDF8();
      v25 = sub_1D8CFA924(v23, v24, &v50);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2160;
      *(v22 + 14) = 1752392040;
      *(v22 + 22) = 2081;
      v26 = *&v48[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs];

      v28 = MEMORY[0x1E69E7360];
      v29 = MEMORY[0x1DA729BD0](v27, MEMORY[0x1E69E7360]);
      v31 = v30;

      v32 = sub_1D8CFA924(v29, v31, &v50);

      *(v22 + 24) = v32;
      *(v22 + 32) = 2160;
      *(v22 + 34) = 1752392040;
      *(v22 + 42) = 2081;
      v33 = *&v14[v46];

      v35 = MEMORY[0x1DA729BD0](v34, v28);
      v37 = v36;

      v38 = sub_1D8CFA924(v35, v37, &v50);

      *(v22 + 44) = v38;
      *(v22 + 52) = 2160;
      *(v22 + 54) = 1752392040;
      *(v22 + 62) = 2081;
      v39 = *&v48[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs];

      v41 = MEMORY[0x1DA729BD0](v40, v28);
      v43 = v42;

      v44 = sub_1D8CFA924(v41, v43, &v50);

      *(v22 + 64) = v44;
      _os_log_impl(&dword_1D8CEC000, v20, v45, "%s Finished validating downloaded FairPlay episodes with errors for adamIds: %{private,mask.hash}s, episodes to be removed: %{private,mask.hash}s, successfully renewed %{private,mask.hash}s.", v22, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v47, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    if (a3)
    {
      a3(v48, 0);
    }
  }
}

char *sub_1D8EAB4FC(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16))
  {
    v3 = a2;
    if (a1 >> 62)
    {
LABEL_76:
      v4 = sub_1D917935C();
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v86[0] = MEMORY[0x1E69E7CC0];
      sub_1D8E3148C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v6 = v3;
      v7 = v86[0];
      if ((v2 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v4; ++i)
        {
          v9 = *(MEMORY[0x1DA72AA90](i, v2) + OBJC_IVAR___PFFairPlayAsset_adamID);
          swift_unknownObjectRelease();
          v86[0] = v7;
          v11 = *(v7 + 16);
          v10 = *(v7 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_1D8E3148C((v10 > 1), v11 + 1, 1);
            v7 = v86[0];
          }

          *(v7 + 16) = v11 + 1;
          *(v7 + 8 * v11 + 32) = v9;
        }
      }

      else
      {
        v20 = (v2 + 32);
        v21 = *(v86[0] + 16);
        do
        {
          v22 = *(*v20 + OBJC_IVAR___PFFairPlayAsset_adamID);
          v86[0] = v7;
          v23 = *(v7 + 24);
          if (v21 >= v23 >> 1)
          {
            sub_1D8E3148C((v23 > 1), v21 + 1, 1);
            v7 = v86[0];
          }

          *(v7 + 16) = v21 + 1;
          *(v7 + 8 * v21 + 32) = v22;
          ++v20;
          ++v21;
          --v4;
        }

        while (v4);
      }

      v3 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v24 = sub_1D8FC1078(v7);

    v25 = sub_1D8E99A00(v3);
    v26 = sub_1D8FC1078(v25);

    v76 = v26;
    if (*(v26 + 16) <= *(v24 + 16) >> 3)
    {
      v86[0] = v24;
      sub_1D910E5C4(v26);
      v75 = v86[0];
    }

    else
    {
      v75 = sub_1D90A4604(v26, v24);
    }

    v87 = v5;
    v2 = v3 + 64;
    v27 = 1 << *(v3 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v3 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    v78 = v3;
    v79 = v3 + 64;
    v82 = v30;
LABEL_34:
    v77 = v5;
    v32 = v31;
    if (!v29)
    {
      goto LABEL_36;
    }

    do
    {
      v31 = v32;
LABEL_39:
      v33 = (v31 << 9) | (8 * __clz(__rbit64(v29)));
      v34 = *(*(v3 + 56) + v33);
      v35 = *(*(v3 + 48) + v33);
      v36 = v34;
      if (qword_1EDCD0F60 != -1)
      {
        swift_once();
      }

      v37 = sub_1D917744C();
      __swift_project_value_buffer(v37, qword_1EDCD0F68);
      v38 = v35;
      v39 = v34;
      v40 = v83;
      v41 = sub_1D917741C();
      v42 = sub_1D9178CFC();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v86[0] = v81;
        *v43 = 136316163;
        v44 = sub_1D8D6FDF8();
        v46 = sub_1D8CFA924(v44, v45, v86);

        *(v43 + 4) = v46;
        *(v43 + 12) = 2160;
        *(v43 + 14) = 1752392040;
        *(v43 + 22) = 2113;
        *(v43 + 24) = v38;
        *v80 = v38;
        *(v43 + 32) = 2160;
        *(v43 + 34) = 1752392040;
        *(v43 + 42) = 2081;
        swift_getErrorValue();
        v47 = v38;
        v2 = v79;
        v48 = sub_1D9179D2C();
        v50 = sub_1D8CFA924(v48, v49, v86);

        *(v43 + 44) = v50;
        _os_log_impl(&dword_1D8CEC000, v41, v42, "%s Unable to renew key for asset: %{private,mask.hash}@, with error: %{private,mask.hash}s.", v43, 0x34u);
        sub_1D8D08A50(v80, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v80, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v81, -1, -1);
        v51 = v43;
        v3 = v78;
        MEMORY[0x1DA72CB90](v51, -1, -1);
      }

      v29 &= v29 - 1;
      swift_getErrorValue();
      if (sub_1D8EACF38(v86[10]))
      {
        v52 = v38;
        MEMORY[0x1DA729B90]();
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v53 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
          v2 = v79;
        }

        sub_1D917869C();

        v5 = v87;
        v30 = v82;
        goto LABEL_34;
      }

      v32 = v31;
      v30 = v82;
    }

    while (v29);
    while (1)
    {
LABEL_36:
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v31 >= v30)
      {
        break;
      }

      v29 = *(v2 + 8 * v31);
      ++v32;
      if (v29)
      {
        goto LABEL_39;
      }
    }

    v54 = *(v75 + 16);
    if (!v54)
    {
      goto LABEL_55;
    }

    v55 = sub_1D8DB8004(*(v75 + 16), 0);
    v56 = sub_1D8D1B614(v86, v55 + 4, v54, v75);
    sub_1D8D1B144();
    v57 = v56 == v54;
    v2 = v76;
    if (!v57)
    {
      goto LABEL_81;
    }

    v58 = *(v76 + 16);
    if (v58)
    {
      while (1)
      {
        v59 = sub_1D8DB8004(v58, 0);
        v2 = sub_1D8D1B614(v86, v59 + 4, v58, v2);
        sub_1D8D1B144();
        if (v2 == v58)
        {
          break;
        }

        __break(1u);
LABEL_55:

        v55 = MEMORY[0x1E69E7CC0];
        v2 = v76;
        v58 = *(v76 + 16);
        if (!v58)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
LABEL_56:

      v59 = MEMORY[0x1E69E7CC0];
    }

    if (v77 >> 62)
    {
      v60 = sub_1D917935C();
      if (v60)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v60 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
LABEL_59:
        v86[0] = MEMORY[0x1E69E7CC0];
        sub_1D8E3148C(0, v60 & ~(v60 >> 63), 0);
        if (v60 < 0)
        {
          goto LABEL_82;
        }

        v61 = 0;
        v62 = v86[0];
        v63 = v77;
        do
        {
          if ((v77 & 0xC000000000000001) != 0)
          {
            v64 = *(MEMORY[0x1DA72AA90](v61, v63) + OBJC_IVAR___PFFairPlayAsset_adamID);
            swift_unknownObjectRelease();
          }

          else
          {
            v64 = *(*(v63 + 8 * v61 + 32) + OBJC_IVAR___PFFairPlayAsset_adamID);
          }

          v86[0] = v62;
          v66 = *(v62 + 16);
          v65 = *(v62 + 24);
          if (v66 >= v65 >> 1)
          {
            sub_1D8E3148C((v65 > 1), v66 + 1, 1);
            v63 = v77;
            v62 = v86[0];
          }

          ++v61;
          *(v62 + 16) = v66 + 1;
          *(v62 + 8 * v66 + 32) = v64;
        }

        while (v60 != v61);

        goto LABEL_79;
      }
    }

    v62 = MEMORY[0x1E69E7CC0];
LABEL_79:
    v73 = type metadata accessor for FairPlayValidationManager.Response();
    v74 = objc_allocWithZone(v73);
    *&v74[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = v55;
    *&v74[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v59;
    *&v74[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v62;
    v85.receiver = v74;
    v85.super_class = v73;
    return objc_msgSendSuper2(&v85, sel_init);
  }

  if (a1 >> 62)
  {
LABEL_83:
    v12 = sub_1D917935C();
    goto LABEL_14;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v67 = type metadata accessor for FairPlayValidationManager.Response();
    v68 = objc_allocWithZone(v67);
    *&v68[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = v15;
    *&v68[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v13;
    *&v68[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v13;
    v84.receiver = v68;
    v84.super_class = v67;
    return objc_msgSendSuper2(&v84, sel_init);
  }

  v86[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D8E3148C(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = v86[0];
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v12; ++j)
      {
        v17 = *(MEMORY[0x1DA72AA90](j, v2) + OBJC_IVAR___PFFairPlayAsset_adamID);
        swift_unknownObjectRelease();
        v86[0] = v15;
        v19 = *(v15 + 16);
        v18 = *(v15 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D8E3148C((v18 > 1), v19 + 1, 1);
          v15 = v86[0];
        }

        *(v15 + 16) = v19 + 1;
        *(v15 + 8 * v19 + 32) = v17;
      }
    }

    else
    {
      v69 = (v2 + 32);
      v70 = *(v86[0] + 16);
      do
      {
        v71 = *(*v69 + OBJC_IVAR___PFFairPlayAsset_adamID);
        v86[0] = v15;
        v72 = *(v15 + 24);
        if (v70 >= v72 >> 1)
        {
          sub_1D8E3148C((v72 > 1), v70 + 1, 1);
          v15 = v86[0];
        }

        *(v15 + 16) = v70 + 1;
        *(v15 + 8 * v70 + 32) = v71;
        ++v69;
        ++v70;
        --v12;
      }

      while (v12);
    }

    goto LABEL_69;
  }

  __break(1u);
  return result;
}

void sub_1D8EABE48(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1D9177F4C();
  (*(v4 + 8))(v8, v3);
  if (v9)
  {
    if (qword_1EDCD0F60 == -1)
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
  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0F68);
  v12 = v1;

  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v15 = 136315651;
    v16 = sub_1D8D6FDF8();
    v18 = sub_1D8CFA924(v16, v17, &v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2160;
    *(v15 + 14) = 1752392040;
    *(v15 + 22) = 2081;
    v19 = *(a1 + 16);
    v20 = MEMORY[0x1E69E7CC0];
    if (v19)
    {
      v37 = v14;
      v38 = v15;
      v39 = v13;
      v40 = v12;
      v44 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v19, 0);
      v20 = v44;
      v41 = a1;
      v21 = (a1 + 32);
      do
      {
        v22 = *v21++;
        v43 = v22;
        v23 = sub_1D9179A4C();
        v25 = v24;
        v44 = v20;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1D8D41BE0((v26 > 1), v27 + 1, 1);
          v20 = v44;
        }

        *(v20 + 16) = v27 + 1;
        v28 = v20 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        --v19;
      }

      while (v19);
      v12 = v40;
      v15 = v38;
      v13 = v39;
      LOBYTE(v14) = v37;
    }

    v44 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v29 = sub_1D917817C();
    v31 = v30;

    v32 = sub_1D8CFA924(v29, v31, &v45);

    *(v15 + 24) = v32;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "%s Attempting to remove episodes with adamIDs: %{private,mask.hash}s.", v15, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v33, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v34 = *&v12[OBJC_IVAR___PFFairPlayValidationManager_episodeRemovalManager];
  if (v34)
  {
    v35 = sub_1D91785DC();
    [v34 removeEpisodesWith_];
  }
}

void sub_1D8EAC264(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v3[OBJC_IVAR___PFFairPlayValidationManager_internalQueue];
  *v12 = v13;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v14 = v13;
  LOBYTE(v13) = sub_1D9177F4C();
  (*(v8 + 8))(v12, v7);
  if (v13)
  {
    if (qword_1EDCD0F60 == -1)
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
  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCD0F68);
  v16 = v3;

  v17 = sub_1D917741C();
  v18 = sub_1D9178CDC();

  if (!os_log_type_enabled(v17, v18))
  {
LABEL_17:

    v42 = *&v16[OBJC_IVAR___PFFairPlayValidationManager_keyLoader];
    type metadata accessor for FairPlayAsset();
    v43 = sub_1D91785DC();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a2;
    v45[4] = a3;
    aBlock[4] = sub_1D8EAD9E8;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8E8C628;
    aBlock[3] = &block_descriptor_51;
    v46 = _Block_copy(aBlock);

    [v42 renewKeyRequestsWithAssets:v43 completion:v46];
    _Block_release(v46);

    return;
  }

  v53 = v18;
  v54 = v17;
  v19 = swift_slowAlloc();
  v51 = swift_slowAlloc();
  aBlock[0] = v51;
  *v19 = 136315651;
  v20 = sub_1D8D6FDF8();
  v22 = sub_1D8CFA924(v20, v21, aBlock);

  *(v19 + 4) = v22;
  *(v19 + 12) = 2160;
  *(v19 + 14) = 1752392040;
  v52 = v19;
  *(v19 + 22) = 2081;
  if (a1 >> 62)
  {
    v23 = sub_1D917935C();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (!v23)
  {
LABEL_16:
    v56 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v36 = sub_1D917817C();
    v38 = v37;

    v39 = sub_1D8CFA924(v36, v38, aBlock);

    v40 = v52;
    *(v52 + 24) = v39;
    v17 = v54;
    _os_log_impl(&dword_1D8CEC000, v54, v53, "%s Attempting to renew keys for episodes with adamIDs: %{private,mask.hash}s.", v40, 0x20u);
    v41 = v51;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v41, -1, -1);
    MEMORY[0x1DA72CB90](v40, -1, -1);
    goto LABEL_17;
  }

  v56 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v48 = v16;
    v49 = a2;
    v50 = a3;
    v25 = 0;
    v24 = v56;
    v26 = a1 & 0xC000000000000001;
    v27 = a1;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x1DA72AA90](v25, a1);
      }

      else
      {
        v28 = *(a1 + 8 * v25 + 32);
      }

      v29 = v28;
      v55 = *&v28[OBJC_IVAR___PFFairPlayAsset_adamID];
      v30 = sub_1D9179A4C();
      v32 = v31;

      v56 = v24;
      v34 = *(v24 + 16);
      v33 = *(v24 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D8D41BE0((v33 > 1), v34 + 1, 1);
        v24 = v56;
      }

      ++v25;
      *(v24 + 16) = v34 + 1;
      v35 = v24 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      a1 = v27;
    }

    while (v23 != v25);
    a2 = v49;
    a3 = v50;
    v16 = v48;
    goto LABEL_16;
  }

  __break(1u);
}

id FairPlayValidationManager.Response.__allocating_init(renewedAdamIDs:failedAdamIDs:removedAdamIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = a1;
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = a2;
  *&v7[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FairPlayValidationManager.Response.init(renewedAdamIDs:failedAdamIDs:removedAdamIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = a1;
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = a2;
  *&v3[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id FairPlayValidationManager.Response.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8EACA28(uint64_t a1, void *a2, uint64_t a3, void (*a4)(unint64_t, void *), uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D9177E9C();
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v28 = *(Strong + OBJC_IVAR___PFFairPlayValidationManager_internalQueue);
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a4;
    v20[4] = a5;
    v20[5] = a1;
    v20[6] = a2;
    aBlock[4] = sub_1D8EAD9F4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_57_0;
    v21 = _Block_copy(aBlock);
    v27 = v19;

    v22 = a2;
    sub_1D9177E4C();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v17, v13, v21);
    _Block_release(v21);
    (*(v10 + 8))(v13, v9);
    (*(v14 + 8))(v17, v29);
  }

  else
  {
    v24 = sub_1D8E26E10(MEMORY[0x1E69E7CC0]);
    sub_1D8EAD948();
    v25 = swift_allocError();
    a4(v24, v25);
  }
}

uint64_t sub_1D8EACDB0(void *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCD0F68);
  v10 = a1;
  v11 = sub_1D917741C();
  v12 = sub_1D9178CDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    v15 = sub_1D8D6FDF8();
    v17 = sub_1D8CFA924(v15, v16, &v19);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "%s Finished key renewal process.", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  return a2(a4, a5);
}

BOOL sub_1D8EACF38(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v7, a1, v4);
  v8 = sub_1D9179A7C();
  if (v8)
  {
    v9 = v8;
    (*(v2 + 8))(v6, a1);
  }

  else
  {
    v9 = swift_allocError();
    (*(v2 + 32))(v10, v6, a1);
  }

  v11 = sub_1D9176A5C();

  v12 = [v11 code];
  return v12 == -1002;
}

uint64_t sub_1D8EAD09C(unint64_t a1, uint64_t (*a2)(void, __n128), uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v60 = a2;
  v66 = a4;
  v61 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = sub_1D9177E0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_3;
    }

    return v60(MEMORY[0x1E69E7CC0], v21);
  }

  v24 = sub_1D917935C();
  if (!v24)
  {
    return v60(MEMORY[0x1E69E7CC0], v21);
  }

LABEL_3:
  v57 = v23;
  v58 = v19;
  v25 = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB56E8, &qword_1D9190758);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC0];
  if (v24 < 1)
  {
    __break(1u);
  }

  else
  {
    v27 = result;
    v53 = v17;
    v54 = v18;
    v55 = v14;
    v56 = v13;
    v28 = 0;
    v62 = a1 & 0xC000000000000001;
    v64 = v24;
    v65 = a1;
    do
    {
      if (v62)
      {
        v30 = MEMORY[0x1DA72AA90](v28, a1);
      }

      else
      {
        v30 = *(a1 + 8 * v28 + 32);
      }

      v31 = v30;
      dispatch_group_enter(v25);
      v32 = swift_allocObject();
      v32[2] = v25;
      v32[3] = v27;
      v32[4] = v31;

      v63 = v25;
      v33 = v31;
      sub_1D917881C();
      v34 = sub_1D917886C();
      v35 = *(v34 - 8);
      (*(v35 + 56))(v12, 0, 1, v34);
      v36 = swift_allocObject();
      v36[2] = 0;
      v36[3] = 0;
      v36[4] = v33;
      v37 = v66;
      v36[5] = v66;
      v36[6] = sub_1D8EAD9A8;
      v36[7] = v32;
      sub_1D8CF5C74(v12, v9);
      LODWORD(v32) = (*(v35 + 48))(v9, 1, v34);
      v38 = v37;

      if (v32 == 1)
      {
        sub_1D8D08A50(v9, &qword_1ECABB890, &qword_1D918B960);
      }

      else
      {
        sub_1D917885C();
        (*(v35 + 8))(v9, v34);
      }

      v39 = v36[2];
      v40 = v36[3];
      swift_unknownObjectRetain();

      if (v39)
      {
        swift_getObjectType();
        v41 = sub_1D917874C();
        v43 = v42;
        swift_unknownObjectRelease();
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      sub_1D8D08A50(v12, &qword_1ECABB890, &qword_1D918B960);
      v44 = swift_allocObject();
      *(v44 + 16) = &unk_1D918FD38;
      *(v44 + 24) = v36;
      if (v43 | v41)
      {
        aBlock[6] = 0;
        aBlock[7] = 0;
        aBlock[8] = v41;
        aBlock[9] = v43;
      }

      v29 = v64;
      a1 = v65;
      ++v28;
      swift_task_create();
    }

    while (v29 != v28);
    v45 = *(v59 + OBJC_IVAR___PFFairPlayValidationManager_internalQueue);
    v46 = swift_allocObject();
    v47 = v61;
    v46[2] = v60;
    v46[3] = v47;
    v46[4] = v27;
    aBlock[4] = sub_1D8EAD9B4;
    aBlock[5] = v46;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_40_1;
    v48 = _Block_copy(aBlock);

    v49 = v57;
    sub_1D9177E4C();
    v67 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v50 = v53;
    v51 = v56;
    sub_1D91792CC();
    v52 = v63;
    sub_1D9178D7C();
    _Block_release(v48);

    (*(v55 + 8))(v50, v51);
    (*(v58 + 8))(v49, v54);
  }

  return result;
}

void sub_1D8EAD768(uint64_t a1, dispatch_group_t group)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = v3;
    os_unfair_lock_lock(v3 + 6);
    sub_1D8EAD9C0(&v4[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v4 + 6);
  }

  dispatch_group_leave(group);
}

uint64_t sub_1D8EAD7F8(void *a1, void *a2)
{
  v3 = a2;
  MEMORY[0x1DA729B90]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D917863C();
  }

  return sub_1D917869C();
}

uint64_t sub_1D8EAD874(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 24));
  v5 = *(a3 + 16);

  os_unfair_lock_unlock((a3 + 24));
  a1(v5);
}

unint64_t sub_1D8EAD948()
{
  result = qword_1ECAB56E0;
  if (!qword_1ECAB56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB56E0);
  }

  return result;
}

void sub_1D8EAD9A8(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1D8EAD768(a1, *(v1 + 16));
}

unint64_t sub_1D8EADA18()
{
  result = qword_1ECAB56F0;
  if (!qword_1ECAB56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB56F0);
  }

  return result;
}

void ICContentFairPlayKeySession.__allocating_init(asset:)(void *a1)
{
  sub_1D8EB0130();
  if (v2)
  {
  }

  else
  {
    v5 = v4;
    v6 = *(v1 + 48);
    v7 = *(v1 + 52);
    swift_allocObject();
    sub_1D8EADCD8(a1, v5);
  }
}

void *ICContentFairPlayKeySession.__allocating_init(asset:account:)(char *a1, id a2)
{
  v4 = v3;
  v7 = [a2 ams_DSID];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() specificAccountWithDSID_];
    v10 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];

    v11 = *(v2 + 48);
    v12 = *(v2 + 52);
    swift_allocObject();
    v4 = sub_1D8EADCD8(a1, v10);
  }

  else
  {
    sub_1D8EB024C();
    swift_allocError();
    swift_willThrow();
  }

  return v4;
}

uint64_t ACAccount.storeRequestContext()()
{
  v1 = [v0 ams_DSID];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() specificAccountWithDSID_];
    v4 = [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];

    return v4;
  }

  else
  {
    sub_1D8EB024C();
    swift_allocError();
    return swift_willThrow();
  }
}

void *sub_1D8EADCD8(char *a1, void *a2)
{
  v3 = v2;
  v39 = *v2;
  v6 = sub_1D9176C2C();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FairPlayServerURLConfiguration();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176EAC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 40) = 0;
  v3[6] = 0;
  v18 = (v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  *v18 = 0;
  v18[1] = 0;
  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper) = 0;
  v19 = (v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix);
  *v19 = 0;
  v19[1] = 0;
  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session) = 0;
  sub_1D9176E9C();
  v20 = sub_1D9176E5C();
  v22 = v21;
  (*(v14 + 8))(v17, v13);
  v3[2] = v20;
  v3[3] = v22;
  v3[4] = a1;
  v3[7] = *&a1[OBJC_IVAR___PFFairPlayAsset_keyStore];
  v3[8] = a2;
  swift_unknownObjectRetain();
  v23 = a2;
  v24 = a1;
  v25 = v40;
  sub_1D8E93DDC(v12);
  if (v25)
  {

    v29 = v3[3];

    v30 = v3[7];
    swift_unknownObjectRelease();

    v31 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8);
    sub_1D8D15664(*(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion));

    v32 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix + 8);

    v33 = *(*v3 + 48);
    v34 = *(*v3 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v36;
    v26 = v37;
    sub_1D8EB081C(v12, v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_urlConfiguration);
    sub_1D8E94158();
    v28 = v38;
    sub_1D8EAE078(v38);

    (*(v27 + 32))(v3 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_keyCertificateURL, v28, v26);
  }

  return v3;
}

uint64_t sub_1D8EAE078@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 syncValueForKey_];

  if (v7)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    v8 = sub_1D9176C2C();
    v9 = swift_dynamicCast();
    v10 = *(v8 - 8);
    (*(v10 + 56))(v5, v9 ^ 1u, 1, v8);
    if ((*(v10 + 48))(v5, 1, v8) != 1)
    {
      return (*(v10 + 32))(a1, v5, v8);
    }
  }

  else
  {
    sub_1D8D08A50(v16, &qword_1ECAB57F0, &unk_1D9190AA0);
    v12 = sub_1D9176C2C();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  sub_1D8D08A50(v5, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8E9440C();
  swift_allocError();
  *v13 = 5;
  return swift_willThrow();
}

uint64_t ICContentFairPlayKeySession.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void ICContentFairPlayKeySession.bypassCache.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  v3 = sub_1D8EAE518();
  [v3 setBypassCache_];
}

void sub_1D8EAE4B8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  v4 = sub_1D8EAE518();
  [v4 setBypassCache_];
}

id sub_1D8EAE518()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___session);
  }

  else
  {
    v4 = sub_1D8EAF20C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void (*ICContentFairPlayKeySession.bypassCache.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D8EAE5D0;
}

void sub_1D8EAE5D0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = sub_1D8EAE518();
    [v5 setBypassCache_];
  }
}

uint64_t ICContentFairPlayKeySession.keyStoreFilePath.getter()
{
  if (!*(v0 + 56))
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    v3 = [v2 filePath];
    v4 = sub_1D917820C();
    swift_unknownObjectRelease();

    return v4;
  }

  return result;
}

void *ICContentFairPlayKeySession.keyResponseData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void ICContentFairPlayKeySession.keyResponseData.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

Swift::Void __swiftcall ICContentFairPlayKeySession.pauseAutomaticKeyRenewal()()
{
  v0 = sub_1D8EAE518();
  [v0 pauseAutomaticKeyRenewal];
}

Swift::Void __swiftcall ICContentFairPlayKeySession.resumeAutomaticKeyRenewal()()
{
  v0 = sub_1D8EAE518();
  [v0 resumeAutomaticKeyRenewal];
}

uint64_t sub_1D8EAE9D0(uint64_t a1, uint64_t a2, SEL *a3)
{

  v4 = sub_1D8EAE518();
  [v4 *a3];
}

uint64_t sub_1D8EAEA4C(SEL *a1)
{
  v3 = sub_1D8EAE518();
  sub_1D8CFD9D8(*(v1 + 32) + OBJC_IVAR___PFFairPlayAsset_avAsset, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 8))(v4, v5);
  [v3 *a1];

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1D8EAEB08(uint64_t a1, uint64_t a2, SEL *a3)
{

  v5 = sub_1D8EAE518();
  sub_1D8CFD9D8(*(a1 + 32) + OBJC_IVAR___PFFairPlayAsset_avAsset, v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 8))(v6, v7);
  [v5 *a3];

  __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void ICContentFairPlayKeySession.processKey(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v6 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v7 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8);
  *v5 = a3;
  v5[1] = a4;
  sub_1D8D15664(v6);

  v8 = sub_1D8EAE518();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v8 processKeyWithIdentifier_];
}

Swift::Void __swiftcall ICContentFairPlayKeySession.renewKey()()
{
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917744C();
  __swift_project_value_buffer(v0, qword_1EDCD0F68);

  v1 = sub_1D917741C();
  v2 = sub_1D9178D1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    v5 = sub_1D8EAEED0();
    v7 = sub_1D8CFA924(v5, v6, &v9);

    *(v3 + 4) = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x1DA72CB90](v4, -1, -1);
    MEMORY[0x1DA72CB90](v3, -1, -1);
  }

  v8 = sub_1D8EAE518();
  [v8 renewAllKeys];
}

unint64_t sub_1D8EAEED0()
{
  v1 = (v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix + 8);
  }

  else
  {
    v2 = 0xD000000000000031;
    *v1 = 0xD000000000000031;
    v1[1] = 0x80000001D91CC5C0;
  }

  return v2;
}

void ICContentFairPlayKeySession.stopAndInvalidateKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8EAE518();
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D8E8A43C;
  v6[3] = &block_descriptor_24;
  v5 = _Block_copy(v6);

  [v4 stopSessionInvalidatingKeys:1 withCompletion:v5];
  _Block_release(v5);
}

id sub_1D8EAF154()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___delegateWrapper);
  }

  else
  {
    v4 = type metadata accessor for ICContentKeySessionDelegateWrapper();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC18PodcastsFoundationP33_C5CCB7FDAA241CA13F97384CFFA3ACE334ICContentKeySessionDelegateWrapper_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = &off_1F54699D0;
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1D8EAF20C(void *a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[7];
  v7 = a1[8];
  v9 = sub_1D8EAF154();
  v10 = [objc_allocWithZone(MEMORY[0x1E69E43F8]) initWithRequestContext:v7 keyStore:v8 delegate:v9];

  v11 = a1[4];
  v12 = *(v11 + OBJC_IVAR___PFFairPlayAsset_adamID);
  v13 = sub_1D9179D9C();
  [v10 setAdamID_];

  v14 = sub_1D9176B1C();
  [v10 setKeyCertificateURL_];

  [v10 setKeyServerProtocolType_];
  [v10 setBypassCache_];
  [v10 setRefreshExpiredPersistentKeys_];
  sub_1D8CFD9D8(v11 + OBJC_IVAR___PFFairPlayAsset_avAsset, v32);
  v15 = v33;
  v16 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  v17 = (*(v16 + 8))(v15, v16);
  v18 = [v17 URL];
  sub_1D9176B9C();

  LOBYTE(v18) = sub_1D9176A8C();
  (*(v3 + 8))(v6, v2);
  [v10 setRequestOfflineKeys_];
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v19 = a1 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_urlConfiguration;
  v20 = sub_1D9176B1C();
  [v10 setKeyServerURL_];

  v21 = type metadata accessor for FairPlayServerURLConfiguration();
  v22 = &v19[v21[5]];
  v23 = sub_1D9176B1C();
  [v10 setStreamingleaseStopURL_];

  v24 = &v19[v21[6]];
  v25 = sub_1D9176B1C();
  [v10 setOfflineLeaseStartURL_];

  v26 = &v19[v21[7]];
  v27 = sub_1D9176B1C();
  [v10 setOfflineLeaseStopURL_];

  v28 = &v19[v21[8]];
  v29 = sub_1D9176B1C();
  [v10 setOfflineLeaseStopNonceURL_];

  return v10;
}

uint64_t ICContentFairPlayKeySession.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_keyCertificateURL;
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1D8EB02A0(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_urlConfiguration);
  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion + 8);
  sub_1D8D15664(*(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion));

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession____lazy_storage___logPrefix + 8);

  return v0;
}

uint64_t ICContentFairPlayKeySession.__deallocating_deinit()
{
  ICContentFairPlayKeySession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D8EAF668(uint64_t a1, unint64_t a2, void *a3, id a4)
{
  v5 = v4;
  v6 = a4;
  v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;
  if (!a4)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD0F68);
    v30 = a3;

    v15 = sub_1D917741C();
    v31 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v31))
    {
      v77 = a1;
      v32 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v82[0] = v79;
      *v32 = 136316163;
      v33 = sub_1D8EAEED0();
      v35 = sub_1D8CFA924(v33, v34, v82);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2160;
      *(v32 + 14) = 1752392040;
      *(v32 + 22) = 2081;
      *(v32 + 24) = sub_1D8CFA924(v77, a2, v82);
      *(v32 + 32) = 2160;
      *(v32 + 34) = 1752392040;
      *(v32 + 42) = 2081;
      v81 = a3;
      v36 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
      v37 = sub_1D917826C();
      v39 = sub_1D8CFA924(v37, v38, v82);
      v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;

      *(v32 + 44) = v39;
      _os_log_impl(&dword_1D8CEC000, v15, v31, "%s ICContentKeySession successfully processed key for: %{private,mask.hash}s, with delivery response %{private,mask.hash}s.", v32, 0x34u);
      swift_arrayDestroy();
      v6 = 0;
      MEMORY[0x1DA72CB90](v79, -1, -1);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    goto LABEL_10;
  }

  v11 = a4;
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F68);
  v13 = v6;
  v14 = a3;

  v15 = sub_1D917741C();
  v16 = sub_1D9178CFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = a1;
    v18 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v82[0] = v78;
    *v18 = 136316419;
    v76 = v16;
    v19 = sub_1D8EAEED0();
    v21 = sub_1D8CFA924(v19, v20, v82);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2160;
    *(v18 + 14) = 1752392040;
    *(v18 + 22) = 2081;
    *(v18 + 24) = sub_1D8CFA924(v17, a2, v82);
    *(v18 + 32) = 2160;
    *(v18 + 34) = 1752392040;
    *(v18 + 42) = 2081;
    v81 = a3;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
    v23 = sub_1D917826C();
    v25 = sub_1D8CFA924(v23, v24, v82);

    *(v18 + 44) = v25;
    *(v18 + 52) = 2082;
    swift_getErrorValue();
    v26 = sub_1D9179D2C();
    v28 = sub_1D8CFA924(v26, v27, v82);
    v10 = &OBJC_METACLASS____TtC18PodcastsFoundation27PodcastEpisodeRelationships;

    *(v18 + 54) = v28;
    _os_log_impl(&dword_1D8CEC000, v15, v76, "%s ICContentKeySession failed to process key for: %{private,mask.hash}s, with delivery response %{private,mask.hash}s and error %{public}s", v18, 0x3Eu);
    swift_arrayDestroy();
    v6 = a4;
    MEMORY[0x1DA72CB90](v78, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  if (v10[98].cache != -1)
  {
    swift_once();
  }

  v40 = sub_1D917744C();
  __swift_project_value_buffer(v40, qword_1EDCD0F68);
  v41 = a3;

  v42 = sub_1D917741C();
  v43 = sub_1D9178D1C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v82[0] = v45;
    *v44 = 136315651;
    v46 = sub_1D8EAEED0();
    v48 = sub_1D8CFA924(v46, v47, v82);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2160;
    *(v44 + 14) = 1752392040;
    *(v44 + 22) = 2081;
    v81 = a3;
    v49 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB57D0, &qword_1D9190A98);
    v50 = sub_1D917826C();
    v52 = sub_1D8CFA924(v50, v51, v82);

    *(v44 + 24) = v52;
    _os_log_impl(&dword_1D8CEC000, v42, v43, "%s Setting currentResponse=%{private,mask.hash}s.", v44, 0x20u);
    swift_arrayDestroy();
    v53 = v45;
    v6 = a4;
    MEMORY[0x1DA72CB90](v53, -1, -1);
    MEMORY[0x1DA72CB90](v44, -1, -1);
  }

  v54 = v41;
  v55 = sub_1D8EB04FC(a3);
  swift_beginAccess();
  v56 = *(v5 + 48);
  *(v5 + 48) = v55;

  v57 = (v5 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  v58 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation27ICContentFairPlayKeySession_pendingProcessCompletion);
  if (v58)
  {
    v59 = v57[1];

    sub_1D8D1F93C(v58);
    v60 = sub_1D917741C();
    v61 = sub_1D9178CEC();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v81 = v63;
      *v62 = 136315138;
      v64 = sub_1D8EAEED0();
      v66 = sub_1D8CFA924(v64, v65, &v81);

      *(v62 + 4) = v66;
      _os_log_impl(&dword_1D8CEC000, v60, v61, "%s Calling completion handler.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72CB90](v63, -1, -1);
      MEMORY[0x1DA72CB90](v62, -1, -1);
    }

    v58(v6);
    sub_1D8D15664(v58);
    v67 = *v57;
    v68 = v57[1];
    *v57 = 0;
    v57[1] = 0;
    sub_1D8D15664(v67);
  }

  else
  {

    v69 = sub_1D917741C();
    v70 = sub_1D9178CEC();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v81 = v72;
      *v71 = 136315138;
      v73 = sub_1D8EAEED0();
      v75 = sub_1D8CFA924(v73, v74, &v81);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1D8CEC000, v69, v70, "%s No completion handler found.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x1DA72CB90](v72, -1, -1);
      MEMORY[0x1DA72CB90](v71, -1, -1);
    }
  }
}

uint64_t ICContentFairPlayKeySession.description.getter()
{
  v1 = v0;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000001FLL, 0x80000001D91CC2D0);
  MEMORY[0x1DA7298F0](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1DA7298F0](0x3D74657373610ALL, 0xE700000000000000);
  v2 = [*(v0 + 32) description];
  v3 = sub_1D917820C();
  v5 = v4;

  MEMORY[0x1DA7298F0](v3, v5);

  MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91CC2F0);
  swift_beginAccess();
  v6 = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5738, &qword_1D9190850);
  v7 = sub_1D917826C();
  MEMORY[0x1DA7298F0](v7);

  return 0;
}

void sub_1D8EB0130()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];
  if (v1 && (v2 = v1, v3 = [v1 ams_DSID], v2, v3))
  {

    v4 = [objc_opt_self() specificAccountWithDSID_];
    [objc_allocWithZone(MEMORY[0x1E69E4618]) initWithIdentity_];
  }

  else
  {
    sub_1D8E9440C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }
}

unint64_t sub_1D8EB024C()
{
  result = qword_1ECAB5700;
  if (!qword_1ECAB5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5700);
  }

  return result;
}

uint64_t sub_1D8EB02A0(uint64_t a1)
{
  v2 = type metadata accessor for FairPlayServerURLConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ICContentFairPlayKeySession()
{
  result = qword_1ECAB5748;
  if (!qword_1ECAB5748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8EB0350()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for FairPlayServerURLConfiguration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1D8EB04A8()
{
  result = qword_1ECAB57C8;
  if (!qword_1ECAB57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB57C8);
  }

  return result;
}

id sub_1D8EB04FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  if (!a1)
  {
    (*(v10 + 56))(v8, 1, 1, v9, v15);
LABEL_8:
    sub_1D8D08A50(v8, &qword_1ECAB75C0, &unk_1D9188A50);
    return 0;
  }

  v18 = [a1 renewalDate];
  if (v18)
  {
    v19 = v18;
    sub_1D9176DFC();

    (*(v10 + 56))(v5, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v5, 1, 1, v9);
  }

  sub_1D8E964A4(v5, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    goto LABEL_8;
  }

  (*(v10 + 32))(v17, v8, v9);
  v21 = *(v10 + 16);
  v21(v13, v17, v9);
  v22 = type metadata accessor for FairPlayKeyResponseData();
  v23 = objc_allocWithZone(v22);
  v21(&v23[OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate], v13, v9);
  v26.receiver = v23;
  v26.super_class = v22;
  v24 = objc_msgSendSuper2(&v26, sel_init);

  v25 = *(v10 + 8);
  v25(v13, v9);
  v25(v17, v9);
  return v24;
}

uint64_t sub_1D8EB081C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FairPlayServerURLConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NSUserDefaults.isFairPlayV2Enabled.getter()
{
  v0 = sub_1D8D6D320();
  if (v0 != 2)
  {
    return v0 & 1;
  }

  v1 = qword_1ECAB5808;
  v2 = off_1ECAB5810;

  LOBYTE(v1) = sub_1D8D6D934(v1, v2, 1);

  return v1 & 1;
}

void NSUserDefaults.isFairPlayV2Enabled.setter()
{
  v1 = sub_1D917873C();

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v0 setValue:v1 forKey:v2];
}

void NSUserDefaults.fairPlayVersion.setter(_BYTE *a1)
{
  *a1;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v2 forKey:v3];
}

void (*NSUserDefaults.fairPlayVersion.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  NSUserDefaults.fairPlayVersion.getter((a1 + 8));
  return sub_1D8EB0A8C;
}

void sub_1D8EB0A8C(uint64_t a1)
{
  v1 = *a1;
  *(a1 + 8);
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v3 forKey:v2];
}

uint64_t sub_1D8EB0B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1D8D6D320();
  if (result == 2)
  {
    v5 = qword_1ECAB5808;
    v6 = off_1ECAB5810;

    v7 = sub_1D8D6D934(v5, v6, 1);

    result = v7;
  }

  *a2 = result & 1;
  return result;
}

void sub_1D8EB0BB8(unsigned __int8 *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1D917873C();

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v3 setValue:v4 forKey:v5];
}

void (*NSUserDefaults.isFairPlayV2Enabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = sub_1D8D6D320();
  if (v3 == 2)
  {
    v4 = qword_1ECAB5808;
    v5 = off_1ECAB5810;

    v6 = sub_1D8D6D934(v4, v5, 1);

    v3 = v6;
  }

  *(a1 + 8) = v3 & 1;
  return sub_1D8EB0CF0;
}

void sub_1D8EB0CF0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v4 = sub_1D917873C();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v1 setValue:v4 forKey:v3];
}

id NSUserDefaults.fairPlayMigrationRetryCount.getter()
{

  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_1D8EB0DF8(void *a1)
{
  v3 = a1;
  v1 = sub_1D9178B6C();

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v3 setValue:v1 forKey:v2];
}

void NSUserDefaults.fairPlayMigrationRetryCount.setter()
{
  v1 = sub_1D9178B6C();

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D8EB0FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v124 = a6;
  v107 = a3;
  v109 = a2;
  v120 = a1;
  v8 = sub_1D9176C2C();
  v112 = *(v8 - 8);
  v113 = v8;
  v9 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v110 = v10;
  v123 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v111 = *(AssociatedTypeWitness - 8);
  v105 = *(v111 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v121 = &v84 - v13;
  v108 = *(a4 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v102 = v15;
  v119 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = a5;
  v16 = a4;
  swift_getAssociatedConformanceWitness();
  v122 = AssociatedTypeWitness;
  swift_getAssociatedTypeWitness();
  v17 = sub_1D917781C();
  WitnessTable = swift_getWitnessTable();
  v92 = v17;
  v91 = WitnessTable;
  v19 = sub_1D91775FC();
  v104 = *(v19 - 8);
  v20 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v84 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB5A20, &qword_1D9190B78);
  v23 = sub_1D8CF48EC(&qword_1ECAB0330, &unk_1ECAB5A20, &qword_1D9190B78);
  v24 = swift_getWitnessTable();
  v97 = v22;
  v127 = v22;
  v128 = v19;
  v106 = v19;
  v95 = v23;
  v129 = v23;
  v130 = v24;
  v94 = v24;
  v25 = sub_1D917771C();
  v101 = *(v25 - 8);
  v26 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v98 = &v84 - v27;
  v28 = swift_getWitnessTable();
  v103 = v25;
  v93 = v28;
  v100 = sub_1D91775FC();
  v99 = *(v100 - 8);
  v29 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v96 = &v84 - v30;
  v125 = sub_1D917734C();
  v31 = *(v125 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x1EEE9AC00](v125);
  v126 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v84 - v35;
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v37 = sub_1D917739C();
  __swift_project_value_buffer(v37, qword_1ECAB0FE8);
  sub_1D917737C();
  sub_1D917731C();
  v38 = sub_1D917737C();
  v39 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v38, v39, v41, "backgroundStash", "Start background stash", v40, 2u);
    MEMORY[0x1DA72CB90](v40, -1, -1);
  }

  v115 = v31;
  v43 = *(v31 + 16);
  v42 = v31 + 16;
  v44 = v43;
  v43(v126, v36, v125);
  v45 = sub_1D91773FC();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v90 = sub_1D91773EC();
  v48 = sub_1D917737C();
  v49 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    v51 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v48, v49, v51, "Start loading from source", "", v50, 2u);
    MEMORY[0x1DA72CB90](v50, -1, -1);
  }

  v52 = *(v117 + 56);
  v114 = v36;
  v53 = v107;
  v54 = v117;
  v127 = v52(v120, v16);
  v55 = v126;
  v56 = v36;
  v57 = v125;
  v86 = v44;
  v44(v126, v56, v125);
  v87 = v42;
  v58 = v16;
  v59 = v115;
  v60 = *(v115 + 80);
  v61 = swift_allocObject();
  *(v61 + 2) = v58;
  *(v61 + 3) = v54;
  v85 = v58;
  *(v61 + 4) = v124;
  v62 = *(v59 + 32);
  v88 = v59 + 32;
  v89 = v62;
  v63 = v55;
  v62(&v61[(v60 + 40) & ~v60], v55, v57);
  sub_1D9177B3C();

  v64 = v57;
  v65 = v108;
  (*(v108 + 16))(v119, v53, v58);
  v66 = v111;
  (*(v111 + 16))(v121, v109, v122);
  v68 = v112;
  v67 = v113;
  (*(v112 + 16))(v123, v120, v113);
  v86(v63, v114, v64);
  v69 = (*(v65 + 80) + 40) & ~*(v65 + 80);
  v70 = (v102 + v69 + *(v66 + 80)) & ~*(v66 + 80);
  v71 = (v105 + *(v68 + 80) + v70) & ~*(v68 + 80);
  v72 = (v110 + v60 + v71) & ~v60;
  v73 = swift_allocObject();
  v74 = v117;
  *(v73 + 2) = v85;
  *(v73 + 3) = v74;
  *(v73 + 4) = v124;
  (*(v65 + 32))(&v73[v69], v119);
  (*(v66 + 32))(&v73[v70], v121, v122);
  (*(v68 + 32))(&v73[v71], v123, v67);
  v75 = v125;
  v89(&v73[v72], v126, v125);
  sub_1D91777FC();
  v76 = v98;
  v77 = v106;
  v78 = v118;
  sub_1D9177DDC();

  (*(v104 + 8))(v78, v77);

  v79 = v103;
  v80 = v96;
  sub_1D9177B3C();

  (*(v101 + 8))(v76, v79);
  v81 = v100;
  swift_getWitnessTable();
  v82 = sub_1D9177B1C();

  (*(v99 + 8))(v80, v81);
  (*(v115 + 8))(v114, v75);
  return v82;
}

uint64_t AssetBackgroundSession.start(task:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a1;
  v81 = sub_1D917653C();
  v79 = *(v81 - 8);
  v6 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v76 = v7;
  v78 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a3;
  v8 = *(a3 - 8);
  a3 -= 8;
  v64 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v71 = v11;
  v84 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5840, &unk_1D9190AB8);
  v62 = *(v61 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v14 = &v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v58 - v17;
  v19 = *(a3 + 24);
  v66 = *(a3 + 32);
  v65 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v82 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v58 - v25;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5848, &qword_1D9190AC8);
  v70 = *(v73 - 8);
  v27 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v29 = &v58 - v28;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5850, &unk_1D9190AD0);
  v69 = *(v72 - 8);
  v30 = *(v69 + 64);
  v31 = MEMORY[0x1EEE9AC00](v72);
  v68 = &v58 - v32;
  v33 = *(a3 + 56);
  v74 = v3;
  v34 = *(v3 + v33);
  v67 = v21;
  v35 = *(v21 + 16);
  v77 = a2;
  v60 = v21 + 16;
  v59 = v35;
  (v35)(v26, a2, AssociatedTypeWitness, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  v83 = AssociatedTypeWitness;
  if (swift_dynamicCast())
  {
    v36 = *(&v89 + 1);
    v37 = v90;
    __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
    (*(v37 + 8))(v86, v36, v37);
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    sub_1D8D08A50(&v88, &qword_1ECAB4B20, &unk_1D918BE00);
    memset(v86, 0, sizeof(v86));
    v87 = 0;
  }

  sub_1D8D728EC(v86, v85);
  *&v88 = v34;
  sub_1D8D728EC(v85, &v88 + 8);
  v91 = "AWAIT-SESSION";
  v92 = 13;
  v93 = 2;
  v96 = 0;

  sub_1D8D08A50(v85, &qword_1ECAB4928, &qword_1D918B380);
  sub_1D8D08A50(v86, &qword_1ECAB4928, &qword_1D918B380);
  v94 = 0;
  v95 = 0xE000000000000000;
  v97 = 0;
  if (qword_1EDCD5B50 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDCD5B58;
  v39 = sub_1D9178DBC();
  (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
  *&v86[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB2780, &qword_1ECAB5858, &qword_1D9190AE0);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A90, &qword_1ECAB5840, &unk_1D9190AB8);
  v58 = v29;
  v40 = v61;
  sub_1D9177CEC();
  (*(v62 + 8))(v14, v40);
  sub_1D8D08A50(v18, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8D08A50(&v88, &qword_1ECAB5858, &qword_1D9190AE0);
  v41 = v64;
  v42 = v80;
  (*(v64 + 16))(v84, v74, v80);
  v43 = v79;
  v44 = v78;
  v45 = v81;
  (*(v79 + 16))(v78, v75, v81);
  v59(v82, v77, v83);
  v46 = (*(v41 + 80) + 40) & ~*(v41 + 80);
  v47 = (v71 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = v67;
  v49 = (v76 + v47 + *(v67 + 80)) & ~*(v67 + 80);
  v50 = swift_allocObject();
  v51 = v66;
  *(v50 + 2) = v65;
  *(v50 + 3) = v51;
  *(v50 + 4) = *(v42 + 32);
  (*(v41 + 32))(&v50[v46], v84, v42);
  (*(v43 + 32))(&v50[v47], v44, v45);
  (*(v48 + 32))(&v50[v49], v82, v83);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5860, &qword_1D9190AE8);
  sub_1D8CF48EC(&qword_1ECAB04B0, &qword_1ECAB5848, &qword_1D9190AC8);
  sub_1D8CF48EC(&qword_1ECAB0600, &qword_1ECAB5860, &qword_1D9190AE8);
  v52 = v68;
  v53 = v73;
  v54 = v58;
  sub_1D9177DCC();

  (*(v70 + 8))(v54, v53);
  sub_1D8CF48EC(&qword_1ECAB0540, &qword_1ECAB5850, &unk_1D9190AD0);
  v55 = v72;
  v56 = sub_1D9177B1C();
  (*(v69 + 8))(v52, v55);
  return v56;
}

uint64_t sub_1D8EB25B4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v39 = a4;
  v41 = a3;
  v45 = a8;
  v47 = a5;
  v48 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v38 - v12;
  v14 = type metadata accessor for AssetBackgroundSession();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5898, &qword_1D9190BC0);
  v20 = *(v19 - 8);
  v43 = v19;
  v44 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v40 = &v38 - v22;
  v23 = *a1;
  v42 = *(a2 + *(v14 + 44));
  v41 = AssetBackgroundDelegate.start(request:using:)(v41, v23);
  v49 = v41;
  (*(v15 + 16))(v18, a2, v14);
  (*(v10 + 16))(v13, v39, AssociatedTypeWitness);
  v24 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v25 = (v16 + v24 + *(v10 + 80)) & ~*(v10 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v48;
  *(v27 + 2) = v47;
  *(v27 + 3) = v28;
  *(v27 + 4) = v38;
  (*(v15 + 32))(&v27[v24], v18, v14);
  (*(v10 + 32))(&v27[v25], v13, AssociatedTypeWitness);
  *&v27[v26] = v23;
  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB58A0, &qword_1D9190BC8);
  sub_1D8CF48EC(&qword_1EDCD0B70, &qword_1ECAB58A0, &qword_1D9190BC8);
  v30 = v40;
  sub_1D9177B3C();

  v31 = swift_allocObject();
  v32 = v48;
  v31[2] = v47;
  v31[3] = v32;
  v33 = v42;
  v31[4] = v42;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1D8EB467C;
  *(v34 + 24) = v31;
  v35 = v33;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAB0958, &qword_1ECAB5898, &qword_1D9190BC0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v36 = v43;
  sub_1D9177DCC();

  return (*(v44 + 8))(v30, v36);
}

uint64_t sub_1D8EB2A7C(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  v7 = *(a2 + *(type metadata accessor for AssetBackgroundSession() + 52));
  v8 = [a4 configuration];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = sub_1D917820C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  DownloadTaskIdentifier.init(session:identifier:)(v10, v12, v6, &v18);
  v15 = v18;
  v16 = v19;
  v17 = v20;
  type metadata accessor for DownloadTaskIdentifier();
  WitnessTable = swift_getWitnessTable();
  DiskAssetCache<>.store(asset:at:)(a3, &v15, WitnessTable);
}

void sub_1D8EB2C4C()
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D917739C();
  __swift_project_value_buffer(v0, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v1 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    v3 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v1, v3, "Loaded asset from URL", "", v2, 2u);
    MEMORY[0x1DA72CB90](v2, -1, -1);
  }
}

uint64_t sub_1D8EB2D50(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a5;
  v69 = a4;
  v60 = a3;
  v67 = sub_1D9176C2C();
  v11 = *(v67 - 8);
  v65 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D917734C();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v58 = v15;
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5868, &qword_1D9190B80);
  v68 = *(v66 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5870, &qword_1D9190B88);
  v20 = *(v19 - 8);
  v72 = v19;
  v73 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v55 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5878, &qword_1D9190B90);
  v24 = *(v23 - 8);
  v74 = v23;
  v75 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v55 - v26;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5880, &qword_1D9190B98);
  v79 = *(v76 - 8);
  v27 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v70 = &v55 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5888, &unk_1D9190BA0);
  v30 = *(v29 - 8);
  v77 = v29;
  v78 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v71 = &v55 - v32;
  v81 = (*(a7 + 64))(a1, v60, a6, a7);
  v60 = *(v13 + 16);
  v56 = v16;
  v33 = v80;
  v60(v16, a5, v80);
  v34 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v35 = swift_allocObject();
  v57 = *(v13 + 32);
  v57(v35 + v34, v16, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0);
  v36 = v61;
  sub_1D9177B3C();

  v37 = v63;
  v38 = v67;
  (*(v11 + 16))(v63, v69, v67);
  v39 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v40 = swift_allocObject();
  (*(v11 + 32))(v40 + v39, v37, v38);
  sub_1D8CF48EC(&qword_1ECAB0948, &qword_1ECAB5868, &qword_1D9190B80);
  v41 = v62;
  v42 = v66;
  sub_1D9177C6C();

  (*(v68 + 8))(v36, v42);
  v43 = v56;
  v44 = v80;
  v60(v56, v59, v80);
  v45 = swift_allocObject();
  v57(v45 + v34, v43, v44);
  sub_1D8CF48EC(&qword_1ECAB0670, &qword_1ECAB5870, &qword_1D9190B88);
  v46 = v72;
  v47 = v64;
  sub_1D9177B3C();

  (*(v73 + 8))(v41, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5890, &unk_1D9190BB0);
  sub_1D8CF48EC(&qword_1ECAB0930, &qword_1ECAB5878, &qword_1D9190B90);
  sub_1D8CF48EC(&unk_1ECAB02A8, &qword_1ECAB5890, &unk_1D9190BB0);
  v48 = v70;
  v49 = v74;
  sub_1D9177BDC();
  (*(v75 + 8))(v47, v49);
  sub_1D8CF48EC(&qword_1ECAB06F0, &qword_1ECAB5880, &qword_1D9190B98);
  v50 = v71;
  v51 = v76;
  sub_1D9177D8C();
  (*(v79 + 8))(v48, v51);
  sub_1D8CF48EC(&qword_1ECAB0910, &qword_1ECAB5888, &unk_1D9190BA0);
  v52 = v77;
  v53 = sub_1D9177B1C();
  (*(v78 + 8))(v50, v52);
  return v53;
}

uint64_t sub_1D8EB3660()
{
  v0 = sub_1D91773AC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917739C();
  __swift_project_value_buffer(v10, qword_1ECAB0FE8);
  v11 = sub_1D917737C();
  sub_1D91773DC();
  v12 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "COMPLETE";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, v12, v15, "backgroundStash", v13, v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1D8EB38F8()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1D9176B1C();
  v6[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D9176A6C();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D8EB39EC(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1ECAB0FE0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917739C();
  __swift_project_value_buffer(v4, qword_1ECAB0FE8);
  log = sub_1D917737C();
  v5 = sub_1D9178F6C();
  if (sub_1D917918C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, log, v5, v7, a3, "", v6, 2u);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

uint64_t sub_1D8EB3AF8(void **a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v9 = sub_1D917826C();
    v11 = sub_1D8CFA924(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Encountered error while stashing background download: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }

  return sub_1D9177A0C();
}

uint64_t sub_1D8EB3C90@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(type metadata accessor for AssetBackgroundSession() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1D917653C() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80));

  return sub_1D8EB25B4(a1, v2 + v9, v2 + v12, v15, v5, v6, v7, a2);
}

uint64_t sub_1D8EB3E18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}