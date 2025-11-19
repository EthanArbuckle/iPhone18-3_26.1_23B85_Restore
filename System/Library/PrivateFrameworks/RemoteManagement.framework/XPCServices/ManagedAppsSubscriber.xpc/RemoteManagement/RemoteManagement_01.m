uint64_t sub_10001521C()
{
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

void *sub_1000152C0()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v44 = v0[12];

    v8 = _swiftEmptyArrayStorage;
    v29 = _swiftEmptyArrayStorage[2];
    if (v29)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = *(v3 + 16);
  v3 += 16;
  v58 = v4;
  v59 = v5;
  v55 = (*(v3 + 64) + 32) & ~*(v3 + 64);
  v6 = v1 + v55;
  v7 = *(v3 + 56);
  v56 = (v3 - 8);
  v54 = (v3 + 16);
  v8 = _swiftEmptyArrayStorage;
  v57 = v7;
  do
  {
    v10 = v0[2];
    v59(v0[7], v6, v0[3]);
    sub_100016BB0();
    v11 = sub_100016DF0();

    v12 = [v58 newDeclarationKey:v11];

    v13 = [v12 storeIdentifier];
    v14 = sub_100016E20();
    v16 = v15;

    v17 = [v10 identifier];
    v18 = sub_100016E20();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
    }

    else
    {
      v22 = sub_1000171B0();

      if ((v22 & 1) == 0)
      {
        (*v56)(v0[7], v0[3]);

        v9 = v57;
        goto LABEL_4;
      }
    }

    v59(v0[6], v0[7], v0[3]);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100010534(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    if (v24 >= v23 >> 1)
    {
      v8 = sub_100010534(v23 > 1, v24 + 1, 1, v8);
    }

    v26 = v0[6];
    v25 = v0[7];
    v27 = v0[3];

    (*v56)(v25, v27);
    *(v8 + 2) = v24 + 1;
    v9 = v57;
    (*v54)(&v8[v55 + v24 * v57], v26, v27);
LABEL_4:
    v6 += v9;
    --v2;
  }

  while (v2);
  v28 = v0[12];

  v29 = *(v8 + 2);
  if (v29)
  {
LABEL_18:
    v30 = v0[4];
    result = sub_100012120(0, v29, 0);
    v32 = 0;
    v60 = &v8[(*(v30 + 80) + 32) & ~*(v30 + 80)];
    while (v32 < *(v8 + 2))
    {
      v33 = v0[5];
      v34 = v0[3];
      (*(v30 + 16))(v33, &v60[*(v30 + 72) * v32], v34);
      v35 = sub_1000141F8(v33, 0);
      v36 = [v35 serializeWithType:1];

      v37 = sub_100016D60();
      result = (*(v30 + 8))(v33, v34);
      v39 = _swiftEmptyArrayStorage[2];
      v38 = _swiftEmptyArrayStorage[3];
      if (v39 >= v38 >> 1)
      {
        result = sub_100012120((v38 > 1), v39 + 1, 1);
      }

      ++v32;
      _swiftEmptyArrayStorage[2] = v39 + 1;
      _swiftEmptyArrayStorage[v39 + 4] = v37;
      if (v29 == v32)
      {
        v40 = v0[14];
        v42 = v0[9];
        v41 = v0[10];
        v43 = v0[8];

        (*(v42 + 8))(v41, v43);

        goto LABEL_26;
      }
    }

    __break(1u);
    return result;
  }

LABEL_25:
  v45 = v0[14];
  v47 = v0[9];
  v46 = v0[10];
  v48 = v0[8];

  (*(v47 + 8))(v46, v48);

LABEL_26:
  v49 = v0[10];
  v51 = v0[6];
  v50 = v0[7];
  v52 = v0[5];

  v53 = v0[1];

  return v53(_swiftEmptyArrayStorage);
}

uint64_t sub_1000157A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return _swift_task_switch(sub_1000157C4, 0, 0);
}

uint64_t sub_1000157C4()
{
  v33 = v0;
  if (qword_100020AA8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_100016D40();
  v0[26] = sub_100006810(v2, qword_100021568);

  v3 = sub_100016D20();
  v4 = sub_100016FD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136446210;
    v8 = sub_100016F40();
    v10 = sub_10001070C(v8, v9, &v32);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Querying status for key paths:%{public}s", v6, 0xCu);
    sub_100009990(v7);
  }

  v11 = v0[24];
  v12 = sub_100012EDC(_swiftEmptyArrayStorage);
  v13 = *(v11 + 16);
  v0[27] = v13;
  if (v13)
  {
    v14 = 0;
    v0[28] = RMModelStatusItemAppManagedList;
    while (1)
    {
      v0[29] = v12;
      v0[30] = v14;
      v18 = v0[28];
      v19 = v0[24] + 16 * v14;
      v20 = *(v19 + 32);
      v0[31] = v20;
      v21 = *(v19 + 40);
      v0[32] = v21;
      if (sub_100016E20() == v20 && v22 == v21)
      {
        break;
      }

      v24 = sub_1000171B0();

      if (v24)
      {
        goto LABEL_20;
      }

      v25 = v0[26];

      v26 = sub_100016D20();
      v27 = sub_100016FE0();

      if (os_log_type_enabled(v26, v27))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v32 = v16;
        *v15 = 136315138;
        v17 = sub_10001070C(v20, v21, &v32);

        *(v15 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v26, v27, "Ignoring unknown status key path: %s", v15, 0xCu);
        sub_100009990(v16);
      }

      else
      {
      }

      v14 = v0[30] + 1;
      if (v14 == v0[27])
      {
        goto LABEL_16;
      }
    }

LABEL_20:
    v30 = swift_task_alloc();
    v0[33] = v30;
    *v30 = v0;
    v30[1] = sub_100015BA0;
    v31 = v0[25];

    return sub_100014808(v31);
  }

  else
  {
LABEL_16:
    v28 = v0[1];

    return v28(v12);
  }
}

uint64_t sub_100015BA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  *(*v2 + 272) = v1;

  if (v1)
  {
    v7 = sub_1000160F0;
  }

  else
  {
    *(v4 + 280) = a1;
    v7 = sub_100015CC8;
  }

  return _swift_task_switch(v7, 0, 0);
}

_OWORD *sub_100015CC8()
{
  v45 = v0;
  v1 = *(v0 + 280);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = sub_100001658(&qword_100020F48, &qword_1000181F0);
  *(v0 + 16) = v1;
  *(v0 + 40) = v5;
  sub_100016690((v0 + 16), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 184) = v4;
  v7 = sub_100012308(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  LOBYTE(v3) = v8;
  if (*(*(v0 + 232) + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_11:
    v22 = v7;
    sub_100012C38();
    v7 = v22;
    v18 = *(v0 + 256);
    if (v3)
    {
      goto LABEL_9;
    }

LABEL_12:
    v23 = *(v0 + 248);
    v20 = *(v0 + 184);
    v20[(v7 >> 6) + 8] |= 1 << v7;
    v24 = (v20[6] + 16 * v7);
    *v24 = v23;
    v24[1] = v18;
    result = sub_100016690((v0 + 112), (v20[7] + 32 * v7));
    v25 = v20[2];
    v11 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v11)
    {
      __break(1u);
      return result;
    }

    v20[2] = v26;
    goto LABEL_14;
  }

  v14 = *(v0 + 248);
  v13 = *(v0 + 256);
  sub_100012654(v12, isUniquelyReferenced_nonNull_native);
  v15 = *(v0 + 184);
  v7 = sub_100012308(v14, v13);
  if ((v3 & 1) != (v16 & 1))
  {

    return sub_1000171D0();
  }

LABEL_8:
  v18 = *(v0 + 256);
  if ((v3 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v19 = v7;

  v20 = *(v0 + 184);
  v21 = (v20[7] + 32 * v19);
  sub_100009990(v21);
  sub_100016690((v0 + 112), v21);
LABEL_14:
  v27 = *(v0 + 240) + 1;
  if (v27 == *(v0 + 216))
  {
LABEL_15:
    v28 = *(v0 + 8);

    return v28(v20);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v20;
      *(v0 + 240) = v27;
      v32 = *(v0 + 224);
      v33 = *(v0 + 192) + 16 * v27;
      v34 = *(v33 + 32);
      *(v0 + 248) = v34;
      v35 = *(v33 + 40);
      *(v0 + 256) = v35;
      if (sub_100016E20() == v34 && v36 == v35)
      {
        break;
      }

      v38 = sub_1000171B0();

      if (v38)
      {
        goto LABEL_29;
      }

      v39 = *(v0 + 208);

      v40 = sub_100016D20();
      v41 = sub_100016FE0();

      if (os_log_type_enabled(v40, v41))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v44 = v30;
        *v29 = 136315138;
        v31 = sub_10001070C(v34, v35, &v44);

        *(v29 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v40, v41, "Ignoring unknown status key path: %s", v29, 0xCu);
        sub_100009990(v30);
      }

      else
      {
      }

      v27 = *(v0 + 240) + 1;
      if (v27 == *(v0 + 216))
      {
        goto LABEL_15;
      }
    }

LABEL_29:
    v42 = swift_task_alloc();
    *(v0 + 264) = v42;
    *v42 = v0;
    v42[1] = sub_100015BA0;
    v43 = *(v0 + 200);

    return sub_100014808(v43);
  }
}

_OWORD *sub_1000160F0()
{
  v57 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 208);
  swift_errorRetain();
  v3 = sub_100016D20();
  v4 = sub_100016FE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 272);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not query managed app list status key: %{public}@", v6, 0xCu);
    sub_10000EC38(v7, &qword_100020F40, &qword_100017E10);
  }

  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v12 = *(v0 + 232);

  swift_getErrorValue();
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 72) = v13;
  v15 = sub_10001662C((v0 + 48));
  (*(*(v13 - 8) + 16))(v15, v14, v13);
  sub_100016690((v0 + 48), (v0 + 80));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v12;
  v17 = sub_100012308(v11, v10);
  v19 = *(v12 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v10) = v18;
  if (*(*(v0 + 232) + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v30 = v17;
    sub_100012C38();
    v17 = v30;
    v28 = *(v0 + 176);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_14:
    v32 = *(v0 + 248);
    v31 = *(v0 + 256);
    v28[(v17 >> 6) + 8] |= 1 << v17;
    v33 = (v28[6] + 16 * v17);
    *v33 = v32;
    v33[1] = v31;
    result = sub_100016690((v0 + 80), (v28[7] + 32 * v17));
    v34 = v28[2];
    v21 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (v21)
    {
      __break(1u);
      return result;
    }

    v36 = *(v0 + 256);
    v28[2] = v35;

    goto LABEL_16;
  }

  v24 = *(v0 + 248);
  v23 = *(v0 + 256);
  sub_100012654(v22, isUniquelyReferenced_nonNull_native);
  v25 = *(v0 + 176);
  v17 = sub_100012308(v24, v23);
  if ((v10 & 1) != (v26 & 1))
  {

    return sub_1000171D0();
  }

LABEL_10:
  v28 = *(v0 + 176);
  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v29 = (v28[7] + 32 * v17);
  sub_100009990(v29);
  sub_100016690((v0 + 80), v29);
LABEL_16:
  v37 = *(v0 + 272);
  v38 = *(v0 + 256);

  v39 = *(v0 + 240) + 1;
  if (v39 == *(v0 + 216))
  {
LABEL_17:
    v40 = *(v0 + 8);

    return v40(v28);
  }

  else
  {
    while (1)
    {
      *(v0 + 232) = v28;
      *(v0 + 240) = v39;
      v44 = *(v0 + 224);
      v45 = *(v0 + 192) + 16 * v39;
      v46 = *(v45 + 32);
      *(v0 + 248) = v46;
      v47 = *(v45 + 40);
      *(v0 + 256) = v47;
      if (sub_100016E20() == v46 && v48 == v47)
      {
        break;
      }

      v50 = sub_1000171B0();

      if (v50)
      {
        goto LABEL_31;
      }

      v51 = *(v0 + 208);

      v52 = sub_100016D20();
      v53 = sub_100016FE0();

      if (os_log_type_enabled(v52, v53))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56 = v42;
        *v41 = 136315138;
        v43 = sub_10001070C(v46, v47, &v56);

        *(v41 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v52, v53, "Ignoring unknown status key path: %s", v41, 0xCu);
        sub_100009990(v42);
      }

      else
      {
      }

      v39 = *(v0 + 240) + 1;
      if (v39 == *(v0 + 216))
      {
        goto LABEL_17;
      }
    }

LABEL_31:
    v54 = swift_task_alloc();
    *(v0 + 264) = v54;
    *v54 = v0;
    v54[1] = sub_100015BA0;
    v55 = *(v0 + 200);

    return sub_100014808(v55);
  }
}

uint64_t *sub_10001662C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_100016690(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000166A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016700(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001658(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}