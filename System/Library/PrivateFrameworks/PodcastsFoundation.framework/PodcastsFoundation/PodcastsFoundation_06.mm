id sub_1D8D85658(uint64_t a1)
{
  v3 = type metadata accessor for MediaRequest.Params();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (a1 + *(v6 + 124));
  if (v7[1])
  {
    v8 = *v7;
    v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v10 = [objc_opt_self() promiseWithResult_];
  }

  else
  {
    v11 = [objc_opt_self() sharedInstance];
    v9 = [v11 mediaTaskCountryCode];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v10 = [v9 asyncValuePromiseOnQueue_];
  }

  v12 = v10;

  sub_1D8D85B08(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1D8D85D0C(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_1D8D85F18;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_19_4;
  v15 = _Block_copy(aBlock);

  v16 = [v12 thenWithBlock_];
  _Block_release(v15);

  return v16;
}

uint64_t sub_1D8D858B0()
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

uint64_t sub_1D8D85B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRequest.Params();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8D85B9C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    v14 = *(a2 + 40);
    result = sub_1D9179DAC();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 8 * v16) != v13)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation12MediaRequestC0D4TypeO(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_1D8D85D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaRequest.Params();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 16);
  v2 = sub_1D917877C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v0 + 32);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D8D85E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >= 2u)
  {
    if (a6 == 3)
    {
    }

    else
    {
      result = a2;
      if (a6 != 2)
      {
        return result;
      }
    }
  }
}

id sub_1D8D85F18(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8D85F8C(a1, v4, v5);
}

id sub_1D8D85F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4 > 2)
  {
    v5 = *a3;
    if (v4 == 3)
    {
      v6 = *(a3 + 8);
    }

    else
    {
      *(a3 + 8);
      *(a3 + 32);
      *(a3 + 24);
      *(a3 + 16);
    }
  }

  v7 = [objc_opt_self() mediaApiClientVersion];
  sub_1D917820C();

  v8 = sub_1D8D447DC();
  v9 = MEMORY[0x1E69E6158];
  v10 = sub_1D917922C();
  v12 = v11;

  v30 = v10;
  v31 = v12;
  strcpy(v29, "{storefront}");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  v27 = sub_1D917820C();
  v28 = v13;
  sub_1D917922C();

  if (sub_1D8D865D0(a3))
  {
    v14 = 0x6970652D7478656ELL;
    v15 = 0xED00007365646F73;
LABEL_11:
    v30 = v14;
    v31 = v15;
    v29[0] = sub_1D91783DC();
    v29[1] = v17;
    sub_1D917831C();
    goto LABEL_12;
  }

  v16 = type metadata accessor for MediaRequest.Params();
  if (*(a3 + *(v16 + 124) + 8) && *(*(a3 + *(v16 + 128)) + 16))
  {
    v14 = 0x686372616573;
    v15 = 0xE600000000000000;
    goto LABEL_11;
  }

  if (*(a3 + 40) != 3)
  {
    v21 = *(a3 + 41);
    if (v21 > 3)
    {
      if (*(a3 + 41) > 5u)
      {
        if (v21 != 6)
        {
          goto LABEL_12;
        }

        v23 = 0x6970652D7478656ELL;
        v22 = 0xED00007365646F73;
      }

      else
      {
        if (v21 == 4)
        {
          v22 = 0xEB00000000737470;
          v24 = 0x63736E617274;
        }

        else
        {
          v22 = 0xEA00000000007365;
          v24 = 0x6F6765746163;
        }

        v23 = v24 & 0xFFFFFFFFFFFFLL | 0x6972000000000000;
      }
    }

    else if (*(a3 + 41) > 1u)
    {
      v25 = v21 == 2;
      v23 = 0xD000000000000010;
      if (v25)
      {
        v22 = 0x80000001D91C7F40;
      }

      else
      {
        v22 = 0x80000001D91C7F60;
      }
    }

    else if (*(a3 + 41))
    {
      v22 = 0xE800000000000000;
      v23 = 0x7374736163646F70;
    }

    else
    {
      v22 = 0x80000001D91C7F20;
      v23 = 0xD000000000000010;
    }

    v30 = v23;
    v31 = v22;
    v29[0] = sub_1D91783DC();
    v29[1] = v26;
    sub_1D917831C();
  }

LABEL_12:
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [objc_opt_self() promiseWithResult_];

  return v19;
}

uint64_t sub_1D8D86454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

BOOL Optional<A>.containsVisibleText.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917662C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v14[0] = a1;
  v14[1] = a2;
  sub_1D91765FC();
  sub_1D8D447DC();
  v9 = sub_1D917920C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  return v12 != 0;
}

uint64_t sub_1D8D865D0(uint64_t a1)
{
  if (*(a1 + 42))
  {
    return 0;
  }

  if (*(*(a1 + 144) + 16))
  {
    return 0;
  }

  v1 = *(a1 + 41);
  if (v1 == 7)
  {
    return 0;
  }

  v2 = sub_1D8D8D46C(v1, 1u);
  result = 1;
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return result;
}

id sub_1D8D86640(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + *(v12 + 144)) == 2)
  {
    v13 = [objc_opt_self() sharedInstance];
    v14 = [v13 includeEntitlementsContent];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v15 = [v14 asyncValuePromiseOnQueue_];
  }

  else
  {
    v14 = sub_1D917873C();
    v15 = [objc_opt_self() promiseWithResult_];
  }

  v16 = v15;

  sub_1D8D85B08(a3, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  sub_1D8D85D0C(v11, v19 + v17);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D8D88288;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_7_4;
  v20 = _Block_copy(aBlock);
  v21 = a4;
  v22 = a1;

  v23 = [v16 thenWithBlock_];
  _Block_release(v20);

  return v23;
}

uint64_t sub_1D8D868D4()
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

  v23 = (v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v4 + v1[29] + 8);

  v25 = *(v4 + v1[31] + 8);

  v26 = *(v4 + v1[32]);

  v27 = *(v4 + v1[33] + 8);

  v28 = *(v4 + v1[35] + 8);

  return swift_deallocObject();
}

id sub_1D8D86AFC(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8D86640(a1, v5, v1 + v4, v6);
}

uint64_t sub_1D8D86B9C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = type metadata accessor for Loadable();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v14 - v10;
  v12 = *(a2 + 40);
  (*(v7 + 16))(&v14 - v10, v2 + v12, v6, v9);
  (*(v7 + 24))(v2 + v12, a1, v6);
  sub_1D8D87904(v11, a2);
  return (*(v7 + 8))(v11, v6);
}

unint64_t sub_1D8D86CBC(unint64_t result, uint64_t a2, uint64_t a3)
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

    v5 = sub_1D8D86DC8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D8D7FF34(v7, a2, 1, a3, type metadata accessor for StoreFeedUpdater.Update, type metadata accessor for StoreFeedUpdater.Update, &qword_1ECAB76C8, &qword_1D9197ED0);
  *v3 = v5;
  return result;
}

uint64_t PerformanceLoadable.value.setter(uint64_t a1, uint64_t a2)
{
  sub_1D8D86B9C(a1, a2);
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Loadable();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t sub_1D8D86EBC()
{
  v1 = v0;
  v2 = sub_1D9176EAC();
  v88 = *(v2 - 8);
  v3 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v87 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedManagerBagConfiguration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v86 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for StoreFeedUpdater.Update(0);
  v90 = *(v83 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - v17;
  v19 = sub_1D9177F1C();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_queue);
  *v24 = v25;
  (*(v20 + 104))(v24, *MEMORY[0x1E69E8020], v19, v22);
  v84 = v25;
  LOBYTE(v25) = sub_1D9177F4C();
  v27 = *(v20 + 8);
  v26 = v20 + 8;
  v27(v24, v19);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    v19 = sub_1D8D86DC8(0, v19[2] + 1, 1, v19);
    *(v1 + v26) = v19;
    goto LABEL_5;
  }

  v26 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_runningQueue;
  result = swift_beginAccess();
  if (*(*(v1 + v26) + 16) >= v1[4])
  {
    return result;
  }

  v29 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_pendingQueue;
  result = swift_beginAccess();
  v30 = *(v1 + v29);
  if (!*(v30 + 16))
  {
    return result;
  }

  v82 = v2;
  swift_beginAccess();
  v2 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  sub_1D8D5F1EC(v30 + v2, v18, type metadata accessor for StoreFeedUpdater.Update);
  sub_1D8D880FC(0, 1);
  swift_endAccess();
  v89 = v18;
  sub_1D8D5F1EC(v18, v15, type metadata accessor for StoreFeedUpdater.Update);
  swift_beginAccess();
  v19 = *(v1 + v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v26) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_5:
  v33 = v19[2];
  v32 = v19[3];
  if (v33 >= v32 >> 1)
  {
    v19 = sub_1D8D86DC8(v32 > 1, v33 + 1, 1, v19);
  }

  v19[2] = v33 + 1;
  sub_1D8D7C424(v15, v19 + v2 + *(v90 + 72) * v33, type metadata accessor for StoreFeedUpdater.Update);
  *(v1 + v26) = v19;
  swift_endAccess();
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v34 = sub_1D917744C();
  __swift_project_value_buffer(v34, qword_1EDCD1050);
  sub_1D8D5F1EC(v89, v12, type metadata accessor for StoreFeedUpdater.Update);

  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();

  v37 = os_log_type_enabled(v35, v36);
  v38 = v85;
  if (v37)
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v93[0] = v40;
    *v39 = 136315651;
    *(v39 + 4) = sub_1D8CFA924(v1[2], v1[3], v93);
    *(v39 + 12) = 2160;
    *(v39 + 14) = 1752392040;
    *(v39 + 22) = 2081;
    sub_1D8D7C424(v12, v38, type metadata accessor for StoreFeedUpdater.Update);
    v41 = (v38 + *(v83 + 32));
    v42 = *v41;
    v43 = v41[1];

    sub_1D8D5FDB8(v38, type metadata accessor for StoreFeedUpdater.Update);
    v44 = sub_1D8CFA924(v42, v43, v93);

    *(v39 + 24) = v44;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "%s: starting %{private,mask.hash}s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v40, -1, -1);
    MEMORY[0x1DA72CB90](v39, -1, -1);
  }

  else
  {

    sub_1D8D5FDB8(v12, type metadata accessor for StoreFeedUpdater.Update);
  }

  sub_1D8D5F1EC(v89, v38, type metadata accessor for StoreFeedUpdater.Update);
  v45 = v86;
  sub_1D8D5F1EC(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_bagConfiguration, v86, type metadata accessor for FeedManagerBagConfiguration);
  v46 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ctx);
  sub_1D8CFD9D8(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_ingesterProvider, v92);
  v47 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_mediaRequestController);
  v48 = swift_allocObject();
  swift_weakInit();
  v91[3] = type metadata accessor for MediaRequestController();
  v91[4] = &protocol witness table for MediaRequestController;
  v91[0] = v47;
  v49 = type metadata accessor for StoreFeedUpdaterJob();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  sub_1D8D888AC(v93);
  v53 = v93[5];
  v52[5] = v93[4];
  v52[6] = v53;
  *(v52 + 170) = *(v94 + 10);
  v54 = v94[0];
  v52[9] = v93[8];
  v52[10] = v54;
  v55 = v93[7];
  v52[7] = v93[6];
  v52[8] = v55;
  v56 = v93[1];
  v52[1] = v93[0];
  v52[2] = v56;
  v57 = v93[3];
  v52[3] = v93[2];
  v52[4] = v57;
  v58 = (v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  *v58 = 0;
  v58[1] = 0;
  v59 = (v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval);
  *v59 = 0;
  v59[1] = 0;
  sub_1D8D5F1EC(v38, v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, type metadata accessor for StoreFeedUpdater.Update);
  sub_1D8D5F1EC(v45, v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_bagConfiguration, type metadata accessor for FeedManagerBagConfiguration);
  *(v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx) = v46;
  sub_1D8CFD9D8(v92, v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ingesterProvider);
  sub_1D8CFD9D8(v91, v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController);
  v60 = v84;
  *(v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue) = v84;
  v61 = (v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
  *v61 = sub_1D8F674A8;
  v61[1] = v48;
  v62 = v60;
  v63 = v46;
  swift_retain_n();
  v64 = v47;
  v65 = v87;
  sub_1D9176E9C();
  v66 = sub_1D9176E5C();
  v68 = v67;

  (*(v88 + 8))(v65, v82);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  sub_1D8D5FDB8(v45, type metadata accessor for FeedManagerBagConfiguration);
  sub_1D8D5FDB8(v38, type metadata accessor for StoreFeedUpdater.Update);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  v69 = (v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_updaterJobUUID);
  *v69 = v66;
  v69[1] = v68;
  v70 = v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData;
  *(v70 + 1) = 0u;
  *(v70 + 2) = 0u;
  *v70 = 0u;
  *(v70 + 6) = v66;
  *(v70 + 7) = v68;

  updated = type metadata accessor for FeedUpdateRequest();
  v72 = *&v89[*(updated + 28)];
  v73 = OBJC_IVAR____TtCC18PodcastsFoundation16StoreFeedUpdater5Queue_jobs;
  swift_beginAccess();

  v74 = *(v1 + v73);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v91[0] = *(v1 + v73);
  *(v1 + v73) = 0x8000000000000000;
  sub_1D8D888D4(v52, v72, v75);
  *(v1 + v73) = v91[0];
  swift_endAccess();
  v76 = v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v77 = *(v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + *(updated + 72));
  os_unfair_lock_lock((v77 + 32));
  v78 = *(v77 + 24);
  if (v78)
  {
    LOBYTE(v92[0]) = *(v77 + 16);
    v92[1] = v78;

    sub_1D8D7FAB4();

    v79 = *(v77 + 24);
  }

  *(v77 + 16) = 0;
  *(v77 + 24) = 0;
  os_unfair_lock_unlock((v77 + 32));
  v80 = *(v52 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue);

  OS_dispatch_queue.asyncWithTelemetry(for:_:)(v76, sub_1D8D8E794, v52);

  sub_1D8D86EBC(v81);

  return sub_1D8D5FDB8(v89, type metadata accessor for StoreFeedUpdater.Update);
}

uint64_t sub_1D8D87904(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Loadable();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v7 = *(v19 + 64);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v18 - v9;
  v11 = *(a2 + 40);
  v20 = v12;
  v13 = *(v12 + 48);
  v14 = *(v5 - 8);
  v15 = *(v14 + 16);
  v15(&v18 - v9, v21, v5, v8);
  (v15)(&v10[v13], v2 + v11, v5);
  v16 = *(*(v4 - 8) + 48);
  if (v16(v10, 2, v4) == 1)
  {
    sub_1D8D87AFC(a2);
    return (*(v14 + 8))(&v10[v13], v5);
  }

  else if (v16(&v10[v13], 2, v4) == 1)
  {
    sub_1D8D2CD28(a2);
    return (*(v14 + 8))(v10, v5);
  }

  else
  {
    return (*(v19 + 8))(v10, v20);
  }
}

uint64_t sub_1D8D87AFC(uint64_t a1)
{
  sub_1D9178F4C();
  v3 = v1[3];
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v7 = v1 + *(a1 + 36);

  return sub_1D91772FC();
}

unint64_t sub_1D8D87B4C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = sub_1D8D8813C(v8, a2, 0, a4);
  *v4 = v6;
  return result;
}

id sub_1D8D87C40(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for MediaRequest.Params();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = (a3 + *(v13 + 148));
  if (v14[1])
  {
    v15 = *v14;
    v16 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v17 = [objc_opt_self() promiseWithResult_];
  }

  else
  {
    v18 = [objc_opt_self() sharedInstance];
    v16 = [v18 languageTag];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v17 = [v16 asyncValuePromiseOnQueue_];
  }

  v19 = v17;

  sub_1D8D85B08(a3, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a2;
  sub_1D8D85D0C(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  *(v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1D9172384;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D85F10;
  aBlock[3] = &block_descriptor_13_4;
  v22 = _Block_copy(aBlock);
  v23 = a4;
  v24 = a5;
  v25 = a1;

  v26 = [v19 thenWithBlock_];
  _Block_release(v22);

  return v26;
}

uint64_t sub_1D8D87ED4()
{
  v1 = type metadata accessor for MediaRequest.Params();
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);

  v4 = v0 + v2;
  sub_1D8D85E5C(*(v0 + v2), *(v0 + v2 + 8), *(v0 + v2 + 16), *(v0 + v2 + 24), *(v0 + v2 + 32), *(v0 + v2 + 40));
  v5 = *(v0 + v2 + 48);

  v6 = *(v0 + v2 + 56);

  v7 = *(v0 + v2 + 64);

  v8 = *(v0 + v2 + 72);

  v9 = *(v0 + v2 + 80);

  v10 = *(v0 + v2 + 88);

  v11 = *(v0 + v2 + 96);

  v12 = *(v0 + v2 + 104);

  v13 = *(v0 + v2 + 112);

  v14 = *(v0 + v2 + 120);

  v15 = *(v0 + v2 + 128);

  v16 = *(v0 + v2 + 136);

  v17 = *(v0 + v2 + 144);

  v18 = *(v0 + v2 + 176);

  v19 = *(v0 + v2 + 184);

  v20 = v1[28];
  v21 = sub_1D9176C2C();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v0 + v2 + v20, 1, v21))
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

unint64_t sub_1D8D8813C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
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
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1D8D88288(void *a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_1D8D87C40(a1, v8, v1 + v4, v6, v7);
}

uint64_t type metadata accessor for StoreFeedUpdaterJob()
{
  result = qword_1EDCD3CE0;
  if (!qword_1EDCD3CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D883D4()
{
  result = type metadata accessor for StoreFeedUpdater.Update(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for FeedManagerBagConfiguration();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_1D8D88524(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D91766EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = *(a2 + 144);
  v12 = v11[2];
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = v11[4];
      v14 = v11[5];

      sub_1D917677C();
      v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      v16 = [v31 stringByAppendingPathComponent_];

      v17 = sub_1D917820C();
      v19 = v18;

      MEMORY[0x1DA727D50](v17, v19);
      v20 = v31;
    }

    else
    {
      v32[0] = *(a2 + 144);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D917817C();

      sub_1D91766BC();

      v22 = sub_1D91766FC();
      if (*v21)
      {
        v23 = v21;
        (*(v4 + 16))(v7, v10, v3);
        v24 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v23 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_1D8D8EDF4(0, v24[2] + 1, 1, v24);
          *v23 = v24;
        }

        v27 = v24[2];
        v26 = v24[3];
        v28 = (v27 + 1);
        if (v27 >= v26 >> 1)
        {
          v31 = (v27 + 1);
          v29 = sub_1D8D8EDF4(v26 > 1, v27 + 1, 1, v24);
          v28 = v31;
          v24 = v29;
          *v23 = v29;
        }

        v24[2] = v28;
        (*(v4 + 32))(v24 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v7, v3);
        v22(v32, 0);
      }

      else
      {
        v22(v32, 0);
      }

      (*(v4 + 8))(v10, v3);
    }
  }
}

double sub_1D8D888AC(uint64_t a1)
{
  result = 0.0;
  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 169) = 1;
  return result;
}

uint64_t sub_1D8D888D4(uint64_t a1, uint64_t a2, char a3)
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
      sub_1D8F838E4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D8D8D934(v14, a3 & 1);
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

uint64_t sub_1D8D889F8(int64_t a1, uint64_t a2)
{
  v571 = a1;
  v3 = sub_1D91766EC();
  v569 = *(v3 - 8);
  v4 = *(v569 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v523 = &v520 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v524 = &v520 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v526 = &v520 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v536 = &v520 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v559 = &v520 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v537 = &v520 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v562 = &v520 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v525 = &v520 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v521 = &v520 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v520 = &v520 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v530 = &v520 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v538 = &v520 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v563 = &v520 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v539 = &v520 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v547 = &v520 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v540 = &v520 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v548 = &v520 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v541 = &v520 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v564 = &v520 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v529 = &v520 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v522 = &v520 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v542 = &v520 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v558 = &v520 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v543 = &v520 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v532 = &v520 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v544 = &v520 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v531 = &v520 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v520 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v570 = (&v520 - v62);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v520 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v520 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v520 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v520 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v520 - v76;
  v78 = *(a2 + 42);
  v565 = a2;
  v79 = *(a2 + 168);
  v572 = v80;
  if (v78)
  {
    if (v79)
    {
      goto LABEL_21;
    }

    v579[0] = *(v565 + 160);
    sub_1D9179A4C();
    sub_1D91766BC();

    v82 = sub_1D91766FC();
    if (*v81)
    {
      v83 = v81;
      sub_1D8D8EBA0();
      v84 = *(*v83 + 16);
      sub_1D8D8EE90(v84);
      v85 = *v83;
      *(v85 + 16) = v84 + 1;
      v86 = v569;
      (*(v569 + 16))(v85 + ((*(v569 + 80) + 32) & ~*(v569 + 80)) + *(v569 + 72) * v84, v71, v3);
      v82(v579, 0);
      v74 = v71;
LABEL_20:
      (*(v86 + 8))(v74, v3);
      goto LABEL_21;
    }

    v82(v579, 0);
    v74 = v71;
    goto LABEL_19;
  }

  if ((v79 & 1) == 0)
  {
    v87 = *(v565 + 160);
    strcpy(v579, "[{specifier}]");
    HIWORD(v579[1]) = -4864;
    v575 = 0x696669636570737BLL;
    *&v576 = 0xEB000000007D7265;
    strcpy(v573, "next-episodes");
    HIWORD(v573[1]) = -4864;
    sub_1D8D447DC();
    v88 = sub_1D917922C();
    v579[0] = 0x74696D696CLL;
    v579[1] = 0xE500000000000000;
    MEMORY[0x1DA7298F0](v88);

    v579[0] = v87;
    sub_1D9179A4C();
    sub_1D91766BC();

    v90 = sub_1D91766FC();
    v91 = *v89;
    if (*v89)
    {
      v92 = v89;
      v93 = *v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v92 = v91;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v91 = sub_1D8D8EDF4(0, v91[2] + 1, 1, v91);
        *v92 = v91;
      }

      v96 = v91[2];
      v95 = v91[3];
      if (v96 >= v95 >> 1)
      {
        v91 = sub_1D8D8EDF4(v95 > 1, v96 + 1, 1, v91);
        *v92 = v91;
      }

      v91[2] = v96 + 1;
      v97 = v569;
      v3 = v572;
      (*(v569 + 16))(v91 + ((*(v569 + 80) + 32) & ~*(v569 + 80)) + *(v569 + 72) * v96, v77, v572);
      v90(v579, 0);
    }

    else
    {
      v90(v579, 0);
      v97 = v569;
    }

    (*(v97 + 8))(v77, v3);
  }

  if ((sub_1D8D865D0(v565) & 1) == 0)
  {
    sub_1D91766BC();
    v99 = sub_1D91766FC();
    if (*v98)
    {
      v100 = v98;
      sub_1D8D8EBA0();
      v101 = *(*v100 + 16);
      sub_1D8D8EE90(v101);
      v102 = *v100;
      *(v102 + 16) = v101 + 1;
      v86 = v569;
      (*(v569 + 16))(v102 + ((*(v569 + 80) + 32) & ~*(v569 + 80)) + *(v569 + 72) * v101, v74, v3);
      v99(v579, 0);
      goto LABEL_20;
    }

    v99(v579, 0);
LABEL_19:
    v86 = v569;
    goto LABEL_20;
  }

LABEL_21:
  v528 = type metadata accessor for MediaRequest.Params();
  v103 = v565;
  v104 = (v565 + v528[31]);
  if (v104[1])
  {
    v105 = *v104;
    v106 = v104[1];

    sub_1D91766BC();

    v108 = sub_1D91766FC();
    if (*v107)
    {
      v109 = v107;
      (*(v569 + 16))(v65, v68, v3);
      v110 = *v109;
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *v109 = v110;
      if ((v111 & 1) == 0)
      {
        v110 = sub_1D8D8EDF4(0, v110[2] + 1, 1, v110);
        *v109 = v110;
      }

      v113 = v110[2];
      v112 = v110[3];
      v114 = v569;
      if (v113 >= v112 >> 1)
      {
        v519 = sub_1D8D8EDF4(v112 > 1, v113 + 1, 1, v110);
        v114 = v569;
        v110 = v519;
        *v109 = v519;
      }

      v110[2] = v113 + 1;
      v115 = v114;
      (*(v114 + 32))(v110 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v113, v65, v3);
      v108(v579, 0);
    }

    else
    {
      v108(v579, 0);
      v115 = v569;
    }

    (*(v115 + 8))(v68, v3);
    v103 = v565;
  }

  v116 = *(v103 + v528[32]);
  v117 = *(v116 + 16);
  v118 = "podcast-episodes";
  if (v117)
  {
    v568 = v60;
    v579[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D8E71C(v117);
    v119 = (v116 + 32);
    do
    {
      v121 = *v119++;
      v120 = v121;
      v122 = v121 == 5;
      v123 = 0x6970652D7478656ELL;
      if (v121 == 5)
      {
        v123 = 0x69726F6765746163;
      }

      v124 = 0xED00007365646F73;
      if (v122)
      {
        v124 = 0xEA00000000007365;
      }

      v125 = 0x697263736E617274;
      if (v120 == 3)
      {
        v125 = 0xD000000000000010;
      }

      v126 = 0xEB00000000737470;
      if (v120 == 3)
      {
        v126 = 0x80000001D91C7F60;
      }

      if (v120 <= 4)
      {
        v123 = v125;
        v124 = v126;
      }

      v127 = 0x7374736163646F70;
      if (v120 != 1)
      {
        v127 = 0xD000000000000010;
      }

      v128 = 0xE800000000000000;
      if (v120 != 1)
      {
        v128 = 0x80000001D91C7F40;
      }

      if (!v120)
      {
        v127 = 0xD000000000000010;
        v128 = 0x80000001D91C7F20;
      }

      if (v120 <= 2)
      {
        v129 = v127;
      }

      else
      {
        v129 = v123;
      }

      if (v120 <= 2)
      {
        v130 = v128;
      }

      else
      {
        v130 = v124;
      }

      v131 = v579[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8D41BE0(0, *(v131 + 16) + 1, 1);
        v131 = v579[0];
      }

      v133 = *(v131 + 16);
      v132 = *(v131 + 24);
      if (v133 >= v132 >> 1)
      {
        sub_1D8D41BE0((v132 > 1), v133 + 1, 1);
        v131 = v579[0];
      }

      *(v131 + 16) = v133 + 1;
      v134 = v131 + 16 * v133;
      *(v134 + 32) = v129;
      *(v134 + 40) = v130;
      --v117;
    }

    while (v117);
    v579[0] = v131;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v135 = v570;
    sub_1D91766BC();

    v136 = sub_1D91766FC();
    v138 = v136;
    if (*v137)
    {
      v139 = v137;
      sub_1D8D8EBA0();
      v140 = *(*v139 + 16);
      sub_1D8D8EE90(v140);
      v141 = *v139;
      *(v141 + 16) = v140 + 1;
      v142 = v569;
      v3 = v572;
      (*(v569 + 16))(v141 + ((*(v569 + 80) + 32) & ~*(v569 + 80)) + *(v569 + 72) * v140, v135, v572);
      v138(v579, 0);
    }

    else
    {
      v136(v579, 0);
      v3 = v572;
      v142 = v569;
    }

    v60 = v568;
    (*(v142 + 8))(v135, v3);
    v103 = v565;
    v118 = "podcast-episodes";
  }

  v143 = v531;
  if ((*(v103 + 200) & 1) == 0)
  {
    v579[0] = *(v103 + 192);
    sub_1D9179A4C();
    sub_1D91766BC();

    v145 = sub_1D91766FC();
    if (*v144)
    {
      v146 = v144;
      sub_1D8D8EBA0();
      v147 = *(*v146 + 16);
      sub_1D8D8EE90(v147);
      v148 = *v146;
      *(v148 + 16) = v147 + 1;
      v149 = v569;
      (*(v569 + 16))(v148 + ((*(v569 + 80) + 32) & ~*(v569 + 80)) + *(v569 + 72) * v147, v60, v3);
      v145(v579, 0);
    }

    else
    {
      v145(v579, 0);
      v149 = v569;
    }

    (*(v149 + 8))(v60, v3);
    v103 = v565;
  }

  v150 = *(v103 + 88);
  if (*(v150 + 16))
  {
    v151 = sub_1D8D94734(0);
    if (v152)
    {
      v545 = *(*(v150 + 56) + 8 * v151);
    }

    else
    {
      v545 = MEMORY[0x1E69E7CC0];
    }

    v103 = v565;
  }

  else
  {
    v545 = MEMORY[0x1E69E7CC0];
  }

  v153 = *(v103 + 41);
  if (v153 != 7 && (sub_1D8D8D46C(v153, 2u) & 1) != 0 || (sub_1D8D8D6CC(v565) & 1) != 0 || (sub_1D8D865D0(v565) & 1) != 0)
  {
    v154 = swift_isUniquelyReferenced_nonNull_native();
    v155 = &v575;
    if (v154)
    {
      v156 = v545;
    }

    else
    {
LABEL_482:
      v156 = sub_1D8ECCFF4(0, *(*(v155 - 256) + 16) + 1, 1, *(v155 - 256));
    }

    v158 = *(v156 + 2);
    v157 = *(v156 + 3);
    if (v158 >= v157 >> 1)
    {
      v156 = sub_1D8ECCFF4((v157 > 1), v158 + 1, 1, v156);
    }

    *(v156 + 2) = v158 + 1;
    v545 = v156;
    v156[v158 + 32] = 9;
  }

  v159 = v565;
  v160 = *(v565 + 8);
  v161 = *(v565 + 16);
  v162 = *(v565 + 24);
  v163 = *(v565 + 32);
  v164 = *(v565 + 40);
  v579[0] = *v565;
  v579[1] = v160;
  v580 = v161;
  v581 = v162;
  v582 = v163;
  v583 = v164;
  v575 = 1;
  v576 = 0u;
  v577 = 0u;
  v578 = 4;
  sub_1D8D8DFD4(v579[0], v160, v161, v162, v163, v164);
  v165 = _s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(v579, &v575);
  sub_1D8D85E5C(v579[0], v579[1], v580, v581, v582, v583);
  v546 = v150;
  if (v165)
  {
    v166 = *(v159 + 41);
    if (v166 == 7 || (sub_1D8D8D46C(v166, 3u) & 1) == 0)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v167 = v545;
      }

      else
      {
        v167 = sub_1D8ECCFF4(0, *(v545 + 2) + 1, 1, v545);
      }

      v169 = *(v167 + 2);
      v168 = *(v167 + 3);
      if (v169 >= v168 >> 1)
      {
        v167 = sub_1D8ECCFF4((v168 > 1), v169 + 1, 1, v167);
      }

      *(v167 + 2) = v169 + 1;
      v545 = v167;
      v167[v169 + 32] = 7;
    }
  }

  v170 = *(v565 + 48);
  v171 = v170 + 64;
  v172 = 1 << *(v170 + 32);
  v173 = -1;
  if (v172 < 64)
  {
    v173 = ~(-1 << v172);
  }

  v174 = v173 & *(v170 + 64);
  v150 = (v172 + 63) >> 6;
  v566 = (v118 - 32) | 0x8000000000000000;
  v556 = 0x80000001D91C80F0;
  v555 = 0x80000001D91C80D0;
  v557 = 0x80000001D91C80B0;
  v554 = 0x80000001D91C8080;
  v553 = 0x80000001D91C8050;
  v552 = 0x80000001D91C8030;
  v551 = 0x80000001D91C8010;
  v550 = 0x80000001D91C7FF0;
  v549 = 0x80000001D91C7FD0;
  v568 = (v569 + 16);
  v567 = v569 + 32;
  v570 = (v569 + 8);

  v118 = 0;
  v534 = v170 + 64;
  v533 = v150;
  v527 = v170;
  while (v174)
  {
LABEL_101:
    v561 = (v174 - 1) & v174;
    v175 = __clz(__rbit64(v174)) | (v118 << 6);
    v176 = *(*(v170 + 48) + v175);
    v177 = *(*(v170 + 56) + 8 * v175);
    strcpy(v579, "include[");
    BYTE1(v579[1]) = 0;
    WORD1(v579[1]) = 0;
    HIDWORD(v579[1]) = -402653184;
    v178 = 0x697263736E617274;
    if (v176 != 3)
    {
      v178 = 0x7372657470616863;
    }

    v179 = 0xEB00000000737470;
    if (v176 != 3)
    {
      v179 = 0xE800000000000000;
    }

    if (v176 == 2)
    {
      v178 = 0x2D74736163646F70;
      v179 = 0xEF736E6F73616573;
    }

    v180 = 0xD000000000000010;
    if (!v176)
    {
      v180 = 0x7365646F73697065;
    }

    v181 = v566;
    if (!v176)
    {
      v181 = 0xE800000000000000;
    }

    if (v176 <= 1)
    {
      v182 = v180;
    }

    else
    {
      v182 = v178;
    }

    if (v176 <= 1)
    {
      v183 = v181;
    }

    else
    {
      v183 = v179;
    }

    MEMORY[0x1DA7298F0](v182, v183);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v184 = v579[1];
    v560 = v579[0];
    v579[0] = 0;
    v579[1] = 0xE000000000000000;
    v185 = *(v177 + 16);
    if (v185)
    {
      v535 = v184;
      v575 = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v185);
      v186 = 32;
      do
      {
        v187 = 0xE800000000000000;
        v188 = 0x7365646F73697065;
        switch(*(v177 + v186))
        {
          case 1:
            v188 = 0x7263736275537369;
            v187 = 0xEC00000064656269;
            break;
          case 2:
            v188 = 0x72617262694C6E69;
            v187 = 0xE900000000000079;
            break;
          case 3:
            v188 = 0xD00000000000001ELL;
            v187 = v549;
            break;
          case 4:
            v188 = 0xD000000000000012;
            v187 = v550;
            break;
          case 5:
            v188 = 0xD000000000000010;
            v187 = v551;
            break;
          case 6:
            v188 = 0xD000000000000012;
            v187 = v552;
            break;
          case 7:
            v188 = 0xD000000000000011;
            v187 = v553;
            break;
          case 8:
            break;
          case 9:
            v187 = 0xE700000000000000;
            v188 = 0x74736163646F70;
            break;
          case 0xA:
            v188 = 0x7374736163646F70;
            break;
          case 0xB:
            v188 = 0x637365446C6C7566;
            v187 = 0xEF6E6F6974706972;
            break;
          case 0xC:
            v188 = 0xD000000000000017;
            v187 = v554;
            break;
          case 0xD:
            v187 = 0xE700000000000000;
            v188 = 0x6C725564656566;
            break;
          case 0xE:
            v187 = 0xE700000000000000;
            v188 = 0x6C656E6E616863;
            break;
          case 0xF:
            v187 = 0xE600000000000000;
            v188 = 0x6C6C65737075;
            break;
          case 0x10:
            v188 = 0xD000000000000013;
            v187 = v557;
            break;
          case 0x11:
            v188 = 0xD000000000000010;
            v187 = v555;
            break;
          case 0x12:
            v188 = 0xD000000000000010;
            v187 = v556;
            break;
          case 0x13:
            v188 = 0x697263736E617274;
            v187 = 0xEB00000000737470;
            break;
          case 0x14:
            v187 = 0xE700000000000000;
            v188 = 0x74657070696E73;
            break;
          case 0x15:
            v188 = 0x69726F6765746163;
            goto LABEL_137;
          case 0x16:
            v187 = 0xE600000000000000;
            v188 = 0x746E65726170;
            break;
          case 0x17:
            v188 = 0x6E6572646C696863;
            break;
          case 0x18:
            v188 = 0x7372657470616863;
            break;
          case 0x19:
            v188 = 0x6D617266656D6974;
LABEL_137:
            v187 = 0xEA00000000007365;
            break;
          default:
            v187 = 0xE700000000000000;
            v188 = 0x6B726F77747261;
            break;
        }

        v189 = v575;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v189 + 16) + 1, 1);
          v189 = v575;
        }

        v191 = *(v189 + 16);
        v190 = *(v189 + 24);
        if (v191 >= v190 >> 1)
        {
          sub_1D8D41BE0((v190 > 1), v191 + 1, 1);
          v189 = v575;
        }

        *(v189 + 16) = v191 + 1;
        v192 = v189 + 16 * v191;
        *(v192 + 32) = v188;
        *(v192 + 40) = v187;
        ++v186;
        --v185;
      }

      while (v185);

      v143 = v531;
      v170 = v527;
    }

    else
    {

      v189 = MEMORY[0x1E69E7CC0];
    }

    v575 = v189;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v193 = sub_1D917817C();
    v195 = v194;

    MEMORY[0x1DA7298F0](v193, v195);

    sub_1D91766BC();

    v197 = sub_1D91766FC();
    if (*v196)
    {
      v198 = v196;
      v3 = v572;
      (*v568)(v544, v143, v572);
      v199 = *v198;
      v200 = swift_isUniquelyReferenced_nonNull_native();
      *v198 = v199;
      if ((v200 & 1) == 0)
      {
        v199 = sub_1D8D8EDF4(0, v199[2] + 1, 1, v199);
        *v198 = v199;
      }

      v202 = v199[2];
      v201 = v199[3];
      v203 = v569;
      if (v202 >= v201 >> 1)
      {
        v204 = sub_1D8D8EDF4(v201 > 1, v202 + 1, 1, v199);
        v203 = v569;
        v199 = v204;
        *v198 = v204;
      }

      v199[2] = v202 + 1;
      (*(v203 + 32))(v199 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v202, v544, v3);
      v197(v579, 0);
    }

    else
    {
      v197(v579, 0);
      v3 = v572;
    }

    (*v570)(v143, v3);
    v171 = v534;
    v150 = v533;
    v174 = v561;
  }

  while (1)
  {
    v155 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      __break(1u);
LABEL_473:
      __break(1u);
LABEL_474:
      __break(1u);
LABEL_475:
      __break(1u);
LABEL_476:
      __break(1u);
LABEL_477:
      __break(1u);
LABEL_478:
      __break(1u);
LABEL_479:
      __break(1u);
LABEL_480:
      __break(1u);
LABEL_481:
      __break(1u);
      goto LABEL_482;
    }

    if (v155 >= v150)
    {
      break;
    }

    v174 = *(v171 + 8 * v155);
    ++v118;
    if (v174)
    {
      v118 = v155;
      goto LABEL_101;
    }
  }

  v205 = *(v565 + 56);
  v208 = *(v205 + 64);
  v207 = v205 + 64;
  v206 = v208;
  v209 = 1 << *(*(v565 + 56) + 32);
  v210 = -1;
  if (v209 < 64)
  {
    v210 = ~(-1 << v209);
  }

  v211 = v210 & v206;
  v150 = (v209 + 63) >> 6;
  v560 = *(v565 + 56);

  v212 = 0;
  v534 = v207;
  v533 = v150;
  while (v211)
  {
LABEL_169:
    v561 = (v211 - 1) & v211;
    v213 = __clz(__rbit64(v211)) | (v212 << 6);
    v214 = *(*(v560 + 48) + v213);
    v215 = *(*(v560 + 56) + 8 * v213);
    strcpy(v579, "relate[");
    v579[1] = 0xE700000000000000;
    v216 = 0x697263736E617274;
    if (v214 != 3)
    {
      v216 = 0x7372657470616863;
    }

    v217 = 0xEB00000000737470;
    if (v214 != 3)
    {
      v217 = 0xE800000000000000;
    }

    if (v214 == 2)
    {
      v216 = 0x2D74736163646F70;
      v217 = 0xEF736E6F73616573;
    }

    v218 = 0xD000000000000010;
    if (!v214)
    {
      v218 = 0x7365646F73697065;
    }

    v219 = v566;
    if (!v214)
    {
      v219 = 0xE800000000000000;
    }

    if (v214 <= 1)
    {
      v220 = v218;
    }

    else
    {
      v220 = v216;
    }

    if (v214 <= 1)
    {
      v221 = v219;
    }

    else
    {
      v221 = v217;
    }

    MEMORY[0x1DA7298F0](v220, v221);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v143 = v579[0];
    v222 = v579[1];
    v579[0] = 0;
    v579[1] = 0xE000000000000000;
    v223 = *(v215 + 16);
    if (v223)
    {
      v535 = v143;
      v544 = v222;
      v575 = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v223);
      v224 = 32;
      do
      {
        v225 = 0xE700000000000000;
        v226 = 0x6B726F77747261;
        switch(*(v215 + v224))
        {
          case 1:
            v226 = 0x7263736275537369;
            v225 = 0xEC00000064656269;
            break;
          case 2:
            v226 = 0x72617262694C6E69;
            v225 = 0xE900000000000079;
            break;
          case 3:
            v226 = 0xD00000000000001ELL;
            v225 = v549;
            break;
          case 4:
            v226 = 0xD000000000000012;
            v225 = v550;
            break;
          case 5:
            v226 = 0xD000000000000010;
            v225 = v551;
            break;
          case 6:
            v226 = 0xD000000000000012;
            v225 = v552;
            break;
          case 7:
            v226 = 0xD000000000000011;
            v225 = v553;
            break;
          case 8:
            v225 = 0xE800000000000000;
            v226 = 0x7365646F73697065;
            break;
          case 9:
            v226 = 0x74736163646F70;
            break;
          case 0xA:
            v225 = 0xE800000000000000;
            v226 = 0x7374736163646F70;
            break;
          case 0xB:
            v226 = 0x637365446C6C7566;
            v225 = 0xEF6E6F6974706972;
            break;
          case 0xC:
            v226 = 0xD000000000000017;
            v225 = v554;
            break;
          case 0xD:
            v226 = 0x6C725564656566;
            break;
          case 0xE:
            v226 = 0x6C656E6E616863;
            break;
          case 0xF:
            v225 = 0xE600000000000000;
            v226 = 0x6C6C65737075;
            break;
          case 0x10:
            v226 = 0xD000000000000013;
            v225 = v557;
            break;
          case 0x11:
            v226 = 0xD000000000000010;
            v225 = v555;
            break;
          case 0x12:
            v226 = 0xD000000000000010;
            v225 = v556;
            break;
          case 0x13:
            v226 = 0x697263736E617274;
            v225 = 0xEB00000000737470;
            break;
          case 0x14:
            v226 = 0x74657070696E73;
            break;
          case 0x15:
            v226 = 0x69726F6765746163;
            goto LABEL_205;
          case 0x16:
            v225 = 0xE600000000000000;
            v226 = 0x746E65726170;
            break;
          case 0x17:
            v225 = 0xE800000000000000;
            v226 = 0x6E6572646C696863;
            break;
          case 0x18:
            v225 = 0xE800000000000000;
            v226 = 0x7372657470616863;
            break;
          case 0x19:
            v226 = 0x6D617266656D6974;
LABEL_205:
            v225 = 0xEA00000000007365;
            break;
          default:
            break;
        }

        v227 = v575;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v227 + 16) + 1, 1);
          v227 = v575;
        }

        v229 = *(v227 + 16);
        v228 = *(v227 + 24);
        if (v229 >= v228 >> 1)
        {
          sub_1D8D41BE0((v228 > 1), v229 + 1, 1);
          v227 = v575;
        }

        *(v227 + 16) = v229 + 1;
        v230 = v227 + 16 * v229;
        *(v230 + 32) = v226;
        *(v230 + 40) = v225;
        ++v224;
        --v223;
      }

      while (v223);

      v3 = v572;
      v143 = v535;
    }

    else
    {

      v227 = MEMORY[0x1E69E7CC0];
    }

    v575 = v227;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    v231 = sub_1D917817C();
    v233 = v232;

    MEMORY[0x1DA7298F0](v231, v233);

    v118 = v532;
    sub_1D91766BC();

    v235 = sub_1D91766FC();
    if (*v234)
    {
      v236 = v234;
      (*v568)(v543, v118, v3);
      v237 = *v236;
      v238 = swift_isUniquelyReferenced_nonNull_native();
      *v236 = v237;
      if ((v238 & 1) == 0)
      {
        v237 = sub_1D8D8EDF4(0, v237[2] + 1, 1, v237);
        *v236 = v237;
      }

      v143 = v237[2];
      v239 = v237[3];
      v240 = v569;
      if (v143 >= v239 >> 1)
      {
        v241 = sub_1D8D8EDF4(v239 > 1, v143 + 1, 1, v237);
        v240 = v569;
        v237 = v241;
        *v236 = v241;
      }

      v150 = v533;
      v237[2] = v143 + 1;
      (*(v240 + 32))(v237 + ((*(v240 + 80) + 32) & ~*(v240 + 80)) + *(v240 + 72) * v143, v543, v3);
      v235(v579, 0);
    }

    else
    {
      v235(v579, 0);
      v150 = v533;
    }

    (*v570)(v118, v3);
    v207 = v534;
    v211 = v561;
  }

  while (1)
  {
    v155 = v212 + 1;
    if (__OFADD__(v212, 1))
    {
      goto LABEL_473;
    }

    if (v155 >= v150)
    {
      break;
    }

    v211 = *(v207 + 8 * v155);
    ++v212;
    if (v211)
    {
      v212 = v155;
      goto LABEL_169;
    }
  }

  v242 = *(v565 + 64);
  v143 = v242 + 64;
  v243 = 1 << *(v242 + 32);
  v244 = -1;
  if (v243 < 64)
  {
    v244 = ~(-1 << v243);
  }

  v245 = v244 & *(v242 + 64);
  v3 = (v243 + 63) >> 6;
  v246 = *(v565 + 64);

  v247 = 0;
  while (v245)
  {
LABEL_237:
    v248 = __clz(__rbit64(v245)) | (v247 << 6);
    v249 = *(*(v242 + 48) + v248);
    v250 = *(*(v242 + 56) + 8 * v248);
    v579[0] = 0x5B74696D696CLL;
    v579[1] = 0xE600000000000000;
    if (v249 <= 1)
    {
      if (v249)
      {
        v251 = 0xD000000000000010;
        v252 = v566;
      }

      else
      {
        v252 = 0xE800000000000000;
        v251 = 0x7365646F73697065;
      }
    }

    else if (v249 == 2)
    {
      v251 = 0x2D74736163646F70;
      v252 = 0xEF736E6F73616573;
    }

    else if (v249 == 3)
    {
      v251 = 0x697263736E617274;
      v252 = 0xEB00000000737470;
    }

    else
    {
      v252 = 0xE800000000000000;
      v251 = 0x7372657470616863;
    }

    MEMORY[0x1DA7298F0](v251, v252);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v579[0] = v250;
    sub_1D9179A4C();
    v118 = v558;
    sub_1D91766BC();

    v254 = sub_1D91766FC();
    if (*v253)
    {
      v255 = v253;
      (*v568)(v542, v118, v572);
      v256 = *v255;
      v257 = swift_isUniquelyReferenced_nonNull_native();
      *v255 = v256;
      if ((v257 & 1) == 0)
      {
        v256 = sub_1D8D8EDF4(0, v256[2] + 1, 1, v256);
        *v255 = v256;
      }

      v259 = v256[2];
      v258 = v256[3];
      v260 = v569;
      if (v259 >= v258 >> 1)
      {
        v261 = sub_1D8D8EDF4(v258 > 1, v259 + 1, 1, v256);
        v260 = v569;
        v256 = v261;
        *v255 = v261;
      }

      v256[2] = v259 + 1;
      v150 = v572;
      (*(v260 + 32))(v256 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v259, v542, v572);
      v254(v579, 0);
      v118 = v558;
    }

    else
    {
      v254(v579, 0);
      v150 = v572;
    }

    v245 &= v245 - 1;
    (*v570)(v118, v150);
  }

  while (1)
  {
    v155 = v247 + 1;
    if (__OFADD__(v247, 1))
    {
      goto LABEL_474;
    }

    if (v155 >= v3)
    {
      break;
    }

    v245 = *(v143 + 8 * v155);
    ++v247;
    if (v245)
    {
      v247 = v155;
      goto LABEL_237;
    }
  }

  v262 = v565;
  v263 = *(v565 + 72);
  v264 = *(v263 + 16);
  v3 = v572;
  if (v264)
  {
    v579[0] = MEMORY[0x1E69E7CC0];
    sub_1D8D8E71C(v264);
    v265 = (v263 + 32);
    v266 = v579[0];
    do
    {
      v267 = *v265++;
      LOBYTE(v575) = v267;
      v268 = MediaRequest.IncludeExtendTypes.rawValue.getter();
      v270 = v269;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D8D41BE0(0, *(v266 + 16) + 1, 1);
        v266 = v579[0];
      }

      v272 = *(v266 + 16);
      v271 = *(v266 + 24);
      if (v272 >= v271 >> 1)
      {
        sub_1D8D41BE0((v271 > 1), v272 + 1, 1);
        v266 = v579[0];
      }

      *(v266 + 16) = v272 + 1;
      v273 = v266 + 16 * v272;
      *(v273 + 32) = v268;
      *(v273 + 40) = v270;
      --v264;
    }

    while (v264);
    v579[0] = v266;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v274 = v522;
    sub_1D91766BC();

    v150 = v571;
    v276 = sub_1D91766FC();
    if (*v275)
    {
      v150 = v275;
      v277 = v529;
      (*v568)(v529, v274, v3);
      sub_1D8D8EBA0();
      v278 = *(*v150 + 16);
      sub_1D8D8EE90(v278);
      sub_1D8D8F684(v278, v277);
    }

    v276(v579, 0);
    (*v570)(v274, v3);
    v262 = v565;
  }

  v279 = *(v262 + 80);
  v143 = v279 + 64;
  v280 = 1 << *(v279 + 32);
  v281 = -1;
  if (v280 < 64)
  {
    v281 = ~(-1 << v280);
  }

  v118 = v281 & *(v279 + 64);
  v282 = (v280 + 63) >> 6;
  v561 = v279;

  v283 = 0;
  while (v118)
  {
LABEL_272:
    v284 = __clz(__rbit64(v118)) | (v283 << 6);
    v285 = (*(v561 + 48) + 16 * v284);
    v286 = *v285;
    v287 = v285[1];
    v288 = *(*(v561 + 56) + 8 * v284);
    v579[0] = 0x5B74696D6FLL;
    v579[1] = 0xE500000000000000;

    MEMORY[0x1DA7298F0](v286, v287);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v579[0] = v288;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v289 = v564;
    sub_1D91766BC();

    v150 = v571;
    v291 = sub_1D91766FC();
    if (*v290)
    {
      v150 = v290;
      (*v568)(v541, v289, v572);
      v292 = *v150;
      v293 = swift_isUniquelyReferenced_nonNull_native();
      *v150 = v292;
      if ((v293 & 1) == 0)
      {
        v292 = sub_1D8D8EDF4(0, v292[2] + 1, 1, v292);
        *v150 = v292;
      }

      v295 = v292[2];
      v294 = v292[3];
      v296 = v569;
      if (v295 >= v294 >> 1)
      {
        v297 = sub_1D8D8EDF4(v294 > 1, v295 + 1, 1, v292);
        v296 = v569;
        v292 = v297;
        *v150 = v297;
      }

      v292[2] = v295 + 1;
      v3 = v572;
      (*(v296 + 32))(v292 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v295, v541, v572);
      v291(v579, 0);
    }

    else
    {
      v291(v579, 0);
      v3 = v572;
    }

    v118 &= v118 - 1;
    (*v570)(v564, v3);
  }

  while (1)
  {
    v155 = v283 + 1;
    if (__OFADD__(v283, 1))
    {
      goto LABEL_475;
    }

    if (v155 >= v282)
    {
      break;
    }

    v118 = *(v143 + 8 * v155);
    ++v283;
    if (v118)
    {
      v283 = v155;
      goto LABEL_272;
    }
  }

  v573[0] = v546;
  if (*(v545 + 2))
  {

    sub_1D8F7D618(v298, 0);
    v299 = v573[0];
  }

  else
  {
  }

  v143 = 0;
  v300 = (v299 + 64);
  v301 = 1 << *(v299 + 32);
  v302 = -1;
  if (v301 < 64)
  {
    v302 = ~(-1 << v301);
  }

  v303 = v302 & *(v299 + 64);
  v150 = (v301 + 63) >> 6;
  v556 = 0x80000001D91C7F60;
  v555 = 0x80000001D91C7F40;
  v558 = (v299 + 64);
  v557 = v150;
  v546 = v299;
  while (v303)
  {
LABEL_291:
    v564 = ((v303 - 1) & v303);
    v304 = __clz(__rbit64(v303)) | (v143 << 6);
    v305 = *(*(v299 + 48) + v304);
    v306 = *(*(v299 + 56) + 8 * v304);
    strcpy(v579, "include[");
    BYTE1(v579[1]) = 0;
    WORD1(v579[1]) = 0;
    HIDWORD(v579[1]) = -402653184;
    v307 = 0x6970652D7478656ELL;
    if (v305 == 5)
    {
      v307 = 0x69726F6765746163;
    }

    v308 = 0xED00007365646F73;
    if (v305 == 5)
    {
      v308 = 0xEA00000000007365;
    }

    v309 = 0x697263736E617274;
    if (v305 == 3)
    {
      v309 = 0xD000000000000010;
    }

    v310 = 0xEB00000000737470;
    if (v305 == 3)
    {
      v310 = v556;
    }

    if (v305 <= 4)
    {
      v307 = v309;
      v308 = v310;
    }

    v311 = 0x7374736163646F70;
    if (v305 != 1)
    {
      v311 = 0xD000000000000010;
    }

    v312 = v555;
    if (v305 == 1)
    {
      v312 = 0xE800000000000000;
    }

    if (!v305)
    {
      v311 = 0xD000000000000010;
      v312 = v566;
    }

    if (v305 <= 2)
    {
      v313 = v311;
    }

    else
    {
      v313 = v307;
    }

    if (v305 <= 2)
    {
      v314 = v312;
    }

    else
    {
      v314 = v308;
    }

    MEMORY[0x1DA7298F0](v313, v314);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v118 = v579[1];
    v315 = *(v306 + 16);
    if (v315)
    {
      v560 = v579[0];
      v561 = v579[1];
      v579[0] = MEMORY[0x1E69E7CC0];
      sub_1D8D8E71C(v315);
      v316 = v579[0];
      v317 = 32;
      do
      {
        LOBYTE(v575) = *(v306 + v317);
        v318 = MediaRequest.IncludeExtendTypes.rawValue.getter();
        v320 = v319;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8D41BE0(0, *(v316 + 16) + 1, 1);
          v316 = v579[0];
        }

        v322 = *(v316 + 16);
        v321 = *(v316 + 24);
        if (v322 >= v321 >> 1)
        {
          sub_1D8D41BE0((v321 > 1), v322 + 1, 1);
          v316 = v579[0];
        }

        *(v316 + 16) = v322 + 1;
        v323 = v316 + 16 * v322;
        *(v323 + 32) = v318;
        *(v323 + 40) = v320;
        ++v317;
        --v315;
      }

      while (v315);

      v118 = v561;
    }

    else
    {

      v316 = MEMORY[0x1E69E7CC0];
    }

    v579[0] = v316;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v324 = v548;
    sub_1D91766BC();

    v326 = sub_1D91766FC();
    if (*v325)
    {
      v327 = v325;
      v3 = v572;
      (*v568)(v540, v324, v572);
      v118 = *v327;
      v328 = swift_isUniquelyReferenced_nonNull_native();
      *v327 = v118;
      if ((v328 & 1) == 0)
      {
        v118 = sub_1D8D8EDF4(0, *(v118 + 16) + 1, 1, v118);
        *v327 = v118;
      }

      v330 = *(v118 + 16);
      v329 = *(v118 + 24);
      v331 = v569;
      if (v330 >= v329 >> 1)
      {
        v332 = sub_1D8D8EDF4(v329 > 1, v330 + 1, 1, v118);
        v331 = v569;
        v118 = v332;
        *v327 = v332;
      }

      *(v118 + 16) = v330 + 1;
      (*(v331 + 32))(v118 + ((*(v331 + 80) + 32) & ~*(v331 + 80)) + *(v331 + 72) * v330, v540, v3);
      v326(v579, 0);
      v324 = v548;
    }

    else
    {
      v326(v579, 0);
      v3 = v572;
    }

    v300 = v558;
    v150 = v557;
    v303 = v564;
    (*v570)(v324, v3);
    v299 = v546;
  }

  while (1)
  {
    v155 = v143 + 1;
    if (__OFADD__(v143, 1))
    {
      goto LABEL_476;
    }

    if (v155 >= v150)
    {
      break;
    }

    v303 = *&v300[8 * v155];
    ++v143;
    if (v303)
    {
      v143 = v155;
      goto LABEL_291;
    }
  }

  v333 = *(v565 + 96);
  v335 = *(v333 + 64);
  v143 = v333 + 64;
  v334 = v335;
  v336 = 1 << *(*(v565 + 96) + 32);
  v337 = -1;
  if (v336 < 64)
  {
    v337 = ~(-1 << v336);
  }

  v338 = v337 & v334;
  v118 = (v336 + 63) >> 6;
  v564 = *(v565 + 96);

  v339 = 0;
  v566 = 0;
  while (v338)
  {
LABEL_338:
    v340 = __clz(__rbit64(v338)) | (v339 << 6);
    v341 = *(*(v564 + 6) + v340);
    v342 = *(*(v564 + 7) + 8 * v340);
    strcpy(v579, "extend[");
    v579[1] = 0xE700000000000000;
    LOBYTE(v575) = v341;
    v343 = MediaRequest.ContentType.rawValue.getter();
    v345 = v344;

    MEMORY[0x1DA7298F0](v343, v345);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v346 = v566;
    v347 = sub_1D9171AC0(v342);
    v566 = v346;

    v579[0] = v347;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v348 = v547;
    sub_1D91766BC();

    v350 = sub_1D91766FC();
    if (*v349)
    {
      v351 = v349;
      (*v568)(v539, v348, v572);
      v352 = *v351;
      v353 = swift_isUniquelyReferenced_nonNull_native();
      *v351 = v352;
      if ((v353 & 1) == 0)
      {
        v352 = sub_1D8D8EDF4(0, v352[2] + 1, 1, v352);
        *v351 = v352;
      }

      v355 = v352[2];
      v354 = v352[3];
      v356 = v569;
      if (v355 >= v354 >> 1)
      {
        v358 = sub_1D8D8EDF4(v354 > 1, v355 + 1, 1, v352);
        v356 = v569;
        v352 = v358;
        *v351 = v358;
      }

      v150 = v547;
      v352[2] = v355 + 1;
      v357 = v352 + ((*(v356 + 80) + 32) & ~*(v356 + 80)) + *(v356 + 72) * v355;
      v3 = v572;
      (*(v356 + 32))(v357, v539, v572);
      v350(v579, 0);
    }

    else
    {
      v350(v579, 0);
      v3 = v572;
      v150 = v348;
    }

    v338 &= v338 - 1;
    (*v570)(v150, v3);
  }

  while (1)
  {
    v155 = v339 + 1;
    if (__OFADD__(v339, 1))
    {
      goto LABEL_477;
    }

    if (v155 >= v118)
    {
      break;
    }

    v338 = *(v143 + 8 * v155);
    ++v339;
    if (v338)
    {
      v339 = v155;
      goto LABEL_338;
    }
  }

  v359 = *(v565 + 104);
  v361 = *(v359 + 64);
  v143 = v359 + 64;
  v360 = v361;
  v362 = 1 << *(*(v565 + 104) + 32);
  v363 = -1;
  if (v362 < 64)
  {
    v363 = ~(-1 << v362);
  }

  v118 = v363 & v360;
  v364 = (v362 + 63) >> 6;
  v564 = *(v565 + 104);

  v365 = 0;
  while (v118)
  {
LABEL_354:
    v366 = __clz(__rbit64(v118)) | (v365 << 6);
    v367 = (*(v564 + 6) + 2 * v366);
    v368 = v367[1];
    v369 = *(*(v564 + 7) + 8 * v366);
    LOBYTE(v579[0]) = *v367;
    v370 = MediaRequest.ContentType.rawValue.getter();
    v575 = v370;
    *&v576 = v371;
    if (v368 == 26)
    {
      v372 = v370;
      v373 = v371;
    }

    else
    {
      LOBYTE(v579[0]) = v368;
      v374 = MediaRequest.IncludeExtendTypes.rawValue.getter();
      v376 = v375;
      v579[0] = 58;
      v579[1] = 0xE100000000000000;

      MEMORY[0x1DA7298F0](v374, v376);

      MEMORY[0x1DA7298F0](v579[0], v579[1]);

      v372 = v575;
      v373 = v576;
    }

    strcpy(v579, "associate[");
    BYTE3(v579[1]) = 0;
    HIDWORD(v579[1]) = -369098752;
    MEMORY[0x1DA7298F0](v372, v373);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v377 = v566;
    v378 = sub_1D9171AC0(v369);
    v566 = v377;

    v579[0] = v378;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v379 = v563;
    sub_1D91766BC();

    v150 = v571;
    v381 = sub_1D91766FC();
    if (*v380)
    {
      v150 = v380;
      (*v568)(v538, v379, v572);
      v382 = *v150;
      v383 = swift_isUniquelyReferenced_nonNull_native();
      *v150 = v382;
      if ((v383 & 1) == 0)
      {
        v382 = sub_1D8D8EDF4(0, v382[2] + 1, 1, v382);
        *v150 = v382;
      }

      v385 = v382[2];
      v384 = v382[3];
      v386 = v569;
      if (v385 >= v384 >> 1)
      {
        v387 = sub_1D8D8EDF4(v384 > 1, v385 + 1, 1, v382);
        v386 = v569;
        v382 = v387;
        *v150 = v387;
      }

      v382[2] = v385 + 1;
      v3 = v572;
      (*(v386 + 32))(v382 + ((*(v386 + 80) + 32) & ~*(v386 + 80)) + *(v386 + 72) * v385, v538, v572);
      v381(v579, 0);
    }

    else
    {
      v381(v579, 0);
      v3 = v572;
    }

    v118 &= v118 - 1;
    (*v570)(v563, v3);
  }

  while (1)
  {
    v155 = v365 + 1;
    if (__OFADD__(v365, 1))
    {
      goto LABEL_478;
    }

    if (v155 >= v364)
    {
      break;
    }

    v118 = *(v143 + 8 * v155);
    ++v365;
    if (v118)
    {
      v365 = v155;
      goto LABEL_354;
    }
  }

  v388 = v565;
  v389 = *(v565 + 112);
  if (*(v389 + 16))
  {
    v390 = v566;
    v391 = sub_1D9171BAC(v389);
    v566 = v390;
    v579[0] = v391;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D917817C();

    v393 = sub_1D91766FC();
    if (*v392)
    {
      v394 = v392;
      v395 = v529;
      sub_1D91766BC();

      sub_1D8D8EBA0();
      v396 = *(*v394 + 16);
      sub_1D8D8EE90(v396);
      sub_1D8D8F684(v396, v395);
    }

    else
    {
    }

    v393(v579, 0);
    v388 = v565;
  }

  v150 = *(v388 + 120);
  if (*(v150 + 16))
  {
    v143 = v150 + 64;
    v397 = 1 << *(v150 + 32);
    v398 = -1;
    if (v397 < 64)
    {
      v398 = ~(-1 << v397);
    }

    v399 = v398 & *(v150 + 64);
    v400 = (v397 + 63) >> 6;

    v118 = 0;
    v564 = v150;
    while (v399)
    {
LABEL_379:
      v401 = *(*(v150 + 48) + (__clz(__rbit64(v399)) | (v118 << 6)));
      if (*(v150 + 16) && (v402 = sub_1D8D94734(v401), (v403 & 1) != 0))
      {
        v404 = *(*(v150 + 56) + 8 * v402);
      }

      else
      {
        v404 = MEMORY[0x1E69E7CC0];
      }

      v399 &= v399 - 1;
      v405 = v566;
      v406 = sub_1D9171BAC(v404);
      v566 = v405;

      v579[0] = v406;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
      sub_1D917817C();

      v408 = sub_1D91766FC();
      if (*v407)
      {
        v409 = v407;
        v575 = 0x5B73646C656966;
        *&v576 = 0xE700000000000000;
        v574 = v401;
        v410 = MediaRequest.ContentType.rawValue.getter();
        MEMORY[0x1DA7298F0](v410);

        MEMORY[0x1DA7298F0](93, 0xE100000000000000);
        sub_1D91766BC();

        v411 = *v409;
        v412 = swift_isUniquelyReferenced_nonNull_native();
        *v409 = v411;
        if ((v412 & 1) == 0)
        {
          v411 = sub_1D8D8EDF4(0, v411[2] + 1, 1, v411);
          *v409 = v411;
        }

        v414 = v411[2];
        v413 = v411[3];
        v415 = v569;
        if (v414 >= v413 >> 1)
        {
          v416 = sub_1D8D8EDF4(v413 > 1, v414 + 1, 1, v411);
          v415 = v569;
          v411 = v416;
          *v409 = v416;
        }

        v411[2] = v414 + 1;
        v3 = v572;
        (*(v415 + 32))(v411 + ((*(v415 + 80) + 32) & ~*(v415 + 80)) + *(v415 + 72) * v414, v530, v572);
        v408(v579, 0);
      }

      else
      {

        v408(v579, 0);
        v3 = v572;
      }

      v150 = v564;
    }

    while (1)
    {
      v155 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        goto LABEL_481;
      }

      if (v155 >= v400)
      {

        v388 = v565;
        break;
      }

      v399 = *(v143 + 8 * v155);
      ++v118;
      if (v399)
      {
        v118 = v155;
        goto LABEL_379;
      }
    }
  }

  v579[0] = sub_1D8D8F968(*(v388 + 128));
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  v418 = sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
  v566 = v417;
  v564 = v418;
  sub_1D917817C();

  if (sub_1D91782EC() < 1)
  {
  }

  else
  {
    v419 = v520;
    sub_1D91766BC();

    v421 = sub_1D91766FC();
    if (*v420)
    {
      v422 = v420;
      v423 = v529;
      (*v568)(v529, v419, v3);
      sub_1D8D8EBA0();
      v424 = *(*v422 + 16);
      sub_1D8D8EE90(v424);
      sub_1D8D8F684(v424, v423);
    }

    v421(v579, 0);
    (*v570)(v419, v3);
  }

  v425 = sub_1D8D8FBAC(*(v565 + 136));

  v579[0] = v425;
  v150 = sub_1D917817C();

  if (sub_1D91782EC() < 1)
  {
  }

  else
  {
    v426 = v521;
    sub_1D91766BC();

    v150 = v571;
    v428 = sub_1D91766FC();
    if (*v427)
    {
      v150 = v427;
      v429 = v529;
      (*v568)(v529, v426, v3);
      sub_1D8D8EBA0();
      v430 = *(*v150 + 16);
      sub_1D8D8EE90(v430);
      sub_1D8D8F684(v430, v429);
    }

    v428(v579, 0);
    (*v570)(v426, v3);
  }

  v431 = v565;
  v432 = v525;
  if (*(v565 + v528[30]) == 1)
  {
    sub_1D91766BC();
    v150 = v571;
    v434 = sub_1D91766FC();
    if (*v433)
    {
      v150 = v433;
      v435 = v529;
      (*v568)(v529, v432, v3);
      sub_1D8D8EBA0();
      v436 = *(*v150 + 16);
      sub_1D8D8EE90(v436);
      v437 = v436;
      v432 = v525;
      sub_1D8D8F684(v437, v435);
    }

    v434(v579, 0);
    (*v570)(v432, v3);
    v431 = v565;
  }

  v438 = *(v431 + 176);
  v143 = (v438 + 64);
  v439 = 1 << v438[32];
  v440 = -1;
  if (v439 < 64)
  {
    v440 = ~(-1 << v439);
  }

  v441 = v440 & *(v438 + 8);
  v3 = (v439 + 63) >> 6;
  v561 = 0x80000001D91C81C0;
  v563 = v438;

  v118 = 0;
  while (v441)
  {
LABEL_414:
    v442 = __clz(__rbit64(v441)) | (v118 << 6);
    v443 = *(*(v563 + 6) + v442);
    v441 &= v441 - 1;
    v444 = *(*(v563 + 7) + 8 * v442);
    strcpy(v579, "filter[");
    v579[1] = 0xE700000000000000;
    v445 = 0x6449636E7973;
    if (v443 == 3)
    {
      v446 = 0xE600000000000000;
    }

    else
    {
      v445 = 0x4B79616C70736964;
      v446 = 0xEC00000073646E69;
    }

    if (v443 == 2)
    {
      v445 = 0x6C725564656566;
      v446 = 0xE700000000000000;
    }

    v447 = 0xD000000000000016;
    if (!v443)
    {
      v447 = 0x656C75646F6DLL;
    }

    v448 = v561;
    if (!v443)
    {
      v448 = 0xE600000000000000;
    }

    if (v443 <= 1)
    {
      v449 = v447;
    }

    else
    {
      v449 = v445;
    }

    if (v443 <= 1)
    {
      v450 = v448;
    }

    else
    {
      v450 = v446;
    }

    MEMORY[0x1DA7298F0](v449, v450);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v579[0] = v444;
    sub_1D917817C();

    v451 = v562;
    sub_1D91766BC();

    v453 = sub_1D91766FC();
    if (*v452)
    {
      v454 = v452;
      (*v568)(v537, v451, v572);
      v455 = *v454;
      v456 = swift_isUniquelyReferenced_nonNull_native();
      *v454 = v455;
      if ((v456 & 1) == 0)
      {
        v455 = sub_1D8D8EDF4(0, v455[2] + 1, 1, v455);
        *v454 = v455;
      }

      v458 = v455[2];
      v457 = v455[3];
      v459 = v569;
      if (v458 >= v457 >> 1)
      {
        v460 = sub_1D8D8EDF4(v457 > 1, v458 + 1, 1, v455);
        v459 = v569;
        v455 = v460;
        *v454 = v460;
      }

      v455[2] = v458 + 1;
      v150 = v572;
      (*(v459 + 32))(v455 + ((*(v459 + 80) + 32) & ~*(v459 + 80)) + *(v459 + 72) * v458, v537, v572);
      v453(v579, 0);
    }

    else
    {
      v453(v579, 0);
      v150 = v572;
    }

    (*v570)(v562, v150);
  }

  while (1)
  {
    v155 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_479;
    }

    if (v155 >= v3)
    {
      break;
    }

    v441 = *(v143 + 8 * v155);
    ++v118;
    if (v441)
    {
      v118 = v155;
      goto LABEL_414;
    }
  }

  v461 = *(v565 + 184);
  v463 = *(v461 + 64);
  v143 = v461 + 64;
  v462 = v463;
  v464 = 1 << *(*(v565 + 184) + 32);
  v465 = -1;
  if (v464 < 64)
  {
    v465 = ~(-1 << v464);
  }

  v466 = v465 & v462;
  v118 = (v464 + 63) >> 6;
  v563 = *(v565 + 184);

  v467 = 0;
  v468 = v572;
  while (v466)
  {
LABEL_445:
    v469 = __clz(__rbit64(v466)) | (v467 << 6);
    v470 = *(*(v563 + 6) + v469);
    v471 = *(*(v563 + 7) + 8 * v469);
    v579[0] = 0x5B6174656DLL;
    v579[1] = 0xE500000000000000;
    LOBYTE(v575) = v470;
    v472 = MediaRequest.ContentType.rawValue.getter();
    v474 = v473;

    MEMORY[0x1DA7298F0](v472, v474);

    MEMORY[0x1DA7298F0](93, 0xE100000000000000);
    v579[0] = v471;
    sub_1D917817C();
    v3 = v475;

    v476 = v559;
    sub_1D91766BC();

    v150 = v571;
    v478 = sub_1D91766FC();
    if (*v477)
    {
      v150 = v477;
      (*v568)(v536, v476, v572);
      v479 = *v150;
      v480 = swift_isUniquelyReferenced_nonNull_native();
      *v150 = v479;
      if ((v480 & 1) == 0)
      {
        v479 = sub_1D8D8EDF4(0, v479[2] + 1, 1, v479);
        *v150 = v479;
      }

      v3 = v479[2];
      v481 = v479[3];
      v482 = v569;
      if (v3 >= v481 >> 1)
      {
        v483 = sub_1D8D8EDF4(v481 > 1, v3 + 1, 1, v479);
        v482 = v569;
        v479 = v483;
        *v150 = v483;
      }

      v479[2] = v3 + 1;
      v468 = v572;
      (*(v482 + 32))(v479 + ((*(v482 + 80) + 32) & ~*(v482 + 80)) + *(v482 + 72) * v3, v536, v572);
      v478(v579, 0);
    }

    else
    {
      v478(v579, 0);
      v468 = v572;
    }

    v466 &= v466 - 1;
    (*v570)(v559, v468);
  }

  while (1)
  {
    v155 = v467 + 1;
    if (__OFADD__(v467, 1))
    {
      goto LABEL_480;
    }

    if (v155 >= v118)
    {
      break;
    }

    v466 = *(v143 + 8 * v155);
    ++v467;
    if (v466)
    {
      v467 = v155;
      goto LABEL_445;
    }
  }

  v485 = v565;
  v486 = (v565 + v528[33]);
  v487 = v523;
  if (v486[1])
  {
    v488 = *v486;
    sub_1D91766BC();
    v489 = v524;
    sub_1D91766BC();
    v491 = sub_1D91766FC();
    if (*v490)
    {
      v492 = v490;
      v493 = v529;
      (*v568)(v529, v489, v468);
      sub_1D8D8EBA0();
      v494 = *(*v492 + 16);
      sub_1D8D8EE90(v494);
      sub_1D8D8F684(v494, v493);
    }

    v491(v579, 0);
    v496 = sub_1D91766FC();
    v497 = v526;
    if (*v495)
    {
      v498 = v495;
      v499 = v529;
      (*v568)(v529, v526, v468);
      sub_1D8D8EBA0();
      v500 = *(*v498 + 16);
      sub_1D8D8EE90(v500);
      v501 = v500;
      v497 = v526;
      sub_1D8D8F684(v501, v499);
    }

    v496(v579, 0);
    v502 = *v570;
    (*v570)(v524, v468);
    result = (v502)(v497, v468);
    v485 = v565;
  }

  v503 = *(v485 + 40);
  if (v503 == 2)
  {
    v504 = *v485;
    v505 = *(v485 + 8);
    sub_1D91766BC();
    v507 = sub_1D91766FC();
    if (*v506)
    {
      v508 = v506;
      v509 = v529;
      (*v568)(v529, v487, v468);
      sub_1D8D8EBA0();
      v510 = *(*v508 + 16);
      sub_1D8D8EE90(v510);
      sub_1D8D8F684(v510, v509);
    }

    v507(v579, 0);
    result = (*v570)(v487, v468);
    v485 = v565;
    v503 = *(v565 + 40);
  }

  if (v503 == 3)
  {
    v511 = *(v485 + 16);

    v485 = v565;
    if (v511)
    {
      v512 = sub_1D91766FC();
      if (*v513)
      {
        sub_1D8E30BE0(v511);
      }

      else
      {
      }

      result = v512(v579, 0);
      v485 = v565;
    }
  }

  if ((*(v485 + 201) & 1) == 0)
  {
    v515 = sub_1D91766FC();
    if (*v514)
    {
      v516 = v514;
      v517 = v529;
      sub_1D91766BC();
      sub_1D8D8EBA0();
      v518 = *(*v516 + 16);
      sub_1D8D8EE90(v518);
      sub_1D8D8F684(v518, v517);
    }

    return v515(v579, 0);
  }

  return result;
}

uint64_t sub_1D8D8D204(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_1D917978C();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_1D9179DAC();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1D8D8D46C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v5 = 0xE800000000000000;
    v6 = 0xD000000000000010;
    if (a1 == 1)
    {
      v6 = 0x7374736163646F70;
    }

    else
    {
      v5 = 0x80000001D91C7F40;
    }

    if (a1)
    {
      v3 = v6;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0x80000001D91C7F20;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v3 = 0x69726F6765746163;
      v4 = 0xEA00000000007365;
    }

    else
    {
      v3 = 0x6970652D7478656ELL;
      v4 = 0xED00007365646F73;
    }
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001D91C7F60;
  }

  else
  {
    v3 = 0x697263736E617274;
    v4 = 0xEB00000000737470;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v8 = 0x7374736163646F70;
      }

      else
      {
        v8 = 0xD000000000000010;
      }

      if (a2 == 1)
      {
        v9 = 0xE800000000000000;
      }

      else
      {
        v9 = 0x80000001D91C7F40;
      }

      if (v3 != v8)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v7 = "podcast-episodes";
LABEL_35:
    v9 = (v7 - 32) | 0x8000000000000000;
    if (v3 != 0xD000000000000010)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      v9 = 0xEB00000000737470;
      if (v3 != 0x697263736E617274)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v7 = "podcast-channels";
    goto LABEL_35;
  }

  if (a2 == 5)
  {
    v9 = 0xEA00000000007365;
    if (v3 != 0x69726F6765746163)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v9 = 0xED00007365646F73;
    if (v3 != 0x6970652D7478656ELL)
    {
LABEL_42:
      v10 = sub_1D9179ACC();
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v4 != v9)
  {
    goto LABEL_42;
  }

  v10 = 1;
LABEL_43:

  return v10 & 1;
}

uint64_t sub_1D8D8D6CC(uint64_t a1)
{
  v2 = *(a1 + 41);
  if (v2 != 7 && (sub_1D8D8D46C(v2, 0) & 1) != 0)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v8 >= 4)
    {
      if (!(v5 | v4 | v3 | v6 | v7))
      {
        sub_1D8D85E5C(0, 0, 0, 0, v7, 4u);
        sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
        return 1;
      }

      sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
      if (v3 == 1 && !(v5 | v4 | v6 | v7))
      {
        v9 = 1;
        sub_1D8D85E5C(1, 0, 0, 0, v7, 4u);
        sub_1D8D85E5C(1, 0, 0, 0, 0, 4u);
        sub_1D8D85E5C(1, 0, 0, 0, v7, 4u);
        return v9;
      }
    }

    else
    {
      sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
      sub_1D8D85E5C(0, 0, 0, 0, 0, 4u);
    }

    sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
    sub_1D8D8DFD4(v3, v4, v5, v6, v7, v8);
    sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
    sub_1D8D85E5C(1, 0, 0, 0, 0, 4u);
    sub_1D8D85E5C(v3, v4, v5, v6, v7, v8);
  }

  return 0;
}

uint64_t Array<A>.cacheKey.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v2 = *(v9 + 16);
    v3 = 16 * v2;
    do
    {
      v4 = *(v9 + 24);
      v5 = v2 + 1;
      if (v2 >= v4 >> 1)
      {
        sub_1D8D41BE0((v4 > 1), v2 + 1, 1);
      }

      *(v9 + 16) = v5;
      v6 = v9 + v3;
      *(v6 + 32) = 0x64657272756C62;
      *(v6 + 40) = 0xE700000000000000;
      v3 += 16;
      v2 = v5;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&qword_1EDCD7708, &qword_1ECAB75E0, &qword_1D918DE30);
  v7 = sub_1D917817C();

  return v7;
}

uint64_t _s18PodcastsFoundation12MediaRequestC0D4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v58[0] = v3;
  v58[1] = v4;
  v58[2] = v6;
  v58[3] = v5;
  v58[4] = v7;
  v59 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v63 = v12;
  v64 = v13;
  v65 = v14;
  if (v8 <= 1)
  {
    if (!v8)
    {
      if (v14)
      {
        goto LABEL_45;
      }

      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 0);
      sub_1D8D8DFD4(v3, v4, v6, v5, v7, 0);
      goto LABEL_61;
    }

    if (v14 != 1)
    {
      goto LABEL_45;
    }

    v27 = 1;
    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 1u);
    v29 = v3;
    v30 = v4;
    v31 = v6;
    v32 = v5;
    v33 = v7;
    v34 = 1;
LABEL_56:
    sub_1D8D8DFD4(v29, v30, v31, v32, v33, v34);
    sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
    return v27 & 1;
  }

  if (v8 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_45;
    }

    if (!v4)
    {
      v38 = v9;
      v39 = v13;
      v40 = v12;
      v41 = v11;
      v42 = v10;

      sub_1D8D8DFD4(v38, v42, v41, v40, v39, 2u);
      sub_1D8D8DFD4(v3, 0, v6, v5, v7, 2u);
      sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
      if (!v42)
      {
        v27 = 1;
        return v27 & 1;
      }

      sub_1D8D85E5C(v38, v42, v41, v40, v39, 2u);
      goto LABEL_48;
    }

    if (!v10)
    {
      v47 = v9;
      v48 = v11;
      v49 = v12;
      v50 = v13;
      sub_1D8D8DFD4(v9, 0, v11, v12, v13, 2u);
      sub_1D8D8DFD4(v47, 0, v48, v49, v50, 2u);
      v35 = v3;
      v36 = v4;
      v37 = v6;
      v43 = v5;
      v44 = v7;
      v45 = 2;
      goto LABEL_46;
    }

    if (v3 == v9 && v4 == v10)
    {
      v27 = 1;
    }

    else
    {
      v51 = v9;
      v52 = v10;
      v53 = v11;
      v54 = v12;
      v55 = v13;
      v56 = sub_1D9179ACC();
      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v27 = v56;
      v9 = v51;
    }

    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 2u);
    v29 = v3;
    v30 = v4;
    v31 = v6;
    v32 = v5;
    v33 = v7;
    v34 = 2;
    goto LABEL_56;
  }

  if (v8 != 3)
  {
    if (!(v6 | v4 | v3 | v5 | v7))
    {
      if (v14 == 4 && !(v11 | v10 | v9 | v12 | v13))
      {
        goto LABEL_61;
      }

      goto LABEL_45;
    }

    v28 = v6 | v4 | v5 | v7;
    if (v3 != 1 || v28)
    {
      if (v3 != 2 || v28)
      {
        if (v3 == 3 && !v28 || v14 != 4 || v9 != 4)
        {
          goto LABEL_45;
        }
      }

      else if (v14 != 4 || v9 != 2)
      {
        goto LABEL_45;
      }
    }

    else if (v14 != 4 || v9 != 1)
    {
      goto LABEL_45;
    }

    if (v11 | v10 | v12 | v13)
    {
LABEL_45:
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, v14);
      v35 = v3;
      v36 = v4;
      v37 = v6;
      v43 = v5;
      v44 = v7;
      v45 = v8;
LABEL_46:
      sub_1D8D8DFD4(v35, v36, v37, v43, v44, v45);
LABEL_47:
      sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
LABEL_48:
      v27 = 0;
      return v27 & 1;
    }

LABEL_61:
    sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
    v27 = 1;
    return v27 & 1;
  }

  if (v14 != 3)
  {
    goto LABEL_45;
  }

  if (v3 != v9 || v4 != v10)
  {
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = sub_1D9179ACC();
    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v21 = v20;
    v9 = v15;
    if ((v21 & 1) == 0)
    {
LABEL_37:
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
      v35 = v3;
      v36 = v4;
      v37 = v6;
LABEL_52:
      v43 = v5;
      v44 = v7;
      v45 = 3;
      goto LABEL_46;
    }
  }

  if (v6)
  {
    if (v11)
    {
      v22 = v11;
      v23 = v12;
      v24 = v13;
      sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
      sub_1D8D8DFD4(v3, v4, v6, v5, v7, 3u);

      v26 = sub_1D8E84348(v25, v22);

      if (v26)
      {
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  if (v11)
  {
    sub_1D8D8DFD4(v9, v10, v11, v12, v13, 3u);
    v35 = v3;
    v36 = v4;
    v37 = 0;
    goto LABEL_52;
  }

  v23 = v12;
  v24 = v13;
  sub_1D8D8DFD4(v9, v10, 0, v12, v13, 3u);
  sub_1D8D8DFD4(v3, v4, 0, v5, v7, 3u);
LABEL_59:
  if (v5 == v23 && v7 == v24)
  {
    goto LABEL_61;
  }

  v57 = sub_1D9179ACC();
  sub_1D8D08A50(v58, &qword_1ECAB9B20, &qword_1D91AE4D0);
  return v57 & 1;
}

uint64_t sub_1D8D8DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 >= 2u)
  {
    if (a6 == 3)
    {
    }

    else
    {
      result = a2;
      if (a6 != 2)
      {
        return result;
      }
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
{
  updated = type metadata accessor for FeedUpdateRequest();
  v2 = (*(*(updated - 1) + 80) + 24) & ~*(*(updated - 1) + 80);
  v26 = *(*(updated - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + v2;
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2, 1, v5))
  {
    (*(v6 + 8))(v0 + v2, v5);
  }

  v7 = updated[5];
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v4 + v7, v8);
  v11 = updated[6];
  if (!(*(v9 + 48))(v4 + v11, 1, v8))
  {
    v10(v4 + v11, v8);
  }

  v12 = *(v4 + updated[8] + 8);

  v13 = (v4 + updated[14]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = (v4 + updated[15]);
  if (*v15)
  {
    v16 = v15[1];
  }

  v17 = (v4 + updated[16]);
  if (*v17)
  {
    v18 = v17[1];
  }

  v19 = (v4 + updated[17]);
  if (*v19)
  {
    v20 = v19[1];
  }

  v21 = *(v4 + updated[18]);

  v22 = *(v4 + updated[19]);

  v23 = *(v4 + updated[20]);

  v24 = *(v0 + ((v26 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = *(v0 + 16);

  sub_1D8CFEACC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  v2 = *(v0 + 80);

  if (*(v0 + 168) != 2)
  {
    sub_1D90AB0F8(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  }

  v3 = *(v0 + 232);
  if (v3 != 255)
  {
    sub_1D8CFEACC(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), v3);
  }

  v4 = *(v0 + 248);

  v5 = *(v0 + 264);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D8E508(_OWORD *a1)
{
  v2 = a1[10];
  v21[8] = a1[9];
  v22[0] = v2;
  *(v22 + 10) = *(a1 + 170);
  v3 = a1[6];
  v21[4] = a1[5];
  v21[5] = v3;
  v4 = a1[8];
  v21[6] = a1[7];
  v21[7] = v4;
  v5 = a1[2];
  v21[0] = a1[1];
  v21[1] = v5;
  v6 = a1[4];
  v21[2] = a1[3];
  v21[3] = v6;
  result = sub_1D8D8EB0C(v21);
  if (result == 8)
  {
    v8 = (a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v10 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
    v9 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion + 8);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 2) = v11;
    *(v12 + 3) = v10;
    *(v12 + 4) = v9;
    v13 = v8[1];
    *v8 = sub_1D8F6F6C4;
    v8[1] = v12;
    swift_retain_n();

    v14 = a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    if (v14[*(type metadata accessor for StoreFeedUpdater.Update(0) + 28)])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    LOBYTE(v17[0]) = v15;
    sub_1D8D76684(v17, v19);
    v16 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval + 8);
    *(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_fullJobInterval) = v19[0];

    sub_1D8D8EE50(v19);
    v17[8] = v19[8];
    v18[0] = v20[0];
    *(v18 + 10) = *(v20 + 10);
    v17[4] = v19[4];
    v17[5] = v19[5];
    v17[6] = v19[6];
    v17[7] = v19[7];
    v17[0] = v19[0];
    v17[1] = v19[1];
    v17[2] = v19[2];
    v17[3] = v19[3];
    sub_1D8D8EBEC(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8D8E6A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D8E6DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

char *sub_1D8D8E71C(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_1D8D41BE0(result, v5, 0);
  }

  return result;
}

uint64_t sub_1D8D8E79C()
{
  sub_1D8D8EB34();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t MediaRequest.IncludeExtendTypes.rawValue.getter()
{
  result = 0x6B726F77747261;
  switch(*v0)
  {
    case 1:
      result = 0x7263736275537369;
      break;
    case 2:
      result = 0x72617262694C6E69;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 6:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7365646F73697065;
      break;
    case 9:
      result = 0x74736163646F70;
      break;
    case 0xA:
      result = 0x7374736163646F70;
      break;
    case 0xB:
      result = 0x637365446C6C7566;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x6C725564656566;
      break;
    case 0xE:
      result = 0x6C656E6E616863;
      break;
    case 0xF:
      result = 0x6C6C65737075;
      break;
    case 0x10:
      result = 0xD000000000000013;
      break;
    case 0x11:
      result = 0xD000000000000010;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0x697263736E617274;
      break;
    case 0x14:
      result = 0x74657070696E73;
      break;
    case 0x15:
      result = 0x69726F6765746163;
      break;
    case 0x16:
      result = 0x746E65726170;
      break;
    case 0x17:
      result = 0x6E6572646C696863;
      break;
    case 0x18:
      result = 0x7372657470616863;
      break;
    case 0x19:
      result = 0x6D617266656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8D8EB0C(uint64_t a1)
{
  if (*(a1 + 169))
  {
    v1 = 8;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFF8 | (*(a1 + 168) >> 3) & 7;
  if (*(a1 + 169))
  {
    return (*a1 + 8);
  }

  else
  {
    return v2;
  }
}

void sub_1D8D8EB34()
{
  if (!qword_1ECAAFFC0)
  {
    sub_1D9176E3C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECAAFFC0);
    }
  }
}

size_t sub_1D8D8EBA0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1D8D8EDF4(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

uint64_t sub_1D8D8EBEC(__int128 *a1)
{
  v2 = v1;
  v3 = a1[9];
  v30 = a1[8];
  v31[0] = v3;
  *(v31 + 10) = *(a1 + 154);
  v4 = a1[5];
  v26 = a1[4];
  v27 = v4;
  v5 = a1[7];
  v28 = a1[6];
  v29 = v5;
  v6 = a1[1];
  v22 = *a1;
  v23 = v6;
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v8 = (v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  v9 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
  if (v9)
  {
    LOBYTE(v20[0]) = *v8;
    *(&v20[0] + 1) = v9;

    sub_1D8D7FAB4();
  }

  v10 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v21 = 24;
  sub_1D8D76684(&v21, v20);
  v11 = v8[1];
  *v8 = v20[0];

  v12 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_queue);
  v13 = swift_allocObject();
  v14 = v28;
  *(v13 + 136) = v29;
  v15 = v31[0];
  *(v13 + 152) = v30;
  *(v13 + 168) = v15;
  *(v13 + 178) = *(v31 + 10);
  v16 = v24;
  *(v13 + 72) = v25;
  v17 = v27;
  *(v13 + 88) = v26;
  *(v13 + 104) = v17;
  *(v13 + 120) = v14;
  v18 = v23;
  *(v13 + 24) = v22;
  *(v13 + 40) = v18;
  *(v13 + 16) = v2;
  *(v13 + 56) = v16;

  sub_1D8D8F64C(&v22, v20);
  OS_dispatch_queue.asyncWithTelemetry(for:_:)(v2 + v10, sub_1D8D8F920, v13);
}

uint64_t sub_1D8D8ED64()
{
  v1 = *(v0 + 16);

  sub_1D8D96FF0(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 193));

  return swift_deallocObject();
}

double sub_1D8D8EE50(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 256;
  return result;
}

size_t sub_1D8D8EE90(size_t result)
{
  v2 = *(*v1 + 24);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1D8D8EDF4(v2 > 1, result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t PendingDownloadRemovals.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1D917820C();
  v5 = v4;
  v6 = @"MTEpisodesPendingDeletionDefaultKey";
  v7 = sub_1D8D8F25C(v3, v5);

  if (v7)
  {

    v8 = *&v7[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion];
    os_unfair_lock_lock((v8 + 24));
    v9 = *(v8 + 16);

    os_unfair_lock_unlock((v8 + 24));
    v10 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v11 = swift_allocObject();
    *(v11 + 24) = 0;
    *(v11 + 16) = v9;
    *&v10[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v11;
    v33.receiver = v10;
    v33.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v33, sel_init);

LABEL_20:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v12;
  }

  v13 = [a1 objectForKey_];

  if (v13)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  v39[0] = v37;
  v39[1] = v38;
  if (!*(&v38 + 1))
  {
    sub_1D8D64450(v39);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v25 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v26 = swift_allocObject();
    *(v26 + 24) = 0;
    *(v26 + 16) = MEMORY[0x1E69E7CD0];
    *&v25[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v26;
    v36.receiver = v25;
    v36.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v36, sel_init);
LABEL_19:
    v12 = v27;
    goto LABEL_20;
  }

  v14 = v35;
  v15 = *(v35 + 16);
  if (!v15)
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v28 = sub_1D8FC0FD0(v18);

    v29 = objc_allocWithZone(ObjectType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
    v30 = swift_allocObject();
    *(v30 + 24) = 0;
    *(v30 + 16) = v28;
    *&v29[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v30;
    v34.receiver = v29;
    v34.super_class = ObjectType;
    v27 = objc_msgSendSuper2(&v34, sel_init);
    goto LABEL_19;
  }

  v31 = ObjectType;
  v32 = a1;
  *&v39[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D8E358F8(0, v15, 0);
  v17 = 0;
  v18 = *&v39[0];
  v19 = (v35 + 40);
  while (v17 < *(v14 + 16))
  {
    v20 = *(v19 - 1);
    v21 = *v19;
    *&v39[0] = v18;
    v22 = *(v18 + 16);
    v23 = *(v18 + 24);

    if (v22 >= v23 >> 1)
    {
      result = sub_1D8E358F8(v23 > 1, v22 + 1, 1);
      v18 = *&v39[0];
    }

    ++v17;
    *(v18 + 16) = v22 + 1;
    v24 = v18 + 24 * v22;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
    *(v24 + 48) = 2;
    v19 += 2;
    if (v15 == v17)
    {

      a1 = v32;
      ObjectType = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D8F25C(uint64_t a1, unint64_t a2)
{
  type metadata accessor for PendingDownloadRemovals();
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 dataForKey_];

  if (v6)
  {
    v7 = sub_1D9176C8C();
    v9 = v8;

    v10 = sub_1D91769AC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1D917699C();
    sub_1D8D8F8E0(&qword_1ECAB1B08);
    sub_1D917698C();

    sub_1D8D7567C(v7, v9);
    return v19;
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F88);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CEC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D8CFA924(a1, a2, &v19);
      _os_log_impl(&dword_1D8CEC000, v14, v15, "No user defaults value for key '%s'", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1D8D8F684(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = a1 + 1;
  v6 = sub_1D91766EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 32);
  v9 = v6;
  v10 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1;

  return v8(v10, a2, v9);
}

unint64_t MediaRequest.ContentType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7374736163646F70;
  v3 = 0x69726F6765746163;
  if (v1 != 5)
  {
    v3 = 0x6970652D7478656ELL;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x697263736E617274;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation19StoreFeedUpdaterJobC5State33_FBF799961955A5A2E70C121347D0D776LLO(uint64_t a1)
{
  if (*(a1 + 169))
  {
    return (*a1 + 8);
  }

  else
  {
    return (*(a1 + 168) >> 3) & 7;
  }
}

uint64_t sub_1D8D8F860(uint64_t a1, __int128 *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval);
  if (*(a1 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8))
  {
    v6 = *v3;

    sub_1D8D7FAB4();

    v4 = v3[1];
  }

  *v3 = 0;
  v3[1] = 0;

  return sub_1D8D8FE60(a2);
}

uint64_t sub_1D8D8F8E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PendingDownloadRemovals();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D8F92C()
{
  sub_1D9179DBC();
  ArtworkRequest.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8D8F968(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v4 = (a1 + 32);
    result = v20;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = 0xEC00000073747361;
      v8 = v6 == 5;
      if (v6 == 5)
      {
        v9 = 0x69726F6765746163;
      }

      else
      {
        v9 = 0x7372657470616863;
      }

      if (v8)
      {
        v10 = 0xEA00000000007365;
      }

      else
      {
        v10 = 0xE800000000000000;
      }

      if (v5 == 3)
      {
        v11 = 0x697263736E617274;
      }

      else
      {
        v11 = 0x6E79536E61656C63;
      }

      if (v5 == 3)
      {
        v12 = 0xEB00000000737470;
      }

      else
      {
        v12 = 0xE900000000000063;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0xE900000000000073;
      if (v5 == 1)
      {
        v14 = 0x6D656C7469746E65;
      }

      else
      {
        v14 = 0x726566664F707061;
      }

      if (v5 == 1)
      {
        v13 = 0xEC00000073746E65;
      }

      if (v5)
      {
        v7 = v13;
      }

      else
      {
        v14 = 0x63646F507377656ELL;
      }

      if (v5 <= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      if (v5 <= 2)
      {
        v16 = v7;
      }

      else
      {
        v16 = v10;
      }

      v21 = result;
      v18 = *(result + 16);
      v17 = *(result + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D8D41BE0((v17 > 1), v18 + 1, 1);
        result = v21;
      }

      *(result + 16) = v18 + 1;
      v19 = result + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D8D8FBAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v4 = (a1 + 32);
    result = v17;
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 <= 3)
      {
        v7 = 0xD000000000000016;
        if (v5 == 2)
        {
          v8 = 0x80000001D91C87D0;
        }

        else
        {
          v7 = 0x6143656E696C6E69;
          v8 = 0xEE0079726F676574;
        }

        if (v5)
        {
          v9 = 0xD000000000000014;
        }

        else
        {
          v9 = 0x6C656E6E616863;
        }

        if (v5)
        {
          v10 = 0x80000001D91C87B0;
        }

        else
        {
          v10 = 0xE700000000000000;
        }

        v11 = v5 <= 1;
      }

      else
      {
        if (v5 == 7)
        {
          v7 = 0x4865646F73697065;
        }

        else
        {
          v7 = 0x6F726548776F6873;
        }

        if (v5 == 7)
        {
          v8 = 0xEB000000006F7265;
        }

        else
        {
          v8 = 0xE800000000000000;
        }

        if (v5 == 6)
        {
          v7 = 2003789939;
          v8 = 0xE400000000000000;
        }

        if (v5 == 4)
        {
          v9 = 0x6F77537265776F70;
        }

        else
        {
          v9 = 0x6867696C68676968;
        }

        if (v5 == 4)
        {
          v10 = 0xEB0000000068736FLL;
        }

        else
        {
          v10 = 0xEF6D657449646574;
        }

        v11 = v5 <= 5;
      }

      if (v11)
      {
        v12 = v9;
      }

      else
      {
        v12 = v7;
      }

      if (v11)
      {
        v13 = v10;
      }

      else
      {
        v13 = v8;
      }

      v18 = result;
      v15 = *(result + 16);
      v14 = *(result + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D8D41BE0((v14 > 1), v15 + 1, 1);
        result = v18;
      }

      *(result + 16) = v15 + 1;
      v16 = result + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D8D8FE60(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StoreFeedUpdater.Update(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[7];
  v9 = a1[9];
  v142 = a1[8];
  v143[0] = v9;
  *(v143 + 10) = *(a1 + 154);
  v10 = a1[3];
  v12 = a1[5];
  v138 = a1[4];
  v11 = v138;
  v139 = v12;
  v13 = a1[5];
  v15 = a1[7];
  v140 = a1[6];
  v14 = v140;
  v141 = v15;
  v16 = a1[1];
  v134 = *a1;
  v135 = v16;
  v17 = a1[3];
  v19 = *a1;
  v18 = a1[1];
  v136 = a1[2];
  v20 = v136;
  v137 = v17;
  v21 = v2[8];
  v22 = v2[10];
  v152 = v2[9];
  v153[0] = v22;
  *(v153 + 10) = *(v2 + 170);
  v23 = v2[4];
  v24 = v2[6];
  v148 = v2[5];
  v149 = v24;
  v26 = v2[6];
  v25 = v2[7];
  v27 = v25;
  v151 = v2[8];
  v150 = v25;
  v28 = v2[2];
  v144 = v2[1];
  v145 = v28;
  v29 = v2[4];
  v31 = v2[1];
  v30 = v2[2];
  v146 = v2[3];
  v147 = v29;
  v32 = v2[10];
  v154[8] = v152;
  v155[0] = v32;
  *(v155 + 10) = *(v2 + 170);
  v154[4] = v148;
  v154[5] = v26;
  v154[7] = v21;
  v154[6] = v27;
  v154[0] = v31;
  v154[1] = v30;
  v154[3] = v23;
  v154[2] = v146;
  v33 = a1[9];
  v2[9] = v142;
  v2[10] = v33;
  *(v2 + 170) = *(a1 + 154);
  v2[5] = v11;
  v2[6] = v13;
  v2[7] = v14;
  v2[8] = v8;
  v2[1] = v19;
  v2[2] = v18;
  v2[3] = v20;
  v2[4] = v10;
  sub_1D8D8F64C(&v144, &v124);
  sub_1D8D8F64C(&v134, &v124);
  sub_1D8D90C48(v154);
  if (qword_1EDCD1048 != -1)
  {
    swift_once();
  }

  v34 = sub_1D917744C();
  __swift_project_value_buffer(v34, qword_1EDCD1050);
  sub_1D8D8F64C(&v134, &v124);

  v35 = sub_1D917741C();
  v36 = sub_1D9178D1C();

  sub_1D8D90C48(&v134);
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v104 = v38;
    *v37 = 141558531;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    sub_1D8D800E0(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update, v7, type metadata accessor for StoreFeedUpdater.Update);
    v39 = &v7[*(v4 + 32)];
    v40 = *v39;
    v41 = v39[1];

    sub_1D8D90C88(v7, type metadata accessor for StoreFeedUpdater.Update);
    v42 = sub_1D8CFA924(v40, v41, &v104);

    *(v37 + 14) = v42;
    *(v37 + 22) = 2082;
    v122 = v142;
    v123[0] = v143[0];
    *(v123 + 10) = *(v143 + 10);
    v118 = v138;
    v119 = v139;
    v120 = v140;
    v121 = v141;
    v114 = v134;
    v115 = v135;
    v116 = v136;
    v117 = v137;
    sub_1D8D8F64C(&v134, &v124);
    v43 = sub_1D8D90DB0();
    v45 = v44;
    v132 = v122;
    v133[0] = v123[0];
    *(v133 + 10) = *(v123 + 10);
    v128 = v118;
    v129 = v119;
    v130 = v120;
    v131 = v121;
    v124 = v114;
    v125 = v115;
    v126 = v116;
    v127 = v117;
    sub_1D8D90C48(&v124);
    v46 = sub_1D8CFA924(v43, v45, &v104);

    *(v37 + 24) = v46;
    _os_log_impl(&dword_1D8CEC000, v35, v36, "Job %{private,mask.hash}s: %{public}s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v38, -1, -1);
    MEMORY[0x1DA72CB90](v37, -1, -1);
  }

  v132 = v142;
  v133[0] = v143[0];
  *(v133 + 10) = *(v143 + 10);
  v128 = v138;
  v129 = v139;
  v130 = v140;
  v131 = v141;
  v124 = v134;
  v125 = v135;
  v126 = v136;
  v127 = v137;
  result = sub_1D8D8EB0C(&v124);
  if (result <= 4)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        v70 = sub_1D8D90978(&v124);
        v71 = *v70;
        LOBYTE(v104) = 16;
        sub_1D8D76684(&v104, &v114);
        v72 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

        v121 = *(v70 + 120);
        v122 = *(v70 + 136);
        v123[0] = *(v70 + 152);
        LOBYTE(v123[1]) = *(v70 + 168);
        v117 = *(v70 + 56);
        v118 = *(v70 + 72);
        v119 = *(v70 + 88);
        v120 = *(v70 + 104);
        v114 = *(v70 + 8);
        v115 = *(v70 + 24);
        v116 = *(v70 + 40);
        sub_1D8F67994(v71, &v114);
      }

      else
      {
        if (result == 3)
        {
          v48 = sub_1D8D90978(&v124);
          v49 = *(v48 + 32);
          v50 = *(v48 + 40);
          LOBYTE(v104) = 17;
          v51 = *v48;
          v89 = *(v48 + 16);
          v90 = v51;
          sub_1D8D76684(&v104, &v114);
          v52 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
          *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

          v114 = v90;
          v115 = v89;
          *&v116 = v49;
          BYTE8(v116) = v50;
          v53 = swift_allocObject();
          swift_weakInit();

          sub_1D8F68B4C(&v114, sub_1D8F6F0DC, v53);
          sub_1D8D90C48(&v144);
        }

        v78 = sub_1D8D90978(&v124);
        LOBYTE(v104) = 19;
        sub_1D8D76684(&v104, &v114);
        v79 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

        v121 = *(v78 + 112);
        v122 = *(v78 + 128);
        v123[0] = *(v78 + 144);
        LOBYTE(v123[1]) = *(v78 + 160);
        v117 = *(v78 + 48);
        v118 = *(v78 + 64);
        v119 = *(v78 + 80);
        v120 = *(v78 + 96);
        v114 = *v78;
        v115 = *(v78 + 16);
        v116 = *(v78 + 32);
        sub_1D8F69C58(&v114, 0, 0);
      }

      return sub_1D8D90C48(&v144);
    }

    if (!result)
    {
      v66 = *sub_1D8D90978(&v124);
      LOBYTE(v104) = 14;
      sub_1D8D76684(&v104, &v114);
      v67 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

      sub_1D8F67818(v66);
      return sub_1D8D90C48(&v144);
    }

    v80 = sub_1D8D90978(&v124);
    v81 = *(v80 + 32);
    v82 = *(v80 + 40);
    v83 = *(v80 + 48);
    LOBYTE(v104) = 15;
    v84 = *v80;
    v89 = *(v80 + 16);
    v90 = v84;
    sub_1D8D76684(&v104, &v114);
    v85 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

    v114 = v90;
    v115 = v89;
    *&v116 = v81;
    BYTE8(v116) = v82;
    v86 = swift_allocObject();
    swift_weakInit();
    v87 = swift_allocObject();
    *(v87 + 16) = v86;
    *(v87 + 24) = v83;

    v88 = v83;
    sub_1D8F68B4C(&v114, sub_1D8F6F0E4, v87);
    sub_1D8D90C48(&v144);
  }

  if (result <= 6)
  {
    if (result != 5)
    {
      v68 = *sub_1D8D90978(&v124);
      LOBYTE(v104) = 21;
      sub_1D8D76684(&v104, &v114);
      v69 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

      v122 = v152;
      v123[0] = v153[0];
      *(v123 + 10) = *(v153 + 10);
      v118 = v148;
      v119 = v149;
      v120 = v150;
      v121 = v151;
      v114 = v144;
      v115 = v145;
      v116 = v146;
      v117 = v147;
      sub_1D8F67B90(&v114, v68);
      return sub_1D8D90C48(&v144);
    }

    v55 = sub_1D8D90978(&v124);
    v56 = *v55;
    v57 = v55[1];
    v58 = v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
    LOBYTE(v104) = 20;
    sub_1D8D76684(&v104, &v114);
    v59 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
    *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

    v60 = &v58[*(type metadata accessor for FeedUpdateRequest() + 64)];
    v61 = *v60;
    if (*v60)
    {
      v62 = *(v60 + 1);
      v63 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_ctx);

      v61(v56, v57, v63);
      sub_1D8D15664(v61);
    }

    v64 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 16);
    v101[0] = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData);
    v101[1] = v64;
    v65 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 48);
    v102 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_metricsData + 32);
    v103 = v65;
    v104 = v101[0];
    v105 = v64;
    v106 = v102;
    v107 = v65;
    LOBYTE(v108) = 0;
    sub_1D8F6F0C8(&v104);
    v99 = v112;
    v100[0] = v113[0];
    *(v100 + 10) = *(v113 + 10);
    v95 = v108;
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v91 = v104;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    sub_1D8F674F8(v101, &v114);
    sub_1D8D8EBEC(&v91);
    sub_1D8D90C48(&v144);
    v122 = v99;
    v123[0] = v100[0];
    *(v123 + 10) = *(v100 + 10);
    v118 = v95;
    v119 = v96;
    v120 = v97;
    v121 = v98;
    v114 = v91;
    v115 = v92;
    v116 = v93;
    v117 = v94;
    return sub_1D8D90C48(&v114);
  }

  else
  {
    if (result == 7)
    {
      v73 = sub_1D8D90978(&v124);
      v115 = *(v73 + 16);
      v116 = *(v73 + 32);
      v117 = *(v73 + 48);
      LOBYTE(v118) = *(v73 + 64);
      v114 = *v73;
      v74 = OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
      LOBYTE(v91) = 22;
      sub_1D8D76684(&v91, &v104);
      v75 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v104;

      v77 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion);
      v76 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_completion + 8);

      v77(v2 + v74, &v114);
      sub_1D8D90C48(&v144);
    }

    if (result == 9)
    {
      LOBYTE(v104) = 13;
      sub_1D8D76684(&v104, &v114);
      v54 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval + 8);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_subinterval) = v114;

      sub_1D8D910A4();
      return sub_1D8D90C48(&v144);
    }

    __break(1u);
  }

  return result;
}

void *sub_1D8D9098C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = PendingDownloadRemovals.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void *PendingDownloadRemovals.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FB8, &qword_1D918DE50);
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - v8;
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D91FCC();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FA8, &qword_1D918DE40);
    sub_1D8D9395C(&qword_1ECAB0ED8);
    v13 = v16;
    sub_1D91798FC();
    *&v3[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v18;
    v17.receiver = v3;
    v17.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    (*(v12 + 8))(v9, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v11;
}

uint64_t sub_1D8D90BEC(uint64_t a1)
{
  v2 = type metadata accessor for MediaRequest.Params();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8D90C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8D90CE8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MediaRequest.Params() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = *(v2 + v7);
  v12 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8D915F4(a1, a2, v8, v9, v10, v2 + v6, v11, v12);
}

uint64_t sub_1D8D90DB0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v30[7] = v0[7];
  v30[8] = v1;
  v31[0] = v2;
  *(v31 + 10) = *(v0 + 154);
  v4 = v0[5];
  v30[4] = v0[4];
  v30[5] = v4;
  v30[6] = v3;
  v5 = v0[1];
  v30[0] = *v0;
  v30[1] = v5;
  v6 = v0[3];
  v30[2] = v0[2];
  v30[3] = v6;
  v7 = sub_1D8D8EB0C(v30);
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        sub_1D8D90978(v30);
        return 0xD000000000000014;
      }

      else
      {
        sub_1D8D90978(v30);
        return 0x64656C696146;
      }
    }

    else if (v7 == 7)
    {
      v9 = sub_1D8D90978(v30);
      v26 = 0x64656873696E6946;
      v27 = 0xEA0000000000203ALL;
      v21 = *v9;
      v10 = *(v9 + 16);
      v11 = *(v9 + 32);
      v12 = *(v9 + 48);
      v25 = *(v9 + 64);
      v23 = v11;
      v24 = v12;
      v22 = v10;
      v13 = v0[9];
      v28[8] = v0[8];
      v29[0] = v13;
      *(v29 + 10) = *(v0 + 154);
      v14 = v0[5];
      v28[4] = v0[4];
      v28[5] = v14;
      v15 = v0[7];
      v28[6] = v0[6];
      v28[7] = v15;
      v16 = v0[1];
      v28[0] = *v0;
      v28[1] = v16;
      v17 = v0[3];
      v28[2] = v0[2];
      v28[3] = v17;
      v18 = sub_1D8D90978(v28);
      sub_1D8F6F06C(v18, v20);
      v19 = sub_1D917826C();
      MEMORY[0x1DA7298F0](v19);

      return v26;
    }

    else if (v7 == 8)
    {
      return 0x206C616974696E49;
    }

    else
    {
      return 0xD000000000000018;
    }
  }

  else if (v7 <= 1)
  {
    if (v7)
    {
      sub_1D8D90978(v30);
      return 0xD00000000000001BLL;
    }

    else
    {
      sub_1D8D90978(v30);
      return 0xD000000000000026;
    }
  }

  else if (v7 == 2)
  {
    sub_1D8D90978(v30);
    return 0xD00000000000002DLL;
  }

  else if (v7 == 3)
  {
    sub_1D8D90978(v30);
    return 0xD000000000000013;
  }

  else
  {
    sub_1D8D90978(v30);
    return 0xD000000000000013;
  }
}

unint64_t sub_1D8D91050()
{
  result = qword_1ECAB1B10;
  if (!qword_1ECAB1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B10);
  }

  return result;
}

uint64_t sub_1D8D910A4()
{
  updated = type metadata accessor for FeedUpdateRequest();
  v2 = *(*(updated - 1) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v48 - v6;
  v8 = type metadata accessor for MediaRequest.Params();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D8D946F4(&unk_1F545E128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9A50, &unk_1D9197130);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9189080;
  v13 = v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update;
  v14 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_update + updated[7]);
  v64 = v0;
  v65 = v14;
  *(v12 + 32) = sub_1D9179A4C();
  *(v12 + 40) = v15;
  v16 = sub_1D9176C2C();
  v17 = *(*(v16 - 8) + 56);
  v62 = v7;
  v17(v7, 1, 1, v16);
  v18 = *(v13 + updated[9]);
  v60 = v13;
  if (v18)
  {
    v59 = 0;
  }

  else
  {
    v59 = *(v13 + updated[11]);
  }

  v19 = MEMORY[0x1E69E7CC0];
  v58 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
  v57 = sub_1D8D94DF8(v19);
  v56 = sub_1D8D951E0(v19);
  v55 = sub_1D8D9503C(v19);
  v54 = sub_1D8D9536C(v19);
  v53 = sub_1D8D953C4(v19);
  v51 = sub_1D8D952D8(v19);
  v52 = sub_1D8D95394(v19);
  v49 = sub_1D8D957C4(v19);
  *(v11 + 41) = 263;
  v11[43] = 5;
  v11[152] = 1;
  v11[201] = 1;
  v20 = v8[28];
  v17(&v11[v20], 1, 1, v16);
  v21 = &v11[v8[29]];
  v22 = &v11[v8[31]];
  v23 = v8[33];
  v50 = v8[34];
  v24 = &v11[v23];
  v25 = &v11[v8[35]];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *(v11 + 10) = 83951876;
  v26 = v57;
  *(v11 + 6) = v58;
  *(v11 + 7) = v26;
  *(v11 + 8) = v56;
  *(v11 + 9) = &unk_1F545E0B0;
  v27 = v54;
  *(v11 + 10) = v55;
  *(v11 + 11) = v27;
  v28 = v53;
  *(v11 + 12) = v61;
  *(v11 + 13) = v28;
  v29 = v51;
  v30 = v52;
  *(v11 + 14) = v19;
  *(v11 + 15) = v29;
  *(v11 + 16) = v19;
  *(v11 + 17) = v19;
  *(v11 + 18) = v12;
  v11[152] = 1;
  *(v11 + 20) = 0;
  v11[168] = 1;
  v31 = v49;
  *(v11 + 22) = v30;
  *(v11 + 23) = v31;
  *(v11 + 24) = 0;
  *(v11 + 100) = 257;
  v11[202] = 0;
  sub_1D8E26828(v62, &v11[v20]);
  *v21 = 0;
  *(v21 + 1) = 0;
  v11[v8[30]] = v59;
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v11[v8[32]] = v19;
  *v24 = 0;
  *(v24 + 1) = 0;
  v11[v50] = 2;
  *v25 = 0;
  *(v25 + 1) = 0;
  v32 = v63;
  sub_1D8D800E0(v60, v63, type metadata accessor for FeedUpdateRequest);
  v33 = _s21MediaRequestTelemetryCMa();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState);
  *v39 = 0;
  v39[1] = 0;
  v40 = (v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_networkState);
  *v40 = 0;
  v40[1] = 0;
  v41 = (v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_parsingState);
  *v41 = 0;
  v41[1] = 0;
  sub_1D8D79960(v32, v36 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_request);
  *(v36 + 16) = 0;
  v42 = *(v64 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 24);
  v43 = *(v64 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController + 32);
  __swift_project_boxed_opaque_existential_1((v64 + OBJC_IVAR____TtC18PodcastsFoundation19StoreFeedUpdaterJob_mediaRequestController), v42);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76E8, &unk_1D9198848);
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = sub_1D8D95AE8();

  MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(v11, 0, v36, v44, sub_1D8F6F0EC, v45, v42, v44, v43, v46);

  return sub_1D8D90C88(v11, type metadata accessor for MediaRequest.Params);
}

void sub_1D8D915F4(void *a1, uint64_t a2, void *a3, void (*a4)(void, unint64_t, void, char *, uint64_t), uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v73 = a8;
  v79 = a4;
  v80 = a7;
  v78 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v66 - v14;
  v74 = sub_1D9176EAC();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D917653C();
  v71 = *(v18 - 8);
  v72 = v18;
  v19 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9176C2C();
  v76 = *(v22 - 8);
  v77 = v22;
  v23 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v75 = &v66 - v30;
  if (a3)
  {
    if (a2)
    {
      v31 = sub_1D9176A5C();
    }

    else
    {
      v31 = 0;
    }

    [a3 endBuildingRequestWithError_];
  }

  if (a1)
  {
    v32 = a1;
    v33 = [v32 URL];
    if (v33)
    {
      v68 = v32;
      v34 = v33;
      sub_1D9176B9C();

      v36 = v75;
      v35 = v76;
      v37 = v77;
      (*(v76 + 32))(v75, v28, v77);
      (*(v35 + 16))(v25, v36, v37);
      sub_1D91764EC();
      v38 = *a6;
      v40 = *(a6 + 24);
      v39 = *(a6 + 32);
      v41 = *(a6 + 40);
      if (v41 <= 1)
      {
        *(a6 + 40);
      }

      else if (v41 != 2)
      {
        if (v41 == 3)
        {
          v42 = *(a6 + 32);
        }

        else
        {
          v45 = *(a6 + 8);
          v44 = *(a6 + 16);
        }
      }

      sub_1D917648C();
      v46 = *(a6 + 8);
      v47 = *(a6 + 16);
      aBlock = v38;
      v82 = v46;
      v83 = v47;
      v84 = v40;
      v85 = v39;
      LOBYTE(v86) = v41;
      sub_1D8D8DFD4(v38, v46, v47, v40, v39, v41);
      sub_1D8D92B9C(&aBlock);
      sub_1D8D85E5C(aBlock, v82, v83, v84, v85, v86);
      sub_1D917651C();
      v48 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy;
      v49 = v80;
      swift_beginAccess();
      v50 = *&v49[v48];
      sub_1D917649C();
      if (v41 == 1)
      {
        sub_1D917652C();
      }

      v67 = swift_allocBox();
      v52 = v51;
      v53 = *(v15 + 56);
      v54 = v74;
      v53(v51, 1, 1, v74);
      if (a3)
      {
        swift_unknownObjectRetain();
        v55 = v69;
        v56 = sub_1D9176E9C();
        v66 = &v66;
        v57 = *&v80[OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry];
        MEMORY[0x1EEE9AC00](v56);
        *(&v66 - 2) = v55;
        *(&v66 - 1) = a3;
        swift_unknownObjectRetain();

        os_unfair_lock_lock(v57 + 6);
        sub_1D8D92F64(&v57[4]);
        os_unfair_lock_unlock(v57 + 6);
        swift_unknownObjectRelease_n();
        v54 = v74;

        sub_1D8D798AC(v52);
        (*(v15 + 32))(v52, v55, v54);
        v53(v52, 0, 1, v54);
      }

      v58 = sub_1D91764BC();
      v59 = v70;
      sub_1D8D76CE0(v52, v70);
      if ((*(v15 + 48))(v59, 1, v54) == 1)
      {
        v60 = 0;
      }

      else
      {
        v60 = sub_1D9176E6C();
        (*(v15 + 8))(v59, v54);
      }

      v61 = swift_allocObject();
      v62 = v80;
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v64 = v78;
      v63[2] = v79;
      v63[3] = v64;
      v63[4] = v67;
      v63[5] = v61;
      v85 = sub_1D904FF94;
      v86 = v63;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v83 = sub_1D90F1C50;
      v84 = &block_descriptor_135_1;
      v65 = _Block_copy(&aBlock);

      [v62 performDataRequest:v58 account:v73 telemetryIdentifier:v60 callback:v65];

      _Block_release(v65);
      (*(v71 + 8))(v21, v72);
      (*(v76 + 8))(v75, v77);

      return;
    }
  }

  v80 = [objc_allocWithZone(MEMORY[0x1E696AC68]) init];
  v79(0, 0xF000000000000000, 0, v80, a2);
  v43 = v80;
}

uint64_t sub_1D8D91E1C()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D91E54()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

void sub_1D8D91EB8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D8D91F08()
{
  result = qword_1ECAB1B18;
  if (!qword_1ECAB1B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B18);
  }

  return result;
}

void sub_1D8D91F5C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *))
{

  v6 = a3;
  a4(a3);
}

unint64_t sub_1D8D91FCC()
{
  result = qword_1ECAB1B20;
  if (!qword_1ECAB1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1B20);
  }

  return result;
}

void sub_1D8D92020()
{
  sub_1D8D91EB8(319, &qword_1ECAB2A08, &type metadata for MediaRequest.ContentType, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D8D91EB8(319, &qword_1ECAB29C8, &type metadata for MediaRequest.ViewType, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D8D91EB8(319, &qword_1ECAB29E8, &type metadata for MediaRequest.Relationship, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D8D925E0(319, &qword_1ECAB0160, sub_1D8D926D8);
        if (v3 <= 0x3F)
        {
          sub_1D8D92F00();
          if (v4 <= 0x3F)
          {
            sub_1D8D91EB8(319, &qword_1ECAAFFA0, &type metadata for MediaRequest.IncludeExtendTypes, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              sub_1D8D93268();
              if (v6 <= 0x3F)
              {
                sub_1D8D925E0(319, &qword_1ECAB0178, sub_1D8D93908);
                if (v7 <= 0x3F)
                {
                  sub_1D8D925E0(319, &qword_1ECAB0180, sub_1D8D93C2C);
                  if (v8 <= 0x3F)
                  {
                    sub_1D8D91EB8(319, &qword_1ECAAFF98, &type metadata for MediaRequest.Field, MEMORY[0x1E69E62F8]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D907C5E8();
                      if (v10 <= 0x3F)
                      {
                        sub_1D8D91EB8(319, &qword_1ECAAFF90, &type metadata for MediaRequest.WithTypes, MEMORY[0x1E69E62F8]);
                        if (v11 <= 0x3F)
                        {
                          sub_1D8D91EB8(319, &qword_1ECAAFF10, &type metadata for RecommendationsDisplayKind, MEMORY[0x1E69E62F8]);
                          if (v12 <= 0x3F)
                          {
                            sub_1D8D91EB8(319, &qword_1EDCD5C10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
                            if (v13 <= 0x3F)
                            {
                              sub_1D8D91EB8(319, &qword_1ECAB2A00, &type metadata for MediaRequest.URLFragment, MEMORY[0x1E69E6720]);
                              if (v14 <= 0x3F)
                              {
                                sub_1D8D91EB8(319, &qword_1ECAAFE40, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                                if (v15 <= 0x3F)
                                {
                                  sub_1D907C660();
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1D907C6D8();
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1D8D91EB8(319, &qword_1ECAB29D0, &type metadata for MediaRequest.PageName, MEMORY[0x1E69E6720]);
                                      if (v18 <= 0x3F)
                                      {
                                        sub_1D8CF307C();
                                        if (v19 <= 0x3F)
                                        {
                                          sub_1D8D91EB8(319, &qword_1EDCD7710, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                                          if (v20 <= 0x3F)
                                          {
                                            sub_1D8D91EB8(319, &unk_1ECAAFFA8, &type metadata for MediaRequest.ContentType, MEMORY[0x1E69E62F8]);
                                            if (v21 <= 0x3F)
                                            {
                                              sub_1D8D91EB8(319, &unk_1ECAAFEA8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
                                              if (v22 <= 0x3F)
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
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1D8D92554(uint64_t a1, void *a2)
{
  v3 = (v2 + *a2);
  if (v3[1])
  {
    v7 = *v3;
    v8 = v3[1];
    v4 = a1 == 0;

    sub_1D8D92750(v4);

    v5 = v3[1];
  }

  *v3 = 0;
  v3[1] = 0;
}

void sub_1D8D925E0(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB9B08, &unk_1D91AE1F8);
    a3();
    v5 = sub_1D91780DC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D8D92684()
{
  result = qword_1EDCD5ED8;
  if (!qword_1EDCD5ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5ED8);
  }

  return result;
}

unint64_t sub_1D8D926D8()
{
  result = qword_1ECAB29F8;
  if (!qword_1ECAB29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29F8);
  }

  return result;
}

uint64_t sub_1D8D92750(uint64_t a1)
{
  v32 = a1;
  v2 = sub_1D91773AC();
  v31 = *(v2 - 8);
  v3 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D917734C();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D917739C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29[-v16];
  LODWORD(v18) = *v1;
  v19 = *(v1 + 1);
  if ((v18 - 24) >= 4 && v18 != 8)
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
    v21 = __swift_project_value_buffer(v10, i);
    (*(v11 + 16))(v14, v21, v10);
    (*(v11 + 32))(v17, v14, v10);
    v35 = v18;
    v14 = sub_1D8D76D50();
    sub_1D8D32440();
    sub_1D8D3852C();
    sub_1D8D15664(v22);
    v18 = sub_1D917737C();
    sub_1D91773DC();
    v30 = sub_1D9178F4C();
    if ((sub_1D917918C() & 1) == 0)
    {
      break;
    }

    if (v14)
    {

      sub_1D917740C();

      v23 = v31;
      if ((*(v31 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v24 = 0;
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v23 + 8))(v5, v2);
        v25 = "[result=%{name=success,public}ld]";
        v24 = 1;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      *(v26 + 1) = v24;
      *(v26 + 2) = 2050;
      *(v26 + 4) = v32 & 1;
      v27 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v18, v30, v27, v14, v25, v26, 0xCu);
      MEMORY[0x1DA72CB90](v26, -1, -1);
      break;
    }

    __break(1u);
LABEL_16:
    swift_once();
LABEL_14:
    ;
  }

  (*(v33 + 8))(v9, v34);
  return (*(v11 + 8))(v17, v10);
}

uint64_t sub_1D8D92B9C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) <= 1u)
  {
    v3 = objc_opt_self();
    v4 = sub_1D917802C();
    v11[0] = 0;
    v5 = [v3 dataWithJSONObject:v4 options:1 error:v11];

    v6 = v11[0];
    if (v5)
    {
      v7 = sub_1D9176C8C();

      result = v7;
      goto LABEL_8;
    }

    v8 = v6;
    v9 = sub_1D9176A6C();

    swift_willThrow();
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  if (*(a1 + 40) - 2 < 2)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 24) | *(a1 + 32) | *a1 | *(a1 + 16) | *(a1 + 8);
  result = 0;
LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1D8D92D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D8D92DC4()
{
  result = qword_1ECAB29F0;
  if (!qword_1ECAB29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29F0);
  }

  return result;
}

uint64_t sub_1D8D92E18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9176EAC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v9 = swift_unknownObjectRetain();
  return sub_1D8D930A8(v9, v7);
}

void sub_1D8D92F00()
{
  if (!qword_1ECAB0158)
  {
    sub_1D8D926D8();
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0158);
    }
  }
}

void sub_1D8D92F80()
{
  sub_1D8D92D64(319, &qword_1ECAAFE90, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D8D92D64(319, &qword_1ECAAFEA0, MEMORY[0x1E69E8660]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D8D930A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_1D8D9373C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_1D9176EAC();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_1D8D93AB0(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_1D8F84A14();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_1D9176EAC();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);
      swift_unknownObjectRelease();
      sub_1D8F7F950(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_1D9176EAC();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

void sub_1D8D93268()
{
  if (!qword_1ECAB0138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75E0, &qword_1D918DE30);
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0138);
    }
  }
}

uint64_t CacheDeleteNotifications.init(paths:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B80, &qword_1D918C540);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B88, &qword_1D918C548);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B90, &qword_1D918C550);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - v17;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer] = 0;
  *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_paths] = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8650], v3);
  v36 = v18;
  type metadata accessor for CacheDeleteNotifications.CacheDeleteEvent(0);
  v33[1] = a1;

  sub_1D91788FC();
  (*(v34 + 32))(&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_stream], v11, v35);
  sub_1D8D088B4(v18, v15, &qword_1ECAB4B90, &qword_1D918C550);
  result = (*(v20 + 48))(v15, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_continuation], v15, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
    v22 = swift_allocObject();
    *(v22 + 20) = 0;
    *(v22 + 16) = 0;
    *&v1[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_completedCheck] = v22;
    v23 = type metadata accessor for CacheDeleteNotifications(0);
    v37.receiver = v1;
    v37.super_class = v23;
    v24 = objc_msgSendSuper2(&v37, sel_init);
    v25 = qword_1EDCD09A8;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    v27 = qword_1EDCD09B0;
    v28 = objc_allocWithZone(CacheDeleteNotificationObserver);
    sub_1D9176C2C();
    v29 = v27;
    v30 = sub_1D91785DC();

    v31 = [v28 initWithDelegate:v26 observedPaths:v30 notificationQueue:v29];

    v32 = *&v26[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer];
    *&v26[OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer] = v31;

    sub_1D8D08A50(v18, &qword_1ECAB4B90, &qword_1D918C550);
    return v26;
  }

  return result;
}

uint64_t sub_1D8D9373C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1D8D93AB0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1D8F84A14();
      goto LABEL_7;
    }

    sub_1D8D93CD8(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_1D8D93AB0(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1D8D940B8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1D8D93908()
{
  result = qword_1ECAB2A10;
  if (!qword_1ECAB2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A10);
  }

  return result;
}

uint64_t sub_1D8D9395C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4FA8, &qword_1D918DE40);
    sub_1D8D93A38(&qword_1ECAAFE50, sub_1D8D93BD8);
    sub_1D8D93A38(&qword_1ECAAFE58, sub_1D8D93C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D93A38(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4FB0, &qword_1D918DE48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8D93AB0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1D9176EAC();
  v5 = MEMORY[0x1E69695A8];
  sub_1D8F0CA8C(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  v6 = sub_1D917813C();
  return sub_1D8F08B6C(a1, v6, MEMORY[0x1E69695A8], &qword_1ECAB2C78, v5, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D8D93B84()
{
  result = qword_1EDCD7038[0];
  if (!qword_1EDCD7038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD7038);
  }

  return result;
}

unint64_t sub_1D8D93BD8()
{
  result = qword_1EDCD5ED0;
  if (!qword_1EDCD5ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5ED0);
  }

  return result;
}

unint64_t sub_1D8D93C2C()
{
  result = qword_1ECAB2A20;
  if (!qword_1ECAB2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A20);
  }

  return result;
}

unint64_t sub_1D8D93C80()
{
  result = qword_1ECAB10F0;
  if (!qword_1ECAB10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB10F0);
  }

  return result;
}

uint64_t sub_1D8D93CD8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4298, &qword_1D9188DF0);
  v43 = a2;
  result = sub_1D917978C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_1D8D111F4(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
      result = sub_1D917813C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1D8D940B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1D9176EAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_1D8D9418C()
{
  result = qword_1ECAB2A18;
  if (!qword_1ECAB2A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A18);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for ChapterProvider.Errors(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChapterProvider.Errors(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1D8D942BC()
{
  result = qword_1ECAB29E0;
  if (!qword_1ECAB29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29E0);
  }

  return result;
}

uint64_t OSAllocatedUnfairLock<A>.init(from:)(uint64_t *a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v9[4];
  v11 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_1D9179EDC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_1D9179B2C();
    v11 = sub_1D8D0790C();
    (*(v5 + 8))(v8, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

unint64_t sub_1D8D9449C()
{
  result = qword_1ECAB29D8;
  if (!qword_1ECAB29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB29D8);
  }

  return result;
}

uint64_t sub_1D8D944F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a3 - 8);
  result = OSAllocatedUnfairLock<A>.init(from:)(a1, *(a2 + 16));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1D8D94524(uint64_t a1, uint64_t a2)
{
  sub_1D8D08A50(a2, &qword_1ECAB4B90, &qword_1D918C550);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

unint64_t sub_1D8D94600(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;

      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D94734(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1D8D947C0();

  return sub_1D8D9494C(a1, v4);
}

uint64_t sub_1D8D947C0()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

unint64_t sub_1D8D9494C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x7374736163646F70;
          }

          else
          {
            v7 = 0xD000000000000010;
          }

          if (v6 == 1)
          {
            v8 = 0xE800000000000000;
          }

          else
          {
            v8 = 0x80000001D91C7F40;
          }
        }

        else
        {
          v7 = 0xD000000000000010;
          v8 = 0x80000001D91C7F20;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0x69726F6765746163;
          v8 = 0xEA00000000007365;
        }

        else
        {
          v7 = 0x6970652D7478656ELL;
          v8 = 0xED00007365646F73;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000010;
        }

        else
        {
          v7 = 0x697263736E617274;
        }

        if (v6 == 3)
        {
          v8 = 0x80000001D91C7F60;
        }

        else
        {
          v8 = 0xEB00000000737470;
        }
      }

      v9 = 0x69726F6765746163;
      if (v5 != 5)
      {
        v9 = 0x6970652D7478656ELL;
      }

      v10 = 0xED00007365646F73;
      if (v5 == 5)
      {
        v10 = 0xEA00000000007365;
      }

      v11 = 0x697263736E617274;
      if (v5 == 3)
      {
        v11 = 0xD000000000000010;
      }

      v12 = 0xEB00000000737470;
      if (v5 == 3)
      {
        v12 = 0x80000001D91C7F60;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x7374736163646F70;
      if (v5 != 1)
      {
        v13 = 0xD000000000000010;
      }

      v14 = 0xE800000000000000;
      if (v5 != 1)
      {
        v14 = 0x80000001D91C7F40;
      }

      if (!v5)
      {
        v13 = 0xD000000000000010;
        v14 = 0x80000001D91C7F20;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = sub_1D9179ACC();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1D8D94C08()
{
  v1 = v0;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F20);
  v3 = sub_1D917741C();
  v4 = sub_1D9178CFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Starting observer", v5, 2u);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v6 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_observer);
  if (v6)
  {
    v7 = v6;
    if (([v7 beginObserving] & 1) == 0)
    {
      v8 = sub_1D917741C();
      v9 = sub_1D9178CFC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Unable to start observing cache delete notifications! Features that rely upon these notifications may not work.", v10, 2u);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      v11 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation24CacheDeleteNotifications_completedCheck);
      os_unfair_lock_lock((v11 + 20));
      *(v11 + 16) = 1;
      os_unfair_lock_unlock((v11 + 20));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B98, &unk_1D918C558);
      sub_1D91788BC();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B88, &qword_1D918C548);
  return sub_1D91788DC();
}

unint64_t sub_1D8D94EFC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(_BYTE *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v15[0] = *(i - 8);
      v16 = v9;

      result = a4(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v15[0];
      *(v7[7] + 8 * result) = v9;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D95090(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
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

unint64_t sub_1D8D951E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42B0, &qword_1D9188E08);
    v3 = sub_1D91797AC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v11[0] = *(i - 8);
      v12 = v5;
      result = sub_1D8F06430(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v11[0];
      *(v3[7] + 8 * result) = v5;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1D8D953C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41F8, &qword_1D9188D40);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      v5 = *(v4 + 8);
      *v11 = *v4;
      v12 = v5;

      result = sub_1D8F06598(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = *v11;
      *(v3[7] + 8 * result) = v5;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 16;
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

uint64_t NSManagedObjectContextProvider.managedObjectContext(for:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D917886C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  (*(v5 + 16))(&v21 - v11, a1, v4, v10);
  sub_1D91787FC();
  sub_1D8D957EC();
  v13 = sub_1D91781BC();
  v14 = *(v5 + 8);
  v14(v8, v4);
  if ((v13 & 1) == 0)
  {
    sub_1D917881C();
    v15 = sub_1D91781BC();
    v14(v8, v4);
    if ((v15 & 1) == 0)
    {
      sub_1D917884C();
      v17 = sub_1D91781BC();
      v14(v8, v4);
      if (v17 & 1) != 0 || (sub_1D917881C(), v18 = sub_1D91781BC(), v14(v8, v4), (v18))
      {
        v14(v12, v4);
        return NSManagedObjectContextProvider.privateManagedObjectContext.getter(a2);
      }

      sub_1D917880C();
      v19 = sub_1D91781BC();
      v14(v8, v4);
      if (v19)
      {
        v14(v12, v4);
      }

      else
      {
        sub_1D917880C();
        v20 = sub_1D91781BC();
        v14(v8, v4);
        v14(v12, v4);
        if ((v20 & 1) == 0)
        {
          return NSManagedObjectContextProvider.privateManagedObjectContext.getter(a2);
        }
      }

      return NSManagedObjectContextProvider.mainManagedObjectContext.getter(a2);
    }
  }

  v14(v12, v4);
  return NSManagedObjectContextProvider.importManagedObjectContext.getter(a2);
}

unint64_t sub_1D8D957EC()
{
  result = qword_1ECAB01D8;
  if (!qword_1ECAB01D8)
  {
    sub_1D917886C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01D8);
  }

  return result;
}

uint64_t _s21MediaRequestTelemetryCMa()
{
  result = qword_1ECAB20D0;
  if (!qword_1ECAB20D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8D95890()
{
  result = type metadata accessor for FeedUpdateRequest();
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

uint64_t NSManagedObjectContext.episodes(for:sortDescriptors:limit:)(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v9 = Array<A>.episodeCoreDataPredicate()(a1);
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

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v11 = sub_1D917908C();

  return v11;
}

uint64_t sub_1D8D95AAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D8D95AE8()
{
  result = qword_1EDCD35B0[0];
  if (!qword_1EDCD35B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB76E8, &unk_1D9198848);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD35B0);
  }

  return result;
}

char *Array<A>.group()(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 48);
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *(v3 - 2);
    if (*v3)
    {
      v7 = *(v3 - 1);
      v8 = *(v3 - 2);
      if (*v3 == 1)
      {
        sub_1D8D5055C(v8, v7, 1);
        v5 = v6;
        MEMORY[0x1DA729B90]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D917863C();
        }

        sub_1D917869C();
        sub_1D8DA8564(v6, v7, 1);
      }

      else
      {
        sub_1D8D5055C(v8, v7, 2);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D8D4241C(0, *(v1 + 2) + 1, 1, v1);
        }

        v10 = *(v1 + 2);
        v9 = *(v1 + 3);
        if (v10 >= v9 >> 1)
        {
          v1 = sub_1D8D4241C((v9 > 1), v10 + 1, 1, v1);
        }

        *(v1 + 2) = v10 + 1;
        v11 = &v1[16 * v10];
        *(v11 + 4) = v6;
        *(v11 + 5) = v7;
        sub_1D8DA8564(v6, v7, 2);
      }
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1D8ECC958(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      if (v13 >= v12 >> 1)
      {
        v4 = sub_1D8ECC958((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v13 + 1;
      *&v4[8 * v13 + 32] = v6;
    }

    v3 += 24;
    --v2;
  }

  while (v2);
  return v4;
}

uint64_t MediaRequestControllerProtocol.perform<A>(params:account:telemetry:parsing:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a5;
  v17[7] = a6;
  v17[8] = a3;
  swift_unknownObjectRetain();

  MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(a1, a2, a3, sub_1D904E304, v17, a7, a9);
}

uint64_t sub_1D8D95E5C()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t MediaRequestControllerProtocol.perform(params:account:telemetry:callback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v15 = *(a7 + 72);

  v15(a1, a2, a3, sub_1D9014D5C, v14, a6, a7);
}

uint64_t sub_1D8D95F6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t EpisodeMediaType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6F69647561;
  }

  if (a1 == 1)
  {
    return 0x6F65646976;
  }

  return 0x6C616E7265747865;
}

void sub_1D8D95FF8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v27 = a4;
  v28 = a2;
  v7 = type metadata accessor for MediaRequest.Params();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    [a3 beginBuildingRequest];
  }

  v12 = type metadata accessor for MediaRequestBuilder();
  sub_1D8D96644(a1);
  v13 = sub_1D8D963C0(a1);
  sub_1D8D85B08(a1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  sub_1D8D85D0C(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + ((v14 + 24) & ~v14));
  v35 = sub_1D905064C;
  v36 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D85118;
  v34 = &block_descriptor_77_0;
  v16 = _Block_copy(&aBlock);

  v17 = [v13 thenWithBlock_];
  _Block_release(v16);

  sub_1D8D85B08(a1, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (v14 + 40) & ~v14;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = a3;
  v20[3] = v21;
  v20[4] = v29;
  sub_1D8D85D0C(v11, v20 + v18);
  v22 = v30;
  *(v20 + v19) = v30;
  v23 = v28;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v35 = sub_1D9050650;
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1D8D5960C;
  v34 = &block_descriptor_84_1;
  v24 = _Block_copy(&aBlock);
  v25 = v23;
  swift_unknownObjectRetain();

  v26 = v22;

  [v17 addFinishBlock_];
  _Block_release(v24);
}

id sub_1D8D963C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MediaRequest.Params();
  sub_1D8ECA48C(a1 + *(v11 + 112), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D8E677CC(v5);
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 podcastsMediaAPIHostUrl];

    if (qword_1ECAB1E48 != -1)
    {
      swift_once();
    }

    v14 = [v13 asyncValuePromiseOnQueue_];

    return v14;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v16 = sub_1D9176B1C();
    v17 = [objc_opt_self() promiseWithResult_];

    (*(v7 + 8))(v10, v6);
    return v17;
  }
}

uint64_t sub_1D8D96644(uint64_t result)
{
  v1 = *(result + 43);
  if (v1 != 5)
  {
    v2 = result;
    if (sub_1D8FDE630(*(result + 43), 0) & 1) == 0 || (result = *(v2 + 41), result != 7) && (result = sub_1D8D8D46C(result, 1u), (result))
    {

      return sub_1D8FDE630(v1, 0);
    }
  }

  return result;
}

uint64_t sub_1D8D96724(void *a1, char a2, uint64_t (*a3)(void *), uint64_t a4, void *a5)
{
  v6 = a1;
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD0F68);
    v9 = a5;
    sub_1D8D81A00(v6, 1);
    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();

    sub_1D8D99898(v6, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315651;
      v14 = sub_1D8D6FDF8();
      v16 = sub_1D8CFA924(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      swift_getErrorValue();
      v17 = sub_1D9179D2C();
      v19 = sub_1D8CFA924(v17, v18, &v21);

      *(v12 + 24) = v19;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Unable to fetch downloaded FairPlay episodes with error: %{private,mask.hash}s.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    a1 = MEMORY[0x1E69E7CC0];
  }

  return a3(a1);
}

uint64_t sub_1D8D96940()
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
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1ECAB1E50 = result;
  return result;
}

void sub_1D8D96BA0(unint64_t a1, void *a2, void (*a3)(id, void), uint64_t a4)
{
  if (a1 >> 62)
  {
    if (sub_1D917935C())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = a4;
    v8[4] = a2;
    v8[5] = a1;
    sub_1D8D1F93C(a3);
    v9 = a2;

    sub_1D8EAC264(v10, sub_1D8EAD9DC, v8);

    return;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1EDCD0F68);
  v12 = a2;
  v13 = sub_1D917741C();
  v14 = sub_1D9178D1C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_1D8D6FDF8();
    v19 = sub_1D8CFA924(v17, v18, &v24);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "%s No episodes found requiring renewal.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  if (a3)
  {
    v20 = type metadata accessor for FairPlayValidationManager.Response();
    v21 = objc_allocWithZone(v20);
    v22 = MEMORY[0x1E69E7CC0];
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_renewedAdamIDs] = MEMORY[0x1E69E7CC0];
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_failedAdamIDs] = v22;
    *&v21[OBJC_IVAR____TtCC18PodcastsFoundation25FairPlayValidationManager8Response_removedAdamIDs] = v22;
    v25.receiver = v21;
    v25.super_class = v20;
    v23 = objc_msgSendSuper2(&v25, sel_init);
    a3(v23, 0);
  }
}

uint64_t sub_1D8D96E20()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1D8D96E70(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  if (a4)
  {
    sub_1D9176E8C();
    v13 = sub_1D9176EAC();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_1D9176EAC();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  v15 = a3;
  v16 = a1;
  a5(v12);

  return sub_1D8D798AC(v12);
}

void sub_1D8D96FF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, char a23)
{
  if (a23)
  {
    v23 = 8;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23 & 0xFFFFFFF8 | (a22 >> 3) & 7;
  if (v24 <= 3)
  {
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 != 1)
        {
          return;
        }

        sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);
        a1 = a7;
      }

      goto LABEL_11;
    }

    if (v24 == 2)
    {
      v28 = a5;
      v29 = a6;
      v26 = a3;
      v27 = a4;
      v25 = a2;
      v31 = a7;

      sub_1D8F6F1DC(v25, v26, v27, v28, v29, v31);

      sub_1D8F6F690(a11, a12, a13, a14, a15, a16);
      LOBYTE(a6) = a22 & 0xC7;
      a1 = a17;
      a2 = a18;
      a3 = a19;
      a4 = a20;
      a5 = a21;
    }

    goto LABEL_26;
  }

  if (v24 > 5)
  {
    if (v24 == 6)
    {

LABEL_11:

      return;
    }

    if (v24 == 7)
    {

      sub_1D8F6F6A4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    }
  }

  else
  {
    if (v24 == 4)
    {
      sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);

      sub_1D8F6F690(a10, a11, a12, a13, a14, a15);
      a1 = a16;
      a2 = a17;
      a3 = a18;
      a4 = a19;
      a5 = a20;
      LOBYTE(a6) = a21;
LABEL_26:

      sub_1D8F6F1DC(a1, a2, a3, a4, a5, a6);
      return;
    }
  }
}

void sub_1D8D97288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1D9176A5C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1D8D972F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E0, &unk_1D9197360);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_1D9176EAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D76CE0(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D8D798AC(v6);
  }

  v13 = (*(v8 + 32))(v11, v6, v7);
  v14 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry);
  MEMORY[0x1EEE9AC00](v13);
  *(&v16 - 2) = v11;

  os_unfair_lock_lock((v14 + 24));
  sub_1D9050608((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  result = (*(v8 + 8))(v11, v7);
  if (v15)
  {
    [v15 beginRequestEncoding];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D8D97588()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t FairPlayRolloutController.didRollbackStatusChange(completion:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D9177E0C();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8D978EC();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = ObjectType;
  aBlock[4] = sub_1D8D983E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_22;
  v15 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v8, v15);
  _Block_release(v15);

  (*(v19 + 8))(v8, v5);
  (*(v9 + 8))(v12, v18);
}

uint64_t sub_1D8D978B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_1D8D978EC()
{
  v1 = v0;
  v2 = sub_1D9178E0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9178D8C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = sub_1D9177E9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue;
  v12 = *(v0 + OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR___PFFairPlayRolloutController____lazy_storage___internalQueue);
  }

  else
  {
    v14 = sub_1D8CFD888();
    v21 = "ion/ActiveSessionStore]:";
    v22 = v14;
    sub_1D9177E5C();
    v23 = MEMORY[0x1E69E7CC0];
    v19[1] = sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
    v20 = v2;
    sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
    sub_1D91792CC();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v20);
    v15 = sub_1D9178E4C();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t sub_1D8D97B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16))
  {
    v5 = sub_1D8D93AB0(a2);
    if (v6)
    {
      v7 = *(*(v4 + 56) + 8 * v5);
      result = swift_unknownObjectRetain();
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_1D8D97BDC()
{
  v4 = 7;
  sub_1D8D76684(&v4, &v5);
  v1 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState + 8);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingState) = v5;

  v4 = 8;
  sub_1D8D76684(&v4, &v5);
  v2 = *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState + 8);
  *(v0 + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestEncodingDiagnosticState) = v5;
}

uint64_t sub_1D8D97CE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

id sub_1D8D97D28()
{
  result = [objc_allocWithZone(type metadata accessor for FairPlayMigrationController()) init];
  qword_1EDCD2918 = result;
  return result;
}

uint64_t sub_1D8D97F90()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D8D97FCC(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1D8D98060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a4;
  v22 = a5;
  ObjectType = swift_getObjectType();
  v9 = sub_1D9177E0C();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v5 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = ObjectType;
  aBlock[4] = v21;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v16, v12, v19);
  _Block_release(v19);
  (*(v25 + 8))(v12, v9);
  (*(v13 + 8))(v16, v24);
}

uint64_t sub_1D8D98368()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D983EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() sharedInstance];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8D99070;
  *(v8 + 24) = v7;
  v11[4] = sub_1D8D597EC;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D5960C;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  [v6 createSnapshotWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_1D8D98540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1D8D98588(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    sub_1D8D98628(v8, v8, a2, a3, a4);
  }

  else
  {
    a2();
  }
}

uint64_t sub_1D8D98628(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177F1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = *(a1 + OBJC_IVAR___PFFairPlayMigrationController_internalQueue);
  *v14 = v16;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v17 = a2;

  v18 = v16;
  LOBYTE(v16) = sub_1D9177F4C();
  (*(v11 + 8))(v14, v10);
  if (v16)
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
  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1EDCD0F68);
  v20 = sub_1D917741C();
  v21 = sub_1D9178CEC();
  v22 = os_log_type_enabled(v20, v21);
  v38 = v17;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v39);
    _os_log_impl(&dword_1D8CEC000, v20, v21, "%s Determining migration status.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1DA72CB90](v24, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  if (qword_1EDCD2AD8 != -1)
  {
    swift_once();
    if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
    {
      goto LABEL_7;
    }

LABEL_20:
    v32 = sub_1D917741C();
    v33 = sub_1D9178CEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v39 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v39);
      *(v34 + 12) = 1026;
      *(v34 + 14) = 0;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "%s Migration unnecessary, fairPlayV2Enabled: %{BOOL,public}d.", v34, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    (a3)(v36);
  }

  if ((_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0() & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v25 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  NSUserDefaults.fairPlayVersion.getter(&v39);

  if (v39)
  {
    v26 = 12918;
  }

  else
  {
    v26 = 12662;
  }

  if (v39)
  {
    v27 = sub_1D9179ACC();

    if ((v27 & 1) == 0)
    {
      sub_1D8D98C80(sub_1D8D99CA8, v15);
    }
  }

  else
  {
  }

  v28 = sub_1D917741C();
  v29 = sub_1D9178CEC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v39);
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_1D8CFA924(v26, 0xE200000000000000, &v39);
    _os_log_impl(&dword_1D8CEC000, v28, v29, "%s Should attempt migration, fairPlayVersion: %{public}s.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  sub_1D8D99CB4(1, v38, a3, a4, a5);
}

uint64_t sub_1D8D98B74()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

void NSUserDefaults.fairPlayVersion.getter(BOOL *a1@<X8>)
{

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v4 = [v1 stringForKey_];

  v6 = 0;
  if (v4)
  {
    sub_1D917820C();

    v5 = sub_1D917980C();

    if (v5 == 1)
    {
      v6 = 1;
    }
  }

  *a1 = v6;
}

uint64_t sub_1D8D98C80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    aBlock[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, aBlock);
    _os_log_impl(&dword_1D8CEC000, v16, v17, "%s Determining reattempting migration status.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  v20 = [objc_opt_self() sharedInstance];
  v21 = [v20 privateQueueContext];

  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = ObjectType;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_1D8D998C8;
  v24[4] = v22;
  v24[5] = v21;
  v24[6] = ObjectType;
  aBlock[4] = sub_1D8EA9864;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_85_1;
  v25 = _Block_copy(aBlock);

  v26 = v21;

  [v26 performBlock_];
  _Block_release(v25);
}

uint64_t sub_1D8D99024()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D8D99070(id *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1D8D99080(a1, a2 & 1, *(v2 + 16));
}

uint64_t sub_1D8D99080(id *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = a1;
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    sub_1D8EAA118(a1, 1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v40 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
      *(v9 + 12) = 2082;
      swift_getErrorValue();
      v11 = sub_1D9179D2C();
      v13 = sub_1D8CFA924(v11, v12, &v40);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Unable to create local bag snapshot, cannot determine rollback status %{public}s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    goto LABEL_27;
  }

  v14 = [a1[2] BOOLForKey_];
  v15 = [v14 unsafeSnapshotSyncValue];

  if (!v15)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD0F68);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_26;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    goto LABEL_25;
  }

  v16 = [v15 BOOLValue];

  v17 = objc_opt_self();
  v18 = [v17 _applePodcastsFoundationSharedUserDefaults];
  v19 = sub_1D8D6D320();
  if (v19 == 2)
  {
    v20 = qword_1ECAB5808;
    v21 = off_1ECAB5810;

    v22 = sub_1D8D6D934(v20, v21, 1);
  }

  else
  {
    v22 = v19;
  }

  if (v16 == (v22 & 1))
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v38 = sub_1D917744C();
    __swift_project_value_buffer(v38, qword_1EDCD0F68);
    v24 = sub_1D917741C();
    v25 = sub_1D9178CFC();
    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_26;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    v28 = "%s Rollback status unchanged.";
LABEL_25:
    _os_log_impl(&dword_1D8CEC000, v24, v25, v28, v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x1DA72CB90](v27, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
LABEL_26:

LABEL_27:
    v37 = 0;
    return a3(v37);
  }

  v29 = [v17 _applePodcastsFoundationSharedUserDefaults];
  v30 = sub_1D917873C();

  v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v29 setValue:v30 forKey:v31];

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v32 = sub_1D917744C();
  __swift_project_value_buffer(v32, qword_1EDCD0F68);
  v33 = sub_1D917741C();
  v34 = sub_1D9178CFC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1D8CFA924(0xD00000000000002FLL, 0x80000001D91CC0C0, &v40);
    _os_log_impl(&dword_1D8CEC000, v33, v34, "%s Rollback status changed.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v35, -1, -1);
  }

  v37 = 1;
  return a3(v37);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 24);

  sub_1D8D99898(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_6Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 56) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  v5 = v1 + v3;
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v1 + v3, 1, v6))
  {
    (*(v7 + 8))(v1 + v3, v6);
  }

  v8 = *(v5 + *(v2 + 24) + 8);

  v9 = (v5 + *(v2 + 36));
  if (v9[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return swift_deallocObject();
}

void sub_1D8D99898(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D8D998C8(char a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1D8D998D4(a1, *(v1 + 16));
}

uint64_t sub_1D8D998D4(char a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v11 = sub_1D917744C();
    __swift_project_value_buffer(v11, qword_1EDCD0F68);
    v6 = sub_1D917741C();
    v12 = sub_1D9178CEC();
    if (!os_log_type_enabled(v6, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v13 + 12) = 1026;
    *(v13 + 14) = 0;
    _os_log_impl(&dword_1D8CEC000, v6, v12, "%s Should not reattempt migration, hasLegacyKeys: %{BOOL,public}d.", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    v10 = v13;
    goto LABEL_11;
  }

  v3 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v4 = [v3 fairPlayMigrationRetryCount];

  if (v4 > 5)
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1EDCD0F68);
    v6 = sub_1D917741C();
    v7 = sub_1D9178CEC();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v8 + 12) = 2050;
    *(v8 + 14) = v4;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Should not reattempt migration, migrationRetryCount: %{public}ld.", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    v10 = v8;
LABEL_11:
    MEMORY[0x1DA72CB90](v10, -1, -1);
LABEL_12:

    v15 = 0;
    return a2(v15);
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F68);
  v17 = sub_1D917741C();
  v18 = sub_1D9178CEC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D8CFA924(0xD000000000000028, 0x80000001D91CBFE0, &v22);
    *(v19 + 12) = 2048;
    *(v19 + 14) = v4;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "%s Migration should be reattempted, migrationRetryCount: %ld.", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x1DA72CB90](v20, -1, -1);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  v15 = 1;
  return a2(v15);
}

uint64_t sub_1D8D99CB4(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if ((a1 & 1) == 0)
  {
    return a3();
  }

  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a5;

  sub_1D8EA0680(sub_1D8EA98D8, v8);
}

uint64_t sub_1D8D99D6C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D99EF8()
{
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1D8D99F4C();
}

uint64_t sub_1D8D99F4C()
{
  v1 = v0[1];
  v33[0] = *v0;
  v33[1] = v1;
  v33[2] = v0[2];
  result = sub_1D917669C();
  if (result)
  {
    v3 = result;
    v32 = MEMORY[0x1E69E7CC0];
    v4 = *MEMORY[0x1E695D328];
    v29 = sub_1D917820C();
    v30 = v5;
    sub_1D91793EC();
    if (*(v3 + 16) && (v6 = sub_1D8D6550C(v28), (v7 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v6, v31);
      sub_1D8D9A308(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v8 = v29;
        sub_1D8D461A0(v33, v28);
        v9 = sub_1D8D9A9AC(v8, v33);
        sub_1D8D9AE34(v33);
        sub_1D8F3C290(v9, 0);
        v11 = v10;

        sub_1D8D9B2F8(v11);
      }
    }

    else
    {
      sub_1D8D9A308(v28);
    }

    v12 = *MEMORY[0x1E695D4D0];
    v29 = sub_1D917820C();
    v30 = v13;
    sub_1D91793EC();
    if (*(v3 + 16) && (v14 = sub_1D8D6550C(v28), (v15 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v14, v31);
      sub_1D8D9A308(v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v16 = v29;
        sub_1D8D461A0(v33, v28);
        v17 = sub_1D8D9A9AC(v16, v33);
        sub_1D8D9AE34(v33);
        sub_1D8F3C290(v17, 1);
        v19 = v18;

        sub_1D8D9B2F8(v19);
      }
    }

    else
    {
      sub_1D8D9A308(v28);
    }

    v20 = *MEMORY[0x1E695D2F8];
    v29 = sub_1D917820C();
    v30 = v21;
    sub_1D91793EC();
    if (*(v3 + 16) && (v22 = sub_1D8D6550C(v28), (v23 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v3 + 56) + 32 * v22, v31);
      sub_1D8D9A308(v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F88, qword_1D918DDD0);
      if (swift_dynamicCast())
      {
        v24 = v29;
        sub_1D8D461A0(v33, v28);
        v25 = sub_1D8D9A9AC(v24, v33);
        sub_1D8D9AE34(v33);
        sub_1D8F3C290(v25, 2);
        v27 = v26;

        sub_1D8D9B2F8(v27);
      }
    }

    else
    {

      sub_1D8D9A308(v28);
    }

    v28[0] = v32;
    sub_1D91778BC();
  }

  return result;
}