uint64_t sub_1B85258B4(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B85259A0(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B85259A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A878, &qword_1B8574768);
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

uint64_t sub_1B8525AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double sub_1B8525AFC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B85355C8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B852C1B4();
      v11 = v13;
    }

    sub_1B851F7F8(*(v11 + 48) + 40 * v8);
    sub_1B851F84C((*(v11 + 56) + 32 * v8), a2);
    sub_1B8548684(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1B8525BA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B853560C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B852C358();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B851F84C((*(v12 + 56) + 32 * v9), a3);
    sub_1B8548828(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B8525C44(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1B8535584(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1B85489D8(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1B852C4FC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1B8566578();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1B8566358();
  v8 = sub_1B8553CCC(v4, v7);

  v9 = sub_1B8535584(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1B85489D8(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1B8525D90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1B8525DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
    v3 = sub_1B8566638();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8526860(v4, &v13, &qword_1EBA8A868, &qword_1B8574760);
      v5 = v13;
      v6 = v14;
      result = sub_1B853560C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B851F84C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

void sub_1B8525F08(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1B8523C38(a1);
}

unint64_t sub_1B8525F40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
    v3 = sub_1B8566638();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1B8535584(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1B8526038()
{
  result = qword_1EBA8A7A8;
  if (!qword_1EBA8A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A7A8);
  }

  return result;
}

uint64_t sub_1B852608C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B851D53C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B85260A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B8526100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A828, &unk_1B85748A0);
    v3 = sub_1B8566638();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8526860(v4, &v11, &qword_1EBA8A830, &qword_1B8574740);
      v5 = v11;
      result = sub_1B8535684(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B851F84C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1B8526228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
    v3 = sub_1B8566638();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B853560C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_1B852632C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
    v3 = sub_1B8566638();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1B853573C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_1B8526424()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B851F914;

  return sub_1B85234AC(v2, v3, v4);
}

uint64_t sub_1B85264D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B851F914;

  return sub_1B8521794(v2, v3, v5, v4);
}

double sub_1B8526598@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

double sub_1B85265DC@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(&v8, *a1);
  if (!v3)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1B8526624(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B852666C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSShareablePasskey();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1B85266D0@<X0>(void *a1@<X8>)
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

void *sub_1B8526714@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

unint64_t sub_1B852675C()
{
  result = qword_1ED9856B0;
  if (!qword_1ED9856B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9856B0);
  }

  return result;
}

unint64_t sub_1B85267B0()
{
  result = qword_1EBA8A850;
  if (!qword_1EBA8A850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A850);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B8526860(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B85268CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WBSKeychainPasskey();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B85269B0(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

BOOL static WBSFileVaultRecoveryKeyError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(a2 + 4);
      }

      return (v5 & 1) != 0;
    }

    if (v3 == 1)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 0;
    }

    return (v8 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v7 = *(a2 + 4);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v3 > 2)
  {
    v9 = *(a2 + 4);
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

BOOL sub_1B8526A88(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = 0;
      }

      return v8 == 1;
    }

    v5 = v3 == 2;
  }

  else if (v2)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (v5)
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = 0;
  }

  return (v7 & 1) != 0;
}

id static WBSSavedAccountStore.partialStoreForFileVaultRecoveryKeys()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A880, &qword_1B8574790);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B85740E0;
  *(v0 + 32) = sub_1B8565DA8();
  *(v0 + 40) = v1;
  v2 = objc_allocWithZone(WBSSavedAccountStore);
  v3 = sub_1B8565FF8();

  v4 = [v2 initPartialStoreForDomains:v3 forTesting:0];

  return v4;
}

uint64_t WBSSavedAccountStore.saveFileVaultRecoveryKey(request:)(uint64_t a1)
{
  v2[96] = v1;
  v2[95] = a1;
  v3 = sub_1B8565B38();
  v2[97] = v3;
  v4 = *(v3 - 8);
  v2[98] = v4;
  v5 = *(v4 + 64) + 15;
  v2[99] = swift_task_alloc();
  v6 = sub_1B8565DF8();
  v2[100] = v6;
  v7 = *(v6 - 8);
  v2[101] = v7;
  v8 = *(v7 + 64) + 15;
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8526CD8, 0, 0);
}

uint64_t sub_1B8526CD8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = [*(v0 + 760) recoveryKey];
  sub_1B8565DA8();

  sub_1B8565DE8();
  v5 = sub_1B8565DB8();
  v7 = v6;

  *(v0 + 824) = v5;
  *(v0 + 832) = v7;
  (*(v2 + 8))(v1, v3);
  if (v7 >> 60 == 15)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v8 = sub_1B8565B78();
    __swift_project_value_buffer(v8, qword_1ED985C68);
    v9 = sub_1B8565B48();
    v10 = sub_1B8566218();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B8447000, v9, v10, "Failed to encode recovery key", v11, 2u);
      MEMORY[0x1B8CC1710](v11, -1, -1);
    }

    sub_1B852B150();
    swift_allocError();
    *v12 = 1;
    *(v12 + 4) = 1;
    swift_willThrow();
    v13 = *(v0 + 816);
    v14 = *(v0 + 792);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 760);
    v18 = [v17 volumeID];
    v19 = sub_1B8565DA8();
    v21 = v20;

    *(v0 + 840) = v21;
    v22 = [v17 serialNumber];
    v23 = sub_1B8565DA8();
    v25 = v24;

    *(v0 + 848) = v25;
    v26 = swift_task_alloc();
    *(v0 + 856) = v26;
    *v26 = v0;
    v26[1] = sub_1B8526FC0;
    v27 = *(v0 + 768);

    return sub_1B8528CCC(v19, v21, v23, v25, 0);
  }
}

uint64_t sub_1B8526FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 856);
  v8 = *v1;
  *(*v1 + 864) = v0;

  if (v0)
  {
    v4 = sub_1B8527D80;
  }

  else
  {
    v5 = *(v2 + 848);
    v6 = *(v2 + 840);

    v4 = sub_1B85270E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B85270E8()
{
  v144 = v0;
  v136 = *(v0 + 864);
  v1 = *(v0 + 760);
  v2 = sub_1B852CDA8(v1);
  v4 = v3;
  v5 = [v1 serialNumber];
  if (!v5)
  {
    sub_1B8565DA8();
    v5 = sub_1B8565D68();
  }

  v128 = v2;
  v129 = v4;
  v6 = [*(v0 + 760) volumeID];
  if (!v6)
  {
    sub_1B8565DA8();
    v6 = sub_1B8565D68();
  }

  v139 = *(v0 + 832);
  v7 = *(v0 + 824);
  v134 = *(v0 + 768);
  v8 = [objc_opt_self() uniqueIdentifierFromSerialNumber:v5 volumeID:v6];

  v138 = sub_1B8565DA8();
  v141 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v11 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v132 = v11;
  v12 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v12;
  v130 = *MEMORY[0x1E697AE00];
  v13 = *MEMORY[0x1E697AE00];
  *(inited + 64) = v14;
  *(inited + 72) = v13;
  v15 = *MEMORY[0x1E697AE30];
  *(inited + 80) = *MEMORY[0x1E697AE30];
  v142 = v0;
  v16 = *MEMORY[0x1E697AC50];
  *(inited + 104) = v14;
  *(inited + 112) = v16;
  v17 = *MEMORY[0x1E697AC60];
  *(inited + 120) = *MEMORY[0x1E697AC60];
  v18 = *MEMORY[0x1E697AE80];
  *(inited + 144) = v14;
  *(inited + 152) = v18;
  v19 = sub_1B8565DA8();
  v20 = MEMORY[0x1E69E6158];
  v21 = MEMORY[0x1E697B390];
  *(inited + 160) = v19;
  *(inited + 168) = v22;
  v23 = *v21;
  *(inited + 184) = v20;
  *(inited + 192) = v23;
  v24 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v25 = *MEMORY[0x1E697B3C0];
  *(inited + 224) = v24;
  *(inited + 232) = v25;
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v7;
  *(inited + 248) = v139;
  v26 = v132;
  v27 = v12;
  v28 = v130;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v32 = MEMORY[0x1E69E6158];
  v33 = v18;
  v34 = v23;
  v35 = v25;
  sub_1B852CF28(v7, v139);
  v140 = sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1B8574780;
  v37 = *MEMORY[0x1E697ABD0];
  *(v36 + 32) = *MEMORY[0x1E697ABD0];
  v133 = v37;
  v38 = [v134 isForTesting];
  v39 = 0xD00000000000001BLL;
  v40 = "rds.filevault.testing";
  if (!v38)
  {
    v39 = 0xD000000000000013;
    v40 = "AccountMatchResult8";
  }

  *(v36 + 40) = v39;
  *(v36 + 48) = v40 | 0x8000000000000000;
  v41 = *MEMORY[0x1E697AEB0];
  *(v36 + 64) = v32;
  *(v36 + 72) = v41;
  *(v36 + 80) = 1;
  v42 = *MEMORY[0x1E697ACE0];
  *(v36 + 104) = MEMORY[0x1E69E6370];
  *(v36 + 112) = v42;
  *(v36 + 120) = 0xD000000000000016;
  *(v36 + 128) = 0x80000001B858E190;
  v43 = *MEMORY[0x1E697ADC8];
  *(v36 + 144) = v32;
  *(v36 + 152) = v43;
  *(v36 + 160) = v138;
  *(v36 + 168) = v141;
  v44 = *MEMORY[0x1E697AC30];
  *(v36 + 184) = v32;
  *(v36 + 192) = v44;
  *(v36 + 224) = v32;
  *(v36 + 200) = v138;
  *(v36 + 208) = v141;
  swift_bridgeObjectRetain_n();
  v135 = v41;
  v45 = v42;
  v46 = v43;
  v47 = v44;
  v48 = sub_1B8526100(v36);
  swift_setDeallocating();
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143[0] = v140;
  sub_1B852CF3C(v48, sub_1B852CC08, 0, isUniquelyReferenced_nonNull_native, v143);

  if (v136)
  {
  }

  v51 = v47;
  v131 = v46;
  v137 = v45;
  v52 = v135;
  sub_1B85298E8();
  v127 = v51;

  v53 = v142;
  if (qword_1ED985688 != -1)
  {
LABEL_51:
    swift_once();
  }

  v54 = sub_1B8565B78();
  v126 = __swift_project_value_buffer(v54, qword_1ED985C68);
  v55 = sub_1B8565B48();
  v56 = sub_1B85661F8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_1B8447000, v55, v56, "Saved FileVault recovery key in Passwords access group.", v57, 2u);
    MEMORY[0x1B8CC1710](v57, -1, -1);
  }

  v58 = v142[96];
  v59 = v142[95];

  v60 = swift_initStackObject();
  *(v60 + 16) = xmmword_1B8574780;
  *(v60 + 32) = v133;
  v61 = v133;
  v62 = [v58 isForTesting];
  v63 = 0xD00000000000001DLL;
  if (v62)
  {
    v63 = 0xD000000000000025;
    v64 = "com.apple.passwords.filevault";
  }

  else
  {
    v64 = "Filevault recovery key";
  }

  *(v60 + 40) = v63;
  *(v60 + 48) = v64 | 0x8000000000000000;
  v65 = MEMORY[0x1E69E6158];
  *(v60 + 64) = MEMORY[0x1E69E6158];
  *(v60 + 72) = v52;
  *(v60 + 80) = 0;
  *(v60 + 104) = MEMORY[0x1E69E6370];
  *(v60 + 112) = v137;
  *(v60 + 120) = v128;
  *(v60 + 128) = v129;
  *(v60 + 144) = v65;
  *(v60 + 152) = v131;
  v66 = v52;
  v67 = v137;
  v68 = v131;

  v69 = [v59 serialNumber];
  v70 = sub_1B8565DA8();
  v72 = v71;

  *(v60 + 160) = v70;
  *(v60 + 168) = v72;
  *(v60 + 184) = v65;
  *(v60 + 192) = v127;
  v73 = v127;
  v74 = [v59 volumeID];
  v75 = sub_1B8565DA8();
  v77 = v76;

  *(v60 + 224) = v65;
  *(v60 + 200) = v75;
  *(v60 + 208) = v77;
  v78 = sub_1B8526100(v60);
  swift_setDeallocating();
  swift_arrayDestroy();
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v143[0] = v140;
  sub_1B852CF3C(v78, sub_1B852CC08, 0, v79, v143);

  sub_1B85298E8();

  v80 = sub_1B8565B48();
  v81 = sub_1B85661F8();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_1B8447000, v80, v81, "Saved FileVault recovery key in FileVault access group.", v82, 2u);
    MEMORY[0x1B8CC1710](v82, -1, -1);
  }

  v83 = v142[96];

  [v83 reset];
  v84 = [v83 savedAccounts];
  sub_1B852D21C();
  v85 = sub_1B8566008();

  if (v85 >> 62)
  {
    v86 = sub_1B8566358();
    if (v86)
    {
      goto LABEL_23;
    }

LABEL_53:

    v117 = sub_1B8565B48();
    v118 = sub_1B8566218();
    v119 = os_log_type_enabled(v117, v118);
    v120 = v142[104];
    v121 = v142[103];
    if (v119)
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_1B8447000, v117, v118, "Failed to fetch the saved account for recently saved recovery key.", v122, 2u);
      MEMORY[0x1B8CC1710](v122, -1, -1);
    }

    sub_1B852608C(v121, v120);

    goto LABEL_56;
  }

  v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v86)
  {
    goto LABEL_53;
  }

LABEL_23:
  v87 = 0;
  while (1)
  {
    if ((v85 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x1B8CBF6C0](v87, v85);
    }

    else
    {
      if (v87 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v88 = *(v85 + 8 * v87 + 32);
    }

    v89 = v88;
    v90 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v91 = [v88 user];
    if (!v91)
    {
      goto LABEL_24;
    }

    v92 = v91;
    v93 = sub_1B8565DA8();
    v95 = v94;

    if (v93 == v138 && v95 == v141)
    {
      break;
    }

    v52 = sub_1B8566758();

    if (v52)
    {
      goto LABEL_38;
    }

LABEL_24:

    ++v87;
    if (v90 == v86)
    {
      goto LABEL_53;
    }
  }

LABEL_38:
  v97 = v142[95];

  v98 = v89;
  v99 = sub_1B8565D68();

  [v98 setCustomTitle:v99 performSidecarUpdate:1];

  v100 = [v97 serialNumber];
  if (!v100)
  {
    sub_1B8565DA8();
    v100 = sub_1B8565D68();
  }

  v101 = objc_opt_self();
  v102 = [v101 currentDevice];
  v103 = [v102 modelName];

  if (!v103)
  {
    sub_1B8565DA8();
    v103 = sub_1B8565D68();
  }

  v104 = [v101 currentDevice];
  v105 = [v104 chipName];

  if (v105)
  {
    sub_1B8565DA8();
    v107 = v106;
  }

  else
  {
    v107 = 0;
  }

  v108 = v142[99];
  v109 = v142[98];
  v110 = v142[97];
  sub_1B8565B28();
  sub_1B8565B18();
  (*(v109 + 8))(v108, v110);
  if (v107)
  {
    v111 = sub_1B8565D68();
  }

  else
  {
    v111 = 0;
  }

  v53 = v142;
  v112 = v142[104];
  v113 = v142[103];
  v114 = objc_allocWithZone(WBSFileVaultRecoveryKeyDeviceInfo);
  v115 = sub_1B8565D68();

  v116 = [v114 initWithSerialNumber:v100 model:v103 variant:v111 deviceTypeIdentifier:v115];

  [v98 setFileVaultRecoveryKeyDeviceInfo_];
  sub_1B852608C(v113, v112);
LABEL_56:
  v123 = v53[102];
  v124 = v53[99];

  v125 = v53[1];

  return v125();
}

uint64_t sub_1B8527D80()
{
  v168 = v0;
  v1 = *(v0 + 108);
  v2 = *(v0 + 106);
  v3 = *(v0 + 105);

  *(v0 + 94) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F0, &qword_1B8574540);
  v5 = &unk_1E7CF5000;
  if ((swift_dynamicCast() & 1) != 0 && v0[876] == 1 && *(v0 + 218) >= 3u)
  {

    v6 = *(v0 + 94);
  }

  else
  {

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 108);
    v8 = *(v0 + 95);
    v9 = sub_1B8565B78();
    __swift_project_value_buffer(v9, qword_1ED985C68);
    v10 = v7;
    v11 = v8;
    v12 = sub_1B8565B48();
    v13 = sub_1B8566218();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 108);
    if (v14)
    {
      v16 = *(v0 + 95);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v167[0] = v165;
      *v17 = 136315650;
      v19 = [v16 volumeID];
      v20 = sub_1B8565DA8();
      v22 = v21;

      v23 = sub_1B8525560(v20, v22, v167);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      v24 = [v16 serialNumber];
      v25 = sub_1B8565DA8();
      v27 = v26;

      v28 = sub_1B8525560(v25, v27, v167);

      *(v17 + 14) = v28;
      v5 = &unk_1E7CF5000;
      *(v17 + 22) = 2112;
      v29 = v15;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 24) = v30;
      *v18 = v30;
      _os_log_impl(&dword_1B8447000, v12, v13, "Failed to delete existing keychain item while saving new one. volumeID: %s, serialNumber: %s, error: %@", v17, 0x20u);
      sub_1B8456588(v18, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CC1710](v165, -1, -1);
      MEMORY[0x1B8CC1710](v17, -1, -1);

      goto LABEL_11;
    }

    v6 = v15;
  }

LABEL_11:
  v31 = *(v0 + 95);
  v153 = sub_1B852CDA8(v31);
  v154 = v32;
  v33 = [v31 serialNumber];
  if (!v33)
  {
    sub_1B8565DA8();
    v33 = sub_1B8565D68();
  }

  v34 = [*(v0 + 95) v5[458]];
  if (!v34)
  {
    sub_1B8565DA8();
    v34 = sub_1B8565D68();
  }

  v159 = *(v0 + 104);
  v35 = *(v0 + 103);
  v160 = *(v0 + 96);
  v36 = [objc_opt_self() uniqueIdentifierFromSerialNumber:v33 volumeID:v34];

  v162 = sub_1B8565DA8();
  v163 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v39 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v157 = v39;
  v40 = *MEMORY[0x1E697B018];
  v155 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v40;
  v166 = v0;
  v41 = *MEMORY[0x1E697AE00];
  *(inited + 64) = v42;
  *(inited + 72) = v41;
  v43 = *MEMORY[0x1E697AE30];
  *(inited + 80) = *MEMORY[0x1E697AE30];
  v44 = *MEMORY[0x1E697AC50];
  *(inited + 104) = v42;
  *(inited + 112) = v44;
  v45 = *MEMORY[0x1E697AC60];
  *(inited + 120) = *MEMORY[0x1E697AC60];
  v46 = *MEMORY[0x1E697AE80];
  *(inited + 144) = v42;
  *(inited + 152) = v46;
  v47 = sub_1B8565DA8();
  v48 = MEMORY[0x1E69E6158];
  v49 = MEMORY[0x1E697B390];
  *(inited + 160) = v47;
  *(inited + 168) = v50;
  v51 = *v49;
  *(inited + 184) = v48;
  *(inited + 192) = v51;
  v52 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  v53 = *MEMORY[0x1E697B3C0];
  *(inited + 224) = v52;
  *(inited + 232) = v53;
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v35;
  *(inited + 248) = v159;
  v54 = v157;
  v55 = v155;
  v56 = v41;
  v57 = v43;
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v51;
  v62 = v53;
  sub_1B852CF28(v35, v159);
  v63 = sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  v64 = swift_initStackObject();
  *(v64 + 16) = xmmword_1B8574780;
  v65 = *MEMORY[0x1E697ABD0];
  *(v64 + 32) = *MEMORY[0x1E697ABD0];
  v158 = v65;
  v66 = [v160 isForTesting];
  v67 = 0xD00000000000001BLL;
  v68 = "rds.filevault.testing";
  if (!v66)
  {
    v67 = 0xD000000000000013;
    v68 = "AccountMatchResult8";
  }

  *(v64 + 40) = v67;
  *(v64 + 48) = v68 | 0x8000000000000000;
  v69 = *MEMORY[0x1E697AEB0];
  v70 = MEMORY[0x1E69E6158];
  *(v64 + 64) = MEMORY[0x1E69E6158];
  *(v64 + 72) = v69;
  *(v64 + 80) = 1;
  v71 = *MEMORY[0x1E697ACE0];
  *(v64 + 104) = MEMORY[0x1E69E6370];
  *(v64 + 112) = v71;
  *(v64 + 120) = 0xD000000000000016;
  *(v64 + 128) = 0x80000001B858E190;
  v72 = *MEMORY[0x1E697ADC8];
  *(v64 + 144) = v70;
  *(v64 + 152) = v72;
  *(v64 + 160) = v162;
  *(v64 + 168) = v163;
  v73 = *MEMORY[0x1E697AC30];
  *(v64 + 184) = v70;
  *(v64 + 192) = v73;
  *(v64 + 224) = v70;
  *(v64 + 200) = v162;
  *(v64 + 208) = v163;
  swift_bridgeObjectRetain_n();
  v74 = v69;
  v75 = v71;
  v76 = v72;
  v77 = v73;
  v78 = sub_1B8526100(v64);
  swift_setDeallocating();
  swift_arrayDestroy();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v167[0] = v63;
  sub_1B852CF3C(v78, sub_1B852CC08, 0, isUniquelyReferenced_nonNull_native, v167);

  v161 = v77;
  v80 = v0;
  sub_1B85298E8();

  if (qword_1ED985688 != -1)
  {
LABEL_59:
    swift_once();
  }

  v156 = v63;
  v82 = sub_1B8565B78();
  v152 = __swift_project_value_buffer(v82, qword_1ED985C68);
  v83 = sub_1B8565B48();
  v84 = sub_1B85661F8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_1B8447000, v83, v84, "Saved FileVault recovery key in Passwords access group.", v85, 2u);
    MEMORY[0x1B8CC1710](v85, -1, -1);
  }

  v86 = *(v80 + 96);
  v87 = *(v80 + 95);

  v88 = swift_initStackObject();
  *(v88 + 16) = xmmword_1B8574780;
  *(v88 + 32) = v158;
  v89 = v158;
  v90 = [v86 isForTesting];
  v91 = 0xD00000000000001DLL;
  if (v90)
  {
    v91 = 0xD000000000000025;
    v92 = "com.apple.passwords.filevault";
  }

  else
  {
    v92 = "Filevault recovery key";
  }

  *(v88 + 40) = v91;
  *(v88 + 48) = v92 | 0x8000000000000000;
  v93 = MEMORY[0x1E69E6158];
  *(v88 + 64) = MEMORY[0x1E69E6158];
  *(v88 + 72) = v74;
  *(v88 + 80) = 0;
  *(v88 + 104) = MEMORY[0x1E69E6370];
  *(v88 + 112) = v75;
  *(v88 + 120) = v153;
  *(v88 + 128) = v154;
  *(v88 + 144) = v93;
  *(v88 + 152) = v76;
  v94 = v74;
  v95 = v75;
  v96 = v76;

  v97 = [v87 serialNumber];
  v98 = sub_1B8565DA8();
  v100 = v99;

  *(v88 + 160) = v98;
  *(v88 + 168) = v100;
  *(v88 + 184) = v93;
  *(v88 + 192) = v161;
  v101 = v161;
  v102 = [v87 volumeID];
  v103 = sub_1B8565DA8();
  v105 = v104;

  *(v88 + 224) = v93;
  *(v88 + 200) = v103;
  *(v88 + 208) = v105;
  v106 = sub_1B8526100(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v167[0] = v156;
  sub_1B852CF3C(v106, sub_1B852CC08, 0, v107, v167);

  sub_1B85298E8();

  v108 = sub_1B8565B48();
  v109 = sub_1B85661F8();
  v110 = v166;
  if (os_log_type_enabled(v108, v109))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_1B8447000, v108, v109, "Saved FileVault recovery key in FileVault access group.", v111, 2u);
    MEMORY[0x1B8CC1710](v111, -1, -1);
  }

  v112 = v166[96];

  [v112 reset];
  v113 = [v112 savedAccounts];
  sub_1B852D21C();
  v76 = sub_1B8566008();

  if (v76 >> 62)
  {
    v114 = sub_1B8566358();
    if (v114)
    {
      goto LABEL_31;
    }

LABEL_61:

    v143 = sub_1B8565B48();
    v144 = sub_1B8566218();
    v145 = os_log_type_enabled(v143, v144);
    v146 = v110[104];
    v147 = v110[103];
    if (v145)
    {
      v148 = swift_slowAlloc();
      *v148 = 0;
      _os_log_impl(&dword_1B8447000, v143, v144, "Failed to fetch the saved account for recently saved recovery key.", v148, 2u);
      MEMORY[0x1B8CC1710](v148, -1, -1);
    }

    sub_1B852608C(v147, v146);

    goto LABEL_64;
  }

  v114 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v114)
  {
    goto LABEL_61;
  }

LABEL_31:
  v75 = 0;
  v63 = v76 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v76 & 0xC000000000000001) != 0)
    {
      v115 = MEMORY[0x1B8CBF6C0](v75, v76);
    }

    else
    {
      if (v75 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v115 = *(v76 + 8 * v75 + 32);
    }

    v116 = v115;
    v80 = (v75 + 1);
    if (__OFADD__(v75, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v117 = [v115 user];
    if (!v117)
    {
      goto LABEL_32;
    }

    v118 = v117;
    v119 = sub_1B8565DA8();
    v121 = v120;

    if (v119 == v162 && v121 == v163)
    {
      break;
    }

    v74 = sub_1B8566758();

    v110 = v166;
    if (v74)
    {
      goto LABEL_46;
    }

LABEL_32:

    ++v75;
    if (v80 == v114)
    {
      goto LABEL_61;
    }
  }

  v110 = v166;
LABEL_46:
  v123 = v110[95];

  v124 = v116;
  v125 = sub_1B8565D68();

  v164 = v124;
  [v124 setCustomTitle:v125 performSidecarUpdate:1];

  v126 = [v123 serialNumber];
  if (!v126)
  {
    sub_1B8565DA8();
    v126 = sub_1B8565D68();
  }

  v127 = objc_opt_self();
  v128 = [v127 currentDevice];
  v129 = [v128 modelName];

  if (!v129)
  {
    sub_1B8565DA8();
    v129 = sub_1B8565D68();
  }

  v130 = [v127 currentDevice];
  v131 = [v130 chipName];

  if (v131)
  {
    sub_1B8565DA8();
    v133 = v132;
  }

  else
  {
    v133 = 0;
  }

  v134 = v110[99];
  v135 = v110[98];
  v136 = v110[97];
  sub_1B8565B28();
  sub_1B8565B18();
  (*(v135 + 8))(v134, v136);
  if (v133)
  {
    v137 = sub_1B8565D68();
  }

  else
  {
    v137 = 0;
  }

  v110 = v166;
  v138 = v166[104];
  v139 = v166[103];
  v140 = objc_allocWithZone(WBSFileVaultRecoveryKeyDeviceInfo);
  v141 = sub_1B8565D68();

  v142 = [v140 initWithSerialNumber:v126 model:v129 variant:v137 deviceTypeIdentifier:v141];

  [v164 setFileVaultRecoveryKeyDeviceInfo_];
  sub_1B852608C(v139, v138);
LABEL_64:
  v149 = v110[102];
  v150 = v110[99];

  v151 = v110[1];

  return v151();
}

uint64_t sub_1B8528CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 440) = a4;
  *(v6 + 448) = v5;
  *(v6 + 480) = a5;
  *(v6 + 424) = a2;
  *(v6 + 432) = a3;
  *(v6 + 416) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8528CF8, 0, 0);
}

uint64_t sub_1B8528CF8()
{
  v68 = v0;
  v1 = *(v0 + 448);
  v2 = *(v0 + 432);
  v65 = *(v0 + 440);
  v66 = *(v0 + 424);
  v3 = *(v0 + 416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574770;
  v5 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v6 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  *(inited + 40) = v6;
  v7 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v8;
  *(inited + 72) = v7;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = [v1 isForTesting];
  v13 = MEMORY[0x1E69E6158];
  v14 = 0xD00000000000001DLL;
  if (v12)
  {
    v14 = 0xD000000000000025;
    v15 = "com.apple.passwords.filevault";
  }

  else
  {
    v15 = "Filevault recovery key";
  }

  *(inited + 80) = v14;
  *(inited + 88) = v15 | 0x8000000000000000;
  v16 = *MEMORY[0x1E697AEB0];
  v17 = MEMORY[0x1E69E6370];
  *(inited + 104) = v13;
  *(inited + 112) = v16;
  *(inited + 120) = 0;
  v18 = *MEMORY[0x1E697ADC8];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 160) = v2;
  *(inited + 168) = v65;
  v19 = *MEMORY[0x1E697AC30];
  *(inited + 184) = v13;
  *(inited + 192) = v19;
  *(inited + 200) = v3;
  *(inited + 208) = v66;
  v20 = *MEMORY[0x1E697B390];
  *(inited + 224) = v13;
  *(inited + 232) = v20;
  *(inited + 264) = v17;
  *(inited + 240) = 1;
  v21 = v16;
  v22 = v18;

  v23 = v19;

  v24 = v20;
  sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  sub_1B852D36C(&qword_1EBA8A608);
  v25 = sub_1B8565CB8();

  *(v0 + 476) = SecItemDelete(v25);

  v26 = [v1 savedAccounts];
  sub_1B852D21C();
  v27 = sub_1B8566008();

  v28 = sub_1B852AC68(v27, v2, v65, v3, v66);

  if (v28)
  {
    v29 = v28;
    v30 = v28;
LABEL_11:
    *(v0 + 456) = v29;
    *(v0 + 464) = v30;
    v34 = qword_1ED985688;
    v35 = v28;
    if (v34 != -1)
    {
      swift_once();
    }

    v36 = sub_1B8565B78();
    __swift_project_value_buffer(v36, qword_1ED985C68);
    v37 = sub_1B8565B48();
    v38 = sub_1B85661F8();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1B8447000, v37, v38, "Deleting FileVault recovery key from Passwords access group.", v39, 2u);
      MEMORY[0x1B8CC1710](v39, -1, -1);
    }

    v40 = *(v0 + 448);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1B8529518;
    v41 = swift_continuation_init();
    *(v0 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A858, &qword_1B8574750);
    *(v0 + 352) = MEMORY[0x1E69E9820];
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = sub_1B85269B0;
    *(v0 + 376) = &block_descriptor_1;
    *(v0 + 384) = v41;
    [v40 removeCredentialTypes:9 forSavedAccount:v29 completionHandler:v0 + 352];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  v31 = [*(v0 + 448) allRecentlyDeletedSavedAccounts];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1B8566008();
  }

  else
  {
    v33 = 0;
  }

  v30 = sub_1B852AC68(v33, *(v0 + 432), *(v0 + 440), *(v0 + 416), *(v0 + 424));

  if (v30)
  {
    v29 = v30;
    v28 = 0;
    goto LABEL_11;
  }

  if (*(v0 + 480) == 1)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v42 = sub_1B8565B78();
    __swift_project_value_buffer(v42, qword_1ED985C68);
    v43 = sub_1B8565B48();
    v44 = sub_1B8566218();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1B8447000, v43, v44, "Failed to delete FileVault recovery key from Passwords access group.", v45, 2u);
      MEMORY[0x1B8CC1710](v45, -1, -1);
    }
  }

  v46 = *(v0 + 476);
  if (v46)
  {
    if (v46 != -25300 || *(v0 + 480))
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v54 = sub_1B8565B78();
      __swift_project_value_buffer(v54, qword_1ED985C68);
      v55 = sub_1B8565B48();
      v56 = sub_1B8566218();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = *(v0 + 476);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67 = v59;
        *v58 = 136315394;
        *(v0 + 472) = v57;
        sub_1B852D318();
        v60 = sub_1B85662D8();
        v62 = sub_1B8525560(v60, v61, &v67);

        *(v58 + 4) = v62;
        *(v58 + 12) = 1024;
        *(v58 + 14) = v57;
        _os_log_impl(&dword_1B8447000, v55, v56, "Failed to delete FileVault recovery key from FileVault access group: %s, status code: %d", v58, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x1B8CC1710](v59, -1, -1);
        MEMORY[0x1B8CC1710](v58, -1, -1);
      }

      v47 = v46 == -25300;
      if (v46 == -25300)
      {
        v48 = 3;
      }

      else
      {
        v48 = *(v0 + 476);
      }
    }

    else
    {
      v47 = 1;
      v48 = 3;
    }

    sub_1B852B150();
    swift_allocError();
    *v63 = v48;
    *(v63 + 4) = v47;
    swift_willThrow();
    v53 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v49 = sub_1B8565B78();
    __swift_project_value_buffer(v49, qword_1ED985C68);
    v50 = sub_1B8565B48();
    v51 = sub_1B85661F8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1B8447000, v50, v51, "Successfully deleted matching FileVault recovery key item.", v52, 2u);
      MEMORY[0x1B8CC1710](v52, -1, -1);
    }

    v53 = *(v0 + 8);
  }

  return v53();
}

uint64_t sub_1B8529518()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B85295F8, 0, 0);
}

uint64_t sub_1B85295F8()
{
  v24 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 464);

  v3 = *(v0 + 476);
  if (v3)
  {
    if (v3 == -25300 && *(v0 + 480) == 0)
    {
      v14 = 1;
      v15 = 3;
    }

    else
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v5 = sub_1B8565B78();
      __swift_project_value_buffer(v5, qword_1ED985C68);
      v6 = sub_1B8565B48();
      v7 = sub_1B8566218();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 476);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v23 = v10;
        *v9 = 136315394;
        *(v0 + 472) = v8;
        sub_1B852D318();
        v11 = sub_1B85662D8();
        v13 = sub_1B8525560(v11, v12, &v23);

        *(v9 + 4) = v13;
        *(v9 + 12) = 1024;
        *(v9 + 14) = v8;
        _os_log_impl(&dword_1B8447000, v6, v7, "Failed to delete FileVault recovery key from FileVault access group: %s, status code: %d", v9, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1B8CC1710](v10, -1, -1);
        MEMORY[0x1B8CC1710](v9, -1, -1);
      }

      v14 = v3 == -25300;
      if (v3 == -25300)
      {
        v15 = 3;
      }

      else
      {
        v15 = *(v0 + 476);
      }
    }

    sub_1B852B150();
    swift_allocError();
    *v21 = v15;
    *(v21 + 4) = v14;
    swift_willThrow();

    v20 = *(v0 + 8);
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v16 = sub_1B8565B78();
    __swift_project_value_buffer(v16, qword_1ED985C68);
    v17 = sub_1B8565B48();
    v18 = sub_1B85661F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8447000, v17, v18, "Successfully deleted matching FileVault recovery key item.", v19, 2u);
      MEMORY[0x1B8CC1710](v19, -1, -1);
    }

    v20 = *(v0 + 8);
  }

  return v20();
}

void sub_1B85298E8()
{
  type metadata accessor for CFString(0);
  sub_1B852D36C(&qword_1EBA8A608);
  v0 = sub_1B8565CB8();
  v1 = SecItemAdd(v0, 0);

  if (v1)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8565B78();
    __swift_project_value_buffer(v2, qword_1ED985C68);
    v3 = sub_1B8565B48();
    v4 = sub_1B8566218();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315394;
      sub_1B852D318();
      v7 = sub_1B85662D8();
      v9 = sub_1B8525560(v7, v8, &v11);

      *(v5 + 4) = v9;
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1;
      _os_log_impl(&dword_1B8447000, v3, v4, "Failed to add keychain item: %s, status code: %d", v5, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1B8CC1710](v6, -1, -1);
      MEMORY[0x1B8CC1710](v5, -1, -1);
    }

    sub_1B852B150();
    swift_allocError();
    *v10 = v1;
    *(v10 + 4) = 0;
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WBSSavedAccountStore.fileVaultRecoveryKey(volumeID:serialNumber:)(WBSFileVaultRecoveryKey_optional *__return_ptr retstr, Swift::String volumeID, Swift::String serialNumber)
{
  object = volumeID._object;
  v4 = v3;
  v5 = serialNumber._object;
  countAndFlagsBits = serialNumber._countAndFlagsBits;
  v7 = volumeID._countAndFlagsBits;
  v8 = sub_1B8529D54(volumeID._countAndFlagsBits, volumeID._object, serialNumber._countAndFlagsBits, serialNumber._object);
  if (v8)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8565B78();
    __swift_project_value_buffer(v9, qword_1ED985C68);
    v10 = sub_1B8565B48();
    v11 = sub_1B85661F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B8447000, v10, v11, "Found matching FileVault recovery key item.", v12, 2u);
      MEMORY[0x1B8CC1710](v12, -1, -1);
    }

    v13 = [v4 savedAccounts];
    sub_1B852D21C();
    v14 = sub_1B8566008();

    v15 = object;
    v16 = sub_1B852AC68(v14, countAndFlagsBits, v5, v7, object);

    if (!v16)
    {
      v17 = [v4 allRecentlyDeletedSavedAccounts];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1B8566008();

        v15 = object;
      }

      else
      {
        v19 = 0;
      }

      v16 = sub_1B852AC68(v19, countAndFlagsBits, v5, v7, v15);
    }

    sub_1B8529F84(v8);

    v20 = objc_allocWithZone(WBSFileVaultRecoveryKey);
    v21 = sub_1B8565CB8();

    [v20 initWithKeychainDictionary:v21 savedAccount:v16];
  }
}

uint64_t sub_1B8529D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[1] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  v4 = sub_1B852AE30(a3, a4, a1, a2);
  v5 = SecItemCopyMatching(v4, result);

  if (v5)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8565B78();
    __swift_project_value_buffer(v6, qword_1ED985C68);
    v7 = sub_1B8565B48();
    v8 = sub_1B8566218();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315394;
      sub_1B852D318();
      v11 = sub_1B85662D8();
      v13 = sub_1B8525560(v11, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 1024;
      *(v9 + 14) = v5;
      _os_log_impl(&dword_1B8447000, v7, v8, "Failed to fetch keychain item: %s, status code: %d", v9, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CC1710](v10, -1, -1);
      MEMORY[0x1B8CC1710](v9, -1, -1);
    }

    goto LABEL_7;
  }

  if (!result[0])
  {
LABEL_7:
    v14 = 0;
    goto LABEL_12;
  }

  v18 = result[0];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C8, &qword_1B8574B60);
  if (swift_dynamicCast())
  {
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  swift_unknownObjectRelease();
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t sub_1B8529F84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
    v2 = sub_1B8566638();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1B851F688(*(a1 + 56) + 32 * v13, v35 + 8);
    *&v35[0] = v14;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v34 = v36;
    *&v32[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_1B851F84C((v33 + 8), v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1B851F84C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1B851F84C(v31, v32);
    v16 = *(v2 + 40);
    result = sub_1B8566388();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1B851F84C(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t WBSSavedAccountStore.fileVaultRecoveryKeys(serialNumber:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 savedAccounts];
  sub_1B852D21C();
  v6 = sub_1B8566008();

  v89 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8566358())
  {
    v8 = 0;
    v82 = v6 & 0xFFFFFFFFFFFFFF8;
    v85 = v6 & 0xC000000000000001;
    v79 = v6;
    while (1)
    {
      if (v85)
      {
        v9 = MEMORY[0x1B8CBF6C0](v8, v6);
      }

      else
      {
        if (v8 >= *(v82 + 16))
        {
          goto LABEL_22;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 recoveryKeySerialNumber];
      if (v12)
      {
        v13 = v12;
        v14 = a1;
        v15 = a2;
        v16 = sub_1B8565DA8();
        v18 = v17;

        v19 = v16;
        a2 = v15;
        a1 = v14;
        if (v19 == v14 && v18 == a2)
        {

LABEL_18:
          sub_1B85664C8();
          v22 = v89[2];
          sub_1B85664F8();
          sub_1B8566508();
          sub_1B85664D8();
          v6 = v79;
          goto LABEL_5;
        }

        v21 = sub_1B8566758();

        if (v21)
        {
          goto LABEL_18;
        }

        v6 = v79;
      }

      else
      {
      }

LABEL_5:
      ++v8;
      if (v11 == i)
      {
        v23 = v89;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_25:
  v77 = a2;

  v24 = sub_1B8526228(MEMORY[0x1E69E7CC0]);
  if ((v23 & 0x8000000000000000) != 0 || (v23 & 0x4000000000000000) != 0)
  {
LABEL_52:
    v52 = v24;
    v25 = sub_1B8566358();
    v24 = v52;
    v83 = a1;
    v86 = v52;
    if (!v25)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v25 = *(v23 + 16);
    v83 = a1;
    v86 = v24;
    if (!v25)
    {
      goto LABEL_53;
    }
  }

  v26 = 0;
  v27 = &unk_1E7CF5000;
  do
  {
    v28 = v26;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1B8CBF6C0](v28, v23);
      }

      else
      {
        if (v28 >= *(v23 + 16))
        {
          goto LABEL_51;
        }

        v24 = *(v23 + 8 * v28 + 32);
      }

      v29 = v24;
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v30 = [v24 v27[464]];
      if (v30)
      {
        break;
      }

      ++v28;
      if (v26 == v25)
      {
        goto LABEL_53;
      }
    }

    v31 = v30;
    a1 = sub_1B8565DA8();
    v33 = v32;

    v80 = v29;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v86;
    v76 = v33;
    v36 = sub_1B853560C(a1, v33);
    v37 = v86[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      __break(1u);
      goto LABEL_82;
    }

    v40 = v35;
    if (v86[3] >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B852C7DC();
      }

      v44 = v80;
      v41 = v76;
      if (v40)
      {
        goto LABEL_47;
      }

LABEL_42:
      v45 = v89;
      v89[(v36 >> 6) + 8] |= 1 << v36;
      v46 = (v45[6] + 16 * v36);
      *v46 = a1;
      v46[1] = v41;
      *(v45[7] + 8 * v36) = v44;

      v47 = v45[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (!v48)
      {
        v86 = v45;
        v45[2] = v49;
        goto LABEL_48;
      }

LABEL_82:
      __break(1u);
LABEL_83:
      result = sub_1B8566778();
      __break(1u);
      return result;
    }

    sub_1B852BC48(v39, isUniquelyReferenced_nonNull_native);
    v41 = v76;
    v42 = sub_1B853560C(a1, v76);
    if ((v40 & 1) != (v43 & 1))
    {
      goto LABEL_83;
    }

    v36 = v42;
    v44 = v80;
    if ((v40 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_47:

    v86 = v89;
    v50 = v89[7];
    v51 = *(v50 + 8 * v36);
    *(v50 + 8 * v36) = v44;

LABEL_48:
    v27 = &unk_1E7CF5000;
  }

  while (v26 != v25);
LABEL_53:

  v53 = sub_1B852A988(v83, v77);
  v54 = MEMORY[0x1E69E7CC0];
  if (qword_1ED985688 != -1)
  {
LABEL_80:
    swift_once();
  }

  v55 = sub_1B8565B78();
  __swift_project_value_buffer(v55, qword_1ED985C68);

  v56 = sub_1B8565B48();
  v57 = sub_1B85661F8();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    *(v58 + 4) = v53[2];

    _os_log_impl(&dword_1B8447000, v56, v57, "Found %ld FileVault recovery key item(s) matching the serial number.", v58, 0xCu);
    MEMORY[0x1B8CC1710](v58, -1, -1);
  }

  else
  {
  }

  v90 = v54;
  v59 = v53[2];
  if (v59)
  {
    v60 = 0;
    v61 = (v53 + 4);
    v62 = *MEMORY[0x1E697AC30];
    v81 = v53;
    v84 = *MEMORY[0x1E697AC30];
    while (1)
    {
      v78 = v54;
      v63 = v60;
      while (1)
      {
        if (v63 >= v53[2])
        {
          __break(1u);
          goto LABEL_80;
        }

        v64 = *&v61[8 * v63];
        if (*(v64 + 16))
        {
          break;
        }

LABEL_61:
        if (v59 == ++v63)
        {
          v54 = v78;
          goto LABEL_78;
        }
      }

      v65 = *&v61[8 * v63];

      v66 = sub_1B8535684(v62);
      if ((v67 & 1) == 0)
      {
        break;
      }

      sub_1B851F688(*(v64 + 56) + 32 * v66, &v89);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_1B8529F84(v64);
      if (v86[2])
      {
        v68 = sub_1B853560C(v87, v88);
        v70 = v69;

        if (v70)
        {
          v71 = *(v86[7] + 8 * v68);
        }

        else
        {
          v71 = 0;
        }

        v53 = v81;
      }

      else
      {

        v71 = 0;
      }

      v54 = objc_allocWithZone(WBSFileVaultRecoveryKey);
      v72 = sub_1B8565CB8();

      v73 = [v54 initWithKeychainDictionary:v72 savedAccount:v71];

      v62 = v84;
      if (!v73)
      {
        goto LABEL_61;
      }

      MEMORY[0x1B8CBF240]();
      if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v74 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1B8566028();
      }

      v60 = v63 + 1;
      sub_1B8566078();
      v54 = v90;
      if (v59 - 1 == v63)
      {
        goto LABEL_78;
      }
    }

    goto LABEL_61;
  }

LABEL_78:

  return v54;
}

CFTypeRef sub_1B852A988(uint64_t a1, uint64_t a2)
{
  result[1] = *MEMORY[0x1E69E9840];
  result[0] = 0;
  v2 = sub_1B852AE30(a1, a2, 0, 0);
  v3 = SecItemCopyMatching(v2, result);

  if (v3)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v4 = sub_1B8565B78();
    __swift_project_value_buffer(v4, qword_1ED985C68);
    v5 = sub_1B8565B48();
    v6 = sub_1B8566218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      sub_1B852D318();
      v9 = sub_1B85662D8();
      v11 = sub_1B8525560(v9, v10, &v16);

      *(v7 + 4) = v11;
      *(v7 + 12) = 1024;
      *(v7 + 14) = v3;
      _os_log_impl(&dword_1B8447000, v5, v6, "Failed to fetch keychain items: %s, status code: %d", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CC1710](v8, -1, -1);
      MEMORY[0x1B8CC1710](v7, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v13 = result[0];
  if (result[0])
  {
    v16 = result[0];
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8B0, &qword_1B8574898);
    swift_dynamicCast();
    v12 = v15;
LABEL_9:
    swift_unknownObjectRelease();
    v14 = *MEMORY[0x1E69E9840];
    return v12;
  }

  __break(1u);
  return v13;
}

uint64_t WBSSavedAccountStore.deleteFileVaultRecoveryKey(volumeID:serialNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B851F31C;

  return sub_1B8528CCC(a1, a2, a3, a4, 1);
}

void *sub_1B852AC68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  if (a1)
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8566358())
    {
      for (j = 0; ; ++j)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CBF6C0](j, a1);
        }

        else
        {
          if (j >= *(v6 + 16))
          {
            goto LABEL_25;
          }

          v10 = *(a1 + 8 * j + 32);
        }

        v11 = v10;
        v12 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v13 = [v10 recoveryKeySerialNumber];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B8565DA8();
          v17 = v16;

          if (v15 == a2 && v17 == a3)
          {
          }

          else
          {
            v19 = sub_1B8566758();

            if ((v19 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          v20 = [v11 recoveryKeyVolumeID];
          if (v20)
          {
            v21 = v20;
            v22 = sub_1B8565DA8();
            v24 = v23;

            if (v22 == a4 && v24 == v26)
            {

              return v11;
            }

            v9 = sub_1B8566758();

            if (v9)
            {
              return v11;
            }
          }
        }

LABEL_6:

        if (v12 == i)
        {
          return 0;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }
  }

  return 0;
}

uint64_t sub_1B852AE30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574680;
  v10 = *MEMORY[0x1E697AFF8];
  *(inited + 32) = *MEMORY[0x1E697AFF8];
  v11 = *MEMORY[0x1E697B018];
  type metadata accessor for CFString(0);
  v13 = v12;
  *(inited + 40) = v11;
  v14 = *MEMORY[0x1E697ABD0];
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v15 = v10;
  v16 = v11;
  v17 = v14;
  v18 = [v5 isForTesting];
  v19 = MEMORY[0x1E69E6158];
  v20 = 0xD00000000000001DLL;
  if (v18)
  {
    v20 = 0xD000000000000025;
    v21 = "com.apple.passwords.filevault";
  }

  else
  {
    v21 = "Filevault recovery key";
  }

  *(inited + 80) = v20;
  *(inited + 88) = v21 | 0x8000000000000000;
  v22 = *MEMORY[0x1E697AEB0];
  *(inited + 104) = v19;
  *(inited + 112) = v22;
  v23 = MEMORY[0x1E69E6370];
  *(inited + 120) = 0;
  v24 = *MEMORY[0x1E697ADC8];
  *(inited + 144) = v23;
  *(inited + 152) = v24;
  *(inited + 160) = a1;
  *(inited + 168) = a2;
  v25 = *MEMORY[0x1E697B318];
  *(inited + 184) = v19;
  *(inited + 192) = v25;
  v26 = MEMORY[0x1E697B310];
  *(inited + 200) = 1;
  v27 = *v26;
  *(inited + 224) = v23;
  *(inited + 232) = v27;
  v28 = MEMORY[0x1E697B390];
  *(inited + 240) = 1;
  v29 = *v28;
  *(inited + 264) = v23;
  *(inited + 272) = v29;
  *(inited + 304) = v23;
  *(inited + 280) = 1;
  v30 = v22;
  v31 = v24;

  v32 = v25;
  v33 = v27;
  v34 = v29;
  sub_1B8526100(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
  swift_arrayDestroy();
  if (a4)
  {
    v35 = *MEMORY[0x1E697AC30];
    v48 = v19;
    *&v47 = a3;
    *(&v47 + 1) = a4;
    sub_1B851F84C(&v47, v46);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B85542B8(v46, v35, isUniquelyReferenced_nonNull_native);
    v37 = *MEMORY[0x1E697B260];
    v38 = *MEMORY[0x1E697B270];
    v48 = v13;
    *&v47 = v38;
    sub_1B851F84C(&v47, v46);
    v39 = v38;
  }

  else
  {
    v37 = *MEMORY[0x1E697B260];
    v41 = *MEMORY[0x1E697B268];
    v48 = v13;
    *&v47 = v41;
    sub_1B851F84C(&v47, v46);
    v42 = v41;
  }

  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1B85542B8(v46, v37, v40);
  sub_1B852D36C(&qword_1EBA8A608);
  v43 = sub_1B8565CB8();

  return v43;
}

unint64_t sub_1B852B150()
{
  result = qword_1EBA8A888;
  if (!qword_1EBA8A888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A888);
  }

  return result;
}

uint64_t sub_1B852B1A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1B851F84C((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1B852D3B8(v24, &v38);
        sub_1B851F688(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1B8566388();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1B851F84C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B852B45C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
  v36 = a2;
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B851F84C(v25, v37);
      }

      else
      {
        sub_1B851F688(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B851F84C(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B852B714(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_1B8566278();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1B852B97C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A828, &unk_1B85748A0);
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1B851F84C(v22, v34);
      }

      else
      {
        sub_1B851F688(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1B85667D8();
      type metadata accessor for CFString(0);
      sub_1B852D36C(&qword_1EBA8A8B8);
      sub_1B8565AF8();
      result = sub_1B8566808();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1B851F84C(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B852BC48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
  v39 = a2;
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B85667D8();
      sub_1B8565D38();
      result = sub_1B8566808();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B852BEEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
  v37 = a2;
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v38 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_1B8565DA8();
      sub_1B85667D8();
      sub_1B8565D38();
      v26 = sub_1B8566808();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v36;
      v13 = v38;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_1B852C1B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C0, &unk_1B85748B0);
  v2 = *v0;
  v3 = sub_1B8566608();
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
        v18 = 40 * v17;
        sub_1B852D3B8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B851F688(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B851F84C(v22, (*(v4 + 56) + v17));
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

void *sub_1B852C358()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A870, &qword_1B85748D0);
  v2 = *v0;
  v3 = sub_1B8566608();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B851F688(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B851F84C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1B852C4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A838, &qword_1B8574890);
  v2 = *v0;
  v3 = sub_1B8566608();
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
        result = v19;
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

id sub_1B852C65C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A828, &unk_1B85748A0);
  v2 = *v0;
  v3 = sub_1B8566608();
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
        sub_1B851F688(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B851F84C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_1B852C7DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A820, &qword_1B8574738);
  v2 = *v0;
  v3 = sub_1B8566608();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

id sub_1B852C948()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8D8, &qword_1B85748D8);
  v2 = *v0;
  v3 = sub_1B8566608();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_1B852CAA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A810, &qword_1B8574700);
  v2 = *v0;
  v3 = sub_1B8566608();
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

id sub_1B852CC08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_1B851F688((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_1B852CC58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_1B851F688(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_1B851F84C(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_1B8456588(&v19, &qword_1EBA8A8D0, &unk_1B85748C0);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B852CDA8(void *a1)
{
  v2 = [a1 displayName];
  v3 = sub_1B8565DA8();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = [a1 displayName];
    v8 = sub_1B8565DA8();

    return v8;
  }

  else
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userAssignedName];

    v12 = sub_1B8565DA8();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      v16 = sub_1B8457180();

      return v16;
    }

    return v12;
  }
}

uint64_t sub_1B852CF28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B852550C(a1, a2);
  }

  return a1;
}

unint64_t sub_1B852CF3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_1B852CC58(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1B851F84C(v43, v41);
  v13 = *a5;
  result = sub_1B8535684(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1B852B97C(v19, a4 & 1);
    v21 = *a5;
    result = sub_1B8535684(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = sub_1B8566778();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1B852C65C();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_1B851F84C(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1B851F84C(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_1B852CC58(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_1B851F84C(v43, v41);
        v31 = *a5;
        result = sub_1B8535684(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1B852B97C(v35, 1);
          v36 = *a5;
          result = sub_1B8535684(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          __swift_destroy_boxed_opaque_existential_0(v30);
          sub_1B851F84C(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1B851F84C(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1B852CC58(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_1B852D3B0();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1B852D21C()
{
  result = qword_1EBA8A898;
  if (!qword_1EBA8A898)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A898);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WBSFileVaultRecoveryKeyError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WBSFileVaultRecoveryKeyError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B852D2C8(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B852D2E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1B852D318()
{
  result = qword_1EBA8A8A8;
  if (!qword_1EBA8A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A8A8);
  }

  return result;
}

uint64_t sub_1B852D36C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WBSPasskeyStore.passkeys(for:)(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for WBSKeychainPasskey();
  v3[12] = v5;
  v6 = *(v5 - 8);
  v3[13] = v6;
  v7 = *(v6 + 64) + 15;
  v3[14] = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v8, type metadata accessor for WBSPasskeyStore);
  v9 = sub_1B85660E8();
  v11 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B852D594, v9, v10);
}

uint64_t sub_1B852D594()
{
  v47 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = sub_1B8565DA8();
  v6 = sub_1B8451B4C(0, 0xF000000000000000, v4, v5, 0, v3, v1);

  *(v0 + 40) = 0;
  v7 = (v0 + 40);
  v8 = SecItemCopyMatching(v6, (v0 + 40));
  if (v8)
  {
    LODWORD(v9) = v8;
    if (qword_1ED985688 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }

  if (!*v7 || (*(v0 + 48) = *v7, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E8, &qword_1B8574920), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v33 = sub_1B8565B78();
    __swift_project_value_buffer(v33, qword_1ED985C68);
    v34 = sub_1B8565B48();
    v35 = sub_1B8566218();
    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_38;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138477827;
    swift_beginAccess();
    if (*v7)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
LABEL_37:
        *(v36 + 4) = v38;
        *v37 = v39;
        _os_log_impl(&dword_1B8447000, v34, v35, "Unexpected keychain response: %{private}@", v36, 0xCu);
        sub_1B8456588(v37, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v37, -1, -1);
        MEMORY[0x1B8CC1710](v36, -1, -1);
LABEL_38:

        v25 = MEMORY[0x1E69E7CC0];
LABEL_47:

        v41 = *(v0 + 40);
        swift_unknownObjectRelease();
        v42 = *(v0 + 112);
        v43 = *(v0 + 88);

        v44 = *(v0 + 8);
        v45 = *MEMORY[0x1E69E9840];

        return v44(v25);
      }

      swift_unknownObjectRelease();
    }

    v38 = 0;
    v39 = 0;
    goto LABEL_37;
  }

  v9 = *(v0 + 56);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v40 = *(v0 + 56);
    }

    v22 = sub_1B8566358();
    v46 = v6;
    if (v22)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

  v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = v6;
  if (!v22)
  {
LABEL_45:
    v25 = MEMORY[0x1E69E7CC0];
LABEL_46:

    v34 = v46;
    goto LABEL_47;
  }

LABEL_14:
  v23 = 0;
  v24 = *(v0 + 104);
  v6 = (v24 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  while ((v9 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x1B8CBF6C0](v23, v9);
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_39;
    }

LABEL_20:
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);
    WBSKeychainPasskey.init(keychainDictionary:)(v26, v29);
    if ((*v6)(v29, 1, v28) == 1)
    {
      sub_1B8456588(*(v0 + 88), &qword_1EBA8A8E0, &unk_1B8574910);
    }

    else
    {
      sub_1B8538128(*(v0 + 88), *(v0 + 112), type metadata accessor for WBSKeychainPasskey);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1B8535084(0, v25[2] + 1, 1, v25);
      }

      v31 = v25[2];
      v30 = v25[3];
      if (v31 >= v30 >> 1)
      {
        v25 = sub_1B8535084(v30 > 1, v31 + 1, 1, v25);
      }

      v32 = *(v0 + 112);
      v25[2] = v31 + 1;
      sub_1B8538128(v32, v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v31, type metadata accessor for WBSKeychainPasskey);
    }

    ++v23;
    if (v27 == v22)
    {
      goto LABEL_46;
    }
  }

  if (v23 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

  v26 = *(v9 + 8 * v23 + 32);
  v27 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_20;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_3:
  v10 = sub_1B8565B78();
  __swift_project_value_buffer(v10, qword_1ED985C68);
  v11 = sub_1B8565B48();
  v12 = sub_1B8566218();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67240192;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_1B8447000, v11, v12, "Could not find passkey: %{public}d", v13, 8u);
    MEMORY[0x1B8CC1710](v13, -1, -1);
  }

  v14 = *(v0 + 112);
  v15 = *(v0 + 88);

  v16 = v9 == -25300;
  if (v9 == -25300)
  {
    LODWORD(v9) = 0;
  }

  sub_1B8535C58();
  swift_allocError();
  *v17 = v9;
  *(v17 + 4) = v16;
  swift_willThrow();
  v18 = *(v0 + 40);

  swift_unknownObjectRelease();

  v19 = *(v0 + 8);
  v20 = *MEMORY[0x1E69E9840];

  return v19();
}

id WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result[1] = *MEMORY[0x1E69E9840];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = result - v14 + 16;
  v16 = sub_1B8451B4C(a1, a2, a3, a4, a5, 0, 0);
  result[0] = 0;
  v17 = v16;
  v18 = SecItemCopyMatching(v17, result);
  v19 = [objc_opt_self() isCredentialExchangeEnabled];
  if (v19)
  {
    v20 = v18 == -25300;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
LABEL_8:

    if (v18)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v23 = sub_1B8565B78();
      __swift_project_value_buffer(v23, qword_1ED985C68);
      v24 = sub_1B8565B48();
      v25 = sub_1B8566218();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67240192;
        *(v26 + 4) = v18;
        _os_log_impl(&dword_1B8447000, v24, v25, "Could not fetch passkey: %{public}d", v26, 8u);
        MEMORY[0x1B8CC1710](v26, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v27 = v18;
      *(v27 + 4) = 0;
      goto LABEL_30;
    }

    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        swift_unknownObjectRetain();
        WBSKeychainPasskey.init(keychainDictionary:)(v29, v15);
        v30 = type metadata accessor for WBSKeychainPasskey();
        if ((*(*(v30 - 8) + 48))(v15, 1, v30) != 1)
        {
          swift_unknownObjectRelease();

          sub_1B8538128(v15, a6, type metadata accessor for WBSKeychainPasskey);
LABEL_32:
          v19 = swift_unknownObjectRelease();
          v40 = *MEMORY[0x1E69E9840];
          return v19;
        }

        sub_1B8456588(v15, &qword_1EBA8A8E0, &unk_1B8574910);
        sub_1B8535C58();
        swift_allocError();
        *v31 = 2;
        *(v31 + 4) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
LABEL_31:

        goto LABEL_32;
      }

      swift_unknownObjectRelease();
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v32 = sub_1B8565B78();
    __swift_project_value_buffer(v32, qword_1ED985C68);
    v33 = sub_1B8565B48();
    v34 = sub_1B8566218();
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_29:

      sub_1B8535C58();
      swift_allocError();
      *v39 = 1;
      *(v39 + 4) = 1;
LABEL_30:
      swift_willThrow();
      goto LABEL_31;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v38 = v37;
LABEL_28:
        *(v35 + 4) = v37;
        *v36 = v38;
        _os_log_impl(&dword_1B8447000, v33, v34, "Unexpected keychain response: %{private}@", v35, 0xCu);
        sub_1B8456588(v36, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v36, -1, -1);
        MEMORY[0x1B8CC1710](v35, -1, -1);
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
    }

    v37 = 0;
    v38 = 0;
    goto LABEL_28;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v17 __swift_setObject:0 forKeyedSubscript:?];
    v21 = *MEMORY[0x1E697AC40];
    v22 = sub_1B85659A8();
    [(__CFDictionary *)v17 __swift_setObject:v22 forKeyedSubscript:v21];

    v18 = SecItemCopyMatching(v17, result);
    goto LABEL_8;
  }

  __break(1u);
  return v19;
}

uint64_t sub_1B852E114(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a2;
  v30 = a1;
  v4 = type metadata accessor for WBSKeychainPasskey();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v29 - v9);
  v11 = [a3 credentialID];
  sub_1B8565DA8();

  v12 = sub_1B8565978();
  v14 = v13;

  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v16 = [a3 groupID];
    v17 = sub_1B8565DA8();
    v19 = v18;

    v20 = v32;
    WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v12, v14, v17, v19, 0, v8);
    if (v20)
    {

      sub_1B852608C(v12, v14);
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v21 = sub_1B8565B78();
      __swift_project_value_buffer(v21, qword_1ED985C68);
      v22 = a3;
      v23 = sub_1B8565B48();
      v24 = sub_1B8566218();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        *(v25 + 4) = v22;
        *v26 = v22;
        v27 = v22;
        _os_log_impl(&dword_1B8447000, v23, v24, "Could not find passkey for %@", v25, 0xCu);
        sub_1B8456588(v26, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v26, -1, -1);
        MEMORY[0x1B8CC1710](v25, -1, -1);
      }

      return swift_willThrow();
    }

    else
    {

      sub_1B852608C(v12, v14);
      sub_1B8538128(v8, v10, type metadata accessor for WBSKeychainPasskey);
      v33 = 0;
      v28 = v31;

      WBSKeychainPasskey.Metadata.subscript.setter(v30, v28, &v33);
      sub_1B85360B0(v10);
      return sub_1B85260A0(v10, type metadata accessor for WBSKeychainPasskey);
    }
  }

  return result;
}

uint64_t WBSPasskeyStore.setUserVisibleName(_:relyingParty:userHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a3;
  v8[7] = a6;
  v8[4] = a1;
  v8[5] = a2;
  v11 = type metadata accessor for WBSKeychainPasskey();
  v8[10] = v11;
  v12 = *(v11 - 8);
  v8[11] = v12;
  v13 = *(v12 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910) - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[16] = v15;
  *v15 = v8;
  v15[1] = sub_1B852E578;

  return WBSPasskeyStore.passkeys(for:)(a4, a5);
}

uint64_t sub_1B852E578(uint64_t a1)
{
  v3 = *(*v2 + 128);
  v4 = *v2;
  v4[17] = a1;
  v4[18] = v1;

  if (v1)
  {
    v6 = v4[14];
    v5 = v4[15];
    v7 = v4[12];
    v8 = v4[13];

    v9 = v4[1];

    return v9();
  }

  else
  {
    v11 = v4[9];
    type metadata accessor for WBSPasskeyStore();
    sub_1B8536618(&qword_1EBA8A790, v12, type metadata accessor for WBSPasskeyStore);
    v14 = sub_1B85660E8();

    return MEMORY[0x1EEE6DFA0](sub_1B852E730, v14, v13);
  }
}

void sub_1B852E730()
{
  v114 = v0;
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (!v2)
  {
    v42 = v0[17];

    v9 = v0[18];
    v44 = 1;
LABEL_63:
    v46 = v0[14];
    v47 = v0[15];
    v48 = v0[10];
    v49 = v0[11];
    (*(v49 + 56))(v47, v44, 1, v48);
    sub_1B8526860(v47, v46, &qword_1EBA8A8E0, &unk_1B8574910);
    v50 = (*(v49 + 48))(v46, 1, v48);
    v51 = v0[14];
    if (v50 == 1)
    {
      sub_1B8456588(v51, &qword_1EBA8A8E0, &unk_1B8574910);
      if (qword_1ED985688 != -1)
      {
LABEL_86:
        swift_once();
      }

      v53 = v0[7];
      v52 = v0[8];
      v54 = sub_1B8565B78();
      __swift_project_value_buffer(v54, qword_1ED985C68);
      sub_1B852550C(v53, v52);
      v55 = sub_1B8565B48();
      v56 = sub_1B8566218();
      sub_1B851D53C(v53, v52);
      if (os_log_type_enabled(v55, v56))
      {
        v58 = v0[7];
        v57 = v0[8];
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v113[0] = v60;
        *v59 = 136380675;
        v61 = sub_1B8565968();
        v63 = sub_1B8525560(v61, v62, v113);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_1B8447000, v55, v56, "Could not find passkey for userHandle: %{private}s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x1B8CC1710](v60, -1, -1);
        MEMORY[0x1B8CC1710](v59, -1, -1);
      }

      v64 = v0[15];
      sub_1B8535C58();
      swift_allocError();
      *v65 = 0;
      *(v65 + 4) = 1;
      swift_willThrow();
      sub_1B8456588(v64, &qword_1EBA8A8E0, &unk_1B8574910);
    }

    else
    {
      v66 = v0[12];
      v67 = v0[10];
      sub_1B8538128(v51, v66, type metadata accessor for WBSKeychainPasskey);
      v68 = v66[5];
      v69 = v66[6];
      sub_1B85659B8();
      v70 = (v66 + *(v67 + 44));
      v71 = *v70;
      v72 = v70[1];
      v73 = objc_allocWithZone(WBSPublicKeyCredentialIdentifier);
      v74 = sub_1B8565D68();

      v75 = sub_1B8565D68();
      v76 = [v73 initWithCredentialID:v74 groupID:v75];

      v77 = v66[2];
      v78 = sub_1B8565D68();
      v79 = [objc_opt_self() cborWithUTF8String_];

      v80 = sub_1B8530A58(v79, v77);
      if (v80)
      {
        v81 = [v80 string];

        if (v81)
        {
          v82 = sub_1B8565DA8();
          v80 = v83;
        }

        else
        {
          v82 = 0;
          v80 = 0;
        }
      }

      else
      {
        v82 = 0;
      }

      v84 = v0[12];
      v86 = v0[5];
      v85 = v0[6];
      LOBYTE(v113[0]) = 0;

      WBSKeychainPasskey.Metadata.subscript.setter(v86, v85, v113);
      sub_1B85360B0(v84);
      v87 = v0[15];
      if (!v9)
      {
        v95 = v0[13];
        v94 = v0[14];
        v96 = v0[12];
        v97 = v0[4];
        v98 = v0[15];
        sub_1B8456588(v87, &qword_1EBA8A8E0, &unk_1B8574910);

        sub_1B85268CC(v96, v97);
        sub_1B85260A0(v96, type metadata accessor for WBSKeychainPasskey);

        v99 = v0[1];

        v99(v82, v80);
        return;
      }

      v88 = v0[12];
      sub_1B8456588(v87, &qword_1EBA8A8E0, &unk_1B8574910);

      sub_1B85260A0(v88, type metadata accessor for WBSKeychainPasskey);
    }

    v90 = v0[14];
    v89 = v0[15];
    v92 = v0[12];
    v91 = v0[13];

    v93 = v0[1];

    v93();
    return;
  }

  v112 = v0[13];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];
  v110 = objc_opt_self();
  v111 = v3;
  v6 = 0;
  v109 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v8 = v4 != 0xC000000000000000 || v5 != 0;
  v107 = v8;
  v108 = v4 >> 62;
  v106 = v5;
  v9 = v0[18];
  v10 = __OFSUB__(HIDWORD(v5), v5);
  v105 = v10;
  v104 = HIDWORD(v5) - v5;
  while (1)
  {
    if (v6 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_86;
    }

    sub_1B85268CC(v109 + *(v111 + 72) * v6, v0[13]);
    v11 = *(v112 + 16);
    v12 = sub_1B8565D68();
    v13 = [v110 cborWithUTF8String_];

    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = v13;
      v15 = sub_1B8566578();

      if (!v15)
      {
        goto LABEL_35;
      }

      v0[3] = v15;
      sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
      swift_dynamicCast();
      v16 = v0[2];

      if (!v16)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (!*(v11 + 16) || (v17 = sub_1B8535584(v13), (v18 & 1) == 0))
      {
LABEL_35:

LABEL_36:
        v20 = 0;
        v22 = 0xF000000000000000;
LABEL_37:
        if (v4 >> 60 == 15)
        {
          v45 = v0[17];
          sub_1B852550C(v0[7], v0[8]);

          sub_1B852608C(v20, v22);
          goto LABEL_62;
        }

LABEL_38:
        v29 = v0[7];
        v28 = v0[8];
        sub_1B852550C(v29, v28);
        sub_1B852608C(v20, v22);
        v30 = v29;
        v31 = v28;
LABEL_39:
        sub_1B852608C(v30, v31);
        goto LABEL_40;
      }

      v16 = *(*(v11 + 56) + 8 * v17);

      if (!v16)
      {
        goto LABEL_36;
      }
    }

    v19 = [v16 data];

    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = sub_1B85659D8();
    v22 = v21;

    if (v22 >> 60 == 15)
    {
      goto LABEL_37;
    }

    if (v4 >> 60 == 15)
    {
      goto LABEL_38;
    }

    v23 = v22 >> 62;
    if (v22 >> 62 == 3)
    {
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22 == 0xC000000000000000;
      }

      v26 = !v24 || v4 >> 62 != 3;
      if (((v26 | v107) & 1) == 0)
      {
        sub_1B852550C(0, 0xC000000000000000);
        sub_1B852608C(0, 0xC000000000000000);
        v20 = 0;
        goto LABEL_83;
      }

      v27 = 0;
    }

    else if (v23)
    {
      if (v23 == 1)
      {
        LODWORD(v27) = HIDWORD(v20) - v20;
        if (__OFSUB__(HIDWORD(v20), v20))
        {
          goto LABEL_89;
        }

        v27 = v27;
      }

      else
      {
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        v34 = __OFSUB__(v32, v33);
        v27 = v32 - v33;
        if (v34)
        {
          goto LABEL_90;
        }
      }
    }

    else
    {
      v27 = BYTE6(v22);
    }

    if (v108 <= 1)
    {
      v35 = BYTE6(v4);
      if (v108)
      {
        v35 = v104;
        if (v105)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_54;
    }

    if (v108 != 2)
    {
      if (!v27)
      {
LABEL_81:
        v101 = v0[7];
        v100 = v0[8];
        sub_1B852550C(v101, v100);
        sub_1B852608C(v101, v100);
LABEL_83:
        sub_1B852608C(v20, v22);
LABEL_84:
        v102 = v0[17];

LABEL_62:
        sub_1B8538128(v0[13], v0[15], type metadata accessor for WBSKeychainPasskey);
        v44 = 0;
        goto LABEL_63;
      }

LABEL_59:
      v41 = v0[7];
      v40 = v0[8];
      sub_1B852550C(v41, v40);
      sub_1B852608C(v41, v40);
      v30 = v20;
      v31 = v22;
      goto LABEL_39;
    }

    v37 = *(v106 + 16);
    v36 = *(v106 + 24);
    v34 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (v34)
    {
      break;
    }

LABEL_54:
    if (v27 != v35)
    {
      goto LABEL_59;
    }

    if (v27 < 1)
    {
      goto LABEL_81;
    }

    v38 = v0[7];
    v39 = v0[8];
    sub_1B852550C(v38, v39);
    sub_1B852CF28(v38, v39);
    sub_1B852CF28(v20, v22);
    v103 = sub_1B8534838(v20, v22, v38, v39);
    sub_1B852608C(v20, v22);
    sub_1B852608C(v38, v39);
    sub_1B852608C(v20, v22);
    if (v103)
    {
      goto LABEL_84;
    }

LABEL_40:
    ++v6;
    sub_1B85260A0(v0[13], type metadata accessor for WBSKeychainPasskey);
    if (v2 == v6)
    {
      v43 = v0[17];

      v44 = 1;
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

char *sub_1B852F0B4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = type metadata accessor for WBSShareablePasskey();
  v6 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8565C48();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v31 - v13;
  v14 = type metadata accessor for WBSKeychainPasskey();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B8565DA8();
  v19 = a3;
  v20 = v38;
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(a1, a2, v18, v21, a3, v17);
  if (v20)
  {
  }

  else
  {
    v32 = v17;
    v22 = v35;
    v23 = v36;

    sub_1B8530D60(a1, a2, v19 & 1);
    v24 = v32[3];
    v25 = v32[4];
    v39 = v32[2];
    v26 = v34;
    (*(v34 + 16))(v12, v37, v22);

    WBSShareablePasskey.init(relyingParty:metadata:privateKey:)(v24, v25, &v39, v12, v23);
    v27 = sub_1B8565AA8();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1B8565A98();
    sub_1B8536618(&qword_1EBA8A948, 255, type metadata accessor for WBSShareablePasskey);
    v12 = sub_1B8565A88();

    sub_1B85260A0(v23, type metadata accessor for WBSShareablePasskey);
    (*(v26 + 8))(v37, v22);
    sub_1B85260A0(v32, type metadata accessor for WBSKeychainPasskey);
  }

  return v12;
}

void WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v193 = a8;
  v192 = a7;
  v214 = a6;
  v219 = a5;
  v198 = a4;
  v209 = a3;
  v210 = a2;
  v201 = a9;
  error[1] = *MEMORY[0x1E69E9840];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v197 = &v190 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v196 = &v190 - v14;
  v200 = sub_1B8565A38();
  v199 = *(v200 - 8);
  v15 = *(v199 + 64);
  v16 = MEMORY[0x1EEE9AC00](v200);
  v191 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v190 = &v190 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v217 = &v190 - v21;
  v22 = type metadata accessor for WBSKeychainPasskey();
  v215 = *(v22 - 8);
  v216 = v22;
  v23 = v215[8];
  MEMORY[0x1EEE9AC00](v22);
  v208 = &v190 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_1B8565C98();
  v204 = *(v206 - 1);
  v25 = *(v204 + 8);
  MEMORY[0x1EEE9AC00](v206);
  v202 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_1B8565C88();
  v205 = *(v207 - 8);
  v27 = v205[8];
  MEMORY[0x1EEE9AC00](v207);
  v203 = &v190 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_1B8565C68();
  v211 = *(v212 - 8);
  isa = v211[2].isa;
  MEMORY[0x1EEE9AC00](v212);
  v31 = &v190 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B85748F0;
  v33 = *MEMORY[0x1E697AD68];
  type metadata accessor for CFString(0);
  v35 = v34;
  *(v32 + 56) = v34;
  *(v32 + 32) = v33;
  v36 = type metadata accessor for WBSShareablePasskey();
  v37 = MEMORY[0x1E69E6530];
  *(v32 + 64) = *&a1[v36[7]];
  v38 = *MEMORY[0x1E697AD30];
  *(v32 + 88) = v37;
  *(v32 + 96) = v38;
  v39 = *MEMORY[0x1E697AD38];
  *(v32 + 120) = v35;
  *(v32 + 128) = v39;
  v40 = *MEMORY[0x1E697AD50];
  *(v32 + 184) = v35;
  v195 = v35;
  *(v32 + 152) = v35;
  *(v32 + 160) = v40;
  v41 = *&a1[v36[8]];
  *(v32 + 216) = v37;
  *(v32 + 192) = v41;
  sub_1B8451F34(0, &qword_1EBA8A900, 0x1E695DF20);
  v42 = v33;
  v43 = v38;
  v44 = v39;
  v45 = v214;
  v46 = v40;
  v221 = sub_1B85661D8();
  v47 = v36[6];
  v213 = a1;
  v48 = sub_1B8565BE8();
  v49 = MEMORY[0x1B8CBEEB0](v48);
  v51 = v50;
  (v211->info)(v31, v212);
  v220 = v51;
  if (v45 >> 60 == 15)
  {
    sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698]);
    v52 = v202;
    v53 = v206;
    sub_1B8565BD8();
    sub_1B852550C(v49, v51);
    v54 = v222;
    sub_1B8535D2C(v49, v51);
    sub_1B851D53C(v49, v51);
    v55 = v203;
    sub_1B8565BC8();
    (*(v204 + 1))(v52, v53);
    sub_1B8565C78();
    v222 = v54;
    (v205[1])(v55, v207);
    v56 = v225;
    v57 = v226;
  }

  else
  {
    v57 = v45;
    v56 = v219;
  }

  v211 = &stru_1F3064D08;
  v58 = sub_1B8565DA8();
  v60 = v59;
  sub_1B852CF28(v219, v45);
  v61 = v217;
  v62 = v222;
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v56, v57, v58, v60, 0, v217);
  if (v62)
  {

    (v215[7])(v61, 1, 1, v216);
    v63 = sub_1B8456588(v61, &qword_1EBA8A8E0, &unk_1B8574910);
    v64 = v213;
  }

  else
  {

    v84 = v216;
    (v215[7])(v61, 0, 1, v216);
    v85 = v208;
    sub_1B8538128(v61, v208, type metadata accessor for WBSKeychainPasskey);
    v86 = (v85 + *(v84 + 44));
    v64 = v213;
    if (*v86 == v210 && v86[1] == v209 || (sub_1B8566758() & 1) != 0)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v87 = sub_1B8565B78();
      __swift_project_value_buffer(v87, qword_1ED985C68);
      v88 = sub_1B8565B48();
      v89 = sub_1B85661F8();
      v90 = os_log_type_enabled(v88, v89);
      v91 = v220;
      if (v90)
      {
        v92 = v56;
        v93 = v49;
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_1B8447000, v88, v89, "Imported duplicate passkey.", v94, 2u);
        v95 = v94;
        v49 = v93;
        v56 = v92;
        MEMORY[0x1B8CC1710](v95, -1, -1);
      }

      sub_1B851D53C(v49, v91);
      sub_1B851D53C(v56, v57);

      sub_1B8538128(v208, v201, type metadata accessor for WBSKeychainPasskey);
      goto LABEL_71;
    }

    v63 = sub_1B85260A0(v208, type metadata accessor for WBSKeychainPasskey);
  }

  v65 = v57;
  v66 = MEMORY[0x1B8CBEE80](v63);
  v68 = v67;
  error[0] = 0;
  v222 = v66;
  v69 = sub_1B85659A8();
  v70 = SecKeyCreateWithData(v69, v221, error);

  v71 = v220;
  v212 = v56;
  if (!v70)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v96 = sub_1B8565B78();
    __swift_project_value_buffer(v96, qword_1ED985C68);
    v97 = sub_1B8565B48();
    v98 = sub_1B8566218();
    if (os_log_type_enabled(v97, v98))
    {
      v207 = v57;
      v219 = v49;
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v224 = v100;
      *v99 = 136446210;
      swift_beginAccess();
      if (error[0])
      {
        v217 = v68;
        v101 = error[0];
        v225 = 0;
        v226 = 0xE000000000000000;
        v223 = v101;
        type metadata accessor for CFError(0);
        sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError);
        v102 = v101;
        v103 = sub_1B8566738();
        if (v103)
        {
          v104 = v103;
        }

        else
        {
          v104 = swift_allocError();
          *v180 = v102;
        }

        v181 = sub_1B85658C8();

        v182 = [v181 safari_privacyPreservingDescription];
        v183 = sub_1B8565DA8();
        v185 = v184;

        MEMORY[0x1B8CBF120](v183, v185);

        v179 = v225;
        v178 = v226;
        v68 = v217;
      }

      else
      {
        v178 = 0xED0000726F727265;
        v179 = 0x206E776F6E6B6E55;
      }

      v186 = sub_1B8525560(v179, v178, &v224);

      *(v99 + 4) = v186;
      _os_log_impl(&dword_1B8447000, v97, v98, "Could not import key data: %{public}s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x1B8CC1710](v100, -1, -1);
      MEMORY[0x1B8CC1710](v99, -1, -1);

      v49 = v219;
      v71 = v220;
      v65 = v207;
    }

    else
    {
    }

    swift_beginAccess();
    v174 = v212;
    v175 = v222;
    if (error[0])
    {
    }

    sub_1B8535C58();
    swift_allocError();
    *v187 = 1;
    *(v187 + 4) = 1;
    swift_willThrow();
    goto LABEL_69;
  }

  v219 = v49;
  v72 = v64[2];
  sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
  sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8);

  v73 = sub_1B8565CB8();
  v74 = [objc_opt_self() cborWithDictionary_];

  v75 = sub_1B8565958();
  v77 = v76;

  if (v77 >> 60 == 15)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v78 = sub_1B8565B78();
    __swift_project_value_buffer(v78, qword_1ED985C68);
    v79 = sub_1B8565B48();
    v80 = sub_1B8566218();
    v81 = os_log_type_enabled(v79, v80);
    v71 = v220;
    if (v81)
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_1B8447000, v79, v80, "Could not import key metadata.", v82, 2u);
      MEMORY[0x1B8CC1710](v82, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v83 = 2;
    *(v83 + 4) = 1;
    swift_willThrow();

LABEL_59:
    v49 = v219;
    v174 = v212;
    v175 = v222;
LABEL_69:
    sub_1B851D53C(v175, v68);
    sub_1B851D53C(v174, v65);
    v189 = v49;
    goto LABEL_70;
  }

  v217 = v68;
  v207 = v57;
  LODWORD(v216) = [objc_opt_self() isCredentialExchangeEnabled];
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1B8574680;
  v215 = *MEMORY[0x1E697B3D0];
  v106 = v215;
  v107 = v195;
  *(v105 + 56) = v195;
  *(v105 + 32) = v106;
  type metadata accessor for SecKey(0);
  v108 = MEMORY[0x1E697ADC8];
  *(v105 + 64) = v70;
  v109 = *v108;
  v214 = v109;
  *(v105 + 88) = v110;
  *(v105 + 96) = v109;
  v111 = *v64;
  v208 = v64[1];
  v112 = v208;
  v113 = MEMORY[0x1E69E6158];
  *(v105 + 120) = v107;
  *(v105 + 128) = v111;
  v114 = MEMORY[0x1E697AC48];
  *(v105 + 136) = v112;
  v115 = *v114;
  v213 = v115;
  *(v105 + 152) = v113;
  *(v105 + 160) = v115;
  v116 = MEMORY[0x1E6969080];
  *(v105 + 184) = v107;
  *(v105 + 192) = v75;
  *(v105 + 200) = v77;
  v206 = *MEMORY[0x1E697B390];
  v117 = v206;
  *(v105 + 248) = v107;
  *(v105 + 216) = v116;
  *(v105 + 224) = v117;
  v118 = MEMORY[0x1E69E6370];
  *(v105 + 256) = 1;
  v205 = *MEMORY[0x1E697ABD8];
  v119 = v205;
  *(v105 + 280) = v118;
  *(v105 + 288) = v119;
  v120 = *MEMORY[0x1E697ABE0];
  v121 = MEMORY[0x1E697ABD0];
  *(v105 + 312) = v107;
  *(v105 + 320) = v120;
  v122 = *v121;
  v123 = 0xD000000000000019;
  v124 = 0xD00000000000002ALL;
  *(v105 + 344) = v107;
  *(v105 + 352) = v122;
  v125 = *(v218 + 16);
  v126 = ".webauthn-recently-deleted";
  if (v125)
  {
    v124 = 0xD000000000000032;
  }

  else
  {
    v126 = ".webauthn.testing";
  }

  if (*(v218 + 16))
  {
    v123 = 0xD000000000000021;
    v127 = "com.apple.webkit.webauthn";
  }

  else
  {
    v127 = "back Title)";
  }

  if (v198)
  {
    v123 = v124;
    v128 = v126;
  }

  else
  {
    v128 = v127;
  }

  *(v105 + 376) = v107;
  *(v105 + 384) = v123;
  *(v105 + 392) = v128 | 0x8000000000000000;
  v129 = *MEMORY[0x1E697AEB0];
  *(v105 + 440) = v107;
  *(v105 + 408) = v113;
  *(v105 + 416) = v129;
  *(v105 + 472) = v118;
  *(v105 + 448) = v125 ^ 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v130 = v215;
  v204 = v70;
  v131 = v214;

  v132 = v213;
  v214 = v75;
  v215 = v77;
  sub_1B852CF28(v75, v77);
  v133 = v206;
  v134 = v205;
  v135 = v120;
  v136 = v122;
  v137 = v129;
  v138 = sub_1B85661D8();
  if (v216)
  {
    v139 = *MEMORY[0x1E697AC38];
    v140 = v197;
    v141 = v196;
    if (!*MEMORY[0x1E697AC38])
    {
      __break(1u);
      goto LABEL_73;
    }

    v142 = sub_1B85659A8();
    [v138 __swift_setObject_forKeyedSubscript_];
  }

  else
  {
    v143 = *MEMORY[0x1E697AC40];
    v142 = sub_1B85659A8();
    [v138 __swift_setObject_forKeyedSubscript_];
    v140 = v197;
    v141 = v196;
  }

  sub_1B8526860(v192, v141, &qword_1EBA8A7A0, &unk_1B85764D0);
  v144 = v199;
  v145 = *(v199 + 48);
  v146 = v200;
  if (v145(v141, 1, v200) == 1)
  {
    sub_1B8456588(v141, &qword_1EBA8A7A0, &unk_1B85764D0);
  }

  else
  {
    v147 = v190;
    (*(v144 + 32))(v190, v141, v146);
    v148 = *MEMORY[0x1E697ADD0];
    v149 = sub_1B85659F8();
    v150 = v148;
    [v138 __swift_setObject_forKeyedSubscript_];

    v144 = v199;
    v146 = v200;
    (*(v144 + 8))(v147, v200);
  }

  sub_1B8526860(v193, v140, &qword_1EBA8A7A0, &unk_1B85764D0);
  v151 = v145(v140, 1, v146);
  v68 = v217;
  if (v151 == 1)
  {
    sub_1B8456588(v140, &qword_1EBA8A7A0, &unk_1B85764D0);
    v71 = v220;
    v152 = v212;
    v153 = v138;
  }

  else
  {
    v154 = v140;
    v155 = v191;
    (*(v144 + 32))(v191, v154, v146);
    v156 = v144;
    v157 = *MEMORY[0x1E697ACD0];
    v158 = v146;
    v159 = sub_1B85659F8();
    v160 = v157;
    v153 = v138;
    [v138 __swift_setObject_forKeyedSubscript_];

    (*(v156 + 8))(v155, v158);
    v71 = v220;
    v152 = v212;
  }

  v161 = sub_1B8565DA8();
  v65 = v207;
  if (v161 == v210 && v162 == v209)
  {

LABEL_53:
    v166 = SecItemAdd(v153, 0);
    if (!v166)
    {
      v176 = sub_1B8565DA8();
      WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v152, v65, v176, v177, v198 & 1, v201);

      sub_1B852608C(v214, v215);

      sub_1B851D53C(v222, v68);
      sub_1B851D53C(v152, v65);
      v189 = v219;
LABEL_70:
      sub_1B851D53C(v189, v71);

LABEL_71:
      v188 = *MEMORY[0x1E69E9840];
      return;
    }

    v167 = v166;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v168 = sub_1B8565B78();
    __swift_project_value_buffer(v168, qword_1ED985C68);
    v169 = sub_1B8565B48();
    v170 = sub_1B8566218();
    if (os_log_type_enabled(v169, v170))
    {
      v171 = swift_slowAlloc();
      *v171 = 67174657;
      *(v171 + 4) = v167;
      _os_log_impl(&dword_1B8447000, v169, v170, "Failed to save passkey to keychain: %{private}d", v171, 8u);
      v172 = v171;
      v71 = v220;
      MEMORY[0x1B8CC1710](v172, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v173 = v167;
    *(v173 + 4) = 0;
    swift_willThrow();

    sub_1B852608C(v214, v215);
    goto LABEL_59;
  }

  v163 = sub_1B8566758();

  if (v163)
  {
    goto LABEL_53;
  }

  v164 = *MEMORY[0x1E697AE90];
  if (*MEMORY[0x1E697AE90])
  {
    v165 = sub_1B8565D68();
    [(__CFDictionary *)v153 __swift_setObject:v165 forKeyedSubscript:v164];

    goto LABEL_53;
  }

LABEL_73:
  __break(1u);
}

void *sub_1B8530A58(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1B8566578();

    if (v4)
    {
      sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1B8535584(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t WBSPasskeyStore.unownedExecutor.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

id WBSPasskeyStore.__allocating_init(forTesting:queue:)(char a1, void *a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 40) = a2;
  v7 = a2;
  *(v6 + 24) = sub_1B8566268();
  *(v6 + 32) = v8;
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id WBSPasskeyStore.init(forTesting:queue:)(char a1, void *a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 40) = a2;
  v4 = a2;
  v3[3] = sub_1B8566268();
  v3[4] = v5;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WBSPasskeyStore();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t WBSPasskeyStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B8530CC4()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

BOOL static WBSPasskeyStore.PasskeyStoreError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v5) = 0;
      }

      else
      {
        v5 = *(a2 + 4);
      }

      return (v5 & 1) != 0;
    }

    if (v3 == 1)
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = 0;
    }

    return (v8 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v7 = *(a2 + 4);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v3 > 2)
  {
    v9 = *(a2 + 4);
  }

  else
  {
    v9 = 0;
  }

  return (v9 & 1) != 0;
}

uint64_t sub_1B8530D60(uint64_t a1, uint64_t a2, char a3)
{
  result[1] = *MEMORY[0x1E69E9840];
  v84 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8574770;
  v6 = *MEMORY[0x1E697AFF8];
  v83 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  v8 = MEMORY[0x1E697B020];
  *(v5 + 32) = v6;
  v82 = *v8;
  *(v5 + 56) = v7;
  *(v5 + 64) = v82;
  v9 = *MEMORY[0x1E697AEB0];
  *(v5 + 88) = v7;
  *(v5 + 96) = v9;
  v10 = *MEMORY[0x1E697AEB8];
  *(v5 + 120) = v7;
  *(v5 + 128) = v10;
  v11 = *MEMORY[0x1E697B390];
  *(v5 + 184) = v7;
  *(v5 + 152) = v7;
  *(v5 + 160) = v11;
  v12 = MEMORY[0x1E69E6370];
  *(v5 + 192) = 1;
  v13 = *MEMORY[0x1E697ABD0];
  *(v5 + 216) = v12;
  *(v5 + 224) = v13;
  v14 = 0xD000000000000019;
  if (*(v3 + 16))
  {
    v15 = 0xD000000000000032;
  }

  else
  {
    v15 = 0xD00000000000002ALL;
  }

  if (*(v3 + 16))
  {
    v16 = ".webauthn-recently-deleted";
  }

  else
  {
    v16 = ".webauthn.testing";
  }

  if (*(v3 + 16))
  {
    v14 = 0xD000000000000021;
    v17 = "com.apple.webkit.webauthn";
  }

  else
  {
    v17 = "back Title)";
  }

  if (a3)
  {
    v18 = v16;
  }

  else
  {
    v15 = v14;
    v18 = v17;
  }

  v19 = MEMORY[0x1E69E6158];
  *(v5 + 248) = v7;
  *(v5 + 256) = v15;
  *(v5 + 264) = v18 | 0x8000000000000000;
  v20 = *MEMORY[0x1E697B260];
  v21 = MEMORY[0x1E697B270];
  *(v5 + 280) = v19;
  *(v5 + 288) = v20;
  v22 = *v21;
  *(v5 + 312) = v7;
  *(v5 + 320) = v22;
  v23 = *MEMORY[0x1E697B328];
  *(v5 + 376) = v7;
  *(v5 + 344) = v7;
  *(v5 + 352) = v23;
  *(v5 + 408) = v12;
  *(v5 + 384) = 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v24 = v83;
  v25 = v82;
  v26 = v9;
  v27 = v10;
  v28 = v11;
  v29 = v13;
  v30 = v20;
  v31 = v22;
  v32 = v23;
  v33 = sub_1B85661D8();
  if (v84)
  {
    v34 = *MEMORY[0x1E697AC38];
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  v34 = *MEMORY[0x1E697AC40];
LABEL_17:
  v35 = sub_1B85659A8();
  [v33 __swift_setObject_forKeyedSubscript_];

  result[0] = 0;
  v36 = v33;
  v37 = SecItemCopyMatching(v36, result);
  v38 = v37;
  if (!v84)
  {
    goto LABEL_21;
  }

  if (!v37)
  {

    goto LABEL_28;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v36 __swift_setObject:0 forKeyedSubscript:?];
    v39 = *MEMORY[0x1E697AC40];
    v40 = sub_1B85659A8();
    [(__CFDictionary *)v36 __swift_setObject:v40 forKeyedSubscript:v39];

    v38 = SecItemCopyMatching(v36, result);
LABEL_21:

    if (v38)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v41 = sub_1B8565B78();
      __swift_project_value_buffer(v41, qword_1ED985C68);
      v42 = sub_1B8565B48();
      v43 = sub_1B8566218();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 67240192;
        *(v44 + 4) = v38;
        _os_log_impl(&dword_1B8447000, v42, v43, "Could not find passkey: %{public}d", v44, 8u);
        MEMORY[0x1B8CC1710](v44, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v45 = v38;
      *(v45 + 4) = 0;
      goto LABEL_49;
    }

LABEL_28:
    if (result[0])
    {
      v46 = swift_unknownObjectRetain();
      v47 = CFGetTypeID(v46);
      if (v47 == SecKeyGetTypeID())
      {
        error = 0;
        type metadata accessor for SecKey(0);
        swift_unknownObjectRetain();
        v48 = swift_dynamicCastUnknownClassUnconditional();
        v49 = SecKeyCopyExternalRepresentation(v48, &error);

        if (v49)
        {
          v50 = v49;
          v51 = sub_1B85659D8();
          v53 = v52;

          v89 = v51;
          v90 = v53;
          sub_1B8565C38();
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1ED985688 != -1)
          {
            swift_once();
          }

          v61 = sub_1B8565B78();
          __swift_project_value_buffer(v61, qword_1ED985C68);
          v62 = sub_1B8565B48();
          v63 = sub_1B8566218();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = swift_slowAlloc();
            v65 = swift_slowAlloc();
            v87 = v65;
            *v64 = 136446210;
            swift_beginAccess();
            if (error)
            {
              v86 = v65;
              v66 = error;
              v89 = 0;
              v90 = 0xE000000000000000;
              type metadata accessor for CFError(0);
              sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError);
              v67 = v66;
              v68 = sub_1B8566738();
              v85 = v67;
              if (v68)
              {
                v69 = v68;
              }

              else
              {
                v69 = swift_allocError();
                *v74 = v67;
              }

              v75 = sub_1B85658C8();

              v76 = [v75 safari_privacyPreservingDescription];
              v77 = sub_1B8565DA8();
              v79 = v78;

              MEMORY[0x1B8CBF120](v77, v79);

              v73 = v89;
              v72 = v90;
              v65 = v86;
            }

            else
            {
              v72 = 0xED0000726F727265;
              v73 = 0x206E776F6E6B6E55;
            }

            v80 = sub_1B8525560(v73, v72, &v87);

            *(v64 + 4) = v80;
            _os_log_impl(&dword_1B8447000, v62, v63, "Could not read key data: %{public}s", v64, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v65);
            MEMORY[0x1B8CC1710](v65, -1, -1);
            MEMORY[0x1B8CC1710](v64, -1, -1);
          }

          swift_beginAccess();
          if (error)
          {
          }

          sub_1B8535C58();
          swift_allocError();
          *v81 = 1;
          *(v81 + 4) = 1;
          swift_willThrow();
          swift_unknownObjectRelease();
        }

        goto LABEL_50;
      }

      swift_unknownObjectRelease();
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v54 = sub_1B8565B78();
    __swift_project_value_buffer(v54, qword_1ED985C68);
    v55 = sub_1B8565B48();
    v56 = sub_1B8566218();
    if (!os_log_type_enabled(v55, v56))
    {
      goto LABEL_48;
    }

    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v57 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v59 = swift_dynamicCastObjCClass();
      if (v59)
      {
        v60 = v59;
LABEL_47:
        *(v57 + 4) = v59;
        *v58 = v60;
        _os_log_impl(&dword_1B8447000, v55, v56, "Unexpected keychain response: %{private}@", v57, 0xCu);
        sub_1B8456588(v58, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v58, -1, -1);
        MEMORY[0x1B8CC1710](v57, -1, -1);
LABEL_48:

        sub_1B8535C58();
        swift_allocError();
        *v70 = 1;
        *(v70 + 4) = 1;
LABEL_49:
        swift_willThrow();
LABEL_50:

        v37 = swift_unknownObjectRelease();
        v71 = *MEMORY[0x1E69E9840];
        return v37;
      }

      swift_unknownObjectRelease();
    }

    v59 = 0;
    v60 = 0;
    goto LABEL_47;
  }

  __break(1u);
  return v37;
}

uint64_t WBSPasskeyStore.exportPrivateKey(credentialID:)(uint64_t a1, uint64_t a2)
{
  v6 = sub_1B8565C48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8530D60(a1, a2, 0);
  if (!v3)
  {
    v2 = sub_1B8565BF8();
    (*(v7 + 8))(v10, v6);
  }

  return v2;
}

const __CFDictionary *sub_1B85317C4()
{
  result[1] = *MEMORY[0x1E69E9840];
  v41 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B8574770;
  v2 = *MEMORY[0x1E697AFF8];
  v40 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  *(v1 + 32) = v2;
  v39 = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697B020];
  v5 = MEMORY[0x1E697AEB0];
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  v6 = *v5;
  *(v1 + 88) = v3;
  *(v1 + 96) = v6;
  v7 = *MEMORY[0x1E697AEB8];
  *(v1 + 120) = v3;
  *(v1 + 128) = v7;
  v8 = *MEMORY[0x1E697B390];
  *(v1 + 184) = v3;
  *(v1 + 152) = v3;
  *(v1 + 160) = v8;
  v9 = MEMORY[0x1E69E6370];
  *(v1 + 192) = 1;
  v10 = *MEMORY[0x1E697ABD0];
  *(v1 + 216) = v9;
  *(v1 + 224) = v10;
  if (*(v0 + 16))
  {
    v11 = 0xD000000000000021;
  }

  else
  {
    v11 = 0xD000000000000019;
  }

  if (*(v0 + 16))
  {
    v12 = "com.apple.webkit.webauthn";
  }

  else
  {
    v12 = "back Title)";
  }

  v13 = MEMORY[0x1E69E6158];
  *(v1 + 248) = v3;
  *(v1 + 256) = v11;
  *(v1 + 264) = v12 | 0x8000000000000000;
  v14 = *MEMORY[0x1E697B260];
  v15 = MEMORY[0x1E697B270];
  *(v1 + 280) = v13;
  *(v1 + 288) = v14;
  v16 = *v15;
  *(v1 + 312) = v3;
  *(v1 + 320) = v16;
  v17 = *MEMORY[0x1E697B328];
  *(v1 + 376) = v3;
  *(v1 + 344) = v3;
  *(v1 + 352) = v17;
  *(v1 + 408) = v9;
  *(v1 + 384) = 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v18 = v40;
  v19 = v39;
  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v10;
  v24 = v14;
  v25 = v16;
  v26 = v17;
  v27 = sub_1B85661D8();
  if (v41)
  {
    v28 = *MEMORY[0x1E697AC38];
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v28 = *MEMORY[0x1E697AC40];
LABEL_11:
  v29 = sub_1B85659A8();
  [v27 __swift_setObject_forKeyedSubscript_];

  result[0] = 0;
  v30 = v27;
  v31 = SecItemCopyMatching(v30, result);
  v32 = v31;
  if (v31 == -25300)
  {
    v33 = v41;
  }

  else
  {
    v33 = 0;
  }

  if (v33 != 1)
  {
LABEL_17:

    if (v32 == -25300)
    {
      v32 = 0;
      v36 = 1;
    }

    else
    {
      if (!v32 && result[0])
      {
        swift_unknownObjectRetain();

        type metadata accessor for SecKey(0);
        v30 = swift_dynamicCastUnknownClassUnconditional();
        swift_unknownObjectRelease();
LABEL_24:
        v38 = *MEMORY[0x1E69E9840];
        return v30;
      }

      v36 = 0;
    }

    sub_1B8535C58();
    swift_allocError();
    *v37 = v32;
    *(v37 + 4) = v36;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  if (*MEMORY[0x1E697AC38])
  {
    [(__CFDictionary *)v30 __swift_setObject:0 forKeyedSubscript:?];
    v34 = *MEMORY[0x1E697AC40];
    v35 = sub_1B85659A8();
    [(__CFDictionary *)v30 __swift_setObject:v35 forKeyedSubscript:v34];

    v32 = SecItemCopyMatching(v30, result);
    goto LABEL_17;
  }

  __break(1u);
  return v31;
}

uint64_t WBSPasskeyStore.test_createPasskey(name:displayName:relyingParty:userHandle:groupID:inRecentlyDeleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1B8531C90;

  return (sub_1B85374C0)(a1, a2, a5, a6, a7, a8);
}

uint64_t sub_1B8531C90(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t WBSPasskeyStore.test_createPasskey(for:username:displayName:userHandle:groupID:inRecentlyDeleted:asLegacyCredential:unsafeAllowRealKeychainAccess:keyClass:)@<X0>(__CFError *a1@<X0>, const __CFDictionary *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, __CFString *a10, uint64_t a11, unsigned __int8 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  v34 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  LOBYTE(v33) = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(a3, a4, &v33);
  LOBYTE(v33) = 1;

  WBSKeychainPasskey.Metadata.subscript.setter(a5, a6, &v33);
  LOBYTE(v33) = 1;
  sub_1B852550C(a7, a8);
  WBSKeychainPasskey.Metadata.subscript.setter(a7, a8, &v33);
  v22 = sub_1B8565D68();
  v23 = objc_opt_self();
  v24 = [v23 cborWithUTF8String_];

  v25 = sub_1B8525C44(v24);
  v26 = sub_1B8565D68();
  v27 = [v23 cborWithUTF8String_];

  v28 = sub_1B8525C44(v27);
  v33 = v34;
  sub_1B8532F84(a1, a2, &v33, a10, a11, a12, a13, a14, a9, a15, a16);
}

void sub_1B8532164(int a1, int a2, int a3, void *a4, void *a5, int a6, void *aBlock, uint64_t a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  sub_1B8565DA8();
  v9[4] = v12;
  sub_1B8565DA8();
  v9[5] = v13;
  v14 = a5;
  v15 = a4;

  v16 = sub_1B85659D8();
  v18 = v17;

  v9[6] = v16;
  v9[7] = v18;
  if (a5)
  {
    sub_1B8565DA8();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v9[8] = v20;
  v21 = swift_task_alloc();
  v9[9] = v21;
  *v21 = v9;
  v21[1] = sub_1B85322F4;

  JUMPOUT(0x1B85374C0);
}

uint64_t sub_1B85322F4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 72);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = v7[8];
  v13 = v7[7];
  v14 = v7[6];
  v15 = v7[5];
  v16 = v7[4];

  sub_1B851D53C(v14, v13);

  if (v4)
  {
    v17 = sub_1B85658C8();

    v18 = v17;
    v19 = 0;
  }

  else
  {
    v17 = sub_1B85659A8();
    sub_1B851D53C(a1, a2);
    v19 = v17;
    v18 = 0;
  }

  v20 = v8[3];
  (v20)[2](v20, v19, v18);

  _Block_release(v20);
  v21 = *(v11 + 8);

  return v21();
}

uint64_t WBSPasskeyStore.test_createPasskey(name:displayName:relyingParty:userHandle:groupID:inRecentlyDeleted:unsafeAllowRealKeychainAccess:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B8538754;

  return sub_1B85378F4(a1, a2, a5, a6, a7, a8, v18, v19);
}

uint64_t sub_1B8532810(int a1, int a2, int a3, void *a4, void *a5, int a6, int a7, void *aBlock, uint64_t a9)
{
  v9[2] = a9;
  v9[3] = _Block_copy(aBlock);
  v26 = sub_1B8565DA8();
  v13 = v12;
  v9[4] = v12;
  v25 = sub_1B8565DA8();
  v15 = v14;
  v9[5] = v14;
  v16 = a5;
  v17 = a4;

  v18 = sub_1B85659D8();
  v20 = v19;

  v9[6] = v18;
  v9[7] = v20;
  if (a5)
  {
    a5 = sub_1B8565DA8();
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  v9[8] = v22;
  v23 = swift_task_alloc();
  v9[9] = v23;
  *v23 = v9;
  v23[1] = sub_1B8538750;

  return sub_1B85378F4(v26, v13, v25, v15, v18, v20, a5, v22);
}

uint64_t WBSPasskeyStore.test_createLegacyCredential(name:displayName:relyingParty:userHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_task_alloc();
  *(v8 + 16) = v15;
  *v15 = v8;
  v15[1] = sub_1B8538754;

  return sub_1B8537D30(a1, a2, a5, a6, a7, a8);
}

uint64_t sub_1B8532C40(int a1, int a2, int a3, void *a4, void *aBlock, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v8 = sub_1B8565DA8();
  v10 = v9;
  v6[4] = v9;
  v11 = sub_1B8565DA8();
  v13 = v12;
  v6[5] = v12;
  v14 = a4;

  v15 = sub_1B85659D8();
  v17 = v16;

  v6[6] = v15;
  v6[7] = v17;
  v18 = swift_task_alloc();
  v6[8] = v18;
  *v18 = v6;
  v18[1] = sub_1B8532D84;

  return sub_1B8537D30(v8, v10, v11, v13, v15, v17);
}

uint64_t sub_1B8532D84(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 64);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = v7[5];
  v13 = v7[4];
  sub_1B851D53C(v7[6], v7[7]);

  if (v4)
  {
    v14 = sub_1B85658C8();

    v15 = v14;
    v16 = 0;
  }

  else
  {
    v14 = sub_1B85659A8();
    sub_1B851D53C(a1, a2);
    v16 = v14;
    v15 = 0;
  }

  v17 = v8[3];
  (v17)[2](v17, v16, v15);

  _Block_release(v17);
  v18 = *(v11 + 8);

  return v18();
}

void sub_1B8532F84(__CFError *a1@<X0>, const __CFDictionary *a2@<X1>, uint64_t *a3@<X2>, __CFString *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v141 = a4;
  v142 = a5;
  v143 = a1;
  v144 = a2;
  v150[25] = *MEMORY[0x1E69E9840];
  v17 = sub_1B8565C98();
  v139 = *(v17 - 8);
  v18 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v138 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B8565C88();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a3;
  v27 = *(v11 + 16);
  if ((v27 & 1) == 0 && (a8 & 1) == 0)
  {
    sub_1B8535C58();
    swift_allocError();
    *v28 = 3;
    *(v28 + 4) = 1;
    swift_willThrow();
LABEL_48:
    v118 = *MEMORY[0x1E69E9840];
    return;
  }

  v120 = v25;
  v121 = v23;
  v137 = v17;
  v122 = a9;
  v123 = v11;
  v124 = v22;
  v146 = v26;
  v125 = a6;
  if (a7)
  {

    v29 = sub_1B8565D68();
    v30 = objc_opt_self();
    v31 = [v30 cborWithUTF8String_];

    v32 = [v30 cborWithInteger_];
    if (v32)
    {
      v33 = v32;
      if ((v26 & 0xC000000000000001) != 0)
      {
        if (v26 < 0)
        {
          v34 = v26;
        }

        else
        {
          v34 = v26 & 0xFFFFFFFFFFFFFF8;
        }

        v35 = sub_1B8566358();
        if (__OFADD__(v35, 1))
        {
          __break(1u);
        }

        v26 = sub_1B8553CCC(v34, v35 + 1);
      }

      v36 = a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v26;
      sub_1B8554184(v33, v31, isUniquelyReferenced_nonNull_native);

      v38 = v148;

      v146 = v38;
    }

    else
    {
      v36 = a8;
      v39 = sub_1B8525C44(v31);
    }

    LOBYTE(a6) = v125;
  }

  else
  {
    v36 = a8;
  }

  v130 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1B8574770;
  v136 = *MEMORY[0x1E697AEB0];
  v41 = v136;
  type metadata accessor for CFString(0);
  *(v40 + 56) = v42;
  *(v40 + 32) = v41;
  v43 = MEMORY[0x1E69E6370];
  *(v40 + 64) = v36 & 1;
  v135 = *MEMORY[0x1E697AD68];
  v44 = v135;
  *(v40 + 88) = v43;
  *(v40 + 96) = v44;
  v134 = *MEMORY[0x1E697AD78];
  v45 = v134;
  *(v40 + 120) = v42;
  *(v40 + 128) = v45;
  v133 = *MEMORY[0x1E697AD50];
  v46 = v133;
  *(v40 + 152) = v42;
  *(v40 + 160) = v46;
  v47 = MEMORY[0x1E69E6530];
  *(v40 + 184) = v42;
  *(v40 + 192) = 256;
  v132 = *MEMORY[0x1E697B390];
  v48 = v132;
  *(v40 + 248) = v42;
  *(v40 + 216) = v47;
  *(v40 + 224) = v48;
  *(v40 + 256) = 1;
  v131 = *MEMORY[0x1E697AD30];
  v49 = v131;
  *(v40 + 280) = v43;
  *(v40 + 288) = v49;
  v50 = MEMORY[0x1E69E6158];
  *(v40 + 312) = v42;
  *(v40 + 320) = a10;
  *(v40 + 328) = a11;
  v129 = *MEMORY[0x1E697B2D0];
  v51 = v129;
  *(v40 + 376) = v42;
  *(v40 + 344) = v50;
  *(v40 + 352) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A890, &unk_1B85747B0);
  inited = swift_initStackObject();
  v53 = inited;
  *(inited + 16) = xmmword_1B8574900;
  v128 = *MEMORY[0x1E697AD18];
  *(inited + 32) = v128;
  v126 = inited + 32;
  *(inited + 40) = 1;
  v127 = *MEMORY[0x1E697ABD0];
  v54 = v127;
  *(inited + 64) = v43;
  *(inited + 72) = v54;
  v55 = 0xD00000000000002ALL;
  if (v27)
  {
    v55 = 0xD000000000000032;
    v56 = ".webauthn-recently-deleted";
  }

  else
  {
    v56 = ".webauthn.testing";
  }

  v57 = 0xD000000000000019;
  if (v27)
  {
    v57 = 0xD000000000000021;
    v58 = "com.apple.webkit.webauthn";
  }

  else
  {
    v58 = "back Title)";
  }

  if ((a6 & 1) == 0)
  {
    v55 = v57;
    v56 = v58;
  }

  v59 = MEMORY[0x1E697ADC8];
  *(inited + 80) = v55;
  *(inited + 88) = v56 | 0x8000000000000000;
  v60 = *v59;
  *(inited + 104) = v50;
  *(inited + 112) = v60;
  v61 = v144;
  *(inited + 120) = v143;
  *(inited + 128) = v61;
  v62 = *MEMORY[0x1E697AC48];
  *(inited + 144) = v50;
  *(inited + 152) = v62;
  v143 = v146;
  sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
  sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8);
  v63 = v136;
  v64 = v135;
  v65 = v134;
  v66 = v133;
  v67 = v132;
  v68 = v131;

  v69 = v129;
  v70 = v128;
  v71 = v127;
  v72 = v60;

  v73 = v62;

  v74 = sub_1B8565CB8();
  v75 = [objc_opt_self() cborWithDictionary_];

  v76 = sub_1B8565958();
  v78 = v77;

  if (v78 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v53[23] = MEMORY[0x1E6969080];
    v53[20] = v76;
    v53[21] = v78;
    v79 = sub_1B8526100(v53);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A830, &qword_1B8574740);
    swift_arrayDestroy();
    *(v40 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8C8, &qword_1B8574B60);
    *(v40 + 384) = v79;
    sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
    v80 = sub_1B85661D8();
    if (sub_1B8565DA8() == v141 && v81 == v142)
    {

      v82 = v137;
      goto LABEL_31;
    }

    v83 = sub_1B8566758();

    v82 = v137;
    if (v83)
    {
LABEL_31:
      v150[0] = 0;
      RandomKey = SecKeyCreateRandomKey(v80, v150);
      if (RandomKey)
      {
        v87 = RandomKey;
        v88 = v140;
        v89 = sub_1B8536BE4(RandomKey);
        if (v88)
        {
        }

        else
        {
          v144 = v80;
          v141 = &stru_1F3064D08;
          v100 = v89;
          v101 = v90;
          sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698]);
          v102 = v138;
          sub_1B8565BD8();
          sub_1B852550C(v100, v101);
          sub_1B8535D2C(v100, v101);
          v140 = 0;
          v142 = v100;
          v143 = v101;
          sub_1B851D53C(v100, v101);
          v103 = v120;
          sub_1B8565BC8();
          (*(v139 + 8))(v102, v82);
          sub_1B8565C78();
          (*(v121 + 8))(v103, v124);

          v104 = v148;
          v105 = v149;
          v106 = sub_1B8565DA8();
          WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v104, v105, v106, v107, v125 & 1, v122);

          sub_1B851D53C(v104, v105);
          sub_1B851D53C(v142, v143);
        }
      }

      else
      {

        if (qword_1ED985688 != -1)
        {
          swift_once();
        }

        v91 = sub_1B8565B78();
        __swift_project_value_buffer(v91, qword_1ED985C68);
        v92 = sub_1B8565B48();
        v93 = sub_1B8566218();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v147 = v95;
          *v94 = 136446210;
          swift_beginAccess();
          if (v150[0])
          {
            v144 = v80;
            v96 = v150[0];
            v148 = 0;
            v149 = 0xE000000000000000;
            v145 = v96;
            type metadata accessor for CFError(0);
            sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError);
            v97 = v96;
            v98 = sub_1B8566738();
            v143 = v97;
            if (v98)
            {
              v99 = v98;
            }

            else
            {
              v99 = swift_allocError();
              *v110 = v97;
            }

            v111 = sub_1B85658C8();

            v112 = [v111 safari_privacyPreservingDescription];
            v113 = sub_1B8565DA8();
            v115 = v114;

            MEMORY[0x1B8CBF120](v113, v115);

            v109 = v148;
            v108 = v149;
            v80 = v144;
          }

          else
          {
            v108 = 0xED0000726F727265;
            v109 = 0x206E776F6E6B6E55;
          }

          v116 = sub_1B8525560(v109, v108, &v147);

          *(v94 + 4) = v116;
          _os_log_impl(&dword_1B8447000, v92, v93, "Could not create passkey: %{public}s", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x1B8CC1710](v95, -1, -1);
          MEMORY[0x1B8CC1710](v94, -1, -1);
        }

        swift_beginAccess();
        if (v150[0])
        {
        }

        sub_1B8535C58();
        swift_allocError();
        *v117 = 1;
        *(v117 + 4) = 1;
        swift_willThrow();
      }

      goto LABEL_48;
    }

    v84 = *MEMORY[0x1E697AE90];
    if (*MEMORY[0x1E697AE90])
    {
      v85 = sub_1B8565D68();
      [(__CFDictionary *)v80 __swift_setObject:v85 forKeyedSubscript:v84];

      goto LABEL_31;
    }
  }

  __break(1u);
}

uint64_t sub_1B8533B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x1E69E6290];
  v14[4] = MEMORY[0x1E6969DF8];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x1E69E6290]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_1B8540798(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_1B85408D4(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_1B8540850(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t WBSPasskeyStore.test_copyPasskey(credentialID:to:inRecentlyDeleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 104) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0) - 8) + 64) + 15;
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  v8 = type metadata accessor for WBSShareablePasskey();
  *(v6 + 72) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  v10 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();
  type metadata accessor for WBSPasskeyStore();
  sub_1B8536618(&qword_1EBA8A790, v11, type metadata accessor for WBSPasskeyStore);
  v13 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8533DB8, v13, v12);
}

uint64_t sub_1B8533DB8()
{
  v1 = *(v0 + 48);
  v2 = sub_1B852F0B4(*(v0 + 16), *(v0 + 24), *(v0 + 104));
  v4 = v3;
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = sub_1B8565A78();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1B852550C(v2, v4);
  sub_1B8565A68();
  sub_1B8536618(&qword_1EBA8A840, 255, type metadata accessor for WBSShareablePasskey);
  sub_1B8565A58();

  sub_1B851D53C(v2, v4);
  v10 = *(v0 + 40);
  sub_1B8538128(*(v0 + 80), *(v0 + 88), type metadata accessor for WBSShareablePasskey);
  if (v10)
  {
    v28 = *(v0 + 32);
    v11 = *(v0 + 40);
  }

  else
  {
    v28 = sub_1B8565DA8();
    v11 = v12;
  }

  v25 = *(v0 + 88);
  v26 = *(v0 + 96);
  v14 = *(v0 + 56);
  v13 = *(v0 + 64);
  v27 = *(v0 + 48);
  v24 = *(v0 + 104);
  v15 = sub_1B8565A38();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 1, 1, v15);
  v16(v14, 1, 1, v15);

  WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(v25, v28, v11, v24, 0, 0xF000000000000000, v13, v14, v26);

  sub_1B851D53C(v2, v4);
  sub_1B8456588(v14, &qword_1EBA8A7A0, &unk_1B85764D0);
  sub_1B8456588(v13, &qword_1EBA8A7A0, &unk_1B85764D0);
  sub_1B85260A0(v25, type metadata accessor for WBSShareablePasskey);
  sub_1B85260A0(*(v0 + 96), type metadata accessor for WBSKeychainPasskey);
  v18 = *(v0 + 88);
  v17 = *(v0 + 96);
  v19 = *(v0 + 80);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);

  v22 = *(v0 + 8);

  return v22(1);
}

uint64_t sub_1B853426C(void *a1, void *a2, char a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = a2;
  v10 = a1;

  v11 = sub_1B85659D8();
  v13 = v12;

  if (a2)
  {
    a2 = sub_1B8565DA8();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v5[4] = v15;
  v5[5] = v13;
  v5[6] = v11;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_1B8534398;

  return WBSPasskeyStore.test_copyPasskey(credentialID:to:inRecentlyDeleted:)(v11, v13, a2, v15, a3 & 1);
}

uint64_t sub_1B8534398(char a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v11 = *v1;

  sub_1B851D53C(v4, v5);

  v7[2](v7, a1 & 1);
  _Block_release(v7);
  v9 = *(v11 + 8);

  return v9();
}

NSObject *WBSPasskeyStore.test_publicKey(for:)(uint64_t a1)
{
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = sub_1B85317C4();
  if (!v2)
  {
    v6 = v5;
    v1 = sub_1B8536BE4(v5);
  }

  return v1;
}

NSObject *WBSPasskeyStore.test_sign(data:usingPasskeyWithCredentialID:)(uint64_t a1, NSObject *a2)
{
  v5 = sub_1B85317C4();
  if (!v2)
  {
    v6 = v5;
    a2 = sub_1B8537034(a1, a2, v5);
  }

  return a2;
}

uint64_t sub_1B8534608@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B8565888();
    if (v10)
    {
      v11 = sub_1B85658A8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B8565898();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B8565888();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B85658A8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B8565898();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B8534838(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1B8535FF8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B851D53C(a3, a4);
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
  sub_1B8534608(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B851D53C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

uint64_t sub_1B85349C8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B851F914;

  return v7();
}

uint64_t sub_1B8534AB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1B851F31C;

  return v8();
}

uint64_t sub_1B8534B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A638, &qword_1B8574410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  sub_1B8526860(a3, v25 - v11, &qword_1EBA8A638, &qword_1B8574410);
  v13 = sub_1B8566108();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B8456588(v12, &qword_1EBA8A638, &qword_1B8574410);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B85660F8();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1B85660E8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1B8565E28() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_1B8456588(a3, &qword_1EBA8A638, &qword_1B8574410);

    return v23;
  }

LABEL_8:
  sub_1B8456588(a3, &qword_1EBA8A638, &qword_1B8574410);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B8534E94(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B8534F8C;

  return v7(a1);
}

uint64_t sub_1B8534F8C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_1B8535084(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A950, &qword_1B8574B68);
  v10 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B853525C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A928, &qword_1B8574B48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B8535388(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1B8535484(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A920, &qword_1B8574B40);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t sub_1B8535584(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B8566278();

  return sub_1B85357D0(a1, v5);
}

unint64_t sub_1B85355C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1B8566388();

  return sub_1B85358A4(a1, v5);
}

unint64_t sub_1B853560C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B85667D8();
  sub_1B8565D38();
  v6 = sub_1B8566808();

  return sub_1B853596C(a1, a2, v6);
}

unint64_t sub_1B8535684(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B85667D8();
  type metadata accessor for CFString(0);
  sub_1B8536618(&qword_1EBA8A8B8, 255, type metadata accessor for CFString);
  sub_1B8565AF8();
  v4 = sub_1B8566808();

  return sub_1B8535A24(a1, v4);
}

unint64_t sub_1B853573C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B8565DA8();
  sub_1B85667D8();
  sub_1B8565D38();
  v4 = sub_1B8566808();

  return sub_1B8535B34(a1, v4);
}

unint64_t sub_1B85357D0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8566288();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B85358A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B852D3B8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CBF5F0](v9, a1);
      sub_1B851F7F8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B853596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B8566758())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8535A24(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B8536618(&qword_1EBA8A8B8, 255, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8565AE8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B8535B34(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B8565DA8();
      v9 = v8;
      if (v7 == sub_1B8565DA8() && v9 == v10)
      {
        break;
      }

      v12 = sub_1B8566758();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

size_t sub_1B8535C38(size_t a1, int64_t a2, char a3)
{
  result = sub_1B85589B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1B8535C58()
{
  result = qword_1EBA8A8F0;
  if (!qword_1EBA8A8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A8F0);
  }

  return result;
}

void *sub_1B8535CAC(void *a1, int64_t a2, char a3)
{
  result = sub_1B85589DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8535CCC(char *a1, int64_t a2, char a3)
{
  result = sub_1B8558B10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B8535CEC(char *a1, int64_t a2, char a3)
{
  result = sub_1B8558C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8535D0C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8558D28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B8535D2C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1B8565C98();
      sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698]);
      result = sub_1B8565BB8();
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

  result = sub_1B8535F14(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B8535F14(uint64_t a1, uint64_t a2)
{
  result = sub_1B8565888();
  if (!result || (result = sub_1B85658A8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1B8565898();
      sub_1B8565C98();
      sub_1B8536618(&qword_1EBA8A908, 255, MEMORY[0x1E6966698]);
      return sub_1B8565BB8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8535FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B8565888();
  v11 = result;
  if (result)
  {
    result = sub_1B85658A8();
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

  sub_1B8565898();
  sub_1B8534608(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B85360B0(uint64_t *a1)
{
  v1 = a1[1];
  if (v1 >> 60 != 15)
  {
    v8 = *a1;
    v9 = a1[2];
    sub_1B852CF28(*a1, v1);
    sub_1B8451F34(0, &qword_1ED9856B8, 0x1E698F6F8);
    sub_1B8536660(&qword_1ED9856C0, &qword_1ED9856B8, 0x1E698F6F8);

    v10 = sub_1B8565CB8();
    v11 = [objc_opt_self() cborWithDictionary_];

    v12 = sub_1B8565958();
    v14 = v13;

    if (v14 >> 60 == 15)
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v15 = sub_1B8565B78();
      __swift_project_value_buffer(v15, qword_1ED985C68);
      v16 = sub_1B8565B48();
      v17 = sub_1B8566218();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B8447000, v16, v17, "Could not encode passkey metadata", v18, 2u);
        MEMORY[0x1B8CC1710](v18, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v19 = 2;
      *(v19 + 4) = 1;
      swift_willThrow();
      v20 = v8;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B85740E0;
      v22 = *MEMORY[0x1E697B3C8];
      type metadata accessor for CFString(0);
      v24 = v23;
      *(v21 + 32) = v22;
      *(v21 + 88) = MEMORY[0x1E6969080];
      *(v21 + 56) = v23;
      *(v21 + 64) = v8;
      *(v21 + 72) = v1;
      sub_1B8451F34(0, &qword_1EBA8A900, 0x1E695DF20);
      sub_1B852CF28(v8, v1);
      v25 = v22;
      v26 = sub_1B85661D8();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1B85740E0;
      v28 = *MEMORY[0x1E697AC48];
      *(v27 + 32) = *MEMORY[0x1E697AC48];
      *(v27 + 88) = MEMORY[0x1E6969080];
      *(v27 + 56) = v24;
      *(v27 + 64) = v12;
      *(v27 + 72) = v14;
      v29 = v28;
      sub_1B852CF28(v12, v14);
      v30 = sub_1B85661D8();
      v31 = SecItemUpdate(v26, v30);
      if (!v31)
      {

        sub_1B852608C(v12, v14);
        return sub_1B852608C(v8, v1);
      }

      v32 = v31;
      v40 = v8;
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v33 = sub_1B8565B78();
      __swift_project_value_buffer(v33, qword_1ED985C68);
      v34 = sub_1B8565B48();
      v35 = sub_1B8566218();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = v26;
        v37 = swift_slowAlloc();
        *v37 = 67240192;
        *(v37 + 4) = v32;
        _os_log_impl(&dword_1B8447000, v34, v35, "Could not update passkey: %{public}d", v37, 8u);
        v38 = v37;
        v26 = v36;
        MEMORY[0x1B8CC1710](v38, -1, -1);
      }

      sub_1B8535C58();
      swift_allocError();
      *v39 = v32;
      *(v39 + 4) = 0;
      swift_willThrow();

      sub_1B852608C(v12, v14);
      v20 = v40;
    }

    return sub_1B852608C(v20, v1);
  }

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);
  v3 = sub_1B8565B48();
  v4 = sub_1B8566218();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v3, v4, "No persistent ref specified", v5, 2u);
    MEMORY[0x1B8CC1710](v5, -1, -1);
  }

  sub_1B8535C58();
  swift_allocError();
  *v6 = 0;
  *(v6 + 4) = 1;
  return swift_willThrow();
}

uint64_t sub_1B8536618(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8536660(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B8451F34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B85366A4(void *a1)
{
  v1 = [a1 credentialID];
  sub_1B8565DA8();

  v49 = sub_1B8565978();
  v3 = v2;

  v46 = v3;
  if (v3 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = [objc_opt_self() isCredentialExchangeEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B85748F0;
  v7 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  v9 = v8;
  *(v6 + 32) = v7;
  v10 = *MEMORY[0x1E697B020];
  *(v6 + 56) = v8;
  *(v6 + 64) = v10;
  v11 = *MEMORY[0x1E697B390];
  *(v6 + 120) = v8;
  *(v6 + 88) = v8;
  *(v6 + 96) = v11;
  v12 = MEMORY[0x1E69E6370];
  *(v6 + 128) = 1;
  v13 = *MEMORY[0x1E697AEB0];
  *(v6 + 152) = v12;
  *(v6 + 160) = v13;
  v14 = *MEMORY[0x1E697AEB8];
  *(v6 + 216) = v8;
  *(v6 + 184) = v8;
  *(v6 + 192) = v14;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v15 = v7;
  v16 = v10;
  v17 = v11;
  v18 = v13;
  v19 = v14;
  result = sub_1B85661D8();
  v20 = result;
  if (v5)
  {
    v21 = *MEMORY[0x1E697AC38];
    v22 = v46;
    if (*MEMORY[0x1E697AC38])
    {
      goto LABEL_6;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v21 = *MEMORY[0x1E697AC40];
  v22 = v46;
LABEL_6:
  v23 = sub_1B85659A8();
  [v20 __swift_setObject_forKeyedSubscript_];

  v24 = [a1 groupID];
  v25 = sub_1B8565DA8();
  v27 = v26;

  if (v25 == sub_1B8565DA8() && v27 == v28)
  {
  }

  else
  {
    v29 = sub_1B8566758();

    if ((v29 & 1) == 0)
    {
      v30 = *MEMORY[0x1E697AE90];
      if (!*MEMORY[0x1E697AE90])
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v48[3] = v9;
      v48[0] = v30;
      v31 = v30;
      v32 = [a1 groupID];
      if (!v32)
      {
        sub_1B8565DA8();
        v32 = sub_1B8565D68();
      }

      __swift_project_boxed_opaque_existential_0(v48, v9);
      [v20 __swift_setObject_forKeyedSubscript_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v48);
    }
  }

  v33 = v20;
  result = SecItemDelete(v33);
  v34 = result;
  if (result == -25300)
  {
    v35 = v5;
  }

  else
  {
    v35 = 0;
  }

  if (v35 == 1)
  {
    if (*MEMORY[0x1E697AC38])
    {
      [(__CFDictionary *)v33 __swift_setObject:0 forKeyedSubscript:?];
      v36 = *MEMORY[0x1E697AC40];
      v37 = sub_1B85659A8();
      [(__CFDictionary *)v33 __swift_setObject:v37 forKeyedSubscript:v36];

      v34 = SecItemDelete(v33);
      goto LABEL_20;
    }

    goto LABEL_29;
  }

LABEL_20:

  if (v34)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v38 = sub_1B8565B78();
    __swift_project_value_buffer(v38, qword_1ED985C68);
    v39 = a1;
    v40 = sub_1B8565B48();
    v41 = sub_1B8566218();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 1024;
      *(v42 + 14) = v34;
      v44 = v39;
      _os_log_impl(&dword_1B8447000, v40, v41, "Failed to delete passkey for %@: %d", v42, 0x12u);
      sub_1B8456588(v43, &qword_1EBA8A8A0, &qword_1B85747C0);
      MEMORY[0x1B8CC1710](v43, -1, -1);
      MEMORY[0x1B8CC1710](v42, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v45 = v34;
    *(v45 + 4) = 0;
    swift_willThrow();

    return sub_1B852608C(v49, v46);
  }

  else
  {

    return sub_1B852608C(v49, v22);
  }
}

NSObject *sub_1B8536BE4(__SecKey *a1)
{
  error[1] = *MEMORY[0x1E69E9840];
  v2 = SecKeyCopyPublicKey(a1);
  if (v2)
  {
    v3 = v2;
    error[0] = 0;
    v4 = SecKeyCopyExternalRepresentation(v2, error);
    if (v4)
    {
      v5 = v4;
      v1 = sub_1B85659D8();
    }

    else
    {
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v10 = sub_1B8565B78();
      __swift_project_value_buffer(v10, qword_1ED985C68);
      v1 = sub_1B8565B48();
      v11 = sub_1B8566218();
      if (os_log_type_enabled(v1, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136446210;
        swift_beginAccess();
        if (error[0])
        {
          v32 = 0;
          v33 = 0xE000000000000000;
          v30 = error[0];
          type metadata accessor for CFError(0);
          sub_1B8536618(&qword_1EBA8A910, 255, type metadata accessor for CFError);
          v14 = v30;
          v15 = sub_1B8566738();
          v29 = v14;
          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = swift_allocError();
            *v19 = v14;
          }

          v20 = sub_1B85658C8();

          v21 = [v20 safari_privacyPreservingDescription];
          v22 = sub_1B8565DA8();
          v24 = v23;

          MEMORY[0x1B8CBF120](v22, v24);

          v18 = v32;
          v17 = v33;
        }

        else
        {
          v17 = 0xED0000726F727265;
          v18 = 0x206E776F6E6B6E55;
        }

        v25 = sub_1B8525560(v18, v17, &v31);

        *(v12 + 4) = v25;
        _os_log_impl(&dword_1B8447000, v1, v11, "Could not read public key data: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1B8CC1710](v13, -1, -1);
        MEMORY[0x1B8CC1710](v12, -1, -1);
      }

      swift_beginAccess();
      if (error[0])
      {
      }

      sub_1B8535C58();
      swift_allocError();
      *v26 = 1;
      *(v26 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = sub_1B8565B78();
    __swift_project_value_buffer(v6, qword_1ED985C68);
    v7 = sub_1B8565B48();
    v8 = sub_1B8566218();
    if (os_log_type_enabled(v7, v8))
    {
      v1 = swift_slowAlloc();
      LOWORD(v1->isa) = 0;
      _os_log_impl(&dword_1B8447000, v7, v8, "Could not read passkey public key", v1, 2u);
      MEMORY[0x1B8CC1710](v1, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v9 = 1;
    *(v9 + 4) = 1;
    swift_willThrow();
  }

  v27 = *MEMORY[0x1E69E9840];
  return v1;
}

NSObject *sub_1B8537034(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v4 = *MEMORY[0x1E697B128];
  v5 = sub_1B85659A8();
  Signature = SecKeyCreateSignature(a3, v4, v5, error);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_1B85659D8();
  }

  else
  {
    if (error[0])
    {
      error[0];
      type metadata accessor for CFError(0);
      sub_1B8451F34(0, &qword_1EBA8A938, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        if (qword_1ED985688 != -1)
        {
          swift_once();
        }

        v9 = sub_1B8565B78();
        __swift_project_value_buffer(v9, qword_1ED985C68);
        v8 = v33;
        v10 = sub_1B8565B48();
        v11 = sub_1B8566218();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 136315138;
          v33 = v13;
          sub_1B8536660(&qword_1EBA8A940, &qword_1EBA8A938, 0x1E696ABC0);
          v14 = v8;
          v15 = sub_1B8566738();
          if (v15)
          {
            v16 = v15;
          }

          else
          {
            v16 = swift_allocError();
            *v21 = v14;
          }

          v22 = sub_1B85658C8();

          v23 = [v22 safari_privacyPreservingDescription];
          v24 = sub_1B8565DA8();
          v26 = v25;

          MEMORY[0x1B8CBF120](v24, v26);

          v27 = sub_1B8525560(0, 0xE000000000000000, &v33);

          *(v12 + 4) = v27;
          _os_log_impl(&dword_1B8447000, v10, v11, "Unable to sign data with passkey: %s", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v13);
          MEMORY[0x1B8CC1710](v13, -1, -1);
          MEMORY[0x1B8CC1710](v12, -1, -1);
        }

        if (error[0])
        {
        }

        v28 = [v8 code];
        if (v28 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else
        {
          v29 = v28;
          if (v28 <= 0x7FFFFFFF)
          {
            sub_1B8535C58();
            swift_allocError();
            *v30 = v29;
            *(v30 + 4) = 0;
            swift_willThrow();

            goto LABEL_22;
          }
        }

        __break(1u);
      }
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v17 = sub_1B8565B78();
    __swift_project_value_buffer(v17, qword_1ED985C68);
    v8 = sub_1B8565B48();
    v18 = sub_1B8566218();
    if (os_log_type_enabled(v8, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B8447000, v8, v18, "Unable to sign data with passkey: Unknown error", v19, 2u);
      MEMORY[0x1B8CC1710](v19, -1, -1);
    }

    sub_1B8535C58();
    swift_allocError();
    *v20 = 1;
    *(v20 + 4) = 1;
    swift_willThrow();
  }

LABEL_22:
  v31 = *MEMORY[0x1E69E9840];
  return v8;
}