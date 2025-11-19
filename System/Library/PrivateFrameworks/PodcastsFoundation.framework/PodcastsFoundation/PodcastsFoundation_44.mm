void sub_1D910E364()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

double sub_1D910E3C4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1BE88(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

double sub_1D910E444@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t LibraryPodcastStateDataSource.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  sub_1D8EB07F4(v0 + 48);
  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return v0;
}

uint64_t LibraryPodcastStateDataSource.__deallocating_deinit()
{
  LibraryPodcastStateDataSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D910E554(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D910DF28(v2);
  return sub_1D90FEF80;
}

uint64_t sub_1D910E5C4(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1D910E9F4(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1D910E6BC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1D910EAE4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1D910E7E8(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(v2 + 48) + ((v9 << 10) | (16 * v10));
        result = sub_1D910F16C(*v11, *(v11 + 8) | (*(v11 + 9) << 8));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1D910E8FC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1D910F060(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1D910E9F4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_1D9179DAC();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F0019C();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1D910F890(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1D910EAE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v7 = sub_1D9179E1C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1D9179ACC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F00040();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1D910FA14(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1D910EC20(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1D917939C();

    if (v7)
    {
      v8 = sub_1D910F728();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v11 = *(v3 + 40);
  v12 = sub_1D917913C();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1D917914C();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F002DC();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1D910FBD8(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t sub_1D910EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D9176EAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D8CFD7F8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
  v35 = a1;
  v13 = sub_1D917813C();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_1D8CFD7F8(&qword_1ECAB2C78, MEMORY[0x1E69695A8]);
      v22 = sub_1D91781BC();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D8F00430();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_1D910FD78(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_1D910F060(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a1);
  v5 = sub_1D9179E1C();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8EFFDC0();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_1D9110080(v7);
  result = v13;
  *v1 = v14;
  return result;
}

uint64_t sub_1D910F16C(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a1);
  }

  v43 = HIBYTE(a2);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v8 = sub_1D9179E1C();
  v9 = v6 + 56;
  v10 = -1 << *(v6 + 32);
  v11 = v8 & ~v10;
  if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v39 = v2;
  v40 = a1;
  v12 = ~v10;
  v13 = 0x6C61727475656ELL;
  v42 = v6;
  v41 = a2;
  while (1)
  {
    v17 = *(v6 + 48) + 16 * v11;
    v18 = *(v17 + 9);
    if (*(v17 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a2 & 1) != 0 || *v17 != v40)
    {
      goto LABEL_6;
    }

    v19 = v18 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v20 = v18 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v21 = v18 ? v13 : 0x4C74736567677573;
    v22 = v18 ? 0xE700000000000000 : 0xEB00000000737365;
    v23 = v18 <= 1 ? v21 : v19;
    v24 = v18 <= 1 ? v22 : v20;
    v25 = v43 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v26 = v43 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v27 = v43 ? v13 : 0x4C74736567677573;
    v28 = v43 ? 0xE700000000000000 : 0xEB00000000737365;
    v29 = v43 <= 1 ? v27 : v25;
    v30 = v43 <= 1 ? v28 : v26;
    if (v23 == v29 && v24 == v30)
    {
      break;
    }

    v14 = v13;
    v15 = v9;
    v16 = sub_1D9179ACC();

    v13 = v14;
    v9 = v15;
    LOBYTE(a2) = v41;
    v6 = v42;
    if (v16)
    {
      goto LABEL_51;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_51:
  v31 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v3;
  v44 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F00D30();
    v33 = v44;
  }

  v34 = *(v33 + 48) + 16 * v11;
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = *(v34 + 9);
  sub_1D9110228(v11);
  result = v35;
  *v39 = v44;
  return result;
}

double sub_1D910F494@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1D9179DBC();
  sub_1D910DB90();
  v6 = sub_1D9179E1C();
  v7 = v4 + 56;
  v8 = -1 << *(v4 + 32);
  v9 = v6 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_35:
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v10 = ~v8;
  v11 = *a1;
  v12 = a1[1];
  v13 = *(v4 + 48);
  v47 = *a1;
  v48 = v12;
  while (1)
  {
    v14 = v13 + 72 * v9;
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    v17 = *(v14 + 32);
    v18 = *(v14 + 40);
    v19 = *(v14 + 48);
    v49 = *(v14 + 64);
    v50 = *(v14 + 56);
    if (*v14 != v11 || *(v14 + 8) != v12)
    {
      v21 = v10;
      v22 = a1;
      v23 = v7;
      v24 = v13;
      v25 = v9;
      v26 = *(v14 + 32);
      v27 = *(v14 + 16);
      v28 = *(v14 + 24);
      v29 = sub_1D9179ACC();
      v16 = v28;
      v15 = v27;
      LOBYTE(v17) = v26;
      v9 = v25;
      v13 = v24;
      v7 = v23;
      a1 = v22;
      v10 = v21;
      v11 = v47;
      v12 = v48;
      if ((v29 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v30 = *(a1 + 24);
    if (v16)
    {
      if (!*(a1 + 24))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v15 != a1[2])
      {
        v30 = 1;
      }

      if (v30)
      {
        goto LABEL_4;
      }
    }

    v31 = a1[6];
    if (v19)
    {
      break;
    }

    if (!v31)
    {
      goto LABEL_32;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (v19 == 1)
  {
    if (v31 == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  if (v19 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  if (v31 < 3 || (a1[4] & 1) != (v17 & 1))
  {
    goto LABEL_4;
  }

  v32 = a1[8];
  v33 = *(a1 + 56);
  if (v18 != a1[5] || v19 != v31)
  {
    v35 = v7;
    v36 = v13;
    v37 = sub_1D9179ACC();
    v13 = v36;
    v7 = v35;
    if ((v37 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (((v33 ^ v50) & 1) != 0 || v49 != v32)
  {
    goto LABEL_4;
  }

LABEL_32:
  v38 = *v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v45;
  v51 = *v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F00E8C();
    v40 = v51;
  }

  v41 = *(v40 + 48) + 72 * v9;
  v42 = *(v41 + 48);
  *(a2 + 32) = *(v41 + 32);
  *(a2 + 48) = v42;
  *(a2 + 64) = *(v41 + 64);
  v43 = *(v41 + 16);
  *a2 = *v41;
  *(a2 + 16) = v43;
  sub_1D91104A8(v9);
  *v45 = v51;
  return result;
}

uint64_t sub_1D910F728()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_1D917935C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1D8EFC150(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_1D917913C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_1D917914C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_1D910FBD8(v9);
  result = sub_1D917914C();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D910F890(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_1D9179DAC() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D910FA14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1D9179DBC();

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v15 = sub_1D9179E1C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D910FBD8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1D917913C();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1D910FD78(int64_t a1)
{
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_1D91792EC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_1D8CFD7F8(&qword_1EDCD5920, MEMORY[0x1E69695A8]);
        v26 = sub_1D917813C();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

unint64_t sub_1D9110080(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_1D9179DBC();
        MEMORY[0x1DA72B3C0](v12);
        v13 = sub_1D9179E1C() & v7;
        if (v2 >= v10)
        {
          if (v13 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D9110228(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = 16 * v6;
        v12 = *(v3 + 40);
        v13 = *(v3 + 48) + 16 * v6;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 9);
        sub_1D9179DBC();
        sub_1D9179DDC();
        if (v15 != 1)
        {
          MEMORY[0x1DA72B3C0](v14);
        }

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

        v17 = sub_1D9179E1C() & v7;
        if (v2 >= v10)
        {
          if (v17 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v17 >= v10)
        {
          goto LABEL_13;
        }

        if (v2 >= v17)
        {
LABEL_13:
          v18 = *(v3 + 48);
          v19 = (v18 + 16 * v2);
          v20 = (v18 + v11);
          if (16 * v2 != v11 || (v2 = v6, v19 >= v20 + 1))
          {
            *v19 = *v20;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D91104A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v27 = v4;
      do
      {
        v11 = *(v3 + 48) + 72 * v6;
        v13 = *(v11 + 32);
        v12 = *(v11 + 48);
        v14 = *(v11 + 16);
        v34 = *(v11 + 64);
        v32 = v13;
        v33 = v12;
        v30 = *v11;
        v31 = v14;
        v15 = *(v3 + 40);
        sub_1D9179DBC();
        sub_1D8D1808C(&v30, v29);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        if (BYTE8(v31) == 1)
        {
          sub_1D9179DDC();
          v16 = v33;
          if (!v33)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v18 = v31;
          sub_1D9179DDC();
          MEMORY[0x1DA72B3C0](v18);
          v16 = v33;
          if (!v33)
          {
LABEL_12:
            v17 = 0;
            goto LABEL_14;
          }
        }

        if (v16 == 1)
        {
          v17 = 1;
          goto LABEL_14;
        }

        if (v16 == 2)
        {
          v17 = 3;
LABEL_14:
          MEMORY[0x1DA72B390](v17);
          goto LABEL_16;
        }

        v28 = v34;
        MEMORY[0x1DA72B390](2);
        sub_1D9179DDC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v4 = v27;
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v28);
LABEL_16:
        v19 = sub_1D9179E1C();
        sub_1D8D183D4(&v30);
        v20 = v19 & v7;
        if (v2 >= v10)
        {
          if (v20 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v10)
        {
          goto LABEL_21;
        }

        if (v2 >= v20)
        {
LABEL_21:
          v21 = *(v3 + 48);
          v22 = (v21 + 72 * v2);
          v23 = (v21 + 72 * v6);
          if (v2 != v6 || v22 >= v23 + 72)
          {
            memmove(v22, v23, 0x48uLL);
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_1D9110788(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 == 2)
  {
    return v7 == 2;
  }

  if (v6 == 1)
  {
    return v7 == 1;
  }

  if (v6)
  {
    if (v7 < 3 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
    {
      return 0;
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v12 = *(a2 + 40);
    v13 = *(a2 + 64);
    v14 = *(a2 + 56);
    if ((v9 != v12 || v6 != v7) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

    return ((v10 ^ v14) & 1) == 0 && v11 == v13;
  }

  return !v7;
}

uint64_t dispatch thunk of LibraryPodcastStateDataSource.state(for:)()
{
  return (*(*v0 + 328))();
}

{
  return (*(*v0 + 336))();
}

uint64_t sub_1D91109D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9C8, &qword_1D91B9658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9110A64()
{
  result = qword_1EDCD09C8;
  if (!qword_1EDCD09C8)
  {
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD09C8);
  }

  return result;
}

uint64_t sub_1D9110ACC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D9110B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a2;
  v78 = a5;
  v72 = sub_1D91791BC();
  v8 = *(*(v72 - 1) + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v66 - v9;
  v70 = *(a4 - 8);
  v10 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v73 = &v66 - v16;
  v68 = sub_1D9176EAC();
  v79 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = sub_1D91791BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v66 - v21;
  v23 = *(TupleTypeMetadata2 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v74 = &v66 - v29;
  v77 = a1;
  v80 = a1;
  sub_1D91786FC();
  sub_1D8D4D2D8();
  v75 = a3;
  sub_1D91780FC();
  if (!v81)
  {
    goto LABEL_4;
  }

  swift_getWitnessTable();
  sub_1D917816C();
  if ((*(v23 + 48))(v22, 1, TupleTypeMetadata2) == 1)
  {
    (*(v19 + 8))(v22, v18);

LABEL_4:
    v30 = v77;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1ECAB77F8);

    v32 = sub_1D917741C();
    v33 = sub_1D9178D1C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v80 = v30;
      v81 = v35;
      *v34 = 136315394;
      sub_1D8E40A10();
      v36 = sub_1D9179A4C();
      v38 = sub_1D8CFA924(v36, v37, &v81);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      v80 = v30;
      sub_1D91780FC();
      v39 = sub_1D917826C();
      v41 = sub_1D8CFA924(v39, v40, &v81);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "[StateCache] state for %s (consolidated) -> %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    v81 = v30;
    return sub_1D91780FC();
  }

  v43 = v74;
  (*(v23 + 32))(v74, v22, TupleTypeMetadata2);

  v76 = v23;
  (*(v23 + 16))(v27, v43, TupleTypeMetadata2);
  v44 = v70;
  v45 = *(v70 + 32);
  v46 = &v27[*(TupleTypeMetadata2 + 48)];
  v47 = v73;
  v48 = v79;
  v75 = v70 + 32;
  v72 = v45;
  v45(v73, v46, v79);
  (*(*(v68 - 8) + 8))(v27);
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v49 = sub_1D917744C();
  __swift_project_value_buffer(v49, qword_1ECAB77F8);
  v50 = *(v44 + 16);
  v51 = v69;
  v50(v69, v47, v48);
  v52 = sub_1D917741C();
  v53 = sub_1D9178D1C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v71 = v55;
    *v54 = 136315394;
    v80 = v77;
    v81 = v55;
    sub_1D8E40A10();
    v56 = sub_1D9179A4C();
    v58 = sub_1D8CFA924(v56, v57, &v81);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v50(v67, v51, v79);
    v59 = sub_1D917826C();
    v61 = v60;
    (*(v44 + 8))(v51, v79);
    v62 = sub_1D8CFA924(v59, v61, &v81);

    *(v54 + 14) = v62;
    v48 = v79;
    _os_log_impl(&dword_1D8CEC000, v52, v53, "[StateCache] state for %s (in-flight) -> %s", v54, 0x16u);
    v63 = v71;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v63, -1, -1);
    v64 = v54;
    v47 = v73;
    MEMORY[0x1DA72CB90](v64, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v51, v48);
  }

  (*(v76 + 8))(v74, TupleTypeMetadata2);
  v65 = v78;
  v72(v78, v47, v48);
  return (*(v44 + 56))(v65, 0, 1, v48);
}

uint64_t sub_1D9111370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_1D9176EAC();
  v11 = *(a4 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v36 - v14;
  v16 = *(v5 + 8);
  v39 = a1;
  sub_1D91786FC();
  v38 = sub_1D8D4D2D8();
  sub_1D91780FC();
  v17 = v42[0];
  if (!v42[0])
  {
    v17 = sub_1D917866C();
  }

  v43 = v17;
  v18 = *(TupleTypeMetadata2 + 48);
  (*(*(v10 - 8) + 16))(v15, a3, v10);
  (*(*(v11 - 8) + 16))(&v15[v18], a2, v11);
  sub_1D91786BC();
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1ECAB77F8);
  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42[0] = v37;
    *v22 = 136315650;
    v39 = a1;
    sub_1D8E40A10();
    v23 = sub_1D9179A4C();
    v25 = sub_1D8CFA924(v23, v24, v42);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v39 = a1;
    sub_1D8E40D20();
    v26 = sub_1D917927C();
    v28 = sub_1D8CFA924(v26, v27, v42);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    swift_beginAccess();

    v30 = MEMORY[0x1DA729BD0](v29, TupleTypeMetadata2);
    v32 = v31;

    v33 = sub_1D8CFA924(v30, v32, v42);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_1D8CEC000, v20, v21, "[StateCache] %s appended in-flight update for adamID %s, new queue: %s", v22, 0x20u);
    v34 = v37;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  swift_beginAccess();
  v40 = a1;
  v41 = v43;
  sub_1D91780DC();
  return sub_1D917810C();
}

uint64_t sub_1D9111718(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  v2 = sub_1D917866C();
  v3 = sub_1D8D4D2D8();
  v4 = sub_1D8D075C8(v2, &type metadata for AdamID, a1, v3);

  sub_1D9176EAC();
  swift_getTupleTypeMetadata2();
  v5 = sub_1D91786FC();
  swift_getTupleTypeMetadata2();
  v6 = sub_1D917866C();
  sub_1D8D075C8(v6, &type metadata for AdamID, v5, v3);

  return v4;
}

uint64_t InMemoryStateDomain.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D91118A8()
{
  result = qword_1ECABAA78;
  if (!qword_1ECABAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAA78);
  }

  return result;
}

uint64_t sub_1D9111934(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D8E31320(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1D91792DC();
  v7 = v24;
  v8 = 0;
  v9 = *(a1 + 36);
  v25 = v9;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v11 = result >> 6;
    v12 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(a1 + 48) + 8 * result);
    v15 = *(v26 + 16);
    v14 = *(v26 + 24);
    if (v15 >= v14 >> 1)
    {
      v23 = result;
      sub_1D8E31320((v14 > 1), v15 + 1, 1);
      v7 = v24;
      v9 = v25;
      result = v23;
    }

    *(v26 + 16) = v15 + 1;
    *(v26 + 8 * v15 + 32) = v13;
    v10 = 1 << *(a1 + 32);
    if (result >= v10)
    {
      goto LABEL_24;
    }

    v16 = *(v4 + 8 * v11);
    if ((v16 & v12) == 0)
    {
      goto LABEL_25;
    }

    if (v9 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v10 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v11 << 6;
      v19 = v11 + 1;
      v20 = (a1 + 72 + 8 * v11);
      while (v19 < (v10 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1D8D9B144(result, v25, 0);
          v7 = v24;
          v9 = v25;
          v10 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v25, 0);
      v7 = v24;
      v9 = v25;
    }

LABEL_4:
    ++v8;
    result = v10;
    if (v8 == v7)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9111B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v1, 0);
  v2 = v38;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_1D91792DC();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v30 = v3 + 72;
  v31 = v1;
  v32 = v9;
  v33 = v3 + 64;
  v34 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v35 = v8;
    v12 = (*(v3 + 56) + 40 * v7);
    v36 = v2;
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    v37 = *(*(v3 + 48) + 8 * v7);
    sub_1D8D1C3BC(*v12, v13, v15);
    sub_1D8E40A10();
    v18 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v18);

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    sub_1D917964C();
    v19 = v13;
    v2 = v36;
    result = sub_1D8D1D59C(v14, v19, v15);
    v21 = *(v36 + 16);
    v20 = *(v36 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_1D8D41BE0((v20 > 1), v21 + 1, 1);
      v2 = v36;
    }

    *(v2 + 16) = v21 + 1;
    v22 = v2 + 16 * v21;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0xE000000000000000;
    v3 = v34;
    v10 = 1 << *(v34 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v33;
    v23 = *(v33 + 8 * v11);
    if ((v23 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v32;
    if (v32 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v24 = v23 & (-2 << (v7 & 0x3F));
    if (v24)
    {
      v10 = __clz(__rbit64(v24)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v11 << 6;
      v26 = v11 + 1;
      v27 = (v30 + 8 * v11);
      while (v26 < (v10 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_1D8D9B144(v7, v32, 0);
          v10 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v7, v32, 0);
    }

LABEL_4:
    v8 = v35 + 1;
    v7 = v10;
    if (v35 + 1 == v31)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D9111E68(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_1D8D5055C(*v10, v12, v13);
      sub_1D8EFAB8C(v14, v11, v12, v13);
      sub_1D8DA8564(v14[0], v14[1], v15);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D9111F88(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1D8D19AFC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D911208C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D8D1A770(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D911216C(uint64_t a1)
{
  v2 = qword_1ECABAAE0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABAAE0, &qword_1D91B98C8);
  v3 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v44 - v9;
  v45 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC8];
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v49 = a1;

  v16 = 0;
  for (i = a1 + 64; ; v10 = i)
  {
    v17 = v16;
    if (!v13)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v18 = v2;
      v16 = v17;
LABEL_11:
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v20 = v19 | (v16 << 6);
      v21 = *(v49 + 56);
      v22 = *(*(v49 + 48) + 8 * v20);
      v23 = (type metadata accessor for InMemoryEpisodeStateModel() - 8);
      v24 = v21 + *(*v23 + 72) * v20;
      v26 = v47;
      v25 = v48;
      sub_1D9117ABC(v24, &v47[*(v48 + 48)], type metadata accessor for InMemoryEpisodeStateModel);
      *v26 = v22;
      v27 = v26;
      v2 = v18;
      sub_1D8D6734C(v27, v7, v18, &qword_1D91B98C8);
      v28 = v7[*(v25 + 48) + v23[7]];
      if (v28 != 2)
      {
        break;
      }

      result = sub_1D8D08A50(v7, v18, &qword_1D91B98C8);
      v17 = v16;
      v10 = i;
      if (!v13)
      {
LABEL_7:
        while (1)
        {
          v16 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v16 >= v14)
          {

            return v45;
          }

          v13 = *(v10 + 8 * v16);
          ++v17;
          if (v13)
          {
            v18 = v2;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    sub_1D8D6734C(v7, v44, v18, &qword_1D91B98C8);
    v29 = v45;
    v30 = *(v45 + 16);
    if (*(v45 + 24) <= v30)
    {
      sub_1D900AD3C(v30 + 1, 1);
      v29 = v50;
    }

    v45 = v29;
    v31 = *v44;
    v32 = *(v29 + 40);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v31);
    result = sub_1D9179E1C();
    v33 = v45;
    v34 = v45 + 64;
    v35 = -1 << *(v45 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v45 + 64 + 8 * (v36 >> 6))) == 0)
    {
      break;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v45 + 64 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v43 = *(v48 + 48);
    *(v34 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    *(v33[6] + 8 * v38) = v31;
    *(v33[7] + v38) = v28 & 1;
    ++v33[2];
    result = sub_1D9117B24(v44 + v43, type metadata accessor for InMemoryEpisodeStateModel);
  }

  v39 = 0;
  v40 = (63 - v35) >> 6;
  while (++v37 != v40 || (v39 & 1) == 0)
  {
    v41 = v37 == v40;
    if (v37 == v40)
    {
      v37 = 0;
    }

    v39 |= v41;
    v42 = *(v34 + 8 * v37);
    if (v42 != -1)
    {
      v38 = __clz(__rbit64(~v42)) + (v37 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D9112518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v60 - v4;
  v70 = type metadata accessor for EpisodePlayState();
  v6 = *(v70 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v60 - v10;
  v11 = qword_1ECABAAE0;
  v12 = &qword_1D91B98C8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABAAE0, &qword_1D91B98C8);
  v13 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v63 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v60 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - v18;
  v20 = a1 + 64;
  v19 = *(a1 + 64);
  v65 = MEMORY[0x1E69E7CC8];
  v73 = MEMORY[0x1E69E7CC8];
  v21 = 1 << *(a1 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v24 = (v21 + 63) >> 6;
  v61 = v6;
  v67 = (v6 + 48);
  v72 = a1;

  v26 = 0;
  for (i = a1 + 64; ; v20 = i)
  {
    v27 = v26;
    if (!v23)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v28 = v12;
      v29 = v11;
      v30 = v5;
      v26 = v27;
LABEL_11:
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v32 = v31 | (v26 << 6);
      v33 = *(v72 + 56);
      v34 = *(*(v72 + 48) + 8 * v32);
      v35 = v33 + *(*(type metadata accessor for InMemoryEpisodeStateModel() - 8) + 72) * v32;
      v36 = v71;
      v37 = v68;
      sub_1D9117ABC(v35, &v68[*(v71 + 48)], type metadata accessor for InMemoryEpisodeStateModel);
      *v37 = v34;
      v38 = v37;
      v11 = v29;
      v39 = v29;
      v12 = v28;
      v40 = v69;
      sub_1D8D6734C(v38, v69, v39, v12);
      v5 = v30;
      sub_1D9117A4C(v40 + *(v36 + 48), v30);
      if ((*v67)(v30, 1, v70) != 1)
      {
        break;
      }

      sub_1D8D08A50(v40, v11, v12);
      result = sub_1D8D08A50(v30, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v27 = v26;
      v20 = i;
      if (!v23)
      {
LABEL_7:
        while (1)
        {
          v26 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v26 >= v24)
          {

            return v65;
          }

          v23 = *(v20 + 8 * v26);
          ++v27;
          if (v23)
          {
            v28 = v12;
            v29 = v11;
            v30 = v5;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v41 = v62;
    sub_1D91179E8(v30, v62);
    v42 = v40;
    v43 = v63;
    sub_1D8D6734C(v42, v63, v11, v12);
    sub_1D91179E8(v41, v64);
    v44 = v65;
    v45 = v65[2];
    if (v65[3] <= v45)
    {
      sub_1D900A9E0(v45 + 1, 1);
      v44 = v73;
    }

    v46 = *v43;
    v47 = v44[5];
    v48 = v44;
    sub_1D9179DBC();
    v60 = v46;
    MEMORY[0x1DA72B3C0](v46);
    result = sub_1D9179E1C();
    v49 = v48 + 8;
    v65 = v48;
    v50 = -1 << *(v48 + 32);
    v51 = result & ~v50;
    v52 = v51 >> 6;
    if (((-1 << v51) & ~v48[(v51 >> 6) + 8]) == 0)
    {
      break;
    }

    v53 = __clz(__rbit64((-1 << v51) & ~v48[(v51 >> 6) + 8])) | v51 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v58 = *(v71 + 48);
    *(v49 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
    v59 = v65;
    *(v65[6] + 8 * v53) = v60;
    sub_1D91179E8(v64, v59[7] + *(v61 + 72) * v53);
    ++v59[2];
    result = sub_1D9117B24(v63 + v58, type metadata accessor for InMemoryEpisodeStateModel);
  }

  v54 = 0;
  v55 = (63 - v50) >> 6;
  while (++v52 != v55 || (v54 & 1) == 0)
  {
    v56 = v52 == v55;
    if (v52 == v55)
    {
      v52 = 0;
    }

    v54 |= v56;
    v57 = v49[v52];
    if (v57 != -1)
    {
      v53 = __clz(__rbit64(~v57)) + (v52 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void *InMemoryStateRepository.__allocating_init(inMemoryBookmarkStateStore:inMemoryPlayStateStore:inMemoryFollowStateStore:inMemoryStateNetworking:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA80, &unk_1D91B9810);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CD0];
  *(v9 + 24) = 0;
  *(v9 + 16) = v10;
  v8[10] = v9;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D8D6BCE0(a4, (v8 + 5));
  return v8;
}

void *InMemoryStateRepository.init(inMemoryBookmarkStateStore:inMemoryPlayStateStore:inMemoryFollowStateStore:inMemoryStateNetworking:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA80, &unk_1D91B9810);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CD0];
  *(v9 + 24) = 0;
  *(v9 + 16) = v10;
  v4[10] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1D8D6BCE0(a4, (v4 + 5));
  return v4;
}

void *InMemoryStateRepository.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v4 = v0[10];

  return v0;
}

uint64_t InMemoryStateRepository.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v4 = v0[10];

  return swift_deallocClassInstance();
}

uint64_t InMemoryStateRepository.allAdamIDs(forConsolidatedFollowState:)(__int128 *a1)
{
  v2 = *(v1 + 32);
  v9 = *(a1 + 4);
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 32));
  sub_1D9116E40((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 32));
  return v6;
}

uint64_t InMemoryStateRepository.requestEpisodeStates(for:)(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = v1[10];
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock((v3 + 24));
    sub_1D9116E5C((v3 + 16), &v18);
    os_unfair_lock_unlock((v3 + 24));
    v4 = v18;

    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB77F8);

    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Requesting state for missing adamIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (*(v4 + 16))
    {
      v13 = v2[8];
      v14 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v13);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v4;
      v17 = *(v14 + 8);

      v17(v4, sub_1D9116E78, v16, v13, v14);
    }
  }

  return result;
}

void sub_1D9112F1C(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_1D9113A04();
  if (v4)
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB77F8);
    sub_1D9117C0C(v3, 1);

    v6 = sub_1D917741C();
    v7 = sub_1D9178CFC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28[0] = v10;
      *v8 = 136315394;
      sub_1D8D4D2D8();
      v11 = sub_1D9178AAC();
      v13 = sub_1D8CFA924(v11, v12, v28);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      sub_1D904FC24();
      swift_allocError();
      *v14 = v3;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v15;
      *v9 = v15;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Error fetching state for adamIDs %s: %@", v8, 0x16u);
      sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    else
    {

      sub_1D9117C18(v3, 1);
    }
  }

  else if (v3[2])
  {
    v16 = *(v1 + 16);
    v17 = sub_1D911216C(v3);
    sub_1D9113C20(v17);

    v18 = *(v2 + 24);
    v19 = sub_1D9112518(v3);
    sub_1D9114104(v19);
  }

  else
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v20 = sub_1D917744C();
    __swift_project_value_buffer(v20, qword_1ECAB77F8);

    oslog = sub_1D917741C();
    v21 = sub_1D9178CFC();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      sub_1D8D4D2D8();
      v24 = sub_1D9178AAC();
      v26 = sub_1D8CFA924(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1D8CEC000, oslog, v21, "No state found for adamIDs %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1DA72CB90](v23, -1, -1);
      MEMORY[0x1DA72CB90](v22, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t InMemoryStateRepository.requestFollowStates(for:)(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = v1[10];
    MEMORY[0x1EEE9AC00](result);

    os_unfair_lock_lock((v3 + 24));
    sub_1D9117E24((v3 + 16), &v18);
    os_unfair_lock_unlock((v3 + 24));
    v4 = v18;

    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB77F8);

    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Requesting state for missing adamIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (*(v4 + 16))
    {
      v13 = v2[8];
      v14 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v13);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v4;
      v17 = *(v14 + 16);

      v17(v4, sub_1D9116EA8, v16, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1D9113590(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = v6;
    v10 = v7;
    a4(&v9, a3);
  }

  return result;
}

void sub_1D9113620(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1D9113A04();
  if (v3)
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB77F8);
    sub_1D9117C0C(v2, 1);

    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v7 = 136315394;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v24);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      sub_1D904FC24();
      swift_allocError();
      *v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Error fetching state for adamIDs %s: %@", v7, 0x16u);
      sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {

      sub_1D9117C18(v2, 1);
    }
  }

  else if (v2[2])
  {
    v15 = *(v1 + 32);
    sub_1D91146A0(v2);
  }

  else
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1ECAB77F8);

    oslog = sub_1D917741C();
    v17 = sub_1D9178CFC();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      sub_1D8D4D2D8();
      v20 = sub_1D9178AAC();
      v22 = sub_1D8CFA924(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, oslog, v17, "No state found for adamIDs %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D91139A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_1D9116934(a2, a1);

  result = sub_1D911208C(v7);
  *a3 = v6;
  return result;
}

void sub_1D9113A04()
{
  v1 = *(v0 + 80);

  os_unfair_lock_lock(v1 + 6);
  sub_1D9117BD8();
  os_unfair_lock_unlock(v1 + 6);

  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB77F8);

  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    sub_1D8D4D2D8();
    v7 = sub_1D9178AAC();
    v9 = sub_1D8CFA924(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Removed in-flight requests for adamIDs: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA72CB90](v6, -1, -1);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }
}

Swift::Void __swiftcall InMemoryStateRepository.register(remoteEpisodeStates:)(Swift::OpaquePointer remoteEpisodeStates)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = sub_1D911216C(remoteEpisodeStates._rawValue);
  sub_1D9113C20(v5);

  v6 = *(v2 + 24);
  v7 = sub_1D9112518(remoteEpisodeStates._rawValue);
  sub_1D9114104(v7);
}

uint64_t sub_1D9113C20(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    if (qword_1ECAB34E8 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v4 = sub_1D917744C();
      __swift_project_value_buffer(v4, qword_1ECAB77F8);
      swift_bridgeObjectRetain_n();
      v5 = sub_1D917741C();
      v6 = sub_1D9178D1C();
      if (!os_log_type_enabled(v5, v6))
      {

        v30 = swift_bridgeObjectRelease_n();
        goto LABEL_27;
      }

      v7 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v7 = 136315394;
      *(v7 + 4) = sub_1D8CFA924(0xD000000000000014, 0x80000001D91D6E50, v48);
      *(v7 + 12) = 2080;
      v8 = *(v3 + 16);
      if (!v8)
      {
        break;
      }

      v38 = v6;
      v39 = v7;
      v40 = v5;
      v41 = v2;
      v47 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v8, 0);
      v44 = v47;
      v9 = v3 + 64;
      v10 = -1 << *(v3 + 32);
      v11 = sub_1D91792DC();
      v12 = 0;
      v45 = *(v3 + 36);
      v43 = v8;
      while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v3 + 32))
      {
        v15 = v11 >> 6;
        v2 = 1 << v11;
        if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_30;
        }

        if (v45 != *(v3 + 36))
        {
          goto LABEL_31;
        }

        v16 = *(*(v3 + 48) + 8 * v11);
        v17 = *(*(v3 + 56) + v11);
        v46[0] = 0;
        v46[1] = 0xE000000000000000;
        sub_1D8E40A10();
        v18 = sub_1D9179A4C();
        MEMORY[0x1DA7298F0](v18);

        MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
        sub_1D917964C();
        v19 = v44;
        v47 = v44;
        v21 = *(v44 + 16);
        v20 = *(v44 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D8D41BE0((v20 > 1), v21 + 1, 1);
          v19 = v47;
        }

        *(v19 + 16) = v21 + 1;
        v22 = v19 + 16 * v21;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0xE000000000000000;
        v13 = 1 << *(v3 + 32);
        if (v11 >= v13)
        {
          goto LABEL_32;
        }

        v9 = v3 + 64;
        v23 = *(v3 + 64 + 8 * v15);
        if ((v23 & v2) == 0)
        {
          goto LABEL_33;
        }

        v44 = v19;
        if (v45 != *(v3 + 36))
        {
          goto LABEL_34;
        }

        v24 = v23 & (-2 << (v11 & 0x3F));
        if (v24)
        {
          v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v14 = v43;
        }

        else
        {
          v25 = v15 << 6;
          v26 = v15 + 1;
          v14 = v43;
          v27 = (v3 + 72 + 8 * v15);
          while (v26 < (v13 + 63) >> 6)
          {
            v29 = *v27++;
            v28 = v29;
            v25 += 64;
            ++v26;
            if (v29)
            {
              sub_1D8D9B144(v11, v45, 0);
              v13 = __clz(__rbit64(v28)) + v25;
              goto LABEL_7;
            }
          }

          sub_1D8D9B144(v11, v45, 0);
        }

LABEL_7:
        ++v12;
        v11 = v13;
        if (v12 == v14)
        {

          v5 = v40;
          v2 = v41;
          v7 = v39;
          v6 = v38;
          v31 = v44;
          goto LABEL_26;
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
LABEL_35:
      swift_once();
    }

    v31 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v32 = MEMORY[0x1DA729BD0](v31, MEMORY[0x1E69E6158]);
    v34 = v33;

    v35 = sub_1D8CFA924(v32, v34, v48);

    *(v7 + 14) = v35;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Registering remote states: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v42, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);

LABEL_27:
    v36 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v30);
    os_unfair_lock_lock(v36 + 8);
    sub_1D9117B84(&v36[4], v46);
    os_unfair_lock_unlock(v36 + 8);
    v37 = *(v2 + 24);
    sub_1D91778BC();
  }

  return result;
}

void sub_1D9114104(uint64_t a1)
{
  v2 = v1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v50 - v7;
  if (*(a1 + 16))
  {
    if (qword_1ECAB34E8 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1ECAB77F8);
      swift_bridgeObjectRetain_n();
      v9 = sub_1D917741C();
      v10 = sub_1D9178D1C();
      if (!os_log_type_enabled(v9, v10))
      {

        v42 = swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      v54 = v10;
      v11 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69[0] = v53;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D8CFA924(0xD000000000000010, 0x80000001D91D6E30, v69);
      *(v11 + 12) = 2080;
      v12 = *(a1 + 16);
      if (!v12)
      {
        break;
      }

      v50 = v11;
      v51 = v9;
      v52 = v2;
      v68 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v12, 0);
      v13 = v68;
      v14 = a1 + 64;
      v15 = -1 << *(a1 + 32);
      v16 = sub_1D91792DC();
      v17 = 0;
      v57 = *(a1 + 36);
      v55 = a1 + 72;
      v56 = v12;
      v18 = *(a1 + 32);
      v58 = a1 + 64;
      v59 = a1;
      v19 = v60;
      while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << v18)
      {
        v22 = v16 >> 6;
        if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_28;
        }

        v63 = v17;
        v64 = 1 << v16;
        v23 = v62;
        v24 = *(v62 + 48);
        v25 = *(a1 + 48);
        v26 = *(a1 + 56);
        v27 = *(v25 + 8 * v16);
        v28 = type metadata accessor for EpisodePlayState();
        sub_1D9117ABC(v26 + *(*(v28 - 8) + 72) * v16, &v19[v24], type metadata accessor for EpisodePlayState);
        v2 = v61;
        *v61 = v27;
        sub_1D91179E8(&v19[v24], v2 + *(v23 + 48));
        v66 = 0;
        v67 = 0xE000000000000000;
        v65 = v27;
        sub_1D8E40A10();
        v29 = sub_1D9179A4C();
        MEMORY[0x1DA7298F0](v29);

        MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
        sub_1D917964C();
        v31 = v66;
        v30 = v67;
        sub_1D8D08A50(v2, &qword_1ECABAAC8, &qword_1D91B98A8);
        v68 = v13;
        v33 = *(v13 + 16);
        v32 = *(v13 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D8D41BE0((v32 > 1), v33 + 1, 1);
          v13 = v68;
        }

        *(v13 + 16) = v33 + 1;
        v34 = v13 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v30;
        a1 = v59;
        v18 = *(v59 + 32);
        v20 = 1 << v18;
        if (v16 >= 1 << v18)
        {
          goto LABEL_29;
        }

        v14 = v58;
        v35 = *(v58 + 8 * v22);
        if ((v35 & v64) == 0)
        {
          goto LABEL_30;
        }

        if (v57 != *(v59 + 36))
        {
          goto LABEL_31;
        }

        v36 = v35 & (-2 << (v16 & 0x3F));
        if (v36)
        {
          v20 = __clz(__rbit64(v36)) | v16 & 0x7FFFFFFFFFFFFFC0;
          v21 = v56;
        }

        else
        {
          v37 = v22 << 6;
          v38 = v22 + 1;
          v21 = v56;
          v39 = (v55 + 8 * v22);
          while (v38 < (v20 + 63) >> 6)
          {
            v41 = *v39++;
            v40 = v41;
            v37 += 64;
            ++v38;
            if (v41)
            {
              v20 = __clz(__rbit64(v40)) + v37;
              break;
            }
          }
        }

        v16 = v20;
        v17 = v63 + 1;
        if (v63 + 1 == v21)
        {

          v9 = v51;
          v2 = v52;
          v11 = v50;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v43 = MEMORY[0x1DA729BD0](v13, MEMORY[0x1E69E6158]);
    v45 = v44;

    v46 = sub_1D8CFA924(v43, v45, v69);

    *(v11 + 14) = v46;
    _os_log_impl(&dword_1D8CEC000, v9, v54, "[%s] Registering remote states: %s", v11, 0x16u);
    v47 = v53;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v47, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);

LABEL_25:
    v48 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v42);
    *(&v50 - 2) = a1;
    os_unfair_lock_lock(v48 + 8);
    sub_1D91179BC(&v48[4], &v66);
    os_unfair_lock_unlock(v48 + 8);
    v49 = *(v2 + 24);
    sub_1D91778BC();
  }
}

uint64_t sub_1D91146A0(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB77F8);

    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1D8CFA924(0x5374736163646F50, 0xEC00000065746174, &v16);
      *(v7 + 12) = 2080;
      sub_1D9111B70(v3);
      v9 = MEMORY[0x1DA729BD0]();
      v11 = v10;

      v12 = sub_1D8CFA924(v9, v11, &v16);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Registering remote states: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {
    }

    v14 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock(v14 + 8);
    sub_1D9117368(&v14[4], &v16);
    os_unfair_lock_unlock(v14 + 8);
    v15 = *(v2 + 24);
    sub_1D91778BC();
  }

  return result;
}

uint64_t InMemoryStateRepository.publisher(for:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = v1[3];
    }

    else
    {
      v2 = v1[2];
    }
  }

  else
  {
    v2 = v1[4];
  }

  v4 = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0);
  return sub_1D9177B1C();
}

void *InMemoryStateRepository.publisher(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA98, &qword_1D91B9820);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - v5;
  swift_weakInit();
  v7 = MEMORY[0x1E69E7CC0];
  v27 = MEMORY[0x1E69E7CC0];
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);

  result = swift_beginAccess();
  v12 = 0;
  v13 = (v8 + 63) >> 6;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(a1 + 48) + (v14 | (v12 << 6)));
      result = swift_weakLoadStrong();
      if (result)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v17 = result[3];
      }

      else
      {
        v17 = result[2];
      }
    }

    else
    {
      v17 = result[4];
    }

    v23 = *(v17 + 32);
    v26 = v23;

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
    sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0);
    v18 = sub_1D9177B1C();

    v23 = v18;
    v26 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAA0, &qword_1D91B9828);
    sub_1D8CF48EC(&qword_1ECABAAA8, &qword_1ECABAAA0, &qword_1D91B9828);
    sub_1D9177B1C();

    MEMORY[0x1DA729B90](v19);
    if (*(v27 + 16) >= *(v27 + 24) >> 1)
    {
      v20 = *(v27 + 16);
      sub_1D917863C();
    }

    result = sub_1D917869C();
    v7 = v27;
  }

  while (v10);
LABEL_6:
  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      swift_weakDestroy();

      v28 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAA0, &qword_1D91B9828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAB0, &qword_1D91B9830);
      sub_1D8CF48EC(&qword_1ECABAAA8, &qword_1ECABAAA0, &qword_1D91B9828);
      sub_1D8CF48EC(&qword_1ECABAAB8, &qword_1ECABAAB0, &qword_1D91B9830);
      sub_1D917775C();
      sub_1D8CF48EC(&qword_1ECABAAC0, &qword_1ECABAA98, &qword_1D91B9820);
      v21 = sub_1D9177B1C();
      result = (*(v24 + 8))(v6, v3);
      *v25 = v21;
      return result;
    }

    v10 = *(a1 + 56 + 8 * v16);
    ++v12;
    if (v10)
    {
      v12 = v16;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall InMemoryStateRepository.overrideAllLibraryState(with:isInitialFetch:)(PodcastsFoundation::LibrarySnapshot with, Swift::Bool isInitialFetch)
{
  rawValue = with.followedShows._rawValue;
  v5 = *with.savedEpisodesAdamIds._rawValue;
  v4 = *(with.savedEpisodesAdamIds._rawValue + 1);
  v6 = *(v4 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v32 = with.followedShows._rawValue;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D8E31944(0, v6, 0);
    v8 = v34;
    v9 = (v4 + 32);
    v10 = *(v34 + 16);
    v11 = 48 * v10;
    v12 = xmmword_1D91B9800;
    do
    {
      v14 = *v9;
      v9 += 5;
      v13 = v14;
      v34 = v8;
      v15 = *(v8 + 24);
      v16 = v10++ >= v15 >> 1;
      if (v16)
      {
        v31 = v12;
        sub_1D8E31944((v15 > 1), v10, 1);
        v12 = v31;
        v8 = v34;
      }

      *(v8 + 16) = v10;
      v17 = v8 + v11;
      *(v17 + 32) = v13;
      *(v17 + 40) = v12;
      *(v17 + 64) = 0;
      *(v17 + 72) = 0;
      v11 += 48;
      *(v17 + 56) = 0xE700000000000000;
      --v6;
    }

    while (v6);
    rawValue = v32;
    v18 = v33;
    goto LABEL_9;
  }

  v18 = v2;
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
    v19 = sub_1D91797AC();
    goto LABEL_10;
  }

  v19 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v34 = v19;
  sub_1D9116ED8(v8, 1, &v34);

  v20 = *(v18 + 32);
  sub_1D911506C(v34, rawValue & 1);

  v21 = *(v5 + 16);
  if (v21)
  {
    v34 = v7;
    sub_1D8E31924(0, v21, 0);
    v7 = v34;
    v22 = (v5 + 32);
    v23 = *(v34 + 16);
    v24 = 16 * v23;
    do
    {
      v26 = *v22++;
      v25 = v26;
      v34 = v7;
      v27 = *(v7 + 24);
      v16 = v23++ >= v27 >> 1;
      if (v16)
      {
        sub_1D8E31924((v27 > 1), v23, 1);
        v7 = v34;
      }

      *(v7 + 16) = v23;
      v28 = v7 + v24;
      *(v28 + 32) = v25;
      *(v28 + 40) = 1;
      v24 += 16;
      --v21;
    }

    while (v21);
    v18 = v33;
    goto LABEL_17;
  }

  if (*(v7 + 16))
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
    v29 = sub_1D91797AC();
    goto LABEL_18;
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v34 = v29;
  sub_1D91170F8(v7, 1, &v34);

  v30 = *(v18 + 16);
  sub_1D9115104(v34, rawValue & 1);
}

uint64_t sub_1D911506C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 8);
  sub_1D91177D4(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 8);
  v6 = v10;
  v7 = *(v2 + 24);
  sub_1D91778BC();
  if ((a2 & 1) == 0)
  {
    v8 = *(v3 + 32);
    v10 = v6;
    sub_1D91778BC();
  }
}

uint64_t sub_1D9115104(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 8);
  sub_1D91173A4(&v5[4], &v10);
  os_unfair_lock_unlock(v5 + 8);
  v6 = v10;
  v7 = *(v2 + 24);
  sub_1D91778BC();
  if ((a2 & 1) == 0)
  {
    v8 = *(v3 + 32);
    v10 = v6;
    sub_1D91778BC();
  }
}

char *sub_1D9115208(uint64_t *a1, uint64_t a2)
{
  v86 = a1;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD0, &unk_1D91B98B0);
  v3 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v91 = type metadata accessor for EpisodePlayState();
  v16 = *(v91 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD8, &qword_1D91B98C0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v83 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v82 = (&v72 - v25);
  v26 = a2 + 64;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a2 + 64);
  v84 = (v27 + 63) >> 6;
  v85 = (v16 + 56);
  v87 = v16;
  v30 = (v16 + 48);
  v77 = a2;

  v32 = 0;
  v74 = MEMORY[0x1E69E7CC0];
  v76 = v15;
  v78 = a2 + 64;
  v89 = (v16 + 48);
  v33 = v84;
  while (v29)
  {
    v34 = v32;
LABEL_13:
    v37 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v38 = v37 | (v34 << 6);
    v39 = *(*(v77 + 48) + 8 * v38);
    v40 = v88;
    sub_1D9117ABC(*(v77 + 56) + *(v87 + 72) * v38, v88, type metadata accessor for EpisodePlayState);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
    v42 = *(v41 + 48);
    v43 = v83;
    *v83 = v39;
    v44 = v43;
    sub_1D91179E8(v40, v43 + v42);
    (*(*(v41 - 8) + 56))(v44, 0, 1, v41);
    v30 = v89;
LABEL_14:
    v45 = v44;
    v46 = v82;
    sub_1D8D6734C(v45, v82, &qword_1ECABAAD8, &qword_1D91B98C0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {

      return v74;
    }

    v48 = *v46;
    sub_1D91179E8(v46 + *(v47 + 48), v92);
    v49 = *v86;
    v50 = *(*v86 + 16);
    v80 = v48;
    if (v50 && (v51 = sub_1D8D1AC44(v48), (v52 & 1) != 0))
    {
      sub_1D9117ABC(*(v49 + 56) + *(v87 + 72) * v51, v15, type metadata accessor for EpisodePlayState);
      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    v54 = *v85;
    v55 = v91;
    (*v85)(v15, v53, 1, v91);
    v56 = v90;
    sub_1D9117ABC(v92, v90, type metadata accessor for EpisodePlayState);
    v81 = v54;
    v54(v56, 0, 1, v55);
    v57 = *(v79 + 48);
    sub_1D9117A4C(v15, v5);
    sub_1D9117A4C(v56, &v5[v57]);
    v58 = v15;
    v59 = *v30;
    if ((*v30)(v5, 1, v55) == 1)
    {
      sub_1D8D08A50(v90, &qword_1ECAB7AE0, &qword_1D91B7E20);
      sub_1D8D08A50(v58, &qword_1ECAB7AE0, &qword_1D91B7E20);
      if (v59(&v5[v57], 1, v91) != 1)
      {
        goto LABEL_29;
      }

      v15 = v58;
      sub_1D8D08A50(v5, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v30 = v89;
    }

    else
    {
      v60 = v90;
      v61 = v75;
      sub_1D9117A4C(v5, v75);
      if (v59(&v5[v57], 1, v91) == 1)
      {
        sub_1D8D08A50(v60, &qword_1ECAB7AE0, &qword_1D91B7E20);
        sub_1D8D08A50(v76, &qword_1ECAB7AE0, &qword_1D91B7E20);
        sub_1D9117B24(v61, type metadata accessor for EpisodePlayState);
LABEL_29:
        sub_1D8D08A50(v5, &qword_1ECABAAD0, &unk_1D91B98B0);
        v30 = v89;
LABEL_30:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v74 = sub_1D8ECC958(0, *(v74 + 2) + 1, 1, v74);
        }

        v66 = v80;
        v68 = *(v74 + 2);
        v67 = *(v74 + 3);
        if (v68 >= v67 >> 1)
        {
          v74 = sub_1D8ECC958((v67 > 1), v68 + 1, 1, v74);
        }

        v69 = v74;
        *(v74 + 2) = v68 + 1;
        *&v69[8 * v68 + 32] = v66;
        v70 = v92;
        v71 = v73;
        sub_1D9117ABC(v92, v73, type metadata accessor for EpisodePlayState);
        v81(v71, 0, 1, v91);
        sub_1D8F7DA1C(v71, v66);
        result = sub_1D9117B24(v70, type metadata accessor for EpisodePlayState);
        v15 = v76;
        goto LABEL_25;
      }

      v62 = v88;
      sub_1D91179E8(&v5[v57], v88);
      v63 = _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(v61, v62);
      sub_1D9117B24(v62, type metadata accessor for EpisodePlayState);
      sub_1D8D08A50(v60, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v15 = v76;
      sub_1D8D08A50(v76, &qword_1ECAB7AE0, &qword_1D91B7E20);
      sub_1D9117B24(v61, type metadata accessor for EpisodePlayState);
      sub_1D8D08A50(v5, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v30 = v89;
      if ((v63 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    result = sub_1D9117B24(v92, type metadata accessor for EpisodePlayState);
LABEL_25:
    v26 = v78;
    v33 = v84;
  }

  if (v33 <= v32 + 1)
  {
    v35 = v32 + 1;
  }

  else
  {
    v35 = v33;
  }

  v36 = v35 - 1;
  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
      v65 = v83;
      (*(*(v64 - 8) + 56))(v83, 1, 1, v64);
      v29 = 0;
      v32 = v36;
      v44 = v65;
      goto LABEL_14;
    }

    v29 = *(v26 + 8 * v34);
    ++v32;
    if (v29)
    {
      v32 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9115ABC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = *(*(a2 + 56) + v13);
    v16 = *a1;
    if (*(*a1 + 16))
    {
      v17 = sub_1D8D1AC44(v14);
      if ((v18 & 1) != 0 && v15 == *(*(v16 + 56) + v17))
      {
        continue;
      }
    }

    v38 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1D8ECC958(0, *(v39 + 2) + 1, 1, v39);
    }

    v20 = *(v39 + 2);
    v19 = *(v39 + 3);
    if (v20 >= v19 >> 1)
    {
      v39 = sub_1D8ECC958((v19 > 1), v20 + 1, 1, v39);
    }

    *(v39 + 2) = v20 + 1;
    *&v39[8 * v20 + 32] = v14;
    v21 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *a1;
    v24 = sub_1D8D1AC44(v14);
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_29;
    }

    if (v23[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v24;
        v34 = v25;
        sub_1D8F8635C();
        v25 = v34;
        v24 = v37;
      }
    }

    else
    {
      v36 = v25;
      sub_1D900AD3C(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D8D1AC44(v14);
      v31 = v30 & 1;
      v25 = v36;
      if ((v36 & 1) != v31)
      {
        goto LABEL_31;
      }
    }

    v3 = v38;
    if (v25)
    {
      *(v23[7] + v24) = v15;
    }

    else
    {
      v23[(v24 >> 6) + 8] |= 1 << v24;
      *(v23[6] + 8 * v24) = v14;
      *(v23[7] + v24) = v15;
      v32 = v23[2];
      v28 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v23[2] = v33;
    }

    *a1 = v23;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v39;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D9115D58(uint64_t *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v68 = v6;
  v69 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v7 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = (*(a2 + 56) + 40 * v13);
    v16 = *v15;
    v17 = v15[2];
    v18 = v15[3];
    v76 = v15[4];
    v77 = v15[1];
    v19 = *a1;
    v78 = v17;
    v70 = v14;
    if (!*(*a1 + 16))
    {
      v24 = 0;
      v23 = 0;
LABEL_37:
      v71 = v16;
      sub_1D8D1C3BC(v16, v77, v17);
      sub_1D8D1C3BC(v16, v77, v78);
      sub_1D8D1C3BC(v16, v77, v78);
      sub_1D9117394(v23, v24, 3uLL);
      sub_1D9117394(v16, v77, v78);
      v6 = v68;
      goto LABEL_45;
    }

    v20 = sub_1D8D1AC44(v14);
    if ((v21 & 1) == 0)
    {
      v24 = 0;
      v23 = 0;
      v17 = v78;
      goto LABEL_37;
    }

    v22 = (*(v19 + 56) + 40 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v74 = v22[3];
    v75 = v22[4];
    sub_1D8D1C3BC(*v22, v24, v25);
    if (v25 > 1)
    {
      v17 = v78;
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (v78 != 2)
      {
        sub_1D8D1C3BC(v16, v77, v78);
        v71 = v16;
        v6 = v68;
        sub_1D8D1C3BC(v16, v77, v78);
        v36 = v23;
        v37 = v24;
        v38 = 2;
        goto LABEL_44;
      }

      sub_1D8D1C3BC(v16, v77, 2uLL);
      v8 = v23;
      v9 = v24;
      v10 = 2;
LABEL_6:
      sub_1D9117394(v8, v9, v10);
    }

    else
    {
      v17 = v78;
      if (!v25)
      {
        if (!v78)
        {
          sub_1D8D1C3BC(v16, v77, 0);
          v8 = v23;
          v9 = v24;
          v10 = 0;
          goto LABEL_6;
        }

        sub_1D8D1C3BC(v16, v77, v78);
        v71 = v16;
        sub_1D8D1C3BC(v16, v77, v78);
        v36 = v23;
        v37 = v24;
        v38 = 0;
        goto LABEL_44;
      }

      if (v25 == 1)
      {
        if (v78 == 1)
        {
          sub_1D8D1C3BC(v16, v77, 1uLL);
          v8 = v23;
          v9 = v24;
          v10 = 1;
          goto LABEL_6;
        }

        sub_1D8D1C3BC(v16, v77, v78);
        v71 = v16;
        sub_1D8D1C3BC(v16, v77, v78);
        v36 = v23;
        v37 = v24;
        v38 = 1;
        goto LABEL_44;
      }

LABEL_23:
      v71 = v16;
      if (v17 < 3)
      {
        sub_1D8D1C3BC(v16, v77, v17);
        v39 = v16;
        v40 = v77;
        v41 = v78;
        goto LABEL_43;
      }

      if ((v23 ^ v16))
      {
        v42 = v17;
        sub_1D8D1C3BC(v16, v77, v17);
        v39 = v16;
        v40 = v77;
        v41 = v42;
        v6 = v68;
LABEL_43:
        sub_1D8D1C3BC(v39, v40, v41);
        v36 = v23;
        v37 = v24;
        v38 = v25;
LABEL_44:
        sub_1D9117394(v36, v37, v38);
        goto LABEL_45;
      }

      if (v24 == v77 && v25 == v17)
      {
        v32 = v76;
        sub_1D8D1C3BC(v16, v77, v17);
        sub_1D8D1C3BC(v16, v77, v78);
        v35 = v23;
        v34 = v74;
        v33 = v75;
        sub_1D9117394(v35, v77, v78);
      }

      else
      {
        v27 = v17;
        v67 = sub_1D9179ACC();
        sub_1D8D1C3BC(v16, v77, v27);
        v28 = v27;
        v6 = v68;
        sub_1D8D1C3BC(v16, v77, v28);
        v29 = v23;
        v30 = v24;
        v31 = v25;
        v32 = v76;
        v34 = v74;
        v33 = v75;
        sub_1D9117394(v29, v30, v31);
        if ((v67 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (((v18 ^ v34) & 1) != 0 || v33 != v32)
      {
LABEL_45:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1D8ECC958(0, *(v69 + 2) + 1, 1, v69);
        }

        v44 = *(v69 + 2);
        v43 = *(v69 + 3);
        if (v44 >= v43 >> 1)
        {
          v69 = sub_1D8ECC958((v43 > 1), v44 + 1, 1, v69);
        }

        *(v69 + 2) = v44 + 1;
        *&v69[8 * v44 + 32] = v70;
        v45 = *a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = *a1;
        v48 = sub_1D8D1AC44(v70);
        v50 = v47[2];
        v51 = (v49 & 1) == 0;
        v52 = __OFADD__(v50, v51);
        v53 = v50 + v51;
        if (v52)
        {
          goto LABEL_62;
        }

        v54 = v49;
        if (v47[3] >= v53)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v65 = v48;
            sub_1D8F85DE4();
            v48 = v65;
          }
        }

        else
        {
          sub_1D8D1AD94(v53, isUniquelyReferenced_nonNull_native);
          v48 = sub_1D8D1AC44(v70);
          if ((v54 & 1) != (v55 & 1))
          {
            goto LABEL_64;
          }
        }

        if (v54)
        {
          v56 = (v47[7] + 40 * v48);
          v57 = *v56;
          v58 = v56[1];
          v59 = v56[2];
          v60 = v56[3];
          v61 = v56[4];
          *v56 = v71;
          v56[1] = v77;
          v56[2] = v78;
          v56[3] = v18;
          v56[4] = v76;
          sub_1D8D1D59C(v57, v58, v59);
          v6 = v68;
          sub_1D8D1D59C(v71, v77, v78);
        }

        else
        {
          v47[(v48 >> 6) + 8] |= 1 << v48;
          *(v47[6] + 8 * v48) = v70;
          v62 = (v47[7] + 40 * v48);
          *v62 = v71;
          v62[1] = v77;
          v62[2] = v78;
          v62[3] = v18;
          v62[4] = v76;
          sub_1D8D1D59C(v71, v77, v78);
          v63 = v47[2];
          v52 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v52)
          {
            goto LABEL_63;
          }

          v47[2] = v64;
        }

        *a1 = v47;
      }

      else
      {
        sub_1D8D1D59C(v16, v77, v78);
        sub_1D8D1D59C(v16, v77, v78);
      }
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v69;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D9116494(uint64_t *a1, uint64_t a2)
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = *a1;

  v6 = sub_1D8FC14F0(v5);
  v7 = sub_1D90AB358(a2, v6);
  sub_1D8E304F0(v7);
  v8 = sub_1D9117654(a2, sub_1D9117408);
  sub_1D8E304D8(v8);
  v9 = *a1;

  *a1 = a2;
  return v11;
}

uint64_t sub_1D911654C(uint64_t *a1, uint64_t a2)
{
  v11 = MEMORY[0x1E69E7CC0];
  v4 = *a1;

  v6 = sub_1D8FC14F0(v5);
  v7 = sub_1D90AB358(a2, v6);
  sub_1D8E304F0(v7);
  v8 = sub_1D911783C(a2, sub_1D9117800);
  sub_1D8E304D8(v8);
  v9 = *a1;

  *a1 = a2;
  return v11;
}

uint64_t sub_1D9116604(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) && (v5 = sub_1D8D1AC44(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + v5) ^ a2;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1D9116650(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *a3;
  if (*(*a3 + 16) && (v10 = sub_1D8D1AC44(a1), (v11 & 1) != 0))
  {
    v21 = v4;
    v12 = (*(v9 + 56) + 40 * v10);
    v14 = *v12;
    v13 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    sub_1D8D1C3BC(*v12, v13, v15);
    if (v15 != 3)
    {
      v22[0] = v14;
      v22[1] = v13;
      v22[2] = v15;
      v22[3] = v16;
      v22[4] = v17;
      v20 = _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(v22, a2);
      sub_1D9117394(v14, v13, v15);
      v18 = !v20;
      return v18 & 1;
    }

    v4 = v21;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  sub_1D8D19AA0(a2, v22);
  sub_1D9117394(v14, v13, 3uLL);
  sub_1D9117394(v4, v5, v6);
  v18 = 1;
  return v18 & 1;
}

void *sub_1D911678C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
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

    v8 = sub_1D9117C74(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D911681C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    v8 = sub_1D9116BFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D91168A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
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

    v8 = sub_1D9117514(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D9116934(uint64_t a1, uint64_t *a2)
{
  v31 = a2;
  v3 = a1;
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v28 = v5;
    v29 = v2;
    v27 = &v27;
    MEMORY[0x1EEE9AC00](a1);
    v30 = &v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v6);
    v32 = 0;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v5 = v9 & *(v3 + 56);
    v10 = (v8 + 63) >> 6;
    while (v5)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_13:
      v14 = v11 | (v7 << 6);
      v15 = *v31;
      if (*(*v31 + 16) && (v16 = *(*(v3 + 48) + 8 * v14), v17 = *(v15 + 40), sub_1D9179DBC(), MEMORY[0x1DA72B3C0](v16), v18 = sub_1D9179E1C(), v19 = -1 << *(v15 + 32), v20 = v18 & ~v19, ((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
      {
        v21 = ~v19;
        while (*(*(v15 + 48) + 8 * v20) != v16)
        {
          v20 = (v20 + 1) & v21;
          if (((*(v15 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        *&v30[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_21:
          result = sub_1D90A89E0(v30, v28, v32, v3);
          goto LABEL_22;
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        goto LABEL_21;
      }

      v13 = *(v3 + 56 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v5 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_1D911681C(v25, v5, v3, v31);

  MEMORY[0x1DA72CB90](v25, -1, -1);
  result = v26;
LABEL_22:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9116BFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *a4;
    if (*(*a4 + 16) && (v16 = *(*(a3 + 48) + 8 * v14), v17 = *(v15 + 40), sub_1D9179DBC(), MEMORY[0x1DA72B3C0](v16), result = sub_1D9179E1C(), v18 = -1 << *(v15 + 32), v19 = result & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      while (*(*(v15 + 48) + 8 * v19) != v16)
      {
        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_20:

        return sub_1D90A89E0(v23, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9116DB8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 4);
  v4 = sub_1D911783C(*a1, sub_1D9117C24);
  v5 = sub_1D9111934(v4);

  *a3 = v5;
  return result;
}

uint64_t sub_1D9116ED8(uint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40);
    while (1)
    {
      v44 = a2;
      v42 = v4;
      v43 = v3;
      v18 = *v4;
      v20 = v4[1];
      v19 = v4[2];
      v22 = v4[3];
      v21 = v4[4];
      v23 = *a3;
      v45 = *(v4 - 1);
      v24 = sub_1D8D1AC44(v45);
      v26 = v23[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      v30 = v25;
      v31 = v23[3];
      v39 = v18;
      v40 = v20;
      v41 = v19;
      result = sub_1D8D1C3BC(v18, v20, v19);
      if (v31 >= v28)
      {
        if ((v44 & 1) == 0)
        {
          result = sub_1D8F85DE4();
        }
      }

      else
      {
        sub_1D8D1AD94(v28, v44 & 1);
        v32 = *a3;
        result = sub_1D8D1AC44(v45);
        if ((v30 & 1) != (v33 & 1))
        {
          goto LABEL_17;
        }

        v29 = result;
      }

      v34 = *a3;
      if (v30)
      {
        v5 = 40 * v29;
        v6 = (v34[7] + 40 * v29);
        v8 = *v6;
        v7 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        v11 = v6[4];
        sub_1D8D1C3BC(*v6, v7, v9);
        sub_1D8D1D59C(v39, v40, v41);
        v12 = (v34[7] + v5);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        v16 = v12[3];
        v17 = v12[4];
        *v12 = v8;
        v12[1] = v7;
        v12[2] = v9;
        v12[3] = v10;
        v12[4] = v11;
        result = sub_1D8D1D59C(v13, v14, v15);
      }

      else
      {
        v34[(v29 >> 6) + 8] |= 1 << v29;
        *(v34[6] + 8 * v29) = v45;
        v35 = (v34[7] + 40 * v29);
        *v35 = v18;
        v35[1] = v20;
        v35[2] = v41;
        v35[3] = v22;
        v35[4] = v21;
        v36 = v34[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_16;
        }

        v34[2] = v38;
      }

      v4 = v42 + 6;
      a2 = 1;
      v3 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D91170F8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;
  result = sub_1D8D1AC44(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1D900AD3C(v14, v5 & 1);
    v16 = *a3;
    result = sub_1D8D1AC44(v7);
    if ((v15 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = v7;
    *(v18[7] + result) = v8;
    v20 = v18[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v21;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v19 = result;
  sub_1D8F8635C();
  result = v19;
  v18 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v18[7] + result) = *(v18[7] + result);
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v22 = *a3;
      result = sub_1D8D1AC44(v6);
      v24 = v22[2];
      v25 = (v23 & 1) == 0;
      v13 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v23;
      if (v22[3] < v26)
      {
        sub_1D900AD3C(v26, 1);
        v27 = *a3;
        result = sub_1D8D1AC44(v6);
        if ((v7 & 1) != (v28 & 1))
        {
          goto LABEL_5;
        }
      }

      v29 = *a3;
      if (v7)
      {
        *(v29[7] + result) = *(v29[7] + result);
      }

      else
      {
        v29[(result >> 6) + 8] |= 1 << result;
        *(v29[6] + 8 * result) = v6;
        *(v29[7] + result) = v8;
        v30 = v29[2];
        v13 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v29[2] = v31;
      }

      v5 += 16;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D9117394(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 != 3)
  {
    return sub_1D8D1D59C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D91173D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_1D9117414(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 2);
  switch(v3)
  {
    case 2:
      return *(a2 + 2) == 2;
    case 1:
      return *(a2 + 2) == 1;
    case 0:
      return !*(a2 + 2);
  }

  v5 = *(a2 + 2);
  if (v5 < 3)
  {
    return 0;
  }

  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = a2[24];
  v9 = *(a2 + 4);
  if (*(a1 + 1) == *(a2 + 1) && v3 == v5)
  {
    if ((v6 ^ v8))
    {
      return 0;
    }

    return v7 == v9;
  }

  v10 = *(a1 + 1);
  v11 = sub_1D9179ACC();
  result = 0;
  if ((v11 & 1) != 0 && ((v6 ^ v8) & 1) == 0)
  {
    return v7 == v9;
  }

  return result;
}

uint64_t sub_1D9117514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
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
    v21 = *(*(a3 + 56) + v16);
    result = a4(v17, &v21);
    if (result)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1D8F11C20(v20, a2, v6, a3);
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
      return sub_1D8F11C20(v20, a2, v6, a3);
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

uint64_t sub_1D9117654(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
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
    result = sub_1D9117514(v8, v6, v4, a2);
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
  v12 = sub_1D91168A4(v11, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D9117800(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = *(a2 + 32);
  return sub_1D9116650(a1, v6, v3) & 1;
}

uint64_t sub_1D911783C(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
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
    result = sub_1D9117C74(v8, v6, v4, a2);
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
  v12 = sub_1D911678C(v11, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D91179E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9117A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9117ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9117B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D9117BB0(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D9117BC4(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_1D9117C0C(id result, char a2)
{
  if (a2)
  {
    return sub_1D9117BB0(result);
  }

  else
  {
  }
}

void sub_1D9117C18(id a1, char a2)
{
  if (a2)
  {
    sub_1D9117BC4(a1);
  }

  else
  {
  }
}

BOOL sub_1D9117C24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v8 = *(a2 + 32);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  return sub_1D9117414(v7, v9);
}

uint64_t sub_1D9117C74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v24 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v4 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v25 = v12;
    v14 = (*(a3 + 56) + 40 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = v14[4];
    v28[0] = v16;
    v28[1] = v15;
    v28[2] = v17;
    v28[3] = v18;
    v28[4] = v19;
    sub_1D8D1C3BC(v16, v15, v17);
    LOBYTE(v13) = a4(v13, v28);
    result = sub_1D8D1D59C(v16, v15, v17);
    v7 = v29;
    if (v13)
    {
      *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1D8F119C4(v22, a2, v23, a3);
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return sub_1D8F119C4(v22, a2, v23, a3);
    }

    v11 = *(v24 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t InMemoryStateStore.allAdamIDs<>(forConsolidatedState:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v5[2] = *(*v1 + 80);
  v5[3] = *(v2 + 88);
  v5[4] = a1;
  type metadata accessor for InMemoryStateCache();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D8D056BC(sub_1D9118758, v5, v3);
  return v5[7];
}

Swift::Void __swiftcall InMemoryStateStore.register(remoteStates:)(Swift::OpaquePointer remoteStates)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  rawValue = remoteStates._rawValue;
  v6 = *(v4 + 80);
  sub_1D8D4D2D8();
  v7 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isNotEmpty.getter())
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB77F8);
    swift_bridgeObjectRetain_n();
    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      rawValue = v36;
      *v12 = 136315394;
      v13 = sub_1D9179FEC();
      v35 = v11;
      v15 = sub_1D8CFA924(v13, v14, &rawValue);

      v34 = &v34;
      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v37 = remoteStates._rawValue;
      MEMORY[0x1EEE9AC00](v16);
      v17 = *(v5 + 88);
      v32 = v6;
      v33 = v17;
      v18 = v7;
      v19 = MEMORY[0x1E69E6158];
      v21 = sub_1D8D175AC(sub_1D911A65C, v31, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

      v22 = MEMORY[0x1DA729BD0](v21, v19);
      v24 = v23;

      v25 = sub_1D8CFA924(v22, v24, &rawValue);

      *(v12 + 14) = v25;
      _os_log_impl(&dword_1D8CEC000, v10, v35, "[%s] Registering remote states: %s", v12, 0x16u);
      v26 = v36;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v26, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    else
    {

      v27 = swift_bridgeObjectRelease_n();
      v17 = *(v5 + 88);
    }

    v28 = v2[2];
    MEMORY[0x1EEE9AC00](v27);
    v31[0] = v6;
    v31[1] = v17;
    v32 = remoteStates._rawValue;
    type metadata accessor for InMemoryStateCache();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    sub_1D8D056BC(sub_1D9119458, &v30, v28);
    v29 = v2[3];
    sub_1D91778BC();
  }
}

Swift::Void __swiftcall InMemoryStateStore.overrideAllState(withSnapshot:isInitialFetch:)(Swift::OpaquePointer withSnapshot, Swift::Bool isInitialFetch)
{
  v3 = v2;
  v5 = *v2;
  v6 = v2[2];
  v10[2] = *(v5 + 80);
  v10[3] = *(v5 + 88);
  v10[4] = withSnapshot._rawValue;
  type metadata accessor for InMemoryStateCache();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D8D056BC(sub_1D911A67C, v10, v6);
  v7 = v11;
  v8 = v3[3];
  sub_1D91778BC();
  if (!isInitialFetch)
  {
    v9 = v3[4];
    v11 = v7;
    sub_1D91778BC();
  }
}

uint64_t InMemoryStateStore.__allocating_init()()
{
  v0 = swift_allocObject();
  InMemoryStateStore.init()();
  return v0;
}

void *InMemoryStateStore.init()()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  sub_1D9111718(*(*v0 + 80));
  type metadata accessor for InMemoryStateCache();
  v3 = sub_1D8D0790C();

  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v1[3] = sub_1D91778DC();
  v7 = *(v4 + 48);
  v8 = *(v4 + 52);
  swift_allocObject();
  v1[4] = sub_1D91778DC();
  return v1;
}

void *InMemoryStateStore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t InMemoryStateStore.__deallocating_deinit()
{
  InMemoryStateStore.deinit();

  return swift_deallocClassInstance();
}

void InMemoryStateStore.state(for:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v4[2] = *(*v1 + 80);
  v4[3] = *(v2 + 88);
  v4[4] = a1;
  type metadata accessor for InMemoryStateCache();
  sub_1D91791BC();
  sub_1D8D056BC(sub_1D911A69C, v4, v3);
}

uint64_t sub_1D9118600@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v16 = a3;
  v17 = a4;
  v18 = a2;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = sub_1D911A83C;
  v14[9] = &v15;
  sub_1D8D4D2D8();

  v19 = sub_1D91780BC();
  v14[2] = a3;
  v14[3] = a4;
  v9 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1D8D175AC(sub_1D911A870, v14, v9, &type metadata for AdamID, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

  *a5 = v12;
  return result;
}

uint64_t sub_1D9118778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v14 - v9;
  (*(v11 + 16))(&v14 - v9, a1, TupleTypeMetadata2, v8);
  v12 = *(TupleTypeMetadata2 + 48);
  *a3 = *v10;
  return (*(*(a2 - 8) + 8))(&v10[v12], a2);
}

uint64_t sub_1D91188A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  sub_1D8E40A10();
  v3 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v3);

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  result = sub_1D9179A8C();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1D9118978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v102 = a4;
  v122 = a1;
  v99 = a5;
  v7 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v132 = *(TupleTypeMetadata2 - 8);
  v8 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v133 = &v97 - v9;
  v136 = v7;
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v97 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v97 - v20;
  v22 = *(a3 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v123 = &v97 - v27;
  v28 = swift_getTupleTypeMetadata2();
  v119 = sub_1D91791BC();
  v29 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v31 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v118 = &v97 - v34;
  v35 = a2 + 64;
  v36 = a2;
  v37 = 1 << *(a2 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(a2 + 64);
  v130 = (v22 + 16);
  v135 = (v22 + 32);
  v116 = (v33 + 32);
  v117 = v28 - 8;
  v120 = (v37 + 63) >> 6;
  v121 = (v22 + 56);
  v40 = (v10 + 16);
  v108 = (v22 + 48);
  v105 = v22;
  v114 = (v22 + 8);
  v107 = (v10 + 8);
  v41 = a3;
  v98 = (v132 + 8);
  v106 = v36;

  v43 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  v125 = v21;
  v126 = v18;
  v128 = v31;
  v129 = v28;
  v109 = v35;
  v127 = v40;
  v104 = v41;
LABEL_4:
  v44 = v120;
  while (v39)
  {
    v51 = v43;
LABEL_18:
    v54 = __clz(__rbit64(v39));
    v55 = (v39 - 1) & v39;
    v56 = v54 | (v51 << 6);
    v57 = *(*(v106 + 48) + 8 * v56);
    v58 = v105;
    v59 = v123;
    (*(v105 + 16))(v123, *(v106 + 56) + *(v105 + 72) * v56, v41);
    v31 = v128;
    v28 = v129;
    v60 = *(v129 + 48);
    *v128 = v57;
    (*(v58 + 32))(&v31[v60], v59, v41);
    v61 = 0;
    v40 = v127;
LABEL_19:
    v62 = *(v28 - 8);
    (*(v62 + 56))(v31, v61, 1, v28);
    v63 = v118;
    (*v116)();
    if ((*(v62 + 48))(v63, 1, v28) == 1)
    {

      *v99 = v101;
      return result;
    }

    v131 = v55;
    v64 = v40;
    v65 = *v63;
    v66 = v134;
    v67 = v63 + *(v28 + 48);
    v124 = *v135;
    v124(v134, v67, v41);
    v68 = v41;
    v69 = *v122;
    v110 = v65;
    v137 = v65;
    v70 = sub_1D8D4D2D8();
    v71 = v125;
    v113 = v70;
    sub_1D91780FC();
    v72 = v126;
    v111 = *v130;
    v111(v126, v66, v68);
    v112 = *v121;
    v112(v72, 0, 1, v68);
    v73 = *(TupleTypeMetadata2 + 48);
    v74 = *v64;
    v49 = v133;
    v75 = v136;
    (*v64)(v133, v71, v136);
    v132 = v73;
    v76 = &v49[v73];
    v77 = v68;
    v74(v76, v72, v75);
    v78 = v71;
    v79 = *v108;
    if ((*v108)(v49, 1, v68) == 1)
    {
      v45 = *v107;
      v46 = v136;
      (*v107)(v72, v136);
      v45(v78, v46);
      v47 = v79(&v133[v132], 1, v68);
      v48 = v46;
      v49 = v133;
      v39 = v131;
      if (v47 != 1)
      {
        goto LABEL_26;
      }

      v41 = v77;
      v45(v133, v48);
      v50 = *v114;
    }

    else
    {
      v80 = v103;
      v74(v103, v49, v136);
      v81 = v132;
      if (v79(&v49[v132], 1, v68) == 1)
      {
        v88 = *v107;
        v89 = v136;
        (*v107)(v126, v136);
        v88(v125, v89);
        (*v114)(v80, v68);
        v39 = v131;
LABEL_26:
        (*v98)(v49, TupleTypeMetadata2);
LABEL_27:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v128;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v101 = sub_1D8ECC958(0, *(v101 + 2) + 1, 1, v101);
        }

        v28 = v129;
        v91 = v110;
        v93 = *(v101 + 2);
        v92 = *(v101 + 3);
        if (v93 >= v92 >> 1)
        {
          v101 = sub_1D8ECC958((v92 > 1), v93 + 1, 1, v101);
        }

        v94 = v101;
        *(v101 + 2) = v93 + 1;
        *&v94[8 * v93 + 32] = v91;
        v95 = v100;
        v96 = v104;
        v111(v100, v134, v104);
        v112(v95, 0, 1, v96);
        v137 = v91;
        sub_1D91780DC();
        sub_1D917810C();
        v41 = v96;
        result = (*v114)(v134, v96);
        v35 = v109;
        v40 = v127;
        goto LABEL_4;
      }

      v82 = &v49[v81];
      v83 = v123;
      v124(v123, v82, v68);
      LODWORD(v132) = sub_1D91781BC();
      v84 = v80;
      v50 = *v114;
      (*v114)(v83, v77);
      v85 = *v107;
      v86 = v49;
      v87 = v136;
      (*v107)(v126, v136);
      v85(v125, v87);
      v50(v84, v77);
      v85(v86, v87);
      v39 = v131;
      if ((v132 & 1) == 0)
      {
        goto LABEL_27;
      }

      v41 = v104;
    }

    v31 = v128;
    result = v50(v134, v41);
    v28 = v129;
    v35 = v109;
    v44 = v120;
    v40 = v127;
  }

  if (v44 <= v43 + 1)
  {
    v52 = v43 + 1;
  }

  else
  {
    v52 = v44;
  }

  v53 = v52 - 1;
  while (1)
  {
    v51 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v51 >= v44)
    {
      v55 = 0;
      v61 = 1;
      v43 = v53;
      goto LABEL_19;
    }

    v39 = *(v35 + 8 * v51);
    ++v43;
    if (v39)
    {
      v43 = v51;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t InMemoryStateStore.registerInFlightStateChangeRequest(for:to:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6 = *v3;
  v9[2] = *(*v3 + 80);
  v9[3] = *(v6 + 88);
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = a3;
  type metadata accessor for InMemoryStateCache();
  sub_1D8D056BC(sub_1D911A6D4, v9, v5);
  v7 = v3[3];
  v9[8] = a1;
  return sub_1D91778BC();
}

void sub_1D9119538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = (a2 + 32);
    v8 = type metadata accessor for InMemoryStateCache();
    do
    {
      v9 = *v7++;
      sub_1D9111370(v9, a3, a4, v8);
      --v4;
    }

    while (v4);
  }
}

uint64_t InMemoryStateStore.didSucceedInFlightRequest(for:requestID:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[2];
  v8[2] = *(*v2 + 80);
  v8[3] = *(v4 + 88);
  v8[4] = a1;
  v8[5] = a2;
  type metadata accessor for InMemoryStateCache();
  sub_1D8D056BC(sub_1D911A6F8, v8, v5);
  v6 = v2[4];
  v8[6] = a1;
  return sub_1D91778BC();
}

void sub_1D9119678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v53 = a5;
  v8 = sub_1D91791BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v40 - v10;
  sub_1D9176EAC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v47 = &v40 - v14;
  v15 = *(a4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (v20)
  {
    v46 = v18;
    v21 = sub_1D91786FC();
    sub_1D8D4D2D8();
    v44 = (v12 + 8);
    v45 = (v15 + 16);
    v42 = (v15 + 8);
    v43 = (v15 + 56);
    v22 = &type metadata for AdamID;
    v23 = (a2 + 32);
    v50 = v21;
    v51 = a1;
    v41 = a4;
    do
    {
      v25 = *v23++;
      v24 = v25;
      v26 = *(a1 + 8);
      v60 = v25;
      v27 = sub_1D91780FC();
      if (v57)
      {
        v54 = v24;
        v28 = v22;
        v60 = v57;
        v59 = v57;
        MEMORY[0x1EEE9AC00](v27);
        v29 = v52;
        v30 = v53;
        *(&v40 - 4) = a4;
        *(&v40 - 3) = v30;
        *(&v40 - 2) = v29;

        swift_getWitnessTable();
        v31 = v56;
        sub_1D9178BCC();
        v56 = v31;

        if (v58)
        {

          a1 = v51;
        }

        else
        {
          v49 = v23;
          v32 = v57;
          v34 = v46;
          v33 = v47;
          sub_1D917872C();
          v35 = *v45;
          (*v45)(v55, &v33[*(v34 + 48)], a4);
          v36 = v33;
          v37 = v55;
          (*v44)(v36, v34);
          v38 = v48;
          v35(v48, v37, a4);
          (*v43)(v38, 0, 1, a4);
          v39 = v54;
          v57 = v54;
          sub_1D91780DC();
          a1 = v51;
          sub_1D917810C();
          if (v32 < 0)
          {
            __break(1u);
            return;
          }

          v57 = 0;
          v58 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB68, &qword_1D91B9938);
          swift_getWitnessTable();
          sub_1D8CF48EC(&qword_1ECABAB70, &qword_1ECABAB68, &qword_1D91B9938);
          sub_1D9178C1C();
          v57 = v60;
          v59 = v39;
          sub_1D91780DC();

          sub_1D917810C();
          a4 = v41;
          (*v42)(v55, v41);

          v23 = v49;
        }

        v22 = v28;
      }

      --v20;
    }

    while (v20);
  }
}

void InMemoryStateStore.didFailInFlightRequest(for:requestID:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[2];
  v5[2] = *(*v2 + 80);
  v5[3] = *(v3 + 88);
  v5[4] = a1;
  v5[5] = a2;
  type metadata accessor for InMemoryStateCache();
  sub_1D8D056BC(sub_1D911A718, v5, v4);
}

void sub_1D9119BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a5;
  v8 = sub_1D9176EAC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v27 = v24 - v12;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 32);
    v25 = v11;
    sub_1D91786FC();
    v15 = sub_1D8D4D2D8();
    v30 = a4;
    v26 = v8;
    v24[0] = v8 - 8;
    v24[1] = a4 - 8;
    v28 = v15;
    v29 = a1;
    do
    {
      v18 = *v14++;
      v17 = v18;
      v19 = *(a1 + 8);
      v37 = v18;
      v20 = sub_1D91780FC();
      if (v35)
      {
        v33 = v14;
        v34 = v35;
        v37 = v35;
        MEMORY[0x1EEE9AC00](v20);
        v21 = v30;
        v22 = v31;
        v23 = v32;
        v24[-4] = v30;
        v24[-3] = v23;
        v24[-2] = v22;

        swift_getWitnessTable();
        sub_1D9178BCC();

        if (v36)
        {

          a1 = v29;
        }

        else
        {
          v16 = v27;
          sub_1D91786CC();
          (*(*(v21 - 8) + 8))(&v16[*(v25 + 48)], v21);
          (*(*(v26 - 8) + 8))(v16);
          v34 = v17;
          v35 = v37;
          sub_1D91780DC();
          a1 = v29;
          sub_1D917810C();
        }

        v14 = v33;
      }

      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1D9119EBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v20 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  v7 = *a1;
  v8 = sub_1D8D4D2D8();
  nullsub_1(v7, &type metadata for AdamID, a3, v8);
  v9 = sub_1D917809C();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_1D9178B5C();
  v19 = nullsub_1(a2, &type metadata for AdamID, a3, v8);
  v19 = MEMORY[0x1DA72A090](&v19, v10, &type metadata for AdamID, v9, v8, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB78, &unk_1D91B9940);
  sub_1D8CF48EC(&qword_1ECABAB80, &qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D8CF48EC(&qword_1ECABAB88, &qword_1ECABAB78, &unk_1D91B9940);
  sub_1D9178C2C();

  v11 = sub_1D91780BC();
  v12 = nullsub_1(v11, &type metadata for AdamID, a3, v8);

  v19 = v12;
  sub_1D9178C2C();

  v13 = *a1;

  *a1 = a2;
  *a4 = v20;
  return result;
}

uint64_t sub_1D911A1A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v55 = a2;
  v8 = *(a4 - 8);
  v9 = *(v8 + 8);
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v47 - v14;
  v16 = *(v11 - 8);
  v17 = v16[8];
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v47 - v24;
  v26 = *a3;
  v56 = a1;
  sub_1D8D4D2D8();
  sub_1D91780FC();
  (*(v8 + 2))(v22, v55, a4);
  (*(v8 + 7))(v22, 0, 1, a4);
  v51 = TupleTypeMetadata2;
  v27 = *(TupleTypeMetadata2 + 48);
  v28 = v16[2];
  v28(v15, v25, v11);
  v55 = v11;
  v28(&v15[v27], v22, v11);
  v52 = v8;
  v53 = a4;
  v29 = *(v8 + 6);
  if (v29(v15, 1, a4) != 1)
  {
    v28(v54, v15, v55);
    v33 = v53;
    v34 = v29(&v15[v27], 1, v53);
    v35 = v52;
    v36 = (v52 + 8);
    if (v34 != 1)
    {
      v39 = v48;
      (*(v52 + 4))(v48, &v15[v27], v33);
      v52 = v15;
      v40 = v33;
      v41 = v54;
      v42 = sub_1D91781BC();
      v43 = *(v35 + 1);
      v43(v39, v33);
      v44 = v16[1];
      v45 = v55;
      v44(v22, v55);
      v44(v25, v45);
      v43(v41, v40);
      v44(v52, v45);
      v32 = v42 ^ 1;
      return v32 & 1;
    }

    v37 = v16[1];
    v38 = v55;
    v37(v22, v55);
    v37(v25, v38);
    (*v36)(v54, v33);
    goto LABEL_6;
  }

  v30 = v16[1];
  v31 = v55;
  v30(v22, v55);
  v30(v25, v31);
  if (v29(&v15[v27], 1, v53) != 1)
  {
LABEL_6:
    (*(v50 + 8))(v15, v51);
    v32 = 1;
    return v32 & 1;
  }

  v30(v15, v55);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1D911A65C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1D91188A0(a1, a2);
}

void sub_1D911A6D4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_1D9119538(a1, v1[4], v1[5], v1[6]);
}

uint64_t sub_1D911A804(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1) & 1;
}

uint64_t sub_1D911A83C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1D91781BC() & 1;
}

unint64_t sub_1D911A8D8()
{
  if (*v0)
  {
    result = 0x6465776F6C6C6F66;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1D911A924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D6ED0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xED000073776F6853)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D911AA14(uint64_t a1)
{
  v2 = sub_1D911ACC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D911AA50(uint64_t a1)
{
  v2 = sub_1D911ACC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibrarySnapshot.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB90, &unk_1D91B9950);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911ACC4();

  sub_1D9179F1C();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D90BF004(&qword_1ECABA3D8, sub_1D8EF1720);
  sub_1D91799FC();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABA0, &qword_1D91B9960);
    sub_1D911AD18(&qword_1ECABABA8, sub_1D911AD90);
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D911ACC4()
{
  result = qword_1ECABAB98;
  if (!qword_1ECABAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAB98);
  }

  return result;
}

uint64_t sub_1D911AD18(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABABA0, &qword_1D91B9960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D911AD90()
{
  result = qword_1ECABABB0;
  if (!qword_1ECABABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABB0);
  }

  return result;
}

uint64_t LibrarySnapshot.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABB8, &qword_1D91B9968);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911ACC4();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  v15 = 0;
  sub_1D90BF004(&qword_1ECABA450, sub_1D8EF1774);
  sub_1D91798FC();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABA0, &qword_1D91B9960);
  v15 = 1;
  sub_1D911AD18(&qword_1ECABABC0, sub_1D911B074);
  sub_1D91798FC();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D911B074()
{
  result = qword_1ECABABC8;
  if (!qword_1ECABABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABC8);
  }

  return result;
}

uint64_t LibrarySnapshotFollowedShow.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t LibrarySnapshotFollowedShow.artistName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t LibrarySnapshotFollowedShow.init(adamId:name:artistName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1D911B170()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x614E747369747261;
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

uint64_t sub_1D911B1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D911B9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D911B1EC(uint64_t a1)
{
  v2 = sub_1D911B438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D911B228(uint64_t a1)
{
  v2 = sub_1D911B438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibrarySnapshotFollowedShow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABD0, &qword_1D91B9970);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[3] = v1[2];
  v14[4] = v9;
  v14[1] = v1[4];
  v14[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911B438();
  sub_1D9179F1C();
  v18 = v10;
  v17 = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  sub_1D91799BC();
  v15 = 2;
  sub_1D91799BC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D911B438()
{
  result = qword_1ECABABD8;
  if (!qword_1ECABABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABD8);
  }

  return result;
}

uint64_t LibrarySnapshotFollowedShow.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABE0, &qword_1D91B9978);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911B438();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = 0;
  sub_1D8EF1774();
  sub_1D91798FC();
  v11 = v28;
  v26 = 1;
  v12 = sub_1D91798BC();
  v14 = v13;
  v24 = v12;
  v25 = 2;
  v15 = sub_1D91798BC();
  v17 = v16;
  v18 = *(v6 + 8);
  v23 = v15;
  v18(v9, v5);
  v19 = v23;
  v20 = v24;
  *a2 = v11;
  a2[1] = v20;
  a2[2] = v14;
  a2[3] = v19;
  a2[4] = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D911B710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D911B758(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D911B7D4()
{
  result = qword_1ECABABE8;
  if (!qword_1ECABABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABE8);
  }

  return result;
}

unint64_t sub_1D911B82C()
{
  result = qword_1ECABABF0;
  if (!qword_1ECABABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABF0);
  }

  return result;
}

unint64_t sub_1D911B884()
{
  result = qword_1ECABABF8;
  if (!qword_1ECABABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABF8);
  }

  return result;
}

unint64_t sub_1D911B8DC()
{
  result = qword_1ECABAC00;
  if (!qword_1ECABAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC00);
  }

  return result;
}

unint64_t sub_1D911B934()
{
  result = qword_1ECABAC08;
  if (!qword_1ECABAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC08);
  }

  return result;
}

unint64_t sub_1D911B98C()
{
  result = qword_1ECABAC10;
  if (!qword_1ECABAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAC10);
  }

  return result;
}

uint64_t sub_1D911B9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL)
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

uint64_t PodcastState.init(isFollowed:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 0x64696C61766E69;
  if ((result & 1) == 0)
  {
    v2 = 0;
  }

  *a2 = result & 1;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  if (result)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0;
  }

  a2[2] = v3;
  return result;
}

uint64_t sub_1D911BB94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D911C708;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D8D1F93C(v4);
}

uint64_t sub_1D911BC28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D911C6D0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1D8D1F93C(v3);
  return sub_1D8D15664(v8);
}

uint64_t InMemoryEpisodeStateDataSource.refreshControllerStates.getter()
{
  v0 = sub_1D911C5C8();
  sub_1D8D1F93C(v0);
  return v0;
}

uint64_t InMemoryEpisodeStateDataSource.refreshControllerStates.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D8D15664(v5);
}

void *InMemoryEpisodeStateDataSource.__allocating_init(inMemoryStateStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = a1;
  v2[5] = 0;

  InMemoryEpisodeStateDataSource.startObservingChanges()();

  return v2;
}

void *InMemoryEpisodeStateDataSource.init(inMemoryStateStore:)(uint64_t a1)
{
  v1 = sub_1D911C5FC(a1);

  return v1;
}

Swift::Void __swiftcall InMemoryEpisodeStateDataSource.startObservingChanges()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAC18, &unk_1D91B9CF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = v0[4];
  InMemoryStateStore.stateUpdates.getter(&v14);
  v13 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAC20, &qword_1D91B9D00);
  sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0);
  sub_1D9177B9C();

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = *(v2 + 80);
  v10[3] = *(v2 + 88);
  v10[4] = v9;
  sub_1D8CF48EC(qword_1ECABAC28, &qword_1ECABAC18, &unk_1D91B9CF0);
  v11 = sub_1D9177D9C();

  (*(v4 + 8))(v7, v3);
  v12 = v1[5];
  v1[5] = v11;
}

char *sub_1D911C0B0@<X0>(char *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E31964(0, v4, 0);
    v5 = v14;
    v6 = (v3 + 32);
    v7 = *(v14 + 16);
    v8 = 24 * v7;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v15 = v5;
      v11 = *(v5 + 24);
      v12 = v7 + 1;
      if (v7 >= v11 >> 1)
      {
        result = sub_1D8E31964((v11 > 1), v7 + 1, 1);
        v5 = v15;
      }

      *(v5 + 16) = v12;
      v13 = v5 + v8;
      *(v13 + 32) = v9;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      v8 += 24;
      v7 = v12;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D911C190(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = *(v3 + 24);
      sub_1D8D1F93C(*(v3 + 16));

      v4(v1);
      return sub_1D8D15664(v4);
    }

    else
    {
    }
  }

  return result;
}

void InMemoryEpisodeStateDataSource.state(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    v7 = *v4;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB77F8);

    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();
    sub_1D8DB5FC8(a1, a2, 1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;

      v14 = sub_1D917826C();
      v16 = sub_1D8CFA924(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Episode ID not supported on thin clients: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    (*(*(*(v7 + 80) - 8) + 56))(a4, 1, 1);
  }

  else
  {
    v17 = v4[4];
    InMemoryStateStore.state(for:)(a1);
  }
}

uint64_t *InMemoryEpisodeStateDataSource.deinit()
{
  v1 = v0[3];
  sub_1D8D15664(v0[2]);
  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t InMemoryEpisodeStateDataSource.__deallocating_deinit()
{
  InMemoryEpisodeStateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D911C4D0()
{
  v1 = *v0;
  v2 = sub_1D911C5C8();
  sub_1D8D1F93C(v2);
  return v2;
}

void (*sub_1D911C52C(uint64_t *a1))(void *a1)
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
  v4 = *v1;
  *(v3 + 32) = InMemoryEpisodeStateDataSource.refreshControllerStates.modify();
  return sub_1D90FEF80;
}

uint64_t sub_1D911C5C8()
{
  swift_beginAccess();
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void *sub_1D911C5FC(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = a1;
  v1[5] = 0;

  InMemoryEpisodeStateDataSource.startObservingChanges()();
  return v1;
}

uint64_t sub_1D911C624(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D911C190(a1);
}

uint64_t sub_1D911C6D0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1D911C708(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t InMemoryEpisodeStateModel.init(playState:bookmarkState:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1D911C7A0(a1, a3);
  result = type metadata accessor for InMemoryEpisodeStateModel();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D911C7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s18PodcastsFoundation25InMemoryEpisodeStateModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD0, &unk_1D91B98B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - v15;
  v18 = *(v17 + 56);
  sub_1D9117A4C(a1, &v25 - v15);
  sub_1D9117A4C(a2, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1D8D08A50(v16, &qword_1ECAB7AE0, &qword_1D91B7E20);
      goto LABEL_9;
    }

LABEL_6:
    sub_1D8D08A50(v16, &qword_1ECABAAD0, &unk_1D91B98B0);
    return 0;
  }

  sub_1D9117A4C(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1D8D23A60(v12);
    goto LABEL_6;
  }

  sub_1D91179E8(&v16[v18], v8);
  v21 = static EpisodePlayState.== infix(_:_:)(v12, v8);
  sub_1D8D23A60(v8);
  sub_1D8D23A60(v12);
  sub_1D8D08A50(v16, &qword_1ECAB7AE0, &qword_1D91B7E20);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v22 = *(type metadata accessor for InMemoryEpisodeStateModel() + 20);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 != 2)
  {
    return v24 != 2 && ((v24 ^ v23) & 1) == 0;
  }

  return v24 == 2;
}

uint64_t OnScreenEpisodesStateTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = sub_1D8E27CFC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB0, &qword_1D91B9E40);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t OnScreenEpisodesStateTracker.init()()
{
  v1 = sub_1D8E27CFC(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB0, &qword_1D91B9E40);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  *(v0 + 16) = v2;
  return v0;
}

void OnScreenEpisodesStateTracker.pageWillStartTrackingState(for:pageID:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D911D0F4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D911CBF8(void *a1, uint64_t a2)
{
  v22 = sub_1D9176EAC();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a1;
  v11 = v23;
  v13 = sub_1D8D93AB0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1D8F864A8();
    v11 = v23;
    goto LABEL_6;
  }

  sub_1D900AFBC(v16, isUniquelyReferenced_nonNull_native);
  v11 = v23;
  v17 = sub_1D8D93AB0(a2);
  if ((v2 & 1) != (v18 & 1))
  {
    result = sub_1D9179CFC();
    __break(1u);
    return result;
  }

  v13 = v17;
LABEL_6:
  *a1 = v11;
  if ((v2 & 1) == 0)
  {
    (*(v5 + 16))(v8, a2, v22);
    sub_1D8D940B8(v13, v8, MEMORY[0x1E69E7CC0], v11);
  }

  v19 = v11[7] + 8 * v13;

  return sub_1D8E30A08(v20);
}

void OnScreenEpisodesStateTracker.pageDidStopTrackingState(withID:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1D911D110((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1D911CE08(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1D8D93AB0(a2);
  if (v5)
  {
    v6 = v4;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v13 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F864A8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1D9176EAC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);
    v12 = *(*(v9 + 56) + 8 * v6);

    sub_1D8F7F950(v6, v9);
    *a1 = v9;
  }
}

char *OnScreenEpisodesStateTracker.allDisplayedEpisodes.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_10:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v2 + 56) + v11);
    v13 = *(v12 + 16);
    v14 = *(v9 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_24;
    }

    v16 = *(*(v2 + 56) + v11);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v15 > *(v9 + 24) >> 1)
    {
      if (v14 <= v15)
      {
        v17 = v14 + v13;
      }

      else
      {
        v17 = v14;
      }

      result = sub_1D8ECC958(result, v17, 1, v9);
      v9 = result;
    }

    v5 &= v5 - 1;
    if (*(v12 + 16))
    {
      v18 = *(v9 + 16);
      if ((*(v9 + 24) >> 1) - v18 < v13)
      {
        goto LABEL_26;
      }

      memcpy((v9 + 8 * v18 + 32), (v12 + 32), 8 * v13);

      if (v13)
      {
        v19 = *(v9 + 16);
        v20 = __OFADD__(v19, v13);
        v21 = v19 + v13;
        if (v20)
        {
          goto LABEL_27;
        }

        *(v9 + 16) = v21;
      }
    }

    else
    {

      if (v13)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      v22 = sub_1D8FC0E84(v9);

      return v22;
    }

    v5 = *(v2 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t OnScreenEpisodesStateTracker.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t OnScreenEpisodesStateTracker.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1D911D17C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB8, &qword_1D91B9F30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - v11;
  if (!*(a3 + 16) || (v13 = sub_1D8D1AC44(a1), (v14 & 1) == 0) || (v15 = *(*(a3 + 56) + 8 * v13), (v16 = *(v15 + 16)) == 0))
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v37 = sub_1D917744C();
    __swift_project_value_buffer(v37, qword_1ECAB77F8);

    v38 = sub_1D917741C();
    v39 = sub_1D9178D1C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69 = v62;
      *v40 = 136315394;
      v64 = a1;
      sub_1D8E40A10();
      v41 = sub_1D9179A4C();
      v43 = sub_1D8CFA924(v41, v42, &v69);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      v44 = *(a2 + 16);
      v63 = a1;
      if (v44 && (v45 = sub_1D8D1AC44(a1), (v46 & 1) != 0))
      {
        v47 = (*(a2 + 56) + 40 * v45);
        v48 = *v47;
        v49 = v47[1];
        v50 = v47[2];
        v51 = v47[3];
        v52 = v47[4];
        sub_1D8D1C3BC(*v47, v49, v50);
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v51 = 0;
        v52 = 0;
        v50 = 3;
      }

      v64 = v48;
      v65 = v49;
      v66 = v50;
      v67 = v51;
      v68 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACC0, qword_1D91B9F38);
      v53 = sub_1D917826C();
      v55 = sub_1D8CFA924(v53, v54, &v69);

      *(v40 + 14) = v55;
      _os_log_impl(&dword_1D8CEC000, v38, v39, "[StateCache] state for %s (consolidated) -> %s", v40, 0x16u);
      v56 = v62;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v56, -1, -1);
      MEMORY[0x1DA72CB90](v40, -1, -1);

      a1 = v63;
      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {

      if (!*(a2 + 16))
      {
        goto LABEL_20;
      }
    }

    v57 = sub_1D8D1AC44(a1);
    if (v58)
    {
      v59 = (*(a2 + 56) + 40 * v57);
      v18 = *v59;
      v19 = v59[1];
      v21 = v59[2];
      v20 = v59[3];
      v22 = v59[4];
      sub_1D8D1C3BC(*v59, v19, v21);
      goto LABEL_23;
    }

LABEL_20:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 3;
    goto LABEL_23;
  }

  sub_1D911DFC4(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * (v16 - 1), v12);
  v17 = &v12[*(v8 + 48)];
  v18 = *v17;
  v19 = v17[1];
  v21 = v17[2];
  v20 = v17[3];
  v22 = v17[4];
  v23 = sub_1D9176EAC();
  (*(*(v23 - 8) + 8))(v12, v23);
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D917744C();
  __swift_project_value_buffer(v24, qword_1ECAB77F8);
  sub_1D8D1C3BC(v18, v19, v21);
  sub_1D8D1C3BC(v18, v19, v21);
  v25 = sub_1D917741C();
  v26 = sub_1D9178D1C();
  sub_1D8D1D59C(v18, v19, v21);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v26;
    v28 = a1;
    v29 = v27;
    v62 = swift_slowAlloc();
    v69 = v62;
    *v29 = 136315394;
    v64 = v28;
    sub_1D8E40A10();
    v30 = sub_1D9179A4C();
    v32 = sub_1D8CFA924(v30, v31, &v69);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2080;
    v64 = v18;
    v65 = v19;
    v66 = v21;
    v67 = v20;
    v68 = v22;
    v33 = sub_1D917826C();
    v35 = sub_1D8CFA924(v33, v34, &v69);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1D8CEC000, v25, v61, "[StateCache] state for %s (in-flight) -> %s", v29, 0x16u);
    v36 = v62;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v29, -1, -1);
  }

  else
  {
    sub_1D8D1D59C(v18, v19, v21);
  }

LABEL_23:
  *a4 = v18;
  a4[1] = v19;
  a4[2] = v21;
  a4[3] = v20;
  a4[4] = v22;
}

uint64_t InMemoryPodcastStateDataSource.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 24);
  return result;
}

uint64_t InMemoryPodcastStateDataSource.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*InMemoryPodcastStateDataSource.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B660;
}

void *InMemoryPodcastStateDataSource.__allocating_init(inMemoryFollowStateStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[3] = 0;
  swift_unknownObjectWeakInit();
  v2[4] = a1;
  v2[5] = 0;

  InMemoryPodcastStateDataSource.startObservingChanges()();

  return v2;
}

void *InMemoryPodcastStateDataSource.init(inMemoryFollowStateStore:)(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v1[4] = a1;
  v1[5] = 0;

  InMemoryPodcastStateDataSource.startObservingChanges()();

  return v1;
}

Swift::Void __swiftcall InMemoryPodcastStateDataSource.startObservingChanges()()
{
  v1 = v0;
  v4 = *(*(v0 + 32) + 24);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  sub_1D911DADC();
  v2 = sub_1D9177D9C();

  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t sub_1D911DA0C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);

      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v1, ObjectType, v4);
      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

unint64_t sub_1D911DADC()
{
  result = qword_1ECABAA90;
  if (!qword_1ECABAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABAA88, &qword_1D91B9EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAA90);
  }

  return result;
}

double InMemoryPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_1D911D17C(a1, *(v5 + 16), *(v5 + 24), v8);
  os_unfair_lock_unlock((v5 + 32));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double InMemoryPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X8>)
{
  sub_1D911DDB4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t InMemoryPodcastStateDataSource.deinit()
{
  sub_1D8EB07F4(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t InMemoryPodcastStateDataSource.__deallocating_deinit()
{
  sub_1D8EB07F4(v0 + 16);
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D911DC6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B8D8;
}

double sub_1D911DD00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(v2 + 32) + 16);
  os_unfair_lock_lock((v5 + 32));
  sub_1D911D17C(a1, *(v5 + 16), *(v5 + 24), v8);
  os_unfair_lock_unlock((v5 + 32));
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

double sub_1D911DD70@<D0>(uint64_t a1@<X8>)
{
  sub_1D911DDB4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1D911DDB4@<X0>(void *a1@<X8>)
{
  v2 = sub_1D917744C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_1D917741C();
  v9 = sub_1D9178D0C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "We should never be handling UUIDs on a thin client", v10, 2u);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  result = (*(v3 + 8))(v6, v2);
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
  return result;
}

uint64_t sub_1D911DFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACB8, &qword_1D91B9F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  if (a5)
  {
    if (a4 > 0)
    {
      if (a3 >= 1)
      {
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1D918A530;
        v15 = MEMORY[0x1E69E7360];
        v16 = MEMORY[0x1E69E73D8];
        *(v14 + 56) = MEMORY[0x1E69E7360];
        *(v14 + 64) = v16;
        *(v14 + 32) = a4;
        *(v14 + 96) = v15;
        *(v14 + 104) = v16;
        *(v14 + 72) = a3;
        v17 = sub_1D91781DC();

        goto LABEL_18;
      }

      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v25 = swift_allocObject();
      v26 = MEMORY[0x1E69E7360];
      *(v25 + 16) = xmmword_1D9189080;
      v27 = MEMORY[0x1E69E73D8];
      *(v25 + 56) = v26;
      *(v25 + 64) = v27;
      *(v25 + 32) = a4;
LABEL_17:
      v17 = sub_1D91781DC();

LABEL_18:

      return v17;
    }

    if (a3 > 0)
    {
      if (qword_1EDCD5F00 != -1)
      {
        swift_once();
      }

      sub_1D917693C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69E7360];
      *(v18 + 16) = xmmword_1D9189080;
      v20 = MEMORY[0x1E69E73D8];
      *(v18 + 56) = v19;
      *(v18 + 64) = v20;
      *(v18 + 32) = a3;
      goto LABEL_17;
    }
  }

  sub_1D8CF6B1C(a6, &v29 - v12);
  v21 = sub_1D9176E3C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_1D8CF5EF8(v13);
    return 0;
  }

  else
  {
    v23 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v24 = [v23 verboseDisplayStringWithoutTime];

    v17 = sub_1D917820C();
    (*(v22 + 8))(v13, v21);
  }

  return v17;
}

uint64_t sub_1D911E490(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  if (![objc_opt_self() isRunningOnHomepod])
  {
    if (a3)
    {
      if (a2 > 0)
      {
        if (a1 >= 1)
        {
          if (qword_1EDCD5F00 != -1)
          {
            swift_once();
          }

          sub_1D917693C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1D918A530;
          v20 = MEMORY[0x1E69E7360];
          v21 = MEMORY[0x1E69E73D8];
          *(v19 + 56) = MEMORY[0x1E69E7360];
          *(v19 + 64) = v21;
          *(v19 + 32) = a2;
          *(v19 + 96) = v20;
          *(v19 + 104) = v21;
          *(v19 + 72) = a1;
          v22 = sub_1D91781DC();

          goto LABEL_32;
        }

        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v41 = swift_allocObject();
        v42 = MEMORY[0x1E69E7360];
        *(v41 + 16) = xmmword_1D9189080;
        v43 = MEMORY[0x1E69E73D8];
        *(v41 + 56) = v42;
        *(v41 + 64) = v43;
        *(v41 + 32) = a2;
LABEL_31:
        v22 = sub_1D91781DC();

LABEL_32:

        return v22;
      }

      if (a1 > 0)
      {
        if (qword_1EDCD5F00 != -1)
        {
          swift_once();
        }

        sub_1D917693C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
        v32 = swift_allocObject();
        v33 = MEMORY[0x1E69E7360];
        *(v32 + 16) = xmmword_1D9189080;
        v34 = MEMORY[0x1E69E73D8];
        *(v32 + 56) = v33;
        *(v32 + 64) = v34;
        *(v32 + 32) = a1;
        goto LABEL_31;
      }
    }

    sub_1D8CF6B1C(a4, v11);
    v35 = sub_1D9176E3C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v11, 1, v35) == 1)
    {
      v28 = v11;
      goto LABEL_24;
    }

    v37 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v38 = [v37 verboseDisplayStringWithoutTime];

    v31 = sub_1D917820C();
    (*(v36 + 8))(v11, v35);
    return v31;
  }

  if ((a3 & 1) == 0)
  {
LABEL_15:
    sub_1D8CF6B1C(a4, v14);
    v26 = sub_1D9176E3C();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v14, 1, v26) == 1)
    {
      v28 = v14;
LABEL_24:
      sub_1D8CF5EF8(v28);
      return 0;
    }

    v29 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v30 = [v29 verboseDisplayStringWithoutTime];

    v31 = sub_1D917820C();
    (*(v27 + 8))(v14, v26);
    return v31;
  }

  if (a2 <= 0)
  {
    if (a1 > 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E7360];
      *(v23 + 16) = xmmword_1D9189080;
      v25 = MEMORY[0x1E69E73D8];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = a1;
      return sub_1D917823C();
    }

    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v15 = swift_allocObject();
  if (a1 < 1)
  {
    v39 = MEMORY[0x1E69E7360];
    *(v15 + 16) = xmmword_1D9189080;
    v40 = MEMORY[0x1E69E73D8];
    *(v15 + 56) = v39;
    *(v15 + 64) = v40;
    *(v15 + 32) = a2;
  }

  else
  {
    *(v15 + 16) = xmmword_1D918A530;
    v16 = MEMORY[0x1E69E7360];
    v17 = MEMORY[0x1E69E73D8];
    *(v15 + 56) = MEMORY[0x1E69E7360];
    *(v15 + 64) = v17;
    *(v15 + 32) = a2;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 72) = a1;
  }

  return sub_1D917823C();
}

uint64_t EyebrowBuilder.__allocating_init(episode:context:style:explicitSymbol:showsSubscriptionBadge:hostingViewHasLimitedSpace:suppressPubDate:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
  v19 = sub_1D8DB48F4(v18, a2, a3, a4, a5, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v19;
}

PodcastsFoundation::EyebrowBuilder::Style_optional __swiftcall EyebrowBuilder.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EyebrowBuilder.Style.rawValue.getter()
{
  v1 = 0x74726F6873;
  if (*v0 != 1)
  {
    v1 = 0x6D756964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1D911ECB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x74726F6873;
  if (v2 != 1)
  {
    v4 = 0x6D756964656DLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x74726F6873;
  if (*a2 != 1)
  {
    v8 = 0x6D756964656DLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D911EDAC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D911EE48()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D911EED0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D911EF74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x74726F6873;
  if (v2 != 1)
  {
    v5 = 0x6D756964656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D911EFCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v38 = a1;
  v40 = a2;
  v39 = type metadata accessor for EpisodePlayState();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v23 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v3, v26, type metadata accessor for EyebrowBuilder.ListContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v34 = v40;
      sub_1D8D423B4(v38, v40, type metadata accessor for EpisodePlayState);
      (*(v4 + 56))(v34, 0, 1, v39);
      swift_storeEnumTagMultiPayload();
      return sub_1D8D08A50(v26, &qword_1ECAB7AE0, &qword_1D91B7E20);
    }

    if (EnumCaseMultiPayload != 4)
    {
LABEL_11:
      sub_1D8D423B4(v3, v40, type metadata accessor for EyebrowBuilder.ListContext);
      return sub_1D8D41C00(v26, type metadata accessor for EyebrowBuilder.ListContext);
    }

    v31 = v38;
    sub_1D8D423B4(v38, v13, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v13, v10, type metadata accessor for EpisodePlayState), (v10[16] & 1) == 0))
    {
      sub_1D8D41C00(v13, type metadata accessor for EpisodePlayState);
    }

    else
    {
      sub_1D8D41C00(v13, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(v31, v7, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D41C00(v7, type metadata accessor for EpisodePlayState);
        v35 = 0;
LABEL_21:
        *v40 = v35;
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D8D08A50(v7, &qword_1ECAB75C0, &unk_1D9188A50);
    }

    v35 = 1;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v33 = v38;
    sub_1D8D423B4(v38, v22, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v22, v19, type metadata accessor for EpisodePlayState), (v19[16] & 1) == 0))
    {
      sub_1D8D41C00(v22, type metadata accessor for EpisodePlayState);
    }

    else
    {
      sub_1D8D41C00(v22, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(v33, v16, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D8D41C00(v16, type metadata accessor for EpisodePlayState);
        v36 = 0;
LABEL_24:
        *v40 = v36;
        return swift_storeEnumTagMultiPayload();
      }

      sub_1D8D08A50(v16, &qword_1ECAB75C0, &unk_1D9188A50);
    }

    v36 = 1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_11;
  }

  v28 = v26[1];
  v29 = v26[2];
  v30 = v40;
  *v40 = *v26;
  v30[1] = v28;
  v30[2] = v29;
  return swift_storeEnumTagMultiPayload();
}

PodcastsFoundation::EyebrowBuilder::EpisodeHeaderSubtitleConfiguration __swiftcall EyebrowBuilder.EpisodeHeaderSubtitleConfiguration.init(viewIsRTL:showsDuration:showsEntitlement:)(Swift::Bool viewIsRTL, Swift::Bool showsDuration, Swift::Bool showsEntitlement)
{
  *v3 = viewIsRTL;
  v3[1] = showsDuration;
  v3[2] = showsEntitlement;
  result.viewIsRTL = viewIsRTL;
  return result;
}

uint64_t EyebrowBuilder.smartPlay.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t EyebrowBuilder.episodeNumber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t EyebrowBuilder.seasonNumber.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t EyebrowBuilder.pubDate.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t EyebrowBuilder.listenNowReason.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t EyebrowBuilder.remainingTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t EyebrowBuilder.explicitSymbol.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t EyebrowBuilder.captionPublisher.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v33 = _s26SynchronizedEventPublisherVMa();
  v3 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_1D9176E3C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACC8, &qword_1D91B9FA8);
  v36 = *(v38 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - v16;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACD0, &qword_1D91B9FB0);
  v35 = *(v37 - 8);
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v19 = &v33 - v18;
  v20 = v1[24];
  v21 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v20);
  (*(v21 + 104))(v20, v21);
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    sub_1D9176E2C();
    if (v22(v9, 1, v10) != 1)
    {
      sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  (*(v11 + 16))(v5, v14, v10);
  sub_1D8D5D644(&qword_1EDCD0918, _s26SynchronizedEventPublisherVMa);
  v23 = sub_1D9177B1C();
  sub_1D8D41C00(v5, _s26SynchronizedEventPublisherVMa);
  (*(v11 + 8))(v14, v10);
  v40 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACD8, &qword_1D91B9FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8CF48EC(&qword_1EDCD0BC0, &qword_1ECABACD8, &qword_1D91B9FB8);
  v24 = v34;
  sub_1D9177B9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB44F0, &qword_1D9189F90);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D9189080;
  swift_beginAccess();
  v26 = v1[3];
  *(v25 + 32) = v2[2];
  *(v25 + 40) = v26;
  sub_1D8CF48EC(&unk_1EDCD0CD0, &qword_1ECABACC8, &qword_1D91B9FA8);

  v27 = v38;
  sub_1D9177CCC();

  (*(v36 + 8))(v24, v27);
  sub_1D8CF48EC(&qword_1EDCD0E98, &qword_1ECABACD0, &qword_1D91B9FB0);
  v28 = v37;
  v29 = sub_1D9177B1C();
  (*(v35 + 8))(v19, v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  v31 = v39;
  v39[3] = v30;
  result = sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0);
  v31[4] = result;
  *v31 = v29;
  return result;
}

uint64_t sub_1D911FDF8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1D8D2EF54();
  v4 = sub_1D8D3C1DC();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 24) = v6;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t EyebrowBuilder.captionPublisher<A>(playStatePublisher:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v56 = a1;
  v66 = a4;
  v54 = a2;
  v52 = type metadata accessor for EpisodePlayState();
  v57 = a3;
  v7 = sub_1D917768C();
  v61 = *(v7 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v48 - v9;
  WitnessTable = swift_getWitnessTable();
  v62 = v7;
  v51 = WitnessTable;
  v11 = sub_1D917765C();
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6F28, &qword_1D91B9FC0);
  v15 = swift_getWitnessTable();
  v59 = v14;
  v60 = v11;
  v50 = v15;
  v16 = sub_1D917768C();
  v64 = *(v16 - 8);
  v65 = v16;
  v17 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v48 - v18;
  v19 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v49 = *(v19 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABACE0, &unk_1D91B9FC8);
  v22 = v21 - 8;
  v23 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v48 - v24;
  v26 = OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context;
  v27 = v5[24];
  v28 = v5[25];
  __swift_project_boxed_opaque_existential_1(v5 + 21, v27);
  (*(v28 + 40))(&v67, v27, v28);
  v29 = v67;
  v30 = v68;
  v31 = BYTE1(v68);
  v32 = &v25[*(v22 + 56)];
  sub_1D8D423B4(v5 + v26, v25, type metadata accessor for EyebrowBuilder.ListContext);
  *v32 = v29;
  v32[8] = v30;
  v32[9] = v31;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1D8D423B4(v25, &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EyebrowBuilder.ListContext);
    sub_1D8D08A50(&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ECAB7AE0, &qword_1D91B7E20);
  }

  else if (EnumCaseMultiPayload != 2 && (EnumCaseMultiPayload != 1 || (v31 & 1) != 0 || (v30 & 1) == 0 || v29))
  {
    EyebrowBuilder.captionPublisher.getter(v66);
    return sub_1D8D08A50(v25, &qword_1ECABACE0, &unk_1D91B9FC8);
  }

  sub_1D8D41C00(v25, type metadata accessor for EyebrowBuilder.ListContext);
  sub_1D8D423B4(v5 + v26, &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for EyebrowBuilder.ListContext);
  v35 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v36 = swift_allocObject();
  sub_1D9121C68(&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  v37 = v55;
  sub_1D9177B9C();

  sub_1D8D5D644(&qword_1EDCD5120, type metadata accessor for EpisodePlayState);
  v38 = v53;
  v39 = v62;
  sub_1D9177D6C();
  (*(v61 + 8))(v37, v39);

  v40 = v63;
  v42 = v59;
  v41 = v60;
  sub_1D9177B9C();

  (*(v58 + 8))(v38, v41);
  v43 = sub_1D8CF48EC(&qword_1EDCD0B98, &qword_1ECAB6F28, &qword_1D91B9FC0);
  v44 = v65;
  v45 = swift_getWitnessTable();
  v67 = v42;
  v68 = v44;
  v69 = v43;
  v70 = v45;
  v46 = sub_1D917763C();
  v47 = v66;
  v66[3] = v46;
  v47[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(v47);
  MEMORY[0x1DA729340](v44, v45, v43);
  return (*(v64 + 8))(v40, v44);
}

uint64_t sub_1D91204E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EpisodePlayState();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(a2, v19, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8D423B4(a1, v15, type metadata accessor for EpisodePlayState);
    if (swift_getEnumCaseMultiPayload() == 3 && (sub_1D8D423B4(v15, v12, type metadata accessor for EpisodePlayState), (v12[16] & 1) == 0))
    {
      sub_1D8D41C00(v15, type metadata accessor for EpisodePlayState);
      *a3 = xmmword_1D91B9F90;
      *(a3 + 16) = 0;
      *(a3 + 18) = 0;
    }

    else
    {
      sub_1D8D41C00(v15, type metadata accessor for EpisodePlayState);
      sub_1D8D423B4(a1, v9, type metadata accessor for EpisodePlayState);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1D8D08A50(v9, &qword_1ECAB75C0, &unk_1D9188A50);
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA858, &qword_1D91B8020) + 48);
        v21 = sub_1D9176E3C();
        (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
        *(a3 + v20) = 0;
      }

      else
      {
        sub_1D8D41C00(v9, type metadata accessor for EpisodePlayState);
      }
    }

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D8D423B4(a1, a3, type metadata accessor for EpisodePlayState);
    return sub_1D8D41C00(v19, type metadata accessor for EyebrowBuilder.ListContext);
  }
}

uint64_t sub_1D912081C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v18 = a3;
  v5 = *a2;
  v6 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CFD9D8((v3 + 21), v20);
  sub_1D911EFCC(a1, v9);
  v19 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style);
  swift_beginAccess();
  v10 = v3[18];
  v11 = v3[19];
  v12 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_showsSubscriptionBadge);
  v13 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_hostingViewHasLimitedSpace);
  LODWORD(v3) = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_suppressPubDate);
  v15 = v21;
  v14 = v22;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);

  sub_1D8DB48F4(v16, v9, &v19, v10, v11, v12, v13, v3, v5, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  EyebrowBuilder.captionPublisher.getter(v20);

  __swift_project_boxed_opaque_existential_1(v20, v21);
  *v18 = sub_1D9177B1C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

uint64_t sub_1D91209E8()
{
  v1 = v0[24];
  v2 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v1);
  v3 = (*(v2 + 56))(v1, v2);
  if (v3 == 1)
  {
  }

  else
  {
    v4 = sub_1D9179ACC();

    if ((v4 & 1) == 0)
    {
      return v3;
    }
  }

  if ([objc_opt_self() isThinJetApp])
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9120AD4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  sub_1D8CFD9D8(a1, v52);
  v8 = v53;
  v9 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v10 = (*(v9 + 72))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  if ((v10 & 1) == 0)
  {
    swift_beginAccess();
    v17 = v3[13];
    if (v17)
    {
      v16 = v3[12];
      v18 = v3[13];

      goto LABEL_13;
    }

LABEL_16:
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  *(v3 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_style) = 0;
  v11 = v3[24];
  v12 = v3[25];
  __swift_project_boxed_opaque_existential_1(v3 + 21, v11);
  v13 = (*(v12 + 48))(v11, v12);
  if (!v13)
  {
    v19 = sub_1D9121090();
    goto LABEL_12;
  }

  if (v13 != 1)
  {
    v19 = sub_1D9120EE0();
    goto LABEL_12;
  }

  v14 = sub_1D8D55D60(0, 1);
  if (!v15)
  {
    v14 = sub_1D8D3A0AC(0);
    if (!v15)
    {
      v14 = sub_1D8D3A558();
      if (!v15)
      {
        v19 = sub_1D8D3C774(0);
LABEL_12:
        v16 = v19;
        v17 = v20;
        if (v20)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }
  }

  v16 = v14;
  v17 = v15;
LABEL_13:
  v21 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D8D4241C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 16) = v23 + 1;
  v24 = v21 + 16 * v23;
  *(v24 + 32) = v16;
  *(v24 + 40) = v17;
LABEL_17:
  v51[0] = v5;
  v51[1] = v6;
  v51[2] = v7;
  v25 = sub_1D9121AF0(a1, v51);
  if (v26)
  {
    v27 = v25;
    v28 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D8D4241C(0, *(v21 + 16) + 1, 1, v21);
    }

    v30 = *(v21 + 16);
    v29 = *(v21 + 24);
    if (v30 >= v29 >> 1)
    {
      v21 = sub_1D8D4241C((v29 > 1), v30 + 1, 1, v21);
    }

    *(v21 + 16) = v30 + 1;
    v31 = v21 + 16 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = v28;
  }

  if (v7)
  {
    v32 = a1[3];
    v33 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    v34 = sub_1D8D3BB98(0, v32, v33);
    if (v35)
    {
      v36 = v34;
      v37 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D8D4241C(0, *(v21 + 16) + 1, 1, v21);
      }

      v39 = *(v21 + 16);
      v38 = *(v21 + 24);
      if (v39 >= v38 >> 1)
      {
        v21 = sub_1D8D4241C((v38 > 1), v39 + 1, 1, v21);
      }

      *(v21 + 16) = v39 + 1;
      v40 = v21 + 16 * v39;
      *(v40 + 32) = v36;
      *(v40 + 40) = v37;
    }
  }

  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  if ((*(v42 + 64))(v41, v42))
  {
    swift_beginAccess();
    v43 = v3[19];
    if (v43)
    {
      v44 = v3[18];
      v45 = v3[19];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D8D4241C(0, *(v21 + 16) + 1, 1, v21);
      }

      v47 = *(v21 + 16);
      v46 = *(v21 + 24);
      if (v47 >= v46 >> 1)
      {
        v21 = sub_1D8D4241C((v46 > 1), v47 + 1, 1, v21);
      }

      *(v21 + 16) = v47 + 1;
      v48 = v21 + 16 * v47;
      *(v48 + 32) = v44;
      *(v48 + 40) = v43;
    }
  }

  if (v5)
  {
    v21 = sub_1D8F29EFC(v21);
  }

  v49 = sub_1D8D42528(v21);

  return v49;
}

uint64_t sub_1D9120EE0()
{
  v1 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D423B4(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v4, type metadata accessor for EyebrowBuilder.ListContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D8D41C00(v4, type metadata accessor for EyebrowBuilder.ListContext);
LABEL_4:
    result = sub_1D8D55D60(0, 0);
    if (!v7)
    {
      result = sub_1D8D3A0AC(0);
      if (!v8)
      {
        result = sub_1D8D3A558();
        if (!v9)
        {
LABEL_16:
          v14 = 0;
          return sub_1D8D3C774(v14);
        }
      }
    }

    return result;
  }

  v5 = *v4;
  if (v5 == 2)
  {
    goto LABEL_4;
  }

  if (v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v10 = sub_1D9179ACC();

    if ((v10 & 1) == 0)
    {
      swift_bridgeObjectRelease_n();
      result = sub_1D8D3A0AC(0);
      if (v15)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  result = sub_1D8D55D60(1, 0);
  if (!v11)
  {
    result = sub_1D8D3A0AC(1);
    if (!v12)
    {
      result = sub_1D8D3A558();
      if (!v13)
      {
        v14 = 1;
        return sub_1D8D3C774(v14);
      }
    }
  }

  return result;
}

uint64_t sub_1D9121090()
{
  v1 = type metadata accessor for EyebrowBuilder.ListContext(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[24];
  v6 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 21, v5);
  if ((*(v6 + 72))(v5, v6))
  {
    sub_1D8D423B4(v0 + OBJC_IVAR____TtC18PodcastsFoundation14EyebrowBuilder_context, v4, type metadata accessor for EyebrowBuilder.ListContext);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D8D41C00(v4, type metadata accessor for EyebrowBuilder.ListContext);
    }

    else
    {
      v8 = *v4;
      if (v8 != 2)
      {
        if (v8)
        {
          v10 = sub_1D9179ACC();

          if ((v10 & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v9 = 1;
        return sub_1D9121290(v9);
      }
    }

LABEL_8:
    v9 = 0;
    return sub_1D9121290(v9);
  }

  return sub_1D8D3C774(0);
}

Swift::String_optional __swiftcall EyebrowBuilder.episodeSerialCaption(separateByOnlyWhiteSpace:)(Swift::Bool separateByOnlyWhiteSpace)
{
  v1 = sub_1D8D55D60(0, separateByOnlyWhiteSpace);
  if (!v2)
  {
    v1 = sub_1D8D3A0AC(0);
    if (!v2)
    {
      v1 = sub_1D8D3A558();
      if (!v2)
      {
        v1 = sub_1D8D3C774(0);
      }
    }
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D9121290(char a1)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  if (a1)
  {
    v3 = sub_1D8D3A0AC(0);
    if (!v4)
    {
      return v2;
    }

    goto LABEL_9;
  }

  v3 = sub_1D8D55D60(0, 0);
  if (v5 || (v3 = sub_1D8D3A0AC(0), v6) || (v3 = sub_1D8D3A558(), v7))
  {
LABEL_9:
    v2 = v3;
  }

  return v2;
}

uint64_t Double.resumeString.getter(double a1)
{
  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917693C();
  v4 = v3;
  v5 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1D8D4241C((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v2;
  *(v8 + 5) = v4;
  if (a1 > 0.0)
  {
    v9 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:{a1, 0xE000000000000000}];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D917820C();
      v13 = v12;

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_1D8D4241C((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v16 = &v5[16 * v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }
  }

  v17 = sub_1D8D42528(v5);

  return v17;
}

Swift::String_optional __swiftcall Double.shortLowercaseResumeString(prefix:isRTL:isExplicit:explicitSymbol:)(Swift::String_optional prefix, Swift::Bool isRTL, Swift::Bool isExplicit, Swift::String_optional explicitSymbol)
{
  v5 = v4;
  object = explicitSymbol.value._object;
  countAndFlagsBits = explicitSymbol.value._countAndFlagsBits;
  if (!prefix.value._object)
  {
    v12 = MEMORY[0x1E69E7CC0];
    if (v4 <= 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v10 = prefix.value._object;
  v11 = prefix.value._countAndFlagsBits;

  v12 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);
  if (v14 >= v13 >> 1)
  {
    v12 = sub_1D8D4241C((v13 > 1), v14 + 1, 1, v12);
  }

  *(v12 + 16) = v14 + 1;
  v15 = v12 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v10;
  if (v5 > 0.0)
  {
LABEL_7:
    v16 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:1 abbreviated:v5];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1D917820C();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D8D4241C(0, *(v12 + 16) + 1, 1, v12);
      }

      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_1D8D4241C((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }
  }

LABEL_13:
  if (isRTL)
  {
    v12 = sub_1D8F29EFC(v12);
  }

  v24 = sub_1D8D42528(v12);
  v26 = v25;

  if (v26)
  {
    if (isExplicit && object)
    {

      MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

      MEMORY[0x1DA7298F0](countAndFlagsBits, object);

      countAndFlagsBits = v24;
      object = v26;
    }

    else
    {
      countAndFlagsBits = v24;
      object = v26;
    }
  }

  else if (isExplicit)
  {
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v27 = countAndFlagsBits;
  v28 = object;
  result.value._object = v28;
  result.value._countAndFlagsBits = v27;
  return result;
}

uint64_t Double.playingString.getter(double a1)
{
  if (a1 > 0.0 && (v1 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:a1]) != 0)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;

    v6 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      v6 = sub_1D8D4241C((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v8 + 1;
    v9 = &v6[16 * v8];
    *(v9 + 4) = v3;
    *(v9 + 5) = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1D8D42528(v6);

  return v10;
}

Swift::String_optional __swiftcall Double.durationString(prefix:isExplicit:explicitSymbol:isRTL:abbreviated:)(Swift::String_optional prefix, Swift::Bool isExplicit, Swift::String_optional explicitSymbol, Swift::Bool isRTL, Swift::Bool abbreviated)
{
  v6 = v5;
  object = explicitSymbol.value._object;
  countAndFlagsBits = explicitSymbol.value._countAndFlagsBits;
  if (!prefix.value._object)
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (v5 <= 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v12 = prefix.value._object;
  v13 = prefix.value._countAndFlagsBits;

  v14 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D8D4241C((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 16) = v16 + 1;
  v17 = v14 + 16 * v16;
  *(v17 + 32) = v13;
  *(v17 + 40) = v12;
  if (v6 > 0.0)
  {
LABEL_7:
    v18 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:abbreviated abbreviated:v6];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1D917820C();
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1D8D4241C(0, *(v14 + 16) + 1, 1, v14);
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      if (v24 >= v23 >> 1)
      {
        v14 = sub_1D8D4241C((v23 > 1), v24 + 1, 1, v14);
      }

      *(v14 + 16) = v24 + 1;
      v25 = v14 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }
  }

LABEL_13:
  if (isRTL)
  {
    v14 = sub_1D8F29EFC(v14);
  }

  v26 = sub_1D8D42528(v14);
  v28 = v27;

  if (v28 && isExplicit && object)
  {

    MEMORY[0x1DA7298F0](0x8480E2B7C28480E2, 0xA800000000000000);

    MEMORY[0x1DA7298F0](countAndFlagsBits, object);
  }

  v29 = v26;
  v30 = v28;
  result.value._object = v30;
  result.value._countAndFlagsBits = v29;
  return result;
}

uint64_t sub_1D9121AF0(void *a1, uint64_t a2)
{
  if (*(a2 + 1) != 1)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = COERCE_DOUBLE((*(v3 + 80))(v2, v3));
  if (v5)
  {
    return 0;
  }

  if (v4 > 0.0 && (v7 = [objc_opt_self() prettyShortStringWithDuration:0 includeTimeRemainingPhrase:0 abbreviated:v4]) != 0)
  {
    v8 = v7;
    v9 = sub_1D917820C();
    v11 = v10;

    v12 = sub_1D8D4241C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v13 = *(v12 + 2);
    v14 = *(v12 + 3);
    v15 = v13 + 1;
    if (v13 >= v14 >> 1)
    {
      v21 = v13 + 1;
      v18 = v12;
      v19 = *(v12 + 2);
      v20 = sub_1D8D4241C((v14 > 1), v13 + 1, 1, v18);
      v13 = v19;
      v15 = v21;
      v12 = v20;
    }

    *(v12 + 2) = v15;
    v16 = &v12[16 * v13];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v17 = sub_1D8D42528(v12);

  return v17;
}