uint64_t sub_1A42DDC54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A42DDD28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**v2 + 152))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A42DDD78()
{
  result = PhotoKitItem<>.keyAssets.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  v3 = result;
  v4 = sub_1A524E2B4();
  result = v3;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1A59097F0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v1 = *(result + 32);
LABEL_6:
    v2 = v1;

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42DDE24(char a1)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v26 - v9;
  v11 = *(v1 + 16);
  v12 = [v11 startDate];
  if (!v12)
  {
    v18 = [v11 localizedTitle];
    if (!v18)
    {
      v18 = [v11 localizedSubtitle];
      if (!v18)
      {
        return 4271950;
      }
    }

    v19 = v18;
    v20 = sub_1A524C674();

    return v20;
  }

  v13 = v12;
  sub_1A52410F4();

  (*(v4 + 32))(v10, v6, v3);
  v14 = [v11 kind];
  switch(v14)
  {
    case 2u:
      v23 = [v11 localizedTitle];
      if (!v23)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    case 1u:
      if (sub_1A3DBEE68(a1 & 1, 1))
      {
        if (qword_1EB163FD0 != -1)
        {
          swift_once();
        }

        v21 = qword_1EB163FD8;
        v16 = sub_1A5241074();
        v17 = [v21 stringFromDate_];
        goto LABEL_15;
      }

      v23 = [v11 localizedSubtitle];
      if (!v23)
      {
LABEL_20:
        v20 = 0;
        goto LABEL_21;
      }

LABEL_17:
      v24 = v23;
      v20 = sub_1A524C674();

      goto LABEL_21;
    case 0u:
      if (qword_1EB163FC0 != -1)
      {
        swift_once();
      }

      v15 = qword_1EB163FC8;
      v16 = sub_1A5241074();
      v17 = [v15 stringFromDate_];
LABEL_15:
      v22 = v17;

      v20 = sub_1A524C674();
LABEL_21:
      (*(v4 + 8))(v10, v3);
      return v20;
  }

  (*(v4 + 8))(v10, v3);
  return 0;
}

uint64_t sub_1A42DE1A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A42DE7AC();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_1A42DE440(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A42DE1A4(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A42DE648();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

unint64_t sub_1A42DE5CC()
{
  result = qword_1EB13C610;
  if (!qword_1EB13C610)
  {
    sub_1A42DD2F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13C610);
  }

  return result;
}

void *sub_1A42DE648()
{
  v1 = v0;
  sub_1A42DE7AC();
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
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
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

void sub_1A42DE7AC()
{
  if (!qword_1EB137830)
  {
    sub_1A42DD2F8();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137830);
    }
  }
}

uint64_t sub_1A42DE824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A42DE99C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1A42DE888()
{
  sub_1A42DE8C4();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A42DE8C4()
{
  result = qword_1EB18F270[0];
  if (!qword_1EB18F270[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB18F270);
  }

  return result;
}

double sub_1A42DE954()
{
  v0 = shouldUseNewCollectionsLayout()();
  result = 8.0;
  if (v0)
  {
    return 2.0;
  }

  return result;
}

unint64_t sub_1A42DE99C()
{
  result = qword_1EB137838;
  if (!qword_1EB137838)
  {
    sub_1A42DEA14();
    sub_1A3E760D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137838);
  }

  return result;
}

void sub_1A42DEA14()
{
  if (!qword_1EB1258E8)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1258E8);
    }
  }
}

Swift::Void __swiftcall PHPhotoLibrary.flushBookmarksManager()()
{
  if (qword_1EB184A80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1A42E2A94(v0);
  swift_endAccess();
}

void LemonadeBookmarksManager.__allocating_init(photoLibrary:dataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  sub_1A42E3520(a1, v6, v2, v4, v5);
}

void LemonadeBookmarksManager.init(photoLibrary:dataSource:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  sub_1A42E2F5C(a1, v9, v2, v4, v5);
}

void LemonadeBookmarksManager.deinit()
{
  if (*(v0 + 88))
  {

    sub_1A524CD94();
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  sub_1A5245EC4();
}

uint64_t sub_1A42DEDE0()
{
  sub_1A3C2A340(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v29 - v2;
  sub_1A42E3F7C(0, &qword_1EB137840, MEMORY[0x1E69E8210]);
  v30 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  sub_1A524CC54();

  v12 = v11;
  v13 = sub_1A524CC44();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v12;
  v16 = v9;
  v29 = v9;
  sub_1A5241644();
  v17 = sub_1A524CCB4();
  v18 = v3;
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v19 = swift_allocObject();
  v20 = v0;
  swift_weakInit();
  v21 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v30;
  (*(v5 + 16))(v21, v16, v30);

  v23 = sub_1A524CC44();
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  *(v26 + 24) = MEMORY[0x1E69E85E0];
  (*(v5 + 32))(v26 + v24, v21, v22);
  *(v26 + v25) = v19;

  v27 = sub_1A3D4D930(0, 0, v18, &unk_1A532DED8, v26);
  (*(v5 + 8))(v29, v22);
  *(v20 + 88) = v27;
}

uint64_t sub_1A42DF140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1A42E3F7C(0, &qword_1EB137848, MEMORY[0x1E69E8200]);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = sub_1A524CC54();
  v5[12] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A42DF254, v8, v7);
}

uint64_t sub_1A42DF254()
{
  sub_1A42E3F7C(0, &qword_1EB137840, MEMORY[0x1E69E8210]);
  sub_1A5241624();
  swift_beginAccess();
  v1 = sub_1A524CC44();
  v0[15] = v1;
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1A42DF360;
  v3 = v0[8];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6CEB0](v0 + 17, v1, v4, v3);
}

uint64_t sub_1A42DF360()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 104);
    v5 = *(v2 + 112);

    return MEMORY[0x1EEE6DFA0](sub_1A42DF474, v4, v5);
  }

  return result;
}

uint64_t sub_1A42DF474()
{
  v1 = *(v0 + 136) | (*(v0 + 138) << 16);
  if (*(v0 + 136) == 2)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = Strong[80];
      v7 = Strong[81];
      v8 = Strong[82];
      Strong[80] = v1 & 1;
      Strong[81] = (v1 & 0x100) >> 8;
      Strong[82] = (v1 & 0x10000u) >> 16;
      if (((v6 ^ v1) & 1) != 0 || ((((v1 & 0x100) == 0) ^ v7) & 1) == 0 || ((((v1 & 0x10000) == 0) ^ v8) & 1) == 0)
      {
        v9 = (*(*Strong + 328))(Strong);
        v10 = *(v5 + 5);
        v11 = *(v5 + 6);
        __swift_project_boxed_opaque_existential_1(v5 + 2, v10);
        if ((*(v11 + 64))(v10, v11))
        {
          v12 = sub_1A42E3FE4(v9);
          if ((v5[81] & 1) == 0)
          {
            v13 = sub_1A42E44FC(v12);

            v12 = v13;
          }

          if ((v5[82] & 1) == 0)
          {
            v14 = sub_1A42E4804(v12);

            v12 = v14;
          }

          if ((v5[80] & 1) == 0)
          {
            v15 = sub_1A3C9D24C(v12);

            v12 = v15;
          }

          *(v0 + 40) = v5;
          *(swift_allocObject() + 16) = v12;
          type metadata accessor for LemonadeBookmarksManager(0);
          sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
          sub_1A5245F44();
        }

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    v16 = sub_1A524CC44();
    *(v0 + 120) = v16;
    v17 = swift_task_alloc();
    *(v0 + 128) = v17;
    *v17 = v0;
    v17[1] = sub_1A42DF360;
    v18 = *(v0 + 64);
    v19 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6CEB0](v0 + 136, v16, v19, v18);
  }
}

void sub_1A42DF7EC(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  (*(*v1 + 432))();

  swift_beginAccess();
  sub_1A5245EC4();
}

uint64_t sub_1A42DF8D4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 40))(v1, v2);
  v4 = sub_1A42DF948(v3);

  return v4;
}

uint64_t sub_1A42DF948(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = a1 + v19;
  v13 = *(v8 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1A3C5820C(v12, v10, type metadata accessor for LemonadeBookmark);
    if ((*(*v2 + 368))(v10))
    {
      sub_1A3C5921C(v10, v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C58754(0, *(v14 + 16) + 1, 1);
        v14 = v20;
      }

      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1A3C58754(v16 > 1, v17 + 1, 1);
        v14 = v20;
      }

      *(v14 + 16) = v17 + 1;
      sub_1A3C5921C(v6, v14 + v19 + v17 * v13);
    }

    else
    {
      sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
    }

    v12 += v13;
    --v11;
  }

  while (v11);
  return v14;
}

uint64_t sub_1A42DFB6C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmark(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = sub_1A3C5820C(a1 + *(v4 + 32), v28 - v12, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
  if ((v1[81] & 1) == 0)
  {
    v15 = *MEMORY[0x1E69C1268];
    v16 = sub_1A5244EB4();
    (*(*(v16 - 8) + 104))(v10, v15, v16);
    swift_storeEnumTagMultiPayload();
    LOBYTE(v15) = sub_1A3CA1BC0(v13, v10);
    v14 = sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v15)
    {
      goto LABEL_17;
    }
  }

  if ((v1[80] & 1) == 0)
  {
    v30 = *(a1 + 16);
    v29 = 8;
    sub_1A3C3BE04();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v28[3] == v28[1] && v28[4] == v28[2])
    {

      goto LABEL_17;
    }

    v27 = sub_1A524EAB4();

    if (v27)
    {
      goto LABEL_17;
    }
  }

  if ((v1[82] & 1) == 0)
  {
    *v10 = sub_1A524C674();
    v10[1] = v23;
    swift_storeEnumTagMultiPayload();
    v24 = sub_1A3CA1BC0(v13, v10);
    sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v24 & 1) != 0 || (*v10 = sub_1A524C674(), v10[1] = v25, swift_storeEnumTagMultiPayload(), v26 = sub_1A3CA1BC0(v13, v10), v14 = sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark.CollectionIdentifier), (v26))
    {
LABEL_17:
      sub_1A3C58334(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      return 0;
    }
  }

  result = (*(*v1 + 328))(v14);
  v18 = result;
  v19 = 0;
  v20 = *(result + 16);
  while (1)
  {
    v21 = v20 == v19;
    if (v20 == v19)
    {
LABEL_9:
      sub_1A3C58334(v13, type metadata accessor for LemonadeBookmark.CollectionIdentifier);

      return v21;
    }

    if (v19 >= *(v18 + 16))
    {
      break;
    }

    sub_1A3C5820C(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19++, v7, type metadata accessor for LemonadeBookmark);
    v22 = sub_1A3F9D0E8(a1);
    result = sub_1A3C58334(v7, type metadata accessor for LemonadeBookmark);
    if (v22)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1A42DFFA4()
{
  if (qword_1EB1847A0 != -1)
  {
    swift_once();
  }

  px_dispatch_queue_wait();
}

uint64_t sub_1A42E00F0()
{
  v1 = sub_1A524BEE4();
  v17 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v15 = *(v4 - 8);
  v16 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v9 = (*(v8 + 24))(v7, v8);
  if (qword_1EB1847A0 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  aBlock[4] = sub_1A42E3628;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_152;
  v12 = _Block_copy(aBlock);

  sub_1A524BF14();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1A3C49B90(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1A3C2A340(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB12B1B0, &qword_1EB12B1C0, v13);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v12);
  _Block_release(v12);
  (*(v17 + 8))(v3, v1);
  (*(v15 + 8))(v6, v16);
}

uint64_t sub_1A42E0478(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[2] = v6;
    v9[3] = v5;
    v8 = *(result + OBJC_IVAR____TtC12PhotosUICore24LemonadeBookmarksManager_pendingBookmarksResult);
    MEMORY[0x1EEE9AC00](result);
    v9[1] = v4;
    v9[-2] = a2;

    os_unfair_lock_lock((v8 + 24));
    sub_1A42E541C((v8 + 16));
  }

  return result;
}

uint64_t sub_1A42E0830(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v4);
  if (((*(v5 + 64))(v4, v5) & 1) == 0)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v6 = sub_1A42E3FE4(a1);
  if ((*(v1 + 81) & 1) == 0)
  {
    v7 = sub_1A42E44FC(v6);

    v6 = v7;
  }

  if (*(v2 + 82))
  {
    if (*(v2 + 80))
    {
      return v6;
    }
  }

  else
  {
    v9 = sub_1A42E4804(v6);

    v6 = v9;
    if (*(v2 + 80))
    {
      return v6;
    }
  }

  v10 = sub_1A3C9D24C(v6);

  return v10;
}

void sub_1A42E0A60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A42E0AD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A42E0B4C(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A42E0BF0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A42E0CA4()
{
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);

  sub_1A5245F44();
}

void sub_1A42E0D30()
{
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C49B90(&qword_1EB129F18, type metadata accessor for LemonadeBookmarksManager);

  sub_1A5245C54();
}

uint64_t sub_1A42E0DD8(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeBookmark(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v1 + 328))(v5);
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  while (1)
  {
    v12 = v10;
    if (v11 == v10)
    {
LABEL_5:

      return v11 != v12;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    sub_1A3C5820C(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10++, v7, type metadata accessor for LemonadeBookmark);
    v13 = sub_1A3F9D0E8(a1);
    result = sub_1A3C58334(v7, type metadata accessor for LemonadeBookmark);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42E0F5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeBookmark(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  result = (*(*v1 + 328))(v8);
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  while (1)
  {
    if (v14 == v13)
    {

      sub_1A42E12AC();
      v21 = v2;
      v16 = v20;
      sub_1A3C5820C(a1, v20, type metadata accessor for LemonadeBookmark);
      v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v18 = swift_allocObject();
      sub_1A3C5921C(v16, v18 + v17);
      type metadata accessor for LemonadeBookmarksManager(0);
      sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
      sub_1A5245F44();
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    sub_1A3C5820C(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v10, type metadata accessor for LemonadeBookmark);
    v15 = sub_1A3F9D0E8(a1);
    result = sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
    if (v15)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42E12AC()
{
  v1 = type metadata accessor for LemonadeBookmark(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = *(*v0 + 328);
  v8 = MEMORY[0x1E69E7CC0];
  for (i = v7(v3); ; i = v7(isUniquelyReferenced_nonNull_native))
  {
    v10 = *(i + 16);

    if (v6 < v10)
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1A42E2988(0, *(v8 + 16) + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1A42E2988((v18 > 1), v19 + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 16) = v19 + 1;
    *(v8 + v19 + 32) = 1;
LABEL_3:
    if (++v6 == 3)
    {
      return v8;
    }
  }

  result = v7(v11);
  if (v6 < *(result + 16))
  {
    sub_1A3C5820C(result + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6, v5, type metadata accessor for LemonadeBookmark);

    v13 = v5[16];
    sub_1A3C58334(v5, type metadata accessor for LemonadeBookmark);
    sub_1A3F9AE4C(v13, &v21);
    v14 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_1A42E2988(0, *(v8 + 16) + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1A42E2988((v16 > 1), v17 + 1, 1, v8);
      v8 = isUniquelyReferenced_nonNull_native;
    }

    *(v8 + 16) = v17 + 1;
    *(v8 + v17 + 32) = v14;
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42E1524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  sub_1A3C5820C(a2, v7, type metadata accessor for LemonadeBookmark);
  v10 = (*(v8 + 24))(v18, ObjectType, v8);
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_1A3FA05D8(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_1A3FA05D8(v15 > 1, v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  sub_1A3C5921C(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16);
  return v10(v18, 0);
}

uint64_t sub_1A42E16DC(char a1, uint64_t a2)
{
  sub_1A3C2A340(0, &qword_1EB12A538, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-v6];
  v8 = type metadata accessor for LemonadeBookmark(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = (*(*v2 + 328))(v10);
  v15[16] = a1;
  v16 = a2;
  sub_1A42E18F8(sub_1A42E36A0, v13, v7);

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1A3C5921C(v7, v12);
    sub_1A42E1AB0(*v12, v12[1]);
  }

  return sub_1A42E36DC(v7, &qword_1EB12A538, type metadata accessor for LemonadeBookmark);
}

uint64_t sub_1A42E18F8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LemonadeBookmark(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A3C5820C(v12, v10, type metadata accessor for LemonadeBookmark);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
      }

      if (v14)
      {
        break;
      }

      sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A3C5921C(v10, v18);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

void sub_1A42E1AB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LemonadeBookmark(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v10[0] = v10 - v8;
  v10[1] = sub_1A42E12AC();
  v11 = v2;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42E1E60(uint64_t a1)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = type metadata accessor for LemonadeBookmark(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_1A42E12AC();
  v10 = sub_1A5241464();
  if (v11)
  {
LABEL_5:
    v16[2] = v1;
    (*(v4 + 16))(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = swift_allocObject();
    (*(v4 + 32))(v15 + v14, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    type metadata accessor for LemonadeBookmarksManager(0);
    sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
    sub_1A5245F44();
  }

  v12 = v10;
  result = (*(*v1 + 328))();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *(result + 16))
  {
    sub_1A3C5820C(result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v9, type metadata accessor for LemonadeBookmark);

    sub_1A3F9AE4C(v9[16], &v17);
    sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42E2204(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = type metadata accessor for LemonadeBookmark(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A42E12AC();
  v11 = sub_1A5241464();
  if (v12)
  {
LABEL_5:
    v20 = v2;
    (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    (*(v5 + 32))(v16 + v15, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
    type metadata accessor for LemonadeBookmarksManager(0);
    sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
    sub_1A5245F44();
  }

  v13 = v11;
  result = (*(*v2 + 328))();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(result + 16))
  {
    sub_1A3C5820C(result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, v10, type metadata accessor for LemonadeBookmark);

    sub_1A3F9AE4C(v10[16], &v21);
    sub_1A3C58334(v10, type metadata accessor for LemonadeBookmark);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A42E25CC(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for LemonadeBookmarksManager(0);
  sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42E26A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A42E2720()
{
  swift_getKeyPath();
  swift_getKeyPath();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42E279C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

char *sub_1A42E2988(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C397F8(0, &qword_1EB126240, &type metadata for LemonadeCustomizationAnalyticsName, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A42E2A94(void *a1)
{
  v2 = v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E6B4();

    if (v4)
    {
      swift_unknownObjectRelease();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    return 0;
  }

  v5 = sub_1A3C39EA4(a1);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v1;
  v12 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A42E2E04();
    v9 = v12;
  }

  v10 = *(*(v9 + 56) + 8 * v7);
  sub_1A3FB731C(v7, v9);
  *v2 = v9;
  return v10;
}

uint64_t sub_1A42E2BE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3C49BDC();
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126BF0);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for LemonadeBookmarksManager(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A3C39EE8(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void *sub_1A42E2E04()
{
  v1 = v0;
  sub_1A3C49BDC();
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

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1A42E2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v10);
  v12[3] = a4;
  v12[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  *(a3 + 88) = 0;
  sub_1A5245EC4();
}

void sub_1A42E3520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeBookmarksManager(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  sub_1A42E2F5C(a1, v11, v12, a4, a5);
}

uint64_t sub_1A42E3630(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A42E1524(a1, v4);
}

uint64_t sub_1A42E36DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2A340(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A42E3820(uint64_t a1)
{
  sub_1A52414C4();
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(v6, ObjectType, v2);
  sub_1A3C2A340(0, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB137850, &qword_1EB126F50, type metadata accessor for LemonadeBookmark);
  sub_1A3C2A908(&qword_1EB137858, &qword_1EB126F50, type metadata accessor for LemonadeBookmark);
  sub_1A524D0D4();
  return v4(v6, 0);
}

uint64_t sub_1A42E39A0(uint64_t a1)
{
  sub_1A52414C4();
  v2 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 24))(v6, ObjectType, v2);
  sub_1A3C2A340(0, &qword_1EB126F50, type metadata accessor for LemonadeBookmark, MEMORY[0x1E69E62F8]);
  sub_1A3C2A908(&qword_1EB137850, &qword_1EB126F50, type metadata accessor for LemonadeBookmark);
  sub_1A524C554();
  return v4(v6, 0);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LemonadeBookmarksManager.PreferenceValues(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for LemonadeBookmarksManager.PreferenceValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1A42E3D70@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 40);
  v4 = (*(**(v1 + 32) + 136))();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))();
  result = (*((*v5 & *v3) + 0xB8))();
  *a1 = v4 & 1;
  a1[1] = v6 & 1;
  a1[2] = result & 1;
  return result;
}

uint64_t sub_1A42E3E60()
{
  sub_1A42E3F7C(0, &qword_1EB137840, MEMORY[0x1E69E8210]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(v0 + ((*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A42DF140(v5, v6, v7, v0 + v3, v4);
}

void sub_1A42E3F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for LemonadeBookmarksManager.PreferenceValues, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42E3FE4(uint64_t a1)
{
  v47 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v47);
  v43 = (v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v42 = (v39 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v44 = v39 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v39 - v8;
  v10 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v39 - v14;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = *(v13 + 72);
    v45 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v18 = a1 + v45;
    v41 = *MEMORY[0x1E69C1258];
    v40 = *MEMORY[0x1E69C1260];
    v39[1] = @"PXTransientCollectionIdentifierMap";
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1A3C5820C(v18, v15, type metadata accessor for LemonadeBookmark);
      sub_1A3C5820C(&v15[*(v10 + 24)], v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          v31 = v42;
          sub_1A3C5820C(v9, v42, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          v32 = *v31;
          PXDisplayCollectionDetailedCountsMake(1000000201);
          v48 = v32;
          v49 = v33;
          sub_1A3FA13A4();
          if ((sub_1A524C594() & 1) == 0)
          {
            PXDisplayCollectionDetailedCountsMake(1000000212);
            v48 = v32;
            v49 = v34;
            if ((sub_1A524C594() & 1) == 0)
            {
              goto LABEL_23;
            }
          }
        }

        else if (EnumCaseMultiPayload != 8)
        {
          goto LABEL_23;
        }
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v26 = v43;
        sub_1A3C5820C(v9, v43, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        v27 = *v26;
        v28 = v26[1];
        if (sub_1A524C674() == v27 && v29 == v28)
        {
        }

        else
        {
          v30 = sub_1A524EAB4();

          if ((v30 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_23;
        }

        v21 = v44;
        sub_1A3C5820C(v9, v44, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
        v22 = sub_1A5244EB4();
        v23 = *(v22 - 8);
        v24 = (*(v23 + 88))(v21, v22);
        if (v24 != v41 && v24 != v40)
        {
          (*(v23 + 8))(v44, v22);
LABEL_23:
          sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
          sub_1A3C5921C(v15, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A3C58754(0, *(v19 + 16) + 1, 1);
            v19 = v50;
          }

          v37 = *(v19 + 16);
          v36 = *(v19 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_1A3C58754(v36 > 1, v37 + 1, 1);
            v19 = v50;
          }

          *(v19 + 16) = v37 + 1;
          sub_1A3C5921C(v46, v19 + v45 + v37 * v17);
          goto LABEL_5;
        }
      }

      sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
      sub_1A3C58334(v15, type metadata accessor for LemonadeBookmark);
LABEL_5:
      v18 += v17;
      if (!--v16)
      {
        return v19;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A42E44FC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = *(v9 + 72);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v23;
  v26 = *MEMORY[0x1E69C1268];
  v15 = MEMORY[0x1E69E7CC0];
  v24 = v7;
  v25 = v5;
  do
  {
    sub_1A3C5820C(v14, v11, type metadata accessor for LemonadeBookmark);
    v16 = sub_1A5244EB4();
    (*(*(v16 - 8) + 104))(v4, v26, v16);
    swift_storeEnumTagMultiPayload();
    sub_1A3C49B90(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v17 = sub_1A524C594();
    sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v17)
    {
      sub_1A3C58334(v11, type metadata accessor for LemonadeBookmark);
    }

    else
    {
      sub_1A3C5921C(v11, v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C58754(0, *(v15 + 16) + 1, 1);
        v15 = v27;
      }

      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A3C58754(v19 > 1, v20 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v20 + 1;
      v7 = v24;
      sub_1A3C5921C(v24, v15 + v23 + v20 * v13);
    }

    v14 += v13;
    --v12;
  }

  while (v12);
  return v15;
}

uint64_t sub_1A42E4804(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v25);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = *(v7 + 72);
  v22[0] = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v22[0];
  v24 = @"PXRecentlyViewedVirtualCollection";
  v22[1] = @"PXRecentlySharedVirtualCollection";
  v13 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1A3C5820C(v12, v9, type metadata accessor for LemonadeBookmark);
    *v4 = sub_1A524C674();
    v4[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_1A3C49B90(&qword_1EB12A590, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    v15 = sub_1A524C594();
    sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier);
    if (v15 & 1) != 0 || (*v4 = sub_1A524C674(), v4[1] = v16, swift_storeEnumTagMultiPayload(), v17 = sub_1A524C594(), sub_1A3C58334(v4, type metadata accessor for LemonadeBookmark.CollectionIdentifier), (v17))
    {
      sub_1A3C58334(v9, type metadata accessor for LemonadeBookmark);
    }

    else
    {
      sub_1A3C5921C(v9, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1A3C58754(0, *(v13 + 16) + 1, 1);
        v13 = v26;
      }

      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A3C58754(v19 > 1, v20 + 1, 1);
        v13 = v26;
      }

      *(v13 + 16) = v20 + 1;
      sub_1A3C5921C(v23, v13 + v22[0] + v20 * v11);
    }

    v12 += v11;
    --v10;
  }

  while (v10);
  return v13;
}

uint64_t sub_1A42E4BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v9 = *(v8 + 72);
  v10 = (((*(v8 + 80) + 32) & ~*(v8 + 80)) + a1 + 8);
  while (1)
  {
    v11 = *(v10 - 1) == a2 && *v10 == a3;
    if (v11 || (sub_1A524EAB4() & 1) != 0)
    {
      break;
    }

    ++v7;
    v10 = (v10 + v9);
    if (v3 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_1A42E4CA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for LemonadeBookmark(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v34 - v15);
  v17 = *a1;
  result = sub_1A42E4BA8(*a1, a2, a3);
  if (v3)
  {
    return result;
  }

  v42 = a2;
  v36 = 0;
  if (v19)
  {
    return *(v17 + 16);
  }

  v37 = v10;
  v38 = v13;
  v35 = a1;
  v40 = result;
  v20 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_34;
  }

  v22 = (v17 + 16);
  v21 = *(v17 + 16);
  if (v20 == v21)
  {
    return v40;
  }

  v39 = a3;
  v41 = v8;
  while (v20 < v21)
  {
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = v17;
    v25 = v17 + v23;
    v26 = *(v8 + 72);
    v27 = v26 * v20;
    sub_1A3C5820C(v25 + v26 * v20, v16, type metadata accessor for LemonadeBookmark);
    if (*v16 == v42 && v16[1] == a3)
    {
      result = sub_1A3C58334(v16, type metadata accessor for LemonadeBookmark);
LABEL_10:
      v8 = v41;
      v17 = v24;
      goto LABEL_11;
    }

    v29 = sub_1A524EAB4();
    result = sub_1A3C58334(v16, type metadata accessor for LemonadeBookmark);
    if (v29)
    {
      a3 = v39;
      goto LABEL_10;
    }

    v30 = v40;
    if (v20 == v40)
    {
      a3 = v39;
      v8 = v41;
      v17 = v24;
    }

    else
    {
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v31 = *v22;
      if (v40 >= *v22)
      {
        goto LABEL_31;
      }

      v32 = v26 * v40;
      result = sub_1A3C5820C(v25 + v26 * v40, v38, type metadata accessor for LemonadeBookmark);
      if (v20 >= v31)
      {
        goto LABEL_32;
      }

      sub_1A3C5820C(v25 + v27, v37, type metadata accessor for LemonadeBookmark);
      v17 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1A42E350C(v24);
      }

      a3 = v39;
      v8 = v41;
      v33 = v17 + v23;
      result = sub_1A42E51E0(v37, v33 + v32);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      result = sub_1A42E51E0(v38, v33 + v27);
      *v35 = v17;
      v30 = v40;
    }

    v40 = v30 + 1;
LABEL_11:
    ++v20;
    v22 = (v17 + 16);
    v21 = *(v17 + 16);
    if (v20 == v21)
    {
      return v40;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_1A42E4FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for LemonadeBookmark(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1A42E5120(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A3FA05D8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A42E4FD8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A42E51E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeBookmark(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42E5244()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC12PhotosUICore24LemonadeBookmarksManager_pendingBookmarksResult);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
    if (v2)
    {
      v3 = sub_1A42E0830(v2);

      *(swift_allocObject() + 16) = v3;
      type metadata accessor for LemonadeBookmarksManager(0);
      sub_1A3C49B90(&qword_1EB129F10, type metadata accessor for LemonadeBookmarksManager);
      sub_1A5245F44();
    }
  }

  return result;
}

uint64_t sub_1A42E536C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  return (*(v2 + 72))(v1, v3, v2);
}

uint64_t objectdestroy_127Tm()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);

  return swift_deallocObject();
}

id sub_1A42E5458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v17 = objc_allocWithZone(v9);
  *&v17[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_delegate + 8] = 0;
  v18 = swift_unknownObjectWeakInit();
  v19 = &v17[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onViewDidLoad];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = &v17[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onTapToRadar];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v17[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_searchBarCoordinator] = a2;
  *v19 = a5;
  *(v19 + 1) = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  *(v18 + 8) = a4;
  swift_unknownObjectWeakAssign();
  v23.receiver = v17;
  v23.super_class = v9;

  v21 = objc_msgSendSuper2(&v23, sel_initWithConfiguration_, a1);

  swift_unknownObjectRelease();
  return v21;
}

void sub_1A42E5624()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PhotosSearchAssetResultsViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = &v0[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onViewDidLoad];
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_onViewDidLoad];
  if (v2)
  {

    v2(v0);
    sub_1A3C33378(v2);
    v3 = *v1;
  }

  else
  {
    v3 = 0;
  }

  *v1 = 0;
  v1[1] = 0;
  sub_1A3C33378(v3);
  v4 = [v0 viewModel];
  v6[4] = sub_1A42E575C;
  v6[5] = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3D7692C;
  v6[3] = &block_descriptor_153;
  v5 = _Block_copy(v6);
  [v4 performChanges_];
  _Block_release(v5);
}

void sub_1A42E58E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for PhotosSearchAssetResultsViewController();
  objc_msgSendSuper2(&v12, sel_observable_didChange_context_, a1, a2, a3);
  if ((a2 & 4) != 0)
  {
    v7 = [v3 viewModel];
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    v11[4] = sub_1A42E6474;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1A3D7692C;
    v11[3] = &block_descriptor_10_5;
    v9 = _Block_copy(v11);
    v10 = v3;

    [v7 performChanges_];
    _Block_release(v9);
  }
}

char *sub_1A42E5B1C(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC12PhotosUICore38PhotosSearchAssetResultsViewController_searchBarCoordinator);
  if (!v3)
  {
    goto LABEL_4;
  }

  swift_getObjectType();

  if ([a1 isInSelectMode])
  {

LABEL_4:
    swift_getObjectType();
    sub_1A47F92A4(0);
    sub_1A47F8D7C(0);
    goto LABEL_25;
  }

  v4 = PhotosSearchBarCoordinator<>.barButtonItems.getter(&protocol witness table for PhotosSearchBarPosition.SystemBar);
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_18:

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v20 = (*v3 + 352);
    v21 = *v20;
    (*v20)(v26, v19);
    v22 = v26[0];

    LOBYTE(v28) = v22;
    v25 = 1;
    if (static PhotosSearchBarPosition.SystemBarPlacement.== infix(_:_:)(&v28, &v25))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A47F92A4(0);
    v21(v26);
    v23 = v26[0];

    LOBYTE(v28) = v23;
    v25 = 0;
    if (static PhotosSearchBarPosition.SystemBarPlacement.== infix(_:_:)(&v28, &v25))
    {
      v24 = sub_1A42E5EE0(v9);
    }

    else
    {

      v24 = 0;
    }

    sub_1A47F8D7C(v24);

LABEL_25:
    swift_getObjectType();
    PXCanShowInternalUI();
  }

  v6 = sub_1A524E2B4();
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_7:
  v28 = MEMORY[0x1E69E7CC0];
  result = sub_1A42E6254(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v28;
    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    for (i = MEMORY[0x1A59097F0](v8, v5); ; i = *(v5 + 8 * v8 + 32))
    {
      PhotosBarButtonItem.init(barButtonItem:)(i, v26);
      v28 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A42E6254((v11 > 1), v12 + 1, 1);
        v9 = v28;
      }

      *(v9 + 16) = v12 + 1;
      v13 = v9 + 104 * v12;
      v14 = v26[0];
      v15 = v26[2];
      *(v13 + 48) = v26[1];
      *(v13 + 64) = v15;
      *(v13 + 32) = v14;
      v16 = v26[3];
      v17 = v26[4];
      v18 = v26[5];
      *(v13 + 128) = v27;
      *(v13 + 96) = v17;
      *(v13 + 112) = v18;
      *(v13 + 80) = v16;
      if (v6 - 1 == v8)
      {
        break;
      }

      ++v8;
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      ;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42E5EE0(uint64_t result)
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
  v6 = 104 * v2 - 72;
  for (i = 32; ; i += 104)
  {
    if (v3 == v5)
    {
      goto LABEL_5;
    }

    v19 = *(v1 + 2);
    if (v3 >= v19)
    {
      break;
    }

    v20 = *&v1[i];
    v21 = *&v1[i + 32];
    v46 = *&v1[i + 16];
    v47 = v21;
    v45 = v20;
    v22 = *&v1[i + 48];
    v23 = *&v1[i + 64];
    v24 = *&v1[i + 80];
    v51 = *&v1[i + 96];
    v49 = v23;
    v50 = v24;
    v48 = v22;
    if (v5 >= v19)
    {
      goto LABEL_14;
    }

    v25 = *&v1[v6];
    v26 = *&v1[v6 + 32];
    v53 = *&v1[v6 + 16];
    v54 = v26;
    v52 = v25;
    v27 = *&v1[v6 + 48];
    v28 = *&v1[v6 + 64];
    v29 = *&v1[v6 + 80];
    v58 = *&v1[v6 + 96];
    v56 = v28;
    v57 = v29;
    v55 = v27;
    sub_1A42E6274(&v45, v43);
    sub_1A42E6274(&v52, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A42E6240(v1);
    }

    v30 = &v1[i];
    v31 = *&v1[i];
    v32 = *&v1[i + 32];
    v41[1] = *&v1[i + 16];
    v41[2] = v32;
    v41[0] = v31;
    v33 = *&v1[i + 48];
    v34 = *&v1[i + 64];
    v35 = *&v1[i + 80];
    v42 = *&v1[i + 96];
    v41[4] = v34;
    v41[5] = v35;
    v41[3] = v33;
    v36 = v52;
    v37 = v54;
    *(v30 + 1) = v53;
    *(v30 + 2) = v37;
    *v30 = v36;
    v38 = v55;
    v39 = v56;
    v40 = v57;
    *(v30 + 12) = v58;
    *(v30 + 4) = v39;
    *(v30 + 5) = v40;
    *(v30 + 3) = v38;
    result = sub_1A42E62D0(v41);
    if (v5 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v6];
    v9 = *&v1[v6];
    v10 = *&v1[v6 + 32];
    v43[1] = *&v1[v6 + 16];
    v43[2] = v10;
    v43[0] = v9;
    v11 = *&v1[v6 + 48];
    v12 = *&v1[v6 + 64];
    v13 = *&v1[v6 + 80];
    v44 = *&v1[v6 + 96];
    v43[4] = v12;
    v43[5] = v13;
    v43[3] = v11;
    v15 = v49;
    v14 = v50;
    v16 = v48;
    *(v8 + 12) = v51;
    *(v8 + 4) = v15;
    *(v8 + 5) = v14;
    *(v8 + 3) = v16;
    v17 = v45;
    v18 = v47;
    *(v8 + 1) = v46;
    *(v8 + 2) = v18;
    *v8 = v17;
    result = sub_1A42E62D0(v43);
LABEL_5:
    ++v3;
    --v5;
    v6 -= 104;
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

id sub_1A42E6198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSearchAssetResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1A42E6254(char *a1, int64_t a2, char a3)
{
  result = sub_1A42E6324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A42E6324(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D634(0, &unk_1EB1262A0, &type metadata for PhotosBarButtonItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A42E64C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52486A4();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5243D54();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v46 - v20;
  (*(a3 + 104))(a1, a2, a3, v19);
  sub_1A3CA5FCC(v14, v21, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  sub_1A42E6974(v14, type metadata accessor for LemonadeShelfBodyStyle);
  sub_1A3CA5FCC(v21, v17, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A42E6974(v21, type metadata accessor for LemonadeItemsLayoutSpec.Style);
    sub_1A3D6D890(*v17, *(v17 + 1), v17[16]);
    sub_1A3C4208C(*(v17 + 3), *(v17 + 4), v17[40]);
    sub_1A3C47A98();
    v23 = *(v22 + 64);
    v24 = sub_1A5242C84();
    (*(*(v24 - 8) + 8))(&v17[v23], v24);
  }

  else
  {
    v47 = v8;
    v48 = v21;
    v25 = v11;
    v27 = *v17;
    v26 = *(v17 + 1);
    v28 = v17[16];
    v29 = *(v17 + 5);
    v30 = *(v17 + 7);
    sub_1A3C4208C(*(v17 + 9), *(v17 + 10), v17[88]);
    v31 = v26;
    sub_1A3F1BD68(v30);
    v32 = v29;
    v33 = v28;
    sub_1A3F1BD68(v32);
    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v55);
    v34 = sub_1A43A3628(a1, &v55, v27, v26, v28);
    LOBYTE(v26) = v35;
    v36 = type metadata accessor for LemonadeShelfStyleOptions(0);
    v37 = *(v36 + 24);
    v54 = *(a1 + *(v36 + 20));
    v53 = *(a1 + v37);
    v38 = sub_1A3C5A374();
    v39 = v47;
    sub_1A3F2A5C4(v47);
    v40 = sub_1A3C5A374();
    sub_1A3F2A638(a1, &v54, &v53, v38, v39, v40 & 1, v34, v26 & 1, v25);
    (*(v49 + 8))(v39, v50);
    v41 = sub_1A5243D34();
    if (v41 > sub_1A5243D44() / 2)
    {
      v42 = sub_1A5243D34();
      if (v42 < sub_1A5243D44())
      {
        sub_1A524BEA4();
        v44 = v43;
        sub_1A3D6D890(v27, v31, v33);
        (*(v51 + 8))(v25, v52);
        sub_1A42E6974(v48, type metadata accessor for LemonadeItemsLayoutSpec.Style);
        return v44;
      }
    }

    sub_1A3D6D890(v27, v31, v33);
    (*(v51 + 8))(v25, v52);
    sub_1A42E6974(v48, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  }

  return 0;
}

uint64_t sub_1A42E6974(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A42E6A48(uint64_t a1)
{
  sub_1A3C47BD4(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v2 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  sub_1A3CA5FCC(a1, v4 + v3, type metadata accessor for LemonadeNavigationDestination);
  return v4;
}

uint64_t sub_1A42E6B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24));
  v6 = *(a3 + 208);

  return v6(v5, a2, a3);
}

uint64_t sub_1A42E6BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + *(type metadata accessor for LemonadeShelfDisclosureOptions(0) + 24));
  v6 = *(a3 + 232);

  return v6(v5, a2, a3);
}

uint64_t sub_1A42E6CC4@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_1A42E6D54@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1A42E6DD4(uint64_t a1)
{
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1A5245BD4();
    }
  }

  return result;
}

uint64_t sub_1A42E6EC8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *a3;
  v10 = sub_1A5242D14();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for LemonadeShelfStyleOptions(0);
  *(a5 + v11[5]) = v8;
  *(a5 + v11[6]) = v9;
  v12 = v11[7];
  v13 = sub_1A52486A4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a4, v13);
}

uint64_t sub_1A42E6FB0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(&v32 + 1) = a3;
  *&v32 = a2;
  v31 = a1;
  v30[13] = a4;
  v4 = MEMORY[0x1E697F948];
  sub_1A42E7998(0, &qword_1EB122B20, sub_1A42E795C, MEMORY[0x1E6981910], MEMORY[0x1E697F948]);
  v30[12] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v30 - v6);
  sub_1A42E7998(0, &qword_1EB122BE8, sub_1A42E7A04, MEMORY[0x1E6981748], v4);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30[10] = v30 - v10;
  sub_1A42E795C(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v30[11] = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC2854();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1A52486A4();
  v30[8] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1A3EC1A14();
  v30[9] = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42E7A04();
  v28 = MEMORY[0x1EEE9AC00](v24);
  if (!(v31 >> 62))
  {
    v30[0] = v17;
    v30[1] = v23;
    v30[2] = v15;
    v30[3] = v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v30[4] = v27;
    v30[5] = v9;
    v30[6] = v25;
    v30[7] = v12;
    v31 = v7;
    v33 = v32;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v31 >> 62 == 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *v7 = (v32)(v28);
  swift_storeEnumTagMultiPayload();
  sub_1A42E7C40();
  return sub_1A5249744();
}

void sub_1A42E7998(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A42E7A04()
{
  if (!qword_1EB1275D0)
  {
    sub_1A42E7AD8();
    sub_1A3EC1A14();
    sub_1A42E7B58();
    sub_1A42E7BF8(&qword_1EB126FC0, sub_1A3EC1A14);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275D0);
    }
  }
}

void sub_1A42E7AD8()
{
  if (!qword_1EB1283A8)
  {
    sub_1A3DF14C0();
    sub_1A405D430(255, &qword_1EB1277F0, &qword_1EB127560);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1283A8);
    }
  }
}

unint64_t sub_1A42E7B58()
{
  result = qword_1EB1283B0;
  if (!qword_1EB1283B0)
  {
    sub_1A42E7AD8();
    sub_1A405D614();
    sub_1A405D6B4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1283B0);
  }

  return result;
}

uint64_t sub_1A42E7BF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A42E7C40()
{
  result = qword_1EB1226A0;
  if (!qword_1EB1226A0)
  {
    sub_1A42E795C(255);
    sub_1A42E7AD8();
    sub_1A3EC1A14();
    sub_1A42E7B58();
    sub_1A42E7BF8(&qword_1EB126FC0, sub_1A3EC1A14);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1226A0);
  }

  return result;
}

int *sub_1A42E7D40@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1A5242D14();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for LemonadeShelfDisclosureOptions(0);
  *(a5 + result[5]) = v9;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_1A42E7E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1A3C47A98();
  v9 = *(v8 + 64);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  sub_1A42E8444(a1, a2, a3);
  *(a4 + 24) = sub_1A43A3018();
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  sub_1A43A1960(a4 + v9);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v13 = *(v12 + 24);
  v14 = sub_1A5241F84();
  result = (*(*(v14 - 8) + 56))(a4 + v13, 1, 1, v14);
  *(a4 + *(v12 + 20)) = 4;
  return result;
}

uint64_t sub_1A42E7F0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1A3C47918();
  v10 = v9;
  v11 = sub_1A3C47918();
  v13 = v12;
  v14 = sub_1A3C4ED50();
  *a4 = sub_1A42E802C;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2 & 1;
  *(a4 + 40) = v8;
  *(a4 + 48) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v13;
  *(a4 + 72) = xmmword_1A5317AF0;
  *(a4 + 88) = 0;
  *(a4 + 89) = v14;
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v16 = *(v15 + 24);
  v17 = sub_1A5241F84();
  result = (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  *(a4 + *(v15 + 20)) = a3;
  return result;
}

uint64_t sub_1A42E802C(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    return 35;
  }

  else
  {
    return 37;
  }
}

uint64_t sub_1A42E8048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A43A3204();
  v4 = v3;
  v6 = v5;
  v7 = sub_1A3C47918();
  v9 = v8;
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C4ED50();
  *a1 = sub_1A42E8168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v7;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4;
  *(a1 + 88) = v6;
  *(a1 + 89) = v13;
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v15 = *(v14 + 24);
  v16 = sub_1A5241F84();
  result = (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  *(a1 + *(v14 + 20)) = 9;
  return result;
}

uint64_t sub_1A42E8168(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    return 36;
  }

  else
  {
    return 38;
  }
}

uint64_t sub_1A42E8184@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  v7 = sub_1A3C47918();
  v9 = v8;
  v10 = sub_1A3C47918();
  v12 = v11;
  v13 = sub_1A3C52D68();
  v15 = v14;
  v17 = v16;
  v18 = sub_1A3C4ED50();
  *a3 = sub_1A42E845C;
  *(a3 + 8) = v6;
  *(a3 + 16) = 2;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = v7;
  *(a3 + 48) = v9;
  *(a3 + 56) = v10;
  *(a3 + 64) = v12;
  *(a3 + 72) = v13;
  *(a3 + 80) = v15;
  *(a3 + 88) = v17;
  *(a3 + 89) = v18;
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for LemonadeShelfBodyStyle(0);
  v20 = *(v19 + 24);
  v21 = sub_1A5241F84();
  result = (*(*(v21 - 8) + 56))(a3 + v20, 1, 1, v21);
  *(a3 + *(v19 + 20)) = 0;
  return result;
}

uint64_t sub_1A42E82D4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69C21F8])
  {
    if (v11)
    {
      return 36;
    }

    else
    {
      return 38;
    }
  }

  else if (v12 != *MEMORY[0x1E69C2210])
  {
    if (v11)
    {
      a3 = 35;
    }

    else
    {
      a3 = 37;
    }

    (*(v7 + 8))(v10, v6);
  }

  return a3;
}

uint64_t sub_1A42E8444(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

unint64_t sub_1A42E8470()
{
  result = qword_1EB137880;
  if (!qword_1EB137880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137880);
  }

  return result;
}

unint64_t sub_1A42E84C8()
{
  result = qword_1EB137888;
  if (!qword_1EB137888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137888);
  }

  return result;
}

uint64_t sub_1A42E8544()
{
  result = sub_1A5242D14();
  if (v1 <= 0x3F)
  {
    result = sub_1A52486A4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A42E85EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1A42E863C(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = 2 * -a2;
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

uint64_t sub_1A42E86E0()
{
  result = sub_1A5242D14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LemonadePhotoLibraryContext();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LemonadeNavigationContext(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A42E87DC()
{
  result = qword_1EB122440;
  if (!qword_1EB122440)
  {
    sub_1A42E7998(255, &qword_1EB122438, sub_1A42E795C, MEMORY[0x1E6981910], MEMORY[0x1E697F960]);
    sub_1A42E7C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122440);
  }

  return result;
}

id PeopleSorter.sort(fetchResult:)(void *a1)
{
  sub_1A3D7AC7C();
  if ((sub_1A524C594() & 1) == 0)
  {
    v1 = [a1 fetchedObjects];
    if (v1)
    {
      v2 = v1;
      sub_1A3DEF040();
      v3 = sub_1A524CA34();

      if (v3 >> 62)
      {
        if (sub_1A524E2B4() >= 2)
        {
LABEL_5:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
      {
        goto LABEL_5;
      }
    }
  }

  return a1;
}

uint64_t sub_1A42E8B64(void *a1, void *a2, uint64_t a3)
{
  sub_1A42E9F44(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v35 - v8;
  v10 = [a1 px_localizedName];
  v11 = sub_1A524C674();
  v13 = v12;

  v14 = [a2 px_localizedName];
  v15 = sub_1A524C674();
  v17 = v16;

  v18 = sub_1A524C7A4();
  v19 = sub_1A524C7A4();
  v20 = v19;
  if (v18 <= 0)
  {

    if (v20 <= 0)
    {
      v23 = [a1 manualOrder];
      v24 = [a2 manualOrder];
      if (v24 < v23)
      {
        return 1;
      }

      if (v23 < v24)
      {
        return -1;
      }

      result = [a1 uuid];
      if (result)
      {
        v25 = result;
        v26 = sub_1A524C674();
        v28 = v27;

        v39 = v26;
        v40 = v28;
        result = [a2 uuid];
        if (result)
        {
          v29 = result;
          v30 = sub_1A524C674();
          v32 = v31;

          v37 = v30;
          v38 = v32;
          v33 = sub_1A5241284();
          (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
          sub_1A3D5F9DC();
          v34 = sub_1A524E034();
          sub_1A3FD7708(v9);

          return v34;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    v39 = a3;
    v37 = 1;
    sub_1A3D7AC28();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v36 == v35)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (v19 < 1)
  {

    v39 = a3;
    v37 = 1;
    sub_1A3D7AC28();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v36 == v35)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v39 = v11;
    v40 = v13;
    v37 = v15;
    v38 = v17;
    sub_1A3D5F9DC();
    v21 = sub_1A524DFF4();

    return v21;
  }
}

uint64_t sub_1A42E8F08(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A3D35B98(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_1A42E8F8C(v8, a2);
  return sub_1A524E524();
}

void sub_1A42E8F8C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = sub_1A524EA34();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1A3DEF040();
        v8 = sub_1A524CAC4();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      sub_1A42E9254(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1A42E909C(0, v4, 1, a1, a2);
  }
}

void sub_1A42E909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = *a4 + 8 * a3 - 8;
    v9 = a1 - a3;
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v22 = v9;
    v23 = v8;
    while (1)
    {
      v11 = *v8;
      v12 = v10;
      v13 = v11;
      v14 = [v12 type];
      if (v14 == [v13 type])
      {
        if (a5 == 1)
        {
          v15 = v12;
          v16 = v13;
          v17 = 1;
        }

        else
        {
          if (a5 != 2)
          {
            goto LABEL_19;
          }

          v15 = v13;
          v16 = v12;
          v17 = 2;
        }

        v18 = sub_1A42E8B64(v15, v16, v17);

        if (v18 != -1)
        {
LABEL_4:
          ++v6;
          v8 = v23 + 8;
          v9 = v22 - 1;
          if (v6 == a2)
          {
            return;
          }

          goto LABEL_5;
        }
      }

      else
      {

        if (v14 != 1)
        {
          goto LABEL_4;
        }
      }

      if (!v7)
      {
        break;
      }

      v19 = *v8;
      v10 = *(v8 + 8);
      *v8 = v10;
      *(v8 + 8) = v19;
      v8 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_19:
    if (!a5)
    {
      sub_1A524E6E4();
      __break(1u);
    }

    sub_1A524EB44();
    __break(1u);
  }
}

uint64_t sub_1A42E9254(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v7 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_122;
  }

  v8 = a5;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v11 = v9;
  v12 = v9 + 1;
  if (v9 + 1 >= v7)
  {
    goto LABEL_41;
  }

  v13 = *a3;
  v14 = *(*a3 + 8 * v9);
  v15 = *(*a3 + 8 * v12);
  v16 = v14;
  v17 = [v15 type];
  if (v17 == [v16 type])
  {
    v18 = a5;
    if (a5 == 1)
    {
      v19 = v15;
      v20 = v16;
      v21 = 1;
    }

    else
    {
      if (a5 != 2)
      {
        goto LABEL_162;
      }

      v19 = v16;
      v20 = v15;
      v21 = 2;
    }

    v117 = sub_1A42E8B64(v19, v20, v21);
  }

  else
  {
    v22 = -1;
    if (v17 != 1)
    {
      v22 = 1;
    }

    v117 = v22;
  }

  v12 = v11 + 2;
  if (v11 + 2 >= v7)
  {
    v8 = a5;
    goto LABEL_30;
  }

  v23 = v11;
  v24 = v11 + 2;
  v112 = v23;
  v25 = (v13 + 8 * v23 + 16);
  do
  {
    v26 = *(v25 - 1);
    v27 = *v25;
    v28 = v26;
    v29 = [v27 type];
    if (v29 == [v28 type])
    {
      if (a5 == 1)
      {
        v30 = v27;
        v31 = v28;
        v32 = 1;
      }

      else
      {
        if (a5 != 2)
        {
          goto LABEL_160;
        }

        v30 = v28;
        v31 = v27;
        v32 = 2;
      }

      v33 = sub_1A42E8B64(v30, v31, v32);

      if (v33 != -1)
      {
LABEL_26:
        v12 = v24;
        if (v117 == -1)
        {
          v8 = a5;
          v11 = v112;
          goto LABEL_31;
        }

        goto LABEL_17;
      }
    }

    else
    {

      if (v29 != 1)
      {
        goto LABEL_26;
      }
    }

    v12 = v24;
    if (v117 != -1)
    {
      v8 = a5;
      v11 = v112;
      goto LABEL_41;
    }

LABEL_17:
    ++v25;
    v24 = v12 + 1;
  }

  while (v7 != v12 + 1);
  v12 = v7;
  v8 = a5;
  v11 = v112;
LABEL_30:
  if (v117 == -1)
  {
LABEL_31:
    if (v12 >= v11)
    {
      if (v11 < v12)
      {
        v34 = 8 * v12 - 8;
        v35 = 8 * v11;
        v36 = v12;
        v37 = v11;
        do
        {
          if (v37 != --v12)
          {
            v39 = *a3;
            if (!*a3)
            {
              goto LABEL_156;
            }

            v38 = *(v39 + v35);
            *(v39 + v35) = *(v39 + v34);
            *(v39 + v34) = v38;
          }

          ++v37;
          v34 -= 8;
          v35 += 8;
        }

        while (v37 < v12);
        v12 = v36;
      }

      goto LABEL_41;
    }

LABEL_152:
    __break(1u);
LABEL_153:
    v10 = sub_1A3D86884(v10);
LABEL_122:
    v106 = *(v10 + 2);
    if (v106 >= 2)
    {
      while (*a3)
      {
        v107 = *&v10[16 * v106];
        v108 = *&v10[16 * v106 + 24];
        sub_1A42E9AB8((*a3 + 8 * v107), (*a3 + 8 * *&v10[16 * v106 + 16]), (*a3 + 8 * v108), v6, a5);
        if (v7)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v106 - 2 >= *(v10 + 2))
        {
          goto LABEL_147;
        }

        v109 = &v10[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        sub_1A3D867F8(v106 - 1);
        v106 = *(v10 + 2);
        if (v106 <= 1)
        {
        }
      }

      goto LABEL_157;
    }
  }

LABEL_41:
  v40 = a3[1];
  if (v12 >= v40)
  {
    v43 = v12;
    if (v12 < v11)
    {
      goto LABEL_148;
    }

    goto LABEL_53;
  }

  if (__OFSUB__(v12, v11))
  {
    goto LABEL_149;
  }

  v41 = v12;
  if (v12 - v11 >= a4)
  {
    goto LABEL_50;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_150;
  }

  if (v11 + a4 >= v40)
  {
    v42 = a3[1];
  }

  else
  {
    v42 = v11 + a4;
  }

  if (v42 < v11)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v41 == v42)
  {
LABEL_50:
    v43 = v41;
    if (v41 < v11)
    {
      goto LABEL_148;
    }

    goto LABEL_53;
  }

  v111 = v6;
  v90 = *a3;
  v91 = v11;
  v92 = *a3 + 8 * v41 - 8;
  v113 = v91;
  v93 = v91 - v41;
  v116 = v42;
  while (2)
  {
    v119 = v41;
    v94 = *(v90 + 8 * v41);
    v95 = v93;
    v96 = v92;
LABEL_105:
    v97 = *v96;
    v98 = v94;
    v7 = v97;
    v99 = [v98 type];
    if (v99 != [v7 type])
    {

      if (v99 != 1)
      {
        goto LABEL_103;
      }

      break;
    }

    if (a5 == 1)
    {
      v100 = v98;
      v101 = v7;
      v102 = 1;
    }

    else
    {
      if (a5 != 2)
      {
        goto LABEL_160;
      }

      v100 = v7;
      v101 = v98;
      v102 = 2;
    }

    v103 = sub_1A42E8B64(v100, v101, v102);

    if (v103 != -1)
    {
LABEL_103:
      v41 = v119 + 1;
      v92 += 8;
      --v93;
      if (v119 + 1 != v116)
      {
        continue;
      }

      v43 = v116;
      v6 = v111;
      v8 = a5;
      v11 = v113;
      if (v116 < v113)
      {
        goto LABEL_148;
      }

LABEL_53:
      v118 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
      }

      v45 = *(v10 + 2);
      v44 = *(v10 + 3);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v10 = sub_1A3D8598C((v44 > 1), v45 + 1, 1, v10);
      }

      *(v10 + 2) = v46;
      v47 = &v10[16 * v45];
      *(v47 + 4) = v11;
      *(v47 + 5) = v118;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_158;
      }

      if (v45)
      {
        while (2)
        {
          v48 = v46 - 1;
          if (v46 >= 4)
          {
            v53 = &v10[16 * v46 + 32];
            v54 = *(v53 - 64);
            v55 = *(v53 - 56);
            v59 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            if (v59)
            {
              goto LABEL_135;
            }

            v58 = *(v53 - 48);
            v57 = *(v53 - 40);
            v59 = __OFSUB__(v57, v58);
            v51 = v57 - v58;
            v52 = v59;
            if (v59)
            {
              goto LABEL_136;
            }

            v60 = &v10[16 * v46];
            v62 = *v60;
            v61 = *(v60 + 1);
            v59 = __OFSUB__(v61, v62);
            v63 = v61 - v62;
            if (v59)
            {
              goto LABEL_138;
            }

            v59 = __OFADD__(v51, v63);
            v64 = v51 + v63;
            if (v59)
            {
              goto LABEL_141;
            }

            if (v64 >= v56)
            {
              v82 = &v10[16 * v48 + 32];
              v84 = *v82;
              v83 = *(v82 + 1);
              v59 = __OFSUB__(v83, v84);
              v85 = v83 - v84;
              if (v59)
              {
                goto LABEL_145;
              }

              if (v51 < v85)
              {
                v48 = v46 - 2;
              }
            }

            else
            {
LABEL_72:
              if (v52)
              {
                goto LABEL_137;
              }

              v65 = &v10[16 * v46];
              v67 = *v65;
              v66 = *(v65 + 1);
              v68 = __OFSUB__(v66, v67);
              v69 = v66 - v67;
              v70 = v68;
              if (v68)
              {
                goto LABEL_140;
              }

              v71 = &v10[16 * v48 + 32];
              v73 = *v71;
              v72 = *(v71 + 1);
              v59 = __OFSUB__(v72, v73);
              v74 = v72 - v73;
              if (v59)
              {
                goto LABEL_143;
              }

              if (__OFADD__(v69, v74))
              {
                goto LABEL_144;
              }

              if (v69 + v74 < v51)
              {
                goto LABEL_86;
              }

              if (v51 < v74)
              {
                v48 = v46 - 2;
              }
            }
          }

          else
          {
            if (v46 == 3)
            {
              v49 = *(v10 + 4);
              v50 = *(v10 + 5);
              v59 = __OFSUB__(v50, v49);
              v51 = v50 - v49;
              v52 = v59;
              goto LABEL_72;
            }

            v75 = &v10[16 * v46];
            v77 = *v75;
            v76 = *(v75 + 1);
            v59 = __OFSUB__(v76, v77);
            v69 = v76 - v77;
            v70 = v59;
LABEL_86:
            if (v70)
            {
              goto LABEL_139;
            }

            v78 = &v10[16 * v48];
            v80 = *(v78 + 4);
            v79 = *(v78 + 5);
            v59 = __OFSUB__(v79, v80);
            v81 = v79 - v80;
            if (v59)
            {
              goto LABEL_142;
            }

            if (v81 < v69)
            {
              break;
            }
          }

          v86 = v48 - 1;
          if (v48 - 1 >= v46)
          {
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          if (!*a3)
          {
            goto LABEL_155;
          }

          v87 = *&v10[16 * v86 + 32];
          v88 = *&v10[16 * v48 + 40];
          sub_1A42E9AB8((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v48 + 32]), (*a3 + 8 * v88), v7, v8);
          if (v6)
          {
          }

          if (v88 < v87)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1A3D86884(v10);
          }

          if (v86 >= *(v10 + 2))
          {
            goto LABEL_134;
          }

          v89 = &v10[16 * v86];
          *(v89 + 4) = v87;
          *(v89 + 5) = v88;
          sub_1A3D867F8(v48);
          v46 = *(v10 + 2);
          if (v46 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = v118;
      v7 = a3[1];
      if (v118 >= v7)
      {
        goto LABEL_120;
      }

      goto LABEL_4;
    }

    break;
  }

  if (v90)
  {
    v104 = *v96;
    v94 = *(v96 + 8);
    *v96 = v94;
    *(v96 + 8) = v104;
    v96 -= 8;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_103;
    }

    goto LABEL_105;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  if (!a5)
  {
    do
    {
      sub_1A524E6E4();
      __break(1u);
LABEL_162:
      ;
    }

    while (!v18);
  }

  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A42E9AB8(void **__dst, id *__src, id *a3, void **a4, uint64_t a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[v11];
    if (v9 >= 8 && v7 < v6)
    {
      do
      {
        v16 = *v5;
        v17 = *v7;
        v18 = v16;
        v19 = [v17 type];
        if (v19 == [v18 type])
        {
          if (a5 == 1)
          {
            v20 = v17;
            v21 = v18;
            v22 = 1;
          }

          else
          {
            if (a5 != 2)
            {
              goto LABEL_53;
            }

            v20 = v18;
            v21 = v17;
            v22 = 2;
          }

          v25 = sub_1A42E8B64(v20, v21, v22);

          if (v25 != -1)
          {
LABEL_21:
            v23 = v5;
            v24 = v8 == v5++;
            if (v24)
            {
              goto LABEL_23;
            }

LABEL_22:
            *v8 = *v23;
            goto LABEL_23;
          }
        }

        else
        {

          if (v19 != 1)
          {
            goto LABEL_21;
          }
        }

        v23 = v7;
        v24 = v8 == v7++;
        if (!v24)
        {
          goto LABEL_22;
        }

LABEL_23:
        ++v8;
      }

      while (v5 < v15 && v7 < v6);
    }

    v7 = v8;
LABEL_49:
    if (v7 != v5 || v7 >= (v5 + ((v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v7, v5, 8 * (v15 - v5));
    }

    return 1;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[v14];
  if (v12 < 8 || v7 <= v8)
  {
    goto LABEL_49;
  }

LABEL_31:
  v26 = v7 - 1;
  v27 = v6;
  v28 = v15;
  v36 = v7 - 1;
  while (1)
  {
    v29 = *--v28;
    v30 = *v26;
    v31 = v29;
    v32 = v30;
    v33 = [v31 type];
    if (v33 != [v32 type])
    {

      v6 = v27 - 1;
      if (v33 == 1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    }

    if (a5 == 1)
    {
      v34 = sub_1A42E8B64(v31, v32, 1);
      goto LABEL_40;
    }

    if (a5 != 2)
    {
      break;
    }

    v34 = sub_1A42E8B64(v32, v31, 2);
LABEL_40:

    v6 = v27 - 1;
    if (v34 == -1)
    {
LABEL_43:
      if (v27 != v7)
      {
        *v6 = *v36;
      }

      if (v15 <= v5 || (--v7, v36 <= v8))
      {
        v7 = v36;
        goto LABEL_49;
      }

      goto LABEL_31;
    }

LABEL_41:
    v26 = v7 - 1;
    if (v15 != v27)
    {
      *v6 = *v28;
    }

    v15 = v28;
    v27 = v6;
    if (v28 <= v5)
    {
      v15 = v28;
      goto LABEL_49;
    }
  }

LABEL_53:
  if (!a5)
  {
    sub_1A524E6E4();
    __break(1u);
  }

  result = sub_1A524EB44();
  __break(1u);
  return result;
}

uint64_t sub_1A42E9EA0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A524E2B4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A42414C4(v3, 0);
  sub_1A3D789B4((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1A42E9F44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A42E9FA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Height = CGRectGetHeight(*&a1);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  Width = CGRectGetWidth(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  v10 = CGRectGetHeight(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetHeight(v17);
  v11 = 0.1;
  if (Width >= Height)
  {
    v11 = 0.15;
  }

  v12 = v10 * v11;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetHeight(v18);

  return UIEdgeInsetsInsetRect(a1, a2, a3, a4, v12, 0.0);
}

uint64_t sub_1A42EA1F8()
{
  result = qword_1EB124BB8;
  if (!qword_1EB124BB8)
  {
    sub_1A52457D4();
  }

  return result;
}

uint64_t sub_1A42EA250(uint64_t a1)
{
  v2 = sub_1A42EA1F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LemonadeUserAlbumsPhotosPagingGridConfiguration.initialItemProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LemonadeUserAlbumsPhotosPagingGridConfiguration.makeItemListManager()()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:

    return v1;
  }

  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    v1 = sub_1A42EA6C0(v3);

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

id sub_1A42EA6C0(void *a1)
{
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() transientCollectionListWithCollections:v2 title:v3 identifier:0 photoLibrary:result];

    sub_1A42EC940(0, &qword_1EB129FD8, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListManager);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 2;
    v7 = v6;
    sub_1A3C6C180(&v14);
    v22 = v14;
    v23 = v15;
    sub_1A3C6C18C(&v20);
    v18 = v20;
    v19 = v21;
    LOBYTE(v5) = sub_1A3C5A374();
    v8 = sub_1A3C30368();
    v9 = sub_1A3C5A374();
    v10 = sub_1A3C5A374();
    v11 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v22, 0, &unk_1F1704990, 0, 1, &v18, v5 & 1, &v24, v17, v8, v9 & 1, v10 & 1, v11 & 1, 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v7, 0, v25, v17, &v14, sub_1A42ECA28, v12);
  }

  __break(1u);
  return result;
}

id sub_1A42EA900(void *a1)
{
  v2 = sub_1A524CA14();
  v3 = sub_1A524C634();
  result = [a1 photoLibrary];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() transientCollectionListWithCollections:v2 title:v3 identifier:0 photoLibrary:result];

    sub_1A42EC940(0, &qword_1EB129FB0, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListManager);
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    v24 = 2;
    v7 = v6;
    sub_1A3C6C180(&v14);
    v22 = v14;
    v23 = v15;
    sub_1A3C6C18C(&v20);
    v18 = v20;
    v19 = v21;
    LOBYTE(v5) = sub_1A3C5A374();
    v8 = sub_1A3C30368();
    v9 = sub_1A3C5A374();
    v10 = sub_1A3C5A374();
    v11 = sub_1A3C5A374();
    PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v22, 0, &unk_1F17049B8, 0, 1, &v18, v5 & 1, &v24, v17, v8, v9 & 1, v10 & 1, v11 & 1, 0);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = a1;
    PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v7, 0, v25, v17, &v14, sub_1A42EC9A8, v12);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A42EAB40@<X0>(uint64_t (*result)()@<X0>, uint64_t (*a2)()@<X1>, uint64_t (**a3)()@<X8>))()
{
  a3[1] = a2;
  a3[2] = result;
  *a3 = sub_1A41C6230;
  a3[3] = 0;
  return result;
}

void (*sub_1A42EAB60@<X0>(void (*a1)(uint64_t a1)@<X0>, void (**a2)(uint64_t a1)@<X8>))(uint64_t a1)
{
  a2[2] = 0;
  a2[3] = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *a2 = sub_1A42EABD0;
  a2[1] = v3;

  return a1;
}

void sub_1A42EABD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = a1;
  v3 = [v2 px_opaqueIdentifier];
  v5 = sub_1A3C52C70(0, &qword_1EB12B160);
  v4 = v3;
  sub_1A42EC940(0, &qword_1EB125470, &qword_1EB126CD0, 0x1E6978758, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A42EC9C4(&qword_1EB125478, &qword_1EB125470, &qword_1EB126CD0, 0x1E6978758);
  sub_1A5246424();
}

uint64_t LemonadeUserAlbumsPhotosPagingGridConfiguration.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A524EC94();
  if (v1)
  {
    MEMORY[0x1A590A010](v1);
  }

  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A42EAE48()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:

    return v1;
  }

  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = v2;
    v1 = sub_1A42EA6C0(v3);

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

void sub_1A42EAEFC()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    MEMORY[0x1A590A010]();
  }

  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }
}

void LemonadeUserAlbumsPhotosPagingGridConfiguration.hash(into:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 16))
  {
    MEMORY[0x1A590A010]();
  }

  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }
}

uint64_t sub_1A42EB004()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A524EC94();
  if (v1)
  {
    MEMORY[0x1A590A010](v1);
  }

  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECE4();
}

uint64_t LemonadeSharedAlbumsPhotosPagingGridConfiguration.initialItemProvider.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1A42EB0A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = sub_1A42ECB78;
  a3[2] = a2;
  a3[3] = 0;
  return result;
}

id sub_1A42EB0C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[3] = a1;
  *a2 = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  a2[1] = sub_1A42EBD10;
  a2[2] = v3;

  return a1;
}

uint64_t LemonadeSharedAlbumsPhotosPagingGridConfiguration.makeItemListManager()()
{
  if (*v0)
  {
    v1 = *v0;
LABEL_5:

    return v1;
  }

  v2 = v0[3];
  if (v2)
  {
    v3 = v2;
    v1 = sub_1A42EA900(v3);

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t LemonadeSharedAlbumsPhotosPagingGridConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1A524EC94();
  if (v1)
  {
    MEMORY[0x1A590A010](v1);
  }

  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A42EB24C()
{
  if (*v0)
  {
    v1 = *v0;
LABEL_5:

    return v1;
  }

  v2 = v0[3];
  if (v2)
  {
    v3 = v2;
    v1 = sub_1A42EA900(v3);

    goto LABEL_5;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t _s12PhotosUICore08LemonadeA38PagingAssetCollectionGridConfigurationV19initialItemProvideryAA08PhotoKitJ0CySo07PHAssetF0CGSgAA0lmJ18ListImplementationCyAHGcvg_0()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_1A42EB330()
{
  v1 = v0[3];
  if (*v0)
  {
    MEMORY[0x1A590A010]();
  }

  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }
}

void LemonadeSharedAlbumsPhotosPagingGridConfiguration.hash(into:)()
{
  v1 = v0[3];
  if (*v0)
  {
    MEMORY[0x1A590A010]();
  }

  if (v1)
  {
    v2 = v1;
    sub_1A524DC04();
  }
}

uint64_t sub_1A42EB440()
{
  v1 = *v0;
  v2 = v0[3];
  sub_1A524EC94();
  if (v1)
  {
    MEMORY[0x1A590A010](v1);
  }

  if (v2)
  {
    v3 = v2;
    sub_1A524DC04();
  }

  return sub_1A524ECE4();
}

uint64_t sub_1A42EB4AC(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A3C37668(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v53 - v12;
  LODWORD(v14) = *a2;
  v15 = a1;
  v16 = (*(a5 + 24))(a4, a5, v11);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v17 = [swift_getObjCClassFromMetadata() sharedInstance];
  v18 = [v17 enableDetailsViewPrototype];

  v58 = v14;
  v57 = a3;
  if (!v18)
  {
    goto LABEL_4;
  }

  (*(*v16 + 440))(INFINITY);
  v14 = a4;
  v19 = (*(a5 + 32))(a4, a5);
  (*(*v16 + 280))();
  v20 = v19();

  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = sub_1A472ED80(v21);

    a4 = v14;
    LOBYTE(v14) = v58;
    a3 = v57;
    if (v22)
    {
LABEL_13:

      return v22;
    }

LABEL_4:
    v23 = MEMORY[0x1A590D320]();
    v56 = v13;
    if (v23)
    {
      (*(*v16 + 440))(0.5);
    }

    v24 = *(*(a3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 40);
    swift_getAssociatedTypeWitness();
    v25 = type metadata accessor for PhotoKitItemListManager();
    v53[0] = swift_getWitnessTable();
    v53[1] = v25;
    v53[3] = type metadata accessor for PhotosPagingViewConfiguration();
    v26 = swift_allocObject();
    *(v26 + 16) = a4;
    *(v26 + 24) = a5;
    v54 = v24;
    *(v26 + 32) = v24;
    *(v26 + 40) = v16;
    *(v26 + 48) = v24 != 0;
    *(v26 + 56) = a3;
    *(v26 + 64) = v14;
    v59 = v16;
    v27 = a4;
    v28 = a5;
    v29 = *(a5 + 32);
    v30 = v24;
    swift_retain_n();
    v55 = v30;

    v53[2] = v15;
    v31 = v29;
    v32 = v29(a4, v28);
    v34 = v33;
    v35 = swift_allocObject();
    v35[2] = v27;
    v35[3] = v28;
    v35[4] = v32;
    v35[5] = v34;
    v62 = v14;
    v36 = sub_1A41FE5EC();
    v37 = sub_1A3EA80D8(v59, sub_1A42EBFB8, v26, sub_1A42EC6B4, v35, v36, 0);
    v38 = v27;
    v39 = v59;
    v40 = v31(v38, v28);
    (*(*v39 + 280))();
    v41 = v40();
    v42 = v54;

    v43 = v56;
    if (v41)
    {
      if (v42)
      {
        v60 = v41;
        v44 = (*(*v37 + 144))(&v60);
        v45 = [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];

        v46 = *(v41 + 16);
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;
          v49 = v46;
          v50 = [v48 localizedTitle];
          [v45 setTitle_];
        }

        v61 = v58;
        v51 = sub_1A472901C();
        v22 = sub_1A44AE5E0(v45, v51, v42 != 0);

        goto LABEL_13;
      }
    }

    type metadata accessor for PhotosPagingViewController();

    sub_1A46535F0(v43);
    sub_1A4998CE0(v37);
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A42EBAE8@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  result = sub_1A3C34460(a1, a4);
  *(a4 + 40) = v6;
  *(a4 + 48) = a3;
  return result;
}

uint64_t sub_1A42EBB28()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = __swift_project_boxed_opaque_existential_1(v0, v1);
  v5 = *(v0 + 40);
  return sub_1A42EB4AC(v3, &v5, *(v0 + 48), v1, v2);
}

uint64_t sub_1A42EBB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42EC898();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A42EBBE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A42EC898();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A42EBC4C()
{
  sub_1A42EC898();
  sub_1A5249ED4();
  __break(1u);
}

BOOL _s12PhotosUICore018LemonadeUserAlbumsA23PagingGridConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *(a2 + 16);
    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    return !v7 && v6 == v5;
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B160);
    v9 = v2;
    v10 = v3;
    v11 = sub_1A524DBF4();

    return v11 & 1;
  }
}

void sub_1A42EBD10(uint64_t a1)
{
  v2 = *(v1 + 16);
  v6 = a1;
  v3 = [v2 px_opaqueIdentifier];
  v5 = sub_1A3C52C70(0, &qword_1EB12B160);
  v4 = v3;
  sub_1A42EC940(0, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for PhotoKitItemListImplementation);
  sub_1A42EC9C4(&qword_1EB129750, &qword_1EB129748, &qword_1EB126AC0, 0x1E6978650);
  sub_1A5246424();
}

BOOL _s12PhotosUICore020LemonadeSharedAlbumsA23PagingGridConfigurationV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v2 = a1[3];
  v3 = a2[3];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *a2;
    if (*a1)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    return !v6 && *a1 == v5;
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B160);
    v8 = v2;
    v9 = v3;
    v10 = sub_1A524DBF4();

    return v10 & 1;
  }
}

uint64_t sub_1A42EBFB8(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v2 = *(v1 + 40);
  v56 = *(v1 + 48);
  v57 = *(v1 + 56);
  v55 = *(v1 + 64);
  v4 = *a1;
  if (v3)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2D0))();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1A3C6E9EC();
  v7 = sub_1A3C5A374();
  v8 = sub_1A3C5A374();
  v9 = sub_1A3C30368();
  v10 = sub_1A3C5A374();
  v11 = sub_1A3C5A374();
  v12 = sub_1A3C5A374();
  PhotosViewConfigurationContext.init(selectionCoordinator:loadingStatusManager:basePredicate:initialFilterPredicate:sortDescriptors:contentStartingPosition:noContentPlaceholderType:shouldReverseOrder:curationContext:isForSmartAlbumAllPhotosCollection:allowsSwipeToSelect:isVerySlowFetch:wantsNumberedSelectionStyle:startsInSelectMode:photosViewDelegate:pickerClientBundleIdentifier:)(v5, 0, 0, 0, 0, 2, v6, v7 & 1, v63, 1, v8 & 1, v9 & 1, v10 & 1, v11 & 1, v12 & 1, 0, 0, 0);
  v13 = *(v4 + 16);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = v13;
    if ([v15 px_isSharedAlbum])
    {
      v17 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(v15, 0, v66, v67, v63[0]);

      goto LABEL_23;
    }
  }

  v18 = *(v4 + 16);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29)
    {
      v30 = v29;
      v31 = *(v4 + 112);
      v32 = *(v31 + 16);
      v33 = v18;
      if (v32)
      {
        v34 = sub_1A3E4BF44(2u);
        if (v35)
        {
          v36 = *(*(v31 + 56) + 8 * v34);
LABEL_19:
          v41 = [v30 photoLibrary];
          v42 = [v36 firstObject];
          v43 = v63[2];
          v44 = v63[3];
          v45 = v64;
          if (v64)
          {
            sub_1A3C52C70(0, &qword_1EB126B60);
            v45 = sub_1A524CA14();
          }

          v17 = PXPhotosViewConfigurationForAppAndPickerWithAssetCollectionFetchResult(v36, 0, v41, v42, 0, v43, v44, v45, v63[0], v66, v67, v68, v69, v70);

          goto LABEL_23;
        }
      }

      v37 = (*(*v2 + 448))(v4);
      if (v37)
      {
        v38 = *(v37 + 112);
        if (*(v38 + 16))
        {
          v39 = sub_1A3E4BF44(2u);
          if (v40)
          {
            v36 = *(*(v38 + 56) + 8 * v39);

            goto LABEL_19;
          }
        }
      }

      sub_1A524D244();
      v50 = *sub_1A3CAA3FC();
      sub_1A5246DF4();

      sub_1A524E404();

      v60[0] = 0xD000000000000020;
      v60[1] = 0x80000001A53D1450;
      v51 = [v30 description];
      v52 = sub_1A524C674();
      v54 = v53;

      MEMORY[0x1A5907B60](v52, v54);
    }

    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  if (v3)
  {
    v20 = MEMORY[0x1E69E7D40];
    v21 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x258);
    v22 = v19;
    v23 = v18;
    v24 = v3;
    v25 = v21();
    LOBYTE(v21) = v66;
    v26 = v67;
    v27 = v63[0];
    v28 = (*((*v20 & *v24) + 0x318))();
    v17 = PXPhotosViewConfigurationForImagePickerWithAssetCollection(v22, v25, v21, v26, v27, v28 & 1);
  }

  else
  {
    v17 = PXPhotosViewConfigurationForAssetCollectionWithReverseSortOrder(v19, 0, v66, v67, v63[0]);
  }

LABEL_23:
  [v17 setContentStartingPosition_];
  if (!v56)
  {
    v61 = type metadata accessor for PhotoKitItem();
    WitnessTable = swift_getWitnessTable();
    v60[0] = v4;
    v59 = v55;
    v58 = 3;

    v47 = sub_1A3C6E9EC();
    PXPhotosViewConfiguration.adjustedForLemonadePhotosGrid(item:navigationType:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v60, &v59, v57, &v58, v47, 0);
  }

  v61 = type metadata accessor for PhotoKitItem();
  WitnessTable = swift_getWitnessTable();
  v60[0] = v4;
  v59 = 3;

  v46 = sub_1A3C6E9EC();
  v48 = PXPhotosViewConfiguration.adjustedForLemonadePickerPhotosGrid(item:navigationContext:initialPositionDetent:disallowedBehaviors:presentationEnvironment:)(v60, v57, &v59, v46, 0);

  sub_1A42EC8EC(v63);
  sub_1A403E594(v60);
  return v48;
}

uint64_t sub_1A42EC6B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1A42EC6E8(uint64_t a1)
{
  result = sub_1A4192548();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A42EC714()
{
  result = qword_1EB12AE78;
  if (!qword_1EB12AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE78);
  }

  return result;
}

unint64_t sub_1A42EC768(uint64_t a1)
{
  result = sub_1A41924F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A42EC794()
{
  result = qword_1EB137890;
  if (!qword_1EB137890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137890);
  }

  return result;
}

unint64_t sub_1A42EC7EC()
{
  result = qword_1EB12AED0;
  if (!qword_1EB12AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AED0);
  }

  return result;
}

unint64_t sub_1A42EC898()
{
  result = qword_1EB137898;
  if (!qword_1EB137898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137898);
  }

  return result;
}

void sub_1A42EC940(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A42EC9C4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A42EC940(255, a2, a3, a4, type metadata accessor for PhotoKitItemListImplementation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A42ECA44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  sub_1A42EC940(0, a2, a3, a4, type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput);
  v6 = PhotoKitItemListManager.FetchResultProviderInput.defaultFetchOptions.getter();
  v7 = objc_opt_self();
  v8 = objc_opt_self();
  sub_1A3CB8F68();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  *(v9 + 32) = v5;
  sub_1A3C52C70(0, &qword_1EB126CD0);
  v10 = v5;
  v11 = sub_1A524CA14();

  v12 = [v8 transientCollectionListWithCollections:v11 title:0];

  v13 = [v7 fetchCollectionsInCollectionList:v12 options:v6];
  return v13;
}

uint64_t sub_1A42ECE4C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A42ECEA4(result);
  }

  return result;
}

void sub_1A42ECEA4(uint64_t a1)
{
  v7 = *v1;
  v10 = *(*(v7 + 88) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[1] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = swift_checkMetadataState();
  v8 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v12 = sub_1A524CAB4();
  v9 = v1;
  sub_1A5245904();
}

uint64_t sub_1A42ED3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v20 = a4;
  v22 = a6;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v21 = type metadata accessor for PlaceholderUIItem();
  v12 = sub_1A3C38BD4();
  v14 = v13;
  (*(v10 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v15 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = v20;
  *(v16 + 5) = a5;
  (*(v10 + 32))(&v16[v15], &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v17 = sub_1A3D41FBC();
  result = sub_1A4837EEC(v12, v14, 0, 0, 0, 0, 0, sub_1A42ED7F8, v17, v16, a3, a5);
  *v22 = result;
  return result;
}

uint64_t sub_1A42ED6D4()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1A42ED70C()
{
  sub_1A42ED6D4();

  return swift_deallocClassInstance();
}

void sub_1A42ED858(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A42EFAD8(0, &qword_1EB1378A0, sub_1A42EDB34);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TimelineEngineCellViewModifier(0);
  v10 = (v2 + *(v9 + 24));
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = (*(v12 + 104))(v11, v12);
  sub_1A524BE94();
  v15 = v14;
  v17 = v16;
  sub_1A42EDC24();
  (*(*(v18 - 8) + 16))(v8, a1, v18);
  sub_1A42EDBE8(0);
  v20 = &v8[*(v19 + 36)];
  *v20 = v13;
  v20[1] = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  v21 = v10[3];
  v22 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v21);
  v23 = (*(v22 + 112))(v21, v22);
  v24 = v10[3];
  v25 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v24);
  (*(v25 + 112))(v24, v25);
  v27 = v26;
  sub_1A42EDBAC(0);
  v29 = &v8[*(v28 + 36)];
  *v29 = v23;
  *(v29 + 1) = v27;
  v30 = v10[3];
  v31 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v30);
  v32 = (*(v31 + 120))(v30, v31);
  sub_1A42EDB70(0);
  v34 = &v8[*(v33 + 36)];
  *v34 = v32;
  v34[8] = 0;
  v35 = v10[3];
  v36 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v35);
  v37 = (*(v36 + 128))(v35, v36);
  sub_1A42EDB34(0);
  *&v8[*(v38 + 36)] = v37;
  v39 = v10[3];
  v40 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v39);
  *&v8[*(v6 + 44)] = (*(v40 + 136))(v39, v40);
  if (*(v2 + *(v9 + 28)))
  {
    v41 = 0.0;
  }

  else
  {
    v41 = 1.0;
  }

  sub_1A42EDCB8(v8, a2);
  sub_1A42EDD38();
  *(a2 + *(v42 + 36)) = v41;
}

void sub_1A42EDC24()
{
  if (!qword_1EB1378C8)
  {
    type metadata accessor for TimelineEngineCellViewModifier(255);
    sub_1A42F07D4(&qword_1EB1378D0, type metadata accessor for TimelineEngineCellViewModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1378C8);
    }
  }
}

uint64_t sub_1A42EDCB8(uint64_t a1, uint64_t a2)
{
  sub_1A42EFAD8(0, &qword_1EB1378A0, sub_1A42EDB34);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A42EDD38()
{
  if (!qword_1EB1378D8)
  {
    sub_1A42EFAD8(255, &qword_1EB1378A0, sub_1A42EDB34);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1378D8);
    }
  }
}

uint64_t sub_1A42EDDB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42EDE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a6;
  v10 = type metadata accessor for TimelineEngineCell();
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimelineEngineCellViewModifier(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42EE008(a2, v13, type metadata accessor for TimelineEngineCell);
  sub_1A3C341C8(a3, v21);
  v17 = *(a2 + *(v11 + 36)) == 1 && sub_1A3F474AC() || sub_1A3F474D0();
  *v16 = a1;
  sub_1A42EDDB4(v13, v16 + v14[5], type metadata accessor for TimelineEngineCell);
  sub_1A3C34460(v21, v16 + v14[6]);
  *(v16 + v14[7]) = v17;

  MEMORY[0x1A5906490](v16, a5, v14, v20);
  return sub_1A42EEEA0(v16, type metadata accessor for TimelineEngineCellViewModifier);
}

uint64_t sub_1A42EE008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A42EE070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v4 = type metadata accessor for TimelineEngineCell();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = (&v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimelineEngineCellFrame(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v84 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42EECA4(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42EEDEC(0);
  v79 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42EEE28(0);
  v80 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42EEE64(0);
  v81 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v83 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v2;
  v23.n128_f64[0] = (*(**v2 + 1344))(v20);
  (*(*v22 + 1392))(v23);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A42EED58();
  (*(*(v24 - 8) + 16))(v13, a1, v24);
  sub_1A42EED1C(0);
  v26 = &v13[*(v25 + 36)];
  v27 = v95;
  *v26 = v94;
  *(v26 + 1) = v27;
  *(v26 + 2) = v96;
  v28 = sub_1A42EE884();
  sub_1A524BE94();
  v30 = v29;
  v32 = v31;
  sub_1A42EECE0(0);
  v34 = &v13[*(v33 + 36)];
  *v34 = v28;
  v34[1] = v28;
  *(v34 + 2) = v30;
  *(v34 + 3) = v32;
  sub_1A42EE9CC(v91);
  v36 = v92;
  v35 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v37 = (*(v35 + 112))(v36, v35);
  sub_1A42EE9CC(v88);
  v38 = v89;
  v39 = v90;
  __swift_project_boxed_opaque_existential_1(v88, v89);
  (*(v39 + 112))(v38, v39);
  v40 = &v13[*(v11 + 44)];
  *v40 = v37;
  *(v40 + 1) = v41;
  __swift_destroy_boxed_opaque_existential_0(v88);
  __swift_destroy_boxed_opaque_existential_0(v91);
  v42 = *(type metadata accessor for TimelineIntroViewModifier(0) + 20);
  sub_1A3F46634();
  v43 = *(*v22 + 1488);
  v45 = v44 / v43();
  v46 = 1.0;
  if (v45 <= 1.0)
  {
    v47 = v45;
  }

  else
  {
    v47 = 1.0;
  }

  v48 = 1.0 - v47;
  if (v45 > 0.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 1.0;
  }

  v50 = 0.0;
  if (1.0 - pow(v49, 4.0) >= 1.0)
  {
    sub_1A42EE9CC(v91);
    v51 = v92;
    v52 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v50 = (*(v52 + 120))(v51, v52);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  sub_1A42EDDB4(v13, v16, sub_1A42EECA4);
  v53 = &v16[*(v79 + 36)];
  *v53 = v50;
  v53[8] = 0;
  sub_1A3F46634();
  v55 = v54 / v43();
  if (v55 <= 1.0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 1.0;
  }

  v57 = 1.0 - v56;
  if (v55 > 0.0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 1.0;
  }

  if (1.0 - pow(v58, 4.0) >= 1.0)
  {
    sub_1A42EE9CC(v91);
    v59 = v92;
    v60 = v93;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v46 = (*(v60 + 128))(v59, v60);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  v61 = v82;
  sub_1A42EDDB4(v16, v82, sub_1A42EEDEC);
  *(v61 + *(v80 + 36)) = v46;
  v62 = v85;
  sub_1A42EE008(v2 + v42, v85, type metadata accessor for TimelineEngineFrame);
  v63 = *(*v22 + 1200);

  v65 = v63(v64);
  v66 = (*(*v22 + 1440))();
  v67 = v86;
  sub_1A4106ADC(v86, v65, v66, v68);
  v69 = v84;
  sub_1A3F47594(v22, v62, v67, v84);
  sub_1A3F46CE8();
  v71 = v70;
  sub_1A42EEEA0(v69, type metadata accessor for TimelineEngineCellFrame);
  if (v71 <= 2.0)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  v73 = v83;
  sub_1A42EDDB4(v61, v83, sub_1A42EEE28);
  *(v73 + *(v81 + 36)) = v72;
  sub_1A42EE9CC(v91);
  v74 = v92;
  v75 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v76 = (*(v75 + 136))(v74, v75);
  __swift_destroy_boxed_opaque_existential_0(v91);
  v77 = v87;
  sub_1A42EDDB4(v73, v87, sub_1A42EEE64);
  sub_1A42EFAD8(0, &qword_1EB137920, sub_1A42EEE64);
  *(v77 + *(v78 + 36)) = v76;
}

long double sub_1A42EE884()
{
  sub_1A42EE9CC(v13);
  v1 = v14;
  v2 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v3 = (*(v2 + 104))(v1, v2);
  v4 = *v0;
  v5 = v3 * (*(**v0 + 1152))();
  __swift_destroy_boxed_opaque_existential_0(v13);
  type metadata accessor for TimelineIntroViewModifier(0);
  sub_1A3F46634();
  v7 = v6 / (*(*v4 + 1488))();
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  v9 = 1.0 - v8;
  if (v7 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = pow(v10, 4.0);
  return 1.0 - (1.0 - v11) + v5 * (1.0 - v11);
}

uint64_t sub_1A42EE9CC@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for TimelineEngineFrame(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimelineEngineCellFrame(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TimelineEngineCell();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v35 - v11);
  v36 = &v35 - v11;
  v13 = *v1;
  v14 = *(**v1 + 1200);
  v15 = swift_retain_n();
  v16 = v14(v15);
  v17 = *(*v13 + 1440);
  v18 = v17();
  sub_1A4106ADC(v12, v16, v18, v19);
  v20 = *(type metadata accessor for TimelineIntroViewModifier(0) + 20);
  sub_1A3F4678C();
  v22 = v21;
  v23 = v1 + v20;
  v24 = v37;
  v25 = sub_1A42EE008(v23, v37, type metadata accessor for TimelineEngineFrame);
  v26 = v14(v25);
  v27 = v17();
  sub_1A4106ADC(v9, v26, v27, v28);
  sub_1A3F47594(v13, v24, v9, v6);
  sub_1A3F471F8();
  v30 = v29;
  sub_1A42EEEA0(v6, type metadata accessor for TimelineEngineCellFrame);
  v31 = type metadata accessor for TimelineEngine3DGeometry();
  v32 = v38;
  v38[3] = v31;
  v32[4] = &off_1F16E75F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  return sub_1A3EF9390(v13, v36, boxed_opaque_existential_1, v22, v30);
}

void sub_1A42EED58()
{
  if (!qword_1EB1378F8)
  {
    type metadata accessor for TimelineIntroViewModifier(255);
    sub_1A42F07D4(&qword_1EB137900, type metadata accessor for TimelineIntroViewModifier);
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1378F8);
    }
  }
}

uint64_t sub_1A42EEEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A42EEF04(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v77 = a3;
  sub_1A42EF688(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42EF7EC(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A42EF828(0);
  v76 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a2 + 1344))(v16);
  (*(*a2 + 1536))();
  sub_1A42EF8D0(a2, a4);
  (*(*a2 + 1392))();
  (*(*a2 + 1584))();
  sub_1A42EF8D0(a2, a4);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A42EF73C();
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  sub_1A42EF700(0);
  v21 = &v10[*(v20 + 36)];
  v22 = v79;
  *v21 = v78;
  *(v21 + 1) = v22;
  *(v21 + 2) = v80;
  v23 = *(*a2 + 912);
  v24 = v23();
  v25 = sub_1A42EF8D0(a2, a4);
  v26 = (v25 + v24 * (1.0 - v25)) / sub_1A42EF998(a2, a4);
  sub_1A524BE94();
  v28 = v27;
  v30 = v29;
  sub_1A42EF6C4(0);
  v32 = &v10[*(v31 + 36)];
  *v32 = v26;
  *(v32 + 1) = v26;
  *(v32 + 2) = v28;
  *(v32 + 3) = v30;
  v33 = *(*a2 + 1632);
  v34 = v33();
  v35 = sub_1A42EF8D0(a2, a4);
  v36 = 0.0;
  v37 = v35 * v34 + (1.0 - v35) * 0.0;
  v33();
  sub_1A42EF8D0(a2, a4);
  v38 = v37 / sub_1A42EF998(a2, a4);
  v39 = sub_1A42EF998(a2, a4);
  (v33)(v39);
  v40 = sub_1A42EF8D0(a2, a4);
  (v33)(v40);
  v42 = v41;
  v43 = sub_1A42EF8D0(a2, a4);
  v44 = v43 * v42 + (1.0 - v43) * 0.0;
  sub_1A42EF998(a2, a4);
  v45 = sub_1A42EF998(a2, a4);
  v46 = &v10[*(v8 + 44)];
  *v46 = v38;
  v46[1] = v44 / v45;
  v47 = *(*a2 + 720);
  v48 = (a4 + -3.5 / v47()) / 0.35;
  if (v48 <= 0.0 || v48 <= 1.0 && v48 <= 0.1)
  {
    v49 = a4 + -3.5 / v47();
    v50 = v49 / 0.35;
    if (v49 / 0.35 <= 1.0)
    {
      v51 = v49 / 0.35;
    }

    else
    {
      v51 = 1.0;
    }

    v52 = v51 + -0.5;
    v53 = (*(*a2 + 1056))();
    v55 = fabs(v52);
    if (v50 <= 0.0)
    {
      v55 = 0.5;
    }

    v56 = (v54 + -0.5 + v55) / v54 * 20.0;
    v57 = (v23)(v53);
    v58 = sub_1A42EF8D0(a2, a4);
    v36 = v56 * ((v58 + v57 * (1.0 - v58)) / sub_1A42EF998(a2, a4));
  }

  v59 = sub_1A42EDDB4(v10, v14, sub_1A42EF688);
  v60 = &v14[*(v12 + 36)];
  *v60 = v36;
  v60[8] = 0;
  v61 = (a4 + -3.5 / (v47)(v59)) / 0.35;
  if (v61 <= 0.0 || (v62 = 1.0, v61 <= 1.0) && v61 <= 0.1)
  {
    v63 = a4 + -3.5 / v47();
    v64 = v63 / 0.35;
    if (v63 / 0.35 <= 1.0)
    {
      v65 = v63 / 0.35;
    }

    else
    {
      v65 = 1.0;
    }

    v66 = v65 + -0.5;
    (*(*a2 + 1104))();
    v68 = fabs(v66);
    if (v64 <= 0.0)
    {
      v68 = 0.5;
    }

    v62 = 1.0 - (v67 + -0.5 + v68) / v67;
  }

  v69 = sub_1A42EDDB4(v14, v18, sub_1A42EF7EC);
  *&v18[*(v76 + 36)] = v62;
  v70 = (a4 + -3.5 / (v47)(v69)) / 0.35;
  v71 = 1.0;
  if (v70 <= 1.0)
  {
    v71 = v70;
  }

  v72 = v71 * 1000.0;
  if (v70 > 0.0)
  {
    v73 = v72;
  }

  else
  {
    v73 = 0.0;
  }

  v74 = v77;
  sub_1A42EDDB4(v18, v77, sub_1A42EF828);
  sub_1A42EFAD8(0, &qword_1EB137960, sub_1A42EF828);
  *(v74 + *(v75 + 36)) = v73;
}

void sub_1A42EF73C()
{
  if (!qword_1EB137940)
  {
    sub_1A42EF798();
    v0 = sub_1A52499C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137940);
    }
  }
}

unint64_t sub_1A42EF798()
{
  result = qword_1EB137948;
  if (!qword_1EB137948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137948);
  }

  return result;
}

void sub_1A42EF864(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

long double sub_1A42EF8D0(uint64_t a1, double a2)
{
  v2 = (a2 + -3.5 / (*(*a1 + 720))()) / 0.35;
  if (v2 <= 1.0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = (v3 + -0.1) / 0.9;
  v5 = v2 > 0.0;
  v6 = -0.111111111;
  if (v5)
  {
    v6 = v4;
  }

  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  v8 = 1.0 - v7;
  if (v6 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  return 1.0 - pow(v9, 4.0);
}

long double sub_1A42EF998(uint64_t a1, double a2)
{
  v4 = (*(*a1 + 816))(a1);
  v5 = (*(*a1 + 864))();
  v6 = (*(*a1 + 720))();
  v7 = (a2 + -3.5 / v6) / 0.35;
  v8 = 0.0;
  if (v7 > 0.0)
  {
    if (v7 <= 1.0)
    {
      v8 = 0.1;
      if (v7 <= 0.1)
      {
        v8 = (a2 + -3.5 / v6) / 0.35;
      }
    }

    else
    {
      v8 = 0.1;
    }
  }

  v9 = v4 + (v5 - v4) * v8;
  v10 = sub_1A42EF8D0(a1, a2);
  return v10 + (1.0 - v10) * v9;
}

void sub_1A42EFAD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41EF370(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42EFB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TimelineIntroViewModifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A42EE008(a2, v10 + *(v11 + 20), type metadata accessor for TimelineEngineFrame);
  *v10 = a1;

  MEMORY[0x1A5906490](v10, a3, v8, a4);
  return sub_1A42EEEA0(v10, type metadata accessor for TimelineIntroViewModifier);
}

uint64_t sub_1A42EFC4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[0] = a1;
  *&v5[1] = a4;
  return MEMORY[0x1A5906490](v5, a2, &type metadata for TimelineOutroViewModifier, a3);
}

unint64_t sub_1A42EFD00()
{
  result = type metadata accessor for TimelineEngineSpec();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineCell();
    if (v2 <= 0x3F)
    {
      result = sub_1A42EFDA4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A42EFDA4()
{
  result = qword_1EB137968;
  if (!qword_1EB137968)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB137968);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_2(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1A42EFF88()
{
  result = type metadata accessor for TimelineEngineSpec();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineEngineFrame(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A42F001C()
{
  result = qword_1EB137978;
  if (!qword_1EB137978)
  {
    sub_1A42EFAD8(255, &qword_1EB1378A0, sub_1A42EDB34);
    sub_1A42F06A4(&qword_1EB137980, sub_1A42EDB34, sub_1A42F0120);
    sub_1A42F07D4(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137978);
  }

  return result;
}

unint64_t sub_1A42F0198()
{
  result = qword_1EB137998;
  if (!qword_1EB137998)
  {
    sub_1A42EDBE8(255);
    sub_1A42F07D4(&qword_1EB1379A0, sub_1A42EDC24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137998);
  }

  return result;
}

unint64_t sub_1A42F0248()
{
  result = qword_1EB1379A8;
  if (!qword_1EB1379A8)
  {
    sub_1A42EFAD8(255, &qword_1EB137920, sub_1A42EEE64);
    sub_1A42F06A4(&qword_1EB1379B0, sub_1A42EEE64, sub_1A42F034C);
    sub_1A42F07D4(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1379A8);
  }

  return result;
}

unint64_t sub_1A42F043C()
{
  result = qword_1EB1379D8;
  if (!qword_1EB1379D8)
  {
    sub_1A42EED1C(255);
    sub_1A42F07D4(&qword_1EB1379E0, sub_1A42EED58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1379D8);
  }

  return result;
}

unint64_t sub_1A42F04EC()
{
  result = qword_1EB1379E8;
  if (!qword_1EB1379E8)
  {
    sub_1A42EFAD8(255, &qword_1EB137960, sub_1A42EF828);
    sub_1A42F06A4(&qword_1EB1379F0, sub_1A42EF828, sub_1A42F05F0);
    sub_1A42F07D4(&unk_1EB127C50, sub_1A41EF370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1379E8);
  }

  return result;
}

uint64_t sub_1A42F06A4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A42F0724()
{
  result = qword_1EB137A10;
  if (!qword_1EB137A10)
  {
    sub_1A42EF700(255);
    sub_1A42F07D4(&qword_1EB137A18, sub_1A42EF73C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137A10);
  }

  return result;
}

uint64_t sub_1A42F07D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12PhotosUICore018TimelineEngineCellC8ModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  a2(255);
  sub_1A5248804();
  sub_1A42F07D4(a3, a4);
  return swift_getWitnessTable();
}

uint64_t type metadata accessor for LemonadeFeedView()
{
  result = qword_1EB1B6850;
  if (!qword_1EB1B6850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LemonadeFeedView.rootViewModelLayoutStyle.getter()
{
  if (*(v0 + *(type metadata accessor for LemonadeFeedView() + 40)))
  {
    sub_1A42F2404(&qword_1EB125900, type metadata accessor for LemonadeRootViewModel);
    sub_1A42F2404(&qword_1EB1258F8, type metadata accessor for LemonadeRootViewModel);
  }
}

uint64_t LemonadeFeedView.init(featureIdentifier:containerObject:hostViewController:spec:detailsContext:photoLibrary:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  sub_1A3C376BC(0, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v25 - v15;
  LOBYTE(a1) = *a1;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v17 = type metadata accessor for LemonadeFeedView();
  sub_1A42F25DC(a5, a7 + v17[8], &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, sub_1A3C376BC);
  *(a7 + v17[9]) = a6;
  v27 = a1;
  v26 = 12;
  sub_1A42F0CBC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v25[3] == v25[1] && v25[4] == v25[2])
  {

    goto LABEL_5;
  }

  v18 = sub_1A524EAB4();

  if (v18)
  {
LABEL_5:
    v19 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];
    type metadata accessor for LemonadeRootViewModel();
    v20 = sub_1A5244084();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    v21 = a6;
    v22 = v19;
    v23 = sub_1A3C5A374();
    sub_1A466CA74(v21, v22, 0, v16, v23 & 1);
  }

  result = sub_1A42F264C(a5, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, sub_1A3C376BC);
  *(a7 + v17[10]) = 0;
  return result;
}

unint64_t sub_1A42F0CBC()
{
  result = qword_1EB137A20;
  if (!qword_1EB137A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137A20);
  }

  return result;
}

uint64_t LemonadeFeedView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  switch(*v1)
  {
    case 1:
      v20 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      LOBYTE(v43) = 0;
      v21 = v20;
      sub_1A3C56CDC(v21, &v43, &v36);
      v34 = v36;
      v35 = WORD4(v36);
      sub_1A3C4AEA4();
      *&v44[8] = v22;
      *&v44[16] = sub_1A42F2404(&qword_1EB125948, sub_1A3C4AEA4);
      v23 = swift_allocObject();
      *&v43 = v23;
      v24 = sub_1A3C36888();
      sub_1A3C41894(&v34, v21, &type metadata for LemonadePeopleShelfProvider, v24, (v23 + 16));
      goto LABEL_18;
    case 2:
      v14 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      v15 = *(v1 + 8);
      if (v15)
      {
        objc_opt_self();
        v16 = swift_dynamicCastObjCClass();
        if (v16)
        {
          v17 = v15;
        }
      }

      else
      {
        v16 = 0;
      }

      *&v44[8] = &type metadata for LemonadeAlbumsFeature;
      *&v44[16] = sub_1A3C571BC();
      *&v43 = swift_allocObject();
      sub_1A3C41748(v14, v16, 0, v43 + 16);
      goto LABEL_18;
    case 3:
      v18 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C559F4();
    case 4:
      v6 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C51238(v6, 0, &v43);
      *(&v37 + 1) = &type metadata for LemonadeTripsFeature;
      v38 = sub_1A3C51F98();
      v7 = swift_allocObject();
      *&v36 = v7;
      v8 = *v44;
      v7[1] = v43;
      v7[2] = v8;
      *(v7 + 41) = *&v44[9];
      v9 = &v36;
      goto LABEL_19;
    case 5:
      v25 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C41D34(v25, &v36);
      *&v44[8] = &type metadata for LemonadeMediaTypesFeature;
      *&v44[16] = sub_1A3C44230();
      goto LABEL_17;
    case 6:
      v26 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C512B8(v26, &v36);
      *&v44[8] = &type metadata for LemonadeWallpaperFeature;
      *&v44[16] = sub_1A3C4444C();
      goto LABEL_17;
    case 7:
      v19 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C5125C(v19, &v36);
      *&v44[8] = &type metadata for LemonadeUtilitiesFeature;
      *&v44[16] = sub_1A3C573F0();
      goto LABEL_17;
    case 8:
      v29 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C51210(v29, &v36);
      *&v44[8] = &type metadata for LemonadeBookmarksFeature;
      *&v44[16] = sub_1A3C430F0();
      goto LABEL_17;
    case 9:
      v11 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C512E0(v11, &v43);
      *(&v37 + 1) = &type metadata for LemonadeSharedAlbumsFeature;
      v38 = sub_1A3C522B4();
      v12 = swift_allocObject();
      *&v36 = v12;
      v13 = *v44;
      v12[1] = v43;
      v12[2] = v13;
      v12[3] = *&v44[16];
      v9 = &v36;
      goto LABEL_19;
    case 0xA:
      v27 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      *&v44[8] = type metadata accessor for LemonadeICloudLinksFeature();
      *&v44[16] = sub_1A42F2404(&qword_1EB129C70, type metadata accessor for LemonadeICloudLinksFeature);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      sub_1A477F81C(v27, boxed_opaque_existential_1);
      goto LABEL_18;
    case 0xB:
      v4 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      *&v44[8] = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
      *&v44[16] = sub_1A42F2404(&qword_1EB1297B8, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      v5 = __swift_allocate_boxed_opaque_existential_1(&v43);
      sub_1A3C41D90(v4, 0, 0, v5);
      goto LABEL_18;
    case 0xC:
      v10 = sub_1A42F264C(&v40, &qword_1EB12A600, sub_1A42F1380, sub_1A3C376BC);
      v40 = 0u;
      v41 = 0u;
      v42 = 0;
      goto LABEL_20;
    default:
      v3 = *(v1 + *(type metadata accessor for LemonadeFeedView() + 36));
      sub_1A3C56CF0(v3, &v36);
      *&v44[8] = &type metadata for LemonadeEventsFeature;
      *&v44[16] = sub_1A3C44010();
LABEL_17:
      v30 = swift_allocObject();
      *&v43 = v30;
      v31 = v37;
      *(v30 + 16) = v36;
      *(v30 + 32) = v31;
      *(v30 + 48) = v38;
LABEL_18:
      v9 = &v43;
LABEL_19:
      v10 = sub_1A42F2188(v9, &v40);
LABEL_20:
      v34 = *(v1 + 24);
      MEMORY[0x1EEE9AC00](v10);
      v32 = type metadata accessor for LemonadeFeedSpec();
      sub_1A42F24F4(0, &qword_1EB137A28, MEMORY[0x1E697F960]);
      sub_1A42F2028();

      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v39);
      LemonadeSpecsProviderView.init(model:presentationContext:content:)(&v34, &v39, sub_1A42F2020, v32, a1);
      return sub_1A42F264C(&v40, &qword_1EB12A600, sub_1A42F1380, sub_1A3C376BC);
  }
}

unint64_t sub_1A42F1380()
{
  result = qword_1EB12A608;
  if (!qword_1EB12A608)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12A608);
  }

  return result;
}

uint64_t sub_1A42F13E4@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v81 = a3;
  sub_1A3C376BC(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v67 - v5;
  v6 = MEMORY[0x1E697F948];
  sub_1A42F24F4(0, &qword_1EB137A60, MEMORY[0x1E697F948]);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v80 = &v67 - v8;
  sub_1A42F2578(0, &qword_1EB137A68, v6);
  v74 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - v10;
  sub_1A42F2578(0, &qword_1EB137A30, MEMORY[0x1E697F960]);
  v78 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v76 = &v67 - v12;
  v73 = type metadata accessor for LemonadeNavigationDestinationView();
  MEMORY[0x1EEE9AC00](v73);
  v69 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v67 - v15);
  sub_1A3C376BC(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v67 - v18;
  v19 = type metadata accessor for LemonadeNavigationDestination();
  v70 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v67 - v28;
  type metadata accessor for LemonadePhotoLibraryContext();
  v30 = type metadata accessor for LemonadeFeedView();
  v31 = *&a1[*(v30 + 36)];
  v32 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  v82 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v31, 0, v32);
  v33 = a1;
  v89 = *a1;
  v88 = 12;
  sub_1A42F0CBC();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v85[0] == v83 && v85[1] == *(&v83 + 1))
  {
  }

  else
  {
    v34 = sub_1A524EAB4();

    if ((v34 & 1) == 0)
    {
      sub_1A42F25DC(v72, &v83, &qword_1EB12A600, sub_1A42F1380, sub_1A3C376BC);
      if (v84)
      {
        sub_1A40204C4(&v83, v85);
        v48 = v86;
        v49 = v87;
        __swift_project_boxed_opaque_existential_1(v85, v86);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v72 = &v67;
        v51 = *(AssociatedTypeWitness - 8);
        v52 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        v54 = &v67 - v53;
        (*(v49 + 32))(v48, v49, v52);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v56 = v71;
        v57 = v82;
        (*(AssociatedConformanceWitness + 232))(v82, AssociatedTypeWitness, AssociatedConformanceWitness);
        (*(v51 + 8))(v54, AssociatedTypeWitness);
        if ((*(v70 + 48))(v56, 1, v19) != 1)
        {
          v58 = v68;
          sub_1A40B671C(v56, v68);
          type metadata accessor for LemonadeNavigationContext(0);
          v59 = v26;
          sub_1A42F26AC(v58, v26, type metadata accessor for LemonadeNavigationDestination);
          v60 = *(v33 + 2);
          v61 = v77;
          sub_1A42F25DC(&v33[*(v30 + 32)], v77, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, sub_1A3C376BC);

          v62 = v60;
          j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v83);
          v63 = sub_1A3C799F0(v59, 0, 0, v60, v61, &v83, v57, 2);
          sub_1A42F26AC(v63 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v59, type metadata accessor for LemonadeNavigationDestination);

          v64 = v69;
          sub_1A487864C(v59, v63, 0, v69);
          sub_1A42F26AC(v64, v75, type metadata accessor for LemonadeNavigationDestinationView);
          swift_storeEnumTagMultiPayload();
          sub_1A42F2404(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
          v65 = v76;
          sub_1A5249744();
          v66 = MEMORY[0x1E697F960];
          sub_1A42F25DC(v65, v80, &qword_1EB137A30, MEMORY[0x1E697F960], sub_1A42F2578);
          swift_storeEnumTagMultiPayload();
          sub_1A42F20C4();
          sub_1A5249744();

          sub_1A42F264C(v65, &qword_1EB137A30, v66, sub_1A42F2578);
          sub_1A42F2714(v64, type metadata accessor for LemonadeNavigationDestinationView);
          sub_1A42F2714(v58, type metadata accessor for LemonadeNavigationDestination);
          return __swift_destroy_boxed_opaque_existential_0(v85);
        }

        sub_1A42F264C(v56, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, sub_1A3C376BC);
        __swift_destroy_boxed_opaque_existential_0(v85);
      }

      else
      {
        sub_1A42F264C(&v83, &qword_1EB12A600, sub_1A42F1380, sub_1A3C376BC);
      }

      swift_storeEnumTagMultiPayload();
      sub_1A42F20C4();
      sub_1A5249744();
    }
  }

  v72 = v16;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadeNavigationContext(0);
  sub_1A42F26AC(v29, v26, type metadata accessor for LemonadeNavigationDestination);
  v35 = v30;
  v36 = v33;
  v37 = *(v33 + 2);
  v38 = &v33[*(v35 + 32)];
  v39 = v77;
  sub_1A42F25DC(v38, v77, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, sub_1A3C376BC);
  v40 = v37;
  v41 = v82;

  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(v85);
  v42 = sub_1A3C799F0(v26, 0, 0, v37, v39, v85, v41, 2);
  result = sub_1A42F26AC(v29, v23, type metadata accessor for LemonadeNavigationDestination);
  v44 = *&v36[*(v35 + 40)];
  if (v44)
  {

    v45 = v72;
    sub_1A487864C(v23, v42, v44, v72);
    sub_1A42F26AC(v45, v75, type metadata accessor for LemonadeNavigationDestinationView);
    swift_storeEnumTagMultiPayload();
    sub_1A42F2404(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    v46 = v76;
    sub_1A5249744();
    v47 = MEMORY[0x1E697F960];
    sub_1A42F25DC(v46, v80, &qword_1EB137A30, MEMORY[0x1E697F960], sub_1A42F2578);
    swift_storeEnumTagMultiPayload();
    sub_1A42F20C4();
    sub_1A5249744();

    sub_1A42F264C(v46, &qword_1EB137A30, v47, sub_1A42F2578);
    sub_1A42F2714(v45, type metadata accessor for LemonadeNavigationDestinationView);
    return sub_1A42F2714(v29, type metadata accessor for LemonadeNavigationDestination);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A42F2028()
{
  result = qword_1EB137A38;
  if (!qword_1EB137A38)
  {
    sub_1A42F24F4(255, &qword_1EB137A28, MEMORY[0x1E697F960]);
    sub_1A42F20C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137A38);
  }

  return result;
}

unint64_t sub_1A42F20C4()
{
  result = qword_1EB137A40;
  if (!qword_1EB137A40)
  {
    sub_1A42F2578(255, &qword_1EB137A30, MEMORY[0x1E697F960]);
    sub_1A42F2404(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137A40);
  }

  return result;
}

uint64_t sub_1A42F2188(uint64_t a1, uint64_t a2)
{
  sub_1A3C376BC(0, &qword_1EB12A600, sub_1A42F1380);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A42F2250()
{
  sub_1A42F239C();
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126B10);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedSpec();
      if (v2 <= 0x3F)
      {
        sub_1A3C376BC(319, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext);
        if (v3 <= 0x3F)
        {
          sub_1A3C52C70(319, &qword_1EB126BF0);
          if (v4 <= 0x3F)
          {
            sub_1A3C376BC(319, &qword_1EB1258F0, type metadata accessor for LemonadeRootViewModel);
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

void sub_1A42F239C()
{
  if (!qword_1EB137A48)
  {
    sub_1A3C52C70(255, &qword_1EB1265D0);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137A48);
    }
  }
}

uint64_t sub_1A42F2404(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A42F244C()
{
  if (!qword_1EB137A58)
  {
    type metadata accessor for LemonadeFeedSpec();
    sub_1A42F24F4(255, &qword_1EB137A28, MEMORY[0x1E697F960]);
    sub_1A42F2028();
    v0 = type metadata accessor for LemonadeSpecsProviderView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137A58);
    }
  }
}

void sub_1A42F24F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A42F2578(255, &qword_1EB137A30, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981E70]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A42F2578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeNavigationDestinationView();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A42F25DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A42F264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A42F26AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42F2714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1A42F2774(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importItem] = a1;
  *&v5[OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importController] = a2;
  v6 = *off_1E7721A60;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithActionType_, v6);
}

uint64_t sub_1A42F2854()
{
  v1 = sub_1A42F32E8();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = [v0 presentationEnvironment];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      v7[2] = v3;
      v7[3] = v4;
      v7[4] = v0;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1A42F3860;
      *(v8 + 24) = v7;
      aBlock[4] = sub_1A3D7B4F8;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3D35A90;
      aBlock[3] = &block_descriptor_24_1;
      v9 = _Block_copy(aBlock);
      v10 = v0;

      v11 = [v6 presentAlertWithConfigurationHandler_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A42F2A48()
{
  v1 = [*&v0[OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importItem] importAsset];
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  sub_1A3CB8F68();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F9790;
  *(v3 + 32) = v2;
  sub_1A3C52C70(0, &qword_1EB137A80);
  isEscapingClosureAtFileLocation = v2;
  v5 = sub_1A524CA14();

  v6 = PXImportSuffixForItems(v5);

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = sub_1A524C674();
  v9 = v8;

  v10 = [v0 presentationEnvironment];
  if (!v10)
  {

    goto LABEL_11;
  }

  v11 = v10;
  sub_1A524E404();

  aBlock = 0xD000000000000013;
  v23 = 0x80000001A53D1670;
  MEMORY[0x1A5907B60](v7, v9);

  v12 = sub_1A524C634();

  v13 = PLServicesLocalizedFrameworkString();

  if (v13)
  {
    v14 = sub_1A524C674();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A42F3718;
  *(v18 + 24) = v17;
  v26 = sub_1A3D78DD0;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1A3D35A90;
  v25 = &block_descriptor_14_2;
  v19 = _Block_copy(&aBlock);

  v20 = [v11 presentAlertWithConfigurationHandler_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_9:

LABEL_11:
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A42F2D9C()
{
  v1 = v0;
  v2 = sub_1A524BEE4();
  v30 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524BFC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  sub_1A3C52C70(0, &qword_1EB137A88);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  v16 = [v15 externalOneUpSimulateDeletionFailure];

  if (v16)
  {
    sub_1A3C52C70(0, &qword_1EB12B180);
    v17 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v27 = *(v9 + 8);
    v27(v11, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_1A42F3700;
    v36 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1A3C2E0D0;
    v34 = &block_descriptor_5;
    v19 = _Block_copy(&aBlock);

    sub_1A524BF14();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908790](v14, v7, v4, v19);
    _Block_release(v19);

    (*(v30 + 8))(v4, v2);
    (*(v28 + 8))(v7, v29);
    v27(v14, v8);
  }

  else
  {
    v20 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importController);
    sub_1A3CB8F68();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1A52F9790;
    v22 = *(v1 + OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importItem);
    *(v21 + 32) = v22;
    sub_1A3C52C70(0, &qword_1EB137A90);
    v23 = v22;
    v24 = sub_1A524CA14();

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_1A42F35F0;
    v36 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1A3D6084C;
    v34 = &block_descriptor_154;
    v26 = _Block_copy(&aBlock);

    [v20 deleteItems:v24 withCompletionHandler:v26];
    _Block_release(v26);
  }
}

id sub_1A42F32E8()
{
  result = [*(v0 + OBJC_IVAR____TtC12PhotosUICore32ImportAssetDeleteActionPerformer_importItem) importAsset];
  if (result)
  {
    v2 = result;
    sub_1A3CB8F68();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1A52F9790;
    *(v3 + 32) = v2;
    sub_1A3C52C70(0, &qword_1EB137A80);
    v4 = v2;
    v5 = sub_1A524CA14();

    v6 = PXImportSuffixForItems(v5);

    if (v6 && (v7 = sub_1A524C674(), v9 = v8, v6, sub_1A524E404(), , MEMORY[0x1A5907B60](v7, v9), , v10 = sub_1A524C634(), , v11 = PLServicesLocalizedFrameworkString(), v10, v11))
    {
      v12 = sub_1A524C674();

      return v12;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id ImportAssetDeleteActionPerformer.__allocating_init(actionType:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1A524C634();

  v3 = [v1 initWithActionType_];

  return v3;
}

id ImportAssetDeleteActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportAssetDeleteActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A42F35F0(char a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      v6 = a2;
      sub_1A3DBD9A0();
      sub_1A3C52C70(0, &qword_1EB12C740);
      if (swift_dynamicCast())
      {
        a2 = v8;
      }

      else
      {
        a2 = 0;
      }

      if (a1)
      {
        if (a2)
        {
          v7 = a2;
          a2 = sub_1A5240B74();
        }

        else
        {
          v7 = 0;
        }

        goto LABEL_13;
      }
    }

    else if (a1)
    {
      v7 = 0;
      a2 = 0;
LABEL_13:
      [v5 completeUserInteractionTaskWithSuccess:1 error:a2];

      goto LABEL_14;
    }

    sub_1A42F2A48();

LABEL_14:
  }
}

void sub_1A42F3718(void *a1)
{
  if (*(v1 + 24))
  {
    v3 = sub_1A524C634();
  }

  else
  {
    v3 = 0;
  }

  [a1 setMessage_];

  sub_1A3CB8F68();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F9790;
  v5 = sub_1A524C634();
  v6 = PLLocalizedFrameworkString();

  if (v6)
  {
    v7 = [objc_allocWithZone(off_1E7721440) initWithTitle:v6 style:0 action:0];

    *(v4 + 32) = v7;
    sub_1A3C52C70(0, &qword_1EB12B9F0);
    v8 = sub_1A524CA14();

    [a1 addActions_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A42F3860(void *a1)
{
  [a1 setStyle_];
  sub_1A3CB8F68();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F9DE0;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = objc_allocWithZone(off_1E7721440);

  v5 = sub_1A524C634();
  v19 = sub_1A42F3B2C;
  v20 = v3;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1A3C2E0D0;
  v18 = &block_descriptor_28_2;
  v6 = _Block_copy(&v15);

  v7 = [v4 initWithTitle:v5 style:2 action:v6];
  _Block_release(v6);

  *(v2 + 32) = v7;
  v8 = sub_1A524C634();
  v9 = PLLocalizedFrameworkString();

  if (v9)
  {
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(off_1E7721440);
    v19 = sub_1A42F3B9C;
    v20 = v10;
    v15 = MEMORY[0x1E69E9820];
    v16 = 1107296256;
    v17 = sub_1A3C2E0D0;
    v18 = &block_descriptor_32_3;
    v12 = _Block_copy(&v15);

    v13 = [v11 initWithTitle:v9 style:0 action:v12];
    _Block_release(v12);

    *(v2 + 40) = v13;
    sub_1A3C52C70(0, &qword_1EB12B9F0);
    v14 = sub_1A524CA14();

    [a1 addActions_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A42F3B44(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

void sub_1A42F3B9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

id sub_1A42F3C10()
{
  result = [objc_allocWithZone(type metadata accessor for PXWallpaperTipsHelper()) init];
  qword_1EB16A3D8 = result;
  return result;
}

id PXWallpaperTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXWallpaperTipsHelper.shared.getter()
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB16A3D8;

  return v1;
}

uint64_t sub_1A42F3E1C()
{
  v1 = OBJC_IVAR___PXWallpaperTipsHelper_Swift_spatialPhotoDisabledLowPowerModeTip;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A42F3E60(char a1)
{
  v3 = OBJC_IVAR___PXWallpaperTipsHelper_Swift_spatialPhotoDisabledLowPowerModeTip;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t sub_1A42F3F14()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42F3FA8, v2, v1);
}

uint64_t sub_1A42F3FA8()
{

  type metadata accessor for PXTipsHelper();
  static PXTipsHelper.setup()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static PXWallpaperTipsHelper.removeAllPresentationDelegates()()
{
  v0 = sub_1A45C1040();
  swift_beginAccess();
  result = *v0;
  if (*v0)
  {

    *v0 = MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t static PXWallpaperTipsHelper.dismissTip(_:)(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB16A3D8;
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *qword_1EB16A3D8) + 0xC0))();
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v6;
  v9 = v7;
  v10 = (*((*v5 & *v4) + 0x60))();
  if (v11)
  {
    if (v10 == v8 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_1A524EAB4();

      if ((v13 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v24 = &type metadata for TrySettlingEffectTip;
    v21 = sub_1A42F4CE4();
    goto LABEL_24;
  }

LABEL_10:

LABEL_11:
  v14 = (*((*v5 & *v4) + 0xD8))(v6);
  if (!v15)
  {
    return a1(v14);
  }

  v8 = v14;
  v9 = v15;
  v16 = (*((*v5 & *v4) + 0x60))();
  if (!v17)
  {
LABEL_18:

    return a1(v14);
  }

  if (v16 == v8 && v17 == v9)
  {
  }

  else
  {
    v19 = sub_1A524EAB4();

    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v24 = &type metadata for FailedSettlingEffectTip;
  v21 = sub_1A42F4C8C();
LABEL_24:
  v25 = v21;
  v23[0] = v8;
  v23[1] = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;

  sub_1A48FD084(v23, sub_1A42F4CE0, v22);

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

void static PXWallpaperTipsHelper.presentTrySettlingEffectTip(_:)()
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB16A3D8;
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *qword_1EB16A3D8) + 0xC0))();
  if (v3)
  {
    v6[0] = v2;
    v6[1] = v3;
    v4 = *((*v1 & *v0) + 0x98);
    v5 = sub_1A42F4CE4();
    v4(v6, &type metadata for TrySettlingEffectTip, v5);
  }

  sub_1A3E48760(v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static PXWallpaperTipsHelper.presentFailedSettlingEffectTip(_:)()
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB16A3D8;
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *qword_1EB16A3D8) + 0xD8))();
  if (v3)
  {
    v6[0] = v2;
    v6[1] = v3;
    v4 = *((*v1 & *v0) + 0x98);
    v5 = sub_1A42F4C8C();
    v4(v6, &type metadata for FailedSettlingEffectTip, v5);
  }

  sub_1A3E48760(v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static PXWallpaperTipsHelper.presentSpatialPhotoDisabledLowPowerModeTip(_:)()
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB16A3D8;
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *qword_1EB16A3D8) + 0xF0))();
  if ((v2 & 1) == 0)
  {
    v3 = *((*v1 & *v0) + 0x98);
    v4 = sub_1A42F4D38();
    v2 = v3(v4, &type metadata for SpatialPhotoDisabledLowPowerModeTip, v4);
  }

  v5 = PXDisplayCollectionDetailedCountsMake(v2);
  (*((*v1 & *v0) + 0xF8))(0, v5);
  v6 = *((*v1 & *v0) + 0x90);
  v7 = sub_1A42F4D38();
  v6(v7, &type metadata for SpatialPhotoDisabledLowPowerModeTip, v7);
  sub_1A3E45CD8();
  sub_1A3C920BC();
}

uint64_t sub_1A42F4898(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_getObjCClassMetadata();
  v5 = swift_unknownObjectRetain();
  a4(v5);

  return swift_unknownObjectRelease();
}

id PXWallpaperTipsHelper.init()()
{
  v1 = &v0[OBJC_IVAR___PXWallpaperTipsHelper_Swift_trySettlingEffectTip];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR___PXWallpaperTipsHelper_Swift_failedSettlingEffectTip];
  *v2 = 0;
  v2[1] = 0;
  v0[OBJC_IVAR___PXWallpaperTipsHelper_Swift_spatialPhotoDisabledLowPowerModeTip] = 1;
  v0[OBJC_IVAR___PXWallpaperTipsHelper_Swift_hasStartedTips] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PXWallpaperTipsHelper();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A42F4A68()
{
}

id PXWallpaperTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXWallpaperTipsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A42F4C8C()
{
  result = qword_1EB137AB0;
  if (!qword_1EB137AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137AB0);
  }

  return result;
}

unint64_t sub_1A42F4CE4()
{
  result = qword_1EB137AB8;
  if (!qword_1EB137AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137AB8);
  }

  return result;
}

unint64_t sub_1A42F4D38()
{
  result = qword_1EB137AC0;
  if (!qword_1EB137AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137AC0);
  }

  return result;
}

uint64_t sub_1A42F4DDC(void (**a1)(void))
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  _Block_copy(a1);
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB16A3D8;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *qword_1EB16A3D8) + 0xC0))();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = (*((*v4 & *v3) + 0x60))();
    if (v10)
    {
      if (v9 == v7 && v10 == v8)
      {
      }

      else
      {
        v12 = sub_1A524EAB4();

        if ((v12 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v23 = &type metadata for TrySettlingEffectTip;
      v20 = sub_1A42F4CE4();
      goto LABEL_26;
    }

LABEL_10:
  }

  v13 = (*((*v4 & *v3) + 0xD8))(v5);
  if (v14)
  {
    v7 = v13;
    v8 = v14;
    v15 = (*((*v4 & *v3) + 0x60))();
    if (!v16)
    {
LABEL_18:

      goto LABEL_19;
    }

    if (v15 == v7 && v16 == v8)
    {
    }

    else
    {
      v18 = sub_1A524EAB4();

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v23 = &type metadata for FailedSettlingEffectTip;
    v20 = sub_1A42F4C8C();
LABEL_26:
    v24 = v20;
    v22[0] = v7;
    v22[1] = v8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1A3F3D4CC;
    *(v21 + 24) = v2;

    sub_1A48FD084(v22, sub_1A42F516C, v21);

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

LABEL_19:
  a1[2](a1);
}

uint64_t sub_1A42F50A8()
{
  v1 = *(v0 + 16);
  sub_1A3E456CC(0);
  v2 = sub_1A3E458D8(0);
  return v1(v2);
}

uint64_t sub_1A42F50E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A42F3F14();
}

char *sub_1A42F5170(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A42F5808(0, &qword_1EB1249C0, sub_1A42F5334, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsShazamEventsWidgetViewModel__eventInfo;
  v17[1] = 0;
  sub_1A42F5334(0);
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  v15 = [a3 shazamEventInfo];
  swift_beginAccess();
  (*(v10 + 8))(&v13[v14], v9);
  v17[0] = v15;
  sub_1A52479A4();
  swift_endAccess();
  return sub_1A4467460(a1, a2, a3);
}

unint64_t sub_1A42F5368()
{
  result = qword_1EB120A00;
  if (!qword_1EB120A00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120A00);
  }

  return result;
}

uint64_t sub_1A42F53CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1A52479F4();
}

uint64_t sub_1A42F5438()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A42F54AC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a1 = v3;
  return result;
}

uint64_t sub_1A42F552C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A42F55A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v0 = v3;
  if (v3)
  {
    v1 = [v3 eventTitle];
    swift_unknownObjectRelease();
    v0 = sub_1A524C674();
  }

  return v0;
}

uint64_t sub_1A42F5664()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  v0 = v9;
  if (v9)
  {
    v1 = [v9 eventTitle];
    swift_unknownObjectRelease();
    v2 = sub_1A524C674();
    v4 = v3;

    v5 = sub_1A524C634();
    v6 = PXLocalizedString(v5);

    sub_1A524C674();
    sub_1A42F5808(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F8E10;
    *(v7 + 56) = MEMORY[0x1E69E6158];
    *(v7 + 64) = sub_1A3D710E8();
    *(v7 + 32) = v2;
    *(v7 + 40) = v4;
    v0 = sub_1A524C644();
  }

  return v0;
}

void sub_1A42F5808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL sub_1A42F588C()
{
  v0 = sub_1A4467CD8();
  v1 = [v0 shazamEventInfo];

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

uint64_t sub_1A42F58E0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore40PhotosDetailsShazamEventsWidgetViewModel__eventInfo;
  sub_1A42F5808(0, &qword_1EB1249C0, sub_1A42F5334, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel()
{
  result = qword_1EB171430;
  if (!qword_1EB171430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A42F5A68()
{
  sub_1A42F5808(319, &qword_1EB1249C0, sub_1A42F5334, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A42F5B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v15[OBJC_IVAR___PXModifySocialGroupAction_originalTitle];
  *v17 = 0;
  v17[1] = 0;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_originalKeyAsset] = 0;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup] = a1;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_newKeyAsset] = a2;
  v18 = &v15[OBJC_IVAR___PXModifySocialGroupAction_newCustomTitle];
  *v18 = a3;
  v18[1] = a4;
  v15[OBJC_IVAR___PXModifySocialGroupAction_customTitleWasDeleted] = a5;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_peopleToBeAdded] = a6;
  *&v15[OBJC_IVAR___PXModifySocialGroupAction_peopleToBeRemoved] = a7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42F5D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();
  v15 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_originalTitle);
  *v16 = 0;
  v16[1] = 0;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_originalKeyAsset) = 0;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup) = a1;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_newKeyAsset) = a2;
  v17 = (v7 + OBJC_IVAR___PXModifySocialGroupAction_newCustomTitle);
  *v17 = a3;
  v17[1] = a4;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_customTitleWasDeleted) = a5;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_peopleToBeAdded) = a6;
  *(v7 + OBJC_IVAR___PXModifySocialGroupAction_peopleToBeRemoved) = a7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42F5F6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

void sub_1A42F6520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = ObjectType;
  v21 = a4;
  v22 = v14;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3C2E0D0;
  v20 = a5;
  v15 = _Block_copy(&v17);

  v21 = a1;
  v22 = a2;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1A3D6084C;
  v20 = a6;
  v16 = _Block_copy(&v17);

  [v6 performChanges:v15 completionHandler:v16];
  _Block_release(v16);
  _Block_release(v15);
}

void sub_1A42F6694()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier + 8);
    if (v2)
    {
      v3 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v3 = *(Strong + OBJC_IVAR___PXModifySocialGroupAction_placeholderLocalIdentifier) & 0xFFFFFFFFFFFFLL;
      }

      if (v3)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    if (*(Strong + OBJC_IVAR___PXModifySocialGroupAction_originalSocialGroup))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v4 = sub_1A524D244();
    v5 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      swift_slowAlloc();
      *v7 = 136315138;
      sub_1A3C37330(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

id sub_1A42F6EC0(id a1, unint64_t a2, unint64_t a3)
{
  v3 = a2;
  v5 = (a2 >> 62);
  if (!a2)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    goto LABEL_33;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
LABEL_7:
      v51 = a3;
      v6 = [a1 photoLibrary];
      if (!v6)
      {
        __break(1u);
LABEL_52:
        v53 = 0;
        v54 = 0xE000000000000000;
        sub_1A524E404();
        MEMORY[0x1A5907B60](0xD00000000000001ALL, 0x80000001A53D1950);
        v41 = [a1 localIdentifier];
        v42 = sub_1A524C674();
        v44 = v43;

        MEMORY[0x1A5907B60](v42, v44);

        MEMORY[0x1A5907B60](0xD00000000000001ELL, 0x80000001A53D1970);
        v47 = 0;
        v46 = 121;
        result = sub_1A524E6E4();
        __break(1u);
        return result;
      }

      v7 = v6;
      v8 = [v6 librarySpecificFetchOptions];

      v9 = [objc_opt_self() px_defaultDetectionTypes];
      if (!v9)
      {
        sub_1A3C52C70(0, &qword_1EB126610);
        sub_1A524CA34();
        v9 = sub_1A524CA14();
      }

      [v8 setIncludedDetectionTypes_];

      v10 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:v8];
      v11 = [v10 fetchedObjects];

      if (!v11)
      {
        goto LABEL_52;
      }

      v12 = sub_1A3C52C70(0, &qword_1EB1265C0);
      v13 = sub_1A524CA34();

      if (v3)
      {
        if (v5)
        {
          if (sub_1A524E2B4())
          {
LABEL_14:
            v53 = v13;
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }
      }

      v14 = v51;
      if (!v51)
      {
        break;
      }

      if (v51 >> 62)
      {
        if (!sub_1A524E2B4())
        {
          break;
        }
      }

      else if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v50 = v8;
      v53 = MEMORY[0x1E69E7CC0];
      v49 = a1;
      if (v13 >> 62)
      {
        v15 = sub_1A524E2B4();
        if (!v15)
        {
LABEL_42:
          v20 = MEMORY[0x1E69E7CC0];
LABEL_43:

          v13 = v20;
          a1 = v49;
          v8 = v50;
          break;
        }
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_42;
        }
      }

      v48 = v12;
      v16 = 0;
      v3 = 0;
      a1 = (v13 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1A59097F0](v16, v13);
        }

        else
        {
          if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v17 = *(v13 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v5 = &v48;
        v52 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v46 = &v52;
        if (sub_1A40C23C4(sub_1A40C7980, &v45, v14))
        {
        }

        else
        {
          sub_1A524E514();
          v5 = *(v53 + 16);
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
          v14 = v51;
        }

        ++v16;
        if (v19 == v15)
        {
          v20 = v53;
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v21 = a3;
      v22 = sub_1A524E2B4();
      a3 = v21;
      if (!v22)
      {
        goto LABEL_4;
      }
    }

    v26 = objc_opt_self();
    sub_1A42CE93C(v13);

    sub_1A42CEA7C();
    v27 = sub_1A524CF34();

    v28 = [v26 creationRequestForSocialGroupWithMembers:v27 userAction:1];

    [v28 setOrder_];
    v29 = [a1 customTitle];
    if (v29)
    {
      v30 = v29;
      [v28 setCustomTitle_];
    }

    v31 = [v26 changeRequestForSocialGroup:a1 userAction:{1, v48}];
    if (v31)
    {
      v32 = v31;
      [v31 rejectSocialGroup];
    }

    else
    {
      v33 = sub_1A524D244();
      v34 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v34, v33))
      {
        v35 = v34;
        v36 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v36 = 136315138;
        v37 = [a1 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    v38 = v28;
    v39 = [v38 placeholderForCreatedSocialGroup];
    v40 = [v39 localIdentifier];

    sub_1A524C674();
    return v38;
  }

  else
  {
LABEL_4:
    if (a3)
    {
      if (a3 >> 62)
      {
        v23 = a3;
        v24 = sub_1A524E2B4();
        a3 = v23;
        if (v24)
        {
          goto LABEL_7;
        }
      }

      else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }
    }

    return [objc_opt_self() changeRequestForSocialGroup:a1 userAction:1];
  }
}

uint64_t sub_1A42F75F0()
{
  v1 = *(v0 + 80);
  v11 = *(v0 + 72);
  v12 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v3 = v1;
  v4 = v11;
  for (i = 0; i != 2; ++i)
  {
    v6 = v10[i + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x1A5907D70]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      v2 = v9;
    }
  }

  sub_1A42F8138(0, &qword_1EB1209E0, sub_1A4129FCC);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1A42F7700(void *a1, void *a2, char a3, uint64_t a4, double a5, double a6, double a7)
{
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v14 + 32) = a3 & 1;
  *(v14 + 40) = a7;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a4;

  sub_1A42F7814();
  sub_1A52415B4();

  return v14;
}

void sub_1A42F7814()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];
    if (v3)
    {
      v4 = v3;
      v5 = [v2 leadingAnchor];
      v6 = [v4 leadingAnchor];
      v7 = [v5 constraintEqualToAnchor_];

      v8 = *(v0 + 80);
      *(v0 + 80) = v7;

      if (*(v0 + 32))
      {
        v9 = &selRef_topAnchor;
      }

      else
      {
        v9 = &selRef_bottomAnchor;
      }

      v10 = [v2 *v9];
      v11 = [v4 topAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      v13 = *(v0 + 72);
      *(v0 + 72) = v12;
      goto LABEL_13;
    }
  }

  if (qword_1EB1B6870 != -1)
  {
    swift_once();
  }

  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB1B6878);
  oslog = sub_1A5246F04();
  v15 = sub_1A524D244();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A3C1C000, oslog, v15, "Can't create constraints: suggestion view must be in the view hierarchy.", v16, 2u);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  v13 = oslog;
LABEL_13:
}

void sub_1A42F7A34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 superview];

      if (v4)
      {
        [v27 bounds];
        [v27 convertRect:v4 toCoordinateSpace:?];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        if ([v4 effectiveUserInterfaceLayoutDirection] == 1)
        {
          [v4 bounds];
          MaxX = CGRectGetMaxX(v29);
          v30.origin.x = v6;
          v30.origin.y = v8;
          v30.size.width = v10;
          v30.size.height = v12;
          MinX = MaxX - CGRectGetMaxX(v30);
        }

        else
        {
          v31.origin.x = v6;
          v31.origin.y = v8;
          v31.size.width = v10;
          v31.size.height = v12;
          MinX = CGRectGetMinX(v31);
        }

        v15 = *(v0 + 80);
        if (v15)
        {
          v16 = MinX + *(v0 + 48);
          v17 = v15;
          sub_1A5243AD4();
          [v17 setConstant_];
        }

        v19 = *(v0 + 72);
        if (v19)
        {
          v20 = *(v0 + 32);
          v21 = v19;
          v22 = v6;
          v23 = v8;
          v24 = v10;
          v25 = v12;
          if (v20)
          {
            v26 = CGRectGetMaxY(*&v22) + *(v0 + 40) + *(v0 + 56);
          }

          else
          {
            v26 = CGRectGetMinY(*&v22) - *(v0 + 40) - *(v0 + 56);
          }

          [v21 setConstant_];
        }
      }
    }
  }
}

uint64_t (*sub_1A42F7C58())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A42F8130;
}

uint64_t sub_1A42F7CB0()
{
  sub_1A42F8138(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
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

  sub_1A3D4D930(0, 0, v2, &unk_1A532EB70, v6);
}

uint64_t sub_1A42F7E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42F7ED8, v6, v5);
}

uint64_t sub_1A42F7ED8()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A42F7A34();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42F7FD8()
{
  MEMORY[0x1A590F020](v0 + 16);
  MEMORY[0x1A590F020](v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1A42F8034()
{
  result = qword_1EB137B78;
  if (!qword_1EB137B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B78);
  }

  return result;
}

void sub_1A42F80CC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1B6878);
  __swift_project_value_buffer(v0, qword_1EB1B6878);
  sub_1A5246EF4();
}

void sub_1A42F8138(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A42F818C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A42F7E40(v3, v4, v5, v2);
}

uint64_t sub_1A42F8294(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v10 = *a1;
  result = (*(a4 + 48))(&v10, a3, a4);
  if (((result ^ a2) & 1) == 0)
  {
    v9 = v7;
    return (*(a4 + 56))(&v9, a3, a4);
  }

  return result;
}

id sub_1A42F8328()
{
  result = [objc_opt_self() px_appPhotoLibraryForTesting];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A42F8364()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1A42F8398()
{
  result = qword_1EB137B80;
  if (!qword_1EB137B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B80);
  }

  return result;
}

unint64_t sub_1A42F83F0()
{
  result = qword_1EB137B88;
  if (!qword_1EB137B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B88);
  }

  return result;
}

unint64_t sub_1A42F8448()
{
  result = qword_1EB137B90;
  if (!qword_1EB137B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B90);
  }

  return result;
}

unint64_t sub_1A42F84A0()
{
  result = qword_1EB137B98;
  if (!qword_1EB137B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137B98);
  }

  return result;
}

unint64_t sub_1A42F84F8()
{
  result = qword_1EB137BA0;
  if (!qword_1EB137BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137BA0);
  }

  return result;
}

uint64_t sub_1A42F868C(uint64_t a1)
{
  result = sub_1A42F87AC(&qword_1EB137BA8);
  *(a1 + 8) = result;
  return result;
}

void sub_1A42F8728()
{
  type metadata accessor for LemonadeMockShelvesDataSource();
  sub_1A42F87AC(&qword_1EB137BB0);

    ;
  }
}

uint64_t sub_1A42F87AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeMockShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1A42F87EC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1A42F88C4()
{
  v9 = [objc_allocWithZone(PXHitTestTransparentView) init];
  [v0 setView_];
  v1 = *&v0[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:

    return;
  }

LABEL_14:
  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1A59097F0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v0 addChildViewController_];
    v7 = [v5 view];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    [v9 addSubview_];

    [v5 didMoveToParentViewController_];
    ++v3;
    if (v6 == v2)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_1A42F8A90()
{
  v1 = [v0 view];
  if (!v1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC12PhotosUICore28PhotosZStackedViewController_viewControllers];
  if (v11 >> 62)
  {
LABEL_15:
    v12 = sub_1A524E2B4();
    if (v12)
    {
LABEL_4:
      for (i = 0; ; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1A59097F0](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        v16 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

        v17 = [v14 view];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        [v17 setFrame_];

        if (v16 == v12)
        {
          return;
        }
      }

      __break(1u);
      goto LABEL_18;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }
  }
}

id sub_1A42F8C70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosZStackedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A42F8D6C()
{
  v1 = *(v0 + OBJC_IVAR___PXPeopleResetUserFeedbackAction_person);
  v2 = [v1 px_localizedName];
  v3 = sub_1A524C674();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = sub_1A524C634();
    v8 = PXLocalizedStringForPersonOrPetAndVisibility(v1, 0, v7);

    sub_1A524C674();
    sub_1A3E072BC();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52F8E10;
    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1A3D710E8();
    *(v9 + 32) = v3;
    *(v9 + 40) = v5;
    v10 = sub_1A524C6C4();
  }

  else
  {

    v11 = sub_1A524C634();
    v12 = PXLocalizedStringForPersonOrPetAndVisibility(v1, 0, v11);

    v10 = sub_1A524C674();
  }

  return v10;
}

id sub_1A42F8F00(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PXPeopleResetUserFeedbackAction_person] = a1;
  v4 = a1;
  result = [v4 photoLibrary];
  if (result)
  {
    v6 = result;
    v8.receiver = v3;
    v8.super_class = v1;
    v7 = objc_msgSendSuper2(&v8, sel_initWithPhotoLibrary_, result);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A42F90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = a3;
  v19 = v11;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3C2E0D0;
  v17 = a4;
  v12 = _Block_copy(&v14);

  v18 = a1;
  v19 = a2;
  v14 = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1A3D6084C;
  v17 = a5;
  v13 = _Block_copy(&v14);

  [v5 performChanges:v12 completionHandler:v13];
  _Block_release(v13);
  _Block_release(v12);
}

void sub_1A42F931C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() changeRequestForPerson_];
    [v2 setUserFeedback_];
  }
}

void sub_1A42F93B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR___PXPeopleResetUserFeedbackAction_person;
    v2 = Strong;
    [*(Strong + OBJC_IVAR___PXPeopleResetUserFeedbackAction_person) fetchPropertySetsIfNeeded];
    v3 = [objc_opt_self() changeRequestForPerson_];
    v4 = [*&v2[v1] userFeedbackProperties];
    v5 = [v4 userFeedback];

    [v3 setUserFeedback_];
  }
}

uint64_t dispatch thunk of LemonadeCurationContext.currentCurationKind.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LemonadeCurationContext.availableCurationKinds.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E64928;

  return v7(a1, a2);
}

void sub_1A42F9724(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A42F9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = type metadata accessor for PhotosDetailsDiscoverableView();
  v20 = v19[14];
  v21 = sub_1A524DF24();
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  sub_1A42F98B0(a2, a9 + v19[9]);
  v22 = (a9 + v19[11]);
  *v22 = a3;
  v22[1] = a4;
  v22[2] = a5;
  result = sub_1A42F98B0(a6, a9 + v19[10]);
  v24 = (a9 + v19[12]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (a9 + v19[13]);
  *v25 = a10;
  v25[1] = a11;
  *(a9 + v20) = a12;
  return result;
}

uint64_t sub_1A42F98B0(uint64_t a1, uint64_t a2)
{
  sub_1A3F31320(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A42F9914(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v88 = a1;
  v87 = *(a1 - 8);
  v2 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1 - 8);
  v85 = v3;
  v86 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1A52407E4();
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1A5249524();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v74 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1A5249D74();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2;
  v71 = v2;
  v92 = *(v2 + 24);
  sub_1A5249F54();
  v10 = sub_1A5248804();
  sub_1A3EE1D04();
  v12 = v11;
  v13 = *(v9 + 32);
  v91 = v13;
  v14 = sub_1A42FA630(&qword_1EB127710, MEMORY[0x1E697CBE8]);
  v105 = v13;
  v106 = v14;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1A42FA630(&unk_1EB1263B0, sub_1A3EE1D04);
  v101 = v10;
  v102 = v12;
  v103 = WitnessTable;
  v104 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1A524DF24();
  sub_1A42FA678();
  swift_getTupleTypeMetadata2();
  v61 = sub_1A524BE24();
  v60 = swift_getWitnessTable();
  v17 = sub_1A524B784();
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - v18;
  v20 = swift_getWitnessTable();
  v101 = v17;
  v102 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v58 - v22;
  v24 = sub_1A5248804();
  v76 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v58 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v73 = &v58 - v29;
  sub_1A3F330A8();
  v30 = sub_1A5248804();
  v78 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v75 = &v58 - v31;
  v101 = v17;
  v102 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v100 = v14;
  v32 = swift_getWitnessTable();
  v33 = sub_1A42FA630(&qword_1EB127C80, sub_1A3F330A8);
  v63 = v32;
  v97 = v32;
  v98 = v33;
  v34 = swift_getWitnessTable();
  v80 = v30;
  v101 = v30;
  v102 = v34;
  v67 = v34;
  v70 = swift_getOpaqueTypeMetadata2();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v66 = &v58 - v37;
  sub_1A5249314();
  v94 = v92;
  v95 = v91;
  v38 = v93;
  v96 = v93;
  sub_1A524B774();
  v39 = v65;
  sub_1A5249D54();
  sub_1A524ADB4();
  v40 = v39;
  v41 = v58;
  (*(v69 + 8))(v40, v72);
  (*(v62 + 8))(v19, v17);
  v42 = v74;
  sub_1A5249504();
  sub_1A524AAF4();
  (*(v77 + 8))(v42, v79);
  v43 = v23;
  v44 = v83;
  v45 = OpaqueTypeMetadata2;
  v46 = v81;
  (*(v59 + 8))(v43, v45);
  v47 = v82;
  sub_1A42FE180(v38 + *(v71 + 44), v44, sub_1A3F31320);
  v48 = *(v46 + 48);
  if (v48(v44, 1, v47) == 1)
  {
    sub_1A5240714();
    if (v48(v44, 1, v47) != 1)
    {
      sub_1A42FD6F0(v44, sub_1A3F31320);
    }
  }

  else
  {
    (*(v46 + 32))(v84, v44, v47);
  }

  v49 = sub_1A524A454();
  v51 = v50;
  v53 = v52;
  sub_1A5248764();
  sub_1A3E04DF4(v49, v51, v53 & 1);

  (*(v76 + 8))(v41, v24);
  v54 = (v93 + *(v88 + 48));
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
    v57 = v55;
  }

  else
  {
    v56 = 0;
    v57 = 0xE000000000000000;
  }

  v101 = v56;
  v102 = v57;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}