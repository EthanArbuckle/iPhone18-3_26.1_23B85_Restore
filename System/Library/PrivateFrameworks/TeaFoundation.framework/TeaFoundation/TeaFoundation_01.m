uint64_t Atomic.wrappedValue.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[2];
  UnfairLock.lock()();
  v6 = *(*v2 + 96);
  swift_beginAccess();
  v7 = *(v4 + 80);
  v8 = *(v7 - 8);
  (*(v8 + 24))(v2 + v6, a1, v7);
  swift_endAccess();
  sub_1BEFF99D8(v2);
  return (*(v8 + 8))(a1, v7);
}

_OWORD *sub_1BEFF9A40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t OUTLINED_FUNCTION_84()
{
  v2 = *v0;

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t ProxyResolver.resolve<A>(_:name:)()
{
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_0_64(v9, &v14);

  return v14;
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 48))();
}

{
  return (*(a6 + 40))();
}

uint64_t sub_1BEFF9AF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t Promise.init(resolver:)()
{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  type metadata accessor for Seal();
  OUTLINED_FUNCTION_110();
  v4 = OUTLINED_FUNCTION_87();
  v5 = OUTLINED_FUNCTION_120(v4);
  *(v0 + 16) = sub_1BF004E88(v5);
  OUTLINED_FUNCTION_82_0();
  swift_retain_n();
  v1(sub_1BF00C3E8, v0, sub_1BF02DA6C, v0);
  OUTLINED_FUNCTION_82_0();

  return v0;
}

{
  OUTLINED_FUNCTION_89();
  OUTLINED_FUNCTION_29();
  v3 = *(v2 + 80);
  type metadata accessor for Seal();
  OUTLINED_FUNCTION_110();
  v4 = OUTLINED_FUNCTION_87();
  v5 = OUTLINED_FUNCTION_120(v4);
  *(v0 + 16) = sub_1BF004E88(v5);
  OUTLINED_FUNCTION_81_0();
  swift_retain_n();
  v1(sub_1BF058AB8, v0, sub_1BF097A00, v0, sub_1BF0957C4, v0);
  OUTLINED_FUNCTION_81_0();

  return v0;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v5 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + 2) = UnfairLock.init(options:)(&v5);
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(*v1 + 96)], a1);
  return v1;
}

void Atomic.wrappedValue.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[2];
  UnfairLock.lock()();
  v6 = *(*v2 + 96);
  swift_beginAccess();
  (*(*(*(v4 + 80) - 8) + 16))(a1, v2 + v6);
  sub_1BEFF99D8(v2);
}

uint64_t sub_1BEFF9DB8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  sub_1BEFF9E8C(0, 0, sub_1BF006198, v4);
  return swift_endAccess();
}

uint64_t sub_1BEFF9E54()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1BEFF9E8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(*v4 + 16);
  if (v6 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1BEFF5DB0(result, 1, sub_1BEFFA038);

  return sub_1BEFFA074(v7, a2, 1, a3, a4);
}

void sub_1BEFF9F4C()
{
  OUTLINED_FUNCTION_41_2();
  if (v7)
  {
    OUTLINED_FUNCTION_2();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_8_0();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v8 = v6;
  }

  OUTLINED_FUNCTION_16_4(v8);
  if (v3)
  {
    v11 = OUTLINED_FUNCTION_65_1();
    sub_1BEFEEEE0(v11, v12);
    v13 = OUTLINED_FUNCTION_91();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_15_4();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_139();
  if (v1)
  {
    if (v13 != v0 || v5 + 16 * v2 <= v4)
    {
      v16 = OUTLINED_FUNCTION_60_0();
      memmove(v16, v17, v18);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BEFF0B78();
    OUTLINED_FUNCTION_60_0();
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_1BEFFA074(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_1BEFF0B78();
  result = swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BEFFA1B4(v11 + 32 + 16 * a2, v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

char *sub_1BEFFA194(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

uint64_t sub_1BEFFA1B8(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1BEFFA25C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1BEFFA290@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(*a3 + 96);
  v9 = sub_1BF17AE6C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  a2(a1);
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) != 1)
  {
    return (*(*(v8 - 8) + 32))(a4, v13, v8);
  }

  v14 = *(a3 + 56);
  (*(a3 + 48))(a1);
  result = __swift_getEnumTagSinglePayload(v13, 1, v8);
  if (result != 1)
  {
    return (*(v10 + 8))(v13, v9);
  }

  return result;
}

uint64_t sub_1BEFFA414()
{
  v1 = *(v0 + 24);

  return v0;
}

void *Cache.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2[10];
  v4 = v2[11];
  type metadata accessor for CacheEntry();
  v5 = v2[12];
  v1[2] = sub_1BF179CEC();
  v7 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v1[3] = UnfairLock.init(options:)(&v7);
  return v1;
}

uint64_t sub_1BEFFA50C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1BF1794AC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BEFFA624(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for RegistrationContainer();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  a3(v6);
}

uint64_t ProxyResolver.resolve<A>(_:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = toKey<A>(type:name:)(a1, a2, a3, a4, &v19);
  v7 = v20;
  OUTLINED_FUNCTION_3_36(v6, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v17, v18, v19);
  v17 = v7;
  OUTLINED_FUNCTION_0_64(v16, a5);
}

uint64_t sub_1BEFFA724(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_12(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_32_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_32_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1BEFFA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BEFFA914()
{
  result = sub_1BF17923C();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BF1797FC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BEFFAA38()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BEFFAA74()
{
  sub_1BEFFA414();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BEFFAAC4()
{
  result = qword_1ED8EB688[0];
  if (!qword_1ED8EB688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8EB688);
  }

  return result;
}

unint64_t sub_1BEFFAB1C()
{
  result = qword_1ED8EB680;
  if (!qword_1ED8EB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8EB680);
  }

  return result;
}

uint64_t dispatch thunk of EventManager.trigger(on:behavior:block:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 176))();
}

uint64_t sub_1BEFFAB94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v10 = sub_1BF17AE6C();
  v11 = OUTLINED_FUNCTION_1(v10);
  v35 = v12;
  v36 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = sub_1BF179C5C();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = (&v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *a2;
  sub_1BEFF6E88();
  *v25 = sub_1BF17AD5C();
  (*(v21 + 104))(v25, *MEMORY[0x1E69E8020], v18);
  LOBYTE(a2) = sub_1BF179C8C();
  result = (*(v21 + 8))(v25, v18);
  if (a2)
  {
    v28 = *(v8 + 88);
    v40[0] = v9;
    v40[1] = v9;
    v40[2] = v28;
    v40[3] = v28;
    type metadata accessor for EventManager.EventTrigger();
    v40[0] = v26;
    v29 = sub_1BEFFAE84(v40, a1, v37, v38);
    if ((v29[2] & 2) != 0)
    {
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v9);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      v30 = sub_1BEFFAEDC(v29, v17);
      (*(v35 + 8))(v17, v36);
      if (v30)
      {
        v32 = v29[4];
        v31 = v29[5];

        v32(v33);

        if (v29[2])
        {
        }
      }
    }

    else
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v39 = v29;
    swift_beginAccess();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
  }

  __break(1u);
  return result;
}

void *sub_1BEFFAE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = *a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1BEFFAEDC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v26 = *(v5 - 8);
  v14 = *(v26 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  sub_1BEFFB114();
  v20 = *(v4 + 88);
  if ((v19 & 4) != 0)
  {
    OUTLINED_FUNCTION_3_23();
    v22 = sub_1BF17A8EC();

    if ((v22 & 1) == 0)
    {
LABEL_7:
      v23 = 1;
      return v23 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_23();
    v21 = sub_1BF17A99C();

    if (v21)
    {
      (*(v8 + 16))(v13, v27, v6);
      if (__swift_getEnumTagSinglePayload(v13, 1, v5) != 1)
      {
        v24 = v26;
        (*(v26 + 32))(v17, v13, v5);
        OUTLINED_FUNCTION_3_23();
        v23 = sub_1BF17A98C();
        (*(v24 + 8))(v17, v5);
        return v23 & 1;
      }

      (*(v8 + 8))(v13, v6);
      goto LABEL_7;
    }
  }

  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1BEFFB114()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void *EventManager.init()()
{
  v4.val[0] = *(*v0 + 80);
  v4.val[1] = v4.val[0];
  v1 = &v3;
  vst2q_f64(v1, v4);
  type metadata accessor for EventManager.EventTrigger();
  v0[2] = sub_1BF179CFC();
  v0[3] = sub_1BF179D1C();
  return v0;
}

char *sub_1BEFFB240(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

uint64_t sub_1BEFFB278(uint64_t a1)
{
  v1 = *(a1 + 80);
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

char *AsyncObservable.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v8 = 1;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v1 + 2) = UnfairLock.init(options:)(&v8);
  v5 = *(v4 + 80);
  _s13TeaFoundation8ObserverCMa_0();
  *(v2 + 3) = sub_1BF179CFC();
  OUTLINED_FUNCTION_4_0();
  (*(*(v5 - 8) + 32))(&v2[*(v6 + 104)], a1, v5);
  return v2;
}

void sub_1BEFFB5CC(uint64_t a1, os_unfair_lock_t lock, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  os_unfair_lock_lock(lock);
  a3(a1);
  os_unfair_lock_unlock(lock);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1BEFFB6A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1BEFFB6F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t SyncObservable.onNext(eager:block:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = *(*v4 + 80);
  OUTLINED_FUNCTION_2_3();
  v19 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_3();
  sub_1BF17A75C();
  OUTLINED_FUNCTION_0_30();
  sub_1BF17B15C();
  v14 = type metadata accessor for Observer();

  v16 = a2;
  v17 = sub_1BEFFB654(v15, a2, a3);
  swift_beginAccess();
  sub_1BF17A65C();

  sub_1BF17A5DC();
  result = swift_endAccess();
  if (a1)
  {
    SyncObservable.uncheckedValue.getter();
    v16(v5);
    result = (*(v19 + 8))(v5, v9);
  }

  a4[3] = v14;
  a4[4] = &off_1F3DBCCA8;
  *a4 = v17;
  return result;
}

uint64_t sub_1BEFFB93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

void *StateMachine.init(state:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_37();
  v5 = *(v4 + 80);
  OUTLINED_FUNCTION_7_37();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v14 = *(v13 + 88);
  v15 = *(v13 + 96);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21[0] = v5;
  v21[1] = v14;
  v21[2] = AssociatedConformanceWitness;
  v21[3] = v15;
  type metadata accessor for StateMachineTransition();
  sub_1BF17A65C();
  v17 = *(AssociatedConformanceWitness + 8);
  v2[3] = sub_1BF179CEC();
  v18 = *(v7 + 16);
  OUTLINED_FUNCTION_1_26();
  v18();
  OUTLINED_FUNCTION_7_2();
  v2[2] = sub_1BEFFCE64(v12, v5);
  swift_endAccess();
  OUTLINED_FUNCTION_1_26();
  v18();
  OUTLINED_FUNCTION_7_2();
  v2[5] = sub_1BEFFCE64(v12, v5);
  swift_endAccess();
  sub_1BEFF9AF8(0, &qword_1ED8EE9B0, 0x1E69E9BF8);
  v19 = sub_1BF17AE3C();
  (*(v7 + 8))(a1, v5);
  v2[4] = v19;
  return v2;
}

uint64_t sub_1BEFFBBF4(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t ObservableProperty.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ObservableProperty.init(wrappedValue:)(a1);
  return v5;
}

uint64_t sub_1BEFFBCD8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v13 = *(a1 + OBJC_IVAR____TtC13TeaFoundation9Container_containerStore);
  sub_1BEFE6ADC();
  v14 = sub_1BEFEEDF0();

  if (!v14)
  {
    sub_1BF17B49C();
    __break(1u);
    JUMPOUT(0x1BEFFC974);
  }

  v15 = sub_1BEFF3AB8(v14, a4);
  v82 = a4;
  v16 = a5;
  switch(*(a2 + 40))
  {
    case 1:
      v90 = a5;
      v91 = a6;
      v92 = a8;
      v53 = sub_1BEFF3BF4(&v90, 0);
      if (v53)
      {
        v29 = (*(*v53 + 80))(v53);

        if (v29)
        {
          goto LABEL_27;
        }
      }

      v80 = a3;
      v54 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v84 = a1;
      LOBYTE(v54) = *(a1 + v54);

      v18 = sub_1BEFF8D98(v54, v15);

      v55 = qword_1ED8F52F8;
      swift_beginAccess();
      v56 = *(a2 + v55);
      v57 = *(v56 + 16);
      if (v57)
      {
        v74 = v15;
        v78 = a7;
        v58 = *(v84 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v59 = v56 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v60 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v59, &v90);
          v61 = v93;
          v62 = v94;
          __swift_project_boxed_opaque_existential_1(&v90, v93);
          *&v88 = v18;
          (*(v62 + 8))(v58, &v88, v60 + 8, v61, v62);
          __swift_destroy_boxed_opaque_existential_1(&v90);
          v59 += 40;
          --v57;
        }

        while (v57);

        a7 = v78;
        v15 = v74;
      }

      v39 = a5;
      v90 = a5;
      v91 = a6;
      v40 = a8;
      v92 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      *(swift_allocObject() + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v90, 0);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v88, sub_1BEFECBDC);
      if (!v89)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    case 2:
      v90 = a5;
      v91 = a6;
      v92 = a8;
      v28 = sub_1BEFF3BF4(&v90, 1);
      if (v28)
      {
        v29 = (*(*v28 + 80))(v28);

        if (v29)
        {
          goto LABEL_27;
        }
      }

      v80 = a3;
      v30 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v84 = a1;
      LOBYTE(v30) = *(a1 + v30);

      v18 = sub_1BEFF8D98(v30, v15);

      v31 = qword_1ED8F52F8;
      swift_beginAccess();
      v32 = *(a2 + v31);
      v33 = *(v32 + 16);
      if (v33)
      {
        v72 = v15;
        v76 = a7;
        v34 = *(v84 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v35 = v32 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v36 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v35, &v90);
          v37 = v93;
          v38 = v94;
          __swift_project_boxed_opaque_existential_1(&v90, v93);
          *&v88 = v18;
          (*(v38 + 8))(v34, &v88, v36 + 8, v37, v38);
          __swift_destroy_boxed_opaque_existential_1(&v90);
          v35 += 40;
          --v33;
        }

        while (v33);

        a7 = v76;
        v15 = v72;
      }

      v39 = a5;
      v90 = a5;
      v91 = a6;
      v40 = a8;
      v92 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for PoolObject);
      *(swift_allocObject() + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v90, 1);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v88, sub_1BEFECBDC);
      if (v89)
      {
LABEL_33:
        sub_1BEFE87B0(&v88, &v90);
        sub_1BEFE6A78(&v90, &v88);
        v27 = swift_allocObject();
        sub_1BEFE87B0(&v88, (v27 + 2));
        v27[7] = v18;
        v27[8] = v15;
        v27[9] = v84;
        v27[10] = v39;
        v27[11] = a6;
        v27[12] = v40;
        v27[13] = v80;
        v27[14] = v82;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        goto LABEL_34;
      }

LABEL_35:
      sub_1BEFF4B24(&v88, sub_1BEFECBDC);
      v64 = v18;
      v65 = v84;
      v66 = v39;
      v67 = a6;
      v68 = v40;
      v69 = v80;
      goto LABEL_37;
    case 3:
      v90 = a5;
      v91 = a6;
      v92 = a8;
      v41 = sub_1BEFF3BF4(&v90, 2);
      if (v41)
      {
        v29 = (*(*v41 + 80))(v41);

        if (v29)
        {
LABEL_27:

          v18 = *(v29 + 16);
          swift_unknownObjectRetain();
          goto LABEL_38;
        }
      }

      v81 = a3;
      v42 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v85 = a1;
      LOBYTE(v42) = *(a1 + v42);

      v18 = sub_1BEFF8D98(v42, v15);

      v43 = qword_1ED8F52F8;
      swift_beginAccess();
      v44 = *(a2 + v43);
      v45 = *(v44 + 16);
      v46 = MEMORY[0x1E69E7C98];
      v77 = a7;
      if (v45)
      {
        v73 = v15;
        v47 = *(v85 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v48 = v44 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        do
        {
          sub_1BEFE6A78(v48, &v90);
          v49 = v93;
          v50 = v94;
          __swift_project_boxed_opaque_existential_1(&v90, v93);
          *&v88 = v18;
          (*(v50 + 8))(v47, &v88, v46 + 8, v49, v50);
          __swift_destroy_boxed_opaque_existential_1(&v90);
          v48 += 40;
          --v45;
        }

        while (v45);

        v15 = v73;
      }

      v90 = a5;
      v91 = a6;
      v92 = a8;
      sub_1BEFF9030(0, &qword_1ED8EDCF0, v46 + 8, type metadata accessor for PoolObject);
      *(swift_allocObject() + 16) = v18;
      swift_unknownObjectRetain();
      sub_1BEFF1B04(&v90, 2);

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v88, sub_1BEFECBDC);
      if (v89)
      {
        sub_1BEFE87B0(&v88, &v90);
        sub_1BEFE6A78(&v90, &v88);
        v51 = swift_allocObject();
        sub_1BEFE87B0(&v88, (v51 + 2));
        v51[7] = v18;
        v51[8] = v15;
        v51[9] = v85;
        v51[10] = a5;
        v51[11] = a6;
        v51[12] = a8;
        v51[13] = v81;
        v51[14] = v82;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

        sub_1BEFF9DB8(sub_1BF0242A0, v51);

        result = __swift_destroy_boxed_opaque_existential_1(&v90);
      }

      else
      {
        sub_1BEFF4B24(&v88, sub_1BEFECBDC);
        sub_1BEFF9578(v18, v85, a5, a6, a8, v81, v82, v70);
      }

      a7 = v77;
      break;
    default:
      v17 = OBJC_IVAR____TtC13TeaFoundation9Container_environment;
      swift_beginAccess();
      v83 = a1;
      LOBYTE(v17) = *(a1 + v17);

      v18 = sub_1BEFF8D98(v17, v15);

      v19 = qword_1ED8F52F8;
      swift_beginAccess();
      v20 = *(a2 + v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v71 = v15;
        v75 = a7;
        v79 = a3;
        v22 = *(v83 + OBJC_IVAR____TtC13TeaFoundation9Container_callbackStore);
        v23 = v20 + 32;
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        v24 = MEMORY[0x1E69E7C98];
        do
        {
          sub_1BEFE6A78(v23, &v90);
          v26 = v93;
          v25 = v94;
          __swift_project_boxed_opaque_existential_1(&v90, v93);
          *&v88 = v18;
          (*(v25 + 8))(v22, &v88, v24 + 8, v26, v25);
          __swift_destroy_boxed_opaque_existential_1(&v90);
          v23 += 40;
          --v21;
        }

        while (v21);

        a7 = v75;
        v15 = v71;
        a3 = v79;
        v16 = a5;
      }

      swift_beginAccess();
      sub_1BEFF1CA4(a2 + 72, &v88, sub_1BEFECBDC);
      if (v89)
      {
        sub_1BEFE87B0(&v88, &v90);
        sub_1BEFE6A78(&v90, &v88);
        v27 = swift_allocObject();
        sub_1BEFE87B0(&v88, (v27 + 2));
        v27[7] = v18;
        v27[8] = v15;
        v27[9] = v83;
        v27[10] = v16;
        v27[11] = a6;
        v27[12] = a8;
        v27[13] = a3;
        v27[14] = v82;

        swift_unknownObjectRetain();

        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_34:
        sub_1BEFF9DB8(sub_1BF0242A4, v27);

        result = __swift_destroy_boxed_opaque_existential_1(&v90);
      }

      else
      {
        sub_1BEFF4B24(&v88, sub_1BEFECBDC);
        v64 = v18;
        v65 = v83;
        v66 = v16;
        v67 = a6;
        v68 = a8;
        v69 = a3;
LABEL_37:
        sub_1BEFF9578(v64, v65, v66, v67, v68, v69, v82, v63);

LABEL_38:
      }

      break;
  }

  *a7 = v18;
  return result;
}

uint64_t sub_1BEFFC994(void *a1, void (*a2)(void *__return_ptr))
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 72))(v3, v4);
  a2(v7);
  swift_unknownObjectRelease();
  sub_1BEFE9CD4(0, &qword_1ED8EFBA0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = sub_1BF17AE5C();
  sub_1BEFFD168(v7);
  return v5;
}

uint64_t sub_1BEFFCA60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

double sub_1BEFFCA90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if ((*(a2 + 16))(a2, a1))
  {
    sub_1BF17B01C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BEFFCB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BEFFCB54()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BEFFCB90()
{
  result = sub_1BF17907C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ISO8601Duration()
{
  result = qword_1EBDCABE8;
  if (!qword_1EBDCABE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DiagnosticFileCollectionCoordinator()
{
  result = qword_1EBDCAA60;
  if (!qword_1EBDCAA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFFCCE0()
{
  result = sub_1BF1797FC();
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

uint64_t type metadata accessor for DiagnosticFileCollector()
{
  result = qword_1ED8EDA28;
  if (!qword_1ED8EDA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BEFFCE64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  type metadata accessor for ObservableProperty();
  (*(v5 + 16))(v11, a1, a2);
  v12 = ObservableProperty.__allocating_init(wrappedValue:)(v11);
  (*(v5 + 8))(a1, a2);
  return v12;
}

uint64_t ObservableProperty.init(wrappedValue:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_3_44();
  swift_getFunctionTypeMetadata1();
  *(v1 + 16) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  (*(*(v4 - 8) + 32))(v1 + *(v5 + 96), a1, v4);
  return v1;
}

uint64_t sub_1BEFFD08C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13TeaFoundation15BridgedResolver_resolver);
  sub_1BEFE8DAC();
  v4 = objc_allocWithZone(TFKey);
  v5 = a1;
  v13 = OUTLINED_FUNCTION_1_17(v5, v6, v7, v8, v9, v10, v11, v12, a1);
  v16 = sub_1BEFE82CC(v13, v14, v15);
  v17 = [v16 address];

  v26 = OUTLINED_FUNCTION_1_17(v18, v19, v20, v21, v22, v23, v24, v25, v17);
  sub_1BEFF7D88(v26, v27);
  OUTLINED_FUNCTION_8_21();
  if (v3)
  {
    ObjectType = swift_getObjectType();
  }

  else
  {
    ObjectType = OUTLINED_FUNCTION_2_38();
  }

  return OUTLINED_FUNCTION_1_43(ObjectType);
}

uint64_t sub_1BEFFD168(uint64_t a1)
{
  sub_1BEFFD1C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BEFFD1C4()
{
  if (!qword_1ED8EFBA0)
  {
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EFBA0);
    }
  }
}

uint64_t sub_1BEFFD218()
{
  v1 = *v0;
  v2 = sub_1BF1794FC();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v0 + qword_1ED8F52F0, v2);
  v11 = v0[2];
  v10 = v0[3];
  v12 = swift_allocObject();
  v12[2] = *(v1 + 112);
  v12[3] = v11;
  v12[4] = v10;
  sub_1BEFF3454();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + qword_1ED8F52F0, v9, v2);
  *(v16 + 16) = sub_1BEFFD780;
  *(v16 + 24) = v12;

  return v16;
}

uint64_t sub_1BEFFD380()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1BEFFD3B8(unint64_t a1)
{
  v3 = sub_1BEFE90AC(a1);
  v4 = sub_1BEFE90AC(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1BEFFD464(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1BEFFD508(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1BEFFD468(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1BF17B50C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1BF17B25C();
  *v1 = result;
  return result;
}

uint64_t sub_1BEFFD508(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1BF17B50C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1BEFE90AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1BEFF51F8(0, qword_1ED8EE0E0, MEMORY[0x1E69E7C98] + 8, type metadata accessor for CallbackDefinition);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1BF0CAF64();
        sub_1BF0CAFE4();
        for (i = 0; i != v7; ++i)
        {
          v9 = sub_1BF1579F4(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BEFFD67C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *v10;
  swift_unknownObjectRetain();
  swift_dynamicCast();
  a3(v12, a2);
  return (*(v8 + 8))(v12, a5);
}

uint64_t sub_1BEFFD78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a3;
  v36 = a7;
  v37 = a11;
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  v35 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1BEFF1CA4(a1 + 72, &v38, sub_1BEFECBDC);
  if (v39)
  {
    sub_1BEFE87B0(&v38, v40);
    sub_1BEFE6A78(v40, &v38);
    (*(v17 + 16))(&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a12);
    v20 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v21 = (v18 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = a10;
    v33 = a4;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v30 = a8;
    v31 = a6;
    v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
    v24 = (v23 + 31) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = a12;
    sub_1BEFE87B0(&v38, v25 + 24);
    (*(v17 + 32))(v25 + v20, v19, a12);
    *(v25 + v21) = v34;
    *(v25 + v22) = v31;
    v26 = (v25 + v23);
    v27 = v35;
    v28 = v30;
    *v26 = v36;
    v26[1] = v28;
    v26[2] = v27;
    *(v25 + v24) = v32;
    *(v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    sub_1BEFF9DB8(sub_1BF005FA4, v25);

    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_1BEFF4B24(&v38, sub_1BEFECBDC);
    return sub_1BEFF6618(a2, a6, v36, a8, v35, a10, v37);
  }
}

uint64_t sub_1BEFFDA28()
{
  OUTLINED_FUNCTION_1_37();
  v1 = *(v0 + 112);
  v3 = *(v2 + 104);
  v4 = sub_1BF17B84C();
  sub_1BEFFDAA8(0, &qword_1ED8EDCF0, type metadata accessor for PoolObject);
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

void sub_1BEFFDAA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7C98] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BEFFDB00()
{
  result = qword_1ED8ED8F0;
  if (!qword_1ED8ED8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED8F0);
  }

  return result;
}

uint64_t sub_1BEFFDB54(unsigned __int8 *a1)
{
  v2 = *a1;
  sub_1BF002E44();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BF17E820;
  swift_beginAccess();
  *(inited + 32) = *(v1 + 16);
  v41 = inited + 32;
  LOBYTE(v52) = v2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  *(inited + 40) = sub_1BEFFE098(&v52);
  v57 = MEMORY[0x1E69E7CC0];
  sub_1BF002F7C(0, 2, 0);
  v4 = 0;
  v5 = 0;
  v44 = v57;
  while (2)
  {
    v42 = v4;
    v6 = *(v41 + 8 * v5);
    v7 = MEMORY[0x1E69E7CC8];
    v56 = MEMORY[0x1E69E7CC8];
    v8 = (v6 + 64);
    v9 = 1 << *(v6 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v6 + 64);
    v12 = (v9 + 63) >> 6;
    v48 = v6;
    swift_bridgeObjectRetain_n();
    v13 = 0;
    v43 = v7;
    v46 = v8;
    v47 = v12;
    while (2)
    {
      v14 = v13;
      if (!v11)
      {
        goto LABEL_8;
      }

LABEL_7:
      v13 = v14;
LABEL_11:
      v15 = __clz(__rbit64(v11)) | (v13 << 6);
      v16 = (*(v48 + 48) + 16 * v15);
      v45 = *v16;
      v17 = *(*(v48 + 56) + 8 * v15);
      v18 = *(v17 + 16);
      v19 = v17 + 32;
      v49 = v16[1];
      v50 = (v11 - 1) & v11;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      v20 = 0;
      v21 = MEMORY[0x1E69E7CC0];
      while (v18 != v20)
      {
        if (v20 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        sub_1BEFE6A78(v19, &v52);
        v22 = v53;
        v23 = v54;
        __swift_project_boxed_opaque_existential_1(&v52, v53);
        (*(v23 + 16))(v51, v22, v23);
        if (LOBYTE(v51[0]))
        {
          if (LOBYTE(v51[0]) == 1)
          {
            v24 = 0xD000000000000012;
          }

          else
          {
            v24 = 0x75614C7265746661;
          }

          if (LOBYTE(v51[0]) == 1)
          {
            v25 = 0x80000001BF18C430;
          }

          else
          {
            v25 = 0xEE00676E6968636ELL;
          }

          if (!v2)
          {
LABEL_25:
            v26 = 0xD000000000000013;
            v27 = 0x80000001BF18C410;
            goto LABEL_26;
          }
        }

        else
        {
          v24 = 0xD000000000000013;
          v25 = 0x80000001BF18C410;
          if (!v2)
          {
            goto LABEL_25;
          }
        }

        v26 = 0x75614C7265746661;
        v27 = 0xEE00676E6968636ELL;
        if (v2 == 1)
        {
          v26 = 0xD000000000000012;
          v27 = 0x80000001BF18C430;
        }

LABEL_26:
        if (v24 == v26 && v25 == v27)
        {
        }

        else
        {
          v29 = sub_1BF17B86C();

          if ((v29 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(&v52);
            goto LABEL_38;
          }
        }

        sub_1BEFE87B0(&v52, v51);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF003034(0, *(v21 + 16) + 1, 1);
          v21 = v55;
        }

        v32 = *(v21 + 16);
        v31 = *(v21 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1BF003034(v31 > 1, v32 + 1, 1);
          v21 = v55;
        }

        *(v21 + 16) = v32 + 1;
        sub_1BEFE87B0(v51, v21 + 40 * v32 + 32);
LABEL_38:
        v19 += 40;
        ++v20;
      }

      if (*(v21 + 16))
      {
        v33 = *(v43 + 16);
        v8 = v46;
        if (*(v43 + 24) <= v33)
        {
          sub_1BF0030EC(v33 + 1, 1);
        }

        v43 = v56;
        sub_1BF003384(v45, v49, v21, v56);

        v12 = v47;
        v11 = v50;
        continue;
      }

      break;
    }

    v14 = v13;
    v8 = v46;
    v12 = v47;
    v11 = v50;
    if (v50)
    {
      goto LABEL_7;
    }

    while (1)
    {
LABEL_8:
      v13 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);

        __break(1u);
        return result;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v8 + v13);
      ++v14;
      if (v11)
      {
        goto LABEL_11;
      }
    }

    v34 = v44;
    v57 = v44;
    v36 = *(v44 + 16);
    v35 = *(v44 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_1BF002F7C(v35 > 1, v36 + 1, 1);
      v34 = v57;
    }

    *(v34 + 16) = v36 + 1;
    v44 = v34;
    *(v34 + 8 * v36 + 32) = v43;
    v4 = 1;
    v5 = 1;
    if ((v42 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_50:
  swift_setDeallocating();
  sub_1BF00349C();
  v37 = 0;
  v8 = 0;
  *&v52 = MEMORY[0x1E69E7CC8];
  v38 = v44;
  v39 = *(v44 + 16);
  while (v39 != v37)
  {
    if (v37 >= *(v38 + 16))
    {
      goto LABEL_56;
    }

    *&v51[0] = *(v38 + 8 * v37 + 32);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BEFFE8FC(&v52, v51);

    ++v37;
    v38 = v44;
  }

  return v52;
}

uint64_t sub_1BEFFE098(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v38 = v2;
  v36 = v3 + 64;
  v37 = v3;
  v35 = v8;
LABEL_4:
  v11 = v10;
  if (!v7)
  {
    goto LABEL_6;
  }

  do
  {
    v10 = v11;
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(v3 + 48) + 24 * v12;
    if (*(v13 + 16))
    {
      v14 = 0x75614C7265746661;
      v15 = 0xEE00676E6968636ELL;
      if (*(v13 + 16) == 1)
      {
        v14 = 0xD000000000000012;
        v15 = 0x80000001BF18C430;
      }

      if (!v2)
      {
LABEL_16:
        v16 = 0xD000000000000013;
        v17 = 0x80000001BF18C410;
        goto LABEL_17;
      }
    }

    else
    {
      v14 = 0xD000000000000013;
      v15 = 0x80000001BF18C410;
      if (!v2)
      {
        goto LABEL_16;
      }
    }

    v16 = 0x75614C7265746661;
    v17 = 0xEE00676E6968636ELL;
    if (v2 == 1)
    {
      v16 = 0xD000000000000012;
      v17 = 0x80000001BF18C430;
    }

LABEL_17:
    v7 &= v7 - 1;
    v18 = *(v13 + 8);
    v34 = *v13;
    v19 = *(*(v3 + 56) + 8 * v12);
    if (v14 == v16 && v15 == v17)
    {
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

LABEL_25:
      v22 = *(v19 + 16);
      if (v22)
      {
        v40 = MEMORY[0x1E69E7CC0];
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF003034(0, v22, 0);
        v23 = v40;
        v24 = (v19 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;

          v25(v39, v27);

          v40 = v23;
          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1BF003034(v28 > 1, v29 + 1, 1);
            v23 = v40;
          }

          *(v23 + 16) = v29 + 1;
          sub_1BEFE87B0(v39, v23 + 40 * v29 + 32);
          v24 += 2;
          --v22;
        }

        while (v22);
      }

      else
      {

        v23 = MEMORY[0x1E69E7CC0];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v3 = v37;
      v8 = v35;
      if ((result & 1) == 0)
      {
        result = sub_1BF05CA7C(0, v33[2] + 1, 1, v33);
        v33 = result;
      }

      v31 = v33[2];
      v30 = v33[3];
      if (v31 >= v30 >> 1)
      {
        result = sub_1BF05CA7C((v30 > 1), v31 + 1, 1, v33);
        v33 = result;
      }

      v33[2] = v31 + 1;
      v32 = &v33[3 * v31];
      v32[4] = v34;
      v32[5] = v18;
      v32[6] = v23;
      v2 = v38;
      v4 = v36;
      goto LABEL_4;
    }

    v21 = sub_1BF17B86C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    if (v21)
    {
      goto LABEL_25;
    }

    v11 = v10;
    v2 = v38;
    v4 = v36;
    v3 = v37;
    v8 = v35;
  }

  while (v7);
LABEL_6:
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return sub_1BF002EB8(v33);
    }

    v7 = *(v4 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BEFFE48C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v26 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      sub_1BF17BAAC();
      __break(1u);
      goto LABEL_23;
    }

    v7 = *(i - 1);
    v6 = *i;
    v8 = *(i - 2);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *a3;
    v11 = sub_1BEFF4AB0(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1BF002DB8(0, &unk_1ED8ED738);
      sub_1BF17B44C();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    *(v19[7] + 8 * v11) = v6;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_21;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_1BF0030EC(v14, a2 & 1);
  v16 = *a3;
  v17 = sub_1BEFF4AB0(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_22;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  sub_1BEFF3A00(0, &qword_1ED8EFD30);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_23:
  sub_1BF17B1EC();
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18CDA0);
  sub_1BF17B40C();
  MEMORY[0x1BFB52000](39, 0xE100000000000000);
  sub_1BF17B49C();
  __break(1u);
}

uint64_t sub_1BEFFE78C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1BF070F14(0, &qword_1ED8ED708, sub_1BF002F9C);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1BEFFB240((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1BF002F9C();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1BEFFE8A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BF17AE6C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1BEFFE8FC(void *a1, uint64_t *a2)
{
  v3 = *a2 + 64;
  v4 = 1 << *(*a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(*a2 + 64);
  v7 = (v4 + 63) >> 6;
  v38 = *a2;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v8 = 0;
  v35 = v7;
  v36 = v3;
  v37 = a1;
  if (v6)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(v38 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(v38 + 56) + 8 * v10);
      v15 = *a1;
      v16 = *(*a1 + 16);
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      if (!v16)
      {
        goto LABEL_11;
      }

LABEL_8:
      v17 = sub_1BEFF4AB0(v13, v12);
      if (v18)
      {
        v40 = *(*(v15 + 56) + 8 * v17);
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      }

      else
      {
LABEL_11:
        v40 = MEMORY[0x1E69E7CC0];
      }

      sub_1BF0034B4(v14);
      v19 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *a1;
      v39 = *a1;
      v21 = v13;
      v22 = sub_1BEFF4AB0(v13, v12);
      if (__OFADD__(*(v20 + 16), (v23 & 1) == 0))
      {
        break;
      }

      v24 = v22;
      v25 = v23;
      sub_1BF002DB8(0, &unk_1ED8ED738);
      if (sub_1BF17B43C())
      {
        v26 = sub_1BEFF4AB0(v21, v12);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_26;
        }

        v24 = v26;
      }

      if (v25)
      {
        v28 = v39[7];
        v29 = *(v28 + 8 * v24);
        *(v28 + 8 * v24) = v40;
      }

      else
      {
        v39[(v24 >> 6) + 8] |= 1 << v24;
        v30 = (v39[6] + 16 * v24);
        *v30 = v21;
        v30[1] = v12;
        *(v39[7] + 8 * v24) = v40;
        v31 = v39[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        v39[2] = v33;
      }

      v6 &= v6 - 1;
      v3 = v36;
      a1 = v37;
      *v37 = v39;
      v7 = v35;
      if (!v6)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1BF17BAAC();
  __break(1u);
  return result;
}

uint64_t sub_1BEFFEBA4(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v2 = v1 + 5;
    }

    else
    {
      v2 = v1 + 6;
    }
  }

  else
  {
    v2 = v1 + 4;
  }

  swift_beginAccess();
  v3 = *v2;
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t sub_1BEFFEC08()
{
  v1 = v0;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  v2 = (v0 + 16);
  v8[0] = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v3 = UnfairLock.init(options:)(v8);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  sub_1BEFEC638(0, &qword_1ED8ED8C0, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for Promise);
  v4 = swift_allocObject();
  swift_unownedRetain();
  v5 = sub_1BEFFED10(v3, v4, v1);
  swift_unownedRelease();
  swift_unownedRelease();
  swift_beginAccess();
  v6 = *v2;
  *v2 = v5;

  return v1;
}

unint64_t OUTLINED_FUNCTION_42_0()
{
  sub_1BF01716C(v1);

  return sub_1BF01716C(v0);
}

void OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2)
{

  sub_1BEFFF95C(0, a2);
}

uint64_t sub_1BEFFEDCC()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_4_6(v2, v3);
  sub_1BEFF6B90();
  OUTLINED_FUNCTION_1_5(v4, v5);
  if (v6)
  {
    __break(1u);
LABEL_13:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF0038C0();
  v7 = OUTLINED_FUNCTION_10_7();
  if (v7)
  {
    OUTLINED_FUNCTION_24_4();
    sub_1BEFF6B90();
    OUTLINED_FUNCTION_8_2();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_22_2(v7, v8, v9, v10, *v0);
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_13_4();
    sub_1BEFF6D1C(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_55();

    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }
}

uint64_t NSProcessInfo.launchArguments<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 arguments];

  v11 = sub_1BF17A4DC();
  v12 = sub_1BEFFEF54(v11, v4, a1, a2, a3, a4);

  return v12;
}

uint64_t sub_1BEFFEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a3;
  v40 = a4;
  v37 = sub_1BF17AE6C();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v37);
  v12 = &v30 - v11;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v10);
  v36 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v35 = &v30 - v17;
  v41 = sub_1BF17A56C();
  v33 = (v13 + 16);
  v34 = (v13 + 32);
  v18 = *(a1 + 16);
  v31 = (v8 + 8);
  v32 = (v13 + 8);
  v19 = (a1 + 56);
  for (i = 1; i - v18 != 1; ++i)
  {
    v21 = *(v19 - 3);
    v22 = *(v19 - 2);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    if (v21 == sub_1BEFFF260() && v22 == v23)
    {

      if (i >= v18)
      {
        goto LABEL_14;
      }

LABEL_11:
      v26 = *(v19 - 1);
      v27 = *v19;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF0D4630(v26, v27, a5, v38, v12);

      if (__swift_getEnumTagSinglePayload(v12, 1, a5) == 1)
      {
        (*v31)(v12, v37);
      }

      else
      {
        v28 = v35;
        (*v34)(v35, v12, a5);
        (*v33)(v36, v28, a5);
        sub_1BF17A65C();
        sub_1BF17A5DC();
        (*v32)(v28, a5);
      }

      goto LABEL_14;
    }

    v25 = sub_1BF17B86C();

    if (i < v18 && (v25 & 1) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v19 += 2;
  }

  return v41;
}

void Promise.init(value:)()
{
  OUTLINED_FUNCTION_68_0();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Seal();
  v13 = 0;
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_87();
  UnfairLock.init(options:)(&v13);
  (*(v8 + 16))(v1, v4, v6);
  v12 = sub_1BEFFF560();
  (*(v8 + 8))(v4, v6);
  *(v2 + 16) = v12;
  OUTLINED_FUNCTION_55();
}

void sub_1BEFFF3C0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_54();
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  type metadata accessor for Seal.Handler();
  *(v0 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  __swift_storeEnumTagSinglePayload(v0 + *(v16 + 112), 1, 1, v7);
  *(v0 + 16) = v4;
  *(v0 + 24) = 1;
  OUTLINED_FUNCTION_20(v6);
  (*(v17 + 32))(v15, v2, v6);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v7);
  OUTLINED_FUNCTION_29();
  v19 = *(v18 + 112);
  OUTLINED_FUNCTION_7_2();
  (*(v10 + 40))(v0 + v19, v15, v8);
  swift_endAccess();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BEFFF560()
{
  v0 = OUTLINED_FUNCTION_8_24();
  sub_1BEFFF3C0();
  return v0;
}

uint64_t sub_1BEFFF5A4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7CA8];
  sub_1BEFFF95C(0, &unk_1ED8EDC58);
  swift_allocObject();
  sub_1BEFFF9F8(&unk_1ED8ED8C8, &unk_1ED8ED758, v3 + 8, sub_1BEFFFCA4, v4, v5, v6, v7, v21, v22, v23, a1, v25, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8]);
  v9 = v8;
  v26 = sub_1BEFE90AC(a2);
  if (v26)
  {
    v27[0] = 1;
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v10 = UnfairLock.init(options:)(v27);
    v11 = swift_allocObject();
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    result = swift_allocObject();
    v13 = result;
    v14 = 0;
    *(result + 16) = 0;
    while (v26 != v14)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1BFB53020](v14, a2);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v16 = swift_allocObject();
      v16[2] = v10;
      v16[3] = v13;
      v16[4] = v11;
      v16[5] = v14;
      v16[6] = a2;
      v16[7] = v9;

      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

      sub_1BEFFFDC4();

      v17 = swift_allocObject();
      v17[2] = v10;
      v17[3] = v13;
      v17[4] = v9;

      sub_1BEFF77FC();

      ++v14;
    }

    result = swift_beginAccess();
    v18 = *(v9 + 16);
    if (v18)
    {
      v19 = *(v9 + 16);

      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1BF000C1C();
  result = swift_beginAccess();
  v18 = *(v9 + 16);
  if (!v18)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v20 = *(v9 + 16);

LABEL_14:

  return v18;
}

uint64_t sub_1BEFFF914()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1BEFFF95C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v6 = v5;
    v7 = v2;
    sub_1BEFEC638(255, v3, v4, MEMORY[0x1E69E62F8]);
    v8 = OUTLINED_FUNCTION_75();
    v9 = v6(v8);
    if (!v10)
    {
      atomic_store(v9, v7);
    }
  }
}

void sub_1BEFFF9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_57_2();
  a21 = v24;
  a22 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_101();
  v28 = OUTLINED_FUNCTION_87();
  UnfairLock.init(options:)(&a10);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v29 = OUTLINED_FUNCTION_64_1();
  sub_1BEFFF95C(v29, v30);
  OUTLINED_FUNCTION_27();
  v31 = swift_allocObject();
  swift_unownedRetain();
  v27(v28, v31, v22);
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125();
  v32 = *v23;
  *v23 = v28;

  OUTLINED_FUNCTION_56_2();
}

uint64_t OUTLINED_FUNCTION_101()
{
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;

  return type metadata accessor for UnfairLock();
}

uint64_t OUTLINED_FUNCTION_57_1(uint64_t a1)
{

  return sub_1BF03917C(a1, sub_1BF003954);
}

uint64_t OUTLINED_FUNCTION_57_4(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t sub_1BEFFFBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, unint64_t *a7)
{
  OUTLINED_FUNCTION_17_3();
  v11 = OUTLINED_FUNCTION_104();
  sub_1BEFFFCCC(v11, v12, a5, v14, v13);
  OUTLINED_FUNCTION_50_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v15, MEMORY[0x1E69E7CC0]);
  sub_1BEFFFCCC(0, a7, a5, a6, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v7;
}

void sub_1BEFFFCCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1BF0035CC(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void OUTLINED_FUNCTION_56_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1BEFFFDC4()
{
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_113_0(v1, v2, v3, v4);
  OUTLINED_FUNCTION_58();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();

  v5 = OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_14_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_9_9(v6);

  v7 = OUTLINED_FUNCTION_3_8();
  sub_1BEFF7610(v7);
  OUTLINED_FUNCTION_19_5();

  v0(v8);
  OUTLINED_FUNCTION_18_4();
  if (*(v5 + 16))
  {
    v9 = *(v5 + 16);

    OUTLINED_FUNCTION_56_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_113()
{
  v3 = *(v0 + 8 * v1 + 32);
}

void OUTLINED_FUNCTION_113_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{

  sub_1BEFEC638(0, a2, v4 + 8, a4);
}

uint64_t sub_1BEFFFF04()
{
  OUTLINED_FUNCTION_86_1();
  swift_unownedRetain();
  swift_unownedRetain();

  v3 = OUTLINED_FUNCTION_130();
  sub_1BEFEC638(v3, v4, v5, v6);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_39_1();
  swift_unownedRetain();
  v7 = OUTLINED_FUNCTION_80_1();
  v2(v7);
  OUTLINED_FUNCTION_95();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_125();
  v8 = *v0;
  *v0 = v2;

  return v1;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return sub_1BF17B8DC();
}

uint64_t OUTLINED_FUNCTION_35_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v16 - 144) = *(v12 + v15);

  return sub_1BF082980(va, v14, v13);
}

id OUTLINED_FUNCTION_35_2(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v7;
  a1[5] = v5;
  a1[6] = v4;
  a1[7] = v6;
  a1[8] = v3;

  return v2;
}

void OUTLINED_FUNCTION_35_5()
{
  v2 = *(v0 + 16);

  UnfairLock.lock()();
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_13Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_114(uint64_t a1)
{
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v1;
}

void OUTLINED_FUNCTION_114_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(a12 + 16);

  os_unfair_lock_unlock(v13);
}

void sub_1BF0001B8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a4;
    *(v8 + 24) = a5;
    v9 = qword_1ED8F0210;

    if (v9 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v10 = swift_allocObject();
          v10[2] = a3;
          v10[3] = sub_1BF000440;
          v10[4] = v8;
          v11 = a3;
        }
      }
    }
  }
}

void sub_1BF00038C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BEFF779C(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BEFF77B0(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BEFF779C(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF00042C(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

void sub_1BF000444(void (*a1)(void))
{
  UnfairLock.lock()();
  a1();
  v3 = *(v1 + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1BF0004B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1BF000678()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1BF0004D8();
}

uint64_t sub_1BF00069C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1BF000554(*(v0 + 16));
}

uint64_t sub_1BF0006A8(_BYTE *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_1BF0007B8(a3);
    *a2 = v11;
    swift_endAccess();
    v10 = *(v11 + 16);
    result = sub_1BEFE90AC(a4);
    if (v10 == result)
    {
      swift_beginAccess();
      *a1 = 1;
      sub_1BF0009D0(0, v10, a2);
      sub_1BF000C1C();
    }
  }

  return result;
}

uint64_t sub_1BF0007B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BF00088C(a1);
  OUTLINED_FUNCTION_1_5(v5, v6);
  if (v8)
  {
    __break(1u);
LABEL_9:
    result = sub_1BF17BAAC();
    __break(1u);
    return result;
  }

  v9 = v7;
  sub_1BF000930();
  result = sub_1BF17B43C();
  if (result)
  {
    v11 = *v2;
    result = sub_1BF00088C(a1);
    if ((v9 & 1) != (v12 & 1))
    {
      goto LABEL_9;
    }
  }

  if ((v9 & 1) == 0)
  {
    v13 = *v2;
    v14 = OUTLINED_FUNCTION_31_3();

    return sub_1BF000994(v14, v15, v16);
  }

  return result;
}

unint64_t sub_1BF00088C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1BF17BB5C();

  return sub_1BF0008D0(a1, v4);
}

unint64_t sub_1BF0008D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

void sub_1BF000930()
{
  if (!qword_1ED8ED730)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED730);
    }
  }
}

uint64_t sub_1BF000994(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_3_14(a1, a3 + 8 * (a1 >> 6));
  *(*(v4 + 48) + 8 * result) = v5;
  v6 = *(v4 + 16);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v8;
  }

  return result;
}

uint64_t sub_1BF0009D0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = result;
LABEL_2:
  for (i = v7; ; ++i)
  {
    if (a2 == i)
    {
      return v6;
    }

    if (a2 < v5)
    {
      break;
    }

    if (v7 < v5)
    {
      goto LABEL_17;
    }

    if (i >= a2)
    {
      goto LABEL_18;
    }

    swift_beginAccess();
    if (*(*a3 + 16))
    {
      sub_1BF00088C(i);
      if (v9)
      {
        swift_endAccess();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1BF000B0C(0, *(v6 + 16) + 1, 1, v6);
          v6 = result;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        v12 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          result = sub_1BF000B0C((v10 > 1), v11 + 1, 1, v6);
          v6 = result;
        }

        v7 = i + 1;
        *(v6 + 16) = v12;
        goto LABEL_2;
      }
    }

    result = swift_endAccess();
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BF000B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BEFEC638(0, &qword_1ED8ED700, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6F90]);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1BF000C1C()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    v4 = v3;
    OUTLINED_FUNCTION_39_1();

    v4(v2);

    v5 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF000CB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_57_4(result);

    a3(a1, a2);
    OUTLINED_FUNCTION_26_8();

    (a3)(v7);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF000D34(uint64_t a1, void (*a2)(uint64_t, void))
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_49_0();
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_32_8();
    v5 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    a2(v5, 0);
    OUTLINED_FUNCTION_31_9();
  }

  os_unfair_lock_unlock(*(v2 + 16));
  return OUTLINED_FUNCTION_6_5();
}

void sub_1BF000DB0()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_15_3();
  v1 = OUTLINED_FUNCTION_3_6();
  sub_1BF000E90(v1, v2);
  v3 = OUTLINED_FUNCTION_2_8();
  sub_1BF000E50(v3, v4);
  OUTLINED_FUNCTION_14_5();
  v5 = *(v0 + 32);
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_33_1();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_0_13(v6);
  sub_1BF000E90(v7, v8);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_118();
}

void sub_1BF000E50(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF000FDC(a1, a2, MEMORY[0x1E69E7CF8]);
  }
}

id sub_1BF000E90(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_109()
{

  return sub_1BF17A65C();
}

void OUTLINED_FUNCTION_109_0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[18];
}

uint64_t OUTLINED_FUNCTION_66_0()
{
}

uint64_t sub_1BF000EFC(uint64_t a1)
{
  OUTLINED_FUNCTION_111(a1);
  result = v2(v1);
  if (result)
  {
    if (result >= 1)
    {
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v5 = OUTLINED_FUNCTION_129();
          MEMORY[0x1BFB53020](v5);
        }

        else
        {
          OUTLINED_FUNCTION_113();
        }

        OUTLINED_FUNCTION_112();
        v3(&v6);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BF000FA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  return sub_1BF000EFC(a1);
}

void sub_1BF000FDC(void *a1, char a2, void (*a3)(void))
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    a3();
  }
}

void sub_1BF000FFC(void *a1, char a2, void (*a3)(void))
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
    a3();
  }
}

uint64_t sub_1BF00108C()
{
  OUTLINED_FUNCTION_82_1();
  if (v1)
  {
    OUTLINED_FUNCTION_95();

    v2(v3);

    v4 = *(v0 + 24);
  }

  *(v0 + 24) = 0;
}

uint64_t sub_1BF0010F0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_57_4(result);

    sub_1BF003954();
    OUTLINED_FUNCTION_26_8();

    v1(v2);
    return OUTLINED_FUNCTION_58_3();
  }

  return result;
}

uint64_t sub_1BF001150(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 16) + 16);
  sub_1BEFEC638(0, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
  swift_allocObject();

  v8 = sub_1BEFFFF04();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  swift_retain_n();

  v10 = sub_1BF00174C(a1, sub_1BF0A90F0, v8, sub_1BF02E2A4, v8, sub_1BF001C0C, v9);

  (v10)(v11);
  result = swift_beginAccess();
  v13 = *(v8 + 16);
  if (v13)
  {
    v14 = *(v8 + 16);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DeferredPromise.__deallocating_deinit()
{
  DeferredPromise.deinit();
  v0 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t objectdestroyTm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_0_62();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  v8 = *(v7 + 64);

  (*(v4 + 8))(v0 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v8, v5 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_0_0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  sub_1BEFF79E8();
  v2 = sub_1BF17A6DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v0 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_92Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[6];

  v5 = v0[7];

  OUTLINED_FUNCTION_141();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BF0016F4()
{
  sub_1BF003B38();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1BF00174C(void *a1, void (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v25 = *(v7 + 16);
  UnfairLock.lock()();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a2;
  v15[8] = a3;
  v16 = a1;

  sub_1BF003C20();
  v18 = v17;
  v20 = v19;

  os_unfair_lock_unlock(*(v25 + 16));
  if (!v20)
  {
    v21 = sub_1BF0019D0(v18, 0, v16, a6, a7);
LABEL_7:
    v23 = v21;
    goto LABEL_8;
  }

  if (v20 != 1)
  {
    if (v20 != 2)
    {
      return nullsub_1;
    }

    v21 = sub_1BF006210(v16, a2, a3);
    goto LABEL_7;
  }

  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v18;

  sub_1BF0019A0(v18, 1);
  v23 = sub_1BF006210(v16, sub_1BF02E21C, v22);

LABEL_8:
  sub_1BF001964(v18, v20);
  return v23;
}

void sub_1BF001964(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BF000FFC(a1, a2, MEMORY[0x1E69E7CF8]);
  }
}

id sub_1BF0019A0(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1BF000E90(result, a2);
  }

  return result;
}

void (*sub_1BF0019D0(void (*result)(), char a2, void *a3, uint64_t a4, uint64_t a5))()
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    v9 = swift_allocObject();
    v9[2] = a4;
    v9[3] = a5;
    v9[4] = v8;

    sub_1BF0019A0(v8, 0);
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    v10 = sub_1BF001C08;
    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || (v11 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, (v11 & 1) == 0))
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || (v12 = [objc_opt_self() isMainThread], v10 = sub_1BF001C08, v12))
        {
          v13 = swift_allocObject();
          v13[2] = a3;
          v13[3] = sub_1BF001C08;
          v13[4] = v9;
          v14 = a3;
          return sub_1BF097A1C;
        }
      }
    }

    return v10;
  }

  return result;
}

uint64_t sub_1BF001C10(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (!a2)
  {
    return sub_1BF03DE18(a1, 0, a3, a4, a5, &unk_1F3DBB970, sub_1BF001C08);
  }

  if (a2 == 1)
  {
    v13 = swift_allocObject();
    v13[2] = a6;
    v13[3] = a7;
    v13[4] = a1;

    sub_1BF000E90(a1, 1);
    v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

    (v14)(v15);
  }

  else
  {
    if (qword_1ED8F0210 != -1)
    {
      swift_once();
    }

    if (off_1ED8F0218 != a3)
    {
      if (qword_1ED8EFB98 != -1)
      {
        swift_once();
      }

      if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
      {
        if (qword_1ED8EF920 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
        {
          v18 = swift_allocObject();
          v18[2] = a3;
          v18[3] = a8;
          v18[4] = a9;
          v19 = a3;
          a8 = sub_1BF097A1C;
        }
      }
    }

    (a8)(v20);
  }
}

BOOL sub_1BF001E94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(void))
{
  OUTLINED_FUNCTION_31_13();
  v10 = *v6;
  v11 = *(*v6 + 40);
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  v12 = *(v10 + 32);
  OUTLINED_FUNCTION_14_27();
  v15 = ~v14;
  while (1)
  {
    v16 = v13 & v15;
    v17 = (1 << (v13 & v15)) & *(v10 + 56 + (((v13 & v15) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      break;
    }

    v18 = (*(v10 + 48) + 16 * v16);
    v19 = *v18 == v9 && v18[1] == v7;
    if (v19 || (sub_1BF17B86C() & 1) != 0)
    {

      v20 = (*(v10 + 48) + 16 * v16);
      v21 = v20[1];
      *v5 = *v20;
      v5[1] = v21;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      return v17 == 0;
    }

    v13 = v16 + 1;
  }

  v22 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v8;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF001FE0(v9, v7, v16, isUniquelyReferenced_nonNull_native, a4, a5);
  *v8 = v27;
  *v5 = v9;
  v5[1] = v7;
  return v17 == 0;
}

void sub_1BF001FE0(uint64_t a1, uint64_t a2, unint64_t a3, char a4, unint64_t *a5, void (*a6)(void))
{
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_21_17(v10);
      sub_1BF170070();
      goto LABEL_10;
    }

    if (v11 <= v10)
    {
      OUTLINED_FUNCTION_21_17(v10);
      sub_1BF172174();
LABEL_10:
      v17 = *v6;
      v18 = *(*v6 + 40);
      sub_1BF17BB6C();
      sub_1BF179F3C();
      sub_1BF17BB9C();
      v19 = *(v17 + 32);
      OUTLINED_FUNCTION_14_27();
      v22 = ~v21;
      while (1)
      {
        a3 = v20 & v22;
        if (((*(v17 + 56 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v23 = (*(v17 + 48) + 16 * a3);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (sub_1BF17B86C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v20 = a3 + 1;
      }
    }

    sub_1BF171890(a5, a6);
  }

LABEL_7:
  v12 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v13 = (*(v12 + 48) + 16 * a3);
  *v13 = a1;
  v13[1] = a2;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_19:
    sub_1BF17BA9C();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }
}

uint64_t sub_1BF002148(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v59 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v50 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v15 = 0;
    v52 = v12;
    v53 = v7;
    v54 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = *(v5 + 40);
        sub_1BF17BB6C();
        _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
        sub_1BF179F3C();
        v21 = sub_1BF17BB9C();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v23 = (*(v5 + 48) + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (sub_1BF17B86C() & 1) != 0)
          {
            v56 = v50;
            v57 = v16;
            v58 = v11;
            v3 = v53;
            v12 = v54;
            v55[0] = v54;
            v55[1] = v53;

            v26 = *(v5 + 32);
            v47 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v47;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v48 = &v46;
              MEMORY[0x1EEE9AC00](v25);
              v7 = &v46 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 16);
              v51 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v52;
              while (1)
              {
                v49 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = *(v5 + 40);
                sub_1BF17BB6C();
                _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
                sub_1BF179F3C();
                v36 = sub_1BF17BB9C();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v53;
                    v12 = v54;
                    v30 = v52;
                    goto LABEL_24;
                  }

                  v38 = (*(v5 + 48) + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = sub_1BF17B86C();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v51[v7];
                v51[v7] = v41 & ~v8;
                v3 = v53;
                v12 = v54;
                v30 = v52;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v49 - 1;
                if (__OFSUB__(v49, 1))
                {
                  __break(1u);
                }

                if (v49 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_1BF004110(v51, v47, v49, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v44 = swift_slowAlloc();
            v45 = sub_1BF0A79CC(v44, v47, (v5 + 56), v47, v5, v7, v55);

            MEMORY[0x1BFB547B0](v44, -1, -1);
            v50 = v56;
            v5 = v45;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v53;
        v14 = v54;
        v12 = v52;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1BF003FE8();
  }

  else
  {

    v5 = MEMORY[0x1E69E7CD0];
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

unint64_t sub_1BF002D64()
{
  result = qword_1ED8ED8E8;
  if (!qword_1ED8ED8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8ED8E8);
  }

  return result;
}

void sub_1BF002DB8(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_81_1(a1, a2))
  {
    v5 = v4;
    v6 = v3;
    OUTLINED_FUNCTION_47_2();
    sub_1BEFF40D4(255, v7);
    v9 = v8;
    v10 = sub_1BEFF4378();
    v11 = v5(v2, &type metadata for StartupTaskGroup, v9, v10);
    if (!v12)
    {
      atomic_store(v11, v6);
    }
  }
}

void sub_1BF002E44()
{
  if (!qword_1ED8ED708)
  {
    sub_1BF002DB8(255, &qword_1ED8ED780);
    v0 = sub_1BF17B70C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED708);
    }
  }
}

uint64_t sub_1BF002EB8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BF002DB8(0, &qword_1ED8ED720);
    v1 = sub_1BF17B52C();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;
  v2 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BEFFE48C(v2, 1, &v4);

  return v4;
}

uint64_t sub_1BF002F7C(uint64_t a1, int64_t a2, char a3)
{
  result = sub_1BEFFE78C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1BF002F9C()
{
  if (!qword_1ED8ED780)
  {
    sub_1BF070FC8(255, &qword_1ED8ED770, &unk_1ED8EDC40, &protocol descriptor for StartupTaskType, MEMORY[0x1E69E62F8]);
    sub_1BEFF4378();
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED780);
    }
  }
}

void sub_1BF003080()
{
  if (!qword_1ED8ED720)
  {
    sub_1BEFF4A40();
    sub_1BEFF4378();
    v0 = sub_1BF17B53C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED720);
    }
  }
}

uint64_t sub_1BF0030EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BF003080();
  v38 = a2;
  result = sub_1BF17B51C();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1BF1470D8(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    }

    v25 = *(v8 + 40);
    sub_1BF17BB6C();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

unint64_t sub_1BF003384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 40);
  sub_1BF17BB6C();
  sub_1BF179F3C();
  sub_1BF17BB9C();
  v9 = -1 << *(a4 + 32);
  result = sub_1BF17B0EC();
  *(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v11 = (*(a4 + 48) + 16 * result);
  *v11 = a1;
  v11[1] = a2;
  *(*(a4 + 56) + 8 * result) = a3;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_1BF003448(void (*a1)(void))
{
  v2 = *(v1 + 16);
  a1(0);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_0_1();

  return MEMORY[0x1EEE6BDC0](v3, v4, v5);
}

uint64_t sub_1BF0034F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6)
{
  OUTLINED_FUNCTION_17_3();
  sub_1BF0035CC(0, v9, v10, type metadata accessor for Seal);
  OUTLINED_FUNCTION_50_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_13_6(v11, MEMORY[0x1E69E7CC0]);
  sub_1BF0035CC(0, a6, a5, type metadata accessor for PromiseWeakResolver);
  OUTLINED_FUNCTION_27();
  swift_allocObject();
  OUTLINED_FUNCTION_58_1();

  sub_1BEFF7020();
  OUTLINED_FUNCTION_42();
  swift_unownedRetainStrong();
  OUTLINED_FUNCTION_41_1();

  swift_unownedRelease();
  return v6;
}

void sub_1BF0035CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BF00361C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_39_2()
{

  return sub_1BF179F7C();
}

uint64_t OUTLINED_FUNCTION_39_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_37_1()
{
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  return v4;
}

uint64_t sub_1BF00377C(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v5 = *a2;
  v4 = a2[1];
  if (*a3)
  {
    if (*a3 == 1)
    {
      swift_beginAccess();

      v6 = v3[5];
      swift_isUniquelyReferenced_nonNull_native();
      v10 = v3[5];
      sub_1BEFFEDCC();
      v3[5] = v10;
    }

    else
    {
      swift_beginAccess();

      v8 = v3[6];
      swift_isUniquelyReferenced_nonNull_native();
      v12 = v3[6];
      sub_1BEFFEDCC();
      v3[6] = v12;
    }
  }

  else
  {
    swift_beginAccess();

    v7 = v3[4];
    swift_isUniquelyReferenced_nonNull_native();
    v11 = v3[4];
    sub_1BEFFEDCC();
    v3[4] = v11;
  }

  return swift_endAccess();
}

void sub_1BF0038C0()
{
  if (!qword_1ED8ED748)
  {
    sub_1BEFEC0B0(255, &qword_1ED8EDC50, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for DeferredPromise);
    sub_1BEFF4378();
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8ED748);
    }
  }
}

uint64_t sub_1BF003954()
{
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_3_34();
  if (v3)
  {
    v1 = v2;
  }

  else
  {
    *(v1 + 24) = 1;
    sub_1BF00038C();
    OUTLINED_FUNCTION_49_4();
  }

  os_unfair_lock_unlock(*(v0 + 16));
  return v1;
}

void sub_1BF0039C4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;

    v10 = sub_1BF006210(a3, sub_1BF0004A8, v9);

    (v10)(v11);
  }
}

uint64_t sub_1BF003A70()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t DeferredPromise.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  Promise.deinit();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Promise.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

char *sub_1BF003B38()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 4);

  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 112);
  v6 = *(v1 + 80);
  type metadata accessor for Seal.Resolution();
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_20(v7);
  (*(v8 + 8))(&v0[v5]);
  return v0;
}

uint64_t objectdestroy_95Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

void sub_1BF003C20()
{
  OUTLINED_FUNCTION_57_2();
  v3 = v2;
  OUTLINED_FUNCTION_61_1();
  v5 = v4;
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  if ((*(v0 + 24) & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_64_1();
    sub_1BEFFF95C(v9, v10);
    OUTLINED_FUNCTION_58();
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    *(v11 + 24) = v1;
    OUTLINED_FUNCTION_38();

    MEMORY[0x1BFB52290](v12);
    v3(*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1BF17A59C();
    swift_endAccess();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_26_4();
  if (*(v0 + 48) != 255)
  {
    v6 = *(v0 + 40);
    v7 = OUTLINED_FUNCTION_36();
    sub_1BF000E90(v7, v8);
LABEL_5:
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_56_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1BF003D20(uint64_t a1, void (*a2)(uint64_t *))
{
  v3 = a1;
  a2(&v3);
  return sub_1BF00108C();
}

uint64_t sub_1BF003E24(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1BF003E30(a1, *(v1 + 16));
}

uint64_t OUTLINED_FUNCTION_147()
{
}

uint64_t sub_1BF003EA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BEFF4378();
  result = MEMORY[0x1BFB526E0](v2, &type metadata for StartupTaskGroup, v3);
  v5 = 0;
  v16 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = )
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF003FC0(v15, v13, v14);
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

      return v16;
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

uint64_t sub_1BF003FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1BEFF4AB0(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_12(v3);
}

_OWORD *OUTLINED_FUNCTION_64()
{
  v4 = (*(v0 + 56) + 32 * v2);

  return sub_1BEFF9A40(v4, v1);
}

uint64_t OUTLINED_FUNCTION_64_0(uint64_t result)
{
  *(result + 48) = -1;
  *(result + 16) = v1;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1BF0040A8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  OUTLINED_FUNCTION_45_1();
  v4 = v3();
  v4();

  return v1;
}

uint64_t sub_1BF004110(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v11;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  v8 = OUTLINED_FUNCTION_65_1();
  sub_1BF0A9028(v8, v9);
  result = sub_1BF17B18C();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v32 = v4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = (*(v4 + 48) + 16 * (v15 | (v13 << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v11 + 40);
    sub_1BF17BB6C();
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF179F3C();
    result = sub_1BF17BB9C();
    v22 = -1 << *(v11 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
        v29 = *(v14 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v11 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    ++*(v11 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BF004324(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), unint64_t *a3)
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BEFE6EA8(0, a3);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v10 = *(v9 + 16);
  v11 = __OFADD__(v10, v5);
  v12 = v10 + v5;
  if (!v11)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_82()
{
}

uint64_t OUTLINED_FUNCTION_96_0()
{
}

uint64_t OUTLINED_FUNCTION_31_2()
{

  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

uint64_t OUTLINED_FUNCTION_31_6()
{

  return sub_1BF17B43C();
}

uint64_t OUTLINED_FUNCTION_31_7(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = result;
  v6[5] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_8(uint64_t result, uint64_t a2)
{
  *(v3 - 184) = v2;
  v4 = *(v2 + 8);
  *(v3 - 96) = result;
  *(v3 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_10()
{
}

uint64_t OUTLINED_FUNCTION_31_11@<X0>(uint64_t a1@<X8>)
{

  return sub_1BF0F86D0(v1, v2 + a1);
}

uint64_t sub_1BF004594()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_43_2()
{
  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[10];

  return sub_1BF17A62C();
}

uint64_t OUTLINED_FUNCTION_43_3(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __n128 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  a12 = a1;
  a14 = 0;
  a15 = 0;
  a13 = 0;

  return sub_1BF0FDBF4(&a12);
}

uint64_t sub_1BF00464C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BF17BB6C();
  sub_1BF179F3C();
  return sub_1BF17BB9C();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BF0046C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 88);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v34 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  OUTLINED_FUNCTION_2_3();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_3();
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v33 - v25;
  (*(v27 + 16))(v19, a1, a3);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v7);
    (*(v21 + 32))(v26, v14, v7);
    v28 = v3[2];
    v29 = v3[3];
    v28(v26, a2);
    return (*(v21 + 8))(v26, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v7);
    (*(v34 + 8))(v14, v8);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0xD000000000000029, 0x80000001BF18FFE0);
    v31 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v31);

    MEMORY[0x1BFB52000](0x795474736163202CLL, 0xEB000000003D6570);
    v32 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v32);

    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

id sub_1BF0049F4(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_1BF004A40()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1BF004A68()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_1BF009264(v0);
  v3 = 0x80000001BF18E140;
  v4 = 0xD000000000000017;
  if (v2)
  {
    v4 = result;
    v3 = v2;
  }

  qword_1ED8EFC08 = v4;
  unk_1ED8EFC10 = v3;
  return result;
}

void OUTLINED_FUNCTION_38_1()
{
  v2 = v0[4];
  *(v1 + 24) = v0[5];
  v3 = v0[6];
}

uint64_t (*sub_1BF004C34(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

uint64_t (*sub_1BF004CA4(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0122B0;
}

uint64_t sub_1BF004D14()
{
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_19();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_41_0();
  sub_1BF004D5C(v1, v2);
  return v0;
}

uint64_t sub_1BF004D5C(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_29();
  v5 = *(v4 + 80);
  type metadata accessor for Seal();

  *(v2 + 16) = sub_1BF004E88(v6);
  type metadata accessor for PromiseWeakResolver();
  OUTLINED_FUNCTION_66();

  sub_1BF004EBC();
  a2();

  return v2;
}

uint64_t sub_1BF004E04(uint64_t a1)
{
  OUTLINED_FUNCTION_29();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_54();
  type metadata accessor for Seal.Handler();
  *(v1 + 32) = sub_1BF179CFC();
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 112);
  OUTLINED_FUNCTION_54();
  v7 = type metadata accessor for Seal.Resolution();
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_1BF004E88(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_24();
  sub_1BF004E04(a1);
  return v2;
}

uint64_t sub_1BF004EBC()
{
  OUTLINED_FUNCTION_19();
  swift_allocObject();
  OUTLINED_FUNCTION_66();
  sub_1BEFF7020();
  return v0;
}

uint64_t sub_1BF004F10(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  v4 = *(a2 + 24);
  *(a2 + 24) = a1;
}

void sub_1BF004F64(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_41();
  v5 = *(v4 + 80);
  v6 = OUTLINED_FUNCTION_30_7();
  OUTLINED_FUNCTION_1(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_39();
  v13 = *(v1 + *(v12 + 112));
  UnfairLock.lock()();
  sub_1BF005128(v2);
  OUTLINED_FUNCTION_32_10(v2);
  if (!v14)
  {
    OUTLINED_FUNCTION_20(v5);
    (*(v20 + 32))(a1, v2, v5);
LABEL_7:
    os_unfair_lock_unlock(*(v13 + 16));
    goto LABEL_8;
  }

  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_59_0();
  v17(v16);
  OUTLINED_FUNCTION_4_0();
  v19 = *(v1 + *(v18 + 120));
  if ((v19 & 1) == 0 && (v19 & 2) != 0 && ![objc_opt_self() isMainThread])
  {
    sub_1BEFF6E88();
    v21 = sub_1BF17AD5C();
    OUTLINED_FUNCTION_19_15();

    goto LABEL_7;
  }

  sub_1BF0051BC(1, v1, a1);
LABEL_8:
  OUTLINED_FUNCTION_55();
}

uint64_t sub_1BF005128@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_24_13();
  v7 = *(v6 + 80);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v8);
  return (*(v9 + 16))(a1, &v1[v5]);
}

uint64_t sub_1BF0051BC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a2 + 80);
  v7 = sub_1BF17AE6C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1BF0070F0();
  v11();

  (*(*(v6 - 8) + 16))(v10, a3, v6);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  sub_1BF007120(v10);
  v12 = sub_1BF0071BC();
  v13 = *(*a2 + 104);
  swift_beginAccess();
  swift_getFunctionTypeMetadata1();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  sub_1BF17A63C();
  swift_endAccess();
  if (a1)
  {
    os_unfair_lock_unlock(*(*(a2 + *(*a2 + 112)) + 16));
  }

  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v14 = sub_1BF17A4EC();

  v22 = v14;
  if (v14 == sub_1BF17A5AC())
  {
  }

  while (1)
  {
    v15 = sub_1BF17A58C();
    sub_1BF17A51C();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = v12 + 32 + 16 * v14;
    v18 = *v16;
    v17 = *(v16 + 8);

    sub_1BF17A62C();
    v18(a3);

    v19 = sub_1BF17A5AC();
    v14 = v22;
    if (v22 == v19)
    {
    }
  }

  result = sub_1BF17B23C();
  __break(1u);
  return result;
}

void *DeferredPromise.init()()
{
  v1 = v0;
  v2 = *v0;
  v0[3] = 0;
  v0[2] = 0;
  v3 = v0 + 2;
  v4 = *(v2 + 80);
  type metadata accessor for Promise();
  v8[0] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  UnfairLock.init(options:)(v8);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_1_68();
  v6 = *v3;
  *v3 = v5;

  return v1;
}

void sub_1BF005508()
{
  OUTLINED_FUNCTION_32();
  v16 = sub_1BF17AD4C();
  v1 = OUTLINED_FUNCTION_1(v16);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_19_10();
  v5 = OUTLINED_FUNCTION_13_16(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_15_14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_18_8();
  sub_1BF179B8C();
  OUTLINED_FUNCTION_3_30();
  sub_1BEFF74A0(v10, v0);
  v11 = OUTLINED_FUNCTION_14_16();
  sub_1BEFF74E8(v11, v12, v0);
  sub_1BEFF753C(&qword_1ED8F0BE8, qword_1ED8F0BF0, v0);
  OUTLINED_FUNCTION_8_23();
  v13 = *MEMORY[0x1E69E8090];
  v14 = OUTLINED_FUNCTION_16_13();
  v15(v14);
  qword_1ED8EFC18 = OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_26_2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BF0057E8()
{
  OUTLINED_FUNCTION_0_1();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_66();
  sub_1BF00581C(v1);
  return v0;
}

uint64_t *sub_1BF00581C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v2[3] = 0;
  v2[2] = 0;
  v5 = *(v4 + 80);
  type metadata accessor for Promise();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_1_68();
  v6 = v2[2];
  v2[2] = a1;

  return v2;
}

uint64_t sub_1BF0058CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1BF005910()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v47 = v4;
  v48 = v3;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v9 = v8;
  OUTLINED_FUNCTION_29();
  v11 = *(v10 + 80);
  v12 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_54();
  v13 = sub_1BF17AE6C();
  v14 = OUTLINED_FUNCTION_1(v13);
  v42 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_1();
  v43 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = *(v0 + 16);
  UnfairLock.lock()();
  v24 = swift_allocObject();
  v40 = v11;
  v24[2] = v11;
  v24[3] = v9;
  v25 = v42;
  v26 = v9;
  v27 = v48;
  v24[4] = v47;
  v24[5] = v2;
  v29 = v44;
  v28 = v45;
  v24[6] = v27;
  v24[7] = v28;
  v24[8] = v46;
  v24[9] = v29;
  v41 = v26;
  v39 = v2;

  sub_1BF005C4C(sub_1BF02F0F0, v24, v22);

  v30 = *(v23 + 16);
  v31 = v43;
  os_unfair_lock_unlock(v30);
  (*(v25 + 16))(v31, v22, v13);
  if (__swift_getEnumTagSinglePayload(v31, 1, v12) == 1)
  {
    goto LABEL_7;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_20(v12);
      (*(v33 + 8))(v31, v12);
      sub_1BF0EF2EC(v22, v41, v48, v45);
    }

    else
    {
      sub_1BF006210(v41, v46, v29);
    }

LABEL_7:
    v37 = OUTLINED_FUNCTION_6_29();
    v38(v37);
    goto LABEL_8;
  }

  sub_1BF00BD64(v22, v41, v47, v39, v40);
  v34 = OUTLINED_FUNCTION_6_29();
  v35(v34);
  OUTLINED_FUNCTION_20(v12);
  (*(v36 + 8))(v31, v12);
LABEL_8:
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF005BFC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1BF005C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(*v4 + 80);
  v9 = type metadata accessor for Seal.Resolution();
  v10 = sub_1BF17AE6C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  os_unfair_lock_assert_owner(*(*(v4 + 16) + 16));
  if ((*(v4 + 24) & 1) == 0)
  {
    type metadata accessor for Seal.Handler();
    v18 = sub_1BEFEFDD8(a1, a2);
    swift_beginAccess();
    sub_1BF17A65C();

    sub_1BF17A5DC();
    swift_endAccess();
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v17, 1, v9);
  }

  v15 = *(*v4 + 112);
  swift_beginAccess();
  (*(v11 + 16))(v14, v4 + v15, v10);
  result = __swift_getEnumTagSinglePayload(v14, 1, v9);
  if (result != 1)
  {
    (*(*(v9 - 8) + 32))(a3, v14, v9);
    v17 = 0;
    return __swift_storeEnumTagSinglePayload(a3, v17, 1, v9);
  }

  __break(1u);
  return result;
}

uint64_t Lock.sync<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

uint64_t sub_1BF005FA8()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1BF006070((v0 + 24), v0 + v1, *(v0 + v2), *(v0 + v3), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + 16));
}

uint64_t sub_1BF006070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v21[3] = type metadata accessor for ProxyResolver();
  v21[4] = &protocol witness table for ProxyResolver;
  v21[0] = a3;
  v15 = *(v13 + 8);

  v15(a2, v21, a10, v14, v13);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1BEFF6618(a2, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1BF006170()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t OUTLINED_FUNCTION_112()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
}

void (*sub_1BF006210(void *a1, void (*a2)(), uint64_t a3))()
{
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  if (off_1ED8F0218 != a1)
  {
    if (qword_1ED8EFB98 != -1)
    {
      OUTLINED_FUNCTION_6_27();
      swift_once();
    }

    if (qword_1ED8EFC18 != a1 || ([objc_opt_self() isMainThread] & 1) == 0)
    {
      if (qword_1ED8EF920 != -1)
      {
        OUTLINED_FUNCTION_5_23();
        swift_once();
      }

      if (qword_1ED8EF928 != a1 || [objc_opt_self() isMainThread])
      {
        v6 = swift_allocObject();
        v6[2] = a1;
        v6[3] = a2;
        v6[4] = a3;
        v7 = a1;
        a2 = sub_1BF0077B8;
      }
    }
  }

  return a2;
}

uint64_t sub_1BF006364()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BF0063A4()
{
  OUTLINED_FUNCTION_32();
  v16 = sub_1BF17AD4C();
  v1 = OUTLINED_FUNCTION_1(v16);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = OUTLINED_FUNCTION_19_10();
  v5 = OUTLINED_FUNCTION_13_16(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_15_14();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_18_8();
  sub_1BF179B8C();
  OUTLINED_FUNCTION_3_30();
  sub_1BEFF74A0(v10, v0);
  v11 = OUTLINED_FUNCTION_14_16();
  sub_1BEFF74E8(v11, v12, v0);
  sub_1BEFF753C(&qword_1ED8F0BE8, qword_1ED8F0BF0, v0);
  OUTLINED_FUNCTION_8_23();
  v13 = *MEMORY[0x1E69E8090];
  v14 = OUTLINED_FUNCTION_16_13();
  v15(v14);
  qword_1ED8EF928 = OUTLINED_FUNCTION_7_24();
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF006544()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v3 = sub_1BF179B6C();
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_1BF179B5C();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = OUTLINED_FUNCTION_15_14();
  v17 = OUTLINED_FUNCTION_1(v16);
  v46 = v18;
  v47 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  if (qword_1ED8EFB98 != -1)
  {
    OUTLINED_FUNCTION_6_27();
    swift_once();
  }

  if (qword_1ED8EFC18 == v2)
  {
    sub_1BEFF6E88();
    v29 = sub_1BF17AD5C();
    OUTLINED_FUNCTION_1_45();
    v48[1] = 1107296256;
    v49 = sub_1BF0058CC;
    v50 = &block_descriptor_6;
    v30 = _Block_copy(v48);
    v31 = v51;

    sub_1BF179B8C();
    v48[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_24();
    sub_1BEFF74A0(v32, v31);
    v33 = OUTLINED_FUNCTION_14_16();
    sub_1BEFF74E8(v33, v34, v31);
    sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v31);
    OUTLINED_FUNCTION_12_18();
    OUTLINED_FUNCTION_11_15();
    _Block_release(v30);

    v35 = OUTLINED_FUNCTION_20_12();
    v36(v35);
    (*(v46 + 8))(v23, v47);
  }

  else
  {
    if (qword_1ED8EF920 != -1)
    {
      OUTLINED_FUNCTION_5_23();
      swift_once();
    }

    if (qword_1ED8EF928 == v2)
    {
      v37 = sub_1BEFF6E88();
      (*(v6 + 104))(v11, *MEMORY[0x1E69E7F88], v3);
      v38 = sub_1BF17ADAC();
      (*(v6 + 8))(v11, v3);
      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_23(COERCE_DOUBLE(1107296256));
      v49 = v39;
      v50 = &block_descriptor_3_0;
      v40 = _Block_copy(v48);

      sub_1BF179B8C();
      OUTLINED_FUNCTION_4_24();
      sub_1BEFF74A0(v41, v37);
      v42 = OUTLINED_FUNCTION_14_16();
      sub_1BEFF74E8(v42, v43, v37);
      sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v37);
      OUTLINED_FUNCTION_12_18();
      OUTLINED_FUNCTION_11_15();
      _Block_release(v40);
    }

    else
    {
      OUTLINED_FUNCTION_1_45();
      OUTLINED_FUNCTION_9_23(COERCE_DOUBLE(1107296256));
      v49 = v24;
      v50 = &block_descriptor_10;
      v25 = _Block_copy(v48);

      sub_1BF179B8C();
      OUTLINED_FUNCTION_4_24();
      sub_1BEFF74A0(v26, v0);
      v27 = OUTLINED_FUNCTION_14_16();
      sub_1BEFF74E8(v27, v28, v0);
      sub_1BEFF753C(&qword_1ED8EFBD0, &qword_1ED8EFBE0, v0);
      OUTLINED_FUNCTION_12_18();
      OUTLINED_FUNCTION_11_15();
      _Block_release(v25);
    }

    v44 = OUTLINED_FUNCTION_20_12();
    v45(v44);
    (*(v46 + 8))(v23, v47);
  }

  OUTLINED_FUNCTION_26_2();
}

uint64_t KeyedDecodingContainer.decodeSafeArrayIfPresent<A>(_:forKey:)()
{
  type metadata accessor for Safe();
  sub_1BF17A65C();
  OUTLINED_FUNCTION_2_16();
  v3[1] = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  v0 = sub_1BF17B5FC();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_1_18(v3);
  swift_getWitnessTable();
  v1 = sub_1BF17A38C();

  return v1;
}

uint64_t sub_1BF006B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1BF17AE6C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BF006BE0()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v28 = v1;
  OUTLINED_FUNCTION_29();
  v29 = *(v3 + 80);
  v4 = type metadata accessor for Seal.Resolution();
  OUTLINED_FUNCTION_1(v4);
  v6 = v5;
  v31 = *(v7 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v26 - v9;
  OUTLINED_FUNCTION_54();
  v10 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_1(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_59();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  v18 = *(v0 + 16);
  os_unfair_lock_assert_owner(*(v18 + 16));
  v27 = *(v6 + 16);
  v27(v17, v2, v4);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v4);
  OUTLINED_FUNCTION_29();
  v20 = *(v19 + 112);
  OUTLINED_FUNCTION_7_2();
  (*(v12 + 40))(v0 + v20, v17, v10);
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v0 + 32);
  OUTLINED_FUNCTION_7_2();
  v22 = v29;
  type metadata accessor for Seal.Handler();
  sub_1BEFF4CFC();
  sub_1BF17A65C();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  sub_1BF17A63C();
  swift_endAccess();
  v23 = v30;
  v27(v30, v28, v4);
  v24 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = v22;
  *(v25 + 3) = v18;
  *(v25 + 4) = v21;
  (*(v6 + 32))(&v25[v24], v23, v4);

  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF006E80()
{
  v2 = *(OUTLINED_FUNCTION_14_17() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v1 + 24);

  v7 = *(v1 + 32);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_20(v0);
    (*(v9 + 8))(v1 + v4, v0);
  }

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

void *OnlyOnceDeferredPromise.init()()
{
  v1 = v0;
  v2 = *v0;
  v0[3] = 0;
  v0[2] = 0;
  v3 = v0 + 2;
  *v8 = 0;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v0[4] = UnfairLock.init(options:)(v8);
  v4 = *(v2 + 80);
  type metadata accessor for Promise();
  *v8 = 0;
  v5 = swift_allocObject();
  UnfairLock.init(options:)(v8);
  OUTLINED_FUNCTION_66();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_69();
  OUTLINED_FUNCTION_66();
  swift_unownedRelease();
  swift_unownedRelease();
  OUTLINED_FUNCTION_1_68();
  v6 = *v3;
  *v3 = v5;

  return v1;
}

uint64_t sub_1BF0070F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1BF007120(uint64_t a1)
{
  v3 = *v1;
  OUTLINED_FUNCTION_24_13();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_24_13();
  v7 = *(v6 + 80);
  v8 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v8);
  (*(v9 + 40))(&v1[v5], a1);
  return swift_endAccess();
}

uint64_t sub_1BF0071BC()
{
  OUTLINED_FUNCTION_29();
  v2 = *(v1 + 104);
  OUTLINED_FUNCTION_3_5();
  v3 = *(v0 + v2);
  return _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
}

void sub_1BF007204()
{
  OUTLINED_FUNCTION_95_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v20 = v9;
  v10 = *v0;
  type metadata accessor for DeferredPromise();
  v11 = *(v0[2] + 16);

  v12 = sub_1BF0057E8();
  v13 = *(v10 + 80);
  v4(v12, v13, v6);
  v14 = OUTLINED_FUNCTION_36();
  v15 = v2(v14);
  OUTLINED_FUNCTION_27();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v6;
  v17[4] = v16;
  v17[5] = v12;
  v17[6] = v20;
  v17[7] = v8;

  sub_1BF005910();
  OUTLINED_FUNCTION_98();

  v15(v18);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v12 + 16))
  {
    v19 = *(v12 + 16);

    OUTLINED_FUNCTION_94();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BF0073A8()
{
  MEMORY[0x1BFB548B0](v0 + 16);
  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void Promise.then<A, B>(on:disposeOn:closure:)()
{
  sub_1BF007204();
}

{
  sub_1BF007204();
}

uint64_t (*sub_1BF007448(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF0979E8;
}

uint64_t sub_1BF0074BC()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t (*sub_1BF0074F0(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  return sub_1BF097A10;
}

id sub_1BF007568()
{
  if (qword_1ED8F0210 != -1)
  {
    OUTLINED_FUNCTION_1_10();
    swift_once();
  }

  v1 = off_1ED8F0218;

  return v1;
}

uint64_t sub_1BF0075BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t firstly<A, B>(on:disposeOn:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DeferredPromise();
  v10 = DeferredPromise.__allocating_init()();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = v11;
  v12[4] = v10;
  v12[5] = a3;
  v12[6] = a4;

  v13 = sub_1BF006210(a1, sub_1BF0077C4, v12);

  (v13)(v14);
  result = OUTLINED_FUNCTION_10_3();
  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = *(v10 + 16);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF00774C()
{
  MEMORY[0x1BFB548B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t DeferredPromise.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  v0 = swift_allocObject();
  DeferredPromise.init()();
  return v0;
}

void sub_1BF0077B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1BF006544();
}

uint64_t sub_1BF007800()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1BF007840(uint64_t a1, uint64_t *a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    a3();
    v11 = swift_allocObject();
    *(v11 + 16) = a5;
    *(v11 + 24) = a2;
    v12 = *(v8 + 80);

    v13 = sub_1BF014EDC(v12, MEMORY[0x1E69E7CA8] + 8);
    Promise.then<A>(on:closure:)();

    v14 = swift_allocObject();
    *(v14 + 16) = a5;
    *(v14 + 24) = a2;
    v15 = qword_1ED8F0210;

    if (v15 != -1)
    {
      swift_once();
    }

    sub_1BEFF77FC();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1BF095D40();
    v9 = swift_allocError();
    *v10 = xmmword_1BF17FB20;
    *(v10 + 16) = 2;
    DeferredPromise.reject(_:)();
  }
}

uint64_t Safe.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v25 = v6;
  v26 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v27 = type metadata accessor for Safe();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  OUTLINED_FUNCTION_11_7();
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v24;
  sub_1BF17BBBC();
  if (v19)
  {
    sub_1BF0B472C(a2, v19);

    (*(v25 + 8))(v17, v26);
    OUTLINED_FUNCTION_11_7();
  }

  else
  {
    v24 = v28[4];
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v23 = v10;
    sub_1BF17B8DC();
    v22 = v23;
    __swift_storeEnumTagSinglePayload(v23, 0, 1, a2);
    (*(v25 + 40))(v17, v22, v26);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  v20 = v27;
  (*(v12 + 16))(v29, v17, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v12 + 8))(v17, v20);
}

uint64_t sub_1BF007D80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1BF007F08(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        return;
      case 2:
        *&a1[v11] = v18;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        return;
      default:
        return;
    }
  }

  switch(v6)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x1BF008128);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_30;
    default:
LABEL_30:
      if (a2)
      {
LABEL_31:
        if (v9 >= 2)
        {
          v20 = a2 + 1;

          __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
        }
      }

      return;
  }
}

uint64_t sub_1BF008150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_1BF008170(a1, a2);
}

uint64_t sub_1BF008170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_12(v4);
  return (*(v5 + 16))(a2, a1);
}

uint64_t sub_1BF0081DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t ShortDescribable.description.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 8))(1, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t sub_1BF00829C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::String __swiftcall ShortDescription.describe(withIndentation:)(Swift::Int withIndentation)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if (!*(v4 + 16))
  {
    v29 = v1[1];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    goto LABEL_20;
  }

  *&v35 = *v1;
  *(&v35 + 1) = v3;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](2600, 0xE200000000000000);
  v6 = *(v4 + 64);
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  v37 = v35;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v11 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v13 = 0;
  if (!v9)
  {
LABEL_6:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v10)
      {
        v9 = 0;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        goto LABEL_11;
      }

      v9 = *(v4 + 64 + 8 * v14);
      ++v13;
      if (v9)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  while (1)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1BF0075BC(*(v4 + 56) + 32 * v16, v31);
    *&v32 = v19;
    *(&v32 + 1) = v18;
    sub_1BEFF9A40(v31, &v33);
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
LABEL_11:
    v35 = v32;
    v36[0] = v33;
    v36[1] = v34;
    v20 = *(&v32 + 1);
    if (!*(&v32 + 1))
    {
      break;
    }

    v21 = v35;
    v11 = sub_1BEFF9A40(v36, &v32);
    if (withIndentation + 0x4000000000000000 < 0)
    {
      goto LABEL_22;
    }

    *&v31[0] = sub_1BF17A2DC();
    *(&v31[0] + 1) = v22;
    MEMORY[0x1BFB52000](v21, v20);

    MEMORY[0x1BFB52000](61, 0xE100000000000000);
    v23 = sub_1BF008590(&v32, withIndentation + 1);
    MEMORY[0x1BFB52000](v23);

    MEMORY[0x1BFB52000](2604, 0xE200000000000000);
    MEMORY[0x1BFB52000](*&v31[0], *(&v31[0] + 1));

    v11 = __swift_destroy_boxed_opaque_existential_1(&v32);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  if (__OFSUB__(withIndentation, 1))
  {
    goto LABEL_23;
  }

  if (withIndentation + 0x3FFFFFFFFFFFFFFFLL < 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = *(&v37 + 1);
  v25 = v37;
  *&v35 = sub_1BF17A2DC();
  *(&v35 + 1) = v26;
  MEMORY[0x1BFB52000](41, 0xE100000000000000);
  v28 = *(&v35 + 1);
  v27 = v35;
  v35 = __PAIR128__(v24, v25);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](v27, v28);

  v3 = *(&v35 + 1);
  v2 = v35;
LABEL_20:
  v11 = v2;
  v12 = v3;
LABEL_25:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1BF008590(uint64_t a1, uint64_t a2)
{
  sub_1BF0075BC(a1, __dst);
  sub_1BF008CC4(0, &qword_1ED8EE528, MEMORY[0x1E69E62F8]);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = *v44;
    v6 = *(*v44 + 16);
    if (v6)
    {
      *v44 = 2651;
      *&v44[8] = 0xE200000000000000;
      if (a2 + 0x4000000000000000 >= 0)
      {
        v7 = v5 + 32;
        do
        {
          sub_1BF0075BC(v7, __dst);
          *&v48 = sub_1BF17A2DC();
          *(&v48 + 1) = v8;
          v9 = sub_1BF008590(__dst, a2 + 1);
          v11 = v10;
          __swift_destroy_boxed_opaque_existential_1(__dst);
          MEMORY[0x1BFB52000](v9, v11);

          MEMORY[0x1BFB52000](2604, 0xE200000000000000);
          MEMORY[0x1BFB52000](v48, *(&v48 + 1));

          v7 += 32;
          --v6;
        }

        while (v6);

        if (!__OFSUB__(a2, 1))
        {
          if (a2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
          {
            v12 = *&v44[8];
            v13 = *v44;
            *__dst = sub_1BF17A2DC();
            *&__dst[8] = v14;
            v15 = 93;
LABEL_33:
            MEMORY[0x1BFB52000](v15, 0xE100000000000000);
            v35 = *__dst;
            *__dst = v13;
            *&__dst[8] = v12;
            _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
            MEMORY[0x1BFB52000](v35, *(&v35 + 1));

            return *__dst;
          }

          goto LABEL_49;
        }

LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    return 23899;
  }

  sub_1BF0075BC(a1, __dst);
  sub_1BF008D6C();
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1BF0075BC(a1, &v48);
    sub_1BEFE6EA8(0, &qword_1ED8EE738);
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v44, __dst);
      v29 = *&__dst[24];
      v30 = *&__dst[32];
      __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
      (*(v30 + 16))(v44, v29, v30);
      v31 = *&v44[24];
      v32 = *&v44[32];
      __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
      v33 = (*(v32 + 8))(a2, v31, v32);
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(v44);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v33;
    }

    memset(v44, 0, 40);
    sub_1BF008DD0(v44, &qword_1ED8EE730, &qword_1ED8EE738);
    sub_1BF0075BC(a1, &v48);
    sub_1BEFE6EA8(0, qword_1ED8EE748);
    if (swift_dynamicCast())
    {
      sub_1BEFE87B0(v44, __dst);
      v36 = *&__dst[24];
      v37 = *&__dst[32];
      __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
      if ((*(v37 + 16))(v36, v37))
      {
        v38 = *&__dst[24];
        v39 = *&__dst[32];
        __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
        (*(v39 + 24))(v51, v38, v39);
        if (swift_dynamicCast())
        {
          sub_1BEFE87B0(&v48, v44);
          v40 = *&v44[24];
          v41 = *&v44[32];
          __swift_project_boxed_opaque_existential_1(v44, *&v44[24]);
          (*(v41 + 16))(&v48, v40, v41);
          v42 = *(&v49 + 1);
          v43 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          v33 = (*(v43 + 8))(a2, v42, v43);
          __swift_destroy_boxed_opaque_existential_1(&v48);
          goto LABEL_28;
        }

        v50 = 0;
        v48 = 0u;
        v49 = 0u;
        sub_1BF008DD0(&v48, &qword_1ED8EE730, &qword_1ED8EE738);
      }

      __swift_destroy_boxed_opaque_existential_1(__dst);
    }

    else
    {
      memset(v44, 0, 40);
      sub_1BF008DD0(v44, &qword_1ED8EE740, qword_1ED8EE748);
    }

    *__dst = 0;
    *&__dst[8] = 0xE000000000000000;
    sub_1BF17B40C();
    return *__dst;
  }

  v16 = *v44;
  if (!*(*v44 + 16))
  {

    return 32123;
  }

  v17 = 0;
  v18 = *(*v44 + 64);
  v19 = 1 << *(*v44 + 32);
  v46 = 2683;
  v47 = 0xE200000000000000;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  if ((v20 & v18) == 0)
  {
LABEL_16:
    while (1)
    {
      v23 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v23 >= v22)
      {
        v21 = 0;
        memset(v44, 0, sizeof(v44));
        goto LABEL_21;
      }

      v21 = *(v16 + 64 + 8 * v23);
      ++v17;
      if (v21)
      {
        v17 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  while (1)
  {
    v23 = v17;
LABEL_20:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v25 = v24 | (v23 << 6);
    sub_1BF083BD8(*(v16 + 48) + 40 * v25, &v48);
    sub_1BF0075BC(*(v16 + 56) + 32 * v25, v51);
    *v44 = v48;
    *&v44[16] = v49;
    *&v44[32] = v50;
    sub_1BEFF9A40(v51, &v44[40]);
LABEL_21:
    memcpy(__dst, v44, sizeof(__dst));
    if (!*&__dst[24])
    {
      break;
    }

    *v44 = *__dst;
    *&v44[16] = *&__dst[16];
    *&v44[32] = *&__dst[32];
    result = sub_1BEFF9A40(&__dst[40], &v48);
    if (a2 + 0x4000000000000000 < 0)
    {
      goto LABEL_46;
    }

    *&v51[0] = sub_1BF17A2DC();
    *(&v51[0] + 1) = v26;
    v27 = sub_1BF17B11C();
    MEMORY[0x1BFB52000](v27);

    MEMORY[0x1BFB52000](8250, 0xE200000000000000);
    v28 = sub_1BF008590(&v48, a2 + 1);
    MEMORY[0x1BFB52000](v28);

    MEMORY[0x1BFB52000](2604, 0xE200000000000000);
    MEMORY[0x1BFB52000](*&v51[0], *(&v51[0] + 1));

    __swift_destroy_boxed_opaque_existential_1(&v48);
    result = sub_1BF083C34(v44);
    if (!v21)
    {
      goto LABEL_16;
    }
  }

  if (__OFSUB__(a2, 1))
  {
    goto LABEL_50;
  }

  if (a2 + 0x3FFFFFFFFFFFFFFFLL >= 0)
  {
    v13 = v46;
    v12 = v47;
    *__dst = sub_1BF17A2DC();
    *&__dst[8] = v34;
    v15 = 125;
    goto LABEL_33;
  }

LABEL_51:
  __break(1u);
  return result;
}

void sub_1BF008CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA0] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF008D1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BF008D6C()
{
  if (!qword_1ED8EE530[0])
  {
    v0 = sub_1BF179E9C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED8EE530);
    }
  }
}

uint64_t sub_1BF008DD0(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1BF008E2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BF008E2C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1BEFE6EA8(255, a3);
    v4 = sub_1BF17AE6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void (*Atomic.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = *(*v1 + 80);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  Atomic.wrappedValue.getter(v7);
  return sub_1BF008F64;
}

void sub_1BF008F64(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    Atomic.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    Atomic.wrappedValue.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OS_dispatch_queue.syncValue<A>(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  sub_1BEFF9AF8(0, &qword_1ED8EF730, 0x1E69E58C0);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  v10 = sub_1BF17AD5C();
  v11 = sub_1BF17ADEC();

  if ((v11 & 1) != 0 && [objc_opt_self() isMainThread])
  {
    return a1();
  }

  __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  OUTLINED_FUNCTION_85();
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1BF146300;
  *(v14 + 24) = v13;
  v18[4] = sub_1BF006170;
  v18[5] = v14;
  OUTLINED_FUNCTION_1_57();
  OUTLINED_FUNCTION_0_72();
  v18[2] = v15;
  v18[3] = &block_descriptor_15;
  v16 = _Block_copy(v18);

  dispatch_sync(v5, v16);
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF0091F8()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_72(uint64_t a1, uint64_t a2)
{

  return sub_1BF01A7AC(a1, a2, (v2 - 160));
}

uint64_t sub_1BF009264(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1BF17A0AC();

  return v3;
}

void Promise.then<A>(on:closure:)()
{
  sub_1BF00AA9C();
}

{
  sub_1BF00AA9C();
}

uint64_t (*sub_1BF00931C(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E184;
}

void sub_1BF0093DC()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[2];
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_3_42();
  sub_1BF00951C();
  swift_endAccess();

  type metadata accessor for PoolObject();
  (*(v6 + 16))(v12, v4, v2);
  sub_1BEFF1AC4();
  OUTLINED_FUNCTION_7_2();
  v17 = *(v0 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_10_29();
  *(v0 + 24) = v18;
  swift_endAccess();
  OUTLINED_FUNCTION_26_2();
}

uint64_t sub_1BF009554()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t asyncMain(block:)(uint64_t a1, uint64_t a2)
{
  sub_1BF00974C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() isMainThread])
  {
    v8 = sub_1BF17A75C();
    MEMORY[0x1EEE9AC00](v8);
    *&v14[-16] = a1;
    *&v14[-8] = a2;
    return sub_1BF0097A4(sub_1BF009934, &v14[-32]);
  }

  else
  {
    v10 = sub_1BF17A77C();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
    sub_1BF17A75C();

    v11 = sub_1BF17A74C();
    OUTLINED_FUNCTION_85();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a1;
    v12[5] = a2;
    sub_1BF089AC0();
  }
}

uint64_t sub_1BF009710()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1BF00974C()
{
  if (!qword_1ED8EF890)
  {
    sub_1BF17A77C();
    v0 = sub_1BF17AE6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF890);
    }
  }
}

uint64_t sub_1BF0097A4(uint64_t a1, uint64_t a2)
{
  sub_1BF17A74C();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1BF00995C();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1BF17B1EC();
    MEMORY[0x1BFB52000](0xD00000000000003FLL, 0x80000001BF18F550);
    v8 = sub_1BF17BD4C();
    MEMORY[0x1BFB52000](v8);

    MEMORY[0x1BFB52000](46, 0xE100000000000000);
    result = sub_1BF17B49C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF009934()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF00995C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BF009984(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1BF009A50@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC0];
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t objectdestroy_41Tm()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2_3();
  v3 = v2;
  v4 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 31) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  (*(v3 + 8))(v0 + v4, v1);
  v10 = *(v0 + v6);

  v11 = *(v0 + v7);

  v12 = *(v0 + v8 + 16);

  v13 = *(v0 + v9);

  v14 = *(v0 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  OUTLINED_FUNCTION_26_2();

  return MEMORY[0x1EEE6BDD0](v15, v16, v17);
}

uint64_t SceneStateManager.add(monitor:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = _s13TeaFoundation17DisposableMonitorCMa_0();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1BF009D14(v7, a1);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v9);
  sub_1BF005F5C(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a2[3] = v6;
  a2[4] = &off_1F3DC2820;
  *a2 = v8;
  return result;
}

uint64_t sub_1BF009D14(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1BF009D84(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1BF17A53C();
  }

  return result;
}

void *sub_1BF009DD4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC8];
  v1[3] = MEMORY[0x1E69E7CC8];
  v1[4] = v3;
  swift_weakInit();
  v1[2] = a1;
  swift_weakAssign();

  return v1;
}

uint64_t sub_1BF009E34(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v3 = *(a1 + 24);
    OUTLINED_FUNCTION_7_2();

    v4 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF039054(v4, sub_1BF03912C, 0, (v1 + 24));
    swift_endAccess();
    swift_beginAccess();
    v5 = *(a1 + 32);
    OUTLINED_FUNCTION_7_2();
    v6 = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    sub_1BF039054(v6, sub_1BF03912C, 0, (v1 + 32));
    swift_endAccess();
  }

  else
  {
  }

  return v1;
}

void sub_1BF009F38()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v7 = sub_1BF17AE6C();
  OUTLINED_FUNCTION_2_3();
  v42 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  OUTLINED_FUNCTION_2_3();
  v43 = v14;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v23 = *v5;
  v24 = v5[1];
  v25 = v5[2];
  OUTLINED_FUNCTION_10_9();
  v26 = *(v1 + 24);
  if (*(v26 + 16))
  {
    v27 = sub_1BEFE81F8(v23, v24, v25);
    if (v28)
    {
      v29 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();
      type metadata accessor for PoolObject();
      v30 = swift_dynamicCastClass();
      if (v30)
      {
        v31 = v44;
        (*(v43 + 16))(v44, v30 + *(*v30 + 112), v3);
        v32 = v31;
LABEL_5:
        v33 = 0;
LABEL_12:
        __swift_storeEnumTagSinglePayload(v32, v33, 1, v3);
        goto LABEL_13;
      }

      type metadata accessor for WeakPoolObject();
      if (swift_dynamicCastClass())
      {

        sub_1BF02E910();

        OUTLINED_FUNCTION_13_22(v13);
        if (!v39)
        {
          v40 = *(v43 + 32);
          v40(v22, v13, v3);
          v41 = v44;
          v40(v44, v22, v3);
          v32 = v41;
          goto LABEL_5;
        }

        (*(v42 + 8))(v13, v7);
      }

LABEL_11:
      v32 = v44;
      v33 = 1;
      goto LABEL_12;
    }
  }

  swift_endAccess();
  OUTLINED_FUNCTION_10_9();
  if (!sub_1BEFEEDE8(v23, v24, v25, *(v1 + 32)))
  {
    swift_endAccess();
    goto LABEL_11;
  }

  v34 = swift_endAccess();
  OUTLINED_FUNCTION_2_57(v34, &qword_1ED8EDCF0);
  v35 = swift_dynamicCastClass();
  if (v35)
  {
    v36 = *(v35 + 16);
    swift_unknownObjectRetain();
  }

  else
  {
    OUTLINED_FUNCTION_6_37(0, &qword_1EBDCBDF0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_11;
    }

    v36 = sub_1BF1469C0();

    if (!v36)
    {
      goto LABEL_11;
    }
  }

  v45 = v36;
  swift_dynamicCast();
  v38 = v43;
  v37 = v44;
  (*(v43 + 16))(v44, v20, v3);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v3);
  (*(v38 + 8))(v20, v3);
LABEL_13:
  OUTLINED_FUNCTION_26_2();
}

void sub_1BF00A30C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1BF00A384();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1BF00A384()
{
  if (!qword_1ED8EF468)
  {
    v0 = sub_1BEFF79E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EF468);
    }
  }
}

uint64_t sub_1BF00A3CC()
{
  sub_1BF00A434();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BF00A400()
{
  sub_1BF004A40();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void *sub_1BF00A434()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  swift_weakDestroy();
  return v0;
}

uint64_t sub_1BF00A46C()
{
  v1 = *(OUTLINED_FUNCTION_14_17() - 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1BF014B7C(v2, v3, v4);
}

char *AuthTokenManager.init(service:store:tokenType:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  v33 = *v4;
  v32 = sub_1BF17AD4C();
  v7 = OUTLINED_FUNCTION_1(v32);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v15 = sub_1BF17AD1C();
  v16 = OUTLINED_FUNCTION_12(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = sub_1BF179BBC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_2_0();
  v31 = *(v6 + 112);
  sub_1BEFF9AF8(0, &qword_1ED8F0BD8, 0x1E69E9610);
  sub_1BF179B9C();
  sub_1BF00AF3C(&qword_1ED8F0BE0, MEMORY[0x1E69E8030]);
  sub_1BF00B014(0);
  sub_1BF00AF3C(&qword_1ED8F0BE8, sub_1BF00B014);
  sub_1BF17B0BC();
  (*(v9 + 104))(v14, *MEMORY[0x1E69E8090], v32);
  *&v4[v31] = sub_1BF17AD9C();
  OUTLINED_FUNCTION_4_0();
  v22 = *(v21 + 128);
  sub_1BF027A28();
  swift_allocObject();
  *&v4[v22] = sub_1BF027C60(0);
  OUTLINED_FUNCTION_4_0();
  v24 = &v4[*(v23 + 136)];
  v25 = type metadata accessor for DateProvider();
  v26 = swift_allocObject();
  v24[3] = v25;
  v24[4] = &protocol witness table for DateProvider;
  *v24 = v26;
  sub_1BEFE87B0(a1, (v5 + 16));
  OUTLINED_FUNCTION_4_0();
  (*(*(*(v33 + 80) - 8) + 32))(&v5[*(v27 + 104)], a2);
  OUTLINED_FUNCTION_4_0();
  v29 = &v5[*(v28 + 120)];
  *v29 = a3;
  *(v29 + 1) = a4;
  return v5;
}

uint64_t ProxyResolver.resolve<A>(_:with:)()
{
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_2_49();
  v0 = toKey<A>(type:name:)();
  OUTLINED_FUNCTION_3_36(v0, v1, v2, v3, v4, v5, v6, v7, v9[0], v9[1], v10, v11, v12);
  v10 = v13;
  OUTLINED_FUNCTION_1_52(v9, &v14);

  return v14;
}

{
  OUTLINED_FUNCTION_25_3();
  v1 = v0;
  OUTLINED_FUNCTION_2_49();
  v7 = toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_3_36(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v17, v18, v19);
  v17 = v20;
  OUTLINED_FUNCTION_1_52(v16, v1);
}

void sub_1BF00A8F8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t (*sub_1BF00A950(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

uint64_t sub_1BF00A9BC()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_58();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t (*sub_1BF00A9F4(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF02E1A8;
}

void OUTLINED_FUNCTION_98_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

void sub_1BF00AA9C()
{
  OUTLINED_FUNCTION_97_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  OUTLINED_FUNCTION_104();
  type metadata accessor for DeferredPromise();
  v10 = *(v0[2] + 16);

  v11 = sub_1BF0057E8();
  v12 = *(v9 + 80);
  v4(v11, v12);
  v13 = OUTLINED_FUNCTION_36();
  v2(v13);
  OUTLINED_FUNCTION_85();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v8;
  v14[4] = v6;
  v14[5] = v11;

  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v8(v15);
  OUTLINED_FUNCTION_31();
  swift_beginAccess();
  if (*(v11 + 16))
  {
    v16 = *(v11 + 16);

    OUTLINED_FUNCTION_96();
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1BF00ABE8(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0979F4;
}

void Promise.error(on:closure:)()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_0();
  v2 = *v0;
  v3 = v0[2];
  OUTLINED_FUNCTION_27();
  *(swift_allocObject() + 16) = *(v2 + 80);
  OUTLINED_FUNCTION_45_1();
  sub_1BF005910();
  OUTLINED_FUNCTION_55_1();

  v1(v4);

  OUTLINED_FUNCTION_55();
}

void OUTLINED_FUNCTION_111(uint64_t a1)
{
  v2 = *(a1 + 16);

  os_unfair_lock_assert_not_owner(v2);
}

void sub_1BF00AD5C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BF17A07C();

  [a3 setName_];
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Cache.__allocating_init()()
{
  OUTLINED_FUNCTION_0_1();
  v0 = swift_allocObject();
  Cache.init()();
  return v0;
}

uint64_t sub_1BF00AEAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF00AEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF00AF3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF00AF84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF00AFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BF00B048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BF00B0A0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1BF00B0C8()
{
  result = sub_1BF1794AC();
  if (v1 <= 0x3F)
  {
    result = sub_1BF17923C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BF00B164(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t sub_1BF00B22C()
{
  sub_1BF00B2D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF00B284()
{
  type metadata accessor for TaskScheduler();
  v0 = swift_allocObject();
  result = sub_1BF00B334(0x746C7561666564, 0xE700000000000000);
  off_1ED8EF150 = v0;
  return result;
}

uint64_t sub_1BF00B2D4()
{
  v1 = *(v0 + 24);

  v2 = qword_1ED8F52F0;
  v3 = sub_1BF1794FC();
  OUTLINED_FUNCTION_12(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1BF00B334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1BF17AD4C();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = sub_1BF17AD1C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_2_0();
  v16 = sub_1BF179BBC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_2_0();
  sub_1BEFF6E88();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18F3F0);
  sub_1BF179B8C();
  sub_1BF17AD0C();
  (*(v8 + 104))(v13, *MEMORY[0x1E69E8098], v5);
  *(v2 + 16) = sub_1BF17AD9C();
  v18 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v3 + 24) = v18;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v19 = v18;
  MEMORY[0x1BFB52000](0xD00000000000001BLL, 0x80000001BF18F410);
  sub_1BF00AD5C(a1, a2, v19);

  [*(v3 + 24) setMaxConcurrentOperationCount_];
  [*(v3 + 24) setUnderlyingQueue_];
  v20 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *(v3 + 32) = v20;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v21 = v20;
  MEMORY[0x1BFB52000](0xD000000000000017, 0x80000001BF18F430);

  sub_1BF00AD5C(a1, a2, v21);

  [*(v3 + 32) setMaxConcurrentOperationCount_];
  return v3;
}

uint64_t dispatch thunk of ResolverType.resolve<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 32))();
}

{
  return (*(a6 + 24))();
}

uint64_t sub_1BF00B614(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_4_34(a1, a2);
  toKey<A>(type:name:)(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_73();
  sub_1BF0093DC();
}

uint64_t dispatch thunk of ContextType.use<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 8))();
}

{
  return (*(a5 + 16))();
}

void sub_1BF00B6B0()
{
  OUTLINED_FUNCTION_32();
  v25 = v1;
  v26 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_29();
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_13_17();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_1();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - v17;
  OUTLINED_FUNCTION_15_15();
  v19 = swift_allocObject();
  v19[2] = v6;
  v20 = v25;
  v21 = v26;
  v19[3] = v25;
  v19[4] = v4;
  v24 = v4;
  v19[5] = v21;
  v22 = v20;

  sub_1BF005C4C(sub_1BF0547EC, v19, v18);

  os_unfair_lock_unlock(*(v0 + 16));
  (*(v10 + 16))(v15, v18, v7);
  if (__swift_getEnumTagSinglePayload(v15, 1, v27) == 1)
  {
    (*(v10 + 8))(v18, v7);
  }

  else
  {
    sub_1BF006210(v22, v24, v21);
    v23 = *(v10 + 8);
    v23(v18, v7);
    v23(v15, v7);
  }

  OUTLINED_FUNCTION_26_2();
}

void sub_1BF00B8B8(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(), uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v13 = swift_allocObject();
      v13[2] = a6;
      v13[3] = a7;
      v13[4] = a1;

      sub_1BEFF779C(a1, 1);
      v14 = sub_1BF006210(a3, sub_1BF02E21C, v13);

      (v14)(v15);
    }

    else
    {
      if (qword_1ED8F0210 != -1)
      {
        swift_once();
      }

      if (off_1ED8F0218 != a3)
      {
        if (qword_1ED8EFB98 != -1)
        {
          swift_once();
        }

        if (qword_1ED8EFC18 != a3 || ([objc_opt_self() isMainThread] & 1) == 0)
        {
          if (qword_1ED8EF920 != -1)
          {
            swift_once();
          }

          if (qword_1ED8EF928 != a3 || [objc_opt_self() isMainThread])
          {
            v17 = swift_allocObject();
            v17[2] = a3;
            v17[3] = a8;
            v17[4] = a9;
            v18 = a3;
            a8 = sub_1BF097A1C;
          }
        }
      }

      (a8)(v19);
    }
  }

  else
  {

    sub_1BF0039C4(a1, 0, a3, a4, a5);
  }
}

uint64_t sub_1BF00BB60(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2() + 16);
  v8 = qword_1ED8F0210;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1BF00C048(a4, a5);
  sub_1BF004C34(a4, a5);
  sub_1BF004CA4(a4, a5);
  sub_1BF005910();
  v10 = v9;

  v10(v11);
}

uint64_t sub_1BF00BD64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v7 = type metadata accessor for Seal.Resolution();
  v8 = sub_1BF17AE6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  (*(v9 + 16))(v13, a1, v8);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    result = (*(v9 + 8))(v13, v8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = *(v14 + 32);
      v20(v19, v13, a5);
      (*(v14 + 16))(v17, v19, a5);
      v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
      v22 = swift_allocObject();
      v23 = v28;
      v24 = v29;
      *(v22 + 2) = a5;
      *(v22 + 3) = v23;
      *(v22 + 4) = v24;
      v20(&v22[v21], v17, a5);

      v25 = sub_1BF006210(v30, sub_1BF004C30, v22);

      (*(v14 + 8))(v19, a5);
      return v25;
    }

    result = (*(*(v7 - 8) + 8))(v13, v7);
  }

  __break(1u);
  return result;
}

void (*sub_1BF00C048(uint64_t a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  return sub_1BF0978F8;
}

char *sub_1BF00C128(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_10(a3, result);
  }

  return result;
}

uint64_t sub_1BF00C150(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a2;
  v8 = type metadata accessor for Seal.Resolution();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v27 - v12;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  (*(v9 + 16))(v13, a1, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    result = (*(v9 + 8))(v13, v8);
    __break(1u);
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v19, v13, a5);
    (*(v14 + 16))(v17, v19, a5);
    v21 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v22 = swift_allocObject();
    v23 = v27;
    *(v22 + 2) = a5;
    *(v22 + 3) = v23;
    *(v22 + 4) = a4;
    v20(&v22[v21], v17, a5);

    v24 = sub_1BF006210(v28, sub_1BF00CA9C, v22);

    (v24)(v25);

    return (*(v14 + 8))(v19, a5);
  }

  return result;
}

uint64_t sub_1BF00C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a4 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - v8;
  v10(v7);
  DeferredPromise.resolve(_:)();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BF00C610@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for DisposableMonitor();
  swift_allocObject();
  v7 = swift_unknownObjectRetain();
  v8 = sub_1BF009D14(v7, a1);
  swift_beginAccess();

  MEMORY[0x1BFB52290](v9);
  sub_1BF005F5C(*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1BF17A59C();
  result = swift_endAccess();
  a2[3] = v6;
  a2[4] = &off_1F3DBCDB0;
  *a2 = v8;
  return result;
}

void sub_1BF00C724()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_2_20();
  v4 = *(v3 + 16);
  v5 = sub_1BEFE90AC(v4);
  if (v5)
  {
    v6 = v5;
    if (v5 < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB53020](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v9 = *(v8 + 24);
          ObjectType = swift_getObjectType();
          (*(v9 + 24))(v1, ObjectType, v9);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v11 = *(v3 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v12 = sub_1BEFE90AC(v11);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v12 == j)
    {

      v16 = *(v3 + 16);
      *(v3 + 16) = v17;

      OUTLINED_FUNCTION_76_0();
      return;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB53020](j, v11);
    }

    else
    {
      if (j >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v14 = *(v11 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v15 = *(v17 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t objectdestroy_19Tm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1BF00CAB0(uint64_t a1)
{
  sub_1BF00974C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF00CB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v26 - v18;
  v20(v17);
  if (!v6)
  {
    v26[1] = a4;
    v22 = *a4;
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    v23 = sub_1BF17A98C();

    if (v23)
    {
      (*(v9 + 8))(v19, a6);
    }

    else
    {
      (*(v9 + 16))(v13, v19, a6);
      sub_1BF17A9AC();
      sub_1BF17A94C();
      v24 = *(v9 + 8);
      v24(v16, a6);
      v24(v19, a6);
    }

    v21 = v23 ^ 1;
  }

  return v21 & 1;
}

void sub_1BF00CCEC(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2))
  {

    sub_1BF041640();
  }

  else
  {

    sub_1BF17B70C();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_85();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1BF00CE34(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(), uint64_t a8, uint64_t a9)
{
  v23 = a5;
  v24 = a6;
  v15 = type metadata accessor for Seal.Resolution();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - v18;
  (*(v16 + 16))(&v23 - v18, a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v16 + 8))(v19, v15);
      sub_1BF02DFEC(a1, a2, v23, v24);
    }

    else
    {
      v21 = sub_1BF006210(a2, a7, a8);
      (v21)(v21, v22);
    }
  }

  else
  {
    sub_1BF00C150(a1, a2, a3, a4, a9);
    (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_1BF00CFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1BF00E380(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1BF074078(a2, a4);
}

uint64_t sub_1BF00D0BC(void (*a1)(void))
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  result = sub_1BEFE90AC(v3);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      goto LABEL_26;
    }

    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB53020](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v7 + 24);
          a1();
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v9 = *(v1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v10 = sub_1BEFE90AC(v9);
  result = _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  for (j = 0; ; ++j)
  {
    if (v10 == j)
    {

      v14 = *(v1 + 16);
      *(v1 + 16) = v15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1BFB53020](j, v9);
    }

    else
    {
      if (j >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1BF17B32C();
      v13 = *(v15 + 16);
      sub_1BF17B36C();
      sub_1BF17B37C();
      result = sub_1BF17B33C();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1BF00D358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BF00D3E0()
{
  v1 = v0;
  v57 = sub_1BF179C0C();
  v61 = *(v57 - 8);
  v2 = *(v61 + 64);
  v3 = MEMORY[0x1EEE9AC00](v57);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54 - v5;
  v58 = sub_1BF179B6C();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF00D358(0, &unk_1ED8EAEB8, MEMORY[0x1E6977AF8], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v54 - v12;
  v14 = sub_1BF1798EC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v22 = dispatch_semaphore_create(0);
  v23 = *(v1 + 56);
  *(v1 + 56) = v22;

  sub_1BF1798CC();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1BF16C238(v13);
    sub_1BF16C4B4();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v56 = v9;
    v26 = v15;
    (*(v15 + 32))(v21, v13, v14);
    if (*(v1 + 16))
    {
      MockServer.stop()();
    }

    sub_1BF179A3C();
    v27 = sub_1BF179AAC();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = sub_1BF179A9C();
    MEMORY[0x1BFB51800](0, v30);
    (*(v15 + 16))(v19, v21, v14);
    v31 = sub_1BF17997C();
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    swift_allocObject();
    v34 = v62;
    v35 = sub_1BF17995C();
    if (v34)
    {
      swift_getErrorValue();
      v36 = sub_1BF17BB0C();
      v38 = v37;
      sub_1BF16C4B4();
      swift_allocError();
      *v39 = v36;
      v39[1] = v38;
      swift_willThrow();

      return (*(v15 + 8))(v21, v14);
    }

    else
    {
      v40 = v35;

      sub_1BF009984(sub_1BF01EB54);
      sub_1BF17990C();

      sub_1BF009984(sub_1BF01A1AC);
      sub_1BF1798FC();

      sub_1BEFF6E88();
      v41 = *MEMORY[0x1E69E7F98];
      v42 = *(v6 + 104);
      v62 = v21;
      v43 = v40;
      v44 = v56;
      v45 = v58;
      v42(v56, v41, v58);
      v46 = sub_1BF17ADAC();
      v55 = v26;
      v47 = v46;
      (*(v6 + 8))(v44, v45);
      sub_1BF17994C();

      v48 = *(v1 + 16);
      *(v1 + 16) = v43;

      v49 = *(v1 + 56);
      v50 = v59;
      sub_1BF179BFC();
      v51 = v60;
      sub_1BF179C6C();
      v52 = *(v61 + 8);
      v53 = v57;
      v52(v50, v57);
      sub_1BF17ADBC();

      v52(v51, v53);
      return (*(v55 + 8))(v62, v14);
    }
  }
}

void sub_1BF00D994(uint64_t a1)
{
  v3 = sub_1BF17993C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6977B20], v3);
  LOBYTE(a1) = MEMORY[0x1BFB51700](a1, v7);
  (*(v4 + 8))(v7, v3);
  if (a1)
  {
    v8 = *(v1 + 56);
    sub_1BF17ADDC();
  }
}

uint64_t sub_1BF00DAA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = sub_1BF012714(a2, a3);
  v7 = v6;
  sub_1BF018D68(v5, v6);
  sub_1BF018D68(v5, v7);
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

  swift_beginAccess();
  v8 = *(v4 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v4 + 16);
  sub_1BF01C248();
  *(v4 + 16) = v10;
  swift_endAccess();
}

uint64_t sub_1BF00DC20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    OUTLINED_FUNCTION_0_23();
    v7 = sub_1BF17AEDC();
    v9 = v8;
    OUTLINED_FUNCTION_0_23();
    v6 = sub_1BF17AE7C();
    v10 = sub_1BF17A23C();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_1BF17B86C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1BF17A23C();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

void sub_1BF00DD60()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_3();
  sub_1BF011664();
  *v0 = v2;
}

void sub_1BF00DD94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_21(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
      sub_1BF179F3C();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1BF00DDFC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v40[0] = 61;
  v39[2] = v40;
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v10 = sub_1BF01A1B0(0x7FFFFFFFFFFFFFFFLL, 1u, sub_1BF012F08, v39, v6, v7, v8, v9);
  v11 = v10;
  v12 = v3;
  if (v10[2] < 2uLL)
  {
  }

  v13 = v10[4];
  v14 = v10[5];
  v15 = v10[6];
  v16 = v10[7];
  _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();
  v17 = MEMORY[0x1BFB51F50](v13, v14, v15, v16);
  v19 = v18;

  if (v11[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v40[3] = v12;
    v21 = v11[8];
    v22 = v11[9];
    v23 = v17;
    v25 = v11[10];
    v24 = v11[11];
    _s13TeaFoundation18XPCArgumentBuilderV10buildBlockySayAA0C0VGAFd_tFZ_0();

    v26 = MEMORY[0x1BFB51F50](v21, v22, v25, v24);
    v28 = v27;

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1BF01C3EC();
    v29 = *(*a2 + 16);
    sub_1BF012FC4(v29);
    v30 = *a2;
    *(v30 + 16) = v29 + 1;
    v31 = (v30 + 32 * v29);
    v31[4] = v23;
    v31[5] = v19;
    v31[6] = v26;
    v31[7] = v28;
    if (sub_1BF17A2AC())
    {
      v32 = sub_1BF17A2BC();

      if (v32)
      {

        sub_1BF01C3EC();
        v33 = *(*a3 + 16);
        result = sub_1BF012FC4(v33);
        v34 = *a3;
        *(v34 + 16) = v33 + 1;
        v35 = (v34 + 32 * v33);
        v35[4] = v23;
        v35[5] = v19;
        v35[6] = 8202875;
        v35[7] = 0xE300000000000000;
        return result;
      }
    }

    else
    {
    }

    sub_1BF01C3EC();
    v36 = *(*a3 + 16);
    result = sub_1BF012FC4(v36);
    v37 = *a3;
    *(v37 + 16) = v36 + 1;
    v38 = (v37 + 32 * v36);
    v38[4] = v23;
    v38[5] = v19;
    v38[6] = v26;
    v38[7] = v28;
  }

  return result;
}

void sub_1BF00E068()
{
  OUTLINED_FUNCTION_41_2();
  if (v5)
  {
    OUTLINED_FUNCTION_2();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_8_0();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_1();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_16_4(v6);
  if (v3)
  {
    OUTLINED_FUNCTION_1_11();
    sub_1BEFEC638(0, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_91();
    OUTLINED_FUNCTION_33_2(v12);
    OUTLINED_FUNCTION_24_6(v13);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = OUTLINED_FUNCTION_84_0();
  if (v1)
  {
    if (v3 != v0 || &v15[32 * v2] <= v14)
    {
      memmove(v14, v15, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BF00E13C()
{
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_27_2();
  v7 = v6;
  OUTLINED_FUNCTION_76();
  v8 = *v1;
  v10 = sub_1BF00088C(v9);
  OUTLINED_FUNCTION_1_5(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_1BF17BAAC();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_19_4();
  sub_1BF00E21C();
  if (OUTLINED_FUNCTION_10_7())
  {
    v13 = *v3;
    sub_1BF00088C(v7);
    OUTLINED_FUNCTION_8_2();
    if (!v15)
    {
      goto LABEL_14;
    }

    v5 = v14;
  }

  if (v4)
  {
    v16 = (*(*v3 + 56) + 16 * v5);
    v17 = v16[1];
    *v16 = v2;
    v16[1] = v0;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    OUTLINED_FUNCTION_30_1();
    OUTLINED_FUNCTION_55();

    sub_1BF00E27C(v19, v20, v21, v22, v23);
  }
}

void sub_1BF00E21C()
{
  if (!qword_1ED8EADB8)
  {
    v0 = sub_1BF17B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8EADB8);
    }
  }
}