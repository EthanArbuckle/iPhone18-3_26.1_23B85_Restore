uint64_t sub_1BBA979C8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1BBA97A10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBA97A80(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t RequestID.debugDescription.getter()
{
  sub_1BBB84028();

  v0 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v0);

  MEMORY[0x1BFB16150](58, 0xE100000000000000);
  v1 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v1);

  MEMORY[0x1BFB16150](2112800, 0xE300000000000000);
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x4974736575716552;
}

uint64_t sub_1BBA97BD4(_OWORD *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v33 = a1[6];
  v34[0] = v3;
  *(v34 + 15) = *(a1 + 127);
  v4 = a1[1];
  v30[0] = *a1;
  v30[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v30[2] = a1[2];
  v30[3] = v5;
  v8 = a1[5];
  v10 = a1[2];
  v9 = a1[3];
  v31 = a1[4];
  v32 = v8;
  v11 = a1[7];
  v28[6] = v33;
  v29[0] = v11;
  *(v29 + 15) = *(a1 + 127);
  v28[2] = v10;
  v28[3] = v9;
  v28[4] = v31;
  v28[5] = v2;
  v12 = LODWORD(v30[0]);
  v13 = DWORD1(v30[0]);
  v28[0] = v7;
  v28[1] = v6;
  type metadata accessor for IntelligenceFragmentCollector();
  swift_allocObject();
  sub_1BBA94F7C(v30, v27);
  v14 = IntelligenceFragmentCollector.init(request:)(v28);
  if (qword_1ED6BDE98 != -1)
  {
    swift_once();
  }

  v15 = sub_1BBB83758();
  __swift_project_value_buffer(v15, qword_1ED6BDEA0);

  v16 = sub_1BBB83738();
  v17 = sub_1BBB83D58();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27[0] = v19;
    *v18 = 136446466;
    *&v28[0] = 0;
    *(&v28[0] + 1) = 0xE000000000000000;
    sub_1BBB84028();

    *&v28[0] = 0xD000000000000020;
    *(&v28[0] + 1) = 0x80000001BBB9C660;
    v20 = sub_1BBB83A78();
    MEMORY[0x1BFB16150](v20);

    MEMORY[0x1BFB16150](62, 0xE100000000000000);
    v21 = sub_1BBA85E50(*&v28[0], *(&v28[0] + 1), v27);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *&v28[0] = __PAIR64__(v13, v12);
    v22 = RequestID.debugDescription.getter();
    v24 = sub_1BBA85E50(v22, v23, v27);

    *(v18 + 14) = v24;
    _os_log_impl(&dword_1BBA81000, v16, v17, "created %{public}s for %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB174E0](v19, -1, -1);
    MEMORY[0x1BFB174E0](v18, -1, -1);
  }

  v25 = *(v1 + 16);
  os_unfair_lock_lock((v25 + 32));
  sub_1BBA982A0((v25 + 16), v12 | (v13 << 32), v14);
  os_unfair_lock_unlock((v25 + 32));
  return v14;
}

uint64_t IntelligenceFragmentCollector.init(request:)(_OWORD *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IntelligenceFragmentCollector.State();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[5];
  v9 = a1[7];
  v38 = a1[6];
  v39[0] = v9;
  *(v39 + 15) = *(a1 + 127);
  v10 = a1[1];
  v11 = a1[3];
  v34 = a1[2];
  v35 = v11;
  v12 = a1[3];
  v13 = a1[5];
  v36 = a1[4];
  v37 = v13;
  v14 = a1[1];
  v33[0] = *a1;
  v33[1] = v14;
  v15 = a1[7];
  v46 = v38;
  v47[0] = v15;
  *(v47 + 15) = *(a1 + 127);
  v42 = v34;
  v43 = v12;
  v44 = v36;
  v45 = v8;
  v40 = v33[0];
  v41 = v10;
  *v7 = 0;
  v7[8] = 1;
  v16 = type metadata accessor for IntelligenceFragment();
  v17 = v16[5];
  v18 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v18 - 8) + 56))(&v7[v17], 1, 1, v18);
  v19 = &v7[v16[6]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  *(v19 + 6) = 0;
  *(v19 + 7) = 1;
  v20 = &v7[v16[7]];
  *v20 = 0x3FF0000000000000;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  *(v20 + 3) = 0x3FF0000000000000;
  *(v20 + 4) = 0;
  *(v20 + 5) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *&v7[v16[8]] = MEMORY[0x1E69E7CC0];
  *&v7[v16[9]] = v21;
  v7[*(v5 + 28)] = 0;
  v22 = &v7[*(v5 + 32)];
  *v22 = 0;
  v22[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C460);
  v23 = swift_allocObject();
  v24 = (*(*v23 + 48) + 3) & 0x1FFFFFFFCLL;
  *(v23 + v24) = 0;
  v25 = *(*v23 + *MEMORY[0x1E69E6B68] + 16);
  sub_1BBA981DC(v7, v23 + v25);
  *(v2 + 16) = v23;
  v54 = v46;
  v55[0] = v47[0];
  *(v55 + 15) = *(v47 + 15);
  v50 = v42;
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v48 = v40;
  v49 = v41;
  sub_1BBA878D4(&v48);
  v26 = v52;
  *(v2 + 104) = v53;
  v27 = v55[0];
  *(v2 + 120) = v54;
  *(v2 + 136) = v27;
  *(v2 + 151) = *(v55 + 15);
  v28 = v48;
  *(v2 + 40) = v49;
  v29 = v51;
  *(v2 + 56) = v50;
  *(v2 + 72) = v29;
  *(v2 + 88) = v26;
  *(v2 + 24) = v28;
  v31[2] = v33;
  v31[3] = v2;

  sub_1BBA94F7C(v33, &v32);
  os_unfair_lock_lock((v23 + v24));
  sub_1BBA98240(v23 + v25);
  os_unfair_lock_unlock((v23 + v24));
  sub_1BBA96D48(v33);

  return v2;
}

uint64_t sub_1BBA981DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragmentCollector.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBA98240(uint64_t a1)
{
  *a1 = **(v1 + 16);
  *(a1 + 8) = 0;
  v3 = mach_continuous_time();
  result = type metadata accessor for IntelligenceFragmentCollector.State();
  v5 = a1 + *(result + 24);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t sub_1BBA982A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1BBA98B58(a2), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 48 * v7);
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v14 = v9[4];
    v13 = v9[5];
    v25 = *v9;

    swift_unknownObjectRetain();
  }

  else
  {
    v15 = [objc_opt_self() processInfo];
    v16 = sub_1BBB839E8();
    v13 = [v15 beginActivityWithOptions:0xFFFFFFLL reason:v16];

    v14 = 0;
    v25 = MEMORY[0x1E69E7CD0];
    v12 = MEMORY[0x1E69E7CC0];
    v11 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1BBA9846C(&v20, a3);

  *&v20 = v25;
  *(&v20 + 1) = v10;
  v21 = v12;
  v22 = v11;
  v23 = v14;
  v24 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_1BBA989F4(&v20, a2, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_1BBA9846C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1BBB83F88();

    if (v8)
    {

      type metadata accessor for IntelligenceFragmentCollector();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_1BBB83F78();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_1BBAF7094(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_1BBAF7760();
    }

    sub_1BBAF79B0(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](a2);
  v10 = sub_1BBB84438();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_1BBA98898(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_1BBA98670()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BFD8);
  result = sub_1BBB83FE8();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v15);
      result = sub_1BBB84438();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1BBA98898(uint64_t result, unint64_t a2, char a3)
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
    sub_1BBAF7760();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1BBAF861C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1BBA98670();
  }

  v8 = *v3;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v4);
  result = sub_1BBB84438();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for IntelligenceFragmentCollector();
    a2 = v11;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
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
  result = sub_1BBB84368();
  __break(1u);
  return result;
}

unint64_t sub_1BBA989F4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1BBA98B58(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1BBB40350();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1BBB3F3B4(v14, a3 & 1);
    v9 = sub_1BBA98B58(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1BBB84378();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 48 * v9);
    v21 = a1[1];
    *v20 = *a1;
    v20[1] = v21;
    v20[2] = a1[2];
    swift_unknownObjectRelease();
  }

  else
  {

    return sub_1BBA98C3C(v9, a2, a1, v19);
  }
}

unint64_t sub_1BBA98B58(uint64_t a1)
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](__ROR8__(a1, 32));
  v2 = sub_1BBB84438();

  return sub_1BBA98BC4(a1, v2);
}

unint64_t sub_1BBA98BC4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = __ROR8__(a1, 32);
    do
    {
      if ((*(*(v2 + 48) + 8 * result + 4) | (*(*(v2 + 48) + 8 * result) << 32)) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1BBA98C3C(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = (a4[7] + 48 * result);
  v5 = a3[1];
  *v4 = *a3;
  v4[1] = v5;
  v4[2] = a3[2];
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

uint64_t sub_1BBA98C94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1BBA98D08(uint64_t a1, void *a2, uint64_t a3)
{
  if (qword_1ED6BF1F8 != -1)
  {
    swift_once();
  }

  v5 = *(off_1ED6BF200 + 2);
  os_unfair_lock_lock((v5 + 32));
  v6 = *(v5 + 24);
  os_unfair_lock_unlock((v5 + 32));
  if (v6)
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    (*(v8 + 8))(a3, v7, v8);
  }

  IntelligenceCollectionCoordinator.finishCollection(_:)();
}

uint64_t IntelligenceFragmentCollector.context.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v25[6] = *(v1 + 120);
  v26[0] = v4;
  *(v26 + 15) = *(v1 + 151);
  v5 = *(v1 + 40);
  v6 = *(v1 + 72);
  v25[2] = *(v1 + 56);
  v25[3] = v6;
  v25[4] = *(v1 + 88);
  v25[5] = v3;
  v25[0] = *(v1 + 24);
  v25[1] = v5;
  v7 = *(v1 + 104);
  v8 = *(v1 + 136);
  v27[6] = *(v1 + 120);
  v28[0] = v8;
  *(v28 + 15) = *(v1 + 151);
  v9 = *(v1 + 40);
  v10 = *(v1 + 72);
  v27[2] = *(v1 + 56);
  v27[3] = v10;
  v27[4] = *(v1 + 88);
  v27[5] = v7;
  v27[0] = *(v1 + 24);
  v27[1] = v9;
  v11 = sub_1BBA87258(v27);
  v12 = sub_1BBA87034(v27);
  v13 = v12;
  if (v11 == 1)
  {
    v14 = *v12;
    v15 = &protocol witness table for IntelligenceFragment.RemoteContext;
    v16 = &type metadata for IntelligenceFragment.RemoteContext;
  }

  else
  {
    v14 = swift_allocObject();
    v14[1] = *v13;
    v17 = v13[4];
    v19 = v13[1];
    v18 = v13[2];
    v14[4] = v13[3];
    v14[5] = v17;
    v14[2] = v19;
    v14[3] = v18;
    v21 = v13[6];
    v20 = v13[7];
    v22 = v13[5];
    *(v14 + 143) = *(v13 + 127);
    v14[7] = v21;
    v14[8] = v20;
    v14[6] = v22;
    v15 = &protocol witness table for IntelligenceFragment.LocalContext;
    v16 = &type metadata for IntelligenceFragment.LocalContext;
  }

  a1[3] = v16;
  a1[4] = v15;
  *a1 = v14;
  return sub_1BBA98F54(v25, &v24);
}

uint64_t sub_1BBA98F14()
{

  return MEMORY[0x1EEE6BDD0](v0, 159, 7);
}

uint64_t sub_1BBA98F8C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21[0] = v3;
  *(v21 + 15) = *(v1 + 127);
  v4 = v1[1];
  v5 = v1[3];
  v16 = v1[2];
  v6 = v16;
  v17 = v5;
  v7 = v1[3];
  v8 = v1[5];
  v18 = v1[4];
  v9 = v18;
  v19 = v8;
  v10 = v1[1];
  v15[0] = *v1;
  v11 = v15[0];
  v15[1] = v10;
  v12 = v1[7];
  a1[6] = v20;
  a1[7] = v12;
  *(a1 + 127) = *(v1 + 127);
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v2;
  *a1 = v11;
  a1[1] = v4;
  return sub_1BBA94F7C(v15, &v14);
}

id UIIntelligenceElementCollector.init(context:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector____lazy_storage___visitedViews] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementCollectionResults] = v4;
  *&v1[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementArrayCollectionResults] = v4;
  sub_1BBA98C94(a1, &v1[OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_context]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

unint64_t *sub_1BBA990F8(unint64_t *result, uint64_t a2)
{
  if (a2 < 0x13)
  {
    *result = ((a2 << 59) | (4 * a2)) & 0xF000000000000007 | *result & 0xFFFFFFFFFFFFFF9;
  }

  else
  {
    *result = (a2 - 19) & 1 | (4 * (a2 - 19)) | 0x9000000000000004;
  }

  return result;
}

uint64_t IntelligenceElement.visibleRegion.setter(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceElement.StorageValue();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - v10;
  sub_1BBA8BC5C(a1, v8, &qword_1EBC7BBA8);
  v12 = sub_1BBB83588();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1BBA8BCC4(v8, &qword_1EBC7BBA8);
    v14 = 1;
  }

  else
  {
    (*(v13 + 32))(v5, v8, v12);
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v5, v11, type metadata accessor for IntelligenceElement.StorageValue);
    v14 = 0;
  }

  (*(v3 + 56))(v11, v14, 1, v2);
  sub_1BBA993C4(v11, 0);
  return sub_1BBA8BCC4(a1, &qword_1EBC7BBA8);
}

uint64_t sub_1BBA993C4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for IntelligenceElement.StorageValue();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1BBA8BCC4(a1, &qword_1EBC7BBB0);
    v13 = sub_1BBA99764(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BBB40118();
        v17 = v21;
      }

      sub_1BBA969BC(*(v17 + 56) + *(v10 + 72) * v15, v8, type metadata accessor for IntelligenceElement.StorageValue);
      sub_1BBAE4764(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1BBA8BCC4(v8, &qword_1EBC7BBB0);
  }

  else
  {
    sub_1BBA969BC(a1, v12, type metadata accessor for IntelligenceElement.StorageValue);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1BBA99618(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_1BBA99618(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BBA99764(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1BBB40118();
      goto LABEL_7;
    }

    sub_1BBA997D0(v13, a3 & 1);
    v20 = sub_1BBA99764(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1BBB84378();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for IntelligenceElement.StorageValue() - 8) + 72) * v10;

    return sub_1BBB40F98(a1, v18);
  }

LABEL_13:

  return sub_1BBA99B9C(v10, a2, a1, v16);
}

unint64_t sub_1BBA99764(unsigned __int8 a1)
{
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](a1);
  v2 = sub_1BBB84438();

  return sub_1BBA99B2C(a1, v2);
}

uint64_t sub_1BBA997D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for IntelligenceElement.StorageValue();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B958);
  v36 = a2;
  result = sub_1BBB840D8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1BBA99C44(v24, v37, type metadata accessor for IntelligenceElement.StorageValue);
      }

      else
      {
        sub_1BBB40FFC(v24, v37, type metadata accessor for IntelligenceElement.StorageValue);
      }

      sub_1BBB843D8();
      MEMORY[0x1BFB16A50](v22);
      result = sub_1BBB84438();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = sub_1BBA99C44(v37, *(v9 + 56) + v23 * v17, type metadata accessor for IntelligenceElement.StorageValue);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1BBA99B2C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1BBA99B9C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for IntelligenceElement.StorageValue();
  result = sub_1BBA99C44(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for IntelligenceElement.StorageValue);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_1BBA99C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBA99CAC()
{
  v1 = 0x4F6C617574786574;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646564756C637865;
  }
}

uint64_t sub_1BBA99D10()
{
  v3 = v0;
  v2 = *v0;
  v1 = v3[1];
  sub_1BBB843D8();
  MEMORY[0x1BFB16A80](v1 | (v2 << 32));
  return sub_1BBB84438();
}

uint64_t sub_1BBA99D70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1BBB836E8();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1BBA99E08()
{
  sub_1BBB843D8();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t sub_1BBA99E6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BBB834F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IntelligenceFragment.elements.getter()
{
  type metadata accessor for IntelligenceFragment();
}

__n128 IntelligenceFragment.boundingBoxTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntelligenceFragment() + 28);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t IntelligenceElement.isEqualIgnoringSubelements(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  if ((sub_1BBA9A01C(*(v1 + 48), *(a1 + 48)) & 1) != 0 && (v16.origin.x = v7, v16.origin.y = v8, v16.size.width = v9, v16.size.height = v10, v17.origin.x = v2, v17.origin.y = v3, v17.size.width = v4, v17.size.height = v5, CGRectEqualToRect(v16, v17)))
  {
    v14 = v6;
    v15 = v11;
    sub_1BBA8BD24(v11);
    sub_1BBA8BD24(v6);
    v12 = _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(&v15, &v14);
    sub_1BBA8ABF8(v14);
    sub_1BBA8ABF8(v15);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1BBA9A01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceElement.StorageValue();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &unk_1EBC7BE58;
  v23 = &unk_1BBB88508;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + v24);
    v31 = v57;
    sub_1BBA966C4(*(v52 + 56) + *(v58 + 72) * v24, v57, type metadata accessor for IntelligenceElement.StorageValue);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_1BBA969BC(v31, &v12[v33], type metadata accessor for IntelligenceElement.StorageValue);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_1BBAA6758(v12, v15, &qword_1EBC7BE50);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_1BBA969BC(&v15[v37], v27, type metadata accessor for IntelligenceElement.StorageValue);
    v39 = v53;
    v40 = sub_1BBA99764(v38);
    if ((v41 & 1) == 0)
    {
      sub_1BBA9C144(v27, type metadata accessor for IntelligenceElement.StorageValue);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_1BBA966C4(v43, v57, type metadata accessor for IntelligenceElement.StorageValue);
    v55 = sub_1BBAE4FA0(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_1BBA9C144(v49, type metadata accessor for IntelligenceElement.StorageValue);
    result = sub_1BBA9C144(v27, type metadata accessor for IntelligenceElement.StorageValue);
    v20 = v56;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

BOOL _s21UIIntelligenceSupport19IntelligenceElementV6ScreenV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v4 = *v3;
  v5 = (v2 + *(*v2 + 88));
  swift_beginAccess();
  if (v4 != *v5 || v3[1] != v5[1])
  {
    return 0;
  }

  v6 = *(v3 + 2);
  v7 = *(v5 + 2);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v3 + 1) == *(v5 + 1) && v6 == v7;
    if (!v8 && (sub_1BBB842F8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v3[56])
  {
    if (v5[56])
    {
      return *(v3 + 8) == *(v5 + 8);
    }

    return 0;
  }

  if (v5[56])
  {
    return 0;
  }

  result = CGRectEqualToRect(*(v3 + 24), *(v5 + 24));
  if (result)
  {
    return *(v3 + 8) == *(v5 + 8);
  }

  return result;
}

uint64_t IntelligenceElement.allSubelements.getter()
{
  v1 = *(v0 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  v4 = v1;
  sub_1BBA8BD24(v1);
  sub_1BBA9A66C(&v4, sub_1BBAE5950);
  sub_1BBA8ABF8(v4);

  sub_1BBA9AC3C(v2);
  return v5;
}

uint64_t *sub_1BBA9A66C(uint64_t *result, void (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *result;
  v5 = (*result >> 59) & 0x1E | (*result >> 2) & 1;
  if (v5 > 9)
  {
    v72 = v2;
    v73 = v3;
    if (v5 > 14)
    {
      if (v5 <= 16)
      {
        v26 = v4 & 0xFFFFFFFFFFFFFFFLL;
        if (v5 != 15)
        {
          v48 = v26 & 0xFFFFFFFFFFFFFFFBLL;
          result = swift_beginAccess();
          v44 = *(v48 + 32);
          if (!*(v44 + 16))
          {
            return result;
          }

          v45 = a2;

          v46 = 0x736C6C6543;
          v47 = 0xE500000000000000;
          goto LABEL_33;
        }

        v27 = v26 & 0xFFFFFFFFFFFFFFFBLL;
        result = swift_beginAccess();
        v28 = *(v27 + 24);
        v29 = *(v28 + 16);
        if (v29)
        {
          v49 = v27;

          v30 = v29 - 1;
          for (i = 32; ; i += 8)
          {
            v32 = *(v28 + i);
            swift_beginAccess();
            v33 = *(v32 + 48);
            v34 = *(v32 + 64);
            *(v71 + 9) = *(v32 + 89);
            v35 = *(v32 + 80);
            v70 = v34;
            v71[0] = v35;
            v69 = v33;
            *&v53[0] = *(v32 + 80);
            v51 = *(v32 + 48);
            v52 = v34;
            v36 = *(&v35 + 1);
            BYTE8(v56) = *(v32 + 104);
            *&v56 = *(v32 + 96);
            if (*(&v35 + 1))
            {
              *&v64[0] = v32;

              sub_1BBA8BC5C(&v69, &v66, &qword_1EBC7BAA8);
              *&v66 = IntelligenceElement.Table.Column.description.getter();
              *(&v66 + 1) = v37;
              MEMORY[0x1BFB16150](0x72656461654820, 0xE700000000000000);
              v38 = v66;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
              v39 = swift_allocObject();
              v40 = v51;
              v41 = v52;
              *(v39 + 16) = xmmword_1BBB85CE0;
              *(v39 + 32) = v40;
              *(v39 + 48) = v41;
              *(v39 + 64) = *&v53[0];
              *(v39 + 72) = v36;
              *(v39 + 80) = v56;
              *(v39 + 88) = BYTE8(v56);
              v66 = v69;
              v67 = v70;
              v68[0] = v71[0];
              *(v68 + 9) = *(v71 + 9);
              sub_1BBA9B788(&v66, v64);
              a2(v38, *(&v38 + 1), v39);

              sub_1BBA8BCC4(&v69, &qword_1EBC7BAA8);
            }

            if (!v30)
            {
              break;
            }

            --v30;
          }

          v27 = v49;
        }

        v44 = *(v27 + 32);
        if (*(v44 + 16))
        {
          v45 = a2;

          v46 = 1937207122;
          v47 = 0xE400000000000000;
          goto LABEL_33;
        }
      }

      else if (v5 != 17 && v5 == 18)
      {
        *&v69 = v4 & 0xFFFFFFFFFFFFFFBLL;
        return sub_1BBB48094(&v69, a2);
      }
    }

    else
    {
      if (v5 > 11)
      {
        if (v5 != 12)
        {
          if (v5 != 13)
          {
            *&v69 = v4 & 0xFFFFFFFFFFFFFFBLL;
            return sub_1BBB4D250(&v69, a2);
          }

          return result;
        }

        v42 = v4 & 0xFFFFFFFFFFFFFFBLL;
        result = swift_beginAccess();
        v44 = *(v42 + 40);
        if (!*(v44 + 16))
        {
          return result;
        }

        v45 = a2;

        v46 = 0x736E6F6974636553;
        v47 = 0xE800000000000000;
LABEL_33:
        v45(v46, v47, v44);
      }

      if (v5 == 10)
      {
        v8 = v4 & 0xFFFFFFFFFFFFFFBLL;
        result = swift_beginAccess();
        v9 = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = *(v8 + 48);
        *(v71 + 9) = *(v8 + 57);
        v70 = v10;
        v71[0] = v11;
        v69 = v9;
        v12 = *(v8 + 32);
        v61 = *(v8 + 16);
        v62 = v12;
        v63 = *(v8 + 48);
        v13 = *(&v11 + 1);
        v14 = *(v8 + 64);
        v60 = *(v8 + 72);
        v59 = v14;
        if (*(&v11 + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
          v15 = swift_allocObject();
          v16 = v61;
          v17 = v62;
          *(v15 + 16) = xmmword_1BBB85CE0;
          *(v15 + 32) = v16;
          *(v15 + 48) = v17;
          *(v15 + 64) = v63;
          *(v15 + 72) = v13;
          *(v15 + 80) = v59;
          *(v15 + 88) = v60;
          sub_1BBA8BC5C(&v69, &v66, &qword_1EBC7BAA8);
          sub_1BBA8BC5C(&v69, &v66, &qword_1EBC7BAA8);
          a2(0x656C746954, 0xE500000000000000, v15);

          result = sub_1BBA8BCC4(&v69, &qword_1EBC7BAA8);
        }

        v18 = *(v8 + 112);
        v67 = *(v8 + 96);
        v68[0] = v18;
        *(v68 + 9) = *(v8 + 121);
        v66 = *(v8 + 80);
        v56 = v66;
        v57 = v67;
        v58 = *(v8 + 112);
        v19 = *(&v68[0] + 1);
        v20 = *(v8 + 128);
        v55 = *(v8 + 136);
        v54 = v20;
        if (*(&v68[0] + 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
          v21 = swift_allocObject();
          v22 = v56;
          v23 = v57;
          *(v21 + 16) = xmmword_1BBB85CE0;
          *(v21 + 32) = v22;
          *(v21 + 48) = v23;
          v51 = v66;
          v24 = v66;
          v52 = v67;
          v53[0] = v68[0];
          *(v53 + 9) = *(v68 + 9);
          *(v65 + 9) = *(v68 + 9);
          v64[1] = v67;
          v65[0] = v68[0];
          *(v21 + 64) = v58;
          *(v21 + 72) = v19;
          *(v21 + 80) = v54;
          *(v21 + 88) = v55;
          v64[0] = v24;
          sub_1BBA9B788(v64, v50);
          sub_1BBA9B788(&v51, v50);
          a2(0x6567616D49, 0xE500000000000000, v21);

          return sub_1BBA8BCC4(&v66, &qword_1EBC7BAA8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BBA9AC3C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BBA9C784(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t IntelligenceElement.Window.canOcclude.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s6WindowV7StorageVMa() + 32));
}

uint64_t IntelligenceElement.visibleRegion.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = sub_1BBB83588();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = *(v1 + 8);
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = *(v1 + 48);
  if (*(v22 + 16) && (v23 = sub_1BBA99764(0), (v24 & 1) != 0))
  {
    sub_1BBA966C4(*(v22 + 56) + *(v4 + 72) * v23, v9, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA966C4(v9, v6, type metadata accessor for IntelligenceElement.StorageValue);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BBA9C144(v6, type metadata accessor for IntelligenceElement.StorageValue);
      v25 = 1;
    }

    else
    {
      (*(v14 + 32))(v12, v6, v13);
      v25 = 0;
    }

    v26 = *(v14 + 56);
    v26(v12, v25, 1, v13);
    sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v30 = *(v14 + 32);
      v30(v17, v12, v13);
      v30(a1, v17, v13);
      return (v26)(a1, 0, 1, v13);
    }
  }

  else
  {
    v26 = *(v14 + 56);
    (v26)(v12, 1, 1, v13, v15);
  }

  sub_1BBA8BCC4(v12, &qword_1EBC7BBA8);
  v32.origin.x = v18;
  v32.origin.y = v19;
  v32.size.width = v20;
  v32.size.height = v21;
  if (CGRectIsNull(v32))
  {
    v27 = a1;
    v28 = 1;
  }

  else
  {
    sub_1BBB83598();
    v27 = a1;
    v28 = 0;
  }

  return (v26)(v27, v28, 1, v13);
}

Swift::Void __swiftcall IntelligenceElement._applyGeometryTransform(_:)(CGAffineTransform *a1)
{
  tx = a1->tx;
  ty = a1->ty;
  v5 = type metadata accessor for IntelligenceElement.StorageValue();
  v6 = *(v5 - 8);
  v7 = (MEMORY[0x1EEE9AC00])(v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  v15 = (MEMORY[0x1EEE9AC00])(v14 - 8);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  v19 = sub_1BBB83588();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v33 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  v22 = *&a1->c;
  *&v36.a = *&a1->a;
  *&v36.c = v22;
  v36.tx = tx;
  v36.ty = ty;
  *v1 = CGRectApplyAffineTransform(v37, &v36);
  v23 = *(v1 + 48);
  if (*(v23 + 16) && (v24 = sub_1BBA99764(0), (v25 & 1) != 0))
  {
    sub_1BBA966C4(*(v23 + 56) + *(v6 + 72) * v24, v13, type metadata accessor for IntelligenceElement.StorageValue);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  (*(v6 + 56))(v13, v26, 1, v5);
  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1BBA8BCC4(v13, &qword_1EBC7BBB0);
    (*(v20 + 56))(v18, 1, 1, v19);
LABEL_11:
    sub_1BBA8BCC4(v18, &qword_1EBC7BBA8);
    return;
  }

  v27 = v35;
  sub_1BBA966C4(v13, v35, type metadata accessor for IntelligenceElement.StorageValue);
  sub_1BBA8BCC4(v13, &qword_1EBC7BBB0);
  sub_1BBA969BC(v27, v9, type metadata accessor for IntelligenceElement.StorageValue);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
    v28 = 1;
  }

  else
  {
    (*(v20 + 32))(v18, v9, v19);
    v28 = 0;
  }

  v29 = *(v20 + 56);
  v29(v18, v28, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_11;
  }

  v30 = v33;
  (*(v20 + 32))(v33, v18, v19);
  v31 = v34;
  (*(v20 + 16))(v34, v30, v19);
  sub_1BBB83578();
  v29(v31, 0, 1, v19);
  IntelligenceElement.visibleRegion.setter(v31);
  (*(v20 + 8))(v30, v19);
}

unint64_t IntelligenceElement.content.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1BBA8BD24(v2);
}

uint64_t IntelligenceElement.Screen.snapshotConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = *(v3 + 88);
  v5 = *(v3 + 120);
  v25[1] = *(v3 + 104);
  v25[2] = v5;
  v25[0] = v4;
  v6 = *(v3 + 136);
  v7 = *(v3 + 152);
  v8 = *(v3 + 184);
  v25[5] = *(v3 + 168);
  v25[6] = v8;
  v25[3] = v6;
  v25[4] = v7;
  v9 = *(v3 + 200);
  v10 = *(v3 + 216);
  v11 = *(v3 + 248);
  v25[9] = *(v3 + 232);
  v25[10] = v11;
  v25[7] = v9;
  v25[8] = v10;
  v12 = *(v3 + 264);
  v13 = *(v3 + 280);
  v14 = *(v3 + 312);
  v25[13] = *(v3 + 296);
  v25[14] = v14;
  v25[11] = v12;
  v25[12] = v13;
  v15 = *(v3 + 264);
  v16 = *(v3 + 296);
  v17 = *(v3 + 312);
  a1[12] = *(v3 + 280);
  a1[13] = v16;
  a1[14] = v17;
  v18 = *(v3 + 200);
  v19 = *(v3 + 232);
  a1[8] = *(v3 + 216);
  a1[9] = v19;
  a1[10] = *(v3 + 248);
  a1[11] = v15;
  v20 = *(v3 + 136);
  v21 = *(v3 + 168);
  a1[4] = *(v3 + 152);
  a1[5] = v21;
  a1[6] = *(v3 + 184);
  a1[7] = v18;
  v22 = *(v3 + 104);
  *a1 = *(v3 + 88);
  a1[1] = v22;
  a1[2] = *(v3 + 120);
  a1[3] = v20;
  return sub_1BBA8BC5C(v25, v24, &qword_1EBC7D440);
}

unint64_t IntelligenceElement.content.setter(uint64_t *a1)
{
  v2 = *a1;
  result = sub_1BBA8ABF8(*(v1 + 32));
  *(v1 + 32) = v2;
  return result;
}

char *sub_1BBA9B7E4(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6[1];
    v30[0] = *v6;
    v30[1] = v8;
    v10 = *v6;
    v9 = v6[1];
    v31[0] = v6[2];
    *(v31 + 9) = *(v6 + 41);
    v27 = v10;
    v28 = v9;
    v29[0] = v6[2];
    *(v29 + 9) = *(v6 + 41);
    sub_1BBA9B788(v30, &v21);
    a1(&v24, &v27);
    if (v3)
    {
      break;
    }

    v21 = v27;
    v22 = v28;
    v23[0] = v29[0];
    *(v23 + 9) = *(v29 + 9);
    sub_1BBA9E174(&v21);
    if (v26[1])
    {
      v18 = v24;
      v19 = v25;
      v20[0] = *v26;
      *(v20 + 9) = *(&v26[1] + 1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BBA9C784(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1BBA9C784((v11 > 1), v12 + 1, 1, v7);
      }

      *v17 = v20[0];
      *&v17[9] = *(v20 + 9);
      v13 = v18;
      v16 = v19;
      *(v7 + 2) = v12 + 1;
      v14 = &v7[64 * v12];
      *(v14 + 73) = *&v17[9];
      *(v14 + 3) = v16;
      *(v14 + 4) = *v17;
      *(v14 + 2) = v13;
    }

    else
    {
      v18 = v24;
      v19 = v25;
      v20[0] = v26[0];
      *(v20 + 9) = *(&v26[1] + 1);
      sub_1BBA8BCC4(&v18, &qword_1EBC7BAA8);
    }

    v6 += 4;
    if (!--v4)
    {
      return v7;
    }
  }

  v21 = v27;
  v22 = v28;
  v23[0] = v29[0];
  *(v23 + 9) = *(v29 + 9);
  sub_1BBA9E174(&v21);

  return v7;
}

uint64_t IntelligenceElement.compactMapInPlaceAllSubelements(_:)(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2)
{
  result = sub_1BBA9BA60(a1, a2);
  if (!v3)
  {
    v7 = sub_1BBA9B7E4(a1, a2, *(v2 + 40));

    *(v2 + 40) = v7;
  }

  return result;
}

uint64_t sub_1BBA9BA60(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  v5 = (*v2 >> 59) & 0x1E | (*v2 >> 2) & 1;
  if (v5 <= 9)
  {
    return result;
  }

  if (v5 <= 14)
  {
    if (v5 > 11)
    {
      if (v5 != 12)
      {
        if (v5 == 13)
        {
          return result;
        }

        v6 = v2;
        v35 = v4 & 0xFFFFFFFFFFFFFFBLL;
        v7 = result;

        sub_1BBB4C04C(v7, a2);
        if (!v3)
        {
          result = sub_1BBA8ABF8(*v2);
          v9 = v35 | 0x7000000000000000;
LABEL_31:
          *v6 = v9;
          return result;
        }
      }

      v17 = v4 & 0xFFFFFFFFFFFFFFBLL;
      v18 = result;
      swift_beginAccess();
      v20 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      sub_1BBA8BD24(v4);

      v21 = sub_1BBA9B7E4(v18, a2, v20);
      if (v3)
      {
LABEL_26:
      }

      v25 = v21;
      sub_1BBA8ABF8(*v2);

      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      v28 = *(v17 + 32);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        *(v17 + 16) = v27;
        *(v17 + 24) = v26;
        *(v17 + 32) = v28;
        *(v17 + 40) = v25;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C488);
        v33 = swift_allocObject();
        *(v33 + 16) = v27;
        *(v33 + 24) = v26;
        *(v33 + 32) = v28;
        *(v33 + 40) = v25;

        v17 = v33;
      }

      v32 = v17 | 0x6000000000000000;
LABEL_38:
      *v2 = v32;
      return result;
    }

    if (v5 != 10)
    {
      return result;
    }

    v6 = v2;
    v14 = result;

    sub_1BBAD16D4(v14);
    if (v3)
    {
    }

    result = sub_1BBA8ABF8(*v2);
    v12 = v4 & 0xFFFFFFFFFFFFFFBLL;
    v13 = 0x5000000000000000;
LABEL_30:
    v9 = v12 | v13;
    goto LABEL_31;
  }

  if (v5 <= 16)
  {
    v15 = result;
    if (v5 == 15)
    {

      sub_1BBB6FF08(v15, a2);
      if (!v3)
      {
        result = sub_1BBA8ABF8(*v2);
        *v2 = v4 & 0xFFFFFFFFFFFFFFBLL | 0x7000000000000004;
        return result;
      }
    }

    v22 = v4 & 0xFFFFFFFFFFFFFFBLL;
    swift_beginAccess();
    v23 = *((v4 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    sub_1BBA8BD24(v4);

    v24 = sub_1BBA9B7E4(v15, a2, v23);
    if (v3)
    {
      goto LABEL_26;
    }

    v29 = v24;
    sub_1BBA8ABF8(*v2);

    v30 = *(v22 + 16);
    v31 = *(v22 + 24);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      *(v22 + 16) = v30;
      *(v22 + 24) = v31;
      *(v22 + 32) = v29;

      v32 = v22 | 0x8000000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA68);
      v34 = swift_allocObject();
      *(v34 + 16) = v30;
      *(v34 + 24) = v31;
      *(v34 + 32) = v29;

      v32 = v34 | 0x8000000000000000;
    }

    goto LABEL_38;
  }

  if (v5 != 17 && v5 == 18)
  {
    v6 = v2;
    v11 = result;

    sub_1BBB43338(v11);
    if (v3)
    {
    }

    result = sub_1BBA8ABF8(*v2);
    v12 = v4 & 0xFFFFFFFFFFFFFFBLL;
    v13 = 0x9000000000000000;
    goto LABEL_30;
  }

  return result;
}

uint64_t IntelligenceElement.Window.isActive.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s6WindowV7StorageVMa() + 28));
}

uint64_t IntelligenceElement.fractionVisible.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - v2;
  v4 = sub_1BBB83588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = *v0;
  v12 = *(v0 + 8);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v22.origin.x = *v0;
  v22.origin.y = v12;
  v22.size.width = v13;
  v22.size.height = v14;
  if (CGRectIsNull(v22))
  {
    return 0;
  }

  *v20 = v11;
  *&v20[1] = v12;
  *&v20[2] = v13;
  *&v20[3] = v14;
  v21[0] = *(v0 + 32);
  *(v21 + 9) = *(v0 + 41);
  IntelligenceElement.visibleRegion.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1BBA8BCC4(v3, &qword_1EBC7BBA8);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_1BBB83598();
  v16 = sub_1BBA9C1A4();
  v17 = *(v5 + 8);
  v17(v7, v4);
  if (v16 <= 0.0)
  {
    v17(v10, v4);
    return 0;
  }

  else
  {
    v18 = sub_1BBA9C1A4();
    v17(v10, v4);
    v19 = fmin(v18 / v16, 1.0);
    if (v19 < 0.0)
    {
      v19 = 0.0;
    }

    return *&v19;
  }
}

uint64_t sub_1BBA9C144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1BBA9C1A4()
{
  v1 = sub_1BBB83568();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BBB83588();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE60);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  (*(v6 + 16))(v8, v0, v5, v10);
  v13 = MEMORY[0x1E695EF18];
  sub_1BBA8AD64(&qword_1EBC7AE28, MEMORY[0x1E695EF18]);
  sub_1BBB83B98();
  sub_1BBA8AD64(&qword_1EBC7AE18, v13);
  for (i = 0.0; ; i = i + (v19 - v18) * (v21 - v20))
  {
    sub_1BBB83CF8();
    sub_1BBA8AD64(&qword_1EBC7AE30, MEMORY[0x1E695EEF0]);
    v15 = sub_1BBB83968();
    (*(v2 + 8))(v4, v1);
    if (v15)
    {
      break;
    }

    v16 = sub_1BBB83D18();
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v16(v23, 0);
    sub_1BBB83D08();
  }

  sub_1BBA8BCC4(v12, &qword_1EBC7BE60);
  return i;
}

uint64_t IntelligenceElement.Window.appProcessInfo.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  v11[0] = v4;
  v11[1] = v5;
  v7 = v3[1];
  *a1 = *v3;
  a1[1] = v7;
  v8 = v3[3];
  a1[2] = v3[2];
  a1[3] = v8;
  return sub_1BBA8BC5C(v11, v10, &qword_1EBC7BBE0);
}

uint64_t IntelligenceElement.Window.snapshotConfiguration.getter@<X0>(__int128 *a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s6WindowV7StorageVMa() + 40));
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[14];
  v25[13] = v4[13];
  v25[14] = v7;
  v25[11] = v5;
  v25[12] = v6;
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[10];
  v25[9] = v4[9];
  v25[10] = v10;
  v25[7] = v8;
  v25[8] = v9;
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[6];
  v25[5] = v4[5];
  v25[6] = v13;
  v25[3] = v11;
  v25[4] = v12;
  v14 = *v4;
  v15 = v4[2];
  v25[1] = v4[1];
  v25[2] = v15;
  v25[0] = v14;
  v16 = v4[13];
  a1[12] = v4[12];
  a1[13] = v16;
  a1[14] = v4[14];
  v17 = v4[9];
  a1[8] = v4[8];
  a1[9] = v17;
  v18 = v4[11];
  a1[10] = v4[10];
  a1[11] = v18;
  v19 = v4[5];
  a1[4] = v4[4];
  a1[5] = v19;
  v20 = v4[7];
  a1[6] = v4[6];
  a1[7] = v20;
  v21 = v4[1];
  *a1 = *v4;
  a1[1] = v21;
  v22 = v4[3];
  a1[2] = v4[2];
  a1[3] = v22;
  return sub_1BBA8BC5C(v25, v24, &qword_1EBC7D440);
}

unint64_t IntelligenceElement.enumerateAllSubelements(_:)(void (*a1)(_OWORD *))
{
  v3 = *(v1 + 40);
  *&v15[0] = *(v1 + 32);
  sub_1BBA8BD24(*&v15[0]);
  sub_1BBA9A66C(v15, sub_1BBAE597C);
  result = sub_1BBA8ABF8(*&v15[0]);
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 32);
    while (v6 < *(v3 + 16))
    {
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      *(v16 + 9) = *(v7 + 41);
      v15[1] = v9;
      v16[0] = v10;
      v15[0] = v8;
      ++v6;
      v11 = v7[1];
      v13[0] = *v7;
      v13[1] = v11;
      v14[0] = v7[2];
      *(v14 + 9) = *(v7 + 41);
      sub_1BBA9B788(v15, v12);
      a1(v13);
      result = sub_1BBA9E174(v15);
      v7 += 4;
      if (v5 == v6)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1BBA9C784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t UIIntelligenceElementCollector.performCollection(_:)@<X0>(void (*a1)(uint64_t)@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults;
  swift_beginAccess();
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1BBA9CA04(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1BBA9CA04((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v7[v10 + 4] = 0xF000000000000006;
  *(v2 + v6) = v7;
  v11 = swift_endAccess();
  a1(v11);
  result = swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {
    sub_1BBA956D0(&v14);
    v13 = v14;
    if ((v14 & 0xF000000000000006) == 0xF000000000000002)
    {
      sub_1BBB3D6F4(v14);
      sub_1BBB3D5C8(*(*(v3 + v6) + 16) - 1, &v14);
      v13 = v14;
    }

    result = swift_endAccess();
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BBA9CA04(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t UIIntelligenceElementCollector.collect(_:)(unint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_contentCollectionResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = v4[2];
  if (v5 && (~v4[v5 + 3] & 0xF000000000000006) == 0)
  {
    swift_beginAccess();
    sub_1BBA8BD24(v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v3) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1BBB3D58C(v4);
      *(v1 + v3) = v4;
    }

    if (v5 <= v4[2])
    {
      v7 = &v4[v5 - 1];
      v8 = v7[4];
      v7[4] = v2;
      *(v1 + v3) = v4;
      swift_endAccess();
      return sub_1BBA9CCB4(v8);
    }

    __break(1u);
  }

  result = sub_1BBB840A8();
  __break(1u);
  return result;
}

unint64_t sub_1BBA9CCB4(unint64_t result)
{
  if ((~result & 0xF000000000000006) != 0)
  {
    return sub_1BBA8ABF8(result);
  }

  return result;
}

double IntelligenceElement.init(boundingBox:visibleRect:content:subelements:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>, CGFloat a8@<D4>, CGFloat a9@<D5>, CGFloat a10@<D6>, CGFloat a11@<D7>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v30 - v23;
  v25 = *a1;
  v26 = sub_1BBA96B70(MEMORY[0x1E69E7CC0]);
  *&v30 = a4;
  *(&v30 + 1) = a5;
  *&v31 = a6;
  *(&v31 + 1) = a7;
  *v32 = v25;
  *&v32[8] = a2;
  *&v32[16] = v26;
  v32[24] = 0;
  v33.origin.x = a8;
  v33.origin.y = a9;
  v33.size.width = a10;
  v33.size.height = a11;
  if (!CGRectIsNull(v33))
  {
    v34.origin.x = a4;
    v34.origin.y = a5;
    v34.size.width = a6;
    v34.size.height = a7;
    v35.origin.x = a8;
    v35.origin.y = a9;
    v35.size.width = a10;
    v35.size.height = a11;
    if (!CGRectEqualToRect(v34, v35))
    {
      sub_1BBB83598();
      v27 = sub_1BBB83588();
      (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
      IntelligenceElement.visibleRegion.setter(v24);
    }
  }

  v28 = v31;
  *a3 = v30;
  a3[1] = v28;
  a3[2] = *v32;
  result = *&v32[9];
  *(a3 + 41) = *&v32[9];
  return result;
}

void *sub_1BBA9CE74(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t UIIntelligenceElementCollector.performElementArrayCollection(_:)(void (*a1)(uint64_t))
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementArrayCollectionResults;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1BBA9CE74(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1BBA9CE74((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v5[v8 + 4] = MEMORY[0x1E69E7CC0];
  *(v1 + v4) = v5;
  v9 = swift_endAccess();
  a1(v9);
  swift_beginAccess();
  v10 = *(v1 + v4);
  if (!v10[2])
  {
    __break(1u);
LABEL_10:
    result = sub_1BBB3D5B4(v10);
    v10 = result;
    v12 = *(result + 16);
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v12 = v10[2];
  if (v12)
  {
LABEL_8:
    v13 = v12 - 1;
    v14 = v10[v13 + 4];
    v10[2] = v13;
    *(v2 + v4) = v10;
    swift_endAccess();
    return v14;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t UIIntelligenceElementCollector.performElementCollection(_:)@<X0>(void (*a1)(uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC21UIIntelligenceSupport30UIIntelligenceElementCollector_elementCollectionResults;
  swift_beginAccess();
  v6 = *(v2 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1BBA9D2DC(0, v6[2] + 1, 1, v6);
    *(v2 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_1BBA9D2DC((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[8 * v9];
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  *(v10 + 73) = 0u;
  *(v2 + v5) = v6;
  v11 = swift_endAccess();
  a1(v11);
  result = swift_beginAccess();
  if (*(*(v2 + v5) + 16))
  {
    sub_1BBA9D410(&v16);
    if (*&v18[8] == 1)
    {
      v14[0] = v16;
      v14[1] = v17;
      v15[0] = *v18;
      *(v15 + 9) = *&v18[9];
      sub_1BBA8BCC4(v14, &qword_1EBC7CD38);
      sub_1BBB3D654(*(*(v2 + v5) + 16) - 1, &v19);
    }

    else
    {
      v19 = v16;
      v20 = v17;
      v21[0] = *v18;
      *(v21 + 9) = *&v18[9];
    }

    result = swift_endAccess();
    v13 = v20;
    *a2 = v19;
    a2[1] = v13;
    a2[2] = v21[0];
    *(a2 + 41) = *(v21 + 9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BBA9D2DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BBA9D410@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = v3[2];
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = &v3[8 * v6];
      v8 = v7[3];
      *a1 = v7[2];
      a1[1] = v8;
      a1[2] = v7[4];
      *(a1 + 41) = *(v7 + 73);
      v3[2] = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1BBB3D5A0(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1BBA9D498(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    swift_retain_n();
    os_unfair_lock_lock((a1 + 88));
    v12 = *(a1 + 40);

    os_unfair_lock_unlock((a1 + 88));
    sub_1BBAAE1FC(a1, a2, 1);
    if (v12)
    {

      if ((a6 & 1) == 0)
      {
        sub_1BBAAE1FC(a1, a2, 1);
        return 0;
      }

LABEL_9:

      os_unfair_lock_lock((a1 + 88));
      v14 = *(a1 + 16);
      v15 = *(a1 + 40);

      os_unfair_lock_unlock((a1 + 88));
      os_unfair_lock_lock((a4 + 88));
      v16 = *(a4 + 16);
      v17 = *(a4 + 40);

      os_unfair_lock_unlock((a4 + 88));
      sub_1BBAAE1FC(a1, a2, a3 & 1);
      sub_1BBAAE1FC(a4, a5, 1);
      if (v15)
      {
        if (v17)
        {

          return v14 == v16;
        }

        goto LABEL_32;
      }

      if (v17)
      {
LABEL_32:

LABEL_33:

        return 0;
      }

LABEL_37:

      return 1;
    }
  }

  else
  {
    sub_1BBA9D804(a1, a2, 0);
    sub_1BBA9D804(a1, a2, 0);
  }

  if (a6)
  {

    os_unfair_lock_lock((a4 + 88));
    v13 = *(a4 + 40);

    os_unfair_lock_unlock((a4 + 88));
    sub_1BBAAE1FC(a4, a5, 1);
    if (v13)
    {

      if ((a3 & 1) == 0)
      {
        sub_1BBAAE1FC(a1, a2, 0);
        return 0;
      }

      goto LABEL_9;
    }
  }

  else
  {
    sub_1BBA9D804(a4, a5, 0);
  }

  sub_1BBAAE1FC(a1, a2, a3 & 1);
  if ((a3 & 1) == 0)
  {
    sub_1BBA9D804(a1, a2, 0);
    v22 = a2;
    v21 = a1;
    if ((a6 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:

    os_unfair_lock_lock((a4 + 88));
    v24 = *(a4 + 56);
    v25 = *(a4 + 64);
    v23 = v24;
    v26 = v25;
    if (v25 == 1)
    {
      v23 = *(a4 + 72);
      v26 = *(a4 + 80);
    }

    sub_1BBAE582C(v24, v25);
    os_unfair_lock_unlock((a4 + 88));
    sub_1BBAAE1FC(a4, a5, 1);
    a5 = v26;
    if (v22)
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  os_unfair_lock_lock((a1 + 88));
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = v19;
  v22 = v20;
  if (v20 == 1)
  {
    v21 = *(a1 + 72);
    v22 = *(a1 + 80);
  }

  sub_1BBAE582C(v19, v20);
  os_unfair_lock_unlock((a1 + 88));
  sub_1BBAAE1FC(a1, a2, 1);
  if (a6)
  {
    goto LABEL_20;
  }

LABEL_17:
  sub_1BBA9D804(a4, a5, 0);
  if (v22)
  {
    v23 = a4;
LABEL_23:
    if (!a5)
    {
      goto LABEL_33;
    }

    if (v21 != v23 || v22 != a5)
    {
      v27 = sub_1BBB842F8();

      return v27 & 1;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (a5)
  {
    goto LABEL_33;
  }

  return 1;
}

uint64_t sub_1BBA9D804(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1BBA9D814(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for IntelligenceElement.StorageValue();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  v13 = sub_1BBA9D498(a1, a2, 0, 0, 0, 0);
  sub_1BBAAE1FC(0, 0, 0);
  if (v13)
  {
    sub_1BBAAE1FC(a1, a2, 0);
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  else
  {
    *v9 = a1;
    *(v9 + 1) = a2;
    v9[16] = 0;
    swift_storeEnumTagMultiPayload();
    sub_1BBA969BC(v9, v12, type metadata accessor for IntelligenceElement.StorageValue);
    (*(v7 + 56))(v12, 0, 1, v6);
  }

  return sub_1BBA993C4(v12, a3);
}

uint64_t IntelligenceElement.pruned()@<X0>(CGPoint *a1@<X8>)
{
  v3 = sub_1BBB83588();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBC8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBA8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - v19;
  v21 = v1[2];
  v65 = v1[1];
  *v66 = v21;
  v64 = *v1;
  *&v66[9] = *(v1 + 41);
  *&v61 = v21;
  *&v59[0] = 0x9000000000000004;
  sub_1BBA8BD24(v21);
  v22 = _s21UIIntelligenceSupport19IntelligenceElementV7ContentO2eeoiySbAE_AEtFZ_0(&v61, v59);
  result = sub_1BBA8ABF8(v61);
  if ((v22 & 1) == 0)
  {
    v41 = v65;
    *a1 = v64;
    a1[1] = v41;
    a1[2] = *v66;
    v42 = *&v66[9];
LABEL_16:
    *(&a1[2].y + 1) = v42;
    v45 = &v61;
    return sub_1BBA9B788(&v64, v45);
  }

  v24 = *&v66[8];
  v25 = *(*&v66[8] + 16);
  if (v25 > 1)
  {
    goto LABEL_15;
  }

  v26 = *&v66[16];
  v27 = *(*&v66[16] + 16);
  if (!v27)
  {
    goto LABEL_7;
  }

  if (v27 != 1)
  {
LABEL_15:
    v44 = v65;
    *a1 = v64;
    a1[1] = v44;
    a1[2] = *v66;
    v42 = *&v66[9];
    goto LABEL_16;
  }

  v28 = sub_1BBA99764(0);
  if ((v29 & 1) == 0)
  {
    v43 = type metadata accessor for IntelligenceElement.StorageValue();
    (*(*(v43 - 8) + 56))(v20, 1, 1, v43);
    sub_1BBA8BCC4(v20, &qword_1EBC7BBB0);
    goto LABEL_15;
  }

  v30 = *(v26 + 56);
  v50 = v28;
  v51 = v30;
  v52 = type metadata accessor for IntelligenceElement.StorageValue();
  v31 = *(v52 - 8);
  sub_1BBA966C4(v51 + *(v31 + 72) * v50, v20, type metadata accessor for IntelligenceElement.StorageValue);
  (*(v31 + 56))(v20, 0, 1, v52);
  result = sub_1BBA8BCC4(v20, &qword_1EBC7BBB0);
  v25 = *(v24 + 16);
LABEL_7:
  if (!v25)
  {
    *(&a1[2].y + 1) = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  v32 = *(v24 + 48);
  v61 = *(v24 + 32);
  v62 = v32;
  v63[0] = *(v24 + 64);
  *(v63 + 9) = *(v24 + 73);
  v33 = v61;
  v34 = v32;
  v35 = v64;
  v36 = v65;
  sub_1BBA9B788(&v61, v59);
  v67.origin = v33;
  v67.size = v34;
  v68.origin = v35;
  v68.size = v36;
  if (!CGRectEqualToRect(v67, v68))
  {
    goto LABEL_21;
  }

  v59[0] = v61;
  v59[1] = v62;
  v60[0] = v63[0];
  *(v60 + 9) = *(v63 + 9);
  IntelligenceElement.visibleRegion.getter(v17);
  v56 = v64;
  v57 = v65;
  v58[0] = *v66;
  *(v58 + 9) = *&v66[9];
  IntelligenceElement.visibleRegion.getter(v14);
  v37 = *(v7 + 48);
  v38 = v53;
  sub_1BBA8BC5C(v17, v53, &qword_1EBC7BBA8);
  v52 = v37;
  sub_1BBA8BC5C(v14, v38 + v37, &qword_1EBC7BBA8);
  v39 = v54;
  v40 = *(v55 + 48);
  if (v40(v38, 1, v54) != 1)
  {
    sub_1BBA8BC5C(v38, v11, &qword_1EBC7BBA8);
    if (v40(v38 + v52, 1, v39) != 1)
    {
      v47 = v55;
      (*(v55 + 32))(v6, v38 + v52, v39);
      sub_1BBA8AD64(&qword_1EBC7B530, MEMORY[0x1E695EF18]);
      LODWORD(v52) = sub_1BBB83968();
      v48 = *(v47 + 8);
      v48(v6, v39);
      sub_1BBA8BCC4(v14, &qword_1EBC7BBA8);
      sub_1BBA8BCC4(v17, &qword_1EBC7BBA8);
      v48(v11, v39);
      result = sub_1BBA8BCC4(v38, &qword_1EBC7BBA8);
      if (v52)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    sub_1BBA8BCC4(v14, &qword_1EBC7BBA8);
    sub_1BBA8BCC4(v17, &qword_1EBC7BBA8);
    (*(v55 + 8))(v11, v39);
    goto LABEL_20;
  }

  sub_1BBA8BCC4(v14, &qword_1EBC7BBA8);
  sub_1BBA8BCC4(v17, &qword_1EBC7BBA8);
  if (v40(v38 + v52, 1, v39) != 1)
  {
LABEL_20:
    sub_1BBA8BCC4(v38, &qword_1EBC7BBC8);
LABEL_21:
    sub_1BBA9E174(&v61);
    v46 = v65;
    *a1 = v64;
    a1[1] = v46;
    a1[2] = *v66;
    *(a1 + 41) = *&v66[9];
    v45 = v59;
    return sub_1BBA9B788(&v64, v45);
  }

  result = sub_1BBA8BCC4(v38, &qword_1EBC7BBA8);
LABEL_23:
  v49 = v62;
  *a1 = v61;
  a1[1] = v49;
  a1[2] = v63[0];
  *(a1 + 41) = *(v63 + 9);
  return result;
}

unint64_t sub_1BBA9E1C8()
{
  result = qword_1EBC7B3B8;
  if (!qword_1EBC7B3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BBF0);
    sub_1BBAE6CF0();
    sub_1BBA8AD64(&qword_1EBC7B490, type metadata accessor for IntelligenceElement.StorageValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3B8);
  }

  return result;
}

uint64_t IntelligenceElement.Scrollable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA9E5A0();
  sub_1BBB84478();
  swift_beginAccess();
  v9 = *(v8 + 32);
  v12 = *(v8 + 16);
  LOBYTE(v13) = v9;
  v14 = 0;
  type metadata accessor for CGSize(0);
  sub_1BBA9E608(&qword_1EBC7B208, type metadata accessor for CGSize);
  sub_1BBB84238();
  if (!v2)
  {
    v12 = *(v8 + 40);
    v14 = 1;
    sub_1BBB84288();
    v12 = *(v8 + 56);
    v14 = 2;
    type metadata accessor for CGPoint(0);
    sub_1BBA9E608(&qword_1EBC7B200, type metadata accessor for CGPoint);
    sub_1BBB84288();
    v10 = *(v8 + 88);
    v12 = *(v8 + 72);
    v13 = v10;
    v14 = 3;
    sub_1BBAA2E90();
    sub_1BBB84288();
    *&v12 = *(v8 + 104);
    v14 = 4;
    sub_1BBA9FA4C();
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBA9E5A0()
{
  result = qword_1EBC7B510;
  if (!qword_1EBC7B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B510);
  }

  return result;
}

uint64_t sub_1BBA9E608(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBA9E650()
{
  v1 = *v0;
  v2 = 0x695373646E756F62;
  v3 = 0x4F746E65746E6F63;
  v4 = 0x49746E65746E6F63;
  if (v1 != 3)
  {
    v4 = 0x62616C6C6F726373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x53746E65746E6F63;
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

uint64_t IntelligenceElement.EdgeInsets.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA9E938();
  sub_1BBB84478();
  v14 = v9;
  HIBYTE(v13) = 0;
  sub_1BBA9E98C();
  sub_1BBB84288();
  if (!v2)
  {
    v14 = v8;
    HIBYTE(v13) = 1;
    sub_1BBB84288();
    v14 = v11;
    HIBYTE(v13) = 2;
    sub_1BBB84288();
    v14 = v10;
    HIBYTE(v13) = 3;
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBA9E938()
{
  result = qword_1EBC7B528;
  if (!qword_1EBC7B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B528);
  }

  return result;
}

unint64_t sub_1BBA9E98C()
{
  result = qword_1EBC7B378;
  if (!qword_1EBC7B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B378);
  }

  return result;
}

uint64_t IntelligenceElement.Button.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAB8);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA3008();
  sub_1BBB84478();
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  *(v36 + 9) = *(v6 + 57);
  v35[1] = v8;
  v36[0] = v9;
  v35[0] = v7;
  v32 = v7;
  v33 = v8;
  v34[0] = v9;
  *(v34 + 9) = *(v36 + 9);
  v31 = 0;
  sub_1BBA9EDF0(v35, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAA8);
  sub_1BBAA305C();
  v10 = v17;
  sub_1BBB84288();
  if (v10)
  {
    v28 = v32;
    v29 = v33;
    *v30 = v34[0];
    *&v30[9] = *(v34 + 9);
    sub_1BBA8BCC4(&v28, &qword_1EBC7BAA8);
    return (*(v37 + 8))(v5, v3);
  }

  else
  {
    v12 = v5;
    v13 = v37;
    v26[0] = v32;
    v26[1] = v33;
    v27[0] = v34[0];
    *(v27 + 9) = *(v34 + 9);
    sub_1BBA8BCC4(v26, &qword_1EBC7BAA8);
    v14 = *(v6 + 96);
    v28 = *(v6 + 80);
    v29 = v14;
    v16 = *(v6 + 80);
    v15 = *(v6 + 96);
    *v30 = *(v6 + 112);
    *&v30[9] = *(v6 + 121);
    v23 = v16;
    v24 = v15;
    v25[0] = *(v6 + 112);
    *(v25 + 9) = *(v6 + 121);
    v22 = 1;
    sub_1BBA9EDF0(&v28, v20);
    sub_1BBB84288();
    v20[0] = v23;
    v20[1] = v24;
    *v21 = v25[0];
    *&v21[9] = *(v25 + 9);
    sub_1BBA8BCC4(v20, &qword_1EBC7BAA8);
    v19 = *(v6 + 137);
    v18 = 2;
    sub_1BBA9EED0();
    sub_1BBB84288();
    if (*(v6 + 138) != 2)
    {
      v19 = *(v6 + 138);
      v18 = 3;
      sub_1BBAD1A70();
      sub_1BBB84288();
    }

    return (*(v13 + 8))(v12, v3);
  }
}

uint64_t sub_1BBA9EDF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBA9EE60()
{
  v1 = 0x656C746974;
  v2 = 1701605234;
  if (*v0 != 2)
  {
    v2 = 0x656D656C62616E65;
  }

  if (*v0)
  {
    v1 = 0x6567616D69;
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

unint64_t sub_1BBA9EED0()
{
  result = qword_1EBC7AF58;
  if (!qword_1EBC7AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF58);
  }

  return result;
}

uint64_t IntelligenceElement.Button.Role.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAC8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAD0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAD8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAE0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BAE8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA9F374();
  sub_1BBB84478();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BBAD1BC0();
      v18 = v27;
      sub_1BBB84208();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BBAD1B6C();
      v18 = v30;
      sub_1BBB84208();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BBAD1C14();
    v18 = v24;
    sub_1BBB84208();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BBA9F3C8();
  sub_1BBB84208();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1BBA9F374()
{
  result = qword_1EBC7B148;
  if (!qword_1EBC7B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B148);
  }

  return result;
}

unint64_t sub_1BBA9F3C8()
{
  result = qword_1EBC7B120;
  if (!qword_1EBC7B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B120);
  }

  return result;
}

uint64_t sub_1BBA9F420()
{
  v1 = 0x6C616D726F6ELL;
  v2 = 0x6C65636E6163;
  if (*v0 != 2)
  {
    v2 = 0x7463757274736564;
  }

  if (*v0)
  {
    v1 = 0x7972616D697270;
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

uint64_t sub_1BBA9F49C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

unint64_t sub_1BBA9F4CC()
{
  result = qword_1ED6BDA90;
  if (!qword_1ED6BDA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7CB68);
    sub_1BBA944F4();
    sub_1BBAAE144(&qword_1ED6BDA78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDA90);
  }

  return result;
}

uint64_t sub_1BBA9F57C()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0x74736F706E676973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E656D67617266;
  }
}

unint64_t sub_1BBA9F5EC(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t IntelligenceFragmentCollector.deinit()
{
  v1 = *(v0 + 16);
  v2 = v1 + *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  LODWORD(v2) = *(v2 + *(type metadata accessor for IntelligenceFragmentCollector.State() + 20));
  os_unfair_lock_unlock((v1 + v3));

  if (v2 == 1)
  {

    v4 = *(v0 + 104);
    v5 = *(v0 + 136);
    v9[6] = *(v0 + 120);
    v10[0] = v5;
    *(v10 + 15) = *(v0 + 151);
    v6 = *(v0 + 40);
    v7 = *(v0 + 72);
    v9[2] = *(v0 + 56);
    v9[3] = v7;
    v9[4] = *(v0 + 88);
    v9[5] = v4;
    v9[0] = *(v0 + 24);
    v9[1] = v6;
    sub_1BBAA3F38(v9);
    return v0;
  }

  else
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBA9F784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t IntelligenceElement.Collection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C490);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB586C();
  sub_1BBB84478();
  swift_beginAccess();
  LOBYTE(v10) = 0;
  sub_1BBB84278();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_1BBB84278();
    LOBYTE(v10) = *(v8 + 32);
    v11 = 2;
    sub_1BBAB59BC();
    sub_1BBB84288();
    v10 = *(v8 + 40);
    v11 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    sub_1BBAA0B24(&qword_1ED6BDCB0, sub_1BBAB5674);
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBA9FA4C()
{
  result = qword_1EBC7B2C0[0];
  if (!qword_1EBC7B2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBC7B2C0);
  }

  return result;
}

unint64_t sub_1BBA9FAA0()
{
  result = qword_1EBC7B470;
  if (!qword_1EBC7B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B470);
  }

  return result;
}

uint64_t IntelligenceFragmentCollector.__deallocating_deinit()
{
  IntelligenceFragmentCollector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BBA9FB28()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_1BBA9FBD4()
{
  result = qword_1ED6BEB30;
  if (!qword_1ED6BEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEB30);
  }

  return result;
}

unint64_t sub_1BBA9FC28()
{
  result = qword_1EBC7ADE0;
  if (!qword_1EBC7ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADE0);
  }

  return result;
}

uint64_t sub_1BBA9FCA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BBB834F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BBA9FD64()
{
  result = qword_1EBC7ABB8;
  if (!qword_1EBC7ABB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BBF0);
    sub_1BBAE6D44();
    sub_1BBA8AD64(&qword_1EBC7AD88, type metadata accessor for IntelligenceElement.StorageValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ABB8);
  }

  return result;
}

uint64_t type metadata accessor for IntelligenceUserActivity()
{
  result = qword_1ED6BEE50;
  if (!qword_1ED6BEE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBA9FE6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBA9FEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceImage.InternalRepresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1BBA9FF10()
{
  result = qword_1EBC7ACA8;
  if (!qword_1EBC7ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACA8);
  }

  return result;
}

uint64_t sub_1BBA9FF64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t IntelligenceElement.Content.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D080);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBA8C4B8();
  sub_1BBB84458();
  if (!v2)
  {
    v14 = 0;
    sub_1BBAA6B04();
    sub_1BBB841B8();
    switch(v13)
    {
      case 1:
        (*(v6 + 8))(v8, v5);
        *a2 = 0x9000000000000005;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 2:
        v14 = 1;
        sub_1BBAA7220();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 4;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 3:
        v14 = 1;
        sub_1BBAA69E8();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x1000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 4:
        v14 = 1;
        sub_1BBACD36C();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x1000000000000004;
        goto LABEL_25;
      case 5:
        v14 = 1;
        sub_1BBB50710();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x2000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 6:
        v14 = 1;
        sub_1BBB506BC();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x2000000000000004;
        goto LABEL_25;
      case 7:
        v14 = 1;
        sub_1BBAB86C8();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x3000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 8:
        v14 = 1;
        sub_1BBB50668();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x3000000000000004;
        goto LABEL_25;
      case 9:
        v14 = 1;
        sub_1BBB50614();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x4000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 10:
        v14 = 1;
        sub_1BBB505C0();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x4000000000000004;
        goto LABEL_25;
      case 11:
        v14 = 1;
        sub_1BBB5056C();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x5000000000000000;
        goto LABEL_25;
      case 12:
        v14 = 1;
        sub_1BBAB5C2C();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x5000000000000004;
        goto LABEL_25;
      case 13:
        v14 = 1;
        sub_1BBAB65D8();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x6000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 14:
        v14 = 1;
        sub_1BBAB8144();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x6000000000000004;
        goto LABEL_25;
      case 15:
        v14 = 1;
        sub_1BBAB7B88();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x7000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 16:
        v14 = 1;
        sub_1BBB50518();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x7000000000000004;
        goto LABEL_25;
      case 17:
        v14 = 1;
        sub_1BBB504C4();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        *a2 = v13 | 0x8000000000000000;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      case 18:
        v14 = 1;
        sub_1BBB50470();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x8000000000000004;
        goto LABEL_25;
      case 19:
        v14 = 1;
        sub_1BBB5041C();
        sub_1BBB841B8();
        (*(v6 + 8))(v8, v5);
        v10 = v13;
        v11 = 0x9000000000000000;
LABEL_25:
        *a2 = v10 | v11;
        break;
      default:
        (*(v6 + 8))(v8, v5);
        *a2 = 0x9000000000000004;
        break;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s6ScreenV7StorageVMa()
{
  result = qword_1EBC7B3D8;
  if (!qword_1EBC7B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BBAA0970()
{
  result = qword_1EBC7B190;
  if (!qword_1EBC7B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B190);
  }

  return result;
}

uint64_t _s14CollectionItemV7StorageVMa()
{
  result = qword_1EBC7B170;
  if (!qword_1EBC7B170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BBAA0A10(uint64_t a1, uint64_t a2)
{
  v4 = _s14CollectionItemV7StorageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBAA0A74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BBB83548();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA0AB8()
{
  v1 = 0x6E496C61626F6C67;
  if (*v0 != 1)
  {
    v1 = 0x7463656C65537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461507865646E69;
  }
}

uint64_t sub_1BBAA0B24(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BA80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA0B9C(void *a1, int a2)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC20);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC28);
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC30);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC38);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC40);
  v59 = *(v11 - 8);
  v60 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v41 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC48);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v41 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC50);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v41 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC58);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v41 - v15;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC60);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v41 - v16;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC68);
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v41 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC70);
  v42 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC78);
  v41 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v41 - v22;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC80);
  v24 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v26 = &v41 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA16DC();
  v74 = v26;
  sub_1BBB84478();
  v27 = (v24 + 8);
  if (v73 > 5u)
  {
    if (v73 > 8u)
    {
      if (v73 == 9)
      {
        v85 = 9;
        sub_1BBAE74B4();
        v30 = v64;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        v32 = v65;
        v31 = v66;
      }

      else if (v73 == 10)
      {
        v86 = 10;
        sub_1BBAACD5C();
        v30 = v67;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        v32 = v68;
        v31 = v69;
      }

      else
      {
        v87 = 11;
        sub_1BBAE7460();
        v30 = v70;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        v32 = v71;
        v31 = v72;
      }
    }

    else
    {
      if (v73 == 6)
      {
        v82 = 6;
        sub_1BBAE75B0();
        v37 = v55;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        (*(v56 + 8))(v37, v57);
        return (*v27)(v29, v28);
      }

      if (v73 == 7)
      {
        v83 = 7;
        sub_1BBAE755C();
        v30 = v58;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        v32 = v59;
        v31 = v60;
      }

      else
      {
        v84 = 8;
        sub_1BBAE7508();
        v30 = v61;
        v29 = v74;
        v28 = v75;
        sub_1BBB84208();
        v32 = v62;
        v31 = v63;
      }
    }

    (*(v32 + 8))(v30, v31);
    return (*v27)(v29, v28);
  }

  if (v73 > 2u)
  {
    if (v73 == 3)
    {
      v79 = 3;
      sub_1BBAE76AC();
      v38 = v46;
      v29 = v74;
      v28 = v75;
      sub_1BBB84208();
      (*(v47 + 8))(v38, v48);
    }

    else if (v73 == 4)
    {
      v80 = 4;
      sub_1BBAE7658();
      v33 = v49;
      v29 = v74;
      v28 = v75;
      sub_1BBB84208();
      (*(v50 + 8))(v33, v51);
    }

    else
    {
      v81 = 5;
      sub_1BBAE7604();
      v40 = v52;
      v29 = v74;
      v28 = v75;
      sub_1BBB84208();
      (*(v53 + 8))(v40, v54);
    }
  }

  else
  {
    if (!v73)
    {
      v76 = 0;
      sub_1BBAA1730();
      v34 = v74;
      v35 = v75;
      sub_1BBB84208();
      (*(v41 + 8))(v23, v21);
      return (*v27)(v34, v35);
    }

    if (v73 == 1)
    {
      v77 = 1;
      sub_1BBAE7754();
      v29 = v74;
      v28 = v75;
      sub_1BBB84208();
      (*(v42 + 8))(v20, v18);
    }

    else
    {
      v78 = 2;
      sub_1BBAE7700();
      v39 = v43;
      v29 = v74;
      v28 = v75;
      sub_1BBB84208();
      (*(v44 + 8))(v39, v45);
    }
  }

  return (*v27)(v29, v28);
}

unint64_t sub_1BBAA16DC()
{
  result = qword_1ED6BDC98;
  if (!qword_1ED6BDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC98);
  }

  return result;
}

unint64_t sub_1BBAA1730()
{
  result = qword_1EBC7B4F8;
  if (!qword_1EBC7B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4F8);
  }

  return result;
}

uint64_t sub_1BBAA178C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BBAA1844(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBAA18DC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    if (a1 != 10)
    {
      v6 = 0x6974634172657375;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000021;
    }

    v7 = 0xD000000000000013;
    v8 = 0xD000000000000013;
    if (a1 != 7)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x52656C6269736976;
    v2 = 0x7474416172747865;
    v3 = 0x79546D6F74737563;
    if (a1 != 4)
    {
      v3 = 0xD000000000000019;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001DLL;
    if (a1 != 1)
    {
      v4 = 0xD00000000000001FLL;
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
}

uint64_t sub_1BBAA1A9C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCD0);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v57 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCD8);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v57 - v6;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCE0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v57 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCE8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v57 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCF0);
  v57 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BCF8);
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v57 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD00);
  v58 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v57 - v12;
  v13 = sub_1BBB83588();
  v73 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for IntelligenceElement.StorageValue();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD08);
  v82 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v20 = &v57 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA26B4();
  v21 = v20;
  sub_1BBB84478();
  sub_1BBA966C4(v81, v18, type metadata accessor for IntelligenceElement.StorageValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v29 = v15;
    v31 = v76;
    v30 = v77;
    v32 = v74;
    v33 = v13;
    v34 = v78;
    v35 = v79;
    v36 = v75;
    v37 = v80;
    if (EnumCaseMultiPayload)
    {
      v38 = v87;
      if (EnumCaseMultiPayload == 1)
      {
        LOBYTE(v83) = 1;
        sub_1BBAE7EE0();
        sub_1BBB84208();
        sub_1BBB84258();
        (*(v30 + 8))(v31, v34);
        return (*(v82 + 8))(v21, v38);
      }

      else
      {
        v51 = *v18;
        v52 = *(v18 + 1);
        v53 = v18[16];
        LOBYTE(v83) = 2;
        sub_1BBAAE0D8();
        sub_1BBB84208();
        v83 = v51;
        v84 = v52;
        LOBYTE(v85) = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD60);
        sub_1BBAE7DA0();
        sub_1BBB84288();
        (*(v57 + 8))(v35, v37);
        (*(v82 + 8))(v21, v38);
        return sub_1BBAAE1FC(v51, v52, v53);
      }
    }

    else
    {
      v48 = v73;
      v49 = v29;
      v50 = v33;
      (*(v73 + 32))(v29, v18, v33);
      LOBYTE(v83) = 0;
      sub_1BBAA2708();
      sub_1BBB84208();
      sub_1BBA8AD64(&qword_1EBC7B380, MEMORY[0x1E695EF18]);
      sub_1BBB84288();
      (*(v58 + 8))(v32, v36);
      (*(v48 + 8))(v49, v50);
      return (*(v82 + 8))(v21, v87);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v40 = v87;
    v41 = v21;
    if (EnumCaseMultiPayload == 5)
    {
      v42 = *v18;
      v43 = *(v18 + 1);
      v44 = *(v18 + 2);
      v45 = v18[24];
      LOBYTE(v83) = 5;
      sub_1BBAE7898();
      v46 = v65;
      sub_1BBB84208();
      v83 = v42;
      v84 = v43;
      v85 = v44;
      v86 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD18);
      sub_1BBAE78EC(&qword_1EBC7AD78);
      v47 = v68;
      sub_1BBB84288();
      (*(v67 + 8))(v46, v47);
      (*(v82 + 8))(v41, v40);
      return sub_1BBAE5840(v42, v43, v44, v45);
    }

    else
    {
      v54 = v69;
      sub_1BBAA6758(v18, v69, &qword_1EBC7BBB8);
      LOBYTE(v83) = 6;
      sub_1BBAE77A8();
      v55 = v70;
      sub_1BBB84208();
      sub_1BBAAB688(&qword_1ED6BDB78);
      v56 = v72;
      sub_1BBB84288();
      (*(v71 + 8))(v55, v56);
      sub_1BBA8BCC4(v54, &qword_1EBC7BBB8);
      return (*(v82 + 8))(v21, v40);
    }
  }

  else
  {
    v23 = v87;
    v24 = *v18;
    v25 = v18[8];
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v83) = 3;
      sub_1BBAE7C78();
      v26 = v59;
      sub_1BBB84208();
      v83 = v24;
      LOBYTE(v84) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD50);
      sub_1BBAE7CCC();
      v27 = v61;
      sub_1BBB84288();
      v28 = &v88;
    }

    else
    {
      LOBYTE(v83) = 4;
      sub_1BBAE7AE4();
      v26 = v62;
      sub_1BBB84208();
      v83 = v24;
      LOBYTE(v84) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD28);
      sub_1BBAE7B38();
      v27 = v64;
      sub_1BBB84288();
      v28 = &v89;
    }

    (*(*(v28 - 32) + 8))(v26, v27);
    (*(v82 + 8))(v20, v23);
    return sub_1BBAE5820(v24, v25);
  }
}

unint64_t sub_1BBAA26B4()
{
  result = qword_1ED6BDBE8;
  if (!qword_1ED6BDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDBE8);
  }

  return result;
}

unint64_t sub_1BBAA2708()
{
  result = qword_1EBC7B4A8;
  if (!qword_1EBC7B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B4A8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IntelligenceElement.StorageValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceElement.StorageValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BBAA289C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 1819242338;
    if (v1 != 1)
    {
      v5 = 0x656C626164616F6CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E6F69676572;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 == 5)
    {
      v2 = 0xD000000000000019;
    }

    v3 = 0x656C626164616F6CLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t IntelligenceElement.Section.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CFD8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-v5];
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAB5A10();
  sub_1BBB84478();
  swift_beginAccess();
  LOBYTE(v31[0]) = 0;
  v8 = v35;
  sub_1BBB84278();
  if (!v8)
  {
    LOBYTE(v31[0]) = 1;
    sub_1BBB84278();
    v34 = *(v7 + 32);
    v33 = 2;
    sub_1BBAB56C8();
    sub_1BBB84288();
    v9 = *(v7 + 56);
    v10 = *(v7 + 40);
    *(v32 + 9) = *(v7 + 81);
    v11 = *(v7 + 72);
    v31[1] = v9;
    v32[0] = v11;
    v31[0] = v10;
    v28 = v10;
    v29 = v9;
    v30[0] = v11;
    *(v30 + 9) = *(v32 + 9);
    v27 = 3;
    sub_1BBA9EDF0(v31, v25);
    sub_1BBAB5674();
    sub_1BBB84238();
    v23[0] = v28;
    v23[1] = v29;
    v24[0] = v30[0];
    *(v24 + 9) = *(v30 + 9);
    sub_1BBA8BCC4(v23, &qword_1EBC7BAA8);
    v12 = *(v7 + 120);
    v25[0] = *(v7 + 104);
    v25[1] = v12;
    *v26 = *(v7 + 136);
    *&v26[9] = *(v7 + 145);
    v13 = *(v7 + 120);
    v20 = *(v7 + 104);
    v21 = v13;
    v22[0] = *(v7 + 136);
    *(v22 + 9) = *(v7 + 145);
    v19 = 4;
    sub_1BBA9EDF0(v25, v17);
    sub_1BBB84238();
    v17[0] = v20;
    v17[1] = v21;
    *v18 = v22[0];
    *&v18[9] = *(v22 + 9);
    sub_1BBA8BCC4(v17, &qword_1EBC7BAA8);
    v16 = *(v7 + 168);
    v15[7] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    sub_1BBAA0B24(&qword_1ED6BDCB0, sub_1BBAB5674);
    sub_1BBB84288();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1BBAA2DD4()
{
  result = qword_1EBC7B3C0;
  if (!qword_1EBC7B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B3C0);
  }

  return result;
}

unint64_t sub_1BBAA2E28()
{
  result = qword_1EBC7B348;
  if (!qword_1EBC7B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B348);
  }

  return result;
}

unint64_t sub_1BBAA2E90()
{
  result = qword_1EBC7B350;
  if (!qword_1EBC7B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B350);
  }

  return result;
}

uint64_t sub_1BBAA2EFC()
{
  v1 = 7368564;
  v2 = 0x6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x7468676972;
  }

  if (*v0)
  {
    v1 = 1952867692;
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

unint64_t sub_1BBAA2F60()
{
  result = qword_1EBC7B0E8;
  if (!qword_1EBC7B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B0E8);
  }

  return result;
}

unint64_t sub_1BBAA2FB4()
{
  result = qword_1EBC7AF50;
  if (!qword_1EBC7AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF50);
  }

  return result;
}

unint64_t sub_1BBAA3008()
{
  result = qword_1EBC7B160;
  if (!qword_1EBC7B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B160);
  }

  return result;
}

unint64_t sub_1BBAA305C()
{
  result = qword_1EBC7AF20;
  if (!qword_1EBC7AF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BAA8);
    sub_1BBAB5674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF20);
  }

  return result;
}

uint64_t IntelligenceFragment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA4C34();
  sub_1BBB84478();
  v9 = *(v3 + 8);
  *&v31[0] = *v3;
  BYTE8(v31[0]) = v9;
  LOBYTE(v27) = 0;
  sub_1BBA944F4();
  sub_1BBB84238();
  if (!v2)
  {
    v10 = type metadata accessor for IntelligenceFragment();
    v32 = 1;
    type metadata accessor for IntelligenceFragment.RemoteID(0);
    sub_1BBAA4EDC(&unk_1ED6BE000, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB84238();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v31[0] = *v11;
    v31[1] = v12;
    v13 = v11[3];
    v15 = *v11;
    v14 = v11[1];
    v31[2] = v11[2];
    v31[3] = v13;
    v27 = v15;
    v28 = v14;
    v16 = v11[3];
    v29 = v11[2];
    v30 = v16;
    v26 = 2;
    sub_1BBA8BC5C(v31, v25, &qword_1EBC7BBE0);
    sub_1BBACD2C4();
    sub_1BBB84238();
    v25[0] = v27;
    v25[1] = v28;
    v25[2] = v29;
    v25[3] = v30;
    sub_1BBA8BCC4(v25, &qword_1EBC7BBE0);
    v18 = (v3 + v10[7]);
    v19 = v18[2];
    v34 = v18[1];
    v35 = v19;
    v33 = *v18;
    v36 = 0x3FF0000000000000;
    v37 = 0;
    v38 = 0;
    v39 = 0x3FF0000000000000;
    v40 = 0;
    v41 = 0;
    if ((sub_1BBB83D78() & 1) == 0)
    {
      v22 = v33;
      v23 = v34;
      v24 = v35;
      v21 = 3;
      type metadata accessor for CGAffineTransform(0);
      sub_1BBAA4EDC(&qword_1EBC7C288, type metadata accessor for CGAffineTransform);
      sub_1BBB84288();
    }

    if (*(*(v3 + v10[8]) + 16))
    {
      *&v22 = *(v3 + v10[8]);
      v21 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
      sub_1BBAA0B24(&qword_1ED6BDCB0, sub_1BBAB5674);
      sub_1BBB84288();
    }

    if (*(*(v3 + v10[9]) + 16))
    {
      *&v22 = *(v3 + v10[9]);
      v21 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4F0);
      sub_1BBB1B6D4(&qword_1EBC7C4F8, sub_1BBB1B74C);
      sub_1BBB84288();
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t XPCClientMessage.TransferFragments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA433C();

  sub_1BBB84478();
  v16 = v9;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF48);
  sub_1BBAA4390(&qword_1ED6BDE90, &qword_1ED6BDFF8);
  sub_1BBB84288();

  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB68);
    sub_1BBA9F4CC();
    sub_1BBB84288();
    v16 = v10;
    v15 = 2;
    sub_1BBB83728();
    sub_1BBAA380C(&unk_1ED6BDED8, MEMORY[0x1E69E9400]);
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BBAA380C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BBAA3854(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BBB836A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(v2 + 32);
  os_unfair_lock_lock(v12 + 14);
  sub_1BBA83198(&v12[4], v26);
  os_unfair_lock_unlock(v12 + 14);
  if (v26[0])
  {
    v24 = a2;
    v25 = v26[0];
    if (qword_1ED6BE490 != -1)
    {
      swift_once();
    }

    v13 = sub_1BBB836E8();
    __swift_project_value_buffer(v13, qword_1ED6BE498);
    sub_1BBB836D8();
    sub_1BBB83688();

    v14 = sub_1BBB836D8();
    v15 = sub_1BBB83E38();
    if (sub_1BBB83E88())
    {
      v16 = swift_slowAlloc();
      *v16 = 134349056;
      *(v16 + 4) = *(a1 + 16);

      v17 = sub_1BBB83698();
      _os_signpost_emit_with_name_impl(&dword_1BBA81000, v14, v15, v17, "TransferFragments", "count=%{public}ld", v16, 0xCu);
      MEMORY[0x1BFB174E0](v16, -1, -1);
    }

    else
    {
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1BBB83728();
    swift_allocObject();
    v22 = sub_1BBB83718();
    (*(v6 + 8))(v11, v5);
    v26[0] = a1;
    v26[1] = v24;
    v26[2] = v22;
    sub_1BBA84270();

    sub_1BBB837A8();
    sub_1BBA9F5EC(v26[0]);
  }

  else
  {
    if (qword_1ED6BF170 != -1)
    {
      swift_once();
    }

    v18 = sub_1BBB83758();
    __swift_project_value_buffer(v18, qword_1ED6BF0A8);
    v25 = sub_1BBB83738();
    v19 = sub_1BBB83D48();
    if (os_log_type_enabled(v25, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BBA81000, v25, v19, "missing client session inside transferFragments", v20, 2u);
      MEMORY[0x1BFB174E0](v20, -1, -1);
    }

    v21 = v25;
  }
}

uint64_t sub_1BBAA3E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BBB834F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceElementVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BBAA3EDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BBAA3F68(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BBAA3FA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t XPCClientMessage.TransferFragments.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA433C();
  sub_1BBB84458();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CF48);
  v14 = 0;
  sub_1BBAA4390(&qword_1EBC7AB98, &unk_1EBC7AC78);
  sub_1BBB841B8();
  v9 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7CB68);
  v14 = 1;
  sub_1BBB4953C();
  sub_1BBB841B8();
  v13 = v15;
  sub_1BBB83728();
  v14 = 2;
  sub_1BBAA380C(&unk_1EBC7AC08, MEMORY[0x1E69E9400]);
  sub_1BBB841B8();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *a2 = v9;
  a2[1] = v11;
  a2[2] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1BBAA433C()
{
  result = qword_1ED6BEB48;
  if (!qword_1ED6BEB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BEB48);
  }

  return result;
}

uint64_t sub_1BBAA4390(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7CF48);
    sub_1BBAA380C(a2, type metadata accessor for IntelligenceFragment);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA4440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C478);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1BBAA451C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C478);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t IntelligenceFragment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v37 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C508);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v63 = &v37 - v5;
  v6 = type metadata accessor for IntelligenceFragment();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = 0;
  v9[8] = 1;
  v10 = v7[7];
  v11 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  v12 = *(*(v11 - 8) + 56);
  v41 = v10;
  v12(&v9[v10], 1, 1, v11);
  v13 = &v9[v7[8]];
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  *(v13 + 6) = 0;
  *(v13 + 7) = 1;
  v14 = &v9[v7[9]];
  v14->i64[0] = 0x3FF0000000000000;
  v14->i64[1] = 0;
  v14[1].i64[0] = 0;
  v14[1].i64[1] = 0x3FF0000000000000;
  v14[2].i64[0] = 0;
  v14[2].i64[1] = 0;
  v15 = v7[10];
  v16 = MEMORY[0x1E69E7CC0];
  *&v9[v15] = MEMORY[0x1E69E7CC0];
  v17 = v7[11];
  v46 = v9;
  *&v9[v17] = v16;
  v18 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1BBAA4C34();
  v19 = v45;
  sub_1BBB84458();
  if (v19)
  {
    v20 = v46;
  }

  else
  {
    v45 = v11;
    v38 = v15;
    v39 = v14;
    v37 = v17;
    v22 = v42;
    v21 = v43;
    LOBYTE(v57[0]) = 0;
    sub_1BBA95864();
    sub_1BBB84178();
    v23 = BYTE8(v59);
    v20 = v46;
    *v46 = v59;
    *(v20 + 8) = v23;
    LOBYTE(v59) = 1;
    sub_1BBAA4EDC(&qword_1EBC7B068, type metadata accessor for IntelligenceFragment.RemoteID);
    sub_1BBB84178();
    sub_1BBAA4F24(v21, v20 + v41);
    v58 = 2;
    sub_1BBAA6A9C();
    sub_1BBB84178();
    v53 = v59;
    v54 = v60;
    v55 = v61;
    v56 = v62;
    v24 = *(v13 + 1);
    v57[0] = *v13;
    v57[1] = v24;
    v25 = *(v13 + 3);
    v57[2] = *(v13 + 2);
    v57[3] = v25;
    sub_1BBA8BCC4(v57, &qword_1EBC7BBE0);
    v26 = v54;
    *v13 = v53;
    *(v13 + 1) = v26;
    v27 = v56;
    *(v13 + 2) = v55;
    *(v13 + 3) = v27;
    type metadata accessor for CGAffineTransform(0);
    v48 = 3;
    sub_1BBAA4EDC(&qword_1EBC7B060, type metadata accessor for CGAffineTransform);
    sub_1BBB84178();
    if (v52)
    {
      v28 = -1;
    }

    else
    {
      v28 = 0;
    }

    v29 = vdupq_n_s64(v28);
    v30 = vbslq_s8(v29, xmmword_1BBB8B2E0, v50);
    v31 = vbicq_s8(v51, v29);
    v32 = v39;
    *v39 = vbslq_s8(v29, xmmword_1BBB8B2D0, v49);
    v32[1] = v30;
    v32[2] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    v48 = 4;
    sub_1BBAA0B24(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB84178();
    v34 = v49.i64[0];
    v35 = MEMORY[0x1E69E7CC0];
    if (!v49.i64[0])
    {
      v34 = MEMORY[0x1E69E7CC0];
    }

    *(v20 + v38) = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C4F0);
    v48 = 5;
    sub_1BBB1B6D4(&qword_1EBC7ABA8, sub_1BBB1B7A0);
    sub_1BBB84178();
    if (v49.i64[0])
    {
      v36 = v49.i64[0];
    }

    else
    {
      v36 = v35;
    }

    (*(v22 + 8))(v63, v44);
    *(v20 + v37) = v36;
    sub_1BBB1B7F4(v20, v40);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return sub_1BBB1BBD8(v20, type metadata accessor for IntelligenceFragment);
}

unint64_t sub_1BBAA4C34()
{
  result = qword_1ED6BE770;
  if (!qword_1ED6BE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE770);
  }

  return result;
}

unint64_t sub_1BBAA4C88()
{
  v1 = *v0;
  v2 = 0x4974736575716572;
  v3 = 0xD000000000000014;
  v4 = 0x73746E656D656C65;
  if (v1 != 4)
  {
    v4 = 0x73646E616D6D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x444965746F6D6572;
  if (v1 != 1)
  {
    v5 = 0x49737365636F7270;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t storeEnumTagSinglePayload for IntelligenceImage.Representation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceImage.Representation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BBAA4E94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBAA4EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBAA4F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C478);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntelligenceElement.Window.identifier.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + *(_s6WindowV7StorageVMa() + 24));

  return v2;
}

uint64_t IntelligenceElement.traverseHierarchyWithContext(_:)(void (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v3 = v2[1];
  v6 = *v2;
  v7 = v3;
  v8[0] = v2[2];
  *(v8 + 9) = *(v2 + 41);
  *v5 = MEMORY[0x1E69E7CC0];
  memset(&v5[8], 0, 200);
  *&v5[208] = 1;
  *&v5[216] = 4;
  sub_1BBAAE20C(v5, a1, a2);
  v9[10] = *&v5[160];
  v9[11] = *&v5[176];
  v10[0] = *&v5[192];
  *(v10 + 10) = *&v5[202];
  v9[6] = *&v5[96];
  v9[7] = *&v5[112];
  v9[8] = *&v5[128];
  v9[9] = *&v5[144];
  v9[2] = *&v5[32];
  v9[3] = *&v5[48];
  v9[4] = *&v5[64];
  v9[5] = *&v5[80];
  v9[0] = *v5;
  v9[1] = *&v5[16];
  return sub_1BBAA53A8(v9);
}

uint64_t sub_1BBAA513C(unsigned __int8 a1)
{
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(v1 + 48);
  if (!*(v10 + 16))
  {
    return 0;
  }

  v11 = sub_1BBA99764(a1);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_1BBA966C4(*(v10 + 56) + *(v4 + 72) * v11, v9, type metadata accessor for IntelligenceElement.StorageValue);
  sub_1BBA966C4(v9, v6, type metadata accessor for IntelligenceElement.StorageValue);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1BBA9C144(v6, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
    return 0;
  }

  v14 = *v6;
  v13 = *(v6 + 1);
  v15 = v6[16];
  sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
  if (v15 != 1)
  {
    return v14;
  }

  os_unfair_lock_lock((v14 + 88));
  v16 = *(v14 + 56);
  v17 = *(v14 + 64);
  v18 = v16;
  if (v17 == 1)
  {
    v18 = *(v14 + 72);
  }

  sub_1BBAE582C(v16, v17);
  os_unfair_lock_unlock((v14 + 88));
  sub_1BBAAE1FC(v14, v13, 1);
  sub_1BBAAE1FC(v14, v13, 1);
  return v18;
}

uint64_t IntelligenceElement.TraversalContext.window.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v9 = *(v1 + 112);
  v10 = v2;
  v11 = *(v1 + 144);
  v3 = v11;
  v4 = *(v1 + 96);
  v8[0] = *(v1 + 80);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1BBA8BC5C(v8, v7, &qword_1EBC7BBD8);
}

uint64_t sub_1BBAA53D8(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4)
  {
    v8 = (result + 32);
    do
    {
      v9 = v8[1];
      v38[0] = *v8;
      v38[1] = v9;
      v11 = *v8;
      v10 = v8[1];
      v39[0] = v8[2];
      *(v39 + 9) = *(v8 + 41);
      v36[2] = v11;
      v36[3] = v10;
      v37[0] = v8[2];
      *(v37 + 9) = *(v8 + 41);
      v12 = a2[1];
      v13 = v12;
      v40[0] = *a2;
      v40[1] = v12;
      v14 = a2[3];
      v15 = a2[5];
      v43 = a2[4];
      v44 = v15;
      v16 = a2[3];
      v41 = a2[2];
      v42 = v16;
      v17 = a2[7];
      v18 = a2[9];
      v47 = a2[8];
      v48 = v18;
      v19 = a2[7];
      v20 = a2[5];
      v45 = a2[6];
      v46 = v19;
      *(v51 + 10) = *(a2 + 202);
      v21 = a2[11];
      v51[0] = a2[12];
      v22 = a2[11];
      v23 = a2[9];
      v49 = a2[10];
      v50 = v22;
      v34 = v49;
      v35 = v21;
      v36[0] = a2[12];
      *(v36 + 10) = *(a2 + 202);
      v30 = v45;
      v31 = v17;
      v32 = v47;
      v33 = v23;
      v26 = v41;
      v27 = v14;
      v28 = v43;
      v29 = v20;
      v24 = v40[0];
      v25 = v13;
      sub_1BBA9B788(v38, v52);
      sub_1BBAA5104(v40, v52);
      sub_1BBAAE20C(&v24, a3, a4);
      v52[10] = v34;
      v52[11] = v35;
      v53[0] = v36[0];
      *(v53 + 10) = *(v36 + 10);
      v52[6] = v30;
      v52[7] = v31;
      v52[8] = v32;
      v52[9] = v33;
      v52[2] = v26;
      v52[3] = v27;
      v52[4] = v28;
      v52[5] = v29;
      v52[0] = v24;
      v52[1] = v25;
      sub_1BBAA53A8(v52);
      result = sub_1BBA9E174(v38);
      v8 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t IntelligenceElement.Window.appCurrentUserActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B818);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 20), v11, &qword_1EBC7BBB8);
  sub_1BBA8BC5C(v11, v8, &qword_1EBC7B820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v8;
    v15 = v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B828);
    sub_1BBA8BC5C(v15 + *(v17 + 28), v5, &qword_1EBC7B818);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v5, 1, v18) == 1)
    {
      sub_1BBA8BC5C(v15 + *(v17 + 32), a1, &qword_1EBC7B830);
      if (v19(v5, 1, v18) != 1)
      {
        sub_1BBA8BCC4(v5, &qword_1EBC7B818);
      }
    }

    else
    {
      sub_1BBAA6758(v5, a1, &qword_1EBC7B830);
    }

    os_unfair_lock_unlock((v14 + v16));
  }

  else
  {
    sub_1BBAA6758(v8, a1, &qword_1EBC7B830);
  }

  return sub_1BBA8BCC4(v11, &qword_1EBC7BBB8);
}

void IntelligenceElement.loadableAppIntentsPayload.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IntelligenceElement.StorageValue();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = *(v1 + 48);
  if (*(v10 + 16) && (v11 = sub_1BBA99764(8u), (v12 & 1) != 0))
  {
    sub_1BBA966C4(*(v10 + 56) + *(v4 + 72) * v11, v9, type metadata accessor for IntelligenceElement.StorageValue);
    sub_1BBA966C4(v9, v6, type metadata accessor for IntelligenceElement.StorageValue);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v14 = *v6;
      v13 = *(v6 + 1);
      v15 = *(v6 + 2);
      v16 = v6[24];
    }

    else
    {
      sub_1BBA9C144(v6, type metadata accessor for IntelligenceElement.StorageValue);
      v16 = 0;
      v15 = 0;
      v13 = 0;
      v14 = 0;
    }

    sub_1BBA9C144(v9, type metadata accessor for IntelligenceElement.StorageValue);
    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }
}

uint64_t IntelligenceElement.appIntentsPayload.getter()
{
  IntelligenceElement.loadableAppIntentsPayload.getter(&v10);
  v0 = v10;
  v1 = v11;
  v2 = v12;
  if (v13 == 1)
  {
    sub_1BBAE588C(v10, v11, v12, 1);
    os_unfair_lock_lock((v0 + 104));
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = v3;
    v7 = v4;
    v8 = v5;
    if (v5 == 1)
    {
      v6 = *(v0 + 80);
      v7 = *(v0 + 88);
      v8 = *(v0 + 96);
      sub_1BBAE5898(v6, v7, v8);
    }

    sub_1BBAE592C(v3, v4, v5);
    os_unfair_lock_unlock((v0 + 104));
    sub_1BBAE5840(v0, v1, v2, 1);
    sub_1BBAE5840(v0, v1, v2, 1);
    v0 = v6;
    v1 = v7;
    v2 = v8;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1BBAE58D8(v0, v1);
  sub_1BBAE584C(v0, v1, v2);
  return v0;
}

uint64_t IntelligenceElement.Window.appBundleIdentifier.getter()
{
  v1 = (*v0 + *(**v0 + 88));
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[3];
  v8[2] = v1[2];
  v9 = v4;
  v8[0] = v2;
  v8[1] = v3;
  if (*(&v4 + 1) == 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v9;
  }

  sub_1BBA8BC5C(v8, v7, &qword_1EBC7BBE0);
  return v5;
}

uint64_t IntelligenceElement.Text.text.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 88);
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_1BBB82FF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1BBB82FD8();
  (*(v3 + 8))(v5, v2);
  sub_1BBA8BDFC(&qword_1EBC7AE88, MEMORY[0x1EEE77F58]);
  return sub_1BBB83B68();
}

uint64_t IntelligenceElement.Text.attributedText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 88);
  swift_beginAccess();
  v5 = sub_1BBB83148();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

char *IntelligenceElement.Text.selections.getter()
{
  v1 = *v0;
  v2 = sub_1BBB83148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v60 = v4;
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*v1 + 88);
  swift_beginAccess();
  v7 = *(v3 + 16);
  v63 = v1;
  v58 = v3 + 16;
  v59 = v6;
  v57 = v7;
  (v7)(v5, v1 + v6, v2);
  v8 = sub_1BBB830D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB830F8();
  v12 = *(v3 + 8);
  v61 = v3 + 8;
  v62 = v2;
  v56 = v12;
  v12(v5, v2);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2A0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1BBA8BE44();
  sub_1BBB830E8();

  (*(v9 + 8))(v11, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2A8);
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v51 = v14;
  v19 = *(v14 + 16);
  v50 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v20;
  v19(v50, v50, v13, v18);
  sub_1BBAA6710(&qword_1EBC7AE70, &qword_1EBC7D2A0);
  v52 = v13;
  sub_1BBB83B98();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v49 - v23;
  v25 = sub_1BBAA6710(&qword_1EBC7AE78, &qword_1EBC7D2A8);
  v26 = MEMORY[0x1E69E7CC0];
  v54 = v21;
  v55 = v16;
  v53 = v25;
  while (1)
  {
    sub_1BBB83EB8();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D2B8);
    v28 = (*(*(v27 - 8) + 48))(v24, 1, v27);
    if (v28 == 1)
    {
      break;
    }

    v68 = &v49;
    MEMORY[0x1EEE9AC00](v28);
    v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = sub_1BBAA6758(v24, v30, &qword_1EBC7D2B8);
    v32 = *v30;
    if (v32 == 2 || (v32 & 1) == 0)
    {
      sub_1BBA8BCC4(v30, &qword_1EBC7D2B8);
    }

    else
    {
      v66 = &v49;
      v65 = *(v27 + 48);
      v33 = MEMORY[0x1EEE9AC00](v31);
      v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      v67 = v26;
      v36 = v62;
      v57(v35, v63 + v59, v62, v33);
      v37 = sub_1BBB82FF8();
      v64 = &v49;
      v38 = *(v37 - 8);
      MEMORY[0x1EEE9AC00](v37);
      v40 = &v49 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1BBB82FD8();
      v56(v35, v36);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D290);
      MEMORY[0x1EEE9AC00](v41 - 8);
      sub_1BBB83008();
      (*(v38 + 8))(v40, v37);
      v42 = sub_1BBB83A68();
      v44 = v43;
      v26 = v67;
      sub_1BBA8BCC4(v30, &qword_1EBC7D2B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BBA86A94(0, *(v26 + 2) + 1, 1, v26);
      }

      v46 = *(v26 + 2);
      v45 = *(v26 + 3);
      v21 = v54;
      v16 = v55;
      if (v46 >= v45 >> 1)
      {
        v26 = sub_1BBA86A94((v45 > 1), v46 + 1, 1, v26);
      }

      *(v26 + 2) = v46 + 1;
      v47 = &v26[16 * v46];
      *(v47 + 4) = v42;
      *(v47 + 5) = v44;
    }
  }

  (*(v49 + 8))(v21, v16);
  (*(v51 + 8))(v50, v52);
  return v26;
}

uint64_t sub_1BBAA6710(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA6758(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAA67C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1BBAA680C()
{
  if (*v0)
  {
    return 0x79616C50726163;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

unint64_t sub_1BBAA6840()
{
  result = qword_1EBC7ACC8;
  if (!qword_1EBC7ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACC8);
  }

  return result;
}

uint64_t sub_1BBAA6894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBAA6910(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BBAA6978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBAA69E8()
{
  result = qword_1EBC7ACB8;
  if (!qword_1EBC7ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACB8);
  }

  return result;
}

uint64_t sub_1BBAA6A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BBAA6A9C()
{
  result = qword_1EBC7AC68;
  if (!qword_1EBC7AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC68);
  }

  return result;
}

unint64_t sub_1BBAA6B04()
{
  result = qword_1EBC7ACB0;
  if (!qword_1EBC7ACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACB0);
  }

  return result;
}

uint64_t sub_1BBAA6B58(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001BBB9D070 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6565726373 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F646E6977 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x725065746F6D6572 && a2 == 0xED0000737365636FLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x70416D6F74737563 && a2 == 0xEF797469746E4570 || (sub_1BBB842F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64654D6567616D69 && a2 == 0xEA00000000006169 || (sub_1BBB842F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F74747562 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x62616C6C6F726373 && a2 == 0xEA0000000000656CLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEE006D6574496E6FLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F6974636573 && a2 == 0xE700000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C626174 && a2 == 0xE500000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x776F52656C626174 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6C6543656C626174 && a2 == 0xE90000000000006CLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BBB9D090 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_1BBAA7198()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 20;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BBAA71CC()
{
  result = qword_1ED6BE1C0;
  if (!qword_1ED6BE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1C0);
  }

  return result;
}

unint64_t sub_1BBAA7220()
{
  result = qword_1EBC7ACC0;
  if (!qword_1EBC7ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACC0);
  }

  return result;
}

unint64_t sub_1BBAA7274()
{
  result = qword_1EBC7ACD0;
  if (!qword_1EBC7ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ACD0);
  }

  return result;
}

uint64_t _s6ScreenV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IntelligenceElement.Screen.DisplayType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4E0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4E8);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4F0);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAAAC84();
  v12 = v31;
  sub_1BBB84458();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1BBB841F8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1BBA870CC();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1BBB84058();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v22 = &type metadata for IntelligenceElement.Screen.DisplayType;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1BBAA7834();
        sub_1BBB84118();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1BBB637DC();
        sub_1BBB84118();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1BBAA7834()
{
  result = qword_1EBC7D4D0;
  if (!qword_1EBC7D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D4D0);
  }

  return result;
}

uint64_t sub_1BBAA7888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646465626D65 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t sub_1BBAA79A0()
{
  v1 = 0x6465646465626D65;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1BBAA79FC(uint64_t a1, uint64_t a2)
{
  v4 = _s6WindowV7StorageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BBAA7A60()
{
  result = qword_1EBC7AE10;
  if (!qword_1EBC7AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE10);
  }

  return result;
}

unint64_t sub_1BBAA7AB4()
{
  result = qword_1EBC7AC58;
  if (!qword_1EBC7AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC58);
  }

  return result;
}

uint64_t IntelligenceElement.Window.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = a2;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v75 - v3;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v75 - v8;
  v10 = _s6WindowV7StorageVMa();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v75 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB38);
  v87 = *(v16 - 8);
  v88 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = a1[3];
  v136 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1BBAA8468();
  v89 = v18;
  v20 = v90;
  sub_1BBB84458();
  if (!v20)
  {
    v21 = v9;
    v22 = v87;
    v90 = v12;
    v23 = v15;
    v131 = 0;
    sub_1BBAA6A9C();
    sub_1BBB84178();
    v127 = v132;
    v128 = v133;
    v129 = v134;
    v130 = v135;
    LOBYTE(v126[0]) = 2;
    v24 = v22;
    v79 = sub_1BBB84138();
    v80 = v25;
    LOBYTE(v126[0]) = 3;
    LODWORD(v22) = sub_1BBB84148();
    LOBYTE(v126[0]) = 4;
    v26 = sub_1BBB84148();
    v78 = (v26 == 2) | v26;
    sub_1BBAA8D28(v126);
    v28 = type metadata accessor for IntelligenceUserActivity();
    v29 = *(*(v28 - 8) + 56);
    v77 = v22;
    v30 = v21;
    v29(v21, 1, 1, v28);
    v31 = v10;
    v32 = *(v10 + 20);
    v33 = v23;
    sub_1BBAA6758(v30, v23 + v32, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    v76 = v32;
    swift_storeEnumTagMultiPayload();
    v34 = type metadata accessor for IntelligenceImage(0);
    v35 = v84;
    (*(*(v34 - 8) + 56))(v84, 1, 1, v34);
    v36 = v31[9];
    sub_1BBAA6758(v35, &v36[v23], &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    v84 = v36;
    swift_storeEnumTagMultiPayload();
    v37 = v128;
    v38 = v130;
    *(v23 + 32) = v129;
    *(v23 + 48) = v38;
    v39 = v126[14];
    *v23 = v127;
    *(v23 + 16) = v37;
    v40 = (v23 + v31[6]);
    v41 = v80;
    *v40 = v79;
    v40[1] = v41;
    *(v23 + v31[7]) = v77 & 1;
    *(v23 + v31[8]) = v78 & 1;
    v42 = (v23 + v31[10]);
    v43 = v126[13];
    v42[12] = v126[12];
    v42[13] = v43;
    v42[14] = v39;
    v44 = v126[9];
    v42[8] = v126[8];
    v42[9] = v44;
    v45 = v126[11];
    v42[10] = v126[10];
    v42[11] = v45;
    v46 = v126[5];
    v42[4] = v126[4];
    v42[5] = v46;
    v47 = v126[7];
    v42[6] = v126[6];
    v42[7] = v47;
    v48 = v126[1];
    *v42 = v126[0];
    v42[1] = v48;
    v49 = v126[3];
    v42[2] = v126[2];
    v42[3] = v49;
    v50 = (v23 + v31[11]);
    *v50 = 0;
    v50[8] = 0;
    LOBYTE(v111) = 1;
    sub_1BBAAB770(&qword_1EBC7AD80);
    v51 = v86;
    sub_1BBB841B8();
    v85 = v50;
    sub_1BBAA6910(v51, v33 + v76, &qword_1EBC7BBB8);
    LOBYTE(v111) = 5;
    sub_1BBAA86F4(&qword_1EBC7AD68);
    v52 = v82;
    sub_1BBB841B8();
    sub_1BBAA6910(v52, &v84[v33], &qword_1EBC7B7E8);
    v110 = 6;
    sub_1BBAA7AB4();
    sub_1BBB84178();
    v105 = v122;
    v106 = v123;
    v107 = v124;
    v108 = v125;
    v101 = v118;
    v102 = v119;
    v103 = v120;
    v104 = v121;
    v98 = v115;
    v99 = v116;
    v100 = v117;
    v94 = v111;
    v95 = v112;
    v96 = v113;
    v97 = v114;
    v53 = v42[13];
    v109[12] = v42[12];
    v109[13] = v53;
    v109[14] = v42[14];
    v54 = v42[9];
    v109[8] = v42[8];
    v109[9] = v54;
    v55 = v42[11];
    v109[10] = v42[10];
    v109[11] = v55;
    v56 = v42[5];
    v109[4] = v42[4];
    v109[5] = v56;
    v57 = v42[7];
    v109[6] = v42[6];
    v109[7] = v57;
    v58 = v42[1];
    v109[0] = *v42;
    v109[1] = v58;
    v59 = v42[3];
    v109[2] = v42[2];
    v109[3] = v59;
    sub_1BBA8BCC4(v109, &qword_1EBC7D440);
    v60 = v105;
    v61 = v107;
    v62 = v108;
    v42[12] = v106;
    v42[13] = v61;
    v42[14] = v62;
    v63 = v101;
    v64 = v103;
    v65 = v104;
    v42[8] = v102;
    v42[9] = v64;
    v42[10] = v65;
    v42[11] = v60;
    v66 = v99;
    v42[4] = v98;
    v42[5] = v66;
    v42[6] = v100;
    v42[7] = v63;
    v67 = v95;
    *v42 = v94;
    v42[1] = v67;
    v68 = v97;
    v42[2] = v96;
    v42[3] = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB28);
    v91 = 7;
    sub_1BBAA87DC(&qword_1EBC7AD60);
    v69 = v88;
    v70 = v89;
    sub_1BBB841B8();
    (*(v24 + 8))(v70, v69);
    v71 = v92;
    LOBYTE(v69) = v93;
    v72 = v85;
    j__swift_release();
    *v72 = v71;
    *(v72 + 8) = v69;
    v73 = v90;
    sub_1BBAA79FC(v33, v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v74 = swift_allocObject();
    sub_1BBA9FF64(v73, v74 + *(*v74 + 88), _s6WindowV7StorageVMa);
    sub_1BBAA6A3C(v33, _s6WindowV7StorageVMa);
    *v81 = v74;
  }

  return __swift_destroy_boxed_opaque_existential_1(v136);
}

unint64_t sub_1BBAA8468()
{
  result = qword_1ED6BE310;
  if (!qword_1ED6BE310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE310);
  }

  return result;
}

void sub_1BBAA84BC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t IntelligenceElement.LoadableValue.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  _s13LoadableValueV22InternalRepresentationOMa();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BBAA86F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7E8);
    sub_1BBB829C4(&qword_1ED6BDDB0, &qword_1ED6BDDC0);
    sub_1BBB829C4(&qword_1ED6BDDB8, &qword_1ED6BE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA87DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7DB28);
    sub_1BBB82AA8(&qword_1ED6BDD58, sub_1BBB50614);
    sub_1BBB82AA8(&qword_1ED6BDD60, sub_1BBB50278);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAA88B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t IntelligenceElement.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1BBA96B70(MEMORY[0x1E69E7CC0]);
  v9 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BBA8AB90();
  sub_1BBB84458();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    v10 = a2;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBF0);
    LOBYTE(v25) = 0;
    sub_1BBA9FD64();
    sub_1BBB84178();
    v13 = v28;
    if (!v28)
    {
      v13 = sub_1BBA96B70(MEMORY[0x1E69E7CC0]);
    }

    v14 = v10;
    v15 = MEMORY[0x1E69E7CC0];
    type metadata accessor for CGRect(0);
    LOBYTE(v25) = 1;
    sub_1BBA8AD64(&qword_1EBC7AB78, type metadata accessor for CGRect);
    sub_1BBB84178();
    if (v32)
    {
      v16 = MEMORY[0x1E695F050];
      v18 = *(MEMORY[0x1E695F050] + 8);
      v17 = *(MEMORY[0x1E695F050] + 16);
      v19 = *(MEMORY[0x1E695F050] + 24);
    }

    else
    {
      v17 = v30;
      v19 = v31;
      v16 = &v28;
      v18 = v29;
    }

    v20 = *v16;
    LOBYTE(v25) = 2;
    sub_1BBA9FF10();
    sub_1BBB84178();
    v21 = v15;
    if ((~v28 & 0xF000000000000006) != 0)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0x9000000000000004;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    LOBYTE(v28) = 3;
    sub_1BBAA0B24(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB84178();
    if (v36)
    {
      v21 = v36;
    }

    (*(v11 + 8))(v8, v5);
    *&v25 = v20;
    *(&v25 + 1) = v18;
    *&v26 = v17;
    *(&v26 + 1) = v19;
    *v27 = v22;
    *&v27[8] = v21;
    *&v27[16] = v13;
    v27[24] = 0;
    v23 = v26;
    *v14 = v25;
    v14[1] = v23;
    v14[2] = *v27;
    *(v14 + 41) = *&v27[9];
    sub_1BBA9B788(&v25, &v28);
    __swift_destroy_boxed_opaque_existential_1(v24);
    v28 = v20;
    v29 = v18;
    v30 = v17;
    v31 = v19;
    v32 = v22;
    v33 = v21;
    v34 = v13;
    v35 = 0;
    return sub_1BBA9E174(&v28);
  }
}

double sub_1BBAA8D28(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1BBAA8D54@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BBAA8D80(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BBAA8D80(void *a1)
{
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1A8);
  v107 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v64 - v2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1B0);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v121 = &v64 - v3;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1B8);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v120 = &v64 - v4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1C0);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v119 = &v64 - v5;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1C8);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v118 = &v64 - v6;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1D0);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v117 = &v64 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1D8);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v116 = &v64 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1E0);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v115 = &v64 - v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1E8);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v114 = &v64 - v10;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1F0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v113 = &v64 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D1F8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v112 = &v64 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D200);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v111 = &v64 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D208);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v126 = &v64 - v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D210);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v125 = &v64 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D218);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v124 = &v64 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D220);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v110 = &v64 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D228);
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v109 = &v64 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D230);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v108 = &v64 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D238);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v21 = &v64 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D240);
  v70 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D248);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v29 = a1[3];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1BBA8D848();
  v30 = v127;
  sub_1BBB84458();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1(v128);
  }

  v67 = v24;
  v66 = v22;
  v68 = v21;
  v32 = v124;
  v31 = v125;
  v33 = v126;
  v34 = v26;
  v127 = v25;
  v69 = v28;
  v35 = sub_1BBB841F8();
  v36 = (2 * *(v35 + 16)) | 1;
  v129 = v35;
  v130 = v35 + 32;
  v131 = 0;
  v132 = v36;
  v37 = sub_1BBAA7198();
  if (v131 != v132 >> 1)
  {
LABEL_5:
    v42 = sub_1BBB84058();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
    *v44 = &_s7ContentO11EncodedTypeON;
    v45 = v127;
    v46 = v69;
    sub_1BBB84128();
    sub_1BBB84048();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v34 + 8))(v46, v45);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v128);
  }

  v65 = v37;
  v38 = v123;
  switch(v37)
  {
    case 0:
      v133 = 0;
      sub_1BBB50CA0();
      v39 = v67;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v70 + 8))(v39, v66);
      break;
    case 1:
      v133 = 1;
      sub_1BBB50C4C();
      v57 = v68;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v71 + 8))(v57, v72);
      break;
    case 2:
      v133 = 2;
      sub_1BBAA71CC();
      v54 = v108;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v73 + 8))(v54, v74);
      break;
    case 3:
      v133 = 3;
      sub_1BBAAB504();
      v56 = v109;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v75 + 8))(v56, v76);
      break;
    case 4:
      v133 = 4;
      sub_1BBB50BF8();
      v51 = v110;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v77 + 8))(v51, v78);
      break;
    case 5:
      v133 = 5;
      sub_1BBB50BA4();
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v79 + 8))(v32, v80);
      break;
    case 6:
      v133 = 6;
      sub_1BBB50B50();
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v82 + 8))(v31, v81);
      break;
    case 7:
      v133 = 7;
      sub_1BBA8D89C();
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v84 + 8))(v33, v83);
      break;
    case 8:
      v133 = 8;
      sub_1BBA90B24();
      v62 = v111;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v85 + 8))(v62, v86);
      break;
    case 9:
      v133 = 9;
      sub_1BBB50AFC();
      v53 = v112;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v87 + 8))(v53, v88);
      break;
    case 10:
      v133 = 10;
      sub_1BBB50AA8();
      v61 = v113;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v89 + 8))(v61, v90);
      break;
    case 11:
      v133 = 11;
      sub_1BBAA2F60();
      v50 = v114;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v91 + 8))(v50, v92);
      break;
    case 12:
      v133 = 12;
      sub_1BBAA2DD4();
      v52 = v115;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v93 + 8))(v52, v94);
      break;
    case 13:
      v133 = 13;
      sub_1BBAB5914();
      v59 = v116;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v95 + 8))(v59, v96);
      break;
    case 14:
      v133 = 14;
      sub_1BBA91534();
      v49 = v117;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v97 + 8))(v49, v98);
      break;
    case 15:
      v133 = 15;
      sub_1BBAB5770();
      v55 = v118;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v99 + 8))(v55, v100);
      break;
    case 16:
      v133 = 16;
      sub_1BBB50A54();
      v48 = v119;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v101 + 8))(v48, v102);
      break;
    case 17:
      v133 = 17;
      sub_1BBB50A00();
      v58 = v120;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v103 + 8))(v58, v104);
      break;
    case 18:
      v133 = 18;
      sub_1BBB509AC();
      v60 = v121;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v105 + 8))(v60, v106);
      break;
    case 19:
      v133 = 19;
      sub_1BBB50958();
      v63 = v122;
      v40 = v127;
      v41 = v69;
      sub_1BBB84118();
      (*(v107 + 8))(v63, v38);
      break;
    default:
      goto LABEL_5;
  }

  (*(v26 + 8))(v41, v40);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v128);
  return v65;
}

uint64_t sub_1BBAAA3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAA6B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t IntelligenceElement.Screen.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v51 = _s6ScreenV7StorageVMa();
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D458);
  v8 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v10 = &v41 - v9;
  v11 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1BBAAAA80();
  v12 = v53;
  sub_1BBB84458();
  if (!v12)
  {
    v13 = v7;
    v14 = v8;
    v15 = v51;
    v53 = v4;
    LOBYTE(v56) = 0;
    sub_1BBAA7274();
    v16 = v52;
    sub_1BBB84178();
    v17 = v72;
    LOBYTE(v56) = 1;
    sub_1BBAA6840();
    sub_1BBB84178();
    v18 = v14;
    v49 = v17;
    if (v72 == 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = v72;
    }

    LOBYTE(v72) = 2;
    v20 = sub_1BBB84138();
    v23 = v22;
    v47 = v20;
    v48 = v19;
    type metadata accessor for CGRect(0);
    LOBYTE(v56) = 3;
    sub_1BBAAB40C(&qword_1EBC7AB78, type metadata accessor for CGRect);
    sub_1BBB84178();
    v45 = v73;
    v46 = v72;
    v24 = v74;
    LOBYTE(v56) = 4;
    sub_1BBAA7A60();
    sub_1BBB84178();
    v44 = v24;
    if (BYTE8(v72))
    {
      v25 = 1.0;
    }

    else
    {
      v25 = *&v72;
    }

    LOBYTE(v56) = 5;
    sub_1BBAAB454();
    sub_1BBB84178();
    v43 = *(&v72 + 1);
    v26 = v72;
    v71 = 6;
    sub_1BBAA7AB4();
    sub_1BBB84178();
    v41 = v26;
    v42 = v23;
    v68 = v84;
    v69 = v85;
    v70 = v86;
    v64 = v80;
    v65 = v81;
    v66 = v82;
    v67 = v83;
    v60 = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v56 = v72;
    v57 = v73;
    v58 = v74;
    v59 = v75;
    type metadata accessor for IntelligenceImage(0);
    v55 = 7;
    sub_1BBAAB40C(&qword_1ED6BDDC0, type metadata accessor for IntelligenceImage);
    sub_1BBB84178();
    (*(v18 + 8))(v10, v16);
    v27 = v53;
    sub_1BBAA6978(v13, &v53[*(v15 + 44)]);
    v28 = v68;
    v29 = v69;
    v30 = v66;
    *(v27 + 264) = v67;
    *(v27 + 280) = v28;
    v31 = v70;
    *(v27 + 296) = v29;
    *(v27 + 312) = v31;
    v32 = v46;
    *(v27 + 40) = v45;
    *(v27 + 24) = v32;
    *(v27 + 64) = v25;
    v33 = v62;
    *(v27 + 200) = v63;
    v34 = v65;
    *(v27 + 216) = v64;
    *(v27 + 232) = v34;
    *(v27 + 248) = v30;
    v35 = v58;
    *(v27 + 136) = v59;
    v36 = v61;
    *(v27 + 152) = v60;
    *v27 = v49 & 1;
    *(v27 + 1) = v48;
    v37 = v42;
    *(v27 + 8) = v47;
    *(v27 + 16) = v37;
    *(v27 + 56) = v44;
    v38 = v43;
    *(v27 + 72) = v41;
    *(v27 + 80) = v38;
    *(v27 + 168) = v36;
    *(v27 + 184) = v33;
    v39 = v57;
    *(v27 + 88) = v56;
    *(v27 + 104) = v39;
    *(v27 + 120) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D438);
    v40 = swift_allocObject();
    sub_1BBAAB49C(v27, v40 + *(*v40 + 88), _s6ScreenV7StorageVMa);
    *v50 = v40;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_1BBAAAA80()
{
  result = qword_1ED6BE378;
  if (!qword_1ED6BE378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE378);
  }

  return result;
}

unint64_t sub_1BBAAAAD4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x746F687370616E73;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000019;
  if (v1 == 4)
  {
    v4 = 0x656C616373;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x696669746E656469;
  if (v1 != 2)
  {
    v5 = 0x756F426C65786970;
  }

  if (*v0)
  {
    v2 = 0x697463656E6E6F63;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t _s6ScreenV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1BBAAAC84()
{
  result = qword_1EBC7D4C8;
  if (!qword_1EBC7D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D4C8);
  }

  return result;
}

uint64_t sub_1BBAAACD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C50726163 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t IntelligenceElement.Screen.ConnectionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D490);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D498);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4A0);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D4A8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBAAB33C();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for IntelligenceElement.Screen.ConnectionType;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BBB63734();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBAAB3B8();
          v26 = v17;
          sub_1BBB84118();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBB63788();
        sub_1BBB84118();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1BBAAB33C()
{
  result = qword_1ED6BE360;
  if (!qword_1ED6BE360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE360);
  }

  return result;
}

uint64_t sub_1BBAAB390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAA7888(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1BBAAB3B8()
{
  result = qword_1EBC7D480;
  if (!qword_1EBC7D480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D480);
  }

  return result;
}

uint64_t sub_1BBAAB40C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BBAAB454()
{
  result = qword_1EBC7AE60;
  if (!qword_1EBC7AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AE60);
  }

  return result;
}

uint64_t sub_1BBAAB49C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BBAAB504()
{
  result = qword_1ED6BE1A8;
  if (!qword_1ED6BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE1A8);
  }

  return result;
}

unint64_t sub_1BBAAB570()
{
  v1 = *v0;
  v2 = 0x65636F7250707061;
  v3 = 0xD000000000000019;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x756C63634F6E6163;
  if (v1 != 4)
  {
    v4 = 0x746F687370616E73;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x696669746E656469;
  if (v1 != 2)
  {
    v5 = 0x6576697463417369;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1BBAAB688(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BBB8);
    sub_1BBAE77FC(&qword_1ED6BDD38, &qword_1ED6BDD48);
    sub_1BBAE77FC(&qword_1ED6BDD40, &qword_1ED6BDFE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAAB770(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BBB8);
    sub_1BBB82928(&qword_1ED6BDD38, &qword_1ED6BDD48);
    sub_1BBB82928(&qword_1ED6BDD40, &qword_1ED6BDFE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBAAB858(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

uint64_t IntelligenceElement.LoadableValue<>.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[6] = a3;
  v15 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16[-1] - v11;
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_1BBB84448();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_1BBB84308();
    (*(v7 + 32))(v9, v12, a2);
    IntelligenceElement.LoadableValue.init(_:)(v9, a2, v15);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBAABB1C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD70);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v86 = &v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD78);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v91 = &v55 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD80);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v90 = &v55 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD88);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v85 = &v55 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD90);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v84 = &v55 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD98);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v83 = &v55 - v9;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDA0);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v89 = &v55 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDA8);
  v67 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v88 = &v55 - v11;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDB0);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v87 = &v55 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDB8);
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v82 = &v55 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDC0);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDC8);
  v59 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDD0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v55 - v21;
  v23 = a1[3];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1BBAA16DC();
  v24 = v92;
  sub_1BBB84458();
  if (v24)
  {
    goto LABEL_12;
  }

  v56 = v18;
  v55 = v16;
  v57 = v15;
  v25 = v87;
  v26 = v88;
  v27 = v89;
  v28 = v90;
  v58 = 0;
  v29 = v91;
  v92 = v20;
  v30 = sub_1BBB841F8();
  v31 = (2 * *(v30 + 16)) | 1;
  v94 = v30;
  v95 = v30 + 32;
  v96 = 0;
  v97 = v31;
  v32 = sub_1BBAACD28();
  v33 = v22;
  if (v32 != 12 && v96 == v97 >> 1)
  {
    v20 = v32;
    if (v32 <= 5u)
    {
      if (v32 <= 2u)
      {
        v34 = v58;
        if (v32)
        {
          if (v32 == 1)
          {
            v98 = 1;
            sub_1BBAE7754();
            v35 = v57;
            sub_1BBB84118();
            if (!v34)
            {
              (*(v60 + 8))(v35, v61);
LABEL_45:
              v41 = v92;
              goto LABEL_47;
            }
          }

          else
          {
            v98 = 2;
            sub_1BBAE7700();
            v51 = v82;
            sub_1BBB84118();
            if (!v34)
            {
              (*(v62 + 8))(v51, v63);
              goto LABEL_45;
            }
          }
        }

        else
        {
          v98 = 0;
          sub_1BBAA1730();
          v47 = v56;
          sub_1BBB84118();
          if (!v34)
          {
            (*(v59 + 8))(v47, v55);
            goto LABEL_45;
          }
        }

        v41 = v92;
        goto LABEL_41;
      }

      v41 = v92;
      v44 = v58;
      if (v32 == 3)
      {
        v98 = 3;
        sub_1BBAE76AC();
        sub_1BBB84118();
        if (!v44)
        {
          (*(v64 + 8))(v25, v65);
          goto LABEL_47;
        }
      }

      else if (v32 == 4)
      {
        v98 = 4;
        sub_1BBAE7658();
        sub_1BBB84118();
        if (!v44)
        {
          (*(v67 + 8))(v26, v66);
          goto LABEL_47;
        }
      }

      else
      {
        v98 = 5;
        sub_1BBAE7604();
        sub_1BBB84118();
        if (!v44)
        {
          (*(v69 + 8))(v27, v68);
          goto LABEL_47;
        }
      }

      goto LABEL_41;
    }

    if (v32 <= 8u)
    {
      v41 = v92;
      if (v32 == 6)
      {
        v98 = 6;
        sub_1BBAE75B0();
        v48 = v83;
        v49 = v58;
        sub_1BBB84118();
        if (!v49)
        {
          (*(v70 + 8))(v48, v71);
          goto LABEL_47;
        }
      }

      else
      {
        v42 = v58;
        if (v32 == 7)
        {
          v98 = 7;
          sub_1BBAE755C();
          v43 = v84;
          sub_1BBB84118();
          if (!v42)
          {
            (*(v72 + 8))(v43, v73);
LABEL_47:
            (*(v41 + 8))(v33, v19);
LABEL_50:
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v93);
            return v20;
          }
        }

        else
        {
          v98 = 8;
          sub_1BBAE7508();
          v52 = v85;
          sub_1BBB84118();
          if (!v42)
          {
            (*(v74 + 8))(v52, v75);
            goto LABEL_47;
          }
        }
      }

LABEL_41:
      (*(v41 + 8))(v33, v19);
      goto LABEL_11;
    }

    v45 = v92;
    if (v32 == 9)
    {
      v98 = 9;
      sub_1BBAE74B4();
      v50 = v58;
      sub_1BBB84118();
      if (!v50)
      {
        (*(v76 + 8))(v28, v77);
        goto LABEL_49;
      }
    }

    else if (v32 == 10)
    {
      v98 = 10;
      sub_1BBAACD5C();
      v46 = v58;
      sub_1BBB84118();
      if (!v46)
      {
        (*(v78 + 8))(v29, v79);
LABEL_49:
        (*(v45 + 8))(v33, v19);
        goto LABEL_50;
      }
    }

    else
    {
      v98 = 11;
      sub_1BBAE7460();
      v53 = v86;
      v54 = v58;
      sub_1BBB84118();
      if (!v54)
      {
        (*(v80 + 8))(v53, v81);
        goto LABEL_49;
      }
    }

    (*(v45 + 8))(v33, v19);
    goto LABEL_11;
  }

  v36 = v19;
  v37 = sub_1BBB84058();
  swift_allocError();
  v39 = v38;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30) + 48);
  *v39 = &type metadata for IntelligenceElement.StorageKey;
  sub_1BBB84128();
  sub_1BBB84048();
  (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
  swift_willThrow();
  (*(v92 + 8))(v33, v36);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v93);
  return v20;
}

uint64_t sub_1BBAAC8FC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BBAABB1C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BBAAC928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBAAC950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBAAC950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52656C6269736976 && a2 == 0xED00006E6F696765;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001BBB9B4D0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001BBB9B4F0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7474416172747865 && a2 == 0xEF73657475626972 || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79546D6F74737563 && a2 == 0xEF73656D614E6570 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001BBB9B510 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BBB9B530 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BBB9B550 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9B570 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001BBB9B590 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BBB9B5C0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEC00000079746976)
  {

    return 11;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1BBAACD28()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BBAACD5C()
{
  result = qword_1ED6BDC40;
  if (!qword_1ED6BDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BDC40);
  }

  return result;
}

uint64_t sub_1BBAACDC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDD8);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v104 = &v79 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDE0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v103 = &v79 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDE8);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v102 = &v79 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDF0);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v108 = &v79 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BDF8);
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v100 = &v79 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE00);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v101 = &v79 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE08);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v106 = &v79 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE10);
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v11 = &v79 - v10;
  v110 = type metadata accessor for IntelligenceElement.StorageValue();
  MEMORY[0x1EEE9AC00](v110);
  v85 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = (&v79 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v83 = (&v79 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v79 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v79 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v79 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v79 - v30;
  v32 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1BBAA26B4();
  v107 = v11;
  v33 = v120;
  sub_1BBB84458();
  if (v33)
  {
    goto LABEL_9;
  }

  v79 = v25;
  v82 = v28;
  v80 = v22;
  v81 = v19;
  v34 = v106;
  v35 = v107;
  v37 = v108;
  v36 = v109;
  v39 = v110;
  v38 = v111;
  v120 = v31;
  v40 = sub_1BBB841F8();
  v41 = (2 * *(v40 + 16)) | 1;
  v116 = v40;
  v117 = v40 + 32;
  v118 = 0;
  v119 = v41;
  v42 = sub_1BBAAE0A4();
  if (v42 == 7 || v118 != v119 >> 1)
  {
    v45 = sub_1BBB84058();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
    *v47 = v39;
    sub_1BBB84128();
    sub_1BBB84048();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v105 + 8))(v35, v38);
    swift_unknownObjectRelease();
LABEL_9:
    v48 = v112;
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if (v42 <= 2u)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        LOBYTE(v113) = 1;
        sub_1BBAE7EE0();
        v50 = v101;
        sub_1BBB84118();
        v51 = v89;
        v71 = sub_1BBB84198();
        (*(v88 + 8))(v50, v51);
        (*(v105 + 8))(v35, v38);
        swift_unknownObjectRelease();
        v72 = v71 & 1;
        v73 = v79;
        *v79 = v72;
      }

      else
      {
        LOBYTE(v113) = 2;
        sub_1BBAAE0D8();
        v63 = v100;
        sub_1BBB84118();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD60);
        sub_1BBAE80DC();
        v64 = v90;
        sub_1BBB841B8();
        v65 = v105;
        (*(v91 + 8))(v63, v64);
        (*(v65 + 8))(v35, v38);
        swift_unknownObjectRelease();
        v74 = v114;
        v73 = v80;
        *v80 = v113;
        v73[16] = v74;
      }

      swift_storeEnumTagMultiPayload();
      v62 = v73;
    }

    else
    {
      LOBYTE(v113) = 0;
      sub_1BBAA2708();
      sub_1BBB84118();
      sub_1BBB83588();
      sub_1BBA8AD64(&qword_1EBC7AE20, MEMORY[0x1E695EF18]);
      v60 = v82;
      v61 = v87;
      sub_1BBB841B8();
      (*(v86 + 8))(v34, v61);
      (*(v105 + 8))(v35, v38);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v62 = v60;
    }

    v75 = v120;
    sub_1BBA969BC(v62, v120, type metadata accessor for IntelligenceElement.StorageValue);
    v76 = v112;
    v52 = v36;
  }

  else if (v42 > 4u)
  {
    v52 = v36;
    v53 = v105;
    if (v42 == 5)
    {
      LOBYTE(v113) = 5;
      sub_1BBAE7898();
      sub_1BBB84118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD18);
      sub_1BBAE78EC(&qword_1EBC7AD70);
      v54 = v97;
      v55 = v103;
      sub_1BBB841B8();
      (*(v96 + 8))(v55, v54);
      (*(v53 + 8))(v35, v38);
      swift_unknownObjectRelease();
      v56 = v114;
      v57 = v115;
      v58 = v84;
      *v84 = v113;
      *(v58 + 2) = v56;
      *(v58 + 24) = v57;
      swift_storeEnumTagMultiPayload();
      v59 = v58;
    }

    else
    {
      LOBYTE(v113) = 6;
      sub_1BBAE77A8();
      sub_1BBB84118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
      sub_1BBAAB688(&qword_1EBC7AD80);
      v67 = v85;
      v68 = v99;
      v69 = v104;
      sub_1BBB841B8();
      (*(v98 + 8))(v69, v68);
      (*(v53 + 8))(v35, v38);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v59 = v67;
    }

    v75 = v120;
    sub_1BBA969BC(v59, v120, type metadata accessor for IntelligenceElement.StorageValue);
    v76 = v112;
  }

  else
  {
    v43 = v105;
    if (v42 == 3)
    {
      LOBYTE(v113) = 3;
      sub_1BBAE7C78();
      sub_1BBB84118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD50);
      sub_1BBAE8008();
      v44 = v93;
      sub_1BBB841B8();
      (*(v92 + 8))(v37, v44);
      (*(v43 + 8))(v35, v111);
      swift_unknownObjectRelease();
      v77 = BYTE8(v113);
      v78 = v81;
      *v81 = v113;
    }

    else
    {
      LOBYTE(v113) = 4;
      sub_1BBAE7AE4();
      v66 = v102;
      sub_1BBB84118();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BD28);
      sub_1BBAE7F34();
      v70 = v95;
      sub_1BBB841B8();
      (*(v94 + 8))(v66, v70);
      (*(v43 + 8))(v35, v111);
      swift_unknownObjectRelease();
      v77 = BYTE8(v113);
      v78 = v83;
      *v83 = v113;
    }

    *(v78 + 8) = v77;
    swift_storeEnumTagMultiPayload();
    v75 = v120;
    sub_1BBA969BC(v78, v120, type metadata accessor for IntelligenceElement.StorageValue);
    v76 = v112;
    v52 = v109;
  }

  sub_1BBA969BC(v75, v52, type metadata accessor for IntelligenceElement.StorageValue);
  v48 = v76;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}