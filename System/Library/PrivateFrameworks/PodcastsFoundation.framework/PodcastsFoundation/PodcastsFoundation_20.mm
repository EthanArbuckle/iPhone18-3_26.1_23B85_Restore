uint64_t sub_1D8F0F524(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v68 = *(v4 - 8);
  isa = v68[8].isa;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A70, &unk_1D91949A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  isUniquelyReferenced_nonNull_native = &v63 - v10;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v77 = *(v80 - 8);
  v12 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v75 = (&v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v76 = (&v63 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v63 - v17;
  if (a1 >> 62)
  {
    goto LABEL_66;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v67 = v7;
    v69 = v4;
    v70 = v2;
    swift_retain_n();
    if (!i)
    {
      break;
    }

    v2 = 0;
    v74 = (a1 & 0xC000000000000001);
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v4 = v77 + 48;
    v20 = MEMORY[0x1E69E7CC0];
    *&v71 = a1;
    while (1)
    {
      if (v74)
      {
        v21 = MEMORY[0x1DA72AA90](v2, a1);
      }

      else
      {
        if (v2 >= *(v19 + 16))
        {
          goto LABEL_60;
        }

        v21 = *(a1 + 8 * v2 + 32);
      }

      v22 = v21;
      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      sub_1D8F0FDB0(v21, isUniquelyReferenced_nonNull_native);

      if ((*v4)(isUniquelyReferenced_nonNull_native, 1, v80) == 1)
      {
        sub_1D8D08A50(isUniquelyReferenced_nonNull_native, &qword_1ECAB6A70, &unk_1D91949A0);
      }

      else
      {
        v23 = v72;
        sub_1D8F1242C(isUniquelyReferenced_nonNull_native, v72);
        sub_1D8F1242C(v23, v75);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D8ECCCBC(0, v20[2] + 1, 1, v20);
        }

        v25 = v20[2];
        v24 = v20[3];
        if (v25 >= v24 >> 1)
        {
          v20 = sub_1D8ECCCBC(v24 > 1, v25 + 1, 1, v20);
        }

        v20[2] = v25 + 1;
        sub_1D8F1242C(v75, v20 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v25);
        a1 = v71;
      }

      v2 = (v2 + 1);
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_19:

  a1 = v20[2];
  if (!a1)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = v70;
    goto LABEL_39;
  }

  v27 = 0;
  v74 = v68 + 1;
  v75 = v68 + 2;
  v72 = a1 - 1;
  v28 = MEMORY[0x1E69E7CC0];
  isUniquelyReferenced_nonNull_native = &unk_1D9194630;
  *&v26 = 136315650;
  v71 = v26;
  v29 = v70;
LABEL_21:
  v30 = v27;
  while (1)
  {
    if (v30 >= v20[2])
    {
      goto LABEL_64;
    }

    v31 = v76;
    sub_1D8F1249C(v20 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v30, v76);
    v2 = *v31;
    v7 = *(v80 + 48);
    v32 = v31 + v7;
    v4 = v73;
    sub_1D8F1016C(v32, &v78);
    if (v29)
    {
      break;
    }

    if ((v79 & 1) == 0)
    {
      v70 = v78;
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v33 = sub_1D917744C();
      __swift_project_value_buffer(v33, qword_1EDCD0F20);
      (v75->isa)(v67, v76 + v7, v69);
      v34 = sub_1D917741C();
      v35 = sub_1D9178CDC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v65 = v35;
        v37 = v36;
        v66 = swift_slowAlloc();
        v78 = v66;
        *v37 = v71;
        sub_1D8D11A14(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
        v68 = v34;
        v38 = v67;
        v39 = sub_1D9179A4C();
        v63 = v40;
        v64 = v39;
        (v74->isa)(v38, v69);
        v64 = sub_1D8CFA924(v64, v63, &v78);

        *(v37 + 4) = v64;
        *(v37 + 12) = 2048;
        v41 = v70;
        *(v37 + 14) = v70 >> 20;
        *(v37 + 22) = 2048;
        *(v37 + 24) = v41;
        _os_log_impl(&dword_1D8CEC000, v68, v65, "Found downloaded file at %s with size: %llu MB (%lluB)", v37, 0x20u);
        v42 = v66;
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x1DA72CB90](v42, -1, -1);
        MEMORY[0x1DA72CB90](v37, -1, -1);
      }

      else
      {

        (v74->isa)(v67, v69);
      }

      sub_1D8D08A50(v76, &qword_1ECAB6C60, &unk_1D9194630);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D8ECCBB8(0, *(v28 + 2) + 1, 1, v28);
      }

      v7 = *(v28 + 2);
      v43 = *(v28 + 3);
      v4 = v7 + 1;
      if (v7 >= v43 >> 1)
      {
        v28 = sub_1D8ECCBB8((v43 > 1), v7 + 1, 1, v28);
      }

      v27 = v30 + 1;
      *(v28 + 2) = v4;
      v44 = &v28[16 * v7];
      v45 = v70;
      *(v44 + 4) = v2;
      *(v44 + 5) = v45;
      if (v72 == v30)
      {
LABEL_39:
        v70 = v29;

        a1 = *(v28 + 2);
        if (!a1)
        {
          v4 = MEMORY[0x1E69E7CC8];
LABEL_57:

          return v4;
        }

        v46 = 0;
        v47 = (v28 + 40);
        v4 = MEMORY[0x1E69E7CC8];
        while (2)
        {
          if (v46 >= *(v28 + 2))
          {
            goto LABEL_61;
          }

          v2 = *(v47 - 1);
          v48 = *v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v78 = v4;
          v49 = sub_1D8D490F4(v2);
          v51 = *(v4 + 16);
          v52 = (v50 & 1) == 0;
          v53 = __OFADD__(v51, v52);
          v54 = v51 + v52;
          if (v53)
          {
            goto LABEL_62;
          }

          v7 = v50;
          if (*(v4 + 24) >= v54)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_47;
            }

            isUniquelyReferenced_nonNull_native = v49;
            sub_1D8F834A4();
            v49 = isUniquelyReferenced_nonNull_native;
            v4 = v78;
            if ((v7 & 1) == 0)
            {
LABEL_48:
              *(v4 + 8 * (v49 >> 6) + 64) |= 1 << v49;
              *(*(v4 + 48) + 8 * v49) = v2;
              *(*(v4 + 56) + 8 * v49) = 0;
              v56 = *(v4 + 16);
              v53 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v53)
              {
                goto LABEL_65;
              }

              *(v4 + 16) = v57;
            }
          }

          else
          {
            sub_1D90062A4(v54, isUniquelyReferenced_nonNull_native);
            v4 = v78;
            v49 = sub_1D8D490F4(v2);
            if ((v7 & 1) != (v55 & 1))
            {
              result = sub_1D9179CFC();
              __break(1u);
              return result;
            }

LABEL_47:
            if ((v7 & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v58 = *(v4 + 56);
          v59 = *(v58 + 8 * v49);
          v60 = __CFADD__(v59, v48);
          v61 = v59 + v48;
          if (v60)
          {
            goto LABEL_63;
          }

          ++v46;
          *(v58 + 8 * v49) = v61;
          v47 += 2;
          if (a1 == v46)
          {
            goto LABEL_57;
          }

          continue;
        }
      }

      goto LABEL_21;
    }

    ++v30;
    sub_1D8D08A50(v76, &qword_1ECAB6C60, &unk_1D9194630);
    if (a1 == v30)
    {
      goto LABEL_39;
    }
  }

  sub_1D8D08A50(v76, &qword_1ECAB6C60, &unk_1D9194630);

  return v4;
}

uint64_t sub_1D8F0FDB0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v26 - v6;
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = sub_1D917820C();
  *(&v28 + 1) = v13;
  v14 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30 = v28;
  v31 = v29;
  if (!*(&v29 + 1))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v26[1] = v27;
    *&v28 = sub_1D917820C();
    *(&v28 + 1) = v15;
    v16 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v16)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30 = v28;
    v31 = v29;
    if (*(&v29 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_16;
      }

      v17 = v27;
      sub_1D9176BFC();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        v23 = *(v9 + 32);
        v23(v12, v7, v8);
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
        v25 = *(v24 + 48);
        *a2 = v17;
        v23(&a2[v25], v12, v8);
        return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
      }

      v18 = &unk_1ECAB5910;
      v19 = &qword_1D9188C90;
      v20 = v7;
      goto LABEL_15;
    }

LABEL_14:
    v18 = &qword_1ECAB57F0;
    v19 = &unk_1D9190AA0;
    v20 = &v30;
LABEL_15:
    sub_1D8D08A50(v20, v18, v19);
  }

LABEL_16:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

void sub_1D8F1016C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v37[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager), *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager + 24));
  v10 = sub_1D9176BCC();
  v11 = (*(v9 + 32))(v10);

  if ((v11 & 1) == 0)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD0F20);
    (*(v5 + 16))(v8, a1, v4);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136315138;
      sub_1D8D11A14(&qword_1ECAB2C88, MEMORY[0x1E6968FB0]);
      v28 = sub_1D9179A4C();
      v30 = v29;
      (*(v5 + 8))(v8, v4);
      v31 = sub_1D8CFA924(v28, v30, v37);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "Episode record references non-existing file: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    goto LABEL_13;
  }

  v12 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v37[0] = 0;
  v14 = [v12 attributesOfItemAtPath:v13 error:v37];

  v15 = v37[0];
  if (!v14)
  {
    v34 = v37[0];
    sub_1D9176A6C();

    swift_willThrow();
    goto LABEL_15;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1D8D11A14(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey);
  v16 = sub_1D917805C();
  v17 = v15;

  if (!*(v16 + 16) || (v18 = sub_1D8F06900(*MEMORY[0x1E696A3B8]), (v19 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_1D8CFAD1C(*(v16 + 56) + 32 * v18, v37);

  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v21 = 0;
    v22 = 1;
    goto LABEL_14;
  }

  v20 = v36;
  v21 = [v36 unsignedLongLongValue];

  v22 = 0;
LABEL_14:
  v32 = v35;
  *v35 = v21;
  *(v32 + 8) = v22;
LABEL_15:
  v33 = *MEMORY[0x1E69E9840];
}

uint64_t MediaSpaceCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator__mediaDistribution;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager));

  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink);

  return v0;
}

uint64_t MediaSpaceCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator__mediaDistribution;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager));

  v5 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_requestSubject);

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_observerSink);

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F1084C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaSpaceCalculator();
  result = sub_1D917788C();
  *a1 = result;
  return result;
}

id MediaSpaceCalculator.MediaSpaceDistribution.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000003FLL, 0x80000001D91CCDC0);
  v6 = objc_opt_self();
  result = [v6 stringWithBytesize_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v9 = sub_1D917820C();
  v11 = v10;

  MEMORY[0x1DA7298F0](v9, v11);

  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CCE00);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v13 = sub_1D917820C();
  v15 = v14;

  MEMORY[0x1DA7298F0](v13, v15);

  MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91CCE20);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1D917820C();
  v19 = v18;

  MEMORY[0x1DA7298F0](v17, v19);

  MEMORY[0x1DA7298F0](0xD000000000000018, 0x80000001D91CCE40);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = sub_1D917820C();
  v23 = v22;

  MEMORY[0x1DA7298F0](v21, v23);

  MEMORY[0x1DA7298F0](0xD00000000000001ALL, 0x80000001D91CCE60);
  result = [v6 stringWithBytesize_];
  if (result)
  {
    v24 = result;
    v25 = sub_1D917820C();
    v27 = v26;

    MEMORY[0x1DA7298F0](v25, v27);

    MEMORY[0x1DA7298F0](32010, 0xE200000000000000);
    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1D8F10B70()
{
  v1 = *v0;
  v2 = 0x7053656D756C6F76;
  v3 = 0x6573556C61746F74;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1D8F10C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F12264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F10C4C(uint64_t a1)
{
  v2 = sub_1D8F114B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F10C88(uint64_t a1)
{
  v2 = sub_1D8F114B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MediaSpaceCalculator.MediaSpaceDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A18, &qword_1D9194338);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v20 = v1[2];
  v21 = v9;
  v18 = v1[4];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F114B0();
  sub_1D9179F1C();
  v23 = v10;
  v22 = 0;
  sub_1D8F11504();
  sub_1D91799FC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v14 = v19;
  v13 = v20;
  v15 = v18;
  v23 = v21;
  v22 = 1;
  sub_1D91799FC();
  v23 = v13;
  v22 = 2;
  sub_1D91799FC();
  v23 = v14;
  v22 = 3;
  sub_1D91799FC();
  v23 = v15;
  v22 = 4;
  sub_1D91799FC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t MediaSpaceCalculator.MediaSpaceDistribution.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A30, &qword_1D9194340);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F114B0();
  sub_1D9179EEC();
  if (!v2)
  {
    v21 = 0;
    sub_1D8F11558();
    sub_1D91798FC();
    v11 = v22;
    v21 = 1;
    sub_1D91798FC();
    v20 = v11;
    v12 = v22;
    v21 = 2;
    sub_1D91798FC();
    v19 = v12;
    v13 = v22;
    v21 = 3;
    sub_1D91798FC();
    v18 = v22;
    v21 = 4;
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v15 = v22;
    v16 = v19;
    *a2 = v20;
    a2[1] = v16;
    v17 = v18;
    a2[2] = v13;
    a2[3] = v17;
    a2[4] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaSpaceCalculator.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A40, &qword_1D9194348);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  swift_endAccess();
  v11 = sub_1D8CF48EC(&qword_1ECAB01F8, &qword_1ECAB6A48, &qword_1D9194350);
  MEMORY[0x1DA729380](v6, v11);
  (*(v7 + 8))(v10, v6);
  sub_1D917787C();
  return (*(v2 + 8))(v5, v1);
}

BOOL sub_1D8F11408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = *(a3 + 40);
  v6 = sub_1D9179DAC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(*(a3 + 48) + 8 * v8);
    result = v10 == a1;
    if (v10 == a1)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

unint64_t sub_1D8F114B0()
{
  result = qword_1ECAB6A20;
  if (!qword_1ECAB6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A20);
  }

  return result;
}

unint64_t sub_1D8F11504()
{
  result = qword_1ECAB6A28;
  if (!qword_1ECAB6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A28);
  }

  return result;
}

unint64_t sub_1D8F11558()
{
  result = qword_1ECAB6A38;
  if (!qword_1ECAB6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A38);
  }

  return result;
}

unint64_t sub_1D8F11634()
{
  result = qword_1ECAB6A58;
  if (!qword_1ECAB6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A58);
  }

  return result;
}

unint64_t sub_1D8F1168C()
{
  result = qword_1ECAB6A60;
  if (!qword_1ECAB6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A60);
  }

  return result;
}

unint64_t sub_1D8F116E4()
{
  result = qword_1ECAB6A68;
  if (!qword_1ECAB6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A68);
  }

  return result;
}

void *sub_1D8F11738(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
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

    v8 = sub_1D8F11FA4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D8F117C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    result = sub_1D9179DAC();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v17;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8F119C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = (v17 + 40 * v16);
    v35 = v19[1];
    v36 = *v19;
    v20 = v19[3];
    v33 = v19[4];
    v34 = v19[2];
    v21 = *(v9 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v18);
    result = sub_1D9179E1C();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v9 + 48) + 8 * v25) = v18;
    v30 = (*(v9 + 56) + 40 * v25);
    result = v36;
    *v30 = v36;
    v30[1] = v35;
    v30[2] = v34;
    v30[3] = v20;
    v30[4] = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = sub_1D8D1C3BC(v36, v35, v34);
    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8F11C20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v28 = *(*(v4 + 56) + v16);
    v18 = *(v9 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v17);
    result = sub_1D9179E1C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + v22) = v28;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1D8F11E40()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v1 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:0];
  [v0 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189060;
  v3 = sub_1D917820C();
  v4 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_1D917820C();
  *(v2 + 88) = v4;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  v8 = sub_1D917820C();
  *(v2 + 120) = v4;
  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  v10 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  [v0 setResultType_];
  return v0;
}

uint64_t sub_1D8F11FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v20 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    v21 = *(*(a3 + 56) + 8 * v16);
    result = a4(v17, &v21);
    if (result)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1D8F117C8(v20, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1D8F117C8(v20, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8F120E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
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
    result = sub_1D8F11FA4(v8, v6, v4, a2);
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
  v12 = sub_1D8F11738(v11, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D8F12264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7053656D756C6F76 && a2 == 0xEB00000000656361;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91CCF10 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573556C61746F74 && a2 == 0xEE00656361705364 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91CCF30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91CCF50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D8F1242C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F1249C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F1254C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SettingTransition.init(originValue:newValue:transitionTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 - 8) + 32);
  v9(a5, a1, a4);
  v10 = type metadata accessor for SettingTransition();
  v9(a5 + *(v10 + 44), a2, a4);
  v11 = *(v10 + 48);
  v12 = sub_1D9176E3C();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a3, v12);
}

uint64_t SettingTransition.transitionTime.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D9176E3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D8F127A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566E696769726FLL && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615677656ELL && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEE00656D69546E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t _s18PodcastsFoundation26PlayButtonTimeFormatHelperV030WidgetCountDownSizeRestrictingG0O9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F1294C(char a1)
{
  if (!a1)
  {
    return 0x61566E696769726FLL;
  }

  if (a1 == 1)
  {
    return 0x65756C615677656ELL;
  }

  return 0x697469736E617274;
}

BOOL sub_1D8F129B8(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  return sub_1D8F128CC(*a1, *a2);
}

uint64_t sub_1D8F129D0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return _s18PodcastsFoundation26PlayButtonTimeFormatHelperV030WidgetCountDownSizeRestrictingG0O9hashValueSivg_0(*v1);
}

uint64_t sub_1D8F129E0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  return sub_1D8F128DC(a1, *v2);
}

uint64_t sub_1D8F129F0(uint64_t a1, void *a2)
{
  sub_1D9179DBC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  sub_1D8F128DC(v8, *v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F12A3C(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  return sub_1D8F1294C(*v1);
}

uint64_t sub_1D8F12A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_1D8F127A8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D8F12A80@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  result = sub_1D8F139AC();
  *a2 = result;
  return result;
}

uint64_t sub_1D8F12AB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8F12B08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SettingTransition.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v17[0] = a2;
  v17[1] = v4;
  v5 = a2[4];
  type metadata accessor for SettingTransition.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1D9179A1C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F1C();
  v20 = 0;
  v12 = v17[3];
  sub_1D91799FC();
  if (!v12)
  {
    v13 = v17[0];
    v14 = *(v17[0] + 44);
    v19 = 1;
    sub_1D91799FC();
    v15 = *(v13 + 48);
    v18 = 2;
    sub_1D9176E3C();
    sub_1D8F132BC(&qword_1ECAB2C80);
    sub_1D91799FC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t SettingTransition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v41 = sub_1D9176E3C();
  v38 = *(v41 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a2 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v35 - v13;
  type metadata accessor for SettingTransition.CodingKeys();
  swift_getWitnessTable();
  v49 = sub_1D917992C();
  v45 = *(v49 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v35 - v15;
  v44 = a2;
  v46 = a3;
  v17 = type metadata accessor for SettingTransition();
  v37 = *(v17 - 8);
  v18 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v16;
  v22 = v50;
  sub_1D9179EEC();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v35 = v17;
  v36 = v20;
  v23 = v47;
  v50 = a1;
  v53 = 0;
  v24 = v42;
  v25 = v43;
  v26 = v44;
  sub_1D91798FC();
  v27 = *(v23 + 32);
  v27(v36, v25, v26);
  v52 = 1;
  sub_1D91798FC();
  v27(&v36[*(v35 + 44)], v24, v26);
  v51 = 2;
  sub_1D8F132BC(&unk_1EDCD7610);
  v29 = v40;
  v28 = v41;
  v30 = v48;
  sub_1D91798FC();
  (*(v45 + 8))(v30, v49);
  v32 = v35;
  v31 = v36;
  (*(v38 + 32))(&v36[*(v35 + 48)], v29, v28);
  v33 = v37;
  (*(v37 + 16))(v39, v31, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return (*(v33 + 8))(v31, v32);
}

uint64_t sub_1D8F132BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8F1333C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1D9176E3C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8F133C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v11 + v13 + (v15 & ~v12)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = *(v9 + 48);

          return v23((((a1 + v15) & ~v12) + v11 + v13) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1D8F13648(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D9176E3C();
  v11 = v8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 + 80);
  v17 = *(v12 + 80);
  v18 = ((v14 + v17 + ((v14 + v16) & ~v16)) & ~v17) + *(*(v10 - 8) + 64);
  if (a3 <= v15)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v15 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v15 < a2)
  {
    v20 = ~v15 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_46:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
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
  if (v9 >= v13)
  {
    v26 = *(v11 + 56);

    v26(a1, a2, v9, v7);
  }

  else
  {
    v25 = *(v12 + 56);

    v25(((&a1[v14 + v16] & ~v16) + v14 + v17) & ~v17, a2);
  }
}

id MediaItemMetadataLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D8F139E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D91785DC();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v12[4] = sub_1D8F13DE0;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_31;
  v9 = _Block_copy(v12);
  v10 = v3;
  v11 = a1;

  [v11 loadValuesAsynchronouslyForKeys:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1D8F13B04(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&a1[OBJC_IVAR___MTMediaItemMetadataLoader_metadataLoadingQueue];
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1D8F14DE4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);
  v19 = a2;
  v20 = a1;

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v23);
}

uint64_t sub_1D8F13DEC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v44 = a3;
  v45 = a2;
  v5 = sub_1D9177E0C();
  v51 = *(v5 - 8);
  v52 = v5;
  v6 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D9177E9C();
  v48 = *(v50 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 metadata];
  sub_1D8CF2154(0, &qword_1ECAB4820, 0x1E6987FE0);
  v12 = sub_1D91785FC();

  v58 = swift_allocObject();
  *(v58 + 16) = MEMORY[0x1E69E7CC8];
  v57 = dispatch_group_create();
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v16 = v12 & 0xFFFFFFFFFFFFFF8;
    v59 = 0x80000001D91CB5A0;
    v54 = &v62;
    v17 = &off_1E856D000;
    v55 = v12 & 0xFFFFFFFFFFFFFF8;
    v56 = v12 & 0xC000000000000001;
    v53 = i;
    while (1)
    {
      if (v15)
      {
        v18 = MEMORY[0x1DA72AA90](v14, v12);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(v12 + 8 * v14 + 32);
      }

      v19 = v18;
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v21 = [v18 v17[298]];
      if (v21 && (v66 = v21, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5548, &qword_1D9194900), (swift_dynamicCast() & 1) != 0))
      {
        v23 = aBlock;
        v22 = v61;
        if (aBlock == 0xD000000000000012 && v59 == v61 || (sub_1D9179ACC() & 1) != 0)
        {
          v24 = v12;
          v25 = v57;
          dispatch_group_enter(v57);
          v26 = sub_1D91785DC();
          v27 = swift_allocObject();
          v27[2] = v19;
          v27[3] = v23;
          v28 = v17;
          v29 = v58;
          v27[4] = v22;
          v27[5] = v29;
          v27[6] = v25;
          v64 = sub_1D8F14DF0;
          v65 = v27;
          aBlock = MEMORY[0x1E69E9820];
          v61 = 1107296256;
          v62 = sub_1D8CF5F60;
          v63 = &block_descriptor_29;
          v30 = _Block_copy(&aBlock);
          v31 = v19;
          v17 = v28;

          v32 = v25;
          v12 = v24;
          v16 = v55;

          [v31 loadValuesAsynchronouslyForKeys:v26 completionHandler:v30];

          _Block_release(v30);
          i = v53;
          v15 = v56;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v14;
      if (v20 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v33 = v45;
  v34 = *&v45[OBJC_IVAR___MTMediaItemMetadataLoader_metadataLoadingQueue];
  v35 = swift_allocObject();
  v35[2] = v58;
  v35[3] = v33;
  v36 = v46;
  v35[4] = v44;
  v35[5] = v36;
  v64 = sub_1D8F14E00;
  v65 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D8CF5F60;
  v63 = &block_descriptor_35;
  v37 = _Block_copy(&aBlock);

  v38 = v33;

  v39 = v47;
  sub_1D9177E4C();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v40 = v49;
  v41 = v52;
  sub_1D91792CC();
  v42 = v57;
  sub_1D9178D7C();
  _Block_release(v37);

  (*(v51 + 8))(v40, v41);
  (*(v48 + 8))(v39, v50);
}

void sub_1D8F14428(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5)
{
  v34 = a4;
  v35 = a2;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v14 = [a1 statusOfValueForKey:v13 error:0];

  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_1ECAAFBE8);
  swift_beginAccess();
  (*(v9 + 16))(v12, v15, v8);

  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a1;
    v19 = v18;
    v20 = a5;
    v21 = swift_slowAlloc();
    v37 = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D8CFA924(v35, a3, &v37);
    *(v19 + 12) = 2048;
    *(v19 + 14) = v14;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Status of metadata key %s is %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v22 = v21;
    a5 = v20;
    MEMORY[0x1DA72CB90](v22, -1, -1);
    v23 = v19;
    a1 = v33;
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  if (v14 == 2)
  {
    v24 = [a1 stringValue];
    if (v24)
    {
      v25 = a5;
      v26 = v24;
      v27 = sub_1D917820C();
      v29 = v28;

      a5 = v25;
      v30 = v34;
      swift_beginAccess();

      v31 = *(v30 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v30 + 16);
      *(v30 + 16) = 0x8000000000000000;
      sub_1D8F50170(v27, v29, v35, a3, isUniquelyReferenced_nonNull_native);

      *(v30 + 16) = v36;
      swift_endAccess();
    }
  }

  dispatch_group_leave(a5);
}

uint64_t sub_1D8F1474C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  swift_beginAccess();
  v15 = *(a1 + 16);
  if (*(v15 + 16) && (v16 = sub_1D8D33C70(0xD000000000000012, 0x80000001D91CB5A0), (v17 & 1) != 0))
  {
    v18 = (*(v15 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    swift_endAccess();

    v21 = sub_1D8F14E0C(v19, v20);

    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v11, v22, v7);

    v23 = sub_1D917741C();
    v24 = sub_1D9178D1C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = a3;
      v26 = v25;
      v27 = swift_slowAlloc();
      v38[1] = a4;
      v28 = v27;
      v40 = v21;
      v41 = v27;
      *v26 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6BE0, &qword_1D9194908);
      v29 = sub_1D917826C();
      v31 = sub_1D8CFA924(v29, v30, &v41);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Metadata in HLS playlist has HLS keys %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      v32 = v26;
      a3 = v39;
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    a3(v21);
  }

  else
  {
    swift_endAccess();
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v14, v34, v7);
    v35 = sub_1D917741C();
    v36 = sub_1D9178CFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Metadata in HLS playlist was missing HLS key information", v37, 2u);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    (*(v8 + 8))(v14, v7);
    return (a3)(0);
  }
}

void sub_1D8F14CE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D91785DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id MediaItemMetadataLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaItemMetadataLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D8F14E0C(uint64_t a1, unint64_t a2)
{
  v55[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  v12 = sub_1D9176C4C();
  if (v13 >> 60 == 15)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);

    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_1D8CFA924(a1, a2, v55);
      _os_log_impl(&dword_1D8CEC000, v15, v16, "Metadata in HLS playlist was not base64 encoded: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
LABEL_28:
    v27 = 0;
    goto LABEL_29;
  }

  v19 = v12;
  v20 = v13;
  v21 = objc_opt_self();
  v22 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v54[0] = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:v54];

  if (!v23)
  {
    v36 = v54[0];
    v37 = sub_1D9176A6C();

    swift_willThrow();
    goto LABEL_22;
  }

  v24 = v54[0];
  sub_1D917928C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v4, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v5 + 16))(v11, v38, v4);

    v39 = sub_1D917741C();
    v40 = sub_1D9178CFC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v51 = v20;
      v42 = a1;
      v43 = v41;
      v44 = swift_slowAlloc();
      v55[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1D8CFA924(v42, a2, v55);
      _os_log_impl(&dword_1D8CEC000, v39, v40, "base64 encoded metadata in HLS playlist was not a JSON object: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1DA72CB90](v44, -1, -1);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      v45 = v19;
      v46 = v51;
    }

    else
    {
      v45 = v19;
      v46 = v20;
    }

    sub_1D8D75668(v45, v46);

    (*(v5 + 8))(v11, v4);
    goto LABEL_28;
  }

  v51 = v20;
  v49 = v19;
  v50 = v55[0];
  v25 = *(v55[0] + 16);
  if (v25)
  {
    v26 = (v50 + 32);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = *v26;
      v52 = 6910581;
      v53 = 0xE300000000000000;

      sub_1D91793EC();
      if (*(v28 + 16) && (v29 = sub_1D8D6550C(v54), (v30 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v28 + 56) + 32 * v29, v55);
        sub_1D8D9A308(v54);

        if (swift_dynamicCast())
        {
          v32 = v52;
          v31 = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1D8D4241C(0, *(v27 + 2) + 1, 1, v27);
          }

          v34 = *(v27 + 2);
          v33 = *(v27 + 3);
          if (v34 >= v33 >> 1)
          {
            v27 = sub_1D8D4241C((v33 > 1), v34 + 1, 1, v27);
          }

          *(v27 + 2) = v34 + 1;
          v35 = &v27[16 * v34];
          *(v35 + 4) = v32;
          *(v35 + 5) = v31;
        }
      }

      else
      {

        sub_1D8D9A308(v54);
      }

      ++v26;
      --v25;
    }

    while (v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D75668(v49, v51);
LABEL_29:
  v47 = *MEMORY[0x1E69E9840];
  return v27;
}

id SecureDownloadRenewalManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8F15484()
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
  v9[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB17C0 = result;
  return result;
}

id sub_1D8F156F8()
{
  v1 = OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader;
  v2 = *(v0 + OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader);
  }

  else
  {
    v4 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:0 useCase:1 account:0 urlProtocolDelegate:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SecureDownloadRenewalManager.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D8CFDE70(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SecureDownloadRenewalManager.init(delegate:)(uint64_t a1)
{
  v1 = sub_1D8CFDE70(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_1D8F15808(void (*a1)(void), uint64_t a2)
{
  v46 = a2;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1D9177E0C();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1D9177E9C();
  v41 = *(v43 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917744C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = [objc_opt_self() sharedInstance];
  v18 = [v17 mainOrPrivateContext];

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = ObjectType;
  v53 = sub_1D8F1E5F4;
  v54 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1D8CF5F60;
  v52 = &block_descriptor_32;
  v21 = _Block_copy(&aBlock);
  v22 = v18;

  [v22 performBlockAndWaitWithSave_];
  _Block_release(v21);
  swift_beginAccess();
  v23 = *(v19 + 16);

  if (v23 < 1)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v10 + 16))(v13, v36, v9);
    v37 = sub_1D917741C();
    v38 = sub_1D9178D1C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D8CEC000, v37, v38, "Did not locate any orphaned key data", v39, 2u);
      MEMORY[0x1DA72CB90](v39, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    if (v47)
    {
      v47(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v9, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v10 + 16))(v16, v24, v9);
    v25 = sub_1D917741C();
    v26 = sub_1D9178D1C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v23;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Did locate %ld orphaned key data", v27, 0xCu);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    (*(v10 + 8))(v16, v9);
    if (qword_1ECAB17B8 != -1)
    {
      swift_once();
    }

    v28 = swift_allocObject();
    v29 = v40;
    v30 = v46;
    v31 = v47;
    v28[2] = v40;
    v28[3] = v31;
    v28[4] = v30;
    v53 = sub_1D8F210E8;
    v54 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1D8CF5F60;
    v52 = &block_descriptor_9;
    v32 = _Block_copy(&aBlock);
    v33 = v29;
    sub_1D8D1F93C(v31);
    sub_1D9177E4C();
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v34 = v42;
    v35 = v45;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v8, v34, v32);
    _Block_release(v32);

    (*(v44 + 8))(v34, v35);
    (*(v41 + 8))(v8, v43);
  }
}

uint64_t sub_1D8F15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 mainOrPrivateContext];

  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = v16;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = ObjectType;
  v36 = sub_1D8F1E600;
  v37 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D8CF5F60;
  v35 = &block_descriptor_15_1;
  v18 = _Block_copy(&aBlock);
  v19 = v16;
  sub_1D8D1F93C(a2);

  [v19 performBlockAndWaitWithSave_];
  _Block_release(v18);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v20 = swift_allocObject();
  v21 = v26;
  v20[2] = v26;
  v20[3] = a2;
  v20[4] = a3;
  v36 = sub_1D8F210E8;
  v37 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D8CF5F60;
  v35 = &block_descriptor_21_0;
  v22 = _Block_copy(&aBlock);
  sub_1D8D1F93C(a2);
  v23 = v21;
  sub_1D9177E4C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v24 = v30;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v10, v22);
  _Block_release(v22);

  (*(v29 + 8))(v10, v24);
  (*(v27 + 8))(v14, v28);
}

void sub_1D8F16420(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(a1, a2);
  if (v11)
  {
    v17 = v11;
    [v11 setPendingDeletion_];
    v12 = v17;
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v6, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Did not locate key data for episode adam id %lld", v16, 0xCu);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    if (a3)
    {
      a3(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_1D8F16720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = v4;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = ObjectType;
  v15[4] = sub_1D8F1E89C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_27_1;
  v12 = _Block_copy(v15);

  v13 = v10;
  v14 = v4;
  sub_1D8D1F93C(a2);

  [v13 performBlock_];
  _Block_release(v12);
}

uint64_t sub_1D8F16888(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = sub_1D917744C();
  v39 = *(v7 - 8);
  v40 = v7;
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E0C();
  v46 = *(v11 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (a1 + 32);
    while (1)
    {
      v23 = *v21++;
      v22 = v23;
      v24 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(v23, a2);
      if (!v24)
      {
        break;
      }

      v25 = v24;
      [v24 setPendingDeletion_];

      if (!--v20)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v32 = v40;
    v33 = __swift_project_value_buffer(v40, qword_1ECAAFBE8);
    swift_beginAccess();
    v34 = v39;
    (*(v39 + 16))(v10, v33, v32);
    v35 = sub_1D917741C();
    v36 = sub_1D9178CFC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, v35, v36, "Did not locate key data for episode adam id %lld", v37, 0xCu);
      MEMORY[0x1DA72CB90](v37, -1, -1);
    }

    return (*(v34 + 8))(v10, v32);
  }

  else
  {
LABEL_5:
    [a2 saveInCurrentBlock];
    if (qword_1ECAB17B8 != -1)
    {
      swift_once();
    }

    v26 = swift_allocObject();
    v28 = v41;
    v27 = v42;
    v26[2] = v41;
    v26[3] = v27;
    v26[4] = v43;
    aBlock[4] = sub_1D8F210E8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_228;
    v29 = _Block_copy(aBlock);
    v30 = v28;
    sub_1D8D1F93C(v27);
    sub_1D9177E4C();
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v19, v14, v29);
    _Block_release(v29);
    (*(v46 + 8))(v14, v11);
    (*(v44 + 8))(v19, v45);
  }
}

void sub_1D8F16E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 privateQueueContext];

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = ObjectType;
  v13[4] = sub_1D8F1E8AC;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_33;
  v10 = _Block_copy(v13);
  v11 = v8;
  v12 = v3;
  sub_1D8D1F93C(a1);

  [v11 performBlock_];
  _Block_release(v10);
}

unint64_t sub_1D8F16F98(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a3;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v30 = a1;
  result = sub_1D917908C();
  v34 = v12;
  v35 = v11;
  v33 = v16;
  v18 = result;
  if (result >> 62)
  {
    result = sub_1D917935C();
    v19 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v19 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = a4;
  if (v19 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v19; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA72AA90](i, v18);
    }

    else
    {
      v21 = *(v18 + 8 * i + 32);
    }

    v22 = v21;
    [v21 setPendingDeletion_];
  }

  a4 = v29;
LABEL_12:
  v24 = v31;
  v23 = v32;
  [v30 saveInCurrentBlock];
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = v23;
  v25[4] = a4;
  aBlock[4] = sub_1D8F21024;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_222;
  v26 = _Block_copy(aBlock);
  v27 = v24;
  sub_1D8D1F93C(v23);
  sub_1D9177E4C();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v10, v26);
  _Block_release(v26);

  (*(v7 + 8))(v10, v6);
  (*(v34 + 8))(v15, v35);
}

void sub_1D8F17534(void (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock;
  if ((v2[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] & 1) != 0 || v2[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] == 1)
  {
    if (a1)
    {
      a1(MEMORY[0x1E69E7CC0]);
    }

    return;
  }

  v23 = ObjectType;
  v2[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v24 + 16);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v24 + 16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8F20B90;
  *(v11 + 24) = v10;
  v29 = sub_1D8D24508;
  v30 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D8D24488;
  v28 = &block_descriptor_150;
  v12 = _Block_copy(&aBlock);
  v22 = v2;
  v13 = v9;

  [v13 performBlockAndWait_];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
LABEL_10:
    v15 = v24;
    if (sub_1D917935C())
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v14 = *v7;
  if (*v7 >> 62)
  {
    goto LABEL_10;
  }

  v15 = v24;
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v16 = sub_1D8F156F8();
    v17 = *(v15 + 16);
    sub_1D8CF2154(0, &qword_1ECAB6C68, off_1E85675F8);

    v18 = sub_1D91785DC();

    v19 = swift_allocObject();
    v19[2] = v22;
    v19[3] = v15;
    v19[4] = a1;
    v19[5] = a2;
    v19[6] = v23;
    v29 = sub_1D8F20B9C;
    v30 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1D8F18870;
    v28 = &block_descriptor_156;
    v20 = _Block_copy(&aBlock);
    v21 = v22;

    sub_1D8D1F93C(a1);

    [v16 securelyInvalidateOfflineDataForRequests:v18 completion:v20];
    _Block_release(v20);

    return;
  }

LABEL_11:
  v2[v6] = 0;
  if (a1)
  {
    a1(MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1D8F178F8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = sub_1D8F1E8C4(a2);
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
  swift_beginAccess();
  v14 = v6[2];
  v56 = v6 + 2;
  v57 = v13;
  v59 = v5;
  v55 = v14;
  v14(v11, v13, v5);

  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();
  v17 = v12 >> 62;
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  *v18 = 134217984;
  if (v17)
  {
    goto LABEL_29;
  }

  v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v18 + 4) = v19;
    v20 = v18;

    _os_log_impl(&dword_1D8CEC000, v15, v16, "Removing %ld HLS keys", v20, 0xCu);
    MEMORY[0x1DA72CB90](v20, -1, -1);

LABEL_8:
    v15 = v12;
    v21 = v6[1];
    v58 = ++v6;
    v54 = v21;
    v18 = (v21)(v11, v59);
    if (v17)
    {
      v18 = sub_1D917935C();
      v11 = v18;
      if (!v18)
      {
      }
    }

    else
    {
      v11 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
      }
    }

    if (v11 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v50 = v18;
    v19 = sub_1D917935C();
    v18 = v50;
  }

  v23 = 0;
  v24 = v12 & 0xC000000000000001;
  v25 = &off_1E856D000;
  v26 = &selRef_redirectURLForStoreCollectionId_;
  *&v22 = 134217984;
  v51 = v22;
  v52 = v15;
  v53 = v11;
  do
  {
    if (v24)
    {
      v28 = MEMORY[0x1DA72AA90](v23, v15);
    }

    else
    {
      v28 = v15[v23 + 4].isa;
    }

    v29 = v28;
    v30 = [v29 v25[303]];
    if (v30)
    {
      v27 = v30;
      v31 = [(objc_class *)v29 data];
      if (v31)
      {
        v32 = a3;
        v33 = v31;
        v34 = sub_1D9176C8C();
        v36 = v35;

        v37 = [objc_allocWithZone(MTKeyRequestData) init];
        [v37 setKeyIdentifier_];

        v38 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
        [v37 setKeyData_];

        v61 = [v29 v26[452]];
        sub_1D9179A4C();
        v39 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

        [v37 setContentAdamId_];

        v40 = [(objc_class *)v29 secureInvalidationDsid];
        v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        [v37 setSecureInvalidationDsid_];

        v42 = v34;
        v43 = v59;
        sub_1D8D7567C(v42, v36);
        v55(v60, v57, v43);
        v27 = v29;
        v44 = sub_1D917741C();
        v45 = sub_1D9178D1C();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = v51;
          *(v46 + 4) = [v27 v26[452]];

          _os_log_impl(&dword_1D8CEC000, v44, v45, "Removing HLS key for episode adam id %lld", v46, 0xCu);
          v47 = v46;
          v43 = v59;
          MEMORY[0x1DA72CB90](v47, -1, -1);
        }

        else
        {

          v44 = v27;
        }

        v54(v60, v43);
        v29 = v37;
        a3 = v32;
        MEMORY[0x1DA729B90]();
        if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        v15 = v52;
        v11 = v53;
        v25 = &off_1E856D000;
        v26 = &selRef_redirectURLForStoreCollectionId_;
      }

      else
      {
      }
    }

    else
    {
      v27 = v29;
    }

    ++v23;
  }

  while (v11 != v23);
}

uint64_t sub_1D8F17EA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D9177E9C();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v22 = qword_1ECAB17C0;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a1;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_1D8F20BAC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_162;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  sub_1D8D1F93C(a4);
  sub_1D9177E4C();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v13, v19);
  _Block_release(v19);
  (*(v24 + 8))(v13, v10);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_1D8F181D8(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v67 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v55 - v15);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v56 = a1;

  sub_1D8F1EA48(sub_1D8F20BC4, v17);

  if (qword_1ECAAFBE0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  v19 = v11[2];
  v64 = v11 + 2;
  v65 = v18;
  v63 = v19;
  v19(v16, v18, v10);

  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();
  v22 = os_log_type_enabled(v20, v21);
  v57 = a4;
  v55[1] = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    swift_beginAccess();
    v24 = *(a2 + 2);
    if (v24 >> 62)
    {
      if (v24 < 0)
      {
        v54 = *(a2 + 2);
      }

      v25 = sub_1D917935C();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 4) = v25;

    *(v23 + 12) = 2048;
    *(v23 + 14) = *(a3 + 16);

    _os_log_impl(&dword_1D8CEC000, v20, v21, "Finished invalidating %ld key data requests with %ld failed requests", v23, 0x16u);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  else
  {
  }

  v26 = v11[1];
  v66 = v11 + 1;
  v62 = v26;
  v26(v16, v10);
  a5 = a3 + 64;
  v27 = 1 << *(a3 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a3 + 64);
  v11 = ((v27 + 63) >> 6);

  v30 = 0;
  *&v31 = 136315394;
  v58 = v31;
  a2 = v67;
  v59 = v10;
  v60 = a3;
  while (v29)
  {
    a4 = v30;
LABEL_17:
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v33 = v32 | (a4 << 6);
    v34 = (*(a3 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(*(a3 + 56) + 8 * v33);
    v63(a2, v65, v10);

    v68 = v37;
    v38 = v37;
    v16 = sub_1D917741C();
    v39 = sub_1D9178CFC();
    if (os_log_type_enabled(v16, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69 = v61;
      *v40 = v58;
      v42 = sub_1D8CFA924(v35, v36, &v69);

      *(v40 + 4) = v42;
      *(v40 + 12) = 2112;
      v43 = v68;
      v44 = sub_1D9176A5C();
      *(v40 + 14) = v44;
      *v41 = v44;
      _os_log_impl(&dword_1D8CEC000, v16, v39, "Failed to invalidate download for episode adam id %s with error %@", v40, 0x16u);
      sub_1D8D08A50(v41, &unk_1ECAB6C70, &unk_1D9188C30);
      v45 = v41;
      v10 = v59;
      MEMORY[0x1DA72CB90](v45, -1, -1);
      v46 = v61;
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x1DA72CB90](v46, -1, -1);
      v47 = v40;
      a3 = v60;
      MEMORY[0x1DA72CB90](v47, -1, -1);
    }

    else
    {
    }

    a2 = v67;
    v62(v67, v10);
    v30 = a4;
  }

  while (1)
  {
    a4 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (a4 >= v11)
    {
      break;
    }

    v29 = *(a5 + 8 * a4);
    ++v30;
    if (v29)
    {
      goto LABEL_17;
    }
  }

  v56[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] = 0;
  v49 = v57;
  if (v57)
  {
    v50 = *(a3 + 16);
    if (v50)
    {
      v51 = sub_1D8D1B418(*(a3 + 16), 0);
      v52 = sub_1D8F0CAD8(&v69, v51 + 4, v50, a3);

      sub_1D8D1F93C(v49);
      result = sub_1D8D1B144();
      if (v52 != v50)
      {
        __break(1u);
        return result;
      }

      v53 = v57;
      v57(v51);
    }

    else
    {
      v53 = v57;
      sub_1D8D1F93C(v57);
      v53(MEMORY[0x1E69E7CC0]);
    }

    return sub_1D8D15664(v53);
  }

  return result;
}

uint64_t sub_1D8F18804@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  sub_1D8F18900(v5, a2);
}

uint64_t sub_1D8F18870(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  v3 = sub_1D917805C();

  v2(v3);
}

uint64_t sub_1D8F18900@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v5 = sub_1D917935C();
  if (!v5)
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA72AA90](v8, a1);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v8 + 32);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v10 = v9;
      v11 = [v10 contentAdamId];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_24;
      }
    }

    v25 = a2;
    v12 = v11;
    v13 = sub_1D917820C();
    v24 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D8D4241C(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_1D8D4241C((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    a2 = v25;
    *(v17 + 4) = v13;
    *(v17 + 5) = v24;
  }

  while (v6 != v5);
LABEL_24:
  v18 = sub_1D8FC0F28(v7);

  v20 = sub_1D8D7D560(v19);
  if (*(v20 + 16) <= *(v18 + 16) >> 3)
  {
    sub_1D910E6BC(v20);

    v21 = v18;
  }

  else
  {
    v21 = sub_1D90A4A60(v20, v18);
  }

  v22 = swift_allocObject();
  v22[2] = sub_1D8F18C3C;
  v22[3] = 0;
  v22[4] = v21;
  v22[5] = sub_1D8F18BD0;
  v22[6] = 0;
  v22[7] = sub_1D8F18C24;
  v22[8] = 0;
  v22[9] = sub_1D8F1E47C;
  v22[10] = 0;
  v22[11] = sub_1D8F1E48C;
  v22[12] = 0;
  *a2 = v21;
  a2[1] = sub_1D8F18BD0;
  a2[2] = 0;
  a2[3] = sub_1D8F18C24;
  a2[4] = 0;
  a2[5] = sub_1D8F1E47C;
  a2[6] = 0;
  a2[7] = sub_1D8F20B1C;
  a2[8] = v22;
}

unsigned __int8 *sub_1D8F18BD0@<X0>(uint64_t a1@<X0>, unsigned __int8 **a2@<X8>)
{
  result = sub_1D8FE6808(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void *sub_1D8F18C24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = 0;
  }

  return result;
}

id sub_1D8F18C3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *a2 = result;
  return result;
}

void sub_1D8F18C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 loggingContext];

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v13[4] = sub_1D8F20BD8;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_177;
  v11 = _Block_copy(v13);

  v12 = v9;

  [v12 performBlock_];
  _Block_release(v11);
}

void sub_1D8F18DCC(void (*a1)(void *__return_ptr), uint64_t a2, void *a3, void (*a4)(unint64_t))
{
  v28[22] = *MEMORY[0x1E69E9840];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  v8 = objc_opt_self();
  a1(v28);
  sub_1D8FC03D8(v28);
  v9 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v10 = sub_1D9178A8C();

  v11 = [v8 predicateForEpisodeStoreTrackIds_];

  v12 = [v8 predicateForDownloaded:1 excludeHidden:1];
  v13 = [v11 AND_];

  [v7 setPredicate_];
  v27[0] = 0;
  v14 = [a3 countForFetchRequest:v7 error:v27];
  v15 = v27[0];
  if (v27[0])
  {
    swift_willThrow();
    v16 = qword_1EDCD0F80;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F88);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Failed to count downloaded episodes for deleted secure keys. Unable to assess misalignment", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }
  }

  else if (v14 > 0)
  {
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    v27[0] = 0xD000000000000025;
    v27[1] = 0x80000001D91CD140;
    sub_1D91793EC();
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 96) = v9;
    *(inited + 72) = v24;
    v25 = sub_1D8D653BC(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
    a4(v25);
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D8F191D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  sub_1D8D1F93C(a2);
  sub_1D8F198E8(sub_1D8F20C78, v6);
}

uint64_t sub_1D8F19270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F88);

  v9 = sub_1D917741C();
  v10 = sub_1D9178CDC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 134349314;
    *(v11 + 4) = *(a1 + 16);

    *(v11 + 12) = 2080;
    v13 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v15 = sub_1D8CFA924(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Finished request for missing keys for shows (%{public}ld): %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  else
  {
  }

  v16 = a2;
  sub_1D8D1F93C(a3);
  sub_1D8F1F110(v16, v16, a1, a3, a4);
  sub_1D8D15664(a3);
}

uint64_t sub_1D8F19460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F88);

  v11 = sub_1D917741C();
  v12 = sub_1D9178CDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 134349314;
    *(v13 + 4) = *(a1 + 16);

    *(v13 + 12) = 2080;
    v15 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v17 = sub_1D8CFA924(v15, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "Finished renewal & removal of existing DRM keys (%{public}ld: %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  else
  {
  }

  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = a2;

  sub_1D8D1F93C(a4);
  sub_1D8F15808(sub_1D8F21018, v18);
}

void sub_1D8F19668(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F88);

  v8 = sub_1D917741C();
  v9 = sub_1D9178CDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(a1 + 16);

    *(v10 + 12) = 2080;
    v12 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v14 = sub_1D8CFA924(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Finished removal of orphan DRM keys. episodes that failed removal: (%{public}ld) %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {
  }

  sub_1D8F1AC24(a3);
  if (a4)
  {
    a4();
  }
}

void sub_1D8F198E8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = a1;
  v7[5] = a2;
  v11[4] = sub_1D8F20AF0;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8CF5F60;
  v11[3] = &block_descriptor_135;
  v8 = _Block_copy(v11);
  v9 = v2;
  v10 = v6;

  [v10 performBlock_];
  _Block_release(v8);
}

uint64_t sub_1D8F19A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v3 = sub_1D9177E0C();
  v50 = *(v3 - 8);
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D8F1F570();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v13 = sub_1D917908C();
  v47 = v11;
  v48 = v6;
  v49 = v8;

  v14 = sub_1D8FBEEF0(v13);

  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = sub_1D8F1F680(v14);

    v17 = sub_1D917908C();
    v18 = v49;
    v19 = v51;
    v46 = v7;
    v20 = v15;
    v21 = v17;

    v22 = sub_1D8FBEEF0(v21);

    if (v22)
    {
      v20 = v22;
    }

    v23 = v53;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
    v23 = v53;
    v46 = v7;
    v18 = v49;
    v19 = v51;
  }

  v24 = v3;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD0F88);

  v26 = sub_1D917741C();
  v27 = sub_1D9178CDC();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v48;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock[0] = v45;
    *v30 = 134349314;
    v51 = v26;
    LODWORD(v49) = v27;
    if (v20 >> 62)
    {
      v31 = sub_1D917935C();
    }

    else
    {
      v31 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v31;

    *(v30 + 12) = 2080;

    sub_1D8FC1160(v32);

    sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
    sub_1D8CF3274(&qword_1ECAB6C48, &qword_1EDCD0A20, 0x1E695DF20);
    v33 = sub_1D9178AAC();
    v35 = v34;

    v36 = sub_1D8CFA924(v33, v35, aBlock);

    *(v30 + 14) = v36;
    v37 = v51;
    _os_log_impl(&dword_1D8CEC000, v51, v49, "Found %{public}ld episodes missing DRM keys: %s", v30, 0x16u);
    v38 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);

    v23 = v53;
  }

  else
  {
  }

  v39 = v47;
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v40 = swift_allocObject();
  v40[2] = v20;
  v40[3] = v19;
  v40[4] = v52;
  v40[5] = v23;
  aBlock[4] = sub_1D8F1F674;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_0;
  v41 = _Block_copy(aBlock);
  v42 = v19;

  sub_1D9177E4C();
  aBlock[6] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v39, v29, v41);
  _Block_release(v41);
  (*(v50 + 8))(v29, v24);
  (*(v18 + 8))(v39, v46);
}

uint64_t sub_1D8F1A184(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A70, &unk_1D91949A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v45 = *(v49 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v44 = &v38 - v13;
  v39 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v15 = 0;
    v47 = a1 & 0xC000000000000001;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = (v45 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v43 = a1;
    v46 = i;
    while (1)
    {
      if (v47)
      {
        v19 = MEMORY[0x1DA72AA90](v15, a1, v12);
      }

      else
      {
        if (v15 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v19 = *(a1 + 8 * v15 + 32);
      }

      v20 = v19;
      v21 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v50 = v19;
      sub_1D8F1A694(&v50, v8);

      if ((*v17)(v8, 1, v49) == 1)
      {
        sub_1D8D08A50(v8, &qword_1ECAB6A70, &unk_1D91949A0);
      }

      else
      {
        v22 = v44;
        sub_1D8D6734C(v8, v44, &qword_1ECAB6C60, &unk_1D9194630);
        sub_1D8D6734C(v22, v48, &qword_1ECAB6C60, &unk_1D9194630);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D8ECCCBC(0, v18[2] + 1, 1, v18);
        }

        v24 = v18[2];
        v23 = v18[3];
        if (v24 >= v23 >> 1)
        {
          v18 = sub_1D8ECCCBC(v23 > 1, v24 + 1, 1, v18);
        }

        v18[2] = v24 + 1;
        sub_1D8D6734C(v48, v18 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v24, &qword_1ECAB6C60, &unk_1D9194630);
        a1 = v43;
      }

      ++v15;
      if (v21 == v46)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_21:
  if (v39)
  {
    v25 = sub_1D917935C();
  }

  else
  {
    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 != v18[2])
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD0F88);

    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v31 = sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
      v32 = MEMORY[0x1DA729BD0](a1, v31);
      v34 = sub_1D8CFA924(v32, v33, &v50);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Invalid data found in episode DB: %{private,mask.hash}s.", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1DA72CB90](v30, -1, -1);
      MEMORY[0x1DA72CB90](v29, -1, -1);
    }
  }

  v35 = sub_1D8F60C24(v18);
  v36 = swift_allocObject();
  v36[2] = v40;
  v36[3] = v41;
  v36[4] = v18;

  sub_1D8F1AEF4(v35, sub_1D8F1FAEC, v36);
}

uint64_t sub_1D8F1A694@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - v6;
  v8 = sub_1D9176C2C();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  *&v29 = sub_1D917820C();
  *(&v29 + 1) = v13;
  v14 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v27 = v28;
  *&v29 = sub_1D917820C();
  *(&v29 + 1) = v15;
  v16 = [v12 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v16)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  v31 = v29;
  v32 = v30;
  if (!*(&v30 + 1))
  {
LABEL_13:
    v18 = &qword_1ECAB57F0;
    v19 = &unk_1D9190AA0;
    v20 = &v31;
LABEL_14:
    sub_1D8D08A50(v20, v18, v19);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    sub_1D9176BFC();

    v17 = v33;
    if ((*(v33 + 48))(v7, 1, v8) != 1)
    {
      v23 = *(v17 + 32);
      v23(v11, v7, v8);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
      v25 = *(v24 + 48);
      *a2 = v27;
      v23(&a2[v25], v11, v8);
      return (*(*(v24 - 8) + 56))(a2, 0, 1, v24);
    }

    v18 = &unk_1ECAB5910;
    v19 = &qword_1D9188C90;
    v20 = v7;
    goto LABEL_14;
  }

LABEL_15:
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
}

uint64_t sub_1D8F1AA4C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v11 = (v22 - v10);
  v12 = *(a3 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v22[1] = a2;
    v23 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v12, 0);
    v13 = v26;
    v14 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = *(v7 + 72);
    do
    {
      sub_1D8D088B4(v14, v11, &qword_1ECAB6C60, &unk_1D9194630);
      v25 = *v11;
      v15 = sub_1D9179A4C();
      v17 = v16;
      sub_1D8D08A50(v11, &qword_1ECAB6C60, &unk_1D9194630);
      v26 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D8D41BE0((v18 > 1), v19 + 1, 1);
        v13 = v26;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v14 += v24;
      --v12;
    }

    while (v12);
    a1 = v23;
  }

  a1(v13, v9);
}

void sub_1D8F1AC24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C30, &qword_1D9194988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001D91CD0C0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v4 = sub_1D8E26F30(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &unk_1ECAB6C38, &unk_1D9194990);
    sub_1D8CFD9D8(v1 + OBJC_IVAR___MTSecureDownloadRenewalManager_bugReporter, v18);
    v5 = v19;
    v6 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v7 = type metadata accessor for BugReport();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___PFBugReport_system] = 1;
    v8[OBJC_IVAR___PFBugReport_errorKind] = 3;
    v8[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = 0;
    v23.receiver = v8;
    v23.super_class = v7;
    v9 = objc_msgSendSuper2(&v23, sel_init);
    v22 = 1;
    v10 = sub_1D9053300(v4);
    (*(v6 + 2))(v9, &v22, v10, v5, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v11 = *(v1 + OBJC_IVAR___MTSecureDownloadRenewalManager_analyticsChannel);
    swift_unknownObjectRetain();
    sub_1D90535C0(v4);
    v13 = v12;

    v14 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v20 = sub_1D8E81910;
    v21 = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1D8D6F198;
    v19 = &block_descriptor_80_0;
    v16 = _Block_copy(v18);

    v17 = [v14 initWithName:@"com.apple.podcasts.DRMKeysRecovered" generator:v16];
    _Block_release(v16);
    [v11 sendEvent_];
    swift_unknownObjectRelease();
  }
}

void sub_1D8F1AEF4(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v10 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - v12;
  if (*(a1 + 16))
  {
    v15 = *(v11 + 80);
    v37 = ObjectType;
    v16 = (v15 + 32) & ~v15;
    sub_1D8D088B4(a1 + v16, &v32 - v12, &qword_1ECAB4538, &unk_1D91949B0);
    v35 = a3;
    v17 = *(v9 + 48);
    v18 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v34 = a2;
    v19 = v18;
    v20 = sub_1D9176B1C();
    v33 = [v19 initWithURL:v20 options:0];

    v21 = sub_1D9176C2C();
    (*(*(v21 - 8) + 8))(&v14[v17], v21);
    v36 = *&v4[OBJC_IVAR___MTSecureDownloadRenewalManager_metadataLoader];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D8D088B4(a1 + v16, v14, &qword_1ECAB4538, &unk_1D91949B0);
    v23 = (v15 + 48) & ~v15;
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v28 = v33;
    v27 = v34;
    v26[2] = v22;
    v26[3] = v27;
    v26[4] = v35;
    v26[5] = v28;
    sub_1D8D6734C(v14, v26 + v23, &qword_1ECAB4538, &unk_1D91949B0);
    *(v26 + v24) = v4;
    *(v26 + v25) = a1;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
    aBlock[4] = sub_1D8F1FAF8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8F1C0E0;
    aBlock[3] = &block_descriptor_98_0;
    v29 = _Block_copy(aBlock);

    v30 = v28;
    v31 = v4;

    [v36 keyIdentifiersFrom:v30 completion:v29];
    _Block_release(v29);
  }

  else
  {
    a2(v13);
  }
}

void sub_1D8F1B214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(double), uint64_t a6)
{
  v7 = v6;
  v51 = a1;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v17;
  if (a4 >> 1 == a3)
  {
    a5(v19);
  }

  else
  {
    v50 = a5;
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    else
    {
      v21 = a2 + *(v18 + 72) * a3;
      v49 = a4;
      v47 = a2;
      v44 = v18;
      sub_1D8D088B4(v21, &v41 - v17, &qword_1ECAB4538, &unk_1D91949B0);
      v46 = v20;
      sub_1D8D088B4(v20, v15, &qword_1ECAB4538, &unk_1D91949B0);
      v22 = *(v13 + 48);
      v23 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v45 = a6;
      v24 = v23;
      v25 = sub_1D9176B1C();
      v43 = [v24 initWithURL:v25 options:0];

      v26 = sub_1D9176C2C();
      (*(*(v26 - 8) + 8))(&v15[v22], v26);
      v48 = *&v7[OBJC_IVAR___MTSecureDownloadRenewalManager_metadataLoader];
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = v7;
      v42 = a3;
      sub_1D8D088B4(v20, v15, &qword_1ECAB4538, &unk_1D91949B0);
      v28 = (*(v44 + 80) + 48) & ~*(v44 + 80);
      v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      v32 = v50;
      v31[2] = v27;
      v31[3] = v32;
      v33 = v43;
      v31[4] = v45;
      v31[5] = v33;
      sub_1D8D6734C(v15, v31 + v28, &qword_1ECAB4538, &unk_1D91949B0);
      v34 = v41;
      *(v31 + v29) = v41;
      v35 = (v31 + v30);
      v36 = v47;
      *v35 = v51;
      v35[1] = v36;
      v37 = v49;
      v35[2] = v42;
      v35[3] = v37;
      *(v31 + ((v30 + 39) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      aBlock[4] = sub_1D8F2060C;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8F1C0E0;
      aBlock[3] = &block_descriptor_117;
      v38 = _Block_copy(aBlock);

      v39 = v33;
      v40 = v34;
      swift_unknownObjectRetain();

      [v48 keyIdentifiersFrom:v39 completion:v38];
      _Block_release(v38);

      sub_1D8D08A50(v46, &qword_1ECAB4538, &unk_1D91949B0);
    }
  }
}

void sub_1D8F1B5C8(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v60 = a7;
  v61 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v56 = *(v14 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = a4;
    v59 = Strong;
    v57 = a3;
    if (a1 && a1[2])
    {
      v55 = a9;
      v21 = a1[4];
      v22 = a1[5];

      v23 = v59;
      v24 = sub_1D8F156F8();
      [v24 setDelegate_];

      v25 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:a5 useCase:1 account:0 urlProtocolDelegate:0];
      v26 = v23;
      v27 = *&v23[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader];
      *&v26[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader] = v25;
      v54 = v25;

      v53 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v28 = *(v14 + 48);
      aBlock[0] = *v19;
      sub_1D9179A4C();
      v29 = sub_1D9176C2C();
      (*(*(v29 - 8) + 8))(&v19[v28], v29);
      v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v31 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v32 = (v15 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      sub_1D8D6734C(v19, v35 + v31, &qword_1ECAB4538, &unk_1D91949B0);
      v37 = v60;
      v36 = v61;
      *(v35 + v32) = v60;
      *(v35 + v33) = v36;
      v38 = (v35 + v34);
      v39 = v58;
      *v38 = v57;
      v38[1] = v39;
      *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v55;
      aBlock[4] = sub_1D8F1FEE0;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_104;
      v40 = _Block_copy(aBlock);
      v41 = v37;

      v43 = v53;
      v42 = v54;
      [v54 startKeyLoadingProcessWithKeyIdentifier:v53 contentAdamId:v30 isRenewal:0 completion:v40];

      _Block_release(v40);
    }

    else
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v44 = sub_1D917744C();
      __swift_project_value_buffer(v44, qword_1EDCD0F88);
      sub_1D8D088B4(a6, v16, &qword_1ECAB4538, &unk_1D91949B0);
      v45 = sub_1D917741C();
      v46 = sub_1D9178CFC();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 141558275;
        *(v47 + 4) = 1752392040;
        *(v47 + 12) = 2049;
        sub_1D8D088B4(v16, v19, &qword_1ECAB4538, &unk_1D91949B0);
        v48 = *v19;
        v49 = *(v14 + 48);
        v50 = sub_1D9176C2C();
        (*(*(v50 - 8) + 8))(&v19[v49], v50);
        sub_1D8D08A50(v16, &qword_1ECAB4538, &unk_1D91949B0);
        *(v47 + 14) = v48;
        _os_log_impl(&dword_1D8CEC000, v45, v46, "Unable to load keyIdentifier for adamID: %{private,mask.hash}lld.", v47, 0x16u);
        MEMORY[0x1DA72CB90](v47, -1, -1);
      }

      else
      {
        sub_1D8D08A50(v16, &qword_1ECAB4538, &unk_1D91949B0);
      }

      v52 = v57;
      v51 = v58;

      sub_1D8F1FBC0(v60, v61, v52, v51);
    }
  }

  else
  {
    a3();
  }
}

void sub_1D8F1BB40(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v69 = a7;
  v70 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v63 = *(v17 - 8);
  v18 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v59 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v67 = a4;
    v68 = Strong;
    v66 = a3;
    v64 = a9;
    v65 = a10;
    if (a1 && a1[2])
    {
      v62 = a12;
      v24 = a1[4];
      v25 = a1[5];

      v26 = v68;
      v27 = sub_1D8F156F8();
      [v27 setDelegate_];

      v28 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:a5 useCase:1 account:0 urlProtocolDelegate:0];
      v29 = v26;
      v30 = *&v26[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader];
      *&v29[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader] = v28;
      v61 = v28;

      v60 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v22, &qword_1ECAB4538, &unk_1D91949B0);
      v31 = *(v17 + 48);
      aBlock[0] = *v22;
      sub_1D9179A4C();
      v32 = sub_1D9176C2C();
      (*(*(v32 - 8) + 8))(&v22[v31], v32);
      v59 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v22, &qword_1ECAB4538, &unk_1D91949B0);
      v33 = (*(v63 + 80) + 16) & ~*(v63 + 80);
      v34 = (v18 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 39) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      sub_1D8D6734C(v22, v37 + v33, &qword_1ECAB4538, &unk_1D91949B0);
      v39 = v69;
      v38 = v70;
      *(v37 + v34) = v69;
      v40 = (v37 + v35);
      v42 = v64;
      v41 = v65;
      *v40 = v38;
      v40[1] = v42;
      v40[2] = v41;
      v40[3] = a11;
      v43 = (v37 + v36);
      v44 = v67;
      *v43 = v66;
      v43[1] = v44;
      *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = v62;
      aBlock[4] = sub_1D8F206E4;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_123;
      v45 = _Block_copy(aBlock);
      v46 = v39;
      swift_unknownObjectRetain();

      v48 = v60;
      v47 = v61;
      v49 = v59;
      [v61 startKeyLoadingProcessWithKeyIdentifier:v60 contentAdamId:v59 isRenewal:0 completion:v45];

      _Block_release(v45);
    }

    else
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v50 = sub_1D917744C();
      __swift_project_value_buffer(v50, qword_1EDCD0F88);
      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v51 = sub_1D917741C();
      v52 = sub_1D9178CFC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 141558275;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2049;
        sub_1D8D088B4(v19, v22, &qword_1ECAB4538, &unk_1D91949B0);
        v54 = *v22;
        v55 = *(v17 + 48);
        v56 = sub_1D9176C2C();
        (*(*(v56 - 8) + 8))(&v22[v55], v56);
        sub_1D8D08A50(v19, &qword_1ECAB4538, &unk_1D91949B0);
        *(v53 + 14) = v54;
        _os_log_impl(&dword_1D8CEC000, v51, v52, "Unable to load keyIdentifier for adamID: %{private,mask.hash}lld.", v53, 0x16u);
        MEMORY[0x1DA72CB90](v53, -1, -1);
      }

      else
      {
        sub_1D8D08A50(v19, &qword_1ECAB4538, &unk_1D91949B0);
      }

      v58 = v66;
      v57 = v67;

      sub_1D8F1FFA4(v69, v70, v64, v65, a11, v58, v57);
    }
  }

  else
  {
    a3();
  }
}

uint64_t sub_1D8F1C0E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1D91785FC();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_1D8F1C15C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_1D8F20EA8(a2);
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
  swift_beginAccess();
  v15 = v6[2];
  v53 = v6 + 2;
  v54 = v14;
  v52 = v15;
  v15(v12, v14, v5);

  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  v18 = v13 >> 62;
  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_8;
  }

  v19 = swift_slowAlloc();
  *v19 = 134217984;
  if (v18)
  {
    goto LABEL_24;
  }

  v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v13;
  while (1)
  {
    *(v19 + 4) = v20;
    v22 = v19;

    _os_log_impl(&dword_1D8CEC000, v16, v17, "Renewing %ld HLS keys", v22, 0xCu);
    MEMORY[0x1DA72CB90](v22, -1, -1);

    v13 = v21;
LABEL_8:
    v24 = v6[1];
    ++v6;
    v23 = v24;
    v19 = (v24)(v12, v5);
    if (v18)
    {
      v19 = sub_1D917935C();
      v16 = v19;
      if (!v19)
      {
      }
    }

    else
    {
      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
      }
    }

    if (v16 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_24:
    v21 = v13;
    v46 = v19;
    v20 = sub_1D917935C();
    v19 = v46;
  }

  v26 = 0;
  v49 = v13 & 0xC000000000000001;
  *&v25 = 134217984;
  v47 = v25;
  v50 = v13;
  v51 = v6;
  v48 = v9;
  do
  {
    if (v49)
    {
      v29 = MEMORY[0x1DA72AA90](v26, v13);
    }

    else
    {
      v29 = *(v13 + 8 * v26 + 32);
    }

    v30 = v29;
    v31 = [objc_allocWithZone(MTKeyRequestData) init];
    v32 = [v30 keyUri];
    [v31 setKeyIdentifier_];

    v55 = [v30 storeTrackId];
    sub_1D9179A4C();
    v33 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v31 setContentAdamId_];

    v34 = v31;
    MEMORY[0x1DA729B90]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = v23;
      v44 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D917863C();
      v23 = v43;
    }

    sub_1D917869C();
    v52(v9, v54, v5);
    v35 = v30;
    v28 = sub_1D917741C();
    v36 = sub_1D9178D1C();
    if (os_log_type_enabled(v28, v36))
    {
      v37 = a3;
      v38 = v5;
      v39 = v16;
      v40 = v23;
      v41 = swift_slowAlloc();
      *v41 = v47;
      *(v41 + 4) = [v35 storeTrackId];

      _os_log_impl(&dword_1D8CEC000, v28, v36, "Renewing HLS key for episode adam id:%lld", v41, 0xCu);
      v42 = v41;
      v23 = v40;
      v16 = v39;
      v5 = v38;
      a3 = v37;
      v9 = v48;
      MEMORY[0x1DA72CB90](v42, -1, -1);
      v27 = v34;
    }

    else
    {

      v27 = v35;
      v28 = v34;
    }

    v13 = v50;
    ++v26;

    v23(v9, v5);
  }

  while (v16 != v26);
}

void sub_1D8F1C658(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_1D917744C();
  v11 = *(v10 - 1);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = (a2 >> 62);
  if (a2 >> 62)
  {
LABEL_44:
    v20 = sub_1D917935C();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = a3;
  if (v20 <= a1)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
    swift_beginAccess();
    (v11[2])(v14, v32, v10);
    v33 = sub_1D917741C();
    v34 = sub_1D9178D1C();
    if (os_log_type_enabled(v33, v34))
    {
      a1 = v5;
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Renewals ended. Unlocking renewal.", v35, 2u);
      v36 = v35;
      v5 = a1;
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    v58 = a4;

    (v11[1])(v14, v10);
    v5[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] = 0;
    sub_1D8F17534(0, 0);
    a4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (v19)
    {
      v18 = sub_1D917935C();
      if (v18)
      {
LABEL_18:
        v5 = 0;
        v14 = (a2 & 0xC000000000000001);
        v19 = MEMORY[0x1E69E7CC0];
        v11 = &selRef_allPlayedEpsWeight;
        do
        {
          a3 = v5;
          while (1)
          {
            if (v14)
            {
              v37 = MEMORY[0x1DA72AA90](a3, a2);
              v5 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                goto LABEL_42;
              }
            }

            else
            {
              if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v37 = *(a2 + 8 * a3 + 32);
              v5 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }
            }

            v10 = v37;
            v38 = [v10 contentAdamId];
            if (v38)
            {
              break;
            }

            ++a3;
            if (v5 == v18)
            {
              goto LABEL_37;
            }
          }

          v39 = v38;
          v40 = sub_1D917820C();
          ObjectType = v41;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1D8D4241C(0, *(v19 + 2) + 1, 1, v19);
          }

          a1 = *(v19 + 2);
          v42 = *(v19 + 3);
          v10 = (a1 + 1);
          if (a1 >= v42 >> 1)
          {
            v19 = sub_1D8D4241C((v42 > 1), a1 + 1, 1, v19);
          }

          *(v19 + 2) = v10;
          v43 = &v19[16 * a1];
          v44 = ObjectType;
          *(v43 + 4) = v40;
          *(v43 + 5) = v44;
        }

        while (v5 != v18);
        goto LABEL_37;
      }
    }

    else
    {
      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_18;
      }
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v60(v19);

    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA72AA90](a1, a2, v16);
  }

  else
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return;
    }

    v21 = *(a2 + 8 * a1 + 32);
  }

  a3 = v21;
  v57 = v5;
  if (qword_1ECAAFBE0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v22 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  (v11[2])(v18, v22, v10);
  v23 = a3;
  v24 = sub_1D917741C();
  v25 = sub_1D9178D1C();

  if (os_log_type_enabled(v24, v25))
  {
    v55 = v25;
    v58 = a4;
    v26 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock[0] = v54;
    *v26 = 136315138;
    v56 = v23;
    v27 = [v23 contentAdamId];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1D917820C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v45 = sub_1D8CFA924(v29, v31, aBlock);

    *(v26 + 4) = v45;
    _os_log_impl(&dword_1D8CEC000, v24, v55, "[Key Loading] Starting from Key RenewalManager for episode adam id %s", v26, 0xCu);
    v46 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);

    (v11[1])(v18, v10);
    a4 = v58;
    v23 = v56;
  }

  else
  {

    (v11[1])(v18, v10);
  }

  v47 = v57;
  v48 = sub_1D8F156F8();
  v49 = swift_allocObject();
  v49[2] = v23;
  v49[3] = v47;
  v49[4] = a1;
  v49[5] = a2;
  v50 = ObjectType;
  v49[6] = v60;
  v49[7] = a4;
  v49[8] = v50;
  aBlock[4] = sub_1D8F1F0C0;
  aBlock[5] = v49;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8E8A43C;
  aBlock[3] = &block_descriptor_68_1;
  v51 = _Block_copy(aBlock);
  v52 = v23;
  v53 = v47;

  [v48 startKeyLoadingProcessWithKeyRequestData:v52 isRenewal:1 completion:v51];
  _Block_release(v51);
}

uint64_t sub_1D8F1CD18(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v107 = a7;
  v105 = a6;
  v106 = a5;
  v104 = a4;
  v113 = a3;
  v9 = sub_1D9177E0C();
  isa = v9[-1].isa;
  v10 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1D9177E9C();
  v109 = *(v111 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D917744C();
  v15 = *(v14 - 1);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v100 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v95 - v22;
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v14, qword_1ECAAFBE8);
  swift_beginAccess();
  v25 = v15[2];
  v103 = v24;
  v102 = v15 + 2;
  v101 = v25;
  v25(v23, v24, v14);
  v26 = a2;
  v27 = sub_1D917741C();
  v28 = sub_1D9178D1C();

  if (os_log_type_enabled(v27, v28))
  {
    v96 = v20;
    v98 = v15;
    v97 = v14;
    v29 = a1;
    v99 = v9;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock[0] = v31;
    *v30 = 136315138;
    v32 = [v26 contentAdamId];
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

    a1 = v29;
    v38 = sub_1D8CFA924(v34, v36, aBlock);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "[Key Loading] Ending from Key RenewalManager for episode adam id %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);

    v15 = v98;
    v37 = v98[1];
    v14 = v97;
    (v37)(v23, v97);
    v9 = v99;
    v20 = v96;
    if (!a1)
    {
      goto LABEL_33;
    }

LABEL_10:
    v101(v20, v103, v14);
    v39 = v26;
    v40 = a1;
    v41 = sub_1D917741C();
    v42 = sub_1D9178CFC();

    if (os_log_type_enabled(v41, v42))
    {
      LODWORD(v98) = v42;
      v99 = v41;
      v43 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      aBlock[0] = v97;
      *v43 = 136315394;
      v44 = [v39 contentAdamId];
      if (v44)
      {
        v96 = v39;
        v45 = v20;
        v46 = v37;
        v47 = v15;
        v48 = v14;
        v49 = a1;
        v50 = v9;
        v51 = v44;
        v52 = sub_1D917820C();
        v54 = v53;

        v9 = v50;
        a1 = v49;
        v14 = v48;
        v15 = v47;
        v37 = v46;
        v20 = v45;
        v39 = v96;
      }

      else
      {
        v52 = 0;
        v54 = 0xE000000000000000;
      }

      v55 = sub_1D8CFA924(v52, v54, aBlock);

      *(v43 + 4) = v55;
      *(v43 + 12) = 2080;
      swift_getErrorValue();
      v56 = sub_1D9179D2C();
      v58 = sub_1D8CFA924(v56, v57, aBlock);

      *(v43 + 14) = v58;
      v59 = v99;
      _os_log_impl(&dword_1D8CEC000, v99, v98, "Failed to renew %s with error %s", v43, 0x16u);
      v60 = v97;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v60, -1, -1);
      MEMORY[0x1DA72CB90](v43, -1, -1);

      (v37)(v20, v14);
    }

    else
    {

      (v37)(v20, v14);
    }

    v61 = a1;
    v62 = sub_1D9176A5C();
    v63 = v39;
    v64 = [v39 contentAdamId];
    if (!v64)
    {
      v71 = v61;
LABEL_32:

      goto LABEL_33;
    }

    v65 = v64;
    v96 = v37;
    v97 = v61;
    v66 = [v62 domain];
    v67 = sub_1D917820C();
    v69 = v68;

    if (v67 == 0xD000000000000036 && 0x80000001D91CD080 == v69)
    {

      v70 = v100;
    }

    else
    {
      v72 = sub_1D9179ACC();

      v70 = v100;
      if ((v72 & 1) == 0)
      {
LABEL_31:

        v71 = v97;
        goto LABEL_32;
      }
    }

    if ([v62 code] == -1002)
    {
      v99 = v9;
      v101(v70, v103, v14);
      v73 = v63;
      v74 = sub_1D917741C();
      v75 = sub_1D9178CFC();

      if (os_log_type_enabled(v74, v75))
      {
        v98 = v15;
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        aBlock[0] = v77;
        *v76 = 136315138;
        v78 = [v73 contentAdamId];
        if (v78)
        {
          v79 = v78;
          v80 = sub_1D917820C();
          v82 = v81;
        }

        else
        {
          v80 = 0;
          v82 = 0xE000000000000000;
        }

        v84 = sub_1D8CFA924(v80, v82, aBlock);

        *(v76 + 4) = v84;
        _os_log_impl(&dword_1D8CEC000, v74, v75, "Removing download and key for episode %s without entitlement.", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        MEMORY[0x1DA72CB90](v77, -1, -1);
        MEMORY[0x1DA72CB90](v76, -1, -1);

        v83 = v100;
      }

      else
      {

        v83 = v70;
      }

      (v96)(v83, v14);
      v9 = v99;
      if (*&v113[OBJC_IVAR___MTSecureDownloadRenewalManager_delegate])
      {
        v85 = *&v113[OBJC_IVAR___MTSecureDownloadRenewalManager_delegate];
        [swift_unknownObjectRetain() removeDownloadOf_];

        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  v37 = v15[1];
  (v37)(v23, v14);
  if (a1)
  {
    goto LABEL_10;
  }

LABEL_33:
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v86 = swift_allocObject();
  v87 = v113;
  v88 = v104;
  v86[2] = v113;
  v86[3] = v88;
  v89 = v105;
  v86[4] = v106;
  v86[5] = v89;
  v86[6] = v107;
  aBlock[4] = sub_1D8F1F0D4;
  aBlock[5] = v86;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_74_0;
  v90 = _Block_copy(aBlock);
  v91 = v87;

  v92 = v108;
  sub_1D9177E4C();
  v114 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v93 = v110;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v92, v93, v90);
  _Block_release(v90);
  (*(isa + 1))(v93, v9);
  (*(v109 + 8))(v92, v111);
}

void sub_1D8F1D8D8(void *a1, uint64_t a2)
{
  v110 = a2;
  v108 = sub_1D917744C();
  *&v104 = *(v108 - 8);
  v3 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v105 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v100 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v100 - v8;
  v9 = objc_opt_self();
  v10 = @"MTOfflineKeyData";
  v11 = [v9 truePredicate];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1D91785DC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v15 = swift_allocObject();
  v111 = xmmword_1D9189080;
  *(v15 + 16) = xmmword_1D9189080;
  v16 = sub_1D917820C();
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = sub_1D91785DC();

  v107 = a1;
  v19 = [a1 objectDictionariesInEntity:v10 predicate:v11 sortDescriptors:v13 propertiesToFetch:v18 includeObjectId:0];

  if (!v19)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  v20 = sub_1D91785FC();

  v21 = *(v20 + 16);
  v109 = v14;
  if (v21)
  {
    v113 = v12;
    sub_1D8E314DC(0, v21, 0);
    v22 = 32;
    v23 = v113;
    do
    {
      v24 = *(v20 + v22);
      v25 = sub_1D917820C();
      v27 = v26;
      if (*(v24 + 16) && (v28 = v25, , v29 = sub_1D8D33C70(v28, v27), v31 = v30, , (v31 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v24 + 56) + 32 * v29, &v114);
      }

      else
      {

        v114 = 0u;
        v115 = 0u;
      }

      v113 = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D8E314DC((v32 > 1), v33 + 1, 1);
        v23 = v113;
      }

      *(v23 + 16) = v33 + 1;
      v34 = v23 + 32 * v33;
      v35 = v115;
      *(v34 + 32) = v114;
      *(v34 + 48) = v35;
      v22 += 8;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v36 = [objc_opt_self() predicateForDownloaded:0 excludeHidden:0];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1D918A530;
  v38 = sub_1D917820C();
  v40 = v39;
  v41 = MEMORY[0x1E69E6158];
  *(v37 + 56) = MEMORY[0x1E69E6158];
  *(v37 + 64) = sub_1D8D34978();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  *(v37 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA0, &qword_1D91949D0);
  *(v37 + 104) = sub_1D8CF48EC(&qword_1ECAAFEB8, &qword_1ECAB6CA0, &qword_1D91949D0);
  *(v37 + 72) = v23;

  v42 = sub_1D9178C8C();
  v43 = [v36 AND_];

  v44 = @"MTEpisode";
  v45 = v43;
  v46 = MEMORY[0x1E69E7CC0];
  v47 = sub_1D91785DC();
  v48 = swift_allocObject();
  *(v48 + 16) = v111;
  v49 = sub_1D917820C();
  *(v48 + 56) = v41;
  *(v48 + 32) = v49;
  *(v48 + 40) = v50;
  v51 = sub_1D91785DC();

  v52 = [v107 objectDictionariesInEntity:v44 predicate:v45 sortDescriptors:v47 propertiesToFetch:v51 includeObjectId:0];

  v101 = v45;
  if (!v52)
  {
    goto LABEL_48;
  }

  v53 = sub_1D91785FC();

  v54 = *(v53 + 16);
  if (v54)
  {
    v113 = v46;
    sub_1D8E314DC(0, v54, 0);
    v55 = 32;
    v56 = v113;
    do
    {
      v57 = *(v53 + v55);
      v58 = sub_1D917820C();
      v60 = v59;
      if (*(v57 + 16) && (v61 = v58, , v62 = sub_1D8D33C70(v61, v60), v64 = v63, , (v64 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v57 + 56) + 32 * v62, &v114);
      }

      else
      {

        v114 = 0u;
        v115 = 0u;
      }

      v113 = v56;
      v66 = *(v56 + 16);
      v65 = *(v56 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D8E314DC((v65 > 1), v66 + 1, 1);
        v56 = v113;
      }

      *(v56 + 16) = v66 + 1;
      v67 = v56 + 32 * v66;
      v68 = v115;
      *(v67 + 32) = v114;
      *(v67 + 48) = v68;
      v55 += 8;
      --v54;
    }

    while (v54);
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  v69 = *(v56 + 16);
  v70 = v110;
  swift_beginAccess();
  *(v70 + 16) = v69;
  v71 = v108;
  v72 = v104;
  v73 = v103;
  if (qword_1ECAAFBE0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v74 = __swift_project_value_buffer(v71, qword_1ECAAFBE8);
  swift_beginAccess();
  v75 = *(v72 + 16);
  v110 = v72 + 16;
  *&v111 = v74;
  v109 = v75;
  v75(v73, v74, v71);

  v76 = sub_1D917741C();
  v77 = sub_1D9178D1C();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v114 = v79;
    *v78 = 136315138;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
    v81 = MEMORY[0x1DA729BD0](v56, v80);
    v83 = sub_1D8CFA924(v81, v82, &v114);

    *(v78 + 4) = v83;
    v72 = v104;
    _os_log_impl(&dword_1D8CEC000, v76, v77, "Found orphaned keys for storeTrackIds: %s", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v79);
    MEMORY[0x1DA72CB90](v79, -1, -1);
    MEMORY[0x1DA72CB90](v78, -1, -1);
  }

  v84 = *(v72 + 8);
  v84(v73, v71);
  v86 = v106;
  v73 = *(v56 + 16);
  if (v73)
  {
    v87 = 0;
    v88 = v56 + 32;
    v72 += 8;
    *&v85 = 134217984;
    v104 = v85;
    while (1)
    {
      if (v87 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      sub_1D8D088B4(v88, &v114, &qword_1ECAB57F0, &unk_1D9190AA0);
      if (!*(&v115 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v89 = v112;
      v90 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(v112, v107);
      if (v90)
      {
        v91 = v90;
        [v90 setPendingDeletion_];

        v86 = v106;
      }

      else
      {
        v109(v105, v111, v71);
        v96 = sub_1D917741C();
        v97 = sub_1D9178D1C();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = v104;
          *(v98 + 4) = v89;
          _os_log_impl(&dword_1D8CEC000, v96, v97, "Did not locate orphaned key data for storeTrackId %lld", v98, 0xCu);
          v99 = v98;
          v71 = v108;
          MEMORY[0x1DA72CB90](v99, -1, -1);
        }

        v84(v105, v71);
        v86 = v106;
      }

LABEL_32:
      ++v87;
      v88 += 32;
      if (v73 == v87)
      {
        goto LABEL_44;
      }
    }

    sub_1D8D08A50(&v114, &qword_1ECAB57F0, &unk_1D9190AA0);
LABEL_38:
    v109(v86, v111, v71);
    v92 = sub_1D917741C();
    v93 = sub_1D9178CFC();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_1D8CEC000, v92, v93, "Found orphaned key with invalid storeTrackId type", v94, 2u);
      v95 = v94;
      v71 = v108;
      MEMORY[0x1DA72CB90](v95, -1, -1);
    }

    v84(v86, v71);
    goto LABEL_32;
  }

LABEL_44:
}

id SecureDownloadRenewalManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureDownloadRenewalManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8F1E48C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void sub_1D8F1E4A4(uint64_t a1, uint64_t *a2, void (*a3)(double), uint64_t a4)
{
  v6 = *a2;
  v7 = *(*a2 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  sub_1D8F1B214(v6, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7 != 0, (2 * v7) | 1, a3, a4);
}

uint64_t sub_1D8F1E554(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1D8F4CD70(1, *a2, a2[1], a2[2], a2[3]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRetain();
  sub_1D8F1B214(v6, v8, v10, v12, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8CF3274(&qword_1ECAAFC70, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 72) = v3;
  v8 = @"MTOfflineKeyData";
  v9 = v3;
  v10 = sub_1D9178C8C();
  v11 = sub_1D91785DC();
  v12 = [a2 objectsInEntity:v8 predicate:v10 sortDescriptors:v11];

  if (!v12)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v13 = sub_1D91785FC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1D917935C();
  if (!result)
  {
LABEL_10:

LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1D8F1E8C4(void *a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  v3 = sub_1D917820C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = @"MTOfflineKeyData";
  v7 = sub_1D9178C8C();
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D91785DC();
  v10 = [a1 objectsInEntity:v6 predicate:v7 sortDescriptors:v9];

  if (v10)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v11 = sub_1D91785FC();

    v12 = sub_1D8FBEEE4(v11);

    if (v12)
    {
      return v12;
    }
  }

  return v8;
}

void sub_1D8F1EA48(uint64_t a1, uint64_t a2)
{
  if (os_feature_enabled_download_consistency_checks())
  {
    if (qword_1EDCD2AD8 == -1)
    {
      if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
      {
        return;
      }
    }

    else
    {
      swift_once();
      if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
      {
        return;
      }
    }

    v4 = type metadata accessor for BugReport();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR___PFBugReport_system] = 1;
    v5[OBJC_IVAR___PFBugReport_errorKind] = 2;
    v5[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = 0;
    v11.receiver = v5;
    v11.super_class = v4;
    v6 = objc_msgSendSuper2(&v11, sel_init);
    v7 = [objc_opt_self() sharedInstance];
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v10[4] = sub_1D8F20BD0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D91509C0;
    v10[3] = &block_descriptor_171;
    v9 = _Block_copy(v10);

    [v7 submitBugReport:v6 userInfo:v9 withMaximumSubmissionCadence:3600.0];
    _Block_release(v9);
  }
}

uint64_t sub_1D8F1EC28(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v18[1] = qword_1ECAB17C0;
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_1D8F20C6C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_197;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_1D8D1F93C(a1);
  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t dispatch thunk of SecureDownloadRenewalManager.requestSecureDeletion(of:completionHandler:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
}

uint64_t sub_1D8F1F0D4()
{
  v1 = v0[3];
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    v6 = v0[2];
    return sub_1D8F1C658(result, v5, v3, v4);
  }

  return result;
}

uint64_t sub_1D8F1F110(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  if (a1[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] == 1)
  {
    v16 = a2;

    sub_1D8D1F93C(a4);
    sub_1D8F19460(MEMORY[0x1E69E7CC0], v16, a3, a4, a5);
  }

  a1[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v18 = objc_opt_self();
  v19 = a2;

  sub_1D8D1F93C(a4);
  v20 = [v18 sharedInstance];
  v21 = [v20 mainOrPrivateContext];

  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = v21;
  v22[4] = &v33;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D8F20C90;
  *(v23 + 24) = v22;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_213;
  v24 = _Block_copy(aBlock);
  a1;
  v25 = v21;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1ECAAFBE0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v26 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  (*(v11 + 16))(v14, v26, v10);
  v27 = sub_1D917741C();
  v28 = sub_1D9178D1C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "Renewals started.", v29, 2u);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v30 = v33;

  sub_1D8F1C658(0, v30, sub_1D8F20C84, v15);
}

id sub_1D8F1F570()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v0 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D918A530;
  v2 = sub_1D917820C();
  v3 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D917820C();
  *(v1 + 88) = v3;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  return v0;
}

id sub_1D8F1F680(unint64_t a1)
{
  v2 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v3 = [v2 predicateForDRMKeyRequired];
  v4 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v5 = sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);

  v36 = MEMORY[0x1DA72A0A0](0, v4, v5);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v2 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v8 = MEMORY[0x1DA72AA90](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v31 = sub_1D917820C();
      *(&v31 + 1) = v11;
      v3 = [v9 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33[0] = v31;
      v33[1] = v32;
      if (*(&v32 + 1))
      {
        v12 = swift_dynamicCast();
        if ((v12 & 1) == 0)
        {
          v34 = 0;
        }

        v13 = v12 ^ 1;
      }

      else
      {
        sub_1D8D08A50(v33, &qword_1ECAB57F0, &unk_1D9190AA0);
        v34 = 0;
        v13 = 1;
      }

      v35 = v13;

      if ((v35 & 1) == 0)
      {
        sub_1D8EFAB68(v33, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_]);
      }

      ++v7;
      if (v10 == i)
      {
        v2 = v29;
        v3 = v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:
  v14 = MEMORY[0x1E69E6158];

  v15 = sub_1D9178A8C();

  v16 = [v2 predicateForEpisodeStoreTrackIds_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v17 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D9189060;
  v19 = sub_1D917820C();
  *(v18 + 56) = v14;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = sub_1D917820C();
  *(v18 + 88) = v14;
  *(v18 + 64) = v21;
  *(v18 + 72) = v22;
  v23 = sub_1D917820C();
  *(v18 + 120) = v14;
  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  v25 = sub_1D91785DC();

  [v17 setPropertiesToFetch_];

  v26 = [v16 NOT];
  v27 = [v3 AND_];

  [v17 setPredicate_];
  swift_bridgeObjectRelease_n();

  return v17;
}

void sub_1D8F1FAF8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D8F1B5C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8F1FBC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v21[1] = qword_1ECAB17C0;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;
  aBlock[4] = sub_1D8F205FC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_110;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v18);
  _Block_release(v18);
  (*(v9 + 8))(v12, v8);
  (*(v13 + 8))(v16, v22);
}

uint64_t sub_1D8F1FEE0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  return sub_1D8F202D8(a1, v1 + v4, v7, v11, v9, v10);
}

uint64_t sub_1D8F1FFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a5;
  v28 = a6;
  v12 = sub_1D9177E0C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D9177E9C();
  v17 = *(v30 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v29 = qword_1ECAB17C0;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  v22 = v28;
  v21[6] = v27;
  v21[7] = v22;
  v21[8] = a7;
  aBlock[4] = sub_1D8F20AE0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_129;
  v23 = _Block_copy(aBlock);
  v24 = a1;
  swift_unknownObjectRetain();

  sub_1D9177E4C();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v20, v16, v23);
  _Block_release(v23);
  (*(v13 + 8))(v16, v12);
  (*(v17 + 8))(v20, v30);
}

uint64_t sub_1D8F202D8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  if (a1)
  {
    v41 = a3;
    v19 = a1;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1EDCD0F88);
    sub_1D8D088B4(a2, v18, &qword_1ECAB4538, &unk_1D91949B0);
    v21 = a1;
    v22 = sub_1D917741C();
    v23 = sub_1D9178CFC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v40 = a6;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = a5;
      v27 = v26;
      v42 = v26;
      *v25 = 141558531;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2049;
      v38 = a4;
      sub_1D8D088B4(v18, v15, &qword_1ECAB4538, &unk_1D91949B0);
      v28 = *v15;
      v29 = *(v12 + 48);
      v30 = sub_1D9176C2C();
      (*(*(v30 - 8) + 8))(&v15[v29], v30);
      sub_1D8D08A50(v18, &qword_1ECAB4538, &unk_1D91949B0);
      *(v25 + 14) = v28;
      *(v25 + 22) = 2082;
      swift_getErrorValue();
      v31 = sub_1D9179D2C();
      v33 = sub_1D8CFA924(v31, v32, &v42);

      *(v25 + 24) = v33;
      a4 = v38;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Unable to load key for adamID: %{private,mask.hash}lld, with error: %{public}s.", v25, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v34 = v27;
      a5 = v39;
      MEMORY[0x1DA72CB90](v34, -1, -1);
      v35 = v25;
      a6 = v40;
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    else
    {
      sub_1D8D08A50(v18, &qword_1ECAB4538, &unk_1D91949B0);
    }

    a3 = v41;
  }

  return sub_1D8F1FBC0(a3, a4, a5, a6);
}

void sub_1D8F2060C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D8F1BB40(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8F206E4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8F207B0(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D8F207B0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = a3;
  v47 = a4;
  v15 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  if (a1)
  {
    v44 = a9;
    v45 = a5;
    v23 = a1;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD0F88);
    sub_1D8D088B4(a2, v22, &qword_1ECAB4538, &unk_1D91949B0);
    v25 = a1;
    v26 = sub_1D917741C();
    v27 = sub_1D9178CFC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v43 = a8;
      v29 = v28;
      v30 = swift_slowAlloc();
      v42 = a7;
      v31 = v30;
      v48 = v30;
      *v29 = 141558531;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2049;
      sub_1D8D088B4(v22, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v32 = *v19;
      v33 = *(v16 + 48);
      v34 = sub_1D9176C2C();
      (*(*(v34 - 8) + 8))(&v19[v33], v34);
      sub_1D8D08A50(v22, &qword_1ECAB4538, &unk_1D91949B0);
      *(v29 + 14) = v32;
      *(v29 + 22) = 2082;
      swift_getErrorValue();
      v35 = sub_1D9179D2C();
      v37 = sub_1D8CFA924(v35, v36, &v48);

      *(v29 + 24) = v37;
      _os_log_impl(&dword_1D8CEC000, v26, v27, "Unable to load key for adamID: %{private,mask.hash}lld, with error: %{public}s.", v29, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      v38 = v31;
      a7 = v42;
      MEMORY[0x1DA72CB90](v38, -1, -1);
      v39 = v29;
      a8 = v43;
      MEMORY[0x1DA72CB90](v39, -1, -1);
    }

    else
    {
      sub_1D8D08A50(v22, &qword_1ECAB4538, &unk_1D91949B0);
    }

    v15 = v44;
    a5 = v45;
  }

  return sub_1D8F1FFA4(v46, v47, a5, a6, a7, a8, v15);
}

uint64_t sub_1D8F20AF0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  return sub_1D8F19A24(v1, v2, v3);
}

void *sub_1D8F20B1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = *(a1 + 8);
  v7 = v2[11];
  v8 = v2[12];
  v11 = *a1;
  v12 = v6;
  v7(&v10, &v11);
  result = v5(&v13, &v10);
  *a2 = v13;
  return result;
}

uint64_t sub_1D8F20BC4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_1D8F18804(v1[3], a1);
}

void sub_1D8F20C0C()
{
  v1 = *(v0 + 16);
  v2 = sub_1D91785DC();
  (*(v1 + 16))(v1, v2);
}

id sub_1D8F20C9C()
{
  v0 = sub_1D9176E3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = @"expirationDate";
  sub_1D9176E2C();
  v6 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v7 = [objc_opt_self() predicateForDateKey:v5 isLessThanDate:v6];

  (*(v1 + 8))(v4, v0);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D918A530;
  v9 = sub_1D917820C();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D8D34978();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v14 = sub_1D917820C();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = v14;
  *(v8 + 80) = v15;
  v16 = sub_1D9178C8C();
  v17 = [v7 AND_];

  return v17;
}

uint64_t sub_1D8F20EA8(void *a1)
{
  v2 = sub_1D8F20C9C();
  v3 = @"MTOfflineKeyData";
  v4 = v2;
  v5 = sub_1D91785DC();
  v6 = [a1 objectsInEntity:v3 predicate:v4 sortDescriptors:v5];

  if (v6)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v7 = sub_1D91785FC();

    v8 = sub_1D8FBEEE4(v7);

    if (v8)
    {
      return v8;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_152Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  if (*(v1 + 32))
  {
    v3 = *(v1 + 40);
  }

  return swift_deallocObject();
}

void sub_1D8F21024()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_1D8F17534(v1, v2);
}

Swift::Bool __swiftcall URL.isPackagedMedia()()
{
  v0 = sub_1D9176B1C();
  v1 = [v0 isPackagedMedia];

  return v1;
}

Swift::Bool __swiftcall URL.isHLSPlaylist()()
{
  v0 = sub_1D9176B1C();
  v1 = [v0 isHLSPlaylist];

  return v1;
}

Swift::Bool __swiftcall NSURL.isHLSPlaylist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - v4;
  v6 = sub_1D91772BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = [v1 pathExtension];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  sub_1D917820C();

  sub_1D917725C();
  sub_1D917722C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D8F213C8(v5);
LABEL_4:
    v15 = 0;
    return v15 & 1;
  }

  (*(v7 + 32))(v12, v5, v6);
  v16 = sub_1D917721C();
  v18 = v17;
  v19 = [*MEMORY[0x1E6982E90] identifier];
  v20 = sub_1D917820C();
  v22 = v21;

  if (v16 == v20 && v18 == v22)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D9179ACC();
  }

  (*(v7 + 8))(v12, v6);
  return v15 & 1;
}

uint64_t sub_1D8F213C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D8F21430(void *a1)
{
  v1 = a1;
  v2 = NSURL.isHLSPlaylist()();

  return v2;
}

Swift::Bool __swiftcall NSURL.isPackagedMedia()()
{
  v1 = [v0 pathExtension];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;

    if (v3 == 0x676B70766F6DLL && v5 == 0xE600000000000000)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      v7 = sub_1D9179ACC();

      LOBYTE(v1) = v7 & 1;
    }
  }

  return v1;
}

uint64_t sub_1D8F2150C(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D917820C();
    v6 = v5;

    if (v4 == 0x676B70766F6DLL && v6 == 0xE600000000000000)
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_1D9179ACC();
    }
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

PodcastsFoundation::AppDependencyKey_optional __swiftcall AppDependencyKey.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_AppDependencyKey_objectGraph;
  }

  else
  {
    v2.value = PodcastsFoundation_AppDependencyKey_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t AppDependencyKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

uint64_t sub_1D8F21660(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000021;
  }

  else
  {
    v4 = 0xD00000000000002FLL;
  }

  if (v3)
  {
    v5 = "noDownloadBehavior";
  }

  else
  {
    v5 = "jectGraphAppIntentDependencyKey";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v7 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v8 = "jectGraphAppIntentDependencyKey";
  }

  else
  {
    v8 = "noDownloadBehavior";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D9179ACC();
  }

  return v10 & 1;
}

uint64_t sub_1D8F2170C()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F21778()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F217F4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_1D8F21854(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v1)
  {
    v3 = "jectGraphAppIntentDependencyKey";
  }

  else
  {
    v3 = "noDownloadBehavior";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void AMSBagProtocol.createLocalSnapshot(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1D8D597EC;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8D5960C;
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [v2 createSnapshotWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_1D8F21984(uint64_t a1)
{
  v2 = [*(v1 + 16) arrayForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  if (!v3)
  {
    return 0;
  }

  sub_1D8F21A3C();
  sub_1D91786FC();
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8F21A3C()
{
  result = qword_1ECAB6CB0;
  if (!qword_1ECAB6CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB6CB0);
  }

  return result;
}

uint64_t sub_1D8F21A88(uint64_t a1)
{
  v2 = [*(v1 + 16) BOOLForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

id sub_1D8F21B08(uint64_t a1)
{
  v2 = [*(v1 + 16) integerForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 integerValue];

  return v4;
}

uint64_t sub_1D8F21B90(uint64_t a1)
{
  v2 = [*(v1 + 16) stringForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  sub_1D91781FC();
  return 0;
}

uint64_t sub_1D8F21D2C(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  memset(&v8.retain, 0, 64);
  v8.version = 0;
  v8.info = qword_1ECAFBB50;
  if (__OFADD__(qword_1ECAFBB50, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  ++qword_1ECAFBB50;
  *(v1 + 24) = a1;
  v4 = CFRunLoopGetCurrent();
  if (!v4)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  *(v1 + 32) = v4;
  v5 = CFRunLoopSourceCreate(*MEMORY[0x1E695E4A8], 0, &v8);
  if (!v5)
  {
    goto LABEL_7;
  }

  *(v1 + 40) = v5;
  CFRunLoopAddSource(*(v1 + 32), v5, *MEMORY[0x1E695E8D0]);
  v6 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1D8F21E30()
{
  CFRunLoopRemoveSource(*(v0 + 32), *(v0 + 40), *MEMORY[0x1E695E8D0]);
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F21EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8F21F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1D8F21F68(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1D8F21FA4()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177EDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9177ECC();
  if (sub_1D9177EBC())
  {
    (*(v8 + 8))(v11, v7);
    return;
  }

  v12 = sub_1D9177EAC();
  v13 = sub_1D9177EAC();
  v14 = v12 - v13;
  if (v12 < v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v28 = v8;
  v15 = *(v1 + 16);
  os_unfair_lock_lock(v15 + 4);
  v16 = *(v1 + 24);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_13:
    __break(1u);
    return;
  }

  *(v1 + 24) = v17;
  os_unfair_lock_unlock(v15 + 4);
  if (v17 < 1)
  {
    (*(v28 + 8))(v11, v7);
  }

  else
  {
    v27 = v7;
    v18 = v14 / 1000000000.0;
    v19 = *MEMORY[0x1E695E8E0];
    v20 = (v3 + 8);
    do
    {
      sub_1D9176E2C();
      sub_1D9176CCC();
      v22 = v21;
      v23 = *v20;
      (*v20)(v6, v2);
      CFRunLoopRunInMode(v19, v18, 1u);
      sub_1D9176E2C();
      sub_1D9176CCC();
      v25 = v24;
      v23(v6, v2);
      v18 = v18 - (v25 - v22);
      if (v18 < 0.0)
      {
        break;
      }

      os_unfair_lock_lock(v15 + 4);
      v26 = *(v1 + 24);
      os_unfair_lock_unlock(v15 + 4);
    }

    while (v26);
    (*(v28 + 8))(v11, v27);
  }
}

uint64_t Publisher.pf_combineLatest(_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D8D53E90(a1, a1);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(a1 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  sub_1D917861C();
  (*(v9 + 16))(v12, v3, a1);
  sub_1D91786FC();
  v13 = sub_1D917864C();

  *a2 = v13;
  return result;
}

uint64_t Publishers.PFCombineLatestMany.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v55 = sub_1D91777CC();
  v57 = *(v55 - 8);
  v12 = v57[8];
  MEMORY[0x1EEE9AC00](v55);
  v50 = v49 - v13;
  v14 = swift_getAssociatedTypeWitness();
  v67 = v10;
  v68 = v14;
  v69 = AssociatedTypeWitness;
  v70 = a3;
  WitnessTable = v9;
  v72 = a4;
  v59 = _s19PFCombineLatestManyV5InnerC4SideVMa();
  v53 = *(v59 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v58 = (v49 - v16);
  v52 = *(v10 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v56 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = sub_1D91791BC();
  v54 = *(v63 - 8);
  v20 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v49 - v23);
  v25 = *v5;
  v67 = v10;
  v68 = v14;
  v51 = v14;
  v26 = a1;
  v69 = AssociatedTypeWitness;
  v70 = a3;
  v61 = v9;
  WitnessTable = v9;
  v72 = a4;
  v49[1] = a4;
  v27 = _s19PFCombineLatestManyV5InnerCMa();
  v28 = sub_1D91786AC();
  v29 = sub_1D8F24B60(v26, v28);
  v67 = v25;
  v60 = v10;
  v30 = sub_1D91786FC();
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v70 = v27;
    WitnessTable = swift_getWitnessTable();
    v67 = v29;

    sub_1D917779C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
    v67 = sub_1D917866C();
    sub_1D91777AC();

    v31 = v50;
    (*(*(AssociatedTypeWitness - 8) + 56))(v50, 1, 1, AssociatedTypeWitness);
    sub_1D917778C();

    return (v57[1])(v31, v55);
  }

  else
  {
    v57 = v29;
    v67 = v25;
    v33 = swift_getWitnessTable();
    MEMORY[0x1DA729A10](&v66, v30, v33);
    v65 = v66;
    sub_1D917973C();
    sub_1D917970C();
    v34 = sub_1D917972C();
    v35 = (v54 + 32);
    v36 = TupleTypeMetadata2;
    v54 = TupleTypeMetadata2 - 8;
    v55 = v34;
    v37 = (v52 + 32);
    v38 = (v53 + 8);
    for (i = (v52 + 8); ; (*i)(v43, v48))
    {
      v40 = v62;
      sub_1D917971C();
      (*v35)(v24, v40, v63);
      if ((*(*(v36 - 8) + 48))(v24, 1, v36) == 1)
      {
        break;
      }

      v41 = *v24;
      v42 = v24 + *(v36 + 48);
      v43 = v56;
      v44 = v60;
      (*v37)(v56, v42, v60);
      v45 = v57;

      v46 = v58;
      sub_1D8F22A04(v41, v45, v58);
      v47 = v59;
      swift_getWitnessTable();
      sub_1D9177D5C();
      (*v38)(v46, v47);
      v48 = v44;
      v36 = TupleTypeMetadata2;
    }
  }
}

uint64_t sub_1D8F22A04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v6 = v3[5];
  v7 = v3[6];
  v8 = v3[7];
  v4 = a3 + *(_s19PFCombineLatestManyV5InnerC4SideVMa() + 72);
  return sub_1D917751C();
}

uint64_t sub_1D8F22A7C(_OWORD *a1)
{
  v3 = sub_1D9179E5C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v21 - v9;
  v11 = *(*(a1 - 1) + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  (*(v15 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9189080;
  *(v16 + 32) = 0xD000000000000012;
  *(v16 + 40) = 0x80000001D91CD2E0;
  v17 = *(v1 + 8);
  *(v16 + 72) = sub_1D917752C();
  __swift_allocate_boxed_opaque_existential_0((v16 + 48));
  v18 = a1[2];
  v21[0] = a1[1];
  v21[1] = v18;
  v21[2] = a1[3];
  _s19PFCombineLatestManyV5InnerCMa();
  swift_getWitnessTable();
  sub_1D91774FC();
  v19 = sub_1D9179E4C();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1D8F386A0(v6);
  return sub_1D9179E8C();
}

void sub_1D8F22CFC(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x1E69E6158];
  strcpy(a1, "CombineLatest");
  *(a1 + 14) = -4864;
}

void sub_1D8F22D30(char *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D8F2305C(a1, v2);
}

void sub_1D8F22D58(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D8F23380(a1, v2);
}

void sub_1D8F22D80(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D8F239C8(a1, v2);
}

uint64_t sub_1D8F22DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1D917752C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D8F22E54()
{
  v1 = *v0;
  v2 = sub_1D9179E5C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v13 - v8;
  v14 = v0;
  v10 = sub_1D9179E4C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = v1[6];
  v13[0] = v1[5];
  v13[1] = v11;
  v13[2] = v1[7];
  _s19PFCombineLatestManyV5InnerCMa();
  sub_1D8F386A0(v5);

  return sub_1D9179E8C();
}

uint64_t sub_1D8F22FD8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_1D917867C();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1D8D73ABC(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D8D740C4(v3);
    return v4;
  }

  return result;
}

void sub_1D8F2305C(char *a1, uint64_t a2)
{
  v7 = *v2;
  if (*(v2 + *(*v2 + 176)) <= a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = a2;
  v4 = a1;
  v5 = *(v2 + *(v7 + 184));
  os_unfair_lock_lock(v5 + 4);
  v8 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + v8[20]) & 1) != 0 || (*(v2 + v8[21]))
  {
    goto LABEL_8;
  }

  v6 = v8[18];
  swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v9 = *(v2 + v6);
  if (*(v9 + 16) <= v3)
  {
    goto LABEL_24;
  }

  sub_1D8D73ABC(v9 + 40 * v3 + 32, &v19);
  v10 = *&v20[8];
  sub_1D8D740C4(&v19);
  if (v10)
  {
LABEL_8:
    os_unfair_lock_unlock(v5 + 4);
    v11 = *(v4 + 4);
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    v12 = *(v11 + 8);
    sub_1D91777BC();
  }

  else
  {
    sub_1D8CFD9D8(v4, &v19);
    swift_beginAccess();
    v4 = *(v2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v6) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (*(v4 + 2) > v3)
    {
      v14 = (v4 + 32);
      sub_1D8D74118(&v19, &v4[40 * v3 + 32]);
      *(v2 + v6) = v4;
      swift_endAccess();
      v3 = *(v4 + 2);

      if (!v3)
      {
LABEL_19:

        os_unfair_lock_unlock(v5 + 4);
        v15 = *(*v2 + 128);
        v16 = *(v7 + 120);
        v17 = *(v7 + 80);
        *v20 = *(v7 + 96);
        v18 = *(v7 + 104);
        v19 = v17;
        *&v20[8] = v18;
        v21 = v16;
        *&v20[8] = _s19PFCombineLatestManyV5InnerCMa();
        *&v20[16] = swift_getWitnessTable();
        *&v19 = v2;

        sub_1D917779C();
        __swift_destroy_boxed_opaque_existential_1Tm(&v19);
        return;
      }

      v6 = 0;
      while (v6 < *(v4 + 2))
      {
        sub_1D8D73ABC(v14, &v19);
        v22[0] = v19;
        v22[1] = *v20;
        v23 = *&v20[16];
        if (*&v20[8] != 1)
        {
          if (!*&v20[8])
          {

            os_unfair_lock_unlock(v5 + 4);
            return;
          }

          sub_1D8D740C4(v22);
        }

        ++v6;
        v14 += 40;
        if (v3 == v6)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v4 = sub_1D915C34C(v4);
      *(v2 + v6) = v4;
    }

    __break(1u);
  }
}

void sub_1D8F23380(uint64_t a1, int64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  if (*(v2 + v5[22]) <= a2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = *(v2 + v6[23]);
  os_unfair_lock_lock(v13 + 4);
  v14 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + *(v14 + 160)) & 1) != 0 || (*(v2 + *(v14 + 168)))
  {
    os_unfair_lock_unlock(v13 + 4);

    goto LABEL_7;
  }

  v15 = *(v7 - 8);
  (*(v15 + 16))(v12, a1, v7);
  (*(v15 + 56))(v12, 0, 1, v7);
  v16 = a2;
  v17 = *(*v2 + 136);
  swift_beginAccess();
  v51 = sub_1D91786FC();
  v18 = v2;
  sub_1D917865C();
  v19 = *(v2 + v17);
  sub_1D8F24788(v16, v19);
  v21 = *(v9 + 40);
  v20 = v9 + 40;
  v22 = v19 + ((*(v20 + 40) + 32) & ~*(v20 + 40));
  v23 = *(v20 + 32);
  v47 = v16;
  v21(v22 + v23 * v16, v12, v8);
  v24 = swift_endAccess();
  v50 = &v44;
  v49 = v18;
  v48 = v17;
  *v55 = *(v18 + v17);
  MEMORY[0x1EEE9AC00](v24);
  v46 = v6[10];
  *(&v44 - 6) = v46;
  *(&v44 - 5) = v7;
  v25 = v6[13];
  v45 = v6[12];
  *(&v44 - 4) = v45;
  *(&v44 - 3) = v25;
  v27 = v6[14];
  v26 = v6[15];
  *(&v44 - 2) = v27;
  *(&v44 - 1) = v26;

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v19) = sub_1D917842C();

  if ((v19 & 1) == 0)
  {
    os_unfair_lock_unlock(v13 + 4);
    goto LABEL_7;
  }

  v50 = &v44;
  v44 = WitnessTable;
  v30 = v49;
  *v55 = *(v49 + v48);
  MEMORY[0x1EEE9AC00](v29);
  *(&v44 - 6) = v46;
  *(&v44 - 5) = v7;
  *(&v44 - 4) = v45;
  *(&v44 - 3) = v25;
  *(&v44 - 2) = v27;
  *(&v44 - 1) = v26;

  v31 = sub_1D917843C();

  os_unfair_lock_unlock(v13 + 4);
  v32 = *(*v30 + 128);
  *v55 = v31;
  v33 = sub_1D91777AC();

  sub_1D91777FC();
  v34 = sub_1D91777DC();
  v35 = v47;
  if ((v34 & 1) == 0)
  {
    if ((v33 & 0x8000000000000000) == 0)
    {
      if (v33)
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_1D91777EC();
      return;
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_12:
  os_unfair_lock_lock(v13 + 4);
  v36 = v49;
  v37 = *(*v49 + 144);
  swift_beginAccess();
  v38 = *(v36 + v37);

  os_unfair_lock_unlock(v13 + 4);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = v38 + 32;
    do
    {
      if (v40 >= *(v38 + 16))
      {
        goto LABEL_26;
      }

      *v55 = v40;
      sub_1D8D73ABC(v41, &v55[8]);
      if (*(&v56[0] + 1) == 2)
      {
        break;
      }

      v43 = *v55;
      *v55 = *&v55[8];
      *&v55[16] = *&v56[0];
      v56[0] = *(v56 + 8);
      v42 = v55;
      if (v43 != v35)
      {
        sub_1D8D73ABC(v55, &v52);
        if (v53 > 1)
        {
          sub_1D8D6BCE0(&v52, v54);
          __swift_project_boxed_opaque_existential_1(v54, v54[3]);
          sub_1D917782C();
          sub_1D8D740C4(v55);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          goto LABEL_16;
        }

        sub_1D8D740C4(v55);
        v42 = &v52;
      }

      sub_1D8D740C4(v42);
LABEL_16:
      ++v40;
      v41 += 40;
    }

    while (v39 != v40);
  }
}

void sub_1D8F239C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 120);
  v8 = *(*v2 + 104);
  swift_getAssociatedConformanceWitness();
  v9 = sub_1D91777CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v2 + *(v5 + 184));
  os_unfair_lock_lock(v17 + 4);
  v18 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (v19 = *(v18 + 160), (*(v2 + v19)) || (*(v2 + *(v18 + 168)))
  {

LABEL_6:
    os_unfair_lock_unlock(v17 + 4);
    return;
  }

  v27 = *(v18 + 168);
  (*(v10 + 16))(v16, a1, v9);
  v26 = *(v6 - 8);
  if ((*(v26 + 48))(v16, 1, v6) != 1)
  {
    *(v2 + v19) = 1;
    sub_1D8F23D98(a1, a2);
    (*(v10 + 8))(v16, v9);
    return;
  }

  v30 = 0uLL;
  *v31 = 0;
  *&v31[8] = xmmword_1D918BEE0;
  v20 = *(*v2 + 144);
  swift_beginAccess();
  v21 = *(v2 + v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v20) = v21;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = sub_1D915C34C(v21);
  *(v2 + v20) = v21;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v21 + 2) <= a2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v23 = (v21 + 32);
  sub_1D8D74118(&v30, &v21[40 * a2 + 32]);
  *(v2 + v20) = v21;
  swift_endAccess();
  v24 = *(v21 + 2);
  if (v24)
  {
    while (1)
    {
      sub_1D8D73ABC(v23, &v30);
      v28[0] = v30;
      v28[1] = *v31;
      v29 = *&v31[16];
      if (*&v31[8] != 1)
      {
        break;
      }

      v23 += 40;
      if (!--v24)
      {
        goto LABEL_14;
      }
    }

    if (*&v31[8])
    {
      sub_1D8D740C4(v28);
    }

    goto LABEL_6;
  }

LABEL_14:
  v25 = v26;
  *(v2 + v27) = 1;
  (*(v25 + 56))(v13, 1, 1, v6);
  sub_1D8F23D98(v13, a2);
  (*(v10 + 8))(v13, v9);
}

void sub_1D8F23D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31[1] = a1;
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - v11;
  (*(*(v6 - 8) + 56))(v31 - v11, 1, 1, v6, v10);
  v13 = *(v3 + *(*v3 + 176));
  v14 = sub_1D8F247DC(v12, v13, v7);
  (*(v8 + 8))(v12, v7);
  v15 = *(*v3 + 136);
  swift_beginAccess();
  v16 = *(v3 + v15);
  *(v3 + v15) = v14;

  v17 = *(*v3 + 144);
  swift_beginAccess();
  v18 = *(v3 + v17);
  memset(v35, 0, 40);

  v19 = sub_1D8F22FD8(v35, v13);
  v20 = *(v3 + v17);
  *(v3 + v17) = v19;

  os_unfair_lock_unlock((*(v3 + *(*v3 + 184)) + 16));
  v21 = *(v18 + 16);
  if (!v21)
  {
LABEL_11:

    v28 = *(v5 + 104);
    v29 = *(v5 + 120);
    v30 = v3 + *(*v3 + 128);
    sub_1D917778C();
    return;
  }

  v22 = 0;
  v23 = v18 + 32;
  while (v22 < *(v18 + 16))
  {
    *v35 = v22;
    sub_1D8D73ABC(v23, &v35[8]);
    if (*&v35[32] == 2)
    {
      goto LABEL_11;
    }

    v25 = *v35;
    *v35 = *&v35[8];
    *&v35[16] = *&v35[24];
    *&v35[24] = *&v35[32];
    v24 = v35;
    if (v25 != a2)
    {
      sub_1D8D73ABC(v35, &v32);
      if (v33 > 1)
      {
        sub_1D8D6BCE0(&v32, v34);
        v26 = v34[4];
        __swift_project_boxed_opaque_existential_1(v34, v34[3]);
        v27 = *(v26 + 8);
        sub_1D91777BC();
        sub_1D8D740C4(v35);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        goto LABEL_5;
      }

      sub_1D8D740C4(v35);
      v24 = &v32;
    }

    sub_1D8D740C4(v24);
LABEL_5:
    ++v22;
    v23 += 40;
    if (v21 == v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1D8F240E4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v8 + 4);
  v9 = *(*v0 + 152);
  if (*(v0 + v9))
  {

    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    v10 = *(*v0 + 144);
    swift_beginAccess();
    v11 = *(v0 + v10);
    *(v0 + v9) = 1;
    memset(v24, 0, sizeof(v24));
    v25 = xmmword_1D918BEE0;
    v12 = *(v0 + *(*v0 + 176));

    v13 = sub_1D8F22FD8(v24, v12);
    v14 = *(v0 + v10);
    *(v0 + v10) = v13;

    (*(*(v2 - 8) + 56))(v7, 1, 1, v2);
    v15 = sub_1D8F247DC(v7, v12, v3);
    (*(v4 + 8))(v7, v3);
    v16 = *(*v0 + 136);
    swift_beginAccess();
    v17 = *(v0 + v16);
    *(v0 + v16) = v15;

    os_unfair_lock_unlock(v8 + 4);
    v18 = *(v11 + 16);
    if (v18)
    {
      v19 = v11 + 32;
      do
      {
        sub_1D8D73ABC(v19, &v22);
        if (v23 <= 1)
        {
          sub_1D8D740C4(&v22);
        }

        else
        {
          sub_1D8D6BCE0(&v22, v24);
          v20 = *(&v25 + 1);
          __swift_project_boxed_opaque_existential_1(v24, v25);
          v21 = *(v20 + 8);
          sub_1D91777BC();
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

        v19 += 40;
        --v18;
      }

      while (v18);
    }
  }
}

void sub_1D8F243E0(uint64_t a1)
{
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
    return;
  }

LABEL_4:
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3 + 4);
  v4 = *v1;
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + v4[20]) & 1) != 0 || (*(v1 + v4[21]))
  {

    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v5 = v4[18];
    swift_beginAccess();
    v6 = *(v1 + v5);

    os_unfair_lock_unlock(v3 + 4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1D8D73ABC(v8, &v9);
        if (v10 > 1)
        {
          sub_1D8D6BCE0(&v9, v11);
          __swift_project_boxed_opaque_existential_1(v11, v11[3]);
          sub_1D917782C();
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
        }

        else
        {
          sub_1D8D740C4(&v9);
        }

        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_1D8F2459C()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));
  v1 = *(v0 + *(*v0 + 136));

  v2 = *(v0 + *(*v0 + 144));

  v3 = *(v0 + *(*v0 + 184));

  return v0;
}

uint64_t sub_1D8F24660()
{
  v0 = *sub_1D8F2459C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F24788(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8F247DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D917866C();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1D91786FC();
    return v8;
  }

  return result;
}

uint64_t *sub_1D8F248E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v16 - v10;
  *(v2 + *(v5 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  v12 = *(*v2 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v13 = swift_allocObject();
  *(v2 + v12) = v13;
  *(v13 + 16) = 0;
  (*(*(*(v5 + 104) - 8) + 16))(v2 + *(*v2 + 128), a1);
  *(v2 + *(*v2 + 176)) = a2;
  (*(*(v6 - 8) + 56))(v11, 1, 1, v6);
  v14 = sub_1D8F247DC(v11, a2, v7);
  (*(v8 + 8))(v11, v7);
  *(v2 + *(*v2 + 136)) = v14;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  *(v2 + *(*v2 + 144)) = sub_1D8F22FD8(v16, a2);
  return v2;
}

uint64_t *sub_1D8F24B60(uint64_t a1, uint64_t a2)
{
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v5 = _s19PFCombineLatestManyV5InnerCMa();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  return sub_1D8F248E0(a1, a2);
}

uint64_t sub_1D8F24BCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8F24C20(uint64_t a1)
{
  v1 = *(a1 + 104);
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

uint64_t sub_1D8F24CEC(_OWORD *a1)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  result = _s19PFCombineLatestManyV5InnerCMa();
  if (v2 <= 0x3F)
  {
    result = sub_1D917752C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8F24E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(a2 + 40);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D8F24E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = sub_1D91791BC();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t Publisher.ignoreValue()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1D9177B9C();
}

void sub_1D8F24F9C(uint64_t a1)
{
  v20[3] = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ProducerInner.State();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - v11;
  v20[1] = v4;
  v20[2] = v2;
  active = type metadata accessor for ProducerInner.ActiveState();
  v14 = *(active - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](active);
  v17 = v20 - v16;
  v18 = *(v1 + 2);
  os_unfair_lock_lock(v18 + 4);
  v19 = *(*v1 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v12, &v1[v19], v5);
  if ((*(v14 + 48))(v12, 1, active) == 1)
  {
    (*(v6 + 8))(v12, v5);
    os_unfair_lock_unlock(v18 + 4);
  }

  else
  {
    (*(v14 + 32))(v17, v12, active);
    (*(v14 + 56))(v9, 1, 1, active);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v19], v9, v5);
    swift_endAccess();
    os_unfair_lock_unlock(v18 + 4);
    sub_1D917778C();
    (*(v14 + 8))(v17, active);
  }
}

void sub_1D8F25298()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D91791BC();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v33 - v5;
  v35 = *(v2 - 8);
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = *(v1 + 80);
  v10 = *(v1 + 96);
  v11 = type metadata accessor for ProducerInner.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  active = type metadata accessor for ProducerInner.ActiveState();
  v19 = *(active - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](active);
  v22 = &v33 - v21;
  v23 = *(v0 + 2);
  os_unfair_lock_lock(v23 + 4);
  v24 = *(*v0 + 112);
  swift_beginAccess();
  (*(v12 + 16))(v17, &v0[v24], v11);
  if ((*(v19 + 48))(v17, 1, active) == 1)
  {
    (*(v12 + 8))(v17, v11);
    os_unfair_lock_unlock(v23 + 4);
  }

  else
  {
    (*(v19 + 32))(v22, v17, active);
    v25 = v34;
    (*(v19 + 56))(v34, 1, 1, active);
    swift_beginAccess();
    (*(v12 + 40))(&v0[v24], v25, v11);
    swift_endAccess();
    os_unfair_lock_unlock(v23 + 4);
    v27 = v36;
    v26 = v37;
    v28 = v38;
    (*(v37 + 16))(v36, &v22[*(active + 44)], v38);
    v29 = v35;
    if ((*(v35 + 48))(v27, 1, v2) == 1)
    {
      (*(v19 + 8))(v22, active);
      (*(v26 + 8))(v27, v28);
    }

    else
    {
      v30 = v33;
      (*(v29 + 32))(v33, v27, v2);
      v31 = &v22[*(active + 56)];
      v32 = *(v31 + 1);
      (*v31)(v30);
      (*(v29 + 8))(v30, v2);
      (*(v19 + 8))(v22, active);
    }
  }
}

char *sub_1D8F25748()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 112);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = type metadata accessor for ProducerInner.State();
  (*(*(v7 - 8) + 8))(&v0[v3], v7);
  return v0;
}

uint64_t sub_1D8F25804()
{
  v0 = *sub_1D8F25748();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F258B8(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a3 + 24) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v4 - 8) + 64) + v11;
  v14 = v12 + 7;
  if (v10 - 1 >= a2)
  {
    goto LABEL_32;
  }

  v15 = ((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v10;
  v17 = v15 & 0xFFFFFFF8;
  v18 = v16 + 2;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (v21)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    if (v6 == v10)
    {
      v24 = (*(v5 + 48))(a1, v6, v4);
      goto LABEL_41;
    }

    v25 = (a1 + v13) & ~v11;
    if (v9 != v10)
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v24 = v27 + 1;
LABEL_41:
      v28 = v24 != 0;
      result = v24 - 1;
      if (result != 0 && v28)
      {
        return result;
      }

      return 0;
    }

    if (v8 >= 2)
    {
      v26 = (*(v7 + 48))(v25);
      if (v26 >= 2)
      {
        v24 = v26 - 1;
        goto LABEL_41;
      }
    }

    return 0;
  }

  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = *(a1 + v15);
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_29:
  v22 = v21 - 1;
  if (v17)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return (v23 | v22) + v10;
}

unsigned int *sub_1D8F25AE0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  v13 = v10 - 1;
  if (!v10)
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

  v15 = v14 - 1;
  v16 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v17 = (((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    v18 = a3 - v14 + 2;
    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v5 = v19;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v15 < a2)
  {
    v20 = a2 - v14;
    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 1;
    }

    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = result;
      bzero(result, (((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v22;
      *v22 = v20;
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

      goto LABEL_39;
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

    goto LABEL_39;
  }

  if (!a2)
  {
    return result;
  }

LABEL_39:
  if (v8 == v14)
  {
    v23 = *(v7 + 56);

    return v23();
  }

  else
  {
    result = ((result + v16) & ~v11);
    if (v13 == v14)
    {
      v24 = *(v9 + 56);
      v25 = a2 + 2;

      return v24(result, v25, v10);
    }

    else
    {
      v26 = ((result + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (((a2 + 1) & 0x80000000) != 0)
      {
        *v26 = a2 - 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2;
      }
    }
  }

  return result;
}

uint64_t Publisher.validator(unlimited:timeout:)(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v14 - v6;
  if (a1)
  {
    v8 = sub_1D91777FC();
  }

  else
  {
    v8 = 0;
  }

  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for XCTestCombineValidator();
  sub_1D8D088B4(a2, v7, &qword_1ECAB6CC0, &unk_1D9195030);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  XCTestCombineValidator.init(initialDemand:timeout:)(v8, v7);
  v14[1] = v12;
  swift_getWitnessTable();
  sub_1D9177D5C();
  return v12;
}

uint64_t XCTestCombineValidator.__allocating_init(initialDemand:timeout:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  XCTestCombineValidator.init(initialDemand:timeout:)(a1, a2);
  return v7;
}

uint64_t Publisher.validator(secondsUntilTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[2] = a3;
  v20[1] = a2;
  v4 = sub_1D9177DEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1D9177EDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v20 - v16;
  sub_1D9177ECC();
  *v8 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E7F48], v4);
  MEMORY[0x1DA7294F0](v13, v8);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  (*(v10 + 56))(v17, 0, 1, v9);
  v18 = Publisher.validator(unlimited:timeout:)(1, v17);
  sub_1D8D08A50(v17, &qword_1ECAB6CC0, &unk_1D9195030);
  return v18;
}

uint64_t XCTestCombineValidator.currentValues.getter()
{
  os_unfair_lock_lock((*(v0 + *(*v0 + 184)) + 16));
  swift_beginAccess();
  v1 = v0[2];
  v2 = *(v0 + *(*v0 + 184));

  os_unfair_lock_unlock(v2 + 4);
  return v1;
}

void sub_1D8F262F0(uint64_t a1)
{
  os_unfair_lock_lock((*(v1 + *(*v1 + 184)) + 16));
  swift_beginAccess();
  v3 = v1[2];
  v1[2] = a1;

  os_unfair_lock_unlock((*(v1 + *(*v1 + 184)) + 16));
}

char *XCTestCombineValidator.init(initialDemand:timeout:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 80);
  *(v3 + 2) = sub_1D9177FFC();
  *&v3[qword_1ECAB6CC8] = MEMORY[0x1E69E7CC0];
  v8 = *(*v3 + 128);
  v9 = *(v6 + 88);
  v10 = *(v6 + 96);
  v11 = sub_1D91777CC();
  (*(*(v11 - 8) + 56))(&v3[v8], 1, 1, v11);
  v12 = &v3[*(*v3 + 136)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[*(*v3 + 144)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = *(*v3 + 152);
  *&v3[v14] = 0;
  swift_beginAccess();
  *&v3[v14] = a1;
  sub_1D8D088B4(a2, &v3[qword_1ECAFBB58], &qword_1ECAB6CC0, &unk_1D9195030);
  type metadata accessor for RunLoopSemaphore();
  swift_allocObject();
  *&v3[*(*v3 + 160)] = sub_1D8F21D2C(0);
  swift_allocObject();
  *&v3[*(*v3 + 168)] = sub_1D8F21D2C(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  sub_1D8D08A50(a2, &qword_1ECAB6CC0, &unk_1D9195030);
  *&v3[*(*v3 + 184)] = v15;
  *&v3[*(*v3 + 176)] = 0;
  return v3;
}

char *XCTestCombineValidator.deinit()
{
  v1 = *v0;
  XCTestCombineValidator.cancel()();
  v2 = *(v0 + 2);

  sub_1D8D08A50(&v0[qword_1ECAFBB58], &qword_1ECAB6CC0, &unk_1D9195030);
  v3 = *&v0[qword_1ECAB6CC8];

  v4 = *(*v0 + 128);
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  sub_1D91777CC();
  v7 = sub_1D91791BC();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  v8 = *&v0[*(*v0 + 136) + 8];

  sub_1D8D08A50(&v0[*(*v0 + 144)], qword_1ECAB6CD0, &unk_1D9195040);
  v9 = *&v0[*(*v0 + 160)];

  v10 = *&v0[*(*v0 + 168)];

  v11 = *&v0[*(*v0 + 184)];

  return v0;
}

Swift::Void __swiftcall XCTestCombineValidator.cancel()()
{
  v1 = v0 + *(*v0 + 144);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D8CFD9D8(v1, &v4);
    v2 = v6;
    __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
    v3 = *(v2 + 8);
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v4);
  }

  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  swift_beginAccess();
  sub_1D8F26884(&v4, v1);
  swift_endAccess();
}

uint64_t sub_1D8F26884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6CD0, &unk_1D9195040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t XCTestCombineValidator.__deallocating_deinit()
{
  XCTestCombineValidator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

BOOL XCTestCombineValidator.isEmpty.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[11];
  v4 = v2[12];
  v5 = sub_1D91777CC();
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - v9;
  v11 = *&v1[v2[23]];
  os_unfair_lock_lock(v11 + 4);
  swift_beginAccess();
  v16[4] = *(v1 + 2);
  v12 = v2[10];
  sub_1D91786FC();
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v13 = *(*v1 + 128);
    swift_beginAccess();
    (*(v7 + 16))(v10, &v1[v13], v6);
    v14 = (*(*(v5 - 8) + 48))(v10, 1, v5) == 1;
    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(v11 + 4);
  return v14;
}

uint64_t XCTestCombineValidator.isFailed.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v21 = *(*v0 + 88);
  v3 = sub_1D91777CC();
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v17 + 4);
  v18 = *(*v0 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v18, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    os_unfair_lock_unlock(v17 + 4);
    return 0;
  }

  v19 = *(v9 + 32);
  v19(v16, v8, v3);
  os_unfair_lock_unlock(v17 + 4);
  v19(v13, v16, v3);
  if ((*(*(v21 - 8) + 48))(v13, 1) == 1)
  {
    return 0;
  }

  (*(v9 + 8))(v13, v3);
  return 1;
}

uint64_t XCTestCombineValidator.isFinished.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v22 = *(*v0 + 88);
  v3 = sub_1D91777CC();
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = *(v3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v17 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v17 + 4);
  v18 = *(*v0 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v8, v0 + v18, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    os_unfair_lock_unlock(v17 + 4);
    return 0;
  }

  v19 = *(v9 + 32);
  v19(v16, v8, v3);
  os_unfair_lock_unlock(v17 + 4);
  v19(v13, v16, v3);
  v20 = 1;
  if ((*(*(v22 - 8) + 48))(v13, 1) != 1)
  {
    (*(v9 + 8))(v13, v3);
    return 0;
  }

  return v20;
}

BOOL XCTestCombineValidator.isSubscribed.getter()
{
  v1 = *(v0 + *(*v0 + 184));
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v0 + v2, v5, qword_1ECAB6CD0, &unk_1D9195040);
  v3 = v5[3] != 0;
  sub_1D8D08A50(v5, qword_1ECAB6CD0, &unk_1D9195040);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t XCTestCombineValidator.awaitFinish()(uint64_t a1)
{
  v2 = v1;
  v59 = *v1;
  v3 = *(v59 + 88);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v49 - v5;
  v58 = *(v6 + 96);
  v7 = sub_1D91777CC();
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - v11;
  v57 = v7;
  v56 = *(v7 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v49 - v17;
  v18 = &qword_1ECAB6CC0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v49 - v21;
  v23 = sub_1D9177EDC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(&v2[qword_1ECAFBB58], v22, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D8D08A50(v22, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
  }

  else
  {
    (*(v24 + 32))(v27, v22, v23);
    v28 = *&v2[*(*v2 + 160)];

    sub_1D8F21FA4();
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      v38 = *(v59 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_6:
      (*(v24 + 8))(v27, v23);
      return v35;
    }

    v31 = &v2[*(*v2 + 136)];
    v32 = v31[1];
    if (v32)
    {
      v33 = *v31;
      v34 = *(v59 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      *v36 = v33;
      v36[1] = v32;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v37 = *(v24 + 8);

      v37(v27, v23);
      return v35;
    }

    v40 = *(*v2 + 128);
    swift_beginAccess();
    v18 = v53;
    (*(v54 + 16))(v12, &v2[v40], v53);
    v42 = v56;
    v41 = v57;
    if ((*(v56 + 48))(v12, 1, v57) != 1)
    {
      v43 = v55;
      (*(v42 + 32))(v55, v12, v41);
      v44 = v51;
      (*(v42 + 16))(v51, v43, v41);
      v45 = v52;
      if ((*(v52 + 48))(v44, 1, v3) == 1)
      {
        v35 = XCTestCombineValidator.currentValues.getter();
        (*(v56 + 8))(v55, v57);
        (*(v24 + 8))(v27, v23);
        return v35;
      }

      (*(v45 + 32))(v50, v44, v3);
      v46 = *(v59 + 80);
      v35 = type metadata accessor for XCTestCombineValidator.Errors();
      swift_getWitnessTable();
      swift_allocError();
      v47 = v50;
      (*(v45 + 16))(v48, v50, v3);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v45 + 8))(v47, v3);
      (*(v56 + 8))(v55, v57);
      goto LABEL_6;
    }
  }

  result = (*(v54 + 8))(v12, v18);
  __break(1u);
  return result;
}