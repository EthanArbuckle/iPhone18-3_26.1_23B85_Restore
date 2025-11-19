uint64_t sub_1D8E5D800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t MediaCacheDeleteProcessor.isRunning.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t MediaCacheDeleteProcessorDataSource.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MediaCacheDeleteProcessorDataSource.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MediaCacheDeleteProcessorDataSource.observedEpisodeKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void __swiftcall MediaCacheDeleteProcessorDataSource.episodesPredicate()(NSPredicate *__return_ptr retstr)
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 32);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v13 = [v12 episodeLimitForKey_];
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D918C190;
  *(v14 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v14 + 40) = sub_1D8FCD114(v13);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v15 = sub_1D91785DC();

  [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8E5DBB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D8E5DC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MediaCacheDeleteProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B48, &unk_1D918C250);
  v40 = *(v35 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B50, &unk_1D918C260);
  v39 = *(v37 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v11 = &v33 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B58, &unk_1D918C490);
  v38 = *(v36 - 8);
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v33 - v13;
  v16 = *v1;
  v15 = *(v1 + 8);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v16;
  v17[4] = v15;
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = sub_1D8E5E7B4;
  v18[4] = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();

  v22 = v16;
  v23 = v15;
  v24 = v22;
  v25 = sub_1D9177A5C();
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v41 = v25;
  v42 = v23;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270);
  sub_1D8D02DF0();
  v27 = v34;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A10, &qword_1ECAB4B48, &unk_1D918C250);
  v28 = v35;
  sub_1D9177CEC();

  (*(v40 + 8))(v27, v28);
  sub_1D8D08A50(v8, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB0430, &qword_1ECAB4B50, &unk_1D918C260);
  v29 = v37;
  sub_1D9177B9C();
  (*(v39 + 8))(v11, v29);
  sub_1D8CF48EC(&qword_1ECAB0748, &qword_1ECAB4B58, &unk_1D918C490);
  v30 = v36;
  v31 = sub_1D9177B1C();
  (*(v38 + 8))(v14, v30);
  return v31;
}

void sub_1D8E5E184(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D918A530;
  v7 = sub_1D917820C();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D8D34978();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  *(v6 + 104) = sub_1D8CF48EC(&qword_1ECAAFE48, &unk_1ECAB4F30, &qword_1D918DA90);
  *(v6 + 72) = a1;

  v10 = sub_1D9178C8C();
  [v5 setPredicate_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();
  if (v2)
  {

    return;
  }

  v12 = v11;
  if (qword_1EDCD0F18 != -1)
  {
LABEL_51:
    swift_once();
  }

  v13 = sub_1D917744C();
  __swift_project_value_buffer(v13, qword_1EDCD0F20);

  v14 = sub_1D917741C();
  v15 = sub_1D9178CFC();

  v16 = v12 >> 62;
  v51 = v5;
  v52 = a2;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v55 = v47;
    buf = v17;
    *v17 = 136315138;
    if (v16)
    {
      v18 = v12 & 0xFFFFFFFFFFFFFF8;
      a2 = sub_1D917935C();
    }

    else
    {
      v18 = v12 & 0xFFFFFFFFFFFFFF8;
      a2 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    log = v14;
    if (a2)
    {
      v19 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      v5 = &selRef_timeIntervalSinceDate_;
      do
      {
        v20 = v19;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x1DA72AA90](v20, v12);
            v19 = (v20 + 1);
            if (__OFADD__(v20, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v20 >= *(v18 + 16))
            {
              goto LABEL_50;
            }

            v21 = *(v12 + 8 * v20 + 32);
            v19 = (v20 + 1);
            if (__OFADD__(v20, 1))
            {
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }
          }

          v22 = v21;
          v23 = [v22 uuid];
          if (v23)
          {
            break;
          }

          ++v20;
          if (v19 == a2)
          {
            goto LABEL_27;
          }
        }

        v24 = v23;
        v25 = sub_1D917820C();
        v46 = v26;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D8D4241C(0, *(v53 + 2) + 1, 1, v53);
        }

        v28 = *(v53 + 2);
        v27 = *(v53 + 3);
        if (v28 >= v27 >> 1)
        {
          v53 = sub_1D8D4241C((v27 > 1), v28 + 1, 1, v53);
        }

        *(v53 + 2) = v28 + 1;
        v29 = &v53[16 * v28];
        *(v29 + 4) = v25;
        *(v29 + 5) = v46;
      }

      while (v19 != a2);
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

LABEL_27:
    v30 = MEMORY[0x1DA729BD0](v53, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1D8CFA924(v30, v32, &v55);

    *(buf + 4) = v33;
    _os_log_impl(&dword_1D8CEC000, log, v15, "Marking episodes for purgeability: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](buf, -1, -1);

    a2 = v52;
    v16 = v12 >> 62;
  }

  else
  {
  }

  if (v16)
  {
    v34 = sub_1D917935C();
    if (v34)
    {
LABEL_30:
      v35 = 0;
      v54 = MEMORY[0x1E69E7CC0];
      v5 = &selRef_allPlayedEpsWeight;
      do
      {
        v36 = v35;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v37 = MEMORY[0x1DA72AA90](v36, v12);
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v36 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v37 = *(v12 + 8 * v36 + 32);
            v35 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          v38 = v37;
          v39 = [v38 assetURL];
          if (v39)
          {
            break;
          }

          ++v36;
          if (v35 == v34)
          {
            goto LABEL_54;
          }
        }

        v40 = v39;
        v41 = sub_1D917820C();
        loga = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = sub_1D8D4241C(0, *(v54 + 2) + 1, 1, v54);
        }

        v44 = *(v54 + 2);
        v43 = *(v54 + 3);
        if (v44 >= v43 >> 1)
        {
          v54 = sub_1D8D4241C((v43 > 1), v44 + 1, 1, v54);
        }

        *(v54 + 2) = v44 + 1;
        v45 = &v54[16 * v44];
        *(v45 + 4) = v41;
        *(v45 + 5) = loga;
        a2 = v52;
      }

      while (v35 != v34);
      goto LABEL_54;
    }
  }

  else
  {
    v34 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_30;
    }
  }

  v54 = MEMORY[0x1E69E7CC0];
LABEL_54:

  *a2 = v54;
}

void sub_1D8E5E7B4(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_1D8E5E184(v1[2], a1);
}

void sub_1D8E5E7D4(uint64_t *a1)
{
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v54 - v4;
  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v54 - v13;
  v14 = *a1;
  v15 = *(*a1 + 16);
  if (v15)
  {
    v16 = (v11 + 48);
    v64 = (v11 + 32);
    v66 = (v11 + 16);
    v63 = (v11 + 8);
    v58 = 3221768772;
    v17 = (v14 + 40);
    v57 = *MEMORY[0x1E696A998];
    *&v12 = 136315394;
    v54 = v12;
    v56 = xmmword_1D9189080;
    v61 = (v11 + 48);
    v62 = v6;
    v65 = v9;
    v55 = v5;
    while (1)
    {
      v18 = *(v17 - 1);
      v19 = *v17;

      sub_1D9176BFC();

      if ((*v16)(v5, 1, v6) != 1)
      {
        break;
      }

      sub_1D8D08A50(v5, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_4:
      v17 += 2;
      if (!--v15)
      {
        goto LABEL_18;
      }
    }

    (*v64)(v67, v5, v6);
    v20 = sub_1D9176B1C();
    v21 = objc_opt_self();
    v69[0] = 0;
    v22 = [v21 fileHandleForReadingFromURL:v20 error:v69];

    if (v22)
    {
      v23 = v69[0];
      v24 = [v22 fileDescriptor];
      v69[0] = 98310;
      v25 = ffsctl(v24, v58, v69, 0);
      if (!v25)
      {
        [v22 closeFile];

        v45 = *v63;
LABEL_17:
        v45(v67, v6);
        v9 = v65;
        goto LABEL_4;
      }

      v26 = v25;
      sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = v56;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v28;
      *(inited + 72) = v6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*v66)(boxed_opaque_existential_0, v67, v6);
      v30 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
      v70.value._rawValue = v30;
      NSError.init(fsctlCode:userInfo:)(v31, v26, v70);
      v33 = v32;
      swift_willThrow();
      [v22 closeFile];
    }

    else
    {
      v34 = v69[0];
      v33 = sub_1D9176A6C();

      swift_willThrow();
    }

    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v35 = sub_1D917744C();
    __swift_project_value_buffer(v35, qword_1EDCD0F20);
    v36 = v62;
    (*v66)(v9, v67, v62);
    v37 = v33;
    v38 = sub_1D917741C();
    v39 = sub_1D9178CFC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v69[0] = v60;
      *v40 = v54;
      v59 = v39;
      v41 = sub_1D9176BCC();
      v43 = v42;
      v44 = v9;
      v45 = *v63;
      (*v63)(v44, v36);
      v46 = sub_1D8CFA924(v41, v43, v69);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2080;
      v68 = v33;
      v47 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v48 = sub_1D917826C();
      v50 = sub_1D8CFA924(v48, v49, v69);

      *(v40 + 14) = v50;
      v5 = v55;
      _os_log_impl(&dword_1D8CEC000, v38, v59, "Failed to mark episode asset for purgeability (%s): %s", v40, 0x16u);
      v51 = v60;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v51, -1, -1);
      MEMORY[0x1DA72CB90](v40, -1, -1);
    }

    else
    {

      v52 = v9;
      v45 = *v63;
      (*v63)(v52, v36);
    }

    v6 = v36;
    v16 = v61;
    goto LABEL_17;
  }

LABEL_18:
  v53 = *MEMORY[0x1E69E9840];
}

void markForPurgeability(_:)()
{
  v0 = sub_1D9176C2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  sub_1D8F4E4E8(0x8000);
}

void sub_1D8E5F1E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a3;
  v18[4] = a7;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D8CF5F60;
  v18[3] = a8;
  v16 = _Block_copy(v18);

  v17 = a3;

  [v17 performBlock_];
  _Block_release(v16);
}

void sub_1D8E5F2E4(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v10, a5);
  v7 = v10[0];
  v6 = v10[1];
  v8 = v10[2];
  v9 = v11;
  v12 = 0;
  a1(v10);

  sub_1D8E5F458(v7, v6, v8, v9, 0);
}

void sub_1D8E5F3B0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);
  sub_1D8D99898(v6, 0);
}

void sub_1D8E5F458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t MediaCacheDeleteRemovalProcessor.isRunning.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t MediaCacheDeleteRemovalProcessorDataSource.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MediaCacheDeleteRemovalProcessorDataSource.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MediaCacheDeleteRemovalProcessorDataSource.observedEpisodeKeys.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

void __swiftcall MediaCacheDeleteRemovalProcessorDataSource.episodesPredicate()(NSPredicate *__return_ptr retstr)
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 32);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v13 = [v12 episodeLimitForKey_];
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D918C190;
  *(v14 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  v15 = sub_1D8FCD114(v13);
  v16 = [v15 NOT];

  *(v14 + 40) = v16;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v17 = sub_1D91785DC();

  [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D8E5F864(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1D8E358F8(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1D91792DC();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1D8E358F8(v14 > 1, v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 24 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    *(v15 + 48) = 2;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1D8D9B144(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
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

uint64_t MediaCacheDeleteRemovalProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B48, &unk_1D918C250);
  v44 = *(v37 - 8);
  v3 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B50, &unk_1D918C260);
  v43 = *(v39 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v35 - v10;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B68, &qword_1D918C488);
  v42 = *(v40 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v35 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B58, &unk_1D918C490);
  v41 = *(v38 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v16 = &v35 - v15;
  v18 = *v1;
  v17 = *(v1 + 8);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = sub_1D8E6036C;
  v20[4] = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = v18;
  v25 = sub_1D9177A5C();
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  v45 = v25;
  v46 = v17;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270);
  sub_1D8D02DF0();
  v27 = v35;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A10, &qword_1ECAB4B48, &unk_1D918C250);
  v29 = v36;
  v28 = v37;
  sub_1D9177CEC();

  (*(v44 + 8))(v27, v28);
  sub_1D8D08A50(v8, &qword_1ECAB4D70, &unk_1D918BCE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
  sub_1D8CF48EC(&qword_1ECAB0430, &qword_1ECAB4B50, &unk_1D918C260);
  v30 = v39;
  sub_1D9177B9C();
  (*(v43 + 8))(v29, v30);
  v31 = v40;
  sub_1D917766C();
  (*(v42 + 8))(v13, v31);
  sub_1D8CF48EC(&qword_1ECAB0748, &qword_1ECAB4B58, &unk_1D918C490);
  v32 = v38;
  v33 = sub_1D9177B1C();
  (*(v41 + 8))(v16, v32);
  return v33;
}

void sub_1D8E60094(uint64_t a1@<X1>, char **a2@<X8>)
{
  v4 = sub_1D8E5F864(a1);
  v5 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v7 = Array<A>.episodeCoreDataPredicate()(v4);

  [v6 setPredicate_];

  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_24:
    if (sub_1D917935C())
    {
      sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
      v20 = sub_1D91785DC();
      [v6 setSortDescriptors_];
    }
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v8 = v5;
  v5 = sub_1D917908C();

  if (!v8)
  {
    if (v5 >> 62)
    {
      v6 = sub_1D917935C();
      if (v6)
      {
LABEL_5:
        v9 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = v9;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x1DA72AA90](v10, v5);
              v9 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_23;
              }

              v11 = *(v5 + 8 * v10 + 32);
              v9 = (v10 + 1);
              if (__OFADD__(v10, 1))
              {
LABEL_22:
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            v12 = v11;
            v13 = [v12 assetURL];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v9 == v6)
            {
              goto LABEL_28;
            }
          }

          v22 = a2;
          v14 = v13;
          v15 = sub_1D917820C();
          v21 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_1D8D4241C(0, *(v23 + 2) + 1, 1, v23);
          }

          v18 = *(v23 + 2);
          v17 = *(v23 + 3);
          if (v18 >= v17 >> 1)
          {
            v23 = sub_1D8D4241C((v17 > 1), v18 + 1, 1, v23);
          }

          *(v23 + 2) = v18 + 1;
          v19 = &v23[16 * v18];
          a2 = v22;
          *(v19 + 4) = v15;
          *(v19 + 5) = v21;
        }

        while (v9 != v6);
        goto LABEL_28;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
LABEL_28:

    *a2 = v23;
  }
}

void sub_1D8E60388(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v26 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v26 - v13;
  v14 = *a1;
  v31 = *(*a1 + 16);
  if (v31)
  {
    v15 = 0;
    v30 = (v12 + 48);
    v28 = v12;
    v16 = (v12 + 32);
    v17 = (v14 + 40);
    v18 = MEMORY[0x1E69E7CC0];
    v27 = v10;
    while (v15 < *(v14 + 16))
    {
      v19 = *(v17 - 1);
      v20 = *v17;

      sub_1D9176BFC();

      if ((*v30)(v6, 1, v7) == 1)
      {
        sub_1D8D08A50(v6, &unk_1ECAB5910, &qword_1D9188C90);
      }

      else
      {
        v21 = *v16;
        v22 = v29;
        (*v16)(v29, v6, v7);
        v21(v10, v22, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D8ECC9D4(0, v18[2] + 1, 1, v18);
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v18 = sub_1D8ECC9D4(v23 > 1, v24 + 1, 1, v18);
        }

        v18[2] = v24 + 1;
        v25 = v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24;
        v10 = v27;
        v21(v25, v27, v7);
      }

      ++v15;
      v17 += 2;
      if (v31 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_13:
    *v26 = v18;
  }
}

void sub_1D8E6065C(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*a1 + 16);
  if (v8)
  {
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = *a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);
    do
    {
      v10(v7, v12, v2, v5);
      sub_1D8E6077C(v7);
      (*(v9 - 8))(v7, v2);
      v12 += v13;
      --v8;
    }

    while (v8);
  }
}

void sub_1D8E6077C(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  sub_1D8F4E764();
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F20);
  (*(v3 + 16))(v7, a1, v2);
  v9 = sub_1D917741C();
  v10 = sub_1D9178CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    sub_1D8E3E9A0();
    v13 = sub_1D9179A4C();
    v15 = v14;
    (*(v3 + 8))(v7, v2);
    v16 = sub_1D8CFA924(v13, v15, &v18);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Removed purgeability for '%s'", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1D8E60EB0()
{
  v0 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  sub_1D91788AC();
  return (*(v5 + 8))(v8, v4);
}

id CacheDeleteNotifications.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CacheDeleteNotifications.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CacheDeleteNotifications(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D8E61404()
{
  v1 = *v0;
  sub_1D8D94C08();
}

uint64_t _s18PodcastsFoundation24CacheDeleteNotificationsC0cD5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v36 = *(v4 - 8);
  v5 = v36[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v33 - v9;
  v10 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C28, &unk_1D918C6D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - v16;
  v19 = &v33 + *(v18 + 56) - v16;
  sub_1D8E62200(a1, &v33 - v16);
  sub_1D8E62200(a2, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v21 = *(*(v20 - 8) + 48);
  if (v21(v17, 1, v20) != 1)
  {
    sub_1D8E62200(v17, v13);
    v23 = *(v13 + 1);
    v34 = *v13;
    v24 = *(v20 + 48);
    if (v21(v19, 1, v20) != 1)
    {
      v25 = *(v19 + 1);
      v33 = *v19;
      v26 = v36[4];
      v26(v35, &v13[v24], v4);
      v26(v7, &v19[v24], v4);
      if (v34 == v33 && v23 == v25)
      {
      }

      else
      {
        v28 = sub_1D9179ACC();

        if ((v28 & 1) == 0)
        {
          v29 = v36[1];
          v29(v7, v4);
          v29(v35, v4);
          sub_1D8E62264(v17);
          goto LABEL_7;
        }
      }

      v30 = v35;
      v22 = sub_1D9176DEC();
      v31 = v36[1];
      v31(v7, v4);
      v31(v30, v4);
      sub_1D8E62264(v17);
      return v22 & 1;
    }

    (v36[1])(&v13[v24], v4);

LABEL_6:
    sub_1D8D08A50(v17, &qword_1ECAB4C28, &unk_1D918C6D0);
LABEL_7:
    v22 = 0;
    return v22 & 1;
  }

  if (v21(v19, 1, v20) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8E62264(v17);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s18PodcastsFoundation24CacheDeleteNotificationsC0cD5EventO1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176E3C();
  v57 = *(v4 - 8);
  v5 = v57[8];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v50 - v9;
  v10 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v50 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C28, &unk_1D918C6D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v50 - v22;
  v25 = (&v50 + *(v24 + 56) - v22);
  v55 = a1;
  sub_1D8E62200(a1, &v50 - v22);
  v56 = a2;
  sub_1D8E62200(a2, v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v27 = *(*(v26 - 8) + 48);
  if (v27(v23, 1, v26) == 1)
  {
    if (v27(v25, 1, v26) == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v52 = v7;
    v28 = v4;
    sub_1D8E62200(v23, v19);
    v29 = v19[1];
    v51 = *v19;
    v53 = v29;
    v30 = *(v26 + 48);
    if (v27(v25, 1, v26) != 1)
    {
      v37 = *v25;
      v38 = v25[1];
      v39 = v57[4];
      v40 = v19 + v30;
      v41 = v54;
      v39(v54, v40, v28);
      v42 = v28;
      v43 = v52;
      v39(v52, v25 + v30, v42);
      v44 = v51 == v37 && v53 == v38;
      if (v44 || (sub_1D9179ACC() & 1) != 0)
      {

        if (sub_1D9176DEC())
        {
          v45 = v43;
          v46 = v57[1];
          v46(v45, v42);
          v46(v41, v42);
LABEL_18:
          sub_1D8E62264(v23);
          v36 = 0;
          return v36 & 1;
        }

        v36 = sub_1D9176DAC();
      }

      else
      {
        v36 = sub_1D9179ACC();
      }

      v47 = v43;
      v48 = v57[1];
      v48(v47, v42);
      v48(v41, v42);
      sub_1D8E62264(v23);
      return v36 & 1;
    }

    v31 = v19 + v30;
    v4 = v28;
    (v57[1])(v31, v28);
  }

  sub_1D8E62200(v55, v16);
  v32 = 1;
  if (v27(v16, 1, v26) != 1)
  {
    v33 = *(v16 + 1);

    (v57[1])(&v16[*(v26 + 48)], v4);
    v32 = 0;
  }

  sub_1D8E62200(v56, v13);
  v34 = 1;
  if (v27(v13, 1, v26) != 1)
  {
    v35 = *(v13 + 1);

    (v57[1])(&v13[*(v26 + 48)], v4);
    v34 = 0;
  }

  v36 = v32 < v34;
  sub_1D8D08A50(v23, &qword_1ECAB4C28, &unk_1D918C6D0);
  return v36 & 1;
}

uint64_t sub_1D8E61CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA0, &qword_1D918C568);
  v35 = *(v21 - 8);
  v36 = v21;
  v22 = *(v35 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v34 = &v33 - v24;
  v37 = v17;
  v38 = v16;
  (*(v17 + 16))(v20, v4 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_continuation, v16, v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4BA8, &qword_1D918C570);
  v26 = *(v25 + 48);
  *v15 = a1;
  *(v15 + 1) = a2;
  sub_1D8D088B4(a3, v11, &qword_1ECAB75C0, &unk_1D9188A50);
  v27 = sub_1D9176E3C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v11, 1, v27) == 1)
  {

    sub_1D9176E0C();
    if (v29(v11, 1, v27) != 1)
    {
      sub_1D8D08A50(v11, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v28 + 32))(&v15[v26], v11, v27);
  }

  (*(*(v25 - 8) + 56))(v15, 0, 1, v25);
  v30 = v34;
  v31 = v38;
  sub_1D91788AC();
  (*(v37 + 8))(v20, v31);
  return (*(v35 + 8))(v30, v36);
}

unint64_t sub_1D8E62090()
{
  result = qword_1ECAB4BB0;
  if (!qword_1ECAB4BB0)
  {
    type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4BB0);
  }

  return result;
}

unint64_t sub_1D8E620EC()
{
  result = qword_1ECAB4BB8;
  if (!qword_1ECAB4BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4BC0, &qword_1D918C5E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4BB8);
  }

  return result;
}

uint64_t sub_1D8E62200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E62264(uint64_t a1)
{
  v2 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CacheDeleteUrgency.from(purgeability:)(uint64_t a1)
{
  if ((a1 & 0x100000000) != 0)
  {
    return 0;
  }

  if (a1 > 2047)
  {
    if (a1 == 2048)
    {
      return 3;
    }

    if (a1 == 0x8000)
    {
      return 4;
    }
  }

  else
  {
    if (a1 == 512)
    {
      return 1;
    }

    if (a1 == 1024)
    {
      return 2;
    }
  }

  result = sub_1D91796DC();
  __break(1u);
  return result;
}

uint64_t CacheDeleteUrgency.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  v3 = 1751607656;
  if (a1 != 3)
  {
    v3 = 0xD000000000000015;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 7827308;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8E623F8(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701736302;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v7 = 7827308;
    }

    else
    {
      v7 = 1701736302;
    }

    if (v3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1751607656;
    if (v3 != 3)
    {
      v6 = 0xD000000000000015;
      v5 = 0x80000001D91C7950;
    }

    if (v3 == 2)
    {
      v7 = 0x6D756964656DLL;
    }

    else
    {
      v7 = v6;
    }

    if (v3 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }
  }

  v9 = 0xE400000000000000;
  v10 = 0x6D756964656DLL;
  v11 = 1751607656;
  v12 = 0x80000001D91C7950;
  if (v4 == 3)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xD000000000000015;
  }

  if (v4 == 2)
  {
    v12 = 0xE600000000000000;
  }

  else
  {
    v10 = v11;
  }

  if (*a2)
  {
    v2 = 7827308;
    v9 = 0xE300000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v10;
  }

  if (*a2 <= 1u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v12;
  }

  if (v7 == v13 && v8 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  return v15 & 1;
}

uint64_t sub_1D8E6254C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E62618()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8E626D0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8E62798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation18CacheDeleteUrgencyO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8E627C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (v2 != 3)
  {
    v8 = 0xD000000000000015;
    v7 = 0x80000001D91C7950;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7827308;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t _s18PodcastsFoundation18CacheDeleteUrgencyO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8E628A0()
{
  result = qword_1ECAB4C30;
  if (!qword_1ECAB4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C30);
  }

  return result;
}

uint64_t sub_1D8E62904(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1D8D4214C(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v21;
    v9 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v9) = 1;
    }

    v10 = 4 << v9;
    v11 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = v4;
    }

    v19 = v10;
    v20 = v11;
    v12 = 15;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v5 = sub_1D917834C();
        goto LABEL_5;
      }

      v14 = v12;
      if ((v12 & 0xC) == v10)
      {
        v14 = sub_1D8FF6C10(v12, a1, a2);
        v10 = v19;
      }

      if (v20 <= v14 >> 16)
      {
        goto LABEL_33;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1D917837C();
      }

      else
      {
        if (a2 & 0x2000000000000000 | a1 & 0x1000000000000000)
        {
          goto LABEL_23;
        }

        sub_1D917957C();
      }

      v10 = v19;
LABEL_23:
      v16 = *(v21 + 16);
      v15 = *(v21 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8D4214C(v15 > 1, v16 + 1, 1);
        v10 = v19;
      }

      *(v21 + 16) = v16 + 1;
      *(v21 + 8 * v16 + 32) = 1;
      if ((v12 & 0xC) == v10)
      {
        v18 = sub_1D8FF6C10(v12, a1, a2);
        v10 = v19;
        v12 = v18;
        v4 = v5;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_12:
          v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_13;
        }
      }

      else
      {
        v4 = v5;
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_12;
        }
      }

      if (v20 <= v12 >> 16)
      {
        goto LABEL_34;
      }

      v17 = sub_1D917835C();
      v10 = v19;
      v12 = v17;
LABEL_13:
      ++v8;
      if (v13 == v4)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t String.inMemorySize.getter(unint64_t a1, unint64_t a2)
{
  result = sub_1D8E62904(a1, a2);
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 32;
    do
    {
      v6 = *(result + v5);
      v7 = __OFADD__(v4, v6);
      v4 += v6;
      if (v7)
      {
        __break(1u);
        return result;
      }

      v5 += 8;
      --v3;
    }

    while (v3);

    if ((v4 & 0x8000000000000000) == 0)
    {
      return v4;
    }

    __break(1u);
  }

  return 0;
}

uint64_t Data.inMemorySize.getter(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return 0;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    result = v3 - v4;
    if (!__OFSUB__(v3, v4))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v2)
  {
    return BYTE6(a2);
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  result = HIDWORD(result) - result;
LABEL_10:
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

void sub_1D8E62C14()
{
  v1 = *v0;
  v2 = v0[1] >> 62;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v4 = v1 + 16;
    v1 = *(v1 + 16);
    v3 = *(v4 + 8);
    v5 = v3 - v1;
    if (!__OFSUB__(v3, v1))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v6 = __OFSUB__(HIDWORD(v1), v1);
    v7 = HIDWORD(v1) - v1;
    if (v6)
    {
      goto LABEL_14;
    }

    v5 = v7;
LABEL_10:
    if ((v5 & 0x8000000000000000) == 0)
    {
      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t Array<A>.inMemorySize.getter()
{
  sub_1D91786FC();
  swift_getWitnessTable();
  sub_1D917849C();
  return v1;
}

uint64_t sub_1D8E62D2C(void *a1)
{
  result = (*(*(v1 + 24) + 8))(*(v1 + 16), *(v1 + 24));
  if (__CFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t sub_1D8E62D90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return Array<A>.inMemorySize.getter();
}

uint64_t Dictionary<>.inMemorySize.getter()
{
  sub_1D91780DC();
  swift_getWitnessTable();
  sub_1D917849C();
  return v1;
}

uint64_t sub_1D8E62E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(swift_getTupleTypeMetadata2() + 48);
  result = (*(a6 + 8))(a4, a6);
  if (__CFADD__(*a1, result))
  {
    __break(1u);
  }

  else
  {
    *a1 += result;
  }

  return result;
}

uint64_t sub_1D8E62F00(void *a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  return Dictionary<>.inMemorySize.getter();
}

uint64_t sub_1D8E62F30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D8E62F88();
  }

  return result;
}

void sub_1D8E62F88()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 112);
  type metadata accessor for InMemoryAssetCache.SizedStore();
  sub_1D8D056BC(sub_1D8E639D0, v0, v1);
}

uint64_t InMemoryAssetCache.currentSize.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v5 = *(*v0 + 80);
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  type metadata accessor for InMemoryAssetCache.SizedStore();
  sub_1D8D056BC(sub_1D8E638C8, &v4, v2);
  return v10;
}

uint64_t InMemoryAssetCache.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t InMemoryAssetCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E631A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  return sub_1D8DB07EC(a1, a2, a3);
}

uint64_t InMemoryAssetCache.containsAsset(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = a1;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  type metadata accessor for InMemoryAssetCache.SizedStore();
  sub_1D8D056BC(sub_1D8E638D4, &v5, v3);
  return v12;
}

uint64_t sub_1D8E632F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v23 = a2;
  v25 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v15 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v23 - v16;
  v18 = *(a1 + 16);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v19 = type metadata accessor for InMemoryAssetCache.Record();
  v26 = nullsub_1(v18, AssociatedTypeWitness, v19, a7);
  v20 = *(a5 + 16);

  v20(a3, a5);
  sub_1D917809C();
  swift_getWitnessTable();
  v21 = *(a7 + 8);
  LOBYTE(a4) = sub_1D917850C();
  (*(v24 + 8))(v17, AssociatedTypeWitness);

  *v25 = a4 & 1;
  return result;
}

void InMemoryAssetCache.invalidate(at:)(uint64_t a1)
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
  sub_1D8D056BC(sub_1D8E638F8, &v4, v3);
}

uint64_t sub_1D8E635C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v24 - v16;
  (*(a5 + 16))(a3, a5, v15);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  type metadata accessor for InMemoryAssetCache.Record();
  v18 = v25;
  sub_1D91780DC();
  sub_1D917807C();
  (*(v13 + 8))(v17, AssociatedTypeWitness);
  result = v31;
  if (v31)
  {
    v20 = *(v31 + *(*v31 + 128));

    v21 = *(v18 + 8);
    v22 = v21 >= v20;
    v23 = v21 - v20;
    if (v22)
    {
      *(v18 + 8) = v23;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D8E637B0()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  v1 = *(*v0 + 136);
  v2 = sub_1D9176E3C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D8E63874()
{
  v0 = *sub_1D8E637B0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E63948(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8E63990(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D8E639D0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 112);
  return sub_1D8E63A60(a1);
}

uint64_t sub_1D8E63A60(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for InMemoryAssetCache.Record();
  sub_1D91780DC();
  result = sub_1D91780CC();
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1D8E63B18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[9];
  v9 = v0[8];
  return sub_1D8E62F30();
}

uint64_t SHSignature.inMemorySize.getter()
{
  v1 = [v0 dataRepresentation];
  v2 = sub_1D9176C8C();
  v4 = v3;

  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      sub_1D8D7567C(v2, v4);
      return BYTE6(v4);
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  sub_1D8D7567C(v2, v5);
  result = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    result = sub_1D8D7567C(v2, v5);
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      __break(1u);
      return result;
    }

    result = HIDWORD(v2) - v2;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_12:
  sub_1D8D7567C(v2, v5);
  return 0;
}

PodcastsFoundation::FileFormat_optional __swiftcall FileFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FileFormat.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 6778480;
    v7 = 1734701162;
    if (v1 != 2)
    {
      v7 = 1667851624;
    }

    if (*v0)
    {
      v6 = 6778986;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x69736D617A616873;
    v3 = 1819112564;
    if (v1 != 7)
    {
      v3 = 7105912;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 7633012;
    if (v1 != 4)
    {
      v4 = 0x7473696C70;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8E63E00()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAD60();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E63E50()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAD60();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E63EA0@<X0>(uint64_t *a1@<X8>)
{
  result = FileFormat.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t NetworkTaskPriority.description.getter()
{
  v1 = 0x756F72676B636142;
  v2 = 0x74696E4972657355;
  if (*v0 != 2)
  {
    v2 = 0x65746E4972657355;
  }

  if (*v0)
  {
    v1 = 0x7974696C697455;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t NetworkTaskPriority.debugDescription.getter()
{
  v1 = *v0;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000014, 0x80000001D91CA7A0);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x1DA7298F0](0x74696E4972657355, 0xED00006465746169);
    }

    else
    {
      MEMORY[0x1DA7298F0](0x65746E4972657355, 0xEF65766974636172);
    }
  }

  else if (v1)
  {
    MEMORY[0x1DA7298F0](0x7974696C697455, 0xE700000000000000);
  }

  else
  {
    MEMORY[0x1DA7298F0](0x756F72676B636142, 0xEA0000000000646ELL);
  }

  MEMORY[0x1DA7298F0](8236, 0xE200000000000000);
  sub_1D9178A7C();
  MEMORY[0x1DA7298F0](62, 0xE100000000000000);
  return 0;
}

uint64_t static NetworkTaskPriority.dispatchQueuePriority()@<X0>(char *a1@<X8>)
{
  result = qos_class_self();
  if (result <= 20)
  {
    if (result == 9)
    {
      v3 = 0;
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (result == 21)
  {
    goto LABEL_8;
  }

  if (result == 33)
  {
    v3 = 3;
    goto LABEL_9;
  }

  if (result != 25)
  {
LABEL_8:
    v3 = 1;
    goto LABEL_9;
  }

  v3 = 2;
LABEL_9:
  *a1 = v3;
  return result;
}

PodcastsFoundation::NetworkTaskPriority_optional __swiftcall NetworkTaskPriority.init(rawValue:)(Swift::Float rawValue)
{
  if (rawValue == 0.4)
  {
    *v1 = 0;
  }

  else if (rawValue == 0.6)
  {
    *v1 = 1;
  }

  else
  {
    if (rawValue == 1.0)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    if (rawValue == 0.8)
    {
      v3 = 2;
    }

    else
    {
      v3 = v2;
    }

    *v1 = v3;
  }

  return result;
}

float sub_1D8E642BC@<S0>(float *a1@<X8>)
{
  result = flt_1D918CD50[*v1];
  *a1 = result;
  return result;
}

uint64_t sub_1D8E64394()
{
  v1 = 0x756F72676B636142;
  v2 = 0x74696E4972657355;
  if (*v0 != 2)
  {
    v2 = 0x65746E4972657355;
  }

  if (*v0)
  {
    v1 = 0x7974696C697455;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D8E644E4()
{
  result = qword_1ECAB4C40;
  if (!qword_1ECAB4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C40);
  }

  return result;
}

unint64_t sub_1D8E6453C()
{
  result = qword_1ECAB4C48;
  if (!qword_1ECAB4C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4C50, &qword_1D918CB18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C48);
  }

  return result;
}

unint64_t sub_1D8E645A4()
{
  result = qword_1ECAB4C58;
  if (!qword_1ECAB4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C58);
  }

  return result;
}

unint64_t sub_1D8E646BC()
{
  result = qword_1ECAB1E30;
  if (!qword_1ECAB1E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E30);
  }

  return result;
}

unint64_t sub_1D8E64710()
{
  result = qword_1ECAB2B48;
  if (!qword_1ECAB2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B48);
  }

  return result;
}

uint64_t DiskAssetCache<>.store(asset:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v54 = a2;
  v59 = *v4;
  v7 = v59;
  v63 = sub_1D9177E0C();
  v65 = *(v63 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D9177E9C();
  v62 = *(v64 - 8);
  v10 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v7;
  v12 = *(v7 + 80);
  v67 = *(v12 - 8);
  v55 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v47 - v14;
  v68 = *(v7 + 88);
  v15 = *(v68 - 8);
  v53 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v50 = &v47 - v17;
  v66 = sub_1D9176C2C();
  v48 = *(v66 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v58 = &v47 - v21;
  v23 = a3;
  v24 = v54;
  FileBasedAssetLocation.fileURL(in:)(v4 + qword_1EDCDE890, v12, v23, &v47 - v21);
  v25 = a1;
  v26 = a1;
  v27 = v24;
  v28 = v24;
  v29 = *(v4 + qword_1EDCD6AC8);
  InMemoryAssetCache.store(asset:at:)(v26, v27);
  v57 = *(v4 + qword_1EDCD6AC0);
  (*(v15 + 16))(v18, v25, v68);
  v30 = v67;
  v31 = v52;
  (*(v67 + 16))(v52, v28, v12);
  v32 = v48;
  (*(v48 + 16))(&v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v66);
  v33 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v34 = (v53 + *(v30 + 80) + v33) & ~*(v30 + 80);
  v35 = v32;
  v36 = (v55 + *(v32 + 80) + v34) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = v56;
  v39 = v68;
  *(v37 + 16) = v12;
  *(v37 + 24) = v39;
  *(v37 + 32) = v51;
  *(v37 + 40) = *(v59 + 96);
  *(v37 + 56) = *(v38 + 112);
  *(v37 + 64) = v4;
  (*(v15 + 32))(v37 + v33, v50);
  (*(v67 + 32))(v37 + v34, v31, v12);
  v40 = v35;
  v41 = v66;
  (*(v35 + 32))(v37 + v36, v49, v66);
  aBlock[4] = sub_1D8E65778;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_5;
  v42 = _Block_copy(aBlock);

  v43 = v60;
  sub_1D9177E4C();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBB68(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v44 = v61;
  v45 = v63;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v43, v44, v42);
  _Block_release(v42);
  (*(v65 + 8))(v44, v45);
  (*(v62 + 8))(v43, v64);
  (*(v40 + 8))(v58, v41);
}

uint64_t DiskAssetCache<>.invalidate(at:)(void *a1, uint64_t a2)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v5 = *(*v2 + 80);
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v54 = &v50[-v7];
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50[-v13];
  v52 = a2;
  v53 = a1;
  FileBasedAssetLocation.fileURL(in:)(v2 + qword_1EDCDE890, v5, a2, &v50[-v13]);
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  sub_1D9176BCC();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v57 = v8;
    v19 = [v15 defaultManager];
    v20 = sub_1D9176B1C();
    v59[0] = 0;
    v21 = [v19 removeItemAtURL:v20 error:v59];

    if (v21)
    {
      v22 = *(v9 + 8);
      v23 = v59[0];
      result = v22(v14, v57);
    }

    else
    {
      v25 = v59[0];
      v26 = sub_1D9176A6C();

      v58 = v26;
      swift_willThrow();
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v27 = sub_1D917744C();
      __swift_project_value_buffer(v27, qword_1EDCD5E70);
      v29 = v54;
      v28 = v55;
      (*(v55 + 16))(v54, v53, v5);
      v31 = v56;
      v30 = v57;
      (*(v9 + 16))(v56, v14, v57);
      v32 = sub_1D917741C();
      v33 = sub_1D9178CFC();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v59[0] = v53;
        *v34 = 136315394;
        v35 = *(v52 + 16);
        v51 = v33;
        v36 = v35(v5);
        v38 = v37;
        (*(v28 + 8))(v29, v5);
        v39 = sub_1D8CFA924(v36, v38, v59);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2080;
        sub_1D8CFBB68(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
        v40 = v56;
        v41 = sub_1D9179A4C();
        v43 = v42;
        v44 = *(v9 + 8);
        v44(v40, v57);
        v45 = sub_1D8CFA924(v41, v43, v59);

        *(v34 + 14) = v45;
        v30 = v57;
        _os_log_impl(&dword_1D8CEC000, v32, v51, "Error deleting file for key %s, url: %s", v34, 0x16u);
        v46 = v53;
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v46, -1, -1);
        MEMORY[0x1DA72CB90](v34, -1, -1);
      }

      else
      {

        v47 = v28;
        v44 = *(v9 + 8);
        v44(v31, v30);
        (*(v47 + 8))(v29, v5);
      }

      sub_1D8E66024();
      swift_allocError();
      *v48 = 1;
      swift_willThrow();

      result = (v44)(v14, v30);
    }
  }

  else
  {
    result = (*(v9 + 8))(v14, v8);
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DiskAssetCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t DiskAssetCache.cacheDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDCDE890;
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DiskAssetCache.deinit()
{
  v1 = qword_1EDCDE890;
  v2 = sub_1D9176C2C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EDCD6AC8);

  return v0;
}

uint64_t DiskAssetCache.__deallocating_deinit()
{
  DiskAssetCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1D8E656EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D8E658A0(a2, a3, a4, a5);
  v7 = *(a1 + qword_1EDCD6AC8);
  InMemoryAssetCache.invalidate(at:)(a3);
}

void sub_1D8E65778()
{
  v1 = v0[4];
  v2 = (*(*(v0[3] - 8) + 80) + 72) & ~*(*(v0[3] - 8) + 80);
  v3 = *(v0[2] - 8);
  v4 = (v2 + *(*(v0[3] - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D9176C2C() - 8);
  v7 = v0[8];
  v8 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_1D8E656EC(v7, v0 + v2, v0 + v4, v8, v1);
}

uint64_t sub_1D8E658A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a4;
  v30 = a2;
  v28 = a1;
  v6 = *(*v4 + 80);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v27 = &v23 - v8;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v25 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1D9176B5C();
  v16 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v18 = [v16 fileExistsAtPath_];

  if ((v18 & 1) == 0)
  {
    NSFileManager.createDirectory(url:createIntermediates:)(v15, 1);
  }

  v24 = *(v10 + 8);
  v24(v15, v9);
  v19 = (*(v29 + 32))(v28, v6);
  v21 = v20;
  sub_1D9176CAC();
  if (*(v5 + qword_1EDCDE888 + 4) != 1)
  {
    sub_1D8F4E4E8(*(v5 + qword_1EDCDE888));
  }

  return sub_1D8D7567C(v19, v21);
}

uint64_t sub_1D8E65FEC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_1D8E66024()
{
  result = qword_1ECAB4C68;
  if (!qword_1ECAB4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C68);
  }

  return result;
}

unint64_t sub_1D8E6607C()
{
  result = qword_1ECAB4C70;
  if (!qword_1ECAB4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C70);
  }

  return result;
}

uint64_t sub_1D8E66120(uint64_t a1)
{
  v2 = sub_1D9177FDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D755D8(&qword_1EDCD5C50, MEMORY[0x1E69666B0]);
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

uint64_t MediaStreamedAssetCache.pathExtension.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
  v2 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);

  return v1;
}

id sub_1D8E66580(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1 + *a3, v5, v8);
  v11 = sub_1D9176B1C();
  (*(v6 + 8))(v10, v5);

  return v11;
}

uint64_t sub_1D8E66698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D9176C2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id MediaStreamedAssetCache.__allocating_init(sourceURL:)(char *a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = sub_1D9176B1C();
  v10 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v11 = sub_1D9176B1C();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v13 = [v8 initWithSourceURL:v9 cacheLocation:v11 purgeability:512];

  v12(a1, v3);
  return v13;
}

id MediaStreamedAssetCache.init(sourceURL:)(char *a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9176B1C();
  v10 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v11 = sub_1D9176B1C();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = [v2 initWithSourceURL:v9 cacheLocation:v11 purgeability:512];

  v12(a1, v4);
  return v13;
}

char *MediaStreamedAssetCache.init(sourceURL:cacheLocation:purgeability:)(char *a1, char *a2, int a3)
{
  v4 = v3;
  LODWORD(v110) = a3;
  v115[2] = *MEMORY[0x1E69E9840];
  v7 = v4;
  ObjectType = swift_getObjectType();
  v103 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v8 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177FCC();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D9177FDC();
  v97 = *(v98 - 8);
  v13 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D917825C();
  v106 = *(v15 - 8);
  v107 = v15;
  v16 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v93 - v20;
  v22 = sub_1D9176C2C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v101 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v102 = &v93 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v113 = &v93 - v29;
  v94 = sub_1D9176ABC();
  v31 = v30;
  v112 = a1;
  v115[0] = sub_1D9176ACC();
  v115[1] = v32;
  sub_1D8D447DC();
  sub_1D917924C();
  v34 = v33;

  if (v34)
  {

    sub_1D9176BFC();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    (*(v23 + 56))(v21, 1, 1, v22);
  }

  v111 = a2;
  v35 = *(v23 + 48);
  v36 = v35(v21, 1, v22);
  v37 = v22;
  v109 = v23;
  if (v36 == 1)
  {
    v38 = *(v23 + 16);
    v38(v113, v112, v22);
    if (v35(v21, 1, v22) != 1)
    {
      sub_1D8E677CC(v21);
    }

    v39 = v113;
    v40 = v37;
  }

  else
  {
    v40 = v22;
    v39 = v113;
    (*(v23 + 32))(v113, v21, v40);
    v38 = *(v23 + 16);
  }

  v41 = OBJC_IVAR___PFMediaStreamedAssetCache_sourceURL;
  v38(&v7[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURL], v39, v40);
  v42 = sub_1D9176ABC();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {

    v46 = sub_1D9176ABC();
    v31 = v47;
  }

  else
  {
    v46 = v94;
  }

  v48 = &v7[OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension];
  *v48 = v46;
  v48[1] = v31;
  v49 = OBJC_IVAR___PFMediaStreamedAssetCache_cacheLocation;
  v50 = v111;
  v38(&v7[OBJC_IVAR___PFMediaStreamedAssetCache_cacheLocation], v111, v37);
  *&v7[OBJC_IVAR___PFMediaStreamedAssetCache_purgeability] = v110;
  sub_1D9176ACC();
  v51 = v105;
  sub_1D917824C();
  v110 = sub_1D917821C();
  v53 = v52;

  v54 = v51;
  v55 = v53;
  (*(v106 + 8))(v54, v107);
  if (v53 >> 60 == 15)
  {
    v56 = *(v109 + 8);
    v56(v50, v37);
    v56(v112, v37);
    v56(v39, v37);
    v56(&v7[v41], v37);
    v57 = v48[1];

    v56(&v7[v49], v37);
    v58 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x30);
    v59 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x34);
    swift_deallocPartialClassInstance();
    v60 = 0;
  }

  else
  {
    sub_1D8D755D8(&unk_1EDCD5C58, MEMORY[0x1E6966688]);
    v61 = v96;
    v62 = v100;
    sub_1D9177F9C();
    v63 = v110;
    sub_1D8D752C4(v110, v53);
    sub_1D8D75318(v63, v53);
    sub_1D8D75668(v63, v53);
    v64 = v95;
    sub_1D9177F8C();
    (*(v99 + 8))(v61, v62);
    v65 = sub_1D8E66120(v64);
    v107 = 0;
    (*(v97 + 8))(v64, v98);
    v115[0] = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v66 = v37;
    sub_1D8D72B0C();
    v67 = sub_1D917817C();
    v69 = v68;

    v70 = &v7[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5];
    *v70 = v67;
    v70[1] = v69;
    v71 = v104;
    swift_storeEnumTagMultiPayload();
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C78, &qword_1D918CFC0);
    v73 = *(v72 + 52);
    v74 = (*(v72 + 48) + 3) & 0x1FFFFFFFCLL;
    v75 = swift_allocObject();
    *(v75 + ((*(*v75 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_1D8E6A1B8(v71, v75 + *(*v75 + *MEMORY[0x1E69E6B68] + 16));
    *&v7[OBJC_IVAR___PFMediaStreamedAssetCache_phase] = v75;
    v114.receiver = v7;
    v114.super_class = ObjectType;
    v60 = objc_msgSendSuper2(&v114, sel_init);
    v76 = [objc_opt_self() defaultManager];
    v77 = *&v60[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5];
    v78 = *&v60[OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5 + 8];
    v79 = v101;
    sub_1D9176B3C();
    v80 = *&v60[OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension];
    v81 = *&v60[OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8];
    v82 = v102;
    sub_1D9176B4C();
    v83 = *(v109 + 8);
    v83(v79, v66);
    sub_1D9176BCC();
    v84 = v82;
    v85 = v66;
    v83(v84, v66);
    LOBYTE(v115[0]) = 0;
    v86 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    LODWORD(v79) = [v76 fileExistsAtPath:v86 isDirectory:v115];

    if (v79)
    {
      v88 = *&v60[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
      MEMORY[0x1EEE9AC00](v87);
      *(&v93 - 2) = v60;
      v89 = *(*v88 + *MEMORY[0x1E69E6B68] + 16);
      v90 = (*(*v88 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v88 + v90));
      sub_1D8E6A21C(v88 + v89);
      os_unfair_lock_unlock((v88 + v90));
      sub_1D8D75668(v110, v55);
      v83(v111, v85);
      v83(v112, v85);
      v83(v113, v85);
    }

    else
    {
      sub_1D8D75668(v110, v55);
      v83(v111, v66);
      v83(v112, v66);
      v83(v113, v66);
    }
  }

  v91 = *MEMORY[0x1E69E9840];
  return v60;
}

uint64_t MediaStreamedAssetCache.persistentFileURL()()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5);
  v7 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5 + 8);
  sub_1D9176B3C();
  v8 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
  v9 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);
  sub_1D9176B4C();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1D8E677CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E67834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A29C(a1);
  v9 = *(a2 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5);
  v10 = *(a2 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5 + 8);
  sub_1D9176B3C();
  v11 = *(a2 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
  v12 = *(a2 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);
  sub_1D9176B4C();
  (*(v5 + 8))(v8, v4);
  type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MediaStreamedAssetCache.cachedAssetURL()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v8 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  sub_1D8E6A238(v7 + v8, v6);
  os_unfair_lock_unlock((v7 + v9));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D9176C2C();
    v11 = *(v10 - 8);
    (*(v11 + 32))(a1, v6, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  else
  {
    sub_1D8E6A29C(v6);
    v13 = sub_1D9176C2C();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }
}

void MediaStreamedAssetCache.streamCacheURL()(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E6A2F8(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

void sub_1D8E67DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v51 = a3;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8E6A700();
      swift_allocError();
      *v23 = 0;
      swift_willThrow();
      sub_1D8E6A29C(v21);
    }

    else
    {
      v37 = v53;
      sub_1D8E6A330();
      if (!v37)
      {
        sub_1D8E69648(v17);
        sub_1D8E6A29C(a1);
        (*(v5 + 16))(a1, v17, v4);
        swift_storeEnumTagMultiPayload();
        (*(v5 + 32))(v51, v17, v4);
      }
    }
  }

  else
  {
    v50 = v8;
    v24 = v5 + 32;
    v48 = *(v5 + 32);
    v48(v14, v21, v4);
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v25 = sub_1D917744C();
    __swift_project_value_buffer(v25, qword_1EDCD5E70);
    v46 = *(v5 + 16);
    v47 = v5 + 16;
    v46(v11, v14, v4);
    v26 = sub_1D917741C();
    v27 = v5;
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v26, v28))
    {
      v29 = swift_slowAlloc();
      v44 = v24;
      v30 = v29;
      v31 = swift_slowAlloc();
      v45 = a1;
      v42 = v31;
      v54 = v31;
      *v30 = 136315138;
      v32 = v27;
      v43 = v27;
      v41 = sub_1D9176A9C();
      v34 = v33;
      v49 = *(v32 + 8);
      v49(v11, v4);
      v35 = sub_1D8CFA924(v41, v34, &v54);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1D8CEC000, v26, v28, "Attempting to start streaming to a cache location that's already actively streaming. Previously streaming to %s", v30, 0xCu);
      v36 = v42;
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      a1 = v45;
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    else
    {

      v49 = *(v27 + 8);
      v49(v11, v4);
    }

    v38 = v53;
    sub_1D8E6A330();
    v39 = v50;
    if (v38)
    {
      v49(v14, v4);
    }

    else
    {
      sub_1D8E69648(v50);
      sub_1D8E6A29C(a1);
      v49(v14, v4);
      v46(a1, v39, v4);
      swift_storeEnumTagMultiPayload();
      v48(v51, v39, v4);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaStreamedAssetCache.complete()()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1D8E6A314(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1D8E6856C(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v95[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  v15 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v87 = a1;
    v88 = v15;
    v89 = v2;
    v25 = v5[4];
    v92 = v14;
    v85 = v25;
    v86 = v5 + 4;
    v25(v14, v18, v4);
    v26 = [objc_opt_self() defaultManager];
    v27 = v93;
    v28 = *(v93 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5);
    v29 = *(v93 + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5 + 8);
    sub_1D9176B3C();
    v30 = v27;
    v31 = *(v27 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
    v32 = *(v27 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);
    sub_1D9176B4C();
    v33 = v5[1];
    v90 = v5 + 1;
    v91 = v33;
    v33(v8, v4);
    v34 = sub_1D9176ABC();
    v36 = v35;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v37)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v69 = sub_1D917744C();
      __swift_project_value_buffer(v69, qword_1EDCD5E70);
      v70 = sub_1D917741C();
      v71 = sub_1D9178CFC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1D8CEC000, v70, v71, "Asset at URL does not have a valid path extension. Skipping cache.", v72, 2u);
        MEMORY[0x1DA72CB90](v72, -1, -1);
      }

      v73 = v91;
      v91(v11, v4);
      v74 = v92;
      v75 = v4;
      goto LABEL_34;
    }

    sub_1D9176BCC();
    v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v39 = [v26 fileExistsAtPath_];

    v40 = v26;
    v41 = v92;
    if (v39)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v42 = sub_1D917744C();
      __swift_project_value_buffer(v42, qword_1EDCD5E70);
      v43 = sub_1D917741C();
      v44 = sub_1D9178CDC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = v40;
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_1D8CEC000, v43, v44, "Asset at URL was previously streamed. Overwriting with new data", v46, 2u);
        v47 = v46;
        v40 = v45;
        v41 = v92;
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      v48 = sub_1D9176B1C();
      v95[0] = 0;
      v49 = [v40 removeItemAtURL:v48 error:v95];

      if (!v49)
      {
        v78 = v95[0];
        sub_1D9176A6C();

        swift_willThrow();
        v77 = v11;
        goto LABEL_37;
      }

      v50 = v95[0];
    }

    sub_1D9176BCC();
    v51 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v94 = 0;
    v52 = [v40 attributesOfItemAtPath:v51 error:&v94];

    v53 = v94;
    if (v52)
    {
      v54 = v40;
      type metadata accessor for FileAttributeKey(0);
      sub_1D8D755D8(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
      v55 = sub_1D917805C();
      v56 = v53;

      if (*(v55 + 16) && (v57 = sub_1D8F06900(*MEMORY[0x1E696A3B8]), (v58 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v55 + 56) + 32 * v57, v95);

        if ((swift_dynamicCast() & 1) != 0 && v94)
        {
          v59 = v92;
          v60 = sub_1D9176B1C();
          v61 = sub_1D9176B1C();
          v95[0] = 0;
          v62 = [v54 moveItemAtURL:v60 toURL:v61 error:v95];
          v84 = v54;
          v63 = v62;

          if (v63)
          {
            v64 = *(v30 + OBJC_IVAR___PFMediaStreamedAssetCache_purgeability);
            v65 = v95[0];
            v66 = v89;
            sub_1D8F4E4E8(v64);

            if (v66)
            {
              v67 = v91;
              v91(v11, v4);
              result = v67(v92, v4);
            }

            else
            {
              v83 = v87;
              sub_1D8E6A29C(v87);
              v91(v92, v4);
              v85(v83, v11, v4);
              result = swift_storeEnumTagMultiPayload();
            }
          }

          else
          {
            v81 = v95[0];
            sub_1D9176A6C();

            swift_willThrow();
            v82 = v91;
            v91(v11, v4);
            result = v82(v59, v4);
          }

          goto LABEL_38;
        }
      }

      else
      {
      }

      v73 = v91;
      v91(v11, v4);
      v74 = v92;
      v75 = v4;
LABEL_34:
      result = v73(v74, v75);
      goto LABEL_38;
    }

    v76 = v94;
    sub_1D9176A6C();

    swift_willThrow();
    v77 = v11;
LABEL_37:
    v79 = v91;
    v91(v77, v4);
    result = v79(v41, v4);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 1)
  {
    if (qword_1EDCD5E68 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD5E70);
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Calling complete on a stream that has already completed. This is not an error, but is unexpected.", v23, 2u);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    result = sub_1D8E6A29C(v18);
  }

  else
  {
    sub_1D8E6A700();
    swift_allocError();
    *v68 = 1;
    result = swift_willThrow();
  }

LABEL_38:
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MediaStreamedAssetCache.clear()()
{
  v1 = *(v0 + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1D8E68FE0(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

void sub_1D8E68FE0(uint64_t a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v11, v6, v7);
    v12 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v14 = [v12 fileExistsAtPath_];

    if (v14)
    {
      if (qword_1EDCD5E68 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1EDCD5E70);
      v16 = sub_1D917741C();
      v17 = sub_1D9178CDC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v25[1] = v1;
        v19 = v18;
        *v18 = 0;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "Asset at URL was previously cached. Removing it.", v18, 2u);
        MEMORY[0x1DA72CB90](v19, -1, -1);
      }

      v20 = sub_1D9176B1C();
      v26[0] = 0;
      v21 = [v12 removeItemAtURL:v20 error:v26];

      if (v21)
      {
        v22 = v26[0];

        sub_1D8E6A29C(a1);
        (*(v8 + 8))(v11, v7);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v23 = v26[0];
        sub_1D9176A6C();

        swift_willThrow();
        (*(v8 + 8))(v11, v7);
      }
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }
  }

  else
  {
    sub_1D8E6A29C(v6);
  }

  v24 = *MEMORY[0x1E69E9840];
}

uint64_t MediaStreamedAssetCache.StreamCacheError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E69648@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1D9176EAC();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v28 = &v27 - v17;
  v18 = [objc_opt_self() defaultManager];
  v19 = [v18 temporaryDirectory];
  sub_1D9176B9C();

  sub_1D9176B2C();
  v20 = *(v6 + 8);
  v20(v9, v5);
  sub_1D8E6A330();

  if (v1)
  {
    v21 = v12;
  }

  else
  {
    (*(v6 + 32))(v15, v12, v5);
    v22 = v29;
    sub_1D9176E9C();
    sub_1D9176E5C();
    (*(v30 + 8))(v22, v31);
    v23 = v28;
    sub_1D9176B2C();

    v20(v15, v5);
    v24 = *(v32 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
    v25 = *(v32 + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);
    sub_1D9176B4C();
    v21 = v23;
  }

  return (v20)(v21, v5);
}

void static MediaStreamedAssetCache.streamDirectory(with:)(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  (*(v11 + 80))(v10, v11);
  sub_1D9176B2C();
  v12 = *(v6 + 8);
  v12(v9, v5);
  sub_1D8E6A330();
  if (v2)
  {
    v12(a2, v5);
  }
}

id MediaStreamedAssetCache.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
  v3 = *(*v2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_1D8E69B90(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1D8E69B90(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E6A238(a1, v5);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1D8E6A29C(v5);
  }

  else
  {
    v32 = v7;
    (*(v7 + 32))(v10, v5, v6);
    v12 = [objc_opt_self() defaultManager];
    sub_1D9176BCC();
    v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v33[0] = 0;
    v14 = [v12 removeItemAtPath:v13 error:v33];

    if (v14)
    {
      v15 = v33[0];
      sub_1D8E6A29C(a1);
      swift_storeEnumTagMultiPayload();
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v16 = sub_1D917744C();
      __swift_project_value_buffer(v16, qword_1EDCD0F20);
      v17 = sub_1D917741C();
      v18 = sub_1D9178CFC();
      v19 = os_log_type_enabled(v17, v18);
      v20 = v32;
      if (v19)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D8CEC000, v17, v18, "Cleaned up active streaming pathway.", v21, 2u);
        MEMORY[0x1DA72CB90](v21, -1, -1);
      }

      result = (*(v20 + 8))(v10, v6);
    }

    else
    {
      v22 = v33[0];
      v23 = sub_1D9176A6C();

      swift_willThrow();
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v24 = sub_1D917744C();
      __swift_project_value_buffer(v24, qword_1EDCD0F20);
      v25 = sub_1D917741C();
      v26 = sub_1D9178CFC();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v32;
      if (v27)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1D8CEC000, v25, v26, "Unable to cleanup active streaming pathway.", v29, 2u);
        MEMORY[0x1DA72CB90](v29, -1, -1);
      }

      result = (*(v28 + 8))(v10, v6);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

id MediaStreamedAssetCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8E6A1B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E6A238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E6A29C(uint64_t a1)
{
  v2 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D8E6A330()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  LOBYTE(v14) = 1;
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v2 = [v0 fileExistsAtPath:v1 isDirectory:&v14];

  if ((v2 & 1) == 0)
  {
    sub_1D9176BCC();
    v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v4 = [v0 fileExistsAtPath_];

    if (v4)
    {
      v5 = sub_1D9176B1C();
      v14 = 0;
      v6 = [v0 removeItemAtURL:v5 error:&v14];

      v7 = v14;
      if (!v6)
      {
        goto LABEL_7;
      }

      v8 = v14;
    }

    v9 = sub_1D9176B1C();
    v14 = 0;
    v10 = [v0 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v14];

    v7 = v14;
    if (v10)
    {
      v11 = v14;
      goto LABEL_8;
    }

LABEL_7:
    v12 = v7;
    sub_1D9176A6C();

    swift_willThrow();
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1D8E6A4E0()
{
  result = qword_1ECAB4C80;
  if (!qword_1ECAB4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4C80);
  }

  return result;
}

uint64_t sub_1D8E6A55C()
{
  result = sub_1D9176C2C();
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

uint64_t sub_1D8E6A6A0()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8E6A700()
{
  result = qword_1ECAB4C88[0];
  if (!qword_1ECAB4C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB4C88);
  }

  return result;
}

id sub_1D8E6A7C0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TestingAssetCache.__allocating_init()()
{
  v0 = swift_allocObject();
  TestingAssetCache.init()();
  return v0;
}

void *TestingAssetCache.init()()
{
  v1 = *(*v0 + 88);
  v2 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v3 = sub_1D917866C();
  v4 = sub_1D8D075C8(v3, v2, v1, MEMORY[0x1E69E6168]);

  v0[2] = v4;
  return v0;
}

uint64_t TestingAssetCache.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t TestingAssetCache.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TestingAssetCache.asset(at:)()
{
  v1 = *v0;
  (*(*(*v0 + 96) + 16))(&v5, *(*v0 + 80));
  swift_beginAccess();
  v2 = v0[2];
  v3 = *(v1 + 88);

  sub_1D91780FC();
}

uint64_t TestingAssetCache.store(asset:at:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = sub_1D91791BC();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v14 - v8;
  (*(*(v3 + 96) + 16))(v15, *(v3 + 80), v7);
  v10 = v15[0];
  v11 = v15[1];
  v12 = *(v4 - 8);
  (*(v12 + 16))(v9, a1, v4);
  (*(v12 + 56))(v9, 0, 1, v4);
  v14[4] = v10;
  v14[5] = v11;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  return swift_endAccess();
}

uint64_t TestingAssetCache.containsAsset(for:)()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[11];
  v8[2] = v0[2];
  v3 = v1[12];
  v4 = *(v3 + 16);
  v5 = v1[10];

  v4(v8, v5, v3);
  sub_1D917809C();
  swift_getWitnessTable();
  v6 = sub_1D917850C();

  return v6 & 1;
}

uint64_t TestingAssetCache.invalidate(at:)()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v10 - v7;
  (*(*(v1 + 96) + 16))(v11, *(v1 + 80), v6);
  v10[4] = v11[0];
  v10[5] = v11[1];
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917807C();
  (*(v4 + 8))(v8, v3);
  swift_endAccess();
}

unint64_t sub_1D8E6AEFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1D917813C();

  return sub_1D8E6AF58(a1, v9, a2, a3);
}

unint64_t sub_1D8E6AF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_1D91781BC();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_1D8E6B16C()
{
  v1 = *(v0 + 40);
  v2 = v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80));
  return (*(v1 + 24))();
}

uint64_t AnyAssetCache.asset(at:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t AnyAssetCache.store(asset:at:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t AnyAssetCache.containsAsset(for:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1() & 1;
}

uint64_t AnyAssetCache.invalidate(at:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1D8E6B3D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8E6B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v17 - v13;
  (*(a6 + 40))(a1, a5, a6, v12);
  swift_getAssociatedConformanceWitness();
  v15 = sub_1D9177B1C();
  (*(v10 + 8))(v14, AssociatedTypeWitness);
  return v15;
}

uint64_t AnyAssetSource.fetch(asset:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1D8E6B5D8@<X0>(uint64_t *a1@<X8>)
{
  result = AnyAssetSource.fetch(asset:)();
  *a1 = result;
  return result;
}

PodcastsFoundation::AssetLifetime_optional __swiftcall AssetLifetime.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D8E6B6E8()
{
  result = qword_1ECAB4D10;
  if (!qword_1ECAB4D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4D10);
  }

  return result;
}

unint64_t sub_1D8E6B78C()
{
  result = qword_1ECAB28C8;
  if (!qword_1ECAB28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28C8);
  }

  return result;
}

uint64_t URLTaskAssetSource.fetch(asset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v6 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v53 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D18, &qword_1D918D4C8);
  v59 = *(v62 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D20, &qword_1D918D4D0);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D28, &qword_1D918D4D8);
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v66 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D30, &qword_1D918D4E0);
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v53 - v18;
  v60 = a2;
  v19 = *(a2 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v3[1];
  v54 = *v3;
  v55 = v26;
  v28 = a1;
  v53 = *(v20 + 16);
  v53(&v53 - v27, a1, v19, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B28, &unk_1D918BE10);
  if (swift_dynamicCast())
  {
    v30 = *(&v74 + 1);
    v29 = v75;
    __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    (*(v29 + 8))(v76, v30, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(&v73);
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    sub_1D8D08A50(&v73, &qword_1ECAB4B20, &unk_1D918BE00);
    memset(v76, 0, sizeof(v76));
    v77 = 0;
  }

  v31 = *(v60 + 24);
  v32 = *(v31 + 16);
  v56 = v28;
  v60 = v31;
  v32(v19, v31);
  v33 = v57;
  sub_1D9177A0C();
  sub_1D917653C();
  v34 = v63;
  v35 = v62;
  sub_1D91779CC();
  (*(v59 + 8))(v33, v35);
  (v53)(v23, v28, v19);
  v36 = (*(v20 + 80) + 48) & ~*(v20 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v19;
  *(v37 + 3) = v31;
  v38 = v55;
  *(v37 + 4) = v54;
  *(v37 + 5) = v38;
  (*(v20 + 32))(&v37[v36], v23, v19);

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB58F0, &unk_1D9190BD0);
  sub_1D8CF48EC(&qword_1ECAAFBC8, &qword_1ECAB4D20, &qword_1D918D4D0);
  sub_1D8CF48EC(&qword_1ECAB03A0, &unk_1ECAB58F0, &unk_1D9190BD0);
  v39 = v65;
  v40 = v66;
  sub_1D9177DCC();

  (*(v64 + 8))(v34, v39);
  sub_1D8D088B4(v76, &v73, &qword_1ECAB4928, &qword_1D918B380);
  v41 = swift_allocObject();
  v42 = v74;
  *(v41 + 16) = v73;
  *(v41 + 32) = v42;
  *(v41 + 48) = v75;
  sub_1D8CF48EC(&qword_1ECAB05F8, &qword_1ECAB4D28, &qword_1D918D4D8);
  v43 = v68;
  v44 = v69;
  sub_1D9177B7C();

  (*(v67 + 8))(v40, v43);
  v45 = v60;
  v46 = sub_1D8E6C770(v56, v19, v60);
  v48 = v47;
  v49 = swift_allocObject();
  v49[2] = v19;
  v49[3] = v45;
  v49[4] = v46;
  v49[5] = v48;
  v50 = *(v45 + 8);
  swift_getAssociatedTypeWitness();
  sub_1D8CF48EC(&qword_1ECAB0918, &qword_1ECAB4D30, &qword_1D918D4E0);
  v51 = v71;
  sub_1D9177C6C();

  (*(v70 + 8))(v44, v51);
  return sub_1D8D08A50(v76, &qword_1ECAB4928, &qword_1D918B380);
}

uint64_t sub_1D8E6C028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v19 - v14;
  sub_1D8D088B4(a1, &v19 - v14, &unk_1ECAB5910, &qword_1D9188C90);
  v16 = 1;
  if ((*(v5 + 48))(v15, 1, v4) != 1)
  {
    (*(v5 + 32))(v11, v15, v4);
    (*(v5 + 16))(v8, v11, v4);
    sub_1D91764EC();
    (*(v5 + 8))(v11, v4);
    v16 = 0;
  }

  v17 = sub_1D917653C();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

uint64_t sub_1D8E6C250@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*(*(*(v1 + 16) - 8) + 80) + 48) & ~*(*(*(v1 + 16) - 8) + 80);
  v5 = *(v1 + 32);
  type metadata accessor for AnyAssetBackgroundSession();
  result = AnyAssetBackgroundSession.start(task:for:)();
  *a1 = result;
  return result;
}

uint64_t sub_1D8E6C2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DownloadPhase();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E6C974(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v25 = *v15;
    sub_1D8D088B4(a2, v36, &qword_1ECAB4928, &qword_1D918B380);
    v26 = v37;
    if (v37)
    {
      v27 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_1D9178A5C();
      MEMORY[0x1DA7298F0](37, 0xE100000000000000);
      (*(v27 + 16))("Download Update", 15, 2, v34, v35, v26, v27);

LABEL_10:
      result = __swift_destroy_boxed_opaque_existential_1Tm(v36);
LABEL_12:
      v20 = 0;
      v22 = 0xF000000000000000;
      goto LABEL_18;
    }

LABEL_11:
    result = sub_1D8D08A50(v36, &qword_1ECAB4928, &qword_1D918B380);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D8D088B4(a2, v36, &qword_1ECAB4928, &qword_1D918B380);
    v28 = v37;
    if (v37)
    {
      v29 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      Trace.emit(event:)("Download Pending", 16, 2, v28, v29);
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  (*(v8 + 32))(v11, v15, v7);
  v17 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v17 contentsAtPath_];

  if (!v19)
  {
    type metadata accessor for FileError();
    sub_1D8E6C9D8();
    swift_allocError();
    v32 = v31;
    (*(v8 + 16))(v31, v11, v7);
    (*(v8 + 56))(v32, 0, 2, v7);
    swift_willThrow();
    return (*(v8 + 8))(v11, v7);
  }

  v20 = sub_1D9176C8C();
  v22 = v21;

  sub_1D8D088B4(a2, v36, &qword_1ECAB4928, &qword_1D918B380);
  v23 = v37;
  if (v37)
  {
    v24 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    Trace.emit(event:)("Download Complete", 17, 2, v23, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
    sub_1D8D08A50(v36, &qword_1ECAB4928, &qword_1D918B380);
  }

  sub_1D8F4E4E8(512);
  if (v3)
  {
  }

  result = (*(v8 + 8))(v11, v7);
LABEL_18:
  *a3 = v20;
  a3[1] = v22;
  return result;
}

uint64_t (*sub_1D8E6C770(uint64_t a1, uint64_t a2, uint64_t a3))()
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
  return sub_1D8E6C908;
}

uint64_t sub_1D8E6C890(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

uint64_t sub_1D8E6C908()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(*(v1 + 8) + 40))();
}

uint64_t sub_1D8E6C974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadPhase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E6C9D8()
{
  result = qword_1ECAB5920;
  if (!qword_1ECAB5920)
  {
    type metadata accessor for FileError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5920);
  }

  return result;
}

uint64_t AssetRemovalProcessorDataSource.name.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_1D8E6CA70(uint64_t a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  return sub_1D8E6CA80(v2);
}

uint64_t sub_1D8E6CA80(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t (*sub_1D8E6CA90(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D8DB9908();
  return sub_1D8E6CAD8;
}

uint64_t sub_1D8E6CAD8(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 48);
  *(v2 + 48) = *a1;
  if (a2)
  {

    sub_1D8E6CA80(v3);
  }

  else
  {

    return sub_1D8E6CA80(v3);
  }
}

uint64_t sub_1D8E6CB48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_1D8E6CBA8()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t sub_1D8E6CBE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

double AssetRemovalProcessorDataSource.__allocating_init(managedObjectContext:receiverQueue:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  strcpy((v4 + 32), "AssetRemoval");
  *(v4 + 45) = 0;
  *(v4 + 46) = -5120;
  *&result = 1;
  *(v4 + 48) = xmmword_1D918BEE0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return result;
}

id sub_1D8E6CCE8()
{
  v0 = [objc_opt_self() predicateForPodcastToAutoRemove];

  return v0;
}

uint64_t sub_1D8E6CD28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D38, &unk_1D918D588);
  v40 = *(v37 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - v12;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D40, &qword_1D918D598);
  v39 = *(v35 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v35 - v15;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D48, &qword_1D918D5A0);
  v38 = *(v36 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v19 = &v35 - v18;
  v20 = v3[2];
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v6;
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = sub_1D8E6D328;
  v22[4] = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D50, &qword_1D918D5A8);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();

  v26 = v20;
  v27 = sub_1D9177A5C();
  v28 = v3[3];
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  v41 = v27;
  v42 = v28;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0AE0, &qword_1ECAB4D50, &qword_1D918D5A8);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A30, &qword_1ECAB4D38, &unk_1D918D588);
  v30 = v37;
  sub_1D9177CEC();

  (*(v40 + 8))(v9, v30);
  sub_1D8D2210C(v13);
  swift_getKeyPath();
  sub_1D8CF48EC(&qword_1ECAB0450, &qword_1ECAB4D40, &qword_1D918D598);
  v31 = v35;
  sub_1D9177B8C();

  (*(v39 + 8))(v16, v31);
  sub_1D8CF48EC(&qword_1ECAB0B08, &qword_1ECAB4D48, &qword_1D918D5A0);
  v32 = v36;
  v33 = sub_1D9177B1C();
  (*(v38 + 8))(v19, v32);
  return v33;
}

uint64_t sub_1D8E6D234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a1 podcastForUuid_];

  if (v9)
  {
    v10 = [v9 episodeLimitResolvedValue];
    v11 = [v9 deletePlayedEpisodesResolvedValue];

    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = v10;
    *(a4 + 24) = v11;
  }

  else
  {
    sub_1D8E6D92C();
    swift_allocError();
    *v12 = a2;
    v12[1] = a3;
    swift_willThrow();
  }
}

id sub_1D8E6D348(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F20);

  v9 = sub_1D917741C();
  v10 = sub_1D9178CDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_1D8E6D514(a1, a2, a3, a4 & 1);
    v15 = sub_1D8CFA924(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Creating autoremoval predicate with context: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v16 = objc_opt_self();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v18 = [v16 predicateForAutomaticDeletionOnShow:v17 deletePlayedEpisodes:a4 & 1 episodeLimit:a3];

  return v18;
}

uint64_t sub_1D8E6D514(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x44495555776F6873, 0xEA0000000000203ALL);
  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](0x65646F736970650ALL, 0xEF203A74696D694CLL);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CAAB0);
  if (a4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (a4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v7, v8);

  return 0;
}

uint64_t AssetRemovalProcessorDataSource.deinit()
{
  v1 = *(v0 + 40);

  sub_1D8E6CA80(*(v0 + 48));
  v2 = *(v0 + 56);

  return v0;
}

uint64_t AssetRemovalProcessorDataSource.__deallocating_deinit()
{
  v1 = *(v0 + 40);

  sub_1D8E6CA80(*(v0 + 48));
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D8E6D890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D8E6D8D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1D8E6D92C()
{
  result = qword_1ECAB4D58;
  if (!qword_1ECAB4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4D58);
  }

  return result;
}

uint64_t AutoDownloadProcessorDataSource.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D8E6D9C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_1D8E6DA20()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_1D8E6DA58(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t AutoDownloadProcessorDataSource.__allocating_init(context:accountDataSource:workQueue:capacityMonitor:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  AutoDownloadProcessorDataSource.init(context:accountDataSource:workQueue:capacityMonitor:)(a1, a2, a3, a4);
  return v8;
}

uint64_t AutoDownloadProcessorDataSource.deinit(uint64_t a1)
{
  if ((*(v1 + 96) & 1) == 0)
  {
    v2 = *(v1 + 88);
    v3 = *(*(v1 + 72) + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
    MEMORY[0x1EEE9AC00](a1);
    MEMORY[0x1EEE9AC00](v4);
    v6 = v5;

    os_unfair_lock_lock(v3 + 6);
    sub_1D8E6EFF8();
    os_unfair_lock_unlock(v3 + 6);
  }

  v7 = *(v1 + 24);

  v8 = *(v1 + 40);
  swift_unknownObjectRelease();
  v9 = *(v1 + 48);

  v10 = *(v1 + 56);

  return v1;
}

uint64_t AutoDownloadProcessorDataSource.__deallocating_deinit(uint64_t a1)
{
  AutoDownloadProcessorDataSource.deinit(a1);

  return swift_deallocClassInstance();
}

id sub_1D8E6DD14()
{
  v0 = [objc_opt_self() predicateForPodcastsToAutodownload];

  return v0;
}

uint64_t sub_1D8E6DD54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v41 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D68, &unk_1D918D6E8);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v40 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D78, &qword_1D918D6F8);
  v49 = *(v46 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v42 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D80, &qword_1D918D700);
  v18 = *(v17 - 8);
  v47 = v17;
  v48 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v40 - v20;
  v21 = *(v2 + 32);
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = a1;
  v40 = a2;
  v22[4] = a2;
  v22[5] = v2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D88, &qword_1D918D708);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v26 = v21;

  v27 = sub_1D9177A5C();
  v28 = *(v2 + 64);
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  v50 = v27;
  v51 = v28;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0AD8, &qword_1ECAB4D88, &qword_1D918D708);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A28, &qword_1ECAB4D68, &unk_1D918D6E8);
  v30 = v42;
  v31 = v44;
  sub_1D9177CEC();

  (*(v45 + 8))(v10, v31);
  sub_1D8D2210C(v14);
  v32 = swift_allocObject();
  v34 = v40;
  v33 = v41;
  v32[2] = v3;
  v32[3] = v33;
  v32[4] = v34;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  sub_1D8CF48EC(&qword_1ECAB0448, &qword_1ECAB4D78, &qword_1D918D6F8);

  v35 = v43;
  v36 = v46;
  sub_1D9177B9C();

  (*(v49 + 8))(v30, v36);
  sub_1D8CF48EC(&qword_1ECAB0750, &qword_1ECAB4D80, &qword_1D918D700);
  v37 = v47;
  v38 = sub_1D9177B1C();
  (*(v48 + 8))(v35, v37);
  return v38;
}

void sub_1D8E6E290(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a6;
  v15[4] = sub_1D8E6EFC8;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_6;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v14 performBlock_];
  _Block_release(v13);
}

void sub_1D8E6E3A8(void *a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5, uint64_t a6)
{
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [a1 podcastForUuid_];

  if (v12)
  {
    if (os_feature_enabled_serial_sort_auto_downloads())
    {
      if ([v12 currentEpisodeLimitIsNextNEpisodes])
      {
        v13 = 256;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v16 = [v12 currentEpisodeLimitAllowsAutomaticDownloads];
    v17 = [v12 episodeLimitResolvedValue];
    v18 = [v12 deletePlayedEpisodesResolvedValue];
    v19 = [*(a6 + 40) activeDsid];
    if (v19)
    {

      v20 = 0;
    }

    else
    {
      v20 = 0x10000;
    }

    v21 = a2;
    v22 = a3;
    v23 = v16;
    *v24 = v17;
    v24[10] = BYTE2(v20);
    *&v24[8] = v13 | v18 | v20;
    v25 = 0;

    a4(&v21);
  }

  else
  {
    sub_1D8E6D92C();
    v14 = swift_allocError();
    *v15 = a2;
    v15[1] = a3;
    v21 = v14;
    v22 = 0;
    v23 = 0;
    memset(v24, 0, sizeof(v24));
    v25 = 1;

    a4(&v21);
  }

  sub_1D8E6EFD8(v21, v22, v23, *v24, *&v24[8] | (v24[10] << 16), v25);
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.init(showUUID:autoDownloadEnabled:episodeLimit:deletePlayedEpisodes:serialNextEpisodesSort:includePlayableWithoutAccount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 33) = a6;
  *(a8 + 34) = a7;
  return result;
}

id sub_1D8E6E590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 16) == 1 && !*(a2 + 80))
  {
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 24);
    v17 = *(a1 + 32);
    v18 = *(a1 + 33);
    v19 = *(a1 + 34);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F20);

    v21 = sub_1D917741C();
    v22 = sub_1D9178CDC();

    if (os_log_type_enabled(v21, v22))
    {
      v36 = v14;
      v23 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = v34;
      *v23 = 136446210;
      v37[0] = v36;
      v37[1] = v15;
      v38 = 1;
      v39 = v16;
      v40 = v17;
      v41 = v18;
      v42 = v19;

      v24 = AutoDownloadProcessorDataSource.AutoDownloadContext.description.getter();
      v35 = v17;
      v25 = v19;
      v26 = v18;
      v27 = v16;
      v29 = v28;

      v30 = sub_1D8CFA924(v24, v29, &v43);
      v16 = v27;
      v18 = v26;
      v19 = v25;
      v17 = v35;

      *(v23 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Creating autodownload predicate with context: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    v31 = objc_opt_self();
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v33 = [v31 predicateForAutomaticDownloadsOnShow:v32 deletePlayedEpisodes:v17 episodeLimit:v16 serialNextEpisodesSort:v18 includePlayableWithoutAccount:v19];

    result = v33;
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD0F20);

    v9 = sub_1D917741C();
    v10 = sub_1D9178D1C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1D8CFA924(a3, a4, v37);
      _os_log_impl(&dword_1D8CEC000, v9, v10, "AutoDownloads unavailable for show %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    result = [objc_opt_self() falsePredicate];
  }

  *a5 = result;
  return result;
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.showUUID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AutoDownloadProcessorDataSource.AutoDownloadContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33);
  v16 = *(v0 + 34);
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x44495555776F6873, 0xEA0000000000203ALL);
  MEMORY[0x1DA7298F0](v1, v2);
  MEMORY[0x1DA7298F0](0xD000000000000017, 0x80000001D91CAAD0);
  if (v3)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v7, v8);

  MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91CAAF0);
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D917964C();
  MEMORY[0x1DA7298F0](0xD000000000000018, 0x80000001D91CAB10);
  if (v5)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v5)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v9, v10);

  MEMORY[0x1DA7298F0](0xD00000000000001ALL, 0x80000001D91CAB30);
  if (v6)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v6)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v11, v12);

  MEMORY[0x1DA7298F0](0xD000000000000021, 0x80000001D91CAB50);
  if (v16)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v16)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v13, v14);

  return 0;
}

void AutoDownloadProcessorDataSource.AutoDownloadContext.init(show:accountController:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 uuid];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1D917820C();
    v10 = v9;

    if (os_feature_enabled_serial_sort_auto_downloads())
    {
      if ([a1 currentEpisodeLimitIsNextNEpisodes])
      {
        v11 = 256;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [a1 currentEpisodeLimitAllowsAutomaticDownloads];
    v13 = [a1 episodeLimitResolvedValue];
    v14 = [a1 deletePlayedEpisodesResolvedValue];
    v15 = [a2 activeDsid];
    swift_unknownObjectRelease();

    if (v15)
    {

      v16 = 0;
    }

    else
    {
      v16 = 0x10000;
    }

    *a3 = v8;
    *(a3 + 8) = v10;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 34) = BYTE2(v16);
    *(a3 + 32) = v11 | v14 | v16;
  }

  else
  {

    swift_unknownObjectRelease();
    *(a3 + 31) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

id AutoDownloadProcessorDataSource.AutoDownloadContext.predicate.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 32);
  v5 = *(v0 + 33);
  v6 = *(v0 + 34);
  v7 = objc_opt_self();
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [v7 predicateForAutomaticDownloadsOnShow:v8 deletePlayedEpisodes:v4 episodeLimit:v3 serialNextEpisodesSort:v5 includePlayableWithoutAccount:v6];

  return v9;
}

uint64_t sub_1D8E6EF28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t sub_1D8E6EF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8E6EFD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

uint64_t DownloadedAsset.episodeUuid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DownloadedAsset.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadedAsset() + 20);
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DownloadedAsset()
{
  result = qword_1ECAB4D98;
  if (!qword_1ECAB4D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DownloadedAsset.init(episodeUuid:fileURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for DownloadedAsset() + 20);
  v7 = sub_1D9176C2C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static DownloadedAsset.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for DownloadedAsset() + 20);

  return sub_1D9176B8C();
}

uint64_t DownloadedAsset.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for DownloadedAsset() + 20);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  return sub_1D917814C();
}

uint64_t DownloadedAsset.hashValue.getter()
{
  sub_1D9179DBC();
  v1 = *v0;
  v2 = v0[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for DownloadedAsset() + 20);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F344(uint64_t a1)
{
  sub_1D9179DBC();
  v3 = *v1;
  v4 = v1[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v5 = *(a1 + 20);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F3EC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  return sub_1D917814C();
}

uint64_t sub_1D8E6F478(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  v4 = *v2;
  v5 = v2[1];
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1D9176C2C();
  sub_1D8D68AF0(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0]);
  sub_1D917814C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8E6F564(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1D9176B8C();
}

uint64_t sub_1D8E6F610()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ICReachability.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() sharedMonitor];
  return v0;
}

uint64_t sub_1D8E6F8B4()
{
  v1 = *(v0 + 16);
  [v1 networkType];
  if (ICEnvironmentNetworkTypeIsCellular())
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v3 = [v2 BOOLForKey_];
  }

  else
  {
    v3 = 1;
  }

  return [v1 isRemoteServerLikelyReachable] & v3;
}

uint64_t sub_1D8E6F9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(id))
{
  v4 = *(a1 + 16);

  v5 = a3([v4 networkType]);

  return v5;
}

id sub_1D8E6FA94()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = [v0 BOOLForKey_];

  return v1;
}

id sub_1D8E6FBD4()
{
  v0 = objc_opt_self();
  v1 = [v0 _applePodcastsFoundationSettingsUserDefaults];
  v2 = [v1 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v0 _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 BOOLForKey_];

  return v4;
}

uint64_t ICReachability.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AssetRemovalProcessorDelegate.didMatch(episodes:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DA8, &qword_1D918DA00);
  v4 = *(v3 - 8);
  v107 = v3;
  v108 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v106 = v73 - v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DB0, &unk_1D918DA08);
  v80 = *(v78 - 8);
  v7 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v9 = v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v73 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DB8, &qword_1D918DA18);
  v86 = *(v85 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v16 = v73 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DC0, &qword_1D918DA20);
  v90 = *(v87 - 8);
  v17 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v74 = v73 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DC8, &qword_1D918DA28);
  v89 = *(v88 - 8);
  v19 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v21 = v73 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DD0, &qword_1D918DA30);
  v92 = *(v91 - 8);
  v22 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v76 = v73 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DD8, &qword_1D918DA38);
  v94 = *(v93 - 8);
  v24 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v77 = v73 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DE0, &qword_1D918DA40);
  v27 = *(v26 - 8);
  v97 = v26;
  v98 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v79 = v73 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DE8, &qword_1D918DA48);
  v31 = *(v30 - 8);
  v100 = v30;
  v101 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v95 = v73 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DF0, &qword_1D918DA50);
  v35 = *(v34 - 8);
  v104 = v34;
  v105 = v35;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v96 = v73 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4DF8, &qword_1D918DA58);
  v39 = *(v38 - 8);
  v102 = v38;
  v103 = v39;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v99 = v73 - v41;
  v42 = v1[8];
  v43 = v1[9];
  v73[0] = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 5, v42);
  v44 = (*(v43 + 8))(a1, v42, v43);
  v83 = v1[10];
  v45 = v83;
  v82 = sub_1D9178DBC();
  v46 = *(v82 - 8);
  v81 = *(v46 + 56);
  v84 = v46 + 56;
  v81(v13, 1, 1, v82);
  *&v109 = v45;
  v110 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E00, &qword_1D918DA60);
  v47 = sub_1D8CFD888();
  v73[1] = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB4E08, &qword_1ECAB4E00, &qword_1D918DA60);
  v48 = sub_1D8D02DF0();
  v73[3] = v47;
  v73[2] = v48;
  sub_1D9177D3C();
  v75 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB4E10, &qword_1ECAB4DB0, &unk_1D918DA08);
  v49 = v78;
  sub_1D9177CEC();

  (*(v80 + 8))(v9, v49);
  sub_1D8D2210C(v13);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E18, &qword_1D918DA68);
  v80 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB4E20, &qword_1ECAB4DB8, &qword_1D918DA18);
  sub_1D8CF48EC(&qword_1ECAB4E28, &qword_1ECAB4E18, &qword_1D918DA68);
  v50 = v74;
  v51 = v85;
  sub_1D9177CAC();
  (*(v86 + 8))(v16, v51);
  swift_getKeyPath();
  v86 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB4E30, &qword_1ECAB4DC0, &qword_1D918DA20);
  v52 = v87;
  sub_1D9177B8C();

  (*(v90 + 8))(v50, v52);
  sub_1D8CF48EC(&qword_1ECAB4E38, &qword_1ECAB4DC8, &qword_1D918DA28);
  v53 = v76;
  v54 = v88;
  sub_1D9177C8C();
  (*(v89 + 8))(v21, v54);
  sub_1D8CF48EC(&qword_1ECAB4E40, &qword_1ECAB4DD0, &qword_1D918DA30);
  v55 = v77;
  v56 = v91;
  sub_1D9177C4C();
  (*(v92 + 8))(v53, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D8CF48EC(&qword_1ECAB4E48, &qword_1ECAB4DD8, &qword_1D918DA38);
  v57 = v79;
  v58 = v93;
  sub_1D9177B9C();
  (*(v94 + 8))(v55, v58);
  sub_1D8CFD9D8(v73[0] + 40, &v109);
  v59 = swift_allocObject();
  sub_1D8D6BCE0(&v109, v59 + 16);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_1D8E70E5C;
  *(v60 + 24) = v59;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4E50, &qword_1D918DA98);
  sub_1D8CF48EC(&qword_1ECAB4E58, &qword_1ECAB4DE0, &qword_1D918DA40);
  sub_1D8CF48EC(&qword_1ECAB4E60, &qword_1ECAB4E50, &qword_1D918DA98);
  v61 = v95;
  v62 = v97;
  sub_1D9177CBC();

  (*(v98 + 8))(v57, v62);
  v81(v13, 1, 1, v82);
  *&v109 = v83;
  sub_1D8CF48EC(&qword_1ECAB4E68, &qword_1ECAB4DE8, &qword_1D918DA48);
  v63 = v106;
  v64 = v100;
  v65 = v61;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB4E70, &qword_1ECAB4DA8, &qword_1D918DA00);
  v66 = v96;
  v67 = v107;
  sub_1D9177CEC();
  (*(v108 + 8))(v63, v67);
  sub_1D8D2210C(v13);
  (*(v101 + 8))(v65, v64);
  sub_1D8CF48EC(&qword_1ECAB4E78, &qword_1ECAB4DF0, &qword_1D918DA50);
  v68 = v99;
  v69 = v104;
  sub_1D9177B9C();
  (*(v105 + 8))(v66, v69);
  sub_1D8CF48EC(&qword_1ECAB4E80, &qword_1ECAB4DF8, &qword_1D918DA58);
  v70 = v102;
  v71 = sub_1D9177B1C();
  (*(v103 + 8))(v68, v70);
  return v71;
}

uint64_t sub_1D8E70D0C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4E90, &qword_1D918DB30);
  sub_1D8CF48EC(&qword_1ECAB4E88, &unk_1ECAB4E90, &qword_1D918DB30);
  return sub_1D917841C();
}

uint64_t sub_1D8E70DA0(uint64_t *a1)
{
  swift_getKeyPath();
  v3 = *a1;

  swift_getAtKeyPath();
}

uint64_t sub_1D8E70E14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;

  v5 = sub_1D8FC0F28(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1D8E70E5C(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1D8E70EB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

void sub_1D8E70EEC(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);

  oslog = sub_1D917741C();
  v3 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_1D9178AAC();
    v8 = sub_1D8CFA924(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D8CEC000, oslog, v3, "Automatically removed episodes: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }
}

uint64_t sub_1D8E71064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D8E710AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AutoDownloadProcessorDownloader.didMatch(episodes:)(uint64_t a1)
{
  v86 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EA8, &qword_1D918DB78);
  v113 = *(v112 - 8);
  v2 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v79 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EB0, &qword_1D918DB80);
  v110 = *(v109 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v103 = v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4EB8, &unk_1D918DB88);
  v81 = *(v6 - 8);
  v7 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v79 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v79 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EC8, &qword_1D918DB98);
  v83 = *(v82 - 8);
  v14 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v16 = v79 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4ED0, &qword_1D918DBA0);
  v89 = *(v88 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v80 = v79 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4ED8, &qword_1D918DBA8);
  v91 = *(v90 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v84 = v79 - v20;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EE0, &qword_1D918DBB0);
  v93 = *(v92 - 8);
  v21 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v85 = v79 - v22;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EE8, &qword_1D918DBB8);
  v98 = *(v97 - 8);
  v23 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v87 = v79 - v24;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EF0, &qword_1D918DBC0);
  v100 = *(v99 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v94 = v79 - v26;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4EF8, &qword_1D918DBC8);
  v104 = *(v102 - 8);
  v27 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v95 = v79 - v28;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F00, &qword_1D918DBD0);
  v108 = *(v106 - 8);
  v29 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v96 = v79 - v30;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F08, &qword_1D918DBD8);
  v107 = *(v105 - 8);
  v31 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v101 = v79 - v32;
  v33 = v1[2];
  v124 = v1[1];
  v125 = v33;
  v123 = *v1;
  v126 = *(v1 + 6);
  v34 = v33;
  v35 = type metadata accessor for AnalyticsEvent();
  v36 = objc_allocWithZone(v35);
  *&v36[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v37 = &v36[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v37 = sub_1D8D6F298;
  v37[1] = 0;
  v122.receiver = v36;
  v122.super_class = v35;
  v38 = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v39 = objc_msgSendSuper2(&v122, sel_init);
  [v34 sendEvent_];

  v40 = swift_allocObject();
  v41 = v124;
  *(v40 + 16) = v123;
  *(v40 + 32) = v41;
  *(v40 + 48) = v125;
  *(v40 + 64) = v126;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F10, &qword_1D918DBE0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_1D8E73BF0(&v123, &v121);
  v45 = sub_1D9177A5C();
  v46 = *(&v125 + 1);
  v118 = *(&v125 + 1);
  v117 = sub_1D9178DBC();
  v47 = *(v117 - 8);
  v116 = *(v47 + 56);
  v119 = v47 + 56;
  v116(v13, 1, 1, v117);
  v120 = v45;
  v121 = v46;
  v48 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v79[0] = MEMORY[0x1E695C038];
  sub_1D8CF48EC(&qword_1ECAB0240, &qword_1ECAB4F10, &qword_1D918DBE0);
  v49 = sub_1D8D02DF0();
  v114 = v48;
  v79[1] = v49;
  sub_1D9177D3C();
  v115 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB0A00, &unk_1ECAB4EB8, &unk_1D918DB88);
  sub_1D9177CEC();

  (*(v81 + 8))(v9, v6);
  sub_1D8D2210C(v13);
  *(swift_allocObject() + 16) = v86;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F18, &qword_1D918DBE8);
  v86 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0420, &qword_1ECAB4EC8, &qword_1D918DB98);
  sub_1D8CF48EC(&qword_1ECAB0348, &qword_1ECAB4F18, &qword_1D918DBE8);
  v50 = v80;
  v51 = v82;
  sub_1D9177DDC();

  (*(v83 + 8))(v16, v51);
  v52 = swift_allocObject();
  v53 = v124;
  *(v52 + 16) = v123;
  *(v52 + 32) = v53;
  *(v52 + 48) = v125;
  *(v52 + 64) = v126;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_1D8E73C30;
  *(v54 + 24) = v52;
  sub_1D8E73BF0(&v123, &v121);
  sub_1D91777FC();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F20, &unk_1D918DBF0);
  sub_1D8CF48EC(&qword_1ECAB05D8, &qword_1ECAB4ED0, &qword_1D918DBA0);
  v83 = sub_1D8CF48EC(&unk_1ECAB0230, &unk_1ECAB4F20, &unk_1D918DBF0);
  v55 = v84;
  v56 = v88;
  sub_1D9177DCC();

  (*(v89 + 8))(v50, v56);
  sub_1D8CF48EC(&qword_1ECAB0588, &qword_1ECAB4ED8, &qword_1D918DBA8);
  v57 = v85;
  v58 = v90;
  sub_1D9177C4C();
  (*(v91 + 8))(v55, v58);
  v116(v13, 1, 1, v117);
  v121 = v118;
  v91 = MEMORY[0x1E695BDE0];
  sub_1D8CF48EC(&qword_1ECAB06B0, &qword_1ECAB4EE0, &qword_1D918DBB0);
  v59 = v103;
  v60 = v92;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09C8, &qword_1ECAB4EB0, &qword_1D918DB80);
  v61 = v87;
  v62 = v109;
  sub_1D9177CEC();
  (*(v110 + 8))(v59, v62);
  sub_1D8D2210C(v13);
  (*(v93 + 8))(v57, v60);
  v63 = swift_allocObject();
  v64 = v124;
  *(v63 + 16) = v123;
  *(v63 + 32) = v64;
  *(v63 + 48) = v125;
  *(v63 + 64) = v126;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1D8E73C9C;
  *(v65 + 24) = v63;
  sub_1D8E73BF0(&v123, &v121);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  sub_1D8CF48EC(&qword_1ECAB03F8, &qword_1ECAB4EE8, &qword_1D918DBB8);
  v66 = v94;
  v67 = v97;
  sub_1D9177CBC();

  (*(v98 + 8))(v61, v67);
  sub_1D8CF48EC(&qword_1ECAB0580, &qword_1ECAB4EF0, &qword_1D918DBC0);
  v68 = v95;
  v69 = v99;
  sub_1D9177C4C();
  (*(v100 + 8))(v66, v69);
  v116(v13, 1, 1, v117);
  v121 = v118;
  sub_1D8CF48EC(&qword_1ECAB06A8, &qword_1ECAB4EF8, &qword_1D918DBC8);
  v70 = v111;
  v71 = v102;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB09D0, &qword_1ECAB4EA8, &qword_1D918DB78);
  v72 = v96;
  v73 = v112;
  sub_1D9177CEC();
  (*(v113 + 8))(v70, v73);
  sub_1D8D2210C(v13);
  (*(v104 + 8))(v68, v71);
  sub_1D8CF48EC(&unk_1ECAB03E8, &qword_1ECAB4F00, &qword_1D918DBD0);
  v74 = v101;
  v75 = v106;
  sub_1D9177B9C();
  (*(v108 + 8))(v72, v75);
  sub_1D8CF48EC(&qword_1ECAB0730, &qword_1ECAB4F08, &qword_1D918DBD8);
  v76 = v105;
  v77 = sub_1D9177B1C();
  (*(v107 + 8))(v74, v76);
  return v77;
}

uint64_t sub_1D8E7232C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F48, &qword_1D918DCE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F50, &unk_1D918DCF0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  if (*a1 == 1)
  {
    v18[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
    sub_1D9177A0C();
    sub_1D8CF48EC(&qword_1ECAB02C0, &unk_1ECAB4F50, &unk_1D918DCF0);
    v16 = sub_1D9177B1C();
    result = (*(v12 + 8))(v15, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
    sub_1D9177A1C();
    sub_1D8CF48EC(&qword_1ECAB0298, &qword_1ECAB4F48, &qword_1D918DCE8);
    v16 = sub_1D9177B1C();
    result = (*(v7 + 8))(v10, v6);
  }

  *a3 = v16;
  return result;
}

uint64_t sub_1D8E725A8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = *(a2 + 48);
  *(v4 + 72) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F20, &unk_1D918DBF0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1D8E73BF0(a2, v10);

  return sub_1D9177A5C();
}

void sub_1D8E7265C(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);

  oslog = sub_1D917741C();
  v3 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    v6 = sub_1D9178AAC();
    v8 = sub_1D8CFA924(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D8CEC000, oslog, v3, "Failed to start downloads for episodes: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }
}

uint64_t sub_1D8E727D0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D8E73E30;
  *(v17 + 24) = v15;
  v18 = *(a3 + 16);
  *(v17 + 32) = *a3;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a3 + 32);
  *(v17 + 80) = *(a3 + 48);
  if (*(v16 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v19 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v20 = *(v16 + v19);

    sub_1D8E73BF0(a3, v30);

    os_unfair_lock_lock((v20 + 24));
    v21 = *(v20 + 16);
    os_unfair_lock_unlock((v20 + 24));

    v22 = *(a3 + 16);
    v30[0] = *a3;
    v30[1] = v22;
    v30[2] = *(a3 + 32);
    v31 = *(a3 + 48);
    LOBYTE(v30[0]) = sub_1D8E72C28(v21) & 1;
    LOWORD(v30[0]) = LOBYTE(v30[0]);
    a1(v30);
  }

  else
  {
    v27[1] = *(v16 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = sub_1D8E73E70;
    v24[4] = v17;
    aBlock[4] = sub_1D8E73ED0;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_59;
    v27[0] = _Block_copy(aBlock);

    sub_1D8E73BF0(a3, v30);

    sub_1D9177E4C();
    *&v30[0] = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBB0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v25 = v27[0];
    MEMORY[0x1DA72A400](0, v14, v10, v27[0]);
    _Block_release(v25);

    (*(v7 + 8))(v10, v6);
    (*(v28 + 8))(v14, v29);
  }
}

uint64_t sub_1D8E72C28(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - Low Power Mode";
LABEL_18:
    _os_log_impl(&dword_1D8CEC000, v7, v8, v10, v9, 2u);
    MEMORY[0x1DA72CB90](v9, -1, -1);
LABEL_19:

    return 0;
  }

  if (a1)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - Device is out of storage";
    goto LABEL_18;
  }

  if (![v3 isReachable])
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F20);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CDC();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_19;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Skipping autodownloads - network unreachable";
    goto LABEL_18;
  }

  if ([v3 isReachableViaCellular])
  {
    return [v3 isPodcastsCellularDownloadsEnabled];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1D8E72EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v10 = *(a3 + 16);
  v23[0] = *a3;
  v23[1] = v10;
  v23[2] = *(a3 + 32);
  v24 = *(a3 + 48);

  *(v9 + 16) = sub_1D8E73118();
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = MEMORY[0x1E69E7CD0];
  v13 = *(a4 + 16);
  if (!v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v21 = v11;
  v14 = sub_1D8D1B418(v13, 0);
  v15 = sub_1D8D1B42C(v23, v14 + 4, v13, a4);

  result = sub_1D8D1B144();
  if (v15 == v13)
  {
    v12 = v21;
LABEL_5:
    v17 = *(a3 + 24);
    v18 = swift_allocObject();
    v19 = *(a3 + 16);
    *(v18 + 16) = *a3;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a3 + 32);
    *(v18 + 64) = *(a3 + 48);
    *(v18 + 72) = v14;
    *(v18 + 80) = a4;
    *(v18 + 88) = sub_1D8D49C40;
    *(v18 + 96) = v8;
    *(v18 + 104) = v9;
    *(v18 + 112) = v12;
    aBlock[4] = sub_1D8E73E1C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_44;
    v20 = _Block_copy(aBlock);

    sub_1D8E73BF0(a3, v23);

    [v17 performBlock_];
    _Block_release(v20);
  }

  __break(1u);
  return result;
}

id sub_1D8E73118()
{
  v35[4] = *MEMORY[0x1E69E9840];
  v0 = sub_1D9176C2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedDocumentsDirectory];
  sub_1D9176B9C();

  sub_1D9176BCC();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_opt_self() defaultManager];
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v35[0] = 0;
  v8 = [v6 attributesOfFileSystemForPath:v7 error:v35];

  v9 = v35[0];
  if (!v8)
  {
    v17 = v35[0];
    v18 = sub_1D9176A6C();

    swift_willThrow();
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F20);
    v20 = sub_1D917741C();
    v21 = sub_1D9178CFC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "Unable to compute free space, autodownload system will not download anything", v22, 2u);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    v23 = v18;
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136315138;
      v34 = v18;
      v28 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v29 = sub_1D917826C();
      v31 = sub_1D8CFA924(v29, v30, v35);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_14;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1D8CFBBB0(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
  v10 = sub_1D917805C();
  v11 = v9;

  if (!*(v10 + 16) || (v12 = sub_1D8F06900(*MEMORY[0x1E696A3C0]), (v13 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_1D8CFAD1C(*(v10 + 56) + 32 * v12, v35);

  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  v14 = v34;
  v15 = [v34 longLongValue];

  result = v15;
LABEL_15:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8E735AC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 24);
  v11 = sub_1D91785DC();
  v12 = [v10 episodesForUuids_];

  if (!v12)
  {
    if (qword_1EDCD0F18 == -1)
    {
LABEL_7:
      v17 = sub_1D917744C();
      __swift_project_value_buffer(v17, qword_1EDCD0F20);

      v18 = sub_1D917741C();
      v19 = sub_1D9178CFC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v50 = v21;
        *v20 = 136315138;
        v22 = sub_1D9178AAC();
        v24 = sub_1D8CFA924(v22, v23, &v50);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_1D8CEC000, v18, v19, "Unable to retreive episodes for identifiers: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1DA72CB90](v21, -1, -1);
        MEMORY[0x1DA72CB90](v20, -1, -1);
      }

      return (a4)(MEMORY[0x1E69E7CD0], 0);
    }

LABEL_34:
    swift_once();
    goto LABEL_7;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v13 = sub_1D91785FC();

  v14 = *(a1 + 48);
  if (sub_1D90F6CB0() <= 0)
  {
    v15 = 209715200;
    v16 = a6;
    if (v13 < 0 || (v13 & 0x4000000000000000) != 0)
    {
      goto LABEL_37;
    }

LABEL_12:
    v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_38;
    }

    goto LABEL_13;
  }

  v15 = sub_1D90F6CB0();
  if (v13 < 0)
  {
    goto LABEL_36;
  }

  v16 = a6;
  if ((v13 & 0x4000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_37:
  v26 = sub_1D917935C();
  if (v26)
  {
LABEL_13:
    if (v26 >= 1)
    {
      v44 = a5;
      v45 = a4;
      a5 = v13 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      a4 = 0;
      while (1)
      {
        if (a5)
        {
          v27 = MEMORY[0x1DA72AA90](a4, v13);
        }

        else
        {
          v27 = *(v13 + 8 * a4 + 32);
        }

        v28 = v27;
        v29 = *(v16 + 16);
        v30 = [v27 byteSize];
        if (__OFSUB__(v29, v30))
        {
          __break(1u);
          break;
        }

        if (v15 < v29 - v30 && (v31 = [v28 uuid]) != 0)
        {
          v32 = v31;
          v33 = sub_1D917820C();
          v35 = v34;

          v36 = [v28 podcast];
          if (!v36)
          {
            goto LABEL_27;
          }

          v37 = v36;
          if (([v36 hidden] & 1) != 0 || objc_msgSend(v37, sel_isAuthenticatedDark))
          {

LABEL_27:

            v16 = a6;
            goto LABEL_16;
          }

          v46 = [v37 isPastAutodownloadOrEpisodeLimitDark];

          if (v46)
          {
            goto LABEL_27;
          }

          swift_beginAccess();
          sub_1D8D19AFC(&v49, v33, v35);
          swift_endAccess();

          v38 = [v28 byteSize];

          v16 = a6;
          v39 = *(a6 + 16);
          v40 = __OFSUB__(v39, v38);
          v41 = v39 - v38;
          if (v40)
          {
            __break(1u);
LABEL_36:
            v16 = a6;
            goto LABEL_37;
          }

          *(a6 + 16) = v41;
        }

        else
        {
        }

LABEL_16:
        if (v26 == ++a4)
        {

          a4 = v45;
          goto LABEL_39;
        }
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_38:

LABEL_39:
  swift_beginAccess();
  v42 = *(a7 + 16);

  (a4)(v43, 0);
}

void sub_1D8E73A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 16);

  v8 = sub_1D9178A8C();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8D9F2C8;
  *(v9 + 24) = v6;
  v11[4] = sub_1D8E73D74;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E73B6C;
  v11[3] = &block_descriptor_7;
  v10 = _Block_copy(v11);

  [v7 addEpisodeAutoDownloads:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_1D8E73B6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = sub_1D9178A9C();

  v2(v3);
}

uint64_t sub_1D8E73C68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D8E73CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D8E73D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8E73D74(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, 0);
}

uint64_t objectdestroy_18Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t sub_1D8E73E30(__int16 a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1 & 0x1FF;
  return v2(&v5);
}

uint64_t sub_1D8E73E70(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = sub_1D8E72C28(a1);
  return v3(v4 & 1);
}

uint64_t CoreDataEpisodeAndShowStorage.__allocating_init(context:)(void *a1)
{
  v2 = swift_allocObject();
  CoreDataEpisodeAndShowStorage.init(context:)(a1);
  return v2;
}

uint64_t CoreDataEpisodeAndShowStorage.episodeChanges.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CoreDataEpisodeAndShowStorage.showChanges.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

void sub_1D8E73FDC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1D8D49C40;
  v9[5] = v8;
  v13[4] = sub_1D8E74E98;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_36;
  v10 = _Block_copy(v13);

  v11 = a3;
  v12 = a4;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8E74140(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v6 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  v8 = sub_1D917820C();
  v9 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = *a3;
  v12 = sub_1D917820C();
  *(v7 + 88) = v9;
  *(v7 + 64) = v12;
  *(v7 + 72) = v13;
  v14 = sub_1D91785DC();

  [v6 setPropertiesToFetch_];

  [v6 setResultType_];
  v15 = *(v3 + 64);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v6;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B60, &unk_1D918C270);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = v15;
  v21 = v6;
  sub_1D9177A5C();
  sub_1D8CF48EC(&unk_1EDCD0AB8, &qword_1ECAB4B60, &unk_1D918C270);
  v22 = sub_1D9177B1C();

  return v22;
}

void sub_1D8E74328(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = sub_1D8D9F2C8;
  v9[5] = v8;
  v13[4] = sub_1D8E74E70;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_8;
  v10 = _Block_copy(v13);

  v11 = a3;
  v12 = a4;

  [v11 performBlock_];
  _Block_release(v10);
}

uint64_t sub_1D8E7445C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v4 = sub_1D917908C();
  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_28:
    v7 = sub_1D917935C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_29:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_3:
  v8 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v20 = a3;
  do
  {
    a3 = v8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA72AA90](a3, v5);
      }

      else
      {
        if (a3 >= *(v6 + 16))
        {
          goto LABEL_27;
        }

        v9 = *(v5 + 8 * a3 + 32);
      }

      v10 = v9;
      v8 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      *&v22 = sub_1D917820C();
      *(&v22 + 1) = v11;
      v12 = [v10 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {

        v22 = 0u;
        v23 = 0u;
      }

      v24[0] = v22;
      v24[1] = v23;
      if (*(&v23 + 1))
      {
        break;
      }

      sub_1D8D64450(v24);
LABEL_6:
      ++a3;
      if (v8 == v7)
      {
        a3 = v20;
        goto LABEL_30;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = v26;
    if (!v26)
    {
      goto LABEL_6;
    }

    v14 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1D8D4241C(0, *(v21 + 2) + 1, 1, v21);
    }

    v17 = *(v21 + 2);
    v16 = *(v21 + 3);
    if (v17 >= v16 >> 1)
    {
      v21 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v21);
    }

    *(v21 + 2) = v17 + 1;
    v18 = &v21[16 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v13;
    a3 = v20;
  }

  while (v8 != v7);
LABEL_30:
  (a3)(v21, 0);
}

uint64_t sub_1D8E7475C(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v3 setPredicate_];
  [v3 setResultType_];
  v4 = *(v1 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = sub_1D8E74950;
  v6[4] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F78, &qword_1D918DD20);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v3;
  v11 = v4;
  sub_1D9177A5C();
  sub_1D8CF48EC(&qword_1ECAB0250, &qword_1ECAB4F78, &qword_1D918DD20);
  v12 = sub_1D9177B1C();

  return v12;
}

uint64_t sub_1D8E748E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  result = sub_1D917908C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8E7496C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = sub_1D8E74E58(v15, v16, a4))
  {
    v13 = i;
LABEL_9:
    v14 = (*(a1 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
    v9 &= v9 - 1;
    v15 = *v14;
    v16 = v14[1];
    swift_bridgeObjectRetain_n();
    sub_1D91778BC();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E74A84(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t sub_1D8E74AE0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t CoreDataEpisodeAndShowStorage.deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  return v0;
}

uint64_t CoreDataEpisodeAndShowStorage.__deallocating_deinit()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 56);

  v7 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8E74DF0()
{
  result = qword_1ECAB4F80;
  if (!qword_1ECAB4F80)
  {
    sub_1D8CF2154(255, &qword_1EDCD5B70, 0x1E695D620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4F80);
  }

  return result;
}

uint64_t sub_1D8E74E58(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t PendingDownloadRemovals.pendingDeletions.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

id PendingDownloadRemovals.__allocating_init(episodesPendingDeletion:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1D8E7500C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [v3 dataForKey_];

  if (v8)
  {
    v9 = sub_1D9176C8C();
    v11 = v10;

    v12 = sub_1D91769AC();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1D917699C();
    sub_1D8E76248();
    sub_1D917698C();

    sub_1D8D7567C(v9, v11);
  }

  else
  {
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
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D8CFA924(a1, a2, &v20);
      _os_log_impl(&dword_1D8CEC000, v16, v17, "No user defaults value for key '%s'", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    *a3 = 0;
  }
}

id PendingDownloadRemovals.append(newDeletions:)()
{
  v1 = *(v0 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  os_unfair_lock_lock(v1 + 6);
  sub_1D8E7612C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return v3;
}

void sub_1D8E754A0(uint64_t a1, uint64_t a2)
{

  v3 = sub_1D8FC0FD0(a2);

  sub_1D9111E68(v3);
}

Swift::Void __swiftcall PendingDownloadRemovals.append(episodes:)(Swift::OpaquePointer episodes)
{
  v2 = *(episodes._rawValue + 2);
  if (v2)
  {
    rawValue = episodes._rawValue;
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D8E358F8(0, v2, 0);
    v4 = (rawValue + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        episodes._rawValue = sub_1D8E358F8(v8 > 1, v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 24 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = 2;
      v4 += 2;
      --v2;
    }

    while (v2);
    v1 = v11;
  }

  v10 = *(v1 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  MEMORY[0x1EEE9AC00](episodes._rawValue);
  os_unfair_lock_lock(v10 + 6);
  sub_1D8E7629C(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);
}

Swift::Void __swiftcall PendingDownloadRemovals.write(to:)(NSUserDefaults to)
{
  v2 = sub_1D917820C();
  sub_1D8E75704(v1, v2, v3);
}

uint64_t sub_1D8E75704(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21[2] = a1;
  v7 = sub_1D91769EC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  type metadata accessor for PendingDownloadRemovals();
  sub_1D8D8F8E0(&qword_1ECAB4FD8);
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
    v21[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(a2, a3, v21);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Stored value for key '%s'", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  sub_1D8D7567C(v10, v12);
}

uint64_t sub_1D8E75AD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v21[2] = a1;
  v7 = sub_1D91769EC();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  sub_1D8E761F4();
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
    v21[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(a2, a3, v21);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Stored value for key '%s'", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  sub_1D8D7567C(v10, v12);
}

id PendingDownloadRemovals.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8E75F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001D91CAE70 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9179ACC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D8E76038(uint64_t a1)
{
  v2 = sub_1D8D91FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E76074(uint64_t a1)
{
  v2 = sub_1D8D91FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PendingDownloadRemovals.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E761A0()
{
  result = qword_1ECAB4FC0;
  if (!qword_1ECAB4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FC0);
  }

  return result;
}

unint64_t sub_1D8E761F4()
{
  result = qword_1ECAB4FC8;
  if (!qword_1ECAB4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FC8);
  }

  return result;
}

unint64_t sub_1D8E76248()
{
  result = qword_1ECAB4FD0;
  if (!qword_1ECAB4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FD0);
  }

  return result;
}

uint64_t DebouncedEpisodeAndShowProcessor.__allocating_init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v8 = a1[3];
  v19 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v11 = a2[3];
  v10 = a2[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v13 = a3[3];
  v14 = a3[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a3, v13);
  *(&v18 + 1) = v19;
  *&v18 = v10;
  v16 = sub_1D8E7B258(v9, v12, v15, a4, a5, v22, v11, v8, v13, v18, v14);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

void sub_1D8E763AC()
{
  v1 = *(v0 + 264);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 0xFE) != 2)
  {

    sub_1D8E7AFB8();
  }
}

uint64_t sub_1D8E76414()
{
  v1 = *(v0 + 200);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010);
  sub_1D9177A6C();
}

uint64_t sub_1D8E764E8(uint64_t a1, uint64_t a2)
{
  sub_1D8CFD9D8(a2, v4);
  swift_beginAccess();
  sub_1D8E7B7C0(v4, a1 + 152);
  return swift_endAccess();
}

uint64_t sub_1D8E76584(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v23 = *(v10 - 8);
  v11 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v14 = *(v22 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = *(v5 + 16);
  sub_1D8CFD9D8(a1, v26);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  a3(v26, v18 + 24);
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v19);
  _Block_release(v19);
  (*(v23 + 8))(v13, v10);
  (*(v14 + 8))(v17, v22);
}

uint64_t sub_1D8E7686C(uint64_t a1, uint64_t a2)
{
  sub_1D8CFD9D8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 112));
  sub_1D8D6BCE0(v4, a1 + 112);
  return swift_endAccess();
}

uint64_t sub_1D8E768E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5168, &qword_1D918E2E8);
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v52 - v7;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5170, &qword_1D918E2F0);
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5178, &qword_1D918E2F8);
  v61 = *(v11 - 8);
  v62 = v11;
  v12 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5180, &qword_1D918E300);
  v64 = *(v14 - 8);
  v65 = v14;
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v52 - v16;
  v17 = sub_1D9176EAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176E9C();
  v22 = sub_1D9176E5C();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD0F20);

  v26 = sub_1D917741C();
  v27 = sub_1D9178CDC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v67 = v29;
    *v28 = 136315394;
    v30 = sub_1D8E7B02C();
    v32 = v22;
    v33 = sub_1D8CFA924(v30, v31, &v67);

    *(v28 + 4) = v33;
    v22 = v32;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1D8CFA924(v32, v24, &v67);
    _os_log_impl(&dword_1D8CEC000, v26, v27, "%s Starting to rebuild predicate: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v53 = v22;
  v34 = sub_1D8E7775C(v22, v24);
  v35 = *(v1 + 16);
  v36 = sub_1D9178DBC();
  (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
  v66 = v34;
  v67 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B68, &qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D8D02DF0();
  v37 = v1;
  v38 = v54;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A68, &qword_1ECAB5168, &qword_1D918E2E8);
  v39 = v55;
  v40 = v60;
  sub_1D9177CEC();

  (*(v59 + 8))(v38, v40);
  sub_1D8D08A50(v8, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB0490, &qword_1ECAB5170, &qword_1D918E2F0);
  v42 = v57;
  v41 = v58;
  sub_1D9177C8C();
  (*(v56 + 8))(v39, v41);
  sub_1D8CF2154(0, &unk_1EDCD0970, 0x1E696AB28);
  sub_1D8CF48EC(&qword_1ECAB0638, &qword_1ECAB5178, &qword_1D918E2F8);
  v43 = v62;
  v44 = v63;
  sub_1D9177B9C();
  (*(v61 + 8))(v42, v43);
  v45 = swift_allocObject();
  v46 = v53;
  v45[2] = v37;
  v45[3] = v46;
  v45[4] = v24;
  v47 = swift_allocObject();
  v47[2] = v37;
  v47[3] = v46;
  v47[4] = v24;
  sub_1D8CF48EC(&qword_1ECAB0770, &qword_1ECAB5180, &qword_1D918E300);
  swift_retain_n();

  v48 = v65;
  v49 = sub_1D9177BCC();

  (*(v64 + 8))(v44, v48);
  v50 = *(v37 + 232);
  *(v37 + 232) = v49;
}

void sub_1D8E77124(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v4 = sub_1D91785DC();
  v5 = [objc_opt_self() orPredicateWithSubpredicates_];

  *a2 = v5;
}

uint64_t sub_1D8E771A8(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, &v27);
  if (v28)
  {
    sub_1D8D6BCE0(&v27, v29);
    if (v7)
    {
      v8 = v30;
      v9 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v10 = *(v9 + 32);
      v11 = v7;
      v10(a2, v7, v8, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    sub_1D8D08A50(&v27, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F20);
  v13 = v7;

  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136315650;
    v18 = sub_1D8E7B02C();
    v20 = sub_1D8CFA924(v18, v19, v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D8CFA924(a3, a4, v29);
    *(v16 + 22) = 2080;
    *&v27 = v7;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v22 = sub_1D917826C();
    v24 = sub_1D8CFA924(v22, v23, v29);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "%s Completed predicate rebuild (%s):  %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  v25 = *(a2 + 232);
  *(a2 + 232) = 0;
}

uint64_t sub_1D8E77460(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F20);

  v9 = v7;
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28[0] = v24;
    *v12 = 136315650;
    v14 = sub_1D8E7B02C();
    v16 = sub_1D8CFA924(v14, v15, v28);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D8CFA924(a3, a4, v28);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v17 = v9;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Received new predicate for build (%s): %@", v12, 0x20u);
    sub_1D8D08A50(v13, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v18 = *(a2 + 208);

  sub_1D917791C();

  v19 = v28[0];
  v20 = *(a2 + 208);
  v28[0] = v9;

  sub_1D917790C();

  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, v28);
  if (v28[3])
  {
    sub_1D8CFD9D8(v28, v25);
    sub_1D8D08A50(v28, &qword_1ECAB4FE0, &qword_1D918E020);
    v21 = v26;
    v22 = v27;
    __swift_project_boxed_opaque_existential_1(v25, v26);
    (*(v22 + 8))(a2, v19, v9, v21, v22);

    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {

    return sub_1D8D08A50(v28, &qword_1ECAB4FE0, &qword_1D918E020);
  }
}

uint64_t sub_1D8E7775C(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5128, &qword_1D918E2A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5130, &qword_1D918E2B0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5138, &qword_1D918E2B8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  sub_1D8CFD9D8(v2 + 24, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5140, &qword_1D918E2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5148, &qword_1D918E2C8);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(&v47, v51);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F20);

    v18 = sub_1D917741C();
    v19 = sub_1D9178D1C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v13;
      v21 = v20;
      v22 = swift_slowAlloc();
      v50[0] = v22;
      *v21 = 136315138;
      v23 = sub_1D8E7B02C();
      v25 = sub_1D8CFA924(v23, v24, v50);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "%s Using episode-only predicate", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1DA72CB90](v22, -1, -1);
      v26 = v21;
      v13 = v45;
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    v27 = v52;
    v28 = v53;
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v50[0] = (*(v28 + 16))(v27, v28);
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779DC();
    (*(v46 + 8))(v11, v8);
    sub_1D8CF48EC(&qword_1ECAAFBA8, &qword_1ECAB5138, &qword_1D918E2B8);
    v29 = sub_1D9177B1C();
    (*(v13 + 8))(v16, v12);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    return v29;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1D8D08A50(&v47, &qword_1ECAB5150, &qword_1D918E2D0);
  sub_1D8CFD9D8(v2 + 24, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5158, &qword_1D918E2D8);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(&v47, v51);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v30 = sub_1D917744C();
    __swift_project_value_buffer(v30, qword_1EDCD0F20);

    v31 = sub_1D917741C();
    v32 = sub_1D9178D1C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50[0] = v34;
      *v33 = 136315138;
      v35 = sub_1D8E7B02C();
      v37 = sub_1D8CFA924(v35, v36, v50);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "%s Using per-show predicate", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    sub_1D8E77F88(v44, v45, v51, v7);
    sub_1D8CF48EC(&qword_1ECAB0768, &qword_1ECAB5128, &qword_1D918E2A8);
    v29 = sub_1D9177B1C();
    (*(v4 + 8))(v7, v3);
    goto LABEL_13;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  sub_1D8D08A50(&v47, &qword_1ECAB5160, &qword_1D918E2E0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v38 = sub_1D917744C();
  __swift_project_value_buffer(v38, qword_1EDCD0F20);
  v39 = sub_1D917741C();
  v40 = sub_1D9178CFC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_1D8CEC000, v39, v40, "Received an invalid data source with the base protocol. Nothing will be evaluated", v41, 2u);
    MEMORY[0x1DA72CB90](v41, -1, -1);
  }

  v51[0] = [objc_opt_self() falsePredicate];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v46 + 8))(v11, v8);
  sub_1D8CF48EC(&qword_1ECAAFBA8, &qword_1ECAB5138, &qword_1D918E2B8);
  v29 = sub_1D9177B1C();
  (*(v13 + 8))(v16, v12);
  return v29;
}

uint64_t sub_1D8E77F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v79 = a2;
  v78 = a1;
  v93 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50D8, &qword_1D918E258);
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v61 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50E0, &qword_1D918E260);
  v11 = *(v74 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v61 - v17;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50E8, &qword_1D918E268);
  v76 = *(v75 - 8);
  v19 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v65 = &v61 - v20;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50F0, &qword_1D918E270);
  v83 = *(v81 - 8);
  v21 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v73 = &v61 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50F8, &qword_1D918E278);
  v87 = *(v84 - 8);
  v23 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v77 = &v61 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5100, &qword_1D918E280);
  v26 = *(v25 - 8);
  v85 = v25;
  v86 = v26;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v80 = &v61 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5108, &qword_1D918E288);
  v30 = *(v29 - 8);
  v88 = v29;
  v89 = v30;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v82 = &v61 - v32;
  v67 = v5[32];
  v33 = v5[11];
  v34 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v33);
  v66 = a3;
  v36 = a3[3];
  v35 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v36);
  v37 = (*(v35 + 16))(v36, v35);
  v38 = (*(v34 + 40))(v37, v33, v34);

  v71 = v5[2];
  v39 = v71;
  v70 = sub_1D9178DBC();
  v40 = *(v70 - 8);
  v69 = *(v40 + 56);
  v72 = v40 + 56;
  v69(v18, 1, 1, v70);
  *&v94 = v39;
  v95 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B8, &unk_1D918E230);
  v41 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B88, &qword_1ECAB50B8, &unk_1D918E230);
  v42 = sub_1D8D02DF0();
  v64 = v41;
  v63 = v42;
  sub_1D9177D3C();
  v68 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB0A70, &qword_1ECAB50E0, &qword_1D918E260);
  v43 = v65;
  v62 = v18;
  v44 = v74;
  sub_1D9177CEC();

  (*(v11 + 8))(v14, v44);
  sub_1D8D08A50(v18, &qword_1ECAB4D70, &unk_1D918BCE0);
  v45 = swift_allocObject();
  v46 = v78;
  v45[2] = v5;
  v45[3] = v46;
  v45[4] = v79;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5110, &qword_1D918E290);
  v79 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0498, &qword_1ECAB50E8, &qword_1D918E268);
  sub_1D8CF48EC(&unk_1EDCD0C00, &qword_1ECAB5110, &qword_1D918E290);
  v47 = v73;
  v48 = v75;
  sub_1D9177CBC();

  (*(v76 + 8))(v43, v48);
  sub_1D8CFD9D8(v66, &v94);
  v49 = swift_allocObject();
  *(v49 + 16) = v5;
  sub_1D8D6BCE0(&v94, v49 + 24);
  v78 = sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5118, &qword_1D918E298);
  sub_1D8CF48EC(&qword_1ECAB0550, &qword_1ECAB50F0, &qword_1D918E270);
  sub_1D8CF48EC(&qword_1EDCD0C98, &qword_1ECAB5118, &qword_1D918E298);
  v50 = v77;
  v51 = v81;
  sub_1D9177CBC();

  (*(v83 + 8))(v47, v51);
  v52 = v62;
  v69(v62, 1, 1, v70);
  *&v94 = v71;
  sub_1D8CF48EC(&qword_1ECAB0560, &qword_1ECAB50F8, &qword_1D918E278);
  v53 = v90;
  v54 = v84;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0998, &qword_1ECAB50D8, &qword_1D918E258);
  v55 = v80;
  v56 = v91;
  sub_1D9177CEC();
  (*(v92 + 8))(v53, v56);
  sub_1D8D08A50(v52, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v87 + 8))(v50, v54);
  sub_1D8CF48EC(&qword_1ECAB03B8, &qword_1ECAB5100, &qword_1D918E280);
  v57 = v82;
  v58 = v85;
  sub_1D9177C8C();
  (*(v86 + 8))(v55, v58);
  sub_1D8CF48EC(&qword_1ECAB0630, &qword_1ECAB5108, &qword_1D918E288);
  v59 = v88;
  sub_1D9177B9C();
  return (*(v89 + 8))(v57, v59);
}

uint64_t sub_1D8E78AD4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F20);

  v8 = sub_1D917741C();
  v9 = sub_1D9178CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    v12 = sub_1D8E7B02C();
    v14 = sub_1D8CFA924(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D8CFA924(a3, a4, &v19);
    *(v10 + 22) = 2080;
    v15 = MEMORY[0x1DA729BD0](v6, MEMORY[0x1E69E6158]);
    v17 = sub_1D8CFA924(v15, v16, &v19);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Building new predicate for shows (%s): %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v19 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CF48EC(&unk_1EDCD0A58, &qword_1ECAB75E0, &qword_1D918DE30);
  return sub_1D917773C();
}

uint64_t sub_1D8E78D50(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F20);

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    v11 = sub_1D8E7B02C();
    v13 = sub_1D8CFA924(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D8CFA924(v5, v4, &v17);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Constructing predicate for show %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v17 = (*(v15 + 24))(v5, v4, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D8CF48EC(&qword_1EDCD0B68, &qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D9177BAC();
}

uint64_t sub_1D8E78FA0()
{
  v1 = v0;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5080, &qword_1D918E1F8);
  v71 = *(v72 - 8);
  v2 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v49 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5088, &qword_1D918E200);
  v59 = *(v60 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v6 = v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v49 - v9;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5090, &qword_1D918E208);
  v55 = *(v54 - 8);
  v11 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v13 = v49 - v12;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5098, &qword_1D918E210);
  v57 = *(v58 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v16 = v49 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50A0, &qword_1D918E218);
  v63 = *(v64 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v56 = v49 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50A8, &qword_1D918E220);
  v65 = *(v67 - 8);
  v19 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v61 = v49 - v20;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B0, &qword_1D918E228);
  v68 = *(v69 - 8);
  v21 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v49 - v22;
  v23 = v0[26];

  sub_1D917791C();

  v24 = v78;
  swift_beginAccess();
  sub_1D8E7B67C((v1 + 19), &v78);
  if (v79)
  {
    sub_1D8CFD9D8(&v78, &v75);
    sub_1D8D08A50(&v78, &qword_1ECAB4FE0, &qword_1D918E020);
    v25 = v76;
    v26 = v77;
    __swift_project_boxed_opaque_existential_1(&v75, v76);
    (*(v26 + 16))(v1, v24, v25, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(&v75);
  }

  else
  {
    sub_1D8D08A50(&v78, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  v27 = v1[11];
  v28 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v27);
  *&v78 = (*(v28 + 48))(v24, v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B8, &unk_1D918E230);
  v62 = v24;
  v49[4] = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0B88, &qword_1ECAB50B8, &unk_1D918E230);
  sub_1D9177C4C();

  v52 = v1[2];
  v29 = v52;
  v51 = sub_1D9178DBC();
  v30 = *(v51 - 8);
  v50 = *(v30 + 56);
  v53 = v30 + 56;
  v50(v10, 1, 1, v51);
  *&v78 = v29;
  v31 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C78, &qword_1ECAB5090, &qword_1D918E208);
  v32 = sub_1D8D02DF0();
  v33 = v54;
  v49[2] = v31;
  v49[1] = v32;
  sub_1D9177D3C();
  v49[3] = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB09D8, &qword_1ECAB5088, &qword_1D918E200);
  v34 = v60;
  sub_1D9177CEC();
  (*(v59 + 8))(v6, v34);
  sub_1D8D08A50(v10, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v55 + 8))(v13, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v60 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0400, &qword_1ECAB5098, &qword_1D918E210);
  v35 = v56;
  v36 = v58;
  sub_1D9177B9C();
  (*(v57 + 8))(v16, v36);
  swift_beginAccess();
  sub_1D8CFD9D8((v1 + 14), &v78);
  sub_1D8D6BCE0(&v78, &v75);
  v37 = swift_allocObject();
  sub_1D8D6BCE0(&v75, v37 + 16);
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1D8E7B6EC;
  *(v38 + 24) = v37;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1ECAB0738, &qword_1ECAB50A0, &qword_1D918E218);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0);
  v39 = v61;
  v40 = v64;
  sub_1D9177CBC();

  (*(v63 + 8))(v35, v40);
  v50(v10, 1, 1, v51);
  *&v78 = v52;
  sub_1D8CF48EC(&unk_1ECAB05C8, &qword_1ECAB50A8, &qword_1D918E220);
  v41 = v70;
  v42 = v67;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB09A8, &qword_1ECAB5080, &qword_1D918E1F8);
  v43 = v66;
  v44 = v72;
  sub_1D9177CEC();
  (*(v71 + 8))(v41, v44);
  sub_1D8D08A50(v10, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v65 + 8))(v39, v42);
  sub_1D8CF48EC(&qword_1ECAB03C8, &qword_1ECAB50B0, &qword_1D918E228);

  v45 = v69;
  v46 = sub_1D9177BCC();

  (*(v68 + 8))(v43, v45);
  v47 = v1[30];
  v1[30] = v46;

  sub_1D8CFD9D8((v1 + 14), &v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50C0, &qword_1D918E240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50C8, &qword_1D918E248);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(v73, &v78);
    sub_1D8E79ECC(&v78);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v78);
  }

  else
  {

    v74 = 0;
    memset(v73, 0, sizeof(v73));
    return sub_1D8D08A50(v73, &qword_1ECAB50D0, &qword_1D918E250);
  }
}

uint64_t sub_1D8E79C38(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F20);

  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26[0] = v9;
    *v8 = 136315394;
    v10 = sub_1D8E7B02C();
    v12 = sub_1D8CFA924(v10, v11, v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v23[0] = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, v26);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Finished update for new matches: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  v17 = *(a2 + 240);
  *(a2 + 240) = 0;

  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, v26);
  if (!v26[3])
  {
    return sub_1D8D08A50(v26, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  sub_1D8CFD9D8(v26, v23);
  sub_1D8D08A50(v26, &qword_1ECAB4FE0, &qword_1D918E020);
  v18 = v24;
  v19 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v20 = *(v19 + 24);
  v21 = v3;
  v20(a2, v3, v18, v19);

  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_1D8E79ECC(uint64_t a1)
{
  v2 = v1;
  v84 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FF0, &qword_1D918E190);
  v4 = *(v3 - 8);
  v88 = v3;
  v89 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v87 = v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FF8, &unk_1D918E198);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v64 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5000, &qword_1D918E1A8);
  v65 = *(v72 - 8);
  v16 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v18 = v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5008, &qword_1D918E1B0);
  v20 = *(v19 - 8);
  v76 = v19;
  v77 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v66 = v64 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5010, &qword_1D918E1B8);
  v24 = *(v23 - 8);
  v80 = v23;
  v81 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v73 = v64 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5018, &qword_1D918E1C0);
  v28 = *(v27 - 8);
  v82 = v27;
  v83 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v78 = v64 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5020, &qword_1D918E1C8);
  v32 = *(v31 - 8);
  v85 = v31;
  v86 = v32;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v79 = v64 - v34;
  v35 = v1[11];
  v36 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v35);
  v37 = v1[26];

  sub_1D917791C();

  v38 = *&v90[0];
  v39 = [*&v90[0] NOT];

  v40 = (*(v36 + 56))(v39, v35, v36);
  *&v90[0] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5028, &qword_1D918E1D0);
  v71 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB0360, &qword_1ECAB5028, &qword_1D918E1D0);
  sub_1D9177C4C();

  v69 = v2[2];
  v41 = v69;
  v68 = sub_1D9178DBC();
  v42 = *(v68 - 8);
  v67 = *(v42 + 56);
  v70 = v42 + 56;
  v67(v15, 1, 1, v68);
  *&v90[0] = v41;
  v43 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB06C0, &qword_1ECAB5000, &qword_1D918E1A8);
  v44 = sub_1D8D02DF0();
  v45 = v72;
  v64[1] = v43;
  v64[0] = v44;
  sub_1D9177D3C();
  v64[2] = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB5030, &qword_1ECAB4FF8, &unk_1D918E198);
  v46 = v66;
  v47 = v74;
  sub_1D9177CEC();
  (*(v75 + 8))(v11, v47);
  sub_1D8D08A50(v15, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v65 + 8))(v18, v45);
  v48 = v2[13];
  *(swift_allocObject() + 16) = v48;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5038, &qword_1D918E1D8);
  v75 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB5040, &qword_1ECAB5008, &qword_1D918E1B0);
  sub_1D8CF48EC(&qword_1ECAB0520, &qword_1ECAB5038, &qword_1D918E1D8);
  v49 = v73;
  v50 = v76;
  sub_1D9177CAC();

  (*(v77 + 8))(v46, v50);
  sub_1D8CFD9D8(v84, v90);
  v51 = swift_allocObject();
  sub_1D8D6BCE0(v90, v51 + 16);
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1D8E7B610;
  *(v52 + 24) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1ECAB5050, &qword_1ECAB5010, &qword_1D918E1B8);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0);
  v53 = v78;
  v54 = v80;
  sub_1D9177CBC();

  (*(v81 + 8))(v49, v54);
  v67(v15, 1, 1, v68);
  *&v90[0] = v69;
  sub_1D8CF48EC(&qword_1ECAB5058, &qword_1ECAB5018, &qword_1D918E1C0);
  v55 = v87;
  v56 = v82;
  v57 = v53;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB5060, &qword_1ECAB4FF0, &qword_1D918E190);
  v58 = v79;
  v59 = v88;
  sub_1D9177CEC();
  (*(v89 + 8))(v55, v59);
  sub_1D8D08A50(v15, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v83 + 8))(v57, v56);
  sub_1D8CF48EC(&qword_1ECAB5068, &qword_1ECAB5020, &qword_1D918E1C8);

  v60 = v85;
  v61 = sub_1D9177BCC();

  (*(v86 + 8))(v58, v60);
  v62 = v2[31];
  v2[31] = v61;
}

BOOL sub_1D8E7A9E0(void *a1)
{
  if (*a1 >> 62)
  {
    v1 = sub_1D917935C();
  }

  else
  {
    v1 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

uint64_t *sub_1D8E7AA28(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result >> 62)
  {
    if (v3 < 0)
    {
      v6 = *result;
    }

    result = sub_1D917935C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
LABEL_3:
      v5 = swift_allocObject();
      *(v5 + 16) = a2;
      *(v5 + 24) = v3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5078, &qword_1D918E1F0);
      sub_1D8CF48EC(&qword_1ECAAFBB8, &qword_1ECAB5078, &qword_1D918E1F0);
      sub_1D917841C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E7AB3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    goto LABEL_37;
  }

  v4 = a3;
  v6 = a4;
  v5 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_38;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v8)
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= v7)
  {
    for (; result >= v7; result = sub_1D917935C())
    {
      if (v7 < 0)
      {
        goto LABEL_44;
      }

      if (v5)
      {
        result = sub_1D917935C();
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result < v8)
      {
        goto LABEL_45;
      }

      if (v8 < 0)
      {
        goto LABEL_46;
      }

      if ((v4 & 0xC000000000000001) == 0 || v7 == v8)
      {

        if (!v5)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v7 >= v8)
        {
          goto LABEL_49;
        }

        sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);

        result = v7;
        do
        {
          v10 = result + 1;
          sub_1D91794AC();
          result = v10;
        }

        while (v8 != v10);
        if (!v5)
        {
LABEL_19:
          v11 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
          goto LABEL_22;
        }
      }

      result = sub_1D917975C();
      v11 = v12;
      v7 = v13;
      v8 = v14 >> 1;
LABEL_22:
      v15 = v8 - v7;
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_47;
      }

      if (!v15)
      {
        swift_unknownObjectRelease();
        v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
        v23 = sub_1D8FC0FD0(v4);

        *v6 = v23;
        return result;
      }

      v25 = MEMORY[0x1E69E7CC0];
      result = sub_1D8E358F8(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        goto LABEL_48;
      }

      v24 = v6;
      v4 = v25;
      if (v8 <= v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = v8;
      }

      v8 = v16 - v7;
      v5 = (v11 + 8 * v7);
      v6 = 24;
      while (v8)
      {
        v18 = *(v25 + 16);
        v17 = *(v25 + 24);
        v7 = v18 + 1;
        v19 = *v5;
        if (v18 >= v17 >> 1)
        {
          v21 = v17 > 1;
          v22 = v19;
          sub_1D8E358F8(v21, v18 + 1, 1);
          v19 = v22;
        }

        *(v25 + 16) = v7;
        v20 = v25 + 24 * v18;
        *(v20 + 32) = v19;
        *(v20 + 40) = 0;
        *(v20 + 48) = 1;
        --v8;
        ++v5;
        if (!--v15)
        {
          swift_unknownObjectRelease();
          v6 = v24;
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      result = sub_1D917935C();
      if (result < v8)
      {
        v8 = result;
      }

      if (v8 < v7)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1D8E7ADDC(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F20);

  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_1D8E7B02C();
    v12 = sub_1D8CFA924(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, &v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Finished update for inverted matches: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  v17 = *(a2 + 248);
  *(a2 + 248) = 0;
}

void sub_1D8E7AFDC(uint64_t a1)
{
  v1 = *(a1 + 264);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 2)
  {
    *(v1 + 16) = 3;
  }

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_1D8E7B02C()
{
  if (v0[35])
  {
    v1 = v0[34];
    v2 = v0[35];
  }

  else
  {
    v3 = v0[6];
    v4 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v3);
    v5 = (*(v4 + 8))(v3, v4);
    MEMORY[0x1DA7298F0](v5);

    MEMORY[0x1DA7298F0](0x737365636F725020, 0xEB000000005D726FLL);
    v1 = 91;
    v6 = v0[35];
    v0[34] = 91;
    v0[35] = 0xE100000000000000;
  }

  return v1;
}

uint64_t DebouncedEpisodeAndShowProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  sub_1D8D08A50(v0 + 152, &qword_1ECAB4FE0, &qword_1D918E020);
  v1 = *(v0 + 192);

  v2 = *(v0 + 200);

  v3 = *(v0 + 208);

  v4 = *(v0 + 216);

  v5 = *(v0 + 224);

  v6 = *(v0 + 232);

  v7 = *(v0 + 240);

  v8 = *(v0 + 248);

  v9 = *(v0 + 264);

  v10 = *(v0 + 280);

  return v0;
}

uint64_t DebouncedEpisodeAndShowProcessor.__deallocating_deinit()
{
  DebouncedEpisodeAndShowProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t DebouncedEpisodeAndShowProcessor.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7B258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v36 = a4;
  v37 = a5;
  v33 = a2;
  v34 = a3;
  v31 = a1;
  v35 = a10;
  v13 = *(a9 - 8);
  v14 = *(v13 + 64);
  v32 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v31 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebouncedEpisodeAndShowProcessor();
  v29 = swift_allocObject();
  (*(v24 + 16))(v28, v31, a8);
  (*(v18 + 16))(v22, v33, a7);
  (*(v13 + 16))(v16, v34, a9);
  return sub_1D8DB866C(v28, v22, v16, v36, v37, v29, a7, a8, a9, v35, *(&v35 + 1), v32);
}

unint64_t sub_1D8E7B4D8()
{
  result = qword_1ECAB4FE8;
  if (!qword_1ECAB4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FE8);
  }

  return result;
}

uint64_t sub_1D8E7B610(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}