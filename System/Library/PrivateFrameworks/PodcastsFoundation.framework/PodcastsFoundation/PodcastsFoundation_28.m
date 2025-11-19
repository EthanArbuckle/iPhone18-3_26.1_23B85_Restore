void sub_1D8FBEC8C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1D8FBED0C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  sub_1D8E31380(0, v3 & ~(v3 >> 63), 0);
  v4 = v12;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA72AA90](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_1D917935C();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D8E31380((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      *(v12 + 8 * v9 + 32) = v11;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_1D917935C();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_1D8FBEF20(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1D91795CC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for MTCategory();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_1D917959C();
      v8 = *(v10 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
  }

  return v10;
}

uint64_t sub_1D8FBF09C(unint64_t a1, uint64_t *a2)
{
  v13 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_1D91795CC();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA72AA90](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = *a2;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_1D917959C();
      v11 = *(v13 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
  }

  return v13;
}

uint64_t sub_1D8FBF210(unint64_t a1, uint64_t *a2)
{
  v12 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D91795CC();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
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
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        v9 = *a2;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1D917959C();
        v10 = *(v12 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return v12;
}

uint64_t sub_1D8FBF3CC(unint64_t a1, void (*a2)(void))
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1D917935C();
    sub_1D91795CC();
    v5 = sub_1D917935C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1D91795CC();
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
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
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v7 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1D917959C();
        v9 = *(v11 + 16);
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        ++v6;
      }

      while (v8 != v5);
    }
  }

  return v11;
}

Swift::OpaquePointer_optional __swiftcall NSManagedObjectContext.unsafeCategories(for:)(Swift::OpaquePointer a1)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = _s18PodcastsFoundation10MTCategoryC22predicateForCategories4withSo11NSPredicateCSayAA6AdamIDVG_tFZ_0(a1._rawValue);
  v5 = [v1 objectsInEntity:v3 predicate:v4 sortDescriptors:0 returnsObjectsAsFaults:1];

  if (v5)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v7 = sub_1D91785FC();

    v8 = sub_1D8FBEF20(v7);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  result.value._rawValue = v9;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSManagedObjectContext.unsafeCategories(withRelationshipToPodcastAdamID:)(Swift::Int64 withRelationshipToPodcastAdamID)
{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D9189060;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D8D34978();
  *(v5 + 64) = v7;
  *(v5 + 32) = 0x7374736163646F70;
  *(v5 + 40) = 0xE800000000000000;
  v8 = sub_1D917820C();
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  v9 = MEMORY[0x1E69E7360];
  *(v5 + 72) = v8;
  *(v5 + 80) = v10;
  v11 = MEMORY[0x1E69E73D8];
  *(v5 + 136) = v9;
  *(v5 + 144) = v11;
  *(v5 + 112) = withRelationshipToPodcastAdamID;
  v12 = sub_1D9178C8C();
  v13 = [v2 objectsInEntity:v4 predicate:v12 sortDescriptors:0 returnsObjectsAsFaults:1];

  if (v13)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v15 = sub_1D91785FC();

    v16 = sub_1D8FBEF20(v15);

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result.value._rawValue = v17;
  result.is_nil = v14;
  return result;
}

id sub_1D8FBF7D0(void *a1, uint64_t a2, Swift::Int64 a3)
{
  v4 = a1;
  v5 = NSManagedObjectContext.unsafeCategories(withRelationshipToPodcastAdamID:)(a3);

  if (v5)
  {
    type metadata accessor for MTCategory();
    v6 = sub_1D91785DC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

char *NSManagedObjectContext.unsafeFromYourShowsEpisodeIdentifiers(forCategoryAdamID:)(uint64_t a1)
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSManagedObjectContext.unsafeCategory(forAdamID:)(a1);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v8;
    v11 = [v8 podcasts];
    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    sub_1D8F74C20();
    v12 = sub_1D9178A9C();

    v13 = sub_1D8FBE858(v12);

    v14 = *(v13 + 16);
    if (v14)
    {
      v53 = v1;
      v54 = v10;
      v59 = v9;
      sub_1D8E3151C(0, v14, 0);
      v15 = v59;
      v17 = *(v4 + 16);
      v16 = v4 + 16;
      v18 = *(v16 + 64);
      v52[1] = v13;
      v19 = v13 + ((v18 + 32) & ~v18);
      v55 = *(v16 + 56);
      v56 = v17;
      v20 = (v16 - 8);
      do
      {
        v56(v7, v19, v3);
        v21 = sub_1D9176ACC();
        v58 = MEMORY[0x1E69E6158];
        *&v57 = v21;
        *(&v57 + 1) = v22;
        (*v20)(v7, v3);
        v59 = v15;
        v24 = *(v15 + 2);
        v23 = *(v15 + 3);
        if (v24 >= v23 >> 1)
        {
          sub_1D8E3151C((v23 > 1), v24 + 1, 1);
          v15 = v59;
        }

        *(v15 + 2) = v24 + 1;
        sub_1D8D65618(&v57, &v15[32 * v24 + 32]);
        v19 += v55;
        --v14;
      }

      while (v14);

      v1 = v53;
      v10 = v54;
    }

    else
    {
    }

    v25 = objc_opt_self();
    v26 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v27 = sub_1D91785DC();

    v28 = [v26 initWithArray_];

    v29 = [v25 predicateForCategoryPageFromYourShows:v28 ctx:v1];
    v30 = @"MTEpisode";
    v31 = v29;
    v32 = [v25 sortDescriptorsForPubDateAscending_];
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v33 = sub_1D91785FC();

    sub_1D8F61018(v33);

    v34 = sub_1D91785DC();

    v35 = [v1 objectsInEntity:v30 predicate:v31 sortDescriptors:v34 returnsObjectsAsFaults:1 limit:15];

    if (v35)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v36 = sub_1D91785FC();

      v37 = sub_1D8FBF09C(v36, off_1E85675C8);

      if (v37)
      {
        if (v37 >> 62)
        {
LABEL_33:
          v38 = sub_1D917935C();
          v56 = v31;
          if (v38)
          {
LABEL_13:
            v39 = 0;
            v31 = (v37 & 0xC000000000000001);
            v9 = MEMORY[0x1E69E7CC0];
            do
            {
              v40 = v39;
              while (1)
              {
                if (v31)
                {
                  v41 = MEMORY[0x1DA72AA90](v40, v37);
                  v39 = v40 + 1;
                  if (__OFADD__(v40, 1))
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v40 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_32;
                  }

                  v41 = *(v37 + 8 * v40 + 32);
                  v39 = v40 + 1;
                  if (__OFADD__(v40, 1))
                  {
LABEL_31:
                    __break(1u);
LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }
                }

                v42 = v41;
                v43 = [v42 uuid];
                if (v43)
                {
                  break;
                }

                ++v40;
                if (v39 == v38)
                {
                  goto LABEL_35;
                }
              }

              v54 = v10;
              v44 = v43;
              v45 = sub_1D917820C();
              v55 = v46;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v9 = sub_1D8D4241C(0, *(v9 + 2) + 1, 1, v9);
              }

              v48 = *(v9 + 2);
              v47 = *(v9 + 3);
              if (v48 >= v47 >> 1)
              {
                v9 = sub_1D8D4241C((v47 > 1), v48 + 1, 1, v9);
              }

              *(v9 + 2) = v48 + 1;
              v49 = &v9[16 * v48];
              v10 = v54;
              v50 = v55;
              *(v49 + 4) = v45;
              *(v49 + 5) = v50;
            }

            while (v39 != v38);
            goto LABEL_35;
          }
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v56 = v31;
          if (v38)
          {
            goto LABEL_13;
          }
        }

        v9 = MEMORY[0x1E69E7CC0];
LABEL_35:

        return v9;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1D8FBFDC8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D917935C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t (*sub_1D8FBFDEC(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8FC0004;
  }

  __break(1u);
  return result;
}

void (*sub_1D8FBFE6C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1D8FBFEEC;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8FBFEF4(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_1D8FBFF74;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1D8FBFF7C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1DA72AA90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_1D8FBFFFC;
  }

  __break(1u);
  return result;
}

uint64_t NSManagedObjectContext.channels<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC03C8, v9, a4);

  return v11;
}

uint64_t sub_1D8FC0118(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(MEMORY[0x1E69E7CC0]);
  }

  v7 = Strong;
  v8 = *(a4 + 16);
  if (v8)
  {
    v29 = Strong;
    v30 = MEMORY[0x1E69E7CC0];
    v9 = @"MTChannel";
    sub_1D8D41BE0(0, v8, 0);
    v10 = v30;
    v11 = (a4 + 32);
    sub_1D8E40D20();
    do
    {
      v12 = *v11++;
      v13 = sub_1D917927C();
      v15 = v14;
      v17 = *(v30 + 16);
      v16 = *(v30 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D8D41BE0((v16 > 1), v17 + 1, 1);
      }

      *(v30 + 16) = v17 + 1;
      v18 = v30 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      --v8;
    }

    while (v8);
    v7 = v29;
  }

  else
  {
    v20 = @"MTChannel";
    v10 = MEMORY[0x1E69E7CC0];
  }

  v21 = objc_opt_self();
  sub_1D8FC0F28(v10);

  v22 = sub_1D9178A8C();

  v23 = [v21 predicateForChannelStoreIds_];

  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D91785DC();
  v26 = [v7 objectsInEntity:@"MTChannel" predicate:v23 sortDescriptors:v25 returnsObjectsAsFaults:1];

  if (v26)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v27 = sub_1D91785FC();

    v28 = sub_1D8FBF090(v27);

    if (v28)
    {
      v24 = v28;
    }
  }

  a2(v24);
}

void sub_1D8FC03D8(void *a1)
{
  v2 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v3 = sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v4 = 0;
  v30 = MEMORY[0x1DA72A0A0](0, v2, v3);
  v5 = *a1;
  v23 = a1[1];
  v24 = a1[2];
  v6 = a1[4];
  v21 = a1[5];
  v22 = a1[3];
  v7 = -1 << *(*a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = a1[7];
  v19 = v10;
  v20 = a1[8];
  v18 = -1 << *(*a1 + 32);
  v11 = (63 - v7) >> 6;
  while (v9)
  {
LABEL_11:
    v14 = *(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v9))));
    v15 = *(v14 + 8);
    v9 &= v9 - 1;
    v26 = *v14;
    v27 = v15;

    v23(&v25, &v26);

    v22(&v26, &v25);
    v16 = v26;
    v17 = v27;
    v28 = v26;
    v29 = v27;
    if (v21(&v28))
    {
      v26 = v16;
      LOBYTE(v27) = v17;
      v19(&v28, &v26);
      sub_1D8EFAB68(&v26, v28);
    }
  }

  v12 = v4;
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      sub_1D8D1B144();

      return;
    }

    v9 = *(v5 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v4 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D8FC0604(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D4D2D8();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for AdamID, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1D8D1A770(&v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
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
  return result;
}

uint64_t NSManagedObjectContext.episodes(for:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v7 = v6;
  if (v5 != 2)
  {
    if (v5 == 1)
    {
      v8 = *(v1 + 16);
      if (v8)
      {
        v20 = v6;
        v22 = MEMORY[0x1E69E7CC0];
        result = sub_1D91795CC();
        v10 = 0;
        while (v10 < *(v1 + 16))
        {
          v11 = v10 + 1;
          v21 = *(v1 + 32 + 8 * v10);
          [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithSerializedBackingStore_];
          swift_unknownObjectRelease();
          sub_1D917959C();
          v12 = *(v22 + 16);
          sub_1D91795DC();
          sub_1D91795EC();
          result = sub_1D91795AC();
          v10 = v11;
          if (v8 == v11)
          {
            v13 = objc_opt_self();
            sub_1D8FC1190(v22, qword_1EDCD0810, 0x1E696AD98, &qword_1EDCD0808, sub_1D8EFAB68);

            sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
            sub_1D8D54E74(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
            v14 = sub_1D9178A8C();

            v15 = [v13 predicateForEpisodeStoreTrackIds_];

            v7 = v20;
            [v20 setPredicate_];

            goto LABEL_10;
          }
        }

        __break(1u);
        return result;
      }
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*(v1 + 16))
  {
    goto LABEL_11;
  }

  v16 = objc_opt_self();
  sub_1D8D092C0(v1, v2, v3, v4, 2u);
  sub_1D8FC0F28(v1);
  sub_1D8CFEACC(v1, v2, v3, v4, 2u);
  v17 = sub_1D9178A8C();

  v18 = [v16 predicateForEpisodeUuids_];

  [v7 setPredicate_];
LABEL_10:
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v19 = sub_1D917908C();

  return v19;
}

uint64_t NSManagedObjectContext.episodes<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC0FC0, v9, a4);

  return v11;
}

uint64_t sub_1D8FC0B60(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(MEMORY[0x1E69E7CC0]);
  }

  v4 = Strong;
  v5 = objc_opt_self();
  v6 = @"MTEpisode";

  sub_1D8FC0F28(v7);

  v8 = sub_1D9178A8C();

  v9 = [v5 predicateForEpisodeUuids_];

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1D91785DC();
  v12 = [v4 objectsInEntity:v6 predicate:v9 sortDescriptors:v11 returnsObjectsAsFaults:1];

  if (v12)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v13 = sub_1D91785FC();

    v14 = sub_1D8FBF084(v13);

    if (v14)
    {
      v10 = v14;
    }
  }

  a2(v10);
}

uint64_t NSManagedObjectContext.episode(for:)(void *a1, uint64_t a2, id a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v8 = NSManagedObjectContext.episodes(for:sortDescriptors:limit:)(inited, MEMORY[0x1E69E7CC0], 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v3)
  {
    return a3;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA72AA90](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    a3 = v10;

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FC0E84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8D4D2D8();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for AdamID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D8D1A770(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D8FC0F28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D8D19AFC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D8FC0FC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return sub_1D8FC0B60(*(v0 + 24), *(v0 + 32));
}

uint64_t sub_1D8FC0FD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC149C();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for ContentID, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1D8D5055C(v7, v6, v8);
      sub_1D8EFAB8C(v9, v7, v6, v8);
      sub_1D8DA8564(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1D8FC1078(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E7360], MEMORY[0x1E69E7370]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D8D82034(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D8FC10EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC1448();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for PriceType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D8EFADF0(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D8FC1190(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v12 = sub_1D8CF2154(0, a2, a3);
    v13 = sub_1D8D54E74(a4, a2, a3);
    result = MEMORY[0x1DA72A0A0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1DA72AA90](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D917935C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8FC12E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA72A0A0](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1D8D9A2A4(v4, v5);
      sub_1D8EFB1EC(v6, v5);
      sub_1D8D9A308(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D8FC1374(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D8FC13F4();
  result = MEMORY[0x1DA72A0A0](v2, &type metadata for LibraryInterestStateDataSource.State, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 41);
    do
    {
      v6 = *(v5 - 9);
      v7 = *(v5 - 1);
      v8 = *v5;
      v5 += 16;
      sub_1D8EFBAF4(v9, v6, v7 | (v8 << 8));
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1D8FC13F4()
{
  result = qword_1ECAB1450;
  if (!qword_1ECAB1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1450);
  }

  return result;
}

unint64_t sub_1D8FC1448()
{
  result = qword_1ECAB86C0;
  if (!qword_1ECAB86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86C0);
  }

  return result;
}

unint64_t sub_1D8FC149C()
{
  result = qword_1ECAB10E8;
  if (!qword_1ECAB10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10E8);
  }

  return result;
}

void NSManagedObjectContext.unsafeInterest(forAdamID:)(uint64_t a1)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = 0x44496D616461;
  *(v4 + 40) = 0xE600000000000000;
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8E96578();
  *(v4 + 72) = v5;
  v6 = sub_1D9178C8C();
  v7 = [v1 objectsInEntity:v3 predicate:v6 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v7)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v8 = sub_1D91785FC();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1DA72AA90](0, v8);
LABEL_7:
  v10 = v9;

  type metadata accessor for MTInterest();
  if (!swift_dynamicCastClass())
  {
  }
}

{
  v2 = v1;
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D8D34978();
  *(v5 + 32) = 0x44496D616461;
  *(v5 + 40) = 0xE600000000000000;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(v5 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v5 + 104) = sub_1D8E96578();
  *(v5 + 72) = v6;
  v7 = sub_1D9178C8C();
  v8 = [v2 objectsInEntity:v4 predicate:v7 sortDescriptors:0 returnsObjectsAsFaults:1 limit:1];

  if (!v8)
  {
    goto LABEL_14;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v9 = sub_1D91785FC();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!sub_1D917935C())
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v10 = MEMORY[0x1DA72AA90](0, v9);
LABEL_7:
  v11 = v10;

  type metadata accessor for MTInterest();
  if (!swift_dynamicCastClass())
  {
  }
}

id sub_1D8FC1950(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  NSManagedObjectContext.unsafeInterest(forAdamID:)(a3);
  v6 = v5;

  return v6;
}

uint64_t NSManagedObjectContext.shows<A>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v8;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);

  v10 = sub_1D9178E1C();
  v11 = NSManagedObjectContext.performAndPublish<A>(queue:_:)(v10, sub_1D8FC1C84, v9, a4);

  return v11;
}

uint64_t sub_1D8FC1AAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2(MEMORY[0x1E69E7CC0]);
  }

  v4 = Strong;
  v5 = objc_opt_self();
  v6 = @"MTPodcast";

  sub_1D8FC0F28(v7);

  v8 = sub_1D9178A8C();

  v9 = [v5 predicateForPodcastUuids_];

  v10 = MEMORY[0x1E69E7CC0];
  v11 = sub_1D91785DC();
  v12 = [v4 objectsInEntity:v6 predicate:v9 sortDescriptors:v11 returnsObjectsAsFaults:1];

  if (v12)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v13 = sub_1D91785FC();

    v14 = sub_1D8FBEF14(v13);

    if (v14)
    {
      v10 = v14;
    }
  }

  a2(v10);
}

uint64_t sub_1D8FC1C84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  return sub_1D8FC1AAC(*(v0 + 24), *(v0 + 32));
}

uint64_t NSManagedObjectContext.unsafeShows(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.showCoreDataPredicate()(a1);
  [v8 setPredicate_];

  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (sub_1D917935C())
  {
LABEL_3:
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v10 = sub_1D91785DC();
    [v8 setSortDescriptors_];
  }

LABEL_4:
  if ((a4 & 1) == 0)
  {
    [v8 setFetchLimit_];
  }

  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v11 = sub_1D917908C();

  return v11;
}

uint64_t NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(void *a1, uint64_t a2, char a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB46E8, &unk_1D9192140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  sub_1D8D5055C(a1, a2, a3);
  v10 = NSManagedObjectContext.unsafeShows(for:sortDescriptors:limit:)(inited, a4, 1, 0);
  swift_setDeallocating();
  sub_1D8FBDC88(inited + 32);
  if (v4)
  {
    return a4;
  }

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_10:

    sub_1D8FC1F60();
    swift_allocError();
    swift_willThrow();
    return a4;
  }

  result = sub_1D917935C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1DA72AA90](0, v10);
    goto LABEL_7;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v10 + 32);
LABEL_7:
    a4 = v12;

    return a4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D8FC1F60()
{
  result = qword_1ECAB86C8;
  if (!qword_1ECAB86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86C8);
  }

  return result;
}

void *NSManagedObjectContext.unsafeShowUUID(for:)(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {

    return a1;
  }

  else
  {
    result = NSManagedObjectContext.unsafeShow(for:sortDescriptors:)(a1, a2, a3, MEMORY[0x1E69E7CC0]);
    if (!v3)
    {
      v6 = result;
      v7 = [result uuid];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1D917820C();

        return v9;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t ShowFetchError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FC20E8()
{
  result = qword_1ECAB86D0;
  if (!qword_1ECAB86D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86D0);
  }

  return result;
}

uint64_t NSManagedObjectContext.performAndPublish<A>(queue:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9177A2C();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v4;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a1;
  v10 = v4;

  v11 = a1;
  return sub_1D9177A3C();
}

uint64_t NSManagedObjectContext.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v23 = a4;
  v24 = sub_1D91791BC();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - v15;
  v17 = *(a3 - 8);
  (*(v17 + 56))(&v23 - v15, 1, 1, a3, v14);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = a1;
  v18[5] = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1D8FC2BEC;
  *(v19 + 24) = v18;
  aBlock[4] = sub_1D8D244E0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_55;
  v20 = _Block_copy(aBlock);

  [v5 performBlockAndWait_];
  _Block_release(v20);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    v22 = v24;
    (*(v9 + 16))(v12, v16, v24);
    result = (*(v17 + 48))(v12, 1, a3);
    if (result != 1)
    {
      (*(v17 + 32))(v23, v12, a3);
      (*(v9 + 8))(v16, v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8FC24E4(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - v11;
  a2(v10);
  (*(*(a4 - 8) + 56))(v12, 0, 1, a4);
  return (*(v8 + 40))(a1, v12, v7);
}

void sub_1D8FC2604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a1;
  v14[7] = a2;
  v17[4] = sub_1D8FC32AC;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D8CF5F60;
  v17[3] = &block_descriptor_36_0;
  v15 = _Block_copy(v17);

  v16 = a6;

  [a3 performBlock_];
  _Block_release(v15);
}

uint64_t sub_1D8FC272C(void (*a1)(double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a5;
  v36 = a3;
  v8 = sub_1D9177E0C();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9177E9C();
  v33 = *(v12 - 8);
  v34 = v12;
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v30 - v22;
  a1(v21);
  (*(v16 + 16))(v19, v23, a6);
  v24 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v25 = swift_allocObject();
  v26 = v31;
  v27 = v32;
  *(v25 + 2) = a6;
  *(v25 + 3) = v26;
  *(v25 + 4) = v27;
  (*(v16 + 32))(&v25[v24], v19, a6);
  aBlock[4] = sub_1D8FC32DC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_42;
  v28 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v11, v28);
  _Block_release(v28);
  (*(v35 + 8))(v11, v8);
  (*(v33 + 8))(v15, v34);
  (*(v16 + 8))(v23, a6);
}

uint64_t sub_1D8FC2AB0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9179EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - v11;
  (*(*(a4 - 8) + 16))(&v14 - v11, a3, a4, v10);
  swift_storeEnumTagMultiPayload();
  a1(v12);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1D8FC2BF8(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v12 = sub_1D9179EAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18[-v15];
  v19 = a6;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D8D5D7BC(sub_1D8FC326C, v11, &v18[-v15]);
  a1(v16);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1D8FC2D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8;
  v42 = a7;
  v39 = a5;
  v40 = a6;
  v38[1] = a4;
  v43 = a10;
  v44 = a11;
  v48 = a9;
  v14 = sub_1D9177E0C();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v47 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v45 = *(v17 - 8);
  v46 = v17;
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a12;
  v21 = *(a12 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v24 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v38 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8558, &qword_1D91A1BF0);

  v28 = sub_1D8DAC0A4();
  [v28 setPredicate_];
  sub_1D8D28BC8();
  v29 = sub_1D91785DC();
  [v28 setSortDescriptors_];

  [v28 setFetchLimit_];
  sub_1D917908C();
  v42();

  v30 = v51;
  (*(v21 + 16))(v24, v27, v51);
  v31 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v32 = swift_allocObject();
  *(v32 + 2) = v30;
  *(v32 + 3) = a13;
  v33 = v44;
  *(v32 + 4) = v43;
  *(v32 + 5) = v33;
  (*(v21 + 32))(&v32[v31], v24, v30);
  aBlock[4] = sub_1D8FC3214;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_7;
  v34 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  v35 = v47;
  v36 = v50;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v20, v35, v34);
  _Block_release(v34);

  (*(v49 + 8))(v35, v36);
  (*(v45 + 8))(v20, v46);
  (*(v21 + 8))(v27, v30);
}

uint64_t sub_1D8FC326C(void *a1)
{
  v4 = *(v1 + 32);
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_1D8FC3338()
{
  result = qword_1ECAB86D8;
  if (!qword_1ECAB86D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB86D8);
  }

  return result;
}

id PFCoreDataUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PFCoreDataUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PFCoreDataUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PFCoreDataUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PFCoreDataUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8FC35C0(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(i) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_1D8D33C70(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_1D90078D8(v15, i & 1);
    v17 = *a3;
    result = sub_1D8D33C70(v8, v7);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if (i)
  {
LABEL_7:
    v19 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v19[(result >> 6) + 8] |= 1 << result;
    v25 = (v19[6] + 16 * result);
    *v25 = v8;
    v25[1] = v7;
    *(v19[7] + 8 * result) = v9;
    v26 = v19[2];
    v14 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v27;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v24 = result;
  sub_1D8F842DC();
  result = v24;
  v19 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = *(v19[7] + 8 * result);
  v21 = result;

  v22 = v19[7];
  v23 = *(v22 + 8 * v21);
  *(v22 + 8 * v21) = v20;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    for (i = (v6 + 72); ; i += 3)
    {
      v7 = *(i - 2);
      v9 = *(i - 1);
      v6 = *i;
      v32 = *a3;

      result = sub_1D8D33C70(v7, v9);
      v34 = v32[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        break;
      }

      v8 = v33;
      if (v32[3] < v36)
      {
        sub_1D90078D8(v36, 1);
        v37 = *a3;
        result = sub_1D8D33C70(v7, v9);
        if ((v8 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      v3 = *a3;
      if (v8)
      {
        v28 = *(v3[7] + 8 * result);
        v29 = result;

        v30 = v3[7];
        v31 = *(v30 + 8 * v29);
        *(v30 + 8 * v29) = v28;
      }

      else
      {
        v3[(result >> 6) + 8] |= 1 << result;
        v39 = (v3[6] + 16 * result);
        *v39 = v7;
        v39[1] = v9;
        *(v3[7] + 8 * result) = v6;
        v40 = v3[2];
        v14 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v3[2] = v41;
      }

      if (!--v16)
      {
        return result;
      }
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t _s18PodcastsFoundation15PFCoreDataUtilsC18findDuplicateItems6entity19itemsToLookAtFilter017keysThatMustMatchK22BeConsideredADuplicate0op9ShouldNotS10Duplicated011keyValuesOfxhK6Return15sortDescriptorsSDySSSayyXlGGSS_So11NSPredicateCSaySSGA2OSaySo16NSSortDescriptorCGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v122 = *MEMORY[0x1E69E9840];
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v10 initWithEntityName_];

  [v12 setPredicate_];
  [v12 setResultType_];

  v111 = a5;
  sub_1D8E2FE30(v13);
  v14 = a4;
  v15 = *(a4 + 16);
  v116 = a6;
  v118 = a4;
  if (v15)
  {
    v16 = v12;
    v120 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);

      v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v20 initWithKey:v21 ascending:1];

      sub_1D917959C();
      v22 = v120[2];
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      v17 += 2;
      --v15;
    }

    while (v15);

    v12 = v16;
    a6 = v116;
    a4 = v118;
  }

  else
  {
  }

  sub_1D8E30050(v23);
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v24 = sub_1D91785DC();

  [v12 setSortDescriptors_];

  sub_1D8E2FE30(v25);

  sub_1D8E2FE30(v26);
  sub_1D8F60B24(a4);

  v27 = sub_1D91785DC();

  [v12 setPropertiesToFetch_];

  v120 = 0;
  v28 = [v12 execute_];
  v29 = v120;
  if (!v28)
  {
    v101 = v120;
    v102 = sub_1D9176A6C();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);

    __break(1u);
LABEL_84:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v30 = v28;
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v31 = sub_1D91785FC();
  v32 = v29;

  v33 = sub_1D8F6102C(v31);

  v34 = MEMORY[0x1E69E7CC0];
  if (!*(v33 + 16))
  {

    v110 = sub_1D8E27068(MEMORY[0x1E69E7CC0]);
LABEL_21:

    goto LABEL_78;
  }

  v35 = *(a6 + 16);
  v106 = v35;
  v107 = v33;
  if (v35)
  {
    v36 = v12;
    v120 = MEMORY[0x1E69E7CC0];
    sub_1D8E31660(0, v35, 0);
    v37 = v120;
    v38 = (a6 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v120 = v37;
      v42 = v37[2];
      v41 = v37[3];

      if (v42 >= v41 >> 1)
      {
        sub_1D8E31660((v41 > 1), v42 + 1, 1);
        v37 = v120;
      }

      v37[2] = v42 + 1;
      v43 = &v37[3 * v42];
      v43[4] = v40;
      v43[5] = v39;
      v34 = MEMORY[0x1E69E7CC0];
      v43[6] = MEMORY[0x1E69E7CC0];
      v38 += 2;
      --v35;
    }

    while (v35);
    v12 = v36;
    v33 = v107;
    a4 = v118;
    goto LABEL_17;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42D8, &qword_1D91A2540);
    v44 = sub_1D91797AC();
    goto LABEL_18;
  }

  v44 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v120 = v44;
  sub_1D8FC35C0(v37, 1, &v120);

  v45 = *(v33 + 16);
  if (!v45)
  {
    goto LABEL_82;
  }

  v110 = v120;
  if (v45 == 1)
  {

    goto LABEL_21;
  }

  v105 = v12;
  v114 = v33 + 32;
  v46 = *(v33 + 32);
  v47 = *(a4 + 16);

  v48 = a4 + 40;
  v108 = (a5 + 40);
  v104 = (v116 + 40);
  v49 = 1;
  v115 = v48;
  v117 = v47;
  v113 = v45;
  while (2)
  {
    v50 = *(v114 + 8 * v49);
    if (v47)
    {
      v120 = v34;

      sub_1D91795CC();
      v51 = v115;
      do
      {
        if (*(v46 + 16))
        {
          v53 = *(v51 - 1);
          v54 = *v51;

          v55 = sub_1D8D33C70(v53, v54);
          if (v56)
          {
            v57 = *(*(v46 + 56) + 8 * v55);
            swift_unknownObjectRetain();
          }
        }

        sub_1D917959C();
        v52 = v120[2];
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v51 += 2;
        --v47;
      }

      while (v47);
      v47 = v117;
    }

    else
    {
      v58 = *(v114 + 8 * v49);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86E8, &qword_1D91A2548);
    v119 = sub_1D91785DC();

    if (v47)
    {
      v120 = v34;
      sub_1D91795CC();
      v59 = v47;
      v60 = v115;
      do
      {
        if (*(v50 + 16))
        {
          v62 = *(v60 - 1);
          v63 = *v60;

          v64 = sub_1D8D33C70(v62, v63);
          if (v65)
          {
            v66 = *(*(v50 + 56) + 8 * v64);
            swift_unknownObjectRetain();
          }
        }

        sub_1D917959C();
        v61 = v120[2];
        sub_1D91795DC();
        sub_1D91795EC();
        sub_1D91795AC();
        v60 += 2;
        --v59;
      }

      while (v59);
      v34 = MEMORY[0x1E69E7CC0];
      v47 = v117;
    }

    v67 = sub_1D91785DC();

    if (([v119 isEqual_] & 1) == 0)
    {

      v46 = v50;
      goto LABEL_24;
    }

    v112 = v67;
    v68 = *(v111 + 16);
    if (!v68)
    {
LABEL_54:

      v46 = v50;
      v47 = v117;
      goto LABEL_24;
    }

    v69 = v108;
    while (1)
    {
      if (!*(v46 + 16))
      {
        goto LABEL_46;
      }

      v70 = *(v69 - 1);
      v71 = *v69;

      v72 = sub_1D8D33C70(v70, v71);
      if ((v73 & 1) == 0 || !*(v50 + 16))
      {

        goto LABEL_46;
      }

      v74 = *(*(v46 + 56) + 8 * v72);
      swift_unknownObjectRetain();
      v75 = sub_1D8D33C70(v70, v71);
      v77 = v76;

      if ((v77 & 1) == 0)
      {
        swift_unknownObjectRelease();
        goto LABEL_46;
      }

      v78 = *(*(v50 + 56) + 8 * v75);
      swift_unknownObjectRetain();
      v79 = [v74 isEqual_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v79)
      {
        break;
      }

LABEL_46:
      v69 += 2;
      if (!--v68)
      {
        goto LABEL_54;
      }
    }

    v80 = v106;
    v47 = v117;
    if (v106)
    {
      v81 = v104;
      do
      {
        if (*(v50 + 16))
        {
          v82 = *(v81 - 1);
          v83 = *v81;

          v84 = sub_1D8D33C70(v82, v83);
          if (v85)
          {
            v109 = *(*(v50 + 56) + 8 * v84);
            swift_unknownObjectRetain();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v120 = v110;
            v88 = sub_1D8D33C70(v82, v83);
            v89 = v110[2];
            v90 = (v87 & 1) == 0;
            v91 = v89 + v90;
            if (__OFADD__(v89, v90))
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
            }

            v92 = v87;
            if (v110[3] >= v91)
            {
              v47 = v117;
              if (isUniquelyReferenced_nonNull_native)
              {
                if ((v87 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                v98 = v88;
                sub_1D8F842DC();
                v88 = v98;
                if ((v92 & 1) == 0)
                {
                  goto LABEL_81;
                }
              }
            }

            else
            {
              sub_1D90078D8(v91, isUniquelyReferenced_nonNull_native);
              v93 = sub_1D8D33C70(v82, v83);
              if ((v92 & 1) != (v94 & 1))
              {
                goto LABEL_84;
              }

              v88 = v93;
              v47 = v117;
              if ((v92 & 1) == 0)
              {
                goto LABEL_81;
              }
            }

            v110 = v120;
            v95 = v88;
            v121 = *(v120[7] + 8 * v88);
            v96 = swift_unknownObjectRetain();
            MEMORY[0x1DA729B90](v96);
            if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v103 = *((v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D917863C();
            }

            sub_1D917869C();
            v97 = v121;
            if (v121)
            {

              *(v110[7] + 8 * v95) = v97;
            }

            else
            {

              sub_1D8D3F2D0(v110[6] + 16 * v95);
              sub_1D8DA2AF4(v95, v110);
            }

            swift_unknownObjectRelease();
            v34 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v34 = MEMORY[0x1E69E7CC0];
            v47 = v117;
          }
        }

        v81 += 2;
        --v80;
      }

      while (v80);
    }

LABEL_24:
    if (++v49 != v113)
    {
      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
LABEL_78:
  v99 = *MEMORY[0x1E69E9840];
  return v110;
}

uint64_t ContentID.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1DA72B390](1);
      return sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t ContentID.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC4464()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC450C()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1DA72B390](1);
      return sub_1D917915C();
    }

    else
    {
      v3 = v0[1];
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](v1);
  }
}

uint64_t sub_1D8FC45B4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](v1);
  }

  return sub_1D9179E1C();
}

uint64_t ContentID.stringValue.getter(void *a1, uint64_t a2, char a3)
{
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if (a3 == 1)
    {
      v12 = v8;
      v13 = [a1 URIRepresentation];
      sub_1D9176B9C();

      a1 = sub_1D9176ACC();
      (*(v6 + 8))(v11, v12);
    }

    else
    {
    }
  }

  else
  {
    v15[1] = a1;
    sub_1D8E40D20();
    return sub_1D917927C();
  }

  return a1;
}

uint64_t sub_1D8FC47C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1684632949;
  v5 = 0x80000001D91C8A10;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001D91C8A10;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64496D616461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 1684632949;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64496D616461;
  }

  if (*a2)
  {
    v10 = v5;
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
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8FC48B0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC494C()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FC49D4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC4A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FC5174();
  *a2 = result;
  return result;
}

void sub_1D8FC4A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1684632949;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D91C8A10;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64496D616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D8FC4AF4()
{
  v1 = 1684632949;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1D8FC4B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FC5174();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FC4B70(uint64_t a1)
{
  v2 = sub_1D8FC5770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC4BAC(uint64_t a1)
{
  v2 = sub_1D8FC5770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *ContentID.init(from:)(uint64_t *a1)
{
  result = sub_1D8FC51C0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t ContentID.encode(to:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v20 = a2;
  v18[1] = a3;
  v6 = sub_1D9176C2C();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB86F0, &qword_1D91A2550);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC5770();
  sub_1D9179F1C();
  if (a4)
  {
    if (a4 == 1)
    {
      v16 = [v20 URIRepresentation];
      sub_1D9176B9C();

      v23 = 2;
      sub_1D8EF24D0(&qword_1ECAB2CB0);
      sub_1D91799FC();
      (*(v19 + 8))(v9, v6);
    }

    else
    {
      v24 = 1;
      sub_1D91799BC();
    }
  }

  else
  {
    v21 = v20;
    v22 = 0;
    sub_1D8EF1720();
    sub_1D91799FC();
  }

  return (*(v11 + 8))(v14, v10);
}

void *sub_1D8FC4EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FC51C0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t ContentID.debugDescription.getter(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v12 = 0xD000000000000010;
      MEMORY[0x1DA7298F0](a1);
      v9 = 10530;
      v10 = 0xE200000000000000;
      goto LABEL_7;
    }

    sub_1D917946C();

    v12 = 0xD00000000000001ALL;
    v4 = [a1 debugDescription];
    v5 = sub_1D917820C();
    v7 = v6;

    MEMORY[0x1DA7298F0](v5, v7);
  }

  else
  {
    v12 = 0xD000000000000011;
    sub_1D917946C();

    v8 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v8);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    MEMORY[0x1DA7298F0](0xD000000000000011, 0x80000001D91D15B0);
  }

  v9 = 41;
  v10 = 0xE100000000000000;
LABEL_7:
  MEMORY[0x1DA7298F0](v9, v10);
  return v12;
}

uint64_t _s18PodcastsFoundation9ContentIDO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        sub_1D8D6F530();
        return sub_1D917914C() & 1;
      }

      return 0;
    }

    if (a6 != 2)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {

      return sub_1D9179ACC();
    }
  }

  else
  {
    return !a6 && a1 == a4;
  }
}

uint64_t sub_1D8FC5174()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void *sub_1D8FC51C0(uint64_t *a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_1D9176C2C();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8700, &qword_1D91A2830);
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v40 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D8FC5770();
  v18 = v39;
  sub_1D9179EEC();
  if (v18)
  {
LABEL_3:
    v20 = v40;
    goto LABEL_4;
  }

  v19 = v11;
  v41 = 0;
  sub_1D8EF1774();
  sub_1D917989C();
  if (v43 != 1)
  {
    v17 = v42;
    (*(v11 + 1))(v14, v10);
    goto LABEL_11;
  }

  LOBYTE(v42) = 2;
  sub_1D8EF24D0(&qword_1ECAB2C98);
  sub_1D917989C();
  v23 = v38;
  if ((*(v38 + 48))(v5, 1, v6) != 1)
  {
    (*(v23 + 32))(v9, v5, v6);
    v26 = sub_1D8D2A5E8();
    v39 = v14;
    v37 = v9;
    v27 = sub_1D9176B1C();
    v42 = 0;
    v17 = [v26 managedObjectIDForURI:v27 error:&v42];

    if (v17)
    {
      v28 = *(v38 + 8);
      v29 = v42;
      v28(v37, v6);
      v19[1](v39, v10);
      goto LABEL_11;
    }

    v17 = v42;
    sub_1D9176A6C();

    swift_willThrow();
    (*(v38 + 8))(v37, v6);
    v19[1](v39, v10);
    goto LABEL_3;
  }

  sub_1D8E677CC(v5);
  LOBYTE(v42) = 1;
  v24 = sub_1D917984C();
  if (v25)
  {
    v17 = v24;
    (*(v11 + 1))(v14, v10);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    goto LABEL_5;
  }

  v39 = v11;
  v30 = sub_1D917951C();
  swift_allocError();
  v31 = v14;
  v33 = v32;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
  *v33 = &type metadata for ContentID;
  v38 = v10;
  v35 = v40;
  v36 = v40[4];
  v17 = __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1D9179ECC();
  sub_1D91794FC();
  (*(*(v30 - 8) + 104))(v33, *MEMORY[0x1E69E6B08], v30);
  swift_willThrow();
  (*(v39 + 1))(v31, v38);
  v20 = v35;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
LABEL_5:
  v21 = *MEMORY[0x1E69E9840];
  return v17;
}

unint64_t sub_1D8FC5770()
{
  result = qword_1EDCD5EF0;
  if (!qword_1EDCD5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EF0);
  }

  return result;
}

uint64_t sub_1D8FC57C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FC580C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D8FC586C()
{
  result = qword_1ECAB86F8;
  if (!qword_1ECAB86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB86F8);
  }

  return result;
}

unint64_t sub_1D8FC58C4()
{
  result = qword_1EDCD5EE0;
  if (!qword_1EDCD5EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EE0);
  }

  return result;
}

unint64_t sub_1D8FC591C()
{
  result = qword_1EDCD5EE8;
  if (!qword_1EDCD5EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5EE8);
  }

  return result;
}

uint64_t ContentID.asAdamID.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  return result;
}

uint64_t ContentKind.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x79726F6765746163;
  v2 = 2003789939;
  v3 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v4 = 0x65646F73697065;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FC5A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = *a2;
  v5 = 0xE400000000000000;
  v6 = 2003789939;
  v7 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v8 = 0x65646F73697065;
  }

  if (*a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x79726F6765746163;
  }

  if (*a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*a2 > 2u)
  {
    if (v4 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 2003789939)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v4 == 4)
      {
        v12 = 0x6F6974617473;
      }

      else
      {
        v12 = 0x776F6E6B6E75;
      }

      if (v9 != (v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000))
      {
        goto LABEL_34;
      }
    }
  }

  else if (*a2)
  {
    v11 = 0xE700000000000000;
    if (v4 == 1)
    {
      if (v9 != 0x6C656E6E616863)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x65646F73697065)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x79726F6765746163)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
LABEL_34:
    v13 = sub_1D9179ACC();
    goto LABEL_35;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1D8FC5BF4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC5CEC()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FC5DD0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC5EC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation11ContentKindO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8FC5EF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79726F6765746163;
  v5 = 0xE400000000000000;
  v6 = 2003789939;
  v7 = 0x6E6F6974617473;
  if (v2 != 4)
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v8 = 0x65646F73697065;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t ContentKind.debugDescription.getter(unsigned __int8 a1)
{
  v1 = a1;
  strcpy(v11, "ContentKind.");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  v2 = 0xE800000000000000;
  v3 = 0x79726F6765746163;
  v4 = 0xE400000000000000;
  v5 = 2003789939;
  v6 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v7 = 0x65646F73697065;
  }

  if (a1)
  {
    v3 = v7;
    v2 = 0xE700000000000000;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (v1 <= 2)
  {
    v9 = v2;
  }

  else
  {
    v9 = v4;
  }

  MEMORY[0x1DA7298F0](v8, v9);

  return v11[0];
}

uint64_t _s18PodcastsFoundation11ContentKindO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8FC61D4()
{
  result = qword_1ECAB8708;
  if (!qword_1ECAB8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8708);
  }

  return result;
}

unint64_t sub_1D8FC622C()
{
  result = qword_1ECAB8710;
  if (!qword_1ECAB8710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8718, &qword_1D91A2930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8710);
  }

  return result;
}

unint64_t sub_1D8FC62A0()
{
  result = qword_1ECAB2AD0;
  if (!qword_1ECAB2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AD0);
  }

  return result;
}

uint64_t ContentReference.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  if (a5)
  {
    if (a5 == 1)
    {
      MEMORY[0x1DA72B390](1);
      return sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);

      return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a3);
  }
}

uint64_t ContentReference.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D9179DBC();
  ContentReference.hash(into:)(v9, a1, a2, a3, a4);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC6518()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v4 = *v0;
  sub_1D9179DBC();
  ContentReference.hash(into:)(v6, v4, v1, v2, v3);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC658C()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = v0[24];
  v4 = *v0;
  sub_1D9179DBC();
  ContentReference.hash(into:)(v6, v4, v1, v2, v3);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC660C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64496D616461;
  }

  else
  {
    v4 = 0x646E696B24;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x64496D616461;
  }

  else
  {
    v6 = 0x646E696B24;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8FC66AC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC6728()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FC6790()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FC6808@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_1D8FC6868(uint64_t *a1@<X8>)
{
  v2 = 0x646E696B24;
  if (*v1)
  {
    v2 = 0x64496D616461;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8FC68A0()
{
  if (*v0)
  {
    result = 0x64496D616461;
  }

  else
  {
    result = 0x646E696B24;
  }

  *v0;
  return result;
}

uint64_t sub_1D8FC68D4@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D8FC6938(uint64_t a1)
{
  v2 = sub_1D8FC77D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC6974(uint64_t a1)
{
  v2 = sub_1D8FC77D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentReference.encode(to:)(void *a1, int a2, void *a3, uint64_t a4, int a5)
{
  v39 = a5;
  v33 = a4;
  v35 = a3;
  LODWORD(v36) = a2;
  v6 = sub_1D917953C();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8720, &unk_1D91A29C0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC77D4();
  sub_1D9179F1C();
  v42 = v36;
  v41 = 0;
  sub_1D8FC7828();
  v16 = v37;
  sub_1D91799FC();
  if (v16)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v18 = v35;
  v37 = v6;
  if (!v39)
  {
    v38 = v35;
    v40 = 1;
    sub_1D8EF1720();
    sub_1D91799FC();
    return (*(v11 + 8))(v14, v10);
  }

  v36 = v10;
  v19 = v11;
  if (v39 == 1)
  {
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21 = v18;
    sub_1D9179EFC();
    sub_1D91794FC();
    v22 = sub_1D917954C();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
    *(v24 + 24) = &type metadata for ContentID;
    v26 = v33;
    *v24 = v18;
    *(v24 + 8) = v26;
    v27 = 1;
  }

  else
  {
    v28 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v29 = v33;

    sub_1D9179EFC();
    sub_1D91794FC();
    v22 = sub_1D917954C();
    swift_allocError();
    v24 = v30;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
    *(v24 + 24) = &type metadata for ContentID;
    *v24 = v18;
    *(v24 + 8) = v29;
    v27 = 2;
  }

  *(v24 + 16) = v27;
  v31 = v34;
  v32 = v37;
  (*(v34 + 16))(v24 + v25, v9, v37);
  (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6B30], v22);
  swift_willThrow();
  (*(v31 + 8))(v9, v32);
  return (*(v19 + 8))(v14, v36);
}

uint64_t sub_1D8FC6E0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FC75F4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

unint64_t ContentReference.debugDescription.getter(unsigned __int8 a1, void *a2, uint64_t a3, char a4)
{
  sub_1D917946C();

  v19 = 0xD000000000000017;
  v20 = 0x80000001D91D16B0;
  strcpy(v18, "ContentKind.");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  v8 = 0xE800000000000000;
  v9 = 0x79726F6765746163;
  v10 = 0xE400000000000000;
  v11 = 2003789939;
  v12 = 0x6E6F6974617473;
  if (a1 != 4)
  {
    v12 = 0x6E776F6E6B6E75;
  }

  if (a1 != 3)
  {
    v11 = v12;
    v10 = 0xE700000000000000;
  }

  v13 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v13 = 0x65646F73697065;
  }

  if (a1)
  {
    v9 = v13;
    v8 = 0xE700000000000000;
  }

  if (a1 <= 2u)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  MEMORY[0x1DA7298F0](v14, v15);

  MEMORY[0x1DA7298F0](v18[0], v18[1]);

  MEMORY[0x1DA7298F0](0x203A6469202CLL, 0xE600000000000000);
  v16 = ContentID.debugDescription.getter(a2, a3, a4);
  MEMORY[0x1DA7298F0](v16);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return v19;
}

uint64_t _s18PodcastsFoundation16ContentReferenceV2eeoiySbAC_ACtFZ_0(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, unsigned __int8 a5, uint64_t a6, uint64_t a7, char a8)
{
  v14 = 0x79726F6765746163;
  v15 = a1;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      v18 = 0xE400000000000000;
      v17 = 2003789939;
    }

    else
    {
      if (a1 == 4)
      {
        v17 = 0x6E6F6974617473;
      }

      else
      {
        v17 = 0x6E776F6E6B6E75;
      }

      v18 = 0xE700000000000000;
    }
  }

  else
  {
    v16 = 0x6C656E6E616863;
    if (a1 != 1)
    {
      v16 = 0x65646F73697065;
    }

    if (a1)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0x79726F6765746163;
    }

    if (v15)
    {
      v18 = 0xE700000000000000;
    }

    else
    {
      v18 = 0xE800000000000000;
    }
  }

  v19 = 0xE800000000000000;
  v20 = 0xE400000000000000;
  v21 = 2003789939;
  v22 = 0x6E6F6974617473;
  if (a5 != 4)
  {
    v22 = 0x6E776F6E6B6E75;
  }

  if (a5 != 3)
  {
    v21 = v22;
    v20 = 0xE700000000000000;
  }

  v23 = 0x6C656E6E616863;
  if (a5 != 1)
  {
    v23 = 0x65646F73697065;
  }

  if (a5)
  {
    v14 = v23;
    v19 = 0xE700000000000000;
  }

  if (a5 <= 2u)
  {
    v24 = v14;
  }

  else
  {
    v24 = v21;
  }

  if (a5 <= 2u)
  {
    v25 = v19;
  }

  else
  {
    v25 = v20;
  }

  if (v17 == v24 && v18 == v25)
  {
  }

  else
  {
    v26 = sub_1D9179ACC();

    result = 0;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        sub_1D8D6F530();
        if (sub_1D917914C())
        {
          return 1;
        }
      }
    }

    else if (a8 == 2 && (a2 == a6 && a3 == a7 || (sub_1D9179ACC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!a8 && a2 == a6)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D8FC75F4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8740, &qword_1D91A2CC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC77D4();
  sub_1D9179EEC();
  v10[30] = 0;
  sub_1D8FC7A8C();
  sub_1D91798FC();
  v8 = v10[31];
  v10[15] = 1;
  sub_1D8EF1774();
  sub_1D91798FC();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_1D8FC77D4()
{
  result = qword_1ECAB2270;
  if (!qword_1ECAB2270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2270);
  }

  return result;
}

unint64_t sub_1D8FC7828()
{
  result = qword_1ECAB8728;
  if (!qword_1ECAB8728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8728);
  }

  return result;
}

unint64_t sub_1D8FC7880()
{
  result = qword_1ECAB8730;
  if (!qword_1ECAB8730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8730);
  }

  return result;
}

uint64_t sub_1D8FC78D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8FC791C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D8FC7988()
{
  result = qword_1ECAB8738;
  if (!qword_1ECAB8738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8738);
  }

  return result;
}

unint64_t sub_1D8FC79E0()
{
  result = qword_1ECAB2260;
  if (!qword_1ECAB2260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2260);
  }

  return result;
}

unint64_t sub_1D8FC7A38()
{
  result = qword_1ECAB2268;
  if (!qword_1ECAB2268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2268);
  }

  return result;
}

unint64_t sub_1D8FC7A8C()
{
  result = qword_1ECAB2AC8;
  if (!qword_1ECAB2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AC8);
  }

  return result;
}

uint64_t DatabaseRepresentable.deviceURI.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(a2 + 40))(a1, a2, v14);
  if (!v17)
  {
    return 0;
  }

  (*(a2 + 56))(a1, a2);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1D8E677CC(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_1D9176B3C();

    v19 = sub_1D9176ACC();
    v20 = *(v9 + 8);
    v20(v12, v8);
    v20(v16, v8);
    return v19;
  }
}

uint64_t LibraryEntity.description.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      v6 = 0x2D6C656E6E616843;
      sub_1D8E40D20();
      v4 = sub_1D917927C();
      MEMORY[0x1DA7298F0](v4);

      return v6;
    }

    v3 = 0x2D776F6853;
  }

  else
  {
    v3 = 0x2D65646F73697045;
  }

  v6 = v3;
  MEMORY[0x1DA7298F0]();
  return v6;
}

uint64_t LibraryEntity.typeName.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x65646F73697045;
  }

  if (a3 == 1)
  {
    return 2003789907;
  }

  return 0x6C656E6E616843;
}

uint64_t sub_1D8FC7EAC(uint64_t a1)
{
  v2 = sub_1D8FC8964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC7EE8(uint64_t a1)
{
  v2 = sub_1D8FC8964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC7F24()
{
  v1 = 2003789939;
  if (*v0 != 1)
  {
    v1 = 0x6C656E6E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F73697065;
  }
}

uint64_t sub_1D8FC7F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FC8A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FC7FA0(uint64_t a1)
{
  v2 = sub_1D8FC8910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC7FDC(uint64_t a1)
{
  v2 = sub_1D8FC8910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC8018(uint64_t a1)
{
  v2 = sub_1D8FC8A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC8054(uint64_t a1)
{
  v2 = sub_1D8FC8A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FC8090(uint64_t a1)
{
  v2 = sub_1D8FC89B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FC80CC(uint64_t a1)
{
  v2 = sub_1D8FC89B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryEntity.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a2;
  v34 = a4;
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8748, &qword_1D91A2D30);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8750, &qword_1D91A2D38);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8758, &qword_1D91A2D40);
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8760, &qword_1D91A2D48);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FC8910();
  sub_1D9179F1C();
  if (v34)
  {
    if (v34 == 1)
    {
      v36 = 1;
      sub_1D8FC89B8();
      sub_1D917993C();
      v22 = v27;
      sub_1D91799BC();
      v23 = v26;
    }

    else
    {
      v37 = 2;
      sub_1D8FC8964();
      v11 = v28;
      sub_1D917993C();
      v33 = v32;
      sub_1D8EF1720();
      v22 = v30;
      sub_1D91799FC();
      v23 = v29;
    }

    (*(v23 + 8))(v11, v22);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v35 = 0;
    sub_1D8FC8A0C();
    sub_1D917993C();
    sub_1D91799BC();
    (*(v25 + 8))(v15, v12);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t LibraryEntity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](a2);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1DA72B390](v5);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t LibraryEntity.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](a1);
      return sub_1D9179E1C();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1DA72B390](v5);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t LibraryEntity.init(from:)(uint64_t *a1)
{
  result = sub_1D8FC8B78(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D8FC8660@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FC8B78(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1D8FC86BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](v1);
      return sub_1D9179E1C();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA72B390](v4);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FC8754()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      MEMORY[0x1DA72B390](2);
      return MEMORY[0x1DA72B3C0](v1);
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1DA72B390](v3);

  return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FC87E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x1DA72B390](2);
      MEMORY[0x1DA72B3C0](v1);
      return sub_1D9179E1C();
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1DA72B390](v4);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation13LibraryEntityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_1D9179ACC();
      }

      return 1;
    }

    return 0;
  }

  if (a3 == 1)
  {
    if (a6 == 1)
    {
      if (a1 != a4 || a2 != a5)
      {
        return sub_1D9179ACC();
      }

      return 1;
    }

    return 0;
  }

  return a6 == 2 && a1 == a4;
}

unint64_t sub_1D8FC8910()
{
  result = qword_1ECAB2740;
  if (!qword_1ECAB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2740);
  }

  return result;
}

unint64_t sub_1D8FC8964()
{
  result = qword_1ECAB8768;
  if (!qword_1ECAB8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8768);
  }

  return result;
}

unint64_t sub_1D8FC89B8()
{
  result = qword_1ECAB2728;
  if (!qword_1ECAB2728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2728);
  }

  return result;
}

unint64_t sub_1D8FC8A0C()
{
  result = qword_1ECAB2700;
  if (!qword_1ECAB2700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2700);
  }

  return result;
}

uint64_t sub_1D8FC8A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F73697065 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000)
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

uint64_t sub_1D8FC8B78(uint64_t *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8798, &qword_1D91A3358);
  v44 = *(v42 - 8);
  v2 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v38 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87A0, &qword_1D91A3360);
  v43 = *(v40 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87A8, &qword_1D91A3368);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87B0, &qword_1D91A3370);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v47 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D8FC8910();
  v19 = v46;
  sub_1D9179EEC();
  if (!v19)
  {
    v39 = 0;
    v20 = v45;
    v46 = v12;
    v21 = sub_1D917991C();
    v22 = (2 * *(v21 + 16)) | 1;
    v48 = v21;
    v49 = v21 + 32;
    v50 = 0;
    v51 = v22;
    v23 = sub_1D8E89BD4();
    v24 = v15;
    if (v23 == 3 || v50 != v51 >> 1)
    {
      v28 = sub_1D917951C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
      *v30 = &type metadata for LibraryEntity;
      v18 = v24;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v46 + 8))(v24, v11);
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        LOBYTE(v52) = 1;
        sub_1D8FC89B8();
        v25 = v6;
        v18 = v15;
        v26 = v39;
        sub_1D917982C();
        v27 = v46;
        if (v26)
        {
          (*(v46 + 8))(v15, v11);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        v45 = v15;
        v36 = v40;
        v18 = sub_1D91798BC();
        (*(v43 + 8))(v25, v36);
        (*(v27 + 8))(v45, v11);
      }

      else
      {
        LOBYTE(v52) = 2;
        sub_1D8FC8964();
        v18 = v15;
        v34 = v39;
        sub_1D917982C();
        v35 = v46;
        if (!v34)
        {
          sub_1D8EF1774();
          v37 = v42;
          sub_1D91798FC();
          (*(v44 + 8))(v20, v37);
          (*(v35 + 8))(v24, v11);
          swift_unknownObjectRelease();
          v18 = v52;
          goto LABEL_10;
        }

        (*(v46 + 8))(v24, v11);
      }
    }

    else
    {
      LOBYTE(v52) = 0;
      sub_1D8FC8A0C();
      v18 = v15;
      v33 = v39;
      sub_1D917982C();
      if (!v33)
      {
        v18 = sub_1D91798BC();
        (*(v41 + 8))(v10, v7);
      }

      (*(v46 + 8))(v15, v11);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return v18;
}

unint64_t sub_1D8FC92A0()
{
  result = qword_1ECAB8770;
  if (!qword_1ECAB8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8770);
  }

  return result;
}

unint64_t sub_1D8FC9348()
{
  result = qword_1ECAB8778;
  if (!qword_1ECAB8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8778);
  }

  return result;
}

unint64_t sub_1D8FC93A0()
{
  result = qword_1ECAB8780;
  if (!qword_1ECAB8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8780);
  }

  return result;
}

unint64_t sub_1D8FC93F8()
{
  result = qword_1ECAB8788;
  if (!qword_1ECAB8788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8788);
  }

  return result;
}

unint64_t sub_1D8FC9450()
{
  result = qword_1ECAB8790;
  if (!qword_1ECAB8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8790);
  }

  return result;
}

unint64_t sub_1D8FC94A8()
{
  result = qword_1ECAB26F0;
  if (!qword_1ECAB26F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26F0);
  }

  return result;
}

unint64_t sub_1D8FC9500()
{
  result = qword_1ECAB26F8;
  if (!qword_1ECAB26F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26F8);
  }

  return result;
}

unint64_t sub_1D8FC9558()
{
  result = qword_1ECAB2718;
  if (!qword_1ECAB2718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2718);
  }

  return result;
}

unint64_t sub_1D8FC95B0()
{
  result = qword_1ECAB2720;
  if (!qword_1ECAB2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2720);
  }

  return result;
}

unint64_t sub_1D8FC9608()
{
  result = qword_1ECAB2708;
  if (!qword_1ECAB2708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2708);
  }

  return result;
}

unint64_t sub_1D8FC9660()
{
  result = qword_1ECAB2710;
  if (!qword_1ECAB2710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2710);
  }

  return result;
}

unint64_t sub_1D8FC96B8()
{
  result = qword_1ECAB2730;
  if (!qword_1ECAB2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2730);
  }

  return result;
}

unint64_t sub_1D8FC9710()
{
  result = qword_1ECAB2738;
  if (!qword_1ECAB2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2738);
  }

  return result;
}

uint64_t MediaAPIRepresentable.catalogURI.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v20 - v6;
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - v15;
  (*(a2 + 56))(a1, a2, v14);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D8E677CC(v7);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    v20[1] = (*(a2 + 48))(a1, a2);
    sub_1D8E40D20();
    sub_1D917927C();
    sub_1D9176B3C();

    v18 = sub_1D9176ACC();
    v19 = *(v9 + 8);
    v19(v12, v8);
    v19(v16, v8);
    return v18;
  }
}

void MediaIdentifier.init(episodeID:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D8DA8564(a1, a2, 1);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v6 = -1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D9189080;
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;
      *a4 = v9;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v6 = 2;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D9189080;
    *(v7 + 32) = a1;
    *a4 = v7;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    v6 = 1;
  }

  *(a4 + 32) = v6;
}

void MediaIdentifier.init(showID:)(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      sub_1D8DA8564(a1, a2, 1);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = -1;
    }

    else
    {
      *a4 = a1;
      *(a4 + 8) = a2;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 3;
    }
  }

  else
  {
    *a4 = a1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
  }
}

uint64_t MTEpisode.preferredContentID.getter()
{
  v1 = [v0 storeTrackId];
  if ((v1 & 0x8000000000000000) != 0 || (v1 ? (v2 = v1 == 1000000000000) : (v2 = 1), v2))
  {
    v3 = [v0 uuid];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1D917820C();

      return v5;
    }

    else
    {
      if (qword_1ECAB0C38 != -1)
      {
        swift_once();
      }

      v6 = sub_1D917744C();
      __swift_project_value_buffer(v6, qword_1ECAB0C40);
      v7 = v0;
      v8 = sub_1D917741C();
      v9 = sub_1D9178D0C();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v7;
        *v11 = v7;
        v12 = v7;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Encountered an episode model without an identifier: %@", v10, 0xCu);
        sub_1D8E262AC(v11);
        MEMORY[0x1DA72CB90](v11, -1, -1);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    v13 = [v0 storeTrackId];
    return v13 & ~(v13 >> 63);
  }
}

uint64_t sub_1D8FC9DE0(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = sub_1D917820C();
  v10 = v9;
  v11 = a4;
  v12 = a1;
  sub_1D8FCA928(a5, v8, v10, v11);
}

id EpisodeLevelCalculator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EpisodeLevelCalculator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeLevelCalculator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EpisodeLevelCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeLevelCalculator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8FC9F04(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 predicateForAllEpisodesOnPodcastUuid_];

  v7 = [v4 predicateForVisuallyPlayed_];
  v8 = [v4 predicateForPlayedDateSetByListening];
  v9 = [v7 AND_];

  v10 = [v4 predicateForHasEpisodeNumber];
  v11 = [v6 AND_];
  v12 = [v11 AND_];

  v13 = @"MTEpisode";
  v14 = v12;
  v15 = [v4 sortDescriptorsForLastDatePlayedAscending_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v16 = sub_1D91785FC();

  sub_1D8F61018(v16);

  v17 = sub_1D91785DC();

  v18 = [a3 objectsInEntity:v13 predicate:v14 sortDescriptors:v17 returnsObjectsAsFaults:0 limit:1];

  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v19 = sub_1D91785FC();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  if ((v19 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x1DA72AA90](0, v19);
  }

  else
  {
    if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v21 = *(v19 + 32);
  }

  v22 = v21;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id sub_1D8FCA200(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 predicateForAllEpisodesOnPodcastUuid_];

  v11 = [v8 predicateForHasEpisodeNumber];
  v12 = [v10 AND_];

  v13 = [v8 predicateForEpisodeType_];
  v14 = [v12 AND_];

  v15 = sub_1D8FC9F04(a2, a3, a4);
  v16 = v15;
  if (v15 && [v15 seasonNumber] >= 1 && objc_msgSend(v16, sel_episodeNumber) >= 1)
  {
    v17 = [v8 predicateForSeasonNumber_];
    v18 = [v14 AND_];

    v19 = v18;
    v20 = [v8 predicateForEpisodesWithEpisodeNumbersGreaterThan_];
    v14 = [v19 AND_];
  }

  else
  {
    v21 = [a1 latestSeasonNumber];
    if (v21 < 1)
    {
      v19 = v16;
    }

    else
    {
      v22 = [v8 predicateForSeasonNumber_];
      v23 = [v14 AND_];

      v19 = v16;
      v14 = v23;
    }
  }

  return v14;
}

void sub_1D8FCA484(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = objc_opt_self();
  v8 = MEMORY[0x1E69E6158];
  v9 = sub_1D9178A8C();
  v10 = [v7 predicateForEpisodeUuids_];

  v11 = [v10 NOT];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v12 = swift_allocObject();
  v13 = kEpisodeShowTypeSpecificLevel;
  *(v12 + 16) = xmmword_1D918A530;
  v43 = a1;
  if ((a1 & 1) == 0)
  {
    v13 = kEpisodeLevel;
  }

  v14 = *v13;
  v15 = sub_1D917820C();
  v17 = v16;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  *(v12 + 56) = v8;
  v18 = sub_1D8D34978();
  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v19 = MEMORY[0x1E69E73D8];
  *(v12 + 96) = MEMORY[0x1E69E7360];
  *(v12 + 104) = v19;
  *(v12 + 64) = v18;
  *(v12 + 72) = 1000000;
  v20 = sub_1D9178C8C();
  v21 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v22 = [v7 predicateForAllEpisodesOnPodcastUuid_];

  v40 = v11;
  v23 = [v22 AND_];

  v39 = v20;
  v41 = [v23 AND_];

  v24 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v24 setPredicate_];
  [v24 setReturnsObjectsAsFaults_];
  [v24 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v38 = v24;
  v42 = a5;
  v25 = sub_1D917908C();
  v37 = v25;
  if (v25 >> 62)
  {
    v26 = sub_1D917935C();
    if (!v26)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
LABEL_20:

      [v42 saveInCurrentBlock];

      return;
    }
  }

  if (v26 < 1)
  {
    goto LABEL_24;
  }

  v27 = 0;
  v28 = 0;
  v29 = kEpisodeShowTypeSpecificLevel;
  if ((v43 & 1) == 0)
  {
    v29 = kEpisodeLevel;
  }

  v44 = *v29;
  while (1)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA72AA90](v27, v37);
    }

    else
    {
      v30 = *(v37 + 8 * v27 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      break;
    }

LABEL_10:
    ++v27;
    swift_unknownObjectRelease();
    if (v26 == v27)
    {
      goto LABEL_20;
    }
  }

  v32 = v31;
  v33 = objc_autoreleasePoolPush();
  v34 = sub_1D9179D9C();
  sub_1D917820C();
  v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v32 setValue:v34 forKey:{v35, v38}];

  if (!__OFADD__(v28++, 1))
  {
    if (__ROR8__(0x8F5C28F5C28F5C29 * v28 + 0x51EB851EB851EB8, 3) <= 0x147AE147AE147AEuLL)
    {
      [v42 saveInCurrentBlock];
    }

    objc_autoreleasePoolPop(v33);
    goto LABEL_10;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_1D8FCA928(char a1, unint64_t a2, uint64_t a3, void *a4)
{
  LOBYTE(v7) = a1;
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v9 = [a4 podcastForUuid_];

  if (v9)
  {
    v51 = v9;
    if ([v9 isSerialShowTypeInFeed] && (v7 & 1) != 0)
    {
      v10 = sub_1D8FCA200(v9, a2, a3, a4);
      v11 = objc_opt_self();
      v52 = v10;
      v12 = [v11 sortDescriptorsForEpisodeNumberAscending_];
    }

    else
    {
      v13 = objc_opt_self();
      v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v15 = [v13 predicateForAllEpisodesOnPodcastUuid_];

      v52 = v15;
      v12 = [v13 sortDescriptorsForCalculatingEpisodeLevel];
    }

    v16 = v12;
    sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
    v17 = sub_1D91785FC();

    v18 = @"MTEpisode";
    sub_1D8F61018(v17);

    v19 = sub_1D91785DC();

    v20 = [a4 objectsInEntity:v18 predicate:v52 sortDescriptors:v19 returnsObjectsAsFaults:0 limit:10];

    if (v20)
    {
      sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
      v21 = sub_1D91785FC();

      if (v21 >> 62)
      {
        goto LABEL_58;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFF8;

      sub_1D9179C4C();
      sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
      if (swift_dynamicCastMetatype() || (v42 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_10:
      }

      else
      {
        v43 = (v22 + 32);
        while (1)
        {
          v44 = *v43;
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v43;
          if (!--v42)
          {
            goto LABEL_10;
          }
        }

        v21 = v22 | 1;
      }

      while (1)
      {
        v23 = v21 >> 62 ? sub_1D917935C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v48 = a2;
        v49 = a3;
        v50 = a4;
        v24 = v21 & 0xC000000000000001;
        a3 = v21;
        v47 = v7;
        if (!v23)
        {
          break;
        }

        a2 = 0;
        v53 = v21 & 0xFFFFFFFFFFFFFF8;
        v25 = kEpisodeLevel;
        if (v7)
        {
          v25 = kEpisodeShowTypeSpecificLevel;
        }

        v7 = *v25;
        a4 = (v21 & 0xC000000000000001);
        while (1)
        {
          if (v24)
          {
            v26 = a3;
            v27 = MEMORY[0x1DA72AA90](a2, a3);
          }

          else
          {
            if (a2 >= *(v53 + 16))
            {
              goto LABEL_55;
            }

            v26 = a3;
            v27 = *(a3 + 8 * a2 + 32);
          }

          v28 = v27;
          a3 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          v29 = sub_1D9179D9C();
          sub_1D917820C();
          v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

          [v28 setValue:v29 forKey:v30];

          ++a2;
          v31 = a3 == v23;
          a3 = v26;
          v24 = a4;
          if (v31)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);

        v46 = sub_1D91796FC();
        swift_bridgeObjectRelease_n();
        v21 = v46;
      }

      v53 = v21 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
      if (v23)
      {
        v32 = 0;
        a2 = MEMORY[0x1E69E7CC0];
        do
        {
          v7 = v32;
          while (1)
          {
            if (v24)
            {
              v33 = MEMORY[0x1DA72AA90](v7, a3);
              v32 = (&v7->isa + 1);
              if (__OFADD__(v7, 1))
              {
                goto LABEL_56;
              }
            }

            else
            {
              if (v7 >= *(v53 + 16))
              {
                goto LABEL_57;
              }

              v33 = *(a3 + 8 * v7 + 32);
              v32 = (&v7->isa + 1);
              if (__OFADD__(v7, 1))
              {
                goto LABEL_56;
              }
            }

            v34 = v33;
            v35 = [v34 uuid];
            if (v35)
            {
              break;
            }

            v7 = (v7 + 1);
            if (v32 == v23)
            {
              goto LABEL_50;
            }
          }

          v36 = v35;
          v37 = sub_1D917820C();
          a4 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_1D8D4241C(0, *(a2 + 16) + 1, 1, a2);
          }

          v40 = *(a2 + 16);
          v39 = *(a2 + 24);
          if (v40 >= v39 >> 1)
          {
            a2 = sub_1D8D4241C((v39 > 1), v40 + 1, 1, a2);
          }

          *(a2 + 16) = v40 + 1;
          v41 = a2 + 16 * v40;
          *(v41 + 32) = v37;
          *(v41 + 40) = a4;
        }

        while (v32 != v23);
      }

      else
      {
        a2 = MEMORY[0x1E69E7CC0];
      }

LABEL_50:

      v45 = sub_1D8FC0F28(a2);

      sub_1D8FCA484(v47 & 1, v48, v49, v45, v50);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall MTEpisode.resolveAvailabilityDate()()
{
  v1 = v0;
  v2 = sub_1D9176E3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 pubDate];
  v9 = v8;
  sub_1D9176E2C();
  sub_1D9176CCC();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  [v1 firstTimeAvailableAsFree];
  v13 = v12;
  if ([v1 entitlementState] == 1)
  {
    [v1 firstTimeAvailableAsPaid];
    v15 = v14;
    v16 = &selRef_firstTimeAvailableAsFree;
    if (v13 <= 0.0)
    {
      v16 = &selRef_pubDate;
    }

    [v1 *v16];
    if (v9 < v11)
    {
      [v1 pubDate];
    }

    v18 = v17;
    if (v15 > 0.0)
    {
      v19 = v17;
      [v1 firstTimeAvailableAsPaid];
      v18 = v20;
      v17 = v19;
    }

    if (v17 >= v18)
    {
      v17 = v18;
    }
  }

  else
  {
    v21 = &selRef_firstTimeAvailableAsFree;
    if (v13 <= 0.0)
    {
      v21 = &selRef_firstTimeAvailableAsPaid;
    }

    [v1 *v21];
    if (v9 < v11)
    {
      [v1 pubDate];
    }
  }

  [v1 setFirstTimeAvailable_];
  [v1 firstTimeAvailable];
  if (v22 == 0.0)
  {
    [v1 pubDate];
    [v1 setFirstTimeAvailable_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsBookmarked()()
{
  if (([v0 isBookmarked] & 1) == 0)
  {
    sub_1D9176CDC();

    [v0 markAsBookmarkedOnTimestamp_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsBookmarked(onTimestamp:)(Swift::Double onTimestamp)
{
  [v1 setIsBookmarked_];
  [v1 lastBookmarkedDate];
  if (v3 < onTimestamp)
  {

    [v1 setLastBookmarkedDate_];
  }
}

Swift::Void __swiftcall MTEpisode.markAsUnbookmarked()()
{
  if ([v0 isBookmarked])
  {

    [v0 setIsBookmarked_];
  }
}

uint64_t static MTEpisode.adamID(from:)(uint64_t a1)
{
  if ([objc_opt_self() isEmpty_])
  {
    return 0;
  }

  else
  {
    return a1 & ~(a1 >> 63);
  }
}

uint64_t MTEpisode.allEpisodeStateIdentifiers.getter()
{
  v1 = v0;
  v2 = [v0 uuid];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D917820C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [v1 storeTrackId];
  v8 = [objc_opt_self() isEmpty_];
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 & ~(v7 >> 63);
  }

  v10 = sub_1D9100928(v4, v6, v9, v8);

  return v10;
}

uint64_t Set<>.firstEpisodeUUID.getter(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  while (v4)
  {
    v5 = v1;
LABEL_10:
    v6 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v7 = *(result + 48) + 24 * (v6 | (v5 << 6));
    if (*(v7 + 16) == 1)
    {
      v9 = *v7;
      v8 = *(v7 + 8);

      return v9;
    }
  }

  while (1)
  {
    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 0;
    }

    v4 = *(result + 56 + 8 * v5);
    ++v1;
    if (v4)
    {
      v1 = v5;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id MTEpisode.attributedDescriptionFromHTML.getter()
{
  result = [v0 itemDescriptionWithHTMLData];
  if (result)
  {
    v2 = result;
    v3 = sub_1D9176C8C();
    v5 = v4;

    sub_1D8CF2154(0, &qword_1ECAAFDD0, 0x1E696ACD0);
    sub_1D8CF2154(0, &qword_1ECAAFD60, 0x1E696AAB0);
    v6 = sub_1D9178D5C();
    sub_1D8D7567C(v3, v5);
    return v6;
  }

  return result;
}

void MTEpisode.attributedDescriptionFromHTML.setter(void *a1)
{
  v42[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = objc_opt_self();
    v42[0] = 0;
    v4 = a1;
    v5 = [v3 archivedDataWithRootObject:v4 requiringSecureCoding:1 error:v42];
    v6 = v42[0];
    if (!v5)
    {
      v21 = v6;
      v22 = sub_1D9176A6C();

      swift_willThrow();
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v23 = sub_1D917744C();
      __swift_project_value_buffer(v23, qword_1EDCD0F88);
      v24 = v1;
      v25 = v22;
      v26 = sub_1D917741C();
      v27 = sub_1D9178CFC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v42[0] = v29;
        *v28 = 136446466;
        v30 = [v24 uuid];
        if (!v30)
        {
          v31 = [v24 objectID];
          v30 = [v31 description];
        }

        v32 = sub_1D917820C();
        v34 = v33;

        v35 = sub_1D8CFA924(v32, v34, v42);

        *(v28 + 4) = v35;
        *(v28 + 12) = 2082;
        swift_getErrorValue();
        v36 = sub_1D9179D2C();
        v38 = sub_1D8CFA924(v36, v37, v42);

        *(v28 + 14) = v38;
        _os_log_impl(&dword_1D8CEC000, v26, v27, "Failed to encode NSAttributedString from kEpisodeDescriptionWithHTMLData for %{public}s with error: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v29, -1, -1);
        MEMORY[0x1DA72CB90](v28, -1, -1);
      }

      [v24 setItemDescriptionWithHTMLData_];
      goto LABEL_27;
    }

    v7 = sub_1D9176C8C();
    v9 = v8;

    sub_1D8D752C4(v7, v9);
    v10 = [v1 itemDescriptionWithHTMLData];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D9176C8C();
      v14 = v13;

      if (v9 >> 60 == 15)
      {
        if (v14 >> 60 != 15)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

      if (v14 >> 60 != 15)
      {
        sub_1D8D752C4(v7, v9);
        sub_1D8DA04B0(v12, v14);
        v39 = sub_1D8FCC138(v7, v9, v12, v14);
        sub_1D8D75668(v12, v14);
        sub_1D8D7567C(v7, v9);
        sub_1D8D75668(v12, v14);
        sub_1D8D75668(v7, v9);
        if (v39)
        {

          sub_1D8D7567C(v7, v9);
LABEL_26:

          goto LABEL_27;
        }

LABEL_25:
        v40 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
        [v1 setItemDescriptionWithHTMLData_];

        sub_1D8D7567C(v7, v9);
        goto LABEL_26;
      }
    }

    else
    {
      if (v9 >> 60 == 15)
      {
LABEL_19:

        sub_1D8D7567C(v7, v9);
        sub_1D8D75668(v7, v9);
        goto LABEL_27;
      }

      v12 = 0;
      v14 = 0xF000000000000000;
    }

LABEL_24:
    sub_1D8D75668(v7, v9);
    sub_1D8D75668(v12, v14);
    goto LABEL_25;
  }

  v15 = [v1 itemDescriptionWithHTMLData];
  if (!v15)
  {
LABEL_27:
    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  v16 = v15;
  v17 = sub_1D9176C8C();
  v19 = v18;

  sub_1D8D7567C(v17, v19);
  v20 = *MEMORY[0x1E69E9840];

  [v1 setItemDescriptionWithHTMLData_];
}

uint64_t sub_1D8FCBEF0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D8FCC080(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D8D7567C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_1D90C9C94(v14, a3, a4, &v13);
  v10 = v4;
  sub_1D8D7567C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1D8FCC080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D917681C();
  v11 = result;
  if (result)
  {
    result = sub_1D917683C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D917682C();
  sub_1D90C9C94(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1D8FCC138(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D8D752C4(a3, a4);
          return sub_1D8FCBEF0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL MTEpisode.bookmarksSyncType.getter()
{
  v1 = [v0 priceType];
  if (v1)
  {
    v2 = v1;
    sub_1D917820C();
  }

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = MTEpisodePriceTypeFromPersistentString(v3);

  return (v4 - 2) < 3;
}

id static MTEpisode.predicateForPurgeableEpisodes(globalRetentionPolicy:evaluationDate:calendar:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918C190;
  *(v2 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v2 + 40) = sub_1D8FCD114(a1);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v3 = sub_1D91785DC();

  v4 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v4;
}

id static MTEpisode.predicateForDownloadedNonPurgeableEpisodes(globalRetentionPolicy:evaluationDate:calendar:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918C190;
  *(v2 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  v3 = sub_1D8FCD114(a1);
  v4 = [v3 NOT];

  *(v2 + 40) = v4;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v5 = sub_1D91785DC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

id static MTEpisode.predicate<A>(forEpisodeStoreTrackIdStrings:)()
{
  v0 = sub_1D917843C();
  v1 = *(v0 + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v2 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
      sub_1D917959C();
      v3 = *(v9 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      v2 += 8;
      --v1;
    }

    while (v1);

    v4 = v9;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D8FC0EF8(v4);

  sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98);
  v6 = sub_1D9178A8C();

  v7 = [ObjCClassFromMetadata predicateForEpisodeStoreTrackIds_];

  return v7;
}

id static MTEpisode.predicateForEpisodesWhichShouldBeFeedDeleted(showUUID:forBootstrapGeneration:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [ObjCClassFromMetadata predicateForAllEpisodesOnPodcastUuid_];

  v3 = _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0();
  v4 = [v2 AND_];

  v5 = [ObjCClassFromMetadata predicateForFeedDeleted_];
  v6 = [v4 AND_];

  return v6;
}

id static MTEpisode.predicateForContinuePlayingShelf.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 predicateForPartiallyPlayed];
  *(v0 + 40) = [v1 predicateForPodcastIsNotHidden];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v2 = sub_1D91785DC();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v3;
}

id static MTEpisode.predicateForShowDetailEpisodes(showUUID:hidePlayedEpisodes:seasonToShow:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v8 = objc_opt_self();
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = [v8 predicateForAllEpisodesOnPodcastUuid_];

  v11 = v10;
  v12 = [v8 predicateForEpisodeTypeFilter_];
  v13 = [v11 AND_];

  if (a3)
  {
    v14 = [v8 predicateForVisuallyPlayed_];
    v15 = [v13 AND_];

    v13 = v15;
  }

  if (a5)
  {
    return v13;
  }

  v17 = [v8 predicateForSeasonNumber_];
  v18 = [v13 AND_];

  return v18;
}

uint64_t *sub_1D8FCCB08@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  v4 = HIBYTE(v3) & 0xF;
  v5 = *result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v27 = 0;
    v26 = 1;
LABEL_66:
    *a2 = v27;
    *(a2 + 8) = v26 & 1;
    return result;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v28 = result[1];
    v29 = a2;

    v8 = sub_1D8FF7E64(v2, v3, 10);
    v26 = v30;

    a2 = v29;
LABEL_63:
    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v27 = v8;
    }

    goto LABEL_66;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      result = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v31 = *result;
      v32 = a2;
      result = sub_1D917957C();
      a2 = v32;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        v4 = v5 - 1;
        if (v5 != 1)
        {
          v8 = 0;
          if (result)
          {
            v15 = result + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v8;
              if ((v8 * 10) >> 64 != (10 * v8) >> 63)
              {
                goto LABEL_61;
              }

              v8 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v4)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        v8 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v5)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v8 = 0;
      LOBYTE(v4) = 1;
      goto LABEL_62;
    }

    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v8 = 0;
        if (result)
        {
          v9 = result + 1;
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v4)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v4) = 0;
LABEL_62:
        v34 = v4;
        v26 = v4;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33[0] = *result;
  v33[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (v2 != 43)
  {
    if (v2 != 45)
    {
      if (v4)
      {
        v8 = 0;
        v23 = v33;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v4)
    {
      if (--v4)
      {
        v8 = 0;
        v12 = v33 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v4)
  {
    if (--v4)
    {
      v8 = 0;
      v18 = v33 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          break;
        }

        v8 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v4)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t static MTEpisode.predicateForAllEpisodes(forPodcast:)(void *a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9189060;
    v10 = sub_1D917820C();
    v12 = v11;
    v13 = MEMORY[0x1E69E6158];
    *(v9 + 56) = MEMORY[0x1E69E6158];
    v14 = sub_1D8D34978();
    *(v9 + 64) = v14;
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    v15 = sub_1D917820C();
    *(v9 + 96) = v13;
    *(v9 + 104) = v14;
    *(v9 + 72) = v15;
    *(v9 + 80) = v16;
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
    *(v9 + 136) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    *(v9 + 144) = sub_1D8CF3274(&qword_1ECAAFC70, qword_1EDCD0810, 0x1E696AD98);
    *(v9 + 112) = v17;
    return sub_1D9178C8C();
  }

  if (a3 == 1)
  {
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
    *(v4 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    *(v4 + 104) = sub_1D8CF3274(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
    *(v4 + 72) = a1;
    v8 = a1;
    return sub_1D9178C8C();
  }

  v19 = objc_opt_self();
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v21 = [v19 predicateForAllEpisodesOnPodcastUuid_];

  return v21;
}

id sub_1D8FCD114(uint64_t a1)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v48 - v9;
  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E6969A48], v2, v14);
  sub_1D9176F9C();
  (*(v3 + 8))(v6, v2);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D8CF5EF8(v10);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v17 = sub_1D917744C();
    __swift_project_value_buffer(v17, qword_1EDCD0F20);
    v18 = sub_1D917741C();
    v19 = sub_1D9178CFC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1D8CEC000, v18, v19, "Unable to move the date cursor 45 days back. Purgeability is undefined while this is true, so no episodes will be marked as purgeable", v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    v21 = [objc_opt_self() falsePredicate];

    return v21;
  }

  else
  {
    (*(v12 + 32))(v16, v10, v11);
    v48[1] = sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D9195F30;
    v24 = sub_1D917820C();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1D8D34978();
    v49 = a1;
    v29 = v28;
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v30 = sub_1D917820C();
    *(v23 + 96) = v27;
    *(v23 + 104) = v29;
    *(v23 + 72) = v30;
    *(v23 + 80) = v31;
    v32 = sub_1D917820C();
    *(v23 + 136) = v27;
    *(v23 + 144) = v29;
    *(v23 + 112) = v32;
    *(v23 + 120) = v33;
    v34 = sub_1D917820C();
    *(v23 + 176) = v27;
    *(v23 + 184) = v29;
    *(v23 + 152) = v34;
    *(v23 + 160) = v35;
    v36 = v16;
    v37 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    *(v23 + 216) = sub_1D8CF2154(0, &qword_1ECAAFC98, 0x1E695DF00);
    *(v23 + 224) = sub_1D8CF3274(&qword_1ECAAFC90, &qword_1ECAAFC98, 0x1E695DF00);
    *(v23 + 192) = v37;
    v38 = sub_1D9178C8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D91A34C0;
    *(v39 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE24predicateForStoreEpisodeSo11NSPredicateCyFZ_0();
    *(v39 + 40) = [swift_getObjCClassFromMetadata() predicateForAllUnbookmarkedEpisodes];
    *(v39 + 48) = sub_1D8FCDCF0(v49);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D918C190;
    *(v40 + 32) = [v38 NOT];
    EpisodeSo11NSPredicateCyFZ_0 = _sSo9MTEpisodeC18PodcastsFoundationE25predicateForUpNextEpisodeSo11NSPredicateCyFZ_0();
    v42 = [EpisodeSo11NSPredicateCyFZ_0 NOT];

    *(v40 + 40) = v42;
    v43 = sub_1D91785DC();

    v44 = objc_opt_self();
    v45 = [v44 orPredicateWithSubpredicates_];

    *(v39 + 56) = v45;
    v46 = sub_1D91785DC();

    v47 = [v44 andPredicateWithSubpredicates_];

    (*(v12 + 8))(v36, v11);
    return v47;
  }
}

uint64_t static MTEpisode.predicateForIsCurrentNewEpisode.getter()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189080;
  v1 = sub_1D917820C();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x1E69E6158];
  *(v0 + 64) = sub_1D8D34978();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  return sub_1D9178C8C();
}

uint64_t sub_1D8FCD804(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B9C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1D8FCD898(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_1D9179B0C();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
}

uint64_t sub_1D8FCD954@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1D9179B0C();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v6;
  return result;
}

id _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 predicateForDownloaded:1 excludeHidden:1];
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918C190;
  *(v2 + 32) = [v1 predicateForDownloadBehavior_];
  *(v2 + 40) = [v1 predicateForDownloadBehavior_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v3 = sub_1D91785DC();

  v4 = objc_opt_self();
  v5 = [v4 orPredicateWithSubpredicates_];

  *(v0 + 40) = v5;
  v6 = sub_1D91785DC();

  v7 = [v4 andPredicateWithSubpredicates_];

  return v7;
}

id _sSo9MTEpisodeC18PodcastsFoundationE24predicateForStoreEpisodeSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = MEMORY[0x1E69E73D8];
  *(v0 + 136) = MEMORY[0x1E69E7360];
  *(v0 + 144) = v8;
  *(v0 + 112) = 1000000000000;
  v9 = sub_1D9178C8C();
  v10 = [objc_opt_self() notPredicateWithSubpredicate_];

  return v10;
}

id sub_1D8FCDCF0(uint64_t a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9195F30;
  v2 = sub_1D917820C();
  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D8D34978();
  *(v1 + 64) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v7 = sub_1D917820C();
  *(v1 + 96) = v5;
  *(v1 + 104) = v6;
  *(v1 + 72) = v7;
  *(v1 + 80) = v8;
  v9 = MEMORY[0x1E69E7360];
  v10 = MEMORY[0x1E69E73D8];
  *(v1 + 136) = MEMORY[0x1E69E7360];
  *(v1 + 144) = v10;
  *(v1 + 112) = 0x100000001;
  *(v1 + 176) = v9;
  *(v1 + 184) = v10;
  *(v1 + 152) = a1;
  *(v1 + 216) = v9;
  *(v1 + 224) = v10;
  *(v1 + 192) = 0;
  v11 = sub_1D9178C8C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189060;
  v13 = sub_1D917820C();
  *(v12 + 56) = v5;
  *(v12 + 64) = v6;
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = sub_1D917820C();
  *(v12 + 96) = v5;
  *(v12 + 104) = v6;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  *(v12 + 136) = v9;
  *(v12 + 144) = v10;
  *(v12 + 112) = 0;
  v17 = sub_1D9178C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D918C190;
  *(v18 + 32) = v11;
  *(v18 + 40) = v17;
  v19 = v11;
  v20 = v17;
  v21 = sub_1D91785DC();

  v22 = objc_opt_self();
  v23 = [v22 orPredicateWithSubpredicates_];

  v24 = [v22 notPredicateWithSubpredicate_];
  return v24;
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE25predicateForUpNextEpisodeSo11NSPredicateCyFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = sub_1D917820C();
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  *(v0 + 112) = v8;
  *(v0 + 120) = v9;
  return sub_1D9178C8C();
}

id _sSo9MTEpisodeC18PodcastsFoundationE35predicateForCurrentNewEpisodesShelfSo11NSPredicateCvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D918C190;
  *(v0 + 32) = [objc_opt_self() predicateForPodcastIsSubscribed_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189080;
  v2 = sub_1D917820C();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D8D34978();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v0 + 40) = sub_1D9178C8C();
  v5 = sub_1D91785DC();

  v6 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v6;
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE31predicateForEpisodesNotMatching19bootstrapGenerationSo11NSPredicateC0C04UUIDV_tFZ_0()
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9189060;
  v1 = sub_1D917820C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D8D34978();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  v6 = sub_1D917820C();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v6;
  *(v0 + 80) = v7;
  v8 = sub_1D9176E6C();
  *(v0 + 136) = sub_1D8CF2154(0, &qword_1EDCD0928, 0x1E696AFB0);
  *(v0 + 144) = sub_1D8CF3274(&qword_1EDCD0920, &qword_1EDCD0928, 0x1E696AFB0);
  *(v0 + 112) = v8;
  return sub_1D9178C8C();
}

uint64_t _sSo9MTEpisodeC18PodcastsFoundationE23predicateForAllEpisodes10forPodcastSo11NSPredicateCSo9MTPodcastC_tFZ_0(void *a1)
{
  v1 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918A530;
  v3 = sub_1D917820C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v2 + 104) = sub_1D8CF3274(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
  *(v2 + 72) = v1;
  v6 = v1;
  v7 = sub_1D9178C8C();

  return v7;
}

uint64_t static MTEpisode.sortDescriptorsForUngroupedStation(orderedBy:)(int a1)
{
  result = MEMORY[0x1E69E7CC0];
  if (a1 <= 2)
  {
    if (!a1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D9189070;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v21 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v21);

      v22 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v24 = [v22 initWithKey:v23 ascending:0];

      result = v20;
      *(v20 + 32) = v24;
      return result;
    }

    if (a1 != 1)
    {
      return result;
    }

    v11 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
LABEL_10:
    v12 = v11;
    sub_1D8D28BC8();
    v13 = sub_1D91785FC();

    return v13;
  }

  switch(a1)
  {
    case 3:
      v11 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
      goto LABEL_10;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D918C190;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v14 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v14);

      v15 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v17 = [v15 initWithKey:v16 ascending:1];

      *(v3 + 32) = v17;
      sub_1D917820C();
      v18 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v10 = [v18 initWithKey:v9 ascending:1];
      break;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D918C190;
      sub_1D917820C();
      MEMORY[0x1DA7298F0](46, 0xE100000000000000);
      v4 = sub_1D917820C();
      MEMORY[0x1DA7298F0](v4);

      v5 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v7 = [v5 initWithKey:v6 ascending:0];

      *(v3 + 32) = v7;
      sub_1D917820C();
      v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v10 = [v8 initWithKey:v9 ascending:0];
      break;
    default:
      return result;
  }

  v19 = v10;

  result = v3;
  *(v3 + 40) = v19;
  return result;
}

uint64_t MTEpisodeEntitlementState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701147238;
    case 2:
      return 0x6C7469746E656E75;
    case 1:
      return 0x64656C7469746E65;
  }

  type metadata accessor for MTEpisodeEntitlementState(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCE944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1D8FCEA04(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1D8FCE974()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701147238;
  }

  if (v1 == 2)
  {
    return 0x6C7469746E656E75;
  }

  if (v1 == 1)
  {
    return 0x64656C7469746E65;
  }

  v3 = *v0;
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCEA04(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701147238 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C7469746E65 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7469746E656E75 && a2 == 0xEA00000000006465)
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
      return 0;
    }
  }
}

unint64_t sub_1D8FCEB3C()
{
  result = qword_1ECAB87C0;
  if (!qword_1ECAB87C0)
  {
    type metadata accessor for MTEpisodeEntitlementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87C0);
  }

  return result;
}

uint64_t MTEpisodePubDateLimit.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x68746E6F4D656E6FLL;
    }

    if (a1 == 3)
    {
      return 0x74696D694C6F6ELL;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6B656557656E6FLL;
    }

    if (a1 == 1)
    {
      return 0x736B6565576F7774;
    }
  }

  type metadata accessor for MTEpisodePubDateLimit(0);
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D8FCEC54()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x6B656557656E6FLL;
    }

    if (v1 == 1)
    {
      return 0x736B6565576F7774;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x68746E6F4D656E6FLL;
  }

  if (v1 != 3)
  {
LABEL_11:
    v3 = *v0;
    result = sub_1D9179C9C();
    __break(1u);
    return result;
  }

  return 0x74696D694C6F6ELL;
}

uint64_t MTEpisodeType.helperEpisodeType.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

id static MTEpisode.fetchRequestForMostPlayedShows(since:)(uint64_t a1)
{
  v38[1] = a1;
  v1 = sub_1D9176E3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v6 = swift_allocObject();
  v39 = xmmword_1D9189080;
  *(v6 + 16) = xmmword_1D9189080;
  v7 = objc_opt_self();
  v8 = [v7 expressionForKeyPath_];
  *(v6 + 56) = sub_1D8CF2154(0, &qword_1ECAAFE28, 0x1E696ABC8);
  *(v6 + 32) = v8;
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v10 = sub_1D91785DC();

  v11 = [v7 expressionForFunction:v9 arguments:v10];

  v12 = [objc_allocWithZone(MEMORY[0x1E695D5C8]) init];
  [v12 setExpression_];
  v13 = v12;
  v14 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v13 setName_];

  [v13 setExpressionResultType_];
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D918C190;
  v17 = objc_opt_self();
  sub_1D9176E0C();
  sub_1D9176D0C();
  v19 = v18;
  (*(v2 + 8))(v5, v1);
  *(v16 + 32) = [v17 predicateForAtLeastPartiallyPlayedInInterval_];
  *(v16 + 40) = [v17 predicateForPodcastIsSubscribed_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v20 = sub_1D91785DC();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v15 setPredicate_];
  v22 = swift_allocObject();
  *(v22 + 16) = v39;
  v23 = sub_1D917820C();
  v24 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  v26 = sub_1D91785DC();

  [v15 setPropertiesToGroupBy_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D918A530;
  v28 = sub_1D917820C();
  *(v27 + 56) = v24;
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  *(v27 + 88) = sub_1D8CF2154(0, &qword_1ECAB87C8, 0x1E695D5C8);
  *(v27 + 64) = v13;
  v30 = v13;
  v31 = sub_1D91785DC();

  [v15 setPropertiesToFetch_];

  [v15 setResultType_];
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D9189070;
  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v35 = [v33 initWithKey:v34 ascending:0];

  *(v32 + 32) = v35;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v36 = sub_1D91785DC();

  [v15 setSortDescriptors_];

  return v15;
}

uint64_t sub_1D8FCF2AC()
{
  result = sub_1D8E30068(&unk_1F5460FE8);
  qword_1ECAB87D0 = &unk_1F5461060;
  return result;
}

uint64_t static MTPodcastEpisodeLimit.allShowSettingsCases.getter()
{
  if (qword_1ECAB3688 != -1)
  {
    swift_once();
  }
}

void MTPodcastEpisodeLimit.countValue(in:completionHandler:)(void *a1, void (*a2)(uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 1;
  if (a4 <= 5)
  {
    if (a4 > 2)
    {
      if (a4 != 3)
      {
        v8 = 0;
        if (a4 == 4)
        {
          v7 = 5;
        }

        else
        {
          v7 = 10;
        }

        goto LABEL_36;
      }
    }

    else
    {
      if (!a4)
      {
        goto LABEL_36;
      }

      if (a4 != 1 && a4 != 2)
      {
        goto LABEL_37;
      }
    }

    v8 = 0;
    v7 = a4;
    goto LABEL_36;
  }

  if (a4 <= 8)
  {
    if (a4 == 6)
    {
      v9 = a1;
      v10 = &selRef_predicateForEpisodesPublishedToday;
    }

    else
    {
      v9 = a1;
      if (a4 == 7)
      {
        v10 = &selRef_predicateForEpisodesPublishedThisWeek;
      }

      else
      {
        v10 = &selRef_predicateForEpisodesPublishedLastTwoWeeks;
      }
    }

LABEL_27:
    v7 = [objc_opt_self() *v10];
    if (v7)
    {
      v18 = v7;
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a2;
      v19[4] = a3;
      v19[5] = v9;
      v23[4] = sub_1D8FD3BA4;
      v23[5] = v19;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_1D8CF5F60;
      v23[3] = &block_descriptor_56;
      v20 = _Block_copy(v23);
      v21 = v18;

      v22 = v9;

      [v22 performBlock_];
      _Block_release(v20);

      return;
    }

LABEL_35:
    v8 = 1;
    goto LABEL_36;
  }

  if (a4 > 0xFFFFFFFFLL)
  {
    if (a4 == 0x100000001)
    {
      v11 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
      v12 = [v11 episodeLimitForKey_];

      if (v12 == 0x100000001)
      {
        if (qword_1EDCD0F18 != -1)
        {
          swift_once();
        }

        v13 = sub_1D917744C();
        __swift_project_value_buffer(v13, qword_1EDCD0F20);
        v14 = sub_1D917741C();
        v15 = sub_1D9178CFC();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1D8CEC000, v14, v15, "Episode global default set as global default, which is unresolvable.", v16, 2u);
          MEMORY[0x1DA72CB90](v16, -1, -1);
        }

        sub_1D8FD3B50();
        v17 = swift_allocError();
        a2(0, 1, v17);

        v8 = 1;
        v7 = 0;
        goto LABEL_36;
      }

      MTPodcastEpisodeLimit.countValue(in:completionHandler:)(a1, a2, a3, v12);
      v7 = 0;
      goto LABEL_35;
    }

    if (a4 != 0x100000000)
    {
      goto LABEL_37;
    }

    v7 = 0;
    v8 = 0;
LABEL_36:
    a2(v7, v8, 0);
    return;
  }

  if (a4 == 9)
  {
    v9 = a1;
    v10 = &selRef_predicateForEpisodesPublishedThisMonth;
    goto LABEL_27;
  }

  if (a4 == 0xFFFFFFFFLL)
  {
    goto LABEL_36;
  }

LABEL_37:
  type metadata accessor for MTPodcastEpisodeLimit(0);
  sub_1D9179C9C();
  __break(1u);
}

void MTPodcastEpisodeLimit.countEpisodes(matching:in:completionHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a2;
  v12[4] = sub_1D8FD44CC;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_7_1;
  v9 = _Block_copy(v12);
  v10 = a1;

  v11 = a2;

  [v11 performBlock_];
  _Block_release(v9);
}

void sub_1D8FD0064(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x1E69E9840];
  sub_1D8FD43E4();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v7 setPredicate_];
  v12[0] = 0;
  v8 = [a4 countForFetchRequest:v7 error:v12];
  v9 = v12[0];
  if (v12[0])
  {
    swift_willThrow();
    v10 = v9;
    (a2)(0, 1, v9);
  }

  else
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    a2();
  }

  v11 = *MEMORY[0x1E69E9840];
}

BOOL sub_1D8FD017C(char *a1)
{
  v1 = a1;
  while (v1 == 0x100000001)
  {
    v2 = [objc_opt_self() _applePodcastsFoundationSettingsUserDefaults];
    v1 = [v2 episodeLimitForKey_];
  }

  return (v1 - 1) < 5;
}

id MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest.getter(uint64_t a1)
{
  v1 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v2 setPredicate_];

  return v2;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedAutomaticallyDownloadedEpisodes.getter(uint64_t a1)
{
  if (([objc_opt_self() isPodcastsApp] & 1) == 0 && !objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    return 0;
  }

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v11 = 0;
  v4 = swift_allocObject();
  v4[2] = &v11;
  v4[3] = v3;
  v4[4] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D8FD3BB0;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1D8D24508;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_16;
  v6 = _Block_copy(aBlock);
  v7 = v3;

  [v7 performBlockAndWait_];

  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    v9 = v11;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1D8FD049C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a3 excludeHidden:0];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];

  sub_1D8FD43E4();
  v6 = sub_1D917907C();

  *a1 = v6;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedAutomaticallyDownloadedEpisodes()(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D917906C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD0798, 0, 0);
}

uint64_t sub_1D8FD0798()
{
  if (([objc_opt_self() isPodcastsApp] & 1) != 0 || objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    v2 = v0[5];
    v1 = v0[6];
    v4 = v0[3];
    v3 = v0[4];
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 mainOrPrivateContext];
    v0[7] = v6;

    v7 = swift_allocObject();
    v0[8] = v7;
    *(v7 + 16) = v6;
    *(v7 + 24) = v4;
    (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
    v8 = *(MEMORY[0x1E695D2C0] + 4);
    v6;
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_1D8FD0980;
    v10 = v0[6];
    v11 = MEMORY[0x1E69E6530];

    return MEMORY[0x1EEDB6538](v0 + 2, v10, sub_1D8FD3BBC, v7, v11);
  }

  else
  {
    v12 = v0[6];

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1D8FD0980()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = v2[8];
  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {
    (*(v7 + 8))(v2[6], v2[4]);

    v9 = sub_1D8FD0BB0;
  }

  else
  {
    v10 = v2[8];

    (*(v7 + 8))(v6, v8);
    v9 = sub_1D8FD0B34;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1D8FD0B34()
{
  v1 = *(v0 + 16);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 48);

    v3 = *(v0 + 8);

    v3(v1);
  }
}

uint64_t sub_1D8FD0BB0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 80);

  return v2();
}

void sub_1D8FD0C1C(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v5 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v5 setPredicate_];

  sub_1D8FD43E4();
  v6 = sub_1D917907C();

  if (!v2)
  {
    *a2 = v6;
  }
}

uint64_t MTPodcastEpisodeLimit.objectIDsForAutomaticallyDownloadedEpisodesExcludedByGlobalSettings.getter(uint64_t a1)
{
  v2 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:a1 excludeHidden:0];
  v3 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v3 setPredicate_];

  v4 = sub_1D8FD0DA0(v3, a1);
  return v4;
}

uint64_t sub_1D8FD0DA0(void *a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (([objc_opt_self() isPodcastsApp] & 1) == 0 && !objc_msgSend(objc_opt_self(), sel_canExtensionOpenDatabase))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = &v15;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D8FD44A8;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_84_0;
  v8 = _Block_copy(aBlock);
  v9 = v5;
  v10 = a1;

  [v9 performBlockAndWait_];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v13 = v15;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t MTPodcastEpisodeLimit.persistentIDsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD1060, 0, 0);
}

uint64_t sub_1D8FD1060()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:v0[4] excludeHidden:0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v6;
  [v6 setPredicate_];

  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = *(MEMORY[0x1E695D2C0] + 4);
  v9 = v4;
  v10 = v6;
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB87E0, &qword_1D91A3618);
  *v11 = v0;
  v11[1] = sub_1D8FD120C;
  v13 = v0[7];
  v14 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v13, sub_1D8FD3BD8, v7, v12);
}

uint64_t sub_1D8FD120C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1D8FD44BC;
  }

  else
  {
    v7 = sub_1D8FD44C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

unint64_t sub_1D8FD13A0@<X0>(char **a1@<X8>)
{
  sub_1D8FD43E4();
  result = sub_1D917908C();
  if (!v1)
  {
    v4 = result;
    if (result >> 62)
    {
      v5 = sub_1D917935C();
      if (v5)
      {
LABEL_4:
        v23 = MEMORY[0x1E69E7CC0];
        result = sub_1D8E3148C(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          return result;
        }

        v6 = v23;
        if ((v4 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v5; ++i)
          {
            v8 = [MEMORY[0x1DA72AA90](i v4)];
            swift_unknownObjectRelease();
            v10 = *(v23 + 16);
            v9 = *(v23 + 24);
            if (v10 >= v9 >> 1)
            {
              sub_1D8E3148C((v9 > 1), v10 + 1, 1);
            }

            *(v23 + 16) = v10 + 1;
            *(v23 + 8 * v10 + 32) = v8;
          }
        }

        else
        {
          v11 = 32;
          do
          {
            v12 = [*(v4 + v11) persistentID];
            v14 = *(v23 + 16);
            v13 = *(v23 + 24);
            if (v14 >= v13 >> 1)
            {
              v15 = v12;
              sub_1D8E3148C((v13 > 1), v14 + 1, 1);
              v12 = v15;
            }

            *(v23 + 16) = v14 + 1;
            *(v23 + 8 * v14 + 32) = v12;
            v11 += 8;
            --v5;
          }

          while (v5);
        }

        v16 = *(v23 + 16);
        if (v16)
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v6 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v16)
    {
LABEL_16:
      v17 = (v6 + 32);
      v18 = MEMORY[0x1E69E7CC0];
      do
      {
        v20 = *v17++;
        v19 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D8ECD368(0, *(v18 + 2) + 1, 1, v18);
          }

          v22 = *(v18 + 2);
          v21 = *(v18 + 3);
          if (v22 >= v21 >> 1)
          {
            v18 = sub_1D8ECD368((v21 > 1), v22 + 1, 1, v18);
          }

          *(v18 + 2) = v22 + 1;
          *&v18[8 * v22 + 32] = v19;
        }

        --v16;
      }

      while (v16);
      goto LABEL_27;
    }

LABEL_26:
    v18 = MEMORY[0x1E69E7CC0];
LABEL_27:

    *a1 = v18;
  }

  return result;
}

uint64_t MTPodcastEpisodeLimit.assetURLsForAutoDownloadEpisodesExcludedByGlobalLimit(in:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1D917906C();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD16F0, 0, 0);
}

uint64_t sub_1D8FD16F0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = [objc_opt_self() predicateForAutomaticallyDownloadedEpisodesExcludedByGlobalLimitSettings:v0[4] excludeHidden:0];
  v6 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v6;
  [v6 setPredicate_];

  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v6;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v8 = *(MEMORY[0x1E695D2C0] + 4);
  v9 = v4;
  v10 = v6;
  v11 = swift_task_alloc();
  v0[10] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
  *v11 = v0;
  v11[1] = sub_1D8FD189C;
  v13 = v0[7];
  v14 = v0[3];

  return MEMORY[0x1EEDB6538](v0 + 2, v13, sub_1D8FD3BF4, v7, v12);
}

uint64_t sub_1D8FD189C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_1D8FD1AA4;
  }

  else
  {
    v7 = sub_1D8FD1A30;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D8FD1A30()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D8FD1AA4()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

unint64_t sub_1D8FD1B10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v49 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8FD43E4();
  result = sub_1D917908C();
  if (!v1)
  {
    v53 = v6;
    v54 = v11;
    v52 = v7;
    v49[1] = 0;
    if (result >> 62)
    {
      goto LABEL_41;
    }

    v13 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v50 = v8;
    v49[0] = a1;
    if (v13)
    {
      v14 = result;
      v56 = MEMORY[0x1E69E7CC0];
      result = sub_1D8E316C0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        __break(1u);
        return result;
      }

      v15 = v56;
      v16 = v14;
      v55 = v14;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = 0;
        do
        {
          MEMORY[0x1DA72AA90](v17, v16);
          v18 = [swift_unknownObjectRetain() assetURL];
          if (v18)
          {
            v19 = v18;
            v20 = sub_1D917820C();
            v22 = v21;
            swift_unknownObjectRelease_n();
          }

          else
          {
            swift_unknownObjectRelease_n();
            v20 = 0;
            v22 = 0;
          }

          v56 = v15;
          v24 = v15[2];
          v23 = v15[3];
          if (v24 >= v23 >> 1)
          {
            sub_1D8E316C0((v23 > 1), v24 + 1, 1);
            v15 = v56;
          }

          ++v17;
          v15[2] = v24 + 1;
          v25 = &v15[2 * v24];
          v25[4] = v20;
          v25[5] = v22;
          v16 = v55;
        }

        while (v13 != v17);
      }

      else
      {
        v26 = 4;
        do
        {
          v27 = v16[v26];
          v28 = [v27 assetURL];
          if (v28)
          {
            v29 = v28;
            v30 = sub_1D917820C();
            v32 = v31;
          }

          else
          {

            v30 = 0;
            v32 = 0;
          }

          v56 = v15;
          v34 = v15[2];
          v33 = v15[3];
          if (v34 >= v33 >> 1)
          {
            sub_1D8E316C0((v33 > 1), v34 + 1, 1);
            v15 = v56;
          }

          v15[2] = v34 + 1;
          v35 = &v15[2 * v34];
          v35[4] = v30;
          v35[5] = v32;
          ++v26;
          --v13;
          v16 = v55;
        }

        while (v13);
      }

      v8 = v50;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    v36 = v15[2];
    v37 = v52;
    a1 = v53;
    if (v36)
    {
      v38 = 0;
      v39 = (v8 + 6);
      v55 = (v8 + 4);
      v51 = (v8 + 7);
      v8 = v15 + 5;
      v40 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v38 >= v15[2])
        {
          __break(1u);
LABEL_41:
          v48 = result;
          v13 = sub_1D917935C();
          result = v48;
          goto LABEL_4;
        }

        if (*v8)
        {
          v41 = *(v8 - 1);
          v42 = *v8;

          sub_1D9176BFC();

          if ((*v39)(a1, 1, v37) != 1)
          {
            v43 = v37;
            v44 = *v55;
            (*v55)(v54, a1, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1D8ECC9D4(0, *(v40 + 2) + 1, 1, v40);
            }

            v46 = *(v40 + 2);
            v45 = *(v40 + 3);
            if (v46 >= v45 >> 1)
            {
              v40 = sub_1D8ECC9D4(v45 > 1, v46 + 1, 1, v40);
            }

            *(v40 + 2) = v46 + 1;
            v47 = v52;
            result = v44(&v40[((*(v50 + 80) + 32) & ~*(v50 + 80)) + v50[9] * v46], v54, v52);
            v37 = v47;
            a1 = v53;
            goto LABEL_28;
          }
        }

        else
        {
          (*v51)(a1, 1, 1, v37);
        }

        result = sub_1D8E677CC(a1);
LABEL_28:
        ++v38;
        v8 += 2;
        if (v36 == v38)
        {
          goto LABEL_38;
        }
      }
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_38:

    *v49[0] = v40;
  }

  return result;
}

uint64_t MTPodcastEpisodeLimit.objectIDsForAutomaticallyDownloadedEpisodesExcludedByShowSettings(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest(uuid:)(a1, a2, a3);
  v5 = sub_1D8FD0DA0(v4, a3);

  return v5;
}

id MTPodcastEpisodeLimit.excludedAutomaticallyDownloadedEpisodesFetchRequest(uuid:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = [v4 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:a3 excludeHidden:0];
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v4 predicateForDownloadedEpisodesOnPodcastUuid_];

  v8 = [v5 AND_];
  v9 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v10 = v8;
  v11 = [v9 initWithEntityName_];
  [v11 setPredicate_];

  return v11;
}

void sub_1D8FD214C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1D8FD43E4();
  v4 = sub_1D917908C();
  v14 = v4;
  v24 = a3;
  v26 = MEMORY[0x1E69E7CC0];
  v15 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    v16 = sub_1D917935C();
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (v16 != v17)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1DA72AA90](v17, v14);
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_24;
      }

      v18 = *(v14 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      swift_once();
      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1EDCD0F88);
      v6 = 0;
      v7 = sub_1D917741C();
      v8 = sub_1D9178CFC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v26 = v10;
        *v9 = 134218242;
        *(v9 + 4) = v16;
        *(v9 + 12) = 2080;
        swift_getErrorValue();
        v11 = sub_1D9179D2C();
        v13 = sub_1D8CFA924(v11, v12, &v26);

        *(v9 + 14) = v13;
        _os_log_impl(&dword_1D8CEC000, v7, v8, "Couldn't fetch episode object IDs for MTPodcastEpisodeLimit of %lld: %s.", v9, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1DA72CB90](v10, -1, -1);
        MEMORY[0x1DA72CB90](v9, -1, -1);
      }

      else
      {
      }

      return;
    }

    v21 = [v18 objectID];

    ++v17;
    if (v21)
    {
      MEMORY[0x1DA729B90]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      v25 = v26;
      v17 = v20;
    }
  }

  v23 = *v24;
  *v24 = v25;
}

Swift::Int __swiftcall MTPodcastEpisodeLimit.numberOfExcludedDownloadedEpisodes(from:)(Swift::String from)
{
  v2 = v1;
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  if (os_feature_enabled_serial_sort_auto_downloads())
  {
    v7 = 0;
    v8 = v2;
LABEL_11:
    v15 = objc_opt_self();
    v16 = [v15 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:v8 excludeHidden:0];
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v18 = [v15 predicateForDownloadedEpisodesOnPodcastUuid_];

    v19 = [v16 AND_];
    v20 = sub_1D8FD27D4(v19, v2);

    sub_1D8D15664(v7);
    return v20;
  }

  v22 = 0;
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = countAndFlagsBits;
  v9[4] = object;
  v9[5] = &v22;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D8FD3C10;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_41_0;
  v11 = _Block_copy(aBlock);
  v12 = v6;

  [v12 performBlockAndWait_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v14 = 0;
    }

    else
    {
      v14 = 0x100000001;
    }

    if (v2 == 0x100000001)
    {
      v8 = v14;
    }

    else
    {
      v8 = v2;
    }

    v7 = sub_1D8FD3C10;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1D8FD274C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [a1 podcastForUuid_];

  if (v7)
  {
    v8 = [v7 isSerialShowTypeInFeed];
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_1D8FD27D4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v4 setPredicate_];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v15 = 0;
  v7 = swift_allocObject();
  v7[2] = &v15;
  v7[3] = v6;
  v7[4] = v4;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8FD449C;
  *(v8 + 24) = v7;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_74_1;
  v9 = _Block_copy(aBlock);
  v10 = v6;
  v11 = v4;

  [v10 performBlockAndWait_];

  _Block_release(v9);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = v15;

    return v13;
  }

  return result;
}

uint64_t MTPodcastEpisodeLimit.numberOfExcludedDownloadedEpisodes(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1D8FD2A80;

  return sub_1D8FD2F08(a1, a2, a3);
}

uint64_t sub_1D8FD2A80(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D8FD2BCC, 0, 0);
  }
}

uint64_t sub_1D8FD2BCC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = objc_opt_self();
  v5 = [v4 predicateForAutomaticallyDownloadedEpisodesExcludedByShowLimitSettings:v1 excludeHidden:0];
  v0[6] = v5;
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7 = [v4 predicateForDownloadedEpisodesOnPodcastUuid_];
  v0[7] = v7;

  v8 = [v5 AND_];
  v0[8] = v8;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1D8FD2CFC;

  return sub_1D8FD3C1C(v8);
}

uint64_t sub_1D8FD2CFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_1D8FD2E98;
  }

  else
  {

    *(v4 + 88) = a1;
    v7 = sub_1D8FD2E2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D8FD2E2C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2(v3);
}

uint64_t sub_1D8FD2E98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 80);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D8FD2F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1D917906C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD2FCC, 0, 0);
}

uint64_t sub_1D8FD2FCC()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 mainOrPrivateContext];
  v0[8] = v2;

  if (os_feature_enabled_serial_sort_auto_downloads())
  {

    v3 = v0[4];
    v4 = v0[7];

    v5 = v0[1];

    return v5(v3);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_allocObject();
    v0[9] = v12;
    v12[2] = v2;
    v12[3] = v11;
    v12[4] = v10;
    (*(v8 + 104))(v7, *MEMORY[0x1E695D2B8], v9);
    v13 = *(MEMORY[0x1E695D2C0] + 4);
    v2;

    v14 = swift_task_alloc();
    v0[10] = v14;
    *v14 = v0;
    v14[1] = sub_1D8FD31A8;
    v15 = v0[7];
    v16 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEDB6538](v0 + 11, v15, sub_1D8FD447C, v12, v16);
  }
}

void sub_1D8FD31A8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[9];
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[5];

    (*(v7 + 8))(v6, v8);

    MEMORY[0x1EEE6DFA0](sub_1D8FD3304, 0, 0);
  }
}

uint64_t sub_1D8FD3304()
{
  v1 = *(v0 + 32);

  if (v1 == 0x100000001)
  {
    if (*(v0 + 88))
    {
      v2 = 0;
    }

    else
    {
      v2 = 0x100000001;
    }
  }

  else
  {
    v2 = *(v0 + 32);
  }

  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4(v2);
}

void sub_1D8FD3398(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a1 podcastForUuid_];

  if (v5)
  {
    v6 = [v5 isSerialShowTypeInFeed];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
}

uint64_t sub_1D8FD3428(uint64_t *a1)
{
  sub_1D8FD43E4();
  result = sub_1D917907C();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FD35F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8FD43E4();
  result = sub_1D917907C();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MTPodcast.currentEpisodeLimitAllowsAutomaticDownloads.getter()
{
  v1 = [v0 episodeLimit];

  return MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter(v1);
}

id MTPodcast.currentEpisodeLimitIsNextNEpisodes.getter()
{
  result = [v0 isSerialShowTypeInFeed];
  if (result)
  {
    v2 = [v0 episodeLimit];

    return sub_1D8FD017C(v2);
  }

  return result;
}

id PodcastEpisodeLimitHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PodcastEpisodeLimitHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastEpisodeLimitHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PodcastEpisodeLimitHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastEpisodeLimitHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t AutoDownloadSettingPresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8FD395C(_BYTE *a1, uint64_t a2)
{
  if (!*a1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    if (qword_1EDCD5F00 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (qword_1EDCD5F00 != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_8:
  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1D9189080;
  v5 = MEMORY[0x1E69E65A8];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a2;
  v6 = sub_1D91781DC();

  return v6;
}

unint64_t sub_1D8FD3B50()
{
  result = qword_1ECAB87D8;
  if (!qword_1ECAB87D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87D8);
  }

  return result;
}

unint64_t sub_1D8FD3BD8@<X0>(char **a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8FD13A0(a1);
}

unint64_t sub_1D8FD3BF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D8FD1B10(a1);
}

uint64_t sub_1D8FD3C1C(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1D917906C();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8FD3CDC, 0, 0);
}

uint64_t sub_1D8FD3CDC()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];
  v0[7] = v6;

  v7 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v0[8] = v7;
  [v7 setPredicate_];
  v8 = swift_allocObject();
  v0[9] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E695D2B8], v3);
  v9 = *(MEMORY[0x1E695D2C0] + 4);
  v6;
  v10 = v7;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1D8FD3E8C;
  v12 = v0[6];
  v13 = MEMORY[0x1E69E6530];

  return MEMORY[0x1EEDB6538](v0 + 2, v12, sub_1D8FD43C8, v8, v13);
}

uint64_t sub_1D8FD3E8C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[9];
  v6 = v2[6];
  v7 = v2[5];
  v8 = v2[4];
  if (v0)
  {
    (*(v7 + 8))(v2[6], v2[4]);

    v9 = sub_1D8FD40C0;
  }

  else
  {
    v10 = v2[9];

    (*(v7 + 8))(v6, v8);
    v9 = sub_1D8FD4040;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

void sub_1D8FD4040()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v0 + 48);

    v4 = *(v0 + 8);

    v4(v2);
  }
}

uint64_t sub_1D8FD40C0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);
  v4 = *(v0 + 88);

  return v3();
}

id _s18PodcastsFoundation25PodcastEpisodeLimitHelperC15allGlobalLimitsSo5NSSetCvgZ_0()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1D91795CC();
  v0 = 0x20u;
  do
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    sub_1D917959C();
    v1 = *(v6 + 16);
    sub_1D91795DC();
    sub_1D91795EC();
    sub_1D91795AC();
    v0 += 8;
  }

  while (v0 != 120);
  sub_1D8F61220(v6);

  v2 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v3 = sub_1D91785DC();

  v4 = [v2 initWithArray_];

  return v4;
}

unint64_t sub_1D8FD4294()
{
  result = qword_1ECAB87E8;
  if (!qword_1ECAB87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87E8);
  }

  return result;
}

unint64_t sub_1D8FD42EC()
{
  result = qword_1ECAB87F0;
  if (!qword_1ECAB87F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB87F8, &qword_1D91A36E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB87F0);
  }

  return result;
}